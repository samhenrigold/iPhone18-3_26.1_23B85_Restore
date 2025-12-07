unint64_t sub_2394A377C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  *(a3 + 374) |= 2u;
  v6 = sub_2393C6F5C(a1, 2);
  if (!v6)
  {
    v10 = 0;
    v6 = sub_2393C5F70(a1, &v10);
    if (!v6)
    {
      v9 = v10;
      if (v10 > 0xFFu)
      {
        v7 = 0xCA00000000;
        LODWORD(v6) = 80;
        return v6 | v7;
      }

      v6 = sub_2393F726C(a2, v10);
      if (!v6)
      {
        *(a3 + 376) = v9;
      }
    }
  }

  v7 = v6 & 0xFFFFFFFF00000000;
  return v6 | v7;
}

uint64_t sub_2394A3824(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(a3 + 374) |= 1u;
  result = sub_2393F77A4(a2, 0, 0x10u);
  if (!result)
  {
    result = sub_2393C7078(a1, 21, 1);
    if (!result)
    {
      v8 = 0;
      result = sub_2393C6A2C(a1, &v8);
      if (!result)
      {
        v7 = 0;
        result = sub_2393C6FD0(a1, 1);
        if (!result)
        {
          result = sub_2393C5CE4(a1, &v7);
          if (!result)
          {
            if (v7 == 1)
            {
              result = sub_2393F6F40(a2, 1);
              if (result)
              {
                return result;
              }

              *(a3 + 374) |= 0x80u;
            }

            result = sub_2393C6B34(a1);
            if (!result || result == 33)
            {
              if (*(a1 + 16) != 2 || (result = sub_2393C5ED0(a1, (a3 + 379)), !result) && (result = sub_2393F6DE8(a2, *(a3 + 379)), !result) && (*(a3 + 374) |= 0x40u, result = sub_2393C6B34(a1), result == 33))
              {
                result = sub_2393C6AE0(a1);
                if (!result)
                {
                  result = sub_2393C6A98(a1, v8);
                  if (!result)
                  {
                    return sub_2393F77B0(a2);
                  }
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

uint64_t sub_2394A3974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 374) |= 4u;
  result = sub_2393F77A4(a2, 0, 0x10u);
  if (!result)
  {
    result = sub_2393C7078(a1, 22, 3);
    if (!result)
    {
      v8 = 0;
      result = sub_2393C6A2C(a1, &v8);
      if (!result)
      {
        while (1)
        {
          result = sub_2393C6FD0(a1, 256);
          if (result)
          {
            break;
          }

          v7 = 0;
          result = sub_2393C5ED0(a1, &v7);
          if (result)
          {
            return result;
          }

          result = sub_2393F5C58(a2, v7 | 0x600u);
          if (result)
          {
            return result;
          }

          *(a3 + 378) |= 1 << (v7 - 1);
        }

        if (result == 33)
        {
          result = sub_2393C6A98(a1, v8);
          if (!result)
          {
            return sub_2393F77B0(a2);
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_2394A3A70(uint64_t a1, void *a2)
{
  v8 = 0;
  v4 = sub_2393C6160(a1, &v8);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else if (sub_2393C5CB8(a1) == 20)
  {
    sub_2394A3B00(&v7, v8);
    LODWORD(v4) = 0;
    v5 = 0;
    *a2 = v7;
  }

  else
  {
    v5 = 0x1DA00000000;
    LODWORD(v4) = 43;
  }

  return v5 | v4;
}

void *sub_2394A3B00(void *result, uint64_t a2)
{
  *result = a2;
  if (!a2)
  {
    sub_2395359B4();
  }

  return result;
}

unint64_t sub_2394A3B1C(uint64_t a1, void *a2)
{
  v8 = 0;
  v4 = sub_2393C6160(a1, &v8);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else if (sub_2393C5CB8(a1) == 64)
  {
    sub_2394A3B00(&v7, v8);
    LODWORD(v4) = 0;
    v5 = 0;
    *a2 = v7;
  }

  else
  {
    v5 = 0x1DA00000000;
    LODWORD(v4) = 43;
  }

  return v5 | v4;
}

unint64_t sub_2394A3BAC(unsigned __int16 *a1, uint64_t a2)
{
  sub_2393C7B90(v18);
  v17 = 0;
  sub_2393C7BB8(v18, *a2, *(a2 + 8));
  v4 = sub_2393C8CE0(v18, 0x100uLL, 21, &v17 + 1);
  if (v4)
  {
    goto LABEL_4;
  }

  v4 = sub_2393C818C(v18, 0, *a1);
  if (v4)
  {
    goto LABEL_4;
  }

  v4 = sub_2393C818C(v18, 1uLL, a1[1]);
  if (v4)
  {
    goto LABEL_4;
  }

  if (!*(a1 + 204))
  {
    v5 = 0x4E00000000;
LABEL_36:
    LODWORD(v4) = 47;
    return v4 | v5;
  }

  if (*(a1 + 204) > 0x64u)
  {
    v5 = 0x4F00000000;
    goto LABEL_36;
  }

  v4 = sub_2393C8CE0(v18, 2uLL, 22, &v17);
  if (v4)
  {
    goto LABEL_4;
  }

  if (*(a1 + 204))
  {
    v7 = 0;
    do
    {
      v4 = sub_2393C818C(v18, 0x100uLL, a1[v7 + 2]);
      if (v4)
      {
        goto LABEL_4;
      }
    }

    while (++v7 < *(a1 + 204));
  }

  v4 = sub_2393C8DE0(v18, v17);
  if (v4)
  {
    goto LABEL_4;
  }

  v4 = sub_2393C81D4(v18, 3uLL, *(a1 + 52));
  if (v4)
  {
    goto LABEL_4;
  }

  v4 = sub_2393C847C(v18, 4uLL, a1 + 212);
  if (v4)
  {
    goto LABEL_4;
  }

  v4 = sub_2393C8140(v18, 5uLL, *(a1 + 232));
  if (v4)
  {
    goto LABEL_4;
  }

  v4 = sub_2393C818C(v18, 6uLL, a1[117]);
  if (v4)
  {
    goto LABEL_4;
  }

  v4 = sub_2393C818C(v18, 7uLL, a1[118]);
  if (v4)
  {
    goto LABEL_4;
  }

  v4 = sub_2393C8140(v18, 8uLL, *(a1 + 238));
  if (v4)
  {
    goto LABEL_4;
  }

  if (*(a1 + 244) == 1)
  {
    v4 = sub_2393C818C(v18, 9uLL, a1[120]);
    if (v4)
    {
      goto LABEL_4;
    }

    v4 = sub_2393C818C(v18, 0xAuLL, a1[121]);
    if (v4)
    {
      goto LABEL_4;
    }
  }

  if (!*(a1 + 445))
  {
LABEL_31:
    v4 = sub_2393C8DE0(v18, SHIDWORD(v17));
    if (!v4)
    {
      v4 = sub_2393C7CB8(v18);
      if (!v4)
      {
        sub_238DB8498(a2, v20, v10, v11, v12, v13, v14, v15, v16, v17, v18[0], v18[1], v19);
        v5 = 0;
        LODWORD(v4) = 0;
        return v4 | v5;
      }
    }

    goto LABEL_4;
  }

  if (*(a1 + 445) > 0xAu)
  {
    v5 = 0x6500000000;
    goto LABEL_36;
  }

  v4 = sub_2393C8CE0(v18, 0xBuLL, 22, &v17);
  if (!v4)
  {
    if (*(a1 + 445))
    {
      v8 = 0;
      v9 = a1 + 245;
      do
      {
        v4 = sub_2393C8364(v18, 0x100uLL, v9, 0x14uLL);
        if (v4)
        {
          goto LABEL_4;
        }

        ++v8;
        v9 += 20;
      }

      while (v8 < *(a1 + 445));
    }

    v4 = sub_2393C8DE0(v18, v17);
    if (!v4)
    {
      goto LABEL_31;
    }
  }

LABEL_4:
  v5 = v4 & 0xFFFFFFFF00000000;
  return v4 | v5;
}

unint64_t sub_2394A3E2C(uint64_t *a1, uint64_t a2)
{
  sub_2393C5AAC(v12);
  v4 = a1[1];
  if (v4 > 0x316)
  {
    LODWORD(v5) = 47;
    v6 = 0x7E00000000;
    return v6 | v5;
  }

  v11 = 0;
  sub_2393C5ADC(v12, *a1, v4);
  v5 = sub_2393C7114(v12, 21, 256);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFF00000000;
    return v6 | v5;
  }

  v5 = sub_2393C6A2C(v12, &v11 + 1);
  if (v5)
  {
    goto LABEL_12;
  }

  v5 = sub_2393C6FD0(v12, 0);
  if (v5)
  {
    goto LABEL_12;
  }

  v5 = sub_2393C5F70(v12, a2);
  if (v5)
  {
    goto LABEL_12;
  }

  v5 = sub_2393C6FD0(v12, 1);
  if (v5)
  {
    goto LABEL_12;
  }

  v5 = sub_2393C5F70(v12, (a2 + 2));
  if (v5)
  {
    goto LABEL_12;
  }

  v5 = sub_2393C7114(v12, 22, 2);
  if (v5)
  {
    goto LABEL_12;
  }

  v5 = sub_2393C6A2C(v12, &v11);
  if (v5)
  {
    goto LABEL_12;
  }

  *(a2 + 204) = 0;
  while (1)
  {
    v5 = sub_2393C6FD0(v12, 256);
    if (v5)
    {
      break;
    }

    v8 = *(a2 + 204);
    if (v8 > 0x63)
    {
      LODWORD(v5) = 47;
      v6 = 0x9200000000;
      return v6 | v5;
    }

    *(a2 + 204) = v8 + 1;
    v5 = sub_2393C5F70(v12, (a2 + 4 + 2 * v8));
    if (v5)
    {
      goto LABEL_65;
    }
  }

  if (v5 != 33)
  {
LABEL_65:
    v6 = v5 & 0xFFFFFFFF00000000;
    return v6 | v5;
  }

  v5 = sub_2393C6A98(v12, v11);
  if (v5)
  {
    goto LABEL_12;
  }

  v5 = sub_2393C6FD0(v12, 3);
  if (v5)
  {
    goto LABEL_12;
  }

  v5 = sub_2393C5FC8(v12, (a2 + 208));
  if (v5)
  {
    goto LABEL_12;
  }

  v5 = sub_2393C7114(v12, 12, 4);
  if (v5)
  {
    goto LABEL_12;
  }

  v5 = sub_2393C65A4(v12, (a2 + 212), 0x14uLL);
  if (v5)
  {
    goto LABEL_12;
  }

  if (strlen((a2 + 212)) != 19)
  {
    LODWORD(v5) = 35;
    v6 = 0x9D00000000;
    return v6 | v5;
  }

  v5 = sub_2393C6FD0(v12, 5);
  if (v5 || (v5 = sub_2393C5ED0(v12, (a2 + 232)), v5) || (v5 = sub_2393C6FD0(v12, 6), v5) || (v5 = sub_2393C5F70(v12, (a2 + 234)), v5) || (v5 = sub_2393C6FD0(v12, 7), v5) || (v5 = sub_2393C5F70(v12, (a2 + 236)), v5) || (v5 = sub_2393C6FD0(v12, 8), v5) || (v5 = sub_2393C5ED0(v12, (a2 + 238)), v5))
  {
LABEL_12:
    v6 = v5 & 0xFFFFFFFF00000000;
    return v6 | v5;
  }

  *(a2 + 244) = 0;
  v5 = sub_2393C6FD0(v12, 9);
  v9 = v5;
  if (v5)
  {
    goto LABEL_35;
  }

  v5 = sub_2393C5F70(v12, (a2 + 240));
  if (v5)
  {
    goto LABEL_12;
  }

  v5 = sub_2393C6FD0(v12, 10);
  if (v5)
  {
    goto LABEL_12;
  }

  v5 = sub_2393C5F70(v12, (a2 + 242));
  if (v5)
  {
    goto LABEL_12;
  }

  *(a2 + 244) = 1;
  v5 = sub_2393C6B34(v12);
  v9 = v5;
  if (v5)
  {
LABEL_35:
    if (v5 == 33)
    {
      if (v13 != 10)
      {
        goto LABEL_62;
      }

LABEL_55:
      LODWORD(v5) = 35;
      v6 = 0xBA00000000;
      return v6 | v5;
    }

    if (v5 != 43)
    {
      goto LABEL_66;
    }
  }

  if (v13 == 10)
  {
    goto LABEL_55;
  }

  if (v13 == 11)
  {
    if (sub_2393C5C40(v12) != 22)
    {
      LODWORD(v5) = 43;
      v6 = 0xBE00000000;
      return v6 | v5;
    }

    v5 = sub_2393C6A2C(v12, &v11);
    if (!v5)
    {
      *(a2 + 445) = 0;
      while (1)
      {
        v5 = sub_2393C7114(v12, 16, 256);
        if (v5)
        {
          break;
        }

        if (sub_2393C5CB8(v12) != 20)
        {
          LODWORD(v5) = 43;
          v6 = 0xC500000000;
          return v6 | v5;
        }

        v10 = *(a2 + 445);
        if (v10 > 9)
        {
          LODWORD(v5) = 47;
          v6 = 0xC600000000;
          return v6 | v5;
        }

        *(a2 + 445) = v10 + 1;
        v5 = sub_2393C6430(v12, (a2 + 245 + 20 * v10), 0x14uLL);
        if (v5)
        {
          goto LABEL_65;
        }
      }

      if (v5 != 33)
      {
        goto LABEL_65;
      }

      v5 = sub_2393C6A98(v12, v11);
      if (!v5)
      {
        v5 = sub_2393C6B34(v12);
        v9 = v5;
        goto LABEL_60;
      }
    }

    goto LABEL_12;
  }

LABEL_60:
  if (v5 > 0x2B || ((1 << v5) & 0x80200000001) == 0)
  {
LABEL_66:
    v6 = v9 & 0xFFFFFFFF00000000;
    return v6 | v5;
  }

LABEL_62:
  v5 = sub_2393C6A98(v12, SHIDWORD(v11));
  if (v5)
  {
    goto LABEL_12;
  }

  v5 = sub_2393C6AE0(v12);
  v6 = v5 & 0xFFFFFFFF00000000;
  if (!v5)
  {
    v6 = 0;
    LODWORD(v5) = 0;
  }

  return v6 | v5;
}

unint64_t sub_2394A4280(uint64_t *a1, uint64_t a2)
{
  sub_2393C5AAC(v13);
  v4 = a1[1];
  if (v4 > 0x316)
  {
    LODWORD(v5) = 47;
    v6 = 0xE000000000;
    return v6 | v5;
  }

  v12 = 0;
  sub_2393C5ADC(v13, *a1, v4);
  v5 = sub_2393C7114(v13, 21, 256);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFF00000000;
    return v6 | v5;
  }

  v5 = sub_2393C6A2C(v13, &v12 + 1);
  if (v5)
  {
    goto LABEL_19;
  }

  v5 = sub_2393C6FD0(v13, 0);
  if (v5)
  {
    goto LABEL_19;
  }

  v5 = sub_2393C5F70(v13, a2);
  if (v5)
  {
    goto LABEL_19;
  }

  v5 = sub_2393C6FD0(v13, 1);
  if (v5)
  {
    goto LABEL_19;
  }

  v5 = sub_2393C5F70(v13, (a2 + 2));
  if (v5)
  {
    goto LABEL_19;
  }

  v5 = sub_2393C7114(v13, 22, 2);
  if (v5)
  {
    goto LABEL_19;
  }

  v5 = sub_2393C6A2C(v13, &v12);
  if (v5)
  {
    goto LABEL_19;
  }

  do
  {
    v5 = sub_2393C7114(v13, 4, 256);
  }

  while (!v5);
  if (v5 != 33)
  {
    goto LABEL_19;
  }

  v5 = sub_2393C6A98(v13, v12);
  if (v5)
  {
    goto LABEL_19;
  }

  v5 = sub_2393C6FD0(v13, 3);
  if (v5)
  {
    goto LABEL_19;
  }

  v5 = sub_2393C5FC8(v13, (a2 + 4));
  if (v5)
  {
    goto LABEL_19;
  }

  v5 = sub_2393C7114(v13, 12, 4);
  if (v5)
  {
    goto LABEL_19;
  }

  v5 = sub_2393C65A4(v13, (a2 + 22), 0x14uLL);
  if (v5)
  {
    goto LABEL_19;
  }

  if (strlen((a2 + 22)) != 19)
  {
    LODWORD(v5) = 35;
    v6 = 0xFE00000000;
    return v6 | v5;
  }

  v5 = sub_2393C6FD0(v13, 5);
  if (v5 || (v5 = sub_2393C5ED0(v13, (a2 + 8)), v5) || (v5 = sub_2393C6FD0(v13, 6), v5) || (v5 = sub_2393C5F70(v13, (a2 + 10)), v5) || (v5 = sub_2393C6FD0(v13, 7), v5) || (v5 = sub_2393C5F70(v13, (a2 + 12)), v5) || (v5 = sub_2393C6FD0(v13, 8), v5) || (v5 = sub_2393C5ED0(v13, (a2 + 14)), v5))
  {
LABEL_19:
    v6 = v5 & 0xFFFFFFFF00000000;
    return v6 | v5;
  }

  *(a2 + 20) = 0;
  v5 = sub_2393C6FD0(v13, 9);
  v8 = v5;
  if (v5)
  {
    goto LABEL_31;
  }

  v5 = sub_2393C5F70(v13, (a2 + 16));
  if (v5)
  {
    goto LABEL_19;
  }

  v5 = sub_2393C6FD0(v13, 10);
  if (v5)
  {
    goto LABEL_19;
  }

  v5 = sub_2393C5F70(v13, (a2 + 18));
  if (v5)
  {
    goto LABEL_19;
  }

  *(a2 + 20) = 1;
  v5 = sub_2393C6B34(v13);
  v8 = v5;
  if (v5)
  {
LABEL_31:
    if (v5 == 33)
    {
      if (v14 != 10)
      {
        goto LABEL_55;
      }

LABEL_48:
      LODWORD(v5) = 35;
      v6 = 0x11B00000000;
      return v6 | v5;
    }

    if (v5 != 43)
    {
      goto LABEL_61;
    }
  }

  if (v14 == 10)
  {
    goto LABEL_48;
  }

  if (v14 == 11)
  {
    if (sub_2393C5C40(v13) != 22)
    {
      LODWORD(v5) = 43;
      v6 = 0x11F00000000;
      return v6 | v5;
    }

    v5 = sub_2393C6A2C(v13, &v12);
    if (v5)
    {
      goto LABEL_19;
    }

    v9 = "src/credentials/CertificationDeclaration.cpp";
    while (1)
    {
      v10 = v9;
      v5 = sub_2393C7114(v13, 16, 256);
      if (v5)
      {
        break;
      }

      v11 = sub_2393C5CB8(v13);
      LODWORD(v5) = 43;
      v6 = 0x12500000000;
      v9 = v10;
      if (v11 != 20)
      {
        return v6 | v5;
      }
    }

    if (v5 != 33)
    {
      goto LABEL_19;
    }

    v5 = sub_2393C6A98(v13, v12);
    if (v5)
    {
      goto LABEL_19;
    }

    *(a2 + 21) = 1;
    v5 = sub_2393C6B34(v13);
    v8 = v5;
  }

  if (v5 > 0x2B || ((1 << v5) & 0x80200000001) == 0)
  {
LABEL_61:
    v6 = v8 & 0xFFFFFFFF00000000;
    return v6 | v5;
  }

LABEL_55:
  v5 = sub_2393C6A98(v13, SHIDWORD(v12));
  if (v5)
  {
    goto LABEL_19;
  }

  v5 = sub_2393C6AE0(v13);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFF00000000;
  }

  else
  {
    v6 = 0;
  }

  if (!v5)
  {
    LODWORD(v5) = 0;
  }

  return v6 | v5;
}

BOOL sub_2394A4638(uint64_t a1, uint64_t a2, int a3)
{
  if (sub_2394A46A0(a1, a2, 2))
  {
    return 0;
  }

  v8 = 0;
  do
  {
    v6 = sub_2394A4754(a1, &v8);
    result = v6 == 0;
    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = v8 == a3;
    }
  }

  while (!v7);
  return result;
}

unint64_t sub_2394A46A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2393C5ADC(a1, *a2, *(a2 + 8));
  v5 = sub_2393C7114(a1, 21, 256);
  if (!v5)
  {
    v8 = 0;
    v5 = sub_2393C6A2C(a1, &v8 + 1);
    if (!v5)
    {
      while (1)
      {
        v5 = sub_2393C6B34(a1);
        if (v5)
        {
          break;
        }

        if (!sub_2393C7078(a1, 22, a3))
        {
          v5 = sub_2393C6A2C(a1, &v8);
          v6 = v5 & 0xFFFFFFFF00000000;
          if (!v5)
          {
            v6 = 0;
            LODWORD(v5) = 0;
          }

          return v5 | v6;
        }
      }
    }
  }

  v6 = v5 & 0xFFFFFFFF00000000;
  return v5 | v6;
}

unint64_t sub_2394A4754(uint64_t a1, _WORD *a2)
{
  v4 = sub_2393C6FD0(a1, 256);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    v4 = sub_2393C5F70(a1, a2);
    v5 = v4 & 0xFFFFFFFF00000000;
    if (!v4)
    {
      LODWORD(v4) = 0;
      v5 = 0;
    }
  }

  return v5 | v4;
}

uint64_t sub_2394A47B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_2394A46A0(a1, a2, 11))
  {
    __s2 = 0uLL;
    while (!sub_2394A4830(a1, &__s2))
    {
      v6 = *(a3 + 8);
      if (v6 == *(&__s2 + 1) && (!v6 || !memcmp(*a3, __s2, v6)))
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_2394A4830(uint64_t a1, _OWORD *a2)
{
  v4 = sub_2393C6FD0(a1, 256);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    v4 = sub_2393C60CC(a1, a2);
    v5 = v4 & 0xFFFFFFFF00000000;
    if (!v4)
    {
      LODWORD(v4) = 0;
      v5 = 0;
    }
  }

  return v5 | v4;
}

uint64_t sub_2394A4890(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a4[1] >= 0xFFFFFFFF)
  {
    v8 = 0xFFFFFFFFLL;
  }

  else
  {
    v8 = a4[1];
  }

  sub_2393F6DA8(v20, *a4, v8);
  result = sub_2393F77A4(v20, 0, 0x10u);
  if (!result)
  {
    result = sub_2393F7134(v20, &unk_2395D6C38, 9u);
    if (!result)
    {
      result = sub_2393F77A4(v20, 128, 0);
      if (!result)
      {
        result = sub_2393F77A4(v20, 0, 0x10u);
        if (!result)
        {
          result = sub_2393F6DE8(v20, 3uLL);
          if (!result)
          {
            result = sub_2393F77A4(v20, 0, 0x11u);
            if (!result)
            {
              result = sub_2393F77A4(v20, 0, 0x10u);
              if (!result)
              {
                result = sub_2393F7134(v20, &unk_2395D6C41, 9u);
                if (!result)
                {
                  result = sub_2393F77B0(v20);
                  if (!result)
                  {
                    result = sub_2393F77B0(v20);
                    if (!result)
                    {
                      result = sub_2394A4AAC(a1, v20);
                      if (!result)
                      {
                        v23 = 0;
                        v10 = (*(*a3 + 24))(a3, *a1, a1[1], v22);
                        if (v10)
                        {
                          v11 = v10;
                          sub_2393F9144(v22, 64);
                          return v11;
                        }

                        v12 = sub_2394A4B50(a2, v22, v20);
                        sub_2393F9144(v22, 64);
                        if (!v12)
                        {
                          result = sub_2393F77B0(v20);
                          if (result)
                          {
                            return result;
                          }

                          result = sub_2393F77B0(v20);
                          if (result)
                          {
                            return result;
                          }

                          v12 = sub_2393F77B0(v20);
                          if (!v12)
                          {
                            v13 = sub_2393F6DCC(v20);
                            sub_238DB8498(a4, v13, v14, v15, v16, v17, v18, v19, v20[0], v20[1], v20[2], v20[3], v21);
                          }
                        }

                        return v12;
                      }
                    }
                  }
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

uint64_t sub_2394A4AAC(uint64_t a1, uint64_t a2)
{
  result = sub_2393F77A4(a2, 0, 0x10u);
  if (!result)
  {
    result = sub_2393F7134(a2, &unk_2395D6C4A, 9u);
    if (!result)
    {
      result = sub_2393F77A4(a2, 128, 0);
      if (!result)
      {
        result = sub_2393F7164(a2, *a1, *(a1 + 8));
        if (!result)
        {
          result = sub_2393F77B0(a2);
          if (!result)
          {

            return sub_2393F77B0(a2);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2394A4B50(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = sub_2393F77A4(a3, 0, 0x11u);
  if (!result)
  {
    result = sub_2393F77A4(a3, 0, 0x10u);
    if (!result)
    {
      result = sub_2393F6DE8(a3, 3uLL);
      if (!result)
      {
        result = sub_2393F717C(a3, 128, 0, *a1, *(a1 + 8));
        if (!result)
        {
          result = sub_2393F77A4(a3, 0, 0x10u);
          if (!result)
          {
            result = sub_2393F7134(a3, &unk_2395D6C41, 9u);
            if (!result)
            {
              result = sub_2393F77B0(a3);
              if (!result)
              {
                result = sub_2393F77A4(a3, 0, 0x10u);
                if (!result)
                {
                  result = sub_2393F5C58(a3, 513);
                  if (!result)
                  {
                    result = sub_2393F77B0(a3);
                    if (!result)
                    {
                      result = sub_2393F7918(a3, 0, 4u, 0);
                      if (!result)
                      {
                        sub_2394A3B00(&v7, a2);
                        result = sub_23949FEE8(v7, a3);
                        if (!result)
                        {
                          result = sub_2393F77B0(a3);
                          if (!result)
                          {
                            result = sub_2393F77B0(a3);
                            if (!result)
                            {
                              return sub_2393F77B0(a3);
                            }
                          }
                        }
                      }
                    }
                  }
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

unint64_t sub_2394A4C98(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6[10] = *MEMORY[0x277D85DE8];
  v6[0] = &unk_284BB9138;
  result = sub_2393FA970(a2, v6);
  if (!result)
  {
    return sub_2394A4D34(a1, v6, a3);
  }

  return result;
}

unint64_t sub_2394A4D34(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x277D85DE8];
  if (a1[1] >= 0xFFFFFFFF)
  {
    v5 = 0xFFFFFFFFLL;
  }

  else
  {
    v5 = a1[1];
  }

  sub_2393F5CB4(&v29, *a1, v5);
  v7 = sub_2393F5CEC(&v29, v6);
  if (v7)
  {
    goto LABEL_5;
  }

  if (v29 || v30 != 16)
  {
    v7 = 0x27B00000000;
    goto LABEL_20;
  }

  v7 = sub_2393F5F1C(&v29);
  if (v7)
  {
    goto LABEL_5;
  }

  v7 = sub_2393F5CEC(&v29, v9);
  if (v7)
  {
    goto LABEL_5;
  }

  v7 = 0x27D00000000;
  v8 = 773;
  if (v29 || v30 != 6)
  {
    goto LABEL_21;
  }

  sub_238DB6950(&v33, v31, v32);
  if (v34 == 9 && *v33 == 0x7010DF78648862ALL && *(v33 + 8) == 2)
  {
    v7 = sub_2393F5CEC(&v29, v10);
    if (v7)
    {
      goto LABEL_5;
    }

    v7 = 0x28600000000;
    v8 = 773;
    if (v29 != 128 || v30)
    {
      goto LABEL_21;
    }

    v7 = sub_2393F5F1C(&v29);
    if (v7)
    {
      goto LABEL_5;
    }

    v7 = sub_2393F5CEC(&v29, v14);
    if (v7)
    {
      goto LABEL_5;
    }

    v7 = 0x28800000000;
    if (v29)
    {
      goto LABEL_20;
    }

    v8 = 773;
    if (v30 != 16)
    {
      goto LABEL_21;
    }

    v7 = sub_2393F5F1C(&v29);
    if (v7)
    {
      goto LABEL_5;
    }

    v28 = 0;
    v7 = sub_2393F5CEC(&v29, v15);
    if (v7)
    {
      goto LABEL_5;
    }

    v7 = 0x28C00000000;
    v8 = 773;
    if (v29 || v30 != 2)
    {
      goto LABEL_21;
    }

    v7 = sub_2393F6188(&v29, &v28);
    if (v7)
    {
      goto LABEL_5;
    }

    if (v28 != 3)
    {
      v7 = 0x28F00000000;
      v8 = 774;
      goto LABEL_21;
    }

    v7 = sub_2393F5CEC(&v29, v16);
    if (v7)
    {
      goto LABEL_5;
    }

    v7 = 0x29200000000;
    v8 = 773;
    if (v29 || v30 != 17)
    {
      goto LABEL_21;
    }

    v7 = sub_2393F5F1C(&v29);
    if (v7)
    {
      goto LABEL_5;
    }

    v7 = sub_2393F5CEC(&v29, v17);
    if (v7)
    {
      goto LABEL_5;
    }

    v7 = 0x29400000000;
    v8 = 773;
    if (v29 || v30 != 16)
    {
      goto LABEL_21;
    }

    v7 = sub_2393F5F1C(&v29);
    if (v7)
    {
      goto LABEL_5;
    }

    v7 = sub_2393F5CEC(&v29, v18);
    if (v7)
    {
      goto LABEL_5;
    }

    v7 = 0x29600000000;
    v8 = 773;
    if (v29 || v30 != 6)
    {
      goto LABEL_21;
    }

    sub_238DB6950(&v33, v31, v32);
    if (v34 != 9 || (*v33 == 0x204036501488660 ? (v20 = *(v33 + 8) == 1) : (v20 = 0), !v20))
    {
      v12 = 0x29900000000;
      goto LABEL_18;
    }

    v7 = sub_2393F5CEC(&v29, v19);
    if (!v7)
    {
      v7 = 0x29B00000000;
      goto LABEL_20;
    }

    if (v7 == 768)
    {
      v7 = sub_2393F602C();
      if (!v7)
      {
        v7 = sub_2393F5CEC(&v29, v21);
        if (!v7)
        {
          v7 = 0x29D00000000;
          goto LABEL_20;
        }

        if (v7 == 768)
        {
          v7 = sub_2393F602C();
          if (!v7)
          {
            v7 = sub_2394A5190(&v29, a3);
            if (!v7)
            {
              v35 = 0;
              v22 = sub_2394A5364(&v29, &v27, &v33);
              if (v22 || (v22 = sub_2393F8AC4(a2, *a3, *(a3 + 8), &v33), v22))
              {
                v23 = v22;
                v12 = v22 & 0xFFFFFFFF00000000;
                sub_2393F9144(&v33, 64);
                v8 = v23;
                return v12 | v8;
              }

              sub_2393F9144(&v33, 64);
              v7 = sub_2393F5CEC(&v29, v24);
              if (!v7)
              {
                v7 = 0x2AA00000000;
                goto LABEL_20;
              }

              if (v7 == 768)
              {
                v7 = sub_2393F602C();
                if (!v7)
                {
                  v7 = sub_2393F5CEC(&v29, v25);
                  if (!v7)
                  {
                    v7 = 0x2AC00000000;
                    goto LABEL_20;
                  }

                  if (v7 == 768)
                  {
                    v7 = sub_2393F602C();
                    if (!v7)
                    {
                      v7 = sub_2393F5CEC(&v29, v26);
                      if (v7)
                      {
                        if (v7 == 768)
                        {
                          v7 = sub_2393F602C();
                        }

                        goto LABEL_5;
                      }

                      v7 = 0x2AE00000000;
LABEL_20:
                      v8 = 773;
                      goto LABEL_21;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_5:
    v8 = v7;
LABEL_21:
    v12 = v7 & 0xFFFFFFFF00000000;
    return v12 | v8;
  }

  v12 = 0x28300000000;
LABEL_18:
  v8 = 774;
  return v12 | v8;
}

unint64_t sub_2394A5190(unsigned __int8 *a1, _OWORD *a2)
{
  v4 = sub_2393F5CEC(a1, a2);
  if (v4)
  {
    goto LABEL_2;
  }

  if (*a1 || a1[1] != 16)
  {
    v4 = 0x1A100000000;
    goto LABEL_16;
  }

  v4 = sub_2393F5F1C(a1);
  if (v4 || (v4 = sub_2393F5CEC(a1, v6), v4))
  {
LABEL_2:
    LODWORD(v5) = v4;
LABEL_17:
    v9 = v4 & 0xFFFFFFFF00000000;
    v5 = v5;
    return v9 | v5;
  }

  v4 = 0x1A400000000;
  LODWORD(v5) = 773;
  if (*a1 || a1[1] != 6)
  {
    goto LABEL_17;
  }

  sub_238DB6950(&v14, *(a1 + 1), *(a1 + 4));
  if (*(&v14 + 1) == 9 && *v14 == 0x7010DF78648862ALL && *(v14 + 8) == 1)
  {
    v4 = sub_2393F5CEC(a1, v7);
    if (v4)
    {
      goto LABEL_2;
    }

    v4 = 0x1A900000000;
    LODWORD(v5) = 773;
    if (*a1 != 128 || a1[1])
    {
      goto LABEL_17;
    }

    v4 = sub_2393F5F1C(a1);
    if (v4)
    {
      goto LABEL_2;
    }

    v4 = sub_2393F5CEC(a1, v11);
    if (v4)
    {
      goto LABEL_2;
    }

    v4 = 0x1AC00000000;
    LODWORD(v5) = 773;
    if (*a1 || a1[1] != 4)
    {
      goto LABEL_17;
    }

    sub_238DB6950(&v14, *(a1 + 1), *(a1 + 4));
    *a2 = v14;
    v4 = sub_2393F5CEC(a1, v12);
    if (!v4)
    {
      v4 = 0x1AF00000000;
      goto LABEL_16;
    }

    if (v4 == 768)
    {
      v4 = sub_2393F602C();
      if (!v4)
      {
        v4 = sub_2393F5CEC(a1, v13);
        if (v4)
        {
          if (v4 == 768)
          {
            v4 = sub_2393F602C();
          }

          goto LABEL_2;
        }

        v4 = 0x1B100000000;
LABEL_16:
        LODWORD(v5) = 773;
        goto LABEL_17;
      }
    }

    goto LABEL_2;
  }

  v9 = 0x1A600000000;
  v5 = 774;
  return v9 | v5;
}

unint64_t sub_2394A5364(unsigned __int8 *a1, _OWORD *a2, uint64_t a3)
{
  v6 = sub_2393F5CEC(a1, a2);
  if (v6)
  {
    goto LABEL_2;
  }

  if (*a1 || a1[1] != 17)
  {
    v6 = 0x1F700000000;
    goto LABEL_32;
  }

  v6 = sub_2393F5F1C(a1);
  if (v6 || (v6 = sub_2393F5CEC(a1, v8), v6))
  {
LABEL_2:
    v7 = v6;
    return v6 & 0xFFFFFFFF00000000 | v7;
  }

  v6 = 0x1F900000000;
  v7 = 773;
  if (!*a1 && a1[1] == 16)
  {
    v6 = sub_2393F5F1C(a1);
    if (v6)
    {
      goto LABEL_2;
    }

    *&v23 = 0;
    v6 = sub_2393F5CEC(a1, v9);
    if (v6)
    {
      goto LABEL_2;
    }

    v6 = 0x1FE00000000;
    v7 = 773;
    if (!*a1 && a1[1] == 2)
    {
      v6 = sub_2393F6188(a1, &v23);
      if (v6)
      {
        goto LABEL_2;
      }

      if (v23 != 3)
      {
        v6 = 0x20100000000;
        goto LABEL_35;
      }

      v6 = sub_2393F5CEC(a1, v10);
      if (v6)
      {
        goto LABEL_2;
      }

      v6 = 0x20500000000;
      v7 = 773;
      if (*a1 == 128 && !a1[1])
      {
        sub_238DB6950(&v23, *(a1 + 1), *(a1 + 4));
        *a2 = v23;
        v6 = sub_2393F5CEC(a1, v11);
        if (v6)
        {
          goto LABEL_2;
        }

        v6 = 0x20900000000;
        v7 = 773;
        if (!*a1 && a1[1] == 16)
        {
          v6 = sub_2393F5F1C(a1);
          if (v6)
          {
            goto LABEL_2;
          }

          v6 = sub_2393F5CEC(a1, v12);
          if (v6)
          {
            goto LABEL_2;
          }

          v6 = 0x20B00000000;
          v7 = 773;
          if (!*a1 && a1[1] == 6)
          {
            sub_238DB6950(&v23, *(a1 + 1), *(a1 + 4));
            if (*(&v23 + 1) != 9 || (*v23 == 0x204036501488660 ? (v14 = *(v23 + 8) == 1) : (v14 = 0), !v14))
            {
              v6 = 0x20D00000000;
LABEL_35:
              v7 = 774;
              return v6 & 0xFFFFFFFF00000000 | v7;
            }

            v6 = sub_2393F5CEC(a1, v13);
            if (!v6)
            {
              v6 = 0x20F00000000;
              goto LABEL_32;
            }

            if (v6 != 768)
            {
              goto LABEL_2;
            }

            v6 = sub_2393F602C();
            if (v6)
            {
              goto LABEL_2;
            }

            v6 = sub_2393F5CEC(a1, v16);
            if (v6)
            {
              goto LABEL_2;
            }

            v6 = 0x21200000000;
            v7 = 773;
            if (!*a1 && a1[1] == 16)
            {
              v6 = sub_2393F5F1C(a1);
              if (v6)
              {
                goto LABEL_2;
              }

              v6 = sub_2393F5CEC(a1, v17);
              if (v6)
              {
                goto LABEL_2;
              }

              v6 = 0x21400000000;
              v7 = 773;
              if (!*a1 && a1[1] == 6)
              {
                sub_238DB6950(&v23, *(a1 + 1), *(a1 + 4));
                if (*(&v23 + 1) != 8 || *v23 != 0x203043DCE48862ALL)
                {
                  v6 = 0x21700000000;
                  goto LABEL_35;
                }

                v6 = sub_2393F5CEC(a1, v18);
                if (!v6)
                {
                  v6 = 0x21900000000;
                  goto LABEL_32;
                }

                if (v6 != 768)
                {
                  goto LABEL_2;
                }

                v6 = sub_2393F602C();
                if (v6)
                {
                  goto LABEL_2;
                }

                v6 = sub_2393F5CEC(a1, v19);
                if (v6)
                {
                  goto LABEL_2;
                }

                v6 = 0x21C00000000;
                v7 = 773;
                if (!*a1 && a1[1] == 4)
                {
                  sub_238DB9BD8(&v23, a3, 64);
                  sub_238DB6950(v22, *(a1 + 1), *(a1 + 4));
                  v6 = sub_2393F2F1C(32, v22, &v23);
                  if (!v6)
                  {
                    if (*(&v23 + 1) >= 0x41uLL)
                    {
                      v6 = 0x14700000000;
                      v7 = 47;
                      return v6 & 0xFFFFFFFF00000000 | v7;
                    }

                    *(a3 + 64) = *(&v23 + 1);
                    v6 = sub_2393F5CEC(a1, v20);
                    if (!v6)
                    {
                      v6 = 0x22300000000;
                      goto LABEL_32;
                    }

                    if (v6 == 768)
                    {
                      v6 = sub_2393F602C();
                      if (!v6)
                      {
                        v6 = sub_2393F5CEC(a1, v21);
                        if (v6)
                        {
                          if (v6 == 768)
                          {
                            v6 = sub_2393F602C();
                          }

                          goto LABEL_2;
                        }

                        v6 = 0x22500000000;
LABEL_32:
                        v7 = 773;
                        return v6 & 0xFFFFFFFF00000000 | v7;
                      }
                    }
                  }

                  goto LABEL_2;
                }
              }
            }
          }
        }
      }
    }
  }

  return v6 & 0xFFFFFFFF00000000 | v7;
}

unint64_t sub_2394A5758(uint64_t *a1, _OWORD *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a1[1] >= 0xFFFFFFFF)
  {
    v3 = 0xFFFFFFFFLL;
  }

  else
  {
    v3 = a1[1];
  }

  sub_2393F5CB4(&v22, *a1, v3);
  v5 = sub_2393F5CEC(&v22, v4);
  if (v5)
  {
    goto LABEL_5;
  }

  if (v22 || v23 != 16)
  {
    v5 = 0x2BD00000000;
LABEL_24:
    LODWORD(v6) = 773;
    return v5 & 0xFFFFFFFF00000000 | v6;
  }

  v5 = sub_2393F5F1C(&v22);
  if (v5)
  {
    goto LABEL_5;
  }

  v5 = sub_2393F5CEC(&v22, v7);
  if (v5)
  {
    goto LABEL_5;
  }

  v5 = sub_2393F5CEC(&v22, v8);
  if (v5)
  {
    goto LABEL_5;
  }

  v5 = 0x2C400000000;
  LODWORD(v6) = 773;
  if (v22 != 128 || v23)
  {
    return v5 & 0xFFFFFFFF00000000 | v6;
  }

  v5 = sub_2393F5F1C(&v22);
  if (v5)
  {
    goto LABEL_5;
  }

  v5 = sub_2393F5CEC(&v22, v9);
  if (v5)
  {
    goto LABEL_5;
  }

  v5 = 0x2C600000000;
  LODWORD(v6) = 773;
  if (v22 || v23 != 16)
  {
    return v5 & 0xFFFFFFFF00000000 | v6;
  }

  v5 = sub_2393F5F1C(&v22);
  if (v5)
  {
    goto LABEL_5;
  }

  v11 = sub_2393F5CEC(&v22, v10);
  if (v11)
  {
    goto LABEL_21;
  }

  v11 = sub_2393F5CEC(&v22, v12);
  if (v11)
  {
    goto LABEL_21;
  }

  v11 = sub_2393F5CEC(&v22, v13);
  if (v11)
  {
    goto LABEL_21;
  }

  v25 = 0;
  v15 = sub_2394A5364(&v22, a2, v24);
  sub_2393F9144(v24, 64);
  if (v15)
  {
    return v15;
  }

  v17 = sub_2393F5CEC(&v22, v16);
  if (!v17)
  {
    v5 = 0x2D500000000;
    goto LABEL_24;
  }

  v6 = v17;
  if (v17 != 768)
  {
    goto LABEL_22;
  }

  v11 = sub_2393F602C();
  if (v11)
  {
LABEL_21:
    v6 = v11;
LABEL_22:
    v5 = v6;
    return v5 & 0xFFFFFFFF00000000 | v6;
  }

  v19 = sub_2393F5CEC(&v22, v18);
  if (!v19)
  {
    v5 = 0x2D700000000;
    goto LABEL_24;
  }

  v6 = v19;
  if (v19 != 768)
  {
    goto LABEL_22;
  }

  v11 = sub_2393F602C();
  if (v11)
  {
    goto LABEL_21;
  }

  v21 = sub_2393F5CEC(&v22, v20);
  if (!v21)
  {
    v5 = 0x2D900000000;
    goto LABEL_24;
  }

  v6 = v21;
  if (v21 != 768)
  {
    goto LABEL_22;
  }

  v5 = sub_2393F602C();
LABEL_5:
  LODWORD(v6) = v5;
  return v5 & 0xFFFFFFFF00000000 | v6;
}

unint64_t sub_2394A5984(uint64_t *a1, _OWORD *a2)
{
  if (a1[1] >= 0xFFFFFFFF)
  {
    v3 = 0xFFFFFFFFLL;
  }

  else
  {
    v3 = a1[1];
  }

  sub_2393F5CB4(&v17, *a1, v3);
  v5 = sub_2393F5CEC(&v17, v4);
  if (v5)
  {
    goto LABEL_5;
  }

  if (v17 || v18 != 16)
  {
    v5 = 0x2E800000000;
LABEL_32:
    v6 = 773;
    return v5 & 0xFFFFFFFF00000000 | v6;
  }

  v5 = sub_2393F5F1C(&v17);
  if (v5)
  {
    goto LABEL_5;
  }

  v5 = sub_2393F5CEC(&v17, v7);
  if (v5)
  {
    goto LABEL_5;
  }

  v5 = sub_2393F5CEC(&v17, v8);
  if (v5)
  {
    goto LABEL_5;
  }

  v5 = 0x2EF00000000;
  v6 = 773;
  if (v17 != 128 || v18)
  {
    return v5 & 0xFFFFFFFF00000000 | v6;
  }

  v5 = sub_2393F5F1C(&v17);
  if (v5)
  {
    goto LABEL_5;
  }

  v5 = sub_2393F5CEC(&v17, v9);
  if (v5)
  {
    goto LABEL_5;
  }

  v5 = 0x2F100000000;
  v6 = 773;
  if (v17 || v18 != 16)
  {
    return v5 & 0xFFFFFFFF00000000 | v6;
  }

  v5 = sub_2393F5F1C(&v17);
  if (v5)
  {
    goto LABEL_5;
  }

  v5 = sub_2393F5CEC(&v17, v10);
  if (v5)
  {
    goto LABEL_5;
  }

  v5 = sub_2393F5CEC(&v17, v11);
  if (v5)
  {
    goto LABEL_5;
  }

  result = sub_2394A5190(&v17, a2);
  if (result)
  {
    return result;
  }

  v5 = sub_2393F5CEC(&v17, v13);
  if (v5)
  {
    goto LABEL_5;
  }

  v5 = sub_2393F5CEC(&v17, v14);
  if (!v5)
  {
    v5 = 0x2FF00000000;
    goto LABEL_32;
  }

  if (v5 != 768)
  {
    goto LABEL_5;
  }

  v5 = sub_2393F602C();
  if (v5)
  {
    goto LABEL_5;
  }

  v5 = sub_2393F5CEC(&v17, v15);
  if (!v5)
  {
    v5 = 0x30100000000;
    goto LABEL_32;
  }

  if (v5 != 768)
  {
    goto LABEL_5;
  }

  v5 = sub_2393F602C();
  if (v5)
  {
    goto LABEL_5;
  }

  v5 = sub_2393F5CEC(&v17, v16);
  if (!v5)
  {
    v5 = 0x30300000000;
    goto LABEL_32;
  }

  if (v5 == 768)
  {
    v5 = sub_2393F602C();
  }

LABEL_5:
  v6 = v5;
  return v5 & 0xFFFFFFFF00000000 | v6;
}

unint64_t sub_2394A5B3C(uint64_t a1, void *a2)
{
  sub_2393C5AAC(v9);
  v8 = 21;
  sub_2393C5ADC(v9, *a1, *(a1 + 8));
  v4 = sub_2393C7114(v9, 21, 256);
  if (v4)
  {
    goto LABEL_10;
  }

  v4 = sub_2393C6A2C(v9, &v8);
  if (v4)
  {
    goto LABEL_10;
  }

  v5 = 0;
  while (1)
  {
    v4 = sub_2393C6B34(v9);
    if (v4)
    {
      break;
    }

    if (v10)
    {
      ++v5;
    }
  }

  if (v4 != 33)
  {
LABEL_10:
    v6 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    v6 = 0;
    LODWORD(v4) = 0;
    *a2 = v5;
  }

  return v4 | v6;
}

unint64_t sub_2394A5BF0(uint64_t a1, _OWORD *a2, _OWORD *a3, _DWORD *a4, uint64_t a5, uint64_t a6)
{
  sub_2393C5AAC(v25);
  v24 = 21;
  *a5 = 0;
  *(a5 + 8) = 0;
  sub_2393C5ADC(v25, *a1, *(a1 + 8));
  v12 = sub_2393C7114(v25, 21, 256);
  if (v12 || (v12 = sub_2393C6A2C(v25, &v24), v12))
  {
LABEL_3:
    v13 = v12 & 0xFFFFFFFF00000000;
  }

  else
  {
    v20 = a6;
    v15 = 0;
    v16 = 0;
    v22 = 0;
    LODWORD(v12) = 43;
LABEL_6:
    v21 = v16;
LABEL_7:
    v17 = v15;
    while (1)
    {
      v18 = sub_2393C6B34(v25);
      if (v18)
      {
        break;
      }

      v15 = v26;
      if (v26 > 0xFF)
      {
        goto LABEL_28;
      }

      if ((v16 & 1) == 0)
      {
        if (v26 == 1)
        {
LABEL_21:
          v18 = sub_2393C76AC(v25, a2);
          LOBYTE(v16) = 1;
          HIDWORD(v22) = 1;
          if (!v18)
          {
            goto LABEL_7;
          }

          goto LABEL_33;
        }

        v13 = 0x6C00000000;
        return v12 | v13;
      }

      if (v17 >= v26)
      {
        v13 = 0x7200000000;
        return v12 | v13;
      }

      v16 = 1;
      if (v26 <= 3u)
      {
        if (v26 == 1)
        {
          goto LABEL_21;
        }

        if (v26 == 2)
        {
          v18 = sub_2393C76AC(v25, a3);
          LODWORD(v22) = 1;
          if (!v18)
          {
            goto LABEL_7;
          }

          goto LABEL_33;
        }

        v17 = v26;
        if (v26 == 3)
        {
          v18 = sub_2393C5FC8(v25, a4);
          if (v18)
          {
            goto LABEL_33;
          }

          goto LABEL_6;
        }
      }

      else
      {
        v17 = v26;
        if (v26 == 4)
        {
          v18 = sub_2393C76AC(v25, a5);
          v17 = v15;
          if (v18)
          {
            goto LABEL_33;
          }
        }
      }
    }

    if (v18 != 33)
    {
LABEL_33:
      v13 = v18 & 0xFFFFFFFF00000000;
      LODWORD(v12) = v18;
      return v12 | v13;
    }

LABEL_28:
    if (HIDWORD(v22) & v22 & v21)
    {
      v23 = 0;
      v12 = sub_2394A5B3C(a1, &v23);
      if (v12)
      {
        goto LABEL_3;
      }

      v19 = sub_2394A5E30(v20, a1, v23);
      v13 = v19 & 0xFFFFFFFF00000000;
      if (v19)
      {
        LODWORD(v12) = v19;
      }

      else
      {
        v13 = 0;
        LODWORD(v12) = 0;
      }
    }

    else
    {
      v13 = 0x9100000000;
      LODWORD(v12) = 61;
    }
  }

  return v12 | v13;
}

unint64_t sub_2394A5E30(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(a1 + 24) = 0;
  *(a1 + 26) = 0;
  *a1 = a3;
  *(a1 + 8) = *a2;
  sub_2393C5ADC(a1 + 32, *(a1 + 8), *(a1 + 16));
  v4 = sub_2393C7114(a1 + 32, *(a1 + 104), 256);
  if (v4 || (v4 = sub_2393C6A2C(a1 + 32, (a1 + 104)), v4))
  {
LABEL_3:
    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    while (1)
    {
      v4 = sub_2393C6B34(a1 + 32);
      if (v4)
      {
        break;
      }

      if (*(a1 + 48) >= 0x100uLL)
      {
        goto LABEL_9;
      }
    }

    if (v4 != 33)
    {
      goto LABEL_3;
    }

    *(a1 + 26) = 1;
LABEL_9:
    v5 = 0;
    LODWORD(v4) = 0;
    *(a1 + 24) = 257;
  }

  return v4 | v5;
}

unint64_t sub_2394A5EE4(uint64_t a1, uint64_t a2, unsigned int a3, char **a4, uint64_t *a5, uint64_t a6)
{
  sub_2393C7B90(v22);
  if (!*(a1 + 8) || (v12 = *(a2 + 8)) == 0)
  {
    v14 = 0xA100000000;
LABEL_11:
    LODWORD(v13) = 47;
    return v14 | v13;
  }

  if (v12 != 32)
  {
    v14 = 0xA200000000;
    goto LABEL_11;
  }

  sub_2393C7BB8(v22, *a6, *(a6 + 8));
  v21 = -1;
  v13 = sub_2393C8CE0(v22, 0x100uLL, 21, &v21);
  if (v13)
  {
    goto LABEL_8;
  }

  v13 = sub_2393C8364(v22, 1uLL, *a1, *(a1 + 8));
  if (v13)
  {
    goto LABEL_8;
  }

  v13 = sub_2393C8364(v22, 2uLL, *a2, *(a2 + 8));
  if (v13)
  {
    goto LABEL_8;
  }

  v13 = sub_2393C81D4(v22, 3uLL, a3);
  if (v13)
  {
    goto LABEL_8;
  }

  v16 = a4[1];
  if (v16)
  {
    v13 = sub_2393C8364(v22, 4uLL, *a4, v16);
    if (v13)
    {
      goto LABEL_8;
    }
  }

  sub_2394A646C(a5);
  a5[3] = 0;
  while (1)
  {
    v17 = a5[3];
    if (v17 >= a5[2])
    {
      break;
    }

    v18 = *a5;
    a5[3] = v17 + 1;
    if (!v18)
    {
      break;
    }

    v19 = (v18 + 24 * v17);
    v13 = sub_2393C8364(v22, ((*v19 << 48) | (v19[1] << 32) | *(v19 + 1)) ^ 0xFFFFFFFF00000000, *(v19 + 1), *(v19 + 2));
    if (v13)
    {
      goto LABEL_8;
    }
  }

  v13 = sub_2393C8DE0(v22, v21);
  if (v13 || (v13 = sub_2393C7CB8(v22), v13))
  {
LABEL_8:
    v14 = v13 & 0xFFFFFFFF00000000;
  }

  else
  {
    *a6 = sub_2393E8774(a6, 0, v23);
    *(a6 + 8) = v20;
    v14 = 0xBA00000000;
    if (v20 <= 0x384)
    {
      LODWORD(v13) = 0;
    }

    else
    {
      LODWORD(v13) = 4;
    }

    if (v20 <= 0x384)
    {
      v14 = 0;
    }
  }

  return v14 | v13;
}

unint64_t sub_2394A60BC(uint64_t a1, uint64_t a2, char **a3, char **a4, char **a5, uint64_t a6)
{
  sub_2393C7B90(v21);
  if (!*(a1 + 8) || (v12 = *(a2 + 8)) == 0)
  {
    v14 = 0xC600000000;
LABEL_10:
    LODWORD(v13) = 47;
    return v14 | v13;
  }

  if (v12 != 32)
  {
    v14 = 0xC700000000;
    goto LABEL_10;
  }

  sub_2393C7BB8(v21, *a6, *(a6 + 8));
  v20 = -1;
  v13 = sub_2393C8CE0(v21, 0x100uLL, 21, &v20);
  if (v13 || (v13 = sub_2393C8364(v21, 1uLL, *a1, *(a1 + 8)), v13) || (v13 = sub_2393C8364(v21, 2uLL, *a2, *(a2 + 8)), v13) || (v16 = a3[1]) != 0 && (v13 = sub_2393C8364(v21, 3uLL, *a3, v16), v13) || (v17 = a4[1]) != 0 && (v13 = sub_2393C8364(v21, 4uLL, *a4, v17), v13) || (v18 = a5[1]) != 0 && (v13 = sub_2393C8364(v21, 5uLL, *a5, v18), v13) || (v13 = sub_2393C8DE0(v21, v20), v13) || (v13 = sub_2393C7CB8(v21), v13))
  {
    v14 = v13 & 0xFFFFFFFF00000000;
  }

  else
  {
    *a6 = sub_2393E8774(a6, 0, v22);
    *(a6 + 8) = v19;
    if (v19 > 0x384)
    {
      v14 = 0xDF00000000;
      LODWORD(v13) = 4;
    }

    else
    {
      LODWORD(v13) = 0;
      v14 = 0;
    }
  }

  return v14 | v13;
}

unint64_t sub_2394A6260(uint64_t a1, _OWORD *a2, _OWORD *a3, void *a4, void *a5, void *a6)
{
  sub_2393C5AAC(v23);
  v22 = 21;
  *a6 = 0;
  a6[1] = 0;
  *a5 = 0;
  a5[1] = 0;
  *a4 = 0;
  a4[1] = 0;
  sub_2393C5ADC(v23, *a1, *(a1 + 8));
  v12 = sub_2393C7114(v23, 21, 256);
  if (v12 || (v12 = sub_2393C6A2C(v23, &v22), v12))
  {
    v13 = v12 & 0xFFFFFFFF00000000;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v21 = 0;
    LODWORD(v12) = 35;
LABEL_6:
    v20 = v16;
LABEL_7:
    v17 = v15;
    while (1)
    {
      v18 = sub_2393C6B34(v23);
      if (v18)
      {
        break;
      }

      v15 = v24;
      if (v24 > 0xFF)
      {
        goto LABEL_30;
      }

      if ((v16 & 1) == 0)
      {
        if (v24 != 1)
        {
          v13 = 0x10600000000;
          goto LABEL_38;
        }

LABEL_24:
        v18 = sub_2393C76AC(v23, a2);
        v16 = 1;
        v21 = 1;
        if (!v18)
        {
          goto LABEL_7;
        }

LABEL_36:
        v13 = v18 & 0xFFFFFFFF00000000;
        LODWORD(v12) = v18;
        return v12 | v13;
      }

      if (v17 >= v24)
      {
        v13 = 0x10C00000000;
LABEL_38:
        LODWORD(v12) = 43;
        return v12 | v13;
      }

      v13 = 0x12500000000;
      if (v24 <= 3u)
      {
        if (v24 != 3)
        {
          if (v24 == 1)
          {
            goto LABEL_24;
          }

          if (v24 != 2)
          {
            return v12 | v13;
          }

          v18 = sub_2393C76AC(v23, a3);
          v16 = 1;
          if (v18)
          {
            goto LABEL_36;
          }

          goto LABEL_6;
        }

        v19 = a4;
      }

      else if (v24 == 4)
      {
        v19 = a5;
      }

      else
      {
        if (v24 != 5)
        {
          return v12 | v13;
        }

        v19 = a6;
      }

      v18 = sub_2393C60CC(v23, v19);
      v16 = 1;
      v17 = v15;
      if (v18)
      {
        goto LABEL_36;
      }
    }

    if (v18 != 33)
    {
      goto LABEL_36;
    }

LABEL_30:
    if (v21 & v20)
    {
      v13 = 0;
    }

    else
    {
      v13 = 0x12C00000000;
    }

    if (v21 & v20)
    {
      LODWORD(v12) = 0;
    }

    else
    {
      LODWORD(v12) = 61;
    }
  }

  return v12 | v13;
}

uint64_t *sub_2394A646C(uint64_t *result)
{
  v1 = result[2];
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 2;
    v6 = 4;
    do
    {
      v7 = *result;
      v8 = (*result + v3);
      v9 = -1;
      v10 = v4;
      do
      {
        v12 = *v8;
        v8 += 12;
        v11 = v12;
        if (v9 >= v12)
        {
          v9 = v11;
        }

        ++v10;
      }

      while (v10 < v1);
      if (v4 >= v1)
      {
        goto LABEL_23;
      }

      v13 = v1 + v2;
      v14 = (v7 + v5);
      v15 = -1;
      do
      {
        if (v9 == *(v14 - 1) && v15 >= *v14)
        {
          v15 = *v14;
        }

        v14 += 12;
        --v13;
      }

      while (v13);
      if (v4 >= v1)
      {
LABEL_23:
        v17 = -1;
      }

      else
      {
        v16 = (v7 + v6);
        v17 = -1;
        v18 = -1;
        v19 = v4;
        do
        {
          if (v9 == *(v16 - 2) && v15 == *(v16 - 1))
          {
            v20 = *v16;
            v21 = v18 > v20;
            if (v18 >= v20)
            {
              v18 = *v16;
            }

            if (v21)
            {
              v17 = v19;
            }
          }

          ++v19;
          v16 += 6;
        }

        while (v1 != v19);
      }

      if (v17 != v4)
      {
        v22 = (v7 + 24 * v4);
        v23 = *(v22 + 2);
        v24 = *v22;
        v25 = 3 * v17;
        v26 = (v7 + 24 * v17);
        v27 = *(v26 + 2);
        *v22 = *v26;
        *(v22 + 2) = v27;
        v28 = *result + 8 * v25;
        *v28 = v24;
        *(v28 + 16) = v23;
        v1 = result[2];
      }

      ++v4;
      v3 += 24;
      --v2;
      v5 += 24;
      v6 += 24;
    }

    while (v4 < v1);
  }

  return result;
}

unint64_t sub_2394A65AC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 32))
  {
    v2 = *(a2 + 16) == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    if ((*(a2 + 8) - 1) > 0xFFFFFFEFFFFFFFFELL)
    {
      v3 = 0x8700000000;
      LODWORD(v4) = 47;
      return v3 & 0xFFFFFFFF00000000 | v4;
    }

    sub_238DCCC50(a1);
    *a1 = *(a2 + 8);
    *(a1 + 8) = *(a2 + 32);
    *(a1 + 137) = *(a2 + 16);
    *(a1 + 16) = *a2;
    *(a1 + 32) = *(a2 + 48);
    v7 = *(a2 + 64);
    v8 = *(a2 + 80);
    v9 = *(a2 + 96);
    *(a1 + 96) = *(a2 + 112);
    *(a1 + 64) = v8;
    *(a1 + 80) = v9;
    *(a1 + 48) = v7;
    *(a1 + 138) = *(a2 + 120);
    *(a1 + 141) = *(a2 + 123);
    v10 = *(a2 + 24);
    if (v10)
    {
      if (*(a2 + 122) == 1)
      {
        v4 = sub_2394A66C0(a1, v10);
        if (v4)
        {
LABEL_11:
          v3 = v4;
          return v3 & 0xFFFFFFFF00000000 | v4;
        }
      }

      else
      {
        v4 = sub_2394A6764(a1, v10);
        if (v4)
        {
          goto LABEL_11;
        }
      }
    }

    LODWORD(v4) = 0;
    v3 = 0;
    return v3 & 0xFFFFFFFF00000000 | v4;
  }

  v3 = 0x8600000000;
  LODWORD(v4) = 47;
  return v3 & 0xFFFFFFFF00000000 | v4;
}

uint64_t sub_2394A66C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if ((*(a1 + 140) & 1) == 0)
    {
      v4 = *(a1 + 144);
      if (v4)
      {
        (**v4)(*(a1 + 144));
        j__free(v4);
      }
    }

    v5 = 0;
    v6 = 0;
    *(a1 + 140) = 1;
    *(a1 + 144) = a2;
  }

  else
  {
    v5 = 0x13000000000;
    v6 = 47;
  }

  return v6 | v5;
}

unint64_t sub_2394A6764(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 0x11A0000002FLL;
  }

  v11 = 0;
  v3 = (*(*a2 + 56))(a2, v10);
  v4 = v3;
  if (!v3)
  {
    if (*(a1 + 140) == 1)
    {
      *(a1 + 144) = 0;
      *(a1 + 140) = 0;
    }

    else
    {
      v7 = *(a1 + 144);
      if (v7)
      {
LABEL_10:
        v9 = (*(*v7 + 64))(v7, v10);
        v4 = v9;
        v5 = v9 & 0xFFFFFFFF00000000;
        goto LABEL_12;
      }
    }

    v8 = sub_2393D52C4(0x260uLL);
    if (!v8)
    {
      *(a1 + 144) = 0;
      v5 = 0x12A00000000;
      v4 = 11;
      goto LABEL_12;
    }

    v7 = v8;
    bzero(v8 + 2, 0x250uLL);
    *v7 = &unk_284BB8F28;
    v7[1] = &unk_284BB9138;
    *(a1 + 144) = v7;
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFF00000000;
LABEL_12:
  sub_2393F9144(v10, 97);
  return v5 | v4;
}

void sub_2394A6910(uint64_t a1, uint64_t a2)
{
  sub_238DCCC50(a1);
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  v6 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = v4;
  *(a1 + 138) = *(a2 + 138);
  *(a1 + 141) = *(a2 + 141);
  v7 = sub_239283EA0(a2);
  v9 = (a1 + 104);
  if (v8)
  {
    if (v8 >= 0x20)
    {
      v10 = 32;
    }

    else
    {
      v10 = v8;
    }

    memcpy((a1 + 104), v7, v10);
    v9 += v10;
  }

  *v9 = 0;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 140) = *(a2 + 140);
  *(a2 + 144) = 0;
  *(a2 + 140) = 0;

  sub_238DCCC50(a2);
}

uint64_t sub_2394A69F4(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 104);
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *a2;
    if (v3 >= 0x20)
    {
      v5 = 32;
    }

    else
    {
      v5 = v3;
    }

    memcpy((a1 + 104), v4, v5);
    v2 += v5;
  }

  *v2 = 0;
  return 0;
}

unint64_t sub_2394A6A48(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  sub_2393C7B90(v10);
  sub_2393C7BB8(v10, v13, 0x2CuLL);
  v9 = 0;
  v4 = sub_2393C8CE0(v10, 0x100uLL, 21, &v9);
  if (!v4)
  {
    v4 = sub_2393C818C(v10, 0, *(a1 + 138));
    if (!v4)
    {
      v5 = strlen((a1 + 104));
      sub_238DB9BD8(v12, a1 + 104, v5);
      v4 = sub_2393C85FC(v10, 1uLL, v12[0], v12[1]);
      if (!v4)
      {
        v4 = sub_2393C8DE0(v10, v9);
        if (!v4)
        {
          v8 = v11;
          if (HIWORD(v11))
          {
            v6 = 0xB900000000;
            LODWORD(v4) = 25;
            return v6 | v4;
          }

          sub_239296DA0(v12, "f/%x/m", *(a1 + 137));
          v4 = (*(*a2 + 24))(a2, v12, v13, v8);
          if (!v4)
          {
            return 0;
          }
        }
      }
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  return v6 | v4;
}

unint64_t sub_2394A6BB4(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v21[6] = *MEMORY[0x277D85DE8];
  *(a1 + 137) = a3;
  v8 = sub_2394A03F4(a5, a1, (a1 + 8));
  if (v8)
  {
    goto LABEL_11;
  }

  v21[0] = &unk_2395D6B90;
  v8 = sub_2394A0354(a4, v21);
  if (v8)
  {
    goto LABEL_11;
  }

  v9 = v21[0];
  *(a1 + 32) = *v21[0];
  v11 = *(v9 + 32);
  v10 = *(v9 + 48);
  v12 = *(v9 + 16);
  *(a1 + 96) = *(v9 + 64);
  *(a1 + 64) = v11;
  *(a1 + 80) = v10;
  *(a1 + 48) = v12;
  v20[0] = &__src;
  v20[1] = 8;
  v8 = sub_2393F3224(a1 + 24, *(a1 + 8), v20);
  if (v8)
  {
    goto LABEL_11;
  }

  *(a1 + 16) = bswap64(__src);
  v18 = 44;
  sub_239296DA0(v20, "f/%x/m", *(a1 + 137));
  v8 = (*(*a2 + 16))(a2, v20, v21, &v18);
  if (v8)
  {
    goto LABEL_11;
  }

  sub_2393C5AAC(v20);
  sub_2393C5ADC(v20, v21, v18);
  v8 = sub_2393C7114(v20, 21, 256);
  if (v8)
  {
    goto LABEL_11;
  }

  v17 = 0;
  v8 = sub_2393C6A2C(v20, &v17);
  if (v8)
  {
    goto LABEL_11;
  }

  v8 = sub_2393C6FD0(v20, 0);
  if (v8)
  {
    goto LABEL_11;
  }

  v8 = sub_238F36E54(v20, (a1 + 138));
  if (v8)
  {
    goto LABEL_11;
  }

  v8 = sub_2393C6FD0(v20, 1);
  if (v8)
  {
    goto LABEL_11;
  }

  __src = 0uLL;
  v8 = sub_2393C61E0(v20, &__src);
  if (v8)
  {
    goto LABEL_11;
  }

  v15 = *(&__src + 1);
  if (*(&__src + 1) > 0x20uLL)
  {
    v13 = 0xED00000000;
    LODWORD(v8) = 25;
    return v13 | v8;
  }

  v16 = (a1 + 104);
  if (*(&__src + 1))
  {
    memcpy(v16, __src, *(&__src + 1));
    v16 += v15;
  }

  *v16 = 0;
  v8 = sub_2393C6A98(v20, v17);
  if (v8 || (v8 = sub_2393C6AE0(v20), v8))
  {
LABEL_11:
    v13 = v8 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v8) = 0;
    v13 = 0;
  }

  return v13 | v8;
}

unint64_t sub_2394A6DF0(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if ((a2 - 1) > 0xFD)
  {
    v5 = 113;
    LODWORD(v6) = 258;
  }

  else
  {
    v2 = *(a1 + 2584);
    if (v2)
    {
      sub_239296DA0(&buf, "f/%x/m", a2);
      v4 = (*(*v2 + 32))(v2, &buf);
      v5 = v4;
      v6 = HIDWORD(v4);
      if (v4)
      {
        if (v4 == 160)
        {
          v7 = sub_2393D9044(0x11u);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 67109120;
            HIDWORD(buf) = a2;
            _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Warning: metadata not found during delete of fabric 0x%x", &buf, 8u);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393D5320(17, 1, "Warning: metadata not found during delete of fabric 0x%x", a2);
          }

          v5 = 160;
        }

        else
        {
          v8 = sub_2393D9044(0x11u);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            v9 = sub_2393C9138();
            LODWORD(buf) = 67109378;
            HIDWORD(buf) = a2;
            v13 = 2080;
            v14 = v9;
            _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Error deleting metadata for fabric fabric 0x%x: %s", &buf, 0x12u);
          }

          if (sub_2393D5398(1u))
          {
            v10 = sub_2393C9138();
            sub_2393D5320(17, 1, "Error deleting metadata for fabric fabric 0x%x: %s", a2, v10);
          }
        }
      }
    }

    else
    {
      v5 = 3;
      LODWORD(v6) = 259;
    }
  }

  return v5 | (v6 << 32);
}

unint64_t sub_2394A700C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, void *a6, unint64_t *a7, void *a8, uint64_t a9, uint64_t a10)
{
  v37 = *MEMORY[0x277D85DE8];
  v18 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v18))
  {
    *buf = 136315394;
    *&buf[4] = "Fabric";
    v32 = 2080;
    v33 = "ValidateIncomingNOCChain";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v18, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  *buf = -1;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  sub_23949ED54(buf);
  v34 |= 1u;
  v35 |= 1u;
  v36 = a5;
  v19 = sub_2393D9044(0x11u);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *v29 = 0;
    _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_DEFAULT, "Validating NOC chain", v29, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(17, 2, "Validating NOC chain");
  }

  v20 = sub_2394A7394(*a1, a1[1], *a2, a2[1], *a3, a3[1], buf, a6, a7, a8, a9, a10);
  v21 = v20;
  if (v20)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v22 = sub_2393C9138();
      *v29 = 136315138;
      v30 = v22;
      _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "Failed NOC chain validation, VerifyCredentials returned: %s", v29, 0xCu);
    }

    v20 = sub_2393D5398(1u);
    if (v20)
    {
      v23 = sub_2393C9138();
      sub_2393D5320(17, 1, "Failed NOC chain validation, VerifyCredentials returned: %s", v23);
    }

    v24 = v21 | 0x5C;
    if (v21 != 92)
    {
      v24 = 0x16500000050;
    }

    v25 = v24 & 0xFFFFFFFF00000000;
    v26 = v24 & 0x5C;
  }

  else if (!a4 || *a7 == a4)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 0;
      _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_DEFAULT, "NOC chain validation successful", v29, 2u);
    }

    v20 = sub_2393D5398(2u);
    if (v20)
    {
      sub_2393D5320(17, 2, "NOC chain validation successful");
    }

    v26 = 0;
    v25 = 0;
  }

  else
  {
    v25 = 0x16D00000000;
    v26 = 80;
  }

  v27 = sub_23948B4CC(v20);
  if (os_signpost_enabled(v27))
  {
    *buf = 136315394;
    *&buf[4] = "Fabric";
    v32 = 2080;
    v33 = "ValidateIncomingNOCChain";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v27, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  return v25 | v26;
}

unint64_t sub_2394A7394(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, void *a8, unint64_t *a9, void *a10, uint64_t a11, uint64_t a12)
{
  v47[1] = *MEMORY[0x277D85DE8];
  sub_23949D96C(&v39);
  v20 = sub_23949D9EC(&v39, 3u);
  v21 = v20;
  if (!v20)
  {
    v20 = sub_23949DBA0(&v39, a5, a6, 2);
    v21 = v20;
    if (!v20)
    {
      if (!a4 || (v20 = sub_23949DBA0(&v39, a3, a4, 1), v21 = v20, !v20))
      {
        v20 = sub_23949DBA0(&v39, a1, a2, 1);
        v21 = v20;
        if (!v20)
        {
          v24 = v39 + 424 * (v40 - 1);
          v38 = 0;
          v20 = sub_23949E60C(&v39, v24 + 16, v24 + 336, a7, &v38);
          v21 = v20;
          if (!v20)
          {
            v20 = sub_2394A0148(v39 + 424 * (v40 - 1), a10, a9);
            v21 = v20;
            if (!v20)
            {
              v37 = 0;
              if (a4)
              {
                v25 = sub_2394A04BC(v39 + 424, &v37);
                if (v25 != 216)
                {
                  if (v25)
                  {
                    goto LABEL_19;
                  }

                  if (v37 != *a9)
                  {
                    v22 = 0x1B800000000;
                    LODWORD(v25) = 198;
                    goto LABEL_20;
                  }
                }
              }

              v36 = 0;
              v25 = sub_2394A04BC(v39, &v36);
              if (!v25)
              {
                v26 = v36;
                if (v36 != *a9)
                {
                  v22 = 0x1C500000000;
                  LODWORD(v25) = 89;
                  goto LABEL_20;
                }

                goto LABEL_18;
              }

              if (v25 == 216)
              {
                v26 = *a9;
LABEL_18:
                v35[0] = v47;
                v35[1] = 8;
                v41 = &unk_284BB9138;
                v27 = *(v39 + 360);
                v42 = *v27;
                v29 = v27[2];
                v28 = v27[3];
                v30 = *(v27 + 64);
                v43 = v27[1];
                v44 = v29;
                v46 = v30;
                v45 = v28;
                v25 = sub_2393F3224(&v41, v26, v35);
                if (!v25)
                {
                  *a8 = bswap64(v47[0]);
                  if (a12)
                  {
                    *(a12 + 24) = v43;
                    *(a12 + 40) = v44;
                    *(a12 + 56) = v45;
                    *(a12 + 72) = v46;
                    *(a12 + 8) = v42;
                  }

                  v22 = 0;
                  LODWORD(v25) = 0;
                  v31 = *(v39 + 424 * (v40 - 1) + 360);
                  *(a11 + 8) = *v31;
                  v33 = *(v31 + 32);
                  v32 = *(v31 + 48);
                  v34 = *(v31 + 16);
                  *(a11 + 72) = *(v31 + 64);
                  *(a11 + 24) = v34;
                  *(a11 + 56) = v32;
                  *(a11 + 40) = v33;
                  goto LABEL_20;
                }
              }

LABEL_19:
              v22 = v25 & 0xFFFFFFFF00000000;
LABEL_20:
              v21 = v25;
              goto LABEL_4;
            }
          }
        }
      }
    }
  }

  v22 = v20 & 0xFFFFFFFF00000000;
LABEL_4:
  sub_23949D978(&v39);
  return v21 | v22;
}

unint64_t sub_2394A7698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v8))
  {
    v14 = 136315394;
    v15 = "Fabric";
    v16 = 2080;
    v17 = "SignWithOpKeypair";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v14, 0x16u);
  }

  v9 = *(a1 + 144);
  if (v9)
  {
    v9 = (*(*v9 + 24))(v9, a2, a3, a4);
    v10 = v9 & 0xFFFFFFFF00000000;
    v11 = v9;
  }

  else
  {
    v10 = 0x17700000000;
    v11 = 16;
  }

  v12 = sub_23948B4CC(v9);
  if (os_signpost_enabled(v12))
  {
    v14 = 136315394;
    v15 = "Fabric";
    v16 = 2080;
    v17 = "SignWithOpKeypair";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v14, 0x16u);
  }

  return v10 | v11;
}

uint64_t sub_2394A7848(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC(a1);
  v5 = os_signpost_enabled(v4);
  if (v5)
  {
    v13 = 136315394;
    v14 = "Fabric";
    v15 = 2080;
    v16 = "FetchRootPubKey";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v13, 0x16u);
  }

  if (*(a1 + 137) && (*a1 - 1) <= 0xFFFFFFEFFFFFFFFELL)
  {
    v6 = 0;
    v7 = 0;
    *(a2 + 8) = *(a1 + 32);
    v8 = *(a1 + 48);
    v9 = *(a1 + 64);
    v10 = *(a1 + 80);
    *(a2 + 72) = *(a1 + 96);
    *(a2 + 56) = v10;
    *(a2 + 40) = v9;
    *(a2 + 24) = v8;
  }

  else
  {
    v7 = 0x17F00000000;
    v6 = 16;
  }

  v11 = sub_23948B4CC(v5);
  if (os_signpost_enabled(v11))
  {
    v13 = 136315394;
    v14 = "Fabric";
    v15 = 2080;
    v16 = "FetchRootPubKey";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v13, 0x16u);
  }

  return v7 | v6;
}

unint64_t sub_2394A79FC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, void *a8, unint64_t *a9, void *a10, uint64_t a11, uint64_t a12)
{
  v32 = *MEMORY[0x277D85DE8];
  v20 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v20))
  {
    *buf = 136315394;
    v29 = "Fabric";
    v30 = 2080;
    v31 = "VerifyCredentials";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v20, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  sub_23947632C("src/credentials/FabricTable.cpp", 393);
  v26 = buf;
  v27 = 400;
  v21 = sub_2394A7BFC(a1, a2, &v26);
  v22 = v21;
  if (!v21)
  {
    sub_238DB6950(v25, v26, v27);
    v21 = sub_2394A7394(a3, a4, a5, a6, v25[0], v25[1], a7, a8, a9, a10, a11, a12);
    v22 = v21;
  }

  v23 = sub_23948B4CC(v21);
  if (os_signpost_enabled(v23))
  {
    *buf = 136315394;
    v29 = "Fabric";
    v30 = 2080;
    v31 = "VerifyCredentials";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v23, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  return v22;
}

unint64_t sub_2394A7BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v6))
  {
    v12 = 136315394;
    v13 = "Fabric";
    v14 = 2080;
    v15 = "FetchRootCert";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v12, 0x16u);
  }

  v7 = *(a1 + 2600);
  if (v7)
  {
    v7 = (*(*v7 + 120))(v7, a2, 0, a3);
    v8 = v7 & 0xFFFFFFFF00000000;
    v9 = v7;
  }

  else
  {
    v8 = 0x26200000000;
    v9 = 3;
  }

  v10 = sub_23948B4CC(v7);
  if (os_signpost_enabled(v10))
  {
    v12 = 136315394;
    v13 = "Fabric";
    v14 = 2080;
    v15 = "FetchRootCert";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v12, 0x16u);
  }

  return v8 | v9;
}

uint64_t sub_2394A7DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v13[10] = *MEMORY[0x277D85DE8];
  v13[0] = &unk_284BB9138;
  if (*(a1 + 2569) && (*(a1 + 2432) - 1) <= 0xFFFFFFEFFFFFFFFELL && (~*(a1 + 2644) & 5) == 0)
  {
    v8 = a1 + 2432;
    v9 = sub_2394A7848(a1 + 2432, v13);
    v10 = a4;
    if (a4)
    {
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v10 = *v8;
      if (!v9)
      {
LABEL_8:
        if (sub_23928F6C0(a2, v13) && *(v7 + 2440) == a3 && v10 == *v8)
        {
          return v8;
        }
      }
    }
  }

  v8 = 2432;
  while (1)
  {
    v11 = a4;
    if (!a4)
    {
      v11 = *v7;
    }

    if (*(v7 + 137) && (*v7 - 1) <= 0xFFFFFFEFFFFFFFFELL && !sub_2394A7848(v7, v13) && sub_23928F6C0(a2, v13) && *(v7 + 8) == a3 && v11 == *v7)
    {
      break;
    }

    v7 += 152;
    v8 -= 152;
    if (!v8)
    {
      return v8;
    }
  }

  return v7;
}

uint64_t sub_2394A7F48(uint64_t result, int a2)
{
  if (*(result + 2569) && (*(result + 2432) - 1) <= 0xFFFFFFEFFFFFFFFELL && ((~*(result + 2644) & 5) == 0 ? (v2 = *(result + 2569) == a2) : (v2 = 0), v2))
  {
    result += 2432;
  }

  else
  {
    v3 = 2432;
    while (1)
    {
      if (*(result + 137))
      {
        if (*(result + 137) == a2 && (*result - 1) < 0xFFFFFFEFFFFFFFFFLL)
        {
          break;
        }
      }

      result += 152;
      v3 -= 152;
      if (!v3)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2394A7FC0(uint64_t result, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (*(result + 2569) && (*(result + 2432) - 1) <= 0xFFFFFFEFFFFFFFFELL && ((~*(result + 2644) & 5) == 0 ? (v2 = *(result + 2569) == a2) : (v2 = 0), v2))
  {
    result += 2432;
  }

  else
  {
    v3 = 2432;
    while (1)
    {
      if (*(result + 137))
      {
        if (*(result + 137) == a2 && (*result - 1) < 0xFFFFFFEFFFFFFFFFLL)
        {
          break;
        }
      }

      result += 152;
      v3 -= 152;
      if (!v3)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2394A803C(uint64_t result, uint64_t a2)
{
  if (*(result + 2569) && (*(result + 2432) - 1) <= 0xFFFFFFEFFFFFFFFELL && (~*(result + 2644) & 5) == 0 && *(result + 2448) == a2)
  {
    result += 2432;
  }

  else
  {
    v2 = 2432;
    while (!*(result + 137) || (*result - 1) > 0xFFFFFFEFFFFFFFFELL || *(result + 16) != a2)
    {
      result += 152;
      v2 -= 152;
      if (!v2)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2394A80C4(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC(a1);
  v5 = os_signpost_enabled(v4);
  if (v5)
  {
    v11 = 136315394;
    v12 = "Fabric";
    v13 = 2080;
    v14 = "FetchPendingNonFabricAssociatedRootCert";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v11, 0x16u);
  }

  if (!*(a1 + 2600))
  {
    v7 = 0x26900000000;
    v8 = 3;
    goto LABEL_11;
  }

  v6 = *(a1 + 2644);
  if ((v6 & 2) != 0)
  {
    if ((v6 & 8) == 0)
    {
      v5 = sub_2394A7BFC(a1, *(a1 + 2616), a2);
      v7 = v5 & 0xFFFFFFFF00000000;
      v8 = v5;
      goto LABEL_11;
    }

    v7 = 0x27300000000;
  }

  else
  {
    v7 = 0x26C00000000;
  }

  v8 = 216;
LABEL_11:
  v9 = sub_23948B4CC(v5);
  if (os_signpost_enabled(v9))
  {
    v11 = 136315394;
    v12 = "Fabric";
    v13 = 2080;
    v14 = "FetchPendingNonFabricAssociatedRootCert";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v11, 0x16u);
  }

  return v7 | v8;
}

unint64_t sub_2394A8274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v6))
  {
    *v19 = 136315394;
    *&v19[4] = "Fabric";
    *&v19[12] = 2080;
    *&v19[14] = "FetchICACert";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", v19, 0x16u);
  }

  v7 = *(a1 + 2600);
  if (v7)
  {
    v7 = (*(*v7 + 120))(v7, a2, 1, a3);
    v8 = v7;
    v9 = v7;
    if (v7 == 216 && (v7 = (*(**(a1 + 2600) + 40))(*(a1 + 2600), a2, 2), v7))
    {
      v7 = sub_238DB8498(a3, 0, v10, v11, v12, v13, v14, v15, *v19, *&v19[8], *&v19[16], v20, v21);
      v9 = 0;
      v16 = 0;
    }

    else
    {
      v16 = v8 & 0xFFFFFFFF00000000;
    }
  }

  else
  {
    v16 = 0x27C00000000;
    v9 = 3;
  }

  v17 = sub_23948B4CC(v7);
  if (os_signpost_enabled(v17))
  {
    *v19 = 136315394;
    *&v19[4] = "Fabric";
    *&v19[12] = 2080;
    *&v19[14] = "FetchICACert";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v17, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", v19, 0x16u);
  }

  return v16 | v9;
}

unint64_t sub_2394A847C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v6))
  {
    v12 = 136315394;
    v13 = "Fabric";
    v14 = 2080;
    v15 = "FetchNOCCert";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v12, 0x16u);
  }

  v7 = *(a1 + 2600);
  if (v7)
  {
    v7 = (*(*v7 + 120))(v7, a2, 2, a3);
    v8 = v7 & 0xFFFFFFFF00000000;
    v9 = v7;
  }

  else
  {
    v8 = 0x29000000000;
    v9 = 3;
  }

  v10 = sub_23948B4CC(v7);
  if (os_signpost_enabled(v10))
  {
    v12 = 136315394;
    v13 = "Fabric";
    v14 = 2080;
    v15 = "FetchNOCCert";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v12, 0x16u);
  }

  return v8 | v9;
}

unint64_t sub_2394A8620(uint64_t a1, int a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v6))
  {
    v12 = 136315394;
    v13 = "Fabric";
    v14 = 2080;
    v15 = "FetchRootPubkey";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v12, 0x16u);
  }

  v7 = sub_2394A7FC0(a1, a2);
  if (v7)
  {
    v7 = sub_2394A7848(v7, a3);
    v8 = v7 & 0xFFFFFFFF00000000;
    v9 = v7;
  }

  else
  {
    v8 = 0x29800000000;
    v9 = 113;
  }

  v10 = sub_23948B4CC(v7);
  if (os_signpost_enabled(v10))
  {
    v12 = 136315394;
    v13 = "Fabric";
    v14 = 2080;
    v15 = "FetchRootPubkey";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v12, 0x16u);
  }

  return v8 | v9;
}

unint64_t sub_2394A87A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = &v10;
  v9 = 400;
  v4 = sub_2394A847C(a1, a2, &v8);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    sub_238DB6950(v7, v8, v9);
    v4 = sub_2394A052C(v7, a3);
    v5 = v4 & 0xFFFFFFFF00000000;
    if (!v4)
    {
      LODWORD(v4) = 0;
      v5 = 0;
    }
  }

  return v5 | v4;
}

unint64_t sub_2394A884C(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 2584);
  if (v2)
  {
    if (!a2)
    {
      sub_239535CEC();
    }

    v3 = *(a2 + 137);
    if ((v3 - 1) > 0xFD)
    {
      v5 = 0x2AB00000000;
      LODWORD(v4) = 172;
    }

    else
    {
      v4 = sub_2394A6A48(a2, v2);
      if (v4)
      {
        v5 = v4 & 0xFFFFFFFF00000000;
      }

      else
      {
        v6 = sub_2393D9044(0x11u);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v9 = v3;
          _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "Metadata for Fabric 0x%x persisted to storage.", buf, 8u);
        }

        if (sub_2393D5398(2u))
        {
          sub_2393D5320(17, 2, "Metadata for Fabric 0x%x persisted to storage.", v3);
        }

        LODWORD(v4) = 0;
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0x2A700000000;
    LODWORD(v4) = 3;
  }

  return v5 | v4;
}

unint64_t sub_2394A8980(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v41 = *MEMORY[0x277D85DE8];
  if (*(a1 + 2584))
  {
    if (*(a2 + 137) && (*a2 - 1) < 0xFFFFFFEFFFFFFFFFLL)
    {
      v6 = 0x2B800000000;
      v7 = 3;
    }

    else
    {
      v24 = &v40;
      v25 = 400;
      v22 = &v39;
      v23 = 400;
      v8 = sub_2394A847C(a1, a3, &v24);
      if (v8 || (v8 = sub_2394A7BFC(a1, a3, &v22), v8) || (v9 = *(a1 + 2584), sub_238DB6950(&buf, v22, v23), sub_238DB6950(v21, v24, v25), v8 = sub_2394A6BB4(a2, v9, a3, &buf, v21), v8))
      {
        v10 = sub_2393D9044(0x11u);
        v7 = v8;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = sub_2393C9138();
          LODWORD(buf) = 67109378;
          HIDWORD(buf) = a3;
          v27 = 2080;
          *v28 = v11;
          _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Failed to load Fabric (0x%x): %s", &buf, 0x12u);
        }

        v6 = v8 & 0xFFFFFFFF00000000;
        if (sub_2393D5398(1u))
        {
          v12 = sub_2393C9138();
          sub_2393D5320(17, 1, "Failed to load Fabric (0x%x): %s", a3, v12);
        }

        sub_238DCCC50(a2);
      }

      else
      {
        v14 = sub_2393D9044(0x11u);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a2 + 137);
          v17 = a2[1];
          v16 = a2[2];
          v18 = *a2;
          v19 = HIDWORD(*a2);
          v20 = *(a2 + 69);
          LODWORD(buf) = 67110912;
          HIDWORD(buf) = v15;
          v27 = 1024;
          *v28 = HIDWORD(v16);
          *&v28[4] = 1024;
          *&v28[6] = v16;
          v29 = 1024;
          v30 = HIDWORD(v17);
          v31 = 1024;
          v32 = v17;
          v33 = 1024;
          v34 = v19;
          v35 = 1024;
          v36 = v18;
          v37 = 1024;
          v38 = v20;
          _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_DEFAULT, "Fabric index 0x%x was retrieved from storage. Compressed FabricId 0x%08X%08X, FabricId 0x%08X%08X, NodeId 0x%08X%08X, VendorId 0x%04X", &buf, 0x32u);
        }

        if (sub_2393D5398(2u))
        {
          sub_2393D5320(17, 2, "Fabric index 0x%x was retrieved from storage. Compressed FabricId 0x%08X%08X, FabricId 0x%08X%08X, NodeId 0x%08X%08X, VendorId 0x%04X", *(a2 + 137), HIDWORD(a2[2]), a2[2], HIDWORD(a2[1]), a2[1], HIDWORD(*a2), *a2, *(a2 + 69));
        }

        v7 = 0;
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0x2B700000000;
    v7 = 47;
  }

  return v6 | v7;
}

unint64_t sub_2394A8CAC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9, uint64_t a10, _BYTE *a11)
{
  v30 = *MEMORY[0x277D85DE8];
  v24[2] = a3;
  v24[3] = a4;
  v24[0] = a5;
  v24[1] = a6;
  v23[0] = a7;
  v23[1] = a8;
  if (!a11)
  {
    return 0x4F0000002FLL;
  }

  v28[0] = &unk_284BB8F28;
  v28[1] = &unk_284BB9138;
  v29 = 0;
  v27 = 0;
  if (!a10)
  {
    v18 = 0;
    goto LABEL_8;
  }

  if (a10 != 97)
  {
    v22 = 0x5900000000;
    v20 = 47;
    goto LABEL_12;
  }

  v13 = *a9;
  v14 = a9[2];
  v25[1] = a9[1];
  v25[2] = v14;
  v25[0] = v13;
  v15 = a9[3];
  v16 = a9[4];
  v17 = a9[5];
  v26 = *(a9 + 96);
  v25[4] = v16;
  v25[5] = v17;
  v25[3] = v15;
  v27 = 97;
  v18 = v28;
  v19 = sub_2393F9498(v28, v25);
  v20 = v19;
  if (!v19)
  {
LABEL_8:
    v19 = sub_2394AB5D4(a1);
    v20 = v19;
    if (!v19)
    {
      v19 = sub_2394ABA3C(a1, v23, v24, 65521, v18, 0, 0, a11);
      v20 = v19;
      if (!v19 && (a2 & 1) == 0)
      {
        v19 = sub_2394AC43C(a1);
        v20 = v19;
      }

      if (!v20)
      {
        goto LABEL_10;
      }
    }
  }

  sub_2394A9DC0(a1);
LABEL_10:
  v22 = v19 & 0xFFFFFFFF00000000;
LABEL_12:
  sub_2393F9144(v25, 97);
  sub_2393F970C(v28);
  return v22 | v20;
}

uint64_t sub_2394A8ED0(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v4))
  {
    v9 = 136315394;
    v10 = "Fabric";
    v11 = 2080;
    v12 = "NotifyFabricUpdated";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v9, 0x16u);
  }

  v5 = *(a1 + 2608);
  if (v5)
  {
    do
    {
      v6 = v5[1];
      (*(*v5 + 40))(v5, a1, a2);
      v5 = v6;
    }

    while (v6);
  }

  v7 = sub_23948B4CC(v5);
  if (os_signpost_enabled(v7))
  {
    v9 = 136315394;
    v10 = "Fabric";
    v11 = 2080;
    v12 = "NotifyFabricUpdated";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v9, 0x16u);
  }

  return 0;
}

uint64_t sub_2394A905C(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v4))
  {
    v9 = 136315394;
    v10 = "Fabric";
    v11 = 2080;
    v12 = "NotifyFabricCommitted";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v9, 0x16u);
  }

  v5 = *(a1 + 2608);
  if (v5)
  {
    do
    {
      v6 = v5[1];
      (*(*v5 + 32))(v5, a1, a2);
      v5 = v6;
    }

    while (v6);
  }

  v7 = sub_23948B4CC(v5);
  if (os_signpost_enabled(v7))
  {
    v9 = 136315394;
    v10 = "Fabric";
    v11 = 2080;
    v12 = "NotifyFabricCommitted";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v9, 0x16u);
  }

  return 0;
}

unint64_t sub_2394A91E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char a5, __int16 a6, int a7)
{
  v74 = *MEMORY[0x277D85DE8];
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v72 = &unk_284BB9138;
  v73 = 0xFFFF;
  if (a3)
  {
    v13 = 2432;
    v14 = 11;
    for (i = a1; *(i + 137) && (*i - 1) < 0xFFFFFFEFFFFFFFFFLL; i += 152)
    {
      v13 -= 152;
      if (!v13)
      {
        v16 = 0x34100000000;
        return v14 | v16;
      }
    }

    v54 = a4;
    v53 = a5;
    v20 = 0;
    v22 = 0;
    v19 = 0;
    LOWORD(v73) = a6;
    v69 = a2;
LABEL_10:
    v60 = &unk_284BBC458;
    v61 = 0;
    v66[0] = &unk_284BB9138;
    v23 = sub_2393D52C4(0x190uLL);
    if (v23)
    {
      v24 = v23;
      v52 = a7;
      v25 = sub_2393D52C4(0x190uLL);
      if (v25)
      {
        v26 = v25;
        v51 = a3;
        v27 = sub_2393D52C4(0x190uLL);
        if (v27)
        {
          v28 = v27;
          __src = v20;
          sub_238DB9BD8(&buf, v24, 400);
          sub_238DB9BD8(v59, v26, 400);
          sub_238DB9BD8(v58, v28, 400);
          v29 = sub_2394A847C(a1, a2, &buf);
          if (v29 || (v29 = sub_2394A8274(a1, a2, v59), v29) || (v29 = sub_2394A7BFC(a1, a2, v58), v29))
          {
            v16 = v29 & 0xFFFFFFFF00000000;
            j__free(v28);
            j__free(v26);
            j__free(v24);
LABEL_23:
            v14 = v29;
            return v14 | v16;
          }

          sub_238DB6950(v57, buf, *(&buf + 1));
          sub_238DB6950(v56, v59[0], v59[1]);
          sub_238DB6950(v55, v58[0], v58[1]);
          v29 = sub_2394A700C(v57, v56, v55, v19, &v60, &v67, &v71, &v68, v66, &v72);
          j__free(v28);
          j__free(v26);
          j__free(v24);
          if (v29)
          {
LABEL_26:
            v16 = v29 & 0xFFFFFFFF00000000;
            goto LABEL_23;
          }

          if (v54)
          {
            v31 = (*(*v54 + 40))(v54);
            v33 = v51;
            v32 = v52;
            if (!sub_23928F6C0(v31, v66))
            {
              v16 = 0x37600000000;
              LODWORD(v29) = 197;
              goto LABEL_23;
            }

            v70 = v54;
            BYTE2(v73) = v53;
          }

          else
          {
            v42 = *(a1 + 2592);
            v33 = v51;
            v32 = v52;
            if (!v42)
            {
              v16 = 0x38900000000;
              LODWORD(v29) = 3;
              goto LABEL_23;
            }

            v43 = (*(*v42 + 16))(v42);
            v44 = **(a1 + 2592);
            if (v43)
            {
              v29 = (*(v44 + 40))();
              if (v29)
              {
                goto LABEL_26;
              }
            }

            else if (!(*(v44 + 24))())
            {
              v16 = 0x38400000000;
              LODWORD(v29) = 16;
              goto LABEL_23;
            }
          }

          HIBYTE(v73) = v32 == 0;
          v29 = sub_2394A65AC(i, &v67);
          if (!v29)
          {
            v34 = (i + 104);
            if (v22)
            {
              if (v22 >= 0x20)
              {
                v35 = 32;
              }

              else
              {
                v35 = v22;
              }

              memcpy((i + 104), __src, v35);
              v34 += v35;
            }

            *v34 = 0;
            v36 = sub_2393D9044(0x11u);
            v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
            if (v33)
            {
              if (v37)
              {
                v38 = *(i + 137);
                LODWORD(buf) = 67109120;
                DWORD1(buf) = v38;
                _os_log_impl(&dword_238DAE000, v36, OS_LOG_TYPE_DEFAULT, "Added new fabric at index: 0x%x", &buf, 8u);
              }

              if (sub_2393D5398(2u))
              {
                sub_2393D5320(17, 2, "Added new fabric at index: 0x%x", *(i + 137));
              }

              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                v39 = *(i + 16);
                v40 = *i;
                v41 = HIDWORD(*i);
                *&buf = __PAIR64__(HIDWORD(v39), 67109888);
                WORD4(buf) = 1024;
                *(&buf + 10) = v39;
                HIWORD(buf) = 1024;
                v63 = v41;
                v64 = 1024;
                v65 = v40;
                _os_log_impl(&dword_238DAE000, v36, OS_LOG_TYPE_DEFAULT, "Assigned compressed fabric ID: 0x%08X%08X, node ID: 0x%08X%08X", &buf, 0x1Au);
              }

              if (sub_2393D5398(2u))
              {
                sub_2393D5320(17, 2, "Assigned compressed fabric ID: 0x%08X%08X, node ID: 0x%08X%08X");
              }
            }

            else
            {
              if (v37)
              {
                v45 = *(i + 137);
                v46 = *i;
                v47 = HIDWORD(*i);
                LODWORD(buf) = 67109632;
                DWORD1(buf) = v45;
                WORD4(buf) = 1024;
                *(&buf + 10) = v47;
                HIWORD(buf) = 1024;
                v63 = v46;
                _os_log_impl(&dword_238DAE000, v36, OS_LOG_TYPE_DEFAULT, "Updated fabric at index: 0x%x, Node ID: 0x%08X%08X", &buf, 0x14u);
              }

              if (sub_2393D5398(2u))
              {
                sub_2393D5320(17, 2, "Updated fabric at index: 0x%x, Node ID: 0x%08X%08X");
              }
            }

            if (sub_2394B7A64(a1 + 2624, v61))
            {
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                v48 = sub_2393C9138();
                LODWORD(buf) = 136315138;
                *(&buf + 4) = v48;
                _os_log_impl(&dword_238DAE000, v36, OS_LOG_TYPE_ERROR, "Failed to update pending Last Known Good Time: %s", &buf, 0xCu);
              }

              if (sub_2393D5398(1u))
              {
                v49 = sub_2393C9138();
                sub_2393D5320(17, 1, "Failed to update pending Last Known Good Time: %s", v49);
              }
            }

            v16 = 0;
            LODWORD(v29) = 0;
            if (v33)
            {
              ++*(a1 + 2642);
            }

            goto LABEL_23;
          }

          goto LABEL_26;
        }

        j__free(v26);
        v16 = 0x36200000000;
      }

      else
      {
        v16 = 0x36100000000;
      }

      j__free(v24);
    }

    else
    {
      v16 = 0x36000000000;
    }

    LODWORD(v29) = 11;
    goto LABEL_23;
  }

  v17 = sub_2394A7FC0(a1, a2);
  if (v17)
  {
    v18 = v17;
    v54 = a4;
    v53 = a5;
    i = a1 + 2432;
    sub_238DCCC50(a1 + 2432);
    LOWORD(v73) = *(v18 + 138);
    v69 = a2;
    v19 = *(v18 + 8);
    v20 = sub_239283EA0(v18);
    v22 = v21;
    goto LABEL_10;
  }

  v16 = 0x34A00000000;
  v14 = 172;
  return v14 | v16;
}

unint64_t sub_2394A9924(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC(a1);
  v5 = os_signpost_enabled(v4);
  if (v5)
  {
    *buf = 136315394;
    v26 = "Fabric";
    v27 = 2080;
    v28 = "Delete";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (!*(a1 + 2584))
  {
    v10 = 0x3BA00000000;
LABEL_12:
    v11 = 47;
    goto LABEL_13;
  }

  if ((a2 - 1) > 0xFDu)
  {
    v10 = 0x3BB00000000;
    goto LABEL_12;
  }

  v6 = *(a1 + 2608);
  if (v6)
  {
    do
    {
      v7 = v6[1];
      (*(*v6 + 16))(v6, a1, a2);
      v6 = v7;
    }

    while (v7);
  }

  v8 = sub_2394A7F48(a1, a2);
  v9 = v8;
  if (v8 == a1 + 2432)
  {
    sub_2394A9DC0(a1);
    v9 = sub_2394A7F48(a1, a2);
    if (!v9)
    {
LABEL_19:
      v14 = 0;
      goto LABEL_20;
    }
  }

  else if (!v8)
  {
    goto LABEL_19;
  }

  if (!*(v9 + 137))
  {
    goto LABEL_19;
  }

  v14 = (*v9 - 1) < 0xFFFFFFEFFFFFFFFFLL;
LABEL_20:
  v15 = sub_2394A6DF0(a1, a2);
  v16 = *(a1 + 2592);
  if (v16 && (v17 = (*(*v16 + 72))(v16, a2), v11 = v17, v17 != 113))
  {
    v10 = v17 & 0xFFFFFFFF00000000;
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v18 = *(a1 + 2600);
  if (!v18 || (v19 = (*(*v18 + 80))(v18, a2), v20 = v19, v19 == 113))
  {
    v20 = 0;
    v24 = 0;
    if (!v14)
    {
      goto LABEL_40;
    }

LABEL_29:
    sub_238DCCC50(v9);
    if ((*(a1 + 2640) & 1) == 0)
    {
      *(a1 + 2640) = 1;
      *(a1 + 2641) = a2;
    }

    sub_2394A9F64(a1);
    if (*(a1 + 2642))
    {
      --*(a1 + 2642);
      v21 = sub_2393D9044(0x11u);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v26) = a2;
        _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_DEFAULT, "Fabric (0x%x) deleted.", buf, 8u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(17, 2, "Fabric (0x%x) deleted.");
      }
    }

    else
    {
      v22 = sub_2393D9044(0x11u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v22, OS_LOG_TYPE_ERROR, "Trying to delete a fabric, but the current fabric count is already 0", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(17, 1, "Trying to delete a fabric, but the current fabric count is already 0");
      }
    }

    goto LABEL_40;
  }

  v24 = v19 & 0xFFFFFFFF00000000;
  if (v14)
  {
    goto LABEL_29;
  }

LABEL_40:
  v5 = *(a1 + 2608);
  if (v5)
  {
    do
    {
      v23 = *(v5 + 8);
      (*(*v5 + 24))(v5, a1, a2);
      v5 = v23;
    }

    while (v23);
  }

  if (v14)
  {
    if (v15)
    {
      v10 = v15 & 0xFFFFFFFF00000000;
      v11 = v15;
    }

    else if (!v11)
    {
      v11 = v20;
      v10 = v24;
      if (!v20)
      {
        v11 = 0;
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0x42300000000;
    v11 = 216;
  }

LABEL_13:
  v12 = sub_23948B4CC(v5);
  if (os_signpost_enabled(v12))
  {
    *buf = 136315394;
    v26 = "Fabric";
    v27 = 2080;
    v28 = "Delete";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  return v10 | v11;
}

void sub_2394A9DC0(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v2))
  {
    v8 = 136315394;
    v9 = "Fabric";
    v10 = 2080;
    v11 = "RevertPendingFabricData";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v8, 0x16u);
  }

  sub_2394ABDE0(a1);
  v4 = *(a1 + 2592);
  if (v4)
  {
    (*(*v4 + 80))(v4);
  }

  v5 = *(a1 + 2600);
  if (v5)
  {
    (*(*v5 + 88))(v5);
  }

  v6 = sub_2394B7CF8(a1 + 2624, v3);
  *(a1 + 2644) = 0;
  *(a1 + 2616) = 0;
  v7 = sub_23948B4CC(v6);
  if (os_signpost_enabled(v7))
  {
    v8 = 136315394;
    v9 = "Fabric";
    v10 = 2080;
    v11 = "RevertPendingFabricData";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v8, 0x16u);
  }
}

unint64_t sub_2394A9F64(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  sub_2393C7B90(v17);
  sub_2393C7BB8(v17, v22, 0x2CuLL);
  v16 = 0;
  v2 = sub_2393C8CE0(v17, 0x100uLL, 21, &v16);
  v4 = v2;
  if (!v2)
  {
    if (*(a1 + 2640) == 1)
    {
      v6 = sub_238DE36D8((a1 + 2640), v3);
      sub_2393C8140(v17, 0, LOBYTE(v6->super.isa));
    }

    else
    {
      sub_2393C8948(v17, 0);
    }

    v15 = 0;
    v7 = sub_2393C8CE0(v17, 1uLL, 22, &v15);
    if (v7)
    {
      goto LABEL_13;
    }

    sub_238DCCCDC(a1, &v19);
    if (v20 != *(&v20 + 1))
    {
      if (v20 != __PAIR128__(16, 16))
      {
        goto LABEL_16;
      }

      v9 = v19;
LABEL_10:
      if (v9 != a1)
      {
LABEL_16:
        v11 = sub_238DC7C7C(&v19, v8);
        sub_2393C8140(v17, 0x100uLL, *(v11 + 137));
        v12 = v20;
        v9 = v19;
        while (1)
        {
          if (v12 < *(&v20 + 1))
          {
            *&v20 = ++v12;
          }

          if (v12 == *(&v20 + 1))
          {
            break;
          }

          v13 = v19 + 152 * v12;
          if (*(v13 + 137) && (*v13 - 1) < 0xFFFFFFEFFFFFFFFFLL)
          {
            if (*(&v20 + 1) == 16 && v12 == 16)
            {
              goto LABEL_10;
            }

            goto LABEL_16;
          }
        }
      }
    }

    v7 = sub_2393C8DE0(v17, v15);
    if (v7)
    {
      goto LABEL_13;
    }

    v7 = sub_2393C8DE0(v17, v16);
    if (v7)
    {
      goto LABEL_13;
    }

    if (HIWORD(v18))
    {
      v5 = 0x54500000000;
      LODWORD(v7) = 25;
      goto LABEL_14;
    }

    v14 = *(a1 + 2584);
    v19 = *"g/fidx";
    v20 = unk_2395D6CAC;
    v21 = 0;
    v7 = (*(*v14 + 24))(v14, &v19, v22, v18);
    if (v7)
    {
LABEL_13:
      v5 = v7 & 0xFFFFFFFF00000000;
    }

    else
    {
      v5 = 0;
      LODWORD(v7) = 0;
    }

LABEL_14:
    v4 = v7;
    return v4 | v5;
  }

  v5 = v2 & 0xFFFFFFFF00000000;
  return v4 | v5;
}

unint64_t sub_2394AA194(void *a1)
{
  sub_2394A9DC0(a1);
  result = sub_238DCCCDC(a1, v9);
  if (v10 != v11)
  {
    v4 = v11 == 16 && v10 == 16;
    if (!v4 || v9[0] != a1)
    {
LABEL_9:
      v6 = sub_238DC7C7C(v9, v3);
      result = sub_2394A9924(a1, *(v6 + 137));
      v7 = v10;
      while (1)
      {
        if (v7 < v11)
        {
          v10 = ++v7;
        }

        if (v7 == v11)
        {
          break;
        }

        v8 = v9[0] + 152 * v7;
        if (*(v8 + 137) && (*v8 - 1) < 0xFFFFFFEFFFFFFFFFLL)
        {
          if (v11 != 16 || v7 != 16 || v9[0] != a1)
          {
            goto LABEL_9;
          }

          return result;
        }
      }
    }
  }

  return result;
}

unint64_t sub_2394AA264(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    if (a2[2])
    {
      *(a1 + 2584) = *a2;
      *(a1 + 2592) = a2[1];
      *(a1 + 2600) = a2[2];
      v3 = sub_2393D9044(0x11u);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_INFO, "Initializing FabricTable from persistent storage", buf, 2u);
      }

      if (sub_2393D5398(3u))
      {
        sub_2393D5320(17, 3, "Initializing FabricTable from persistent storage");
      }

      v4 = 0;
      *(a1 + 2642) = 0;
      do
      {
        sub_238DCCC50(a1 + v4);
        v4 += 152;
      }

      while (v4 != 2432);
      *(a1 + 2640) = 257;
      sub_2394B7620(a1 + 2624, *(a1 + 2584));
      v17 = 44;
      v5 = *(a1 + 2584);
      *buf = *"g/fidx";
      v21 = unk_2395D6CAC;
      v22 = 0;
      v6 = (*(*v5 + 16))(v5, buf, v23, &v17);
      v7 = v6;
      if (v6 == 160)
      {
        goto LABEL_10;
      }

      if (!v6)
      {
        sub_2393C5AAC(buf);
        sub_2393C5ADC(buf, v23, v17);
        v7 = sub_2394AA620(a1, buf);
        if (!v7)
        {
LABEL_10:
          *v18 = 0;
          v8 = sub_2394AA7F4(a1, v18);
          if (v8 != 160)
          {
            if (v8)
            {
              if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
              {
                v12 = sub_2393C9138();
                *buf = 136315138;
                *&buf[4] = v12;
                _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "Error loading Table commit marker: %s, hope for the best!", buf, 0xCu);
              }

              if (sub_2393D5398(1u))
              {
                v13 = sub_2393C9138();
                sub_2393D5320(17, 1, "Error loading Table commit marker: %s, hope for the best!", v13);
              }
            }

            else
            {
              if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109376;
                *&buf[4] = v18[0];
                *&buf[8] = 1024;
                *&buf[10] = v18[1];
                _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "Found a FabricTable aborted commit for index 0x%x (isAddition: %d), removing!", buf, 0xEu);
              }

              if (sub_2393D5398(1u))
              {
                sub_2393D5320(17, 1, "Found a FabricTable aborted commit for index 0x%x (isAddition: %d), removing!", v18[0], v18[1]);
              }

              v9 = v18[0];
              *(a1 + 2617) = v18[0];
              sub_2394A9924(a1, v9);
            }
          }

          LODWORD(v7) = 0;
          v10 = 0;
          goto LABEL_27;
        }

        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          v15 = sub_2393C9138();
          *v18 = 136315138;
          v19 = v15;
          _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "Error loading fabric table: %s, we are in a bad state!", v18, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          v16 = sub_2393C9138();
          sub_2393D5320(17, 1, "Error loading fabric table: %s, we are in a bad state!", v16);
        }
      }

      v10 = v7 & 0xFFFFFFFF00000000;
LABEL_27:
      v11 = v7;
      return v10 | v11;
    }

    v10 = 0x43500000000;
  }

  else
  {
    v10 = 0x43400000000;
  }

  v11 = 47;
  return v10 | v11;
}

unint64_t sub_2394AA620(_BYTE *a1, uint64_t a2)
{
  v4 = sub_2393C7114(a2, 21, 256);
  v5 = v4;
  if (v4)
  {
    goto LABEL_8;
  }

  v13 = 0;
  v4 = sub_2393C6A2C(a2, &v13);
  v5 = v4;
  if (v4)
  {
    goto LABEL_8;
  }

  v4 = sub_2393C6FD0(a2, 0);
  v5 = v4;
  if (v4)
  {
    goto LABEL_8;
  }

  if (sub_2393C5C40(a2) == 20)
  {
    a1[2640] = 0;
  }

  else
  {
    *(a1 + 1320) = 1;
    v4 = sub_2393C5ED0(a2, a1 + 2641);
    v5 = v4;
    if (v4)
    {
LABEL_8:
      v6 = v4 & 0xFFFFFFFF00000000;
      return v5 | v6;
    }
  }

  v4 = sub_2393C7114(a2, 22, 1);
  v5 = v4;
  if (v4)
  {
    goto LABEL_8;
  }

  v12 = 0;
  v8 = sub_2393C6A2C(a2, &v12);
  if (!v8)
  {
    LODWORD(v8) = 11;
    while (1)
    {
      v9 = sub_2393C6B34(a2);
      if (v9)
      {
        break;
      }

      v10 = a1[2642];
      if (v10 > 0xF)
      {
        v6 = 0x57600000000;
        goto LABEL_25;
      }

      v11 = 0;
      v9 = sub_2393C5ED0(a2, &v11);
      if (v9)
      {
        goto LABEL_23;
      }

      if (!sub_2394A8980(a1, &a1[152 * v10], v11))
      {
        ++a1[2642];
      }
    }

    if (v9 != 33)
    {
LABEL_23:
      v6 = v9 & 0xFFFFFFFF00000000;
      LODWORD(v8) = v9;
      goto LABEL_25;
    }

    v8 = sub_2393C6A98(a2, v12);
    if (!v8)
    {
      v8 = sub_2393C6A98(a2, v13);
      if (!v8)
      {
        v8 = sub_2393C6AE0(a2);
        if (!v8)
        {
          sub_2394AAF00(a1);
          v6 = 0;
          LODWORD(v8) = 0;
          goto LABEL_25;
        }
      }
    }
  }

  v6 = v8 & 0xFFFFFFFF00000000;
LABEL_25:
  v5 = v8;
  return v5 | v6;
}

unint64_t sub_2394AA7F4(uint64_t a1, _BYTE *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v10 = 36;
  v3 = *(a1 + 2584);
  v11[0] = *"g/fs/c";
  v11[1] = *&algn_2395D6CC5[9];
  v12 = 0;
  v4 = (*(*v3 + 16))(v3, v11, v13, &v10);
  v5 = v4;
  if (v4 || (sub_2393C5AAC(v11), sub_2393C5ADC(v11, v13, v10), v4 = sub_2393C7114(v11, 21, 256), v5 = v4, v4))
  {
    v6 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    v9 = 0;
    v8 = sub_2393C6A2C(v11, &v9);
    if (v8 || (v8 = sub_2393C6FD0(v11, 0), v8) || (v8 = sub_2393C5ED0(v11, a2), v8) || (v8 = sub_2393C6FD0(v11, 1), v8) || (v8 = sub_2393C5CE4(v11, a2 + 1), v8))
    {
      v6 = v8 & 0xFFFFFFFF00000000;
    }

    else
    {
      LODWORD(v8) = 0;
      v6 = 0;
    }

    v5 = v8;
  }

  return v6 | v5;
}

void sub_2394AA948(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = sub_2393D9044(0x11u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v8 = a2;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "Forgetting fabric 0x%x", buf, 8u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(17, 2, "Forgetting fabric 0x%x", a2);
  }

  v5 = sub_2394A7F48(a1, a2);
  if (v5)
  {
    v6 = v5;
    sub_2394A9DC0(a1);
    sub_238DCCC50(v6);
  }
}

void sub_2394AAA3C(uint64_t a1)
{
  if (*(a1 + 2584))
  {
    v2 = sub_2393D9044(0x11u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "Shutting down FabricTable", v7, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(17, 2, "Shutting down FabricTable");
    }

    v3 = *(a1 + 2608);
    if (v3)
    {
      do
      {
        v4 = *(v3 + 8);
        *(v3 + 8) = 0;
        v3 = v4;
      }

      while (v4);
    }

    sub_2394A9DC0(a1);
    v5 = 2432;
    v6 = a1;
    do
    {
      sub_238DCCC50(v6);
      v6 += 152;
      v5 -= 152;
    }

    while (v5);
    *(a1 + 2584) = 0;
  }
}

uint64_t sub_2394AAB18(uint64_t a1)
{
  v1 = *(a1 + 2617);
  *(a1 + 2617) = 0;
  return v1;
}

uint64_t sub_2394AAB28(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a1 + 2608);
    if (v2)
    {
      v3 = *(a1 + 2608);
      while (v3 != a2)
      {
        v3 = *(v3 + 8);
        if (!v3)
        {
          goto LABEL_6;
        }
      }

      v4 = 0;
      v5 = 0;
    }

    else
    {
LABEL_6:
      v4 = 0;
      v5 = 0;
      *(a2 + 8) = v2;
      *(a1 + 2608) = a2;
    }
  }

  else
  {
    v4 = 0x4AC00000000;
    v5 = 47;
  }

  return v5 | v4;
}

uint64_t sub_2394AAB8C(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 2608);
    if (v2 == a2)
    {
      *(result + 2608) = *(v2 + 8);
    }

    else
    {
      while (v2)
      {
        v3 = v2;
        v2 = *(v2 + 8);
        if (v2 == a2)
        {
          *(v3 + 8) = *(a2 + 8);
          *(a2 + 8) = 0;
          return result;
        }
      }
    }
  }

  return result;
}

unint64_t sub_2394AABCC(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  v5 = 0;
  v23 = *MEMORY[0x277D85DE8];
  do
  {
    v6 = a1 + v4;
    v7 = *(a1 + v4 + 137);
    if (!*(a1 + v4 + 137) || (*v6 - 1) > 0xFFFFFFEFFFFFFFFELL)
    {
      goto LABEL_14;
    }

    v19 = buf;
    v20 = 400;
    v8 = sub_2394A7BFC(a1, v7, &v19);
    if (v8)
    {
      goto LABEL_27;
    }

    sub_238DB6950(v17, v19, v20);
    v8 = sub_2394A07C0(v17, &v18);
    if (v8)
    {
      goto LABEL_27;
    }

    if (v5 <= v18)
    {
      v5 = v18;
    }

    v19 = buf;
    v20 = 400;
    v8 = sub_2394A8274(a1, *(v6 + 137), &v19);
    if (!v8)
    {
      if (v20)
      {
        sub_238DB6950(v17, v19, v20);
        v2 = sub_2394A07C0(v17, &v18);
        if (v2)
        {
          v9 = 1;
          goto LABEL_10;
        }

        if (v5 <= v18)
        {
          v5 = v18;
        }
      }

      v19 = buf;
      v20 = 400;
      v8 = sub_2394A847C(a1, *(v6 + 137), &v19);
      if (!v8)
      {
        sub_238DB6950(v17, v19, v20);
        v10 = sub_2394A07C0(v17, &v18);
        v2 = v10;
        if (v5 <= v18)
        {
          v11 = v18;
        }

        else
        {
          v11 = v5;
        }

        v9 = v10 != 0;
        if (!v10)
        {
          v5 = v11;
        }

        goto LABEL_10;
      }
    }

    v9 = 8;
LABEL_10:
    if (v9 > 2)
    {
      goto LABEL_27;
    }

    if (v9)
    {
      return v2;
    }

LABEL_14:
    v4 += 152;
  }

  while (v4 != 2432);
  v8 = sub_2394B7858(a1 + 2624, a2, v5);
LABEL_27:
  if (v8)
  {
    v12 = sub_2393D9044(0x11u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = sub_2393C9138();
      *buf = 136315138;
      v22 = v13;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "Failed to update Known Good Time: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v14 = sub_2393C9138();
      sub_2393D5320(17, 1, "Failed to update Known Good Time: %s", v14);
    }
  }

  return v8;
}

unsigned __int8 *sub_2394AAE78(uint64_t a1, uint64_t a2)
{
  v4 = *sub_2392C86E0((a1 + 2640), a2);
  if (v4 == 254)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 + 1;
  }

  while (1)
  {
    result = sub_2392C86E0((a1 + 2640), v3);
    if (*result == v5)
    {
      *(a1 + 2640) = 0;
      return result;
    }

    result = sub_2394A7FC0(a1, v5);
    if (!result)
    {
      break;
    }

    if (v5 == 254)
    {
      v5 = 1;
    }

    else
    {
      ++v5;
    }
  }

  *(a1 + 2640) = 1;
  *(a1 + 2641) = v5;
  return result;
}

unsigned __int8 *sub_2394AAF00(unsigned __int8 *result)
{
  if ((result[2640] & 1) == 0)
  {
    v1 = result;
    if (result[2642] <= 0xFDu)
    {
      *(result + 1320) = 257;
      result = sub_2394A7FC0(result, 1);
      if (result)
      {

        return sub_2394AAE78(v1, v2);
      }
    }
  }

  return result;
}

void *sub_2394AAF6C(uint64_t a1)
{
  v2 = *(a1 + 2592);
  if (v2)
  {
    v3 = *(*v2 + 104);

    return v3();
  }

  else
  {
    v5 = sub_2393D52C4(0x260uLL);
    v6 = v5;
    if (v5)
    {
      bzero(v5 + 2, 0x250uLL);
      *v6 = &unk_284BB8F28;
      v6[1] = &unk_284BB9138;
    }

    return v6;
  }
}

void sub_2394AB01C(uint64_t a1, void (***a2)(void))
{
  v3 = *(a1 + 2592);
  if (v3)
  {
    v4 = *(*v3 + 112);

    v4();
  }

  else if (a2)
  {
    (**a2)(a2);

    j__free(a2);
  }
}

unint64_t sub_2394AB0D0(uint64_t a1, unsigned __int8 *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  sub_2393C7B90(v9);
  sub_2393C7BB8(v9, v13, 0x24uLL);
  v8 = 0;
  v4 = sub_2393C8CE0(v9, 0x100uLL, 21, &v8);
  if (!v4)
  {
    v4 = sub_2393C8140(v9, 0, *a2);
    if (!v4)
    {
      v4 = sub_2393C7E38(v9, 1uLL, a2[1]);
      if (!v4)
      {
        v4 = sub_2393C8DE0(v9, v8);
        if (!v4)
        {
          if (HIWORD(v10))
          {
            v6 = 0x5BC00000000;
            LODWORD(v4) = 25;
            return v6 | v4;
          }

          v5 = *(a1 + 2584);
          v11[0] = *"g/fs/c";
          v11[1] = *&algn_2395D6CC5[9];
          v12 = 0;
          v4 = (*(*v5 + 24))(v5, v11, v13, v10);
        }
      }
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  return v6 | v4;
}

uint64_t sub_2394AB208(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 2584);
  v3[0] = *"g/fs/c";
  v3[1] = *&algn_2395D6CC5[9];
  v4 = 0;
  return (*(*v1 + 32))(v1, v3);
}

uint64_t sub_2394AB290(uint64_t a1, int a2)
{
  result = sub_2394A7FC0(a1, a2);
  if (result)
  {
    if (*(result + 144))
    {
      return 1;
    }

    else
    {
      result = *(a1 + 2592);
      if (result)
      {
        v4 = *(*result + 24);

        return v4();
      }
    }
  }

  return result;
}

unint64_t sub_2394AB310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[0] = a3;
  v15[1] = a4;
  v10 = sub_2394A7FC0(a1, a2);
  if (v10)
  {
    if (*(v10 + 144))
    {
      v11 = sub_2394A7698(v10, a3, a4, a5);
LABEL_8:
      v12 = v11 & 0xFFFFFFFF00000000;
      return v11 | v12;
    }

    v13 = *(a1 + 2592);
    if (v13)
    {
      v11 = (*(*v13 + 96))(v13, a2, v15, a5);
      goto LABEL_8;
    }

    v12 = 0x60300000000;
  }

  else
  {
    v12 = 0x5F700000000;
  }

  LODWORD(v11) = 16;
  return v11 | v12;
}

uint64_t sub_2394AB3E0(uint64_t a1, BOOL *a2)
{
  v2 = *(a1 + 2644);
  if ((v2 & 0x10) != 0)
  {
    *a2 = (v2 & 0x20) != 0;
  }

  return (v2 >> 4) & 1;
}

uint64_t sub_2394AB3F8(uint64_t a1, int a2)
{
  if (*(a1 + 2616))
  {
    v2 = *(a1 + 2616) == a2;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  if (v2)
  {
    *(a1 + 2616) = a2;
  }

  return v3;
}

uint64_t sub_2394AB418(uint64_t a1)
{
  if ((*(a1 + 2644) & 8) != 0)
  {
    return *(a1 + 2616);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2394AB430(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (*(a1 + 2592))
  {
    if (*(a1 + 2644))
    {
      v8 = 0x63100000000;
LABEL_9:
      LODWORD(v9) = 3;
      return v8 | v9;
    }

    if (*(a3 + 8) < 0xFFuLL)
    {
      v8 = 0x63200000000;
      LODWORD(v9) = 25;
      return v8 | v9;
    }

    sub_2394AAF00(a1);
    if (*a2 == 1)
    {
      if ((*(a1 + 2644) & 2) != 0)
      {
        v8 = 0x63A00000000;
        goto LABEL_9;
      }

      v6 = sub_2392C86E0(a2, v5);
      v7 = *(a1 + 2644) | 0x20;
    }

    else
    {
      if (*(a1 + 2640) != 1)
      {
        v8 = 0x64900000000;
        LODWORD(v9) = 11;
        return v8 | v9;
      }

      v6 = sub_2392C86E0((a1 + 2640), v5);
      v7 = *(a1 + 2644) & 0xFFDF;
    }

    v11 = *v6;
    *(a1 + 2644) = v7;
    if ((v11 - 1) > 0xFDu)
    {
      v8 = 0x64C00000000;
      LODWORD(v9) = 113;
      return v8 | v9;
    }

    if (*(a1 + 2616) && *(a1 + 2616) != v11)
    {
      v8 = 0x64D00000000;
      goto LABEL_9;
    }

    *(a1 + 2616) = v11;
    v9 = (*(**(a1 + 2592) + 32))(*(a1 + 2592));
    if (v9)
    {
      v8 = v9 & 0xFFFFFFFF00000000;
    }

    else
    {
      LODWORD(v9) = 0;
      v8 = 0;
      *(a1 + 2644) |= 0x10u;
    }
  }

  else
  {
    v8 = 0x62D00000000;
    LODWORD(v9) = 3;
  }

  return v8 | v9;
}

unint64_t sub_2394AB5D4(uint64_t a1)
{
  if (!*(a1 + 2600))
  {
    v2 = 0x65600000000;
    LODWORD(v3) = 3;
    return v3 | v2;
  }

  if ((*(a1 + 2644) & 0xE) != 0)
  {
    v2 = 0x65B00000000;
LABEL_4:
    LODWORD(v3) = 3;
    return v3 | v2;
  }

  sub_2394AAF00(a1);
  if (*(a1 + 2640) != 1)
  {
    v2 = 0x66700000000;
    LODWORD(v3) = 11;
    return v3 | v2;
  }

  v5 = *sub_2392C86E0((a1 + 2640), v4);
  if ((v5 - 1) > 0xFDu)
  {
    v2 = 0x66A00000000;
    LODWORD(v3) = 113;
    return v3 | v2;
  }

  if (*(a1 + 2616) && *(a1 + 2616) != v5)
  {
    v2 = 0x66B00000000;
    goto LABEL_4;
  }

  *(a1 + 2616) = v5;
  v3 = (*(**(a1 + 2600) + 48))(*(a1 + 2600));
  if (v3)
  {
    v2 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    v2 = 0;
    LODWORD(v3) = 0;
    *(a1 + 2644) |= 3u;
  }

  return v3 | v2;
}

unint64_t sub_2394AB704(void *a1, uint64_t a2, uint64_t *a3, _BYTE *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v8))
  {
    *buf = 136315394;
    *&buf[4] = "Fabric";
    v30 = 2080;
    v31 = "FindExistingFabricByNocChaining";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v28 = 0;
  *buf = 0;
  v9 = sub_2394A03F4(a3, buf, &v28);
  v10 = v9;
  if (v9)
  {
    goto LABEL_6;
  }

  v32 = &unk_284BB9138;
  v22 = buf;
  v23 = 400;
  v27 = &unk_2395D6B90;
  v9 = sub_2394A7BFC(a1, a2, &v22);
  v10 = v9;
  if (v9)
  {
    goto LABEL_6;
  }

  sub_238DB6950(v26, v22, v23);
  v9 = sub_2394A0354(v26, &v27);
  v10 = v9;
  if (v9)
  {
    goto LABEL_6;
  }

  v33 = *v27;
  v15 = v27[2];
  v14 = v27[3];
  v16 = *(v27 + 64);
  v34 = v27[1];
  v37 = v16;
  v36 = v14;
  v35 = v15;
  v9 = sub_238DCCCDC(a1, &v22);
  if (v24 == v25)
  {
    goto LABEL_15;
  }

  if (v25 == 16 && v24 == 16)
  {
    v18 = v22;
LABEL_14:
    if (v18 == a1)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  v9 = sub_238DC7C7C(&v22, v17);
  if (*(v9 + 8) != v28)
  {
    goto LABEL_19;
  }

  v19 = v9;
  *buf = &unk_284BB9138;
  v9 = sub_2394A8620(a1, *(v9 + 137), buf);
  v10 = v9;
  if (v9)
  {
LABEL_6:
    v11 = v10 & 0xFFFFFFFF00000000;
    goto LABEL_7;
  }

  v9 = sub_23928F6C0(buf, &v32);
  if (!v9)
  {
LABEL_19:
    v20 = v24;
    v18 = v22;
    while (1)
    {
      if (v20 < v25)
      {
        v24 = ++v20;
      }

      if (v20 == v25)
      {
        break;
      }

      v21 = &v22[152 * v20];
      if (v21[137] && (*v21 - 1) < 0xFFFFFFEFFFFFFFFFLL)
      {
        if (v25 == 16 && v20 == 16)
        {
          goto LABEL_14;
        }

        goto LABEL_16;
      }
    }

LABEL_15:
    v11 = 0;
    LODWORD(v10) = 0;
    *a4 = 0;
    goto LABEL_7;
  }

  v11 = 0;
  LODWORD(v10) = 0;
  *a4 = *(v19 + 137);
LABEL_7:
  v12 = sub_23948B4CC(v9);
  if (os_signpost_enabled(v12))
  {
    *buf = 136315394;
    *&buf[4] = "Fabric";
    v30 = 2080;
    v31 = "FindExistingFabricByNocChaining";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  return v10 | v11;
}

unint64_t sub_2394ABA3C(uint64_t a1, uint64_t *a2, uint64_t a3, __int16 a4, uint64_t a5, char a6, int a7, _BYTE *a8)
{
  v30 = *MEMORY[0x277D85DE8];
  v13 = sub_23948B4CC(a1);
  v14 = os_signpost_enabled(v13);
  if (v14)
  {
    *buf = 136315394;
    v27 = "Fabric";
    v28 = 2080;
    v29 = "AddNewPendingFabricCommon";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (!*(a1 + 2600))
  {
    v16 = 0x6A500000000;
    goto LABEL_18;
  }

  if (!a8)
  {
    v16 = 0x6A600000000;
    LODWORD(v17) = 47;
    goto LABEL_19;
  }

  v15 = *(a1 + 2644);
  if ((v15 & 2) == 0)
  {
    v16 = 0x6AA00000000;
LABEL_18:
    LODWORD(v17) = 3;
    goto LABEL_19;
  }

  if ((v15 & 4) != 0)
  {
    v16 = 0x6AC00000000;
    goto LABEL_18;
  }

  v14 = sub_2394AAF00(a1);
  if (*(a1 + 2640) != 1)
  {
    v16 = 0x6B700000000;
    LODWORD(v17) = 11;
    goto LABEL_19;
  }

  v14 = sub_2392C86E0((a1 + 2640), v18);
  v19 = *v14;
  if ((v19 - 1) > 0xFDu)
  {
    v16 = 0x6BC00000000;
    LODWORD(v17) = 113;
    goto LABEL_19;
  }

  if (a5)
  {
    goto LABEL_13;
  }

  v14 = *(a1 + 2592);
  if (!v14)
  {
    v16 = 0x6C200000000;
    goto LABEL_34;
  }

  if (((*(*v14 + 24))(v14, v19) & 1) == 0)
  {
    v14 = (*(**(a1 + 2592) + 16))(*(a1 + 2592));
    if (!v14)
    {
      v16 = 0x6C600000000;
LABEL_34:
      LODWORD(v17) = 16;
      goto LABEL_19;
    }
  }

LABEL_13:
  v22 = a7;
  if ((*(a1 + 2644) & 0x40) == 0)
  {
    buf[0] = 0;
    v14 = sub_2394AB704(a1, v19, a2, buf);
    v17 = v14;
    if (v14)
    {
LABEL_25:
      v16 = v17 & 0xFFFFFFFF00000000;
      goto LABEL_19;
    }

    if (buf[0])
    {
      v16 = 0x6CE00000000;
      LODWORD(v17) = 126;
      goto LABEL_19;
    }
  }

  v14 = (*(**(a1 + 2600) + 56))(*(a1 + 2600), v19, a2, a3);
  v17 = v14;
  if (v14)
  {
    goto LABEL_25;
  }

  if (*(a1 + 2616) && *(a1 + 2616) != v19)
  {
    v16 = 0x6D300000000;
    goto LABEL_18;
  }

  *(a1 + 2616) = v19;
  v17 = sub_2394A91E8(a1, v19, 1, a5, a6, a4, v22);
  if (v17)
  {
    sub_2394ABDE0(a1);
    goto LABEL_25;
  }

  *(a1 + 2644) |= 9u;
  *a8 = v19;
  v14 = sub_2394A8ED0(a1, v19);
  v16 = 0;
  LODWORD(v17) = 0;
LABEL_19:
  v20 = sub_23948B4CC(v14);
  if (os_signpost_enabled(v20))
  {
    *buf = 136315394;
    v27 = "Fabric";
    v28 = 2080;
    v29 = "AddNewPendingFabricCommon";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  return v17 | v16;
}

void sub_2394ABDE0(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v2))
  {
    *buf = 136315394;
    v9 = "Fabric";
    v10 = 2080;
    v11 = "RevertPendingOpCertsExceptRoot";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  sub_238DCCC50(a1 + 2432);
  if (*(a1 + 2644))
  {
    v3 = sub_2393D9044(0x11u);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 2616);
      *buf = 67109120;
      LODWORD(v9) = v4;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "Reverting pending fabric data for fabric 0x%x", buf, 8u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(17, 1, "Reverting pending fabric data for fabric 0x%x", *(a1 + 2616));
    }
  }

  v5 = *(a1 + 2600);
  if (v5)
  {
    v5 = (*(*v5 + 112))(v5);
  }

  v6 = *(a1 + 2644);
  if ((v6 & 8) != 0)
  {
    v5 = sub_2394A9924(a1, *(a1 + 2616));
    v6 = *(a1 + 2644);
  }

  *(a1 + 2644) = v6 & 0xFFF3;
  if ((v6 & 2) == 0)
  {
    *(a1 + 2616) = 0;
  }

  v7 = sub_23948B4CC(v5);
  if (os_signpost_enabled(v7))
  {
    *buf = 136315394;
    v9 = "Fabric";
    v10 = 2080;
    v11 = "RevertPendingOpCertsExceptRoot";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }
}

unint64_t sub_2394ABFF0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char a6, int a7)
{
  v30 = *MEMORY[0x277D85DE8];
  v14 = sub_23948B4CC(a1);
  v15 = os_signpost_enabled(v14);
  if (v15)
  {
    *buf = 136315394;
    v27 = "Fabric";
    v28 = 2080;
    v29 = "UpdatePendingFabricCommon";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v14, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (!*(a1 + 2600))
  {
    v17 = 0x6ED00000000;
LABEL_26:
    v19 = 3;
    goto LABEL_27;
  }

  if ((a2 - 1) > 0xFDu)
  {
    v17 = 0x6EE00000000;
    v19 = 47;
    goto LABEL_27;
  }

  if (!a5)
  {
    v15 = *(a1 + 2592);
    if (v15)
    {
      v15 = (*(*v15 + 24))(v15, a2);
      if (v15)
      {
        goto LABEL_6;
      }

      v15 = (*(**(a1 + 2592) + 16))(*(a1 + 2592));
      if (v15)
      {
        goto LABEL_6;
      }

      v17 = 0x6F700000000;
    }

    else
    {
      v17 = 0x6F400000000;
    }

    v19 = 16;
    goto LABEL_27;
  }

LABEL_6:
  v16 = *(a1 + 2644);
  if ((v16 & 2) != 0)
  {
    v17 = 0x6FB00000000;
    goto LABEL_26;
  }

  if ((v16 & 8) != 0)
  {
    v17 = 0x6FE00000000;
    goto LABEL_26;
  }

  v15 = sub_2394A7FC0(a1, a2);
  if (!v15)
  {
    v17 = 0x70200000000;
LABEL_33:
    v19 = 113;
    goto LABEL_27;
  }

  v22 = v15;
  if (*(a4 + 8))
  {
    v24 = buf;
    v25 = 400;
    v15 = (*(**(a1 + 2600) + 128))(*(a1 + 2600), a2, 1, &v24);
    v17 = v15;
    if (v15 != 45)
    {
      if (v15)
      {
        goto LABEL_39;
      }

      if (v25)
      {
        v18 = sub_2393D9044(0x11u);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *v23 = 0;
          _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_ERROR, "Received an UpdateNOC storage request with ICAC when VVSC already present. VVSC must be removed first.", v23, 2u);
        }

        v15 = sub_2393D5398(1u);
        if (v15)
        {
          sub_2393D5320(17, 1, "Received an UpdateNOC storage request with ICAC when VVSC already present. VVSC must be removed first.");
        }

        v17 = 0x71300000000;
        goto LABEL_26;
      }
    }

    v16 = *(a1 + 2644);
  }

  if ((v16 & 0x40) != 0)
  {
    goto LABEL_38;
  }

  buf[0] = 0;
  v15 = sub_2394AB704(a1, a2, a3, buf);
  v17 = v15;
  if (v15)
  {
LABEL_39:
    v19 = v17;
    goto LABEL_27;
  }

  if (buf[0] != a2)
  {
    v17 = 0x72200000000;
    goto LABEL_33;
  }

LABEL_38:
  v15 = (*(**(a1 + 2600) + 64))(*(a1 + 2600), a2, a3, a4);
  v17 = v15;
  if (v15)
  {
    goto LABEL_39;
  }

  if (*(a1 + 2616) && *(a1 + 2616) != a2)
  {
    v17 = 0x72700000000;
    goto LABEL_26;
  }

  *(a1 + 2616) = a2;
  v17 = sub_2394A91E8(a1, a2, 0, a5, a6, *(v22 + 138), a7);
  if (v17)
  {
    sub_2394ABDE0(a1);
    goto LABEL_39;
  }

  *(a1 + 2644) |= 5u;
  v15 = sub_2394A8ED0(a1, a2);
  v17 = 0;
  v19 = 0;
LABEL_27:
  v20 = sub_23948B4CC(v15);
  if (os_signpost_enabled(v20))
  {
    *buf = 136315394;
    v27 = "Fabric";
    v28 = 2080;
    v29 = "UpdatePendingFabricCommon";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  return v17 & 0xFFFFFFFF00000000 | v19;
}

uint64_t sub_2394AC43C(uint64_t a1)
{
  v64 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 2584) || !*(a1 + 2600))
  {
    *&v55 = 0x73F00000003;
    return v55;
  }

  v2 = *(a1 + 2644);
  v54 = v2 & 4;
  v3 = v2 & 0xC;
  if (v2)
  {
    v4 = *(a1 + 2616);
    v5 = (*(a1 + 2616) + 1) < 2u || v3 == 0;
    v6 = *(a1 + 2644);
    if (!v5)
    {
      v6 = 0;
      if ((v2 & 6) != 2 && (v2 & 8) != 0)
      {
        v7 = sub_2393D9044(0x11u);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109632;
          *&buf[4] = 1;
          *&buf[8] = 1024;
          *&buf[10] = v54 >> 2;
          *&buf[14] = 1024;
          LODWORD(v62) = (v2 & 2) >> 1;
          _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Found inconsistent interlocks during commit %u/%u/%u!", buf, 0x14u);
        }

        v6 = 1;
        if (sub_2393D5398(1u))
        {
          v6 = 1;
          sub_2393D5320(17, 1, "Found inconsistent interlocks during commit %u/%u/%u!", 1, v54 >> 2, (v2 & 2) >> 1);
        }
      }
    }
  }

  else
  {
    v4 = *(a1 + 2616);
    v6 = *(a1 + 2644);
  }

  v8 = sub_2394A7F48(a1, v4);
  if ((~v2 & 5) == 0 && (v6 & 1) == 0 && (!*(a1 + 2569) || (*(a1 + 2432) - 1) > 0xFFFFFFEFFFFFFFFELL || *(a1 + 2569) != v4 || !v8))
  {
    v16 = sub_2393D9044(0x11u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "Missing pending fabric on update during commit!", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(17, 1, "Missing pending fabric on update during commit!");
    }

LABEL_112:
    v55 = 0uLL;
    if ((((v2 & 0xE) == 2) & v2) == 0)
    {
LABEL_117:
      v50 = sub_2393D9044(0x11u);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v50, OS_LOG_TYPE_ERROR, "Failed to commit: internally inconsistent state!", buf, 2u);
      }

      v49 = 0x785000000ACLL;
      if (sub_2393D5398(1u))
      {
        sub_2393D5320(17, 1, "Failed to commit: internally inconsistent state!");
      }

LABEL_121:
      *&v55 = v49;
      goto LABEL_122;
    }

LABEL_113:
    v48 = sub_2393D9044(0x11u);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v48, OS_LOG_TYPE_ERROR, "Failed to commit: tried to commit with only a new trusted root cert. No data committed.", buf, 2u);
    }

    v49 = 0x78000000003;
    if (sub_2393D5398(1u))
    {
      sub_2393D5320(17, 1, "Failed to commit: tried to commit with only a new trusted root cert. No data committed.");
    }

    goto LABEL_121;
  }

  v10 = (v2 & 1) == 0 || (v2 & 8) == 0;
  if (((v10 | v6) & 1) == 0)
  {
    v11 = (*(**(a1 + 2600) + 40))(*(a1 + 2600), v4, 0);
    if ((*(a1 + 2644) & 2) == 0 || (v11 & 1) == 0)
    {
      v46 = sub_2393D9044(0x11u);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v46, OS_LOG_TYPE_ERROR, "Missing trusted root for fabric add during commit!", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(17, 1, "Missing trusted root for fabric add during commit!");
      }

      goto LABEL_112;
    }
  }

  v13 = (v2 & 1) == 0 || v3 == 0;
  if (((v13 | v6) & 1) == 0 && (sub_2394AB290(a1, v4) & 1) == 0)
  {
    v47 = sub_2393D9044(0x11u);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v47, OS_LOG_TYPE_ERROR, "Could not find an operational key during commit!", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(17, 1, "Could not find an operational key during commit!");
    }

    goto LABEL_112;
  }

  v15 = (v2 & 1) == 0 || (v2 & 0xE) == 2;
  if ((v15 | v6))
  {
    v55 = 0uLL;
    if ((((v2 & 0xE) == 2) & v2) == 0)
    {
      if ((v6 & 1) == 0)
      {
LABEL_122:
        *(a1 + 2644) = 0;
        *(a1 + 2616) = 0;
        sub_238DCCC50(a1 + 2432);
        (*(**(a1 + 2600) + 88))(*(a1 + 2600));
        v51 = *(a1 + 2592);
        if (v51)
        {
          (*(*v51 + 80))(v51);
        }

        return v55;
      }

      goto LABEL_117;
    }

    goto LABEL_113;
  }

  buf[0] = v4;
  buf[1] = (v2 & 8) >> 3;
  *&v55 = sub_2394AB0D0(a1, buf);
  *(&v55 + 1) = v17;
  v18 = v55;
  if (v55)
  {
    v19 = sub_2393D9044(0x11u);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "Failed to store commit marker, may be inconsistent if reboot happens during fail-safe!", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(17, 1, "Failed to store commit marker, may be inconsistent if reboot happens during fail-safe!");
    }
  }

  *(a1 + 2644) &= ~1u;
  if (v54)
  {
    v20 = sub_2394A7F48(a1, v4);
    if (!v20 || v20 == a1 + 2432)
    {
      sub_239535D84();
    }

    sub_2394A6910(v20, a1 + 2432);
  }

  v21 = sub_2394A7F48(a1, v4);
  if (!v21)
  {
    sub_239535E1C();
  }

  *buf = sub_2394A884C(a1, v21);
  *&buf[8] = v22;
  if (*buf)
  {
    v23 = sub_2393D9044(0x11u);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v60) = 136315138;
      *(&v60 + 4) = sub_2393C9138();
      _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_ERROR, "Failed to commit pending fabric metadata: %s", &v60, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v24 = sub_2393C9138();
      sub_2393D5320(17, 1, "Failed to commit pending fabric metadata: %s", v24);
    }
  }

  v25 = buf;
  if (v18)
  {
    v25 = &v55;
  }

  v55 = *v25;
  v60 = 0uLL;
  v26 = *(a1 + 2592);
  if (v26)
  {
    if ((*(*v26 + 24))(v26, v4))
    {
      if ((*(**(a1 + 2592) + 16))(*(a1 + 2592)))
      {
        *&v60 = (*(**(a1 + 2592) + 48))(*(a1 + 2592), v4);
        *(&v60 + 1) = v27;
        if (v60)
        {
          v28 = sub_2393D9044(0x11u);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v29 = sub_2393C9138();
            LODWORD(v59) = 136315138;
            *(&v59 + 4) = v29;
            _os_log_impl(&dword_238DAE000, v28, OS_LOG_TYPE_ERROR, "Failed to commit pending operational keypair %s", &v59, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            v30 = sub_2393C9138();
            sub_2393D5320(17, 1, "Failed to commit pending operational keypair %s", v30);
          }

          (*(**(a1 + 2592) + 80))(*(a1 + 2592));
        }
      }
    }
  }

  v31 = &v60;
  if (v55)
  {
    v31 = &v55;
  }

  v55 = *v31;
  *&v59 = (*(**(a1 + 2600) + 72))(*(a1 + 2600), v4);
  *(&v59 + 1) = v32;
  if (v59)
  {
    v33 = sub_2393D9044(0x11u);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = sub_2393C9138();
      LODWORD(v58) = 136315138;
      *(&v58 + 4) = v34;
      _os_log_impl(&dword_238DAE000, v33, OS_LOG_TYPE_ERROR, "Failed to commit pending operational certificates %s", &v58, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v35 = sub_2393C9138();
      sub_2393D5320(17, 1, "Failed to commit pending operational certificates %s", v35);
    }

    (*(**(a1 + 2600) + 88))(*(a1 + 2600));
  }

  v36 = &v55;
  if (!v55)
  {
    v36 = &v59;
  }

  v55 = *v36;
  if (sub_2394B7B8C(a1 + 2624, v32))
  {
    v38 = sub_2393D9044(0x11u);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = sub_2393C9138();
      LODWORD(v58) = 136315138;
      *(&v58 + 4) = v39;
      _os_log_impl(&dword_238DAE000, v38, OS_LOG_TYPE_ERROR, "Failed to commit Last Known Good Time: %s", &v58, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v40 = sub_2393C9138();
      sub_2393D5320(17, 1, "Failed to commit Last Known Good Time: %s", v40);
    }
  }

  v58 = 0uLL;
  if ((*(a1 + 2644) & 8) != 0)
  {
    sub_2394AAE78(a1, v37);
    *&v58 = sub_2394A9F64(a1);
    *(&v58 + 1) = v41;
    if (v58)
    {
      v42 = sub_2393D9044(0x11u);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = sub_2393C9138();
        *v56 = 136315138;
        v57 = v43;
        _os_log_impl(&dword_238DAE000, v42, OS_LOG_TYPE_ERROR, "Failed to commit pending fabric indices: %s", v56, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        v44 = sub_2393C9138();
        sub_2393D5320(17, 1, "Failed to commit pending fabric indices: %s", v44);
      }
    }
  }

  v45 = &v55;
  if (!v55)
  {
    v45 = &v58;
  }

  v55 = *v45;
  *(a1 + 2644) = 0;
  *(a1 + 2616) = 0;
  sub_238DCCC50(a1 + 2432);
  if (v55)
  {
    sub_2394A9924(a1, v4);
    sub_2394A9DC0(a1);
  }

  else
  {
    sub_2394A905C(a1, v4);
  }

  v52 = *(a1 + 2584);
  *buf = *"g/fs/c";
  v62 = *&algn_2395D6CC5[9];
  v63 = 0;
  (*(*v52 + 32))(v52, buf);
  return v55;
}

unint64_t sub_2394ACF40(uint64_t a1, char a2, uint64_t a3)
{
  if (*(a1 + 2584))
  {
    if ((a2 - 1) > 0xFDu)
    {
      v10 = 0x85800000000;
      LODWORD(v9) = 113;
    }

    else
    {
      v4 = *(a3 + 8);
      if (v4 > 0x20)
      {
        v10 = 0x85A00000000;
        LODWORD(v9) = 47;
      }

      else
      {
        v6 = sub_2394A7F48(a1, a2);
        if (v6 && (v7 = v6, *(v6 + 137)) && (*v6 - 1) <= 0xFFFFFFEFFFFFFFFELL)
        {
          v8 = (v6 + 104);
          if (v4)
          {
            memcpy((v6 + 104), *a3, v4);
            v8 += v4;
          }

          *v8 = 0;
          if ((*(a1 + 2644) & 0xC) != 0 || v7 == a1 + 2432 || (v9 = sub_2394A884C(a1, v7), !v9))
          {
            v10 = 0;
            LODWORD(v9) = 0;
          }

          else
          {
            v10 = v9 & 0xFFFFFFFF00000000;
          }
        }

        else
        {
          v10 = 0x85E00000000;
          LODWORD(v9) = 113;
        }
      }
    }
  }

  else
  {
    v10 = 0x85700000000;
    LODWORD(v9) = 3;
  }

  return v9 | v10;
}

uint64_t sub_2394AD07C(uint64_t a1, int a2, uint64_t *a3)
{
  v4 = sub_2394A7FC0(a1, a2);
  if (v4)
  {
    v5 = sub_239283EA0(v4);
    v6 = 0;
    v7 = 0;
    *a3 = v5;
    a3[1] = v8;
  }

  else
  {
    v6 = 0x86F00000000;
    v7 = 113;
  }

  return v7 | v6;
}

uint64_t sub_2394AD0D4(unsigned __int8 *a1, _BYTE *a2)
{
  sub_2394AAF00(a1);
  if (a1[2640] == 1)
  {
    v5 = *sub_2392C86E0(a1 + 2640, v4);
    if ((v5 - 1) > 0xFD)
    {
      v6 = 0x87E00000000;
      v7 = 113;
    }

    else
    {
      v6 = 0;
      v7 = 0;
      *a2 = v5;
    }
  }

  else
  {
    v6 = 0x87A00000000;
    v7 = 11;
  }

  return v7 | v6;
}

uint64_t sub_2394AD15C(uint64_t a1, char a2)
{
  if (*(a1 + 2644))
  {
    v4 = 0x88600000000;
    v5 = 3;
  }

  else if ((a2 - 1) > 0xFDu)
  {
    v4 = 0x88700000000;
    v5 = 113;
  }

  else if (sub_2394A7FC0(a1, a2))
  {
    v4 = 0x88A00000000;
    v5 = 126;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    *(a1 + 2640) = 1;
    *(a1 + 2641) = a2;
  }

  return v5 | v4;
}

uint64_t sub_2394AD200(uint64_t a1, char a2, int a3)
{
  if ((a2 - 1) > 0xFDu)
  {
    v5 = 0x89200000000;
    v6 = 113;
  }

  else
  {
    v4 = sub_2394A7F48(a1, a2);
    if (v4 && *(v4 + 137) && (*v4 - 1) <= 0xFFFFFFEFFFFFFFFELL)
    {
      v5 = 0;
      v6 = 0;
      *(v4 + 141) = a3 == 0;
    }

    else
    {
      v5 = 0x89600000000;
      v6 = 113;
    }
  }

  return v6 | v5;
}

uint64_t sub_2394AD2A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 2600);
  if (v3)
  {
    return (*(*v3 + 128))(v3, a2, 0, a3);
  }

  else
  {
    return 0x89F00000003;
  }
}

uint64_t sub_2394AD300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 2600);
  if (v3)
  {
    return (*(*v3 + 128))(v3, a2, 1, a3);
  }

  else
  {
    return 0x8A600000003;
  }
}

uint64_t sub_2394AD360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38[10] = *MEMORY[0x277D85DE8];
  v32[0] = a3;
  v32[1] = a4;
  v31[0] = a5;
  v31[1] = a6;
  v10 = sub_2394A7F48(a1, a2);
  if (!v10)
  {
    return 0x8B10000002FLL;
  }

  v11 = v10;
  v38[0] = &unk_284BB9138;
  v12 = sub_2394A7848(v10, v38);
  v13 = v12;
  if (!v12)
  {
    v29 = &v37;
    v30 = 76;
    v16 = sub_2393F36D0(1, v38, *(v11 + 8), *(v11 + 138), &v29);
    if (!v16)
    {
      if (v30 != 76)
      {
        v14 = 0x8BD00000000;
        LODWORD(v16) = 172;
        goto LABEL_18;
      }

      v27 = &v36;
      v28 = 85;
      v17 = *(a1 + 2600);
      if (!v17)
      {
        v14 = 0x89F00000000;
        LODWORD(v16) = 3;
        goto LABEL_18;
      }

      v16 = (*(*v17 + 128))(v17, a2, 0, &v27);
      if (!v16)
      {
        v25 = &v35;
        v26 = 211;
        v34 = 0;
        v18 = sub_2393D52D0(0x40uLL, 1uLL);
        if (v18)
        {
          v19 = v18;
          sub_238DB6950(v24, v29, v30);
          sub_238DB6950(v23, v27, v28);
          v16 = sub_2393F37A8(a2, v32, v31, v24, v23, &v25);
          if (v16 || (sub_238DB6950(v24, v25, v26), v16 = sub_2394AB310(a1, a2, v24[0], v24[1], v33), v16))
          {
            v14 = v16 & 0xFFFFFFFF00000000;
            j__free(v19);
          }

          else
          {
            v20 = v33[0];
            v21 = v33[1];
            v22 = v33[3];
            v19[2] = v33[2];
            v19[3] = v22;
            *v19 = v20;
            v19[1] = v21;
            *a7 = a2;
            v14 = 0;
            LODWORD(v16) = 0;
            *(a7 + 1) = *sub_2394AD5FC(&v29, 0);
            *(a7 + 8) = v19;
            *(a7 + 16) = 64;
          }
        }

        else
        {
          v14 = 0x8CB00000000;
          LODWORD(v16) = 25;
        }

        sub_2393F9144(v33, 64);
        goto LABEL_18;
      }
    }

    v14 = v16 & 0xFFFFFFFF00000000;
LABEL_18:
    v13 = v16;
    return v14 | v13;
  }

  v14 = v12 & 0xFFFFFFFF00000000;
  return v14 | v13;
}

uint64_t sub_2394AD5FC(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    sub_239531EC4();
  }

  return *a1 + a2;
}

unint64_t sub_2394AD624(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, _BYTE *a6)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 2600))
  {
    v17 = 0x8E000000000;
    LODWORD(v18) = 172;
    return v17 | v18;
  }

  if ((a2 - 1) > 0xFDu)
  {
    v17 = 0x8E100000000;
LABEL_9:
    LODWORD(v18) = 47;
    return v17 | v18;
  }

  v12 = sub_2394A7F48(a1, a2);
  if (!v12)
  {
    v17 = 0x8E400000000;
    goto LABEL_9;
  }

  v14 = v12;
  v15 = *(a1 + 2644);
  if ((v15 & 8) != 0)
  {
    v16 = *(a1 + 2616);
  }

  else
  {
    v16 = 0;
  }

  if (v16 == a2)
  {
    v20 = 1;
  }

  else if (*(a1 + 2569))
  {
    v20 = (~v15 & 5) == 0 && *(a1 + 2569) == a2 && (*(a1 + 2432) - 1) < 0xFFFFFFEFFFFFFFFFLL;
  }

  else
  {
    v20 = 0;
  }

  *a6 = 0;
  if (*a5 != 1)
  {
LABEL_33:
    if (*a4 == 1)
    {
      __s1 = buf;
      __n = 85;
      v18 = (*(**(a1 + 2600) + 128))(*(a1 + 2600), a2, 0, &__s1);
      if (v18)
      {
        goto LABEL_45;
      }

      v28 = sub_239289A18(a4, v27);
      if (__n != *(v28 + 1) || __n && memcmp(__s1, *v28, __n))
      {
        v29 = *(a1 + 2600);
        v30 = sub_239289A18(a4, v13);
        v18 = (*(*v29 + 104))(v29, a2, *v30, v30[1]);
        if (v18)
        {
          goto LABEL_45;
        }

        *a6 = 1;
      }
    }

    if (*a3 != 1 || (v31 = *(v14 + 138), v31 == *sub_238EAB248(a3, v13)) || (*(v14 + 138) = *sub_238EAB248(a3, v32), v20))
    {
      LODWORD(v18) = 0;
      v17 = 0;
      return v17 | v18;
    }

    v18 = sub_2394A884C(a1, v14);
    if (!v18)
    {
      LODWORD(v18) = 0;
      v17 = 0;
      *a6 = 1;
      return v17 | v18;
    }

LABEL_45:
    v17 = v18 & 0xFFFFFFFF00000000;
    return v17 | v18;
  }

  if (!(*(**(a1 + 2600) + 40))(*(a1 + 2600), a2, 1))
  {
    v25 = *(a1 + 2600);
    v26 = sub_239289A18(a5, v23);
    v18 = (*(*v25 + 96))(v25, a2, *v26, v26[1]);
    if (v18)
    {
      goto LABEL_45;
    }

    goto LABEL_33;
  }

  v24 = sub_2393D9044(0x11u);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v24, OS_LOG_TYPE_ERROR, "Received SetVIDVerificationStatement storage request with VVSC when ICAC already present. ICAC must be removed first.", buf, 2u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(17, 1, "Received SetVIDVerificationStatement storage request with VVSC when ICAC already present. ICAC must be removed first.");
  }

  v17 = 0x8F600000000;
  LODWORD(v18) = 3;
  return v17 | v18;
}

uint64_t sub_2394AD99C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 352);
  if (v2 > *(a1 + 8))
  {
    *(a1 + 8) = v2;
  }

  return 0;
}

unint64_t sub_2394AD9BC(uint64_t a1, uint64_t *a2)
{
  sub_23949ECF0(v7);
  sub_2394A0BD0(v7);
  v4 = sub_2393F77A4(a2, 0, 0x10u);
  if (!v4)
  {
    v4 = sub_2393F77A4(a2, 128, 0);
    if (!v4)
    {
      v4 = sub_2393F6DE8(a2, 2uLL);
      if (!v4)
      {
        v4 = sub_2393F77B0(a2);
        if (!v4)
        {
          v4 = sub_2393F6DE8(a2, 1uLL);
          if (!v4)
          {
            v4 = sub_2393F77A4(a2, 0, 0x10u);
            if (!v4)
            {
              v4 = sub_2393F5C58(a2, 513);
              if (!v4)
              {
                v4 = sub_2393F77B0(a2);
                if (!v4)
                {
                  v4 = sub_23949F4C8(v7, a2);
                  if (!v4)
                  {
                    v4 = sub_2394ADB9C(1u, 0, a2);
                    if (!v4)
                    {
                      v4 = sub_23949F4C8(v7, a2);
                      if (!v4)
                      {
                        v4 = sub_2394ADC30(a1, a2);
                        if (!v4)
                        {
                          v4 = sub_2393F77A4(a2, 128, 3u);
                          if (!v4)
                          {
                            v4 = sub_2393F77A4(a2, 0, 0x10u);
                            if (!v4)
                            {
                              sub_2394ADCE0(1, a2);
                              sub_2394ADDB0(1u, a2);
                              v6 = 100730370;
                              sub_2394ADE5C(&v6, 2, a2);
                              v4 = sub_2393F77B0(a2);
                              if (!v4)
                              {
                                v4 = sub_2393F77B0(a2);
                                if (!v4)
                                {
                                  v4 = sub_2393F77B0(a2);
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  nullsub_56();
  return v4;
}

uint64_t sub_2394ADB9C(unsigned int a1, unsigned int a2, void *a3)
{
  result = sub_2393F77A4(a3, 0, 0x10u);
  if (!result)
  {
    result = sub_23949FB2C(a1, &v7);
    if (!result)
    {
      result = sub_2393F75FC(a3, &v7);
      if (!result)
      {
        result = sub_23949FB2C(a2, &v7);
        if (!result)
        {
          result = sub_2393F75FC(a3, &v7);
          if (!result)
          {
            return sub_2393F77B0(a3);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2394ADC30(uint64_t a1, uint64_t a2)
{
  result = sub_2393F77A4(a2, 0, 0x10u);
  if (!result)
  {
    result = sub_2393F77A4(a2, 0, 0x10u);
    if (!result)
    {
      result = sub_2393F5C58(a2, 257);
      if (!result)
      {
        result = sub_2393F5C58(a2, 1025);
        if (!result)
        {
          result = sub_2393F77B0(a2);
          if (!result)
          {
            result = sub_2393F7438(a2, 0, (a1 + 8), 0x41u);
            if (!result)
            {

              return sub_2393F77B0(a2);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2394ADCE0(int a1, uint64_t *a2)
{
  result = sub_2393F77A4(a2, 0, 0x10u);
  if (!result)
  {
    result = sub_2393F5C58(a2, 1281);
    if (!result)
    {
      result = sub_2393F6F40(a2, 1);
      if (!result)
      {
        result = sub_2393F7918(a2, 0, 4u, 0);
        if (!result)
        {
          result = sub_2393F77A4(a2, 0, 0x10u);
          if (!result)
          {
            if (a1 || (result = sub_2393F6F40(a2, 1), !result))
            {
              result = sub_2393F77B0(a2);
              if (!result)
              {
                result = sub_2393F77B0(a2);
                if (!result)
                {

                  return sub_2393F77B0(a2);
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

uint64_t sub_2394ADDB0(unsigned __int16 a1, uint64_t *a2)
{
  result = sub_2393F77A4(a2, 0, 0x10u);
  if (!result)
  {
    result = sub_2393F5C58(a2, 1282);
    if (!result)
    {
      result = sub_2393F6F40(a2, 1);
      if (!result)
      {
        result = sub_2393F7918(a2, 0, 4u, 0);
        if (!result)
        {
          result = sub_2393F726C(a2, a1);
          if (!result)
          {
            result = sub_2393F77B0(a2);
            if (!result)
            {

              return sub_2393F77B0(a2);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2394ADE5C(unsigned __int16 *a1, uint64_t a2, uint64_t *a3)
{
  result = sub_2393F77A4(a3, 0, 0x10u);
  if (!result)
  {
    result = sub_2393F5C58(a3, 1283);
    if (!result)
    {
      result = sub_2393F6F40(a3, 1);
      if (!result)
      {
        result = sub_2393F7918(a3, 0, 4u, 0);
        if (!result)
        {
          result = sub_2393F77A4(a3, 0, 0x10u);
          if (!result)
          {
            if (a2)
            {
              v7 = 2 * a2;
              while (1)
              {
                result = sub_2393F5C58(a3, *a1);
                if (result)
                {
                  break;
                }

                ++a1;
                v7 -= 2;
                if (!v7)
                {
                  goto LABEL_10;
                }
              }
            }

            else
            {
LABEL_10:
              result = sub_2393F77B0(a3);
              if (!result)
              {
                result = sub_2393F77B0(a3);
                if (!result)
                {
                  return sub_2393F77B0(a3);
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

uint64_t sub_2394ADF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  sub_2393F6DA8(v21, *a4, a4[1]);
  v8 = (*(*a3 + 40))(a3);
  v9 = sub_2394AE148(a1, a2, v8, v21);
  if (!v9)
  {
    v24 = 0;
    v10 = *a4;
    v11 = sub_2393F6DCC(v21);
    v9 = (*(*a3 + 24))(a3, v10, v11, v23);
    if (!v9)
    {
      sub_2393F6DA8(v21, *a4, a4[1]);
      v9 = sub_2393F77A4(v21, 0, 0x10u);
      if (!v9)
      {
        v12 = (*(*a3 + 40))(a3);
        v9 = sub_2394AE148(a1, a2, v12, v21);
        if (!v9)
        {
          v9 = sub_2393F77A4(v21, 0, 0x10u);
          if (!v9)
          {
            v9 = sub_2393F5C58(v21, 513);
            if (!v9)
            {
              v9 = sub_2393F77B0(v21);
              if (!v9)
              {
                v9 = sub_2394AE2D0(v23, v21);
                if (!v9)
                {
                  v9 = sub_2393F77B0(v21);
                  if (!v9)
                  {
                    v14 = sub_2393F6DCC(v21);
                    sub_238DB8498(a4, v14, v15, v16, v17, v18, v19, v20, v21[0], v21[1], v21[2], v21[3], v22);
                  }
                }
              }
            }
          }
        }
      }
    }

    sub_2393F9144(v23, 64);
  }

  return v9;
}

unint64_t sub_2394AE148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if ((*a1 & 0x8000000000000000) != 0)
  {
    v10 = 0x15500000000;
    LODWORD(v11) = 47;
  }

  else
  {
    v5 = *(a1 + 12);
    if (v5)
    {
      v6 = v5 >= *(a1 + 8);
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      v13 = 0;
      v11 = sub_23949E8C0(a1 + 16, &v13);
      if (!v11)
      {
        v11 = sub_2393F77A4(a4, 0, 0x10u);
        if (!v11)
        {
          v11 = sub_2393F77A4(a4, 128, 0);
          if (!v11)
          {
            v11 = sub_2393F6DE8(a4, 2uLL);
            if (!v11)
            {
              v11 = sub_2393F77B0(a4);
              if (!v11)
              {
                v11 = sub_2393F6DE8(a4, *a1);
                if (!v11)
                {
                  v11 = sub_2393F77A4(a4, 0, 0x10u);
                  if (!v11)
                  {
                    v11 = sub_2393F5C58(a4, 513);
                    if (!v11)
                    {
                      v11 = sub_2393F77B0(a4);
                      if (!v11)
                      {
                        v11 = sub_23949F4C8(a1 + 176, a4);
                        if (!v11)
                        {
                          v11 = sub_2394ADB9C(*(a1 + 8), *(a1 + 12), a4);
                          if (!v11)
                          {
                            v11 = sub_23949F4C8(a1 + 16, a4);
                            if (!v11)
                            {
                              v11 = sub_2394ADC30(a2, a4);
                              if (!v11)
                              {
                                v11 = sub_2394AE658(v13, a2, a3, (a1 + 336), a4);
                                if (!v11)
                                {
                                  v11 = sub_2393F77B0(a4);
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v10 = v11 & 0xFFFFFFFF00000000;
    }

    else
    {
      v10 = 0x15700000000;
      LODWORD(v11) = 47;
    }
  }

  return v10 | v11;
}

uint64_t sub_2394AE2D0(uint64_t a1, uint64_t *a2)
{
  result = sub_2393F7918(a2, 0, 3u, 1);
  if (!result)
  {
    sub_2394AE9B8(&v5, a1);
    result = sub_23949FEE8(v5, a2);
    if (!result)
    {
      return sub_2393F77B0(a2);
    }
  }

  return result;
}

unint64_t sub_2394AE338(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v10 = 0;
  v6 = sub_23949E8C0(a1 + 16, &v10);
  if (v6)
  {
    goto LABEL_2;
  }

  if (v10 != 1)
  {
    v7 = 0x1E000000000;
LABEL_8:
    LODWORD(v6) = 47;
    return v7 | v6;
  }

  if (!sub_23949EB88(a1 + 16, a1 + 176))
  {
    v7 = 0x1E100000000;
    goto LABEL_8;
  }

  v8 = (*(*a2 + 40))(a2);
  v6 = sub_2394ADF30(a1, v8, a2, a3);
LABEL_2:
  v7 = v6 & 0xFFFFFFFF00000000;
  return v7 | v6;
}

unint64_t sub_2394AE410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v11 = 0;
  v8 = sub_23949E8C0(a1 + 16, &v11);
  if (v8)
  {
    goto LABEL_2;
  }

  if (v11 != 2)
  {
    v9 = 0x1EC00000000;
    goto LABEL_8;
  }

  v8 = sub_23949E8C0(a1 + 176, &v11);
  if (!v8)
  {
    if (v11 == 1)
    {
      v8 = sub_2394ADF30(a1, a2, a3, a4);
      goto LABEL_2;
    }

    v9 = 0x1EF00000000;
LABEL_8:
    LODWORD(v8) = 47;
    return v9 | v8;
  }

LABEL_2:
  v9 = v8 & 0xFFFFFFFF00000000;
  return v9 | v8;
}

unint64_t sub_2394AE4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v11 = 0;
  v8 = sub_23949E8C0(a1 + 16, &v11);
  if (v8)
  {
    goto LABEL_2;
  }

  if (v11 != 6)
  {
    v9 = 0x1FB00000000;
    goto LABEL_8;
  }

  v8 = sub_23949E8C0(a1 + 176, &v11);
  if (!v8)
  {
    if (v11 - 1 <= 1)
    {
      v8 = sub_2394ADF30(a1, a2, a3, a4);
      goto LABEL_2;
    }

    v9 = 0x1FE00000000;
LABEL_8:
    LODWORD(v8) = 47;
    return v9 | v8;
  }

LABEL_2:
  v9 = v8 & 0xFFFFFFFF00000000;
  return v9 | v8;
}

unint64_t sub_2394AE594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v11 = 0;
  v8 = sub_23949E8C0(a1 + 16, &v11);
  if (v8)
  {
    goto LABEL_2;
  }

  if (v11 != 3)
  {
    v9 = 0x20A00000000;
    goto LABEL_8;
  }

  v8 = sub_23949E8C0(a1 + 176, &v11);
  if (!v8)
  {
    if (v11 - 1 <= 1)
    {
      v8 = sub_2394ADF30(a1, a2, a3, a4);
      goto LABEL_2;
    }

    v9 = 0x20D00000000;
LABEL_8:
    LODWORD(v8) = 47;
    return v9 | v8;
  }

LABEL_2:
  v9 = v8 & 0xFFFFFFFF00000000;
  return v9 | v8;
}

unint64_t sub_2394AE658(int a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t *a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = sub_2393F77A4(a5, 128, 3u);
  if (v10)
  {
    goto LABEL_3;
  }

  v10 = sub_2393F77A4(a5, 0, 0x10u);
  if (v10)
  {
    goto LABEL_3;
  }

  v11 = 0x11B00000000;
  LODWORD(v10) = 47;
  if (a1 > 3)
  {
    if ((a1 - 4) < 2)
    {
      goto LABEL_10;
    }

    if (a1 != 6)
    {
      return v11 | v10;
    }

    v10 = sub_2394ADCE0(1, a5);
    if (v10)
    {
      goto LABEL_3;
    }

    v13 = 1;
  }

  else
  {
    if ((a1 - 1) >= 2)
    {
      if (a1 != 3)
      {
        return v11 | v10;
      }

      v10 = sub_2394ADCE0(1, a5);
      if (!v10)
      {
        v10 = sub_2394ADDB0(1u, a5);
        if (!v10)
        {
          *v22 = 100730370;
          v10 = sub_2394ADE5C(v22, 2, a5);
          if (!v10)
          {
            goto LABEL_10;
          }
        }
      }

      goto LABEL_3;
    }

    v10 = sub_2394ADCE0(0, a5);
    if (v10)
    {
      goto LABEL_3;
    }

    v13 = 96;
  }

  v10 = sub_2394ADDB0(v13, a5);
  if (!v10)
  {
LABEL_10:
    v10 = sub_2393F77A4(a5, 0, 0x10u);
    if (!v10)
    {
      v10 = sub_2393F5C58(a5, 1284);
      if (!v10)
      {
        v10 = sub_2393F7918(a5, 0, 4u, 0);
        if (!v10)
        {
          v10 = sub_2393F7E60((a2 + 8), 0x41uLL, v22);
          if (!v10)
          {
            v10 = sub_2393F7164(a5, v22, 0x14u);
            if (!v10)
            {
              v10 = sub_2393F77B0(a5);
              if (!v10)
              {
                v10 = sub_2393F77B0(a5);
              }
            }
          }
        }
      }
    }

    if (!v10)
    {
      v10 = sub_2393F77A4(a5, 0, 0x10u);
      if (!v10)
      {
        v10 = sub_2393F5C58(a5, 1285);
        if (!v10)
        {
          v10 = sub_2393F7918(a5, 0, 4u, 0);
          if (!v10)
          {
            v10 = sub_2393F77A4(a5, 0, 0x10u);
            if (!v10)
            {
              v10 = sub_2393F7E60((a3 + 8), 0x41uLL, v22);
              if (!v10)
              {
                v10 = sub_2393F717C(a5, 128, 0, v22, 0x14u);
                if (!v10)
                {
                  v10 = sub_2393F77B0(a5);
                  if (!v10)
                  {
                    v10 = sub_2393F77B0(a5);
                    if (!v10)
                    {
                      v10 = sub_2393F77B0(a5);
                    }
                  }
                }
              }
            }
          }
        }
      }

      if (!v10)
      {
        if (*a4 != 1 || (v10 = sub_2393F77A4(a5, 0, 0x10u), !v10) && (v15 = *sub_2394AE998(a4, v14), v17 = sub_2394AE998(a4, v16), v10 = sub_2393F7134(a5, v15, *(v17 + 4)), !v10) && (v10 = sub_2393F7918(a5, 0, 4u, 0), !v10) && (v19 = *(sub_2394AE998(a4, v18) + 2), v21 = sub_2394AE998(a4, v20), v10 = sub_2393F7164(a5, v19, *(v21 + 12)), !v10) && (v10 = sub_2393F77B0(a5), !v10) && (v10 = sub_2393F77B0(a5), !v10))
        {
          v10 = sub_2393F77B0(a5);
          if (!v10)
          {
            v10 = sub_2393F77B0(a5);
          }
        }
      }
    }
  }

LABEL_3:
  v11 = v10 & 0xFFFFFFFF00000000;
  return v11 | v10;
}

_BYTE *sub_2394AE998(_BYTE *a1, uint64_t a2)
{
  if ((*a1 & 1) == 0)
  {
    sub_23952EDB0();
  }

  return a1 + 8;
}

void *sub_2394AE9B8(void *result, uint64_t a2)
{
  *result = a2;
  if (!a2)
  {
    sub_239535EB4();
  }

  return result;
}

uint64_t sub_2394AE9D4(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v1 = *(a1 + 32);
    v2 = v1 == 0;
    if (v1)
    {
      v3 = 0;
    }

    else
    {
      v3 = 0x33600000000;
    }

    if (v2)
    {
      v4 = 3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v3 = 0x33600000000;
    v4 = 3;
  }

  return v4 | v3;
}

uint64_t sub_2394AEA1C(void *a1)
{
  sub_2393D6A10(a1 + 7, (a1 + 5), sub_2394B7194);
  sub_2393D6A10(a1 + 14, (a1 + 12), sub_2394B71B0);
  sub_2393D6A10(a1 + 21, (a1 + 19), sub_2394B71CC);
  sub_2393D6A10(a1 + 28, (a1 + 26), sub_2394B71E8);
  sub_2393D6A10(a1 + 35, (a1 + 33), sub_2394B7204);

  return sub_2393D6A10(a1 + 42, (a1 + 40), sub_2394B7220);
}

uint64_t sub_2394AEAF0(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    sub_239535F64();
  }

  *(result + 24) = a2;
  return result;
}

unint64_t sub_2394AEB0C(void *a1, uint64_t a2, const char *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a1[3];
  if (!v4)
  {
    return 0x351000000ACLL;
  }

  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = &unk_284BBC810;
  v31[0] = &unk_284BBC878;
  v31[1] = 0;
  v32 = a2;
  v33 = 0;
  v34 = 0xFFFF;
  v35 = 0;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  memset(v18, 0, sizeof(v18));
  v8 = &unk_284BBC928;
  v17[0] = &unk_284BBC990;
  v17[1] = 0;
  v19 = -1;
  v20 = 0;
  v21 = 1;
  result = sub_2394B6EC4(&v22, v31, v4);
  if (result == 216 || !result)
  {
    if (sub_2394AED2C(&v8, a1[3], &v22, *a3))
    {
      strncpy(&v18[2], a3 + 2, 0x11uLL);
      v18[18] = 0;
      return sub_2394B7060(&v8, v17, a1[3]);
    }

    else
    {
      *v18 = *a3;
      strncpy(&v18[2], a3 + 2, 0x11uLL);
      v18[18] = 0;
      return (*(*a1 + 56))(a1, a2, WORD1(v33), v18);
    }
  }

  return result;
}

uint64_t sub_2394AED2C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(a1 + 171) = *(a3 + 152);
  *(a1 + 152) = *(a3 + 154);
  *(a1 + 176) = 0;
  *(a1 + 182) = 1;
  if (!*(a3 + 156))
  {
    return 0;
  }

  while (1)
  {
    if ((*(*a1 + 40))(a1, a2))
    {
      return 0;
    }

    v8 = *(a1 + 152);
    if (v8 == a4)
    {
      break;
    }

    *(a1 + 182) = 0;
    *(a1 + 180) = v8;
    *(a1 + 152) = *(a1 + 178);
    v9 = *(a1 + 176) + 1;
    *(a1 + 176) = v9;
    if (*(a3 + 156) <= v9)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_2394AEE0C(uint64_t a1, char a2, int a3, uint64_t a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = &unk_284BBC810;
  v34[0] = &unk_284BBC878;
  v34[1] = 0;
  v35 = a2;
  v36 = 0;
  v37 = 0xFFFF;
  v38 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  memset(v21, 0, sizeof(v21));
  v10 = &unk_284BBC928;
  v19 = &unk_284BBC990;
  v20 = 0;
  v22 = -1;
  v23 = 0;
  v24 = 1;
  v7 = sub_2394B6EC4(&v25, v34, *(a1 + 24));
  if (v7)
  {
    v8 = v7 & 0xFFFFFFFF00000000;
  }

  else if (sub_2394AED2C(&v10, *(a1 + 24), &v25, a3))
  {
    *a4 = a3;
    strncpy((a4 + 2), &v21[2], 0x11uLL);
    LODWORD(v7) = 0;
    v8 = 0;
    *(a4 + 18) = 0;
  }

  else
  {
    v8 = 0x36D00000000;
    LODWORD(v7) = 216;
  }

  return v8 | v7;
}

unint64_t sub_2394AEFCC(uint64_t *a1, uint64_t a2, int a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = &unk_284BBC810;
  v34[0] = &unk_284BBC878;
  v34[1] = 0;
  v35 = a2;
  v36 = 0;
  v37 = 0xFFFF;
  v38 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v20 = 0;
  memset(v21, 0, sizeof(v21));
  v9 = &unk_284BBC928;
  v18 = &unk_284BBC990;
  v19 = 0;
  v22 = -1;
  v23 = 0;
  v24 = 1;
  v6 = sub_2394B6EC4(&v25, v34, a1[3]);
  if (!v6)
  {
    if (!sub_2394AED2C(&v9, a1[3], &v25, a3))
    {
      v7 = 0x37A00000000;
      LODWORD(v6) = 216;
      return v7 | v6;
    }

    v6 = (*(*a1 + 72))(a1, a2, WORD1(v23));
  }

  v7 = v6 & 0xFFFFFFFF00000000;
  return v7 | v6;
}

uint64_t sub_2394AF18C(uint64_t a1, uint64_t a2, unint64_t a3, const char *a4)
{
  v58 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 24);
  if (!v5)
  {
    return 0x381000000ACLL;
  }

  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = &unk_284BBC810;
  v53[0] = &unk_284BBC878;
  v53[1] = 0;
  v54 = a2;
  v55 = 0;
  v56 = 0xFFFF;
  v57 = 0;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  memset(v40, 0, sizeof(v40));
  v30 = &unk_284BBC928;
  v39[0] = &unk_284BBC990;
  v39[1] = 0;
  v41 = -1;
  v42 = 0;
  v43 = 1;
  v9 = sub_2394B6EC4(&v44, v53, v5);
  if (v9 && v9 != 216)
  {
    goto LABEL_19;
  }

  v10 = sub_2394AED2C(&v30, *(a1 + 24), &v44, *a4);
  if (!v10 || WORD1(v42) == a3)
  {
    *v40 = *a4;
    LOWORD(v42) = 0;
    strncpy(&v40[2], a4 + 2, 0x11uLL);
    v40[18] = 0;
    if (v10)
    {
      v9 = sub_2394B7060(&v30, v39, *(a1 + 24));
    }

    else
    {
      if (WORD1(v55) <= a3)
      {
        if (WORD1(v55) != a3)
        {
          v11 = 0x3A700000000;
          LODWORD(v9) = 47;
          return v9 | v11;
        }

        if (WORD1(v55) >= *(a1 + 8))
        {
          v11 = 0x3A800000000;
          LODWORD(v9) = 31;
          return v9 | v11;
        }

        ++WORD1(v55);
      }

      else
      {
        v22 = 0u;
        v21 = 0u;
        v20 = 0u;
        v19 = 0u;
        v18 = 0u;
        v17 = 0u;
        v16 = 0u;
        v15 = 0u;
        *v25 = 0;
        *&v25[8] = 0;
        *&v25[15] = 0;
        v14 = &unk_284BBC928;
        v23 = &unk_284BBC990;
        v24 = 0;
        v26 = 0;
        v27 = -1;
        v28 = 0;
        v29 = 1;
        sub_2394AF65C(&v14, *(a1 + 24), &v44, a3);
        v43 = v29;
        HIDWORD(v42) = HIDWORD(v28);
        v9 = sub_2394AF730(a1, a2, *v25);
        if (v9)
        {
          goto LABEL_19;
        }

        v9 = sub_2394B6C54(&v14, &v23, *(a1 + 24));
        if (v9)
        {
          goto LABEL_19;
        }

        v13 = *(a1 + 16);
        if (v13)
        {
          (*(*v13 + 24))(v13, a2, v25);
        }
      }

      v9 = sub_2394B7060(&v30, v39, *(a1 + 24));
      if (!v9)
      {
        if (v43 == 1)
        {
          LOWORD(v55) = *v40;
        }

        else
        {
          *v25 = HIWORD(v42);
          memset(&v25[2], 0, 17);
          v15 = 0u;
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v14 = &unk_284BBC928;
          v23 = &unk_284BBC990;
          v24 = 0;
          v26 = a2;
          v27 = -1;
          v28 = 0;
          v29 = 1;
          v9 = sub_2394B6EC4(&v14, &v23, *(a1 + 24));
          if (v9)
          {
            goto LABEL_19;
          }

          WORD2(v28) = *v40;
          v9 = sub_2394B7060(&v14, &v23, *(a1 + 24));
          if (v9)
          {
            goto LABEL_19;
          }
        }

        v9 = sub_2394AFA10(&v44, *(a1 + 24));
        if (!v9)
        {
          v9 = *(a1 + 16);
          if (v9)
          {
            (*(*v9 + 16))(v9, a2, v40);
            v11 = 0;
            LODWORD(v9) = 0;
          }

          else
          {
            v11 = 0;
          }

          return v9 | v11;
        }
      }
    }

LABEL_19:
    v11 = v9 & 0xFFFFFFFF00000000;
    return v9 | v11;
  }

  v11 = 0x38C00000000;
  LODWORD(v9) = 26;
  return v9 | v11;
}

uint64_t sub_2394AF65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 171) = *(a3 + 152);
  *(a1 + 152) = *(a3 + 154);
  *(a1 + 176) = 0;
  *(a1 + 182) = 1;
  if (!*(a3 + 156))
  {
    return 0;
  }

  while (1)
  {
    if ((*(*a1 + 40))(a1, a2))
    {
      return 0;
    }

    v8 = *(a1 + 176);
    if (v8 == a4)
    {
      break;
    }

    *(a1 + 182) = 0;
    *(a1 + 180) = *(a1 + 152);
    *(a1 + 152) = *(a1 + 178);
    v9 = v8 + 1;
    *(a1 + 176) = v9;
    if (*(a3 + 156) <= v9)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_2394AF730(uint64_t a1, char a2, int a3)
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 24);
  if (!v4)
  {
    return 0x529000000ACLL;
  }

  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = &unk_284BBC810;
  v51[0] = &unk_284BBC878;
  v51[1] = 0;
  v52 = a2;
  v53 = 0;
  v54 = 0xFFFF;
  v55 = 0;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v38 = 0;
  memset(v39, 0, sizeof(v39));
  v28 = &unk_284BBC928;
  v37[0] = &unk_284BBC990;
  v37[1] = 0;
  *v40 = -1;
  *&v40[2] = 0;
  v41 = 1;
  if (sub_2394B6EC4(&v42, v51, v4))
  {
    v7 = 0x52E00000000;
    v8 = 113;
  }

  else if (sub_2394AED2C(&v28, *(a1 + 24), &v42, a3))
  {
    v22 = v38;
    v23 = *v40;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = &unk_284BBCA18;
    v21[0] = &unk_284BBCA80;
    v21[1] = 0;
    v24 = a2;
    v25 = 0;
    v26 = 0;
    v27 = 1;
    if (*&v40[2])
    {
      v10 = 0;
      while (1)
      {
        v11 = sub_2394B6EC4(&v12, v21, *(a1 + 24));
        if (v11)
        {
          break;
        }

        sub_2394B6C54(&v12, v21, *(a1 + 24));
        v23 = HIWORD(v25);
        if (++v10 >= *&v40[2])
        {
          goto LABEL_10;
        }
      }

      v7 = v11 & 0xFFFFFFFF00000000;
    }

    else
    {
LABEL_10:
      *v40 = 0xFFFF;
      v11 = sub_2394B7060(&v28, v37, *(a1 + 24));
      v7 = v11 & 0xFFFFFFFF00000000;
      if (!v11)
      {
        v7 = 0;
        LODWORD(v11) = 0;
      }
    }

    v8 = v11;
  }

  else
  {
    v7 = 0x52F00000000;
    v8 = 16;
  }

  return v8 | v7;
}

unint64_t sub_2394AFA10(uint64_t a1, uint64_t a2)
{
  result = sub_2394B5984(a1, a2);
  if (!result)
  {

    return sub_2394B7060(a1, a1 + 136, a2);
  }

  return result;
}

unint64_t sub_2394AFA64(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 24);
  if (!v5)
  {
    return 0x3C3000000ACLL;
  }

  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = &unk_284BBC810;
  v35[0] = &unk_284BBC878;
  v35[1] = 0;
  v36 = a2;
  v37 = 0;
  v38 = 0xFFFF;
  v39 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  memset(v22, 0, sizeof(v22));
  v11 = &unk_284BBC928;
  v20 = &unk_284BBC990;
  v21 = 0;
  v23 = -1;
  v24 = 0;
  v25 = 1;
  v8 = sub_2394B6EC4(&v26, v35, v5);
  if (v8)
  {
    v9 = v8 & 0xFFFFFFFF00000000;
  }

  else if (sub_2394AF65C(&v11, *(a1 + 24), &v26, a3))
  {
    *a4 = *v22;
    strncpy((a4 + 2), &v22[2], 0x11uLL);
    LODWORD(v8) = 0;
    v9 = 0;
    *(a4 + 18) = 0;
  }

  else
  {
    v9 = 0x3C900000000;
    LODWORD(v8) = 216;
  }

  return v9 | v8;
}

uint64_t sub_2394AFC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 24);
  if (v4)
  {
    v67 = 0u;
    v66 = 0u;
    v65 = 0u;
    v64 = 0u;
    v63 = 0u;
    v62 = 0u;
    v61 = 0u;
    v60 = 0u;
    v59 = &unk_284BBC810;
    v68[0] = &unk_284BBC878;
    v68[1] = 0;
    v69 = a2;
    v70 = 0;
    v71 = 0xFFFF;
    v72 = 0;
    v53 = 0u;
    v52 = 0u;
    v51 = 0u;
    v50 = 0u;
    v49 = 0u;
    v48 = 0u;
    v47 = 0u;
    v46 = 0u;
    v54[1] = 0;
    memset(v55, 0, sizeof(v55));
    v45 = &unk_284BBC928;
    v54[0] = &unk_284BBC990;
    v56 = -1;
    v57 = 0;
    v58 = 1;
    v7 = sub_2394B6EC4(&v59, v68, v4);
    if (!v7)
    {
      if (!sub_2394AF65C(&v45, *(a1 + 24), &v59, a3))
      {
        v8 = 0x3D900000000;
        LODWORD(v7) = 216;
        return v7 | v8;
      }

      v39 = *v55;
      v40 = v56;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v29 = &unk_284BBCA18;
      v38[0] = &unk_284BBCA80;
      v38[1] = 0;
      v41 = a2;
      v42 = 0;
      v43 = 0;
      v44 = 1;
      if (v57)
      {
        v10 = 0;
        do
        {
          if (sub_2394B6EC4(&v29, v38, *(a1 + 24)))
          {
            break;
          }

          sub_2394B6C54(&v29, v38, *(a1 + 24));
          v40 = HIWORD(v42);
          ++v10;
        }

        while (v10 < v57);
      }

      v7 = sub_2394B6C54(&v45, v54, *(a1 + 24));
      if (!v7)
      {
        if (v58 == 1)
        {
          LOWORD(v70) = WORD2(v57);
          goto LABEL_14;
        }

        v21 = HIWORD(v57);
        v23 = 0;
        v22 = 0;
        v24 = 0;
        v12 = 0u;
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v11 = &unk_284BBC928;
        v20[0] = &unk_284BBC990;
        v20[1] = 0;
        v25 = a2;
        v26 = -1;
        v27 = 0;
        v28 = 1;
        v7 = sub_2394B6EC4(&v11, v20, *(a1 + 24));
        if (!v7)
        {
          WORD2(v27) = WORD2(v57);
          v7 = sub_2394B7060(&v11, v20, *(a1 + 24));
          if (!v7)
          {
LABEL_14:
            if (WORD1(v70))
            {
              --WORD1(v70);
            }

            v7 = sub_2394AFA10(&v59, *(a1 + 24));
            if (!v7)
            {
              v7 = *(a1 + 16);
              if (v7)
              {
                (*(*v7 + 24))(v7, a2, v55);
                v8 = 0;
                LODWORD(v7) = 0;
              }

              else
              {
                v8 = 0;
              }

              return v7 | v8;
            }
          }
        }
      }
    }

    v8 = v7 & 0xFFFFFFFF00000000;
    return v7 | v8;
  }

  return 0x3D3000000ACLL;
}

uint64_t sub_2394B002C(uint64_t a1, char a2, int a3, uint64_t a4)
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 24);
  if (!v5)
  {
    return 0;
  }

  v6 = a4;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v41 = &unk_284BBC810;
  v50[0] = &unk_284BBC878;
  v50[1] = 0;
  v51 = a2;
  v52 = 0;
  v53 = 0xFFFF;
  v54 = 0;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v36 = 0;
  memset(v37, 0, sizeof(v37));
  v25 = &unk_284BBC928;
  v34 = &unk_284BBC990;
  v35 = 0;
  v38 = -1;
  v39 = 0;
  v40 = 1;
  v20 = -65536;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = &unk_284BBCA18;
  v18 = &unk_284BBCA80;
  v19 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 1;
  if (sub_2394B6EC4(&v41, v50, v5))
  {
    return 0;
  }

  result = sub_2394AED2C(&v25, *(a1 + 24), &v41, a3);
  if (result)
  {
    return sub_2394B024C(&v9, *(a1 + 24), &v41, &v25, v6);
  }

  return result;
}

uint64_t sub_2394B024C(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, int a5)
{
  *(a1 + 156) = *(a3 + 152);
  *(a1 + 152) = a4[76];
  *(a1 + 154) = a4[86];
  *(a1 + 158) = 0;
  *(a1 + 164) = 1;
  if (!a4[87])
  {
    return 0;
  }

  while (1)
  {
    if ((*(*a1 + 40))(a1, a2))
    {
      return 0;
    }

    v9 = *(a1 + 154);
    if (v9 == a5)
    {
      break;
    }

    *(a1 + 164) = 0;
    *(a1 + 162) = v9;
    *(a1 + 154) = *(a1 + 160);
    v10 = *(a1 + 158) + 1;
    *(a1 + 158) = v10;
    if (a4[87] <= v10)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2394B0328(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v72 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 24);
  if (!v5)
  {
    return 0x40F000000ACLL;
  }

  v66 = 0u;
  v65 = 0u;
  v64 = 0u;
  v63 = 0u;
  v62 = 0u;
  v61 = 0u;
  v60 = 0u;
  v59 = 0u;
  v58 = &unk_284BBC810;
  v67[0] = &unk_284BBC878;
  v67[1] = 0;
  v68 = a2;
  v69 = 0;
  v70 = 0xFFFF;
  v71 = 0;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  memset(v54, 0, sizeof(v54));
  v44 = &unk_284BBC928;
  v53[0] = &unk_284BBC990;
  v53[1] = 0;
  v55 = -1;
  v56 = 0;
  v57 = 1;
  v9 = sub_2394B6EC4(&v58, v67, v5);
  if (v9 && v9 != 216)
  {
    goto LABEL_22;
  }

  if ((sub_2394AED2C(&v44, *(a1 + 24), &v58, a3) & 1) == 0)
  {
    if (WORD1(v69) >= *(a1 + 8))
    {
      v10 = 0x41B00000000;
      LODWORD(v9) = 31;
      return v9 | v10;
    }

    LOWORD(v39) = a3;
    HIWORD(v39) = a4;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v28 = &unk_284BBCA18;
    v37 = &unk_284BBCA80;
    v38 = 0;
    v40 = a2;
    v41 = 0;
    v42 = 0;
    v43 = 1;
    v9 = sub_2394B7060(&v28, &v37, *(a1 + 24));
    if (!v9)
    {
      *v54 = a3;
      v54[2] = 0;
      v55 = a4;
      LOWORD(v56) = 1;
      HIDWORD(v56) = v69;
      v9 = sub_2394B7060(&v44, v53, *(a1 + 24));
      if (!v9)
      {
        LODWORD(v69) = __PAIR32__(WORD1(v69), *v54) + 0x10000;
        v9 = sub_2394AFA10(&v58, *(a1 + 24));
        if (!v9)
        {
          v9 = *(a1 + 16);
          if (!v9)
          {
            v10 = 0;
            return v9 | v10;
          }

          (*(*v9 + 16))(v9, a2, v54);
          goto LABEL_6;
        }
      }
    }

    goto LABEL_22;
  }

  v39 = -65536;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v28 = &unk_284BBCA18;
  v37 = &unk_284BBCA80;
  v38 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 1;
  if ((sub_2394B024C(&v28, *(a1 + 24), &v58, &v44, a4) & 1) == 0)
  {
    HIWORD(v39) = a4;
    v9 = sub_2394B7060(&v28, &v37, *(a1 + 24));
    if (!v9)
    {
      if (v43 == 1)
      {
        v55 = HIWORD(v39);
      }

      else
      {
        v9 = sub_2394B7060(&v28, &v37, *(a1 + 24));
        if (v9)
        {
          goto LABEL_22;
        }

        v22 = *v54;
        v23 = v42;
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v12 = &unk_284BBCA18;
        v21[0] = &unk_284BBCA80;
        v21[1] = 0;
        v24 = a2;
        v25 = 0;
        v26 = 0;
        v27 = 1;
        v9 = sub_2394B6EC4(&v12, v21, *(a1 + 24));
        if (v9)
        {
          goto LABEL_22;
        }

        HIWORD(v25) = HIWORD(v39);
        v9 = sub_2394B7060(&v12, v21, *(a1 + 24));
        if (v9)
        {
          goto LABEL_22;
        }
      }

      LOWORD(v56) = v56 + 1;
      v9 = sub_2394B7060(&v44, v53, *(a1 + 24));
    }

LABEL_22:
    v10 = v9 & 0xFFFFFFFF00000000;
    return v9 | v10;
  }

LABEL_6:
  v10 = 0;
  LODWORD(v9) = 0;
  return v9 | v10;
}

uint64_t sub_2394B07EC(uint64_t *a1, uint64_t a2, int a3, int a4)
{
  v72 = *MEMORY[0x277D85DE8];
  v5 = a1[3];
  if (!v5)
  {
    return 0x449000000ACLL;
  }

  v66 = 0u;
  v65 = 0u;
  v64 = 0u;
  v63 = 0u;
  v62 = 0u;
  v61 = 0u;
  v60 = 0u;
  v59 = 0u;
  v58 = &unk_284BBC810;
  v67[0] = &unk_284BBC878;
  v67[1] = 0;
  v68 = a2;
  v69 = 0;
  v70 = 0xFFFF;
  v71 = 0;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v53 = 0;
  memset(v54, 0, sizeof(v54));
  v43 = &unk_284BBC928;
  v52[0] = &unk_284BBC990;
  v52[1] = 0;
  v55 = -1;
  v56 = 0;
  v57 = 1;
  v38 = -65536;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v28 = &unk_284BBCA18;
  v37[0] = &unk_284BBCA80;
  v37[1] = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 1;
  v9 = sub_2394B6EC4(&v58, v67, v5);
  if (v9)
  {
    goto LABEL_3;
  }

  if (!sub_2394AED2C(&v43, a1[3], &v58, a3))
  {
    v10 = 0x45000000000;
LABEL_13:
    LODWORD(v9) = 216;
    return v10 | v9;
  }

  if (!sub_2394B024C(&v28, a1[3], &v58, &v43, a4))
  {
    v10 = 0x45100000000;
    goto LABEL_13;
  }

  sub_2394B6C54(&v28, v37, a1[3]);
  if (v42 == 1)
  {
    v55 = HIWORD(v40);
  }

  else
  {
    v22 = v53;
    v23 = v41;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = &unk_284BBCA18;
    v21[0] = &unk_284BBCA80;
    v21[1] = 0;
    v24 = a2;
    v25 = 0;
    v26 = 0;
    v27 = 1;
    v9 = sub_2394B6EC4(&v12, v21, a1[3]);
    if (v9)
    {
      goto LABEL_3;
    }

    HIWORD(v25) = HIWORD(v40);
    v9 = sub_2394B7060(&v12, v21, a1[3]);
    if (v9)
    {
      goto LABEL_3;
    }
  }

  if (v56 < 2u)
  {
    v9 = (*(*a1 + 72))(a1, a2, WORD1(v56));
  }

  else
  {
    LOWORD(v56) = v56 - 1;
    v9 = sub_2394B7060(&v43, v52, a1[3]);
  }

LABEL_3:
  v10 = v9 & 0xFFFFFFFF00000000;
  return v10 | v9;
}

unint64_t sub_2394B0B84(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v60 = *MEMORY[0x277D85DE8];
  v4 = a1[3];
  if (!v4)
  {
    return 0x470000000ACLL;
  }

  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = &unk_284BBC810;
  v55[0] = &unk_284BBC878;
  v55[1] = 0;
  v56 = a2;
  v57 = 0;
  v58 = 0xFFFF;
  v59 = 0;
  v7 = sub_2394B6EC4(&v46, v55, v4);
  v8 = v7;
  if (v7)
  {
LABEL_3:
    v9 = v7 & 0xFFFFFFFF00000000;
  }

  else
  {
    v38 = v57;
    v40 = 0;
    v39 = 0;
    v41 = 0;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v28 = &unk_284BBC928;
    v37[0] = &unk_284BBC990;
    v37[1] = 0;
    v42 = a2;
    v43 = -1;
    v44 = 0;
    v45 = 1;
    v23 = -65536;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = &unk_284BBCA18;
    v21 = &unk_284BBCA80;
    v22 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 1;
    if (WORD1(v57))
    {
      v11 = 0;
      while (!sub_2394B6EC4(&v28, v37, a1[3]))
      {
        if (sub_2394B024C(&v12, a1[3], &v46, &v28, a3))
        {
          v7 = (*(*a1 + 96))(a1, a2, v38, a3);
          v8 = v7;
          if (v7)
          {
            goto LABEL_3;
          }
        }

        v38 = WORD2(v44);
        if (++v11 >= WORD1(v57))
        {
          break;
        }
      }
    }

    v9 = 0;
    v8 = 0;
  }

  return v8 | v9;
}

void *sub_2394B0E44(uint64_t a1, char a2)
{
  v3 = a2;
  if (*(a1 + 24))
  {
    return sub_2394B0E88((a1 + 40), a1, &v3);
  }

  else
  {
    return 0;
  }
}

void *sub_2394B0E88(unint64_t *a1, uint64_t a2, char *a3)
{
  v6 = sub_2393D52C4(0x28uLL);
  v7 = v6;
  if (v6)
  {
    sub_2394B0F24(v6, a2, *a3);
    v8 = sub_2393D52C4(0x18uLL);
    if (v8)
    {
      *v8 = v7;
      v8[1] = a1 + 2;
      v8[2] = 0;
      v9 = a1[4];
      v8[2] = v9;
      *(v9 + 8) = v8;
      a1[4] = v8;
      v10 = a1[1];
      v11 = *a1 + 1;
      *a1 = v11;
      if (v11 > v10)
      {
        a1[1] = v11;
      }
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_2394B0F24(uint64_t a1, uint64_t a2, char a3)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = &unk_284BBC498;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 18) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  v7 = 0u;
  v6 = &unk_284BBC810;
  v15[0] = &unk_284BBC878;
  v15[1] = 0;
  v16 = a3;
  v17 = 0;
  v18 = 0xFFFF;
  v19 = 0;
  if (!sub_2394B6EC4(&v6, v15, *(a2 + 24)))
  {
    *(a1 + 18) = v17;
    v4 = WORD1(v17);
    *(a1 + 24) = 0;
    *(a1 + 32) = v4;
  }

  return a1;
}

BOOL sub_2394B104C(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24) >= *(a1 + 32))
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v18 = *(a1 + 18);
  v19[1] = 0;
  v19[0] = 0;
  v20 = 0;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = &unk_284BBC928;
  v17[0] = &unk_284BBC990;
  v17[1] = 0;
  v21 = v4;
  v22 = -1;
  v23 = 0;
  v24 = 1;
  v5 = sub_2394B6EC4(&v8, v17, *(*(a1 + 8) + 24));
  v6 = v5 == 0;
  if (!v5)
  {
    ++*(a1 + 24);
    *(a1 + 18) = WORD2(v23);
    *a2 = v18;
    strncpy((a2 + 2), v19, 0x11uLL);
    *(a2 + 18) = 0;
  }

  return v6;
}

void sub_2394B11B4(uint64_t a1, void (***a2)(void))
{
  if (a2)
  {
    v4 = sub_2393D69E8((a1 + 16), a2);
    if (!v4)
    {
      sub_239533344();
    }

    v5 = v4;
    *v4 = 0;
    (**a2)(a2);
    j__free(a2);
    if (*(a1 + 40))
    {
      *(a1 + 48) = 1;
    }

    else
    {
      v6 = v5[2];
      *(v5[1] + 16) = v6;
      *(v6 + 8) = v5[1];
      j__free(v5);
    }

    --*a1;
  }
}

void *sub_2394B1264(uint64_t a1, char a2, int a3)
{
  v5 = a3;
  v4 = a2;
  if (*(a1 + 24))
  {
    return sub_2394B12B0((a1 + 152), a1, &v4, &v5);
  }

  else
  {
    return 0;
  }
}

void *sub_2394B12B0(unint64_t *a1, uint64_t a2, char *a3, unsigned int *a4)
{
  v8 = sub_2393D52C4(0x48uLL);
  v9 = v8;
  if (v8)
  {
    sub_2394B135C(v8, a2, *a3, *a4);
    v10 = sub_2393D52C4(0x18uLL);
    if (v10)
    {
      *v10 = v9;
      v10[1] = a1 + 2;
      v10[2] = 0;
      v11 = a1[4];
      v10[2] = v11;
      *(v11 + 8) = v10;
      a1[4] = v10;
      v12 = a1[1];
      v13 = *a1 + 1;
      *a1 = v13;
      if (v13 > v12)
      {
        a1[1] = v13;
      }
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

uint64_t sub_2394B135C(uint64_t a1, uint64_t a2, char a3, int a4)
{
  v44 = *MEMORY[0x277D85DE8];
  *a1 = &unk_284BBC4D0;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 18) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = &unk_284BBC810;
  v39[0] = &unk_284BBC878;
  v39[1] = 0;
  v40 = a3;
  v41 = 0;
  v42 = 0xFFFF;
  v43 = 0;
  if (!sub_2394B6EC4(&v30, v39, *(a2 + 24)))
  {
    if ((a4 & 0x10000) != 0)
    {
      v22 = a4;
      v24 = 0;
      v23 = 0;
      v25 = 0;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v11 = &unk_284BBC928;
      v20 = &unk_284BBC990;
      v21 = 0;
      v26 = a3;
      v27 = -1;
      v28 = 0;
      v29 = 1;
      if (sub_2394B6EC4(&v11, &v20, *(a2 + 24)))
      {
        return a1;
      }

      *(a1 + 20) = a4;
      *(a1 + 18) = a4;
      v10 = 1;
    }

    else
    {
      v22 = v41;
      v24 = 0;
      v23 = 0;
      v25 = 0;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v11 = &unk_284BBC928;
      v20 = &unk_284BBC990;
      v21 = 0;
      v26 = a3;
      v27 = -1;
      v28 = 0;
      v29 = 1;
      if (sub_2394B6EC4(&v11, &v20, *(a2 + 24)))
      {
        return a1;
      }

      v9 = v41;
      *(a1 + 20) = v41;
      *(a1 + 18) = v9;
      v10 = WORD1(v41);
    }

    *(a1 + 32) = v10;
    *(a1 + 40) = v27;
    *(a1 + 56) = v28;
  }

  return a1;
}