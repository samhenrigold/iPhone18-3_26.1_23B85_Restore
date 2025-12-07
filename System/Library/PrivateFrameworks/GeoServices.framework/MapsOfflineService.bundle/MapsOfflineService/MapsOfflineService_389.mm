char *sub_15B9D64(uint64_t a1, char *a2, int32x2_t *a3)
{
  v31 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v31, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = v31 + 1;
    v7 = *v31;
    if (*v31 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v31, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v31 + 2;
      }
    }

    v31 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v10 == 3)
      {
        if (v7 == 26)
        {
          *(a1 + 16) |= 4u;
          v23 = *(a1 + 40);
          if (!v23)
          {
            v24 = *(a1 + 8);
            v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
            if (v24)
            {
              v25 = *v25;
            }

            sub_15BA6F0(v25);
            v23 = v26;
            *(a1 + 40) = v26;
            v6 = v31;
          }

          v15 = sub_21FC460(a3, v23, v6);
          goto LABEL_46;
        }
      }

      else if (v10 == 4 && v7 == 34)
      {
        *(a1 + 16) |= 8u;
        v16 = *(a1 + 48);
        if (!v16)
        {
          v17 = *(a1 + 8);
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v18 = *v18;
          }

          sub_15520A4(v18);
          v16 = v19;
          *(a1 + 48) = v19;
          v6 = v31;
        }

        v15 = sub_2204D90(a3, v16, v6);
        goto LABEL_46;
      }
    }

    else if (v10 == 1)
    {
      if (v7 == 10)
      {
        *(a1 + 16) |= 1u;
        v20 = *(a1 + 24);
        if (!v20)
        {
          v21 = *(a1 + 8);
          v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
          if (v21)
          {
            v22 = *v22;
          }

          v20 = sub_15BA55C(v22);
          *(a1 + 24) = v20;
          v6 = v31;
        }

        v15 = sub_22214EC(a3, v20, v6);
        goto LABEL_46;
      }
    }

    else if (v10 == 2 && v7 == 18)
    {
      *(a1 + 16) |= 2u;
      v12 = *(a1 + 32);
      if (!v12)
      {
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v12 = sub_15BA778(v14);
        *(a1 + 32) = v12;
        v6 = v31;
      }

      v15 = sub_222160C(a3, v12, v6);
      goto LABEL_46;
    }

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
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v31;
      }

      return 0;
    }

    v28 = *(a1 + 8);
    if (v28)
    {
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v29 = sub_11F1920((a1 + 8));
      v6 = v31;
    }

    v15 = sub_1952690(v7, v29, v6, a3);
LABEL_46:
    v31 = v15;
    if (!v15)
    {
      return 0;
    }
  }

  return v31;
}

char *sub_15B9FC4(uint64_t a1, char *__dst, unint64_t *a3)
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

    v4 = sub_15B6D94(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

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

  v4 = sub_15B94C8(v10, v12, a3);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_24;
  }

LABEL_18:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v13 = *(a1 + 40);
  *v4 = 26;
  v14 = *(v13 + 20);
  v4[1] = v14;
  if (v14 > 0x7F)
  {
    v15 = sub_19575D0(v14, v4 + 1);
  }

  else
  {
    v15 = v4 + 2;
  }

  v4 = sub_15B8488(v13, v15, a3);
  if ((v6 & 8) != 0)
  {
LABEL_24:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v16 = *(a1 + 48);
    *v4 = 34;
    v17 = *(v16 + 20);
    v4[1] = v17;
    if (v17 > 0x7F)
    {
      v18 = sub_19575D0(v17, v4 + 1);
    }

    else
    {
      v18 = v4 + 2;
    }

    v4 = sub_1546828(v16, v18, a3);
  }

LABEL_30:
  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v22)
  {
    v24 = v22;
    memcpy(v4, v23, v22);
    v4 += v24;
    return v4;
  }

  return sub_1957130(a3, v23, v22, v4);
}

uint64_t sub_15BA218(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_11;
  }

  if (v2)
  {
    v4 = sub_15B6F44(*(a1 + 24));
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
    v5 = sub_15B97F0(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = sub_15B8BFC(*(a1 + 40));
  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
LABEL_10:
    v6 = sub_1546FC4(*(a1 + 48));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_11:
  v7 = *(a1 + 8);
  if (v7)
  {
    v10 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    v3 += v11;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_15BA350(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0xF) == 0)
  {
    goto LABEL_39;
  }

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

      v5 = sub_15BA55C(v7);
      *(a1 + 24) = v5;
    }

    if (*(a2 + 24))
    {
      v8 = *(a2 + 24);
    }

    else
    {
      v8 = &off_27789D8;
    }

    sub_128F8FC(v5, v8);
    if ((v4 & 2) == 0)
    {
LABEL_4:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_23;
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

    v9 = sub_15BA778(v11);
    *(a1 + 32) = v9;
  }

  if (*(a2 + 32))
  {
    v12 = *(a2 + 32);
  }

  else
  {
    v12 = &off_2778AD0;
  }

  sub_15B99CC(v9, v12);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_31;
  }

LABEL_23:
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

    sub_15BA6F0(v15);
    *(a1 + 40) = v13;
  }

  if (*(a2 + 40))
  {
    v16 = *(a2 + 40);
  }

  else
  {
    v16 = &off_2778A50;
  }

  sub_15B8E54(v13, v16);
  if ((v4 & 8) != 0)
  {
LABEL_31:
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

      sub_15520A4(v19);
      *(a1 + 48) = v17;
    }

    if (*(a2 + 48))
    {
      v20 = *(a2 + 48);
    }

    else
    {
      v20 = &off_2776C60;
    }

    sub_14EC04C(v17, v20);
  }

LABEL_39:
  v21 = *(a2 + 8);
  if (v21)
  {

    sub_1957EF4((a1 + 8), (v21 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_15BA4FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 1) != 0 && (~*(*(a1 + 24) + 16) & 3) != 0)
  {
    return 0;
  }

  if ((v1 & 8) == 0)
  {
    return 1;
  }

  result = sub_14EC4F4(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_15BA55C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F3DF8;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_15BA5D4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F3E78;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_15BA650(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F3EF8;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

double sub_15BA6F0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26F3F78;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  return result;
}

void *sub_15BA778(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F3FF8;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  result[6] = 0;
  result[7] = 0;
  result[8] = 0;
  return result;
}

double sub_15BA804(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26F4078;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

uint64_t sub_15BA884(uint64_t a1)
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

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_11:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15BA950(uint64_t a1)
{
  sub_15BA884(a1);

  operator delete();
}

uint64_t sub_15BA988(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    goto LABEL_17;
  }

  if (v1)
  {
    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

LABEL_4:
    if ((v1 & 4) == 0)
    {
      goto LABEL_17;
    }

LABEL_14:
    v4 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
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

    goto LABEL_17;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_10:
  v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v3 + 23) < 0)
  {
    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v1 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  *v3 = 0;
  *(v3 + 23) = 0;
  if ((v1 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  v6 = *(a1 + 8);
  result = a1 + 8;
  *(result + 40) = 0;
  *(result + 8) = 0;
  if (v6)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_15BAA44(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v28 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v28, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v28 + 1);
    v8 = **v28;
    if (**v28 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v28, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v28 + 2);
      }
    }

    *v28 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      if (v11 == 1)
      {
        if (v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v19 = *(a1 + 8);
          v14 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
          if (v19)
          {
            v14 = *v14;
          }

          v15 = (a1 + 24);
          goto LABEL_32;
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
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 != 4 || v8 != 32)
    {
      goto LABEL_33;
    }

    v5 |= 8u;
    v16 = v7 + 1;
    v17 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    v18 = *v16;
    v17 = v17 + (v18 << 7) - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v16 = v7 + 2;
LABEL_23:
      *v28 = v16;
      *(a1 + 48) = v17;
      goto LABEL_41;
    }

    v26 = sub_1958770(v7, v17);
    *v28 = v26;
    *(a1 + 48) = v27;
    if (!v26)
    {
      goto LABEL_48;
    }

LABEL_41:
    if (sub_195ADC0(a3, v28, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 26)
  {
    *(a1 + 16) |= 4u;
    v20 = *(a1 + 8);
    v14 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v14 = *v14;
    }

    v15 = (a1 + 40);
LABEL_32:
    v21 = sub_194DB04(v15, v14);
    v22 = sub_1958890(v21, *v28, a3);
LABEL_40:
    *v28 = v22;
    if (!v22)
    {
      goto LABEL_48;
    }

    goto LABEL_41;
  }

LABEL_33:
  if (v8)
  {
    v23 = (v8 & 7) == 4;
  }

  else
  {
    v23 = 1;
  }

  if (!v23)
  {
    v24 = *(a1 + 8);
    if (v24)
    {
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v25 = sub_11F1920((a1 + 8));
      v7 = *v28;
    }

    v22 = sub_1952690(v8, v25, v7, a3);
    goto LABEL_40;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_48:
  *v28 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v28;
}

char *sub_15BAC90(uint64_t a1, char *__dst, unint64_t *a3)
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

LABEL_8:
      v4 = sub_128AEEC(a3, 3, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), v4);
      if ((v6 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
LABEL_5:
    v7 = v4;
    goto LABEL_16;
  }

LABEL_9:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 48);
  *v4 = 32;
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

LABEL_16:
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

uint64_t sub_15BAE20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) == 0)
  {
    v2 = 0;
    goto LABEL_15;
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
  if ((v1 & 4) == 0)
  {
    if ((v1 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v11 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
  v12 = *(v11 + 23);
  v13 = *(v11 + 8);
  if ((v12 & 0x80u) == 0)
  {
    v13 = v12;
  }

  v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 8) != 0)
  {
LABEL_14:
    v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  v9 = *(a1 + 8);
  if (v9)
  {
    v14 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v15 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v15 < 0)
    {
      v15 = *(v14 + 16);
    }

    v2 += v15;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_15BAF80(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F40F8;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 40) = &qword_278E990;
  *(result + 48) = 0;
  return result;
}

uint64_t sub_15BB008(uint64_t a1)
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

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 56) != &qword_278E990)
  {
    sub_194E89C((a1 + 56));
  }

  if (*(a1 + 64) != &qword_278E990)
  {
    sub_194E89C((a1 + 64));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_11:
  sub_15D6AE8((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15BB0E0(uint64_t a1)
{
  sub_15BB008(a1);

  operator delete();
}

uint64_t sub_15BB118(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_15BB118(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 7) != 0)
  {
    if ((v5 & 1) == 0)
    {
      if ((v5 & 2) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      v7 = *(v1 + 56) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v7 + 23) < 0)
      {
        **v7 = 0;
        *(v7 + 8) = 0;
        if ((v5 & 4) == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        *v7 = 0;
        *(v7 + 23) = 0;
        if ((v5 & 4) == 0)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_18;
    }

    v6 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_14;
      }
    }

LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_21;
    }

LABEL_18:
    v8 = *(v1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
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

LABEL_21:
  v10 = *(v1 + 8);
  v9 = v1 + 8;
  *(v9 + 64) = 0;
  *(v9 + 8) = 0;
  if (v10)
  {

    return sub_1957EA8(v9);
  }

  return result;
}

uint64_t sub_15BB240(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v31 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v31, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = (*v31 + 1);
    v7 = **v31;
    if (**v31 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v31, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v31 + 2);
      }
    }

    *v31 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 4)
    {
      if (v10 == 1)
      {
        if (v7 == 8)
        {
          v25 = v6 + 1;
          v24 = *v6;
          if ((v24 & 0x8000000000000000) == 0)
          {
            goto LABEL_40;
          }

          v26 = *v25;
          v24 = (v26 << 7) + v24 - 128;
          if (v26 < 0)
          {
            *v31 = sub_19587DC(v6, v24);
            if (!*v31)
            {
              goto LABEL_59;
            }
          }

          else
          {
            v25 = v6 + 2;
LABEL_40:
            *v31 = v25;
          }

          if (v24 > 4)
          {
            sub_12E8450();
          }

          else
          {
            *(a1 + 16) |= 8u;
            *(a1 + 72) = v24;
          }

          continue;
        }

        goto LABEL_43;
      }

      if (v10 != 4 || v7 != 34)
      {
        goto LABEL_43;
      }

      *(a1 + 16) |= 1u;
      v14 = *(a1 + 8);
      v12 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v12 = *v12;
      }

      v13 = (a1 + 48);
    }

    else if (v10 == 5)
    {
      if (v7 != 42)
      {
        goto LABEL_43;
      }

      *(a1 + 16) |= 2u;
      v15 = *(a1 + 8);
      v12 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v12 = *v12;
      }

      v13 = (a1 + 56);
    }

    else
    {
      if (v10 == 6)
      {
        if (v7 == 50)
        {
          v18 = v6 - 1;
          while (1)
          {
            v19 = (v18 + 1);
            *v31 = v18 + 1;
            v20 = *(a1 + 40);
            if (v20 && (v21 = *(a1 + 32), v21 < *v20))
            {
              *(a1 + 32) = v21 + 1;
              v22 = *&v20[2 * v21 + 2];
            }

            else
            {
              v23 = sub_15BBB14(*(a1 + 24));
              v22 = sub_19593CC(a1 + 24, v23);
              v19 = *v31;
            }

            v18 = sub_222169C(a3, v22, v19);
            *v31 = v18;
            if (!v18)
            {
              break;
            }

            if (*a3 <= v18 || *v18 != 50)
            {
              goto LABEL_51;
            }
          }

LABEL_59:
          *v31 = 0;
          return *v31;
        }

LABEL_43:
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
          if (v6)
          {
            a3[10].i32[0] = v7 - 1;
            return *v31;
          }

          goto LABEL_59;
        }

        v28 = *(a1 + 8);
        if (v28)
        {
          v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v29 = sub_11F1920((a1 + 8));
          v6 = *v31;
        }

        v17 = sub_1952690(v7, v29, v6, a3);
        goto LABEL_50;
      }

      if (v10 != 7 || v7 != 58)
      {
        goto LABEL_43;
      }

      *(a1 + 16) |= 4u;
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v13 = (a1 + 64);
    }

    v16 = sub_194DB04(v13, v12);
    v17 = sub_1958890(v16, *v31, a3);
LABEL_50:
    *v31 = v17;
    if (!v17)
    {
      goto LABEL_59;
    }

LABEL_51:
    ;
  }

  return *v31;
}

char *sub_15BB518(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 72);
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
    v6 = sub_128AEEC(a3, 4, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v6);
  }

  if ((v5 & 2) != 0)
  {
    v6 = sub_128AEEC(a3, 5, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v6);
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
      *v6 = 50;
      v14 = *(v13 + 20);
      v6[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, v6 + 1);
      }

      else
      {
        v15 = v6 + 2;
      }

      v6 = sub_15BB518(v13, v15, a3);
    }
  }

  if ((v5 & 4) != 0)
  {
    v6 = sub_128AEEC(a3, 7, (*(a1 + 64) & 0xFFFFFFFFFFFFFFFELL), v6);
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v6;
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

  if ((*a3 - v6) >= v19)
  {
    v21 = v19;
    memcpy(v6, v20, v19);
    v6 += v21;
    return v6;
  }

  return sub_1957130(a3, v20, v19, v6);
}

uint64_t sub_15BB73C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 8) != 0)
  {
    v4 = *(a1 + 72);
    if (v4 < 0)
    {
      v3 = 11;
    }

    else
    {
      v3 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = *(a1 + 32);
  v6 = v3 + v5;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = (v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  if (v5)
  {
    v9 = 8 * v5;
    do
    {
      v10 = *v8++;
      v11 = sub_15BB73C(v10);
      v6 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6);
      v9 -= 8;
    }

    while (v9);
    v2 = *(a1 + 16);
  }

  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      v17 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v18 = *(v17 + 23);
      v19 = *(v17 + 8);
      if ((v18 & 0x80u) == 0)
      {
        v19 = v18;
      }

      v6 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v2 & 2) == 0)
      {
LABEL_16:
        if ((v2 & 4) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_17;
      }
    }

    else if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }

    v20 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    v21 = *(v20 + 23);
    v22 = *(v20 + 8);
    if ((v21 & 0x80u) == 0)
    {
      v22 = v21;
    }

    v6 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 4) != 0)
    {
LABEL_17:
      v12 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
      v13 = *(v12 + 23);
      v14 = *(v12 + 8);
      if ((v13 & 0x80u) == 0)
      {
        v14 = v13;
      }

      v6 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_20:
  v15 = *(a1 + 8);
  if (v15)
  {
    v23 = v15 & 0xFFFFFFFFFFFFFFFCLL;
    v24 = *((v15 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v24 < 0)
    {
      v24 = *(v23 + 16);
    }

    v6 += v24;
  }

  *(a1 + 20) = v6;
  return v6;
}

void sub_15BB900(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_15D6B6C((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if ((v9 & 0xF) != 0)
  {
    if (v9)
    {
      v11 = *(a2 + 48);
      *(a1 + 16) |= 1u;
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      sub_194EA1C((a1 + 48), (v11 & 0xFFFFFFFFFFFFFFFELL), v13);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_21;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    v14 = *(a2 + 56);
    *(a1 + 16) |= 2u;
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    sub_194EA1C((a1 + 56), (v14 & 0xFFFFFFFFFFFFFFFELL), v16);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
LABEL_10:
        *(a1 + 16) |= v9;
        goto LABEL_11;
      }

LABEL_9:
      *(a1 + 72) = *(a2 + 72);
      goto LABEL_10;
    }

LABEL_21:
    v17 = *(a2 + 64);
    *(a1 + 16) |= 4u;
    v18 = *(a1 + 8);
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    sub_194EA1C((a1 + 64), (v17 & 0xFFFFFFFFFFFFFFFELL), v19);
    if ((v9 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_11:
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_15BBAA4(uint64_t a1)
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
    if ((*(v4 + 16) & 8) == 0)
    {
      break;
    }

    --v2;
  }

  while (sub_15BBAA4(v4 + 24));
  return v3 < 1;
}

uint64_t sub_15BBB14(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F4178;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = &qword_278E990;
  *(result + 64) = &qword_278E990;
  *(result + 72) = 0;
  return result;
}

void *sub_15BBBC0(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956ABC((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15BBC3C(void *a1)
{
  sub_15BBBC0(a1);

  operator delete();
}

uint64_t sub_15BBC74(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_15BBC88(uint64_t a1, char *a2, int32x2_t *a3)
{
  v20 = a2;
  if (sub_195ADC0(a3, &v20, a3[11].u32[1]))
  {
    return v20;
  }

  while (1)
  {
    v5 = v20 + 1;
    v6 = *v20;
    if (*v20 < 0)
    {
      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if (*v5 < 0)
      {
        v5 = sub_1958824(v20, v7 - 128);
        v6 = v8;
      }

      else
      {
        v5 = v20 + 2;
      }
    }

    v20 = v5;
    if ((v6 & 0xFFFFFFF8) == 0x10)
    {
      if (v6 == 16)
      {
        v9 = v5 - 1;
        while (1)
        {
          v20 = v9 + 1;
          v10 = v9[1];
          if (v9[1] < 0)
          {
            v11 = v10 + (v9[2] << 7);
            v10 = v11 - 128;
            if (v9[2] < 0)
            {
              v9 = sub_1958770((v9 + 1), v11 - 128);
              v10 = v12;
            }

            else
            {
              v9 += 3;
            }
          }

          else
          {
            v9 += 2;
          }

          v20 = v9;
          v13 = *(a1 + 16);
          if (v13 == *(a1 + 20))
          {
            v14 = v13 + 1;
            sub_1958E5C((a1 + 16), v13 + 1);
            *(*(a1 + 24) + 4 * v13) = v10;
            v9 = v20;
          }

          else
          {
            *(*(a1 + 24) + 4 * v13) = v10;
            v14 = v13 + 1;
          }

          *(a1 + 16) = v14;
          if (!v9)
          {
            return 0;
          }

          if (*a3 <= v9 || *v9 != 16)
          {
            goto LABEL_31;
          }
        }
      }

      if (v6 == 18)
      {
        v15 = sub_1958918((a1 + 16), v5, a3);
        goto LABEL_30;
      }
    }

    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    v17 = *(a1 + 8);
    if (v17)
    {
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v18 = sub_11F1920((a1 + 8));
      v5 = v20;
    }

    v15 = sub_1952690(v6, v18, v5, a3);
LABEL_30:
    v20 = v15;
    if (!v15)
    {
      return 0;
    }

LABEL_31:
    if (sub_195ADC0(a3, &v20, a3[11].u32[1]))
    {
      return v20;
    }
  }

  if (v5)
  {
    a3[10].i32[0] = v6 - 1;
    return v20;
  }

  return 0;
}

char *sub_15BBE78(uint64_t a1, char *a2, void *a3)
{
  v5 = *(a1 + 16);
  if (v5 < 1)
  {
    v8 = a2;
  }

  else
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v7 = *(*(a1 + 24) + 4 * i);
      *a2 = 16;
      a2[1] = v7;
      if (v7 > 0x7F)
      {
        a2[1] = v7 | 0x80;
        v9 = v7 >> 7;
        a2[2] = v7 >> 7;
        v8 = a2 + 3;
        if (v7 >= 0x4000)
        {
          LOBYTE(v10) = a2[2];
          do
          {
            *(v8 - 1) = v10 | 0x80;
            v10 = v9 >> 7;
            *v8++ = v9 >> 7;
            v11 = v9 >> 14;
            v9 >>= 7;
          }

          while (v11);
        }
      }

      else
      {
        v8 = a2 + 2;
      }

      a2 = v8;
    }
  }

  v12 = *(a1 + 8);
  if ((v12 & 1) == 0)
  {
    return v8;
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

  if (*a3 - v8 >= v15)
  {
    v17 = v15;
    memcpy(v8, v16, v15);
    v8 += v17;
    return v8;
  }

  return sub_1957130(a3, v16, v15, v8);
}

uint64_t sub_15BBFC8(uint64_t a1)
{
  result = sub_1959E5C((a1 + 16)) + *(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFFFFFFFFFCLL;
    v5 = *((v3 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v5 < 0)
    {
      v5 = *(v4 + 16);
    }

    result += v5;
  }

  *(a1 + 32) = result;
  return result;
}

uint64_t sub_15BC038(uint64_t a1)
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

void sub_15BC0D8(uint64_t a1)
{
  sub_15BC038(a1);

  operator delete();
}

uint64_t sub_15BC110(uint64_t a1)
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

uint64_t sub_15BC160(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v26 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v26, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = (*v26 + 1);
    v7 = **v26;
    if (**v26 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v26, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v26 + 2);
      }
    }

    *v26 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 == 24)
      {
        v20 = v6 + 1;
        v19 = *v6;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_31;
        }

        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if (v21 < 0)
        {
          *v26 = sub_19587DC(v6, v19);
          if (!*v26)
          {
            goto LABEL_49;
          }
        }

        else
        {
          v20 = v6 + 2;
LABEL_31:
          *v26 = v20;
        }

        if (v19 > 3)
        {
          sub_12E8578();
        }

        else
        {
          *(a1 + 16) |= 4u;
          *(a1 + 36) = v19;
        }

        continue;
      }

      goto LABEL_13;
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
          *v26 = sub_19587DC(v6, v16);
          if (!*v26)
          {
            goto LABEL_49;
          }
        }

        else
        {
          v17 = v6 + 2;
LABEL_24:
          *v26 = v17;
        }

        if (v16 > 3)
        {
          sub_12E8418();
        }

        else
        {
          *(a1 + 16) |= 2u;
          *(a1 + 32) = v16;
        }

        continue;
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
          return *v26;
        }

LABEL_49:
        *v26 = 0;
        return *v26;
      }

      v13 = *(a1 + 8);
      if (v13)
      {
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v14 = sub_11F1920((a1 + 8));
        v6 = *v26;
      }

      v15 = sub_1952690(v7, v14, v6, a3);
      goto LABEL_37;
    }

    if (v10 != 1 || v7 != 10)
    {
      goto LABEL_13;
    }

    *(a1 + 16) |= 1u;
    v22 = *(a1 + 8);
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    v24 = sub_194DB04((a1 + 24), v23);
    v15 = sub_1958890(v24, *v26, a3);
LABEL_37:
    *v26 = v15;
    if (!v15)
    {
      goto LABEL_49;
    }
  }

  return *v26;
}

char *sub_15BC39C(uint64_t a1, char *__dst, unint64_t *a3)
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

  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v12;
  }

  v19 = v17 & 0xFFFFFFFFFFFFFFFCLL;
  v20 = *(v19 + 31);
  if (v20 < 0)
  {
    v21 = *(v19 + 8);
    v20 = *(v19 + 16);
  }

  else
  {
    v21 = (v19 + 8);
  }

  if ((*a3 - v12) >= v20)
  {
    v22 = v20;
    memcpy(v12, v21, v20);
    v12 += v22;
    return v12;
  }

  return sub_1957130(a3, v21, v20, v12);
}

uint64_t sub_15BC56C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v5 = v4;
    }

    v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if ((v1 & 6) != 0)
  {
    if ((v1 & 2) != 0)
    {
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

    if ((v1 & 4) != 0)
    {
      v8 = *(a1 + 36);
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

uint64_t sub_15BC674(uint64_t a1)
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

  if (*(a1 + 96) != &qword_278E990)
  {
    sub_194E89C((a1 + 96));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_13:
  sub_15D6BF8((a1 + 48));
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15BC768(uint64_t a1)
{
  sub_15BC674(a1);

  operator delete();
}

uint64_t sub_15BC7A0(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_15BC110(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 16);
  if ((v6 & 0xF) != 0)
  {
    if ((v6 & 1) == 0)
    {
      if ((v6 & 2) == 0)
      {
        goto LABEL_8;
      }

LABEL_15:
      v8 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v8 + 23) < 0)
      {
        **v8 = 0;
        *(v8 + 8) = 0;
        if ((v6 & 4) != 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *v8 = 0;
        *(v8 + 23) = 0;
        if ((v6 & 4) != 0)
        {
          goto LABEL_19;
        }
      }

LABEL_9:
      if ((v6 & 8) == 0)
      {
        goto LABEL_26;
      }

LABEL_23:
      v10 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v10 + 23) < 0)
      {
        **v10 = 0;
        *(v10 + 8) = 0;
      }

      else
      {
        *v10 = 0;
        *(v10 + 23) = 0;
      }

      goto LABEL_26;
    }

    v7 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v6 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
      if ((v6 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_8:
    if ((v6 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_19:
    v9 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
      if ((v6 & 8) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
      if ((v6 & 8) == 0)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_23;
  }

LABEL_26:
  if ((v6 & 0xF0) != 0)
  {
    *(a1 + 107) = 0;
    *(a1 + 104) = 0;
  }

  if ((v6 & 0xF00) != 0)
  {
    *(a1 + 119) = 0;
    *(a1 + 111) = 0;
    *(a1 + 127) = 0;
  }

  v12 = *(a1 + 8);
  v11 = a1 + 8;
  *(v11 + 8) = 0;
  if (v12)
  {

    return sub_1957EA8(v11);
  }

  return result;
}

uint64_t sub_15BC924(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v71 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v71, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v71 + 1);
    v8 = **v71;
    if (**v71 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v71, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v71 + 2);
      }
    }

    *v71 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 10)
        {
          goto LABEL_87;
        }

        *(a1 + 16) |= 1u;
        v11 = *(a1 + 8);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        v13 = (a1 + 72);
        goto LABEL_76;
      case 2u:
        if (v8 != 16)
        {
          goto LABEL_87;
        }

        v5 |= 0x10u;
        v42 = v7 + 1;
        LODWORD(v41) = *v7;
        if ((v41 & 0x80) == 0)
        {
          goto LABEL_62;
        }

        v43 = *v42;
        v41 = v41 + (v43 << 7) - 128;
        if (v43 < 0)
        {
          v65 = sub_19587DC(v7, v41);
          *v71 = v65;
          *(a1 + 104) = v66;
          if (!v65)
          {
            goto LABEL_111;
          }
        }

        else
        {
          v42 = v7 + 2;
LABEL_62:
          *v71 = v42;
          *(a1 + 104) = v41;
        }

        goto LABEL_78;
      case 3u:
        if (v8 != 26)
        {
          goto LABEL_87;
        }

        *(a1 + 16) |= 2u;
        v34 = *(a1 + 8);
        v12 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
        if (v34)
        {
          v12 = *v12;
        }

        v13 = (a1 + 80);
        goto LABEL_76;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_87;
        }

        v5 |= 0x20u;
        v36 = v7 + 1;
        v35 = *v7;
        if ((v35 & 0x8000000000000000) == 0)
        {
          goto LABEL_52;
        }

        v37 = *v36;
        v35 = (v37 << 7) + v35 - 128;
        if (v37 < 0)
        {
          v61 = sub_19587DC(v7, v35);
          *v71 = v61;
          *(a1 + 108) = v62 != 0;
          if (!v61)
          {
            goto LABEL_111;
          }
        }

        else
        {
          v36 = v7 + 2;
LABEL_52:
          *v71 = v36;
          *(a1 + 108) = v35 != 0;
        }

        goto LABEL_78;
      case 5u:
        if (v8 != 40)
        {
          goto LABEL_87;
        }

        v5 |= 0x40u;
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
          v57 = sub_19587DC(v7, v20);
          *v71 = v57;
          *(a1 + 109) = v58 != 0;
          if (!v57)
          {
            goto LABEL_111;
          }
        }

        else
        {
          v21 = v7 + 2;
LABEL_26:
          *v71 = v21;
          *(a1 + 109) = v20 != 0;
        }

        goto LABEL_78;
      case 6u:
        if (v8 != 50)
        {
          goto LABEL_87;
        }

        *(a1 + 16) |= 4u;
        v44 = *(a1 + 8);
        v12 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
        if (v44)
        {
          v12 = *v12;
        }

        v13 = (a1 + 88);
        goto LABEL_76;
      case 7u:
        if (v8 != 58)
        {
          goto LABEL_87;
        }

        *(a1 + 16) |= 8u;
        v48 = *(a1 + 8);
        v12 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
        if (v48)
        {
          v12 = *v12;
        }

        v13 = (a1 + 96);
LABEL_76:
        v49 = sub_194DB04(v13, v12);
        v50 = sub_1958890(v49, *v71, a3);
        goto LABEL_77;
      case 8u:
        if (v8 != 64)
        {
          goto LABEL_87;
        }

        v5 |= 0x80u;
        v39 = v7 + 1;
        v38 = *v7;
        if ((v38 & 0x8000000000000000) == 0)
        {
          goto LABEL_57;
        }

        v40 = *v39;
        v38 = (v40 << 7) + v38 - 128;
        if (v40 < 0)
        {
          v63 = sub_19587DC(v7, v38);
          *v71 = v63;
          *(a1 + 110) = v64 != 0;
          if (!v63)
          {
            goto LABEL_111;
          }
        }

        else
        {
          v39 = v7 + 2;
LABEL_57:
          *v71 = v39;
          *(a1 + 110) = v38 != 0;
        }

        goto LABEL_78;
      case 9u:
        if (v8 != 72)
        {
          goto LABEL_87;
        }

        v5 |= 0x100u;
        v52 = v7 + 1;
        v51 = *v7;
        if ((v51 & 0x8000000000000000) == 0)
        {
          goto LABEL_86;
        }

        v53 = *v52;
        v51 = (v53 << 7) + v51 - 128;
        if (v53 < 0)
        {
          v69 = sub_19587DC(v7, v51);
          *v71 = v69;
          *(a1 + 111) = v70 != 0;
          if (!v69)
          {
            goto LABEL_111;
          }
        }

        else
        {
          v52 = v7 + 2;
LABEL_86:
          *v71 = v52;
          *(a1 + 111) = v51 != 0;
        }

        goto LABEL_78;
      case 0xAu:
        if (v8 != 82)
        {
          goto LABEL_87;
        }

        v26 = v7 - 1;
        while (1)
        {
          v27 = (v26 + 1);
          *v71 = v26 + 1;
          v28 = *(a1 + 40);
          if (v28 && (v29 = *(a1 + 32), v29 < *v28))
          {
            *(a1 + 32) = v29 + 1;
            v30 = *&v28[2 * v29 + 2];
          }

          else
          {
            v31 = *(a1 + 24);
            if (!v31)
            {
              operator new();
            }

            *v33 = v32;
            v33[1] = sub_195A650;
            *v32 = 0;
            v32[1] = 0;
            v32[2] = 0;
            v30 = sub_19593CC(a1 + 24, v32);
            v27 = *v71;
          }

          v26 = sub_1958890(v30, v27, a3);
          *v71 = v26;
          if (!v26)
          {
            goto LABEL_111;
          }

          if (*a3 <= v26 || *v26 != 82)
          {
            goto LABEL_78;
          }
        }

      case 0xBu:
        if (v8 != 89)
        {
          goto LABEL_87;
        }

        v5 |= 0x200u;
        *(a1 + 112) = *v7;
        *v71 = v7 + 8;
        goto LABEL_78;
      case 0xCu:
        if (v8 != 98)
        {
          goto LABEL_87;
        }

        v14 = v7 - 1;
        while (1)
        {
          v15 = v14 + 1;
          *v71 = v14 + 1;
          v16 = *(a1 + 64);
          if (v16 && (v17 = *(a1 + 56), v17 < *v16))
          {
            *(a1 + 56) = v17 + 1;
            v18 = *&v16[2 * v17 + 2];
          }

          else
          {
            v19 = sub_15BE238(*(a1 + 48));
            v18 = sub_19593CC(a1 + 48, v19);
            v15 = *v71;
          }

          v14 = sub_222172C(a3, v18, v15);
          *v71 = v14;
          if (!v14)
          {
            goto LABEL_111;
          }

          if (*a3 <= v14 || *v14 != 98)
          {
            goto LABEL_78;
          }
        }

      case 0xDu:
        if (v8 != 104)
        {
          goto LABEL_87;
        }

        v5 |= 0x400u;
        v24 = v7 + 1;
        v23 = *v7;
        if ((v23 & 0x8000000000000000) == 0)
        {
          goto LABEL_31;
        }

        v25 = *v24;
        v23 = (v25 << 7) + v23 - 128;
        if (v25 < 0)
        {
          v59 = sub_19587DC(v7, v23);
          *v71 = v59;
          *(a1 + 120) = v60 != 0;
          if (!v59)
          {
            goto LABEL_111;
          }
        }

        else
        {
          v24 = v7 + 2;
LABEL_31:
          *v71 = v24;
          *(a1 + 120) = v23 != 0;
        }

        goto LABEL_78;
      case 0xEu:
        if (v8 != 112)
        {
          goto LABEL_87;
        }

        v5 |= 0x800u;
        v46 = v7 + 1;
        LODWORD(v45) = *v7;
        if ((v45 & 0x80) == 0)
        {
          goto LABEL_71;
        }

        v47 = *v46;
        v45 = v45 + (v47 << 7) - 128;
        if (v47 < 0)
        {
          v67 = sub_19587DC(v7, v45);
          *v71 = v67;
          *(a1 + 124) = v68;
          if (!v67)
          {
            goto LABEL_111;
          }
        }

        else
        {
          v46 = v7 + 2;
LABEL_71:
          *v71 = v46;
          *(a1 + 124) = v45;
        }

        goto LABEL_78;
      default:
LABEL_87:
        if (v8)
        {
          v54 = (v8 & 7) == 4;
        }

        else
        {
          v54 = 1;
        }

        if (!v54)
        {
          v55 = *(a1 + 8);
          if (v55)
          {
            v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v56 = sub_11F1920((a1 + 8));
            v7 = *v71;
          }

          v50 = sub_1952690(v8, v56, v7, a3);
LABEL_77:
          *v71 = v50;
          if (!v50)
          {
            goto LABEL_111;
          }

LABEL_78:
          if (sub_195ADC0(a3, v71, a3[11].u32[1]))
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
LABEL_111:
          *v71 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v71;
    }
  }
}

char *sub_15BCFE4(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 104);
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
        LOBYTE(v4) = v4[2];
        do
        {
          *(v7 - 1) = v4 | 0x80;
          v4 = (v9 >> 7);
          *v7++ = v9 >> 7;
          v10 = v9 >> 14;
          v9 >>= 7;
        }

        while (v10);
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

  if ((v6 & 2) != 0)
  {
    v7 = sub_128AEEC(a3, 3, (*(a1 + 80) & 0xFFFFFFFFFFFFFFFELL), v7);
    if ((v6 & 0x20) == 0)
    {
LABEL_14:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_24;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_14;
  }

  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v11 = *(a1 + 108);
  *v7 = 32;
  v7[1] = v11;
  v7 += 2;
  if ((v6 & 0x40) == 0)
  {
LABEL_15:
    if ((v6 & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_27;
  }

LABEL_24:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v12 = *(a1 + 109);
  *v7 = 40;
  v7[1] = v12;
  v7 += 2;
  if ((v6 & 4) == 0)
  {
LABEL_16:
    if ((v6 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

LABEL_27:
  v7 = sub_128AEEC(a3, 6, (*(a1 + 88) & 0xFFFFFFFFFFFFFFFELL), v7);
  if ((v6 & 8) == 0)
  {
LABEL_17:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_29;
  }

LABEL_28:
  v7 = sub_128AEEC(a3, 7, (*(a1 + 96) & 0xFFFFFFFFFFFFFFFELL), v7);
  if ((v6 & 0x80) == 0)
  {
LABEL_18:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_32;
  }

LABEL_29:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v13 = *(a1 + 110);
  *v7 = 64;
  v7[1] = v13;
  v7 += 2;
  if ((v6 & 0x100) != 0)
  {
LABEL_32:
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v14 = *(a1 + 111);
    *v7 = 72;
    v7[1] = v14;
    v7 += 2;
  }

LABEL_35:
  v15 = *(a1 + 32);
  if (v15 >= 1)
  {
    v16 = 8;
    do
    {
      v17 = *(*(a1 + 40) + v16);
      v18 = *(v17 + 23);
      if (v18 < 0 && (v18 = v17[1], v18 > 127) || (*a3 - v7 + 14) < v18)
      {
        v7 = sub_1957480(a3, 10, v17, v7);
      }

      else
      {
        *v7 = 82;
        v7[1] = v18;
        if (*(v17 + 23) < 0)
        {
          v17 = *v17;
        }

        v19 = v7 + 2;
        memcpy(v7 + 2, v17, v18);
        v7 = &v19[v18];
      }

      v16 += 8;
      --v15;
    }

    while (v15);
  }

  if ((v6 & 0x200) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v20 = *(a1 + 112);
    *v7 = 89;
    *(v7 + 1) = v20;
    v7 += 9;
  }

  v21 = *(a1 + 56);
  if (v21)
  {
    for (i = 0; i != v21; ++i)
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v23 = *(*(a1 + 64) + 8 * i + 8);
      *v7 = 98;
      v24 = *(v23 + 20);
      v7[1] = v24;
      if (v24 > 0x7F)
      {
        v25 = sub_19575D0(v24, v7 + 1);
      }

      else
      {
        v25 = v7 + 2;
      }

      v7 = sub_15BC39C(v23, v25, a3);
    }
  }

  if ((v6 & 0x400) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v26 = *(a1 + 120);
    *v7 = 104;
    v7[1] = v26;
    v7 += 2;
  }

  if ((v6 & 0x800) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v28 = *(a1 + 124);
    *v7 = 112;
    v7[1] = v28;
    if (v28 > 0x7F)
    {
      v7[1] = v28 | 0x80;
      v29 = v28 >> 7;
      v7[2] = v28 >> 7;
      v27 = v7 + 3;
      if (v28 >= 0x4000)
      {
        LOBYTE(v30) = v7[2];
        do
        {
          *(v27 - 1) = v30 | 0x80;
          v30 = v29 >> 7;
          *v27++ = v29 >> 7;
          v31 = v29 >> 14;
          v29 >>= 7;
        }

        while (v31);
      }
    }

    else
    {
      v27 = v7 + 2;
    }
  }

  else
  {
    v27 = v7;
  }

  v32 = *(a1 + 8);
  if ((v32 & 1) == 0)
  {
    return v27;
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

  if ((*a3 - v27) >= v35)
  {
    v37 = v35;
    memcpy(v27, v36, v35);
    v27 += v37;
    return v27;
  }

  return sub_1957130(a3, v36, v35, v27);
}

uint64_t sub_15BD4AC(uint64_t a1)
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
      v14 = sub_15BC56C(v13);
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
      v25 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
      v26 = *(v25 + 23);
      v27 = *(v25 + 8);
      if ((v26 & 0x80u) == 0)
      {
        v27 = v26;
      }

      v9 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v15 & 2) == 0)
      {
LABEL_17:
        if ((v15 & 4) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_41;
      }
    }

    else if ((v15 & 2) == 0)
    {
      goto LABEL_17;
    }

    v28 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    v29 = *(v28 + 23);
    v30 = *(v28 + 8);
    if ((v29 & 0x80u) == 0)
    {
      v30 = v29;
    }

    v9 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 4) == 0)
    {
LABEL_18:
      if ((v15 & 8) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_44;
    }

LABEL_41:
    v31 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
    v32 = *(v31 + 23);
    v33 = *(v31 + 8);
    if ((v32 & 0x80u) == 0)
    {
      v33 = v32;
    }

    v9 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 8) == 0)
    {
LABEL_19:
      if ((v15 & 0x10) == 0)
      {
LABEL_24:
        v9 += ((v15 >> 5) & 2) + ((v15 >> 4) & 2) + ((v15 >> 6) & 2);
        goto LABEL_25;
      }

LABEL_20:
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
      goto LABEL_24;
    }

LABEL_44:
    v34 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
    v35 = *(v34 + 23);
    v36 = *(v34 + 8);
    if ((v35 & 0x80u) == 0)
    {
      v36 = v35;
    }

    v9 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

LABEL_25:
  if ((v15 & 0xF00) != 0)
  {
    v19 = v9 + ((v15 >> 7) & 2);
    if ((v15 & 0x200) != 0)
    {
      v19 += 9;
    }

    v9 = v19 + ((v15 >> 9) & 2);
    if ((v15 & 0x800) != 0)
    {
      v20 = *(a1 + 124);
      v21 = ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v20 >= 0)
      {
        v22 = v21;
      }

      else
      {
        v22 = 11;
      }

      v9 += v22;
    }
  }

  v23 = *(a1 + 8);
  if (v23)
  {
    v37 = v23 & 0xFFFFFFFFFFFFFFFCLL;
    v38 = *((v23 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v38 < 0)
    {
      v38 = *(v37 + 16);
    }

    v9 += v38;
  }

  *(a1 + 20) = v9;
  return v9;
}

void sub_15BD798(uint64_t a1, uint64_t a2)
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
    sub_15D6D00((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
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

        goto LABEL_35;
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

      goto LABEL_38;
    }

LABEL_35:
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

      goto LABEL_41;
    }

LABEL_38:
    v25 = *(a2 + 96);
    *(a1 + 16) |= 8u;
    v26 = *(a1 + 8);
    v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
    if (v26)
    {
      v27 = *v27;
    }

    sub_194EA1C((a1 + 96), (v25 & 0xFFFFFFFFFFFFFFFELL), v27);
    if ((v14 & 0x10) == 0)
    {
LABEL_13:
      if ((v14 & 0x20) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_42;
    }

LABEL_41:
    *(a1 + 104) = *(a2 + 104);
    if ((v14 & 0x20) == 0)
    {
LABEL_14:
      if ((v14 & 0x40) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_43;
    }

LABEL_42:
    *(a1 + 108) = *(a2 + 108);
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
      *(a1 + 110) = *(a2 + 110);
      goto LABEL_17;
    }

LABEL_43:
    *(a1 + 109) = *(a2 + 109);
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_18:
  if ((v14 & 0xF00) == 0)
  {
    goto LABEL_25;
  }

  if ((v14 & 0x100) != 0)
  {
    *(a1 + 111) = *(a2 + 111);
    if ((v14 & 0x200) == 0)
    {
LABEL_21:
      if ((v14 & 0x400) == 0)
      {
        goto LABEL_22;
      }

LABEL_47:
      *(a1 + 120) = *(a2 + 120);
      if ((v14 & 0x800) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  else if ((v14 & 0x200) == 0)
  {
    goto LABEL_21;
  }

  *(a1 + 112) = *(a2 + 112);
  if ((v14 & 0x400) != 0)
  {
    goto LABEL_47;
  }

LABEL_22:
  if ((v14 & 0x800) != 0)
  {
LABEL_23:
    *(a1 + 124) = *(a2 + 124);
  }

LABEL_24:
  *(a1 + 16) |= v14;
LABEL_25:
  v15 = *(a2 + 8);
  if (v15)
  {

    sub_1957EF4((a1 + 8), (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_15BDA3C(uint64_t a1)
{
  v1 = *(a1 + 56);
  do
  {
    v2 = v1;
    if (v1 < 1)
    {
      break;
    }

    v3 = *(*(a1 + 64) + 8 * v1--);
  }

  while ((*(v3 + 16) & 1) != 0);
  return v2 < 1;
}

uint64_t sub_15BDA7C(uint64_t a1)
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
  sub_15D6C7C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15BDB28(uint64_t a1)
{
  sub_15BDA7C(a1);

  operator delete();
}

uint64_t sub_15BDB60(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_15BC7A0(v4);
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

uint64_t sub_15BDC10(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
        *(a1 + 16) |= 1u;
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v17 = sub_194DB04((a1 + 48), v16);
        v14 = sub_1958890(v17, *v25, a3);
        goto LABEL_23;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      v18 = v6 - 1;
      while (1)
      {
        v19 = v18 + 1;
        *v25 = v18 + 1;
        v20 = *(a1 + 40);
        if (v20 && (v21 = *(a1 + 32), v21 < *v20))
        {
          *(a1 + 32) = v21 + 1;
          v22 = *&v20[2 * v21 + 2];
        }

        else
        {
          v23 = sub_15BE2BC(*(a1 + 24));
          v22 = sub_19593CC(a1 + 24, v23);
          v19 = *v25;
        }

        v18 = sub_22217BC(a3, v22, v19);
        *v25 = v18;
        if (!v18)
        {
          break;
        }

        if (*a3 <= v18 || *v18 != 10)
        {
          goto LABEL_33;
        }
      }

LABEL_38:
      *v25 = 0;
      return *v25;
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
LABEL_23:
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

char *sub_15BDDE8(uint64_t a1, char *__dst, unint64_t *a3)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v8 = *(*(a1 + 40) + 8 * i + 8);
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

      __dst = sub_15BCFE4(v8, v10, a3);
    }
  }

  if (*(a1 + 16))
  {
    __dst = sub_128AEEC(a3, 2, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return __dst;
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

  if ((*a3 - __dst) >= v14)
  {
    v16 = v14;
    memcpy(__dst, v15, v14);
    __dst += v16;
    return __dst;
  }

  return sub_1957130(a3, v15, v14, __dst);
}

uint64_t sub_15BDF4C(uint64_t a1)
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
      v7 = sub_15BD4AC(v6);
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

void sub_15BE03C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_15D6D7C((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

uint64_t sub_15BE138(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 1)
  {
    do
    {
      v2 = v1--;
      v3 = *(*(a1 + 16) + 8 + 8 * v1);
      v4 = *(v3 + 56);
      v5 = *(v3 + 64);
      while (v4 >= 1)
      {
        v6 = *(v5 + 8 * v4--);
        if ((*(v6 + 16) & 1) == 0)
        {
          return 0;
        }
      }
    }

    while (v2 >= 2);
  }

  return 1;
}

uint64_t sub_15BE1A4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F41F8;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  return result;
}

void *sub_15BE238(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F4278;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = 0;
  return result;
}

void *sub_15BE2BC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F42F8;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = a1;
  result[7] = 0;
  result[8] = 0;
  result[9] = &qword_278E990;
  result[10] = &qword_278E990;
  result[11] = &qword_278E990;
  result[12] = &qword_278E990;
  result[14] = 0;
  result[15] = 0;
  result[13] = 0;
  return result;
}

void *sub_15BE378(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F4378;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  return result;
}

void *sub_15BE41C(void *a1)
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

  sub_15BE4A0(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_15BE4A0(uint64_t a1)
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

  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C((a1 + 48));
  }

  result = (a1 + 56);
  if (*(a1 + 56) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_2778CB8)
  {
    v5 = *(a1 + 64);
    if (v5)
    {
      sub_15BDA7C(v5);
      operator delete();
    }

    result = *(a1 + 72);
    if (result)
    {
      sub_15BBBC0(result);

      operator delete();
    }
  }

  return result;
}

void sub_15BE594(void *a1)
{
  sub_15BE41C(a1);

  operator delete();
}

uint64_t sub_15BE5CC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0x7F) == 0)
  {
    goto LABEL_33;
  }

  if (v2)
  {
    v3 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_14;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_18:
    v5 = *(result + 40) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_22;
      }
    }

LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_26:
    v7 = *(result + 56) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v2 & 0x20) != 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
      if ((v2 & 0x20) != 0)
      {
        goto LABEL_30;
      }
    }

LABEL_8:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_14:
  v4 = *(result + 32) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v4 + 23) < 0)
  {
    **v4 = 0;
    *(v4 + 8) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    *v4 = 0;
    *(v4 + 23) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_18;
    }
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_22:
  v6 = *(result + 48) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_26;
    }
  }

LABEL_7:
  if ((v2 & 0x20) == 0)
  {
    goto LABEL_8;
  }

LABEL_30:
  result = sub_15BDB60(*(result + 64));
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_33;
  }

LABEL_31:
  v8 = *(v1 + 72);
  v9 = *(v8 + 8);
  result = v8 + 8;
  *(result + 8) = 0;
  if (v9)
  {
    result = sub_1957EA8(result);
  }

LABEL_33:
  *(v1 + 80) = 0;
  if ((v2 & 0x700) != 0)
  {
    *(v1 + 86) = 0;
    *(v1 + 84) = 0;
  }

  v11 = *(v1 + 8);
  v10 = v1 + 8;
  *(v10 + 8) = 0;
  if (v11)
  {

    return sub_1957EA8(v10);
  }

  return result;
}

uint64_t sub_15BE768(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v51 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v51, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v51 + 1);
    v8 = **v51;
    if (**v51 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v51, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v51 + 2);
      }
    }

    *v51 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 5)
    {
      break;
    }

    if (v8 >> 3 <= 8)
    {
      if (v11 == 6)
      {
        if (v8 != 50)
        {
          goto LABEL_80;
        }

        *(a1 + 16) |= 0x20u;
        v35 = *(a1 + 64);
        if (!v35)
        {
          v36 = *(a1 + 8);
          v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
          if (v36)
          {
            v37 = *v37;
          }

          v35 = sub_15BE378(v37);
          *(a1 + 64) = v35;
          v7 = *v51;
        }

        v30 = sub_222184C(a3, v35, v7);
      }

      else
      {
        if (v11 != 7)
        {
          if (v11 != 8 || v8 != 64)
          {
            goto LABEL_80;
          }

          v5 |= 0x200u;
          v13 = v7 + 1;
          v12 = *v7;
          if ((v12 & 0x8000000000000000) == 0)
          {
            goto LABEL_16;
          }

          v14 = *v13;
          v12 = (v14 << 7) + v12 - 128;
          if ((v14 & 0x80000000) == 0)
          {
            v13 = v7 + 2;
LABEL_16:
            *v51 = v13;
            *(a1 + 85) = v12 != 0;
            goto LABEL_78;
          }

          v49 = sub_19587DC(v7, v12);
          *v51 = v49;
          *(a1 + 85) = v50 != 0;
          if (!v49)
          {
            goto LABEL_98;
          }

          goto LABEL_78;
        }

        if (v8 != 58)
        {
          goto LABEL_80;
        }

        *(a1 + 16) |= 0x40u;
        v27 = *(a1 + 72);
        if (!v27)
        {
          v28 = *(a1 + 8);
          v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
          if (v28)
          {
            v29 = *v29;
          }

          v27 = sub_15BE1A4(v29);
          *(a1 + 72) = v27;
          v7 = *v51;
        }

        v30 = sub_21FF9C0(a3, v27, v7);
      }

LABEL_77:
      *v51 = v30;
      if (!v30)
      {
        goto LABEL_98;
      }

      goto LABEL_78;
    }

    if (v11 == 9)
    {
      if (v8 != 74)
      {
        goto LABEL_80;
      }

      *(a1 + 16) |= 8u;
      v38 = *(a1 + 8);
      v19 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
      if (v38)
      {
        v19 = *v19;
      }

      v20 = (a1 + 48);
      goto LABEL_76;
    }

    if (v11 != 10)
    {
      if (v11 != 11 || v8 != 90)
      {
        goto LABEL_80;
      }

      *(a1 + 16) |= 0x10u;
      v18 = *(a1 + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      v20 = (a1 + 56);
      goto LABEL_76;
    }

    if (v8 != 80)
    {
      goto LABEL_80;
    }

    v5 |= 0x400u;
    v32 = v7 + 1;
    v31 = *v7;
    if ((v31 & 0x8000000000000000) == 0)
    {
      goto LABEL_61;
    }

    v33 = *v32;
    v31 = (v33 << 7) + v31 - 128;
    if ((v33 & 0x80000000) == 0)
    {
      v32 = v7 + 2;
LABEL_61:
      *v51 = v32;
      *(a1 + 86) = v31 != 0;
      goto LABEL_78;
    }

    v45 = sub_19587DC(v7, v31);
    *v51 = v45;
    *(a1 + 86) = v46 != 0;
    if (!v45)
    {
      goto LABEL_98;
    }

LABEL_78:
    if (sub_195ADC0(a3, v51, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 > 2)
  {
    if (v11 == 3)
    {
      if (v8 != 26)
      {
        goto LABEL_80;
      }

      *(a1 + 16) |= 2u;
      v34 = *(a1 + 8);
      v19 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
      if (v34)
      {
        v19 = *v19;
      }

      v20 = (a1 + 32);
      goto LABEL_76;
    }

    if (v11 == 4)
    {
      if (v8 != 34)
      {
        goto LABEL_80;
      }

      *(a1 + 16) |= 4u;
      v26 = *(a1 + 8);
      v19 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v19 = *v19;
      }

      v20 = (a1 + 40);
      goto LABEL_76;
    }

    if (v11 != 5 || v8 != 40)
    {
      goto LABEL_80;
    }

    v5 |= 0x80u;
    v15 = v7 + 1;
    v16 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    v17 = *v15;
    v16 = v16 + (v17 << 7) - 128;
    if ((v17 & 0x80000000) == 0)
    {
      v15 = v7 + 2;
LABEL_25:
      *v51 = v15;
      *(a1 + 80) = v16;
      goto LABEL_78;
    }

    v47 = sub_1958770(v7, v16);
    *v51 = v47;
    *(a1 + 80) = v48;
    if (!v47)
    {
      goto LABEL_98;
    }

    goto LABEL_78;
  }

  if (v11 == 1)
  {
    if (v8 != 8)
    {
      goto LABEL_80;
    }

    v5 |= 0x100u;
    v24 = v7 + 1;
    v23 = *v7;
    if ((v23 & 0x8000000000000000) == 0)
    {
      goto LABEL_46;
    }

    v25 = *v24;
    v23 = (v25 << 7) + v23 - 128;
    if ((v25 & 0x80000000) == 0)
    {
      v24 = v7 + 2;
LABEL_46:
      *v51 = v24;
      *(a1 + 84) = v23 != 0;
      goto LABEL_78;
    }

    v43 = sub_19587DC(v7, v23);
    *v51 = v43;
    *(a1 + 84) = v44 != 0;
    if (!v43)
    {
      goto LABEL_98;
    }

    goto LABEL_78;
  }

  if (v11 == 2 && v8 == 18)
  {
    *(a1 + 16) |= 1u;
    v22 = *(a1 + 8);
    v19 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v19 = *v19;
    }

    v20 = (a1 + 24);
LABEL_76:
    v39 = sub_194DB04(v20, v19);
    v30 = sub_1958890(v39, *v51, a3);
    goto LABEL_77;
  }

LABEL_80:
  if (v8)
  {
    v40 = (v8 & 7) == 4;
  }

  else
  {
    v40 = 1;
  }

  if (!v40)
  {
    v41 = *(a1 + 8);
    if (v41)
    {
      v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v42 = sub_11F1920((a1 + 8));
      v7 = *v51;
    }

    v30 = sub_1952690(v8, v42, v7, a3);
    goto LABEL_77;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_98:
  *v51 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v51;
}

char *sub_15BEC48(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 0x100) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v8 = *(a1 + 84);
    *v4 = 8;
    v4[1] = v8;
    v4 += 2;
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_12:
    v4 = sub_128AEEC(a3, 4, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), v4);
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_11:
  v4 = sub_128AEEC(a3, 3, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v6 & 0x80) == 0)
  {
LABEL_6:
    v7 = v4;
    goto LABEL_20;
  }

LABEL_13:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v9 = *(a1 + 80);
  *v4 = 40;
  v4[1] = v9;
  if (v9 > 0x7F)
  {
    v4[1] = v9 | 0x80;
    v10 = v9 >> 7;
    v4[2] = v9 >> 7;
    v7 = v4 + 3;
    if (v9 >= 0x4000)
    {
      LOBYTE(v11) = v4[2];
      do
      {
        *(v7 - 1) = v11 | 0x80;
        v11 = v10 >> 7;
        *v7++ = v10 >> 7;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_20:
  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v15 = *(a1 + 64);
    *v7 = 50;
    v16 = *(v15 + 20);
    v7[1] = v16;
    if (v16 > 0x7F)
    {
      v17 = sub_19575D0(v16, v7 + 1);
    }

    else
    {
      v17 = v7 + 2;
    }

    v7 = sub_15BDDE8(v15, v17, a3);
    if ((v6 & 0x40) == 0)
    {
LABEL_22:
      if ((v6 & 0x200) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_41;
    }
  }

  else if ((v6 & 0x40) == 0)
  {
    goto LABEL_22;
  }

  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v18 = *(a1 + 72);
  *v7 = 58;
  v19 = *(v18 + 32);
  v7[1] = v19;
  if (v19 > 0x7F)
  {
    v20 = sub_19575D0(v19, v7 + 1);
  }

  else
  {
    v20 = v7 + 2;
  }

  v7 = sub_15BBE78(v18, v20, a3);
  if ((v6 & 0x200) == 0)
  {
LABEL_23:
    if ((v6 & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_44;
  }

LABEL_41:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v21 = *(a1 + 85);
  *v7 = 64;
  v7[1] = v21;
  v7 += 2;
  if ((v6 & 8) == 0)
  {
LABEL_24:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_45;
  }

LABEL_44:
  v7 = sub_128AEEC(a3, 9, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v7);
  if ((v6 & 0x400) == 0)
  {
LABEL_25:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_45:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v22 = *(a1 + 86);
  *v7 = 80;
  v7[1] = v22;
  v7 += 2;
  if ((v6 & 0x10) != 0)
  {
LABEL_26:
    v7 = sub_128AEEC(a3, 11, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v7);
  }

LABEL_27:
  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return v7;
  }

  v23 = v13 & 0xFFFFFFFFFFFFFFFCLL;
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

  if ((*a3 - v7) >= v24)
  {
    v26 = v24;
    memcpy(v7, v25, v24);
    v7 += v26;
    return v7;
  }

  return sub_1957130(a3, v25, v24, v7);
}

uint64_t sub_15BEFB0(uint64_t a1)
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
LABEL_9:
    v7 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
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
    v12 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v13 = *(v12 + 23);
    v14 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v14 = v13;
    }

    v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_30;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  v15 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v16 = *(v15 + 23);
  v17 = *(v15 + 8);
  if ((v16 & 0x80u) == 0)
  {
    v17 = v16;
  }

  v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_30:
  v18 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v19 = *(v18 + 23);
  v20 = *(v18 + 8);
  if ((v19 & 0x80u) == 0)
  {
    v20 = v19;
  }

  v3 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_16:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_33:
  v21 = sub_15BDF4C(*(a1 + 64));
  v3 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_17:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_34:
  v22 = sub_15BBFC8(*(a1 + 72));
  v3 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_18:
    v3 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_19:
  if ((v2 & 0x700) != 0)
  {
    result = v3 + ((v2 >> 8) & 2) + ((v2 >> 7) & 2) + ((v2 >> 9) & 2);
  }

  else
  {
    result = v3;
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    v23 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v24 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v24 < 0)
    {
      v24 = *(v23 + 16);
    }

    result += v24;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_15BF23C(uint64_t a1, uint64_t a2)
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

        goto LABEL_28;
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

      goto LABEL_31;
    }

LABEL_28:
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

      goto LABEL_34;
    }

LABEL_31:
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
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_37;
    }

LABEL_34:
    v18 = *(a2 + 56);
    *(a1 + 16) |= 0x10u;
    v19 = *(a1 + 8);
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    sub_194EA1C((a1 + 56), (v18 & 0xFFFFFFFFFFFFFFFELL), v20);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_45;
    }

LABEL_37:
    *(a1 + 16) |= 0x20u;
    v21 = *(a1 + 64);
    if (!v21)
    {
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v21 = sub_15BE378(v23);
      *(a1 + 64) = v21;
    }

    if (*(a2 + 64))
    {
      v24 = *(a2 + 64);
    }

    else
    {
      v24 = &off_2778C80;
    }

    sub_15BE03C(v21, v24);
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

LABEL_45:
    *(a1 + 16) |= 0x40u;
    v25 = *(a1 + 72);
    if (!v25)
    {
      v26 = *(a1 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      v25 = sub_15BE1A4(v27);
      *(a1 + 72) = v25;
    }

    if (*(a2 + 72))
    {
      v28 = *(a2 + 72);
    }

    else
    {
      v28 = &off_2778BD8;
    }

    sub_12EE670(v25, v28);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  if ((v4 & 0x700) == 0)
  {
    goto LABEL_18;
  }

  if ((v4 & 0x100) == 0)
  {
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_15;
    }

LABEL_55:
    *(a1 + 85) = *(a2 + 85);
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  *(a1 + 84) = *(a2 + 84);
  if ((v4 & 0x200) != 0)
  {
    goto LABEL_55;
  }

LABEL_15:
  if ((v4 & 0x400) != 0)
  {
LABEL_16:
    *(a1 + 86) = *(a2 + 86);
  }

LABEL_17:
  *(a1 + 16) |= v4;
LABEL_18:
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_15BF4C0(uint64_t a1)
{
  if ((*(a1 + 16) & 0x20) == 0)
  {
    return 1;
  }

  result = sub_15BE138(*(a1 + 64) + 24);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_15BF504(uint64_t a1)
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

void sub_15BF5A4(uint64_t a1)
{
  sub_15BF504(a1);

  operator delete();
}

uint64_t sub_15BF5DC(uint64_t a1)
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

uint64_t sub_15BF624(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_15BF7B0(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_15BF8B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) != 0)
  {
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
    }

    else
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v3 = v2 + 9;
    }

    else
    {
      v3 = v2;
    }
  }

  else
  {
    v3 = 0;
  }

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

uint64_t sub_15BF960(uint64_t a1)
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

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_11:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15BFA2C(uint64_t a1)
{
  sub_15BF960(a1);

  operator delete();
}

uint64_t sub_15BFA64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    goto LABEL_17;
  }

  if (v1)
  {
    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

LABEL_4:
    if ((v1 & 4) == 0)
    {
      goto LABEL_17;
    }

LABEL_14:
    v4 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
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

    goto LABEL_17;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_10:
  v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v3 + 23) < 0)
  {
    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v1 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  *v3 = 0;
  *(v3 + 23) = 0;
  if ((v1 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  v6 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v6)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_15BFB1C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v23 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v23, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = (*v23 + 1);
    v7 = **v23;
    if (**v23 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v23, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v23 + 2);
      }
    }

    *v23 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 == 26)
      {
        *(a1 + 16) |= 4u;
        v19 = *(a1 + 8);
        v17 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v17 = *v17;
        }

        v18 = (a1 + 40);
        goto LABEL_31;
      }
    }

    else if (v10 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v16 = *(a1 + 8);
        v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v17 = *v17;
        }

        v18 = (a1 + 32);
        goto LABEL_31;
      }
    }

    else if (v10 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v20 = *(a1 + 8);
      v17 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v17 = *v17;
      }

      v18 = (a1 + 24);
LABEL_31:
      v21 = sub_194DB04(v18, v17);
      v15 = sub_1958890(v21, *v23, a3);
      goto LABEL_32;
    }

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
        return *v23;
      }

LABEL_38:
      *v23 = 0;
      return *v23;
    }

    v13 = *(a1 + 8);
    if (v13)
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v14 = sub_11F1920((a1 + 8));
      v6 = *v23;
    }

    v15 = sub_1952690(v7, v14, v6, a3);
LABEL_32:
    *v23 = v15;
    if (!v15)
    {
      goto LABEL_38;
    }
  }

  return *v23;
}

char *sub_15BFCD8(uint64_t a1, char *__dst, unint64_t *a3)
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
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) != 0)
  {
LABEL_4:
    v4 = sub_128AEEC(a3, 3, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_5:
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

uint64_t sub_15BFDEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    v2 = 0;
    goto LABEL_16;
  }

  if (v1)
  {
    v3 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v5 = v4;
    }

    v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v2 = 0;
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
    v9 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_16:
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

void *sub_15BFF1C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F43F8;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  result[6] = &qword_278E990;
  result[8] = 0;
  result[9] = 0;
  result[7] = &qword_278E990;
  *(result + 79) = 0;
  return result;
}

void *sub_15BFFB0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F4478;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = 0;
  return result;
}

void *sub_15C0034(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F44F8;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  return result;
}

uint64_t sub_15C00BC(uint64_t a1)
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

void sub_15C0174(uint64_t a1)
{
  sub_15C00BC(a1);

  operator delete();
}

uint64_t sub_15C01AC(uint64_t a1)
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
    *(a1 + 40) = 0;
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

uint64_t sub_15C0234(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v32 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v32, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v32 + 1);
    v8 = **v32;
    if (**v32 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v32, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v32 + 2);
      }
    }

    *v32 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      if (v11 != 3)
      {
        if (v11 != 4 || v8 != 34)
        {
          goto LABEL_36;
        }

        *(a1 + 16) |= 2u;
        v16 = *(a1 + 8);
        v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v17 = *v17;
        }

        v18 = (a1 + 32);
LABEL_28:
        v20 = sub_194DB04(v18, v17);
        v21 = sub_1958890(v20, *v32, a3);
LABEL_43:
        *v32 = v21;
        if (!v21)
        {
          goto LABEL_54;
        }

        goto LABEL_44;
      }

      if (v8 != 24)
      {
        goto LABEL_36;
      }

      v22 = v7 + 1;
      v23 = *v7;
      if (v23 < 0)
      {
        v24 = *v22;
        v25 = (v24 << 7) + v23;
        LODWORD(v23) = v25 - 128;
        if (v24 < 0)
        {
          *v32 = sub_19587DC(v7, (v25 - 128));
          if (!*v32)
          {
            goto LABEL_54;
          }

          LODWORD(v23) = v31;
          goto LABEL_34;
        }

        v22 = v7 + 2;
      }

      *v32 = v22;
LABEL_34:
      if (sub_13560D8(v23))
      {
        *(a1 + 16) |= 8u;
        *(a1 + 44) = v23;
      }

      else
      {
        sub_12E8578();
      }

      goto LABEL_44;
    }

    if (v11 == 1)
    {
      break;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_36;
    }

    v5 |= 4u;
    v14 = v7 + 1;
    v13 = *v7;
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

    v15 = *v14;
    v13 = (v15 << 7) + v13 - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v14 = v7 + 2;
LABEL_17:
      *v32 = v14;
      *(a1 + 40) = v13 != 0;
      goto LABEL_44;
    }

    v29 = sub_19587DC(v7, v13);
    *v32 = v29;
    *(a1 + 40) = v30 != 0;
    if (!v29)
    {
      goto LABEL_54;
    }

LABEL_44:
    if (sub_195ADC0(a3, v32, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 10)
  {
    *(a1 + 16) |= 1u;
    v19 = *(a1 + 8);
    v17 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v17 = *v17;
    }

    v18 = (a1 + 24);
    goto LABEL_28;
  }

LABEL_36:
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
      v7 = *v32;
    }

    v21 = sub_1952690(v8, v28, v7, a3);
    goto LABEL_43;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_54:
  *v32 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v32;
}

char *sub_15C04E0(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 40);
    *v4 = 16;
    v4[1] = v8;
    v4 += 2;
    if ((v6 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
  if ((v6 & 4) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 8) == 0)
  {
LABEL_4:
    v7 = v4;
    goto LABEL_16;
  }

LABEL_9:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v9 = *(a1 + 44);
  *v4 = 24;
  v4[1] = v9;
  if (v9 > 0x7F)
  {
    v4[1] = v9 | 0x80;
    v10 = v9 >> 7;
    v4[2] = v9 >> 7;
    v7 = v4 + 3;
    if (v9 >= 0x4000)
    {
      LOBYTE(v11) = v4[2];
      do
      {
        *(v7 - 1) = v11 | 0x80;
        v11 = v10 >> 7;
        *v7++ = v10 >> 7;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_16:
  if ((v6 & 2) != 0)
  {
    v7 = sub_128AEEC(a3, 4, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v7);
  }

  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return v7;
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

  if ((*a3 - v7) >= v16)
  {
    v18 = v16;
    memcpy(v7, v17, v16);
    v7 += v18;
    return v7;
  }

  return sub_1957130(a3, v17, v16, v7);
}

unint64_t sub_15C068C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v5 = v4;
    }

    v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 + ((v1 >> 1) & 2);
}

unint64_t sub_15C06E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((~v2 & 5) != 0)
  {
    result = sub_15C068C(a1);
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
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

  result = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 3;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v7 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    result += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  if ((v2 & 8) != 0)
  {
    v10 = *(a1 + 44);
    if (v10 < 0)
    {
      v11 = 11;
    }

    else
    {
      v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v11;
  }

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

uint64_t sub_15C0828(uint64_t a1)
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

  v5 = (a1 + 72);
  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 80) != &qword_278E990)
  {
    sub_194E89C((a1 + 80));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_9:
  sub_1956AFC((a1 + 48));
  sub_15D6E08((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15C08F4(uint64_t a1)
{
  sub_15C0828(a1);

  operator delete();
}

uint64_t sub_15C092C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      sub_15C01AC(v4);
      --v2;
    }

    while (v2);
    *(a1 + 32) = 0;
  }

  result = sub_12A41D0(a1 + 48);
  v6 = *(a1 + 16);
  if ((v6 & 3) != 0)
  {
    if (v6)
    {
      v7 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v7 + 23) < 0)
      {
        **v7 = 0;
        *(v7 + 8) = 0;
        if ((v6 & 2) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_10;
      }

      *v7 = 0;
      *(v7 + 23) = 0;
    }

    if ((v6 & 2) == 0)
    {
      goto LABEL_15;
    }

LABEL_10:
    v8 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
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

LABEL_15:
  if ((v6 & 0x1C) != 0)
  {
    *(a1 + 96) = 0;
    *(a1 + 88) = 0;
  }

  v10 = *(a1 + 8);
  v9 = a1 + 8;
  *(v9 + 8) = 0;
  if (v10)
  {

    return sub_1957EA8(v9);
  }

  return result;
}

uint64_t sub_15C0A2C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v51 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v51, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v51 + 1);
    v8 = **v51;
    if (**v51 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v51, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v51 + 2);
      }
    }

    *v51 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 3)
    {
      break;
    }

    if (v8 >> 3 > 5)
    {
      if (v11 != 6)
      {
        if (v11 == 7 && v8 == 58)
        {
          v20 = v7 - 1;
          while (1)
          {
            v21 = (v20 + 1);
            *v51 = v20 + 1;
            v22 = *(a1 + 64);
            if (v22 && (v23 = *(a1 + 56), v23 < *v22))
            {
              *(a1 + 56) = v23 + 1;
              v24 = *&v22[2 * v23 + 2];
            }

            else
            {
              v25 = *(a1 + 48);
              if (!v25)
              {
                operator new();
              }

              *v27 = v26;
              v27[1] = sub_195A650;
              *v26 = 0;
              v26[1] = 0;
              v26[2] = 0;
              v24 = sub_19593CC(a1 + 48, v26);
              v21 = *v51;
            }

            v20 = sub_1958890(v24, v21, a3);
            *v51 = v20;
            if (!v20)
            {
              goto LABEL_87;
            }

            if (*a3 <= v20 || *v20 != 58)
            {
              goto LABEL_75;
            }
          }
        }

        goto LABEL_67;
      }

      if (v8 != 50)
      {
        goto LABEL_67;
      }

      *(a1 + 16) |= 2u;
      v37 = *(a1 + 8);
      v13 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
      if (v37)
      {
        v13 = *v13;
      }

      v14 = (a1 + 80);
      goto LABEL_61;
    }

    if (v11 != 4)
    {
      if (v11 != 5 || v8 != 42)
      {
        goto LABEL_67;
      }

      *(a1 + 16) |= 1u;
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v14 = (a1 + 72);
LABEL_61:
      v38 = sub_194DB04(v14, v13);
      v39 = sub_1958890(v38, *v51, a3);
      goto LABEL_74;
    }

    if (v8 != 32)
    {
      goto LABEL_67;
    }

    v5 |= 0x10u;
    v34 = v7 + 1;
    v35 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_56;
    }

    v36 = *v34;
    v35 = v35 + (v36 << 7) - 128;
    if ((v36 & 0x80000000) == 0)
    {
      v34 = v7 + 2;
LABEL_56:
      *v51 = v34;
      *(a1 + 96) = v35;
      goto LABEL_75;
    }

    v46 = sub_1958770(v7, v35);
    *v51 = v46;
    *(a1 + 96) = v47;
    if (!v46)
    {
      goto LABEL_87;
    }

LABEL_75:
    if (sub_195ADC0(a3, v51, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 == 10)
    {
      v28 = v7 - 1;
      while (1)
      {
        v29 = v28 + 1;
        *v51 = v28 + 1;
        v30 = *(a1 + 40);
        if (v30 && (v31 = *(a1 + 32), v31 < *v30))
        {
          *(a1 + 32) = v31 + 1;
          v32 = *&v30[2 * v31 + 2];
        }

        else
        {
          v33 = sub_15D44EC(*(a1 + 24));
          v32 = sub_19593CC(a1 + 24, v33);
          v29 = *v51;
        }

        v28 = sub_22218DC(a3, v32, v29);
        *v51 = v28;
        if (!v28)
        {
          goto LABEL_87;
        }

        if (*a3 <= v28 || *v28 != 10)
        {
          goto LABEL_75;
        }
      }
    }

    goto LABEL_67;
  }

  if (v11 == 2)
  {
    if (v8 != 16)
    {
      goto LABEL_67;
    }

    v5 |= 4u;
    v41 = v7 + 1;
    v40 = *v7;
    if ((v40 & 0x8000000000000000) == 0)
    {
      goto LABEL_66;
    }

    v42 = *v41;
    v40 = (v42 << 7) + v40 - 128;
    if ((v42 & 0x80000000) == 0)
    {
      v41 = v7 + 2;
LABEL_66:
      *v51 = v41;
      *(a1 + 88) = v40 != 0;
      goto LABEL_75;
    }

    v49 = sub_19587DC(v7, v40);
    *v51 = v49;
    *(a1 + 88) = v50 != 0;
    if (!v49)
    {
      goto LABEL_87;
    }

    goto LABEL_75;
  }

  if (v11 == 3 && v8 == 24)
  {
    v16 = v7 + 1;
    v17 = *v7;
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_25;
    }

    v18 = *v16;
    v19 = (v18 << 7) + v17;
    LODWORD(v17) = v19 - 128;
    if (v18 < 0)
    {
      *v51 = sub_19587DC(v7, (v19 - 128));
      if (!*v51)
      {
        goto LABEL_87;
      }

      LODWORD(v17) = v48;
    }

    else
    {
      v16 = v7 + 2;
LABEL_25:
      *v51 = v16;
    }

    if (sub_13560D8(v17))
    {
      *(a1 + 16) |= 8u;
      *(a1 + 92) = v17;
    }

    else
    {
      sub_12E8578();
    }

    goto LABEL_75;
  }

LABEL_67:
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
      v7 = *v51;
    }

    v39 = sub_1952690(v8, v45, v7, a3);
LABEL_74:
    *v51 = v39;
    if (!v39)
    {
      goto LABEL_87;
    }

    goto LABEL_75;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_87:
  *v51 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v51;
}

char *sub_15C0EC4(uint64_t a1, char *__dst, unint64_t *a3)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v8 = *(*(a1 + 40) + 8 * i + 8);
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

      __dst = sub_15C04E0(v8, v10, a3);
    }
  }

  v11 = *(a1 + 16);
  if ((v11 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v12 = *(a1 + 88);
    *__dst = 16;
    __dst[1] = v12;
    __dst += 2;
  }

  if ((v11 & 8) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v14 = *(a1 + 92);
    *__dst = 24;
    __dst[1] = v14;
    if (v14 > 0x7F)
    {
      __dst[1] = v14 | 0x80;
      v15 = v14 >> 7;
      __dst[2] = v14 >> 7;
      v13 = __dst + 3;
      if (v14 >= 0x4000)
      {
        LOBYTE(__dst) = __dst[2];
        do
        {
          *(v13 - 1) = __dst | 0x80;
          __dst = (v15 >> 7);
          *v13++ = v15 >> 7;
          v16 = v15 >> 14;
          v15 >>= 7;
        }

        while (v16);
      }
    }

    else
    {
      v13 = __dst + 2;
    }
  }

  else
  {
    v13 = __dst;
  }

  if ((v11 & 0x10) != 0)
  {
    if (*a3 <= v13)
    {
      v13 = sub_225EB68(a3, v13);
    }

    v18 = *(a1 + 96);
    *v13 = 32;
    v13[1] = v18;
    if (v18 > 0x7F)
    {
      v13[1] = v18 | 0x80;
      v19 = v18 >> 7;
      v13[2] = v18 >> 7;
      v17 = v13 + 3;
      if (v18 >= 0x4000)
      {
        LOBYTE(v13) = v13[2];
        do
        {
          *(v17 - 1) = v13 | 0x80;
          LODWORD(v13) = v19 >> 7;
          *v17++ = v19 >> 7;
          v20 = v19 >> 14;
          v19 >>= 7;
        }

        while (v20);
      }
    }

    else
    {
      v17 = v13 + 2;
    }
  }

  else
  {
    v17 = v13;
  }

  if (v11)
  {
    v17 = sub_128AEEC(a3, 5, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), v17);
  }

  if ((v11 & 2) != 0)
  {
    v17 = sub_128AEEC(a3, 6, (*(a1 + 80) & 0xFFFFFFFFFFFFFFFELL), v17);
  }

  v21 = *(a1 + 56);
  if (v21 >= 1)
  {
    v22 = 8;
    do
    {
      v23 = *(*(a1 + 64) + v22);
      v24 = *(v23 + 23);
      if (v24 < 0 && (v24 = v23[1], v24 > 127) || (*a3 - v17 + 14) < v24)
      {
        v17 = sub_1957480(a3, 7, v23, v17);
      }

      else
      {
        *v17 = 58;
        v17[1] = v24;
        if (*(v23 + 23) < 0)
        {
          v23 = *v23;
        }

        v25 = v17 + 2;
        memcpy(v25, v23, v24);
        v17 = &v25[v24];
      }

      v22 += 8;
      --v21;
    }

    while (v21);
  }

  v26 = *(a1 + 8);
  if ((v26 & 1) == 0)
  {
    return v17;
  }

  v28 = v26 & 0xFFFFFFFFFFFFFFFCLL;
  v29 = *(v28 + 31);
  if (v29 < 0)
  {
    v30 = *(v28 + 8);
    v29 = *(v28 + 16);
  }

  else
  {
    v30 = (v28 + 8);
  }

  if ((*a3 - v17) >= v29)
  {
    v31 = v29;
    memcpy(v17, v30, v29);
    v17 += v31;
    return v17;
  }

  return sub_1957130(a3, v30, v29, v17);
}

uint64_t sub_15C1228(uint64_t a1)
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
      v7 = sub_15C06E8(v6);
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
  result = v2 + v8;
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

      result += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6);
      --v8;
    }

    while (v8);
  }

  v14 = *(a1 + 16);
  if ((v14 & 0x1F) != 0)
  {
    if (v14)
    {
      v15 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
      v16 = *(v15 + 23);
      v17 = *(v15 + 8);
      if ((v16 & 0x80u) == 0)
      {
        v17 = v16;
      }

      result += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v14 & 2) != 0)
    {
      v18 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
      v19 = *(v18 + 23);
      v20 = *(v18 + 8);
      if ((v19 & 0x80u) == 0)
      {
        v20 = v19;
      }

      result += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += (v14 >> 1) & 2;
    if ((v14 & 8) != 0)
    {
      v21 = *(a1 + 92);
      v22 = ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v21 >= 0)
      {
        v23 = v22;
      }

      else
      {
        v23 = 11;
      }

      result += v23;
    }

    if ((v14 & 0x10) != 0)
    {
      result += ((9 * (__clz(*(a1 + 96) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v24 = *(a1 + 8);
  if (v24)
  {
    v25 = v24 & 0xFFFFFFFFFFFFFFFCLL;
    v26 = *((v24 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v26 < 0)
    {
      v26 = *(v25 + 16);
    }

    result += v26;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_15C1420(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_15D7438((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

  v14 = *(a2 + 16);
  if ((v14 & 0x1F) != 0)
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

        goto LABEL_25;
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

      goto LABEL_26;
    }

LABEL_25:
    *(a1 + 88) = *(a2 + 88);
    if ((v14 & 8) == 0)
    {
LABEL_12:
      if ((v14 & 0x10) == 0)
      {
LABEL_14:
        *(a1 + 16) |= v14;
        goto LABEL_15;
      }

LABEL_13:
      *(a1 + 96) = *(a2 + 96);
      goto LABEL_14;
    }

LABEL_26:
    *(a1 + 92) = *(a2 + 92);
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_15:
  v15 = *(a2 + 8);
  if (v15)
  {

    sub_1957EF4((a1 + 8), (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_15C15F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  do
  {
    v2 = v1;
    if (v1 < 1)
    {
      break;
    }

    v3 = *(*(a1 + 40) + 8 * v1--);
  }

  while ((~*(v3 + 16) & 5) == 0);
  return v2 < 1;
}

double sub_15C1638(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_26F4678;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0uLL;
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0uLL;
  *(a1 + 72) = a2;
  result = 0.0;
  *(a1 + 80) = 0;
  *(a1 + 88) = a2;
  *(a1 + 96) = a2;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = a2;
  *(a1 + 136) = a2;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = a2;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = a2;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
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
  *(a1 + 304) = a2;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = a2;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = a2;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = a2;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = a2;
  *(a1 + 416) = 0;
  *(a1 + 424) = a2;
  *(a1 + 432) = 0;
  *(a1 + 440) = a2;
  *(a1 + 448) = 0;
  *(a1 + 456) = a2;
  *(a1 + 464) = a2;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = a2;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = a2;
  *(a1 + 528) = 0;
  *(a1 + 536) = a2;
  *(a1 + 544) = 0;
  *(a1 + 552) = a2;
  *(a1 + 560) = 0;
  *(a1 + 568) = a2;
  *(a1 + 576) = 0;
  *(a1 + 584) = a2;
  *(a1 + 592) = 0;
  *(a1 + 600) = a2;
  *(a1 + 608) = 0;
  *(a1 + 616) = a2;
  *(a1 + 624) = 0;
  *(a1 + 632) = a2;
  *(a1 + 640) = 0;
  *(a1 + 648) = a2;
  *(a1 + 656) = 0;
  *(a1 + 664) = a2;
  *(a1 + 672) = &qword_278E990;
  *(a1 + 680) = &qword_278E990;
  *(a1 + 688) = &qword_278E990;
  *(a1 + 696) = &qword_278E990;
  *(a1 + 704) = &qword_278E990;
  *(a1 + 712) = &qword_278E990;
  *(a1 + 720) = &qword_278E990;
  *(a1 + 728) = &qword_278E990;
  *(a1 + 736) = &qword_278E990;
  *(a1 + 744) = &qword_278E990;
  *(a1 + 752) = &qword_278E990;
  *(a1 + 760) = &qword_278E990;
  *(a1 + 768) = &qword_278E990;
  *(a1 + 776) = &qword_278E990;
  *(a1 + 784) = &qword_278E990;
  *(a1 + 792) = &qword_278E990;
  *(a1 + 800) = &qword_278E990;
  *(a1 + 808) = &qword_278E990;
  *(a1 + 816) = &qword_278E990;
  *(a1 + 824) = &qword_278E990;
  *(a1 + 832) = &qword_278E990;
  *(a1 + 840) = &qword_278E990;
  *(a1 + 848) = &qword_278E990;
  *(a1 + 856) = &qword_278E990;
  *(a1 + 1216) = 0;
  *(a1 + 1200) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1136) = 0u;
  *(a1 + 1120) = 0u;
  *(a1 + 1104) = 0u;
  *(a1 + 1088) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 864) = 0u;
  return result;
}

void *sub_15C17FC(void *a1)
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

  sub_15C19A4(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956ABC((a1 + 82));
  sub_1956ABC((a1 + 80));
  sub_1956ABC((a1 + 78));
  sub_1956ABC((a1 + 76));
  sub_1956ABC((a1 + 74));
  sub_1956ABC((a1 + 72));
  sub_1956ABC((a1 + 70));
  sub_1956ABC((a1 + 68));
  sub_1956ABC((a1 + 66));
  sub_1956ABC((a1 + 64));
  sub_12E5CA0(a1 + 61);
  sub_15B47B0(a1 + 58);
  sub_1956ABC((a1 + 56));
  sub_1956ABC((a1 + 54));
  sub_1956ABC((a1 + 52));
  sub_1956ABC((a1 + 50));
  sub_15D6AE8(a1 + 47);
  sub_1311EE8(a1 + 44);
  sub_1311EE8(a1 + 41);
  sub_15D6F10(a1 + 38);
  sub_15B472C(a1 + 35);
  sub_1956AFC(a1 + 32);
  sub_1956AFC(a1 + 29);
  sub_1956AFC(a1 + 26);
  sub_1956AFC(a1 + 23);
  sub_1956AFC(a1 + 20);
  sub_1956AFC(a1 + 17);
  sub_1956ABC((a1 + 15));
  sub_1311EE8(a1 + 12);
  sub_1956ABC((a1 + 10));
  sub_1956ABC((a1 + 8));
  sub_15D6E8C(a1 + 5);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t sub_15C19A4(uint64_t result)
{
  v1 = result;
  if (*(result + 672) != &qword_278E990)
  {
    sub_194E89C((result + 672));
  }

  if (*(result + 680) != &qword_278E990)
  {
    sub_194E89C((result + 680));
  }

  if (*(result + 688) != &qword_278E990)
  {
    sub_194E89C((result + 688));
  }

  if (*(result + 696) != &qword_278E990)
  {
    sub_194E89C((result + 696));
  }

  if (*(result + 704) != &qword_278E990)
  {
    sub_194E89C((result + 704));
  }

  if (*(result + 712) != &qword_278E990)
  {
    sub_194E89C((result + 712));
  }

  if (*(result + 720) != &qword_278E990)
  {
    sub_194E89C((result + 720));
  }

  if (*(result + 728) != &qword_278E990)
  {
    sub_194E89C((result + 728));
  }

  if (*(result + 736) != &qword_278E990)
  {
    sub_194E89C((result + 736));
  }

  if (*(result + 744) != &qword_278E990)
  {
    sub_194E89C((result + 744));
  }

  if (*(result + 752) != &qword_278E990)
  {
    sub_194E89C((result + 752));
  }

  if (*(result + 760) != &qword_278E990)
  {
    sub_194E89C((result + 760));
  }

  if (*(result + 768) != &qword_278E990)
  {
    sub_194E89C((result + 768));
  }

  if (*(result + 776) != &qword_278E990)
  {
    sub_194E89C((result + 776));
  }

  if (*(result + 784) != &qword_278E990)
  {
    sub_194E89C((result + 784));
  }

  if (*(result + 792) != &qword_278E990)
  {
    sub_194E89C((result + 792));
  }

  if (*(result + 800) != &qword_278E990)
  {
    sub_194E89C((result + 800));
  }

  if (*(result + 808) != &qword_278E990)
  {
    sub_194E89C((result + 808));
  }

  if (*(result + 816) != &qword_278E990)
  {
    sub_194E89C((result + 816));
  }

  if (*(result + 824) != &qword_278E990)
  {
    sub_194E89C((result + 824));
  }

  if (*(result + 832) != &qword_278E990)
  {
    sub_194E89C((result + 832));
  }

  if (*(result + 840) != &qword_278E990)
  {
    sub_194E89C((result + 840));
  }

  if (*(result + 848) != &qword_278E990)
  {
    sub_194E89C((result + 848));
  }

  if (*(result + 856) != &qword_278E990)
  {
    sub_194E89C((result + 856));
  }

  if (result != &off_2778DA8)
  {
    v2 = *(result + 864);
    if (v2)
    {
      sub_15B7720(v2);
      operator delete();
    }

    v3 = v1[109];
    if (v3)
    {
      sub_16EE080(v3);
      operator delete();
    }

    v4 = v1[110];
    if (v4)
    {
      sub_16E8374(v4);
      operator delete();
    }

    v5 = v1[111];
    if (v5)
    {
      sub_153FD8C(v5);
      operator delete();
    }

    v6 = v1[112];
    if (v6)
    {
      sub_15B7720(v6);
      operator delete();
    }

    v7 = v1[113];
    if (v7)
    {
      sub_15CA1B4(v7);
      operator delete();
    }

    v8 = v1[114];
    if (v8)
    {
      sub_15BA884(v8);
      operator delete();
    }

    v9 = v1[115];
    if (v9)
    {
      sub_15B6B04(v9);
      operator delete();
    }

    v10 = v1[116];
    if (v10)
    {
      sub_15B9B44(v10);
      operator delete();
    }

    v11 = v1[117];
    if (v11)
    {
      sub_15B9B44(v11);
      operator delete();
    }

    v12 = v1[118];
    if (v12)
    {
      sub_15C0828(v12);
      operator delete();
    }

    v13 = v1[119];
    if (v13)
    {
      sub_15B7D58(v13);
      operator delete();
    }

    v14 = v1[120];
    if (v14)
    {
      sub_15C0828(v14);
      operator delete();
    }

    v15 = v1[121];
    if (v15)
    {
      sub_15B6FF0(v15);
      operator delete();
    }

    v16 = v1[122];
    if (v16)
    {
      sub_15B6B04(v16);
      operator delete();
    }

    v17 = v1[123];
    if (v17)
    {
      sub_15B7D58(v17);
      operator delete();
    }

    v18 = v1[124];
    if (v18)
    {
      sub_15B7D58(v18);
      operator delete();
    }

    v19 = v1[125];
    if (v19)
    {
      sub_15B7720(v19);
      operator delete();
    }

    v20 = v1[126];
    if (v20)
    {
      sub_16D6238(v20);
      operator delete();
    }

    v21 = v1[127];
    if (v21)
    {
      sub_15BF960(v21);
      operator delete();
    }

    v22 = v1[128];
    if (v22)
    {
      sub_15B6B04(v22);
      operator delete();
    }

    v23 = v1[129];
    if (v23)
    {
      sub_15B9B44(v23);
      operator delete();
    }

    v24 = v1[130];
    if (v24)
    {
      sub_132BEF4(v24);
      operator delete();
    }

    v25 = v1[131];
    if (v25)
    {
      sub_132D100(v25);
      operator delete();
    }

    v26 = v1[132];
    if (v26)
    {
      sub_153AC8C(v26);
      operator delete();
    }

    v27 = v1[133];
    if (v27)
    {
      sub_167E6D8(v27);
      operator delete();
    }

    v28 = v1[134];
    if (v28)
    {
      sub_167E6D8(v28);
      operator delete();
    }

    result = v1[135];
    if (result)
    {
      sub_16E4E08(result);

      operator delete();
    }
  }

  return result;
}

void sub_15C1F00(void *a1)
{
  sub_15C17FC(a1);

  operator delete();
}

uint64_t sub_15C1F38(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 56) + 8);
    do
    {
      v4 = *v3++;
      sub_16D5174(v4);
      --v2;
    }

    while (v2);
    *(a1 + 48) = 0;
  }

  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  v5 = *(a1 + 104);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 112) + 8);
    do
    {
      v7 = *v6++;
      sub_1579070(v7);
      --v5;
    }

    while (v5);
    *(a1 + 104) = 0;
  }

  *(a1 + 120) = 0;
  sub_12A41D0(a1 + 136);
  sub_12A41D0(a1 + 160);
  sub_12A41D0(a1 + 184);
  sub_12A41D0(a1 + 208);
  sub_12A41D0(a1 + 232);
  result = sub_12A41D0(a1 + 256);
  v9 = *(a1 + 288);
  if (v9 >= 1)
  {
    v10 = (*(a1 + 296) + 8);
    do
    {
      v11 = *v10++;
      result = sub_157A3FC(v11);
      --v9;
    }

    while (v9);
    *(a1 + 288) = 0;
  }

  v12 = *(a1 + 312);
  if (v12 >= 1)
  {
    v13 = (*(a1 + 320) + 8);
    do
    {
      v14 = *v13++;
      result = sub_15BF5DC(v14);
      --v12;
    }

    while (v12);
    *(a1 + 312) = 0;
  }

  v15 = *(a1 + 336);
  if (v15 >= 1)
  {
    v16 = (*(a1 + 344) + 8);
    do
    {
      v17 = *v16++;
      result = sub_1579070(v17);
      --v15;
    }

    while (v15);
    *(a1 + 336) = 0;
  }

  v18 = *(a1 + 360);
  if (v18 >= 1)
  {
    v19 = (*(a1 + 368) + 8);
    do
    {
      v20 = *v19++;
      result = sub_1579070(v20);
      --v18;
    }

    while (v18);
    *(a1 + 360) = 0;
  }

  v21 = *(a1 + 384);
  if (v21 >= 1)
  {
    v22 = (*(a1 + 392) + 8);
    do
    {
      v23 = *v22++;
      result = sub_15BB118(v23);
      --v21;
    }

    while (v21);
    *(a1 + 384) = 0;
  }

  *(a1 + 400) = 0;
  *(a1 + 416) = 0;
  *(a1 + 432) = 0;
  *(a1 + 448) = 0;
  v24 = *(a1 + 472);
  if (v24 >= 1)
  {
    v25 = (*(a1 + 480) + 8);
    do
    {
      v26 = *v25++;
      result = sub_157A82C(v26);
      --v24;
    }

    while (v24);
    *(a1 + 472) = 0;
  }

  v27 = *(a1 + 496);
  if (v27 >= 1)
  {
    v28 = (*(a1 + 504) + 8);
    do
    {
      v29 = *v28++;
      result = sub_16EEC04(v29);
      --v27;
    }

    while (v27);
    *(a1 + 496) = 0;
  }

  v30 = *(a1 + 16);
  *(a1 + 512) = 0;
  *(a1 + 528) = 0;
  *(a1 + 544) = 0;
  *(a1 + 560) = 0;
  *(a1 + 576) = 0;
  *(a1 + 592) = 0;
  *(a1 + 608) = 0;
  *(a1 + 624) = 0;
  *(a1 + 640) = 0;
  *(a1 + 656) = 0;
  if (v30)
  {
    if ((v30 & 1) == 0)
    {
      if ((v30 & 2) == 0)
      {
        goto LABEL_40;
      }

LABEL_51:
      v32 = *(a1 + 680) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v32 + 23) < 0)
      {
        **v32 = 0;
        *(v32 + 8) = 0;
        if ((v30 & 4) != 0)
        {
          goto LABEL_55;
        }
      }

      else
      {
        *v32 = 0;
        *(v32 + 23) = 0;
        if ((v30 & 4) != 0)
        {
          goto LABEL_55;
        }
      }

LABEL_41:
      if ((v30 & 8) == 0)
      {
        goto LABEL_42;
      }

LABEL_59:
      v34 = *(a1 + 696) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v34 + 23) < 0)
      {
        **v34 = 0;
        *(v34 + 8) = 0;
        if ((v30 & 0x10) != 0)
        {
          goto LABEL_63;
        }
      }

      else
      {
        *v34 = 0;
        *(v34 + 23) = 0;
        if ((v30 & 0x10) != 0)
        {
          goto LABEL_63;
        }
      }

LABEL_43:
      if ((v30 & 0x20) == 0)
      {
        goto LABEL_44;
      }

LABEL_67:
      v36 = *(a1 + 712) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v36 + 23) < 0)
      {
        **v36 = 0;
        *(v36 + 8) = 0;
        if ((v30 & 0x40) != 0)
        {
          goto LABEL_71;
        }
      }

      else
      {
        *v36 = 0;
        *(v36 + 23) = 0;
        if ((v30 & 0x40) != 0)
        {
          goto LABEL_71;
        }
      }

LABEL_45:
      if ((v30 & 0x80) == 0)
      {
        goto LABEL_78;
      }

LABEL_75:
      v38 = *(a1 + 728) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v38 + 23) < 0)
      {
        **v38 = 0;
        *(v38 + 8) = 0;
      }

      else
      {
        *v38 = 0;
        *(v38 + 23) = 0;
      }

      goto LABEL_78;
    }

    v31 = *(a1 + 672) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v31 + 23) < 0)
    {
      **v31 = 0;
      *(v31 + 8) = 0;
      if ((v30 & 2) != 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      *v31 = 0;
      *(v31 + 23) = 0;
      if ((v30 & 2) != 0)
      {
        goto LABEL_51;
      }
    }

LABEL_40:
    if ((v30 & 4) == 0)
    {
      goto LABEL_41;
    }

LABEL_55:
    v33 = *(a1 + 688) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v33 + 23) < 0)
    {
      **v33 = 0;
      *(v33 + 8) = 0;
      if ((v30 & 8) != 0)
      {
        goto LABEL_59;
      }
    }

    else
    {
      *v33 = 0;
      *(v33 + 23) = 0;
      if ((v30 & 8) != 0)
      {
        goto LABEL_59;
      }
    }

LABEL_42:
    if ((v30 & 0x10) == 0)
    {
      goto LABEL_43;
    }

LABEL_63:
    v35 = *(a1 + 704) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v35 + 23) < 0)
    {
      **v35 = 0;
      *(v35 + 8) = 0;
      if ((v30 & 0x20) != 0)
      {
        goto LABEL_67;
      }
    }

    else
    {
      *v35 = 0;
      *(v35 + 23) = 0;
      if ((v30 & 0x20) != 0)
      {
        goto LABEL_67;
      }
    }

LABEL_44:
    if ((v30 & 0x40) == 0)
    {
      goto LABEL_45;
    }

LABEL_71:
    v37 = *(a1 + 720) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v37 + 23) < 0)
    {
      **v37 = 0;
      *(v37 + 8) = 0;
      if ((v30 & 0x80) == 0)
      {
        goto LABEL_78;
      }
    }

    else
    {
      *v37 = 0;
      *(v37 + 23) = 0;
      if ((v30 & 0x80) == 0)
      {
        goto LABEL_78;
      }
    }

    goto LABEL_75;
  }

LABEL_78:
  if ((v30 & 0xFF00) == 0)
  {
    goto LABEL_119;
  }

  if ((v30 & 0x100) == 0)
  {
    if ((v30 & 0x200) == 0)
    {
      goto LABEL_81;
    }

LABEL_92:
    v40 = *(a1 + 744) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v40 + 23) < 0)
    {
      **v40 = 0;
      *(v40 + 8) = 0;
      if ((v30 & 0x400) != 0)
      {
        goto LABEL_96;
      }
    }

    else
    {
      *v40 = 0;
      *(v40 + 23) = 0;
      if ((v30 & 0x400) != 0)
      {
        goto LABEL_96;
      }
    }

LABEL_82:
    if ((v30 & 0x800) == 0)
    {
      goto LABEL_83;
    }

LABEL_100:
    v42 = *(a1 + 760) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v42 + 23) < 0)
    {
      **v42 = 0;
      *(v42 + 8) = 0;
      if ((v30 & 0x1000) != 0)
      {
        goto LABEL_104;
      }
    }

    else
    {
      *v42 = 0;
      *(v42 + 23) = 0;
      if ((v30 & 0x1000) != 0)
      {
        goto LABEL_104;
      }
    }

LABEL_84:
    if ((v30 & 0x2000) == 0)
    {
      goto LABEL_85;
    }

LABEL_108:
    v44 = *(a1 + 776) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v44 + 23) < 0)
    {
      **v44 = 0;
      *(v44 + 8) = 0;
      if ((v30 & 0x4000) != 0)
      {
        goto LABEL_112;
      }
    }

    else
    {
      *v44 = 0;
      *(v44 + 23) = 0;
      if ((v30 & 0x4000) != 0)
      {
        goto LABEL_112;
      }
    }

LABEL_86:
    if ((v30 & 0x8000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_116;
  }

  v39 = *(a1 + 736) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v39 + 23) < 0)
  {
    **v39 = 0;
    *(v39 + 8) = 0;
    if ((v30 & 0x200) != 0)
    {
      goto LABEL_92;
    }
  }

  else
  {
    *v39 = 0;
    *(v39 + 23) = 0;
    if ((v30 & 0x200) != 0)
    {
      goto LABEL_92;
    }
  }

LABEL_81:
  if ((v30 & 0x400) == 0)
  {
    goto LABEL_82;
  }

LABEL_96:
  v41 = *(a1 + 752) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v41 + 23) < 0)
  {
    **v41 = 0;
    *(v41 + 8) = 0;
    if ((v30 & 0x800) != 0)
    {
      goto LABEL_100;
    }
  }

  else
  {
    *v41 = 0;
    *(v41 + 23) = 0;
    if ((v30 & 0x800) != 0)
    {
      goto LABEL_100;
    }
  }

LABEL_83:
  if ((v30 & 0x1000) == 0)
  {
    goto LABEL_84;
  }

LABEL_104:
  v43 = *(a1 + 768) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v43 + 23) < 0)
  {
    **v43 = 0;
    *(v43 + 8) = 0;
    if ((v30 & 0x2000) != 0)
    {
      goto LABEL_108;
    }
  }

  else
  {
    *v43 = 0;
    *(v43 + 23) = 0;
    if ((v30 & 0x2000) != 0)
    {
      goto LABEL_108;
    }
  }

LABEL_85:
  if ((v30 & 0x4000) == 0)
  {
    goto LABEL_86;
  }

LABEL_112:
  v45 = *(a1 + 784) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v45 + 23) < 0)
  {
    **v45 = 0;
    *(v45 + 8) = 0;
    if ((v30 & 0x8000) == 0)
    {
      goto LABEL_119;
    }
  }

  else
  {
    *v45 = 0;
    *(v45 + 23) = 0;
    if ((v30 & 0x8000) == 0)
    {
      goto LABEL_119;
    }
  }

LABEL_116:
  v46 = *(a1 + 792) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v46 + 23) < 0)
  {
    **v46 = 0;
    *(v46 + 8) = 0;
  }

  else
  {
    *v46 = 0;
    *(v46 + 23) = 0;
  }

LABEL_119:
  if ((v30 & 0xFF0000) == 0)
  {
    goto LABEL_160;
  }

  if ((v30 & 0x10000) == 0)
  {
    if ((v30 & 0x20000) == 0)
    {
      goto LABEL_122;
    }

LABEL_133:
    v48 = *(a1 + 808) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v48 + 23) < 0)
    {
      **v48 = 0;
      *(v48 + 8) = 0;
      if ((v30 & 0x40000) != 0)
      {
        goto LABEL_137;
      }
    }

    else
    {
      *v48 = 0;
      *(v48 + 23) = 0;
      if ((v30 & 0x40000) != 0)
      {
        goto LABEL_137;
      }
    }

LABEL_123:
    if ((v30 & 0x80000) == 0)
    {
      goto LABEL_124;
    }

LABEL_141:
    v50 = *(a1 + 824) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v50 + 23) < 0)
    {
      **v50 = 0;
      *(v50 + 8) = 0;
      if ((v30 & 0x100000) != 0)
      {
        goto LABEL_145;
      }
    }

    else
    {
      *v50 = 0;
      *(v50 + 23) = 0;
      if ((v30 & 0x100000) != 0)
      {
        goto LABEL_145;
      }
    }

LABEL_125:
    if ((v30 & 0x200000) == 0)
    {
      goto LABEL_126;
    }

LABEL_149:
    v52 = *(a1 + 840) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v52 + 23) < 0)
    {
      **v52 = 0;
      *(v52 + 8) = 0;
      if ((v30 & 0x400000) != 0)
      {
        goto LABEL_153;
      }
    }

    else
    {
      *v52 = 0;
      *(v52 + 23) = 0;
      if ((v30 & 0x400000) != 0)
      {
        goto LABEL_153;
      }
    }

LABEL_127:
    if ((v30 & 0x800000) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_157;
  }

  v47 = *(a1 + 800) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v47 + 23) < 0)
  {
    **v47 = 0;
    *(v47 + 8) = 0;
    if ((v30 & 0x20000) != 0)
    {
      goto LABEL_133;
    }
  }

  else
  {
    *v47 = 0;
    *(v47 + 23) = 0;
    if ((v30 & 0x20000) != 0)
    {
      goto LABEL_133;
    }
  }

LABEL_122:
  if ((v30 & 0x40000) == 0)
  {
    goto LABEL_123;
  }

LABEL_137:
  v49 = *(a1 + 816) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v49 + 23) < 0)
  {
    **v49 = 0;
    *(v49 + 8) = 0;
    if ((v30 & 0x80000) != 0)
    {
      goto LABEL_141;
    }
  }

  else
  {
    *v49 = 0;
    *(v49 + 23) = 0;
    if ((v30 & 0x80000) != 0)
    {
      goto LABEL_141;
    }
  }

LABEL_124:
  if ((v30 & 0x100000) == 0)
  {
    goto LABEL_125;
  }

LABEL_145:
  v51 = *(a1 + 832) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v51 + 23) < 0)
  {
    **v51 = 0;
    *(v51 + 8) = 0;
    if ((v30 & 0x200000) != 0)
    {
      goto LABEL_149;
    }
  }

  else
  {
    *v51 = 0;
    *(v51 + 23) = 0;
    if ((v30 & 0x200000) != 0)
    {
      goto LABEL_149;
    }
  }

LABEL_126:
  if ((v30 & 0x400000) == 0)
  {
    goto LABEL_127;
  }

LABEL_153:
  v53 = *(a1 + 848) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v53 + 23) < 0)
  {
    **v53 = 0;
    *(v53 + 8) = 0;
    if ((v30 & 0x800000) == 0)
    {
      goto LABEL_160;
    }
  }

  else
  {
    *v53 = 0;
    *(v53 + 23) = 0;
    if ((v30 & 0x800000) == 0)
    {
      goto LABEL_160;
    }
  }

LABEL_157:
  v54 = *(a1 + 856) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v54 + 23) < 0)
  {
    **v54 = 0;
    *(v54 + 8) = 0;
  }

  else
  {
    *v54 = 0;
    *(v54 + 23) = 0;
  }

LABEL_160:
  if (!HIBYTE(v30))
  {
    goto LABEL_169;
  }

  if ((v30 & 0x1000000) != 0)
  {
    result = sub_15B77D8(*(a1 + 864));
    if ((v30 & 0x2000000) == 0)
    {
LABEL_163:
      if ((v30 & 0x4000000) == 0)
      {
        goto LABEL_164;
      }

      goto LABEL_243;
    }
  }

  else if ((v30 & 0x2000000) == 0)
  {
    goto LABEL_163;
  }

  result = sub_16EE0BC(*(a1 + 872));
  if ((v30 & 0x4000000) == 0)
  {
LABEL_164:
    if ((v30 & 0x8000000) == 0)
    {
      goto LABEL_165;
    }

    goto LABEL_244;
  }

LABEL_243:
  result = sub_16E48B0(*(a1 + 880));
  if ((v30 & 0x8000000) == 0)
  {
LABEL_165:
    if ((v30 & 0x10000000) == 0)
    {
      goto LABEL_166;
    }

    goto LABEL_245;
  }

LABEL_244:
  result = sub_153FDC8(*(a1 + 888));
  if ((v30 & 0x10000000) == 0)
  {
LABEL_166:
    if ((v30 & 0x20000000) == 0)
    {
      goto LABEL_167;
    }

    goto LABEL_246;
  }

LABEL_245:
  result = sub_15B77D8(*(a1 + 896));
  if ((v30 & 0x20000000) == 0)
  {
LABEL_167:
    if ((v30 & 0x40000000) == 0)
    {
      goto LABEL_168;
    }

LABEL_247:
    result = sub_15BA988(*(a1 + 912));
    if ((v30 & 0x80000000) == 0)
    {
      goto LABEL_169;
    }

    goto LABEL_248;
  }

LABEL_246:
  result = sub_15C2918(*(a1 + 904));
  if ((v30 & 0x40000000) != 0)
  {
    goto LABEL_247;
  }

LABEL_168:
  if ((v30 & 0x80000000) == 0)
  {
    goto LABEL_169;
  }

LABEL_248:
  result = sub_15B6ACC(*(a1 + 920));
LABEL_169:
  v55 = *(a1 + 20);
  if (!v55)
  {
    goto LABEL_179;
  }

  if (v55)
  {
    result = sub_15B9CCC(*(a1 + 928));
    if ((v55 & 2) == 0)
    {
LABEL_172:
      if ((v55 & 4) == 0)
      {
        goto LABEL_173;
      }

      goto LABEL_223;
    }
  }

  else if ((v55 & 2) == 0)
  {
    goto LABEL_172;
  }

  result = sub_15B9CCC(*(a1 + 936));
  if ((v55 & 4) == 0)
  {
LABEL_173:
    if ((v55 & 8) == 0)
    {
      goto LABEL_174;
    }

    goto LABEL_224;
  }

LABEL_223:
  result = sub_15C092C(*(a1 + 944));
  if ((v55 & 8) == 0)
  {
LABEL_174:
    if ((v55 & 0x10) == 0)
    {
      goto LABEL_175;
    }

    goto LABEL_225;
  }

LABEL_224:
  result = sub_15B7E04(*(a1 + 952));
  if ((v55 & 0x10) == 0)
  {
LABEL_175:
    if ((v55 & 0x20) == 0)
    {
      goto LABEL_176;
    }

    goto LABEL_226;
  }

LABEL_225:
  result = sub_15C092C(*(a1 + 960));
  if ((v55 & 0x20) == 0)
  {
LABEL_176:
    if ((v55 & 0x40) == 0)
    {
      goto LABEL_177;
    }

    goto LABEL_227;
  }

LABEL_226:
  result = sub_15B70F8(*(a1 + 968));
  if ((v55 & 0x40) == 0)
  {
LABEL_177:
    if ((v55 & 0x80) == 0)
    {
      goto LABEL_179;
    }

    goto LABEL_178;
  }

LABEL_227:
  result = sub_15B6ACC(*(a1 + 976));
  if ((v55 & 0x80) != 0)
  {
LABEL_178:
    result = sub_15B7E04(*(a1 + 984));
  }

LABEL_179:
  if ((v55 & 0xFF00) == 0)
  {
    goto LABEL_189;
  }

  if ((v55 & 0x100) != 0)
  {
    result = sub_15B7E04(*(a1 + 992));
    if ((v55 & 0x200) == 0)
    {
LABEL_182:
      if ((v55 & 0x400) == 0)
      {
        goto LABEL_183;
      }

      goto LABEL_231;
    }
  }

  else if ((v55 & 0x200) == 0)
  {
    goto LABEL_182;
  }

  result = sub_15B77D8(*(a1 + 1000));
  if ((v55 & 0x400) == 0)
  {
LABEL_183:
    if ((v55 & 0x800) == 0)
    {
      goto LABEL_184;
    }

    goto LABEL_232;
  }

LABEL_231:
  result = sub_16D6274(*(a1 + 1008));
  if ((v55 & 0x800) == 0)
  {
LABEL_184:
    if ((v55 & 0x1000) == 0)
    {
      goto LABEL_185;
    }

    goto LABEL_233;
  }

LABEL_232:
  result = sub_15BFA64(*(a1 + 1016));
  if ((v55 & 0x1000) == 0)
  {
LABEL_185:
    if ((v55 & 0x2000) == 0)
    {
      goto LABEL_186;
    }

    goto LABEL_234;
  }

LABEL_233:
  result = sub_15B6ACC(*(a1 + 1024));
  if ((v55 & 0x2000) == 0)
  {
LABEL_186:
    if ((v55 & 0x4000) == 0)
    {
      goto LABEL_187;
    }

    goto LABEL_235;
  }

LABEL_234:
  result = sub_15B9CCC(*(a1 + 1032));
  if ((v55 & 0x4000) == 0)
  {
LABEL_187:
    if ((v55 & 0x8000) == 0)
    {
      goto LABEL_189;
    }

    goto LABEL_188;
  }

LABEL_235:
  result = sub_132BF30(*(a1 + 1040));
  if ((v55 & 0x8000) != 0)
  {
LABEL_188:
    result = sub_132D13C(*(a1 + 1048));
  }

LABEL_189:
  if ((v55 & 0xF0000) == 0)
  {
    goto LABEL_195;
  }

  if ((v55 & 0x10000) != 0)
  {
    result = sub_153ACC8(*(a1 + 1056));
    if ((v55 & 0x20000) == 0)
    {
LABEL_192:
      if ((v55 & 0x40000) == 0)
      {
        goto LABEL_193;
      }

      goto LABEL_239;
    }
  }

  else if ((v55 & 0x20000) == 0)
  {
    goto LABEL_192;
  }

  result = sub_16724F4(*(a1 + 1064));
  if ((v55 & 0x40000) == 0)
  {
LABEL_193:
    if ((v55 & 0x80000) == 0)
    {
      goto LABEL_195;
    }

    goto LABEL_194;
  }

LABEL_239:
  result = sub_16724F4(*(a1 + 1072));
  if ((v55 & 0x80000) != 0)
  {
LABEL_194:
    result = sub_16E4E44(*(a1 + 1080));
  }

LABEL_195:
  if ((v55 & 0xF00000) != 0)
  {
    *(a1 + 1088) = 0;
  }

  if (HIBYTE(v55))
  {
    *(a1 + 1099) = 0;
    *(a1 + 1092) = 0;
  }

  v56 = *(a1 + 24);
  if (v56)
  {
    *(a1 + 1103) = 0;
  }

  if ((v56 & 0xFF00) != 0)
  {
    *(a1 + 1117) = 0;
    *(a1 + 1111) = 0;
  }

  if ((v56 & 0xFF0000) != 0)
  {
    *(a1 + 1132) = 0;
    *(a1 + 1125) = 0;
  }

  if (HIBYTE(v56))
  {
    *(a1 + 1136) = 0;
    *(a1 + 1143) = 0;
  }

  v57 = *(a1 + 28);
  if (v57)
  {
    *(a1 + 1175) = 0;
    *(a1 + 1167) = 0;
    *(a1 + 1151) = 0u;
  }

  if ((v57 & 0xFF00) != 0)
  {
    *(a1 + 1176) = 0;
  }

  if ((v57 & 0xFF0000) != 0)
  {
    *(a1 + 1184) = 0;
    *(a1 + 1191) = 0;
  }

  if (HIBYTE(v57))
  {
    *(a1 + 1199) = 0;
  }

  if (*(a1 + 32))
  {
    *(a1 + 1212) = 0;
    *(a1 + 1207) = 0;
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v59 = *(a1 + 8);
  v58 = (a1 + 8);
  if (v59)
  {

    return sub_1957EA8(v58);
  }

  return result;
}