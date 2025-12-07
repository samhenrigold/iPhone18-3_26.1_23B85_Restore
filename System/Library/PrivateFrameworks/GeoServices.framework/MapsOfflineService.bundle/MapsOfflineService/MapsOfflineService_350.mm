void *sub_143F9B8(void *a1)
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

void sub_143FA2C(void *a1)
{
  sub_143F9B8(a1);

  operator delete();
}

char *sub_143FA64(uint64_t a1, char *a2, int32x2_t *a3)
{
  v67 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v67, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = v67 + 1;
    v8 = *v67;
    if (*v67 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v67, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v67 + 2;
      }
    }

    v67 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 8)
        {
          goto LABEL_71;
        }

        v5 |= 8u;
        v12 = v7 + 1;
        v11 = *v7;
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }

        v13 = *v12;
        v11 = (v13 << 7) + v11 - 128;
        if ((v13 & 0x80000000) == 0)
        {
          v12 = v7 + 2;
LABEL_12:
          v67 = v12;
          *(a1 + 48) = v11 != 0;
          goto LABEL_69;
        }

        v61 = sub_19587DC(v7, v11);
        v67 = v61;
        *(a1 + 48) = v62 != 0;
        if (v61)
        {
          goto LABEL_69;
        }

        goto LABEL_103;
      case 2u:
        if (v8 != 16)
        {
          goto LABEL_71;
        }

        v5 |= 0x10u;
        v35 = v7 + 1;
        v34 = *v7;
        if ((v34 & 0x8000000000000000) == 0)
        {
          goto LABEL_49;
        }

        v36 = *v35;
        v34 = (v36 << 7) + v34 - 128;
        if (v36 < 0)
        {
          v63 = sub_19587DC(v7, v34);
          v67 = v63;
          *(a1 + 49) = v64 != 0;
          if (!v63)
          {
            goto LABEL_103;
          }
        }

        else
        {
          v35 = v7 + 2;
LABEL_49:
          v67 = v35;
          *(a1 + 49) = v34 != 0;
        }

        goto LABEL_69;
      case 3u:
        if (v8 != 24)
        {
          goto LABEL_71;
        }

        v5 |= 1u;
        v26 = v7 + 1;
        v25 = *v7;
        if ((v25 & 0x8000000000000000) == 0)
        {
          goto LABEL_34;
        }

        v27 = *v26;
        v25 = (v27 << 7) + v25 - 128;
        if (v27 < 0)
        {
          v55 = sub_19587DC(v7, v25);
          v67 = v55;
          *(a1 + 24) = v56;
          if (!v55)
          {
            goto LABEL_103;
          }
        }

        else
        {
          v26 = v7 + 2;
LABEL_34:
          v67 = v26;
          *(a1 + 24) = v25;
        }

        goto LABEL_69;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_71;
        }

        v5 |= 2u;
        v29 = v7 + 1;
        v28 = *v7;
        if ((v28 & 0x8000000000000000) == 0)
        {
          goto LABEL_39;
        }

        v30 = *v29;
        v28 = (v30 << 7) + v28 - 128;
        if (v30 < 0)
        {
          v57 = sub_19587DC(v7, v28);
          v67 = v57;
          *(a1 + 32) = v58;
          if (!v57)
          {
            goto LABEL_103;
          }
        }

        else
        {
          v29 = v7 + 2;
LABEL_39:
          v67 = v29;
          *(a1 + 32) = v28;
        }

        goto LABEL_69;
      case 5u:
        if (v8 != 40)
        {
          goto LABEL_71;
        }

        v5 |= 4u;
        v18 = v7 + 1;
        v17 = *v7;
        if ((v17 & 0x8000000000000000) == 0)
        {
          goto LABEL_22;
        }

        v19 = *v18;
        v17 = (v19 << 7) + v17 - 128;
        if (v19 < 0)
        {
          v51 = sub_19587DC(v7, v17);
          v67 = v51;
          *(a1 + 40) = v52;
          if (!v51)
          {
            goto LABEL_103;
          }
        }

        else
        {
          v18 = v7 + 2;
LABEL_22:
          v67 = v18;
          *(a1 + 40) = v17;
        }

        goto LABEL_69;
      case 6u:
        if (v8 != 48)
        {
          goto LABEL_71;
        }

        v38 = v7 + 1;
        v37 = *v7;
        if ((v37 & 0x8000000000000000) == 0)
        {
          goto LABEL_54;
        }

        v39 = *v38;
        v37 = (v39 << 7) + v37 - 128;
        if (v39 < 0)
        {
          v67 = sub_19587DC(v7, v37);
          if (!v67)
          {
            goto LABEL_103;
          }
        }

        else
        {
          v38 = v7 + 2;
LABEL_54:
          v67 = v38;
        }

        if (v37 > 2)
        {
          sub_13137B8();
        }

        else
        {
          *(a1 + 16) |= 0x40u;
          *(a1 + 52) = v37;
        }

        goto LABEL_69;
      case 7u:
        if (v8 != 57)
        {
          goto LABEL_71;
        }

        v43 = *v7;
        v20 = v7 + 8;
        v5 |= 0x80u;
        *(a1 + 56) = v43;
        goto LABEL_68;
      case 8u:
        if (v8 != 64)
        {
          goto LABEL_71;
        }

        v5 |= 0x800u;
        v32 = v7 + 1;
        LODWORD(v31) = *v7;
        if ((v31 & 0x80) == 0)
        {
          goto LABEL_44;
        }

        v33 = *v32;
        v31 = v31 + (v33 << 7) - 128;
        if (v33 < 0)
        {
          v59 = sub_19587DC(v7, v31);
          v67 = v59;
          *(a1 + 84) = v60;
          if (!v59)
          {
            goto LABEL_103;
          }
        }

        else
        {
          v32 = v7 + 2;
LABEL_44:
          v67 = v32;
          *(a1 + 84) = v31;
        }

        goto LABEL_69;
      case 9u:
        if (v8 != 73)
        {
          goto LABEL_71;
        }

        v45 = *v7;
        v20 = v7 + 8;
        v5 |= 0x100u;
        *(a1 + 64) = v45;
        goto LABEL_68;
      case 0xAu:
        if (v8 != 80)
        {
          goto LABEL_71;
        }

        v5 |= 0x1000u;
        v23 = v7 + 1;
        LODWORD(v22) = *v7;
        if ((v22 & 0x80) == 0)
        {
          goto LABEL_29;
        }

        v24 = *v23;
        v22 = v22 + (v24 << 7) - 128;
        if (v24 < 0)
        {
          v53 = sub_19587DC(v7, v22);
          v67 = v53;
          *(a1 + 88) = v54;
          if (!v53)
          {
            goto LABEL_103;
          }
        }

        else
        {
          v23 = v7 + 2;
LABEL_29:
          v67 = v23;
          *(a1 + 88) = v22;
        }

        goto LABEL_69;
      case 0xBu:
        if (v8 != 89)
        {
          goto LABEL_71;
        }

        v44 = *v7;
        v20 = v7 + 8;
        v5 |= 0x2000u;
        *(a1 + 96) = v44;
        goto LABEL_68;
      case 0xCu:
        if (v8 != 96)
        {
          goto LABEL_71;
        }

        v5 |= 0x20u;
        v15 = v7 + 1;
        v14 = *v7;
        if ((v14 & 0x8000000000000000) == 0)
        {
          goto LABEL_17;
        }

        v16 = *v15;
        v14 = (v16 << 7) + v14 - 128;
        if (v16 < 0)
        {
          v49 = sub_19587DC(v7, v14);
          v67 = v49;
          *(a1 + 50) = v50 != 0;
          if (!v49)
          {
            goto LABEL_103;
          }
        }

        else
        {
          v15 = v7 + 2;
LABEL_17:
          v67 = v15;
          *(a1 + 50) = v14 != 0;
        }

        goto LABEL_69;
      case 0xDu:
        if (v8 != 105)
        {
          goto LABEL_71;
        }

        v21 = *v7;
        v20 = v7 + 8;
        v5 |= 0x200u;
        *(a1 + 72) = v21;
LABEL_68:
        v67 = v20;
        goto LABEL_69;
      case 0xEu:
        if (v8 != 112)
        {
          goto LABEL_71;
        }

        v5 |= 0x400u;
        v40 = v7 + 1;
        v41 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_61;
        }

        v42 = *v40;
        v41 = v41 + (v42 << 7) - 128;
        if (v42 < 0)
        {
          v65 = sub_1958770(v7, v41);
          v67 = v65;
          *(a1 + 80) = v66;
          if (!v65)
          {
            goto LABEL_103;
          }
        }

        else
        {
          v40 = v7 + 2;
LABEL_61:
          v67 = v40;
          *(a1 + 80) = v41;
        }

        goto LABEL_69;
      default:
LABEL_71:
        if (v8)
        {
          v46 = (v8 & 7) == 4;
        }

        else
        {
          v46 = 1;
        }

        if (!v46)
        {
          v47 = *(a1 + 8);
          if (v47)
          {
            v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v48 = sub_11F1920((a1 + 8));
            v7 = v67;
          }

          v67 = sub_1952690(v8, v48, v7, a3);
          if (!v67)
          {
            goto LABEL_103;
          }

LABEL_69:
          if (sub_195ADC0(a3, &v67, a3[11].u32[1]))
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
LABEL_103:
          v67 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return v67;
    }
  }
}

char *sub_1440034(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 8) == 0)
  {
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v8 = *(a1 + 49);
    *__dst = 16;
    __dst[1] = v8;
    __dst += 2;
    if ((v5 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v7 = *(a1 + 48);
  *__dst = 8;
  __dst[1] = v7;
  __dst += 2;
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v5 & 1) == 0)
  {
LABEL_4:
    v6 = __dst;
    goto LABEL_18;
  }

LABEL_11:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v9 = *(a1 + 24);
  *__dst = 24;
  __dst[1] = v9;
  if (v9 > 0x7F)
  {
    __dst[1] = v9 | 0x80;
    v10 = v9 >> 7;
    __dst[2] = v9 >> 7;
    v6 = __dst + 3;
    if (v9 >= 0x4000)
    {
      LOBYTE(v11) = __dst[2];
      do
      {
        *(v6 - 1) = v11 | 0x80;
        v11 = v10 >> 7;
        *v6++ = v10 >> 7;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
    }
  }

  else
  {
    v6 = __dst + 2;
  }

LABEL_18:
  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v14 = *(a1 + 32);
    *v6 = 32;
    v6[1] = v14;
    if (v14 > 0x7F)
    {
      v6[1] = v14 | 0x80;
      v15 = v14 >> 7;
      v6[2] = v14 >> 7;
      v13 = v6 + 3;
      if (v14 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v13 - 1) = v6 | 0x80;
          v6 = (v15 >> 7);
          *v13++ = v15 >> 7;
          v16 = v15 >> 14;
          v15 >>= 7;
        }

        while (v16);
      }
    }

    else
    {
      v13 = v6 + 2;
    }
  }

  else
  {
    v13 = v6;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v13)
    {
      v13 = sub_225EB68(a3, v13);
    }

    v18 = *(a1 + 40);
    *v13 = 40;
    v13[1] = v18;
    if (v18 > 0x7F)
    {
      v13[1] = v18 | 0x80;
      v19 = v18 >> 7;
      v13[2] = v18 >> 7;
      v17 = v13 + 3;
      if (v18 >= 0x4000)
      {
        LOBYTE(v20) = v13[2];
        do
        {
          *(v17 - 1) = v20 | 0x80;
          v20 = v19 >> 7;
          *v17++ = v19 >> 7;
          v21 = v19 >> 14;
          v19 >>= 7;
        }

        while (v21);
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

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v23 = *(a1 + 52);
    *v17 = 48;
    v17[1] = v23;
    if (v23 > 0x7F)
    {
      v17[1] = v23 | 0x80;
      v24 = v23 >> 7;
      v17[2] = v23 >> 7;
      v22 = v17 + 3;
      if (v23 >= 0x4000)
      {
        LOBYTE(v17) = v17[2];
        do
        {
          *(v22 - 1) = v17 | 0x80;
          v17 = (v24 >> 7);
          *v22++ = v24 >> 7;
          v25 = v24 >> 14;
          v24 >>= 7;
        }

        while (v25);
      }
    }

    else
    {
      v22 = v17 + 2;
    }
  }

  else
  {
    v22 = v17;
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v26 = *(a1 + 56);
    *v22 = 57;
    *(v22 + 1) = v26;
    v22 += 9;
  }

  if ((v5 & 0x800) != 0)
  {
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v28 = *(a1 + 84);
    *v22 = 64;
    v22[1] = v28;
    if (v28 > 0x7F)
    {
      v22[1] = v28 | 0x80;
      v29 = v28 >> 7;
      v22[2] = v28 >> 7;
      v27 = v22 + 3;
      if (v28 >= 0x4000)
      {
        LOBYTE(v30) = v22[2];
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
      v27 = v22 + 2;
    }
  }

  else
  {
    v27 = v22;
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v27)
    {
      v27 = sub_225EB68(a3, v27);
    }

    v32 = *(a1 + 64);
    *v27 = 73;
    *(v27 + 1) = v32;
    v27 += 9;
  }

  if ((v5 & 0x1000) != 0)
  {
    if (*a3 <= v27)
    {
      v27 = sub_225EB68(a3, v27);
    }

    v34 = *(a1 + 88);
    *v27 = 80;
    v27[1] = v34;
    if (v34 > 0x7F)
    {
      v27[1] = v34 | 0x80;
      v35 = v34 >> 7;
      v27[2] = v34 >> 7;
      v33 = v27 + 3;
      if (v34 >= 0x4000)
      {
        LOBYTE(v27) = v27[2];
        do
        {
          *(v33 - 1) = v27 | 0x80;
          v27 = (v35 >> 7);
          *v33++ = v35 >> 7;
          v36 = v35 >> 14;
          v35 >>= 7;
        }

        while (v36);
      }
    }

    else
    {
      v33 = v27 + 2;
    }
  }

  else
  {
    v33 = v27;
  }

  if ((v5 & 0x2000) != 0)
  {
    if (*a3 <= v33)
    {
      v33 = sub_225EB68(a3, v33);
    }

    v38 = *(a1 + 96);
    *v33 = 89;
    *(v33 + 1) = v38;
    v33 += 9;
    if ((v5 & 0x20) == 0)
    {
LABEL_73:
      if ((v5 & 0x200) == 0)
      {
        goto LABEL_74;
      }

LABEL_82:
      if (*a3 <= v33)
      {
        v33 = sub_225EB68(a3, v33);
      }

      v40 = *(a1 + 72);
      *v33 = 105;
      *(v33 + 1) = v40;
      v33 += 9;
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_85;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_73;
  }

  if (*a3 <= v33)
  {
    v33 = sub_225EB68(a3, v33);
  }

  v39 = *(a1 + 50);
  *v33 = 96;
  v33[1] = v39;
  v33 += 2;
  if ((v5 & 0x200) != 0)
  {
    goto LABEL_82;
  }

LABEL_74:
  if ((v5 & 0x400) == 0)
  {
LABEL_75:
    v37 = v33;
    goto LABEL_92;
  }

LABEL_85:
  if (*a3 <= v33)
  {
    v33 = sub_225EB68(a3, v33);
  }

  v41 = *(a1 + 80);
  *v33 = 112;
  v33[1] = v41;
  if (v41 > 0x7F)
  {
    v33[1] = v41 | 0x80;
    v42 = v41 >> 7;
    v33[2] = v41 >> 7;
    v37 = v33 + 3;
    if (v41 >= 0x4000)
    {
      LOBYTE(v43) = v33[2];
      do
      {
        *(v37 - 1) = v43 | 0x80;
        v43 = v42 >> 7;
        *v37++ = v42 >> 7;
        v44 = v42 >> 14;
        v42 >>= 7;
      }

      while (v44);
    }
  }

  else
  {
    v37 = v33 + 2;
  }

LABEL_92:
  v45 = *(a1 + 8);
  if ((v45 & 1) == 0)
  {
    return v37;
  }

  v47 = v45 & 0xFFFFFFFFFFFFFFFCLL;
  v48 = *(v47 + 31);
  if (v48 < 0)
  {
    v49 = *(v47 + 8);
    v48 = *(v47 + 16);
  }

  else
  {
    v49 = (v47 + 8);
  }

  if ((*a3 - v37) >= v48)
  {
    v50 = v48;
    memcpy(v37, v49, v48);
    v37 += v50;
    return v37;
  }

  return sub_1957130(a3, v49, v48, v37);
}

unint64_t sub_1440604(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v3 = 0;
    goto LABEL_17;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v1 & 4) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  v3 = v2 + ((v1 >> 3) & 2) + ((v1 >> 2) & 2) + ((v1 >> 4) & 2);
  if ((v1 & 0x40) != 0)
  {
    v4 = *(a1 + 52);
    v5 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v4 >= 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 11;
    }

    v3 += v6;
  }

  if ((v1 & 0x80) != 0)
  {
    v3 += 9;
  }

LABEL_17:
  if ((v1 & 0x3F00) == 0)
  {
    goto LABEL_31;
  }

  if ((v1 & 0x100) != 0)
  {
    v3 += 9;
  }

  if ((v1 & 0x200) != 0)
  {
    v3 += 9;
  }

  if ((v1 & 0x400) != 0)
  {
    v3 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 0x800) == 0)
    {
LABEL_24:
      if ((v1 & 0x1000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    }
  }

  else if ((v1 & 0x800) == 0)
  {
    goto LABEL_24;
  }

  v12 = *(a1 + 84);
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
  if ((v1 & 0x1000) != 0)
  {
LABEL_25:
    v7 = *(a1 + 88);
    v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v7 >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 11;
    }

    v3 += v9;
  }

LABEL_29:
  if ((v1 & 0x2000) != 0)
  {
    v3 += 9;
  }

LABEL_31:
  v10 = *(a1 + 8);
  if (v10)
  {
    v15 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v16 < 0)
    {
      v16 = *(v15 + 16);
    }

    v3 += v16;
  }

  *(a1 + 20) = v3;
  return v3;
}

void *sub_1440804(void *a1)
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

  sub_1440888(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_1440888(uint64_t a1)
{
  v3 = *(a1 + 24);
  result = (a1 + 24);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_27711F8)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      sub_144296C(v4);
      operator delete();
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      sub_144238C(v5);
      operator delete();
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      sub_1442E74(v6);
      operator delete();
    }

    result = *(a1 + 56);
    if (result)
    {
      sub_1443380(result);

      operator delete();
    }
  }

  return result;
}

void sub_144096C(void *a1)
{
  sub_1440804(a1);

  operator delete();
}

uint64_t sub_14409A4(uint64_t result)
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
    result = sub_1440AC0(*(v1 + 40));
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
  result = sub_1440A98(*(result + 32));
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
  result = sub_1440B30(*(v1 + 48));
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    result = sub_1440B88(*(v1 + 56));
  }

LABEL_8:
  if ((v2 & 0xE0) != 0)
  {
    *(v1 + 72) = 0;
    *(v1 + 64) = 0;
  }

  if ((v2 & 0x1F00) != 0)
  {
    *(v1 + 84) = 0;
    *(v1 + 76) = 0;
    *(v1 + 92) = 4;
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

uint64_t sub_1440A98(uint64_t a1)
{
  if ((*(a1 + 16) & 3) != 0)
  {
    *(a1 + 24) = -1;
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

uint64_t sub_1440AC0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_1440B88(*(result + 24));
  }

  if ((v2 & 6) != 0)
  {
    *(v1 + 32) = 0;
    *(v1 + 36) = -1;
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

uint64_t sub_1440B30(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v4 = *(a1 + 8);
  v3 = a1 + 8;
  *(v3 + 40) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_1440B88(uint64_t a1)
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

uint64_t sub_1440BD0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v56 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v56, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v56 + 1);
    v8 = **v56;
    if (**v56 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v56, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v56 + 2);
      }
    }

    *v56 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 10)
        {
          goto LABEL_67;
        }

        *(a1 + 16) |= 1u;
        v11 = *(a1 + 8);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        v13 = sub_194DB04((a1 + 24), v12);
        v14 = sub_1958890(v13, *v56, a3);
        goto LABEL_74;
      case 2u:
        if (v8 != 16)
        {
          goto LABEL_67;
        }

        v5 |= 0x20u;
        v37 = v7 + 1;
        v38 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_53;
        }

        v39 = *v37;
        v38 = v38 + (v39 << 7) - 128;
        if (v39 < 0)
        {
          v54 = sub_1958770(v7, v38);
          *v56 = v54;
          *(a1 + 64) = v55;
          if (!v54)
          {
            goto LABEL_89;
          }
        }

        else
        {
          v37 = v7 + 2;
LABEL_53:
          *v56 = v37;
          *(a1 + 64) = v38;
        }

        goto LABEL_75;
      case 3u:
        if (v8 != 24)
        {
          goto LABEL_67;
        }

        v5 |= 0x40u;
        v27 = v7 + 1;
        v28 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

        v29 = *v27;
        v28 = v28 + (v29 << 7) - 128;
        if (v29 < 0)
        {
          v49 = sub_1958770(v7, v28);
          *v56 = v49;
          *(a1 + 68) = v50;
          if (!v49)
          {
            goto LABEL_89;
          }
        }

        else
        {
          v27 = v7 + 2;
LABEL_36:
          *v56 = v27;
          *(a1 + 68) = v28;
        }

        goto LABEL_75;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_67;
        }

        v5 |= 0x80u;
        v30 = v7 + 1;
        v31 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_41;
        }

        v32 = *v30;
        v31 = v31 + (v32 << 7) - 128;
        if (v32 < 0)
        {
          v51 = sub_1958770(v7, v31);
          *v56 = v51;
          *(a1 + 72) = v52;
          if (!v51)
          {
            goto LABEL_89;
          }
        }

        else
        {
          v30 = v7 + 2;
LABEL_41:
          *v56 = v30;
          *(a1 + 72) = v31;
        }

        goto LABEL_75;
      case 5u:
        if (v8 != 45)
        {
          goto LABEL_67;
        }

        v19 = *v7;
        v18 = v7 + 4;
        v5 |= 0x100u;
        *(a1 + 76) = v19;
        goto LABEL_66;
      case 6u:
        if (v8 != 53)
        {
          goto LABEL_67;
        }

        v40 = *v7;
        v18 = v7 + 4;
        v5 |= 0x200u;
        *(a1 + 80) = v40;
        goto LABEL_66;
      case 7u:
        if (v8 != 61)
        {
          goto LABEL_67;
        }

        v41 = *v7;
        v18 = v7 + 4;
        v5 |= 0x400u;
        *(a1 + 84) = v41;
        goto LABEL_66;
      case 8u:
        if (v8 != 64)
        {
          goto LABEL_67;
        }

        v33 = v7 + 1;
        v34 = *v7;
        if ((v34 & 0x8000000000000000) == 0)
        {
          goto LABEL_46;
        }

        v35 = *v33;
        v36 = (v35 << 7) + v34;
        LODWORD(v34) = v36 - 128;
        if (v35 < 0)
        {
          *v56 = sub_19587DC(v7, (v36 - 128));
          if (!*v56)
          {
            goto LABEL_89;
          }

          LODWORD(v34) = v53;
        }

        else
        {
          v33 = v7 + 2;
LABEL_46:
          *v56 = v33;
        }

        if (sub_144E2E8(v34))
        {
          *(a1 + 16) |= 0x1000u;
          *(a1 + 92) = v34;
        }

        else
        {
          sub_12E85F0();
        }

        goto LABEL_75;
      case 9u:
        if (v8 != 77)
        {
          goto LABEL_67;
        }

        v45 = *v7;
        v18 = v7 + 4;
        v5 |= 0x800u;
        *(a1 + 88) = v45;
LABEL_66:
        *v56 = v18;
        goto LABEL_75;
      case 0xAu:
        if (v8 != 82)
        {
          goto LABEL_67;
        }

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

          sub_144633C(v25);
          v23 = v26;
          *(a1 + 32) = v26;
          v7 = *v56;
        }

        v14 = sub_220BB68(a3, v23, v7);
        goto LABEL_74;
      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_67;
        }

        *(a1 + 16) |= 4u;
        v42 = *(a1 + 40);
        if (!v42)
        {
          v43 = *(a1 + 8);
          v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
          if (v43)
          {
            v44 = *v44;
          }

          v42 = sub_14462B8(v44);
          *(a1 + 40) = v42;
          v7 = *v56;
        }

        v14 = sub_220BBF8(a3, v42, v7);
        goto LABEL_74;
      case 0xCu:
        if (v8 != 98)
        {
          goto LABEL_67;
        }

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

          v15 = sub_14463BC(v17);
          *(a1 + 48) = v15;
          v7 = *v56;
        }

        v14 = sub_220BC88(a3, v15, v7);
        goto LABEL_74;
      case 0xDu:
        if (v8 != 106)
        {
          goto LABEL_67;
        }

        *(a1 + 16) |= 0x10u;
        v20 = *(a1 + 56);
        if (!v20)
        {
          v21 = *(a1 + 8);
          v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
          if (v21)
          {
            v22 = *v22;
          }

          v20 = sub_1446458(v22);
          *(a1 + 56) = v20;
          v7 = *v56;
        }

        v14 = sub_220BD18(a3, v20, v7);
        goto LABEL_74;
      default:
LABEL_67:
        if (v8)
        {
          v46 = (v8 & 7) == 4;
        }

        else
        {
          v46 = 1;
        }

        if (!v46)
        {
          v47 = *(a1 + 8);
          if (v47)
          {
            v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v48 = sub_11F1920((a1 + 8));
            v7 = *v56;
          }

          v14 = sub_1952690(v8, v48, v7, a3);
LABEL_74:
          *v56 = v14;
          if (!v14)
          {
            goto LABEL_89;
          }

LABEL_75:
          if (sub_195ADC0(a3, v56, a3[11].u32[1]))
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
LABEL_89:
          *v56 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v56;
    }
  }
}

char *sub_14410E0(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 64);
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

  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v13 = *(a1 + 68);
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

  if ((v6 & 0x80) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v18 = *(a1 + 72);
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

  if ((v6 & 0x100) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v22 = *(a1 + 76);
    *v17 = 45;
    *(v17 + 1) = v22;
    v17 += 5;
    if ((v6 & 0x200) == 0)
    {
LABEL_32:
      if ((v6 & 0x400) == 0)
      {
        goto LABEL_33;
      }

LABEL_41:
      if (*a3 <= v17)
      {
        v17 = sub_225EB68(a3, v17);
      }

      v24 = *(a1 + 84);
      *v17 = 61;
      *(v17 + 1) = v24;
      v17 += 5;
      if ((v6 & 0x1000) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_44;
    }
  }

  else if ((v6 & 0x200) == 0)
  {
    goto LABEL_32;
  }

  if (*a3 <= v17)
  {
    v17 = sub_225EB68(a3, v17);
  }

  v23 = *(a1 + 80);
  *v17 = 53;
  *(v17 + 1) = v23;
  v17 += 5;
  if ((v6 & 0x400) != 0)
  {
    goto LABEL_41;
  }

LABEL_33:
  if ((v6 & 0x1000) == 0)
  {
LABEL_34:
    v21 = v17;
    goto LABEL_51;
  }

LABEL_44:
  if (*a3 <= v17)
  {
    v17 = sub_225EB68(a3, v17);
  }

  v25 = *(a1 + 92);
  *v17 = 64;
  v17[1] = v25;
  if (v25 > 0x7F)
  {
    v17[1] = v25 | 0x80;
    v26 = v25 >> 7;
    v17[2] = v25 >> 7;
    v21 = v17 + 3;
    if (v25 >= 0x4000)
    {
      LOBYTE(v27) = v17[2];
      do
      {
        *(v21 - 1) = v27 | 0x80;
        v27 = v26 >> 7;
        *v21++ = v26 >> 7;
        v28 = v26 >> 14;
        v26 >>= 7;
      }

      while (v28);
    }
  }

  else
  {
    v21 = v17 + 2;
  }

LABEL_51:
  if ((v6 & 0x800) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v29 = *(a1 + 88);
    *v21 = 77;
    *(v21 + 1) = v29;
    v21 += 5;
    if ((v6 & 2) == 0)
    {
LABEL_53:
      if ((v6 & 4) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_66;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_53;
  }

  if (*a3 <= v21)
  {
    v21 = sub_225EB68(a3, v21);
  }

  v30 = *(a1 + 32);
  *v21 = 82;
  v31 = *(v30 + 20);
  v21[1] = v31;
  if (v31 > 0x7F)
  {
    v32 = sub_19575D0(v31, v21 + 1);
  }

  else
  {
    v32 = v21 + 2;
  }

  v21 = sub_1442BF4(v30, v32, a3);
  if ((v6 & 4) == 0)
  {
LABEL_54:
    if ((v6 & 8) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_72;
  }

LABEL_66:
  if (*a3 <= v21)
  {
    v21 = sub_225EB68(a3, v21);
  }

  v33 = *(a1 + 40);
  *v21 = 90;
  v34 = *(v33 + 20);
  v21[1] = v34;
  if (v34 > 0x7F)
  {
    v35 = sub_19575D0(v34, v21 + 1);
  }

  else
  {
    v35 = v21 + 2;
  }

  v21 = sub_14426C4(v33, v35, a3);
  if ((v6 & 8) == 0)
  {
LABEL_55:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_78;
  }

LABEL_72:
  if (*a3 <= v21)
  {
    v21 = sub_225EB68(a3, v21);
  }

  v36 = *(a1 + 48);
  *v21 = 98;
  v37 = *(v36 + 20);
  v21[1] = v37;
  if (v37 > 0x7F)
  {
    v38 = sub_19575D0(v37, v21 + 1);
  }

  else
  {
    v38 = v21 + 2;
  }

  v21 = sub_14431A8(v36, v38, a3);
  if ((v6 & 0x10) != 0)
  {
LABEL_78:
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v39 = *(a1 + 56);
    *v21 = 106;
    v40 = *(v39 + 20);
    v21[1] = v40;
    if (v40 > 0x7F)
    {
      v41 = sub_19575D0(v40, v21 + 1);
    }

    else
    {
      v41 = v21 + 2;
    }

    v21 = sub_1443618(v39, v41, a3);
  }

LABEL_84:
  v42 = *(a1 + 8);
  if ((v42 & 1) == 0)
  {
    return v21;
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

  if ((*a3 - v21) >= v45)
  {
    v47 = v45;
    memcpy(v21, v46, v45);
    v21 += v47;
    return v21;
  }

  return sub_1957130(a3, v46, v45, v21);
}

uint64_t sub_144164C(uint64_t a1)
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
    v7 = sub_1442DA4(*(a1 + 32));
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
    v14 = sub_1442888(*(a1 + 40));
    v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_12:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_36;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_12;
  }

  v15 = sub_14432CC(*(a1 + 48));
  v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_13:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  v16 = sub_1443764(*(a1 + 56));
  v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_14:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  v3 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_15:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_38:
  v3 += ((9 * (__clz(*(a1 + 68) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_16:
    v3 += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_17:
  if ((v2 & 0x1F00) != 0)
  {
    v8 = v3 + 5;
    if ((v2 & 0x100) == 0)
    {
      v8 = v3;
    }

    if ((v2 & 0x200) != 0)
    {
      v8 += 5;
    }

    if ((v2 & 0x400) != 0)
    {
      v8 += 5;
    }

    if ((v2 & 0x800) != 0)
    {
      v3 = v8 + 5;
    }

    else
    {
      v3 = v8;
    }

    if ((v2 & 0x1000) != 0)
    {
      v9 = *(a1 + 92);
      v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v9 >= 0)
      {
        v11 = v10;
      }

      else
      {
        v11 = 11;
      }

      v3 += v11;
    }
  }

  v12 = *(a1 + 8);
  if (v12)
  {
    v17 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v18 < 0)
    {
      v18 = *(v17 + 16);
    }

    v3 += v18;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_14418BC(uint64_t a1, uint64_t a2)
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

        goto LABEL_35;
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

      sub_144633C(v11);
      *(a1 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_2771280;
    }

    sub_128F8FC(v9, v12);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_43;
    }

LABEL_35:
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

      v13 = sub_14462B8(v15);
      *(a1 + 40) = v13;
    }

    if (*(a2 + 40))
    {
      v16 = *(a2 + 40);
    }

    else
    {
      v16 = &off_2771258;
    }

    sub_1441B40(v13, v16);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_51;
    }

LABEL_43:
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

      v17 = sub_14463BC(v19);
      *(a1 + 48) = v17;
    }

    if (*(a2 + 48))
    {
      v20 = *(a2 + 48);
    }

    else
    {
      v20 = &off_27712A0;
    }

    sub_1441C28(v17, v20);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_59;
    }

LABEL_51:
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

      v21 = sub_1446458(v23);
      *(a1 + 56) = v21;
    }

    if (*(a2 + 56))
    {
      v24 = *(a2 + 56);
    }

    else
    {
      v24 = &off_27712D8;
    }

    sub_12B0A14(v21, v24);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_60;
    }

LABEL_59:
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
      *(a1 + 72) = *(a2 + 72);
      goto LABEL_11;
    }

LABEL_60:
    *(a1 + 68) = *(a2 + 68);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  if ((v4 & 0x1F00) == 0)
  {
    goto LABEL_20;
  }

  if ((v4 & 0x100) != 0)
  {
    *(a1 + 76) = *(a2 + 76);
    if ((v4 & 0x200) == 0)
    {
LABEL_15:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_64;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_15;
  }

  *(a1 + 80) = *(a2 + 80);
  if ((v4 & 0x400) == 0)
  {
LABEL_16:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_17;
    }

LABEL_65:
    *(a1 + 88) = *(a2 + 88);
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_64:
  *(a1 + 84) = *(a2 + 84);
  if ((v4 & 0x800) != 0)
  {
    goto LABEL_65;
  }

LABEL_17:
  if ((v4 & 0x1000) != 0)
  {
LABEL_18:
    *(a1 + 92) = *(a2 + 92);
  }

LABEL_19:
  *(a1 + 16) |= v4;
LABEL_20:
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1441B40(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 7) != 0)
  {
    if (v4)
    {
      *(a1 + 16) |= 1u;
      v6 = *(a1 + 24);
      if (!v6)
      {
        v7 = *(a1 + 8);
        v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (v7)
        {
          v8 = *v8;
        }

        v6 = sub_1446458(v8);
        *(a1 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_27712D8;
      }

      sub_12B0A14(v6, v9);
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
        *(a1 + 36) = *(a2 + 36);
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

std::string *sub_1441C28(std::string *result, uint64_t a2)
{
  p_data = &result->__r_.__value_.__l.__data_;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_1201B48(p_data + 3, v6, (v5 + 8), v4, *p_data[5] - *(p_data + 8));
    v7 = *(p_data + 8) + v4;
    *(p_data + 8) = v7;
    v8 = p_data[5];
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  if (*(a2 + 16))
  {
    v9 = *(a2 + 48);
    *(p_data + 4) |= 1u;
    *(p_data + 48) = v9;
  }

  v10 = *(a2 + 8);
  if (v10)
  {

    return sub_1957EF4(p_data + 1, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_1441D18(void *a1)
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

void sub_1441D8C(void *a1)
{
  sub_1441D18(a1);

  operator delete();
}

uint64_t sub_1441DC4(uint64_t a1)
{
  if ((*(a1 + 16) & 0xF) != 0)
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

char *sub_1441DE8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v29 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v29, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v29 + 1;
    v8 = *v29;
    if (*v29 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v29, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v29 + 2;
      }
    }

    v29 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 == 9)
      {
        v5 |= 1u;
        *(a1 + 24) = *v7;
        v29 = v7 + 8;
        goto LABEL_41;
      }

      goto LABEL_34;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_34;
    }

    v5 |= 2u;
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
      v29 = v14;
      *(a1 + 32) = v13 != 0;
      goto LABEL_41;
    }

    v25 = sub_19587DC(v7, v13);
    v29 = v25;
    *(a1 + 32) = v26 != 0;
    if (!v25)
    {
      goto LABEL_53;
    }

LABEL_41:
    if (sub_195ADC0(a3, &v29, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 != 24)
    {
      goto LABEL_34;
    }

    v5 |= 4u;
    v20 = v7 + 1;
    v19 = *v7;
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_33;
    }

    v21 = *v20;
    v19 = (v21 << 7) + v19 - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v20 = v7 + 2;
LABEL_33:
      v29 = v20;
      *(a1 + 33) = v19 != 0;
      goto LABEL_41;
    }

    v27 = sub_19587DC(v7, v19);
    v29 = v27;
    *(a1 + 33) = v28 != 0;
    if (!v27)
    {
      goto LABEL_53;
    }

    goto LABEL_41;
  }

  if (v11 == 4 && v8 == 32)
  {
    v17 = v7 + 1;
    v16 = *v7;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }

    v18 = *v17;
    v16 = (v18 << 7) + v16 - 128;
    if (v18 < 0)
    {
      v29 = sub_19587DC(v7, v16);
      if (!v29)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v17 = v7 + 2;
LABEL_24:
      v29 = v17;
    }

    if (v16 > 2)
    {
      sub_12E8500();
    }

    else
    {
      *(a1 + 16) |= 8u;
      *(a1 + 36) = v16;
    }

    goto LABEL_41;
  }

LABEL_34:
  if (v8)
  {
    v22 = (v8 & 7) == 4;
  }

  else
  {
    v22 = 1;
  }

  if (!v22)
  {
    v23 = *(a1 + 8);
    if (v23)
    {
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v24 = sub_11F1920((a1 + 8));
      v7 = v29;
    }

    v29 = sub_1952690(v8, v24, v7, a3);
    if (!v29)
    {
      goto LABEL_53;
    }

    goto LABEL_41;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_53:
  v29 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v29;
}

char *sub_1442098(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 24);
    *__dst = 9;
    *(__dst + 1) = v7;
    __dst += 9;
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_12:
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v9 = *(a1 + 33);
      *__dst = 24;
      __dst[1] = v9;
      __dst += 2;
      if ((v5 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_15;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v8 = *(a1 + 32);
  *__dst = 16;
  __dst[1] = v8;
  __dst += 2;
  if ((v5 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v5 & 8) == 0)
  {
LABEL_5:
    v6 = __dst;
    goto LABEL_22;
  }

LABEL_15:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v10 = *(a1 + 36);
  *__dst = 32;
  __dst[1] = v10;
  if (v10 > 0x7F)
  {
    __dst[1] = v10 | 0x80;
    v11 = v10 >> 7;
    __dst[2] = v10 >> 7;
    v6 = __dst + 3;
    if (v10 >= 0x4000)
    {
      LOBYTE(v12) = __dst[2];
      do
      {
        *(v6 - 1) = v12 | 0x80;
        v12 = v11 >> 7;
        *v6++ = v11 >> 7;
        v13 = v11 >> 14;
        v11 >>= 7;
      }

      while (v13);
    }
  }

  else
  {
    v6 = __dst + 2;
  }

LABEL_22:
  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return v6;
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

  if (*a3 - v6 >= v17)
  {
    v19 = v17;
    memcpy(v6, v18, v17);
    v6 += v19;
    return v6;
  }

  return sub_1957130(a3, v18, v17, v6);
}

uint64_t sub_1442268(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) != 0)
  {
    v2 = 9;
    if ((v1 & 1) == 0)
    {
      v2 = 0;
    }

    v3 = (v2 | v1 & 2) + ((v1 >> 1) & 2);
    if ((v1 & 8) != 0)
    {
      v4 = *(a1 + 36);
      v5 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v4 >= 0)
      {
        v6 = v5;
      }

      else
      {
        v6 = 11;
      }

      v3 += v6;
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

std::string *sub_1442300(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_8;
  }

  if (v2)
  {
    result[1].__r_.__value_.__r.__words[0] = *(a2 + 24);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_12:
      result[1].__r_.__value_.__s.__data_[9] = *(a2 + 33);
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  result[1].__r_.__value_.__s.__data_[8] = *(a2 + 32);
  if ((v2 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v2 & 8) != 0)
  {
LABEL_6:
    HIDWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 36);
  }

LABEL_7:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_8:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_144238C(uint64_t a1)
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
  if (a1 != &off_2771258)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_1443380(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1442444(uint64_t a1)
{
  sub_144238C(a1);

  operator delete();
}

char *sub_144247C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v30 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v30, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v30 + 1;
    v8 = *v30;
    if (*v30 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v30, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v30 + 2;
      }
    }

    v30 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 == 3)
    {
      break;
    }

    if (v11 == 2)
    {
      if (v8 != 16)
      {
        goto LABEL_13;
      }

      v5 |= 2u;
      v18 = v7 + 1;
      v17 = *v7;
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_24;
      }

      v19 = *v18;
      v17 = (v19 << 7) + v17 - 128;
      if ((v19 & 0x80000000) == 0)
      {
        v18 = v7 + 2;
LABEL_24:
        v30 = v18;
        *(a1 + 32) = v17 != 0;
        goto LABEL_37;
      }

      v26 = sub_19587DC(v7, v17);
      v30 = v26;
      *(a1 + 32) = v27 != 0;
      if (!v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v11 != 1 || v8 != 8)
      {
        goto LABEL_13;
      }

      v5 |= 4u;
      v24 = v7 + 1;
      LODWORD(v23) = *v7;
      if ((v23 & 0x80) == 0)
      {
        goto LABEL_36;
      }

      v25 = *v24;
      v23 = v23 + (v25 << 7) - 128;
      if ((v25 & 0x80000000) == 0)
      {
        v24 = v7 + 2;
LABEL_36:
        v30 = v24;
        *(a1 + 36) = v23;
        goto LABEL_37;
      }

      v28 = sub_19587DC(v7, v23);
      v30 = v28;
      *(a1 + 36) = v29;
      if (!v28)
      {
        goto LABEL_46;
      }
    }

LABEL_37:
    if (sub_195ADC0(a3, &v30, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 26)
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

      v20 = sub_1446458(v22);
      *(a1 + 24) = v20;
      v7 = v30;
    }

    v16 = sub_220BD18(a3, v20, v7);
LABEL_31:
    v30 = v16;
    if (!v16)
    {
      goto LABEL_46;
    }

    goto LABEL_37;
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
      v7 = v30;
    }

    v16 = sub_1952690(v8, v15, v7, a3);
    goto LABEL_31;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_46:
  v30 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v30;
}

char *sub_14426C4(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 36);
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

    v11 = *(a1 + 32);
    *v6 = 16;
    v6[1] = v11;
    v6 += 2;
  }

  if (v5)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 24);
    *v6 = 26;
    v13 = *(v12 + 20);
    v6[1] = v13;
    if (v13 > 0x7F)
    {
      v14 = sub_19575D0(v13, v6 + 1);
    }

    else
    {
      v14 = v6 + 2;
    }

    v6 = sub_1443618(v12, v14, a3);
  }

  v15 = *(a1 + 8);
  if ((v15 & 1) == 0)
  {
    return v6;
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

  if ((*a3 - v6) >= v18)
  {
    v20 = v18;
    memcpy(v6, v19, v18);
    v6 += v20;
    return v6;
  }

  return sub_1957130(a3, v19, v18, v6);
}

uint64_t sub_1442888(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      v5 = sub_1443764(*(a1 + 24));
      v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v3 = 0;
    }

    result = v3 + (v2 & 2);
    if ((v2 & 4) != 0)
    {
      v6 = *(a1 + 36);
      if (v6 < 0)
      {
        v7 = 11;
      }

      else
      {
        v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      result += v7;
    }
  }

  else
  {
    result = 0;
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v10 < 0)
    {
      v10 = *(v9 + 16);
    }

    result += v10;
  }

  *(a1 + 20) = result;
  return result;
}

void *sub_144296C(void *a1)
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

void sub_14429E0(void *a1)
{
  sub_144296C(a1);

  operator delete();
}

char *sub_1442A18(uint64_t a1, char *a2, int32x2_t *a3)
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
    v16 = v7 + 1;
    LODWORD(v15) = *v7;
    if ((v15 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    v17 = *v16;
    v15 = v15 + (v17 << 7) - 128;
    if ((v17 & 0x80000000) == 0)
    {
      v16 = v7 + 2;
LABEL_24:
      v25 = v16;
      *(a1 + 28) = v15;
      goto LABEL_29;
    }

    v21 = sub_19587DC(v7, v15);
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
    LODWORD(v18) = *v7;
    if ((v18 & 0x80) == 0)
    {
      goto LABEL_28;
    }

    v20 = *v19;
    v18 = v18 + (v20 << 7) - 128;
    if ((v20 & 0x80000000) == 0)
    {
      v19 = v7 + 2;
LABEL_28:
      v25 = v19;
      *(a1 + 24) = v18;
      goto LABEL_29;
    }

    v23 = sub_19587DC(v7, v18);
    v25 = v23;
    *(a1 + 24) = v24;
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

char *sub_1442BF4(uint64_t a1, char *__dst, unint64_t *a3)
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

  v15 = *(a1 + 8);
  if ((v15 & 1) == 0)
  {
    return v11;
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

  if ((*a3 - v11) >= v18)
  {
    v20 = v18;
    memcpy(v11, v19, v18);
    v11 += v20;
    return v11;
  }

  return sub_1957130(a3, v19, v18, v11);
}

uint64_t sub_1442DA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_14;
  }

  if (v1)
  {
    v3 = *(a1 + 24);
    if (v3 < 0)
    {
      v2 = 11;
      if ((v1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v2 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v4 = *(a1 + 28);
  if (v4 < 0)
  {
    v5 = 11;
  }

  else
  {
    v5 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v5;
LABEL_14:
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

void *sub_1442E74(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956AFC(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1442EF0(void *a1)
{
  sub_1442E74(a1);

  operator delete();
}

uint64_t sub_1442F28(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 == 2)
    {
      break;
    }

    if (v8 >> 3 != 1 || v8 != 8)
    {
      goto LABEL_12;
    }

    v24 = v7 + 1;
    v23 = *v7;
    if ((v23 & 0x8000000000000000) == 0)
    {
      goto LABEL_35;
    }

    v25 = *v24;
    v23 = (v25 << 7) + v23 - 128;
    if ((v25 & 0x80000000) == 0)
    {
      v24 = v7 + 2;
LABEL_35:
      *v28 = v24;
      *(a1 + 48) = v23 != 0;
      v5 = 1;
      goto LABEL_36;
    }

    v26 = sub_19587DC(v7, v23);
    *v28 = v26;
    *(a1 + 48) = v27 != 0;
    v5 = 1;
    if (!v26)
    {
      goto LABEL_43;
    }

LABEL_36:
    if (sub_195ADC0(a3, v28, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 18)
  {
    v15 = v7 - 1;
    while (1)
    {
      v16 = (v15 + 1);
      *v28 = v15 + 1;
      v17 = *(a1 + 40);
      if (v17 && (v18 = *(a1 + 32), v18 < *v17))
      {
        *(a1 + 32) = v18 + 1;
        v19 = *&v17[2 * v18 + 2];
      }

      else
      {
        v20 = *(a1 + 24);
        if (!v20)
        {
          operator new();
        }

        *v22 = v21;
        v22[1] = sub_195A650;
        *v21 = 0;
        v21[1] = 0;
        v21[2] = 0;
        v19 = sub_19593CC(a1 + 24, v21);
        v16 = *v28;
      }

      v15 = sub_1958890(v19, v16, a3);
      *v28 = v15;
      if (!v15)
      {
        goto LABEL_43;
      }

      if (*a3 <= v15 || *v15 != 18)
      {
        goto LABEL_36;
      }
    }
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
      v7 = *v28;
    }

    *v28 = sub_1952690(v8, v14, v7, a3);
    if (!*v28)
    {
      goto LABEL_43;
    }

    goto LABEL_36;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_43:
  *v28 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v28;
}

char *sub_14431A8(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 48);
    *v4 = 8;
    v4[1] = v6;
    v4 += 2;
  }

  v7 = *(a1 + 32);
  if (v7 >= 1)
  {
    v8 = 8;
    do
    {
      v4 = sub_1355F54(a3, 2, *(*(a1 + 40) + v8), v4);
      v8 += 8;
      --v7;
    }

    while (v7);
  }

  v9 = *(a1 + 8);
  if ((v9 & 1) == 0)
  {
    return v4;
  }

  v11 = v9 & 0xFFFFFFFFFFFFFFFCLL;
  v12 = *(v11 + 31);
  if (v12 < 0)
  {
    v13 = *(v11 + 8);
    v12 = *(v11 + 16);
  }

  else
  {
    v13 = (v11 + 8);
  }

  if ((*a3 - v4) >= v12)
  {
    v14 = v12;
    memcpy(v4, v13, v12);
    v4 += v14;
    return v4;
  }

  return sub_1957130(a3, v13, v12, v4);
}

uint64_t sub_14432CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 < 1)
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v2 = (*(a1 + 40) + 8);
    v3 = *(a1 + 32);
    do
    {
      v4 = *v2++;
      v5 = *(v4 + 23);
      v6 = *(v4 + 8);
      if ((v5 & 0x80u) == 0)
      {
        v6 = v5;
      }

      v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6);
      --v1;
    }

    while (v1);
  }

  v7 = v3 + 2 * (*(a1 + 16) & 1);
  v8 = *(a1 + 8);
  if (v8)
  {
    v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    v7 += v11;
  }

  *(a1 + 20) = v7;
  return v7;
}

uint64_t sub_1443380(uint64_t a1)
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

void sub_1443420(uint64_t a1)
{
  sub_1443380(a1);

  operator delete();
}

uint64_t sub_1443458(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
      if (v7 == 16)
      {
        v16 = v6 + 1;
        v15 = *v6;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_23;
        }

        v17 = *v16;
        v15 = (v17 << 7) + v15 - 128;
        if (v17 < 0)
        {
          *v22 = sub_19587DC(v6, v15);
          if (!*v22)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v16 = v6 + 2;
LABEL_23:
          *v22 = v16;
        }

        if (v15 > 2)
        {
          sub_12E8418();
        }

        else
        {
          *(a1 + 16) |= 2u;
          *(a1 + 32) = v15;
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
          return *v22;
        }

LABEL_38:
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
      goto LABEL_29;
    }

    if (v7 >> 3 != 1 || v7 != 10)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 1u;
    v18 = *(a1 + 8);
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    v20 = sub_194DB04((a1 + 24), v19);
    v14 = sub_1958890(v20, *v22, a3);
LABEL_29:
    *v22 = v14;
    if (!v14)
    {
      goto LABEL_38;
    }
  }

  return *v22;
}

char *sub_1443618(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_1443764(uint64_t a1)
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

void *sub_1443840(void *a1)
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

void sub_14438B4(void *a1)
{
  sub_1443840(a1);

  operator delete();
}

char *sub_14438EC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v102 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v102, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = v102 + 1;
    v8 = *v102;
    if (*v102 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v102, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v102 + 2;
      }
    }

    v102 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 8)
        {
          goto LABEL_100;
        }

        v5 |= 1u;
        v12 = v7 + 1;
        v11 = *v7;
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }

        v13 = *v12;
        v11 = (v13 << 7) + v11 - 128;
        if ((v13 & 0x80000000) == 0)
        {
          v12 = v7 + 2;
LABEL_12:
          v102 = v12;
          *(a1 + 24) = v11 != 0;
          goto LABEL_107;
        }

        v86 = sub_19587DC(v7, v11);
        v102 = v86;
        *(a1 + 24) = v87 != 0;
        if (v86)
        {
          goto LABEL_107;
        }

        goto LABEL_149;
      case 2u:
        if (v8 != 16)
        {
          goto LABEL_100;
        }

        v5 |= 2u;
        v45 = v7 + 1;
        v44 = *v7;
        if ((v44 & 0x8000000000000000) == 0)
        {
          goto LABEL_69;
        }

        v46 = *v45;
        v44 = (v46 << 7) + v44 - 128;
        if (v46 < 0)
        {
          v88 = sub_19587DC(v7, v44);
          v102 = v88;
          *(a1 + 25) = v89 != 0;
          if (!v88)
          {
            goto LABEL_149;
          }
        }

        else
        {
          v45 = v7 + 2;
LABEL_69:
          v102 = v45;
          *(a1 + 25) = v44 != 0;
        }

        goto LABEL_107;
      case 3u:
        if (v8 != 24)
        {
          goto LABEL_100;
        }

        v5 |= 4u;
        v33 = v7 + 1;
        v32 = *v7;
        if ((v32 & 0x8000000000000000) == 0)
        {
          goto LABEL_47;
        }

        v34 = *v33;
        v32 = (v34 << 7) + v32 - 128;
        if (v34 < 0)
        {
          v80 = sub_19587DC(v7, v32);
          v102 = v80;
          *(a1 + 26) = v81 != 0;
          if (!v80)
          {
            goto LABEL_149;
          }
        }

        else
        {
          v33 = v7 + 2;
LABEL_47:
          v102 = v33;
          *(a1 + 26) = v32 != 0;
        }

        goto LABEL_107;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_100;
        }

        v5 |= 8u;
        v39 = v7 + 1;
        v38 = *v7;
        if ((v38 & 0x8000000000000000) == 0)
        {
          goto LABEL_59;
        }

        v40 = *v39;
        v38 = (v40 << 7) + v38 - 128;
        if (v40 < 0)
        {
          v82 = sub_19587DC(v7, v38);
          v102 = v82;
          *(a1 + 27) = v83 != 0;
          if (!v82)
          {
            goto LABEL_149;
          }
        }

        else
        {
          v39 = v7 + 2;
LABEL_59:
          v102 = v39;
          *(a1 + 27) = v38 != 0;
        }

        goto LABEL_107;
      case 5u:
        if (v8 != 40)
        {
          goto LABEL_100;
        }

        v5 |= 0x20u;
        v24 = v7 + 1;
        v23 = *v7;
        if ((v23 & 0x8000000000000000) == 0)
        {
          goto LABEL_32;
        }

        v25 = *v24;
        v23 = (v25 << 7) + v23 - 128;
        if (v25 < 0)
        {
          v74 = sub_19587DC(v7, v23);
          v102 = v74;
          *(a1 + 32) = v75 != 0;
          if (!v74)
          {
            goto LABEL_149;
          }
        }

        else
        {
          v24 = v7 + 2;
LABEL_32:
          v102 = v24;
          *(a1 + 32) = v23 != 0;
        }

        goto LABEL_107;
      case 6u:
        if (v8 != 48)
        {
          goto LABEL_100;
        }

        v5 |= 0x10u;
        v50 = v7 + 1;
        v51 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_79;
        }

        v52 = *v50;
        v51 = v51 + (v52 << 7) - 128;
        if (v52 < 0)
        {
          v92 = sub_1958770(v7, v51);
          v102 = v92;
          *(a1 + 28) = v93;
          if (!v92)
          {
            goto LABEL_149;
          }
        }

        else
        {
          v50 = v7 + 2;
LABEL_79:
          v102 = v50;
          *(a1 + 28) = v51;
        }

        goto LABEL_107;
      case 7u:
        if (v8 != 56)
        {
          goto LABEL_100;
        }

        v5 |= 0x40u;
        v57 = v7 + 1;
        v56 = *v7;
        if ((v56 & 0x8000000000000000) == 0)
        {
          goto LABEL_89;
        }

        v58 = *v57;
        v56 = (v58 << 7) + v56 - 128;
        if (v58 < 0)
        {
          v96 = sub_19587DC(v7, v56);
          v102 = v96;
          *(a1 + 33) = v97 != 0;
          if (!v96)
          {
            goto LABEL_149;
          }
        }

        else
        {
          v57 = v7 + 2;
LABEL_89:
          v102 = v57;
          *(a1 + 33) = v56 != 0;
        }

        goto LABEL_107;
      case 8u:
        if (v8 != 64)
        {
          goto LABEL_100;
        }

        v5 |= 0x80u;
        v42 = v7 + 1;
        v41 = *v7;
        if ((v41 & 0x8000000000000000) == 0)
        {
          goto LABEL_64;
        }

        v43 = *v42;
        v41 = (v43 << 7) + v41 - 128;
        if (v43 < 0)
        {
          v84 = sub_19587DC(v7, v41);
          v102 = v84;
          *(a1 + 34) = v85 != 0;
          if (!v84)
          {
            goto LABEL_149;
          }
        }

        else
        {
          v42 = v7 + 2;
LABEL_64:
          v102 = v42;
          *(a1 + 34) = v41 != 0;
        }

        goto LABEL_107;
      case 9u:
        if (v8 != 72)
        {
          goto LABEL_100;
        }

        v5 |= 0x100u;
        v63 = v7 + 1;
        v62 = *v7;
        if ((v62 & 0x8000000000000000) == 0)
        {
          goto LABEL_99;
        }

        v64 = *v63;
        v62 = (v64 << 7) + v62 - 128;
        if (v64 < 0)
        {
          v100 = sub_19587DC(v7, v62);
          v102 = v100;
          *(a1 + 35) = v101 != 0;
          if (!v100)
          {
            goto LABEL_149;
          }
        }

        else
        {
          v63 = v7 + 2;
LABEL_99:
          v102 = v63;
          *(a1 + 35) = v62 != 0;
        }

        goto LABEL_107;
      case 0xAu:
        if (v8 != 80)
        {
          goto LABEL_100;
        }

        v5 |= 0x800u;
        v30 = v7 + 1;
        v29 = *v7;
        if ((v29 & 0x8000000000000000) == 0)
        {
          goto LABEL_42;
        }

        v31 = *v30;
        v29 = (v31 << 7) + v29 - 128;
        if (v31 < 0)
        {
          v78 = sub_19587DC(v7, v29);
          v102 = v78;
          *(a1 + 44) = v79 != 0;
          if (!v78)
          {
            goto LABEL_149;
          }
        }

        else
        {
          v30 = v7 + 2;
LABEL_42:
          v102 = v30;
          *(a1 + 44) = v29 != 0;
        }

        goto LABEL_107;
      case 0xBu:
        if (v8 != 88)
        {
          goto LABEL_100;
        }

        v5 |= 0x1000u;
        v60 = v7 + 1;
        v59 = *v7;
        if ((v59 & 0x8000000000000000) == 0)
        {
          goto LABEL_94;
        }

        v61 = *v60;
        v59 = (v61 << 7) + v59 - 128;
        if (v61 < 0)
        {
          v98 = sub_19587DC(v7, v59);
          v102 = v98;
          *(a1 + 45) = v99 != 0;
          if (!v98)
          {
            goto LABEL_149;
          }
        }

        else
        {
          v60 = v7 + 2;
LABEL_94:
          v102 = v60;
          *(a1 + 45) = v59 != 0;
        }

        goto LABEL_107;
      case 0xCu:
        if (v8 != 96)
        {
          goto LABEL_100;
        }

        v5 |= 0x200u;
        v20 = v7 + 1;
        v21 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_27;
        }

        v22 = *v20;
        v21 = v21 + (v22 << 7) - 128;
        if (v22 < 0)
        {
          v72 = sub_1958770(v7, v21);
          v102 = v72;
          *(a1 + 36) = v73;
          if (!v72)
          {
            goto LABEL_149;
          }
        }

        else
        {
          v20 = v7 + 2;
LABEL_27:
          v102 = v20;
          *(a1 + 36) = v21;
        }

        goto LABEL_107;
      case 0xDu:
        if (v8 != 104)
        {
          goto LABEL_100;
        }

        v5 |= 0x400u;
        v26 = v7 + 1;
        v27 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_37;
        }

        v28 = *v26;
        v27 = v27 + (v28 << 7) - 128;
        if (v28 < 0)
        {
          v76 = sub_1958770(v7, v27);
          v102 = v76;
          *(a1 + 40) = v77;
          if (!v76)
          {
            goto LABEL_149;
          }
        }

        else
        {
          v26 = v7 + 2;
LABEL_37:
          v102 = v26;
          *(a1 + 40) = v27;
        }

        goto LABEL_107;
      case 0xEu:
        if (v8 != 112)
        {
          goto LABEL_100;
        }

        v5 |= 0x8000u;
        v53 = v7 + 1;
        v54 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_84;
        }

        v55 = *v53;
        v54 = v54 + (v55 << 7) - 128;
        if (v55 < 0)
        {
          v94 = sub_1958770(v7, v54);
          v102 = v94;
          *(a1 + 48) = v95;
          if (!v94)
          {
            goto LABEL_149;
          }
        }

        else
        {
          v53 = v7 + 2;
LABEL_84:
          v102 = v53;
          *(a1 + 48) = v54;
        }

        goto LABEL_107;
      case 0xFu:
        if (v8 != 120)
        {
          goto LABEL_100;
        }

        v5 |= 0x2000u;
        v18 = v7 + 1;
        v17 = *v7;
        if ((v17 & 0x8000000000000000) == 0)
        {
          goto LABEL_22;
        }

        v19 = *v18;
        v17 = (v19 << 7) + v17 - 128;
        if (v19 < 0)
        {
          v70 = sub_19587DC(v7, v17);
          v102 = v70;
          *(a1 + 46) = v71 != 0;
          if (!v70)
          {
            goto LABEL_149;
          }
        }

        else
        {
          v18 = v7 + 2;
LABEL_22:
          v102 = v18;
          *(a1 + 46) = v17 != 0;
        }

        goto LABEL_107;
      case 0x10u:
        if (v8 != 128)
        {
          goto LABEL_100;
        }

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
          v102 = sub_19587DC(v7, v35);
          if (!v102)
          {
            goto LABEL_149;
          }
        }

        else
        {
          v36 = v7 + 2;
LABEL_52:
          v102 = v36;
        }

        if ((v35 - 1) > 2)
        {
          sub_144E0FC();
        }

        else
        {
          *(a1 + 16) |= 0x20000u;
          *(a1 + 56) = v35;
        }

        goto LABEL_107;
      case 0x11u:
        if (v8 != 136)
        {
          goto LABEL_100;
        }

        v5 |= 0x4000u;
        v15 = v7 + 1;
        v14 = *v7;
        if ((v14 & 0x8000000000000000) == 0)
        {
          goto LABEL_17;
        }

        v16 = *v15;
        v14 = (v16 << 7) + v14 - 128;
        if (v16 < 0)
        {
          v68 = sub_19587DC(v7, v14);
          v102 = v68;
          *(a1 + 47) = v69 != 0;
          if (!v68)
          {
            goto LABEL_149;
          }
        }

        else
        {
          v15 = v7 + 2;
LABEL_17:
          v102 = v15;
          *(a1 + 47) = v14 != 0;
        }

        goto LABEL_107;
      case 0x12u:
        if (v8 != 144)
        {
          goto LABEL_100;
        }

        v5 |= 0x10000u;
        v48 = v7 + 1;
        v47 = *v7;
        if ((v47 & 0x8000000000000000) == 0)
        {
          goto LABEL_74;
        }

        v49 = *v48;
        v47 = (v49 << 7) + v47 - 128;
        if (v49 < 0)
        {
          v90 = sub_19587DC(v7, v47);
          v102 = v90;
          *(a1 + 52) = v91 != 0;
          if (!v90)
          {
            goto LABEL_149;
          }
        }

        else
        {
          v48 = v7 + 2;
LABEL_74:
          v102 = v48;
          *(a1 + 52) = v47 != 0;
        }

        goto LABEL_107;
      default:
LABEL_100:
        if (v8)
        {
          v65 = (v8 & 7) == 4;
        }

        else
        {
          v65 = 1;
        }

        if (!v65)
        {
          v66 = *(a1 + 8);
          if (v66)
          {
            v67 = (v66 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v67 = sub_11F1920((a1 + 8));
            v7 = v102;
          }

          v102 = sub_1952690(v8, v67, v7, a3);
          if (!v102)
          {
            goto LABEL_149;
          }

LABEL_107:
          if (sub_195ADC0(a3, &v102, a3[11].u32[1]))
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
LABEL_149:
          v102 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return v102;
    }
  }
}

char *sub_14441E4(uint64_t a1, char *__dst, unint64_t *a3)
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
    __dst += 2;
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v8 = *(a1 + 25);
  *__dst = 16;
  __dst[1] = v8;
  __dst += 2;
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_14:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v9 = *(a1 + 26);
  *__dst = 24;
  __dst[1] = v9;
  __dst += 2;
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

LABEL_20:
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v11 = *(a1 + 32);
    *__dst = 40;
    __dst[1] = v11;
    __dst += 2;
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_17:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v10 = *(a1 + 27);
  *__dst = 32;
  __dst[1] = v10;
  __dst += 2;
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_20;
  }

LABEL_6:
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    v6 = __dst;
    goto LABEL_30;
  }

LABEL_23:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v12 = *(a1 + 28);
  *__dst = 48;
  __dst[1] = v12;
  if (v12 > 0x7F)
  {
    __dst[1] = v12 | 0x80;
    v13 = v12 >> 7;
    __dst[2] = v12 >> 7;
    v6 = __dst + 3;
    if (v12 >= 0x4000)
    {
      LOBYTE(v14) = __dst[2];
      do
      {
        *(v6 - 1) = v14 | 0x80;
        v14 = v13 >> 7;
        *v6++ = v13 >> 7;
        v15 = v13 >> 14;
        v13 >>= 7;
      }

      while (v15);
    }
  }

  else
  {
    v6 = __dst + 2;
  }

LABEL_30:
  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v17 = *(a1 + 33);
    *v6 = 56;
    v6[1] = v17;
    v6 += 2;
    if ((v5 & 0x80) == 0)
    {
LABEL_32:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_43;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_32;
  }

  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v18 = *(a1 + 34);
  *v6 = 64;
  v6[1] = v18;
  v6 += 2;
  if ((v5 & 0x100) == 0)
  {
LABEL_33:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_46;
  }

LABEL_43:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v19 = *(a1 + 35);
  *v6 = 72;
  v6[1] = v19;
  v6 += 2;
  if ((v5 & 0x800) == 0)
  {
LABEL_34:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_35;
    }

LABEL_49:
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v21 = *(a1 + 45);
    *v6 = 88;
    v6[1] = v21;
    v6 += 2;
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_52;
  }

LABEL_46:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v20 = *(a1 + 44);
  *v6 = 80;
  v6[1] = v20;
  v6 += 2;
  if ((v5 & 0x1000) != 0)
  {
    goto LABEL_49;
  }

LABEL_35:
  if ((v5 & 0x200) == 0)
  {
LABEL_36:
    v16 = v6;
    goto LABEL_59;
  }

LABEL_52:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v22 = *(a1 + 36);
  *v6 = 96;
  v6[1] = v22;
  if (v22 > 0x7F)
  {
    v6[1] = v22 | 0x80;
    v23 = v22 >> 7;
    v6[2] = v22 >> 7;
    v16 = v6 + 3;
    if (v22 >= 0x4000)
    {
      LOBYTE(v6) = v6[2];
      do
      {
        *(v16 - 1) = v6 | 0x80;
        LODWORD(v6) = v23 >> 7;
        *v16++ = v23 >> 7;
        v24 = v23 >> 14;
        v23 >>= 7;
      }

      while (v24);
    }
  }

  else
  {
    v16 = v6 + 2;
  }

LABEL_59:
  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v26 = *(a1 + 40);
    *v16 = 104;
    v16[1] = v26;
    if (v26 > 0x7F)
    {
      v16[1] = v26 | 0x80;
      v27 = v26 >> 7;
      v16[2] = v26 >> 7;
      v25 = v16 + 3;
      if (v26 >= 0x4000)
      {
        LOBYTE(v28) = v16[2];
        do
        {
          *(v25 - 1) = v28 | 0x80;
          v28 = v27 >> 7;
          *v25++ = v27 >> 7;
          v29 = v27 >> 14;
          v27 >>= 7;
        }

        while (v29);
      }
    }

    else
    {
      v25 = v16 + 2;
    }
  }

  else
  {
    v25 = v16;
  }

  if ((v5 & 0x8000) != 0)
  {
    if (*a3 <= v25)
    {
      v25 = sub_225EB68(a3, v25);
    }

    v31 = *(a1 + 48);
    *v25 = 112;
    v25[1] = v31;
    if (v31 > 0x7F)
    {
      v25[1] = v31 | 0x80;
      v32 = v31 >> 7;
      v25[2] = v31 >> 7;
      v30 = v25 + 3;
      if (v31 >= 0x4000)
      {
        LOBYTE(v25) = v25[2];
        do
        {
          *(v30 - 1) = v25 | 0x80;
          LODWORD(v25) = v32 >> 7;
          *v30++ = v32 >> 7;
          v33 = v32 >> 14;
          v32 >>= 7;
        }

        while (v33);
      }
    }

    else
    {
      v30 = v25 + 2;
    }
  }

  else
  {
    v30 = v25;
  }

  if ((v5 & 0x2000) != 0)
  {
    if (*a3 <= v30)
    {
      v30 = sub_225EB68(a3, v30);
    }

    v34 = *(a1 + 46);
    *v30 = 120;
    v30[1] = v34;
    v30 += 2;
  }

  if ((v5 & 0x20000) != 0)
  {
    if (*a3 <= v30)
    {
      v30 = sub_225EB68(a3, v30);
    }

    v36 = *(a1 + 56);
    *v30 = 384;
    v30[2] = v36;
    if (v36 > 0x7F)
    {
      v30[2] = v36 | 0x80;
      v37 = v36 >> 7;
      v30[3] = v36 >> 7;
      v35 = v30 + 4;
      if (v36 >= 0x4000)
      {
        LOBYTE(v38) = v30[3];
        do
        {
          *(v35 - 1) = v38 | 0x80;
          v38 = v37 >> 7;
          *v35++ = v37 >> 7;
          v39 = v37 >> 14;
          v37 >>= 7;
        }

        while (v39);
      }
    }

    else
    {
      v35 = v30 + 3;
    }
  }

  else
  {
    v35 = v30;
  }

  if ((v5 & 0x4000) != 0)
  {
    if (*a3 <= v35)
    {
      v35 = sub_225EB68(a3, v35);
    }

    v40 = *(a1 + 47);
    *v35 = 392;
    v35[2] = v40;
    v35 += 3;
  }

  if ((v5 & 0x10000) != 0)
  {
    if (*a3 <= v35)
    {
      v35 = sub_225EB68(a3, v35);
    }

    v41 = *(a1 + 52);
    *v35 = 400;
    v35[2] = v41;
    v35 += 3;
  }

  v42 = *(a1 + 8);
  if ((v42 & 1) == 0)
  {
    return v35;
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

  if ((*a3 - v35) >= v45)
  {
    v47 = v45;
    memcpy(v35, v46, v45);
    v35 += v47;
    return v35;
  }

  return sub_1957130(a3, v46, v45, v35);
}

unint64_t sub_144480C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v2 = 2 * (*(a1 + 16) & 1) + (*(a1 + 16) & 2) + ((*(a1 + 16) >> 1) & 2) + ((*(a1 + 16) >> 2) & 2);
    if ((v1 & 0x10) != 0)
    {
      v2 += ((9 * (__clz(*(a1 + 28) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 = ((v1 >> 5) & 2) + ((v1 >> 4) & 2) + ((v1 >> 6) & 2) + v2;
  }

  else
  {
    v3 = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    v4 = v3 + ((v1 >> 7) & 2);
    if ((v1 & 0x200) != 0)
    {
      v4 += ((9 * (__clz(*(a1 + 36) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v1 & 0x400) != 0)
    {
      v4 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 = v4 + ((v1 >> 11) & 2) + ((v1 >> 10) & 2) + ((v1 >> 12) & 2);
    if ((v1 & 0x4000) != 0)
    {
      v3 += 3;
    }

    if ((v1 & 0x8000) != 0)
    {
      v3 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  if ((v1 & 0x30000) != 0)
  {
    if ((v1 & 0x10000) != 0)
    {
      v3 += 3;
    }

    if ((v1 & 0x20000) != 0)
    {
      v5 = *(a1 + 56);
      v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v5 >= 0)
      {
        v7 = v6;
      }

      else
      {
        v7 = 12;
      }

      v3 += v7;
    }
  }

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

uint64_t sub_14449D8(uint64_t a1)
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

  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C((a1 + 72));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_13:
  sub_144D914((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1444AC4(uint64_t a1)
{
  sub_14449D8(a1);

  operator delete();
}

uint64_t sub_1444AFC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_149D390(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 0xF) != 0)
  {
    if ((v5 & 1) == 0)
    {
      if ((v5 & 2) == 0)
      {
        goto LABEL_8;
      }

LABEL_15:
      v7 = *(v1 + 56) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v7 + 23) < 0)
      {
        **v7 = 0;
        *(v7 + 8) = 0;
        if ((v5 & 4) != 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *v7 = 0;
        *(v7 + 23) = 0;
        if ((v5 & 4) != 0)
        {
          goto LABEL_19;
        }
      }

LABEL_9:
      if ((v5 & 8) == 0)
      {
        goto LABEL_26;
      }

LABEL_23:
      v9 = *(v1 + 72) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v9 + 23) < 0)
      {
        **v9 = 0;
        *(v9 + 8) = 0;
      }

      else
      {
        *v9 = 0;
        *(v9 + 23) = 0;
      }

      goto LABEL_26;
    }

    v6 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_19:
    v8 = *(v1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
      if ((v5 & 8) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
      if ((v5 & 8) == 0)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_23;
  }

LABEL_26:
  if ((v5 & 0xF0) != 0)
  {
    *(v1 + 80) = 0;
    *(v1 + 88) = 0;
  }

  if ((v5 & 0x3F00) != 0)
  {
    *(v1 + 96) = 0u;
    *(v1 + 112) = 0u;
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

uint64_t sub_1444C70(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v65 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v65, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v65 + 1);
    v8 = **v65;
    if (**v65 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v65, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v65 + 2);
      }
    }

    *v65 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 8)
        {
          goto LABEL_90;
        }

        v5 |= 0x10u;
        v11 = v7 + 1;
        v12 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_12;
        }

        v13 = *v11;
        v12 = v12 + (v13 << 7) - 128;
        if ((v13 & 0x80000000) == 0)
        {
          v11 = v7 + 2;
LABEL_12:
          *v65 = v11;
          *(a1 + 80) = v12;
          goto LABEL_88;
        }

        v57 = sub_1958770(v7, v12);
        *v65 = v57;
        *(a1 + 80) = v58;
        if (v57)
        {
          goto LABEL_88;
        }

        goto LABEL_119;
      case 2u:
        if (v8 != 16)
        {
          goto LABEL_90;
        }

        v5 |= 0x20u;
        v27 = v7 + 1;
        v28 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_43;
        }

        v29 = *v27;
        v28 = v28 + (v29 << 7) - 128;
        if (v29 < 0)
        {
          v59 = sub_1958770(v7, v28);
          *v65 = v59;
          *(a1 + 84) = v60;
          if (!v59)
          {
            goto LABEL_119;
          }
        }

        else
        {
          v27 = v7 + 2;
LABEL_43:
          *v65 = v27;
          *(a1 + 84) = v28;
        }

        goto LABEL_88;
      case 3u:
        if (v8 != 24)
        {
          goto LABEL_90;
        }

        v5 |= 0x40u;
        v22 = v7 + 1;
        v23 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_30;
        }

        v24 = *v22;
        v23 = v23 + (v24 << 7) - 128;
        if (v24 < 0)
        {
          v55 = sub_1958770(v7, v23);
          *v65 = v55;
          *(a1 + 88) = v56;
          if (!v55)
          {
            goto LABEL_119;
          }
        }

        else
        {
          v22 = v7 + 2;
LABEL_30:
          *v65 = v22;
          *(a1 + 88) = v23;
        }

        goto LABEL_88;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_90;
        }

        v5 |= 0x80u;
        v37 = v7 + 1;
        v38 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_65;
        }

        v39 = *v37;
        v38 = v38 + (v39 << 7) - 128;
        if (v39 < 0)
        {
          v61 = sub_1958770(v7, v38);
          *v65 = v61;
          *(a1 + 92) = v62;
          if (!v61)
          {
            goto LABEL_119;
          }
        }

        else
        {
          v37 = v7 + 2;
LABEL_65:
          *v65 = v37;
          *(a1 + 92) = v38;
        }

        goto LABEL_88;
      case 6u:
        if (v8 != 50)
        {
          goto LABEL_90;
        }

        v40 = v7 - 1;
        while (1)
        {
          v41 = v40 + 1;
          *v65 = v40 + 1;
          v42 = *(a1 + 40);
          if (v42 && (v43 = *(a1 + 32), v43 < *v42))
          {
            *(a1 + 32) = v43 + 1;
            v44 = *&v42[2 * v43 + 2];
          }

          else
          {
            v45 = sub_14BDE5C(*(a1 + 24));
            v44 = sub_19593CC(a1 + 24, v45);
            v41 = *v65;
          }

          v40 = sub_21F6500(a3, v44, v41);
          *v65 = v40;
          if (!v40)
          {
            goto LABEL_119;
          }

          if (*a3 <= v40 || *v40 != 50)
          {
            goto LABEL_88;
          }
        }

      case 8u:
        if (v8 != 66)
        {
          goto LABEL_90;
        }

        *(a1 + 16) |= 1u;
        v25 = *(a1 + 8);
        v15 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
        if (v25)
        {
          v15 = *v15;
        }

        v16 = (a1 + 48);
        goto LABEL_48;
      case 9u:
        if (v8 != 74)
        {
          goto LABEL_90;
        }

        *(a1 + 16) |= 2u;
        v30 = *(a1 + 8);
        v15 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
        if (v30)
        {
          v15 = *v15;
        }

        v16 = (a1 + 56);
        goto LABEL_48;
      case 0xAu:
        if (v8 != 80)
        {
          goto LABEL_90;
        }

        v34 = v7 + 1;
        v33 = *v7;
        if ((v33 & 0x8000000000000000) == 0)
        {
          goto LABEL_55;
        }

        v35 = *v34;
        v33 = (v35 << 7) + v33 - 128;
        if (v35 < 0)
        {
          *v65 = sub_19587DC(v7, v33);
          if (!*v65)
          {
            goto LABEL_119;
          }
        }

        else
        {
          v34 = v7 + 2;
LABEL_55:
          *v65 = v34;
        }

        if (v33 > 7)
        {
          sub_12E8488();
        }

        else
        {
          *(a1 + 16) |= 0x100u;
          *(a1 + 96) = v33;
        }

        goto LABEL_88;
      case 0xBu:
        if (v8 != 88)
        {
          goto LABEL_90;
        }

        v50 = v7 + 1;
        v49 = *v7;
        if ((v49 & 0x8000000000000000) == 0)
        {
          goto LABEL_85;
        }

        v51 = *v50;
        v49 = (v51 << 7) + v49 - 128;
        if (v51 < 0)
        {
          *v65 = sub_19587DC(v7, v49);
          if (!*v65)
          {
            goto LABEL_119;
          }
        }

        else
        {
          v50 = v7 + 2;
LABEL_85:
          *v65 = v50;
        }

        if (v49 > 5)
        {
          sub_1313680();
        }

        else
        {
          *(a1 + 16) |= 0x200u;
          *(a1 + 100) = v49;
        }

        goto LABEL_88;
      case 0xCu:
        if (v8 != 96)
        {
          goto LABEL_90;
        }

        v5 |= 0x400u;
        v47 = v7 + 1;
        v46 = *v7;
        if ((v46 & 0x8000000000000000) == 0)
        {
          goto LABEL_80;
        }

        v48 = *v47;
        v46 = (v48 << 7) + v46 - 128;
        if (v48 < 0)
        {
          v63 = sub_19587DC(v7, v46);
          *v65 = v63;
          *(a1 + 104) = v64 != 0;
          if (!v63)
          {
            goto LABEL_119;
          }
        }

        else
        {
          v47 = v7 + 2;
LABEL_80:
          *v65 = v47;
          *(a1 + 104) = v46 != 0;
        }

        goto LABEL_88;
      case 0xDu:
        if (v8 != 104)
        {
          goto LABEL_90;
        }

        v18 = v7 + 1;
        v17 = *v7;
        if ((v17 & 0x8000000000000000) == 0)
        {
          goto LABEL_21;
        }

        v19 = *v18;
        v17 = (v19 << 7) + v17 - 128;
        if (v19 < 0)
        {
          *v65 = sub_19587DC(v7, v17);
          if (!*v65)
          {
            goto LABEL_119;
          }
        }

        else
        {
          v18 = v7 + 2;
LABEL_21:
          *v65 = v18;
        }

        if (v17 > 2)
        {
          sub_144E0C4();
        }

        else
        {
          *(a1 + 16) |= 0x800u;
          *(a1 + 108) = v17;
        }

        goto LABEL_88;
      case 0xEu:
        if (v8 != 114)
        {
          goto LABEL_90;
        }

        *(a1 + 16) |= 4u;
        v26 = *(a1 + 8);
        v15 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        if (v26)
        {
          v15 = *v15;
        }

        v16 = (a1 + 64);
        goto LABEL_48;
      case 0xFu:
        if (v8 != 121)
        {
          goto LABEL_90;
        }

        v21 = *v7;
        v20 = v7 + 8;
        v5 |= 0x1000u;
        *(a1 + 112) = v21;
        goto LABEL_60;
      case 0x10u:
        if (v8 != 130)
        {
          goto LABEL_90;
        }

        *(a1 + 16) |= 8u;
        v14 = *(a1 + 8);
        v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
        if (v14)
        {
          v15 = *v15;
        }

        v16 = (a1 + 72);
LABEL_48:
        v31 = sub_194DB04(v16, v15);
        v32 = sub_1958890(v31, *v65, a3);
        goto LABEL_49;
      case 0x11u:
        if (v8 != 137)
        {
          goto LABEL_90;
        }

        v36 = *v7;
        v20 = v7 + 8;
        v5 |= 0x2000u;
        *(a1 + 120) = v36;
LABEL_60:
        *v65 = v20;
        goto LABEL_88;
      default:
LABEL_90:
        if (v8)
        {
          v52 = (v8 & 7) == 4;
        }

        else
        {
          v52 = 1;
        }

        if (!v52)
        {
          v53 = *(a1 + 8);
          if (v53)
          {
            v54 = (v53 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v54 = sub_11F1920((a1 + 8));
            v7 = *v65;
          }

          v32 = sub_1952690(v8, v54, v7, a3);
LABEL_49:
          *v65 = v32;
          if (!v32)
          {
            goto LABEL_119;
          }

LABEL_88:
          if (sub_195ADC0(a3, v65, a3[11].u32[1]))
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
LABEL_119:
          *v65 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v65;
    }
  }
}

char *sub_14452E0(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 80);
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

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 84);
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

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 88);
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

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 92);
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
      *v19 = 50;
      v27 = *(v26 + 44);
      v19[1] = v27;
      if (v27 > 0x7F)
      {
        v28 = sub_19575D0(v27, v19 + 1);
      }

      else
      {
        v28 = v19 + 2;
      }

      v19 = sub_149DD64(v26, v28, a3);
    }
  }

  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_47;
    }

LABEL_50:
    v19 = sub_128AEEC(a3, 9, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v19);
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_51;
  }

  v19 = sub_128AEEC(a3, 8, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v19);
  if ((v5 & 2) != 0)
  {
    goto LABEL_50;
  }

LABEL_47:
  if ((v5 & 0x100) == 0)
  {
LABEL_48:
    v29 = v19;
    goto LABEL_58;
  }

LABEL_51:
  if (*a3 <= v19)
  {
    v19 = sub_225EB68(a3, v19);
  }

  v30 = *(a1 + 96);
  *v19 = 80;
  v19[1] = v30;
  if (v30 > 0x7F)
  {
    v19[1] = v30 | 0x80;
    v31 = v30 >> 7;
    v19[2] = v30 >> 7;
    v29 = v19 + 3;
    if (v30 >= 0x4000)
    {
      LOBYTE(v32) = v19[2];
      do
      {
        *(v29 - 1) = v32 | 0x80;
        v32 = v31 >> 7;
        *v29++ = v31 >> 7;
        v33 = v31 >> 14;
        v31 >>= 7;
      }

      while (v33);
    }
  }

  else
  {
    v29 = v19 + 2;
  }

LABEL_58:
  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v29)
    {
      v29 = sub_225EB68(a3, v29);
    }

    v35 = *(a1 + 100);
    *v29 = 88;
    v29[1] = v35;
    if (v35 > 0x7F)
    {
      v29[1] = v35 | 0x80;
      v36 = v35 >> 7;
      v29[2] = v35 >> 7;
      v34 = v29 + 3;
      if (v35 >= 0x4000)
      {
        LOBYTE(v29) = v29[2];
        do
        {
          *(v34 - 1) = v29 | 0x80;
          v29 = (v36 >> 7);
          *v34++ = v36 >> 7;
          v37 = v36 >> 14;
          v36 >>= 7;
        }

        while (v37);
      }
    }

    else
    {
      v34 = v29 + 2;
    }
  }

  else
  {
    v34 = v29;
  }

  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= v34)
    {
      v34 = sub_225EB68(a3, v34);
    }

    v38 = *(a1 + 104);
    *v34 = 96;
    v34[1] = v38;
    v34 += 2;
  }

  if ((v5 & 0x800) != 0)
  {
    if (*a3 <= v34)
    {
      v34 = sub_225EB68(a3, v34);
    }

    v40 = *(a1 + 108);
    *v34 = 104;
    v34[1] = v40;
    if (v40 > 0x7F)
    {
      v34[1] = v40 | 0x80;
      v41 = v40 >> 7;
      v34[2] = v40 >> 7;
      v39 = v34 + 3;
      if (v40 >= 0x4000)
      {
        LOBYTE(v42) = v34[2];
        do
        {
          *(v39 - 1) = v42 | 0x80;
          v42 = v41 >> 7;
          *v39++ = v41 >> 7;
          v43 = v41 >> 14;
          v41 >>= 7;
        }

        while (v43);
      }
    }

    else
    {
      v39 = v34 + 2;
    }
  }

  else
  {
    v39 = v34;
  }

  if ((v5 & 4) != 0)
  {
    v39 = sub_128AEEC(a3, 14, (*(a1 + 64) & 0xFFFFFFFFFFFFFFFELL), v39);
    if ((v5 & 0x1000) == 0)
    {
LABEL_82:
      if ((v5 & 8) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_89;
    }
  }

  else if ((v5 & 0x1000) == 0)
  {
    goto LABEL_82;
  }

  if (*a3 <= v39)
  {
    v39 = sub_225EB68(a3, v39);
  }

  v44 = *(a1 + 112);
  *v39 = 121;
  *(v39 + 1) = v44;
  v39 += 9;
  if ((v5 & 8) == 0)
  {
LABEL_83:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_90;
  }

LABEL_89:
  v39 = sub_128AEEC(a3, 16, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), v39);
  if ((v5 & 0x2000) == 0)
  {
    goto LABEL_93;
  }

LABEL_90:
  if (*a3 <= v39)
  {
    v39 = sub_225EB68(a3, v39);
  }

  v45 = *(a1 + 120);
  *v39 = 393;
  *(v39 + 2) = v45;
  v39 += 10;
LABEL_93:
  v46 = *(a1 + 8);
  if ((v46 & 1) == 0)
  {
    return v39;
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

  if ((*a3 - v39) >= v49)
  {
    v51 = v49;
    memcpy(v39, v50, v49);
    v39 += v51;
    return v39;
  }

  return sub_1957130(a3, v50, v49, v39);
}

uint64_t sub_1445900(uint64_t a1)
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
      v7 = sub_149E4E4(v6);
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
        goto LABEL_13;
      }

      goto LABEL_29;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v14 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v15 = *(v14 + 23);
  v16 = *(v14 + 8);
  if ((v15 & 0x80u) == 0)
  {
    v16 = v15;
  }

  v2 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_29:
  v17 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  v18 = *(v17 + 23);
  v19 = *(v17 + 8);
  if ((v18 & 0x80u) == 0)
  {
    v19 = v18;
  }

  v2 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) == 0)
  {
LABEL_14:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_32:
  v20 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  v21 = *(v20 + 23);
  v22 = *(v20 + 8);
  if ((v21 & 0x80u) == 0)
  {
    v22 = v21;
  }

  v2 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x10) == 0)
  {
LABEL_15:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_16;
    }

LABEL_36:
    v2 += ((9 * (__clz(*(a1 + 84) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x40) == 0)
    {
LABEL_17:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_35:
  v2 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x20) != 0)
  {
    goto LABEL_36;
  }

LABEL_16:
  if ((v8 & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_37:
  v2 += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x80) != 0)
  {
LABEL_18:
    v2 += ((9 * (__clz(*(a1 + 92) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_19:
  if ((v8 & 0x3F00) != 0)
  {
    if ((v8 & 0x100) != 0)
    {
      v9 = *(a1 + 96);
      if (v9 < 0)
      {
        v10 = 11;
      }

      else
      {
        v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v2 += v10;
    }

    if ((v8 & 0x200) != 0)
    {
      v23 = *(a1 + 100);
      if (v23 < 0)
      {
        v24 = 11;
      }

      else
      {
        v24 = ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v2 += v24;
    }

    v25 = v2 + ((v8 >> 9) & 2);
    if ((v8 & 0x800) != 0)
    {
      v26 = *(a1 + 108);
      v27 = ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v26 >= 0)
      {
        v28 = v27;
      }

      else
      {
        v28 = 11;
      }

      v25 += v28;
    }

    if ((v8 & 0x1000) != 0)
    {
      v25 += 9;
    }

    if ((v8 & 0x2000) != 0)
    {
      v2 = v25 + 10;
    }

    else
    {
      v2 = v25;
    }
  }

  v29 = *(a1 + 8);
  if (v29)
  {
    v31 = v29 & 0xFFFFFFFFFFFFFFFCLL;
    v32 = *((v29 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v32 < 0)
    {
      v32 = *(v31 + 16);
    }

    v2 += v32;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_1445C4C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_144DA24((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32), v7);
    v8 = *(a1 + 32) + v4;
    *(a1 + 32) = v8;
    v9 = *(a1 + 40);
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
      v12 = *(a2 + 48);
      *(a1 + 16) |= 1u;
      v13 = *(a1 + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      sub_194EA1C((a1 + 48), (v12 & 0xFFFFFFFFFFFFFFFELL), v14);
      if ((v10 & 2) == 0)
      {
LABEL_7:
        if ((v10 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_34;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_7;
    }

    v15 = *(a2 + 56);
    *(a1 + 16) |= 2u;
    v16 = *(a1 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    sub_194EA1C((a1 + 56), (v15 & 0xFFFFFFFFFFFFFFFELL), v17);
    if ((v10 & 4) == 0)
    {
LABEL_8:
      if ((v10 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_37;
    }

LABEL_34:
    v18 = *(a2 + 64);
    *(a1 + 16) |= 4u;
    v19 = *(a1 + 8);
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    sub_194EA1C((a1 + 64), (v18 & 0xFFFFFFFFFFFFFFFELL), v20);
    if ((v10 & 8) == 0)
    {
LABEL_9:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_40;
    }

LABEL_37:
    v21 = *(a2 + 72);
    *(a1 + 16) |= 8u;
    v22 = *(a1 + 8);
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    sub_194EA1C((a1 + 72), (v21 & 0xFFFFFFFFFFFFFFFELL), v23);
    if ((v10 & 0x10) == 0)
    {
LABEL_10:
      if ((v10 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_41;
    }

LABEL_40:
    *(a1 + 80) = *(a2 + 80);
    if ((v10 & 0x20) == 0)
    {
LABEL_11:
      if ((v10 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_42;
    }

LABEL_41:
    *(a1 + 84) = *(a2 + 84);
    if ((v10 & 0x40) == 0)
    {
LABEL_12:
      if ((v10 & 0x80) == 0)
      {
LABEL_14:
        *(a1 + 16) |= v10;
        goto LABEL_15;
      }

LABEL_13:
      *(a1 + 92) = *(a2 + 92);
      goto LABEL_14;
    }

LABEL_42:
    *(a1 + 88) = *(a2 + 88);
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_15:
  if ((v10 & 0x3F00) == 0)
  {
    goto LABEL_24;
  }

  if ((v10 & 0x100) != 0)
  {
    *(a1 + 96) = *(a2 + 96);
    if ((v10 & 0x200) == 0)
    {
LABEL_18:
      if ((v10 & 0x400) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_46;
    }
  }

  else if ((v10 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  *(a1 + 100) = *(a2 + 100);
  if ((v10 & 0x400) == 0)
  {
LABEL_19:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(a1 + 104) = *(a2 + 104);
  if ((v10 & 0x800) == 0)
  {
LABEL_20:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

LABEL_48:
    *(a1 + 112) = *(a2 + 112);
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_47:
  *(a1 + 108) = *(a2 + 108);
  if ((v10 & 0x1000) != 0)
  {
    goto LABEL_48;
  }

LABEL_21:
  if ((v10 & 0x2000) != 0)
  {
LABEL_22:
    *(a1 + 120) = *(a2 + 120);
  }

LABEL_23:
  *(a1 + 16) |= v10;
LABEL_24:
  v11 = *(a2 + 8);
  if (v11)
  {

    sub_1957EF4((a1 + 8), (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_1445EB4(uint64_t a1)
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
    v5 = sub_149EC98(*(*(a1 + 40) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

uint64_t sub_1445F1C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E2308;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = a1;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = a1;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 120) = a1;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 144) = a1;
  *(result + 152) = 0;
  *(result + 160) = 0;
  *(result + 168) = &qword_278E990;
  *(result + 176) = 0;
  return result;
}

void *sub_1445FF4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E2388;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

double sub_1446070(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26E2408;
  *(v2 + 16) = 0;
  *(v2 + 24) = &qword_278E990;
  *(v2 + 32) = &qword_278E990;
  *(v2 + 40) = &qword_278E990;
  *(v2 + 48) = &qword_278E990;
  result = 0.0;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 100) = 0u;
  return result;
}

double sub_144610C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26E2488;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0;
  result = NAN;
  *(v2 + 84) = -1;
  *(v2 + 96) = 0xBFF0000000000000;
  return result;
}

double sub_14461A0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26E2508;
  *(v2 + 16) = 0;
  *(v2 + 24) = &qword_278E990;
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 76) = 0u;
  *(v2 + 92) = 4;
  return result;
}

void *sub_144623C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E2588;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_14462B8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E2608;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 36) = -1;
  return result;
}

double sub_144633C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26E2688;
  result = 0.0;
  *(v2 + 16) = xmmword_2266B40;
  return result;
}

uint64_t sub_14463BC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E2708;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t sub_1446458(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E2788;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  return result;
}

double sub_14464E0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26E2808;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 45) = 0;
  *(v2 + 56) = 1;
  return result;
}

double sub_1446568(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26E2888;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = &qword_278E990;
  *(v2 + 56) = &qword_278E990;
  *(v2 + 64) = &qword_278E990;
  *(v2 + 72) = &qword_278E990;
  result = 0.0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  return result;
}

uint64_t sub_144661C(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26E2908;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0u;
  *(a1 + 56) = a2;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 140) = 0u;
  return a1;
}

void sub_14466A4(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_14466D4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_26E2908;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 60) = 0;
  *(a1 + 44) = 0;
  *(a1 + 52) = 0;
  v6 = *(a2 + 48);
  if (v6)
  {
    sub_1959094((a1 + 48), v6);
    v7 = *(a1 + 56);
    *(a1 + 48) += *(a2 + 48);
    memcpy(v7, *(a2 + 56), 8 * *(a2 + 48));
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v8 = *(a2 + 64);
  if (v8)
  {
    sub_1959094((a1 + 64), v8);
    v9 = *(a1 + 72);
    *(a1 + 64) += *(a2 + 64);
    memcpy(v9, *(a2 + 72), 8 * *(a2 + 64));
  }

  v10 = *(a2 + 8);
  if (v10)
  {
    sub_1957EF4(v4, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v5, a2 + 16);
  *(a1 + 80) = *(a2 + 80);
  v11 = *(a2 + 96);
  v12 = *(a2 + 112);
  v13 = *(a2 + 128);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 112) = v12;
  *(a1 + 128) = v13;
  *(a1 + 96) = v11;
  return a1;
}

void sub_1446808(_Unwind_Exception *a1)
{
  sub_1956ABC((v1 + 6));
  sub_194F914(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1446868(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956ABC((a1 + 8));
  sub_1956ABC((a1 + 6));
  sub_194F914((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14468F4(void *a1)
{
  sub_1446868(a1);

  operator delete();
}

unsigned __int8 *sub_144692C(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  v3 = *(a1 + 40);
  if (v3)
  {
    *(a1 + 112) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
  }

  if ((v3 & 0x300) != 0)
  {
    *(a1 + 152) = 0;
    *(a1 + 144) = 0;
  }

  v5 = *(a1 + 8);
  v4 = a1 + 8;
  *(v4 + 32) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

char *sub_14469B0(uint64_t a1, char *a2, int32x2_t *a3)
{
  v80 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v80, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v80 + 1;
    v8 = *v80;
    if (*v80 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v80, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v80 + 2;
      }
    }

    v80 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 6)
    {
      break;
    }

    if (v8 >> 3 > 3)
    {
      if (v11 == 4)
      {
        if (v8 == 32)
        {
          v31 = v7 - 1;
          while (1)
          {
            v80 = v31 + 1;
            v32 = v31[1];
            if (v32 < 0)
            {
              v33 = (v31[2] << 7) + v32;
              v32 = (v33 - 128);
              if (v31[2] < 0)
              {
                v31 = sub_19587DC((v31 + 1), (v33 - 128));
                v32 = v34;
              }

              else
              {
                v31 += 3;
              }
            }

            else
            {
              v31 += 2;
            }

            v80 = v31;
            v35 = *(a1 + 48);
            if (v35 == *(a1 + 52))
            {
              v36 = v35 + 1;
              sub_1959094((a1 + 48), v35 + 1);
              *(*(a1 + 56) + 8 * v35) = v32;
              v31 = v80;
            }

            else
            {
              *(*(a1 + 56) + 8 * v35) = v32;
              v36 = v35 + 1;
            }

            *(a1 + 48) = v36;
            if (!v31)
            {
              goto LABEL_143;
            }

            if (*a3 <= v31 || *v31 != 32)
            {
              goto LABEL_138;
            }
          }
        }

        if (v8 == 34)
        {
          v75 = (a1 + 48);
          goto LABEL_127;
        }

        goto LABEL_128;
      }

      if (v11 == 5)
      {
        if (v8 != 40)
        {
          goto LABEL_128;
        }

        v5 |= 8u;
        v50 = v7 + 1;
        v49 = *v7;
        if ((v49 & 0x8000000000000000) == 0)
        {
          goto LABEL_97;
        }

        v51 = *v50;
        v49 = (v51 << 7) + v49 - 128;
        if ((v51 & 0x80000000) == 0)
        {
          v50 = v7 + 2;
LABEL_97:
          v80 = v50;
          *(a1 + 104) = v49;
          goto LABEL_138;
        }

        v71 = sub_19587DC(v7, v49);
        v80 = v71;
        *(a1 + 104) = v72;
        if (!v71)
        {
          goto LABEL_143;
        }
      }

      else
      {
        if (v11 != 6 || v8 != 48)
        {
          goto LABEL_128;
        }

        v5 |= 0x10u;
        v20 = v7 + 1;
        v19 = *v7;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_36;
        }

        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if ((v21 & 0x80000000) == 0)
        {
          v20 = v7 + 2;
LABEL_36:
          v80 = v20;
          *(a1 + 112) = v19;
          goto LABEL_138;
        }

        v59 = sub_19587DC(v7, v19);
        v80 = v59;
        *(a1 + 112) = v60;
        if (!v59)
        {
          goto LABEL_143;
        }
      }
    }

    else if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_128;
      }

      v5 |= 1u;
      v26 = v7 + 1;
      v25 = *v7;
      if ((v25 & 0x8000000000000000) == 0)
      {
        goto LABEL_49;
      }

      v27 = *v26;
      v25 = (v27 << 7) + v25 - 128;
      if ((v27 & 0x80000000) == 0)
      {
        v26 = v7 + 2;
LABEL_49:
        v80 = v26;
        *(a1 + 80) = v25;
        goto LABEL_138;
      }

      v63 = sub_19587DC(v7, v25);
      v80 = v63;
      *(a1 + 80) = v64;
      if (!v63)
      {
        goto LABEL_143;
      }
    }

    else if (v11 == 2)
    {
      if (v8 != 16)
      {
        goto LABEL_128;
      }

      v5 |= 2u;
      v44 = v7 + 1;
      v43 = *v7;
      if ((v43 & 0x8000000000000000) == 0)
      {
        goto LABEL_87;
      }

      v45 = *v44;
      v43 = (v45 << 7) + v43 - 128;
      if ((v45 & 0x80000000) == 0)
      {
        v44 = v7 + 2;
LABEL_87:
        v80 = v44;
        *(a1 + 88) = v43;
        goto LABEL_138;
      }

      v67 = sub_19587DC(v7, v43);
      v80 = v67;
      *(a1 + 88) = v68;
      if (!v67)
      {
        goto LABEL_143;
      }
    }

    else
    {
      if (v11 != 3 || v8 != 24)
      {
        goto LABEL_128;
      }

      v5 |= 4u;
      v14 = v7 + 1;
      v13 = *v7;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if ((v15 & 0x80000000) == 0)
      {
        v14 = v7 + 2;
LABEL_19:
        v80 = v14;
        *(a1 + 96) = v13;
        goto LABEL_138;
      }

      v55 = sub_19587DC(v7, v13);
      v80 = v55;
      *(a1 + 96) = v56;
      if (!v55)
      {
        goto LABEL_143;
      }
    }

LABEL_138:
    if (sub_195ADC0(a3, &v80, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 9)
  {
    if (v11 == 7)
    {
      if (v8 != 56)
      {
        goto LABEL_128;
      }

      v5 |= 0x200u;
      v29 = v7 + 1;
      LODWORD(v28) = *v7;
      if ((v28 & 0x80) == 0)
      {
        goto LABEL_54;
      }

      v30 = *v29;
      v28 = v28 + (v30 << 7) - 128;
      if ((v30 & 0x80000000) == 0)
      {
        v29 = v7 + 2;
LABEL_54:
        v80 = v29;
        *(a1 + 152) = v28;
        goto LABEL_138;
      }

      v65 = sub_19587DC(v7, v28);
      v80 = v65;
      *(a1 + 152) = v66;
      if (!v65)
      {
        goto LABEL_143;
      }
    }

    else if (v11 == 8)
    {
      if (v8 != 64)
      {
        goto LABEL_128;
      }

      v5 |= 0x20u;
      v47 = v7 + 1;
      v46 = *v7;
      if ((v46 & 0x8000000000000000) == 0)
      {
        goto LABEL_92;
      }

      v48 = *v47;
      v46 = (v48 << 7) + v46 - 128;
      if ((v48 & 0x80000000) == 0)
      {
        v47 = v7 + 2;
LABEL_92:
        v80 = v47;
        *(a1 + 120) = v46;
        goto LABEL_138;
      }

      v69 = sub_19587DC(v7, v46);
      v80 = v69;
      *(a1 + 120) = v70;
      if (!v69)
      {
        goto LABEL_143;
      }
    }

    else
    {
      if (v11 != 9 || v8 != 72)
      {
        goto LABEL_128;
      }

      v5 |= 0x40u;
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
        v80 = v17;
        *(a1 + 128) = v16;
        goto LABEL_138;
      }

      v57 = sub_19587DC(v7, v16);
      v80 = v57;
      *(a1 + 128) = v58;
      if (!v57)
      {
        goto LABEL_143;
      }
    }

    goto LABEL_138;
  }

  if (v11 != 10)
  {
    if (v11 == 11)
    {
      if (v8 != 88)
      {
        goto LABEL_128;
      }

      v5 |= 0x80u;
      v53 = v7 + 1;
      v52 = *v7;
      if ((v52 & 0x8000000000000000) == 0)
      {
        goto LABEL_102;
      }

      v54 = *v53;
      v52 = (v54 << 7) + v52 - 128;
      if ((v54 & 0x80000000) == 0)
      {
        v53 = v7 + 2;
LABEL_102:
        v80 = v53;
        *(a1 + 136) = v52;
        goto LABEL_138;
      }

      v73 = sub_19587DC(v7, v52);
      v80 = v73;
      *(a1 + 136) = v74;
      if (!v73)
      {
        goto LABEL_143;
      }
    }

    else
    {
      if (v11 != 12 || v8 != 96)
      {
        goto LABEL_128;
      }

      v5 |= 0x100u;
      v23 = v7 + 1;
      v22 = *v7;
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_44;
      }

      v24 = *v23;
      v22 = (v24 << 7) + v22 - 128;
      if ((v24 & 0x80000000) == 0)
      {
        v23 = v7 + 2;
LABEL_44:
        v80 = v23;
        *(a1 + 144) = v22;
        goto LABEL_138;
      }

      v61 = sub_19587DC(v7, v22);
      v80 = v61;
      *(a1 + 144) = v62;
      if (!v61)
      {
        goto LABEL_143;
      }
    }

    goto LABEL_138;
  }

  if (v8 == 80)
  {
    v37 = v7 - 1;
    while (1)
    {
      v80 = v37 + 1;
      v38 = v37[1];
      if (v38 < 0)
      {
        v39 = (v37[2] << 7) + v38;
        v38 = (v39 - 128);
        if (v37[2] < 0)
        {
          v37 = sub_19587DC((v37 + 1), (v39 - 128));
          v38 = v40;
        }

        else
        {
          v37 += 3;
        }
      }

      else
      {
        v37 += 2;
      }

      v80 = v37;
      v41 = *(a1 + 64);
      if (v41 == *(a1 + 68))
      {
        v42 = v41 + 1;
        sub_1959094((a1 + 64), v41 + 1);
        *(*(a1 + 72) + 8 * v41) = v38;
        v37 = v80;
      }

      else
      {
        *(*(a1 + 72) + 8 * v41) = v38;
        v42 = v41 + 1;
      }

      *(a1 + 64) = v42;
      if (!v37)
      {
        goto LABEL_143;
      }

      if (*a3 <= v37 || *v37 != 80)
      {
        goto LABEL_138;
      }
    }
  }

  if (v8 == 82)
  {
    v75 = (a1 + 64);
LABEL_127:
    v76 = sub_1958938(v75, v7, a3);
LABEL_137:
    v80 = v76;
    if (!v76)
    {
      goto LABEL_143;
    }

    goto LABEL_138;
  }

LABEL_128:
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
    if ((v8 - 8000) >> 6 > 0x7C)
    {
      v78 = *(a1 + 8);
      if (v78)
      {
        v79 = (v78 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v79 = sub_11F1920((a1 + 8));
        v7 = v80;
      }

      v76 = sub_1952690(v8, v79, v7, a3);
    }

    else
    {
      v76 = sub_19525AC((a1 + 16), v8, v7, &off_2771340, (a1 + 8), a3);
    }

    goto LABEL_137;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_143:
  v80 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return v80;
}

char *sub_14470C4(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 40);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 80);
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

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 88);
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

    v16 = *(a1 + 96);
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
          v11 = (v17 >> 7);
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

  v19 = *(a1 + 48);
  if (v19 < 1)
  {
    v22 = v15;
  }

  else
  {
    for (i = 0; i != v19; ++i)
    {
      if (*a3 <= v15)
      {
        v15 = sub_225EB68(a3, v15);
      }

      v21 = *(*(a1 + 56) + 8 * i);
      *v15 = 32;
      v15[1] = v21;
      if (v21 > 0x7F)
      {
        v15[1] = v21 | 0x80;
        v23 = v21 >> 7;
        v15[2] = v21 >> 7;
        v22 = v15 + 3;
        if (v21 >= 0x4000)
        {
          LOBYTE(v24) = v15[2];
          do
          {
            *(v22 - 1) = v24 | 0x80;
            v24 = v23 >> 7;
            *v22++ = v23 >> 7;
            v25 = v23 >> 14;
            v23 >>= 7;
          }

          while (v25);
        }
      }

      else
      {
        v22 = v15 + 2;
      }

      v15 = v22;
    }
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v27 = *(a1 + 104);
    *v22 = 40;
    v22[1] = v27;
    if (v27 > 0x7F)
    {
      v22[1] = v27 | 0x80;
      v28 = v27 >> 7;
      v22[2] = v27 >> 7;
      v26 = v22 + 3;
      if (v27 >= 0x4000)
      {
        LOBYTE(v22) = v22[2];
        do
        {
          *(v26 - 1) = v22 | 0x80;
          v22 = (v28 >> 7);
          *v26++ = v28 >> 7;
          v29 = v28 >> 14;
          v28 >>= 7;
        }

        while (v29);
      }
    }

    else
    {
      v26 = v22 + 2;
    }
  }

  else
  {
    v26 = v22;
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v26)
    {
      v26 = sub_225EB68(a3, v26);
    }

    v31 = *(a1 + 112);
    *v26 = 48;
    v26[1] = v31;
    if (v31 > 0x7F)
    {
      v26[1] = v31 | 0x80;
      v32 = v31 >> 7;
      v26[2] = v31 >> 7;
      v30 = v26 + 3;
      if (v31 >= 0x4000)
      {
        LOBYTE(v26) = v26[2];
        do
        {
          *(v30 - 1) = v26 | 0x80;
          v26 = (v32 >> 7);
          *v30++ = v32 >> 7;
          v33 = v32 >> 14;
          v32 >>= 7;
        }

        while (v33);
      }
    }

    else
    {
      v30 = v26 + 2;
    }
  }

  else
  {
    v30 = v26;
  }

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v30)
    {
      v30 = sub_225EB68(a3, v30);
    }

    v35 = *(a1 + 152);
    *v30 = 56;
    v30[1] = v35;
    if (v35 > 0x7F)
    {
      v30[1] = v35 | 0x80;
      v36 = v35 >> 7;
      v30[2] = v35 >> 7;
      v34 = v30 + 3;
      if (v35 >= 0x4000)
      {
        LOBYTE(v37) = v30[2];
        do
        {
          *(v34 - 1) = v37 | 0x80;
          v37 = v36 >> 7;
          *v34++ = v36 >> 7;
          v38 = v36 >> 14;
          v36 >>= 7;
        }

        while (v38);
      }
    }

    else
    {
      v34 = v30 + 2;
    }
  }

  else
  {
    v34 = v30;
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v34)
    {
      v34 = sub_225EB68(a3, v34);
    }

    v40 = *(a1 + 120);
    *v34 = 64;
    v34[1] = v40;
    if (v40 > 0x7F)
    {
      v34[1] = v40 | 0x80;
      v41 = v40 >> 7;
      v34[2] = v40 >> 7;
      v39 = v34 + 3;
      if (v40 >= 0x4000)
      {
        LOBYTE(v34) = v34[2];
        do
        {
          *(v39 - 1) = v34 | 0x80;
          v34 = (v41 >> 7);
          *v39++ = v41 >> 7;
          v42 = v41 >> 14;
          v41 >>= 7;
        }

        while (v42);
      }
    }

    else
    {
      v39 = v34 + 2;
    }
  }

  else
  {
    v39 = v34;
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v39)
    {
      v39 = sub_225EB68(a3, v39);
    }

    v44 = *(a1 + 128);
    *v39 = 72;
    v39[1] = v44;
    if (v44 > 0x7F)
    {
      v39[1] = v44 | 0x80;
      v45 = v44 >> 7;
      v39[2] = v44 >> 7;
      v43 = v39 + 3;
      if (v44 >= 0x4000)
      {
        LOBYTE(v39) = v39[2];
        do
        {
          *(v43 - 1) = v39 | 0x80;
          v39 = (v45 >> 7);
          *v43++ = v45 >> 7;
          v46 = v45 >> 14;
          v45 >>= 7;
        }

        while (v46);
      }
    }

    else
    {
      v43 = v39 + 2;
    }
  }

  else
  {
    v43 = v39;
  }

  v47 = *(a1 + 64);
  if (v47 < 1)
  {
    v50 = v43;
  }

  else
  {
    for (j = 0; j != v47; ++j)
    {
      if (*a3 <= v43)
      {
        v43 = sub_225EB68(a3, v43);
      }

      v49 = *(*(a1 + 72) + 8 * j);
      *v43 = 80;
      v43[1] = v49;
      if (v49 > 0x7F)
      {
        v43[1] = v49 | 0x80;
        v51 = v49 >> 7;
        v43[2] = v49 >> 7;
        v50 = v43 + 3;
        if (v49 >= 0x4000)
        {
          LOBYTE(v52) = v43[2];
          do
          {
            *(v50 - 1) = v52 | 0x80;
            v52 = v51 >> 7;
            *v50++ = v51 >> 7;
            v53 = v51 >> 14;
            v51 >>= 7;
          }

          while (v53);
        }
      }

      else
      {
        v50 = v43 + 2;
      }

      v43 = v50;
    }
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v50)
    {
      v50 = sub_225EB68(a3, v50);
    }

    v55 = *(a1 + 136);
    *v50 = 88;
    v50[1] = v55;
    if (v55 > 0x7F)
    {
      v50[1] = v55 | 0x80;
      v56 = v55 >> 7;
      v50[2] = v55 >> 7;
      v54 = v50 + 3;
      if (v55 >= 0x4000)
      {
        LOBYTE(v50) = v50[2];
        do
        {
          *(v54 - 1) = v50 | 0x80;
          v50 = (v56 >> 7);
          *v54++ = v56 >> 7;
          v57 = v56 >> 14;
          v56 >>= 7;
        }

        while (v57);
      }
    }

    else
    {
      v54 = v50 + 2;
    }
  }

  else
  {
    v54 = v50;
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v54)
    {
      v54 = sub_225EB68(a3, v54);
    }

    v59 = *(a1 + 144);
    *v54 = 96;
    v54[1] = v59;
    if (v59 > 0x7F)
    {
      v54[1] = v59 | 0x80;
      v60 = v59 >> 7;
      v54[2] = v59 >> 7;
      v58 = v54 + 3;
      if (v59 >= 0x4000)
      {
        LOBYTE(v61) = v54[2];
        do
        {
          *(v58 - 1) = v61 | 0x80;
          v61 = v60 >> 7;
          *v58++ = v60 >> 7;
          v62 = v60 >> 14;
          v60 >>= 7;
        }

        while (v62);
      }
    }

    else
    {
      v58 = v54 + 2;
    }
  }

  else
  {
    v58 = v54;
  }

  if (*(a1 + 26))
  {
    v58 = sub_1953428(a1 + 16, 1000, 2000, v58, a3);
  }

  v63 = *(a1 + 8);
  if ((v63 & 1) == 0)
  {
    return v58;
  }

  v65 = v63 & 0xFFFFFFFFFFFFFFFCLL;
  v66 = *(v65 + 31);
  if (v66 < 0)
  {
    v67 = *(v65 + 8);
    v66 = *(v65 + 16);
  }

  else
  {
    v67 = (v65 + 8);
  }

  if ((*a3 - v58) >= v66)
  {
    v68 = v66;
    memcpy(v58, v67, v66);
    v58 += v68;
    return v58;
  }

  return sub_1957130(a3, v67, v66, v58);
}

uint64_t sub_1447824(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = sub_1959F14((a1 + 48));
  v4 = *(a1 + 48);
  result = v3 + v2 + sub_1959F14((a1 + 64)) + v4 + *(a1 + 64);
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_11;
  }

  if (v6)
  {
    result += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v6 & 2) == 0)
    {
LABEL_4:
      if ((v6 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_19;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_4;
  }

  result += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v6 & 4) == 0)
  {
LABEL_5:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  result += ((9 * (__clz(*(a1 + 96) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v6 & 8) == 0)
  {
LABEL_6:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  result += ((9 * (__clz(*(a1 + 104) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v6 & 0x10) == 0)
  {
LABEL_7:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    result += ((9 * (__clz(*(a1 + 120) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v6 & 0x40) == 0)
    {
LABEL_9:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_21:
  result += ((9 * (__clz(*(a1 + 112) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_23:
  result += ((9 * (__clz(*(a1 + 128) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v6 & 0x80) != 0)
  {
LABEL_10:
    result += ((9 * (__clz(*(a1 + 136) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_11:
  if ((v6 & 0x300) != 0)
  {
    if ((v6 & 0x100) != 0)
    {
      result += ((9 * (__clz(*(a1 + 144) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    if ((v6 & 0x200) != 0)
    {
      v7 = *(a1 + 152);
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
    v10 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    result += v11;
  }

  *(a1 + 44) = result;
  return result;
}

void sub_1447A58(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = (a1 + 48);
    v6 = *(a1 + 48);
    sub_1959094((a1 + 48), v6 + v4);
    v7 = *(a1 + 56);
    *v5 += *(a2 + 48);
    memcpy((v7 + 8 * v6), *(a2 + 56), 8 * *(a2 + 48));
  }

  v8 = *(a2 + 64);
  if (v8)
  {
    v9 = *(a1 + 64);
    sub_1959094((a1 + 64), v9 + v8);
    v10 = *(a1 + 72);
    *(a1 + 64) += *(a2 + 64);
    memcpy((v10 + 8 * v9), *(a2 + 72), 8 * *(a2 + 64));
  }

  v11 = *(a2 + 40);
  if (v11)
  {
    if (v11)
    {
      *(a1 + 80) = *(a2 + 80);
      if ((v11 & 2) == 0)
      {
LABEL_8:
        if ((v11 & 4) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_28;
      }
    }

    else if ((v11 & 2) == 0)
    {
      goto LABEL_8;
    }

    *(a1 + 88) = *(a2 + 88);
    if ((v11 & 4) == 0)
    {
LABEL_9:
      if ((v11 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_29;
    }

LABEL_28:
    *(a1 + 96) = *(a2 + 96);
    if ((v11 & 8) == 0)
    {
LABEL_10:
      if ((v11 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_30;
    }

LABEL_29:
    *(a1 + 104) = *(a2 + 104);
    if ((v11 & 0x10) == 0)
    {
LABEL_11:
      if ((v11 & 0x20) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_31;
    }

LABEL_30:
    *(a1 + 112) = *(a2 + 112);
    if ((v11 & 0x20) == 0)
    {
LABEL_12:
      if ((v11 & 0x40) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_32;
    }

LABEL_31:
    *(a1 + 120) = *(a2 + 120);
    if ((v11 & 0x40) == 0)
    {
LABEL_13:
      if ((v11 & 0x80) == 0)
      {
LABEL_15:
        *(a1 + 40) |= v11;
        goto LABEL_16;
      }

LABEL_14:
      *(a1 + 136) = *(a2 + 136);
      goto LABEL_15;
    }

LABEL_32:
    *(a1 + 128) = *(a2 + 128);
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_16:
  if ((v11 & 0x300) != 0)
  {
    if ((v11 & 0x100) != 0)
    {
      *(a1 + 144) = *(a2 + 144);
    }

    if ((v11 & 0x200) != 0)
    {
      *(a1 + 152) = *(a2 + 152);
    }

    *(a1 + 40) |= v11;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v12 = *(a2 + 8);
  if (v12)
  {

    sub_1957EF4((a1 + 8), (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1447C28(uint64_t *a1)
{
  if (!a1)
  {

    sub_144E000();
  }

  return sub_144661C(v3, a1, 0);
}

void sub_1449E54(void *a1)
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
          sub_1548E9C(*v3);
          operator delete();
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

void sub_1449ED8(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_1552260(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_1449F54(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_144A03C(void *a1)
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
          sub_140C674(*v3);
          operator delete();
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

void sub_144A0C0(void *a1)
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
          sub_140BCD0(*v3);
          operator delete();
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

void sub_144A144(void *a1)
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
          sub_14166AC(*v3);
          operator delete();
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

void sub_144A1C8(void *a1)
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
          sub_145847C(*v3);
          operator delete();
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

void sub_144A24C(void *a1)
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
          sub_1550AB4(*v3);
          operator delete();
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

std::string *sub_144A2D0(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = result->__r_.__value_.__r.__words[0];
    v10 = &a2[a5];
    do
    {
      result = sub_141BAA8(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E6F94(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}