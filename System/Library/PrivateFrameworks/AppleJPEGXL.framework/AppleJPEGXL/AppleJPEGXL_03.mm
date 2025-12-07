uint64_t sub_240ADB108(uint64_t a1, uint64_t a2, int *a3, unsigned __int16 *a4)
{
  v8 = sub_240ACBF1C(a3, 80, 0x53u, a4, 0, 0);
  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = &qword_27E516570;
    while (1)
    {
      v10 = *v10;
      if (!v10)
      {
        break;
      }

      if (v10 == v9)
      {
        goto LABEL_8;
      }
    }

    v10 = &unk_278CB2F00;
  }

  else
  {
    v10 = &unk_278CB2F00;
  }

LABEL_8:
  v11 = v10[6];
  if (!v11)
  {
    v11 = &xmmword_281500C10;
  }

  v12 = (*v11)();
  v17 = bswap32(v8);
  if ((*(a2 + 312))(a2, 4, &v17) != 1)
  {
    return 0;
  }

  result = sub_240ACBF1C(a3, 80, 0x53u, a4, v12, v8);
  if (result)
  {
    result = (*(a2 + 312))(a2, v8, v12);
    if (result)
    {
      if (v12)
      {
        v14 = *(a1 + 40);
        if (v14)
        {
          v15 = &qword_27E516570;
          while (1)
          {
            v15 = *v15;
            if (!v15)
            {
              break;
            }

            if (v15 == v14)
            {
              goto LABEL_22;
            }
          }

          v15 = &unk_278CB2F00;
        }

        else
        {
          v15 = &unk_278CB2F00;
        }

LABEL_22:
        v16 = v15[6];
        if (!v16)
        {
          v16 = &xmmword_281500C10;
        }

        (*(v16 + 2))();
      }

      return 1;
    }
  }

  return result;
}

uint64_t **sub_240ADB2A0(uint64_t a1, uint64_t a2, _DWORD *a3, int a4)
{
  v9 = a4;
  v7 = sub_240ACB75C(*(a1 + 40), 5u);
  *a3 = 0;
  if (sub_240ADB3AC(a1, a2, v7, &v9, "nm") && sub_240ADB3AC(a1, a2, v7, &v9, "#0") && sub_240ADB3AC(a1, a2, v7, &v9, "#1") && sub_240ADB3AC(a1, a2, v7, &v9, "#2") && sub_240ADB3AC(a1, a2, v7, &v9, "#3"))
  {
    *a3 = 1;
  }

  else
  {
    sub_240ACBDDC(v7);
    return 0;
  }

  return v7;
}

uint64_t sub_240ADB3AC(uint64_t a1, uint64_t a2, uint64_t **a3, _DWORD *a4, unsigned __int8 *a5)
{
  if (*a4 < 4u)
  {
    return 0;
  }

  v25 = v5;
  v26 = v6;
  v24 = 0;
  if ((*(a2 + 280))(a2, &v24, 4, 1) != 1)
  {
    return 0;
  }

  v13 = bswap32(v24);
  if (v13 > 0xFFFFFFFB || v13 + 4 > *a4)
  {
    return 0;
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    v15 = &qword_27E516570;
    while (1)
    {
      v15 = *v15;
      if (!v15)
      {
        break;
      }

      if (v15 == v14)
      {
        goto LABEL_13;
      }
    }

    v15 = &unk_278CB2F00;
  }

  else
  {
    v15 = &unk_278CB2F00;
  }

LABEL_13:
  v16 = v15[6];
  if (!v16)
  {
    v16 = &xmmword_281500C10;
  }

  result = (*v16)();
  if (result)
  {
    v17 = result;
    if ((*(a2 + 280))(a2, result, 1, v13) == v13)
    {
      v17[v13] = 0;
      sub_240ACB8DC(a3, 80, 0x53u, *a5, a5[1], v17);
      v18 = *(a1 + 40);
      if (v18)
      {
        v19 = &qword_27E516570;
        while (1)
        {
          v19 = *v19;
          if (!v19)
          {
            break;
          }

          if (v19 == v18)
          {
            goto LABEL_30;
          }
        }

        v19 = &unk_278CB2F00;
      }

      else
      {
        v19 = &unk_278CB2F00;
      }

LABEL_30:
      v22 = v19[6];
      if (!v22)
      {
        v22 = &xmmword_281500C10;
      }

      (*(v22 + 2))();
      *a4 = *a4 - v13 - 4;
      return 1;
    }

    v20 = *(a1 + 40);
    if (v20)
    {
      v21 = &qword_27E516570;
      while (1)
      {
        v21 = *v21;
        if (!v21)
        {
          break;
        }

        if (v21 == v20)
        {
          goto LABEL_34;
        }
      }

      v21 = &unk_278CB2F00;
    }

    else
    {
      v21 = &unk_278CB2F00;
    }

LABEL_34:
    v23 = v21[6];
    if (!v23)
    {
      v23 = &xmmword_281500C10;
    }

    (*(v23 + 2))();
    return 0;
  }

  return result;
}

uint64_t sub_240ADB5D0(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    sub_240AC26D0(*a2);
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    sub_240AC26D0(v4);
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    sub_240ACBDDC(v5);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = &qword_27E516570;
    while (1)
    {
      v7 = *v7;
      if (!v7)
      {
        break;
      }

      if (v7 == v6)
      {
        goto LABEL_14;
      }
    }

    v7 = &unk_278CB2F00;
  }

  else
  {
    v7 = &unk_278CB2F00;
  }

LABEL_14:
  v8 = v7[6];
  if (!v8)
  {
    v8 = &xmmword_281500C10;
  }

  v9 = *(v8 + 2);

  return v9();
}

uint64_t *sub_240ADB680(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = &qword_27E516570;
    while (1)
    {
      v4 = *v4;
      if (!v4)
      {
        break;
      }

      if (v4 == v3)
      {
        goto LABEL_8;
      }
    }

    v4 = &unk_278CB2F00;
  }

  else
  {
    v4 = &unk_278CB2F00;
  }

LABEL_8:
  v5 = v4[6];
  if (!v5)
  {
    v5 = &xmmword_281500C10;
  }

  v13 = (*(v5 + 1))();
  if (v13)
  {
    v13[1] = sub_240AC2A40(a2[1], v6, v7, v8, v9, v10, v11, v12);
    *v13 = sub_240AC2A40(*a2, v14, v15, v16, v17, v18, v19, v20);
    v13[2] = sub_240ACBCC4(a2[2]);
  }

  return v13;
}

uint64_t sub_240ADB73C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = bswap32(*(*a3 + 40));
  if ((*(a2 + 312))(a2, 4, &v22) != 1)
  {
    return 0;
  }

  v6 = *(*a3 + 40);
  if (v6)
  {
    v7 = *(*a3 + 48);
    do
    {
      v8 = *v7++;
      v23 = bswap32(v8) >> 16;
      if ((*(a2 + 312))(a2, 2, &v23) != 1)
      {
        return 0;
      }
    }

    while (--v6);
  }

  v24 = bswap32(*(*(a3 + 8) + 40));
  if ((*(a2 + 312))(a2, 4, &v24) != 1)
  {
    return 0;
  }

  v9 = *(a3 + 8);
  v10 = *(v9 + 40);
  if (v10)
  {
    v11 = *(v9 + 48);
    do
    {
      v12 = *v11++;
      v25 = bswap32(v12) >> 16;
      if ((*(a2 + 312))(a2, 2, &v25) != 1)
      {
        return 0;
      }
    }

    while (--v10);
  }

  v13 = sub_240ACBF1C(*(a3 + 16), 0, 0, word_240C15120, 0, 0);
  v14 = *(a1 + 40);
  if (v14)
  {
    v15 = &qword_27E516570;
    while (1)
    {
      v15 = *v15;
      if (!v15)
      {
        break;
      }

      if (v15 == v14)
      {
        goto LABEL_18;
      }
    }

    v15 = &unk_278CB2F00;
  }

  else
  {
    v15 = &unk_278CB2F00;
  }

LABEL_18:
  v16 = v15[6];
  if (!v16)
  {
    v16 = &xmmword_281500C10;
  }

  v17 = (*v16)();
  if (sub_240ACBF1C(*(a3 + 16), 0, 0, word_240C15120, v17, v13) != v13)
  {
    return 0;
  }

  result = (*(a2 + 312))(a2, v13, v17);
  if (result)
  {
    if (v17)
    {
      v19 = *(a1 + 40);
      if (v19)
      {
        v20 = &qword_27E516570;
        while (1)
        {
          v20 = *v20;
          if (!v20)
          {
            break;
          }

          if (v20 == v19)
          {
            goto LABEL_32;
          }
        }

        v20 = &unk_278CB2F00;
      }

      else
      {
        v20 = &unk_278CB2F00;
      }

LABEL_32:
      v21 = v20[6];
      if (!v21)
      {
        v21 = &xmmword_281500C10;
      }

      (*(v21 + 2))();
    }

    return 1;
  }

  return result;
}

uint64_t sub_240ADB994(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int a4)
{
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = &qword_27E516570;
    while (1)
    {
      v9 = *v9;
      if (!v9)
      {
        break;
      }

      if (v9 == v8)
      {
        goto LABEL_8;
      }
    }

    v9 = &unk_278CB2F00;
  }

  else
  {
    v9 = &unk_278CB2F00;
  }

LABEL_8:
  v10 = v9[6];
  if (!v10)
  {
    v10 = &xmmword_281500C10;
  }

  result = (*(v10 + 1))();
  *a3 = 0;
  if (result)
  {
    v12 = result;
    v33 = 0;
    if ((*(a2 + 280))(a2, &v33, 4, 1) != 1)
    {
      return 0;
    }

    v16 = a4 - 4;
    if (a4 < 4)
    {
      return 0;
    }

    v17 = bswap32(v33);
    result = sub_240AC1684(*(a1 + 40), v17, 0, 0, 0, v13, v14, v15);
    *v12 = result;
    if (result)
    {
      v18 = sub_240AD4408(a2, v17, *(result + 48));
      result = 0;
      if (v16 >= 4)
      {
        if (v18)
        {
          v34 = 0;
          if ((*(a2 + 280))(a2, &v34, 4, 1) != 1)
          {
            return 0;
          }

          v22 = v16 - 2 * v17;
          v23 = v22 - 4;
          if (v22 < 4)
          {
            return 0;
          }

          v24 = bswap32(v34);
          result = sub_240AC1684(*(a1 + 40), v24, 0, 0, 0, v19, v20, v21);
          *(v12 + 8) = result;
          if (!result)
          {
            return result;
          }

          if (!sub_240AD4408(a2, v24, *(result + 48)))
          {
            return 0;
          }

          if (2 * v24 > v23)
          {
            return 0;
          }

          v25 = v23 - 2 * v24;
          if (v25 == -1)
          {
            return 0;
          }

          result = sub_240ACB75C(*(a1 + 40), 1u);
          *(v12 + 16) = result;
          if (result)
          {
            v26 = *(a1 + 40);
            if (v26)
            {
              v27 = &qword_27E516570;
              while (1)
              {
                v27 = *v27;
                if (!v27)
                {
                  break;
                }

                if (v27 == v26)
                {
                  goto LABEL_32;
                }
              }

              v27 = &unk_278CB2F00;
            }

            else
            {
              v27 = &unk_278CB2F00;
            }

LABEL_32:
            v28 = v27[6];
            if (!v28)
            {
              v28 = &xmmword_281500C10;
            }

            v29 = (*v28)();
            if ((*(a2 + 280))(a2, v29, 1, v25) != v25)
            {
              return 0;
            }

            v29[v25] = 0;
            sub_240ACB8DC(*(v12 + 16), 0, 0, 0, 0, v29);
            v30 = *(a1 + 40);
            if (v30)
            {
              v31 = &qword_27E516570;
              while (1)
              {
                v31 = *v31;
                if (!v31)
                {
                  break;
                }

                if (v31 == v30)
                {
                  goto LABEL_42;
                }
              }

              v31 = &unk_278CB2F00;
            }

            else
            {
              v31 = &unk_278CB2F00;
            }

LABEL_42:
            v32 = v31[6];
            if (!v32)
            {
              v32 = &xmmword_281500C10;
            }

            (*(v32 + 2))();
            *a3 = 1;
            return v12;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_240ADBC88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a2 + 304))(a2);
  if (!sub_240AC8FA8(a3, 1, v6, v7, v8, v9, v10, v11, 116) && !sub_240AC8FA8(a3, 3, v12, v13, v14, v15, v16, v17, 116) && !sub_240AC8FA8(a3, 3, v18, v19, v20, v21, v22, v23, 116) && !sub_240AC8FA8(a3, 5, v24, v25, v26, v27, v28, v29, 116))
  {
    sub_240AC15A4(*(a1 + 40), 13, "LUT is not suitable to be saved as LutBToA", v30, v31, v32, v33, v34);
    return 0;
  }

  v35 = *(a3 + 12);
  LOBYTE(v39) = *(a3 + 8);
  if ((*(a2 + 312))(a2, 1, &v39) != 1)
  {
    return 0;
  }

  LOBYTE(v39) = v35;
  if ((*(a2 + 312))(a2, 1, &v39) != 1)
  {
    return 0;
  }

  LOWORD(v39) = 0;
  if ((*(a2 + 312))(a2, 2, &v39) != 1)
  {
    return 0;
  }

  v36 = (*(a2 + 304))(a2);
  v39 = 0;
  if ((*(a2 + 312))(a2, 4, &v39) != 1)
  {
    return 0;
  }

  v39 = 0;
  if ((*(a2 + 312))(a2, 4, &v39) != 1)
  {
    return 0;
  }

  v39 = 0;
  if ((*(a2 + 312))(a2, 4, &v39) != 1)
  {
    return 0;
  }

  v39 = 0;
  if ((*(a2 + 312))(a2, 4, &v39) != 1)
  {
    return 0;
  }

  v39 = 0;
  if ((*(a2 + 312))(a2, 4, &v39) != 1)
  {
    return 0;
  }

  v38 = (*(a2 + 304))(a2);
  result = (*(a2 + 288))(a2, v36);
  if (result)
  {
    v39 = bswap32(0);
    if ((*(a2 + 312))(a2, 4, &v39) == 1)
    {
      v39 = bswap32(0);
      if ((*(a2 + 312))(a2, 4, &v39) == 1)
      {
        v39 = bswap32(0);
        if ((*(a2 + 312))(a2, 4, &v39) == 1)
        {
          v39 = bswap32(0);
          if ((*(a2 + 312))(a2, 4, &v39) == 1)
          {
            v39 = bswap32(0);
            if ((*(a2 + 312))(a2, 4, &v39) == 1)
            {
              return (*(a2 + 288))(a2, v38) != 0;
            }
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_240ADC110(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t *a4)
{
  if (a3)
  {
    v7 = a3;
    while (1)
    {
      v8 = *a4;
      v9 = *(*a4 + 8);
      v10 = 1668641398;
      if (v9)
      {
        if (v9 != 2)
        {
          v11 = *(v8 + 16);
LABEL_8:
          if (*(v11 + 8) >= 0)
          {
            v10 = 1885434465;
          }

          else
          {
            v10 = 1668641398;
          }

          goto LABEL_11;
        }

        v11 = *(v8 + 16);
        if (*(v11 + 120))
        {
          goto LABEL_8;
        }
      }

LABEL_11:
      v18[0] = bswap32(v10);
      v18[1] = 0;
      result = (*(a2 + 312))(a2, 8, v18);
      if (!result)
      {
        return result;
      }

      if (v10 == 1885434465)
      {
        result = sub_240ADC8F4(a1, a2, *a4, v13, v14, v15, v16, v17);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        result = sub_240ADC7C0(result, a2, *a4);
        if (!result)
        {
          return result;
        }
      }

      result = sub_240AD46E4(a2);
      if (!result)
      {
        return result;
      }

      ++a4;
      if (!--v7)
      {
        return 1;
      }
    }
  }

  return 1;
}

uint64_t sub_240ADC260(uint64_t a1, uint64_t a2, int a3, unsigned __int16 **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22[2] = *MEMORY[0x277D85DE8];
  if (*(a4 + 5))
  {
    sub_240AC15A4(*(a1 + 40), 13, "Cannot save floating point data, CLUT are 8 or 16 bit only", a4, a5, a6, a7, a8);
    return 0;
  }

  v22[0] = 0;
  v22[1] = 0;
  v12 = a4[1];
  v13 = *(v12 + 3);
  if (v13)
  {
    v14 = (v12 + 10);
    v15 = v22;
    do
    {
      v16 = *v14++;
      *v15++ = v16;
      --v13;
    }

    while (v13);
  }

  result = (*(a2 + 312))(a2, 16, v22);
  if (result)
  {
    LOBYTE(v21) = a3;
    if ((*(a2 + 312))(a2, 1, &v21) == 1)
    {
      LOBYTE(v21) = 0;
      if ((*(a2 + 312))(a2, 1, &v21) == 1)
      {
        LOBYTE(v21) = 0;
        if ((*(a2 + 312))(a2, 1, &v21) == 1)
        {
          LOBYTE(v21) = 0;
          if ((*(a2 + 312))(a2, 1, &v21) == 1)
          {
            v17 = *(a4 + 4);
            if (a3 == 1)
            {
              if (v17)
              {
                v18 = 0;
                while (1)
                {
                  LOBYTE(v21) = (65281 * (*a4)[v18] + 0x800000) >> 24;
                  if ((*(a2 + 312))(a2, 1, &v21) != 1)
                  {
                    break;
                  }

                  if (++v18 >= *(a4 + 4))
                  {
                    return sub_240AD46E4(a2) != 0;
                  }
                }

                return 0;
              }
            }

            else if (v17)
            {
              v19 = *a4;
              while (1)
              {
                v20 = *v19++;
                v21 = bswap32(v20) >> 16;
                if ((*(a2 + 312))(a2, 2, &v21) != 1)
                {
                  break;
                }

                if (!--v17)
                {
                  return sub_240AD46E4(a2) != 0;
                }
              }

              return 0;
            }

            return sub_240AD46E4(a2) != 0;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

BOOL sub_240ADC45C(uint64_t a1, void *a2)
{
  v6 = bswap32(vcvtmd_s64_f64(**a2 * 65536.0 + 0.5));
  if ((*(a1 + 312))(a1, 4, &v6) != 1)
  {
    return 0;
  }

  v6 = bswap32(vcvtmd_s64_f64(*(*a2 + 8) * 65536.0 + 0.5));
  if ((*(a1 + 312))(a1, 4, &v6) != 1)
  {
    return 0;
  }

  v6 = bswap32(vcvtmd_s64_f64(*(*a2 + 16) * 65536.0 + 0.5));
  if ((*(a1 + 312))(a1, 4, &v6) != 1)
  {
    return 0;
  }

  v6 = bswap32(vcvtmd_s64_f64(*(*a2 + 24) * 65536.0 + 0.5));
  if ((*(a1 + 312))(a1, 4, &v6) != 1)
  {
    return 0;
  }

  v6 = bswap32(vcvtmd_s64_f64(*(*a2 + 32) * 65536.0 + 0.5));
  if ((*(a1 + 312))(a1, 4, &v6) != 1)
  {
    return 0;
  }

  v6 = bswap32(vcvtmd_s64_f64(*(*a2 + 40) * 65536.0 + 0.5));
  if ((*(a1 + 312))(a1, 4, &v6) != 1)
  {
    return 0;
  }

  v6 = bswap32(vcvtmd_s64_f64(*(*a2 + 48) * 65536.0 + 0.5));
  if ((*(a1 + 312))(a1, 4, &v6) != 1)
  {
    return 0;
  }

  v6 = bswap32(vcvtmd_s64_f64(*(*a2 + 56) * 65536.0 + 0.5));
  if ((*(a1 + 312))(a1, 4, &v6) != 1)
  {
    return 0;
  }

  v6 = bswap32(vcvtmd_s64_f64(*(*a2 + 64) * 65536.0 + 0.5));
  if ((*(a1 + 312))(a1, 4, &v6) != 1)
  {
    return 0;
  }

  v4 = a2[1];
  if (v4)
  {
    v6 = bswap32(vcvtmd_s64_f64(*v4 * 65536.0 + 0.5));
    if ((*(a1 + 312))(a1, 4, &v6) != 1)
    {
      return 0;
    }

    v6 = bswap32(vcvtmd_s64_f64(*(a2[1] + 8) * 65536.0 + 0.5));
    if ((*(a1 + 312))(a1, 4, &v6) != 1)
    {
      return 0;
    }

    v6 = bswap32(vcvtmd_s64_f64(*(a2[1] + 16) * 65536.0 + 0.5));
  }

  else
  {
    v6 = 0;
    if ((*(a1 + 312))(a1, 4, &v6) != 1)
    {
      return 0;
    }

    v6 = 0;
    if ((*(a1 + 312))(a1, 4, &v6) != 1)
    {
      return 0;
    }

    v6 = 0;
  }

  return (*(a1 + 312))(a1, 4, &v6) == 1;
}

BOOL sub_240ADC7C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 1 && (v5 = *(a3 + 16), *(v5 + 8) == 1))
  {
    v6 = *(v5 + 16);
    v11 = 0x1000000;
    if ((*(a2 + 312))(a2, 4, &v11) == 1)
    {
      v12 = bswap32(vcvtmd_s64_f64(v6 * 65536.0 + 0.5)) >> 8;
      return (*(a2 + 312))(a2, 2, &v12) == 1;
    }
  }

  else
  {
    v13 = bswap32(*(a3 + 40));
    if ((*(a2 + 312))(a2, 4, &v13) == 1)
    {
      v8 = *(a3 + 40);
      if (!v8)
      {
        return 1;
      }

      v9 = *(a3 + 48);
      while (1)
      {
        v10 = *v9++;
        v14 = bswap32(v10) >> 16;
        if ((*(a2 + 312))(a2, 2, &v14) != 1)
        {
          break;
        }

        if (!--v8)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_240ADC8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(*(a3 + 16) + 8);
  if (*(a3 + 8) > 1u || v8 < 1)
  {
    v10 = "Multisegment or Inverted parametric curves cannot be written";
LABEL_9:
    sub_240AC15A4(*(a1 + 40), 8, v10, a4, a5, a6, a7, a8);
    return 0;
  }

  if (v8 > 5)
  {
    v10 = "Unsupported parametric curve";
    goto LABEL_9;
  }

  LODWORD(v14) = dword_240C1513C[v8];
  v16 = bswap32(v8 - 1) >> 16;
  if ((*(a2 + 312))(a2, 2, &v16, a4, a5, a6, a7, a8) == 1)
  {
    v17 = 0;
    if ((*(a2 + 312))(a2, 2, &v17) == 1)
    {
      if (v14 <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = v14;
      }

      for (i = 16; ; i += 8)
      {
        v18 = bswap32(vcvtmd_s64_f64(*(*(a3 + 16) + i) * 65536.0 + 0.5));
        if ((*(a2 + 312))(a2, 4, &v18) != 1)
        {
          break;
        }

        if (!--v14)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t *sub_240ADCA2C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = (*(a2 + 304))(a2);
  LOBYTE(v24) = 0;
  if ((*(a2 + 280))(a2, &v24, 1, 1) != 1)
  {
    return 0;
  }

  v7 = v24;
  LOBYTE(v24) = 0;
  if ((*(a2 + 280))(a2, &v24, 1, 1) != 1)
  {
    return 0;
  }

  v8 = v24;
  if ((v7 - 16) < 0xFFFFFFF1 || v24 - 16 < 0xFFFFFFF1)
  {
    return 0;
  }

  LOWORD(v24) = 0;
  if ((*(a2 + 280))(a2, &v24, 2, 1) != 1)
  {
    return 0;
  }

  v24 = 0;
  if ((*(a2 + 280))(a2, &v24, 4, 1) != 1)
  {
    return 0;
  }

  v10 = v24;
  v24 = 0;
  if ((*(a2 + 280))(a2, &v24, 4, 1) != 1)
  {
    return 0;
  }

  v11 = v24;
  v24 = 0;
  if ((*(a2 + 280))(a2, &v24, 4, 1) != 1)
  {
    return 0;
  }

  v12 = v24;
  v24 = 0;
  if ((*(a2 + 280))(a2, &v24, 4, 1) != 1)
  {
    return 0;
  }

  v13 = v24;
  v24 = 0;
  if ((*(a2 + 280))(a2, &v24, 4, 1) != 1)
  {
    return 0;
  }

  v22 = v24;
  v23 = v13;
  v14 = sub_240ACADFC(*(a1 + 40), v7, v8);
  if (v14)
  {
    v15 = v6 - 8;
    if (!v10 || (v16 = sub_240ADCD18(a1, a2, bswap32(v10) + v15, v7), sub_240ACB414(v14, 1, v16)))
    {
      if (!v11 || (v17 = sub_240ADCF30(a1, a2, bswap32(v11) + v15), sub_240ACB414(v14, 1, v17)))
      {
        if (!v12 || (v18 = sub_240ADCD18(a1, a2, bswap32(v12) + v15, v7), sub_240ACB414(v14, 1, v18)))
        {
          if (!v23 || (v19 = sub_240ADD0A0(a1, a2, bswap32(v23) + v15, v7, v8), sub_240ACB414(v14, 1, v19)))
          {
            if (!v22 || (v20 = sub_240ADCD18(a1, a2, bswap32(v22) + v15, v8), sub_240ACB414(v14, 1, v20)))
            {
              *a3 = 1;
              return v14;
            }
          }
        }
      }
    }

    sub_240ACB1C0(v14);
    return 0;
  }

  return v14;
}

int32x2_t *sub_240ADCD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a4 > 0x10 || !(*(a2 + 288))(a2, a3))
  {
    return 0;
  }

  memset(v25, 0, sizeof(v25));
  if (!a4)
  {
    return sub_240AC904C(*(a1 + 40), 0, v25);
  }

  bzero(v25, (8 * a4));
  v7 = 0;
  v8 = a4;
  while (1)
  {
    v24 = 0;
    v9 = (*(a2 + 280))(a2, &v24, 8, 1);
    v15 = bswap32(v24);
    if (v9 != 1)
    {
      v15 = 0;
    }

    if (v15 == 1885434465)
    {
      v16 = sub_240ADD42C(a1, a2, &v23);
      goto LABEL_11;
    }

    if (v15 != 1668641398)
    {
      break;
    }

    v16 = sub_240ADD2D0(a1, a2, &v23);
LABEL_11:
    *(v25 + v7) = v16;
    if (!v16 || (v17 = (*(a2 + 304))(a2), v18 = (v17 + 3) & 0xFFFFFFFC, v18 != v17) && (v18 - v17 >= 5 || (*(a2 + 280))(a2, &v24) != 1))
    {
      v19 = 0;
      goto LABEL_21;
    }

    if (a4 == ++v7)
    {
      v19 = sub_240AC904C(*(a1 + 40), a4, v25);
      goto LABEL_21;
    }
  }

  LODWORD(v24) = bswap32(v15);
  BYTE4(v24) = 0;
  sub_240AC15A4(*(a1 + 40), 8, "Unknown curve type '%s'", v10, v11, v12, v13, v14, &v24);
  v19 = 0;
  *(v25 + v7) = 0;
LABEL_21:
  v20 = v25;
  do
  {
    v21 = *v20++;
    sub_240AC26D0(v21);
    --v8;
  }

  while (v8);
  return v19;
}

int32x2_t *sub_240ADCF30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[1] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 288))(a2, a3) && sub_240AD4570(a2, &v9) && sub_240AD4570(a2, &v10) && sub_240AD4570(a2, &v11) && sub_240AD4570(a2, &v12) && sub_240AD4570(a2, &v13) && sub_240AD4570(a2, &v14) && sub_240AD4570(a2, &v15) && sub_240AD4570(a2, &v16) && sub_240AD4570(a2, v17) && sub_240AD4570(a2, &v6) && sub_240AD4570(a2, &v7) && sub_240AD4570(a2, &v8))
  {
    return sub_240AC977C(*(a1 + 40), 3, 3u, &v9, &v6);
  }

  else
  {
    return 0;
  }
}

uint64_t **sub_240ADD0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 288))(a2, a3) && (*(a2 + 280))(a2, v27, 16, 1) == 1)
  {
    for (i = 0; i != 16; ++i)
    {
      v10 = v27[i];
      if (v10 == 1)
      {
        return 0;
      }

      v26[i] = v10;
    }

    v25 = 0;
    if ((*(a2 + 280))(a2, &v25, 1, 1) == 1)
    {
      v11 = v25;
      v25 = 0;
      if ((*(a2 + 280))(a2, &v25, 1, 1) == 1)
      {
        v25 = 0;
        if ((*(a2 + 280))(a2, &v25, 1, 1) == 1)
        {
          v25 = 0;
          if ((*(a2 + 280))(a2, &v25, 1, 1) == 1)
          {
            v15 = sub_240AC9DB8(*(a1 + 40), v26, a4, a5, 0, v12, v13, v14);
            v16 = v15;
            if (!v15)
            {
              return v16;
            }

            v17 = v15[6];
            if (v11 == 2)
            {
              if (sub_240AD4408(a2, *(*&v17 + 16), **&v17))
              {
                return v16;
              }

              goto LABEL_19;
            }

            if (v11 == 1)
            {
              v25 = 0;
              if (!*(*&v17 + 16))
              {
                return v16;
              }

              v18 = 0;
              while ((*(a2 + 280))(a2, &v25, 1, 1) == 1)
              {
                *(**&v17 + 2 * v18++) = v25 | (v25 << 8);
                if (v18 >= *(*&v17 + 16))
                {
                  return v16;
                }
              }

LABEL_19:
              sub_240AC96E4(v16);
              return 0;
            }

            sub_240AC96E4(v15);
            sub_240AC15A4(*(a1 + 40), 8, "Unknown precision of '%d'", v19, v20, v21, v22, v23, v11);
          }
        }
      }
    }
  }

  return 0;
}

uint64_t ***sub_240ADD2D0(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 0;
  LODWORD(v14) = 0;
  if ((*(a2 + 280))(a2, &v14, 4, 1) != 1)
  {
    return 0;
  }

  v9 = bswap32(LODWORD(v14));
  if (v9 == 1)
  {
    v15 = 0;
    if ((*(a2 + 280))(a2, &v15, 2, 1) == 1)
    {
      v11 = bswap32(v15);
      v14 = vcvtd_n_f64_u32(BYTE2(v11), 8uLL) + HIBYTE(v11);
      *a3 = 1;
      return sub_240AC2604(*(a1 + 40), 1, &v14);
    }

    return 0;
  }

  if (v9)
  {
    if (!(v9 >> 15))
    {
      v13 = sub_240AC1684(*(a1 + 40), v9, 0, 0, 0, v6, v7, v8);
      v10 = v13;
      if (!v13)
      {
        return v10;
      }

      if (sub_240AD4408(a2, v9, *(v13 + 48)))
      {
        *a3 = 1;
        return v10;
      }

      sub_240AC26D0(v10);
    }

    return 0;
  }

  v14 = 1.0;
  v10 = sub_240AC2604(*(a1 + 40), 1, &v14);
  if (v10)
  {
    *a3 = 1;
  }

  return v10;
}

uint64_t sub_240ADD42C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  LOWORD(v18[0]) = 0;
  if ((*(a2 + 280))(a2, v18, 2, 1) == 1)
  {
    v6 = LOWORD(v18[0]);
    LOWORD(v18[0]) = 0;
    if ((*(a2 + 280))(a2, v18, 2, 1) == 1)
    {
      v12 = bswap32(v6);
      v13 = HIWORD(v12);
      if (HIWORD(v12) < 5u)
      {
        memset(v18, 0, sizeof(v18));
        v15 = dword_240C15128[v13];
        if (v15 <= 1)
        {
          v16 = 1;
        }

        else
        {
          v16 = v15;
        }

        for (i = v18; sub_240AD4570(a2, i); ++i)
        {
          if (!--v16)
          {
            result = sub_240AC2604(*(a1 + 40), (v13 + 1), v18);
            *a3 = 1;
            return result;
          }
        }
      }

      else
      {
        sub_240AC15A4(*(a1 + 40), 8, "Unknown parametric curve type '%d'", v7, v8, v9, v10, v11, HIWORD(v12));
      }
    }
  }

  return 0;
}

uint64_t sub_240ADD584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a2 + 304))(a2);
  if (*a3 && !sub_240AC8FA8(a3, 1, v6, v7, v8, v9, v10, v11, 116) && !sub_240AC8FA8(a3, 3, v12, v13, v14, v15, v16, v17, 116) && !sub_240AC8FA8(a3, 3, v18, v19, v20, v21, v22, v23, 116) && !sub_240AC8FA8(a3, 5, v24, v25, v26, v27, v28, v29, 116))
  {
    sub_240AC15A4(*(a1 + 40), 13, "LUT is not suitable to be saved as LutAToB", v30, v31, v32, v33, v34);
    return 0;
  }

  v35 = *(a3 + 12);
  LOBYTE(v39) = *(a3 + 8);
  if ((*(a2 + 312))(a2, 1, &v39) != 1)
  {
    return 0;
  }

  LOBYTE(v39) = v35;
  if ((*(a2 + 312))(a2, 1, &v39) != 1)
  {
    return 0;
  }

  LOWORD(v39) = 0;
  if ((*(a2 + 312))(a2, 2, &v39) != 1)
  {
    return 0;
  }

  v36 = (*(a2 + 304))(a2);
  v39 = 0;
  if ((*(a2 + 312))(a2, 4, &v39) != 1)
  {
    return 0;
  }

  v39 = 0;
  if ((*(a2 + 312))(a2, 4, &v39) != 1)
  {
    return 0;
  }

  v39 = 0;
  if ((*(a2 + 312))(a2, 4, &v39) != 1)
  {
    return 0;
  }

  v39 = 0;
  if ((*(a2 + 312))(a2, 4, &v39) != 1)
  {
    return 0;
  }

  v39 = 0;
  if ((*(a2 + 312))(a2, 4, &v39) != 1)
  {
    return 0;
  }

  v38 = (*(a2 + 304))(a2);
  result = (*(a2 + 288))(a2, v36);
  if (result)
  {
    v39 = bswap32(0);
    if ((*(a2 + 312))(a2, 4, &v39) == 1)
    {
      v39 = bswap32(0);
      if ((*(a2 + 312))(a2, 4, &v39) == 1)
      {
        v39 = bswap32(0);
        if ((*(a2 + 312))(a2, 4, &v39) == 1)
        {
          v39 = bswap32(0);
          if ((*(a2 + 312))(a2, 4, &v39) == 1)
          {
            v39 = bswap32(0);
            if ((*(a2 + 312))(a2, 4, &v39) == 1)
            {
              return (*(a2 + 288))(a2, v38) != 0;
            }
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t *sub_240ADDA14(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = (*(a2 + 304))(a2);
  LOBYTE(v23) = 0;
  if ((*(a2 + 280))(a2, &v23, 1, 1) != 1)
  {
    return 0;
  }

  v7 = v23;
  LOBYTE(v23) = 0;
  if ((*(a2 + 280))(a2, &v23, 1, 1) != 1)
  {
    return 0;
  }

  v8 = v23;
  LOWORD(v23) = 0;
  if ((*(a2 + 280))(a2, &v23, 2, 1) != 1)
  {
    return 0;
  }

  v23 = 0;
  if ((*(a2 + 280))(a2, &v23, 4, 1) != 1)
  {
    return 0;
  }

  v9 = v23;
  v23 = 0;
  if ((*(a2 + 280))(a2, &v23, 4, 1) != 1)
  {
    return 0;
  }

  v10 = v23;
  v23 = 0;
  if ((*(a2 + 280))(a2, &v23, 4, 1) != 1)
  {
    return 0;
  }

  v11 = v23;
  v23 = 0;
  if ((*(a2 + 280))(a2, &v23, 4, 1) != 1)
  {
    return 0;
  }

  v12 = v23;
  v23 = 0;
  if ((*(a2 + 280))(a2, &v23, 4, 1) != 1)
  {
    return 0;
  }

  v22 = v12;
  v13 = 0;
  if ((v7 - 16) >= 0xFFFFFFF1 && (v8 - 16) >= 0xFFFFFFF1)
  {
    v21 = v23;
    v13 = sub_240ACADFC(*(a1 + 40), v7, v8);
    if (v13)
    {
      v14 = v6 - 8;
      if (!v21 || (v15 = sub_240ADCD18(a1, a2, bswap32(v21) + v14, v7), sub_240ACB414(v13, 1, v15)))
      {
        if (!v22 || (v16 = sub_240ADD0A0(a1, a2, bswap32(v22) + v14, v7, v8), sub_240ACB414(v13, 1, v16)))
        {
          if (!v11 || (v17 = sub_240ADCD18(a1, a2, bswap32(v11) + v14, v8), sub_240ACB414(v13, 1, v17)))
          {
            if (!v10 || (v18 = sub_240ADCF30(a1, a2, bswap32(v10) + v14), sub_240ACB414(v13, 1, v18)))
            {
              if (!v9 || (v19 = sub_240ADCD18(a1, a2, bswap32(v9) + v14, v8), sub_240ACB414(v13, 1, v19)))
              {
                *a3 = 1;
                return v13;
              }
            }
          }
        }
      }

      sub_240ACB1C0(v13);
      return 0;
    }
  }

  return v13;
}

uint64_t sub_240ADDD08(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 40);
    if (v2)
    {
      v3 = &qword_27E516570;
      while (1)
      {
        v3 = *v3;
        if (!v3)
        {
          break;
        }

        if (v3 == v2)
        {
          goto LABEL_10;
        }
      }

      v3 = &unk_278CB2F00;
    }

    else
    {
      v3 = &unk_278CB2F00;
    }

LABEL_10:
    v4 = v3[6];
    if (!v4)
    {
      v4 = &xmmword_281500C10;
    }

    return (*(v4 + 2))();
  }

  return result;
}

uint64_t sub_240ADDD68(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = &qword_27E516570;
    while (1)
    {
      v2 = *v2;
      if (!v2)
      {
        break;
      }

      if (v2 == v1)
      {
        goto LABEL_8;
      }
    }

    v2 = &unk_278CB2F00;
  }

  else
  {
    v2 = &unk_278CB2F00;
  }

LABEL_8:
  v3 = v2[6];
  if (!v3)
  {
    v3 = &xmmword_281500C10;
  }

  return (*(v3 + 5))();
}

uint64_t sub_240ADDDD8(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v8 = bswap32(a3[1]);
  if ((*(a2 + 312))(a2, 4, &v8) != 1)
  {
    return 0;
  }

  v5 = *(a2 + 312);
  v6 = *a3;

  return v5(a2, v6, a3 + 2);
}

_DWORD *sub_240ADDE60(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int a4)
{
  *a3 = 0;
  v4 = a4 - 4;
  if (a4 < 4 || (a4 - 4) < 0)
  {
    return 0;
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = &qword_27E516570;
    while (1)
    {
      v9 = *v9;
      if (!v9)
      {
        break;
      }

      if (v9 == v8)
      {
        goto LABEL_10;
      }
    }

    v9 = &unk_278CB2F00;
  }

  else
  {
    v9 = &unk_278CB2F00;
  }

LABEL_10:
  v10 = v9[6];
  if (!v10)
  {
    v10 = &xmmword_281500C10;
  }

  v11 = (*v10)();
  v12 = v11;
  if (v11)
  {
    *v11 = v4;
    v18 = 0;
    if ((*(a2 + 280))(a2, &v18, 4, 1) == 1)
    {
      v12[1] = bswap32(v18);
      if ((*(a2 + 280))(a2, v12 + 2, 1, v4) == v4)
      {
        *a3 = 1;
        return v12;
      }

      v15 = *(a1 + 40);
      if (v15)
      {
        v14 = &qword_27E516570;
        while (1)
        {
          v14 = *v14;
          if (!v14)
          {
            break;
          }

          if (v14 == v15)
          {
            goto LABEL_28;
          }
        }

LABEL_27:
        v14 = &unk_278CB2F00;
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *(a1 + 40);
      if (v13)
      {
        v14 = &qword_27E516570;
        while (1)
        {
          v14 = *v14;
          if (!v14)
          {
            goto LABEL_27;
          }

          if (v14 == v13)
          {
            goto LABEL_28;
          }
        }
      }
    }

    v14 = &unk_278CB2F00;
LABEL_28:
    v16 = v14[6];
    if (!v16)
    {
      v16 = &xmmword_281500C10;
    }

    (*(v16 + 2))();
    return 0;
  }

  return v12;
}

uint64_t sub_240ADE014(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 40);
    if (v2)
    {
      v3 = &qword_27E516570;
      while (1)
      {
        v3 = *v3;
        if (!v3)
        {
          break;
        }

        if (v3 == v2)
        {
          goto LABEL_10;
        }
      }

      v3 = &unk_278CB2F00;
    }

    else
    {
      v3 = &unk_278CB2F00;
    }

LABEL_10:
    v4 = v3[6];
    if (!v4)
    {
      v4 = &xmmword_281500C10;
    }

    return (*(v4 + 2))();
  }

  return result;
}

uint64_t sub_240ADE074(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = &qword_27E516570;
    while (1)
    {
      v2 = *v2;
      if (!v2)
      {
        break;
      }

      if (v2 == v1)
      {
        goto LABEL_8;
      }
    }

    v2 = &unk_278CB2F00;
  }

  else
  {
    v2 = &unk_278CB2F00;
  }

LABEL_8:
  v3 = v2[6];
  if (!v3)
  {
    v3 = &xmmword_281500C10;
  }

  return (*(v3 + 5))();
}

uint64_t sub_240ADE0E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11.i32[0] = bswap32(*a3);
  if ((*(a2 + 312))(a2, 4, &v11) != 1)
  {
    return 0;
  }

  __asm { FMOV            V2.2D, #0.5 }

  v11 = vrev32_s8(vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(_Q2, vdupq_n_s64(0x40F0000000000000uLL), *(a3 + 8))))));
  v12 = bswap32(vcvtmd_s64_f64(*(a3 + 24) * 65536.0 + 0.5));
  result = (*(a2 + 312))(a2, 12, &v11);
  if (!result)
  {
    return result;
  }

  v11.i32[0] = bswap32(*(a3 + 32));
  if ((*(a2 + 312))(a2, 4, &v11) != 1)
  {
    return 0;
  }

  v11.i32[0] = bswap32(vcvtmd_s64_f64(*(a3 + 40) * 65536.0 + 0.5));
  if ((*(a2 + 312))(a2, 4, &v11) != 1)
  {
    return 0;
  }

  v11.i32[0] = bswap32(*(a3 + 48));
  return (*(a2 + 312))(a2, 4, &v11) == 1;
}

uint64_t sub_240ADE224(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v12 = 0;
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  v13 = 0;
  if ((*(a2 + 280))(a2, &v13, 4, 1) != 1)
  {
    return 0;
  }

  LODWORD(v10[0].f64[0]) = bswap32(v13);
  if (!sub_240AD4600(a2, &v10[0].f64[1]))
  {
    return 0;
  }

  v13 = 0;
  if ((*(a2 + 280))(a2, &v13, 4, 1) != 1)
  {
    return 0;
  }

  LODWORD(v11) = bswap32(v13);
  if (!sub_240AD4570(a2, &v11 + 1))
  {
    return 0;
  }

  v13 = 0;
  if ((*(a2 + 280))(a2, &v13, 4, 1) != 1)
  {
    return 0;
  }

  LODWORD(v12) = bswap32(v13);
  *a3 = 1;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = &qword_27E516570;
    while (1)
    {
      v7 = *v7;
      if (!v7)
      {
        break;
      }

      if (v7 == v6)
      {
        goto LABEL_15;
      }
    }

    v7 = &unk_278CB2F00;
  }

  else
  {
    v7 = &unk_278CB2F00;
  }

LABEL_15:
  v9 = v7[6];
  if (!v9)
  {
    v9 = &xmmword_281500C10;
  }

  return (*(v9 + 5))(v6);
}

uint64_t sub_240ADE3A4(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 40);
    if (v2)
    {
      v3 = &qword_27E516570;
      while (1)
      {
        v3 = *v3;
        if (!v3)
        {
          break;
        }

        if (v3 == v2)
        {
          goto LABEL_10;
        }
      }

      v3 = &unk_278CB2F00;
    }

    else
    {
      v3 = &unk_278CB2F00;
    }

LABEL_10:
    v4 = v3[6];
    if (!v4)
    {
      v4 = &xmmword_281500C10;
    }

    return (*(v4 + 2))();
  }

  return result;
}

uint64_t sub_240ADE404(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = &qword_27E516570;
    while (1)
    {
      v2 = *v2;
      if (!v2)
      {
        break;
      }

      if (v2 == v1)
      {
        goto LABEL_8;
      }
    }

    v2 = &unk_278CB2F00;
  }

  else
  {
    v2 = &unk_278CB2F00;
  }

LABEL_8:
  v3 = v2[6];
  if (!v3)
  {
    v3 = &xmmword_281500C10;
  }

  return (*(v3 + 5))();
}

_DWORD *sub_240ADE4B4(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = &qword_27E516570;
    while (1)
    {
      v6 = *v6;
      if (!v6)
      {
        break;
      }

      if (v6 == v5)
      {
        goto LABEL_8;
      }
    }

    v6 = &unk_278CB2F00;
  }

  else
  {
    v6 = &unk_278CB2F00;
  }

LABEL_8:
  v7 = v6[6];
  if (!v7)
  {
    v7 = &xmmword_281500C10;
  }

  v8 = (*v7)();
  if (v8)
  {
    v10 = 0;
    if ((*(a2 + 280))(a2, &v10, 4, 1) == 1)
    {
      *v8 = bswap32(v10);
      *a3 = 1;
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_240ADE5B0(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v10.i32[0] = bswap32(*a3);
  if ((*(a2 + 312))(a2, 4, &v10) == 1)
  {
    if (!*a3)
    {
      return 1;
    }

    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = *(a3 + 2);
      v10.i32[0] = bswap32(*(v8 + v6));
      if ((*(a2 + 312))(a2, 4, &v10) != 1)
      {
        break;
      }

      v10.i32[0] = bswap32(*(v8 + v6 + 4));
      if ((*(a2 + 312))(a2, 4, &v10) != 1)
      {
        break;
      }

      v10 = vrev64_s8(*(v8 + v6 + 8));
      if ((*(a2 + 312))(a2, 8, &v10) != 1)
      {
        break;
      }

      v10.i32[0] = bswap32(*(v8 + v6 + 16));
      if ((*(a2 + 312))(a2, 4, &v10) != 1)
      {
        break;
      }

      result = sub_240AD7474(a1, a2, *(v8 + v6 + 40));
      if (!result)
      {
        return result;
      }

      result = sub_240AD7474(a1, a2, *(v8 + v6 + 48));
      if (!result)
      {
        return result;
      }

      ++v7;
      v6 += 64;
      if (v7 >= *a3)
      {
        return 1;
      }
    }
  }

  return 0;
}

_DWORD *sub_240ADE728(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int a4)
{
  *a3 = 0;
  v16.i32[0] = 0;
  if ((*(a2 + 280))(a2, &v16, 4, 1) != 1)
  {
    return 0;
  }

  LODWORD(v8) = a4 - 4;
  if (a4 < 4)
  {
    return 0;
  }

  v9 = v16.i32[0];
  v10 = bswap32(v16.u32[0]);
  v11 = sub_240ACC9A8(*(a1 + 40), v10);
  v12 = v11;
  if (v11)
  {
    *v11 = v10;
    if (v9)
    {
      v13 = 0;
      while (1)
      {
        v14 = *(v12 + 2);
        v16.i32[0] = 0;
        if ((*(a2 + 280))(a2, &v16, 4, 1) != 1)
        {
          break;
        }

        if (v14)
        {
          *(v14 + v13) = bswap32(v16.u32[0]);
        }

        if (v8 < 4)
        {
          break;
        }

        v16.i32[0] = 0;
        if ((*(a2 + 280))(a2, &v16, 4, 1) != 1)
        {
          break;
        }

        *(v14 + v13 + 4) = bswap32(v16.u32[0]);
        if ((v8 & 0xFFFFFFFC) == 4)
        {
          break;
        }

        v16 = 0;
        if ((*(a2 + 280))(a2, &v16, 8, 1) != 1)
        {
          break;
        }

        *(v14 + v13 + 8) = vrev64_s8(v16);
        if ((v8 & 0xFFFFFFF8) == 8)
        {
          break;
        }

        v16.i32[0] = 0;
        if ((*(a2 + 280))(a2, &v16, 4, 1) != 1)
        {
          break;
        }

        *(v14 + v13 + 16) = bswap32(v16.u32[0]);
        if ((v8 & 0xFFFFFFFC) == 0x10)
        {
          break;
        }

        v8 = (v8 - 20);
        if (!sub_240AD7EE8(a1, a2, (v14 + v13 + 40), v8) || !sub_240AD7EE8(a1, a2, (v14 + v13 + 48), v8))
        {
          break;
        }

        v13 += 64;
        if (!--v10)
        {
          goto LABEL_19;
        }
      }

      sub_240ACCB4C(v12);
      return 0;
    }

LABEL_19:
    *a3 = 1;
  }

  return v12;
}

uint64_t sub_240ADE950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = *a3;
  }

  else
  {
    v5 = 0;
  }

  *v14 = 0;
  if ((*(a2 + 312))(a2, 4, v14) != 1)
  {
    return 0;
  }

  *v14 = bswap32(v5);
  if ((*(a2 + 312))(a2, 4, v14) != 1)
  {
    return 0;
  }

  *v14 = bswap32(*(a3 + 8));
  if ((*(a2 + 312))(a2, 4, v14) != 1)
  {
    return 0;
  }

  strncpy(__dst, (a3 + 12), 0x20uLL);
  strncpy(v17, (a3 + 45), 0x20uLL);
  __dst[32] = 0;
  v17[32] = 0;
  result = (*(a2 + 312))(a2, 32, __dst);
  if (result)
  {
    result = (*(a2 + 312))(a2, 32, v17);
    if (result)
    {
      if (!v5)
      {
        return 1;
      }

      v7 = 0;
LABEL_11:
      if (sub_240ACC5A8(a3, v7, v14, v12, v16))
      {
        v15 = 0;
        if ((*(a2 + 312))(a2, 32, v14))
        {
          v8 = 0;
          while (1)
          {
            v13 = bswap32(*&v12[v8]) >> 16;
            if ((*(a2 + 312))(a2, 2, &v13) != 1)
            {
              break;
            }

            v8 += 2;
            if (v8 == 6)
            {
              v9 = *(a3 + 8);
              if (v9)
              {
                v10 = 0;
                v11 = 2 * v9;
                do
                {
                  v13 = bswap32(*&v16[v10]) >> 16;
                  if ((*(a2 + 312))(a2, 2, &v13) != 1)
                  {
                    return 0;
                  }

                  v10 += 2;
                }

                while (v11 != v10);
              }

              ++v7;
              result = 1;
              if (v7 != v5)
              {
                goto LABEL_11;
              }

              return result;
            }
          }
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_240ADEB88(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  *__src = 0;
  if ((*(a2 + 280))(a2, __src, 4, 1) == 1)
  {
    *__src = 0;
    if ((*(a2 + 280))(a2, __src, 4, 1) == 1)
    {
      v6 = *__src;
      *__src = 0;
      if ((*(a2 + 280))(a2, __src, 4, 1) == 1)
      {
        v7 = *__src;
        if ((*(a2 + 280))(a2, v26, 32, 1) == 1 && (*(a2 + 280))(a2, v25, 32, 1) == 1)
        {
          v8 = bswap32(v6);
          v9 = bswap32(v7);
          v25[31] = 0;
          v26[31] = 0;
          v15 = sub_240ACC054(*(a1 + 40), v8, v9, v26, v25);
          if (!v15)
          {
            sub_240AC15A4(*(a1 + 40), 2, "Too many named colors '%d'", v10, v11, v12, v13, v14, v8);
            return v15;
          }

          if (v9 <= 0x10)
          {
            if (!v6)
            {
LABEL_22:
              *a3 = 1;
              return v15;
            }

            v17 = 0;
            v18 = 0uLL;
LABEL_15:
            v24[0] = v18;
            v24[1] = v18;
            if ((*(a2 + 280))(a2, __src, 32, 1) == 1)
            {
              v19 = 0;
              v23 = 0;
              while (1)
              {
                v21 = 0;
                if ((*(a2 + 280))(a2, &v21, 2, 1) != 1)
                {
                  break;
                }

                *&v20[v19] = bswap32(v21) >> 16;
                v19 += 2;
                if (v19 == 6)
                {
                  if (!sub_240AD4408(a2, v9, v24) || !sub_240ACC48C(v15, __src, v20, v24))
                  {
                    break;
                  }

                  ++v17;
                  v18 = 0uLL;
                  if (v17 != v8)
                  {
                    goto LABEL_15;
                  }

                  goto LABEL_22;
                }
              }
            }
          }

          else
          {
            sub_240AC15A4(*(a1 + 40), 2, "Too many device coordinates '%d'", v10, v11, v12, v13, v14, v9);
          }

          sub_240ACC2E0(v15);
        }
      }
    }
  }

  return 0;
}

uint64_t sub_240ADEE04(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = *a3;
  }

  else
  {
    v5 = 0;
  }

  *__dst = bswap32(v5);
  if ((*(a2 + 312))(a2, 4, __dst) == 1)
  {
    if (!v5)
    {
      return 1;
    }

    v6 = 0;
    v7 = 0uLL;
    v8 = v5;
LABEL_7:
    *__dst = v7;
    v16 = v7;
    v17 = v7;
    v18 = v7;
    v19 = v7;
    v20 = v7;
    v21 = v7;
    v22 = v7;
    v23 = v7;
    v24 = v7;
    v25 = v7;
    v26 = v7;
    v27 = v7;
    v28 = v7;
    v29 = v7;
    v30 = v7;
    if (a3)
    {
      if (v6 < *a3)
      {
        v9 = *(a3 + 10) + 294 * v6;
        strcpy(__dst, v9);
        v12 = *(v9 + 256);
        v13 = *(v9 + 260);
        LOBYTE(v17) = 0;
        if ((*(a2 + 312))(a2, 32, __dst))
        {
          v10 = 0;
          while (1)
          {
            v14 = bswap32(*(&v12 + v10)) >> 16;
            if ((*(a2 + 312))(a2, 2, &v14) != 1)
            {
              break;
            }

            v10 += 2;
            if (v10 == 6)
            {
              ++v6;
              result = 1;
              v7 = 0uLL;
              if (v6 != v8)
              {
                goto LABEL_7;
              }

              return result;
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_240ADEF9C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  *__src = 0;
  if ((*(a2 + 280))(a2, __src, 4, 1) != 1)
  {
    return 0;
  }

  v11 = *__src;
  v12 = bswap32(*__src);
  v13 = *(a1 + 40);
  if (v12 >= 0x11)
  {
    sub_240AC15A4(v13, 2, "Too many colorants '%d'", v6, v7, v8, v9, v10, v12);
    return 0;
  }

  v14 = sub_240ACC054(v13, v12, 0, &unk_240C888E1, &unk_240C888E1);
  if (v11)
  {
    v15 = 0;
LABEL_6:
    if ((*(a2 + 280))(a2, __src, 32, 1) == 1)
    {
      v16 = 0;
      v21 = 0;
      while (1)
      {
        v19 = 0;
        if ((*(a2 + 280))(a2, &v19, 2, 1) != 1)
        {
          break;
        }

        *&v18[v16] = bswap32(v19) >> 16;
        v16 += 2;
        if (v16 == 6)
        {
          if (!sub_240ACC48C(v14, __src, v18, 0))
          {
            break;
          }

          if (++v15 != v12)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }
    }

    *a3 = 0;
    sub_240ACC2E0(v14);
    return 0;
  }

LABEL_12:
  *a3 = 1;
  return v14;
}

uint64_t sub_240ADF144(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a3;
  if (!*a3)
  {
    v12 = 0;
    v11 = 0;
    goto LABEL_21;
  }

  v10 = *(v9 + 8);
  if (v10 == 1835103334)
  {
    v11 = *(v9 + 48);
    v9 = *(v9 + 56);
    if (!v9)
    {
      v12 = 0;
      goto LABEL_21;
    }

    v10 = *(v9 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (v10 == 1668707188)
  {
    v12 = *(v9 + 48);
    v9 = *(v9 + 56);
    if (v9)
    {
      v10 = *(v9 + 8);
      goto LABEL_11;
    }

LABEL_21:
    v13 = 0;
    v15 = 0;
    v16 = 0;
    v18 = *(a3 + 2);
    v17 = *(a3 + 3);
    goto LABEL_22;
  }

  v12 = 0;
LABEL_11:
  if (v10 != 1668052340)
  {
    v13 = 0;
LABEL_15:
    if (v10 == 1668707188)
    {
      v14 = *(v9 + 56);
      if (!v14)
      {
        v15 = *(v9 + 48);
        goto LABEL_37;
      }
    }

    else
    {
      v14 = v9;
    }

    sub_240AC15A4(*v14, 8, "LUT is not suitable to be saved as LUT16", a4, a5, a6, a7, a8);
    return 0;
  }

  v13 = *(v9 + 48);
  v9 = *(v9 + 56);
  if (v9)
  {
    v10 = *(v9 + 8);
    goto LABEL_15;
  }

  v15 = 0;
LABEL_37:
  v18 = *(a3 + 2);
  v17 = *(a3 + 3);
  if (v13)
  {
    v16 = *(v13[1] + 5);
  }

  else
  {
    v16 = 0;
  }

LABEL_22:
  LOBYTE(v31) = v18;
  if ((*(a2 + 312))(a2, 1, &v31, a4, a5, a6, a7, a8) != 1)
  {
    return 0;
  }

  LOBYTE(v31) = v17;
  if ((*(a2 + 312))(a2, 1, &v31) != 1)
  {
    return 0;
  }

  LOBYTE(v31) = v16;
  if ((*(a2 + 312))(a2, 1, &v31) != 1)
  {
    return 0;
  }

  LOBYTE(v31) = 0;
  if ((*(a2 + 312))(a2, 1, &v31) != 1)
  {
    return 0;
  }

  if (v11)
  {
    v31 = bswap32(vcvtmd_s64_f64(**v11 * 65536.0 + 0.5));
    if ((*(a2 + 312))(a2, 4, &v31) != 1)
    {
      return 0;
    }

    v31 = bswap32(vcvtmd_s64_f64(*(*v11 + 8) * 65536.0 + 0.5));
    if ((*(a2 + 312))(a2, 4, &v31) != 1)
    {
      return 0;
    }

    v31 = bswap32(vcvtmd_s64_f64(*(*v11 + 16) * 65536.0 + 0.5));
    if ((*(a2 + 312))(a2, 4, &v31) != 1)
    {
      return 0;
    }

    v31 = bswap32(vcvtmd_s64_f64(*(*v11 + 24) * 65536.0 + 0.5));
    if ((*(a2 + 312))(a2, 4, &v31) != 1)
    {
      return 0;
    }

    v31 = bswap32(vcvtmd_s64_f64(*(*v11 + 32) * 65536.0 + 0.5));
    if ((*(a2 + 312))(a2, 4, &v31) != 1)
    {
      return 0;
    }

    v31 = bswap32(vcvtmd_s64_f64(*(*v11 + 40) * 65536.0 + 0.5));
    if ((*(a2 + 312))(a2, 4, &v31) != 1)
    {
      return 0;
    }

    v31 = bswap32(vcvtmd_s64_f64(*(*v11 + 48) * 65536.0 + 0.5));
    if ((*(a2 + 312))(a2, 4, &v31) != 1)
    {
      return 0;
    }

    v31 = bswap32(vcvtmd_s64_f64(*(*v11 + 56) * 65536.0 + 0.5));
    if ((*(a2 + 312))(a2, 4, &v31) != 1)
    {
      return 0;
    }

    v19 = bswap32(vcvtmd_s64_f64(*(*v11 + 64) * 65536.0 + 0.5));
  }

  else
  {
    v31 = 256;
    if ((*(a2 + 312))(a2, 4, &v31) != 1)
    {
      return 0;
    }

    v31 = 0;
    if ((*(a2 + 312))(a2, 4, &v31) != 1)
    {
      return 0;
    }

    v31 = 0;
    if ((*(a2 + 312))(a2, 4, &v31) != 1)
    {
      return 0;
    }

    v31 = 0;
    if ((*(a2 + 312))(a2, 4, &v31) != 1)
    {
      return 0;
    }

    v31 = 256;
    if ((*(a2 + 312))(a2, 4, &v31) != 1)
    {
      return 0;
    }

    v31 = 0;
    if ((*(a2 + 312))(a2, 4, &v31) != 1)
    {
      return 0;
    }

    v31 = 0;
    if ((*(a2 + 312))(a2, 4, &v31) != 1)
    {
      return 0;
    }

    v31 = 0;
    if ((*(a2 + 312))(a2, 4, &v31) != 1)
    {
      return 0;
    }

    v19 = 256;
  }

  v31 = v19;
  if ((*(a2 + 312))(a2, 4, &v31) != 1)
  {
    return 0;
  }

  if (v12)
  {
    v20 = bswap32(*(**(v12 + 8) + 40)) >> 16;
  }

  else
  {
    LOWORD(v20) = 512;
  }

  LOWORD(v31) = v20;
  if ((*(a2 + 312))(a2, 2, &v31) != 1)
  {
    return 0;
  }

  if (v15)
  {
    v21 = bswap32(*(**(v15 + 8) + 40)) >> 16;
  }

  else
  {
    LOWORD(v21) = 512;
  }

  LOWORD(v31) = v21;
  if ((*(a2 + 312))(a2, 2, &v31) != 1)
  {
    return 0;
  }

  if (!v12)
  {
    if (v18)
    {
      v25 = v18;
      while (1)
      {
        LOWORD(v31) = 0;
        if ((*(a2 + 312))(a2, 2, &v31) != 1)
        {
          return 0;
        }

        LOWORD(v31) = -1;
        if ((*(a2 + 312))(a2, 2, &v31) != 1)
        {
          return 0;
        }

        if (!--v25)
        {
          goto LABEL_60;
        }
      }
    }

    v23 = v17 == 0;
    if (v17 && v16)
    {
      goto LABEL_75;
    }

LABEL_86:
    if (v15)
    {
      result = sub_240ADF83C(a2, v15);
      if (!result)
      {
        return result;
      }

      return 1;
    }

    if (v23)
    {
      return 1;
    }

    while (1)
    {
      LOWORD(v31) = 0;
      if ((*(a2 + 312))(a2, 2, &v31) != 1)
      {
        break;
      }

      LOWORD(v31) = -1;
      if ((*(a2 + 312))(a2, 2, &v31) != 1)
      {
        break;
      }

      if (!--v17)
      {
        return 1;
      }
    }

    return 0;
  }

  result = sub_240ADF83C(a2, v12);
  if (!result)
  {
    return result;
  }

LABEL_60:
  v23 = v17 == 0;
  if (!v17 || !v16)
  {
    goto LABEL_86;
  }

  if (v18)
  {
    v24 = 1;
    while (1)
    {
      v24 *= v16;
      if (((v16 * v24) & 0xFFFFFFFF00000000) != 0)
      {
        return 0;
      }

      if (!--v18)
      {
        goto LABEL_76;
      }
    }
  }

LABEL_75:
  v24 = 1;
LABEL_76:
  result = 0;
  v26 = v17 * v24;
  if ((v26 & 0xFFFFFFFF00000000) == 0 && v26 != -1)
  {
    if (v26)
    {
      v27 = v13 == 0;
    }

    else
    {
      v27 = 1;
    }

    if (!v27)
    {
      v28 = *v13;
      v29 = v26;
      do
      {
        v30 = *v28++;
        LOWORD(v31) = bswap32(v30) >> 16;
        if ((*(a2 + 312))(a2, 2, &v31) != 1)
        {
          return 0;
        }
      }

      while (--v29);
    }

    v23 = 0;
    goto LABEL_86;
  }

  return result;
}

uint64_t sub_240ADF83C(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  if (!v2)
  {
    return 1;
  }

  v5 = 0;
  v6 = *(**(a2 + 1) + 40);
  while (!v6)
  {
LABEL_8:
    if (++v5 >= v2)
    {
      return 1;
    }
  }

  v7 = 0;
  while (1)
  {
    v9 = bswap32(*(*(*(*(a2 + 1) + 8 * v5) + 48) + v7)) >> 16;
    if ((*(a1 + 312))(a1, 2, &v9) != 1)
    {
      return 0;
    }

    v7 += 2;
    if (2 * v6 == v7)
    {
      v2 = *a2;
      goto LABEL_8;
    }
  }
}

uint64_t *sub_240ADF908(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v51 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  LOBYTE(v41) = 0;
  if ((*(a2 + 280))(a2, &v41, 1, 1) != 1)
  {
    return 0;
  }

  v6 = v41;
  LOBYTE(v41) = 0;
  if ((*(a2 + 280))(a2, &v41, 1, 1) != 1)
  {
    return 0;
  }

  v7 = v41;
  LOBYTE(v41) = 0;
  if ((*(a2 + 280))(a2, &v41, 1, 1) != 1)
  {
    return 0;
  }

  v8 = v41;
  LOBYTE(v41) = 0;
  if ((*(a2 + 280))(a2, &v41, 1, 1) != 1)
  {
    return 0;
  }

  v9 = 0;
  if ((v6 - 17) >= 0xFFFFFFF0 && (v7 - 17) >= 0xFFFFFFF0)
  {
    v9 = sub_240ACADFC(*(a1 + 40), v6, v7);
    if (v9)
    {
      if (!sub_240AD4570(a2, &v41))
      {
        goto LABEL_67;
      }

      if (!sub_240AD4570(a2, &v42))
      {
        goto LABEL_67;
      }

      if (!sub_240AD4570(a2, &v43))
      {
        goto LABEL_67;
      }

      if (!sub_240AD4570(a2, &v44))
      {
        goto LABEL_67;
      }

      if (!sub_240AD4570(a2, &v45))
      {
        goto LABEL_67;
      }

      if (!sub_240AD4570(a2, &v46))
      {
        goto LABEL_67;
      }

      if (!sub_240AD4570(a2, &v47))
      {
        goto LABEL_67;
      }

      if (!sub_240AD4570(a2, &v48))
      {
        goto LABEL_67;
      }

      if (!sub_240AD4570(a2, &v49))
      {
        goto LABEL_67;
      }

      if (v6 == 3 && !sub_240ACB454(&v41))
      {
        v10 = sub_240AC977C(*(a1 + 40), 3, 3u, &v41, 0);
        if (!sub_240ACB414(v9, 1, v10))
        {
          goto LABEL_67;
        }
      }

      LOWORD(v50[0]) = 0;
      if ((*(a2 + 280))(a2, v50, 2, 1) != 1)
      {
        goto LABEL_67;
      }

      v11 = LOWORD(v50[0]);
      LOWORD(v50[0]) = 0;
      if ((*(a2 + 280))(a2, v50, 2, 1) != 1)
      {
        goto LABEL_67;
      }

      v15 = bswap32(v11) >> 16;
      v16 = bswap32(LOWORD(v50[0]));
      if (((v15 | HIWORD(v16)) & 0x8000) != 0 || v8 == 1 || !sub_240ADFDB8(*(a1 + 40), a2, v9, v6, v15, v12, v13, v14))
      {
        goto LABEL_67;
      }

      if (v7 && v8)
      {
        v20 = 1;
        v21 = v6;
        while (1)
        {
          v20 *= v8;
          if (((v8 * v20) & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_67;
          }

          if (!--v21)
          {
            v22 = v7 * v20;
            if ((v22 & 0xFFFFFFFF00000000) == 0 && v22 != -1)
            {
              if (!v22)
              {
                break;
              }

              v23 = *(a1 + 40);
              if (v23)
              {
                v24 = &qword_27E516570;
                while (1)
                {
                  v24 = *v24;
                  if (!v24)
                  {
                    break;
                  }

                  if (v24 == v23)
                  {
                    goto LABEL_42;
                  }
                }

                v24 = &unk_278CB2F00;
              }

              else
              {
                v24 = &unk_278CB2F00;
              }

LABEL_42:
              v25 = v24[6];
              if (!v25)
              {
                v25 = &xmmword_281500C10;
              }

              v26 = (*(v25 + 4))();
              if (v26)
              {
                v27 = v26;
                v31 = sub_240AD4408(a2, v22, v26);
                v32 = *(a1 + 40);
                if (v31)
                {
                  v50[0] = vdupq_n_s32(v8);
                  v50[1] = v50[0];
                  v33 = sub_240AC9DB8(v32, v50, v6, v7, v27, v28, v29, v30);
                  v34 = sub_240ACB414(v9, 1, v33);
                  v35 = *(a1 + 40);
                  if (v35)
                  {
                    v36 = &qword_27E516570;
                    while (1)
                    {
                      v36 = *v36;
                      if (!v36)
                      {
                        break;
                      }

                      if (v36 == v35)
                      {
                        goto LABEL_58;
                      }
                    }

                    v36 = &unk_278CB2F00;
                  }

                  else
                  {
                    v36 = &unk_278CB2F00;
                  }

LABEL_58:
                  v38 = v36[6];
                  if (!v38)
                  {
                    v38 = &xmmword_281500C10;
                  }

                  (*(v38 + 2))();
                  if (v34)
                  {
                    break;
                  }
                }

                else
                {
                  if (v32)
                  {
                    v37 = &qword_27E516570;
                    while (1)
                    {
                      v37 = *v37;
                      if (!v37)
                      {
                        break;
                      }

                      if (v37 == v32)
                      {
                        goto LABEL_64;
                      }
                    }

                    v37 = &unk_278CB2F00;
                  }

                  else
                  {
                    v37 = &unk_278CB2F00;
                  }

LABEL_64:
                  v39 = v37[6];
                  if (!v39)
                  {
                    v39 = &xmmword_281500C10;
                  }

                  (*(v39 + 2))();
                }
              }
            }

            goto LABEL_67;
          }
        }
      }

      if (!sub_240ADFDB8(*(a1 + 40), a2, v9, v7, HIWORD(v16), v17, v18, v19))
      {
LABEL_67:
        sub_240ACB1C0(v9);
        return 0;
      }

      *a3 = 1;
    }
  }

  return v9;
}

uint64_t sub_240ADFDB8(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!a5)
  {
    return 1;
  }

  if (a5 == 1 || a4 > 0x10)
  {
    return 0;
  }

  memset(v23, 0, sizeof(v23));
  if (a4)
  {
    v13 = 0;
    v14 = 8 * a4;
    v15 = a4;
    while (1)
    {
      v16 = sub_240AC1684(a1, a5, 0, 0, 0, a6, a7, a8);
      *(v23 + v13) = v16;
      if (!v16 || !sub_240AD4408(a2, a5, *(v16 + 48)))
      {
        break;
      }

      v13 += 8;
      if (v14 == v13)
      {
        v17 = sub_240AC904C(a1, a4, v23);
        if (sub_240ACB414(a3, 1, v17))
        {
          v18 = v23;
          do
          {
            v19 = *v18++;
            sub_240AC26D0(v19);
            result = 1;
            --v15;
          }

          while (v15);
          return result;
        }

        break;
      }
    }

    v21 = v23;
    do
    {
      if (*v21)
      {
        sub_240AC26D0(*v21);
      }

      ++v21;
      --v15;
    }

    while (v15);
    return 0;
  }

  v22 = sub_240AC904C(a1, 0, v23);
  return sub_240ACB414(a3, 1, v22);
}

uint64_t sub_240ADFF54(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *a3;
  v12 = *(*a3 + 8);
  if (v12 == 1835103334)
  {
    v13 = *(v11 + 48);
    v11 = *(v11 + 56);
    if (!v11)
    {
      v15 = 0;
      v14 = 0;
LABEL_21:
      v17 = 0;
      goto LABEL_22;
    }

    v12 = *(v11 + 8);
  }

  else
  {
    v13 = 0;
  }

  if (v12 != 1668707188)
  {
    v14 = 0;
    goto LABEL_9;
  }

  v14 = *(v11 + 48);
  v11 = *(v11 + 56);
  if (!v11)
  {
    v15 = 0;
    goto LABEL_21;
  }

  v12 = *(v11 + 8);
LABEL_9:
  if (v12 != 1668052340)
  {
    v15 = 0;
LABEL_13:
    if (v12 == 1668707188)
    {
      v16 = *(v11 + 56);
      if (!v16)
      {
        v17 = *(v11 + 48);
        if (!v15)
        {
          goto LABEL_22;
        }

LABEL_24:
        v18 = *(v15[1] + 20);
        goto LABEL_25;
      }
    }

    else
    {
      v16 = v11;
    }

    sub_240AC15A4(*v16, 8, "LUT is not suitable to be saved as LUT8", a4, a5, a6, a7, a8);
    return 0;
  }

  v15 = *(v11 + 48);
  v11 = *(v11 + 56);
  if (v11)
  {
    v12 = *(v11 + 8);
    goto LABEL_13;
  }

  v17 = 0;
  if (v15)
  {
    goto LABEL_24;
  }

LABEL_22:
  v18 = 0;
LABEL_25:
  LOBYTE(v36) = a3[2];
  if ((*(a2 + 312))(a2, 1, &v36, a4, a5, a6, a7, a8) != 1)
  {
    return 0;
  }

  LOBYTE(v36) = a3[3];
  if ((*(a2 + 312))(a2, 1, &v36) != 1)
  {
    return 0;
  }

  LOBYTE(v36) = v18;
  if ((*(a2 + 312))(a2, 1, &v36) != 1)
  {
    return 0;
  }

  LOBYTE(v36) = 0;
  if ((*(a2 + 312))(a2, 1, &v36) != 1)
  {
    return 0;
  }

  if (v13)
  {
    v36 = bswap32(vcvtmd_s64_f64(**v13 * 65536.0 + 0.5));
    if ((*(a2 + 312))(a2, 4, &v36) != 1)
    {
      return 0;
    }

    v36 = bswap32(vcvtmd_s64_f64(*(*v13 + 8) * 65536.0 + 0.5));
    if ((*(a2 + 312))(a2, 4, &v36) != 1)
    {
      return 0;
    }

    v36 = bswap32(vcvtmd_s64_f64(*(*v13 + 16) * 65536.0 + 0.5));
    if ((*(a2 + 312))(a2, 4, &v36) != 1)
    {
      return 0;
    }

    v36 = bswap32(vcvtmd_s64_f64(*(*v13 + 24) * 65536.0 + 0.5));
    if ((*(a2 + 312))(a2, 4, &v36) != 1)
    {
      return 0;
    }

    v36 = bswap32(vcvtmd_s64_f64(*(*v13 + 32) * 65536.0 + 0.5));
    if ((*(a2 + 312))(a2, 4, &v36) != 1)
    {
      return 0;
    }

    v36 = bswap32(vcvtmd_s64_f64(*(*v13 + 40) * 65536.0 + 0.5));
    if ((*(a2 + 312))(a2, 4, &v36) != 1)
    {
      return 0;
    }

    v36 = bswap32(vcvtmd_s64_f64(*(*v13 + 48) * 65536.0 + 0.5));
    if ((*(a2 + 312))(a2, 4, &v36) != 1)
    {
      return 0;
    }

    v36 = bswap32(vcvtmd_s64_f64(*(*v13 + 56) * 65536.0 + 0.5));
    if ((*(a2 + 312))(a2, 4, &v36) != 1)
    {
      return 0;
    }

    v19 = bswap32(vcvtmd_s64_f64(*(*v13 + 64) * 65536.0 + 0.5));
  }

  else
  {
    v36 = 256;
    if ((*(a2 + 312))(a2, 4, &v36) != 1)
    {
      return 0;
    }

    v36 = 0;
    if ((*(a2 + 312))(a2, 4, &v36) != 1)
    {
      return 0;
    }

    v36 = 0;
    if ((*(a2 + 312))(a2, 4, &v36) != 1)
    {
      return 0;
    }

    v36 = 0;
    if ((*(a2 + 312))(a2, 4, &v36) != 1)
    {
      return 0;
    }

    v36 = 256;
    if ((*(a2 + 312))(a2, 4, &v36) != 1)
    {
      return 0;
    }

    v36 = 0;
    if ((*(a2 + 312))(a2, 4, &v36) != 1)
    {
      return 0;
    }

    v36 = 0;
    if ((*(a2 + 312))(a2, 4, &v36) != 1)
    {
      return 0;
    }

    v36 = 0;
    if ((*(a2 + 312))(a2, 4, &v36) != 1)
    {
      return 0;
    }

    v19 = 256;
  }

  v36 = v19;
  if ((*(a2 + 312))(a2, 4, &v36) != 1 || !sub_240AE0544(*(a1 + 40), a2, a3[2], v14, v20, v21, v22, v23))
  {
    return 0;
  }

  v28 = a3[3];
  if (v18 && v28)
  {
    v29 = a3[2];
    if (v29)
    {
      v30 = 1;
      while (1)
      {
        v30 *= v18;
        if (((v18 * v30) & 0xFFFFFFFF00000000) != 0)
        {
          return 0;
        }

        if (!--v29)
        {
          goto LABEL_58;
        }
      }
    }

    v30 = 1;
LABEL_58:
    v31 = v28 * v30;
    if ((v31 & 0xFFFFFFFF00000000) != 0 || v31 == -1)
    {
      return 0;
    }

    if (v15 && v31)
    {
      v32 = 0;
      v33 = 2 * v31;
      while (1)
      {
        LOBYTE(v36) = (65281 * *(*v15 + v32) + 0x800000) >> 24;
        if ((*(a2 + 312))(a2, 1, &v36) != 1)
        {
          return 0;
        }

        v32 += 2;
        if (v33 == v32)
        {
          v28 = a3[3];
          break;
        }
      }
    }
  }

  v34 = *(a1 + 40);

  return sub_240AE0544(v34, a2, v28, v17, v24, v25, v26, v27);
}

uint64_t sub_240AE0544(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    return 1;
  }

  v11 = 0;
  v12 = a3;
  while (!a4)
  {
LABEL_15:
    if (++v11 == v12)
    {
      return 1;
    }
  }

  v13 = *(*(a4 + 8) + 8 * v11);
  v14 = *(v13 + 40);
  if (v14 == 2)
  {
    v16 = *(v13 + 48);
    if (!*v16 && v16[1] == -1)
    {
      v17 = 0;
      while (1)
      {
        v19 = v17;
        if ((*(a2 + 312))(a2, 1, &v19, a4, a5, a6, a7, a8) != 1)
        {
          return 0;
        }

        if (++v17 == 256)
        {
          goto LABEL_15;
        }
      }
    }
  }

  else if (v14 == 256)
  {
    v15 = 0;
    while (1)
    {
      v20 = (65281 * *(*(*(*(a4 + 8) + 8 * v11) + 48) + v15) + 0x800000) >> 24;
      if ((*(a2 + 312))(a2, 1, &v20, a4, a5, a6, a7, a8) != 1)
      {
        return 0;
      }

      v15 += 2;
      if (v15 == 512)
      {
        goto LABEL_15;
      }
    }
  }

  sub_240AC15A4(a1, 2, "LUT8 needs 256 entries on prelinearization", a4, a5, a6, a7, a8);
  return 0;
}

uint64_t *sub_240AE068C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v54 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  LOBYTE(v44) = 0;
  if ((*(a2 + 280))(a2, &v44, 1, 1) != 1)
  {
    return 0;
  }

  v6 = v44;
  LOBYTE(v44) = 0;
  if ((*(a2 + 280))(a2, &v44, 1, 1) != 1)
  {
    return 0;
  }

  v7 = v44;
  LOBYTE(v44) = 0;
  if ((*(a2 + 280))(a2, &v44, 1, 1) != 1)
  {
    return 0;
  }

  v8 = v44;
  if (v44 == 1)
  {
    return 0;
  }

  LOBYTE(v44) = 0;
  if ((*(a2 + 280))(a2, &v44, 1, 1) != 1)
  {
    return 0;
  }

  v9 = 0;
  if ((v6 - 17) >= 0xFFFFFFF0 && (v7 - 17) >= 0xFFFFFFF0)
  {
    v9 = sub_240ACADFC(*(a1 + 40), v6, v7);
    if (v9)
    {
      if (!sub_240AD4570(a2, &v44))
      {
        goto LABEL_33;
      }

      if (!sub_240AD4570(a2, &v45))
      {
        goto LABEL_33;
      }

      if (!sub_240AD4570(a2, &v46))
      {
        goto LABEL_33;
      }

      if (!sub_240AD4570(a2, &v47))
      {
        goto LABEL_33;
      }

      if (!sub_240AD4570(a2, &v48))
      {
        goto LABEL_33;
      }

      if (!sub_240AD4570(a2, &v49))
      {
        goto LABEL_33;
      }

      if (!sub_240AD4570(a2, &v50))
      {
        goto LABEL_33;
      }

      if (!sub_240AD4570(a2, &v51))
      {
        goto LABEL_33;
      }

      if (!sub_240AD4570(a2, &v52))
      {
        goto LABEL_33;
      }

      if (v6 == 3 && !sub_240ACB454(&v44))
      {
        v13 = sub_240AC977C(*(a1 + 40), 3, 3u, &v44, 0);
        if (!v13)
        {
          goto LABEL_33;
        }

        v13[7] = *v9;
        *v9 = v13;
        if (!sub_240ACAF44(v9))
        {
          goto LABEL_33;
        }
      }

      if (!sub_240AE0C40(*(a1 + 40), a2, v9, v6))
      {
        goto LABEL_33;
      }

      if (v7 && v8)
      {
        v10 = 1;
        v11 = v6;
        do
        {
          v10 *= v8;
          if (((v8 * v10) & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_33;
          }

          --v11;
        }

        while (v11);
        v12 = v7 * v10;
        if ((v12 & 0xFFFFFFFF00000000) != 0 || v12 == -1)
        {
          goto LABEL_33;
        }

        if (!v12)
        {
          goto LABEL_29;
        }

        v15 = *(a1 + 40);
        if (v15)
        {
          v16 = &qword_27E516570;
          while (1)
          {
            v16 = *v16;
            if (!v16)
            {
              break;
            }

            if (v16 == v15)
            {
              goto LABEL_43;
            }
          }

          v16 = &unk_278CB2F00;
        }

        else
        {
          v16 = &unk_278CB2F00;
        }

LABEL_43:
        v17 = v16[6];
        if (!v17)
        {
          v17 = &xmmword_281500C10;
        }

        v18 = (*(v17 + 4))();
        if (!v18)
        {
          goto LABEL_33;
        }

        v19 = v18;
        v20 = *(a1 + 40);
        if (v20)
        {
          v21 = &qword_27E516570;
          while (1)
          {
            v21 = *v21;
            if (!v21)
            {
              break;
            }

            if (v21 == v20)
            {
              goto LABEL_53;
            }
          }

          v21 = &unk_278CB2F00;
        }

        else
        {
          v21 = &unk_278CB2F00;
        }

LABEL_53:
        v22 = v21[6];
        if (!v22)
        {
          v22 = &xmmword_281500C10;
        }

        v23 = (*v22)();
        if (v23)
        {
          v24 = v23;
          if ((*(a2 + 280))(a2, v23, v12, 1) == 1)
          {
            v25 = 0;
            do
            {
              *(v19 + 2 * v25) = *(v24 + v25) | (*(v24 + v25) << 8);
              ++v25;
            }

            while (v12 != v25);
            v26 = *(a1 + 40);
            if (v26)
            {
              v27 = &qword_27E516570;
              while (1)
              {
                v27 = *v27;
                if (!v27)
                {
                  break;
                }

                if (v27 == v26)
                {
                  goto LABEL_73;
                }
              }

              v27 = &unk_278CB2F00;
            }

            else
            {
              v27 = &unk_278CB2F00;
            }

LABEL_73:
            v30 = v27[6];
            if (!v30)
            {
              v30 = &xmmword_281500C10;
            }

            (*(v30 + 2))();
            v31 = *(a1 + 40);
            v53[0] = vdupq_n_s32(v8);
            v53[1] = v53[0];
            v35 = sub_240AC9DB8(v31, v53, v6, v7, v19, v32, v33, v34);
            v36 = sub_240ACB414(v9, 1, v35);
            v37 = *(a1 + 40);
            if (v37)
            {
              v38 = &qword_27E516570;
              while (1)
              {
                v38 = *v38;
                if (!v38)
                {
                  break;
                }

                if (v38 == v37)
                {
                  goto LABEL_96;
                }
              }

              v38 = &unk_278CB2F00;
            }

            else
            {
              v38 = &unk_278CB2F00;
            }

LABEL_96:
            v43 = v38[6];
            if (!v43)
            {
              v43 = &xmmword_281500C10;
            }

            (*(v43 + 2))();
            if (v36)
            {
              goto LABEL_29;
            }

            goto LABEL_33;
          }

          v28 = *(a1 + 40);
          if (v28)
          {
            v29 = &qword_27E516570;
            while (1)
            {
              v29 = *v29;
              if (!v29)
              {
                break;
              }

              if (v29 == v28)
              {
                goto LABEL_82;
              }
            }

            v29 = &unk_278CB2F00;
          }

          else
          {
            v29 = &unk_278CB2F00;
          }

LABEL_82:
          v39 = v29[6];
          if (!v39)
          {
            v39 = &xmmword_281500C10;
          }

          (*(v39 + 2))();
        }

        v40 = *(a1 + 40);
        if (v40)
        {
          v41 = &qword_27E516570;
          while (1)
          {
            v41 = *v41;
            if (!v41)
            {
              break;
            }

            if (v41 == v40)
            {
              goto LABEL_92;
            }
          }

          v41 = &unk_278CB2F00;
        }

        else
        {
          v41 = &unk_278CB2F00;
        }

LABEL_92:
        v42 = v41[6];
        if (!v42)
        {
          v42 = &xmmword_281500C10;
        }

        (*(v42 + 2))();
        goto LABEL_33;
      }

LABEL_29:
      if (!sub_240AE0C40(*(a1 + 40), a2, v9, v7))
      {
LABEL_33:
        sub_240ACB1C0(v9);
        return 0;
      }

      *a3 = 1;
    }
  }

  return v9;
}

uint64_t sub_240AE0C40(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v30 = *MEMORY[0x277D85DE8];
  if ((a4 - 17) < 0xFFFFFFF0)
  {
    return 0;
  }

  memset(v29, 0, sizeof(v29));
  if (a1)
  {
    v8 = &qword_27E516570;
    while (1)
    {
      v8 = *v8;
      if (!v8)
      {
        break;
      }

      if (v8 == a1)
      {
        goto LABEL_9;
      }
    }

    v8 = &unk_278CB2F00;
  }

  else
  {
    v8 = &unk_278CB2F00;
  }

LABEL_9:
  v9 = v8[6];
  if (!v9)
  {
    v9 = &xmmword_281500C10;
  }

  result = (*v9)(a1, 256, 0x100004077774924);
  if (result)
  {
    v14 = result;
    v15 = 0;
    v16 = a4;
    while (1)
    {
      v17 = sub_240AC1684(a1, 256, 0, 0, 0, v11, v12, v13);
      *(v29 + v15) = v17;
      if (!v17)
      {
        break;
      }

      if (a4 == ++v15)
      {
        v18 = 0;
        while ((*(a2 + 280))(a2, v14, 256, 1) == 1)
        {
          v19 = 0;
          v20 = *(*(v29 + v18) + 48);
          do
          {
            *(v20 + 2 * v19) = *(v14 + v19) | (*(v14 + v19) << 8);
            ++v19;
          }

          while (v19 != 256);
          if (++v18 == a4)
          {
            if (a1)
            {
              v21 = &qword_27E516570;
              while (1)
              {
                v21 = *v21;
                if (!v21)
                {
                  break;
                }

                if (v21 == a1)
                {
                  goto LABEL_27;
                }
              }

              v21 = &unk_278CB2F00;
            }

            else
            {
              v21 = &unk_278CB2F00;
            }

LABEL_27:
            v22 = v21[6];
            if (!v22)
            {
              v22 = &xmmword_281500C10;
            }

            (*(v22 + 2))(a1, v14);
            v23 = sub_240AC904C(a1, a4, v29);
            if (!sub_240ACB414(a3, 1, v23))
            {
              v14 = 0;
              goto LABEL_34;
            }

            v24 = v29;
            do
            {
              v25 = *v24++;
              sub_240AC26D0(v25);
              --v16;
            }

            while (v16);
            return 1;
          }
        }

        break;
      }
    }

LABEL_34:
    v26 = v29;
    do
    {
      if (*v26)
      {
        sub_240AC26D0(*v26);
      }

      ++v26;
      --v16;
    }

    while (v16);
    if (v14)
    {
      if (a1)
      {
        v27 = &qword_27E516570;
        while (1)
        {
          v27 = *v27;
          if (!v27)
          {
            break;
          }

          if (v27 == a1)
          {
            goto LABEL_46;
          }
        }

        v27 = &unk_278CB2F00;
      }

      else
      {
        v27 = &unk_278CB2F00;
      }

LABEL_46:
      v28 = v27[6];
      if (!v28)
      {
        v28 = &xmmword_281500C10;
      }

      (*(v28 + 2))(a1, v14);
    }

    return 0;
  }

  return result;
}

uint64_t sub_240AE0EF4(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 40);
    if (v2)
    {
      v3 = &qword_27E516570;
      while (1)
      {
        v3 = *v3;
        if (!v3)
        {
          break;
        }

        if (v3 == v2)
        {
          goto LABEL_10;
        }
      }

      v3 = &unk_278CB2F00;
    }

    else
    {
      v3 = &unk_278CB2F00;
    }

LABEL_10:
    v4 = v3[6];
    if (!v4)
    {
      v4 = &xmmword_281500C10;
    }

    return (*(v4 + 2))();
  }

  return result;
}

uint64_t sub_240AE0F54(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = &qword_27E516570;
    while (1)
    {
      v2 = *v2;
      if (!v2)
      {
        break;
      }

      if (v2 == v1)
      {
        goto LABEL_8;
      }
    }

    v2 = &unk_278CB2F00;
  }

  else
  {
    v2 = &unk_278CB2F00;
  }

LABEL_8:
  v3 = v2[6];
  if (!v3)
  {
    v3 = &xmmword_281500C10;
  }

  return (*(v3 + 5))();
}

BOOL sub_240AE0FC0(uint64_t a1, uint64_t a2, int32x4_t *a3)
{
  v5 = vrev64_s16(vrev16_s8(vmovn_s32(*a3)));
  v4[1] = bswap32(a3[1].u16[0] + 1) >> 16;
  v4[0] = bswap32(a3[1].u16[2] + 1900) >> 16;
  return (*(a2 + 312))(a2, 12, v4) != 0;
}

int8x16_t *sub_240AE1034(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 0;
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = &qword_27E516570;
    while (1)
    {
      v6 = *v6;
      if (!v6)
      {
        break;
      }

      if (v6 == v5)
      {
        goto LABEL_8;
      }
    }

    v6 = &unk_278CB2F00;
  }

  else
  {
    v6 = &unk_278CB2F00;
  }

LABEL_8:
  v7 = v6[6];
  if (!v7)
  {
    v7 = &xmmword_281500C10;
  }

  v8 = (*v7)();
  if (v8)
  {
    memset(v12, 0, 12);
    if ((*(a2 + 280))(a2, v12, 12, 1) == 1)
    {
      v9 = vrev64q_s32(vmovl_u16(vrev16_s8(*(v12 + 4))));
      *v8 = vextq_s8(v9, v9, 8uLL);
      v10 = (bswap32(v12[0].u16[0]) >> 16) - 1900;
      v8[1].i32[0] = (bswap32(v12[0].u16[1]) >> 16) - 1;
      v8[1].i32[1] = v10;
      v8[1].i64[1] = -1;
      v8[2].i32[0] = 0;
      *a3 = 1;
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_240AE11A4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_240ACBF1C(a3, 0, 0, word_240C15120, 0, 0);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = &qword_27E516570;
    while (1)
    {
      v9 = *v9;
      if (!v9)
      {
        break;
      }

      if (v9 == v8)
      {
        goto LABEL_9;
      }
    }

    v9 = &unk_278CB2F00;
  }

  else
  {
    v9 = &unk_278CB2F00;
  }

LABEL_9:
  v10 = v9[6];
  if (!v10)
  {
    v10 = &xmmword_281500C10;
  }

  v11 = (*v10)();
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  sub_240ACBF1C(a3, 0, 0, word_240C15120, v11, v7);
  v13 = (*(a2 + 312))(a2, v7, v12);
  v14 = *(a1 + 40);
  if (v14)
  {
    v15 = &qword_27E516570;
    while (1)
    {
      v15 = *v15;
      if (!v15)
      {
        break;
      }

      if (v15 == v14)
      {
        goto LABEL_20;
      }
    }

    v15 = &unk_278CB2F00;
  }

  else
  {
    v15 = &unk_278CB2F00;
  }

LABEL_20:
  v16 = v15[6];
  if (!v16)
  {
    v16 = &xmmword_281500C10;
  }

  (*(v16 + 2))();
  return v13;
}

uint64_t sub_240AE1310(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 40);
    if (v2)
    {
      v3 = &qword_27E516570;
      while (1)
      {
        v3 = *v3;
        if (!v3)
        {
          break;
        }

        if (v3 == v2)
        {
          goto LABEL_10;
        }
      }

      v3 = &unk_278CB2F00;
    }

    else
    {
      v3 = &unk_278CB2F00;
    }

LABEL_10:
    v4 = v3[6];
    if (!v4)
    {
      v4 = &xmmword_281500C10;
    }

    return (*(v4 + 2))();
  }

  return result;
}

uint64_t sub_240AE1370(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = &qword_27E516570;
    while (1)
    {
      v2 = *v2;
      if (!v2)
      {
        break;
      }

      if (v2 == v1)
      {
        goto LABEL_8;
      }
    }

    v2 = &unk_278CB2F00;
  }

  else
  {
    v2 = &unk_278CB2F00;
  }

LABEL_8:
  v3 = v2[6];
  if (!v3)
  {
    v3 = &xmmword_281500C10;
  }

  return (*(v3 + 5))();
}

uint64_t sub_240AE13DC(uint64_t a1, uint64_t a2, double *a3, unsigned int a4)
{
  if (!a4)
  {
    return 1;
  }

  v6 = a4;
  while (1)
  {
    v8 = bswap32(vcvtmd_u64_f64(*a3 * 65536.0 + 0.5));
    if ((*(a2 + 312))(a2, 4, &v8) != 1)
    {
      break;
    }

    ++a3;
    if (!--v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_240AE1480(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int a4)
{
  *a3 = 0;
  v8 = a4 >> 2;
  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = &qword_27E516570;
    while (1)
    {
      v10 = *v10;
      if (!v10)
      {
        break;
      }

      if (v10 == v9)
      {
        goto LABEL_8;
      }
    }

    v10 = &unk_278CB2F00;
  }

  else
  {
    v10 = &unk_278CB2F00;
  }

LABEL_8:
  v11 = v10[6];
  if (!v11)
  {
    v11 = &xmmword_281500C10;
  }

  v12 = (*(v11 + 4))();
  if (v12)
  {
    if (a4 < 4)
    {
LABEL_15:
      *a3 = v8;
    }

    else
    {
      v13 = 0;
      while (1)
      {
        v18 = 0;
        if ((*(a2 + 280))(a2, &v18, 4, 1) != 1)
        {
          break;
        }

        *(v12 + v13) = vcvtd_n_f64_u32(bswap32(v18), 0x10uLL);
        v13 += 8;
        if (8 * v8 == v13)
        {
          goto LABEL_15;
        }
      }

      v14 = *(a1 + 40);
      if (v14)
      {
        v15 = &qword_27E516570;
        while (1)
        {
          v15 = *v15;
          if (!v15)
          {
            break;
          }

          if (v15 == v14)
          {
            goto LABEL_23;
          }
        }

        v15 = &unk_278CB2F00;
      }

      else
      {
        v15 = &unk_278CB2F00;
      }

LABEL_23:
      v16 = v15[6];
      if (!v16)
      {
        v16 = &xmmword_281500C10;
      }

      (*(v16 + 2))();
      return 0;
    }
  }

  return v12;
}

uint64_t sub_240AE1600(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 40);
    if (v2)
    {
      v3 = &qword_27E516570;
      while (1)
      {
        v3 = *v3;
        if (!v3)
        {
          break;
        }

        if (v3 == v2)
        {
          goto LABEL_10;
        }
      }

      v3 = &unk_278CB2F00;
    }

    else
    {
      v3 = &unk_278CB2F00;
    }

LABEL_10:
    v4 = v3[6];
    if (!v4)
    {
      v4 = &xmmword_281500C10;
    }

    return (*(v4 + 2))();
  }

  return result;
}

uint64_t sub_240AE1660(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = &qword_27E516570;
    while (1)
    {
      v2 = *v2;
      if (!v2)
      {
        break;
      }

      if (v2 == v1)
      {
        goto LABEL_8;
      }
    }

    v2 = &unk_278CB2F00;
  }

  else
  {
    v2 = &unk_278CB2F00;
  }

LABEL_8:
  v3 = v2[6];
  if (!v3)
  {
    v3 = &xmmword_281500C10;
  }

  return (*(v3 + 5))();
}

uint64_t sub_240AE16CC(uint64_t a1, uint64_t a2, double *a3, unsigned int a4)
{
  if (!a4)
  {
    return 1;
  }

  v6 = a4;
  while (1)
  {
    v8 = bswap32(vcvtmd_s64_f64(*a3 * 65536.0 + 0.5));
    if ((*(a2 + 312))(a2, 4, &v8) != 1)
    {
      break;
    }

    ++a3;
    if (!--v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_240AE1770(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int a4)
{
  *a3 = 0;
  v8 = a4 >> 2;
  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = &qword_27E516570;
    while (1)
    {
      v10 = *v10;
      if (!v10)
      {
        break;
      }

      if (v10 == v9)
      {
        goto LABEL_8;
      }
    }

    v10 = &unk_278CB2F00;
  }

  else
  {
    v10 = &unk_278CB2F00;
  }

LABEL_8:
  v11 = v10[6];
  if (!v11)
  {
    v11 = &xmmword_281500C10;
  }

  v12 = (*(v11 + 4))();
  v13 = v12;
  if (v12)
  {
    if (a4 < 4)
    {
LABEL_15:
      *a3 = v8;
    }

    else
    {
      v14 = v8;
      v15 = v12;
      while (sub_240AD4570(a2, v15))
      {
        ++v15;
        if (!--v14)
        {
          goto LABEL_15;
        }
      }

      v16 = *(a1 + 40);
      if (v16)
      {
        v17 = &qword_27E516570;
        while (1)
        {
          v17 = *v17;
          if (!v17)
          {
            break;
          }

          if (v17 == v16)
          {
            goto LABEL_23;
          }
        }

        v17 = &unk_278CB2F00;
      }

      else
      {
        v17 = &unk_278CB2F00;
      }

LABEL_23:
      v18 = v17[6];
      if (!v18)
      {
        v18 = &xmmword_281500C10;
      }

      (*(v18 + 2))();
      return 0;
    }
  }

  return v13;
}

uint64_t sub_240AE18C4(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 40);
    if (v2)
    {
      v3 = &qword_27E516570;
      while (1)
      {
        v3 = *v3;
        if (!v3)
        {
          break;
        }

        if (v3 == v2)
        {
          goto LABEL_10;
        }
      }

      v3 = &unk_278CB2F00;
    }

    else
    {
      v3 = &unk_278CB2F00;
    }

LABEL_10:
    v4 = v3[6];
    if (!v4)
    {
      v4 = &xmmword_281500C10;
    }

    return (*(v4 + 2))();
  }

  return result;
}

uint64_t sub_240AE1924(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = &qword_27E516570;
    while (1)
    {
      v2 = *v2;
      if (!v2)
      {
        break;
      }

      if (v2 == v1)
      {
        goto LABEL_8;
      }
    }

    v2 = &unk_278CB2F00;
  }

  else
  {
    v2 = &unk_278CB2F00;
  }

LABEL_8:
  v3 = v2[6];
  if (!v3)
  {
    v3 = &xmmword_281500C10;
  }

  return (*(v3 + 5))();
}

BOOL sub_240AE1990(uint64_t a1, uint64_t a2, int8x16_t *a3)
{
  v5.i64[0] = -1;
  v5.i64[1] = -1;
  v6 = vbicq_s8(xmmword_240C11230, vceqq_s8(*a3, v5));
  v7 = vzip1q_s8(v6, vextq_s8(v6, v6, 8uLL));
  v7.i16[0] = vaddvq_s16(v7);
  *v7.i8 = vcnt_s8(*v7.i8);
  v7.i16[0] = vaddlv_u8(*v7.i8);
  v8 = v7.u32[0];
  v10 = v7.i32[0] << 24;
  return (*(a2 + 312))(a2, 4, &v10) == 1 && (*(a2 + 312))(a2, v8, a3) != 0;
}

void *sub_240AE1A44(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 0;
  v16 = 0;
  if ((*(a2 + 280))(a2, &v16, 4, 1) != 1)
  {
    return 0;
  }

  v6 = bswap32(v16);
  if (v6 > 0x10)
  {
    return 0;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = &qword_27E516570;
    while (1)
    {
      v8 = *v8;
      if (!v8)
      {
        break;
      }

      if (v8 == v7)
      {
        goto LABEL_10;
      }
    }

    v8 = &unk_278CB2F00;
  }

  else
  {
    v8 = &unk_278CB2F00;
  }

LABEL_10:
  v9 = v8[6];
  if (!v9)
  {
    v9 = &xmmword_281500C10;
  }

  v10 = (*(v9 + 4))();
  v11 = v10;
  if (v10)
  {
    *v10 = -1;
    v10[1] = -1;
    if ((*(a2 + 280))(a2, v10, 1, v6) == v6)
    {
      *a3 = 1;
      return v11;
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      v13 = &qword_27E516570;
      while (1)
      {
        v13 = *v13;
        if (!v13)
        {
          break;
        }

        if (v13 == v12)
        {
          goto LABEL_22;
        }
      }

      v13 = &unk_278CB2F00;
    }

    else
    {
      v13 = &unk_278CB2F00;
    }

LABEL_22:
    v14 = v13[6];
    if (!v14)
    {
      v14 = &xmmword_281500C10;
    }

    (*(v14 + 2))();
    return 0;
  }

  return v11;
}

uint64_t sub_240AE1BCC(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 40);
    if (v2)
    {
      v3 = &qword_27E516570;
      while (1)
      {
        v3 = *v3;
        if (!v3)
        {
          break;
        }

        if (v3 == v2)
        {
          goto LABEL_10;
        }
      }

      v3 = &unk_278CB2F00;
    }

    else
    {
      v3 = &unk_278CB2F00;
    }

LABEL_10:
    v4 = v3[6];
    if (!v4)
    {
      v4 = &xmmword_281500C10;
    }

    return (*(v4 + 2))();
  }

  return result;
}

uint64_t sub_240AE1C2C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = &qword_27E516570;
    while (1)
    {
      v2 = *v2;
      if (!v2)
      {
        break;
      }

      if (v2 == v1)
      {
        goto LABEL_8;
      }
    }

    v2 = &unk_278CB2F00;
  }

  else
  {
    v2 = &unk_278CB2F00;
  }

LABEL_8:
  v3 = v2[6];
  if (!v3)
  {
    v3 = &xmmword_281500C10;
  }

  return (*(v3 + 5))();
}

BOOL sub_240AE1C98(uint64_t a1, uint64_t a2, double *a3)
{
  v8 = 768;
  if ((*(a2 + 312))(a2, 2, &v8) != 1)
  {
    return 0;
  }

  v9 = 0;
  if ((*(a2 + 312))(a2, 2, &v9) != 1 || !sub_240AE1D54(a2, *a3, a3[1]) || !sub_240AE1D54(a2, a3[3], a3[4]))
  {
    return 0;
  }

  v5 = a3[6];
  v6 = a3[7];

  return sub_240AE1D54(a2, v5, v6);
}

BOOL sub_240AE1D54(uint64_t a1, double a2, double a3)
{
  v6 = bswap32(vcvtmd_s64_f64(a2 * 65536.0 + 0.5));
  if ((*(a1 + 312))(a1, 4, &v6) != 1)
  {
    return 0;
  }

  v7 = bswap32(vcvtmd_s64_f64(a3 * 65536.0 + 0.5));
  return (*(a1 + 312))(a1, 4, &v7) == 1;
}

uint64_t sub_240AE1DF8(uint64_t a1, uint64_t a2, _DWORD *a3, int a4)
{
  *a3 = 0;
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = &qword_27E516570;
    while (1)
    {
      v9 = *v9;
      if (!v9)
      {
        break;
      }

      if (v9 == v8)
      {
        goto LABEL_8;
      }
    }

    v9 = &unk_278CB2F00;
  }

  else
  {
    v9 = &unk_278CB2F00;
  }

LABEL_8:
  v10 = v9[6];
  if (!v10)
  {
    v10 = &xmmword_281500C10;
  }

  v11 = (*(v10 + 1))();
  if (v11)
  {
    v17 = 0;
    if ((*(a2 + 280))(a2, &v17, 2, 1) == 1)
    {
      v12 = v17;
      if (a4 != 32 || v17)
      {
LABEL_17:
        if (v12 == 768)
        {
          v20 = 0;
          if ((*(a2 + 280))(a2, &v20, 2, 1) == 1)
          {
            if (sub_240AD4570(a2, v11))
            {
              if (sub_240AD4570(a2, (v11 + 8)))
              {
                *(v11 + 16) = 0x3FF0000000000000;
                if (sub_240AD4570(a2, (v11 + 24)))
                {
                  if (sub_240AD4570(a2, (v11 + 32)))
                  {
                    *(v11 + 40) = 0x3FF0000000000000;
                    if (sub_240AD4570(a2, (v11 + 48)))
                    {
                      if (sub_240AD4570(a2, (v11 + 56)))
                      {
                        *(v11 + 64) = 0x3FF0000000000000;
                        *a3 = 1;
                        return v11;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        goto LABEL_26;
      }

      v18 = 0;
      if ((*(a2 + 280))(a2, &v18, 2, 1) == 1)
      {
        v19 = 0;
        if ((*(a2 + 280))(a2, &v19, 2, 1) == 1)
        {
          v12 = v19;
          goto LABEL_17;
        }
      }
    }

LABEL_26:
    v13 = *(a1 + 40);
    if (v13)
    {
      v14 = &qword_27E516570;
      while (1)
      {
        v14 = *v14;
        if (!v14)
        {
          break;
        }

        if (v14 == v13)
        {
          goto LABEL_33;
        }
      }

      v14 = &unk_278CB2F00;
    }

    else
    {
      v14 = &unk_278CB2F00;
    }

LABEL_33:
    v15 = v14[6];
    if (!v15)
    {
      v15 = &xmmword_281500C10;
    }

    (*(v15 + 2))();
    return 0;
  }

  return v11;
}

char *sub_240AE2040(uint64_t *a1, int a2)
{
  if (a1)
  {
    v2 = &qword_27E516570;
    while (1)
    {
      v2 = *v2;
      if (!v2)
      {
        break;
      }

      if (v2 == a1)
      {
        goto LABEL_8;
      }
    }

    v2 = &unk_278CB2F00;
  }

  else
  {
    v2 = &unk_278CB2F00;
  }

LABEL_8:
  v3 = v2[11];
  if (!v3)
  {
    v3 = &unk_27E5165B0;
  }

  v4 = *v3;
  if (v4)
  {
    while (*v4 != a2)
    {
      v4 = *(v4 + 13);
      if (!v4)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    v4 = a0b2a;
    while (*v4 != a2)
    {
      v4 = *(v4 + 13);
      if (!v4)
      {
        return 0;
      }
    }
  }

  return v4 + 8;
}

uint64_t sub_240AE20D4(double a1)
{
  if (a1 >= 4.0)
  {
    return 1835824483;
  }

  else
  {
    return 1684370275;
  }
}

uint64_t sub_240AE20F4(double a1)
{
  if (a1 >= 4.0)
  {
    return 1835824483;
  }

  else
  {
    return 1952807028;
  }
}

uint64_t sub_240AE2114(uint64_t a1, double a2)
{
  result = 1668641398;
  if (a2 >= 4.0 && *(a1 + 8) == 1)
  {
    v4 = *(*(a1 + 16) + 8);
    if ((v4 & 0x80000000) == 0)
    {
      if (v4 <= 5)
      {
        return 1885434465;
      }

      else
      {
        return 1668641398;
      }
    }
  }

  return result;
}

uint64_t sub_240AE2164(uint64_t a1, double a2)
{
  if (a2 >= 4.0)
  {
    return 1833058592;
  }

  if (*(a1 + 64))
  {
    return 1835430961;
  }

  return 1835430962;
}

uint64_t sub_240AE2194(uint64_t a1, double a2)
{
  if (a2 >= 4.0)
  {
    return 1832993312;
  }

  if (*(a1 + 64))
  {
    return 1835430961;
  }

  return 1835430962;
}

uint64_t sub_240AE21C4(uint64_t *a1)
{
  v1 = sub_240AC67A4(a1);
  v2 = v1;
  if (v1)
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    sub_240AC6B0C(v1, 4.3);
    *(v2 + 76) = xmmword_240C11240;
    if (!sub_240AE22C0(v2, "R") || !sub_240AC7D44(v2, 2004119668, &xmmword_27E516510, v3, v4, v5, v6, v7) || (v14[0] = *&xmmword_27E5165C0 / *(&xmmword_27E5165C0 + 1) * *&qword_27E5165D0, *&v14[1] = qword_27E5165D0, v14[2] = *&qword_27E5165D0 * ((1.0 - *&xmmword_27E5165C0 - *(&xmmword_27E5165C0 + 1)) / *(&xmmword_27E5165C0 + 1)), sub_240AE2748(v15, v14, &xmmword_27E516510), !sub_240AC7D44(v2, 1667785060, v15, v8, v9, v10, v11, v12)))
    {
      sub_240AC6C8C(v2);
      return 0;
    }
  }

  return v2;
}

uint64_t sub_240AE22C0(uint64_t a1, char *a2)
{
  if (a1)
  {
    v4 = *(a1 + 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_240ACB75C(v4, 1u);
  v6 = sub_240ACB75C(v4, 1u);
  v7 = v6;
  if (v5 && v6)
  {
    if (sub_240ACBC94(v5, a2) && sub_240ACBA58(v7, 0x60u, &unk_240C15244, 25966, 21843) && sub_240AC7D44(a1, 1684370275, v5, v8, v9, v10, v11, v12))
    {
      v18 = sub_240AC7D44(a1, 1668313716, v7, v13, v14, v15, v16, v17);
    }

    else
    {
      v18 = 0;
    }

LABEL_15:
    sub_240ACBDDC(v5);
    if (!v7)
    {
      return v18;
    }

    goto LABEL_12;
  }

  v18 = 0;
  if (v5)
  {
    goto LABEL_15;
  }

  if (v6)
  {
LABEL_12:
    sub_240ACBDDC(v7);
  }

  return v18;
}

uint64_t sub_240AE23B4(uint64_t *a1)
{
  xmmword_27E5165C0 = vmulq_n_f64(xmmword_27E516510, 1.0 / (vaddvq_f64(xmmword_27E516510) + *&qword_27E516520));
  qword_27E5165D0 = *(&xmmword_27E516510 + 1);
  v2 = sub_240AE21C4(a1);
  v3 = v2;
  if (v2)
  {
    sub_240AC6B0C(v2, 4.3);
    qmemcpy((v3 + 76), "tsba baL baL", 12);
    if (sub_240AE22C0(v3, "L"))
    {
      v4 = sub_240ACADFC(a1, 3u, 3);
      if (v4)
      {
        v5 = v4;
        v6 = sub_240AC904C(a1, 3, 0);
        if (v6)
        {
          v6[1].i32[1] = 1768189472;
          v6[7] = *v5;
          *v5 = v6;
          if (sub_240ACAF44(v5))
          {
            if (sub_240AC7D44(v3, 1093812784, v5, v7, v8, v9, v10, v11))
            {
              sub_240ACB1C0(v5);
              return v3;
            }
          }
        }

        sub_240ACB1C0(v5);
      }
    }

    sub_240AC6C8C(v3);
    return 0;
  }

  return v3;
}

uint64_t sub_240AE24E4(uint64_t *a1)
{
  xmmword_27E5165C0 = vmulq_n_f64(xmmword_27E516510, 1.0 / (vaddvq_f64(xmmword_27E516510) + *&qword_27E516520));
  qword_27E5165D0 = *(&xmmword_27E516510 + 1);
  v2 = sub_240AE21C4(a1);
  v3 = v2;
  if (v2)
  {
    sub_240AC6B0C(v2, 4.3);
    qmemcpy((v3 + 76), "tsba ZYX ZYX", 12);
    if (sub_240AE22C0(v3, "X"))
    {
      v4 = sub_240ACADFC(a1, 3u, 3);
      if (v4)
      {
        v5 = v4;
        v6 = sub_240AC904C(a1, 3, 0);
        if (v6)
        {
          v6[1].i32[1] = 1768189472;
          v6[7] = *v5;
          *v5 = v6;
          if (sub_240ACAF44(v5))
          {
            if (sub_240AC7D44(v3, 1093812784, v5, v7, v8, v9, v10, v11))
            {
              sub_240ACB1C0(v5);
              return v3;
            }
          }
        }

        sub_240ACB1C0(v5);
      }
    }

    sub_240AC6C8C(v3);
    return 0;
  }

  return v3;
}

uint64_t sub_240AE2614(uint64_t result, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v10 = a2 * a2;
  v11 = a2 * a2 * a2;
  if (a2 >= 4000.0 && a2 <= 7000.0)
  {
    v12 = 1000000.0 / v10 * 2.9678 + 1000000000.0 / v11 * -4.607 + 1000.0 / a2 * 0.09911;
    v13 = 0.244063;
LABEL_7:
    v14 = v12 + v13;
    *result = v14;
    *(result + 8) = v14 * 2.87 + v14 * v14 * -3.0 + -0.275;
    *(result + 16) = 0x3FF0000000000000;
    return result;
  }

  if (a2 > 7000.0 && a2 <= 25000.0)
  {
    v12 = 1000000.0 / v10 * 1.9018 + 1000000000.0 / v11 * -2.0064 + 1000.0 / a2 * 0.24748;
    v13 = 0.23704;
    goto LABEL_7;
  }

  return sub_240AC15A4(0, 2, "cmsWhitePointFromTemp: invalid temp", a5, a6, a7, a8, a9);
}

uint64_t sub_240AE2748(uint64_t a1, double *a2, double *a3)
{
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v16[2] = xmmword_240C156A8;
  v16[3] = unk_240C156B8;
  v17 = 0x3FF0793DD97F62B7;
  v16[0] = xmmword_240C15688;
  v16[1] = unk_240C15698;
  result = sub_240ACB590(v16, v19);
  if (result)
  {
    v7 = a2[1];
    v8 = a2[2];
    v9 = a3[1];
    v10 = a3[2];
    v11 = v7 * 0.2664 + *a2 * 0.8951 + v8 * -0.1614;
    v12 = v7 * 1.7135 + *a2 * -0.7502 + v8 * 0.0367;
    v13 = v7 * -0.0685 + *a2 * 0.0389 + v8 * 1.0296;
    v14 = v9 * 1.7135 + *a3 * -0.7502 + v10 * 0.0367;
    v15 = v9 * -0.0685 + *a3 * 0.0389 + v10 * 1.0296;
    v18[0] = (v9 * 0.2664 + *a3 * 0.8951 + v10 * -0.1614) / v11;
    memset(&v18[1], 0, 24);
    v18[4] = v14 / v12;
    memset(&v18[5], 0, 24);
    v18[8] = v15 / v13;
    sub_240ACB4CC(v16, v18, &xmmword_240C15688);
    sub_240ACB4CC(a1, v19, v16);
    return 1;
  }

  return result;
}

double sub_240AE28B0(uint64_t a1, double *a2, double *a3, double *a4)
{
  v14 = 0.0;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  if (sub_240AE2748(&v10, a2, a3))
  {
    v7 = a4[1];
    v8 = a4[2];
    *&v9 = *(&v10 + 1) * v7 + *&v10 * *a4 + *&v11 * v8;
    *(&v9 + 1) = *&v12 * v7 + *(&v11 + 1) * *a4 + *(&v12 + 1) * v8;
    result = *(&v13 + 1) * v7 + *&v13 * *a4 + v14 * v8;
    *a1 = v9;
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_240AE2944(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    sub_240ACB1C0(v2);
  }

  v3 = *(a1 + 112);
  if (v3)
  {
    sub_240ACB1C0(v3);
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    sub_240ACC2E0(v4);
  }

  v5 = *(a1 + 136);
  if (v5)
  {
    sub_240ACC2E0(v5);
  }

  v6 = *(a1 + 200);
  if (v6)
  {
    sub_240ACCB4C(v6);
  }

  if (*(a1 + 240))
  {
    (*(a1 + 248))(*(a1 + 232));
  }

  v7 = *(a1 + 232);
  if (v7)
  {
    v8 = &qword_27E516570;
    while (1)
    {
      v8 = *v8;
      if (!v8)
      {
        break;
      }

      if (v8 == v7)
      {
        goto LABEL_20;
      }
    }

    v8 = &unk_278CB2F00;
  }

  else
  {
    v8 = &unk_278CB2F00;
  }

LABEL_20:
  v9 = v8[6];
  if (!v9)
  {
    v9 = &xmmword_281500C10;
  }

  v10 = *(v9 + 2);

  return v10();
}

double *sub_240AE2A1C(uint64_t *a1, uint64_t a2, uint64_t **a3, uint64_t a4, unsigned int *a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v9 = a1;
  v10 = a9;
  v65 = a8;
  v66 = a7;
  if ((a9 & 0x200) != 0)
  {
    return sub_240AE2F28(a1, 0, 0, &v66, &v65, &a9);
  }

  v11 = a8;
  v16 = a2 - 1;
  if ((a9 & 0x1000) != 0)
  {
    v10 = a9 & 0xFFFFEDFF;
  }

  v17 = (a7 | a8) & 0x400000;
  v18 = v10 | HIWORD(v17);
  if (a9 & 0x1000 | v17)
  {
    a9 = v10 | HIWORD(v17);
  }

  if (!*a3)
  {
LABEL_46:
    v37 = "NULL input profiles on transform";
    v38 = 4;
LABEL_47:
    sub_240AC15A4(a1, v38, v37, a4, a5, a6, a7, a8);
    return 0;
  }

  v19 = 0;
  v20 = *(*a3 + 20);
  v21 = 84;
  if (a2 == 1)
  {
    v21 = 80;
  }

  v22 = *(*a3 + 20);
  do
  {
    v23 = a3[v19];
    v25 = v22 != 1482250784 && v22 != 1281450528;
    if (!v23)
    {
      goto LABEL_46;
    }

    v26 = *(v23 + 19);
    if (v26 == 1852662636)
    {
      v27 = 826494034;
      v28 = v21;
    }

    else if (((v26 != 1818848875) & ~v25) != 0)
    {
      v27 = *(v23 + 21);
      v28 = 80;
    }

    else
    {
      v27 = *(v23 + 20);
      v28 = 84;
    }

    v22 = *(v23 + v28);
    if (!v19)
    {
      v20 = v27;
    }

    ++v19;
  }

  while (a2 != v19);
  v62 = v16;
  v63 = v18;
  v61 = a5[v16];
  v29 = WORD1(a7) & 0x1F;
  v30 = sub_240AD40A4(v20);
  if (v29 && v29 != v30 && (v29 != 30 || v30 != 10))
  {
    v37 = "Wrong input color space on transform";
LABEL_52:
    a1 = v9;
    v38 = 9;
    goto LABEL_47;
  }

  v31 = HIWORD(v11) & 0x1F;
  v32 = sub_240AD40A4(v22);
  if (v31 && v31 != v32 && (v31 != 30 || v32 != 10))
  {
    v37 = "Wrong output color space on transform";
    goto LABEL_52;
  }

  v33 = 0;
  do
  {
    v34 = a5[v33];
    if (v34 == 3)
    {
      *(a4 + 4 * v33) = 0;
      v34 = a5[v33];
    }

    if ((v34 | 2) == 2 && *(a3[v33] + 18) >> 26)
    {
      *(a4 + 4 * v33) = 1;
    }

    ++v33;
  }

  while (a2 != v33);
  if (v9)
  {
    v35 = &qword_27E516570;
    while (1)
    {
      v35 = *v35;
      if (!v35)
      {
        break;
      }

      if (v35 == v9)
      {
        goto LABEL_54;
      }
    }

    v35 = &unk_278CB2F00;
  }

  else
  {
    v35 = &unk_278CB2F00;
  }

LABEL_54:
  v40 = *a5;
  v41 = v35[12];
  if (!v41)
  {
    v41 = &unk_27E516590;
  }

  v42 = *v41;
  if (v42)
  {
    while (*v42 != v40)
    {
      v42 = *(v42 + 34);
      if (!v42)
      {
        goto LABEL_59;
      }
    }
  }

  else
  {
LABEL_59:
    v42 = &dword_2815029E0;
    while (*v42 != v40)
    {
      v42 = *(v42 + 34);
      if (!v42)
      {
        sub_240AC15A4(v9, 8, "Unsupported intent '%d'", a4, a5, a6, a7, a8, *a5);
        goto LABEL_72;
      }
    }
  }

  v43 = (*(v42 + 33))(v9, a2, a5, a3, a4, a6, v63);
  if (!v43)
  {
LABEL_72:
    v37 = "Couldn't link the profiles";
LABEL_74:
    a1 = v9;
    v38 = 13;
    goto LABEL_47;
  }

  v44 = v43;
  if (sub_240AD3DAC(v20) != *(v43 + 8) || sub_240AD3DAC(v22) != *(v44 + 12))
  {
    sub_240ACB1C0(v44);
    v37 = "Channel count doesn't match. Profile is corrupted";
    goto LABEL_74;
  }

  v45 = sub_240AE2F28(v9, v44, v61, &v66, &v65, &a9);
  v36 = v45;
  if (!v45)
  {
    return v36;
  }

  v46 = 1668051572;
  *(v45 + 36) = v20;
  *(v45 + 37) = v22;
  *(v45 + 56) = a5[v62];
  v47 = sub_240AC7924(*a3, 0x77747074u);
  sub_240AE33D8(v36 + 19, v47);
  v48 = sub_240AC7924(a3[v62], 0x77747074u);
  sub_240AE33D8(v36 + 22, v48);
  v49 = *a3;
  v50 = *(*a3 + 33);
  if (v50 >= 1)
  {
    v51 = 136;
    while (*(v49 + v51) != 1668051572)
    {
      v51 += 4;
      if (!--v50)
      {
        goto LABEL_76;
      }
    }

    v52 = sub_240AC7924(v49, 0x636C7274u);
    *(v36 + 16) = sub_240ACC3C8(v52);
  }

LABEL_76:
  v53 = a3[v62];
  v54 = (v53 + 17);
  v55 = *(v53 + 33);
  if (*(v53 + 19) == 1818848875)
  {
    if (v55 >= 1)
    {
      v46 = 1668050804;
      while (1)
      {
        v56 = *v54++;
        if (v56 == 1668050804)
        {
          break;
        }

        if (!--v55)
        {
          goto LABEL_87;
        }
      }

LABEL_86:
      v58 = sub_240AC7924(v53, v46);
      *(v36 + 17) = sub_240ACC3C8(v58);
    }
  }

  else if (v55 >= 1)
  {
    do
    {
      v57 = *v54++;
      if (v57 == 1668051572)
      {
        goto LABEL_86;
      }
    }

    while (--v55);
  }

LABEL_87:
  v59 = a9;
  if ((a9 & 0x80) != 0)
  {
    v60 = sub_240AC8DC4(v9, a2, a3);
    v59 = a9;
  }

  else
  {
    v60 = 0;
  }

  *(v36 + 25) = v60;
  if ((v59 & 0x40) == 0)
  {
    *(v36 + 3) = 0u;
    *(v36 + 4) = 0u;
    if (*(v36 + 15))
    {
      sub_240AE344C(v36, (v36 + 6), (v36 + 10));
    }

    else
    {
      (*(*(v36 + 14) + 24))(v36 + 12, v36 + 20, *(*(v36 + 14) + 16));
    }
  }

  return v36;
}

uint64_t sub_240AE2F28(uint64_t *a1, void *a2, uint64_t a3, unsigned int *a4, unsigned int *a5, _BYTE *a6)
{
  v12 = &qword_27E5165D8;
  if (a1)
  {
    v13 = &qword_27E516570;
    while (1)
    {
      v13 = *v13;
      if (!v13)
      {
        break;
      }

      if (v13 == a1)
      {
        goto LABEL_7;
      }
    }

    v13 = &unk_278CB2F00;
LABEL_7:
    v14 = v13[15];
    if (v14)
    {
      v12 = v14;
    }

    v15 = &qword_27E516570;
    while (1)
    {
      v15 = *v15;
      if (!v15)
      {
        break;
      }

      if (v15 == a1)
      {
        goto LABEL_15;
      }
    }

    v15 = &unk_278CB2F00;
  }

  else
  {
    v15 = &unk_278CB2F00;
  }

LABEL_15:
  v16 = v15[6];
  if (!v16)
  {
    v16 = &xmmword_281500C10;
  }

  v17 = (*(v16 + 1))(a1, 264, 0x10A0040B0F77EABLL);
  v18 = v17;
  if (!v17)
  {
    sub_240ACB1C0(a2);
    return v18;
  }

  *(v17 + 112) = a2;
  v19 = (v17 + 112);
  if (!a2)
  {
LABEL_49:
    v28 = *a4;
    if ((v28 & 0x400000) != 0)
    {
      if ((*(a5 + 2) & 0x40) != 0)
      {
        *(v18 + 32) = sub_240AD08FC(a1, v28, 0, 1);
        v37 = sub_240AD08FC(a1, *a5, 1, 1);
        *(v18 + 40) = v37;
        v38 = *a6;
        *a6 |= 0x2000000u;
        if (*(v18 + 32) && v37)
        {
          if ((v38 & 0x200) != 0)
          {
            v36 = sub_240AE3CF8;
          }

          else
          {
            v36 = sub_240AE3B80;
          }

          goto LABEL_74;
        }

        goto LABEL_65;
      }
    }

    else if (!v28)
    {
      if (!*a5)
      {
        *(v18 + 16) = 0;
        *(v18 + 24) = 0;
        v35 = *a6;
        goto LABEL_69;
      }

      v28 = 0;
    }

    *(v18 + 16) = sub_240AD08FC(a1, v28, 0, 0);
    v29 = sub_240AD08FC(a1, *a5, 1, 0);
    *(v18 + 24) = v29;
    if (*(v18 + 16) && v29)
    {
      v35 = *a6;
      if ((*v18 & 7) == 1)
      {
        if ((v35 & 0x200) == 0)
        {
          goto LABEL_58;
        }

        goto LABEL_70;
      }

LABEL_69:
      v35 |= 0x2000000u;
      *a6 = v35;
      if ((v35 & 0x200) == 0)
      {
LABEL_58:
        if ((v35 & 0x40) != 0)
        {
          if ((v35 & 0x1000) != 0)
          {
            v36 = sub_240AE3954;
          }

          else
          {
            v36 = sub_240AE3830;
          }
        }

        else if ((v35 & 0x1000) != 0)
        {
          v36 = sub_240AE36B4;
        }

        else
        {
          v36 = sub_240AE3534;
        }

        goto LABEL_74;
      }

LABEL_70:
      v36 = sub_240AE3A74;
LABEL_74:
      *(v18 + 8) = v36;
      *v18 = *a4;
      *(v18 + 4) = *a5;
      *(v18 + 208) = *a6;
      *(v18 + 232) = a1;
      *(v18 + 240) = 0;
      return v18;
    }

LABEL_65:
    sub_240AC15A4(a1, 8, "Unsupported raster format", v30, v31, v32, v33, v34);
    sub_240AE2944(v18);
    return 0;
  }

  v20 = *v12;
  if (!*v12)
  {
LABEL_22:
    if (a1)
    {
      v21 = &qword_27E516570;
      while (1)
      {
        v21 = *v21;
        if (!v21)
        {
          break;
        }

        if (v21 == a1)
        {
          goto LABEL_32;
        }
      }

      v21 = &unk_278CB2F00;
    }

    else
    {
      v21 = &unk_278CB2F00;
    }

LABEL_32:
    v22 = v21[14];
    if (v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = &unk_27E516598;
    }

    v24 = *v19;
    if ((*a6 & 2) != 0)
    {
      sub_240ACD190(v24);
      sub_240ACD49C((v18 + 112), a3, a4, a5, a6);
    }

    else if (*v24)
    {
      sub_240ACD190(v24);
      v25 = *v19;
      if (**v19)
      {
        if ((a6[1] & 1) == 0)
        {
          v26 = *v23;
          if (v26)
          {
            while (!(*v26)(v18 + 112, a3, a4, a5, a6))
            {
              v26 = *(v26 + 8);
              if (!v26)
              {
                goto LABEL_42;
              }
            }
          }

          else
          {
LABEL_42:
            v27 = off_281502998;
            do
            {
              if ((*v27)(v18 + 112, a3, a4, a5, a6))
              {
                break;
              }

              v27 = v27[1];
            }

            while (v27);
          }
        }
      }

      else
      {
        v25[5] = 0;
        v25[6] = 0;
        v25[2] = v25;
        v25[3] = sub_240AD083C;
      }
    }

    else
    {
      v24[5] = 0;
      v24[6] = 0;
      v24[2] = v24;
      v24[3] = sub_240AD083C;
    }

    goto LABEL_49;
  }

  while (!(*v20)(v18 + 8, v18 + 240, v18 + 248, v18 + 112, a4, a5, a6))
  {
    v20 = *(v20 + 16);
    if (!v20)
    {
      goto LABEL_22;
    }
  }

  *(v18 + 232) = a1;
  *v18 = *a4;
  *(v18 + 4) = *a5;
  *(v18 + 208) = *a6;
  *(v18 + 16) = sub_240AD08FC(a1, *a4, 0, 0);
  *(v18 + 24) = sub_240AD08FC(a1, *a5, 1, 0);
  *(v18 + 32) = sub_240AD08FC(a1, *a4, 0, 1);
  *(v18 + 40) = sub_240AD08FC(a1, *a5, 1, 1);
  if (*(v20 + 8))
  {
    *(v18 + 256) = *(v18 + 8);
    *(v18 + 8) = sub_240AE3E08;
  }

  return v18;
}

double sub_240AE33D8(double *a1, double *a2)
{
  if (a2)
  {
    result = *a2;
    v3 = a2[1];
    *a1 = *a2;
    a1[1] = v3;
    v4 = a2[2];
    for (a1[2] = v4; result > 2.0; a1[2] = v4)
    {
      if (v3 <= 2.0 || v4 <= 2.0)
      {
        break;
      }

      result = result / 10.0;
      v3 = v3 / 10.0;
      *a1 = result;
      a1[1] = v3;
      v4 = v4 / 10.0;
    }
  }

  else
  {
    result = 0.9642;
    *a1 = xmmword_240C11250;
    a1[2] = 0.8249;
  }

  return result;
}

uint64_t sub_240AE344C(void *a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  result = (*(a1[15] + 24))(a2, &v12, *(a1[15] + 16));
  if (!v12)
  {
    return (*(a1[14] + 24))(a2, a3, *(a1[14] + 16));
  }

  v7 = a1[29];
  if (v7)
  {
    v8 = &qword_27E516570;
    while (1)
    {
      v8 = *v8;
      if (!v8)
      {
        break;
      }

      if (v8 == v7)
      {
        goto LABEL_10;
      }
    }

    v8 = &unk_278CB2F00;
  }

  else
  {
    v8 = &unk_278CB2F00;
  }

LABEL_10:
  v9 = v8[4];
  if (!v9)
  {
    v9 = &unk_27E516530;
  }

  v10 = *(a1[14] + 12);
  if (v10)
  {
    v11 = 0;
    do
    {
      *(a3 + 2 * v11) = v9[v11];
      ++v11;
    }

    while (v10 > v11);
  }

  return result;
}

unsigned int *sub_240AE3534(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int *a6)
{
  v31 = *MEMORY[0x277D85DE8];
  result = sub_240ABD320(a1, a2, a3, a4, a5, a6);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v23 = *(a1 + 48);
  v24 = *(a1 + 64);
  v25 = *(a1 + 80);
  v26 = *(a1 + 96);
  v22 = a5;
  if (a5)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      if (a4)
      {
        v14 = (a3 + v11);
        v15 = a4;
        v16 = a2 + v12;
        do
        {
          v16 = (*(a1 + 16))(a1, &v29, v16, a6[2]);
          if (v29 == v23 && *(&v29 + 1) == *(&v23 + 1) && v30 == v24 && *(&v30 + 1) == *(&v24 + 1))
          {
            v27 = v25;
            v28 = v26;
          }

          else
          {
            (*(*(a1 + 112) + 24))(&v29, &v27, *(*(a1 + 112) + 16));
            v23 = v29;
            v24 = v30;
            v25 = v27;
            v26 = v28;
          }

          result = (*(a1 + 24))(a1, &v27, v14, a6[3]);
          v14 = result;
          --v15;
        }

        while (v15);
      }

      v12 += *a6;
      v11 += a6[1];
      ++v13;
    }

    while (v13 != v22);
  }

  return result;
}

unsigned int *sub_240AE36B4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int *a6)
{
  v31 = *MEMORY[0x277D85DE8];
  result = sub_240ABD320(a1, a2, a3, a4, a5, a6);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v23 = *(a1 + 48);
  v24 = *(a1 + 64);
  v25 = *(a1 + 80);
  v26 = *(a1 + 96);
  v22 = a5;
  if (a5)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      if (a4)
      {
        v14 = (a3 + v11);
        v15 = a4;
        v16 = a2 + v12;
        do
        {
          v16 = (*(a1 + 16))(a1, &v29, v16, a6[2]);
          if (v29 == v23 && *(&v29 + 1) == *(&v23 + 1) && v30 == v24 && *(&v30 + 1) == *(&v24 + 1))
          {
            v27 = v25;
            v28 = v26;
          }

          else
          {
            sub_240AE344C(a1, &v29, &v27);
            v23 = v29;
            v24 = v30;
            v25 = v27;
            v26 = v28;
          }

          result = (*(a1 + 24))(a1, &v27, v14, a6[3]);
          v14 = result;
          --v15;
        }

        while (v15);
      }

      v12 += *a6;
      v11 += a6[1];
      ++v13;
    }

    while (v13 != v22);
  }

  return result;
}

unsigned int *sub_240AE3830(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int *a6)
{
  v21 = *MEMORY[0x277D85DE8];
  result = sub_240ABD320(a1, a2, a3, a4, a5, a6);
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  if (a5)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      if (a4)
      {
        v14 = (a3 + v11);
        v15 = a4;
        v16 = a2 + v12;
        do
        {
          v16 = (*(a1 + 16))(a1, v20, v16, a6[2]);
          (*(*(a1 + 112) + 24))(v20, v19, *(*(a1 + 112) + 16));
          result = (*(a1 + 24))(a1, v19, v14, a6[3]);
          v14 = result;
          --v15;
        }

        while (v15);
      }

      v12 += *a6;
      v11 += a6[1];
      ++v13;
    }

    while (v13 != a5);
  }

  return result;
}

unsigned int *sub_240AE3954(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int *a6)
{
  v21 = *MEMORY[0x277D85DE8];
  result = sub_240ABD320(a1, a2, a3, a4, a5, a6);
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  if (a5)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      if (a4)
      {
        v14 = (a3 + v11);
        v15 = a4;
        v16 = a2 + v12;
        do
        {
          v16 = (*(a1 + 16))(a1, v20, v16, a6[2]);
          sub_240AE344C(a1, v20, v19);
          result = (*(a1 + 24))(a1, v19, v14, a6[3]);
          v14 = result;
          --v15;
        }

        while (v15);
      }

      v12 += *a6;
      v11 += a6[1];
      ++v13;
    }

    while (v13 != a5);
  }

  return result;
}

unsigned int *sub_240AE3A74(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int *a6)
{
  v20 = *MEMORY[0x277D85DE8];
  result = sub_240ABD320(a1, a2, a3, a4, a5, a6);
  memset(v19, 0, sizeof(v19));
  if (a5)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      if (a4)
      {
        v14 = (a3 + v11);
        v15 = a4;
        v16 = a2 + v12;
        do
        {
          v16 = (*(a1 + 16))(a1, v19, v16, a6[2]);
          result = (*(a1 + 24))(a1, v19, v14, a6[3]);
          v14 = result;
          --v15;
        }

        while (v15);
      }

      v12 += *a6;
      v11 += a6[1];
      ++v13;
    }

    while (v13 != a5);
  }

  return result;
}

unsigned int *sub_240AE3B80(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int *a6)
{
  v25 = *MEMORY[0x277D85DE8];
  v22 = 0.0;
  result = sub_240ABD320(a1, a2, a3, a4, a5, a6);
  memset(v24, 0, sizeof(v24));
  memset(__b, 0, sizeof(__b));
  v21 = a5;
  if (a5)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      if (a4)
      {
        v14 = (a3 + v11);
        v15 = a4;
        v16 = a2 + v12;
        do
        {
          v16 = (*(a1 + 32))(a1, v24, v16, a6[2]);
          v18 = *(a1 + 120);
          if (v18 && ((*(v18 + 32))(v24, &v22), v17.n128_f32[0] = v22, v22 > 0.0))
          {
            memset_pattern16(__b, &unk_240C11A50, 0x40uLL);
          }

          else
          {
            (*(*(a1 + 112) + 32))(v24, __b, v17);
          }

          result = (*(a1 + 40))(a1, __b, v14, a6[3]);
          v14 = result;
          --v15;
        }

        while (v15);
      }

      v12 += *a6;
      v11 += a6[1];
      ++v13;
    }

    while (v13 != v21);
  }

  return result;
}

unsigned int *sub_240AE3CF8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int *a6)
{
  v20 = *MEMORY[0x277D85DE8];
  result = sub_240ABD320(a1, a2, a3, a4, a5, a6);
  memset(v19, 0, sizeof(v19));
  if (a5)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      if (a4)
      {
        v14 = (a3 + v11);
        v15 = a4;
        v16 = a2 + v12;
        do
        {
          v16 = (*(a1 + 32))(a1, v19, v16, a6[2]);
          result = (*(a1 + 40))(a1, v19, v14, a6[3]);
          v14 = result;
          --v15;
        }

        while (v15);
      }

      v12 += *a6;
      v11 += a6[1];
      ++v13;
    }

    while (v13 != a5);
  }

  return result;
}

unsigned int *sub_240AE3E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int *a6)
{
  v7 = a5;
  result = sub_240ABD320(a1, a2, a3, a4, a5, a6);
  if (v7)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      result = (*(a1 + 256))(a1, a2 + v13, a3 + v14, a4, a6[2]);
      v13 += *a6;
      v14 += a6[1];
      --v7;
    }

    while (v7);
  }

  return result;
}

double *sub_240AE3E94()
{
  v0 = MEMORY[0x28223BE20]();
  v5 = 0;
  v16 = *MEMORY[0x277D85DE8];
  v12[0] = v6;
  v12[1] = v7;
  if (v7)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  do
  {
    v15[v5] = (v4 >> 13) & 1;
    v14[v5] = v3;
    if (v0)
    {
      v9 = &qword_27E516570;
      while (1)
      {
        v9 = *v9;
        if (!v9)
        {
          break;
        }

        if (v9 == v0)
        {
          goto LABEL_10;
        }
      }
    }

    v9 = &unk_278CB2F00;
LABEL_10:
    v10 = v9[5];
    if (!v10)
    {
      v10 = &unk_27E516528;
    }

    v13[v5++] = *v10;
  }

  while (v5 != v8);
  return sub_240AE2A1C(v0, v8, v12, v15, v14, v13, v1, v2, v4);
}

unint64_t sub_240AE3FA8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    sub_240AE40A8(0, a2, a3, a4, a5, a6, a7, a8, "payload_size != 0");
  }

  if (a1 > 0x7FFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  atomic_fetch_add_explicit(&qword_27E5165E0, 1uLL, memory_order_relaxed);
  result = malloc_type_malloc(a1 + 256, 0xF0EBF2FBuLL);
  if (result)
  {
    v10 = result;
    v11 = result & 0xFFFFFFFFFFFFFF80;
    result = (result & 0xFFFFFFFFFFFFFF80) + 256;
    *(v11 + 240) = v10;
    *(v11 + 248) = a1;
  }

  return result;
}

void sub_240AE402C(uint64_t a1, void (*a2)(uint64_t, void *), uint64_t a3)
{
  sub_240B7BFF4(a1, *(a1 - 8));
  v5 = *(a1 - 16);
  if (a2)
  {

    a2(a3, v5);
  }

  else
  {

    free(v5);
  }
}

void sub_240AE40A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  vsnprintf(__str, 0x320uLL, "Assert %s", va);
  v8 = MEMORY[0x277D85DF8];
  fprintf(*MEMORY[0x277D85DF8], "Abort at %s:%d: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleJPEGXL/third_party/highway/hwy/aligned_allocator.cc", 70, __str);
  fflush(*v8);
  abort();
}

uint64_t sub_240AE411C(uint64_t a1, char *a2, uint64_t a3, void *a4, int a5)
{
  v5 = a3;
  v8 = a4[1];
  v7 = a4[2];
  v9 = (a4[4] + 3 * a5);
  v10 = *(v7 + 2 * *v9);
  v11 = v9[1];
  v12 = *(v7 + 2 * v9[2]);
  v13 = *(v8 + v10);
  if (*(v8 + v10))
  {
    v14 = 0;
    v15 = v10 + v8 + 1;
    do
    {
      *(a1 + v14) = *(v15 + v14);
      ++v14;
    }

    while (v13 != v14);
  }

  else
  {
    v14 = 0;
  }

  if (v11 > 9)
  {
    if ((v11 - 12) <= 8)
    {
      v16 = (v11 - 11);
      a2 += v16;
      v5 = (a3 - v16);
    }
  }

  else
  {
    v5 = (a3 - v11);
  }

  if (v5 >= 1)
  {
    v14 = v14;
    v17 = v5;
    do
    {
      v18 = *a2++;
      *(a1 + v14++) = v18;
      --v17;
    }

    while (v17);
  }

  if (v11 > 20)
  {
    if (v11 == 21)
    {
      sub_240AE439C((a1 - v5 + v14), v5, *(a4[5] + 2 * a5) | (*(a4[5] + 2 * a5 + 1) << 8));
    }

    else if (v11 == 22 && v5 >= 1)
    {
      v23 = *(a4[5] + 2 * a5) | (*(a4[5] + 2 * a5 + 1) << 8);
      v24 = (a1 - v5 + v14);
      do
      {
        v25 = sub_240AE439C(v24, v5, v23);
        v24 += v25;
        v22 = __OFSUB__(v5, v25);
        v5 = (v5 - v25);
      }

      while (!((v5 < 0) ^ v22 | (v5 == 0)));
    }
  }

  else if (v11 == 10)
  {
    v26 = (a1 - v5 + v14);
    v27 = *v26;
    if (v27 > 0xBF)
    {
      if (v27 > 0xDF)
      {
        v26[2] ^= 5u;
      }

      else
      {
        v26[1] ^= 0x20u;
      }
    }

    else if (v27 - 97 <= 0x19)
    {
      *v26 = v27 & 0x5F;
    }
  }

  else if (v11 == 11 && v5 >= 1)
  {
    v19 = (a1 - v5 + v14);
    do
    {
      v20 = *v19;
      if (v20 > 0xBF)
      {
        if (v20 > 0xDF)
        {
          v19[2] ^= 5u;
          v21 = 3;
        }

        else
        {
          v19[1] ^= 0x20u;
          v21 = 2;
        }
      }

      else
      {
        if (v20 - 97 <= 0x19)
        {
          *v19 = v20 & 0x5F;
        }

        v21 = 1;
      }

      v19 += v21;
      v22 = __OFSUB__(v5, v21);
      LODWORD(v5) = v5 - v21;
    }

    while (!((v5 < 0) ^ v22 | (v5 == 0)));
  }

  v28 = *(v8 + v12);
  if (*(v8 + v12))
  {
    v14 = v14;
    v29 = (v12 + v8 + 1);
    do
    {
      v30 = *v29++;
      *(a1 + v14++) = v30;
      --v28;
    }

    while (v28);
  }

  return v14;
}

uint64_t sub_240AE439C(char *a1, uint64_t a2, __int16 a3)
{
  v3 = *a1;
  if ((*a1 & 0x80000000) == 0)
  {
    *a1 = (v3 + a3) & 0x7F;
    return 1;
  }

  if (v3 < 0xC0)
  {
    return 1;
  }

  v5 = (a3 & 0x7FFF) - (a3 & 0x8000) + 0x1000000;
  if (v3 <= 0xDF)
  {
    if (a2 >= 2)
    {
      v6 = a1[1];
      v7 = (v6 & 0x3F | ((v3 & 0x1F) << 6)) + v5;
      *a1 = (v7 >> 6) & 0x1F | 0xC0;
      a1[1] = v6 & 0xC0 | v7 & 0x3F;
      return 2;
    }

    return 1;
  }

  if (v3 > 0xEF)
  {
    if (v3 > 0xF7)
    {
      return 1;
    }

    if (a2 >= 4)
    {
      v11 = a1[3];
      v12 = a1[2];
      v13 = a1[1];
      v14 = ((v3 & 7) << 18) + v5 + (v11 & 0x3F);
      v15 = v14 + ((v12 & 0x3F) << 6);
      v16 = v15 + ((v13 & 0x3F) << 12);
      *a1 = (v16 >> 18) & 7 | 0xF0;
      a1[1] = v13 & 0xC0 | (v16 >> 12) & 0x3F;
      a1[2] = v12 & 0xC0 | (v15 >> 6) & 0x3F;
      a1[3] = v11 & 0xC0 | v14 & 0x3F;
      return 4;
    }
  }

  else if (a2 >= 3)
  {
    v8 = a1[2];
    v9 = a1[1];
    v10 = ((v3 & 0xF) << 12) + v5 + (v8 & 0x3F);
    *a1 = ((v10 + ((v9 & 0x3F) << 6)) >> 12) | 0xE0;
    a1[1] = v9 & 0xC0 | ((v10 + ((v9 & 0x3Fu) << 6)) >> 6) & 0x3F;
    a1[2] = v8 & 0xC0 | v10 & 0x3F;
    return 3;
  }

  return a2;
}

void *sub_240AE44D8(void *result, char *a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void *a7, int32x4_t *a8, double d0_0, int32x4_t q1_0, double d2_0, double d3_0, double a13, int32x4_t a14, unint64_t *a9, char *a10, void *a11, void *a12)
{
  v18 = *(a6 + 40);
  if (*(a6 + 96))
  {
    if (v18 <= 39)
    {
      if (v18 > 4)
      {
        if (v18 == 5)
        {
          return sub_240AE46F0(result, a2, a3, a4, a5, a6, a7, a8->i32, a9, a10, a11, a12);
        }

        if (v18 == 6)
        {
          return sub_240AE6100(result, a2, a3, a4, a5, a6, a7, a8->i32, a9, a10, a11, a12);
        }

LABEL_29:
        if (v18 == 35)
        {
          return sub_240AF8BD4(result, a2, a3, a4, a6, a7, a8->i32, a9, a10, a11, a12);
        }

        return result;
      }

LABEL_9:
      switch(v18)
      {
        case 2:
          return sub_240AEFDD8(result, a2, a3, a4, a5, a6, a7, a8->i32, a9, a10, a11, a12);
        case 3:
          return sub_240AF0BEC(result, a2, a3, a4, a6, a7, a8->i32, a9, a10, a11, a12);
        case 4:
          return sub_240AF1664(result, a2, a3, a4, a5, a6, a7, a8->i32, a9, a10, a11, a12);
      }

      return result;
    }

    if (v18 <= 53)
    {
      switch(v18)
      {
        case '(':
          return sub_240AE7B6C(result, a2, a3, a4, a5, a6, a7, a8->i32, a9, a10, a11, a12);
        case ')':
          return sub_240AE9550(result, a2, a3, a4, a5, a6, a7, a8->i32, a9, a10, a11, a12);
        case '*':
          return sub_240AEAF78(result, a2, a3, a4, a5, a6, a7, a8, d0_0, q1_0, d2_0, d3_0, a13, a14, a9, a10, a11, a12);
      }

      return result;
    }

    if (v18 != 54)
    {
      if (v18 == 55)
      {
        return sub_240AEC9E8(result, a2, a3, a4, a6, a7, a8->i32, a9, a10, a11, a12);
      }

      if (v18 == 65)
      {
        return sub_240AEE05C(result, a2, a3, a4, a5, a6, a7, a8->i32, a9, a10, a11, a12);
      }

      return result;
    }

    return sub_240AF812C(result, a2, a3, a4, a6, a7, a8->i32, a9, a10, a11, a12);
  }

  if (v18 <= 39)
  {
    if (v18 > 4)
    {
      if (v18 == 5)
      {
        return sub_240AF257C(result, a2, a3, a4, a5, a6, a7, a8->i32, a9, a10, a11, a12);
      }

      if (v18 == 6)
      {
        return sub_240AF3840(result, a2, a3, a4, a5, a6, a7, a8->i32, a9, a10, a11, a12);
      }

      goto LABEL_29;
    }

    goto LABEL_9;
  }

  if (v18 > 53)
  {
    switch(v18)
    {
      case '6':
        return sub_240AF812C(result, a2, a3, a4, a6, a7, a8->i32, a9, a10, a11, a12);
      case '7':
        return sub_240AF995C(result, a2, a3, a4, a6, a7, a8->i32, a9, a10, a11, a12);
      case 'A':
        return sub_240AFA70C(result, a2, a3, a4, a5, a6, a7, a8->i32, a9, a10, a11, a12);
    }
  }

  else
  {
    switch(v18)
    {
      case '(':
        return sub_240AF4AB0(result, a2, a3, a4, a5, a6, a7, a8->i32, a9, a10, a11, a12);
      case ')':
        return sub_240AF5C74(result, a2, a3, a4, a5, a6, a7, a8->i32, a9, a10, a11, a12);
      case '*':
        return sub_240AF6E54(result, a2, a3, a4, a5, a6, a7, a8->i32, d0_0, q1_0, d2_0, d3_0, a13, a14, a9, a10, a11, a12);
    }
  }

  return result;
}

unint64_t sub_240AE46F0(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int *a8, unint64_t *a9, uint64_t a10, void *a11, void *a12)
{
  v12 = a4;
  v13 = *a9;
  v360 = *(a6 + 16);
  v361 = a2 + result;
  v341 = a2 + result - 3;
  if (result <= 3)
  {
    v14 = a2;
  }

  else
  {
    v14 = a2 + result - 3;
  }

  v15 = *(a6 + 8);
  v16 = 512;
  if (*(a6 + 4) < 9)
  {
    v16 = 64;
  }

  v346 = v16;
  v344 = v14;
  v345 = *(a6 + 104);
  v17 = *(a7 + 108);
  if (v17 >= 5)
  {
    v18 = vld1q_dup_f32(a8);
    *(a8 + 1) = vaddq_s32(v18, xmmword_240C11260);
    *(a8 + 4) = vadd_s32(*v18.i8, 0x3FFFFFFFDLL);
    if (v17 >= 0xB)
    {
      v19 = (a8 + 1);
      v20 = vld1q_dup_f32(v19);
      *(a8 + 10) = vaddq_s32(v20, xmmword_240C11260);
      *(a8 + 7) = vadd_s32(*v20.i8, 0x3FFFFFFFDLL);
    }
  }

  if (result >= 5)
  {
    v21 = v16 + a2;
    v359 = (1 << v15) - 16;
    v350 = a6 + 637;
    v349 = a5 + 256;
    v358 = a6 + 704;
    v348 = v345 + 1;
    v384 = a6 + 112;
    v383 = a6 + 368;
    v342 = 4 * v16;
    v343 = a2 + result - 1;
    v22 = a10;
    result = a3;
    v362 = *(a7 + 128);
    v363 = a6;
    v372 = *(a7 + 120);
    while (1)
    {
      if (a2 >= v359)
      {
        v23 = v359;
      }

      else
      {
        v23 = a2;
      }

      v24 = a2 + v360;
      if (a2 + v360 >= v359)
      {
        v24 = v359;
      }

      v378 = v24;
      if (!*(a6 + 632))
      {
        v27 = 0;
        v364 = 0;
        goto LABEL_24;
      }

      if (!a2)
      {
        break;
      }

      v25 = *(result + ((a2 - 1) & v12));
      if (a2 == 1)
      {
        goto LABEL_22;
      }

      v26 = *(result + ((a2 - 2) & v12));
LABEL_23:
      v364 = v25;
      v27 = *(v350 + (*(v349 + v26) | *(a5 + v25)));
LABEL_24:
      v377 = v21;
      v347 = v22;
      v371 = v13;
      v366 = v27;
      v28 = *(v358 + 8 * v27);
      v29 = v361 - a2;
      v373 = a2;
      v30 = a2 & v12;
      v31 = *(a7 + 108);
      v389 = *(a6 + 80);
      v32 = (v361 - a2) >> 3;
      v381 = a2 & v12;
      if (v31)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v37 = (result + v30);
        v38 = result + v30 + (v29 & 0xFFFFFFFFFFFFFFF8);
        v39 = 2020;
        v40 = 2020;
        do
        {
          v41 = a8[v34];
          v42 = v373 - v41;
          v43 = v23 < v41 || v42 >= v373;
          v44 = v42 & v12;
          v45 = v33 + v381;
          v46 = v43 || v45 > v12;
          v47 = v44 + v33;
          v48 = v46 || v47 > v12;
          if (!v48 && *(a3 + v45) == *(a3 + v47))
          {
            v49 = a3 + v44;
            if (v29 < 8)
            {
              v54 = 0;
              v55 = v37;
LABEL_56:
              if ((v29 & 7) != 0)
              {
                v57 = v29 & 7 | v54;
                v58 = v29 & 7;
                while (*(v49 + v54) == *v55)
                {
                  ++v55;
                  ++v54;
                  if (!--v58)
                  {
                    v54 = v57;
                    break;
                  }
                }
              }
            }

            else
            {
              v50 = 0;
              v51 = v32;
              while (1)
              {
                v52 = *&v37[v50];
                v53 = *(v49 + v50);
                if (v52 != v53)
                {
                  break;
                }

                v50 += 8;
                if (!--v51)
                {
                  v54 = v29 & 0xFFFFFFFFFFFFFFF8;
                  v55 = v38;
                  goto LABEL_56;
                }
              }

              v54 = v50 + (__clz(__rbit64(v53 ^ v52)) >> 3);
            }

            if (v54 > 2 || v34 <= 1 && v54 == 2)
            {
              v56 = 135 * v54 + 1935;
              if (v39 < v56)
              {
                if (v34)
                {
                  v56 -= ((0x1CA10u >> (v34 & 0xE)) & 0xE) + 39;
                }

                if (v39 < v56)
                {
                  v36 = a8[v34];
                  v40 = v56;
                  v35 = v54;
                  v33 = v54;
                  v39 = v56;
                }
              }
            }
          }

          ++v34;
        }

        while (v34 != v31);
      }

      else
      {
        v36 = 0;
        v35 = 0;
        v33 = 0;
        v40 = 2020;
        v39 = 2020;
      }

      v59 = (a3 + v381);
      v60 = *(a7 + 100);
      v61 = (506832829 * *(a3 + v381)) >> *(a7 + 96);
      v62 = v362 + 4 * (v61 << *(a7 + 104));
      v63 = *(v372 + 2 * v61);
      v357 = *(a7 + 88);
      v64 = v63 - v357;
      if (v63 < v357)
      {
        v64 = 0;
      }

      if (v64 < v63)
      {
        v65 = *(v372 + 2 * v61);
        do
        {
          v66 = *(v62 + 4 * (--v65 & v60));
          v67 = v373 - v66;
          if (v373 - v66 > v23)
          {
            break;
          }

          if (v33 + v381 <= v12)
          {
            v68 = v66 & v12;
            if (v68 + v33 <= v12 && *(a3 + v33 + v381) == *(a3 + v68 + v33))
            {
              v69 = a3 + v68;
              if (v29 < 8)
              {
                v74 = 0;
                v75 = (a3 + v381);
LABEL_82:
                if ((v29 & 7) != 0)
                {
                  v77 = v29 & 7 | v74;
                  v78 = v29 & 7;
                  while (*(v69 + v74) == *v75)
                  {
                    ++v75;
                    ++v74;
                    if (!--v78)
                    {
                      v74 = v77;
                      break;
                    }
                  }
                }

                v12 = a4;
              }

              else
              {
                v70 = 0;
                v71 = v32;
                while (1)
                {
                  v72 = *&v59[v70];
                  v73 = *(v69 + v70 * 4);
                  if (v72 != v73)
                  {
                    break;
                  }

                  v70 += 2;
                  if (!--v71)
                  {
                    v74 = v29 & 0xFFFFFFFFFFFFFFF8;
                    v75 = v59 + (v29 & 0xFFFFFFFFFFFFFFF8);
                    goto LABEL_82;
                  }
                }

                v74 = v70 * 4 + (__clz(__rbit64(v73 ^ v72)) >> 3);
              }

              if (v74 >= 4)
              {
                v76 = __clz(v67) ^ 0x1F;
                if (v39 < 135 * v74 - 30 * v76 + 1920)
                {
                  v36 = v67;
                  v40 = 135 * v74 - 30 * v76 + 1920;
                  v35 = v74;
                  v33 = v74;
                  v39 = v40;
                }
              }
            }
          }
        }

        while (v65 > v64);
      }

      *(v62 + 4 * (v60 & v63)) = v373;
      *(v372 + 2 * v61) = v63 + 1;
      if (v40 == 2020)
      {
        v79 = *(a7 + 112);
        v81 = *(v79 + 40);
        v80 = *(v79 + 48);
        if (v80 >= v81 >> 7)
        {
          v387 = 0;
          v282 = ((506832829 * *v59) >> 17) & 0x7FFE;
          v283 = *(v28 + 32);
          v284 = v348 + v378;
          v285 = 1;
          v286 = v35;
          v40 = 2020;
          v287 = v36;
          do
          {
            v288 = v285;
            *(v79 + 40) = ++v81;
            v289 = *(v283 + v282);
            if (!*(v283 + v282) || v29 < v289)
            {
              goto LABEL_409;
            }

            v291 = *(*v28 + 4 * v289 + 32);
            v292 = *(*v28 + 168) + *(*(v28 + 24) + 2 * v282) * *(v283 + v282);
            v293 = (v292 + v291);
            if (v289 < 8)
            {
              v35 = 0;
LABEL_424:
              v300 = v289 & 7;
              if ((v289 & 7) != 0)
              {
                v301 = v35 | v300;
                while (*(v59 + v35) == *v293)
                {
                  ++v293;
                  ++v35;
                  if (!--v300)
                  {
                    v35 = v301;
                    break;
                  }
                }
              }
            }

            else
            {
              v294 = 0;
              v35 = v289 & 0xF8;
              v295 = (v292 + v35 + v291);
              while (1)
              {
                v296 = *&v293[v294];
                v297 = *&v59[v294 / 4];
                if (v296 != v297)
                {
                  break;
                }

                v294 += 8;
                if (v35 == v294)
                {
                  v293 = v295;
                  goto LABEL_424;
                }
              }

              v35 = v294 + (__clz(__rbit64(v297 ^ v296)) >> 3);
            }

            if (v35 && v35 + *(v28 + 12) > v289 && (v290 = *(*(v28 + 24) + 2 * v282), v298 = v284 + v290 + ((((*(v28 + 16) >> (6 * (v289 - v35))) & 0x3FLL) + 4 * (v289 - v35)) << *(*v28 + v289)), v298 <= v389) && (v36 = v284 + v290 + ((((*(v28 + 16) >> (6 * (v289 - v35))) & 0x3FLL) + 4 * (v289 - v35)) << *(*v28 + v289)), v299 = __clz(v298) ^ 0x1F, 135 * v35 - 30 * v299 + 1920 >= v40))
            {
              v387 = v289 - v35;
              *(v79 + 48) = ++v80;
              v40 = 135 * v35 - 30 * v299 + 1920;
            }

            else
            {
LABEL_409:
              v36 = v287;
              v35 = v286;
            }

            v285 = 0;
            ++v282;
            v286 = v35;
            v287 = v36;
          }

          while ((v288 & 1) != 0);
        }

        else
        {
          v387 = 0;
          v40 = 2020;
        }
      }

      else
      {
        v387 = 0;
      }

      v386 = v36;
      v385 = *(v363 + 96);
      v380 = *(v363 + 104);
      if (v385)
      {
        v82 = 0;
        v83 = *(v363 + 104) + v378;
        do
        {
          v84 = *(v384 + 8 * v82);
          v85 = *(v84 + 16);
          v86 = *(v84 + 20);
          v87 = v84 + 24 + 4 * (1 << v86);
          v88 = v87 + 2 * (1 << v85);
          v89 = (v88 + 4 * *(v84 + 4));
          if (*v84 != -558043680)
          {
            v89 = *v89;
          }

          v90 = 0;
          v91 = *(v383 + 8 * v82);
          v92 = v83 - v91;
          v93 = *(v84 + 8);
          v94 = (0x1FE35A7BD3579BD3 * (*v59 & (0xFFFFFFFFFFFFFFFFLL >> -*(v84 + 12)))) >> -v85;
          v95 = v83 - v91 - v93;
          v96 = (0xFFFFFFFF >> -v86) & v94;
          v97 = *(v87 + 2 * v94);
          v98 = (v88 + 4 * (*(v84 + 24 + 4 * v96) + v97));
          v99 = v89 + v83 - v91;
          v100 = v35;
          v101 = v40;
          do
          {
            v102 = a8[v90];
            if (v95 < v102 && v92 >= v102)
            {
              if (v93 - (v92 - v102) >= v29)
              {
                v104 = v29;
              }

              else
              {
                v104 = v93 - (v92 - v102);
              }

              if (v104 < 8)
              {
                v106 = 0;
                v107 = (a3 + v381);
LABEL_130:
                v115 = v104 & 7;
                if (v115)
                {
                  v116 = v106 | v115;
                  v117 = &v99[v106 - v102];
                  while (1)
                  {
                    v118 = *v117++;
                    if (v118 != *v107)
                    {
                      break;
                    }

                    ++v107;
                    ++v106;
                    if (!--v115)
                    {
                      v106 = v116;
                      break;
                    }
                  }
                }
              }

              else
              {
                v105 = 0;
                v106 = v104 & 0xFFFFFFFFFFFFFFF8;
                v107 = v59 + (v104 & 0xFFFFFFFFFFFFFFF8);
                v108 = -(v104 >> 3);
                while (1)
                {
                  v109 = *&v59[v105];
                  v110 = *(v89 + v92 - v102 + v105 * 4);
                  if (v109 != v110)
                  {
                    break;
                  }

                  v105 += 2;
                  v43 = __CFADD__(v108++, 1);
                  if (v43)
                  {
                    goto LABEL_130;
                  }
                }

                v106 = v105 * 4 + (__clz(__rbit64(v110 ^ v109)) >> 3);
              }

              if (v106 >= 2)
              {
                v111 = 135 * v106 + 1935;
                if (v40 < v111)
                {
                  if (v90)
                  {
                    v111 -= ((0x1CA10u >> (v90 & 2)) & 4) + 39;
                  }

                  if (v106 <= v35)
                  {
                    v112 = v35;
                  }

                  else
                  {
                    v112 = v106;
                  }

                  v113 = v386;
                  if (v40 < v111)
                  {
                    v113 = a8[v90];
                  }

                  v386 = v113;
                  if (v40 < v111)
                  {
                    v101 = v111;
                  }

                  v114 = v387;
                  if (v40 < v111)
                  {
                    v114 = 0;
                  }

                  v387 = v114;
                  if (v40 < v111)
                  {
                    v100 = v106;
                    v35 = v112;
                    v40 = v111;
                  }
                }
              }
            }

            ++v90;
          }

          while (v90 != 4);
          v119 = v381;
          if (v97 != 0xFFFF)
          {
            do
            {
              v121 = *v98++;
              v120 = v121;
              v122 = v121 & 0x7FFFFFFF;
              v123 = v92 - v122;
              if (v93 - v122 >= v29)
              {
                v124 = v29;
              }

              else
              {
                v124 = v93 - v122;
              }

              v125 = v35 + v119;
              v127 = v123 > v389 || v125 > v12 || v35 >= v124;
              if (!v127 && *(a3 + v125) == *(v89 + v35 + v122))
              {
                v128 = v89 + v122;
                if (v124 < 8)
                {
                  v130 = 0;
                  v131 = (a3 + v381);
LABEL_179:
                  v143 = v124 & 7;
                  if ((v124 & 7) != 0)
                  {
                    v144 = v130 | v143;
                    while (v128[v130] == *v131)
                    {
                      ++v131;
                      ++v130;
                      if (!--v143)
                      {
                        v130 = v144;
                        break;
                      }
                    }
                  }
                }

                else
                {
                  v129 = 0;
                  v130 = v124 & 0xFFFFFFFFFFFFFFF8;
                  v131 = v59 + (v124 & 0xFFFFFFFFFFFFFFF8);
                  v132 = -(v124 >> 3);
                  while (1)
                  {
                    v133 = *&v59[v129];
                    v134 = *&v128[v129 * 4];
                    if (v133 != v134)
                    {
                      break;
                    }

                    v129 += 2;
                    v43 = __CFADD__(v132++, 1);
                    if (v43)
                    {
                      goto LABEL_179;
                    }
                  }

                  v130 = v129 * 4 + (__clz(__rbit64(v134 ^ v133)) >> 3);
                }

                v135 = __clz(v123) ^ 0x1F;
                v136 = 135 * v130 - 30 * v135 + 1920;
                v137 = v386;
                if (v40 < v136)
                {
                  v138 = 135 * v130 - 30 * v135 + 1920;
                }

                else
                {
                  v123 = v386;
                  v138 = v101;
                }

                v139 = v387;
                if (v40 < v136)
                {
                  v140 = 0;
                }

                else
                {
                  v140 = v387;
                }

                if (v40 < v136)
                {
                  v141 = v130;
                }

                else
                {
                  v141 = v100;
                }

                if (v40 < v136)
                {
                  v142 = v130;
                }

                else
                {
                  v142 = v35;
                }

                if (v40 >= v136)
                {
                  v136 = v40;
                }

                if (v130 >= 4)
                {
                  v137 = v123;
                }

                v386 = v137;
                if (v130 >= 4)
                {
                  v101 = v138;
                  v139 = v140;
                }

                v387 = v139;
                if (v130 >= 4)
                {
                  v100 = v141;
                  v35 = v142;
                  v40 = v136;
                }

                v119 = v381;
              }
            }

            while ((v120 & 0x80000000) == 0);
          }

          ++v82;
          v35 = v100;
          v145 = v101;
          v40 = v101;
        }

        while (v82 != v385);
      }

      else
      {
        v145 = v40;
        v100 = v35;
      }

      if (v145 < 0x7E5)
      {
        v13 = v371 + 1;
        v274 = v373 + 1;
        v21 = v377;
        result = a3;
        v22 = v347;
        if (v373 + 1 <= v377)
        {
          a6 = v363;
        }

        else if (v274 <= v377 + v342)
        {
          v302 = v373 + 9;
          if (v373 + 9 >= v341)
          {
            v302 = v341;
          }

          a6 = v363;
          if (v274 < v302)
          {
            v303 = *(a7 + 96);
            v304 = *(a7 + 100);
            v305 = *(a7 + 104);
            do
            {
              v306 = (506832829 * *(a3 + (v274 & v12))) >> v303;
              v307 = *(v372 + 2 * v306);
              *(v362 + 4 * (v304 & v307) + 4 * (v306 << v305)) = v274;
              *(v372 + 2 * v306) = v307 + 1;
              v13 += 2;
              v274 += 2;
            }

            while (v274 < v302);
          }
        }

        else
        {
          v275 = v373 + 17;
          if (v373 + 17 >= v361 - 4)
          {
            v275 = v361 - 4;
          }

          a6 = v363;
          if (v274 < v275)
          {
            v276 = *(a7 + 96);
            v277 = *(a7 + 100);
            v278 = *(a7 + 104);
            do
            {
              v279 = (506832829 * *(a3 + (v274 & v12))) >> v276;
              v280 = *(v372 + 2 * v279);
              *(v362 + 4 * (v277 & v280) + 4 * (v279 << v278)) = v274;
              *(v372 + 2 * v279) = v280 + 1;
              v13 += 4;
              v274 += 4;
            }

            while (v274 < v275);
          }
        }

        goto LABEL_492;
      }

      v146 = 0;
      v147 = *(a7 + 108);
      v148 = v373;
      v149 = v343 - v373;
      v150 = v360 + 1 + v373;
      v355 = *(a7 + 96);
      v356 = *(a7 + 104);
      v354 = *(a7 + 100);
      result = a3;
      v352 = v147;
      while (1)
      {
        v369 = v146;
        if (v150 >= v359)
        {
          v151 = v359;
        }

        else
        {
          v151 = v150;
        }

        v382 = v151;
        --v29;
        v152 = v100 - 1;
        if (v100 - 1 >= v29)
        {
          v152 = v29;
        }

        if (*(v363 + 4) >= 5)
        {
          v153 = 0;
        }

        else
        {
          v153 = v152;
        }

        v154 = v148 + 1;
        if (v148 + 1 < v359)
        {
          v155 = v148 + 1;
        }

        else
        {
          v155 = v359;
        }

        v156 = v154 + v360;
        if (v154 + v360 >= v359)
        {
          v156 = v359;
        }

        v368 = v156;
        if (*(v363 + 632))
        {
          v157 = *(v350 + (*(v349 + v364) | *(a5 + *(result + (v148 & v12)))));
          v364 = *(result + (v148 & v12));
        }

        else
        {
          v157 = v366;
        }

        v366 = v157;
        v367 = v150;
        v370 = v145;
        v353 = v100;
        v374 = v148;
        v158 = *(v358 + 8 * v157);
        v159 = v154 & v12;
        if (v147)
        {
          v160 = 0;
          v161 = 0;
          v162 = 0;
          v163 = (result + v159);
          v164 = 2020;
          v165 = 2020;
          do
          {
            v166 = a8[v160];
            v167 = v154 - v166;
            v168 = v155 < v166 || v167 >= v154;
            v169 = v167 & v12;
            v170 = v153 + v159;
            v171 = v168 || v170 > v12;
            v172 = v169 + v153;
            v173 = v171 || v172 > v12;
            if (!v173 && *(a3 + v170) == *(a3 + v172))
            {
              v174 = a3 + v169;
              if (v29 < 8)
              {
                v175 = 0;
                v177 = v163;
LABEL_237:
                if ((v29 & 7) != 0)
                {
                  v180 = v29 & 7;
                  do
                  {
                    if (*(v174 + v175) != *v177)
                    {
                      break;
                    }

                    v177 = (v177 + 1);
                    ++v175;
                    --v180;
                  }

                  while (v180);
                }
              }

              else
              {
                v175 = 0;
                v176 = v29 >> 3;
                v177 = v163;
                while (1)
                {
                  v178 = *(v174 + v175);
                  if (*v177 != v178)
                  {
                    break;
                  }

                  ++v177;
                  v175 += 8;
                  if (!--v176)
                  {
                    goto LABEL_237;
                  }
                }

                v175 += __clz(__rbit64(v178 ^ *v177)) >> 3;
              }

              if (v175 > 2 || v160 <= 1 && v175 == 2)
              {
                v179 = 135 * v175 + 1935;
                if (v164 < v179)
                {
                  if (v160)
                  {
                    v179 -= ((0x1CA10u >> (v160 & 0xE)) & 0xE) + 39;
                  }

                  if (v164 < v179)
                  {
                    v162 = v175;
                    v161 = a8[v160];
                    v165 = v179;
                    v153 = v175;
                    v164 = v179;
                  }
                }
              }
            }

            ++v160;
          }

          while (v160 != v147);
        }

        else
        {
          v162 = 0;
          v161 = 0;
          v165 = 2020;
          v164 = 2020;
        }

        v375 = v154;
        v181 = (a3 + v159);
        v182 = (506832829 * *(a3 + v159)) >> v355;
        v183 = v362 + 4 * (v182 << v356);
        v184 = *(v372 + 2 * v182);
        v185 = v184 - v357;
        if (v184 < v357)
        {
          v185 = 0;
        }

        if (v185 < v184)
        {
          v186 = *(v372 + 2 * v182);
          do
          {
            v187 = *(v183 + 4 * (--v186 & *(a7 + 100)));
            v188 = v375 - v187;
            if (v375 - v187 > v155)
            {
              break;
            }

            if (v153 + v159 <= v12)
            {
              v189 = v187 & v12;
              if (v189 + v153 <= v12 && *(a3 + v153 + v159) == *(a3 + v189 + v153))
              {
                v190 = a3 + v189;
                if (v29 < 8)
                {
                  v191 = 0;
                  v193 = (a3 + v159);
LABEL_263:
                  if ((v29 & 7) != 0)
                  {
                    v196 = v29 & 7;
                    do
                    {
                      if (*(v190 + v191) != *v193)
                      {
                        break;
                      }

                      v193 = (v193 + 1);
                      ++v191;
                      --v196;
                    }

                    while (v196);
                  }
                }

                else
                {
                  v191 = 0;
                  v192 = v29 >> 3;
                  v193 = (a3 + v159);
                  while (1)
                  {
                    v194 = *(v190 + v191);
                    if (*v193 != v194)
                    {
                      break;
                    }

                    ++v193;
                    v191 += 8;
                    if (!--v192)
                    {
                      goto LABEL_263;
                    }
                  }

                  v191 += __clz(__rbit64(v194 ^ *v193)) >> 3;
                }

                if (v191 >= 4)
                {
                  v195 = __clz(v188) ^ 0x1F;
                  if (v164 < 135 * v191 - 30 * v195 + 1920)
                  {
                    v162 = v191;
                    v161 = v188;
                    v165 = 135 * v191 - 30 * v195 + 1920;
                    v153 = v191;
                    v164 = v165;
                  }
                }
              }
            }
          }

          while (v186 > v185);
        }

        *(v183 + 4 * (v354 & v184)) = v375;
        *(v372 + 2 * v182) = v184 + 1;
        if (v165 == 2020)
        {
          v197 = *(a7 + 112);
          v199 = *(v197 + 40);
          v198 = *(v197 + 48);
          if (v198 >= v199 >> 7)
          {
            v200 = 0;
            v257 = ((506832829 * *v181) >> 17) & 0x7FFE;
            v258 = *(v158 + 32);
            v259 = 1;
            v165 = 2020;
            v260 = v161;
            v261 = v162;
            do
            {
              v262 = v259;
              *(v197 + 40) = ++v199;
              v263 = *(v258 + v257);
              if (!*(v258 + v257) || v29 < v263)
              {
                goto LABEL_375;
              }

              v264 = *(*v158 + 4 * v263 + 32);
              v265 = *(*v158 + 168) + *(*(v158 + 24) + 2 * v257) * *(v258 + v257);
              v266 = (v265 + v264);
              if (v263 < 8)
              {
                v162 = 0;
LABEL_390:
                v272 = v263 & 7;
                if ((v263 & 7) != 0)
                {
                  v273 = v162 | v272;
                  while (*(v181 + v162) == *v266)
                  {
                    ++v266;
                    ++v162;
                    if (!--v272)
                    {
                      v162 = v273;
                      break;
                    }
                  }
                }
              }

              else
              {
                v267 = 0;
                v162 = v263 & 0xF8;
                v268 = (v265 + v162 + v264);
                while (1)
                {
                  v269 = *&v266[v267];
                  v270 = *&v181[v267 / 4];
                  if (v269 != v270)
                  {
                    break;
                  }

                  v267 += 8;
                  if (v162 == v267)
                  {
                    v266 = v268;
                    goto LABEL_390;
                  }
                }

                v162 = v267 + (__clz(__rbit64(v270 ^ v269)) >> 3);
              }

              if (v162 && v162 + *(v158 + 12) > v263 && (v161 = v348 + v368 + *(*(v158 + 24) + 2 * v257) + ((((*(v158 + 16) >> (6 * (v263 - v162))) & 0x3FLL) + 4 * (v263 - v162)) << *(*v158 + v263)), v161 <= v389) && (v271 = __clz(v161) ^ 0x1F, 135 * v162 - 30 * v271 + 1920 >= v165))
              {
                v200 = v263 - v162;
                *(v197 + 48) = ++v198;
                v165 = 135 * v162 - 30 * v271 + 1920;
              }

              else
              {
LABEL_375:
                v162 = v261;
                v161 = v260;
              }

              v259 = 0;
              ++v257;
              v260 = v161;
              v261 = v162;
            }

            while ((v262 & 1) != 0);
          }

          else
          {
            v200 = 0;
            v165 = 2020;
          }
        }

        else
        {
          v200 = 0;
        }

        if (v385)
        {
          v201 = 0;
          v379 = v368 + v380;
          do
          {
            v202 = *(v384 + 8 * v201);
            v204 = *(v202 + 16);
            v203 = *(v202 + 20);
            v205 = v202 + 24;
            v206 = v202 + 24 + 4 * (1 << v203);
            v207 = v206 + 2 * (1 << v204);
            v208 = (v207 + 4 * *(v202 + 4));
            if (*v202 != -558043680)
            {
              v208 = *v208;
            }

            v209 = 0;
            v210 = *(v383 + 8 * v201);
            v211 = v379 - v210;
            v212 = *(v202 + 8);
            v213 = (0x1FE35A7BD3579BD3 * (*v181 & (0xFFFFFFFFFFFFFFFFLL >> -*(v202 + 12)))) >> -v204;
            v214 = v379 - v210 - v212;
            v215 = *(v206 + 2 * v213);
            v216 = (v207 + 4 * (*(v205 + 4 * ((0xFFFFFFFF >> -v203) & v213)) + v215));
            v217 = -v380 - v382 + v210 + v212;
            v218 = v208 + v380 + v382 - v210;
            v145 = v165;
            v219 = v162;
            do
            {
              v220 = a8[v209];
              if (v214 < v220 && v211 >= v220)
              {
                v222 = v212 + v220 - v211;
                if (v222 >= v29)
                {
                  v222 = v29;
                }

                if (v222 < 8)
                {
                  v223 = 0;
                  v226 = (a3 + v159);
LABEL_305:
                  if ((v222 & 7) != 0)
                  {
                    v230 = v217 + v220;
                    if (v149 < v217 + v220)
                    {
                      v230 = v149;
                    }

                    v231 = -(v230 & 7);
                    v232 = &v218[v223 - v220];
                    do
                    {
                      v233 = *v232++;
                      if (v233 != *v226)
                      {
                        break;
                      }

                      v226 = (v226 + 1);
                      ++v223;
                      v43 = __CFADD__(v231++, 1);
                    }

                    while (!v43);
                  }
                }

                else
                {
                  v223 = 0;
                  v224 = v217 + v220;
                  if (v149 < v217 + v220)
                  {
                    v224 = v149;
                  }

                  v225 = -(v224 >> 3);
                  v226 = (a3 + v159);
                  while (1)
                  {
                    v227 = *&v218[v223 - v220];
                    if (*v226 != v227)
                    {
                      break;
                    }

                    ++v226;
                    v223 += 8;
                    v43 = __CFADD__(v225++, 1);
                    if (v43)
                    {
                      goto LABEL_305;
                    }
                  }

                  v223 += __clz(__rbit64(v227 ^ *v226)) >> 3;
                }

                if (v223 >= 2)
                {
                  v228 = 135 * v223 + 1935;
                  if (v165 < v228)
                  {
                    if (v209)
                    {
                      v228 -= ((0x1CA10u >> (v209 & 2)) & 4) + 39;
                    }

                    if (v223 <= v162)
                    {
                      v229 = v162;
                    }

                    else
                    {
                      v229 = v223;
                    }

                    if (v165 < v228)
                    {
                      v219 = v223;
                      v161 = a8[v209];
                      v145 = v228;
                      v200 = 0;
                      v162 = v229;
                      v165 = v228;
                    }
                  }
                }
              }

              ++v209;
            }

            while (v209 != 4);
            v12 = a4;
            result = a3;
            if (v215 != 0xFFFF)
            {
              do
              {
                v235 = *v216++;
                v234 = v235;
                v236 = v235 & 0x7FFFFFFF;
                v237 = v211 - v236;
                v238 = v212 - v236;
                if (v212 - v236 >= v29)
                {
                  v239 = v29;
                }

                else
                {
                  v239 = v212 - v236;
                }

                v240 = v162 + v159;
                v242 = v237 > v389 || v240 > a4 || v162 >= v239;
                if (!v242 && *(result + v240) == *(v208 + v162 + v236))
                {
                  v243 = v208 + v236;
                  if (v239 < 8)
                  {
                    v244 = 0;
                    v247 = (a3 + v159);
LABEL_356:
                    if ((v239 & 7) != 0)
                    {
                      if (v149 >= v238)
                      {
                        v254 = v238;
                      }

                      else
                      {
                        v254 = v149;
                      }

                      v255 = -(v254 & 7);
                      do
                      {
                        if (v243[v244] != *v247)
                        {
                          break;
                        }

                        v247 = (v247 + 1);
                        ++v244;
                        v43 = __CFADD__(v255++, 1);
                      }

                      while (!v43);
                    }
                  }

                  else
                  {
                    v244 = 0;
                    if (v149 >= v238)
                    {
                      v245 = v212 - v236;
                    }

                    else
                    {
                      v245 = v149;
                    }

                    v246 = -(v245 >> 3);
                    v247 = (a3 + v159);
                    while (1)
                    {
                      v248 = *&v243[v244];
                      if (*v247 != v248)
                      {
                        break;
                      }

                      ++v247;
                      v244 += 8;
                      v43 = __CFADD__(v246++, 1);
                      if (v43)
                      {
                        goto LABEL_356;
                      }
                    }

                    v244 += __clz(__rbit64(v248 ^ *v247)) >> 3;
                  }

                  v249 = 135 * v244 - 30 * (__clz(v237) ^ 0x1F) + 1920;
                  if (v165 < v249)
                  {
                    v250 = v244;
                  }

                  else
                  {
                    v250 = v219;
                  }

                  if (v165 < v249)
                  {
                    v251 = v249;
                  }

                  else
                  {
                    v237 = v161;
                    v251 = v145;
                  }

                  if (v165 < v249)
                  {
                    v252 = 0;
                  }

                  else
                  {
                    v252 = v200;
                  }

                  if (v165 < v249)
                  {
                    v253 = v244;
                  }

                  else
                  {
                    v253 = v162;
                  }

                  if (v165 >= v249)
                  {
                    v249 = v165;
                  }

                  if (v244 >= 4)
                  {
                    v219 = v250;
                    v161 = v237;
                    v145 = v251;
                    v200 = v252;
                    v162 = v253;
                    v165 = v249;
                  }

                  result = a3;
                }
              }

              while ((v234 & 0x80000000) == 0);
            }

            ++v201;
            v165 = v145;
            v162 = v219;
          }

          while (v201 != v385);
        }

        else
        {
          v219 = v162;
          v145 = v165;
          result = a3;
        }

        if (v145 < v370 + 175)
        {
          break;
        }

        ++v371;
        if (v369 > 2)
        {
          v256 = v375;
          goto LABEL_437;
        }

        v146 = v369 + 1;
        --v149;
        v150 = v367 + 1;
        v386 = v161;
        v387 = v200;
        v100 = v219;
        v256 = v375;
        v148 = v375;
        v147 = v352;
        if (v374 + 5 >= v361)
        {
          goto LABEL_437;
        }
      }

      v281 = v374 + v360;
      if (v374 + v360 >= v359)
      {
        v281 = v359;
      }

      v368 = v281;
      v161 = v386;
      v200 = v387;
      v219 = v353;
      v256 = v374;
LABEL_437:
      a6 = v363;
      if (v161 > v368 + v345)
      {
        goto LABEL_438;
      }

      v313 = *a8;
      if (v161 != v313)
      {
        v323 = a8[1];
        if (v161 == v323)
        {
          v308 = 1;
          goto LABEL_439;
        }

        v324 = v161 + 3 - v313;
        if (v324 > 6)
        {
          v327 = v161 + 3 - v323;
          if (v327 > 6)
          {
            if (v161 == a8[2])
            {
              v308 = 2;
            }

            else if (v161 == a8[3])
            {
              v308 = 3;
            }

            else
            {
LABEL_438:
              v308 = v161 + 15;
            }

LABEL_439:
            if (v161 <= v368 + v345)
            {
              if (v308)
              {
                a8[3] = a8[2];
                v309 = *a8;
                *(a8 + 1) = *a8;
                *a8 = v161;
                v310 = *(a7 + 108);
                if (v310 >= 5)
                {
                  v311 = vdupq_n_s32(v161);
                  *(a8 + 1) = vaddq_s32(v311, xmmword_240C11260);
                  *(a8 + 4) = vadd_s32(*v311.i8, 0x3FFFFFFFDLL);
                  if (v310 >= 0xB)
                  {
                    v312 = vdupq_lane_s32(v309, 0);
                    *(a8 + 10) = vaddq_s32(v312, xmmword_240C11260);
                    *(a8 + 7) = vadd_s32(*v312.i8, 0x3FFFFFFFDLL);
                  }
                }
              }
            }

            goto LABEL_446;
          }

          v325 = 4 * v327;
          v326 = 266017486;
        }

        else
        {
          v325 = 4 * v324;
          v326 = 158663784;
        }

        v308 = (v326 >> v325) & 0xF;
        goto LABEL_439;
      }

      v308 = 0;
LABEL_446:
      *v347 = v371;
      *(v347 + 4) = v219 | (v200 << 25);
      v314 = *(v363 + 68);
      v315 = v314 + 16;
      if (v314 + 16 <= v308)
      {
        v317 = *(v363 + 64);
        v318 = v308 - v314 + (4 << v317) - 16;
        v319 = (__clz(v318) ^ 0x1F) - 1;
        v320 = ((v318 >> v319) & 1 | 2) << v319;
        v308 = ((v318 & ~(-1 << v317)) + v315 + ((((v318 >> v319) & 1 | (2 * (v319 - v317))) + 65534) << v317)) | ((v319 - v317) << 10);
        v316 = (v318 - v320) >> v317;
      }

      else
      {
        LODWORD(v316) = 0;
      }

      *(v347 + 14) = v308;
      *(v347 + 8) = v316;
      if (v371 > 5)
      {
        if (v371 > 0x81)
        {
          if (v371 > 0x841)
          {
            if (v371 >> 1 >= 0xC21)
            {
              if (v371 < 0x5842)
              {
                LOWORD(v321) = 22;
              }

              else
              {
                LOWORD(v321) = 23;
              }
            }

            else
            {
              LOWORD(v321) = 21;
            }
          }

          else
          {
            v321 = (__clz(v371 - 66) ^ 0x1F) + 10;
          }
        }

        else
        {
          v322 = (__clz(v371 - 2) ^ 0x1F) - 1;
          v321 = ((v371 - 2) >> v322) + 2 * v322 + 2;
        }
      }

      else
      {
        LOWORD(v321) = v371;
      }

      v328 = v200 + v219;
      if (v328 > 9)
      {
        if (v328 > 0x85)
        {
          if (v328 > 0x845)
          {
            LOWORD(v328) = 23;
          }

          else
          {
            v328 = (__clz(v328 - 70) ^ 0x1F) + 12;
          }
        }

        else
        {
          v329 = v328 - 6;
          v330 = (__clz(v329) ^ 0x1F) - 1;
          v328 = (v329 >> v330) + 2 * v330 + 4;
        }
      }

      else
      {
        LOWORD(v328) = v328 - 2;
      }

      v331 = v328 & 7 | (8 * (v321 & 7));
      if ((v308 & 0x3FF) != 0 || v321 > 7u || v328 > 0xFu)
      {
        v333 = 3 * (v321 >> 3) + ((v328 & 0xFFF8) >> 3);
        v332 = ((((0x520D40u >> (2 * v333)) & 0xC0) + (v333 << 6)) | v331) + 64;
      }

      else
      {
        LOWORD(v332) = v331 | 0x40;
        if ((v328 & 0xFFF8) == 0)
        {
          LOWORD(v332) = v328 & 7 | (8 * (v321 & 7));
        }
      }

      *(v347 + 12) = v332;
      v334 = v344;
      *a12 += v371;
      v335 = v256 + 2;
      v274 = v256 + v219;
      if (v256 + v219 < v344)
      {
        v334 = v256 + v219;
      }

      if (v161 < v219 >> 2)
      {
        if (v335 <= v274 - 4 * v161)
        {
          v335 = v274 - 4 * v161;
        }

        if (v334 < v335)
        {
          v335 = v334;
        }
      }

      v21 = v346 + 2 * v219 + v256;
      v22 = v347 + 16;
      if (v335 < v334)
      {
        v336 = *(a7 + 96);
        v337 = *(a7 + 100);
        v338 = *(a7 + 104);
        do
        {
          v339 = (506832829 * *(result + (v335 & v12))) >> v336;
          v340 = *(v372 + 2 * v339);
          *(v362 + 4 * (v337 & v340) + 4 * (v339 << v338)) = v335;
          *(v372 + 2 * v339) = v340 + 1;
          ++v335;
        }

        while (v334 != v335);
      }

      v13 = 0;
LABEL_492:
      a2 = v274;
      if (v274 + 4 >= v361)
      {
        goto LABEL_499;
      }
    }

    v25 = 0;
LABEL_22:
    v26 = 0;
    goto LABEL_23;
  }

  v22 = a10;
  v274 = a2;
LABEL_499:
  *a9 = v13 + v361 - v274;
  *a11 += (v22 - a10) >> 4;
  return result;
}

unint64_t sub_240AE6100(unint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int *a8, unint64_t *a9, uint64_t a10, void *a11, void *a12)
{
  v12 = a4;
  v13 = *a9;
  v358 = *(a6 + 16);
  v359 = a2 + result;
  v340 = a2 + result - 7;
  if (result <= 7)
  {
    v14 = a2;
  }

  else
  {
    v14 = a2 + result - 7;
  }

  v15 = *(a6 + 8);
  v16 = 512;
  if (*(a6 + 4) < 9)
  {
    v16 = 64;
  }

  v344 = v16;
  v342 = v14;
  v343 = *(a6 + 104);
  v17 = *(a7 + 120);
  if (v17 >= 5)
  {
    v18 = vld1q_dup_f32(a8);
    *(a8 + 1) = vaddq_s32(v18, xmmword_240C11260);
    *(a8 + 4) = vadd_s32(*v18.i8, 0x3FFFFFFFDLL);
    if (v17 >= 0xB)
    {
      v19 = (a8 + 1);
      v20 = vld1q_dup_f32(v19);
      *(a8 + 10) = vaddq_s32(v20, xmmword_240C11260);
      *(a8 + 7) = vadd_s32(*v20.i8, 0x3FFFFFFFDLL);
    }
  }

  if (result >= 9)
  {
    v21 = v16 + a2;
    v357 = (1 << v15) - 16;
    v348 = a6 + 637;
    v347 = a5 + 256;
    v356 = a6 + 704;
    v360 = *(a7 + 104);
    v361 = *(a7 + 144);
    v346 = v343 + 1;
    v385 = a6 + 112;
    v384 = a6 + 368;
    v339 = 4 * v16;
    v341 = a2 + result - 1;
    v22 = a10;
    v362 = a6;
    v373 = *(a7 + 136);
    while (1)
    {
      if (a2 >= v357)
      {
        v23 = v357;
      }

      else
      {
        v23 = a2;
      }

      v24 = a2 + v358;
      if (a2 + v358 >= v357)
      {
        v24 = v357;
      }

      v381 = v24;
      v378 = v21;
      if (!*(a6 + 632))
      {
        v27 = 0;
        v363 = 0;
        goto LABEL_24;
      }

      if (!a2)
      {
        break;
      }

      v25 = *(a3 + ((a2 - 1) & v12));
      if (a2 == 1)
      {
        goto LABEL_22;
      }

      v26 = *(a3 + ((a2 - 2) & v12));
LABEL_23:
      v363 = v25;
      v27 = *(v348 + (*(v347 + v26) | *(a5 + v25)));
LABEL_24:
      v345 = v22;
      v367 = v27;
      v28 = *(v356 + 8 * v27);
      v29 = v359 - a2;
      v388 = *(a6 + 80);
      v374 = a2;
      v30 = a2 & v12;
      v31 = *(a7 + 120);
      v32 = (v359 - a2) >> 3;
      v372 = v13;
      if (v31)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v365 = 0;
        v36 = 2020;
        v37 = 2020;
        do
        {
          v38 = a8[v34];
          v39 = v374 - v38;
          v40 = v23 < v38 || v39 >= v374;
          v41 = v39 & v12;
          v42 = v33 + v30;
          v43 = v40 || v42 > v12;
          v44 = v41 + v33;
          v45 = v43 || v44 > v12;
          if (!v45 && *(a3 + v42) == *(a3 + v44))
          {
            v46 = a3 + v41;
            if (v29 < 8)
            {
              v51 = 0;
              v52 = (a3 + v30);
LABEL_57:
              if ((v29 & 7) != 0)
              {
                v55 = v29 & 7 | v51;
                v56 = v29 & 7;
                while (*(v46 + v51) == *v52)
                {
                  ++v52;
                  ++v51;
                  if (!--v56)
                  {
                    v51 = v55;
                    break;
                  }
                }
              }
            }

            else
            {
              v47 = 0;
              v48 = v32;
              while (1)
              {
                v49 = *(a3 + v30 + v47);
                v50 = *(v46 + v47);
                if (v49 != v50)
                {
                  break;
                }

                v47 += 8;
                if (!--v48)
                {
                  v51 = v29 & 0xFFFFFFFFFFFFFFF8;
                  v52 = (a3 + v30 + (v29 & 0xFFFFFFFFFFFFFFF8));
                  goto LABEL_57;
                }
              }

              v51 = v47 + (__clz(__rbit64(v50 ^ v49)) >> 3);
            }

            if (v51 > 2 || v34 <= 1 && v51 == 2)
            {
              v53 = 135 * v51 + 1935;
              if (v36 < v53)
              {
                if (v34)
                {
                  v53 -= ((0x1CA10u >> (v34 & 0xE)) & 0xE) + 39;
                }

                v54 = v365;
                if (v36 < v53)
                {
                  v54 = a8[v34];
                }

                v365 = v54;
                if (v36 < v53)
                {
                  v37 = v53;
                  v35 = v51;
                  v33 = v51;
                  v36 = v53;
                }
              }
            }
          }

          ++v34;
        }

        while (v34 != v31);
      }

      else
      {
        v365 = 0;
        v35 = 0;
        v33 = 0;
        v37 = 2020;
        v36 = 2020;
      }

      v57 = (a3 + v30);
      v58 = (0x1FE35A7BD3579BD3 * (*(a3 + v30) & v360)) >> *(a7 + 96);
      v59 = *(a7 + 112);
      v60 = v361 + 4 * (v58 << *(a7 + 116));
      v61 = *(v373 + 2 * v58);
      v355 = *(a7 + 88);
      result = v61 - v355;
      if (v61 < v355)
      {
        result = 0;
      }

      if (result < v61)
      {
        v62 = *(v373 + 2 * v58);
        do
        {
          v63 = *(v60 + 4 * (--v62 & v59));
          v64 = v374 - v63;
          if (v374 - v63 > v23)
          {
            break;
          }

          if (v33 + v30 <= v12)
          {
            v65 = v63 & v12;
            if (v65 + v33 <= v12 && *(a3 + v33 + v30) == *(a3 + v65 + v33))
            {
              v66 = a3 + v65;
              if (v29 < 8)
              {
                v71 = 0;
                v72 = (a3 + v30);
LABEL_83:
                if ((v29 & 7) != 0)
                {
                  v74 = v29 & 7 | v71;
                  v75 = v29 & 7;
                  while (*(v66 + v71) == *v72)
                  {
                    ++v72;
                    ++v71;
                    if (!--v75)
                    {
                      v71 = v74;
                      break;
                    }
                  }
                }

                v12 = a4;
              }

              else
              {
                v67 = 0;
                v68 = v32;
                while (1)
                {
                  v69 = *&v57[v67];
                  v70 = *(v66 + v67 * 4);
                  if (v69 != v70)
                  {
                    break;
                  }

                  v67 += 2;
                  if (!--v68)
                  {
                    v71 = v29 & 0xFFFFFFFFFFFFFFF8;
                    v72 = v57 + (v29 & 0xFFFFFFFFFFFFFFF8);
                    goto LABEL_83;
                  }
                }

                v71 = v67 * 4 + (__clz(__rbit64(v70 ^ v69)) >> 3);
              }

              if (v71 >= 4)
              {
                v73 = __clz(v64) ^ 0x1F;
                if (v36 < 135 * v71 - 30 * v73 + 1920)
                {
                  v365 = v64;
                  v37 = 135 * v71 - 30 * v73 + 1920;
                  v35 = v71;
                  v33 = v71;
                  v36 = v37;
                }
              }
            }
          }
        }

        while (v62 > result);
      }

      *(v60 + 4 * (v59 & v61)) = v374;
      *(v373 + 2 * v58) = v61 + 1;
      if (v37 != 2020)
      {
        v387 = 0;
        goto LABEL_93;
      }

      v76 = *(a7 + 128);
      v78 = *(v76 + 40);
      v77 = *(v76 + 48);
      if (v77 < v78 >> 7)
      {
        v387 = 0;
        v37 = 2020;
LABEL_93:
        v79 = v365;
        goto LABEL_94;
      }

      v387 = 0;
      v280 = ((506832829 * *v57) >> 17) & 0x7FFE;
      v281 = *(v28 + 32);
      v282 = v346 + v381;
      v283 = 1;
      result = v35;
      v37 = 2020;
      v284 = v365;
      do
      {
        v285 = v283;
        *(v76 + 40) = ++v78;
        v286 = *(v281 + v280);
        if (!*(v281 + v280) || v29 < v286)
        {
          goto LABEL_414;
        }

        v288 = *(*v28 + 4 * v286 + 32);
        v289 = *(*v28 + 168) + *(*(v28 + 24) + 2 * v280) * *(v281 + v280);
        v290 = (v289 + v288);
        if (v286 < 8)
        {
          v35 = 0;
LABEL_429:
          v298 = v286 & 7;
          if ((v286 & 7) != 0)
          {
            v299 = v35 | v298;
            while (*(v57 + v35) == *v290)
            {
              ++v290;
              ++v35;
              if (!--v298)
              {
                v35 = v299;
                break;
              }
            }
          }
        }

        else
        {
          v291 = 0;
          v35 = v286 & 0xF8;
          v292 = (v289 + v35 + v288);
          while (1)
          {
            v293 = *&v290[v291];
            v294 = *&v57[v291 / 4];
            if (v293 != v294)
            {
              break;
            }

            v291 += 8;
            if (v35 == v291)
            {
              v290 = v292;
              goto LABEL_429;
            }
          }

          v35 = v291 + (__clz(__rbit64(v294 ^ v293)) >> 3);
        }

        if (v35 && v35 + *(v28 + 12) > v286 && (v287 = *(*(v28 + 24) + 2 * v280), v295 = v282 + v287 + ((((*(v28 + 16) >> (6 * (v286 - v35))) & 0x3FLL) + 4 * (v286 - v35)) << *(*v28 + v286)), v295 <= v388) && (v296 = v282 + v287 + ((((*(v28 + 16) >> (6 * (v286 - v35))) & 0x3FLL) + 4 * (v286 - v35)) << *(*v28 + v286)), v297 = __clz(v295) ^ 0x1F, 135 * v35 - 30 * v297 + 1920 >= v37))
        {
          v387 = v286 - v35;
          *(v76 + 48) = ++v77;
          v37 = 135 * v35 - 30 * v297 + 1920;
          v79 = v296;
        }

        else
        {
LABEL_414:
          v79 = v284;
          v35 = result;
        }

        v283 = 0;
        ++v280;
        result = v35;
        v284 = v79;
      }

      while ((v285 & 1) != 0);
LABEL_94:
      v80 = v79;
      v386 = *(v362 + 96);
      v380 = *(v362 + 104);
      if (v386)
      {
        v81 = 0;
        v382 = *(v362 + 104) + v381;
        do
        {
          v82 = *(v385 + 8 * v81);
          v84 = *(v82 + 16);
          v83 = *(v82 + 20);
          v85 = v82 + 24 + 4 * (1 << v83);
          v86 = v85 + 2 * (1 << v84);
          v87 = (v86 + 4 * *(v82 + 4));
          if (*v82 != -558043680)
          {
            v87 = *v87;
          }

          v88 = 0;
          v89 = *(v384 + 8 * v81);
          v90 = v382 - v89;
          v91 = *(v82 + 8);
          v92 = (0x1FE35A7BD3579BD3 * (*v57 & (0xFFFFFFFFFFFFFFFFLL >> -*(v82 + 12)))) >> -v84;
          v93 = v382 - v89 - v91;
          v94 = (0xFFFFFFFF >> -v83) & v92;
          v95 = *(v85 + 2 * v92);
          v96 = (v86 + 4 * (*(v82 + 24 + 4 * v94) + v95));
          v97 = v87 + v382 - v89;
          v98 = v35;
          v99 = v37;
          do
          {
            v100 = a8[v88];
            if (v93 < v100 && v90 >= v100)
            {
              if (v91 - (v90 - v100) >= v29)
              {
                v102 = v29;
              }

              else
              {
                v102 = v91 - (v90 - v100);
              }

              if (v102 < 8)
              {
                v104 = 0;
                v105 = (a3 + v30);
LABEL_130:
                v112 = v102 & 7;
                if (v112)
                {
                  v113 = v104 | v112;
                  v114 = &v97[v104 - v100];
                  while (1)
                  {
                    v115 = *v114++;
                    if (v115 != *v105)
                    {
                      break;
                    }

                    ++v105;
                    ++v104;
                    if (!--v112)
                    {
                      v104 = v113;
                      break;
                    }
                  }
                }
              }

              else
              {
                v103 = 0;
                v104 = v102 & 0xFFFFFFFFFFFFFFF8;
                v105 = v57 + (v102 & 0xFFFFFFFFFFFFFFF8);
                v106 = -(v102 >> 3);
                while (1)
                {
                  v107 = *&v57[v103];
                  v108 = *(v87 + v90 - v100 + v103 * 4);
                  if (v107 != v108)
                  {
                    break;
                  }

                  v103 += 2;
                  v40 = __CFADD__(v106++, 1);
                  if (v40)
                  {
                    goto LABEL_130;
                  }
                }

                v104 = v103 * 4 + (__clz(__rbit64(v108 ^ v107)) >> 3);
              }

              if (v104 >= 2)
              {
                v109 = 135 * v104 + 1935;
                if (v37 < v109)
                {
                  if (v88)
                  {
                    v109 -= ((0x1CA10u >> (v88 & 2)) & 4) + 39;
                  }

                  if (v104 <= v35)
                  {
                    v110 = v35;
                  }

                  else
                  {
                    v110 = v104;
                  }

                  if (v37 < v109)
                  {
                    v80 = a8[v88];
                    v99 = v109;
                  }

                  v111 = v387;
                  if (v37 < v109)
                  {
                    v111 = 0;
                  }

                  v387 = v111;
                  if (v37 < v109)
                  {
                    v98 = v104;
                    v35 = v110;
                    v37 = v109;
                  }
                }
              }
            }

            ++v88;
          }

          while (v88 != 4);
          result = 0xFFFFLL;
          v116 = v388;
          if (v95 != 0xFFFF)
          {
            do
            {
              v117 = *v96++;
              result = v117;
              v118 = v117 & 0x7FFFFFFF;
              v119 = v90 - v118;
              if (v91 - v118 >= v29)
              {
                v120 = v29;
              }

              else
              {
                v120 = v91 - v118;
              }

              v121 = v35 + v30;
              v123 = v119 > v116 || v121 > v12 || v35 >= v120;
              if (!v123 && *(a3 + v121) == *(v87 + v35 + v118))
              {
                v124 = v87 + v118;
                if (v120 < 8)
                {
                  v126 = 0;
                  v127 = (a3 + v30);
LABEL_180:
                  v138 = v120 & 7;
                  if ((v120 & 7) != 0)
                  {
                    v139 = v126 | v138;
                    while (v124[v126] == *v127)
                    {
                      ++v127;
                      ++v126;
                      if (!--v138)
                      {
                        v126 = v139;
                        break;
                      }
                    }
                  }
                }

                else
                {
                  v125 = 0;
                  v126 = v120 & 0xFFFFFFFFFFFFFFF8;
                  v127 = v57 + (v120 & 0xFFFFFFFFFFFFFFF8);
                  v128 = -(v120 >> 3);
                  while (1)
                  {
                    v129 = *&v57[v125];
                    v130 = *&v124[v125 * 4];
                    if (v129 != v130)
                    {
                      break;
                    }

                    v125 += 2;
                    v40 = __CFADD__(v128++, 1);
                    if (v40)
                    {
                      goto LABEL_180;
                    }
                  }

                  v126 = v125 * 4 + (__clz(__rbit64(v130 ^ v129)) >> 3);
                }

                v131 = 135 * v126 - 30 * (__clz(v119) ^ 0x1F) + 1920;
                if (v37 < v131)
                {
                  v132 = v119;
                }

                else
                {
                  v132 = v80;
                }

                if (v37 < v131)
                {
                  v133 = v131;
                }

                else
                {
                  v133 = v99;
                }

                v134 = v387;
                if (v37 < v131)
                {
                  v135 = 0;
                }

                else
                {
                  v135 = v387;
                }

                if (v37 < v131)
                {
                  v136 = v126;
                }

                else
                {
                  v136 = v98;
                }

                if (v37 < v131)
                {
                  v137 = v126;
                }

                else
                {
                  v137 = v35;
                }

                if (v37 >= v131)
                {
                  v131 = v37;
                }

                if (v126 >= 4)
                {
                  v80 = v132;
                  v99 = v133;
                  v134 = v135;
                }

                v387 = v134;
                if (v126 >= 4)
                {
                  v98 = v136;
                  v35 = v137;
                  v37 = v131;
                }

                v116 = v388;
              }
            }

            while ((result & 0x80000000) == 0);
          }

          ++v81;
          v35 = v98;
          v140 = v99;
          v37 = v99;
          v141 = a3;
        }

        while (v81 != v386);
      }

      else
      {
        v140 = v37;
        v98 = v35;
        v141 = a3;
      }

      if (v140 < 0x7E5)
      {
        v13 = v372 + 1;
        v272 = v374 + 1;
        v21 = v378;
        v22 = v345;
        if (v374 + 1 <= v378)
        {
          a6 = v362;
        }

        else
        {
          result = 0x1FE35A7BD3579BD3;
          if (v272 <= v378 + v339)
          {
            v300 = v374 + 9;
            if (v374 + 9 >= v340)
            {
              v300 = v340;
            }

            a6 = v362;
            if (v272 < v300)
            {
              v301 = *(a7 + 96);
              v302 = *(a7 + 112);
              v303 = *(a7 + 116);
              do
              {
                v304 = (0x1FE35A7BD3579BD3 * (*(a3 + (v272 & v12)) & v360)) >> v301;
                v305 = *(v373 + 2 * v304);
                *(v373 + 2 * v304) = v305 + 1;
                *(v361 + 4 * (v302 & v305) + 4 * (v304 << v303)) = v272;
                v13 += 2;
                v272 += 2;
              }

              while (v272 < v300);
            }
          }

          else
          {
            v273 = v374 + 17;
            if (v374 + 17 >= v340)
            {
              v273 = v340;
            }

            a6 = v362;
            if (v272 < v273)
            {
              v274 = *(a7 + 96);
              v275 = *(a7 + 112);
              v276 = *(a7 + 116);
              do
              {
                v277 = (0x1FE35A7BD3579BD3 * (*(a3 + (v272 & v12)) & v360)) >> v274;
                v278 = *(v373 + 2 * v277);
                *(v373 + 2 * v277) = v278 + 1;
                *(v361 + 4 * (v275 & v278) + 4 * (v277 << v276)) = v272;
                v13 += 4;
                v272 += 4;
              }

              while (v272 < v273);
            }
          }
        }

        goto LABEL_497;
      }

      v142 = 0;
      v354 = *(a7 + 96);
      v143 = v374;
      v144 = v341 - v374;
      v145 = v358 + 1 + v374;
      v146 = *(a7 + 120);
      v352 = *(a7 + 112);
      v353 = *(a7 + 116);
      v147 = v80;
      v350 = v146;
      while (1)
      {
        v370 = v142;
        v371 = v140;
        if (v145 >= v357)
        {
          v148 = v357;
        }

        else
        {
          v148 = v145;
        }

        v383 = v148;
        --v29;
        v149 = v98 - 1;
        if (v98 - 1 >= v29)
        {
          v149 = v29;
        }

        if (*(v362 + 4) >= 5)
        {
          v150 = 0;
        }

        else
        {
          v150 = v149;
        }

        v151 = v143 + 1;
        if (v143 + 1 < v357)
        {
          v152 = v143 + 1;
        }

        else
        {
          v152 = v357;
        }

        v153 = v151 + v358;
        if (v151 + v358 >= v357)
        {
          v153 = v357;
        }

        v369 = v153;
        v375 = v143;
        if (*(v362 + 632))
        {
          v154 = *(v348 + (*(v347 + v363) | *(a5 + *(v141 + (v143 & v12)))));
          v363 = *(v141 + (v143 & v12));
        }

        else
        {
          v154 = v367;
        }

        v366 = v147;
        v367 = v154;
        v155 = *(v356 + 8 * v154);
        v156 = v151 & v12;
        v351 = v98;
        v368 = v145;
        if (v146)
        {
          v157 = 0;
          v158 = 0;
          v159 = 0;
          v160 = (v141 + v156);
          v161 = 2020;
          v162 = 2020;
          do
          {
            v163 = a8[v157];
            v164 = v151 - v163;
            v165 = v152 < v163 || v164 >= v151;
            v166 = v164 & v12;
            v167 = v150 + v156;
            v168 = v165 || v167 > v12;
            v169 = v166 + v150;
            v170 = v168 || v169 > v12;
            if (!v170 && *(a3 + v167) == *(a3 + v169))
            {
              v171 = a3 + v166;
              if (v29 < 8)
              {
                v172 = 0;
                v174 = v160;
LABEL_238:
                if ((v29 & 7) != 0)
                {
                  v177 = v29 & 7;
                  do
                  {
                    if (*(v171 + v172) != *v174)
                    {
                      break;
                    }

                    v174 = (v174 + 1);
                    ++v172;
                    --v177;
                  }

                  while (v177);
                }
              }

              else
              {
                v172 = 0;
                v173 = v29 >> 3;
                v174 = v160;
                while (1)
                {
                  v175 = *(v171 + v172);
                  if (*v174 != v175)
                  {
                    break;
                  }

                  ++v174;
                  v172 += 8;
                  if (!--v173)
                  {
                    goto LABEL_238;
                  }
                }

                v172 += __clz(__rbit64(v175 ^ *v174)) >> 3;
              }

              if (v172 > 2 || v157 <= 1 && v172 == 2)
              {
                v176 = 135 * v172 + 1935;
                if (v161 < v176)
                {
                  if (v157)
                  {
                    v176 -= ((0x1CA10u >> (v157 & 0xE)) & 0xE) + 39;
                  }

                  if (v161 < v176)
                  {
                    v159 = v172;
                    v158 = a8[v157];
                    v162 = v176;
                    v150 = v172;
                    v161 = v176;
                  }
                }
              }
            }

            ++v157;
          }

          while (v157 != v146);
        }

        else
        {
          v159 = 0;
          v158 = 0;
          v162 = 2020;
          v161 = 2020;
        }

        v376 = v151;
        v178 = (a3 + v156);
        v179 = (0x1FE35A7BD3579BD3 * (*(a3 + v156) & v360)) >> v354;
        v180 = v361 + 4 * (v179 << v353);
        v181 = *(v373 + 2 * v179);
        if (v181 >= v355)
        {
          v182 = v181 - v355;
        }

        else
        {
          v182 = 0;
        }

        if (v182 < v181)
        {
          v183 = *(v373 + 2 * v179);
          do
          {
            v184 = *(v180 + 4 * (--v183 & *(a7 + 112)));
            v185 = v376 - v184;
            if (v376 - v184 > v152)
            {
              break;
            }

            if (v150 + v156 <= v12)
            {
              v186 = v184 & v12;
              if (v186 + v150 <= v12 && *(a3 + v150 + v156) == *(a3 + v186 + v150))
              {
                v187 = a3 + v186;
                if (v29 < 8)
                {
                  v188 = 0;
                  v190 = (a3 + v156);
LABEL_265:
                  if ((v29 & 7) != 0)
                  {
                    v193 = v29 & 7;
                    do
                    {
                      if (*(v187 + v188) != *v190)
                      {
                        break;
                      }

                      v190 = (v190 + 1);
                      ++v188;
                      --v193;
                    }

                    while (v193);
                  }
                }

                else
                {
                  v188 = 0;
                  v189 = v29 >> 3;
                  v190 = (a3 + v156);
                  while (1)
                  {
                    v191 = *(v187 + v188);
                    if (*v190 != v191)
                    {
                      break;
                    }

                    ++v190;
                    v188 += 8;
                    if (!--v189)
                    {
                      goto LABEL_265;
                    }
                  }

                  v188 += __clz(__rbit64(v191 ^ *v190)) >> 3;
                }

                if (v188 >= 4)
                {
                  v192 = __clz(v185) ^ 0x1F;
                  if (v161 < 135 * v188 - 30 * v192 + 1920)
                  {
                    v159 = v188;
                    v158 = v185;
                    v162 = 135 * v188 - 30 * v192 + 1920;
                    v150 = v188;
                    v161 = v162;
                  }
                }
              }
            }
          }

          while (v183 > v182);
        }

        *(v180 + 4 * (v352 & v181)) = v376;
        *(v373 + 2 * v179) = v181 + 1;
        if (v162 == 2020)
        {
          v194 = *(a7 + 128);
          v196 = *(v194 + 40);
          v195 = *(v194 + 48);
          if (v195 >= v196 >> 7)
          {
            v197 = 0;
            v255 = ((506832829 * *v178) >> 17) & 0x7FFE;
            v256 = *(v155 + 32);
            v257 = 1;
            v162 = 2020;
            v258 = v158;
            v259 = v159;
            do
            {
              v260 = v257;
              *(v194 + 40) = ++v196;
              v261 = *(v256 + v255);
              if (!*(v256 + v255) || v29 < v261)
              {
                goto LABEL_380;
              }

              v262 = *(*v155 + 4 * v261 + 32);
              v263 = *(*v155 + 168) + *(*(v155 + 24) + 2 * v255) * *(v256 + v255);
              v264 = (v263 + v262);
              if (v261 < 8)
              {
                v159 = 0;
LABEL_395:
                v270 = v261 & 7;
                if ((v261 & 7) != 0)
                {
                  v271 = v159 | v270;
                  while (*(v178 + v159) == *v264)
                  {
                    ++v264;
                    ++v159;
                    if (!--v270)
                    {
                      v159 = v271;
                      break;
                    }
                  }
                }
              }

              else
              {
                v265 = 0;
                v159 = v261 & 0xF8;
                v266 = (v263 + v159 + v262);
                while (1)
                {
                  v267 = *&v264[v265];
                  v268 = *&v178[v265 / 4];
                  if (v267 != v268)
                  {
                    break;
                  }

                  v265 += 8;
                  if (v159 == v265)
                  {
                    v264 = v266;
                    goto LABEL_395;
                  }
                }

                v159 = v265 + (__clz(__rbit64(v268 ^ v267)) >> 3);
              }

              if (v159 && v159 + *(v155 + 12) > v261 && (v158 = v346 + v369 + *(*(v155 + 24) + 2 * v255) + ((((*(v155 + 16) >> (6 * (v261 - v159))) & 0x3FLL) + 4 * (v261 - v159)) << *(*v155 + v261)), v158 <= v388) && (v269 = __clz(v158) ^ 0x1F, 135 * v159 - 30 * v269 + 1920 >= v162))
              {
                v197 = v261 - v159;
                *(v194 + 48) = ++v195;
                v162 = 135 * v159 - 30 * v269 + 1920;
              }

              else
              {
LABEL_380:
                v159 = v259;
                v158 = v258;
              }

              v257 = 0;
              ++v255;
              v258 = v158;
              v259 = v159;
            }

            while ((v260 & 1) != 0);
          }

          else
          {
            v197 = 0;
            v162 = 2020;
          }
        }

        else
        {
          v197 = 0;
        }

        if (v386)
        {
          v198 = 0;
          v379 = v369 + v380;
          do
          {
            v199 = *(v385 + 8 * v198);
            v200 = *(v199 + 16);
            v201 = *(v199 + 20);
            v202 = v199 + 24 + 4 * (1 << v201);
            v203 = v202 + 2 * (1 << v200);
            v204 = (v203 + 4 * *(v199 + 4));
            if (*v199 != -558043680)
            {
              v204 = *v204;
            }

            v205 = 0;
            v206 = *(v384 + 8 * v198);
            v207 = v379 - v206;
            v208 = *(v199 + 8);
            v209 = (0x1FE35A7BD3579BD3 * (*v178 & (0xFFFFFFFFFFFFFFFFLL >> -*(v199 + 12)))) >> -v200;
            v210 = v379 - v206 - v208;
            v211 = *(v202 + 2 * v209);
            v212 = (v203 + 4 * (*(v199 + 24 + 4 * ((0xFFFFFFFF >> -v201) & v209)) + v211));
            v213 = -v380 - v383 + v206 + v208;
            v214 = v204 + v380 + v383 - v206;
            v140 = v162;
            v215 = v159;
            do
            {
              v216 = a8[v205];
              if (v210 < v216 && v207 >= v216)
              {
                if (v208 + v216 - v207 >= v29)
                {
                  v218 = v29;
                }

                else
                {
                  v218 = v208 + v216 - v207;
                }

                if (v218 < 8)
                {
                  v219 = 0;
                  v222 = (a3 + v156);
LABEL_308:
                  if ((v218 & 7) != 0)
                  {
                    v226 = v213 + v216;
                    if (v144 < v213 + v216)
                    {
                      v226 = v144;
                    }

                    v227 = -(v226 & 7);
                    v228 = &v214[v219 - v216];
                    do
                    {
                      v229 = *v228++;
                      if (v229 != *v222)
                      {
                        break;
                      }

                      v222 = (v222 + 1);
                      ++v219;
                      v40 = __CFADD__(v227++, 1);
                    }

                    while (!v40);
                  }
                }

                else
                {
                  v219 = 0;
                  v220 = v213 + v216;
                  if (v144 < v213 + v216)
                  {
                    v220 = v144;
                  }

                  v221 = -(v220 >> 3);
                  v222 = (a3 + v156);
                  while (1)
                  {
                    v223 = *&v214[v219 - v216];
                    if (*v222 != v223)
                    {
                      break;
                    }

                    ++v222;
                    v219 += 8;
                    v40 = __CFADD__(v221++, 1);
                    if (v40)
                    {
                      goto LABEL_308;
                    }
                  }

                  v219 += __clz(__rbit64(v223 ^ *v222)) >> 3;
                }

                if (v219 >= 2)
                {
                  v224 = 135 * v219 + 1935;
                  if (v162 < v224)
                  {
                    if (v205)
                    {
                      v224 -= ((0x1CA10u >> (v205 & 2)) & 4) + 39;
                    }

                    if (v219 <= v159)
                    {
                      v225 = v159;
                    }

                    else
                    {
                      v225 = v219;
                    }

                    if (v162 < v224)
                    {
                      v215 = v219;
                      v158 = a8[v205];
                      v140 = v224;
                      v197 = 0;
                      v159 = v225;
                      v162 = v224;
                    }
                  }
                }
              }

              ++v205;
            }

            while (v205 != 4);
            v230 = v211 == 0xFFFF;
            v12 = a4;
            v231 = v388;
            v141 = a3;
            if (!v230)
            {
              do
              {
                v233 = *v212++;
                v232 = v233;
                v234 = v233 & 0x7FFFFFFF;
                v235 = v207 - v234;
                v236 = v208 - v234;
                if (v208 - v234 >= v29)
                {
                  v237 = v29;
                }

                else
                {
                  v237 = v208 - v234;
                }

                v238 = v159 + v156;
                v240 = v235 > v231 || v238 > a4 || v159 >= v237;
                if (!v240 && *(v141 + v238) == *(v204 + v159 + v234))
                {
                  v241 = v204 + v234;
                  if (v237 < 8)
                  {
                    v242 = 0;
                    v245 = (a3 + v156);
LABEL_362:
                    if ((v237 & 7) != 0)
                    {
                      if (v144 < v236)
                      {
                        LOBYTE(v236) = v144;
                      }

                      v253 = -(v236 & 7);
                      do
                      {
                        if (v241[v242] != *v245)
                        {
                          break;
                        }

                        v245 = (v245 + 1);
                        ++v242;
                        v40 = __CFADD__(v253++, 1);
                      }

                      while (!v40);
                    }
                  }

                  else
                  {
                    v242 = 0;
                    if (v144 >= v236)
                    {
                      v243 = v236;
                    }

                    else
                    {
                      v243 = v144;
                    }

                    v244 = -(v243 >> 3);
                    v245 = (a3 + v156);
                    while (1)
                    {
                      v246 = *&v241[v242];
                      if (*v245 != v246)
                      {
                        break;
                      }

                      ++v245;
                      v242 += 8;
                      v40 = __CFADD__(v244++, 1);
                      if (v40)
                      {
                        goto LABEL_362;
                      }
                    }

                    v242 += __clz(__rbit64(v246 ^ *v245)) >> 3;
                  }

                  v247 = 135 * v242 - 30 * (__clz(v235) ^ 0x1F) + 1920;
                  if (v162 < v247)
                  {
                    v248 = v242;
                  }

                  else
                  {
                    v248 = v215;
                  }

                  if (v162 < v247)
                  {
                    v249 = v235;
                  }

                  else
                  {
                    v249 = v158;
                  }

                  if (v162 < v247)
                  {
                    v250 = v247;
                  }

                  else
                  {
                    v250 = v140;
                  }

                  if (v162 < v247)
                  {
                    v251 = 0;
                  }

                  else
                  {
                    v251 = v197;
                  }

                  if (v162 < v247)
                  {
                    v252 = v242;
                  }

                  else
                  {
                    v252 = v159;
                  }

                  if (v162 >= v247)
                  {
                    v247 = v162;
                  }

                  if (v242 >= 4)
                  {
                    v215 = v248;
                    v158 = v249;
                    v140 = v250;
                    v197 = v251;
                    v159 = v252;
                    v162 = v247;
                  }

                  v231 = v388;
                  v141 = a3;
                }
              }

              while ((v232 & 0x80000000) == 0);
            }

            ++v198;
            v162 = v140;
            v159 = v215;
          }

          while (v198 != v386);
        }

        else
        {
          v215 = v159;
          v140 = v162;
          v141 = a3;
        }

        if (v140 < v371 + 175)
        {
          break;
        }

        ++v372;
        if (v370 > 2)
        {
          v254 = v376;
          goto LABEL_442;
        }

        v142 = v370 + 1;
        --v144;
        v145 = v368 + 1;
        v147 = v158;
        v387 = v197;
        v98 = v215;
        v254 = v376;
        v143 = v376;
        v146 = v350;
        if (v375 + 9 >= v359)
        {
          goto LABEL_442;
        }
      }

      v279 = v375 + v358;
      if (v375 + v358 >= v357)
      {
        v279 = v357;
      }

      v369 = v279;
      v158 = v366;
      v197 = v387;
      v215 = v351;
      v254 = v375;
LABEL_442:
      a6 = v362;
      result = 0x1FE35A7BD3579BD3;
      if (v158 > v369 + v343)
      {
        goto LABEL_443;
      }

      v311 = *a8;
      if (v158 != v311)
      {
        v321 = a8[1];
        if (v158 == v321)
        {
          v306 = 1;
          goto LABEL_444;
        }

        v322 = v158 + 3 - v311;
        if (v322 > 6)
        {
          v325 = v158 + 3 - v321;
          if (v325 > 6)
          {
            if (v158 == a8[2])
            {
              v306 = 2;
            }

            else if (v158 == a8[3])
            {
              v306 = 3;
            }

            else
            {
LABEL_443:
              v306 = v158 + 15;
            }

LABEL_444:
            if (v158 <= v369 + v343)
            {
              if (v306)
              {
                a8[3] = a8[2];
                v307 = *a8;
                *(a8 + 1) = *a8;
                *a8 = v158;
                v308 = *(a7 + 120);
                if (v308 >= 5)
                {
                  v309 = vdupq_n_s32(v158);
                  *(a8 + 1) = vaddq_s32(v309, xmmword_240C11260);
                  *(a8 + 4) = vadd_s32(*v309.i8, 0x3FFFFFFFDLL);
                  if (v308 >= 0xB)
                  {
                    v310 = vdupq_lane_s32(v307, 0);
                    *(a8 + 10) = vaddq_s32(v310, xmmword_240C11260);
                    *(a8 + 7) = vadd_s32(*v310.i8, 0x3FFFFFFFDLL);
                  }
                }
              }
            }

            goto LABEL_451;
          }

          v323 = 4 * v325;
          v324 = 266017486;
        }

        else
        {
          v323 = 4 * v322;
          v324 = 158663784;
        }

        v306 = (v324 >> v323) & 0xF;
        goto LABEL_444;
      }

      v306 = 0;
LABEL_451:
      *v345 = v372;
      *(v345 + 4) = v215 | (v197 << 25);
      v312 = *(v362 + 68);
      v313 = v312 + 16;
      if (v312 + 16 <= v306)
      {
        v315 = *(v362 + 64);
        v316 = v306 - v312 + (4 << v315) - 16;
        v317 = (__clz(v316) ^ 0x1F) - 1;
        v318 = ((v316 >> v317) & 1 | 2) << v317;
        v306 = ((v316 & ~(-1 << v315)) + v313 + ((((v316 >> v317) & 1 | (2 * (v317 - v315))) + 65534) << v315)) | ((v317 - v315) << 10);
        v314 = (v316 - v318) >> v315;
      }

      else
      {
        LODWORD(v314) = 0;
      }

      *(v345 + 14) = v306;
      *(v345 + 8) = v314;
      if (v372 > 5)
      {
        if (v372 > 0x81)
        {
          if (v372 > 0x841)
          {
            if (v372 >> 1 >= 0xC21)
            {
              if (v372 < 0x5842)
              {
                LOWORD(v319) = 22;
              }

              else
              {
                LOWORD(v319) = 23;
              }
            }

            else
            {
              LOWORD(v319) = 21;
            }
          }

          else
          {
            v319 = (__clz(v372 - 66) ^ 0x1F) + 10;
          }
        }

        else
        {
          v320 = (__clz(v372 - 2) ^ 0x1F) - 1;
          v319 = ((v372 - 2) >> v320) + 2 * v320 + 2;
        }
      }

      else
      {
        LOWORD(v319) = v372;
      }

      v326 = v197 + v215;
      if ((v197 + v215) > 9)
      {
        if (v326 > 0x85)
        {
          if (v326 > 0x845)
          {
            LOWORD(v326) = 23;
          }

          else
          {
            v326 = (__clz(v326 - 70) ^ 0x1F) + 12;
          }
        }

        else
        {
          v327 = v326 - 6;
          v328 = (__clz(v327) ^ 0x1F) - 1;
          v326 = (v327 >> v328) + 2 * v328 + 4;
        }
      }

      else
      {
        LOWORD(v326) = v326 - 2;
      }

      v329 = v326 & 7 | (8 * (v319 & 7));
      if ((v306 & 0x3FF) != 0 || v319 > 7u || v326 > 0xFu)
      {
        v331 = 3 * (v319 >> 3) + ((v326 & 0xFFF8) >> 3);
        v330 = ((((0x520D40u >> (2 * v331)) & 0xC0) + (v331 << 6)) | v329) + 64;
      }

      else
      {
        LOWORD(v330) = v329 | 0x40;
        if ((v326 & 0xFFF8) == 0)
        {
          LOWORD(v330) = v326 & 7 | (8 * (v319 & 7));
        }
      }

      *(v345 + 12) = v330;
      v332 = v342;
      *a12 += v372;
      v333 = v254 + 2;
      v272 = v254 + v215;
      if (v254 + v215 < v342)
      {
        v332 = v254 + v215;
      }

      if (v158 < v215 >> 2)
      {
        if (v333 <= v272 - 4 * v158)
        {
          v333 = v272 - 4 * v158;
        }

        if (v332 < v333)
        {
          v333 = v332;
        }
      }

      v21 = v344 + 2 * v215 + v254;
      v22 = v345 + 16;
      if (v333 < v332)
      {
        v334 = *(a7 + 96);
        v335 = *(a7 + 112);
        v336 = *(a7 + 116);
        do
        {
          v337 = (0x1FE35A7BD3579BD3 * (*(a3 + (v333 & v12)) & v360)) >> v334;
          v338 = *(v373 + 2 * v337);
          *(v373 + 2 * v337) = v338 + 1;
          *(v361 + 4 * (v335 & v338) + 4 * (v337 << v336)) = v333++;
        }

        while (v332 != v333);
      }

      v13 = 0;
LABEL_497:
      a2 = v272;
      if (v272 + 8 >= v359)
      {
        goto LABEL_504;
      }
    }

    v25 = 0;
LABEL_22:
    v26 = 0;
    goto LABEL_23;
  }

  v22 = a10;
  v272 = a2;
LABEL_504:
  *a9 = v13 + v359 - v272;
  *a11 += (v22 - a10) >> 4;
  return result;
}