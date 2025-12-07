uint64_t sub_14C3CB8(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 56);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_195228C(*(*(a1 + 64) + 8 * v3) + 16);
      v3 = v4;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    v6 = *(a1 + 104);
    while (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = sub_1490E5C(*(*(a1 + 112) + 8 * v6));
      v6 = v7;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    v9 = *(a1 + 200);
    while (v9 >= 1)
    {
      v10 = v9 - 1;
      v11 = sub_149EC98(*(*(a1 + 208) + 8 * v9));
      v9 = v10;
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

    v12 = *(a1 + 224);
    while (v12 >= 1)
    {
      v13 = v12 - 1;
      v14 = sub_149EC98(*(*(a1 + 232) + 8 * v12));
      v12 = v13;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

    v15 = *(a1 + 248);
    while (v15 >= 1)
    {
      v16 = v15 - 1;
      v17 = sub_149EC98(*(*(a1 + 256) + 8 * v15));
      result = 0;
      v15 = v16;
      if ((v17 & 1) == 0)
      {
        return result;
      }
    }

    v18 = *(a1 + 296);
    while (v18 >= 1)
    {
      v19 = v18 - 1;
      v20 = sub_14A3124(*(*(a1 + 304) + 8 * v18));
      result = 0;
      v18 = v19;
      if ((v20 & 1) == 0)
      {
        return result;
      }
    }

    v21 = *(a1 + 392);
    while (v21 >= 1)
    {
      v22 = v21 - 1;
      v23 = sub_14509FC(*(*(a1 + 400) + 8 * v21));
      result = 0;
      v21 = v22;
      if ((v23 & 1) == 0)
      {
        return result;
      }
    }

    v24 = *(a1 + 416);
    while (v24 >= 1)
    {
      v25 = v24 - 1;
      v26 = sub_1464954(*(*(a1 + 424) + 8 * v24));
      result = 0;
      v24 = v25;
      if ((v26 & 1) == 0)
      {
        return result;
      }
    }

    v27 = *(a1 + 440);
    while (v27 >= 1)
    {
      v28 = v27 - 1;
      v29 = sub_14509FC(*(*(a1 + 448) + 8 * v27));
      result = 0;
      v27 = v28;
      if ((v29 & 1) == 0)
      {
        return result;
      }
    }

    v30 = *(a1 + 40);
    if ((v30 & 4) != 0)
    {
      result = sub_149B3A0(*(a1 + 472));
      if (!result)
      {
        return result;
      }

      v30 = *(a1 + 40);
    }

    if ((v30 & 8) != 0)
    {
      result = sub_1475308(*(a1 + 480));
      if (!result)
      {
        return result;
      }

      v30 = *(a1 + 40);
    }

    if ((v30 & 0x10) == 0)
    {
      return 1;
    }

    result = sub_1475308(*(a1 + 488));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_14C3ECC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26E8040;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 44) = 0;
  *(a1 + 28) = 0;
  *(a1 + 36) = 0;
  *(a1 + 20) = 0;
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1568258((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32), v8);
    v9 = *(a1 + 32) + v5;
    *(a1 + 32) = v9;
    v10 = *(a1 + 40);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v11 = *(a2 + 56);
  if (v11)
  {
    v12 = *(a2 + 64);
    v13 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_144DA24((a1 + 48), v13, (v12 + 8), v11, **(a1 + 64) - *(a1 + 56), v14);
    v15 = *(a1 + 56) + v11;
    *(a1 + 56) = v15;
    v16 = *(a1 + 64);
    if (*v16 < v15)
    {
      *v16 = v15;
    }
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v17 = *(a2 + 80);
  if (v17)
  {
    v18 = *(a2 + 88);
    v19 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_1566B24((a1 + 72), v19, (v18 + 8), v17, **(a1 + 88) - *(a1 + 80), v20);
    v21 = *(a1 + 80) + v17;
    *(a1 + 80) = v21;
    v22 = *(a1 + 88);
    if (*v22 < v21)
    {
      *v22 = v21;
    }
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v23 = *(a2 + 104);
  if (v23)
  {
    v24 = *(a2 + 112);
    v25 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_EB3760((a1 + 96), v25, (v24 + 8), v23, **(a1 + 112) - *(a1 + 104), v26);
    v27 = *(a1 + 104) + v23;
    *(a1 + 104) = v27;
    v28 = *(a1 + 112);
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v29 = *(a2 + 128);
  if (v29)
  {
    v30 = *(a2 + 136);
    v31 = sub_19592E8(a1 + 120, *(a2 + 128));
    sub_144A454((a1 + 120), v31, (v30 + 8), v29, **(a1 + 136) - *(a1 + 128));
    v32 = *(a1 + 128) + v29;
    *(a1 + 128) = v32;
    v33 = *(a1 + 136);
    if (*v33 < v32)
    {
      *v33 = v32;
    }
  }

  v34 = *(a2 + 8);
  if (v34)
  {
    sub_1957EF4(v4, (v34 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  v35 = *(a2 + 16);
  if (v35)
  {
    operator new();
  }

  *(a1 + 144) = 0;
  if ((v35 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 152) = 0;
  *(a1 + 160) = *(a2 + 160);
  return a1;
}

uint64_t sub_14C42A0(uint64_t a1)
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

  if (a1 != &off_2773F38)
  {
    v5 = *(a1 + 144);
    if (v5)
    {
      sub_147B058(v5);
      operator delete();
    }

    v6 = *(a1 + 152);
    if (v6)
    {
      sub_14850EC(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_144A1C8((a1 + 120));
  sub_1567EB4((a1 + 96));
  sub_1564D58((a1 + 72));
  sub_144D914((a1 + 48));
  sub_1567E30((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14C43AC(uint64_t a1)
{
  sub_14C42A0(a1);

  operator delete();
}

uint64_t sub_14C43E4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_14C0B74(v4);
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
      result = sub_149D390(v7);
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
      result = sub_14985CC(v10);
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
      result = sub_1487EC8(v13);
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
      result = sub_144E5CC(v16);
      --v14;
    }

    while (v14);
    *(v1 + 128) = 0;
  }

  v17 = *(v1 + 16);
  if ((v17 & 3) != 0)
  {
    if (v17)
    {
      result = sub_147B104(*(v1 + 144));
    }

    if ((v17 & 2) != 0)
    {
      v18 = *(v1 + 152);
      v19 = *(v18 + 8);
      result = v18 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v19)
      {
        result = sub_1957EA8(result);
      }
    }
  }

  if ((v17 & 0xC) != 0)
  {
    *(v1 + 160) = 0;
  }

  v21 = *(v1 + 8);
  v20 = v1 + 8;
  *(v20 + 8) = 0;
  if (v21)
  {

    return sub_1957EA8(v20);
  }

  return result;
}

char *sub_14C4544(uint64_t a1, char *a2, int32x2_t *a3)
{
  v63 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v63, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v63 + 1;
    v8 = *v63;
    if (*v63 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v63, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v63 + 2;
      }
    }

    v63 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 5)
    {
      if (v8 >> 3 <= 7)
      {
        if (v11 == 6)
        {
          if (v8 == 50)
          {
            v47 = v7 - 1;
            while (1)
            {
              v48 = v47 + 1;
              v63 = v47 + 1;
              v49 = *(a1 + 88);
              if (v49 && (v50 = *(a1 + 80), v50 < *v49))
              {
                *(a1 + 80) = v50 + 1;
                v51 = *&v49[2 * v50 + 2];
              }

              else
              {
                sub_14BDC34(*(a1 + 72));
                v51 = sub_19593CC(a1 + 72, v52);
                v48 = v63;
              }

              v47 = sub_220EB38(a3, v51, v48);
              v63 = v47;
              if (!v47)
              {
                goto LABEL_111;
              }

              if (*a3 <= v47 || *v47 != 50)
              {
                goto LABEL_102;
              }
            }
          }
        }

        else if (v11 == 7 && v8 == 58)
        {
          v31 = v7 - 1;
          while (1)
          {
            v32 = v31 + 1;
            v63 = v31 + 1;
            v33 = *(a1 + 112);
            if (v33 && (v34 = *(a1 + 104), v34 < *v33))
            {
              *(a1 + 104) = v34 + 1;
              v35 = *&v33[2 * v34 + 2];
            }

            else
            {
              v36 = sub_14BD4AC(*(a1 + 96));
              v35 = sub_19593CC(a1 + 96, v36);
              v32 = v63;
            }

            v31 = sub_22123B0(a3, v35, v32);
            v63 = v31;
            if (!v31)
            {
              goto LABEL_111;
            }

            if (*a3 <= v31 || *v31 != 58)
            {
              goto LABEL_102;
            }
          }
        }

        goto LABEL_94;
      }

      if (v11 == 8)
      {
        if (v8 != 66)
        {
          goto LABEL_94;
        }

        *(a1 + 16) |= 2u;
        v44 = *(a1 + 152);
        if (!v44)
        {
          v45 = *(a1 + 8);
          v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
          if (v45)
          {
            v46 = *v46;
          }

          v44 = sub_14BD1EC(v46);
          *(a1 + 152) = v44;
          v7 = v63;
        }

        v43 = sub_2212290(a3, v44, v7);
LABEL_101:
        v63 = v43;
        if (!v43)
        {
          goto LABEL_111;
        }

        goto LABEL_102;
      }

      if (v11 != 9)
      {
        if (v11 == 10 && v8 == 82)
        {
          v12 = v7 - 1;
          while (1)
          {
            v13 = v12 + 1;
            v63 = v12 + 1;
            v14 = *(a1 + 136);
            if (v14 && (v15 = *(a1 + 128), v15 < *v14))
            {
              *(a1 + 128) = v15 + 1;
              v16 = *&v14[2 * v15 + 2];
            }

            else
            {
              sub_14BAE64(*(a1 + 120));
              v16 = sub_19593CC(a1 + 120, v17);
              v13 = v63;
            }

            v12 = sub_22095B8(a3, v16, v13);
            v63 = v12;
            if (!v12)
            {
              goto LABEL_111;
            }

            if (*a3 <= v12 || *v12 != 82)
            {
              goto LABEL_102;
            }
          }
        }

        goto LABEL_94;
      }

      if (v8 != 72)
      {
        goto LABEL_94;
      }

      v5 |= 8u;
      v53 = v7 + 1;
      v54 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_93;
      }

      v55 = *v53;
      v54 = v54 + (v55 << 7) - 128;
      if ((v55 & 0x80000000) == 0)
      {
        v53 = v7 + 2;
LABEL_93:
        v63 = v53;
        *(a1 + 164) = v54;
        goto LABEL_102;
      }

      v61 = sub_1958770(v7, v54);
      v63 = v61;
      *(a1 + 164) = v62;
      if (!v61)
      {
        goto LABEL_111;
      }

      goto LABEL_102;
    }

    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 != 1)
    {
      if (v11 == 2 && v8 == 18)
      {
        v19 = v7 - 1;
        while (1)
        {
          v20 = v19 + 1;
          v63 = v19 + 1;
          v21 = *(a1 + 40);
          if (v21 && (v22 = *(a1 + 32), v22 < *v21))
          {
            *(a1 + 32) = v22 + 1;
            v23 = *&v21[2 * v22 + 2];
          }

          else
          {
            v24 = sub_14D59A4(*(a1 + 24));
            v23 = sub_19593CC(a1 + 24, v24);
            v20 = v63;
          }

          v19 = sub_2212320(a3, v23, v20);
          v63 = v19;
          if (!v19)
          {
            goto LABEL_111;
          }

          if (*a3 <= v19 || *v19 != 18)
          {
            goto LABEL_102;
          }
        }
      }

      goto LABEL_94;
    }

    if (v8 != 8)
    {
      goto LABEL_94;
    }

    v5 |= 4u;
    v37 = v7 + 1;
    v38 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

    v39 = *v37;
    v38 = v38 + (v39 << 7) - 128;
    if ((v39 & 0x80000000) == 0)
    {
      v37 = v7 + 2;
LABEL_66:
      v63 = v37;
      *(a1 + 160) = v38;
      goto LABEL_102;
    }

    v59 = sub_1958770(v7, v38);
    v63 = v59;
    *(a1 + 160) = v60;
    if (!v59)
    {
      goto LABEL_111;
    }

LABEL_102:
    if (sub_195ADC0(a3, &v63, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4)
  {
    if (v8 != 34)
    {
      goto LABEL_94;
    }

    *(a1 + 16) |= 1u;
    v40 = *(a1 + 144);
    if (!v40)
    {
      v41 = *(a1 + 8);
      v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
      if (v41)
      {
        v42 = *v42;
      }

      v40 = sub_14BCA7C(v42);
      *(a1 + 144) = v40;
      v7 = v63;
    }

    v43 = sub_21F7F98(a3, v40, v7);
    goto LABEL_101;
  }

  if (v11 == 5 && v8 == 42)
  {
    v25 = v7 - 1;
    while (1)
    {
      v26 = v25 + 1;
      v63 = v25 + 1;
      v27 = *(a1 + 64);
      if (v27 && (v28 = *(a1 + 56), v28 < *v27))
      {
        *(a1 + 56) = v28 + 1;
        v29 = *&v27[2 * v28 + 2];
      }

      else
      {
        v30 = sub_14BDE5C(*(a1 + 48));
        v29 = sub_19593CC(a1 + 48, v30);
        v26 = v63;
      }

      v25 = sub_21F6500(a3, v29, v26);
      v63 = v25;
      if (!v25)
      {
        goto LABEL_111;
      }

      if (*a3 <= v25 || *v25 != 42)
      {
        goto LABEL_102;
      }
    }
  }

LABEL_94:
  if (v8)
  {
    v56 = (v8 & 7) == 4;
  }

  else
  {
    v56 = 1;
  }

  if (!v56)
  {
    v57 = *(a1 + 8);
    if (v57)
    {
      v58 = (v57 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v58 = sub_11F1920((a1 + 8));
      v7 = v63;
    }

    v43 = sub_1952690(v8, v58, v7, a3);
    goto LABEL_101;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_111:
  v63 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v63;
}

char *sub_14C4AD4(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 160);
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

  v11 = *(a1 + 32);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v13 = *(*(a1 + 40) + 8 * i + 8);
      *v6 = 18;
      v14 = *(v13 + 44);
      v6[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, v6 + 1);
      }

      else
      {
        v15 = v6 + 2;
      }

      v6 = sub_14C1D0C(v13, v15, a3);
    }
  }

  if (v5)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v16 = *(a1 + 144);
    *v6 = 34;
    v17 = *(v16 + 20);
    v6[1] = v17;
    if (v17 > 0x7F)
    {
      v18 = sub_19575D0(v17, v6 + 1);
    }

    else
    {
      v18 = v6 + 2;
    }

    v6 = sub_147B444(v16, v18, a3);
  }

  v19 = *(a1 + 56);
  if (v19)
  {
    for (j = 0; j != v19; ++j)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v21 = *(*(a1 + 64) + 8 * j + 8);
      *v6 = 42;
      v22 = *(v21 + 44);
      v6[1] = v22;
      if (v22 > 0x7F)
      {
        v23 = sub_19575D0(v22, v6 + 1);
      }

      else
      {
        v23 = v6 + 2;
      }

      v6 = sub_149DD64(v21, v23, a3);
    }
  }

  v24 = *(a1 + 80);
  if (v24)
  {
    for (k = 0; k != v24; ++k)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v26 = *(*(a1 + 88) + 8 * k + 8);
      *v6 = 50;
      v27 = *(v26 + 20);
      v6[1] = v27;
      if (v27 > 0x7F)
      {
        v28 = sub_19575D0(v27, v6 + 1);
      }

      else
      {
        v28 = v6 + 2;
      }

      v6 = sub_149975C(v26, v28, a3);
    }
  }

  v29 = *(a1 + 104);
  if (v29)
  {
    for (m = 0; m != v29; ++m)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v31 = *(*(a1 + 112) + 8 * m + 8);
      *v6 = 58;
      v32 = *(v31 + 44);
      v6[1] = v32;
      if (v32 > 0x7F)
      {
        v33 = sub_19575D0(v32, v6 + 1);
      }

      else
      {
        v33 = v6 + 2;
      }

      v6 = sub_1488C14(v31, v33, a3);
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v34 = *(a1 + 152);
    *v6 = 66;
    v35 = *(v34 + 20);
    v6[1] = v35;
    if (v35 > 0x7F)
    {
      v36 = sub_19575D0(v35, v6 + 1);
    }

    else
    {
      v36 = v6 + 2;
    }

    v6 = sub_14853B4(v34, v36, a3);
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v38 = *(a1 + 164);
    *v6 = 72;
    v6[1] = v38;
    if (v38 > 0x7F)
    {
      v6[1] = v38 | 0x80;
      v39 = v38 >> 7;
      v6[2] = v38 >> 7;
      v37 = v6 + 3;
      if (v38 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v37 - 1) = v6 | 0x80;
          LODWORD(v6) = v39 >> 7;
          *v37++ = v39 >> 7;
          v40 = v39 >> 14;
          v39 >>= 7;
        }

        while (v40);
      }
    }

    else
    {
      v37 = v6 + 2;
    }
  }

  else
  {
    v37 = v6;
  }

  v41 = *(a1 + 128);
  if (v41)
  {
    for (n = 0; n != v41; ++n)
    {
      if (*a3 <= v37)
      {
        v37 = sub_225EB68(a3, v37);
      }

      v43 = *(*(a1 + 136) + 8 * n + 8);
      *v37 = 82;
      v44 = *(v43 + 20);
      v37[1] = v44;
      if (v44 > 0x7F)
      {
        v45 = sub_19575D0(v44, v37 + 1);
      }

      else
      {
        v45 = v37 + 2;
      }

      v37 = sub_14589F4(v43, v45, a3);
    }
  }

  v46 = *(a1 + 8);
  if ((v46 & 1) == 0)
  {
    return v37;
  }

  v48 = v46 & 0xFFFFFFFFFFFFFFFCLL;
  v49 = *(v48 + 31);
  if (v49 < 0)
  {
    v50 = *(v48 + 8);
    v49 = *(v48 + 16);
  }

  else
  {
    v50 = (v48 + 8);
  }

  if ((*a3 - v37) >= v49)
  {
    v51 = v49;
    memcpy(v37, v50, v49);
    v37 += v51;
    return v37;
  }

  return sub_1957130(a3, v50, v49, v37);
}

uint64_t sub_14C4FF8(uint64_t a1)
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
      v7 = sub_14C2C70(v6);
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
      v14 = sub_149E4E4(v13);
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
      v21 = sub_149A624(v20);
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
      v28 = sub_1489674(v27);
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
      v35 = sub_1458DB4(v34);
      v30 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6);
      v33 -= 8;
    }

    while (v33);
  }

  v36 = *(a1 + 16);
  if ((v36 & 0xF) == 0)
  {
    goto LABEL_39;
  }

  if ((v36 & 1) == 0)
  {
    if ((v36 & 2) == 0)
    {
      goto LABEL_36;
    }

LABEL_42:
    v40 = sub_14854CC(*(a1 + 152));
    v30 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v36 & 4) == 0)
    {
LABEL_37:
      if ((v36 & 8) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    goto LABEL_43;
  }

  v39 = sub_147B788(*(a1 + 144));
  v30 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v36 & 2) != 0)
  {
    goto LABEL_42;
  }

LABEL_36:
  if ((v36 & 4) == 0)
  {
    goto LABEL_37;
  }

LABEL_43:
  v30 += ((9 * (__clz(*(a1 + 160) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v36 & 8) != 0)
  {
LABEL_38:
    v30 += ((9 * (__clz(*(a1 + 164) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_39:
  v37 = *(a1 + 8);
  if (v37)
  {
    v41 = v37 & 0xFFFFFFFFFFFFFFFCLL;
    v42 = *((v37 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v42 < 0)
    {
      v42 = *(v41 + 16);
    }

    v30 += v42;
  }

  *(a1 + 20) = v30;
  return v30;
}

void sub_14C52AC(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(result + 24, *(a2 + 32));
    sub_1568258((result + 24), v6, (v5 + 8), v4, **(result + 40) - *(result + 32), v7);
    v8 = *(result + 32) + v4;
    *(result + 32) = v8;
    v9 = *(result + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 56);
  if (v10)
  {
    v11 = *(a2 + 64);
    v12 = sub_19592E8(result + 48, *(a2 + 56));
    sub_144DA24((result + 48), v12, (v11 + 8), v10, **(result + 64) - *(result + 56), v13);
    v14 = *(result + 56) + v10;
    *(result + 56) = v14;
    v15 = *(result + 64);
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  v16 = *(a2 + 80);
  if (v16)
  {
    v17 = *(a2 + 88);
    v18 = sub_19592E8(result + 72, *(a2 + 80));
    sub_1566B24((result + 72), v18, (v17 + 8), v16, **(result + 88) - *(result + 80), v19);
    v20 = *(result + 80) + v16;
    *(result + 80) = v20;
    v21 = *(result + 88);
    if (*v21 < v20)
    {
      *v21 = v20;
    }
  }

  v22 = *(a2 + 104);
  if (v22)
  {
    v23 = *(a2 + 112);
    v24 = sub_19592E8(result + 96, *(a2 + 104));
    sub_EB3760((result + 96), v24, (v23 + 8), v22, **(result + 112) - *(result + 104), v25);
    v26 = *(result + 104) + v22;
    *(result + 104) = v26;
    v27 = *(result + 112);
    if (*v27 < v26)
    {
      *v27 = v26;
    }
  }

  v28 = *(a2 + 128);
  if (v28)
  {
    v29 = *(a2 + 136);
    v30 = sub_19592E8(result + 120, *(a2 + 128));
    sub_144A454((result + 120), v30, (v29 + 8), v28, **(result + 136) - *(result + 128));
    v31 = *(result + 128) + v28;
    *(result + 128) = v31;
    v32 = *(result + 136);
    if (*v32 < v31)
    {
      *v32 = v31;
    }
  }

  v33 = *(a2 + 16);
  if ((v33 & 0xF) != 0)
  {
    if (v33)
    {
      *(result + 16) |= 1u;
      v35 = *(result + 144);
      if (!v35)
      {
        v36 = *(result + 8);
        v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
        if (v36)
        {
          v37 = *v37;
        }

        v35 = sub_14BCA7C(v37);
        *(result + 144) = v35;
      }

      if (*(a2 + 144))
      {
        v38 = *(a2 + 144);
      }

      else
      {
        v38 = &off_2772380;
      }

      sub_129DA38(v35, v38);
      if ((v33 & 2) == 0)
      {
LABEL_19:
        if ((v33 & 4) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_43;
      }
    }

    else if ((v33 & 2) == 0)
    {
      goto LABEL_19;
    }

    *(result + 16) |= 2u;
    v39 = *(result + 152);
    if (!v39)
    {
      v40 = *(result + 8);
      v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
      if (v40)
      {
        v41 = *v41;
      }

      v39 = sub_14BD1EC(v41);
      *(result + 152) = v39;
    }

    if (*(a2 + 152))
    {
      v42 = *(a2 + 152);
    }

    else
    {
      v42 = &off_2772750;
    }

    sub_1485514(v39, v42);
    if ((v33 & 4) == 0)
    {
LABEL_20:
      if ((v33 & 8) == 0)
      {
LABEL_22:
        *(result + 16) |= v33;
        goto LABEL_23;
      }

LABEL_21:
      *(result + 164) = *(a2 + 164);
      goto LABEL_22;
    }

LABEL_43:
    *(result + 160) = *(a2 + 160);
    if ((v33 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_23:
  v34 = *(a2 + 8);
  if (v34)
  {

    sub_1957EF4((result + 8), (v34 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_14C55B0(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_14C3CB8(*(*(a1 + 40) + 8 * v2));
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
    v7 = sub_149EC98(*(*(a1 + 64) + 8 * v5));
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
    v10 = sub_149B3A0(*(*(a1 + 88) + 8 * v8));
    v8 = v9;
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = *(a1 + 104);
  while (v11 >= 1)
  {
    v12 = v11 - 1;
    v13 = sub_148A14C(*(*(a1 + 112) + 8 * v11));
    v11 = v12;
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v16 = *(a1 + 128);
  do
  {
    v14 = v16 < 1;
    if (v16 < 1)
    {
      break;
    }

    v17 = v16 - 1;
    v18 = sub_144F560(*(*(a1 + 136) + 8 * v16));
    v16 = v17;
  }

  while ((v18 & 1) != 0);
  return v14;
}

uint64_t sub_14C56B8(uint64_t a1)
{
  result = sub_12A41D0(a1 + 32);
  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  *(a1 + 88) = 0;
  v3 = *(a1 + 16);
  if (v3)
  {
    if ((v3 & 1) == 0)
    {
      if ((v3 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_15:
      v5 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v5 + 23) < 0)
      {
        **v5 = 0;
        *(v5 + 8) = 0;
        if ((v3 & 4) != 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *v5 = 0;
        *(v5 + 23) = 0;
        if ((v3 & 4) != 0)
        {
          goto LABEL_19;
        }
      }

LABEL_5:
      if ((v3 & 8) == 0)
      {
        goto LABEL_6;
      }

LABEL_23:
      v7 = *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v7 + 23) < 0)
      {
        **v7 = 0;
        *(v7 + 8) = 0;
        if ((v3 & 0x10) != 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        *v7 = 0;
        *(v7 + 23) = 0;
        if ((v3 & 0x10) != 0)
        {
          goto LABEL_27;
        }
      }

LABEL_7:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_8;
      }

LABEL_31:
      v9 = *(a1 + 144) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v9 + 23) < 0)
      {
        **v9 = 0;
        *(v9 + 8) = 0;
        if ((v3 & 0x40) != 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        *v9 = 0;
        *(v9 + 23) = 0;
        if ((v3 & 0x40) != 0)
        {
          goto LABEL_35;
        }
      }

LABEL_9:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_42;
      }

LABEL_39:
      v11 = *(a1 + 160) & 0xFFFFFFFFFFFFFFFELL;
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

      goto LABEL_42;
    }

    v4 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_19:
    v6 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v3 & 8) != 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v3 & 8) != 0)
      {
        goto LABEL_23;
      }
    }

LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_27:
    v8 = *(a1 + 136) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
      if ((v3 & 0x20) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
      if ((v3 & 0x20) != 0)
      {
        goto LABEL_31;
      }
    }

LABEL_8:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_9;
    }

LABEL_35:
    v10 = *(a1 + 152) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v10 + 23) < 0)
    {
      **v10 = 0;
      *(v10 + 8) = 0;
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      *v10 = 0;
      *(v10 + 23) = 0;
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_39;
  }

LABEL_42:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_66;
  }

  if ((v3 & 0x100) != 0)
  {
    v12 = *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v12 + 23) < 0)
    {
      **v12 = 0;
      *(v12 + 8) = 0;
      if ((v3 & 0x200) != 0)
      {
        goto LABEL_54;
      }
    }

    else
    {
      *v12 = 0;
      *(v12 + 23) = 0;
      if ((v3 & 0x200) != 0)
      {
        goto LABEL_54;
      }
    }

LABEL_45:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_55;
  }

  if ((v3 & 0x200) == 0)
  {
    goto LABEL_45;
  }

LABEL_54:
  result = sub_1536CC8(*(a1 + 176));
  if ((v3 & 0x400) == 0)
  {
LABEL_46:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_56;
  }

LABEL_55:
  result = sub_16F3030(*(a1 + 184));
  if ((v3 & 0x800) == 0)
  {
LABEL_47:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_48;
    }

LABEL_57:
    result = sub_16F44C0(*(a1 + 200));
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_60;
    }

LABEL_58:
    v13 = *(a1 + 208);
    v14 = *(v13 + 8);
    result = v13 + 8;
    *(result + 16) = 0;
    *(result + 8) = 0;
    if (v14)
    {
      result = sub_1957EA8(result);
    }

    goto LABEL_60;
  }

LABEL_56:
  result = sub_16F2898(*(a1 + 192));
  if ((v3 & 0x1000) != 0)
  {
    goto LABEL_57;
  }

LABEL_48:
  if ((v3 & 0x2000) != 0)
  {
    goto LABEL_58;
  }

LABEL_60:
  if ((v3 & 0x4000) != 0)
  {
    v15 = *(a1 + 216);
    v16 = *(v15 + 8);
    result = v15 + 8;
    *(result + 16) = 0;
    *(result + 8) = 0;
    if (v16)
    {
      result = sub_1957EA8(result);
    }
  }

  if ((v3 & 0x8000) != 0)
  {
    v17 = *(a1 + 224);
    v18 = *(v17 + 8);
    result = v17 + 8;
    *(result + 16) = 0;
    *(result + 8) = 0;
    if (v18)
    {
      result = sub_1957EA8(result);
    }
  }

LABEL_66:
  if ((v3 & 0xFF0000) != 0)
  {
    *(a1 + 232) = 0;
  }

  if (HIBYTE(v3))
  {
    *(a1 + 240) = 0;
  }

  v19 = *(a1 + 20);
  if (v19)
  {
    *(a1 + 248) = 0;
  }

  if ((v19 & 0xFF00) != 0)
  {
    *(a1 + 256) = 0;
  }

  if ((v19 & 0xFF0000) != 0)
  {
    *(a1 + 264) = 0;
  }

  if (HIBYTE(v19))
  {
    *(a1 + 272) = 0;
    *(a1 + 276) = xmmword_23365D0;
    *(a1 + 292) = 7;
    *(a1 + 296) = 0x300000001;
  }

  v21 = *(a1 + 8);
  v20 = (a1 + 8);
  v20[1] = 0;
  if (v21)
  {

    return sub_1957EA8(v20);
  }

  return result;
}

uint64_t sub_14C5A04(uint64_t a1)
{
  sub_12A41D0(a1 + 16);
  result = sub_12A41D0(a1 + 40);
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_14C5A5C(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26E80C0;
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
  *(a1 + 192) = a2;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = a2;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = a2;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = &qword_278E990;
  *(a1 + 272) = &qword_278E990;
  *(a1 + 280) = &qword_278E990;
  *(a1 + 288) = &qword_278E990;
  *(a1 + 296) = &qword_278E990;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0;
  *(a1 + 456) = 1;
  return a1;
}

void sub_14C5B30(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_14C5B64(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v61 = (a1 + 8);
  *(a1 + 16) = 0;
  v60 = a1 + 16;
  *a1 = off_26E80C0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 68) = 0;
  *(a1 + 52) = 0;
  *(a1 + 60) = 0;
  *(a1 + 44) = 0;
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_1449ED8((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v9 = *(a2 + 80);
  if (v9)
  {
    v10 = *(a2 + 88);
    v11 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_1568258((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80), v12);
    v13 = *(a1 + 80) + v9;
    *(a1 + 80) = v13;
    v14 = *(a1 + 88);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v15 = *(a2 + 104);
  if (v15)
  {
    v16 = *(a2 + 112);
    v17 = sub_19592E8(a1 + 96, v15);
    sub_144D55C((a1 + 96), v17, (v16 + 8), v15, **(a1 + 112) - *(a1 + 104));
    v18 = *(a1 + 104) + v15;
    *(a1 + 104) = v18;
    v19 = *(a1 + 112);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v20 = *(a2 + 128);
  if (v20)
  {
    v21 = *(a2 + 136);
    v22 = sub_19592E8(a1 + 120, v20);
    sub_1201B48((a1 + 120), v22, (v21 + 8), v20, **(a1 + 136) - *(a1 + 128));
    v23 = *(a1 + 128) + v20;
    *(a1 + 128) = v23;
    v24 = *(a1 + 136);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v25 = *(a2 + 152);
  if (v25)
  {
    v26 = *(a2 + 160);
    v27 = sub_19592E8(a1 + 144, *(a2 + 152));
    sub_144D55C((a1 + 144), v27, (v26 + 8), v25, **(a1 + 160) - *(a1 + 152));
    v28 = *(a1 + 152) + v25;
    *(a1 + 152) = v28;
    v29 = *(a1 + 160);
    if (*v29 < v28)
    {
      *v29 = v28;
    }
  }

  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  v30 = *(a2 + 176);
  if (v30)
  {
    v31 = *(a2 + 184);
    v32 = sub_19592E8(a1 + 168, *(a2 + 176));
    sub_15682E4((a1 + 168), v32, (v31 + 8), v30, **(a1 + 184) - *(a1 + 176));
    v33 = *(a1 + 176) + v30;
    *(a1 + 176) = v33;
    v34 = *(a1 + 184);
    if (*v34 < v33)
    {
      *v34 = v33;
    }
  }

  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  v35 = *(a2 + 200);
  if (v35)
  {
    v36 = *(a2 + 208);
    v37 = sub_19592E8(a1 + 192, *(a2 + 200));
    sub_12E5E34((a1 + 192), v37, (v36 + 8), v35, **(a1 + 208) - *(a1 + 200));
    v38 = *(a1 + 200) + v35;
    *(a1 + 200) = v38;
    v39 = *(a1 + 208);
    if (*v39 < v38)
    {
      *v39 = v38;
    }
  }

  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  v40 = *(a2 + 224);
  if (v40)
  {
    v41 = *(a2 + 232);
    v42 = sub_19592E8(a1 + 216, *(a2 + 224));
    sub_1201B48((a1 + 216), v42, (v41 + 8), v40, **(a1 + 232) - *(a1 + 224));
    v43 = *(a1 + 224) + v40;
    *(a1 + 224) = v43;
    v44 = *(a1 + 232);
    if (*v44 < v43)
    {
      *v44 = v43;
    }
  }

  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  v45 = *(a2 + 248);
  if (v45)
  {
    v46 = *(a2 + 256);
    v47 = sub_19592E8(a1 + 240, *(a2 + 248));
    sub_1201B48((a1 + 240), v47, (v46 + 8), v45, **(a1 + 256) - *(a1 + 248));
    v48 = *(a1 + 248) + v45;
    *(a1 + 248) = v48;
    v49 = *(a1 + 256);
    if (*v49 < v48)
    {
      *v49 = v48;
    }
  }

  v50 = *(a2 + 8);
  if (v50)
  {
    sub_1957EF4(v61, (v50 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v60, a2 + 16);
  *(a1 + 264) = &qword_278E990;
  v51 = *(a2 + 40);
  if (v51)
  {
    v52 = (*v61 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v61)
    {
      v52 = *v52;
    }

    sub_194EA1C((a1 + 264), (*(a2 + 264) & 0xFFFFFFFFFFFFFFFELL), v52);
    v51 = *(a2 + 40);
  }

  *(a1 + 272) = &qword_278E990;
  if ((v51 & 2) != 0)
  {
    v53 = (*v61 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v61)
    {
      v53 = *v53;
    }

    sub_194EA1C((a1 + 272), (*(a2 + 272) & 0xFFFFFFFFFFFFFFFELL), v53);
    v51 = *(a2 + 40);
  }

  *(a1 + 280) = &qword_278E990;
  if ((v51 & 4) != 0)
  {
    v54 = (*v61 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v61)
    {
      v54 = *v54;
    }

    sub_194EA1C((a1 + 280), (*(a2 + 280) & 0xFFFFFFFFFFFFFFFELL), v54);
    v51 = *(a2 + 40);
  }

  *(a1 + 288) = &qword_278E990;
  if ((v51 & 8) != 0)
  {
    v55 = (*v61 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v61)
    {
      v55 = *v55;
    }

    sub_194EA1C((a1 + 288), (*(a2 + 288) & 0xFFFFFFFFFFFFFFFELL), v55);
    v51 = *(a2 + 40);
  }

  *(a1 + 296) = &qword_278E990;
  if ((v51 & 0x10) != 0)
  {
    v56 = (*v61 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v61)
    {
      v56 = *v56;
    }

    sub_194EA1C((a1 + 296), (*(a2 + 296) & 0xFFFFFFFFFFFFFFFELL), v56);
    v51 = *(a2 + 40);
  }

  if ((v51 & 0x20) != 0)
  {
    operator new();
  }

  *(a1 + 304) = 0;
  if ((v51 & 0x40) != 0)
  {
    operator new();
  }

  *(a1 + 312) = 0;
  if ((v51 & 0x80) != 0)
  {
    operator new();
  }

  *(a1 + 320) = 0;
  if ((v51 & 0x100) != 0)
  {
    operator new();
  }

  *(a1 + 328) = 0;
  if ((v51 & 0x200) != 0)
  {
    operator new();
  }

  *(a1 + 336) = 0;
  if ((v51 & 0x400) != 0)
  {
    operator new();
  }

  *(a1 + 344) = 0;
  if ((v51 & 0x800) != 0)
  {
    operator new();
  }

  *(a1 + 352) = 0;
  if ((v51 & 0x1000) != 0)
  {
    operator new();
  }

  *(a1 + 360) = 0;
  if ((v51 & 0x2000) != 0)
  {
    operator new();
  }

  *(a1 + 368) = 0;
  if ((v51 & 0x4000) != 0)
  {
    operator new();
  }

  *(a1 + 376) = 0;
  if ((v51 & 0x8000) != 0)
  {
    operator new();
  }

  *(a1 + 384) = 0;
  if ((v51 & 0x10000) != 0)
  {
    operator new();
  }

  *(a1 + 392) = 0;
  if ((v51 & 0x20000) != 0)
  {
    operator new();
  }

  *(a1 + 400) = 0;
  if ((v51 & 0x40000) != 0)
  {
    operator new();
  }

  *(a1 + 408) = 0;
  v57 = *(a2 + 416);
  v58 = *(a2 + 432);
  *(a1 + 441) = *(a2 + 441);
  *(a1 + 416) = v57;
  *(a1 + 432) = v58;
  return a1;
}

void *sub_14C65D0(void *a1)
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

  sub_14C66BC(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956AFC(a1 + 30);
  sub_1956AFC(a1 + 27);
  sub_12E5CA0(a1 + 24);
  sub_1567F38(a1 + 21);
  sub_144D2B0(a1 + 18);
  sub_1956AFC(a1 + 15);
  sub_144D2B0(a1 + 12);
  sub_1567E30(a1 + 9);
  sub_1449E54(a1 + 6);
  sub_194F914((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t sub_14C66BC(uint64_t result)
{
  v1 = result;
  if (*(result + 264) != &qword_278E990)
  {
    sub_194E89C((result + 264));
  }

  if (*(result + 272) != &qword_278E990)
  {
    sub_194E89C((result + 272));
  }

  if (*(result + 280) != &qword_278E990)
  {
    sub_194E89C((result + 280));
  }

  if (*(result + 288) != &qword_278E990)
  {
    sub_194E89C((result + 288));
  }

  if (*(result + 296) != &qword_278E990)
  {
    sub_194E89C((result + 296));
  }

  if (result != &off_2773FE0)
  {
    v2 = *(result + 304);
    if (v2)
    {
      sub_16E8374(v2);
      operator delete();
    }

    v3 = v1[39];
    if (v3)
    {
      sub_1491CC8(v3);
      operator delete();
    }

    v4 = v1[40];
    if (v4)
    {
      sub_153875C(v4);
      operator delete();
    }

    v5 = v1[41];
    if (v5)
    {
      sub_16EE080(v5);
      operator delete();
    }

    v6 = v1[42];
    if (v6)
    {
      sub_1550360(v6);
      operator delete();
    }

    v7 = v1[43];
    if (v7)
    {
      sub_1494DF0(v7);
      operator delete();
    }

    v8 = v1[44];
    if (v8)
    {
      sub_13F0544(v8);
      operator delete();
    }

    v9 = v1[45];
    if (v9)
    {
      sub_14C42A0(v9);
      operator delete();
    }

    v10 = v1[46];
    if (v10)
    {
      sub_16E8374(v10);
      operator delete();
    }

    v11 = v1[47];
    if (v11)
    {
      sub_14B4E48(v11);
      operator delete();
    }

    v12 = v1[48];
    if (v12)
    {
      sub_16F4BC4(v12);
      operator delete();
    }

    v13 = v1[49];
    if (v13)
    {
      sub_14B8DBC(v13);
      operator delete();
    }

    v14 = v1[50];
    if (v14)
    {
      sub_14957D0(v14);
      operator delete();
    }

    result = v1[51];
    if (result)
    {
      sub_1477220(result);

      operator delete();
    }
  }

  return result;
}

void sub_14C692C(void *a1)
{
  sub_14C65D0(a1);

  operator delete();
}

uint64_t sub_14C6964(uint64_t a1)
{
  sub_1951124((a1 + 16));
  v2 = *(a1 + 56);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 64) + 8);
    do
    {
      v4 = *v3++;
      sub_14CC5C8(v4);
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
      sub_14C0B74(v7);
      --v5;
    }

    while (v5);
    *(a1 + 80) = 0;
  }

  v8 = *(a1 + 104);
  if (v8 >= 1)
  {
    v9 = (*(a1 + 112) + 8);
    do
    {
      v10 = *v9++;
      sub_14CC674(v10);
      --v8;
    }

    while (v8);
    *(a1 + 104) = 0;
  }

  sub_12A41D0(a1 + 120);
  v11 = *(a1 + 152);
  if (v11 >= 1)
  {
    v12 = (*(a1 + 160) + 8);
    do
    {
      v13 = *v12++;
      sub_14CC674(v13);
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
      sub_149FD80(v16);
      --v14;
    }

    while (v14);
    *(a1 + 176) = 0;
  }

  v17 = *(a1 + 200);
  if (v17 >= 1)
  {
    v18 = (*(a1 + 208) + 8);
    do
    {
      v19 = *v18++;
      sub_16EEC04(v19);
      --v17;
    }

    while (v17);
    *(a1 + 200) = 0;
  }

  sub_12A41D0(a1 + 216);
  result = sub_12A41D0(a1 + 240);
  v21 = *(a1 + 40);
  if (!v21)
  {
    goto LABEL_35;
  }

  if ((v21 & 1) == 0)
  {
    if ((v21 & 2) == 0)
    {
      goto LABEL_28;
    }

LABEL_73:
    v27 = *(a1 + 272) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v27 + 23) < 0)
    {
      **v27 = 0;
      *(v27 + 8) = 0;
      if ((v21 & 4) != 0)
      {
        goto LABEL_77;
      }
    }

    else
    {
      *v27 = 0;
      *(v27 + 23) = 0;
      if ((v21 & 4) != 0)
      {
        goto LABEL_77;
      }
    }

LABEL_29:
    if ((v21 & 8) == 0)
    {
      goto LABEL_30;
    }

LABEL_81:
    v29 = *(a1 + 288) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v29 + 23) < 0)
    {
      **v29 = 0;
      *(v29 + 8) = 0;
      if ((v21 & 0x10) != 0)
      {
        goto LABEL_85;
      }
    }

    else
    {
      *v29 = 0;
      *(v29 + 23) = 0;
      if ((v21 & 0x10) != 0)
      {
        goto LABEL_85;
      }
    }

LABEL_31:
    if ((v21 & 0x20) == 0)
    {
      goto LABEL_32;
    }

LABEL_89:
    result = sub_16E48B0(*(a1 + 304));
    if ((v21 & 0x40) == 0)
    {
LABEL_33:
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    goto LABEL_90;
  }

  v26 = *(a1 + 264) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v26 + 23) < 0)
  {
    **v26 = 0;
    *(v26 + 8) = 0;
    if ((v21 & 2) != 0)
    {
      goto LABEL_73;
    }
  }

  else
  {
    *v26 = 0;
    *(v26 + 23) = 0;
    if ((v21 & 2) != 0)
    {
      goto LABEL_73;
    }
  }

LABEL_28:
  if ((v21 & 4) == 0)
  {
    goto LABEL_29;
  }

LABEL_77:
  v28 = *(a1 + 280) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v28 + 23) < 0)
  {
    **v28 = 0;
    *(v28 + 8) = 0;
    if ((v21 & 8) != 0)
    {
      goto LABEL_81;
    }
  }

  else
  {
    *v28 = 0;
    *(v28 + 23) = 0;
    if ((v21 & 8) != 0)
    {
      goto LABEL_81;
    }
  }

LABEL_30:
  if ((v21 & 0x10) == 0)
  {
    goto LABEL_31;
  }

LABEL_85:
  v30 = *(a1 + 296) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v30 + 23) < 0)
  {
    **v30 = 0;
    *(v30 + 8) = 0;
    if ((v21 & 0x20) != 0)
    {
      goto LABEL_89;
    }
  }

  else
  {
    *v30 = 0;
    *(v30 + 23) = 0;
    if ((v21 & 0x20) != 0)
    {
      goto LABEL_89;
    }
  }

LABEL_32:
  if ((v21 & 0x40) == 0)
  {
    goto LABEL_33;
  }

LABEL_90:
  result = sub_1491EC0(*(a1 + 312));
  if ((v21 & 0x80) != 0)
  {
LABEL_34:
    result = sub_14C56B8(*(a1 + 320));
  }

LABEL_35:
  if ((v21 & 0xFF00) == 0)
  {
    goto LABEL_45;
  }

  if ((v21 & 0x100) != 0)
  {
    result = sub_16EE0BC(*(a1 + 328));
    if ((v21 & 0x200) == 0)
    {
LABEL_38:
      if ((v21 & 0x400) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_66;
    }
  }

  else if ((v21 & 0x200) == 0)
  {
    goto LABEL_38;
  }

  result = sub_14C5A04(*(a1 + 336));
  if ((v21 & 0x400) == 0)
  {
LABEL_39:
    if ((v21 & 0x800) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_67;
  }

LABEL_66:
  result = sub_1494E9C(*(a1 + 344));
  if ((v21 & 0x800) == 0)
  {
LABEL_40:
    if ((v21 & 0x1000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_68;
  }

LABEL_67:
  result = sub_13F0580(*(a1 + 352));
  if ((v21 & 0x1000) == 0)
  {
LABEL_41:
    if ((v21 & 0x2000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_69;
  }

LABEL_68:
  result = sub_14C43E4(*(a1 + 360));
  if ((v21 & 0x2000) == 0)
  {
LABEL_42:
    if ((v21 & 0x4000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_70;
  }

LABEL_69:
  result = sub_16E48B0(*(a1 + 368));
  if ((v21 & 0x4000) == 0)
  {
LABEL_43:
    if ((v21 & 0x8000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_70:
  result = sub_14B4FA4(*(a1 + 376));
  if ((v21 & 0x8000) != 0)
  {
LABEL_44:
    result = sub_16F4C00(*(a1 + 384));
  }

LABEL_45:
  if ((v21 & 0x70000) != 0)
  {
    if ((v21 & 0x10000) != 0)
    {
      v22 = *(a1 + 392);
      v23 = *(v22 + 8);
      result = v22 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v23)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v21 & 0x20000) != 0)
    {
      result = sub_1495884(*(a1 + 400));
    }

    if ((v21 & 0x40000) != 0)
    {
      result = sub_14772E0(*(a1 + 408));
    }
  }

  if ((v21 & 0xF80000) != 0)
  {
    *(a1 + 416) = 0;
    *(a1 + 424) = 0;
    *(a1 + 432) = 0;
  }

  if ((v21 & 0xF000000) != 0)
  {
    *(a1 + 440) = 0;
    *(a1 + 448) = 0;
    *(a1 + 456) = 1;
  }

  v25 = *(a1 + 8);
  v24 = a1 + 8;
  *(v24 + 32) = 0;
  if (v25)
  {

    return sub_1957EA8(v24);
  }

  return result;
}

char *sub_14C6D94(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 304);
    *v4 = 10;
    v8 = *(v7 + 44);
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v9 = sub_19575D0(v8, v4 + 1);
    }

    else
    {
      v9 = v4 + 2;
    }

    v4 = sub_16E886C(v7, v9, a3);
    if ((v6 & 0x40) == 0)
    {
LABEL_3:
      if ((v6 & 0x8000000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    }
  }

  else if ((v6 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v10 = *(a1 + 312);
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

  v4 = sub_1493244(v10, v12, a3);
  if ((v6 & 0x8000000) != 0)
  {
LABEL_17:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v13 = *(a1 + 456);
    *v4 = 24;
    v4[1] = v13;
    v4 += 2;
  }

LABEL_20:
  v14 = *(a1 + 56);
  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v16 = *(*(a1 + 64) + 8 * i + 8);
      *v4 = 34;
      v17 = *(v16 + 44);
      v4[1] = v17;
      if (v17 > 0x7F)
      {
        v18 = sub_19575D0(v17, v4 + 1);
      }

      else
      {
        v18 = v4 + 2;
      }

      v4 = sub_1549158(v16, v18, a3);
    }
  }

  v19 = *(a1 + 80);
  if (v19)
  {
    for (j = 0; j != v19; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v21 = *(*(a1 + 88) + 8 * j + 8);
      *v4 = 42;
      v22 = *(v21 + 44);
      v4[1] = v22;
      if (v22 > 0x7F)
      {
        v23 = sub_19575D0(v22, v4 + 1);
      }

      else
      {
        v23 = v4 + 2;
      }

      v4 = sub_14C1D0C(v21, v23, a3);
    }
  }

  if ((v6 & 0x80) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v24 = *(a1 + 320);
    *v4 = 50;
    v25 = *(v24 + 24);
    v4[1] = v25;
    if (v25 > 0x7F)
    {
      v26 = sub_19575D0(v25, v4 + 1);
    }

    else
    {
      v26 = v4 + 2;
    }

    v4 = sub_1538BB4(v24, v26, a3);
    if ((v6 & 1) == 0)
    {
LABEL_38:
      if ((v6 & 0x100) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_48;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_38;
  }

  v4 = sub_128AEEC(a3, 7, (*(a1 + 264) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x100) == 0)
  {
LABEL_39:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_54;
  }

LABEL_48:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v27 = *(a1 + 328);
  *v4 = 66;
  v28 = *(v27 + 20);
  v4[1] = v28;
  if (v28 > 0x7F)
  {
    v29 = sub_19575D0(v28, v4 + 1);
  }

  else
  {
    v29 = v4 + 2;
  }

  v4 = sub_16EE2C4(v27, v29, a3);
  if ((v6 & 0x200) != 0)
  {
LABEL_54:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v30 = *(a1 + 336);
    *v4 = 74;
    v31 = *(v30 + 64);
    v4[1] = v31;
    if (v31 > 0x7F)
    {
      v32 = sub_19575D0(v31, v4 + 1);
    }

    else
    {
      v32 = v4 + 2;
    }

    v4 = sub_15506E0(v30, v32, a3);
  }

LABEL_60:
  v33 = *(a1 + 104);
  if (v33)
  {
    for (k = 0; k != v33; ++k)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v35 = *(*(a1 + 112) + 8 * k + 8);
      *v4 = 82;
      v36 = *(v35 + 20);
      v4[1] = v36;
      if (v36 > 0x7F)
      {
        v37 = sub_19575D0(v36, v4 + 1);
      }

      else
      {
        v37 = v4 + 2;
      }

      v4 = sub_154D580(v35, v37, a3);
    }
  }

  if ((v6 & 0x80000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v39 = *(a1 + 416);
    *v4 = 88;
    v4[1] = v39;
    if (v39 > 0x7F)
    {
      v4[1] = v39 | 0x80;
      v40 = v39 >> 7;
      v4[2] = v39 >> 7;
      v38 = v4 + 3;
      if (v39 >= 0x4000)
      {
        LOBYTE(v41) = v4[2];
        do
        {
          *(v38 - 1) = v41 | 0x80;
          v41 = v40 >> 7;
          *v38++ = v40 >> 7;
          v42 = v40 >> 14;
          v40 >>= 7;
        }

        while (v42);
      }
    }

    else
    {
      v38 = v4 + 2;
    }
  }

  else
  {
    v38 = v4;
  }

  if ((v6 & 2) != 0)
  {
    v38 = sub_128AEEC(a3, 12, (*(a1 + 272) & 0xFFFFFFFFFFFFFFFELL), v38);
  }

  if ((v6 & 0x100000) != 0)
  {
    if (*a3 <= v38)
    {
      v38 = sub_225EB68(a3, v38);
    }

    v44 = *(a1 + 420);
    *v38 = 104;
    v38[1] = v44;
    if (v44 > 0x7F)
    {
      v38[1] = v44 | 0x80;
      v45 = v44 >> 7;
      v38[2] = v44 >> 7;
      v43 = v38 + 3;
      if (v44 >= 0x4000)
      {
        LOBYTE(v38) = v38[2];
        do
        {
          *(v43 - 1) = v38 | 0x80;
          v38 = (v45 >> 7);
          *v43++ = v45 >> 7;
          v46 = v45 >> 14;
          v45 >>= 7;
        }

        while (v46);
      }
    }

    else
    {
      v43 = v38 + 2;
    }
  }

  else
  {
    v43 = v38;
  }

  if ((v6 & 0x400) == 0)
  {
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_90;
    }

LABEL_98:
    if (*a3 <= v43)
    {
      v43 = sub_225EB68(a3, v43);
    }

    v51 = *(a1 + 352);
    *v43 = 402;
    v52 = *(v51 + 44);
    v43[2] = v52;
    if (v52 > 0x7F)
    {
      v53 = sub_19575D0(v52, v43 + 2);
    }

    else
    {
      v53 = v43 + 3;
    }

    v43 = sub_13F0804(v51, v53, a3);
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_104;
  }

  if (*a3 <= v43)
  {
    v43 = sub_225EB68(a3, v43);
  }

  v48 = *(a1 + 344);
  *v43 = 114;
  v49 = *(v48 + 20);
  v43[1] = v49;
  if (v49 > 0x7F)
  {
    v50 = sub_19575D0(v49, v43 + 1);
  }

  else
  {
    v50 = v43 + 2;
  }

  v43 = sub_1495324(v48, v50, a3);
  if ((v6 & 0x800) != 0)
  {
    goto LABEL_98;
  }

LABEL_90:
  if ((v6 & 0x400000) == 0)
  {
LABEL_91:
    v47 = v43;
    goto LABEL_111;
  }

LABEL_104:
  if (*a3 <= v43)
  {
    v43 = sub_225EB68(a3, v43);
  }

  v54 = *(a1 + 432);
  *v43 = 408;
  v43[2] = v54;
  if (v54 > 0x7F)
  {
    v43[2] = v54 | 0x80;
    v55 = v54 >> 7;
    v43[3] = v54 >> 7;
    v47 = v43 + 4;
    if (v54 >= 0x4000)
    {
      LOBYTE(v43) = v43[3];
      do
      {
        *(v47 - 1) = v43 | 0x80;
        LODWORD(v43) = v55 >> 7;
        *v47++ = v55 >> 7;
        v56 = v55 >> 14;
        v55 >>= 7;
      }

      while (v56);
    }
  }

  else
  {
    v47 = v43 + 3;
  }

LABEL_111:
  if ((v6 & 4) != 0)
  {
    v47 = sub_128AEEC(a3, 20, (*(a1 + 280) & 0xFFFFFFFFFFFFFFFELL), v47);
    if ((v6 & 8) == 0)
    {
LABEL_113:
      if ((v6 & 0x200000) == 0)
      {
        goto LABEL_114;
      }

      goto LABEL_119;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_113;
  }

  v47 = sub_128AEEC(a3, 21, (*(a1 + 288) & 0xFFFFFFFFFFFFFFFELL), v47);
  if ((v6 & 0x200000) == 0)
  {
LABEL_114:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_122;
  }

LABEL_119:
  if (*a3 <= v47)
  {
    v47 = sub_225EB68(a3, v47);
  }

  v57 = *(a1 + 424);
  *v47 = 433;
  *(v47 + 2) = v57;
  v47 += 10;
  if ((v6 & 0x1000) == 0)
  {
LABEL_115:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_128;
  }

LABEL_122:
  if (*a3 <= v47)
  {
    v47 = sub_225EB68(a3, v47);
  }

  v58 = *(a1 + 360);
  *v47 = 442;
  v59 = *(v58 + 20);
  v47[2] = v59;
  if (v59 > 0x7F)
  {
    v60 = sub_19575D0(v59, v47 + 2);
  }

  else
  {
    v60 = v47 + 3;
  }

  v47 = sub_14C4AD4(v58, v60, a3);
  if ((v6 & 0x2000) != 0)
  {
LABEL_128:
    if (*a3 <= v47)
    {
      v47 = sub_225EB68(a3, v47);
    }

    v61 = *(a1 + 368);
    *v47 = 450;
    v62 = *(v61 + 44);
    v47[2] = v62;
    if (v62 > 0x7F)
    {
      v63 = sub_19575D0(v62, v47 + 2);
    }

    else
    {
      v63 = v47 + 3;
    }

    v47 = sub_16E886C(v61, v63, a3);
  }

LABEL_134:
  v64 = *(a1 + 128);
  if (v64 >= 1)
  {
    v65 = 8;
    do
    {
      v66 = *(*(a1 + 136) + v65);
      v67 = *(v66 + 23);
      if (v67 < 0 && (v67 = v66[1], v67 > 127) || (*a3 - v47 + 13) < v67)
      {
        v47 = sub_1957480(a3, 25, v66, v47);
      }

      else
      {
        *v47 = 458;
        v47[2] = v67;
        if (*(v66 + 23) < 0)
        {
          v66 = *v66;
        }

        v68 = v47 + 3;
        memcpy(v47 + 3, v66, v67);
        v47 = &v68[v67];
      }

      v65 += 8;
      --v64;
    }

    while (v64);
  }

  if ((v6 & 0x10) != 0)
  {
    v47 = sub_128AEEC(a3, 26, (*(a1 + 296) & 0xFFFFFFFFFFFFFFFELL), v47);
  }

  v69 = *(a1 + 152);
  if (v69)
  {
    for (m = 0; m != v69; ++m)
    {
      if (*a3 <= v47)
      {
        v47 = sub_225EB68(a3, v47);
      }

      v71 = *(*(a1 + 160) + 8 * m + 8);
      *v47 = 474;
      v72 = *(v71 + 20);
      v47[2] = v72;
      if (v72 > 0x7F)
      {
        v73 = sub_19575D0(v72, v47 + 2);
      }

      else
      {
        v73 = v47 + 3;
      }

      v47 = sub_154D580(v71, v73, a3);
    }
  }

  if ((v6 & 0x4000) == 0)
  {
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_157;
    }

LABEL_165:
    if (*a3 <= v47)
    {
      v47 = sub_225EB68(a3, v47);
    }

    v78 = *(a1 + 384);
    *v47 = 490;
    v79 = *(v78 + 20);
    v47[2] = v79;
    if (v79 > 0x7F)
    {
      v80 = sub_19575D0(v79, v47 + 2);
    }

    else
    {
      v80 = v47 + 3;
    }

    v47 = sub_16F4F90(v78, v80, a3);
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_171;
  }

  if (*a3 <= v47)
  {
    v47 = sub_225EB68(a3, v47);
  }

  v75 = *(a1 + 376);
  *v47 = 482;
  v76 = *(v75 + 20);
  v47[2] = v76;
  if (v76 > 0x7F)
  {
    v77 = sub_19575D0(v76, v47 + 2);
  }

  else
  {
    v77 = v47 + 3;
  }

  v47 = sub_14B56C0(v75, v77, a3);
  if ((v6 & 0x8000) != 0)
  {
    goto LABEL_165;
  }

LABEL_157:
  if ((v6 & 0x800000) == 0)
  {
LABEL_158:
    v74 = v47;
    goto LABEL_178;
  }

LABEL_171:
  if (*a3 <= v47)
  {
    v47 = sub_225EB68(a3, v47);
  }

  v81 = *(a1 + 436);
  *v47 = 496;
  v47[2] = v81;
  if (v81 > 0x7F)
  {
    v47[2] = v81 | 0x80;
    v82 = v81 >> 7;
    v47[3] = v81 >> 7;
    v74 = v47 + 4;
    if (v81 >= 0x4000)
    {
      LOBYTE(v83) = v47[3];
      do
      {
        *(v74 - 1) = v83 | 0x80;
        v83 = v82 >> 7;
        *v74++ = v82 >> 7;
        v84 = v82 >> 14;
        v82 >>= 7;
      }

      while (v84);
    }
  }

  else
  {
    v74 = v47 + 3;
  }

LABEL_178:
  if ((v6 & 0x10000) == 0)
  {
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_180;
    }

LABEL_188:
    if (*a3 <= v74)
    {
      v74 = sub_225EB68(a3, v74);
    }

    v89 = *(a1 + 400);
    *v74 = 642;
    v90 = *(v89 + 40);
    v74[2] = v90;
    if (v90 > 0x7F)
    {
      v91 = sub_19575D0(v90, v74 + 2);
    }

    else
    {
      v91 = v74 + 3;
    }

    v74 = sub_1495ABC(v89, v91, a3);
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_181;
    }

    goto LABEL_194;
  }

  if (*a3 <= v74)
  {
    v74 = sub_225EB68(a3, v74);
  }

  v86 = *(a1 + 392);
  *v74 = 506;
  v87 = *(v86 + 20);
  v74[2] = v87;
  if (v87 > 0x7F)
  {
    v88 = sub_19575D0(v87, v74 + 2);
  }

  else
  {
    v88 = v74 + 3;
  }

  v74 = sub_14B9004(v86, v88, a3);
  if ((v6 & 0x20000) != 0)
  {
    goto LABEL_188;
  }

LABEL_180:
  if ((v6 & 0x2000000) == 0)
  {
LABEL_181:
    v85 = v74;
    goto LABEL_201;
  }

LABEL_194:
  if (*a3 <= v74)
  {
    v74 = sub_225EB68(a3, v74);
  }

  v92 = *(a1 + 448);
  *v74 = 648;
  v74[2] = v92;
  if (v92 > 0x7F)
  {
    v74[2] = v92 | 0x80;
    v93 = v92 >> 7;
    v74[3] = v92 >> 7;
    v85 = v74 + 4;
    if (v92 >= 0x4000)
    {
      LOBYTE(v74) = v74[3];
      do
      {
        *(v85 - 1) = v74 | 0x80;
        v74 = (v93 >> 7);
        *v85++ = v93 >> 7;
        v94 = v93 >> 14;
        v93 >>= 7;
      }

      while (v94);
    }
  }

  else
  {
    v85 = v74 + 3;
  }

LABEL_201:
  v95 = *(a1 + 176);
  if (v95)
  {
    for (n = 0; n != v95; ++n)
    {
      if (*a3 <= v85)
      {
        v85 = sub_225EB68(a3, v85);
      }

      v97 = *(*(a1 + 184) + 8 * n + 8);
      *v85 = 658;
      v98 = *(v97 + 20);
      v85[2] = v98;
      if (v98 > 0x7F)
      {
        v99 = sub_19575D0(v98, v85 + 2);
      }

      else
      {
        v99 = v85 + 3;
      }

      v85 = sub_14A0040(v97, v99, a3);
    }
  }

  if ((v6 & 0x1000000) != 0)
  {
    if (*a3 <= v85)
    {
      v85 = sub_225EB68(a3, v85);
    }

    v101 = *(a1 + 440);
    *v85 = 664;
    v85[2] = v101;
    if (v101 > 0x7F)
    {
      v85[2] = v101 | 0x80;
      v102 = v101 >> 7;
      v85[3] = v101 >> 7;
      v100 = v85 + 4;
      if (v101 >= 0x4000)
      {
        LOBYTE(v85) = v85[3];
        do
        {
          *(v100 - 1) = v85 | 0x80;
          v85 = (v102 >> 7);
          *v100++ = v102 >> 7;
          v103 = v102 >> 14;
          v102 >>= 7;
        }

        while (v103);
      }
    }

    else
    {
      v100 = v85 + 3;
    }
  }

  else
  {
    v100 = v85;
  }

  if ((v6 & 0x40000) != 0)
  {
    if (*a3 <= v100)
    {
      v100 = sub_225EB68(a3, v100);
    }

    v104 = *(a1 + 408);
    *v100 = 674;
    v105 = *(v104 + 64);
    v100[2] = v105;
    if (v105 > 0x7F)
    {
      v106 = sub_19575D0(v105, v100 + 2);
    }

    else
    {
      v106 = v100 + 3;
    }

    v100 = sub_1477524(v104, v106, a3);
  }

  v107 = *(a1 + 200);
  if (v107)
  {
    for (ii = 0; ii != v107; ++ii)
    {
      if (*a3 <= v100)
      {
        v100 = sub_225EB68(a3, v100);
      }

      v109 = *(*(a1 + 208) + 8 * ii + 8);
      *v100 = 1698;
      v110 = *(v109 + 20);
      v100[2] = v110;
      if (v110 > 0x7F)
      {
        v111 = sub_19575D0(v110, v100 + 2);
      }

      else
      {
        v111 = v100 + 3;
      }

      v100 = sub_16EEE1C(v109, v111, a3);
    }
  }

  v112 = *(a1 + 224);
  if (v112 >= 1)
  {
    v113 = 8;
    do
    {
      v100 = sub_1355F54(a3, 101, *(*(a1 + 232) + v113), v100);
      v113 += 8;
      --v112;
    }

    while (v112);
  }

  v114 = *(a1 + 248);
  if (v114 >= 1)
  {
    v115 = 8;
    do
    {
      v116 = *(*(a1 + 256) + v115);
      v117 = *(v116 + 23);
      if (v117 < 0 && (v117 = v116[1], v117 > 127) || (*a3 - v100 + 13) < v117)
      {
        v100 = sub_1957480(a3, 102, v116, v100);
      }

      else
      {
        *v100 = 1714;
        v100[2] = v117;
        if (*(v116 + 23) < 0)
        {
          v116 = *v116;
        }

        v118 = v100 + 3;
        memcpy(v100 + 3, v116, v117);
        v100 = &v118[v117];
      }

      v115 += 8;
      --v114;
    }

    while (v114);
  }

  if ((v6 & 0x4000000) != 0)
  {
    if (*a3 <= v100)
    {
      v100 = sub_225EB68(a3, v100);
    }

    v120 = *(a1 + 452);
    *v100 = 1720;
    v100[2] = v120;
    if (v120 > 0x7F)
    {
      v100[2] = v120 | 0x80;
      v121 = v120 >> 7;
      v100[3] = v120 >> 7;
      v119 = v100 + 4;
      if (v120 >= 0x4000)
      {
        LOBYTE(v122) = v100[3];
        do
        {
          *(v119 - 1) = v122 | 0x80;
          v122 = v121 >> 7;
          *v119++ = v121 >> 7;
          v123 = v121 >> 14;
          v121 >>= 7;
        }

        while (v123);
      }
    }

    else
    {
      v119 = v100 + 3;
    }
  }

  else
  {
    v119 = v100;
  }

  if (*(a1 + 26))
  {
    v119 = sub_1953428(a1 + 16, 1000, 10101, v119, a3);
  }

  v124 = *(a1 + 8);
  if ((v124 & 1) == 0)
  {
    return v119;
  }

  v126 = v124 & 0xFFFFFFFFFFFFFFFCLL;
  v127 = *(v126 + 31);
  if (v127 < 0)
  {
    v128 = *(v126 + 8);
    v127 = *(v126 + 16);
  }

  else
  {
    v128 = (v126 + 8);
  }

  if ((*a3 - v119) >= v127)
  {
    v129 = v127;
    memcpy(v119, v128, v127);
    v119 += v129;
    return v119;
  }

  return sub_1957130(a3, v128, v127, v119);
}

uint64_t sub_14C7D64(uint64_t a1)
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
      v9 = sub_1549388(v8);
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
      v16 = sub_14C2C70(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(a1 + 104);
  v18 = v11 + v17;
  v19 = *(a1 + 112);
  if (v19)
  {
    v20 = (v19 + 8);
  }

  else
  {
    v20 = 0;
  }

  if (v17)
  {
    v21 = 8 * v17;
    do
    {
      v22 = *v20++;
      v23 = sub_154DABC(v22);
      v18 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6);
      v21 -= 8;
    }

    while (v21);
  }

  v24 = *(a1 + 128);
  v25 = v18 + 2 * v24;
  if (v24 >= 1)
  {
    v26 = (*(a1 + 136) + 8);
    do
    {
      v27 = *v26++;
      v28 = *(v27 + 23);
      v29 = *(v27 + 8);
      if ((v28 & 0x80u) == 0)
      {
        v29 = v28;
      }

      v25 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6);
      --v24;
    }

    while (v24);
  }

  v30 = *(a1 + 152);
  v31 = v25 + 2 * v30;
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
      v36 = sub_154DABC(v35);
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
      v43 = sub_14A01EC(v42);
      v38 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6);
      v41 -= 8;
    }

    while (v41);
  }

  v44 = *(a1 + 200);
  v45 = v38 + 2 * v44;
  v46 = *(a1 + 208);
  if (v46)
  {
    v47 = (v46 + 8);
  }

  else
  {
    v47 = 0;
  }

  if (v44)
  {
    v48 = 8 * v44;
    do
    {
      v49 = *v47++;
      v50 = sub_16EEF64(v49);
      v45 += v50 + ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6);
      v48 -= 8;
    }

    while (v48);
  }

  v51 = *(a1 + 224);
  v52 = v45 + 2 * v51;
  if (v51 >= 1)
  {
    v53 = (*(a1 + 232) + 8);
    do
    {
      v54 = *v53++;
      v55 = *(v54 + 23);
      v56 = *(v54 + 8);
      if ((v55 & 0x80u) == 0)
      {
        v56 = v55;
      }

      v52 += v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6);
      --v51;
    }

    while (v51);
  }

  v57 = *(a1 + 248);
  v58 = v52 + 2 * v57;
  if (v57 >= 1)
  {
    v59 = (*(a1 + 256) + 8);
    do
    {
      v60 = *v59++;
      v61 = *(v60 + 23);
      v62 = *(v60 + 8);
      if ((v61 & 0x80u) == 0)
      {
        v62 = v61;
      }

      v58 += v62 + ((9 * (__clz(v62 | 1) ^ 0x1F) + 73) >> 6);
      --v57;
    }

    while (v57);
  }

  v63 = *(a1 + 40);
  if (!*(a1 + 40))
  {
    goto LABEL_62;
  }

  if (v63)
  {
    v71 = *(a1 + 264) & 0xFFFFFFFFFFFFFFFELL;
    v72 = *(v71 + 23);
    v73 = *(v71 + 8);
    if ((v72 & 0x80u) == 0)
    {
      v73 = v72;
    }

    v58 += v73 + ((9 * (__clz(v73 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v63 & 2) == 0)
    {
LABEL_55:
      if ((v63 & 4) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_102;
    }
  }

  else if ((v63 & 2) == 0)
  {
    goto LABEL_55;
  }

  v74 = *(a1 + 272) & 0xFFFFFFFFFFFFFFFELL;
  v75 = *(v74 + 23);
  v76 = *(v74 + 8);
  if ((v75 & 0x80u) == 0)
  {
    v76 = v75;
  }

  v58 += v76 + ((9 * (__clz(v76 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v63 & 4) == 0)
  {
LABEL_56:
    if ((v63 & 8) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_105;
  }

LABEL_102:
  v77 = *(a1 + 280) & 0xFFFFFFFFFFFFFFFELL;
  v78 = *(v77 + 23);
  v79 = *(v77 + 8);
  if ((v78 & 0x80u) == 0)
  {
    v79 = v78;
  }

  v58 += v79 + ((9 * (__clz(v79 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v63 & 8) == 0)
  {
LABEL_57:
    if ((v63 & 0x10) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_108;
  }

LABEL_105:
  v80 = *(a1 + 288) & 0xFFFFFFFFFFFFFFFELL;
  v81 = *(v80 + 23);
  v82 = *(v80 + 8);
  if ((v81 & 0x80u) == 0)
  {
    v82 = v81;
  }

  v58 += v82 + ((9 * (__clz(v82 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v63 & 0x10) == 0)
  {
LABEL_58:
    if ((v63 & 0x20) == 0)
    {
      goto LABEL_59;
    }

LABEL_111:
    v86 = sub_16E8DA4(*(a1 + 304));
    v58 += v86 + ((9 * (__clz(v86 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v63 & 0x40) == 0)
    {
LABEL_60:
      if ((v63 & 0x80) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    goto LABEL_112;
  }

LABEL_108:
  v83 = *(a1 + 296) & 0xFFFFFFFFFFFFFFFELL;
  v84 = *(v83 + 23);
  v85 = *(v83 + 8);
  if ((v84 & 0x80u) == 0)
  {
    v85 = v84;
  }

  v58 += v85 + ((9 * (__clz(v85 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v63 & 0x20) != 0)
  {
    goto LABEL_111;
  }

LABEL_59:
  if ((v63 & 0x40) == 0)
  {
    goto LABEL_60;
  }

LABEL_112:
  v87 = sub_1493DE4(*(a1 + 312));
  v58 += v87 + ((9 * (__clz(v87 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v63 & 0x80) != 0)
  {
LABEL_61:
    v64 = sub_153A048(*(a1 + 320));
    v58 += v64 + ((9 * (__clz(v64 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_62:
  if ((v63 & 0xFF00) == 0)
  {
    goto LABEL_72;
  }

  if ((v63 & 0x100) != 0)
  {
    v88 = sub_16EE474(*(a1 + 328));
    v58 += v88 + ((9 * (__clz(v88 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v63 & 0x200) == 0)
    {
LABEL_65:
      if ((v63 & 0x400) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_116;
    }
  }

  else if ((v63 & 0x200) == 0)
  {
    goto LABEL_65;
  }

  v89 = sub_15508CC(*(a1 + 336));
  v58 += v89 + ((9 * (__clz(v89 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v63 & 0x400) == 0)
  {
LABEL_66:
    if ((v63 & 0x800) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_117;
  }

LABEL_116:
  v90 = sub_1495570(*(a1 + 344));
  v58 += v90 + ((9 * (__clz(v90 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v63 & 0x800) == 0)
  {
LABEL_67:
    if ((v63 & 0x1000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_118;
  }

LABEL_117:
  v91 = sub_13F09D8(*(a1 + 352));
  v58 += v91 + ((9 * (__clz(v91 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v63 & 0x1000) == 0)
  {
LABEL_68:
    if ((v63 & 0x2000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_119;
  }

LABEL_118:
  v92 = sub_14C4FF8(*(a1 + 360));
  v58 += v92 + ((9 * (__clz(v92 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v63 & 0x2000) == 0)
  {
LABEL_69:
    if ((v63 & 0x4000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_120;
  }

LABEL_119:
  v93 = sub_16E8DA4(*(a1 + 368));
  v58 += v93 + ((9 * (__clz(v93 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v63 & 0x4000) == 0)
  {
LABEL_70:
    if ((v63 & 0x8000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

LABEL_120:
  v94 = sub_14B5BB4(*(a1 + 376));
  v58 += v94 + ((9 * (__clz(v94 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v63 & 0x8000) != 0)
  {
LABEL_71:
    v65 = sub_16F5164(*(a1 + 384));
    v58 += v65 + ((9 * (__clz(v65 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_72:
  if ((v63 & 0xFF0000) == 0)
  {
    goto LABEL_88;
  }

  if ((v63 & 0x10000) != 0)
  {
    v95 = *(a1 + 392);
    v96 = 2 * (*(v95 + 16) & 1);
    v97 = *(v95 + 8);
    if (v97)
    {
      v105 = v97 & 0xFFFFFFFFFFFFFFFCLL;
      v106 = *((v97 & 0xFFFFFFFFFFFFFFFCLL) + 31);
      if (v106 < 0)
      {
        v106 = *(v105 + 16);
      }

      v96 += v106;
    }

    *(v95 + 20) = v96;
    v58 += v96 + ((9 * (__clz(v96 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v63 & 0x20000) == 0)
    {
LABEL_75:
      if ((v63 & 0x40000) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_125;
    }
  }

  else if ((v63 & 0x20000) == 0)
  {
    goto LABEL_75;
  }

  v98 = sub_1495BA4(*(a1 + 400));
  v58 += v98 + ((9 * (__clz(v98 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v63 & 0x40000) == 0)
  {
LABEL_76:
    if ((v63 & 0x80000) == 0)
    {
      goto LABEL_77;
    }

LABEL_126:
    v58 += ((9 * (__clz(*(a1 + 416) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v63 & 0x100000) != 0)
    {
      goto LABEL_78;
    }

    goto LABEL_82;
  }

LABEL_125:
  v99 = sub_1477688(*(a1 + 408));
  v58 += v99 + ((9 * (__clz(v99 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v63 & 0x80000) != 0)
  {
    goto LABEL_126;
  }

LABEL_77:
  if ((v63 & 0x100000) != 0)
  {
LABEL_78:
    v66 = *(a1 + 420);
    v67 = ((9 * (__clz(v66 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v66 >= 0)
    {
      v68 = v67;
    }

    else
    {
      v68 = 11;
    }

    v58 += v68;
  }

LABEL_82:
  if ((v63 & 0x200000) != 0)
  {
    v58 += 10;
  }

  if ((v63 & 0x400000) != 0)
  {
    v58 += ((9 * (__clz(*(a1 + 432) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if ((v63 & 0x800000) != 0)
  {
    v58 += ((9 * (__clz(*(a1 + 436) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_88:
  if ((v63 & 0xF000000) == 0)
  {
    goto LABEL_94;
  }

  if ((v63 & 0x1000000) == 0)
  {
    if ((v63 & 0x2000000) == 0)
    {
      goto LABEL_91;
    }

LABEL_129:
    v100 = *(a1 + 448);
    v101 = ((9 * (__clz(v100 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v100 >= 0)
    {
      v102 = v101;
    }

    else
    {
      v102 = 12;
    }

    v58 += v102;
    if ((v63 & 0x4000000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_92;
  }

  v58 += ((9 * (__clz(*(a1 + 440) | 1) ^ 0x3F) + 73) >> 6) + 2;
  if ((v63 & 0x2000000) != 0)
  {
    goto LABEL_129;
  }

LABEL_91:
  if ((v63 & 0x4000000) != 0)
  {
LABEL_92:
    v58 += ((9 * (__clz(*(a1 + 452) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_93:
  v58 += (v63 >> 26) & 2;
LABEL_94:
  v69 = *(a1 + 8);
  if (v69)
  {
    v103 = v69 & 0xFFFFFFFFFFFFFFFCLL;
    v104 = *((v69 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v104 < 0)
    {
      v104 = *(v103 + 16);
    }

    v58 += v104;
  }

  *(a1 + 44) = v58;
  return v58;
}

void sub_14C868C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_1449ED8((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
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
    sub_1568258((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80), v12);
    v13 = *(a1 + 80) + v9;
    *(a1 + 80) = v13;
    v14 = *(a1 + 88);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 104);
  if (v15)
  {
    v16 = *(a2 + 112);
    v17 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_144D55C((a1 + 96), v17, (v16 + 8), v15, **(a1 + 112) - *(a1 + 104));
    v18 = *(a1 + 104) + v15;
    *(a1 + 104) = v18;
    v19 = *(a1 + 112);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 128);
  if (v20)
  {
    v21 = *(a2 + 136);
    v22 = sub_19592E8(a1 + 120, *(a2 + 128));
    sub_1201B48((a1 + 120), v22, (v21 + 8), v20, **(a1 + 136) - *(a1 + 128));
    v23 = *(a1 + 128) + v20;
    *(a1 + 128) = v23;
    v24 = *(a1 + 136);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  v25 = *(a2 + 152);
  if (v25)
  {
    v26 = *(a2 + 160);
    v27 = sub_19592E8(a1 + 144, *(a2 + 152));
    sub_144D55C((a1 + 144), v27, (v26 + 8), v25, **(a1 + 160) - *(a1 + 152));
    v28 = *(a1 + 152) + v25;
    *(a1 + 152) = v28;
    v29 = *(a1 + 160);
    if (*v29 < v28)
    {
      *v29 = v28;
    }
  }

  v30 = *(a2 + 176);
  if (v30)
  {
    v31 = *(a2 + 184);
    v32 = sub_19592E8(a1 + 168, *(a2 + 176));
    sub_15682E4((a1 + 168), v32, (v31 + 8), v30, **(a1 + 184) - *(a1 + 176));
    v33 = *(a1 + 176) + v30;
    *(a1 + 176) = v33;
    v34 = *(a1 + 184);
    if (*v34 < v33)
    {
      *v34 = v33;
    }
  }

  v35 = *(a2 + 200);
  if (v35)
  {
    v36 = *(a2 + 208);
    v37 = sub_19592E8(a1 + 192, *(a2 + 200));
    sub_12E5E34((a1 + 192), v37, (v36 + 8), v35, **(a1 + 208) - *(a1 + 200));
    v38 = *(a1 + 200) + v35;
    *(a1 + 200) = v38;
    v39 = *(a1 + 208);
    if (*v39 < v38)
    {
      *v39 = v38;
    }
  }

  v40 = *(a2 + 224);
  if (v40)
  {
    v41 = *(a2 + 232);
    v42 = sub_19592E8(a1 + 216, *(a2 + 224));
    sub_1201B48((a1 + 216), v42, (v41 + 8), v40, **(a1 + 232) - *(a1 + 224));
    v43 = *(a1 + 224) + v40;
    *(a1 + 224) = v43;
    v44 = *(a1 + 232);
    if (*v44 < v43)
    {
      *v44 = v43;
    }
  }

  v45 = *(a2 + 248);
  if (v45)
  {
    v46 = *(a2 + 256);
    v47 = sub_19592E8(a1 + 240, *(a2 + 248));
    sub_1201B48((a1 + 240), v47, (v46 + 8), v45, **(a1 + 256) - *(a1 + 248));
    v48 = *(a1 + 248) + v45;
    *(a1 + 248) = v48;
    v49 = *(a1 + 256);
    if (*v49 < v48)
    {
      *v49 = v48;
    }
  }

  v50 = *(a2 + 40);
  if (!v50)
  {
    goto LABEL_77;
  }

  if (v50)
  {
    v51 = *(a2 + 264);
    *(a1 + 40) |= 1u;
    v52 = *(a1 + 8);
    v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
    if (v52)
    {
      v53 = *v53;
    }

    sub_194EA1C((a1 + 264), (v51 & 0xFFFFFFFFFFFFFFFELL), v53);
    if ((v50 & 2) == 0)
    {
LABEL_31:
      if ((v50 & 4) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_44;
    }
  }

  else if ((v50 & 2) == 0)
  {
    goto LABEL_31;
  }

  v54 = *(a2 + 272);
  *(a1 + 40) |= 2u;
  v55 = *(a1 + 8);
  v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL);
  if (v55)
  {
    v56 = *v56;
  }

  sub_194EA1C((a1 + 272), (v54 & 0xFFFFFFFFFFFFFFFELL), v56);
  if ((v50 & 4) == 0)
  {
LABEL_32:
    if ((v50 & 8) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_47;
  }

LABEL_44:
  v57 = *(a2 + 280);
  *(a1 + 40) |= 4u;
  v58 = *(a1 + 8);
  v59 = (v58 & 0xFFFFFFFFFFFFFFFCLL);
  if (v58)
  {
    v59 = *v59;
  }

  sub_194EA1C((a1 + 280), (v57 & 0xFFFFFFFFFFFFFFFELL), v59);
  if ((v50 & 8) == 0)
  {
LABEL_33:
    if ((v50 & 0x10) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_50;
  }

LABEL_47:
  v60 = *(a2 + 288);
  *(a1 + 40) |= 8u;
  v61 = *(a1 + 8);
  v62 = (v61 & 0xFFFFFFFFFFFFFFFCLL);
  if (v61)
  {
    v62 = *v62;
  }

  sub_194EA1C((a1 + 288), (v60 & 0xFFFFFFFFFFFFFFFELL), v62);
  if ((v50 & 0x10) == 0)
  {
LABEL_34:
    if ((v50 & 0x20) == 0)
    {
      goto LABEL_35;
    }

LABEL_53:
    *(a1 + 40) |= 0x20u;
    v66 = *(a1 + 304);
    if (!v66)
    {
      v67 = *(a1 + 8);
      v68 = (v67 & 0xFFFFFFFFFFFFFFFCLL);
      if (v67)
      {
        v68 = *v68;
      }

      v66 = sub_16F5BD8(v68);
      *(a1 + 304) = v66;
    }

    if (*(a2 + 304))
    {
      v69 = *(a2 + 304);
    }

    else
    {
      v69 = &off_277E738;
    }

    sub_16E4964(v66, v69);
    if ((v50 & 0x40) == 0)
    {
LABEL_36:
      if ((v50 & 0x80) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_69;
    }

    goto LABEL_61;
  }

LABEL_50:
  v63 = *(a2 + 296);
  *(a1 + 40) |= 0x10u;
  v64 = *(a1 + 8);
  v65 = (v64 & 0xFFFFFFFFFFFFFFFCLL);
  if (v64)
  {
    v65 = *v65;
  }

  sub_194EA1C((a1 + 296), (v63 & 0xFFFFFFFFFFFFFFFELL), v65);
  if ((v50 & 0x20) != 0)
  {
    goto LABEL_53;
  }

LABEL_35:
  if ((v50 & 0x40) == 0)
  {
    goto LABEL_36;
  }

LABEL_61:
  *(a1 + 40) |= 0x40u;
  v70 = *(a1 + 312);
  if (!v70)
  {
    v71 = *(a1 + 8);
    v72 = (v71 & 0xFFFFFFFFFFFFFFFCLL);
    if (v71)
    {
      v72 = *v72;
    }

    v70 = sub_14BD814(v72);
    *(a1 + 312) = v70;
  }

  if (*(a2 + 312))
  {
    v73 = *(a2 + 312);
  }

  else
  {
    v73 = &off_2772E28;
  }

  sub_149429C(v70, v73);
  if ((v50 & 0x80) != 0)
  {
LABEL_69:
    *(a1 + 40) |= 0x80u;
    v74 = *(a1 + 320);
    if (!v74)
    {
      v75 = *(a1 + 8);
      v76 = (v75 & 0xFFFFFFFFFFFFFFFCLL);
      if (v75)
      {
        v76 = *v76;
      }

      sub_155193C(v76);
      *(a1 + 320) = v74;
    }

    if (*(a2 + 320))
    {
      v77 = *(a2 + 320);
    }

    else
    {
      v77 = &off_2776700;
    }

    sub_14C9078(v74, v77);
  }

LABEL_77:
  if ((v50 & 0xFF00) == 0)
  {
    goto LABEL_151;
  }

  if ((v50 & 0x100) != 0)
  {
    *(a1 + 40) |= 0x100u;
    v78 = *(a1 + 328);
    if (!v78)
    {
      v79 = *(a1 + 8);
      v80 = (v79 & 0xFFFFFFFFFFFFFFFCLL);
      if (v79)
      {
        v80 = *v80;
      }

      v78 = sub_16F5F38(v80);
      *(a1 + 328) = v78;
    }

    if (*(a2 + 328))
    {
      v81 = *(a2 + 328);
    }

    else
    {
      v81 = &off_277E980;
    }

    sub_121721C(v78, v81);
    if ((v50 & 0x200) == 0)
    {
LABEL_80:
      if ((v50 & 0x400) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_103;
    }
  }

  else if ((v50 & 0x200) == 0)
  {
    goto LABEL_80;
  }

  *(a1 + 40) |= 0x200u;
  v82 = *(a1 + 336);
  if (!v82)
  {
    v83 = *(a1 + 8);
    v84 = (v83 & 0xFFFFFFFFFFFFFFFCLL);
    if (v83)
    {
      v84 = *v84;
    }

    v82 = sub_1552788(v84);
    *(a1 + 336) = v82;
  }

  if (*(a2 + 336))
  {
    v85 = *(a2 + 336);
  }

  else
  {
    v85 = &off_27770C8;
  }

  sub_14C99B8(v82, v85);
  if ((v50 & 0x400) == 0)
  {
LABEL_81:
    if ((v50 & 0x800) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_111;
  }

LABEL_103:
  *(a1 + 40) |= 0x400u;
  v86 = *(a1 + 344);
  if (!v86)
  {
    v87 = *(a1 + 8);
    v88 = (v87 & 0xFFFFFFFFFFFFFFFCLL);
    if (v87)
    {
      v88 = *v88;
    }

    v86 = sub_14BD8FC(v88);
    *(a1 + 344) = v86;
  }

  if (*(a2 + 344))
  {
    v89 = *(a2 + 344);
  }

  else
  {
    v89 = &off_2772ED0;
  }

  sub_14955F0(v86, v89);
  if ((v50 & 0x800) == 0)
  {
LABEL_82:
    if ((v50 & 0x1000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_119;
  }

LABEL_111:
  *(a1 + 40) |= 0x800u;
  v90 = *(a1 + 352);
  if (!v90)
  {
    v91 = *(a1 + 8);
    v92 = (v91 & 0xFFFFFFFFFFFFFFFCLL);
    if (v91)
    {
      v92 = *v92;
    }

    v90 = sub_13F0FB4(v92);
    *(a1 + 352) = v90;
  }

  if (*(a2 + 352))
  {
    v93 = *(a2 + 352);
  }

  else
  {
    v93 = &off_276F370;
  }

  sub_13F0A84(v90, v93);
  if ((v50 & 0x1000) == 0)
  {
LABEL_83:
    if ((v50 & 0x2000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_127;
  }

LABEL_119:
  *(a1 + 40) |= 0x1000u;
  v94 = *(a1 + 360);
  if (!v94)
  {
    v95 = *(a1 + 8);
    v96 = (v95 & 0xFFFFFFFFFFFFFFFCLL);
    if (v95)
    {
      v96 = *v96;
    }

    sub_14D5A00(v96);
    *(a1 + 360) = v94;
  }

  if (*(a2 + 360))
  {
    v97 = *(a2 + 360);
  }

  else
  {
    v97 = &off_2773F38;
  }

  sub_14C52AC(v94, v97);
  if ((v50 & 0x2000) == 0)
  {
LABEL_84:
    if ((v50 & 0x4000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_135;
  }

LABEL_127:
  *(a1 + 40) |= 0x2000u;
  v98 = *(a1 + 368);
  if (!v98)
  {
    v99 = *(a1 + 8);
    v100 = (v99 & 0xFFFFFFFFFFFFFFFCLL);
    if (v99)
    {
      v100 = *v100;
    }

    v98 = sub_16F5BD8(v100);
    *(a1 + 368) = v98;
  }

  if (*(a2 + 368))
  {
    v101 = *(a2 + 368);
  }

  else
  {
    v101 = &off_277E738;
  }

  sub_16E4964(v98, v101);
  if ((v50 & 0x4000) == 0)
  {
LABEL_85:
    if ((v50 & 0x8000) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_143;
  }

LABEL_135:
  *(a1 + 40) |= 0x4000u;
  v102 = *(a1 + 376);
  if (!v102)
  {
    v103 = *(a1 + 8);
    v104 = (v103 & 0xFFFFFFFFFFFFFFFCLL);
    if (v103)
    {
      v104 = *v104;
    }

    v102 = sub_14BF3C4(v104);
    *(a1 + 376) = v102;
  }

  if (*(a2 + 376))
  {
    v105 = *(a2 + 376);
  }

  else
  {
    v105 = &off_2773A48;
  }

  sub_14B5E78(v102, v105);
  if ((v50 & 0x8000) != 0)
  {
LABEL_143:
    *(a1 + 40) |= 0x8000u;
    v106 = *(a1 + 384);
    if (!v106)
    {
      v107 = *(a1 + 8);
      v108 = (v107 & 0xFFFFFFFFFFFFFFFCLL);
      if (v107)
      {
        v108 = *v108;
      }

      v106 = sub_16F65CC(v108);
      *(a1 + 384) = v106;
    }

    if (*(a2 + 384))
    {
      v109 = *(a2 + 384);
    }

    else
    {
      v109 = &off_277EBD8;
    }

    sub_12C3070(v106, v109);
  }

LABEL_151:
  if ((v50 & 0xFF0000) == 0)
  {
    goto LABEL_162;
  }

  if ((v50 & 0x10000) != 0)
  {
    *(a1 + 40) |= 0x10000u;
    v111 = *(a1 + 392);
    if (!v111)
    {
      v112 = *(a1 + 8);
      v113 = (v112 & 0xFFFFFFFFFFFFFFFCLL);
      if (v112)
      {
        v113 = *v113;
      }

      v111 = sub_14BF5F4(v113);
      *(a1 + 392) = v111;
    }

    if (*(a2 + 392))
    {
      v114 = *(a2 + 392);
    }

    else
    {
      v114 = &off_2773BF8;
    }

    sub_140C624(v111, v114);
    if ((v50 & 0x20000) == 0)
    {
LABEL_154:
      if ((v50 & 0x40000) == 0)
      {
        goto LABEL_155;
      }

      goto LABEL_189;
    }
  }

  else if ((v50 & 0x20000) == 0)
  {
    goto LABEL_154;
  }

  *(a1 + 40) |= 0x20000u;
  v115 = *(a1 + 400);
  if (!v115)
  {
    v116 = *(a1 + 8);
    v117 = (v116 & 0xFFFFFFFFFFFFFFFCLL);
    if (v116)
    {
      v117 = *v117;
    }

    v115 = sub_14BD980(v117);
    *(a1 + 400) = v115;
  }

  if (*(a2 + 400))
  {
    v118 = *(a2 + 400);
  }

  else
  {
    v118 = &off_2772EF0;
  }

  sub_13E88F4(v115, v118);
  if ((v50 & 0x40000) == 0)
  {
LABEL_155:
    if ((v50 & 0x80000) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_197;
  }

LABEL_189:
  *(a1 + 40) |= 0x40000u;
  v119 = *(a1 + 408);
  if (!v119)
  {
    v120 = *(a1 + 8);
    v121 = (v120 & 0xFFFFFFFFFFFFFFFCLL);
    if (v120)
    {
      v121 = *v121;
    }

    v119 = sub_14BC6D4(v121);
    *(a1 + 408) = v119;
  }

  if (*(a2 + 408))
  {
    v122 = *(a2 + 408);
  }

  else
  {
    v122 = &off_2772200;
  }

  sub_1477734(v119, v122);
  if ((v50 & 0x80000) == 0)
  {
LABEL_156:
    if ((v50 & 0x100000) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_198;
  }

LABEL_197:
  *(a1 + 416) = *(a2 + 416);
  if ((v50 & 0x100000) == 0)
  {
LABEL_157:
    if ((v50 & 0x200000) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_199;
  }

LABEL_198:
  *(a1 + 420) = *(a2 + 420);
  if ((v50 & 0x200000) == 0)
  {
LABEL_158:
    if ((v50 & 0x400000) == 0)
    {
      goto LABEL_159;
    }

LABEL_200:
    *(a1 + 432) = *(a2 + 432);
    if ((v50 & 0x800000) == 0)
    {
      goto LABEL_161;
    }

    goto LABEL_160;
  }

LABEL_199:
  *(a1 + 424) = *(a2 + 424);
  if ((v50 & 0x400000) != 0)
  {
    goto LABEL_200;
  }

LABEL_159:
  if ((v50 & 0x800000) != 0)
  {
LABEL_160:
    *(a1 + 436) = *(a2 + 436);
  }

LABEL_161:
  *(a1 + 40) |= v50;
LABEL_162:
  if ((v50 & 0xF000000) == 0)
  {
    goto LABEL_169;
  }

  if ((v50 & 0x1000000) != 0)
  {
    *(a1 + 440) = *(a2 + 440);
    if ((v50 & 0x2000000) == 0)
    {
LABEL_165:
      if ((v50 & 0x4000000) == 0)
      {
        goto LABEL_166;
      }

LABEL_204:
      *(a1 + 452) = *(a2 + 452);
      if ((v50 & 0x8000000) == 0)
      {
        goto LABEL_168;
      }

      goto LABEL_167;
    }
  }

  else if ((v50 & 0x2000000) == 0)
  {
    goto LABEL_165;
  }

  *(a1 + 448) = *(a2 + 448);
  if ((v50 & 0x4000000) != 0)
  {
    goto LABEL_204;
  }

LABEL_166:
  if ((v50 & 0x8000000) != 0)
  {
LABEL_167:
    *(a1 + 456) = *(a2 + 456);
  }

LABEL_168:
  *(a1 + 40) |= v50;
LABEL_169:
  sub_225EA0C(a1 + 16, a2 + 16);
  v110 = *(a2 + 8);
  if (v110)
  {

    sub_1957EF4((a1 + 8), (v110 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_14C9078(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4)
  {
    v5 = *(a2 + 48);
    v6 = sub_19592E8(a1 + 32, *(a2 + 40));
    sub_1201B48((a1 + 32), v6, (v5 + 8), v4, **(a1 + 48) - *(a1 + 40));
    v7 = *(a1 + 40) + v4;
    *(a1 + 40) = v7;
    v8 = *(a1 + 48);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a1 + 56);
    sub_1958E5C((a1 + 56), v10 + v9);
    v11 = *(a1 + 64);
    *(a1 + 56) += *(a2 + 56);
    memcpy((v11 + 4 * v10), *(a2 + 64), 4 * *(a2 + 56));
  }

  v12 = *(a2 + 72);
  if (v12)
  {
    v13 = *(a1 + 72);
    sub_1958E5C((a1 + 72), v13 + v12);
    v14 = *(a1 + 80);
    *(a1 + 72) += *(a2 + 72);
    memcpy((v14 + 4 * v13), *(a2 + 80), 4 * *(a2 + 72));
  }

  v15 = *(a2 + 88);
  if (v15)
  {
    v16 = *(a1 + 88);
    sub_1958E5C((a1 + 88), v16 + v15);
    v17 = *(a1 + 96);
    *(a1 + 88) += *(a2 + 88);
    memcpy((v17 + 4 * v16), *(a2 + 96), 4 * *(a2 + 88));
  }

  v18 = *(a2 + 16);
  if (!v18)
  {
    goto LABEL_44;
  }

  if (v18)
  {
    v19 = *(a2 + 104);
    *(a1 + 16) |= 1u;
    v20 = *(a1 + 8);
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    sub_194EA1C((a1 + 104), (v19 & 0xFFFFFFFFFFFFFFFELL), v21);
    if ((v18 & 2) == 0)
    {
LABEL_13:
      if ((v18 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_26;
    }
  }

  else if ((v18 & 2) == 0)
  {
    goto LABEL_13;
  }

  v22 = *(a2 + 112);
  *(a1 + 16) |= 2u;
  v23 = *(a1 + 8);
  v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
  if (v23)
  {
    v24 = *v24;
  }

  sub_194EA1C((a1 + 112), (v22 & 0xFFFFFFFFFFFFFFFELL), v24);
  if ((v18 & 4) == 0)
  {
LABEL_14:
    if ((v18 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_26:
  v25 = *(a2 + 120);
  *(a1 + 16) |= 4u;
  v26 = *(a1 + 8);
  v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
  if (v26)
  {
    v27 = *v27;
  }

  sub_194EA1C((a1 + 120), (v25 & 0xFFFFFFFFFFFFFFFELL), v27);
  if ((v18 & 8) == 0)
  {
LABEL_15:
    if ((v18 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_29:
  v28 = *(a2 + 128);
  *(a1 + 16) |= 8u;
  v29 = *(a1 + 8);
  v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
  if (v29)
  {
    v30 = *v30;
  }

  sub_194EA1C((a1 + 128), (v28 & 0xFFFFFFFFFFFFFFFELL), v30);
  if ((v18 & 0x10) == 0)
  {
LABEL_16:
    if ((v18 & 0x20) == 0)
    {
      goto LABEL_17;
    }

LABEL_35:
    v34 = *(a2 + 144);
    *(a1 + 16) |= 0x20u;
    v35 = *(a1 + 8);
    v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
    if (v35)
    {
      v36 = *v36;
    }

    sub_194EA1C((a1 + 144), (v34 & 0xFFFFFFFFFFFFFFFELL), v36);
    if ((v18 & 0x40) == 0)
    {
LABEL_18:
      if ((v18 & 0x80) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    goto LABEL_38;
  }

LABEL_32:
  v31 = *(a2 + 136);
  *(a1 + 16) |= 0x10u;
  v32 = *(a1 + 8);
  v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
  if (v32)
  {
    v33 = *v33;
  }

  sub_194EA1C((a1 + 136), (v31 & 0xFFFFFFFFFFFFFFFELL), v33);
  if ((v18 & 0x20) != 0)
  {
    goto LABEL_35;
  }

LABEL_17:
  if ((v18 & 0x40) == 0)
  {
    goto LABEL_18;
  }

LABEL_38:
  v37 = *(a2 + 152);
  *(a1 + 16) |= 0x40u;
  v38 = *(a1 + 8);
  v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
  if (v38)
  {
    v39 = *v39;
  }

  sub_194EA1C((a1 + 152), (v37 & 0xFFFFFFFFFFFFFFFELL), v39);
  if ((v18 & 0x80) != 0)
  {
LABEL_41:
    v40 = *(a2 + 160);
    *(a1 + 16) |= 0x80u;
    v41 = *(a1 + 8);
    v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
    if (v41)
    {
      v42 = *v42;
    }

    sub_194EA1C((a1 + 160), (v40 & 0xFFFFFFFFFFFFFFFELL), v42);
  }

LABEL_44:
  if ((v18 & 0xFF00) == 0)
  {
    goto LABEL_113;
  }

  if ((v18 & 0x100) != 0)
  {
    v43 = *(a2 + 168);
    *(a1 + 16) |= 0x100u;
    v44 = *(a1 + 8);
    v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
    if (v44)
    {
      v45 = *v45;
    }

    sub_194EA1C((a1 + 168), (v43 & 0xFFFFFFFFFFFFFFFELL), v45);
    if ((v18 & 0x200) == 0)
    {
LABEL_47:
      if ((v18 & 0x400) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_65;
    }
  }

  else if ((v18 & 0x200) == 0)
  {
    goto LABEL_47;
  }

  *(a1 + 16) |= 0x200u;
  v46 = *(a1 + 176);
  if (!v46)
  {
    v47 = *(a1 + 8);
    v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
    if (v47)
    {
      v48 = *v48;
    }

    v46 = sub_1551750(v48);
    *(a1 + 176) = v46;
  }

  if (*(a2 + 176))
  {
    v49 = *(a2 + 176);
  }

  else
  {
    v49 = &off_2776680;
  }

  sub_1537234(v46, v49);
  if ((v18 & 0x400) == 0)
  {
LABEL_48:
    if ((v18 & 0x800) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_73;
  }

LABEL_65:
  *(a1 + 16) |= 0x400u;
  v50 = *(a1 + 184);
  if (!v50)
  {
    v51 = *(a1 + 8);
    v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
    if (v51)
    {
      v52 = *v52;
    }

    v50 = sub_16F63DC(v52);
    *(a1 + 184) = v50;
  }

  if (*(a2 + 184))
  {
    v53 = *(a2 + 184);
  }

  else
  {
    v53 = &off_277EB40;
  }

  sub_16F34FC(v50, v53);
  if ((v18 & 0x800) == 0)
  {
LABEL_49:
    if ((v18 & 0x1000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_81;
  }

LABEL_73:
  *(a1 + 16) |= 0x800u;
  v54 = *(a1 + 192);
  if (!v54)
  {
    v55 = *(a1 + 8);
    v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL);
    if (v55)
    {
      v56 = *v56;
    }

    v54 = sub_16F6380(v56);
    *(a1 + 192) = v54;
  }

  if (*(a2 + 192))
  {
    v57 = *(a2 + 192);
  }

  else
  {
    v57 = &off_277EB00;
  }

  sub_16F2CF0(v54, v57);
  if ((v18 & 0x1000) == 0)
  {
LABEL_50:
    if ((v18 & 0x2000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_89;
  }

LABEL_81:
  *(a1 + 16) |= 0x1000u;
  v58 = *(a1 + 200);
  if (!v58)
  {
    v59 = *(a1 + 8);
    v60 = (v59 & 0xFFFFFFFFFFFFFFFCLL);
    if (v59)
    {
      v60 = *v60;
    }

    v58 = sub_16F6530(v60);
    *(a1 + 200) = v58;
  }

  if (*(a2 + 200))
  {
    v61 = *(a2 + 200);
  }

  else
  {
    v61 = &off_277EBA8;
  }

  sub_16F49C4(v58, v61);
  if ((v18 & 0x2000) == 0)
  {
LABEL_51:
    if ((v18 & 0x4000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_97;
  }

LABEL_89:
  *(a1 + 16) |= 0x2000u;
  v62 = *(a1 + 208);
  if (!v62)
  {
    v63 = *(a1 + 8);
    v64 = (v63 & 0xFFFFFFFFFFFFFFFCLL);
    if (v63)
    {
      v64 = *v64;
    }

    v62 = sub_15517C8(v64);
    *(a1 + 208) = v62;
  }

  if (*(a2 + 208))
  {
    v65 = *(a2 + 208);
  }

  else
  {
    v65 = &off_27766A0;
  }

  sub_1485514(v62, v65);
  if ((v18 & 0x4000) == 0)
  {
LABEL_52:
    if ((v18 & 0x8000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_105;
  }

LABEL_97:
  *(a1 + 16) |= 0x4000u;
  v66 = *(a1 + 216);
  if (!v66)
  {
    v67 = *(a1 + 8);
    v68 = (v67 & 0xFFFFFFFFFFFFFFFCLL);
    if (v67)
    {
      v68 = *v68;
    }

    v66 = sub_1551844(v68);
    *(a1 + 216) = v66;
  }

  if (*(a2 + 216))
  {
    v69 = *(a2 + 216);
  }

  else
  {
    v69 = &off_27766C0;
  }

  sub_140C624(v66, v69);
  if ((v18 & 0x8000) != 0)
  {
LABEL_105:
    *(a1 + 16) |= 0x8000u;
    v70 = *(a1 + 224);
    if (!v70)
    {
      v71 = *(a1 + 8);
      v72 = (v71 & 0xFFFFFFFFFFFFFFFCLL);
      if (v71)
      {
        v72 = *v72;
      }

      v70 = sub_15518C0(v72);
      *(a1 + 224) = v70;
    }

    if (*(a2 + 224))
    {
      v73 = *(a2 + 224);
    }

    else
    {
      v73 = &off_27766E0;
    }

    sub_1485514(v70, v73);
  }

LABEL_113:
  if ((v18 & 0xFF0000) == 0)
  {
    goto LABEL_124;
  }

  if ((v18 & 0x10000) != 0)
  {
    *(a1 + 232) = *(a2 + 232);
    if ((v18 & 0x20000) == 0)
    {
LABEL_116:
      if ((v18 & 0x40000) == 0)
      {
        goto LABEL_117;
      }

      goto LABEL_183;
    }
  }

  else if ((v18 & 0x20000) == 0)
  {
    goto LABEL_116;
  }

  *(a1 + 233) = *(a2 + 233);
  if ((v18 & 0x40000) == 0)
  {
LABEL_117:
    if ((v18 & 0x80000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_184;
  }

LABEL_183:
  *(a1 + 234) = *(a2 + 234);
  if ((v18 & 0x80000) == 0)
  {
LABEL_118:
    if ((v18 & 0x100000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_185;
  }

LABEL_184:
  *(a1 + 235) = *(a2 + 235);
  if ((v18 & 0x100000) == 0)
  {
LABEL_119:
    if ((v18 & 0x200000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_186;
  }

LABEL_185:
  *(a1 + 236) = *(a2 + 236);
  if ((v18 & 0x200000) == 0)
  {
LABEL_120:
    if ((v18 & 0x400000) == 0)
    {
      goto LABEL_121;
    }

LABEL_187:
    *(a1 + 238) = *(a2 + 238);
    if ((v18 & 0x800000) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_122;
  }

LABEL_186:
  *(a1 + 237) = *(a2 + 237);
  if ((v18 & 0x400000) != 0)
  {
    goto LABEL_187;
  }

LABEL_121:
  if ((v18 & 0x800000) != 0)
  {
LABEL_122:
    *(a1 + 239) = *(a2 + 239);
  }

LABEL_123:
  *(a1 + 16) |= v18;
LABEL_124:
  if (!HIBYTE(v18))
  {
    goto LABEL_134;
  }

  if ((v18 & 0x1000000) != 0)
  {
    *(a1 + 240) = *(a2 + 240);
    if ((v18 & 0x2000000) == 0)
    {
LABEL_127:
      if ((v18 & 0x4000000) == 0)
      {
        goto LABEL_128;
      }

      goto LABEL_215;
    }
  }

  else if ((v18 & 0x2000000) == 0)
  {
    goto LABEL_127;
  }

  *(a1 + 241) = *(a2 + 241);
  if ((v18 & 0x4000000) == 0)
  {
LABEL_128:
    if ((v18 & 0x8000000) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_216;
  }

LABEL_215:
  *(a1 + 242) = *(a2 + 242);
  if ((v18 & 0x8000000) == 0)
  {
LABEL_129:
    if ((v18 & 0x10000000) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_217;
  }

LABEL_216:
  *(a1 + 243) = *(a2 + 243);
  if ((v18 & 0x10000000) == 0)
  {
LABEL_130:
    if ((v18 & 0x20000000) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_218;
  }

LABEL_217:
  *(a1 + 244) = *(a2 + 244);
  if ((v18 & 0x20000000) == 0)
  {
LABEL_131:
    if ((v18 & 0x40000000) == 0)
    {
      goto LABEL_132;
    }

LABEL_219:
    *(a1 + 246) = *(a2 + 246);
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_133;
    }

LABEL_220:
    *(a1 + 247) = *(a2 + 247);
    goto LABEL_133;
  }

LABEL_218:
  *(a1 + 245) = *(a2 + 245);
  if ((v18 & 0x40000000) != 0)
  {
    goto LABEL_219;
  }

LABEL_132:
  if ((v18 & 0x80000000) != 0)
  {
    goto LABEL_220;
  }

LABEL_133:
  *(a1 + 16) |= v18;
LABEL_134:
  v74 = *(a2 + 20);
  if (!v74)
  {
    goto LABEL_145;
  }

  if (v74)
  {
    *(a1 + 248) = *(a2 + 248);
    if ((v74 & 2) == 0)
    {
LABEL_137:
      if ((v74 & 4) == 0)
      {
        goto LABEL_138;
      }

      goto LABEL_191;
    }
  }

  else if ((v74 & 2) == 0)
  {
    goto LABEL_137;
  }

  *(a1 + 249) = *(a2 + 249);
  if ((v74 & 4) == 0)
  {
LABEL_138:
    if ((v74 & 8) == 0)
    {
      goto LABEL_139;
    }

    goto LABEL_192;
  }

LABEL_191:
  *(a1 + 250) = *(a2 + 250);
  if ((v74 & 8) == 0)
  {
LABEL_139:
    if ((v74 & 0x10) == 0)
    {
      goto LABEL_140;
    }

    goto LABEL_193;
  }

LABEL_192:
  *(a1 + 251) = *(a2 + 251);
  if ((v74 & 0x10) == 0)
  {
LABEL_140:
    if ((v74 & 0x20) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_194;
  }

LABEL_193:
  *(a1 + 252) = *(a2 + 252);
  if ((v74 & 0x20) == 0)
  {
LABEL_141:
    if ((v74 & 0x40) == 0)
    {
      goto LABEL_142;
    }

LABEL_195:
    *(a1 + 254) = *(a2 + 254);
    if ((v74 & 0x80) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_143;
  }

LABEL_194:
  *(a1 + 253) = *(a2 + 253);
  if ((v74 & 0x40) != 0)
  {
    goto LABEL_195;
  }

LABEL_142:
  if ((v74 & 0x80) != 0)
  {
LABEL_143:
    *(a1 + 255) = *(a2 + 255);
  }

LABEL_144:
  *(a1 + 20) |= v74;
LABEL_145:
  if ((v74 & 0xFF00) == 0)
  {
    goto LABEL_156;
  }

  if ((v74 & 0x100) != 0)
  {
    *(a1 + 256) = *(a2 + 256);
    if ((v74 & 0x200) == 0)
    {
LABEL_148:
      if ((v74 & 0x400) == 0)
      {
        goto LABEL_149;
      }

      goto LABEL_199;
    }
  }

  else if ((v74 & 0x200) == 0)
  {
    goto LABEL_148;
  }

  *(a1 + 257) = *(a2 + 257);
  if ((v74 & 0x400) == 0)
  {
LABEL_149:
    if ((v74 & 0x800) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_200;
  }

LABEL_199:
  *(a1 + 258) = *(a2 + 258);
  if ((v74 & 0x800) == 0)
  {
LABEL_150:
    if ((v74 & 0x1000) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_201;
  }

LABEL_200:
  *(a1 + 259) = *(a2 + 259);
  if ((v74 & 0x1000) == 0)
  {
LABEL_151:
    if ((v74 & 0x2000) == 0)
    {
      goto LABEL_152;
    }

    goto LABEL_202;
  }

LABEL_201:
  *(a1 + 260) = *(a2 + 260);
  if ((v74 & 0x2000) == 0)
  {
LABEL_152:
    if ((v74 & 0x4000) == 0)
    {
      goto LABEL_153;
    }

LABEL_203:
    *(a1 + 262) = *(a2 + 262);
    if ((v74 & 0x8000) == 0)
    {
      goto LABEL_155;
    }

    goto LABEL_154;
  }

LABEL_202:
  *(a1 + 261) = *(a2 + 261);
  if ((v74 & 0x4000) != 0)
  {
    goto LABEL_203;
  }

LABEL_153:
  if ((v74 & 0x8000) != 0)
  {
LABEL_154:
    *(a1 + 263) = *(a2 + 263);
  }

LABEL_155:
  *(a1 + 20) |= v74;
LABEL_156:
  if ((v74 & 0xFF0000) == 0)
  {
    goto LABEL_167;
  }

  if ((v74 & 0x10000) != 0)
  {
    *(a1 + 264) = *(a2 + 264);
    if ((v74 & 0x20000) == 0)
    {
LABEL_159:
      if ((v74 & 0x40000) == 0)
      {
        goto LABEL_160;
      }

      goto LABEL_207;
    }
  }

  else if ((v74 & 0x20000) == 0)
  {
    goto LABEL_159;
  }

  *(a1 + 265) = *(a2 + 265);
  if ((v74 & 0x40000) == 0)
  {
LABEL_160:
    if ((v74 & 0x80000) == 0)
    {
      goto LABEL_161;
    }

    goto LABEL_208;
  }

LABEL_207:
  *(a1 + 266) = *(a2 + 266);
  if ((v74 & 0x80000) == 0)
  {
LABEL_161:
    if ((v74 & 0x100000) == 0)
    {
      goto LABEL_162;
    }

    goto LABEL_209;
  }

LABEL_208:
  *(a1 + 267) = *(a2 + 267);
  if ((v74 & 0x100000) == 0)
  {
LABEL_162:
    if ((v74 & 0x200000) == 0)
    {
      goto LABEL_163;
    }

    goto LABEL_210;
  }

LABEL_209:
  *(a1 + 268) = *(a2 + 268);
  if ((v74 & 0x200000) == 0)
  {
LABEL_163:
    if ((v74 & 0x400000) == 0)
    {
      goto LABEL_164;
    }

LABEL_211:
    *(a1 + 270) = *(a2 + 270);
    if ((v74 & 0x800000) == 0)
    {
      goto LABEL_166;
    }

    goto LABEL_165;
  }

LABEL_210:
  *(a1 + 269) = *(a2 + 269);
  if ((v74 & 0x400000) != 0)
  {
    goto LABEL_211;
  }

LABEL_164:
  if ((v74 & 0x800000) != 0)
  {
LABEL_165:
    *(a1 + 271) = *(a2 + 271);
  }

LABEL_166:
  *(a1 + 20) |= v74;
LABEL_167:
  if (!HIBYTE(v74))
  {
    goto LABEL_177;
  }

  if ((v74 & 0x1000000) != 0)
  {
    *(a1 + 272) = *(a2 + 272);
    if ((v74 & 0x2000000) == 0)
    {
LABEL_170:
      if ((v74 & 0x4000000) == 0)
      {
        goto LABEL_171;
      }

      goto LABEL_223;
    }
  }

  else if ((v74 & 0x2000000) == 0)
  {
    goto LABEL_170;
  }

  *(a1 + 276) = *(a2 + 276);
  if ((v74 & 0x4000000) == 0)
  {
LABEL_171:
    if ((v74 & 0x8000000) == 0)
    {
      goto LABEL_172;
    }

    goto LABEL_224;
  }

LABEL_223:
  *(a1 + 280) = *(a2 + 280);
  if ((v74 & 0x8000000) == 0)
  {
LABEL_172:
    if ((v74 & 0x10000000) == 0)
    {
      goto LABEL_173;
    }

    goto LABEL_225;
  }

LABEL_224:
  *(a1 + 284) = *(a2 + 284);
  if ((v74 & 0x10000000) == 0)
  {
LABEL_173:
    if ((v74 & 0x20000000) == 0)
    {
      goto LABEL_174;
    }

    goto LABEL_226;
  }

LABEL_225:
  *(a1 + 288) = *(a2 + 288);
  if ((v74 & 0x20000000) == 0)
  {
LABEL_174:
    if ((v74 & 0x40000000) == 0)
    {
      goto LABEL_175;
    }

LABEL_227:
    *(a1 + 296) = *(a2 + 296);
    if ((v74 & 0x80000000) == 0)
    {
      goto LABEL_176;
    }

LABEL_228:
    *(a1 + 300) = *(a2 + 300);
    goto LABEL_176;
  }

LABEL_226:
  *(a1 + 292) = *(a2 + 292);
  if ((v74 & 0x40000000) != 0)
  {
    goto LABEL_227;
  }

LABEL_175:
  if ((v74 & 0x80000000) != 0)
  {
    goto LABEL_228;
  }

LABEL_176:
  *(a1 + 20) |= v74;
LABEL_177:
  v75 = *(a2 + 8);
  if (v75)
  {

    sub_1957EF4((a1 + 8), (v75 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

std::string *sub_14C99B8(std::string *result, uint64_t a2)
{
  p_data = &result->__r_.__value_.__l.__data_;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(&result->__r_.__value_.__r.__words[2], *(a2 + 24));
    result = sub_1201B48(p_data + 2, v6, (v5 + 8), v4, *p_data[4] - *(p_data + 6));
    v7 = *(p_data + 6) + v4;
    *(p_data + 6) = v7;
    v8 = p_data[4];
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 48);
  if (v9)
  {
    v10 = *(a2 + 56);
    v11 = sub_19592E8((p_data + 5), *(a2 + 48));
    result = sub_1201B48(p_data + 5, v11, (v10 + 8), v9, *p_data[7] - *(p_data + 12));
    v12 = *(p_data + 12) + v9;
    *(p_data + 12) = v12;
    v13 = p_data[7];
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    return sub_1957EF4(p_data + 1, (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void sub_14C9AD0(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    sub_14C6964(result);

    sub_14C868C(result, a2);
  }
}

uint64_t sub_14C9B1C(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 56);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_14D04F4(*(*(a1 + 64) + 8 * v3));
      v3 = v4;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    v6 = *(a1 + 80);
    while (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = sub_14C3CB8(*(*(a1 + 88) + 8 * v6));
      v6 = v7;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    v9 = *(a1 + 104);
    while (v9 >= 1)
    {
      v10 = v9 - 1;
      v11 = sub_14D0578(*(*(a1 + 112) + 8 * v9));
      v9 = v10;
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

    v12 = *(a1 + 152);
    while (v12 >= 1)
    {
      v13 = v12 - 1;
      v14 = sub_14D0578(*(*(a1 + 160) + 8 * v12));
      v12 = v13;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

    result = sub_14C9CF4(a1 + 168);
    if (result)
    {
      v15 = *(a1 + 200);
      while (v15 >= 1)
      {
        v16 = v15 - 1;
        v17 = sub_16EF064(*(*(a1 + 208) + 8 * v15));
        result = 0;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          return result;
        }
      }

      v18 = *(a1 + 40);
      if ((v18 & 0x20) != 0)
      {
        result = sub_16E4B4C(*(a1 + 304));
        if (!result)
        {
          return result;
        }

        v18 = *(a1 + 40);
      }

      if ((v18 & 0x40) != 0)
      {
        v19 = *(a1 + 312);
        if ((*(v19 + 16) & 8) != 0)
        {
          result = sub_195228C(*(v19 + 96) + 16);
          if (!result)
          {
            return result;
          }

          v18 = *(a1 + 40);
        }
      }

      if ((v18 & 0x80) != 0)
      {
        result = sub_14C9D50(*(a1 + 320));
        if (!result)
        {
          return result;
        }

        v18 = *(a1 + 40);
      }

      if ((v18 & 0x100) != 0)
      {
        result = sub_16EE510(*(a1 + 328));
        if (!result)
        {
          return result;
        }

        v18 = *(a1 + 40);
      }

      if ((v18 & 0x800) != 0)
      {
        result = sub_13F0B14(*(a1 + 352));
        if (!result)
        {
          return result;
        }

        v18 = *(a1 + 40);
      }

      if ((v18 & 0x1000) != 0)
      {
        result = sub_14C55B0(*(a1 + 360));
        if (!result)
        {
          return result;
        }

        v18 = *(a1 + 40);
      }

      if ((v18 & 0x2000) != 0)
      {
        result = sub_16E4B4C(*(a1 + 368));
        if (!result)
        {
          return result;
        }

        v18 = *(a1 + 40);
      }

      if ((v18 & 0x4000) != 0)
      {
        result = sub_14B6108(*(a1 + 376));
        if (!result)
        {
          return result;
        }

        v18 = *(a1 + 40);
      }

      if ((v18 & 0x40000) == 0)
      {
        return 1;
      }

      result = sub_195228C(*(a1 + 408) + 16);
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_14C9CF4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  while (1)
  {
    v3 = *(*(a1 + 16) + 8 * v1);
    if ((*(v3 + 16) & 2) != 0)
    {
      result = sub_149FBF4(*(v3 + 32));
      if (!result)
      {
        break;
      }
    }

    if (v1-- <= 1)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_14C9D50(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x400) != 0)
  {
    result = sub_16F35C0(*(a1 + 184));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x800) == 0)
  {
    return 1;
  }

  result = sub_16F2D80(*(a1 + 192));
  if (result)
  {
    return 1;
  }

  return result;
}

void sub_14C9D9C(uint64_t a1, uint64_t a2)
{
  sub_1951F08((a1 + 16), (a2 + 16));
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  LODWORD(v4) = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v5;
  *(a2 + 56) = v6;
  v7 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = v7;
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = v8;
  *(a2 + 80) = v9;
  v10 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = v10;
  v11 = *(a1 + 96);
  v12 = *(a1 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = v11;
  *(a2 + 104) = v12;
  v13 = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = v13;
  v14 = *(a1 + 120);
  v15 = *(a1 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 120) = v14;
  *(a2 + 128) = v15;
  v16 = *(a1 + 136);
  *(a1 + 136) = *(a2 + 136);
  *(a2 + 136) = v16;
  v17 = *(a1 + 144);
  v18 = *(a1 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a2 + 144) = v17;
  *(a2 + 152) = v18;
  v19 = *(a1 + 160);
  *(a1 + 160) = *(a2 + 160);
  *(a2 + 160) = v19;
  v20 = *(a1 + 168);
  v21 = *(a1 + 176);
  *(a1 + 168) = *(a2 + 168);
  *(a2 + 168) = v20;
  *(a2 + 176) = v21;
  v22 = *(a1 + 184);
  *(a1 + 184) = *(a2 + 184);
  *(a2 + 184) = v22;
  v23 = *(a1 + 192);
  v24 = *(a1 + 200);
  *(a1 + 192) = *(a2 + 192);
  *(a2 + 192) = v23;
  *(a2 + 200) = v24;
  v25 = *(a1 + 208);
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 208) = v25;
  v26 = *(a1 + 216);
  v27 = *(a1 + 224);
  *(a1 + 216) = *(a2 + 216);
  *(a2 + 216) = v26;
  *(a2 + 224) = v27;
  v28 = *(a1 + 232);
  *(a1 + 232) = *(a2 + 232);
  *(a2 + 232) = v28;
  v29 = *(a1 + 240);
  v30 = *(a1 + 248);
  *(a1 + 240) = *(a2 + 240);
  *(a2 + 240) = v29;
  *(a2 + 248) = v30;
  v31 = *(a1 + 256);
  *(a1 + 256) = *(a2 + 256);
  *(a2 + 256) = v31;
  v32 = *(a2 + 264);
  *(a2 + 264) = *(a1 + 264);
  *(a1 + 264) = v32;
  v33 = *(a2 + 272);
  *(a2 + 272) = *(a1 + 272);
  *(a1 + 272) = v33;
  v34 = *(a2 + 280);
  *(a2 + 280) = *(a1 + 280);
  *(a1 + 280) = v34;
  v35 = *(a2 + 288);
  *(a2 + 288) = *(a1 + 288);
  *(a1 + 288) = v35;
  v36 = *(a2 + 296);
  *(a2 + 296) = *(a1 + 296);
  *(a1 + 296) = v36;
  v37 = *(a1 + 304);
  v38 = *(a1 + 312);
  *(a1 + 304) = *(a2 + 304);
  *(a2 + 304) = v37;
  *(a2 + 312) = v38;
  v39 = *(a1 + 320);
  v40 = *(a1 + 328);
  *(a1 + 320) = *(a2 + 320);
  *(a2 + 320) = v39;
  *(a2 + 328) = v40;
  sub_1464C30((a1 + 336), a2 + 336);
  v41 = *(a1 + 456);
  *(a1 + 456) = *(a2 + 456);
  *(a2 + 456) = v41;
}

uint64_t sub_14C9FA8(uint64_t a1)
{
  if ((*(a1 + 16) & 3) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
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

uint64_t sub_14C9FCC(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26E8140;
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
  *(a1 + 192) = &qword_278E990;
  *(a1 + 200) = &qword_278E990;
  *(a1 + 208) = &qword_278E990;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0;
  return a1;
}

void sub_14CA078(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_14CA0AC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v42 = a1 + 16;
  *a1 = off_26E8140;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 68) = 0;
  *(a1 + 52) = 0;
  *(a1 + 60) = 0;
  *(a1 + 44) = 0;
  v5 = *(a2 + 56);
  if (v5)
  {
    v6 = *(a2 + 64);
    v7 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_1568258((a1 + 48), v7, (v6 + 8), v5, **(a1 + 64) - *(a1 + 56), v8);
    v9 = *(a1 + 56) + v5;
    *(a1 + 56) = v9;
    v10 = *(a1 + 64);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v11 = *(a2 + 80);
  if (v11)
  {
    v12 = *(a2 + 88);
    v13 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_1566A98((a1 + 72), v13, (v12 + 8), v11, **(a1 + 88) - *(a1 + 80));
    v14 = *(a1 + 80) + v11;
    *(a1 + 80) = v14;
    v15 = *(a1 + 88);
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v16 = *(a2 + 104);
  if (v16)
  {
    v17 = *(a2 + 112);
    v18 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_1566A0C((a1 + 96), v18, (v17 + 8), v16, **(a1 + 112) - *(a1 + 104));
    v19 = *(a1 + 104) + v16;
    *(a1 + 104) = v19;
    v20 = *(a1 + 112);
    if (*v20 < v19)
    {
      *v20 = v19;
    }
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v21 = *(a2 + 128);
  if (v21)
  {
    v22 = *(a2 + 136);
    v23 = sub_19592E8(a1 + 120, *(a2 + 128));
    sub_1566980((a1 + 120), v23, (v22 + 8), v21, **(a1 + 136) - *(a1 + 128));
    v24 = *(a1 + 128) + v21;
    *(a1 + 128) = v24;
    v25 = *(a1 + 136);
    if (*v25 < v24)
    {
      *v25 = v24;
    }
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v26 = *(a2 + 152);
  if (v26)
  {
    v27 = *(a2 + 160);
    v28 = sub_19592E8(a1 + 144, *(a2 + 152));
    sub_1568370((a1 + 144), v28, (v27 + 8), v26, **(a1 + 160) - *(a1 + 152));
    v29 = *(a1 + 152) + v26;
    *(a1 + 152) = v29;
    v30 = *(a1 + 160);
    if (*v30 < v29)
    {
      *v30 = v29;
    }
  }

  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  v31 = *(a2 + 176);
  if (v31)
  {
    v32 = *(a2 + 184);
    v33 = sub_19592E8(a1 + 168, *(a2 + 176));
    sub_1201B48((a1 + 168), v33, (v32 + 8), v31, **(a1 + 184) - *(a1 + 176));
    v34 = *(a1 + 176) + v31;
    *(a1 + 176) = v34;
    v35 = *(a1 + 184);
    if (*v35 < v34)
    {
      *v35 = v34;
    }
  }

  v36 = *(a2 + 8);
  if (v36)
  {
    sub_1957EF4(v4, (v36 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v42, a2 + 16);
  *(a1 + 192) = &qword_278E990;
  v37 = *(a2 + 40);
  if (v37)
  {
    v38 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v38 = *v38;
    }

    sub_194EA1C((a1 + 192), (*(a2 + 192) & 0xFFFFFFFFFFFFFFFELL), v38);
    v37 = *(a2 + 40);
  }

  *(a1 + 200) = &qword_278E990;
  if ((v37 & 2) != 0)
  {
    v39 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v39 = *v39;
    }

    sub_194EA1C((a1 + 200), (*(a2 + 200) & 0xFFFFFFFFFFFFFFFELL), v39);
    v37 = *(a2 + 40);
  }

  *(a1 + 208) = &qword_278E990;
  if ((v37 & 4) != 0)
  {
    v40 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v40 = *v40;
    }

    sub_194EA1C((a1 + 208), (*(a2 + 208) & 0xFFFFFFFFFFFFFFFELL), v40);
    v37 = *(a2 + 40);
  }

  if ((v37 & 8) != 0)
  {
    operator new();
  }

  *(a1 + 216) = 0;
  if ((v37 & 0x10) != 0)
  {
    operator new();
  }

  *(a1 + 224) = 0;
  if ((v37 & 0x20) != 0)
  {
    operator new();
  }

  *(a1 + 232) = 0;
  if ((v37 & 0x40) != 0)
  {
    operator new();
  }

  *(a1 + 240) = 0;
  *(a1 + 248) = *(a2 + 248);
  return a1;
}

void *sub_14CA658(void *a1)
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

  sub_14CA728(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956AFC(a1 + 21);
  sub_1567FBC(a1 + 18);
  sub_1564BCC(a1 + 15);
  sub_1564C50(a1 + 12);
  sub_1564CD4(a1 + 9);
  sub_1567E30(a1 + 6);
  sub_194F914((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_14CA728(uint64_t a1)
{
  v3 = *(a1 + 192);
  v2 = (a1 + 192);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  if (*(a1 + 200) != &qword_278E990)
  {
    sub_194E89C((a1 + 200));
  }

  result = (a1 + 208);
  if (*(a1 + 208) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_27741B0)
  {
    v5 = *(a1 + 216);
    if (v5)
    {
      sub_13F0C4C(v5);
      operator delete();
    }

    v6 = *(a1 + 224);
    if (v6)
    {
      sub_14C42A0(v6);
      operator delete();
    }

    v7 = *(a1 + 232);
    if (v7)
    {
      sub_154C050(v7);
      operator delete();
    }

    result = *(a1 + 240);
    if (result)
    {
      sub_14BA020(result);

      operator delete();
    }
  }

  return result;
}

void sub_14CA82C(void *a1)
{
  sub_14CA658(a1);

  operator delete();
}

uint64_t sub_14CA864(uint64_t a1)
{
  sub_1951124((a1 + 16));
  v2 = *(a1 + 56);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 64) + 8);
    do
    {
      v4 = *v3++;
      sub_14C0B74(v4);
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
      sub_14A05E0(v7);
      --v5;
    }

    while (v5);
    *(a1 + 80) = 0;
  }

  v8 = *(a1 + 104);
  if (v8 >= 1)
  {
    v9 = (*(a1 + 112) + 8);
    do
    {
      v10 = *v9++;
      sub_14A1624(v10);
      --v8;
    }

    while (v8);
    *(a1 + 104) = 0;
  }

  v11 = *(a1 + 128);
  if (v11 >= 1)
  {
    v12 = (*(a1 + 136) + 8);
    do
    {
      v13 = *v12++;
      sub_14A4824(v13);
      --v11;
    }

    while (v11);
    *(a1 + 128) = 0;
  }

  v14 = *(a1 + 152);
  if (v14 >= 1)
  {
    v15 = (*(a1 + 160) + 8);
    do
    {
      v16 = *v15++;
      sub_14A52E8(v16);
      --v14;
    }

    while (v14);
    *(a1 + 152) = 0;
  }

  result = sub_12A41D0(a1 + 168);
  v18 = *(a1 + 40);
  if ((v18 & 0x7F) != 0)
  {
    if ((v18 & 1) == 0)
    {
      if ((v18 & 2) == 0)
      {
        goto LABEL_24;
      }

LABEL_34:
      v20 = *(a1 + 200) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v20 + 23) < 0)
      {
        **v20 = 0;
        *(v20 + 8) = 0;
        if ((v18 & 4) != 0)
        {
          goto LABEL_38;
        }
      }

      else
      {
        *v20 = 0;
        *(v20 + 23) = 0;
        if ((v18 & 4) != 0)
        {
          goto LABEL_38;
        }
      }

LABEL_25:
      if ((v18 & 8) == 0)
      {
        goto LABEL_26;
      }

LABEL_42:
      result = sub_13F0C88(*(a1 + 216));
      if ((v18 & 0x10) == 0)
      {
LABEL_27:
        if ((v18 & 0x20) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_44;
      }

LABEL_43:
      result = sub_14C43E4(*(a1 + 224));
      if ((v18 & 0x20) == 0)
      {
LABEL_28:
        if ((v18 & 0x40) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_45;
      }

LABEL_44:
      result = sub_14C9FA8(*(a1 + 232));
      if ((v18 & 0x40) == 0)
      {
        goto LABEL_47;
      }

LABEL_45:
      v22 = *(a1 + 240);
      v23 = *(v22 + 8);
      result = v22 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v23)
      {
        result = sub_1957EA8(result);
      }

      goto LABEL_47;
    }

    v19 = *(a1 + 192) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v19 + 23) < 0)
    {
      **v19 = 0;
      *(v19 + 8) = 0;
      if ((v18 & 2) != 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      *v19 = 0;
      *(v19 + 23) = 0;
      if ((v18 & 2) != 0)
      {
        goto LABEL_34;
      }
    }

LABEL_24:
    if ((v18 & 4) == 0)
    {
      goto LABEL_25;
    }

LABEL_38:
    v21 = *(a1 + 208) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v21 + 23) < 0)
    {
      **v21 = 0;
      *(v21 + 8) = 0;
      if ((v18 & 8) != 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      *v21 = 0;
      *(v21 + 23) = 0;
      if ((v18 & 8) != 0)
      {
        goto LABEL_42;
      }
    }

LABEL_26:
    if ((v18 & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_43;
  }

LABEL_47:
  v25 = *(a1 + 8);
  v24 = a1 + 8;
  *(v24 + 240) = 0;
  *(v24 + 32) = 0;
  if (v25)
  {

    return sub_1957EA8(v24);
  }

  return result;
}

uint64_t sub_14CAA90(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v85 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v85, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v85 + 1);
    v8 = **v85;
    if (**v85 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v85, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v85 + 2);
      }
    }

    *v85 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 8)
        {
          goto LABEL_122;
        }

        v11 = v7 + 1;
        v12 = *v7;
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }

        v13 = *v11;
        v14 = (v13 << 7) + v12;
        v12 = (v14 - 128);
        if (v13 < 0)
        {
          *v85 = sub_19587DC(v7, (v14 - 128));
          if (!*v85)
          {
            goto LABEL_146;
          }

          v12 = v82;
        }

        else
        {
          v11 = v7 + 2;
LABEL_12:
          *v85 = v11;
        }

        if (v12 > 0x3C || ((1 << v12) & 0x1004010040100027) == 0)
        {
          v83 = *(a1 + 8);
          if (v83)
          {
            v84 = ((v83 & 0xFFFFFFFFFFFFFFFCLL) + 8);
          }

          else
          {
            v84 = sub_11F1920((a1 + 8));
          }

          sub_19586BC(1, v12, v84);
        }

        else
        {
          *(a1 + 40) |= 0x80u;
          *(a1 + 248) = v12;
        }

        goto LABEL_133;
      case 2u:
        if (v8 != 18)
        {
          goto LABEL_122;
        }

        v55 = v7 - 1;
        while (1)
        {
          v56 = v55 + 1;
          *v85 = v55 + 1;
          v57 = *(a1 + 64);
          if (v57 && (v58 = *(a1 + 56), v58 < *v57))
          {
            *(a1 + 56) = v58 + 1;
            v59 = *&v57[2 * v58 + 2];
          }

          else
          {
            v60 = sub_14D59A4(*(a1 + 48));
            v59 = sub_19593CC(a1 + 48, v60);
            v56 = *v85;
          }

          v55 = sub_2212320(a3, v59, v56);
          *v85 = v55;
          if (!v55)
          {
            goto LABEL_146;
          }

          if (*a3 <= v55 || *v55 != 18)
          {
            goto LABEL_133;
          }
        }

      case 3u:
        if (v8 != 26)
        {
          goto LABEL_122;
        }

        *(a1 + 40) |= 1u;
        v43 = *(a1 + 8);
        v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
        if (v43)
        {
          v44 = *v44;
        }

        v45 = (a1 + 192);
        goto LABEL_105;
      case 4u:
        if (v8 != 34)
        {
          goto LABEL_122;
        }

        *(a1 + 40) |= 8u;
        v46 = *(a1 + 216);
        if (!v46)
        {
          v47 = *(a1 + 8);
          v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
          if (v47)
          {
            v48 = *v48;
          }

          v46 = sub_13F1010(v48);
          *(a1 + 216) = v46;
          v7 = *v85;
        }

        v19 = sub_220B538(a3, v46, v7);
        goto LABEL_132;
      case 5u:
        if (v8 != 42)
        {
          goto LABEL_122;
        }

        v23 = v7 - 1;
        while (1)
        {
          v24 = v23 + 1;
          *v85 = v23 + 1;
          v25 = *(a1 + 88);
          if (v25 && (v26 = *(a1 + 80), v26 < *v25))
          {
            *(a1 + 80) = v26 + 1;
            v27 = *&v25[2 * v26 + 2];
          }

          else
          {
            sub_14BE058(*(a1 + 72));
            v27 = sub_19593CC(a1 + 72, v28);
            v24 = *v85;
          }

          v23 = sub_220E988(a3, v27, v24);
          *v85 = v23;
          if (!v23)
          {
            goto LABEL_146;
          }

          if (*a3 <= v23 || *v23 != 42)
          {
            goto LABEL_133;
          }
        }

      case 6u:
        if (v8 != 50)
        {
          goto LABEL_122;
        }

        *(a1 + 40) |= 2u;
        v61 = *(a1 + 8);
        v44 = (v61 & 0xFFFFFFFFFFFFFFFCLL);
        if (v61)
        {
          v44 = *v44;
        }

        v45 = (a1 + 200);
        goto LABEL_105;
      case 7u:
        if (v8 != 58)
        {
          goto LABEL_122;
        }

        *(a1 + 40) |= 4u;
        v65 = *(a1 + 8);
        v44 = (v65 & 0xFFFFFFFFFFFFFFFCLL);
        if (v65)
        {
          v44 = *v44;
        }

        v45 = (a1 + 208);
LABEL_105:
        v66 = sub_194DB04(v45, v44);
        v19 = sub_1958890(v66, *v85, a3);
        goto LABEL_132;
      case 8u:
        if (v8 != 66)
        {
          goto LABEL_122;
        }

        v49 = v7 - 1;
        while (1)
        {
          v50 = v49 + 1;
          *v85 = v49 + 1;
          v51 = *(a1 + 112);
          if (v51 && (v52 = *(a1 + 104), v52 < *v51))
          {
            *(a1 + 104) = v52 + 1;
            v53 = *&v51[2 * v52 + 2];
          }

          else
          {
            v54 = sub_14BE0EC(*(a1 + 96));
            v53 = sub_19593CC(a1 + 96, v54);
            v50 = *v85;
          }

          v49 = sub_220E8F8(a3, v53, v50);
          *v85 = v49;
          if (!v49)
          {
            goto LABEL_146;
          }

          if (*a3 <= v49 || *v49 != 66)
          {
            goto LABEL_133;
          }
        }

      case 9u:
        if (v8 != 74)
        {
          goto LABEL_122;
        }

        v71 = v7 - 1;
        while (1)
        {
          v72 = v71 + 1;
          *v85 = v71 + 1;
          v73 = *(a1 + 136);
          if (v73 && (v74 = *(a1 + 128), v74 < *v73))
          {
            *(a1 + 128) = v74 + 1;
            v75 = *&v73[2 * v74 + 2];
          }

          else
          {
            sub_14BE3A4(*(a1 + 120));
            v75 = sub_19593CC(a1 + 120, v76);
            v72 = *v85;
          }

          v71 = sub_220E868(a3, v75, v72);
          *v85 = v71;
          if (!v71)
          {
            goto LABEL_146;
          }

          if (*a3 <= v71 || *v71 != 74)
          {
            goto LABEL_133;
          }
        }

      case 0xAu:
        if (v8 != 82)
        {
          goto LABEL_122;
        }

        v37 = v7 - 1;
        while (1)
        {
          v38 = v37 + 1;
          *v85 = v37 + 1;
          v39 = *(a1 + 160);
          if (v39 && (v40 = *(a1 + 152), v40 < *v39))
          {
            *(a1 + 152) = v40 + 1;
            v41 = *&v39[2 * v40 + 2];
          }

          else
          {
            sub_14BE448(*(a1 + 144));
            v41 = sub_19593CC(a1 + 144, v42);
            v38 = *v85;
          }

          v37 = sub_2213640(a3, v41, v38);
          *v85 = v37;
          if (!v37)
          {
            goto LABEL_146;
          }

          if (*a3 <= v37 || *v37 != 82)
          {
            goto LABEL_133;
          }
        }

      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_122;
        }

        *(a1 + 40) |= 0x10u;
        v67 = *(a1 + 224);
        if (!v67)
        {
          v68 = *(a1 + 8);
          v69 = (v68 & 0xFFFFFFFFFFFFFFFCLL);
          if (v68)
          {
            v69 = *v69;
          }

          sub_14D5A00(v69);
          v67 = v70;
          *(a1 + 224) = v70;
          v7 = *v85;
        }

        v19 = sub_22132E0(a3, v67, v7);
        goto LABEL_132;
      case 0xCu:
        if (v8 != 96)
        {
          goto LABEL_122;
        }

        v5 |= 0x100u;
        v20 = v7 + 1;
        v21 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_28;
        }

        v22 = *v20;
        v21 = v21 + (v22 << 7) - 128;
        if (v22 < 0)
        {
          v80 = sub_1958770(v7, v21);
          *v85 = v80;
          *(a1 + 252) = v81;
          if (!v80)
          {
            goto LABEL_146;
          }
        }

        else
        {
          v20 = v7 + 2;
LABEL_28:
          *v85 = v20;
          *(a1 + 252) = v21;
        }

        goto LABEL_133;
      case 0xDu:
        if (v8 != 106)
        {
          goto LABEL_122;
        }

        v29 = v7 - 1;
        while (1)
        {
          v30 = (v29 + 1);
          *v85 = v29 + 1;
          v31 = *(a1 + 184);
          if (v31 && (v32 = *(a1 + 176), v32 < *v31))
          {
            *(a1 + 176) = v32 + 1;
            v33 = *&v31[2 * v32 + 2];
          }

          else
          {
            v34 = *(a1 + 168);
            if (!v34)
            {
              operator new();
            }

            *v36 = v35;
            v36[1] = sub_195A650;
            *v35 = 0;
            v35[1] = 0;
            v35[2] = 0;
            v33 = sub_19593CC(a1 + 168, v35);
            v30 = *v85;
          }

          v29 = sub_1958890(v33, v30, a3);
          *v85 = v29;
          if (!v29)
          {
            goto LABEL_146;
          }

          if (*a3 <= v29 || *v29 != 106)
          {
            goto LABEL_133;
          }
        }

      case 0xEu:
        if (v8 != 114)
        {
          goto LABEL_122;
        }

        *(a1 + 40) |= 0x20u;
        v62 = *(a1 + 232);
        if (!v62)
        {
          v63 = *(a1 + 8);
          v64 = (v63 & 0xFFFFFFFFFFFFFFFCLL);
          if (v63)
          {
            v64 = *v64;
          }

          v62 = sub_155248C(v64);
          *(a1 + 232) = v62;
          v7 = *v85;
        }

        v19 = sub_22136D0(a3, v62, v7);
        goto LABEL_132;
      case 0xFu:
        if (v8 != 122)
        {
          goto LABEL_122;
        }

        *(a1 + 40) |= 0x40u;
        v16 = *(a1 + 240);
        if (!v16)
        {
          v17 = *(a1 + 8);
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v18 = *v18;
          }

          v16 = sub_14BF800(v18);
          *(a1 + 240) = v16;
          v7 = *v85;
        }

        v19 = sub_2213760(a3, v16, v7);
        goto LABEL_132;
      default:
LABEL_122:
        if (v8)
        {
          v77 = (v8 & 7) == 4;
        }

        else
        {
          v77 = 1;
        }

        if (!v77)
        {
          if (v8 - 8000 < 0x648 || v8 - 80008 <= 0x31F)
          {
            v19 = sub_19525AC((a1 + 16), v8, v7, &off_27741B0, (a1 + 8), a3);
          }

          else
          {
            v78 = *(a1 + 8);
            if (v78)
            {
              v79 = (v78 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v79 = sub_11F1920((a1 + 8));
              v7 = *v85;
            }

            v19 = sub_1952690(v8, v79, v7, a3);
          }

LABEL_132:
          *v85 = v19;
          if (!v19)
          {
            goto LABEL_146;
          }

LABEL_133:
          if (sub_195ADC0(a3, v85, a3[11].u32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

        if (v7)
        {
          a3[10].i32[0] = v8 - 1;
        }

        else
        {
LABEL_146:
          *v85 = 0;
        }

LABEL_2:
        *(a1 + 40) |= v5;
        return *v85;
    }
  }
}

char *sub_14CB33C(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 248);
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

  v11 = *(a1 + 56);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v13 = *(*(a1 + 64) + 8 * i + 8);
      *v6 = 18;
      v14 = *(v13 + 44);
      v6[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, v6 + 1);
      }

      else
      {
        v15 = v6 + 2;
      }

      v6 = sub_14C1D0C(v13, v15, a3);
    }
  }

  if (v5)
  {
    v6 = sub_128AEEC(a3, 3, (*(a1 + 192) & 0xFFFFFFFFFFFFFFFELL), v6);
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v16 = *(a1 + 216);
    *v6 = 34;
    v17 = *(v16 + 20);
    v6[1] = v17;
    if (v17 > 0x7F)
    {
      v18 = sub_19575D0(v17, v6 + 1);
    }

    else
    {
      v18 = v6 + 2;
    }

    v6 = sub_13F0E14(v16, v18, a3);
  }

  v19 = *(a1 + 80);
  if (v19)
  {
    for (j = 0; j != v19; ++j)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v21 = *(*(a1 + 88) + 8 * j + 8);
      *v6 = 42;
      v22 = *(v21 + 20);
      v6[1] = v22;
      if (v22 > 0x7F)
      {
        v23 = sub_19575D0(v22, v6 + 1);
      }

      else
      {
        v23 = v6 + 2;
      }

      v6 = sub_14A0B70(v21, v23, a3);
    }
  }

  if ((v5 & 2) != 0)
  {
    v6 = sub_128AEEC(a3, 6, (*(a1 + 200) & 0xFFFFFFFFFFFFFFFELL), v6);
  }

  if ((v5 & 4) != 0)
  {
    v6 = sub_128AEEC(a3, 7, (*(a1 + 208) & 0xFFFFFFFFFFFFFFFELL), v6);
  }

  v24 = *(a1 + 104);
  if (v24)
  {
    for (k = 0; k != v24; ++k)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v26 = *(*(a1 + 112) + 8 * k + 8);
      *v6 = 66;
      v27 = *(v26 + 20);
      v6[1] = v27;
      if (v27 > 0x7F)
      {
        v28 = sub_19575D0(v27, v6 + 1);
      }

      else
      {
        v28 = v6 + 2;
      }

      v6 = sub_14A196C(v26, v28, a3);
    }
  }

  v29 = *(a1 + 128);
  if (v29)
  {
    for (m = 0; m != v29; ++m)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v31 = *(*(a1 + 136) + 8 * m + 8);
      *v6 = 74;
      v32 = *(v31 + 20);
      v6[1] = v32;
      if (v32 > 0x7F)
      {
        v33 = sub_19575D0(v32, v6 + 1);
      }

      else
      {
        v33 = v6 + 2;
      }

      v6 = sub_14A4BF0(v31, v33, a3);
    }
  }

  v34 = *(a1 + 152);
  if (v34)
  {
    for (n = 0; n != v34; ++n)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v36 = *(*(a1 + 160) + 8 * n + 8);
      *v6 = 82;
      v37 = *(v36 + 20);
      v6[1] = v37;
      if (v37 > 0x7F)
      {
        v38 = sub_19575D0(v37, v6 + 1);
      }

      else
      {
        v38 = v6 + 2;
      }

      v6 = sub_14A5550(v36, v38, a3);
    }
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v39 = *(a1 + 224);
    *v6 = 90;
    v40 = *(v39 + 20);
    v6[1] = v40;
    if (v40 > 0x7F)
    {
      v41 = sub_19575D0(v40, v6 + 1);
    }

    else
    {
      v41 = v6 + 2;
    }

    v6 = sub_14C4AD4(v39, v41, a3);
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v43 = *(a1 + 252);
    *v6 = 96;
    v6[1] = v43;
    if (v43 > 0x7F)
    {
      v6[1] = v43 | 0x80;
      v44 = v43 >> 7;
      v6[2] = v43 >> 7;
      v42 = v6 + 3;
      if (v43 >= 0x4000)
      {
        LOBYTE(v45) = v6[2];
        do
        {
          *(v42 - 1) = v45 | 0x80;
          v45 = v44 >> 7;
          *v42++ = v44 >> 7;
          v46 = v44 >> 14;
          v44 >>= 7;
        }

        while (v46);
      }
    }

    else
    {
      v42 = v6 + 2;
    }
  }

  else
  {
    v42 = v6;
  }

  v47 = *(a1 + 176);
  if (v47 >= 1)
  {
    v48 = 8;
    do
    {
      v49 = *(*(a1 + 184) + v48);
      v50 = *(v49 + 23);
      if (v50 < 0 && (v50 = v49[1], v50 > 127) || (*a3 - v42 + 14) < v50)
      {
        v42 = sub_1957480(a3, 13, v49, v42);
      }

      else
      {
        *v42 = 106;
        v42[1] = v50;
        if (*(v49 + 23) < 0)
        {
          v49 = *v49;
        }

        v51 = v42 + 2;
        memcpy(v51, v49, v50);
        v42 = &v51[v50];
      }

      v48 += 8;
      --v47;
    }

    while (v47);
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v42)
    {
      v42 = sub_225EB68(a3, v42);
    }

    v52 = *(a1 + 232);
    *v42 = 114;
    v53 = *(v52 + 20);
    v42[1] = v53;
    if (v53 > 0x7F)
    {
      v54 = sub_19575D0(v53, v42 + 1);
    }

    else
    {
      v54 = v42 + 2;
    }

    v42 = sub_154C2E0(v52, v54, a3);
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v42)
    {
      v42 = sub_225EB68(a3, v42);
    }

    v55 = *(a1 + 240);
    *v42 = 122;
    v56 = *(v55 + 20);
    v42[1] = v56;
    if (v56 > 0x7F)
    {
      v57 = sub_19575D0(v56, v42 + 1);
    }

    else
    {
      v57 = v42 + 2;
    }

    v42 = sub_14BA25C(v55, v57, a3);
  }

  if (*(a1 + 26))
  {
    v42 = sub_1953428(a1 + 16, 1000, 10101, v42, a3);
  }

  v58 = *(a1 + 8);
  if ((v58 & 1) == 0)
  {
    return v42;
  }

  v60 = v58 & 0xFFFFFFFFFFFFFFFCLL;
  v61 = *(v60 + 31);
  if (v61 < 0)
  {
    v62 = *(v60 + 8);
    v61 = *(v60 + 16);
  }

  else
  {
    v62 = (v60 + 8);
  }

  if ((*a3 - v42) >= v61)
  {
    v63 = v61;
    memcpy(v42, v62, v61);
    v42 += v63;
    return v42;
  }

  return sub_1957130(a3, v62, v61, v42);
}

uint64_t sub_14CBA38(uint64_t a1)
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
      v9 = sub_14C2C70(v8);
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
      v16 = sub_14A0FE0(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(a1 + 104);
  v18 = v11 + v17;
  v19 = *(a1 + 112);
  if (v19)
  {
    v20 = (v19 + 8);
  }

  else
  {
    v20 = 0;
  }

  if (v17)
  {
    v21 = 8 * v17;
    do
    {
      v22 = *v20++;
      v23 = sub_14A1BA4(v22);
      v18 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6);
      v21 -= 8;
    }

    while (v21);
  }

  v24 = *(a1 + 128);
  v25 = v18 + v24;
  v26 = *(a1 + 136);
  if (v26)
  {
    v27 = (v26 + 8);
  }

  else
  {
    v27 = 0;
  }

  if (v24)
  {
    v28 = 8 * v24;
    do
    {
      v29 = *v27++;
      v30 = sub_14A4EC0(v29);
      v25 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6);
      v28 -= 8;
    }

    while (v28);
  }

  v31 = *(a1 + 152);
  v32 = v25 + v31;
  v33 = *(a1 + 160);
  if (v33)
  {
    v34 = (v33 + 8);
  }

  else
  {
    v34 = 0;
  }

  if (v31)
  {
    v35 = 8 * v31;
    do
    {
      v36 = *v34++;
      v37 = sub_14A5700(v36);
      v32 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6);
      v35 -= 8;
    }

    while (v35);
  }

  v38 = *(a1 + 176);
  v39 = v32 + v38;
  if (v38 >= 1)
  {
    v40 = (*(a1 + 184) + 8);
    do
    {
      v41 = *v40++;
      v42 = *(v41 + 23);
      v43 = *(v41 + 8);
      if ((v42 & 0x80u) == 0)
      {
        v43 = v42;
      }

      v39 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6);
      --v38;
    }

    while (v38);
  }

  v44 = *(a1 + 40);
  if (v44)
  {
    if (v44)
    {
      v50 = *(a1 + 192) & 0xFFFFFFFFFFFFFFFELL;
      v51 = *(v50 + 23);
      v52 = *(v50 + 8);
      if ((v51 & 0x80u) == 0)
      {
        v52 = v51;
      }

      v39 += v52 + ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v44 & 2) == 0)
      {
LABEL_39:
        if ((v44 & 4) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_59;
      }
    }

    else if ((v44 & 2) == 0)
    {
      goto LABEL_39;
    }

    v53 = *(a1 + 200) & 0xFFFFFFFFFFFFFFFELL;
    v54 = *(v53 + 23);
    v55 = *(v53 + 8);
    if ((v54 & 0x80u) == 0)
    {
      v55 = v54;
    }

    v39 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v44 & 4) == 0)
    {
LABEL_40:
      if ((v44 & 8) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_62;
    }

LABEL_59:
    v56 = *(a1 + 208) & 0xFFFFFFFFFFFFFFFELL;
    v57 = *(v56 + 23);
    v58 = *(v56 + 8);
    if ((v57 & 0x80u) == 0)
    {
      v58 = v57;
    }

    v39 += v58 + ((9 * (__clz(v58 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v44 & 8) == 0)
    {
LABEL_41:
      if ((v44 & 0x10) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_63;
    }

LABEL_62:
    v59 = sub_13F0F3C(*(a1 + 216));
    v39 += v59 + ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v44 & 0x10) == 0)
    {
LABEL_42:
      if ((v44 & 0x20) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_64;
    }

LABEL_63:
    v60 = sub_14C4FF8(*(a1 + 224));
    v39 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v44 & 0x20) == 0)
    {
LABEL_43:
      if ((v44 & 0x40) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_65;
    }

LABEL_64:
    v61 = sub_154C490(*(a1 + 232));
    v39 += v61 + ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v44 & 0x40) == 0)
    {
LABEL_44:
      if ((v44 & 0x80) == 0)
      {
        goto LABEL_49;
      }

LABEL_45:
      v45 = *(a1 + 248);
      v46 = ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v45 >= 0)
      {
        v47 = v46;
      }

      else
      {
        v47 = 11;
      }

      v39 += v47;
      goto LABEL_49;
    }

LABEL_65:
    v62 = sub_14BA384(*(a1 + 240));
    v39 += v62 + ((9 * (__clz(v62 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v44 & 0x80) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_45;
  }

LABEL_49:
  if ((v44 & 0x100) != 0)
  {
    v39 += ((9 * (__clz(*(a1 + 252) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v48 = *(a1 + 8);
  if (v48)
  {
    v63 = v48 & 0xFFFFFFFFFFFFFFFCLL;
    v64 = *((v48 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v64 < 0)
    {
      v64 = *(v63 + 16);
    }

    v39 += v64;
  }

  *(a1 + 44) = v39;
  return v39;
}

void sub_14CBE90(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_1568258((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56), v7);
    v8 = *(a1 + 56) + v4;
    *(a1 + 56) = v8;
    v9 = *(a1 + 64);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 80);
  if (v10)
  {
    v11 = *(a2 + 88);
    v12 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_1566A98((a1 + 72), v12, (v11 + 8), v10, **(a1 + 88) - *(a1 + 80));
    v13 = *(a1 + 80) + v10;
    *(a1 + 80) = v13;
    v14 = *(a1 + 88);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 104);
  if (v15)
  {
    v16 = *(a2 + 112);
    v17 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_1566A0C((a1 + 96), v17, (v16 + 8), v15, **(a1 + 112) - *(a1 + 104));
    v18 = *(a1 + 104) + v15;
    *(a1 + 104) = v18;
    v19 = *(a1 + 112);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 128);
  if (v20)
  {
    v21 = *(a2 + 136);
    v22 = sub_19592E8(a1 + 120, *(a2 + 128));
    sub_1566980((a1 + 120), v22, (v21 + 8), v20, **(a1 + 136) - *(a1 + 128));
    v23 = *(a1 + 128) + v20;
    *(a1 + 128) = v23;
    v24 = *(a1 + 136);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  v25 = *(a2 + 152);
  if (v25)
  {
    v26 = *(a2 + 160);
    v27 = sub_19592E8(a1 + 144, *(a2 + 152));
    sub_1568370((a1 + 144), v27, (v26 + 8), v25, **(a1 + 160) - *(a1 + 152));
    v28 = *(a1 + 152) + v25;
    *(a1 + 152) = v28;
    v29 = *(a1 + 160);
    if (*v29 < v28)
    {
      *v29 = v28;
    }
  }

  v30 = *(a2 + 176);
  if (v30)
  {
    v31 = *(a2 + 184);
    v32 = sub_19592E8(a1 + 168, *(a2 + 176));
    sub_1201B48((a1 + 168), v32, (v31 + 8), v30, **(a1 + 184) - *(a1 + 176));
    v33 = *(a1 + 176) + v30;
    *(a1 + 176) = v33;
    v34 = *(a1 + 184);
    if (*v34 < v33)
    {
      *v34 = v33;
    }
  }

  v35 = *(a2 + 40);
  if (v35)
  {
    if (v35)
    {
      v38 = *(a2 + 192);
      *(a1 + 40) |= 1u;
      v39 = *(a1 + 8);
      v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
      if (v39)
      {
        v40 = *v40;
      }

      sub_194EA1C((a1 + 192), (v38 & 0xFFFFFFFFFFFFFFFELL), v40);
      if ((v35 & 2) == 0)
      {
LABEL_22:
        if ((v35 & 4) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_42;
      }
    }

    else if ((v35 & 2) == 0)
    {
      goto LABEL_22;
    }

    v41 = *(a2 + 200);
    *(a1 + 40) |= 2u;
    v42 = *(a1 + 8);
    v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
    if (v42)
    {
      v43 = *v43;
    }

    sub_194EA1C((a1 + 200), (v41 & 0xFFFFFFFFFFFFFFFELL), v43);
    if ((v35 & 4) == 0)
    {
LABEL_23:
      if ((v35 & 8) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_45;
    }

LABEL_42:
    v44 = *(a2 + 208);
    *(a1 + 40) |= 4u;
    v45 = *(a1 + 8);
    v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
    if (v45)
    {
      v46 = *v46;
    }

    sub_194EA1C((a1 + 208), (v44 & 0xFFFFFFFFFFFFFFFELL), v46);
    if ((v35 & 8) == 0)
    {
LABEL_24:
      if ((v35 & 0x10) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_53;
    }

LABEL_45:
    *(a1 + 40) |= 8u;
    v47 = *(a1 + 216);
    if (!v47)
    {
      v48 = *(a1 + 8);
      v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
      if (v48)
      {
        v49 = *v49;
      }

      v47 = sub_13F1010(v49);
      *(a1 + 216) = v47;
    }

    if (*(a2 + 216))
    {
      v50 = *(a2 + 216);
    }

    else
    {
      v50 = &off_276F3A8;
    }

    sub_12B9D50(v47, v50);
    if ((v35 & 0x10) == 0)
    {
LABEL_25:
      if ((v35 & 0x20) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_61;
    }

LABEL_53:
    *(a1 + 40) |= 0x10u;
    v51 = *(a1 + 224);
    if (!v51)
    {
      v52 = *(a1 + 8);
      v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
      if (v52)
      {
        v53 = *v53;
      }

      sub_14D5A00(v53);
      *(a1 + 224) = v51;
    }

    if (*(a2 + 224))
    {
      v54 = *(a2 + 224);
    }

    else
    {
      v54 = &off_2773F38;
    }

    sub_14C52AC(v51, v54);
    if ((v35 & 0x20) == 0)
    {
LABEL_26:
      if ((v35 & 0x40) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_69;
    }

LABEL_61:
    *(a1 + 40) |= 0x20u;
    v55 = *(a1 + 232);
    if (!v55)
    {
      v56 = *(a1 + 8);
      v57 = (v56 & 0xFFFFFFFFFFFFFFFCLL);
      if (v56)
      {
        v57 = *v57;
      }

      v55 = sub_155248C(v57);
      *(a1 + 232) = v55;
    }

    if (*(a2 + 232))
    {
      v58 = *(a2 + 232);
    }

    else
    {
      v58 = &off_2776F70;
    }

    sub_121721C(v55, v58);
    if ((v35 & 0x40) == 0)
    {
LABEL_27:
      if ((v35 & 0x80) == 0)
      {
LABEL_29:
        *(a1 + 40) |= v35;
        goto LABEL_30;
      }

LABEL_28:
      *(a1 + 248) = *(a2 + 248);
      goto LABEL_29;
    }

LABEL_69:
    *(a1 + 40) |= 0x40u;
    v59 = *(a1 + 240);
    if (!v59)
    {
      v60 = *(a1 + 8);
      v61 = (v60 & 0xFFFFFFFFFFFFFFFCLL);
      if (v60)
      {
        v61 = *v61;
      }

      v59 = sub_14BF800(v61);
      *(a1 + 240) = v59;
    }

    if (*(a2 + 240))
    {
      v62 = *(a2 + 240);
    }

    else
    {
      v62 = &off_2773C88;
    }

    sub_12B9D50(v59, v62);
    if ((v35 & 0x80) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_30:
  if ((v35 & 0x100) != 0)
  {
    v36 = *(a2 + 252);
    *(a1 + 40) |= 0x100u;
    *(a1 + 252) = v36;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v37 = *(a2 + 8);
  if (v37)
  {

    sub_1957EF4((a1 + 8), (v37 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_14CC34C(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    sub_14CA864(result);

    sub_14CBE90(result, a2);
  }
}

uint64_t sub_14CC398(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 56);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_14C3CB8(*(*(a1 + 64) + 8 * v3));
      v3 = v4;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    v6 = *(a1 + 80);
    while (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = sub_14A14B0(*(*(a1 + 88) + 8 * v6));
      v6 = v7;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    result = sub_12D45E0(a1 + 96);
    if (result)
    {
      result = sub_148A2D8(a1 + 120);
      if (result)
      {
        if ((*(a1 + 40) & 0x10) == 0)
        {
          return 1;
        }

        result = sub_14C55B0(*(a1 + 224));
        if (result)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

__n128 sub_14CC448(uint64_t a1, uint64_t a2)
{
  sub_1951F08((a1 + 16), (a2 + 16));
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  LODWORD(v4) = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v5;
  *(a2 + 56) = v6;
  v7 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = v7;
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = v8;
  *(a2 + 80) = v9;
  v10 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = v10;
  v11 = *(a1 + 96);
  v12 = *(a1 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = v11;
  *(a2 + 104) = v12;
  v13 = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = v13;
  v14 = *(a1 + 120);
  v15 = *(a1 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 120) = v14;
  *(a2 + 128) = v15;
  v16 = *(a1 + 136);
  *(a1 + 136) = *(a2 + 136);
  *(a2 + 136) = v16;
  v17 = *(a1 + 144);
  v18 = *(a1 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a2 + 144) = v17;
  *(a2 + 152) = v18;
  v19 = *(a1 + 160);
  *(a1 + 160) = *(a2 + 160);
  *(a2 + 160) = v19;
  v20 = *(a1 + 168);
  v21 = *(a1 + 176);
  *(a1 + 168) = *(a2 + 168);
  *(a2 + 168) = v20;
  *(a2 + 176) = v21;
  v22 = *(a1 + 184);
  *(a1 + 184) = *(a2 + 184);
  *(a2 + 184) = v22;
  v23 = *(a2 + 192);
  *(a2 + 192) = *(a1 + 192);
  *(a1 + 192) = v23;
  v24 = *(a2 + 200);
  *(a2 + 200) = *(a1 + 200);
  *(a1 + 200) = v24;
  v25 = *(a2 + 208);
  *(a2 + 208) = *(a1 + 208);
  *(a1 + 208) = v25;
  v26 = *(a1 + 216);
  v27 = *(a1 + 224);
  *(a1 + 216) = *(a2 + 216);
  *(a2 + 216) = v26;
  *(a2 + 224) = v27;
  v28 = *(a1 + 232);
  v29 = *(a1 + 240);
  result = *(a2 + 232);
  *(a1 + 232) = result;
  *(a2 + 232) = v28;
  *(a2 + 240) = v29;
  v31 = *(a1 + 248);
  *(a1 + 248) = *(a2 + 248);
  *(a2 + 248) = v31;
  return result;
}

uint64_t sub_14CC5C8(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_16E4E44(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 40);
  if ((v6 & 3) != 0)
  {
    if (v6)
    {
      result = sub_153FDC8(*(a1 + 72));
    }

    if ((v6 & 2) != 0)
    {
      result = sub_16E48B0(*(a1 + 80));
    }
  }

  v8 = *(a1 + 8);
  v7 = a1 + 8;
  *(v7 + 32) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_14CC674(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_14;
  }

  if (v2)
  {
    result = sub_15498D0(*(result + 24));
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      result = sub_154B55C(*(v1 + 40));
      if ((v2 & 8) == 0)
      {
        goto LABEL_12;
      }

LABEL_10:
      v3 = *(v1 + 48);
      v4 = *(v3 + 8);
      result = v3 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v4)
      {
        result = sub_1957EA8(result);
      }

      goto LABEL_12;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = sub_154AABC(*(v1 + 32));
  if ((v2 & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((v2 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_12:
  if ((v2 & 0x10) != 0)
  {
    result = sub_1479D14(*(v1 + 56));
  }

LABEL_14:
  if ((v2 & 0xE0) != 0)
  {
    *(v1 + 64) = 0;
  }

  if ((v2 & 0x700) != 0)
  {
    *(v1 + 72) = 0;
    *(v1 + 80) = 2;
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

uint64_t sub_14CC748(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26E81C0;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a2;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = a2;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = a2;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = a2;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = a2;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = a2;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = a2;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = &qword_278E990;
  *(a1 + 256) = &qword_278E990;
  *(a1 + 264) = &qword_278E990;
  *(a1 + 272) = &qword_278E990;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0;
  *(a1 + 448) = 800000;
  return a1;
}

void sub_14CC820(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_14CC854(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v54 = (a1 + 8);
  *(a1 + 16) = 0;
  v53 = a1 + 16;
  *a1 = off_26E81C0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v4 = (a1 + 56);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v5 = *(a2 + 64);
  if (v5)
  {
    v6 = *(a2 + 72);
    v7 = sub_19592E8(a1 + 56, *(a2 + 64));
    sub_1449ED8(v4, v7, (v6 + 8), v5, **(a1 + 72) - *(a1 + 64));
    v8 = *(a1 + 64) + v5;
    *(a1 + 64) = v8;
    v9 = *(a1 + 72);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v10 = *(a2 + 88);
  if (v10)
  {
    v11 = *(a2 + 96);
    v12 = sub_19592E8(a1 + 80, v10);
    sub_144D55C((a1 + 80), v12, (v11 + 8), v10, **(a1 + 96) - *(a1 + 88));
    v13 = *(a1 + 88) + v10;
    *(a1 + 88) = v13;
    v14 = *(a1 + 96);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v15 = *(a2 + 112);
  if (v15)
  {
    v16 = *(a2 + 120);
    v17 = sub_19592E8(a1 + 104, v15);
    sub_1201B48((a1 + 104), v17, (v16 + 8), v15, **(a1 + 120) - *(a1 + 112));
    v18 = *(a1 + 112) + v15;
    *(a1 + 112) = v18;
    v19 = *(a1 + 120);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v20 = *(a2 + 136);
  if (v20)
  {
    v21 = *(a2 + 144);
    v22 = sub_19592E8(a1 + 128, *(a2 + 136));
    sub_1409AF8((a1 + 128), v22, (v21 + 8), v20, **(a1 + 144) - *(a1 + 136));
    v23 = *(a1 + 136) + v20;
    *(a1 + 136) = v23;
    v24 = *(a1 + 144);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v25 = *(a2 + 160);
  if (v25)
  {
    v26 = *(a2 + 168);
    v27 = sub_19592E8(a1 + 152, *(a2 + 160));
    sub_144D55C((a1 + 152), v27, (v26 + 8), v25, **(a1 + 168) - *(a1 + 160));
    v28 = *(a1 + 160) + v25;
    *(a1 + 160) = v28;
    v29 = *(a1 + 168);
    if (*v29 < v28)
    {
      *v29 = v28;
    }
  }

  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  v30 = *(a2 + 184);
  if (v30)
  {
    v31 = *(a2 + 192);
    v32 = sub_19592E8(a1 + 176, *(a2 + 184));
    sub_12E5E34((a1 + 176), v32, (v31 + 8), v30, **(a1 + 192) - *(a1 + 184));
    v33 = *(a1 + 184) + v30;
    *(a1 + 184) = v33;
    v34 = *(a1 + 192);
    if (*v34 < v33)
    {
      *v34 = v33;
    }
  }

  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  v35 = *(a2 + 208);
  if (v35)
  {
    v36 = *(a2 + 216);
    v37 = sub_19592E8(a1 + 200, *(a2 + 208));
    sub_1201B48((a1 + 200), v37, (v36 + 8), v35, **(a1 + 216) - *(a1 + 208));
    v38 = *(a1 + 208) + v35;
    *(a1 + 208) = v38;
    v39 = *(a1 + 216);
    if (*v39 < v38)
    {
      *v39 = v38;
    }
  }

  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  v40 = *(a2 + 232);
  if (v40)
  {
    v41 = *(a2 + 240);
    v42 = sub_19592E8(a1 + 224, *(a2 + 232));
    sub_1201B48((a1 + 224), v42, (v41 + 8), v40, **(a1 + 240) - *(a1 + 232));
    v43 = *(a1 + 232) + v40;
    *(a1 + 232) = v43;
    v44 = *(a1 + 240);
    if (*v44 < v43)
    {
      *v44 = v43;
    }
  }

  v45 = *(a2 + 8);
  if (v45)
  {
    sub_1957EF4(v54, (v45 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v53, a2 + 16);
  *(a1 + 248) = &qword_278E990;
  v46 = *(a2 + 40);
  if (v46)
  {
    v47 = (*v54 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v54)
    {
      v47 = *v47;
    }

    sub_194EA1C((a1 + 248), (*(a2 + 248) & 0xFFFFFFFFFFFFFFFELL), v47);
    v46 = *(a2 + 40);
  }

  *(a1 + 256) = &qword_278E990;
  if ((v46 & 2) != 0)
  {
    v48 = (*v54 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v54)
    {
      v48 = *v48;
    }

    sub_194EA1C((a1 + 256), (*(a2 + 256) & 0xFFFFFFFFFFFFFFFELL), v48);
    v46 = *(a2 + 40);
  }

  *(a1 + 264) = &qword_278E990;
  if ((v46 & 4) != 0)
  {
    v49 = (*v54 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v54)
    {
      v49 = *v49;
    }

    sub_194EA1C((a1 + 264), (*(a2 + 264) & 0xFFFFFFFFFFFFFFFELL), v49);
    v46 = *(a2 + 40);
  }

  *(a1 + 272) = &qword_278E990;
  if ((v46 & 8) != 0)
  {
    v50 = (*v54 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v54)
    {
      v50 = *v50;
    }

    sub_194EA1C((a1 + 272), (*(a2 + 272) & 0xFFFFFFFFFFFFFFFELL), v50);
    v46 = *(a2 + 40);
  }

  if ((v46 & 0x10) != 0)
  {
    operator new();
  }

  *(a1 + 280) = 0;
  if ((v46 & 0x20) != 0)
  {
    operator new();
  }

  *(a1 + 288) = 0;
  if ((v46 & 0x40) != 0)
  {
    operator new();
  }

  *(a1 + 296) = 0;
  if ((v46 & 0x80) != 0)
  {
    operator new();
  }

  *(a1 + 304) = 0;
  if ((v46 & 0x100) != 0)
  {
    operator new();
  }

  *(a1 + 312) = 0;
  if ((v46 & 0x200) != 0)
  {
    operator new();
  }

  *(a1 + 320) = 0;
  if ((v46 & 0x400) != 0)
  {
    operator new();
  }

  *(a1 + 328) = 0;
  if ((v46 & 0x800) != 0)
  {
    operator new();
  }

  *(a1 + 336) = 0;
  if ((v46 & 0x1000) != 0)
  {
    operator new();
  }

  *(a1 + 344) = 0;
  if ((v46 & 0x2000) != 0)
  {
    operator new();
  }

  *(a1 + 352) = 0;
  if ((v46 & 0x4000) != 0)
  {
    operator new();
  }

  *(a1 + 360) = 0;
  if ((v46 & 0x8000) != 0)
  {
    operator new();
  }

  *(a1 + 368) = 0;
  if ((v46 & 0x10000) != 0)
  {
    operator new();
  }

  *(a1 + 376) = 0;
  if ((v46 & 0x20000) != 0)
  {
    operator new();
  }

  *(a1 + 384) = 0;
  if ((v46 & 0x40000) != 0)
  {
    operator new();
  }

  *(a1 + 392) = 0;
  if ((v46 & 0x80000) != 0)
  {
    operator new();
  }

  *(a1 + 400) = 0;
  if ((v46 & 0x100000) != 0)
  {
    operator new();
  }

  *(a1 + 408) = 0;
  if ((v46 & 0x200000) != 0)
  {
    operator new();
  }

  *(a1 + 416) = 0;
  v51 = *(a2 + 424);
  *(a1 + 436) = *(a2 + 436);
  *(a1 + 424) = v51;
  return a1;
}