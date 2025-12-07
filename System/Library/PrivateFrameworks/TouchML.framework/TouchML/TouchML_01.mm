void *sub_26F1B7460(void *result, uint64_t (**a2)(int, size_t size))
{
  if (result)
  {
    v2 = result;
    v3 = *result;
    if (**result != 682290937)
    {
      sub_26F200F3C();
    }

    if (a2)
    {
      v4 = a2;
    }

    else
    {
      v4 = &off_282044EC8;
    }

    *result = 0;
    v5 = (result + 1);
    if (v3[12])
    {
      for (i = 0; i < v3[12]; ++i)
      {
        v7 = *(v3 + 7) + 72 * i;
        if ((*(v7 + 48) & 4) != 0 && *(v7 + 8) != *(v2 + *(v7 + 20)))
        {
          continue;
        }

        if (*(v7 + 12) == 2)
        {
          v8 = *(v2 + *(v7 + 24));
          if (v8)
          {
            v10 = v7 + 16;
            v9 = *(v7 + 16);
            v11 = *(v2 + *(v10 + 4));
            if (v9 == 14)
            {
              if (v11)
              {
                v22 = 0;
                v23 = 1;
                do
                {
                  if (*(v8 + 8 * v22))
                  {
                    (v4[1])(v4[2]);
                  }

                  v22 = v23;
                  v15 = v11 > v23++;
                }

                while (v15);
              }
            }

            else if (v9 == 15)
            {
              if (v11)
              {
                v20 = 0;
                v21 = 1;
                do
                {
                  if (*(v8 + 16 * v20 + 8))
                  {
                    (v4[1])(v4[2]);
                  }

                  v20 = v21;
                  v15 = v11 > v21++;
                }

                while (v15);
              }
            }

            else if (v9 == 16 && v11 != 0)
            {
              v13 = 0;
              v14 = 1;
              do
              {
                sub_26F1B7460(*(v8 + 8 * v13), v4);
                v13 = v14;
                v15 = v11 > v14++;
              }

              while (v15);
            }

            v4[1](v4[2], v8);
          }

          continue;
        }

        v16 = *(v7 + 16);
        switch(v16)
        {
          case 16:
            v19 = *(v2 + *(v7 + 24));
            if (v19 && v19 != *(v7 + 40))
            {
              sub_26F1B7460(v19, v4);
            }

            continue;
          case 15:
            v17 = *(v5 + *(v7 + 24));
            if (!v17)
            {
              continue;
            }

            v18 = *(v7 + 40);
            if (v18)
            {
              if (*(v18 + 8) == v17)
              {
                continue;
              }
            }

            break;
          case 14:
            v17 = *(v2 + *(v7 + 24));
            if (!v17 || v17 == *(v7 + 40))
            {
              continue;
            }

            break;
          default:
            continue;
        }

        v4[1](v4[2], v17);
      }
    }

    v24 = *v5;
    if (v24)
    {
      v25 = 0;
      v26 = 16;
      do
      {
        if (*(v2[2] + v26))
        {
          (v4[1])(v4[2]);
          v24 = *v5;
        }

        ++v25;
        v26 += 24;
      }

      while (v25 < v24);
    }

    if (v2[2])
    {
      (v4[1])(v4[2]);
    }

    v28 = v4[1];
    v27 = v4[2];

    return v28(v27, v2);
  }

  return result;
}

uint64_t sub_26F1B76EC(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = *result;
  if (!*result || *v2 != 682290937)
  {
    return 0;
  }

  v3 = *(v2 + 48);
  if (!v3)
  {
    return 1;
  }

  v4 = 0;
  v5 = *(v2 + 56);
  while (1)
  {
    v6 = (v5 + 72 * v4);
    v8 = v6[3];
    v7 = v6[4];
    v9 = (v1 + v6[6]);
    if (v8 != 2)
    {
      switch(v7)
      {
        case 14:
          v17 = *v9;
          if (v8)
          {
            v18 = 0;
          }

          else
          {
            v18 = v17 == 0;
          }

          if (v18)
          {
            return 0;
          }

          break;
        case 15:
          if ((!v8 || *(v1 + v6[5]) == 1) && *v9 && !v9[1])
          {
            return 0;
          }

          break;
        case 16:
          v15 = *v9;
          if (!v8 || v15 != 0)
          {
            result = sub_26F1B76EC(v15);
            if (!result)
            {
              return result;
            }
          }

          break;
      }

      goto LABEL_47;
    }

    v10 = *(v1 + v6[5]);
    if (v10 && !*v9)
    {
      return 0;
    }

    if (v7 == 14)
    {
      break;
    }

    if (v7 == 15)
    {
      if (v10)
      {
        v19 = 0;
        v20 = *v9;
        v21 = 1;
        do
        {
          v22 = (v20 + 16 * v19);
          if (*v22)
          {
            if (!v22[1])
            {
              return 0;
            }
          }

          v19 = v21;
          v14 = v10 > v21++;
        }

        while (v14);
      }
    }

    else if (v7 == 16 && v10)
    {
      v11 = 0;
      v12 = *v9;
      v13 = 1;
      do
      {
        result = sub_26F1B76EC(*(v12 + 8 * v11));
        if (!result)
        {
          return result;
        }

        v11 = v13;
        v14 = v10 > v13++;
      }

      while (v14);
    }

LABEL_47:
    ++v4;
    result = 1;
    if (v4 == v3)
    {
      return result;
    }
  }

  if (!v10)
  {
    goto LABEL_47;
  }

  v23 = 0;
  v24 = *v9;
  v25 = 1;
  while (*(v24 + 8 * v23))
  {
    v23 = v25;
    v14 = v10 > v25++;
    if (!v14)
    {
      goto LABEL_47;
    }
  }

  return 0;
}

uint64_t sub_26F1B78C0(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 40) <= a2)
  {
    sub_26F200F68();
  }

  v3 = *(a1 + 8 * a2 + 24);

  return v3();
}

void sub_26F1B7904(void *a1, _DWORD *a2, uint64_t a3)
{
  if (*a2 != 336960451)
  {
    sub_26F200F94();
  }

  a1[2] = a3;
  *a1 = a2;
  a1[1] = sub_26F1B78C0;
  v4 = a1 + 3;
  v5 = 8 * a2[10];

  bzero(v4, v5);
}

uint64_t sub_26F1B795C(uint64_t result, char *__s2)
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 64);
    if (!v3)
    {
      return 0;
    }

    v5 = *(result + 56);
    if (v5 >= 2)
    {
      LODWORD(v6) = 0;
      do
      {
        v7 = v6 + (v5 >> 1);
        v8 = strcmp(*(v3 + 16 * v7), __s2);
        if (!v8)
        {
          v10 = (v3 + 16 * v7 + 8);
          return *(v2 + 48) + 24 * *v10;
        }

        if (v8 >= 0)
        {
          v5 >>= 1;
        }

        else
        {
          v5 += v6 + ~v7;
        }

        if (v8 < 0)
        {
          v6 = (v7 + 1);
        }

        else
        {
          v6 = v6;
        }
      }

      while (v5 > 1);
      if (v5)
      {
        goto LABEL_16;
      }

      return 0;
    }

    v6 = 0;
    if (!v5)
    {
      return 0;
    }

LABEL_16:
    v9 = (v3 + 16 * v6);
    if (strcmp(*v9, __s2))
    {
      return 0;
    }

    v10 = (v9 + 1);
    return *(v2 + 48) + 24 * *v10;
  }

  return result;
}

uint64_t sub_26F1B7A38(uint64_t a1, int a2)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a1 + 80);
  if (v2 != 1)
  {
    v4 = 0;
    while (1)
    {
      v5 = v4 + (v2 >> 1);
      v6 = (v3 + 8 * v5);
      v7 = *v6;
      v8 = a2 - *v6;
      if (a2 >= *v6)
      {
        v9 = v6[1];
        if (*(v3 + 8 * (v5 + 1) + 4) + v7 - v9 > a2)
        {
          v13 = v8 + v9;
          if (((v8 + v9) & 0x80000000) == 0)
          {
            return *(a1 + 48) + 24 * v13;
          }

          return 0;
        }

        v2 += v4 + ~v5;
        v4 = v5 + 1;
      }

      else
      {
        v2 >>= 1;
      }

      if (v2 <= 1)
      {
        if (!v2)
        {
          return 0;
        }

        goto LABEL_11;
      }
    }
  }

  v4 = 0;
LABEL_11:
  v10 = (v3 + 8 * v4);
  v11 = *v10;
  if (*v10 > a2)
  {
    return 0;
  }

  v12 = v10[1];
  if (v11 - v12 + *(v3 + 8 * (v4 + 1) + 4) <= a2)
  {
    return 0;
  }

  v13 = v12 + a2 - v11;
  if ((v13 & 0x80000000) != 0)
  {
    return 0;
  }

  else
  {
    return *(a1 + 48) + 24 * v13;
  }
}

const char **sub_26F1B7B0C(uint64_t a1, char *__s2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    return 0;
  }

  v5 = *(a1 + 48);
  if (v5 < 2)
  {
    v6 = 0;
    if (v5)
    {
LABEL_14:
      v12 = (*(a1 + 56) + 72 * *(v3 + 4 * v6));
      if (!strcmp(*v12, __s2))
      {
        return v12;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  LODWORD(v6) = 0;
  v7 = *(a1 + 56);
  while (1)
  {
    v8 = v6 + (v5 >> 1);
    v9 = (v7 + 72 * *(v3 + 4 * v8));
    v10 = strcmp(*v9, __s2);
    if (!v10)
    {
      return v9;
    }

    v11 = v5 + v6 + ~v8;
    if (v10 < 0)
    {
      v6 = v8 + 1;
    }

    else
    {
      v6 = v6;
    }

    if (v10 >= 0)
    {
      v5 >>= 1;
    }

    else
    {
      v5 = v11;
    }

    if (v5 <= 1)
    {
      if (!v5)
      {
        return 0;
      }

      goto LABEL_14;
    }
  }
}

uint64_t sub_26F1B7BF0(uint64_t a1, int a2)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a1 + 80);
  if (v2 != 1)
  {
    v4 = 0;
    while (1)
    {
      v5 = v4 + (v2 >> 1);
      v6 = (v3 + 8 * v5);
      v7 = *v6;
      v8 = a2 - *v6;
      if (a2 >= *v6)
      {
        v9 = v6[1];
        if (*(v3 + 8 * (v5 + 1) + 4) + v7 - v9 > a2)
        {
          v13 = v8 + v9;
          if (((v8 + v9) & 0x80000000) == 0)
          {
            return *(a1 + 56) + 72 * v13;
          }

          return 0;
        }

        v2 += v4 + ~v5;
        v4 = v5 + 1;
      }

      else
      {
        v2 >>= 1;
      }

      if (v2 <= 1)
      {
        if (!v2)
        {
          return 0;
        }

        goto LABEL_11;
      }
    }
  }

  v4 = 0;
LABEL_11:
  v10 = (v3 + 8 * v4);
  v11 = *v10;
  if (*v10 > a2)
  {
    return 0;
  }

  v12 = v10[1];
  if (v11 - v12 + *(v3 + 8 * (v4 + 1) + 4) <= a2)
  {
    return 0;
  }

  v13 = v12 + a2 - v11;
  if ((v13 & 0x80000000) != 0)
  {
    return 0;
  }

  else
  {
    return *(a1 + 56) + 72 * v13;
  }
}

const char **sub_26F1B7CC4(uint64_t a1, char *__s2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = *(a1 + 56);
  if (!v3)
  {
    return 0;
  }

  v5 = *(a1 + 40);
  if (v5 < 2)
  {
    v6 = 0;
    if (v5)
    {
LABEL_14:
      v11 = (*(a1 + 48) + 24 * *(v3 + 4 * v6));
      if (!strcmp(*v11, __s2))
      {
        return v11;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  LODWORD(v6) = 0;
  v7 = *(a1 + 48);
  while (1)
  {
    v8 = v6 + (v5 >> 1);
    v9 = (v7 + 24 * *(v3 + 4 * v8));
    v10 = strcmp(*v9, __s2);
    if (!v10)
    {
      return v9;
    }

    if (v10 >= 0)
    {
      v5 >>= 1;
    }

    else
    {
      v5 += v6 + ~v8;
    }

    if (v10 < 0)
    {
      v6 = v8 + 1;
    }

    else
    {
      v6 = v6;
    }

    if (v5 <= 1)
    {
      if (!v5)
      {
        return 0;
      }

      goto LABEL_14;
    }
  }
}

uint64_t sub_26F1B7DC0(unsigned int a1, _BYTE *a2)
{
  if (a1 >> 29)
  {
    return sub_26F1B7E54(8 * a1, a2);
  }

  LOBYTE(v2) = 8 * a1;
  if (a1 < 0x10)
  {
    v3 = 0;
  }

  else
  {
    *a2 = v2 | 0x80;
    v2 = a1 >> 4;
    if (a1 < 0x800)
    {
      v3 = 1;
    }

    else
    {
      a2[1] = v2 | 0x80;
      v2 = a1 >> 11;
      if (a1 < 0x40000)
      {
        v3 = 2;
      }

      else
      {
        a2[2] = v2 | 0x80;
        v2 = a1 >> 18;
        if (a1 >> 25)
        {
          a2[3] = v2 | 0x80;
          v3 = 4;
          v2 = a1 >> 25;
        }

        else
        {
          v3 = 3;
        }
      }
    }
  }

  result = (v3 + 1);
  a2[v3] = v2;
  return result;
}

uint64_t sub_26F1B7E54(unint64_t a1, _BYTE *a2)
{
  if (!HIDWORD(a1))
  {
    if (a1 >= 0x80)
    {
      *a2 = a1 | 0x80;
      v2 = a1 >> 7;
      if (a1 < 0x4000)
      {
        LODWORD(v3) = 1;
      }

      else
      {
        a2[1] = v2 | 0x80;
        v2 = a1 >> 14;
        if (a1 < 0x200000)
        {
          LODWORD(v3) = 2;
        }

        else
        {
          a2[2] = v2 | 0x80;
          v2 = a1 >> 21;
          LODWORD(a1) = a1 >> 28;
          if (a1)
          {
            a2[3] = v2 | 0x80;
            LODWORD(v3) = 4;
LABEL_21:
            v5 = v3 + 1;
            goto LABEL_22;
          }

          LODWORD(v3) = 3;
        }
      }

      LOBYTE(a1) = v2;
      goto LABEL_21;
    }

    LODWORD(v3) = 0;
    goto LABEL_21;
  }

  *a2 = a1 | 0x80;
  a2[1] = (a1 >> 7) | 0x80;
  a2[2] = (a1 >> 14) | 0x80;
  a2[3] = (a1 >> 21) | 0x80;
  LOBYTE(v4) = a1 >> 28;
  if (a1 >> 35)
  {
    a2[4] = v4 | 0x80;
    v4 = HIDWORD(a1) >> 3;
    if (a1 >> 42)
    {
      v3 = 5;
      do
      {
        a2[v3++] = v4 | 0x80;
        v6 = v4 >> 14;
        v4 >>= 7;
      }

      while (v6);
    }

    else
    {
      LODWORD(v3) = 5;
    }

    v5 = v3 + 1;
  }

  else
  {
    v5 = 5;
    LODWORD(v3) = 4;
  }

  LOBYTE(a1) = v4;
LABEL_22:
  a2[v3] = a1;
  return v5;
}

unint64_t sub_26F1B7F68(uint64_t a1, unint64_t *a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 8);
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  v10 = *(a1 + 4);
  switch(*(v4 + 16))
  {
    case 0:
    case 6:
    case 0xD:
      if (*(a1 + 4))
      {
        return 0;
      }

      LODWORD(v11) = *v8 & 0x7F;
      if (v9 >= 2)
      {
        LODWORD(v11) = *v8 & 0x7F | ((v8[1] & 0x7F) << 7);
        if (v9 != 2)
        {
          LODWORD(v11) = *v8 & 0x7F | ((v8[1] & 0x7F) << 7) & 0x3FFF | ((v8[2] & 0x7F) << 14);
          if (v9 >= 4)
          {
            LODWORD(v11) = *v8 & 0x7F | ((v8[1] & 0x7F) << 7) & 0x3FFF | ((v8[2] & 0x7F) << 14) & 0xF01FFFFF | ((v8[3] & 0x7F) << 21);
            if (v9 != 4)
            {
              LODWORD(v11) = v11 | (v8[4] << 28);
            }
          }
        }
      }

      goto LABEL_54;
    case 1:
      if (*(a1 + 4))
      {
        return 0;
      }

      v21 = *v8 & 0x7F;
      if (v9 >= 2)
      {
        v21 = *v8 & 0x7F | ((v8[1] & 0x7F) << 7);
        if (v9 != 2)
        {
          v21 = *v8 & 0x7F | ((v8[1] & 0x7F) << 7) & 0x3FFF | ((v8[2] & 0x7F) << 14);
          if (v9 >= 4)
          {
            v21 = *v8 & 0x7F | ((v8[1] & 0x7F) << 7) & 0x3FFF | ((v8[2] & 0x7F) << 14) & 0xF01FFFFF | ((v8[3] & 0x7F) << 21);
            if (v9 != 4)
            {
              v21 |= v8[4] << 28;
            }
          }
        }
      }

      LODWORD(v11) = -(v21 & 1) ^ (v21 >> 1);
      goto LABEL_54;
    case 2:
    case 7:
    case 0xA:
      if (v10 != 5)
      {
        return 0;
      }

      LODWORD(v11) = *v8;
      goto LABEL_54;
    case 3:
    case 8:
      if (*(a1 + 4))
      {
        return 0;
      }

      *a2 = sub_26F1B82A8(*(a1 + 16), v8);
      return 1;
    case 4:
      if (*(a1 + 4))
      {
        return 0;
      }

      v22 = sub_26F1B82A8(*(a1 + 16), v8);
      v12 = -(v22 & 1) ^ (v22 >> 1);
      goto LABEL_37;
    case 5:
    case 9:
    case 0xB:
      if (v10 != 1)
      {
        return 0;
      }

      v12 = *v8;
LABEL_37:
      *a2 = v12;
      return 1;
    case 0xC:
      if (v9)
      {
        v11 = v9;
        while (1)
        {
          v27 = *v8++;
          if ((v27 & 0x7F) != 0)
          {
            break;
          }

          if (!--v11)
          {
            goto LABEL_54;
          }
        }

        LODWORD(v11) = 1;
      }

      else
      {
        LODWORD(v11) = 0;
      }

LABEL_54:
      *a2 = v11;
      return 1;
    case 0xE:
      if (v10 != 2)
      {
        return 0;
      }

      v17 = *(a1 + 5);
      if (a4)
      {
        v18 = *a2;
        if (*a2)
        {
          if (v18 != *(v4 + 40))
          {
            (*(a3 + 8))(*(a3 + 16));
          }
        }
      }

      v19 = (v9 - v17);
      result = (*a3)(*(a3 + 16), (v19 + 1));
      *a2 = result;
      if (!result)
      {
        return result;
      }

      memcpy(result, &v8[v17], v19);
      *(*a2 + v19) = 0;
      return 1;
    case 0xF:
      if (v10 != 2)
      {
        return 0;
      }

      v23 = *(a1 + 5);
      if (a4)
      {
        v24 = a2[1];
        if (v24)
        {
          v25 = *(v4 + 40);
          if (!v25 || v24 != *(v25 + 8))
          {
            (*(a3 + 8))(*(a3 + 16));
          }
        }
      }

      v26 = (v9 - v23);
      if (v26)
      {
        result = (*a3)(*(a3 + 16), v26);
        a2[1] = result;
        if (!result)
        {
          return result;
        }

        memcpy(result, &v8[v23], v26);
      }

      else
      {
        a2[1] = 0;
      }

      *a2 = v26;
      return 1;
    case 0x10:
      if (v10 != 2)
      {
        return 0;
      }

      v13 = *(v4 + 40);
      v14 = sub_26F1B62B8(*(v4 + 32), a3, v9 - *(a1 + 5), &v8[*(a1 + 5)]);
      if (a4)
      {
        v15 = *a2;
        v16 = 1;
        if (*a2 && v15 != v13)
        {
          if (v14)
          {
            v16 = sub_26F1B833C(v15, v14, a3) != 0;
            v15 = *a2;
          }

          sub_26F1B7460(v15, a3);
        }
      }

      else
      {
        v16 = 1;
      }

      *a2 = v14;
      return v14 && v16;
    default:
      return 0;
  }
}

unint64_t sub_26F1B82A8(unsigned int a1, _BYTE *a2)
{
  LODWORD(result) = *a2 & 0x7F;
  if (a1 > 4)
  {
    result = *a2 & 0x7F | (((a2[1] & 0x7F) << 7) & 0x3FFF) | ((a2[2] & 0x7F) << 14) & 0xFFFFFFFFF01FFFFFLL | ((a2[3] & 0x7F) << 21);
    v4 = a2 + 4;
    v5 = 7 * a1;
    v6 = 28;
    do
    {
      v7 = *v4++;
      result |= (v7 & 0x7F) << v6;
      v6 += 7;
    }

    while (v5 != v6);
  }

  else
  {
    if (a1 >= 2)
    {
      LODWORD(result) = *a2 & 0x7F | ((a2[1] & 0x7F) << 7);
      if (a1 != 2)
      {
        LODWORD(result) = *a2 & 0x7F | ((a2[1] & 0x7F) << 7) & 0x3FFF | ((a2[2] & 0x7F) << 14);
        if (a1 == 4)
        {
          LODWORD(result) = *a2 & 0x7F | ((a2[1] & 0x7F) << 7) & 0x3FFF | ((a2[2] & 0x7F) << 14) & 0xF01FFFFF | ((a2[3] & 0x7F) << 21);
        }
      }
    }

    return result;
  }

  return result;
}

uint64_t sub_26F1B833C(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (*(*a2 + 48))
  {
    v7 = 0;
    v8 = *(v3 + 56);
    do
    {
      v9 = v8 + 72 * v7;
      v10 = *(v9 + 12);
      if (v10 == 1)
      {
        v19 = *(v9 + 20);
        if ((*(v9 + 48) & 4) != 0)
        {
          if (*(a2 + v19))
          {
            goto LABEL_21;
          }

          v20 = *(v3 + 72);
          if (!v20)
          {
            goto LABEL_31;
          }

          v21 = *(v3 + 80);
          v22 = *(result + v19);
          if (v20 == 1)
          {
            v23 = 0;
          }

          else
          {
            v23 = 0;
            do
            {
              v24 = v23 + (v20 >> 1);
              v25 = (v21 + 8 * v24);
              v26 = *v25;
              v27 = v22 - *v25;
              if (v22 >= *v25)
              {
                v28 = v25[1];
                if (*(v21 + 8 * (v24 + 1) + 4) + v26 - v28 > v22)
                {
                  v31 = v27 + v28;
                  goto LABEL_36;
                }

                v20 += v23 + ~v24;
                v23 = v24 + 1;
              }

              else
              {
                v20 >>= 1;
              }
            }

            while (v20 > 1);
            if (!v20)
            {
              goto LABEL_31;
            }
          }

          v29 = (v21 + 8 * v23);
          v30 = *v29;
          if (*v29 <= v22)
          {
            v32 = v29[1];
            v33 = v30 - v32 + *(v21 + 8 * (v23 + 1) + 4);
            v34 = v32 + v22 - v30;
            if (v33 > v22)
            {
              v31 = v34;
            }

            else
            {
              v31 = -1;
            }
          }

          else
          {
LABEL_31:
            v31 = -1;
          }

LABEL_36:
          v9 = *(v3 + 56) + 72 * v31;
        }

        v35 = *(v9 + 24);
        v36 = (result + v35);
        v37 = (a2 + v35);
        v38 = *(v9 + 40);
        v39 = *(v9 + 16);
        switch(v39)
        {
          case 0xE:
            if (*v36 != v38 && *v37 == v38)
            {
LABEL_58:
              v45 = 8;
              goto LABEL_65;
            }

            break;
          case 0xF:
            v40 = v36[1];
            if (v40)
            {
              v41 = v37[1];
              if (v38)
              {
                v42 = v38[1];
                if (v40 != v42 && (!v41 || v41 == v42))
                {
LABEL_64:
                  v45 = 16;
LABEL_65:
                  memcpy(v37, v36, v45);
                  bzero(v36, v45);
                  if (*(v9 + 20))
                  {
                    *(a2 + v19) = *(result + v19);
                    *(result + v19) = 0;
                  }
                }
              }

              else if (!v41)
              {
                goto LABEL_64;
              }
            }

            break;
          case 0x10:
            if (*v36)
            {
              if (!*v37)
              {
                goto LABEL_58;
              }

              v17 = sub_26F1B833C(*v36, *v37, a3);
              if (!v17)
              {
                return v17;
              }
            }

            break;
          default:
            if (*(result + v19) && !*(a2 + v19))
            {
              if (v39 >= 0xE)
              {
                sub_26F200D58();
              }

              v45 = qword_26F208A10[v39];
              goto LABEL_65;
            }

            break;
        }
      }

      else if (v10 == 2)
      {
        v11 = *(v9 + 20);
        v12 = *(result + v11);
        if (v12)
        {
          v13 = *(v9 + 24);
          v14 = *(a2 + v11);
          if (v14)
          {
            v15 = *(v9 + 16);
            if (v15 >= 0x11)
            {
              sub_26F200D58();
            }

            v16 = qword_26F208988[v15];
            v17 = (*a3)(*(a3 + 16), v16 * (v14 + v12));
            if (!v17)
            {
              return v17;
            }

            v18 = v17;
            memcpy(v17, *(result + v13), *(result + v11) * v16);
            memcpy((v18 + *(result + v11) * v16), *(a2 + v13), *(a2 + v11) * v16);
            if (*(a2 + v13))
            {
              (*(a3 + 8))(*(a3 + 16));
            }

            if (*(result + v13))
            {
              (*(a3 + 8))(*(a3 + 16));
            }

            *(a2 + v13) = v18;
            *(a2 + v11) += *(result + v11);
          }

          else
          {
            *(a2 + v11) = v12;
            *(a2 + v13) = *(result + v13);
          }

          *(result + v11) = 0;
          *(result + v13) = 0;
        }
      }

LABEL_21:
      ++v7;
      v3 = *a2;
    }

    while (v7 < *(*a2 + 48));
  }

  return 1;
}

void *sub_26F1B8674(void *a1, id a2, size_t a3)
{
  IndexedIvars = object_getIndexedIvars(a2);
  v6 = object_getIndexedIvars(a1);

  return memmove(IndexedIvars, v6, a3);
}

void *sub_26F1B86D0(void *a1, uint64_t a2, const void *a3)
{
  v6 = *(object_getIndexedIvars(a1) + a2);
  if (v6)
  {
    CFRelease(v6);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  result = object_getIndexedIvars(a1);
  result[a2] = a3;
  return result;
}

uint64_t sub_26F1B88DC(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_2806D91B8;
  qword_2806D91B8 = v1;

  [qword_2806D91B8 setSubviews:MEMORY[0x277CBEBF8]];
  v3 = qword_2806D91B8;

  return MEMORY[0x2821F9670](v3, sel_setConstraints_);
}

void sub_26F1B8DAC(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:v4];
  v6.receiver = *(a1 + 32);
  v6.super_class = TMLUITraitCollection;
  objc_msgSendSuper2(&v6, sel_setTMLValue_forKeyPath_, v5, v4);
}

uint64_t sub_26F1B9118(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = [v3 preferredContentSizeCategories];

  if (v4)
  {
    v5 = [v3 preferredContentSizeCategories];
    v6 = [*(a1 + 32) preferredContentSizeCategory];
    v7 = [v5 containsObject:v6];

    if (v7)
    {
      v8 = [*(a1 + 32) preferredContentSizeCategory];
      [v3 setPreferredContentSizeCategory:v8];

      goto LABEL_5;
    }

LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

LABEL_5:
  v9 = *(a1 + 32);
  v10 = [v3 traitCollection];
  v11 = [v9 containsTraitsInCollection:v10];

LABEL_7:
  return v11;
}

uint64_t sub_26F1B9218(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 specificity];
  v6 = [v4 specificity];

  if (v5 == v6)
  {
    return 0;
  }

  else
  {
    return ((v5 - v6) >> 63) | 1;
  }
}

const CGPath *sub_26F1B9448(CGFloat a1, CGFloat a2, uint64_t a3, void *a4, void *a5, CGLineCap a6, CGLineJoin a7)
{
  v12 = a4;
  v13 = a5;
  objc_opt_class();
  v14 = v12;
  if (objc_opt_isKindOfClass())
  {
    v14 = [(CGPath *)v12 CGPath];
  }

  memset(&v19, 0, sizeof(v19));
  if (v13)
  {
    objc_msgSend_transform(v13);
  }

  v18 = v19;
  if (CGAffineTransformIsIdentity(&v18))
  {
    v15 = 0;
  }

  else
  {
    v15 = &v19;
  }

  v16 = CGPathCreateCopyByStrokingPath(v14, v15, a1, a6, a7, a2);

  return v16;
}

id sub_26F1B9A64(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v7 = objc_alloc(*(a1 + 32));
  CATransform3DMakeTranslation(&v10, a2, a3, a4);
  v8 = [v7 initWithTransform3D:&v10];

  return v8;
}

id sub_26F1B9AE0(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v7 = objc_alloc(*(a1 + 32));
  CATransform3DMakeScale(&v10, a2, a3, a4);
  v8 = [v7 initWithTransform3D:&v10];

  return v8;
}

id sub_26F1B9B5C(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = objc_alloc(*(a1 + 32));
  CATransform3DMakeRotation(&v12, a2, a3, a4, a5);
  v10 = [v9 initWithTransform3D:&v12];

  return v10;
}

id sub_26F1B9BE0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc(*(a1 + 32));
  if (v5)
  {
    objc_msgSend_transform(v5);
    if (v6)
    {
LABEL_3:
      objc_msgSend_transform(v6);
      goto LABEL_6;
    }
  }

  else
  {
    memset(&a, 0, sizeof(a));
    if (v6)
    {
      goto LABEL_3;
    }
  }

  memset(&v10, 0, sizeof(v10));
LABEL_6:
  CATransform3DConcat(&v12, &a, &v10);
  v8 = [v7 initWithTransform3D:&v12];

  return v8;
}

id sub_26F1B9CBC(uint64_t a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = a2;
  v10 = objc_alloc(*(a1 + 32));
  if (v9)
  {
    objc_msgSend_transform(v9);
  }

  else
  {
    memset(&v13, 0, sizeof(v13));
  }

  CATransform3DTranslate(&v14, &v13, a3, a4, a5);
  v11 = [v10 initWithTransform3D:&v14];

  return v11;
}

id sub_26F1B9D84(uint64_t a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = a2;
  v10 = objc_alloc(*(a1 + 32));
  if (v9)
  {
    objc_msgSend_transform(v9);
  }

  else
  {
    memset(&v13, 0, sizeof(v13));
  }

  CATransform3DScale(&v14, &v13, a3, a4, a5);
  v11 = [v10 initWithTransform3D:&v14];

  return v11;
}

id sub_26F1B9E4C(uint64_t a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = a2;
  v12 = objc_alloc(*(a1 + 32));
  if (v11)
  {
    objc_msgSend_transform(v11);
  }

  else
  {
    memset(&v15, 0, sizeof(v15));
  }

  CATransform3DRotate(&v16, &v15, a3, a4, a5, a6);
  v13 = [v12 initWithTransform3D:&v16];

  return v13;
}

id sub_26F1B9F1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(*(a1 + 32));
  if (v3)
  {
    objc_msgSend_transform(v3);
  }

  else
  {
    memset(&v7, 0, sizeof(v7));
  }

  CATransform3DInvert(&v8, &v7);
  v5 = [v4 initWithTransform3D:&v8];

  return v5;
}

id sub_26F1B9FBC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(*(a1 + 32));
  if (v3)
  {
    objc_msgSend_transform(v3);
  }

  else
  {
    memset(&v7, 0, sizeof(v7));
  }

  CATransform3DMakeAffineTransform(&v8, &v7);
  v5 = [v4 initWithTransform3D:&v8];

  return v5;
}

uint64_t sub_26F1BA210(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = sub_26F1BA3F0(v6);
  v8 = [a1 initWithImage:v6 style:a4 target:v7 action:sel_action_];

  return v8;
}

uint64_t sub_26F1BA27C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = sub_26F1BA3F0(v6);
  v8 = [a1 initWithTitle:v6 style:a4 target:v7 action:sel_action_];

  return v8;
}

uint64_t sub_26F1BA2E8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_26F1BA3F0(a1);
  v6 = [a1 initWithBarButtonSystemItem:a3 target:v5 action:sel_action_];

  return v6;
}

uint64_t sub_26F1BA344(void *a1)
{
  v2 = sub_26F1BA3F0(a1);
  [a1 setTarget:v2];

  return MEMORY[0x2821F9670](a1, sel_setAction_);
}

uint64_t sub_26F1BA39C(void *a1)
{
  [a1 setTarget:0];

  return MEMORY[0x2821F9670](a1, sel_setAction_);
}

id sub_26F1BA3F0(uint64_t a1)
{
  if (qword_2806D91D0 != -1)
  {
    sub_26F200FC0();
  }

  v2 = qword_2806D91C8;

  return v2;
}

uint64_t sub_26F1BA434()
{
  v0 = objc_alloc_init(TMLUIBarButtonItemActionTarget);
  v1 = qword_2806D91C8;
  qword_2806D91C8 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_26F1BA4E0()
{
  v0 = [MEMORY[0x277CBEB98] setWithObject:@"array"];
  v1 = qword_2806D91D8;
  qword_2806D91D8 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id sub_26F1BABF4(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = [objc_alloc(*(a1 + 32)) initWithInsets:{a2, a3, a4, a5}];

  return v5;
}

BOOL sub_26F1BAC54(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 UIEdgeInsets];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v4 UIEdgeInsets];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v8 == v16;
  if (v6 != v14)
  {
    v21 = 0;
  }

  if (v12 != v20)
  {
    v21 = 0;
  }

  return v10 == v18 && v21;
}

double sub_26F1BADB0(uint64_t a1)
{
  *(a1 + 64) = xmmword_279DC6850;
  *(a1 + 80) = unk_279DC6860;
  *(a1 + 96) = 0;
  *a1 = xmmword_279DC6810;
  *(a1 + 16) = unk_279DC6820;
  result = 0.0;
  *(a1 + 32) = xmmword_279DC6830;
  *(a1 + 48) = *dbl_279DC6840;
  return result;
}

uint64_t sub_26F1BADDC(void **a1, uint64_t a2)
{
  if (*a1 != &unk_287F2BF10)
  {
    sub_26F200FE8();
  }

  return sub_26F1B3D74(a1);
}

uint64_t sub_26F1BAE10(void **a1, uint64_t a2)
{
  if (*a1 != &unk_287F2BF10)
  {
    sub_26F201014();
  }

  return sub_26F1B4748(a1, a2);
}

uint64_t sub_26F1BAE44(void **a1, void (**a2)(void, void, void))
{
  if (*a1 != &unk_287F2BF10)
  {
    sub_26F201040();
  }

  return sub_26F1B52DC(a1, a2);
}

void *sub_26F1BAE90(void **a1, uint64_t (**a2)(int, size_t size))
{
  if (*a1 != &unk_287F2BF10)
  {
    sub_26F20106C();
  }

  return sub_26F1B7460(a1, a2);
}

double sub_26F1BAEC4(_OWORD *a1)
{
  a1[4] = xmmword_279DC68B8;
  a1[5] = unk_279DC68C8;
  a1[6] = xmmword_279DC68D8;
  a1[7] = unk_279DC68E8;
  *a1 = xmmword_279DC6878;
  a1[1] = unk_279DC6888;
  result = 0.0;
  a1[2] = xmmword_279DC6898;
  a1[3] = unk_279DC68A8;
  return result;
}

uint64_t sub_26F1BAEF0(void **a1, uint64_t a2)
{
  if (*a1 != &unk_287F2BF88)
  {
    sub_26F201098();
  }

  return sub_26F1B3D74(a1);
}

uint64_t sub_26F1BAF24(void **a1, uint64_t a2)
{
  if (*a1 != &unk_287F2BF88)
  {
    sub_26F2010C4();
  }

  return sub_26F1B4748(a1, a2);
}

uint64_t sub_26F1BAF58(void **a1, void (**a2)(void, void, void))
{
  if (*a1 != &unk_287F2BF88)
  {
    sub_26F2010F0();
  }

  return sub_26F1B52DC(a1, a2);
}

void *sub_26F1BAFA4(void **a1, uint64_t (**a2)(int, size_t size))
{
  if (*a1 != &unk_287F2BF88)
  {
    sub_26F20111C();
  }

  return sub_26F1B7460(a1, a2);
}

double sub_26F1BAFD8(uint64_t a1)
{
  *(a1 + 32) = xmmword_279DC6918;
  *(a1 + 48) = unk_279DC6928;
  *(a1 + 64) = 0;
  result = 0.0;
  *a1 = xmmword_279DC68F8;
  *(a1 + 16) = *dbl_279DC6908;
  return result;
}

uint64_t sub_26F1BAFFC(void **a1, uint64_t a2)
{
  if (*a1 != &unk_287F2C000)
  {
    sub_26F201148();
  }

  return sub_26F1B3D74(a1);
}

uint64_t sub_26F1BB030(void **a1, uint64_t a2)
{
  if (*a1 != &unk_287F2C000)
  {
    sub_26F201174();
  }

  return sub_26F1B4748(a1, a2);
}

uint64_t sub_26F1BB064(void **a1, void (**a2)(void, void, void))
{
  if (*a1 != &unk_287F2C000)
  {
    sub_26F2011A0();
  }

  return sub_26F1B52DC(a1, a2);
}

void *sub_26F1BB0B0(void **a1, uint64_t (**a2)(int, size_t size))
{
  if (*a1 != &unk_287F2C000)
  {
    sub_26F2011CC();
  }

  return sub_26F1B7460(a1, a2);
}

double sub_26F1BB0E4(_OWORD *a1)
{
  *a1 = xmmword_279DC6940;
  a1[1] = *algn_279DC6950;
  result = 0.0;
  a1[2] = xmmword_279DC6960;
  return result;
}

uint64_t sub_26F1BB100(void **a1, uint64_t a2)
{
  if (*a1 != &unk_287F2C078)
  {
    sub_26F2011F8();
  }

  return sub_26F1B3D74(a1);
}

uint64_t sub_26F1BB134(void **a1, uint64_t a2)
{
  if (*a1 != &unk_287F2C078)
  {
    sub_26F201224();
  }

  return sub_26F1B4748(a1, a2);
}

uint64_t sub_26F1BB168(void **a1, void (**a2)(void, void, void))
{
  if (*a1 != &unk_287F2C078)
  {
    sub_26F201250();
  }

  return sub_26F1B52DC(a1, a2);
}

void *sub_26F1BB1B4(void **a1, uint64_t (**a2)(int, size_t size))
{
  if (*a1 != &unk_287F2C078)
  {
    sub_26F20127C();
  }

  return sub_26F1B7460(a1, a2);
}

double sub_26F1BB1E8(uint64_t a1)
{
  *(a1 + 32) = xmmword_279DC6990;
  *(a1 + 48) = unk_279DC69A0;
  *(a1 + 64) = 0;
  result = 0.0;
  *a1 = xmmword_279DC6970;
  *(a1 + 16) = *dbl_279DC6980;
  return result;
}

uint64_t sub_26F1BB20C(void **a1, uint64_t a2)
{
  if (*a1 != &unk_287F2C0F0)
  {
    sub_26F2012A8();
  }

  return sub_26F1B3D74(a1);
}

uint64_t sub_26F1BB240(void **a1, uint64_t a2)
{
  if (*a1 != &unk_287F2C0F0)
  {
    sub_26F2012D4();
  }

  return sub_26F1B4748(a1, a2);
}

uint64_t sub_26F1BB274(void **a1, void (**a2)(void, void, void))
{
  if (*a1 != &unk_287F2C0F0)
  {
    sub_26F201300();
  }

  return sub_26F1B52DC(a1, a2);
}

void *sub_26F1BB2C0(void **a1, uint64_t (**a2)(int, size_t size))
{
  if (*a1 != &unk_287F2C0F0)
  {
    sub_26F20132C();
  }

  return sub_26F1B7460(a1, a2);
}

double sub_26F1BB2F4(uint64_t a1)
{
  *(a1 + 32) = xmmword_279DC69D8;
  *(a1 + 48) = unk_279DC69E8;
  *(a1 + 64) = xmmword_279DC69F8;
  *(a1 + 80) = 0;
  *&result = 0x287F2C168;
  *a1 = xmmword_279DC69B8;
  *(a1 + 16) = unk_279DC69C8;
  return result;
}

double sub_26F1BB320(_OWORD *a1)
{
  a1[6] = xmmword_279DC6A70;
  a1[7] = unk_279DC6A80;
  a1[8] = xmmword_279DC6A90;
  a1[9] = unk_279DC6AA0;
  a1[2] = xmmword_279DC6A30;
  a1[3] = unk_279DC6A40;
  a1[4] = xmmword_279DC6A50;
  a1[5] = unk_279DC6A60;
  *&result = 0x287F2C1E0;
  *a1 = xmmword_279DC6A10;
  a1[1] = unk_279DC6A20;
  return result;
}

uint64_t sub_26F1BB354(void **a1, uint64_t a2)
{
  if (*a1 != &unk_287F2C1E0)
  {
    sub_26F201358();
  }

  return sub_26F1B3D74(a1);
}

uint64_t sub_26F1BB388(void **a1, uint64_t a2)
{
  if (*a1 != &unk_287F2C1E0)
  {
    sub_26F201384();
  }

  return sub_26F1B4748(a1, a2);
}

uint64_t sub_26F1BB3BC(void **a1, void (**a2)(void, void, void))
{
  if (*a1 != &unk_287F2C1E0)
  {
    sub_26F2013B0();
  }

  return sub_26F1B52DC(a1, a2);
}

void *sub_26F1BB408(void **a1, uint64_t (**a2)(int, size_t size))
{
  if (*a1 != &unk_287F2C1E0)
  {
    sub_26F2013DC();
  }

  return sub_26F1B7460(a1, a2);
}

double sub_26F1BB43C(uint64_t a1)
{
  *&result = 0x287F2C258;
  *a1 = xmmword_279DC6AB0;
  *(a1 + 16) = unk_279DC6AC0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_26F1BB458(void **a1, uint64_t a2)
{
  if (*a1 != &unk_287F2C258)
  {
    sub_26F201408();
  }

  return sub_26F1B3D74(a1);
}

uint64_t sub_26F1BB48C(void **a1, uint64_t a2)
{
  if (*a1 != &unk_287F2C258)
  {
    sub_26F201434();
  }

  return sub_26F1B4748(a1, a2);
}

uint64_t sub_26F1BB4C0(void **a1, void (**a2)(void, void, void))
{
  if (*a1 != &unk_287F2C258)
  {
    sub_26F201460();
  }

  return sub_26F1B52DC(a1, a2);
}

void *sub_26F1BB50C(void **a1, uint64_t (**a2)(int, size_t size))
{
  if (*a1 != &unk_287F2C258)
  {
    sub_26F20148C();
  }

  return sub_26F1B7460(a1, a2);
}

double sub_26F1BB540(uint64_t a1)
{
  *a1 = xmmword_279DC6AD8;
  *(a1 + 16) = unk_279DC6AE8;
  result = 0.0;
  *(a1 + 32) = xmmword_279DC6AF8;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_26F1BB564(void **a1, uint64_t a2)
{
  if (*a1 != &unk_287F2C2D0)
  {
    sub_26F2014B8();
  }

  return sub_26F1B3D74(a1);
}

uint64_t sub_26F1BB598(void **a1, uint64_t a2)
{
  if (*a1 != &unk_287F2C2D0)
  {
    sub_26F2014E4();
  }

  return sub_26F1B4748(a1, a2);
}

uint64_t sub_26F1BB5CC(void **a1, void (**a2)(void, void, void))
{
  if (*a1 != &unk_287F2C2D0)
  {
    sub_26F201510();
  }

  return sub_26F1B52DC(a1, a2);
}

void *sub_26F1BB618(void **a1, uint64_t (**a2)(int, size_t size))
{
  if (*a1 != &unk_287F2C2D0)
  {
    sub_26F20153C();
  }

  return sub_26F1B7460(a1, a2);
}

double sub_26F1BB64C(_OWORD *a1)
{
  *a1 = xmmword_279DC6B10;
  a1[1] = unk_279DC6B20;
  result = 0.0;
  a1[2] = xmmword_279DC6B30;
  return result;
}

uint64_t sub_26F1BB668(void **a1, uint64_t a2)
{
  if (*a1 != &unk_287F2C348)
  {
    sub_26F201568();
  }

  return sub_26F1B3D74(a1);
}

uint64_t sub_26F1BB69C(void **a1, uint64_t a2)
{
  if (*a1 != &unk_287F2C348)
  {
    sub_26F201594();
  }

  return sub_26F1B4748(a1, a2);
}

uint64_t sub_26F1BB6D0(void **a1, void (**a2)(void, void, void))
{
  if (*a1 != &unk_287F2C348)
  {
    sub_26F2015C0();
  }

  return sub_26F1B52DC(a1, a2);
}

void *sub_26F1BB71C(void **a1, uint64_t (**a2)(int, size_t size))
{
  if (*a1 != &unk_287F2C348)
  {
    sub_26F2015EC();
  }

  return sub_26F1B7460(a1, a2);
}

void sub_26F1BBA6C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCAC68];
  v7 = [a2 objectForKeyedSubscript:@"regex"];
  v6 = [v5 regularExpressionWithPattern:v7 options:0 error:0];
  [*(a1 + 32) setObject:v6 atIndexedSubscript:a3];
}

void sub_26F1BC1C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v27 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_26F1BC204(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_26F1BC21C(uint64_t a1, void *a2, char a3)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_26F1BC29C;
  v5[3] = &unk_279DC7BC8;
  v9 = a3;
  v8 = *(a1 + 64);
  v3 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = v3;
  return [a2 enumerateObjectsUsingBlock:v5];
}

void sub_26F1BC29C(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) replacestring:*(*(*(a1 + 40) + 8) + 40) usingRule:? atIndex:? additonalRules:?];
  if (([v3 isEqualToString:*(*(*(a1 + 40) + 8) + 40)] & 1) == 0)
  {
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      v4 = [v8 objectForKeyedSubscript:@"tag"];
      if ([v4 intValue] == 5)
      {
        v5 = [**(a1 + 64) objectForKey:@"sup"];

        if (!v5)
        {
          *(*(*(a1 + 48) + 8) + 24) = 1;
          [*(*(a1 + 32) + 24) addEntriesFromDictionary:&unk_287F574A0];
        }
      }

      else
      {
      }
    }

    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
    {
      v6 = [v8 objectForKeyedSubscript:@"tag"];
      if ([v6 intValue] == 6)
      {
        v7 = [**(a1 + 64) objectForKey:@"sub"];

        if (!v7)
        {
          *(*(*(a1 + 56) + 8) + 24) = 1;
          [*(*(a1 + 32) + 24) addEntriesFromDictionary:&unk_287F574F0];
        }
      }

      else
      {
      }
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  }
}

void sub_26F1BCDA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26F1BCDD8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(a1 + 32) + 32);
  v8 = a3;
  v6 = a2;
  [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"open"];
  v7 = [v6 objectForKeyedSubscript:@"tag"];

  [*(*(a1 + 32) + 32) setObject:v7 forKeyedSubscript:@"type"];
  [*(*(a1 + 32) + 32) setObject:&unk_287F55B98 forKeyedSubscript:@"count"];
  [*(*(*(a1 + 40) + 8) + 40) insertString:v8 atIndex:0];
}

void sub_26F1BD1A4(uint64_t a1, void *a2)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"replace"];
  v5 = [v3 objectForKeyedSubscript:@"regex"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v4 count])
      {
        v6 = *(a1 + 32);
        v8[0] = @"regex";
        v8[1] = @"tag";
        v9[0] = v5;
        v9[1] = &unk_287F55BB0;
        v8[2] = @"replace";
        v9[2] = v4;
        v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
        [v6 addObject:v7];
      }
    }
  }
}

uint64_t sub_26F1BDD48()
{
  v0 = [MEMORY[0x277CBEB98] setWithObject:@"rawJSON"];
  v1 = qword_2806D91E8;
  qword_2806D91E8 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_26F1BE190(uint64_t a1)
{
  v2 = [*(a1 + 32) internalSetJSON:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, v2);
  }

  return result;
}

void sub_26F1BE318(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v5 = 0;
  v3 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v2 options:1 error:&v5];
  v4 = v5;
  [*(a1 + 32) validateJSON:v3 completion:&unk_287F2C3E0];
}

void sub_26F1BE62C(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [*(a1 + 32) setObject:v7 atIndexedSubscript:a3];
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.@%lu", *(a1 + 40), a3];
    v6 = [*(*(a1 + 48) + 16) objectForKeyedSubscript:v5];
    if (!v6)
    {
      v6 = [[TMLJSONObjectDerived alloc] initWithParent:*(a1 + 48) keyPath:v5];
      [*(*(a1 + 48) + 16) setObject:v6 forKey:v5];
    }

    [*(a1 + 32) setObject:v6 atIndexedSubscript:a3];
  }
}

void sub_26F1BE9C0(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [*(a1 + 32) setObject:v7 atIndexedSubscript:a3];
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.@%lu", *(a1 + 40), a3];
    v6 = [*(*(a1 + 48) + 16) objectForKeyedSubscript:v5];
    if (!v6)
    {
      v6 = [[TMLJSONObjectDerived alloc] initWithParent:*(a1 + 48) keyPath:v5];
      [*(*(a1 + 48) + 16) setObject:v6 forKey:v5];
    }

    [*(a1 + 32) setObject:v6 atIndexedSubscript:a3];
  }
}

uint64_t sub_26F1BECFC()
{
  v0 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"@"];
  v1 = qword_2806D91F8;
  qword_2806D91F8 = v0;

  v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"."];
  v3 = qword_2806D9200;
  qword_2806D9200 = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

void sub_26F1BEFA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_26F1BEFB8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26F1BEFD0(void *a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v6 = [v10 targetUnsafe];
  v7 = v6;
  if (v6 == a1[4])
  {
    v8 = [v10 keyPath];
    v9 = [v8 isEqualToString:a1[5]];

    if (v9)
    {
      objc_storeStrong((*(a1[6] + 8) + 40), a2);
      *a3 = 1;
    }
  }

  else
  {
  }
}

void sub_26F1BF7CC(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:a83847776000000_18 length:strlen(a83847776000000_18) freeWhenDone:0];
  *(*(*(a1 + 32) + 8) + 24) = [TMLContext loadClasses:v2];
}

void sub_26F1C0C70()
{
  v60[58] = *MEMORY[0x277D85DE8];
  v59[0] = @"optional";
  v60[0] = &unk_287F2C460;
  v58 = [MEMORY[0x277CCACA8] stringWithUTF8String:"v"];
  v59[1] = v58;
  v60[1] = &unk_287F2C480;
  v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "v", "@"];
  v59[2] = v57;
  v60[2] = &unk_287F2C4A0;
  v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "v", "B"];
  v59[3] = v56;
  v60[3] = &unk_287F2C4C0;
  v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "v", "f"];
  v59[4] = v55;
  v60[4] = &unk_287F2C4E0;
  v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "v", "d"];
  v59[5] = v54;
  v60[5] = &unk_287F2C500;
  v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "v", "q"];
  v59[6] = v53;
  v60[6] = &unk_287F2C520;
  v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "v", "Q"];
  v59[7] = v52;
  v60[7] = &unk_287F2C540;
  v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "v", "I"];
  v59[8] = v51;
  v60[8] = &unk_287F2C560;
  v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "v", "{CGSize=dd}"];
  v59[9] = v50;
  v60[9] = &unk_287F2C580;
  v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "v", "{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v59[10] = v49;
  v60[10] = &unk_287F2C5A0;
  v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "v", "{CGPoint=dd}"];
  v59[11] = v48;
  v60[11] = &unk_287F2C5C0;
  v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "v", "{CGAffineTransform=dddddd}"];
  v59[12] = v47;
  v60[12] = &unk_287F2C5E0;
  v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "v", "{CATransform3D=dddddddddddddddd}"];
  v59[13] = v46;
  v60[13] = &unk_287F2C600;
  v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "v", "{UIEdgeInsets=dddd}"];
  v59[14] = v45;
  v60[14] = &unk_287F2C620;
  v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "v", "{_NSRange=QQ}"];
  v59[15] = v44;
  v60[15] = &unk_287F2C640;
  v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "v", "{?=qiIq}"];
  v59[16] = v43;
  v60[16] = &unk_287F2C660;
  v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s", "v", "@", "@"];
  v59[17] = v42;
  v60[17] = &unk_287F2C680;
  v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s%s", "v", "@", "@", "@"];
  v59[18] = v41;
  v60[18] = &unk_287F2C6A0;
  v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s%s", "v", "@", "B", "@"];
  v59[19] = v40;
  v60[19] = &unk_287F2C6C0;
  v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s%s", "v", "{?=qiIq}", "{?=qiIq}", "{?=qiIq}"];
  v59[20] = v39;
  v60[20] = &unk_287F2C6E0;
  v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s%s%s", "v", "@", "@", "@", "@"];
  v59[21] = v38;
  v60[21] = &unk_287F2C700;
  v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s", "v", "f", "q"];
  v59[22] = v37;
  v60[22] = &unk_287F2C720;
  v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s", "v", "@", "I"];
  v59[23] = v36;
  v60[23] = &unk_287F2C740;
  v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s", "v", "Q", "@"];
  v59[24] = v35;
  v60[24] = &unk_287F2C760;
  v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s", "v", "q", "@"];
  v59[25] = v34;
  v60[25] = &unk_287F2C780;
  v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s", "v", "d", "B"];
  v59[26] = v33;
  v60[26] = &unk_287F2C7A0;
  v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"@"];
  v59[27] = v32;
  v60[27] = &unk_287F2C7C0;
  v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "@", "@"];
  v59[28] = v31;
  v60[28] = &unk_287F2C7E0;
  v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "@", "B"];
  v59[29] = v30;
  v60[29] = &unk_287F2C800;
  v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "@", "f"];
  v59[30] = v29;
  v60[30] = &unk_287F2C820;
  v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "@", "d"];
  v59[31] = v28;
  v60[31] = &unk_287F2C840;
  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "@", "q"];
  v59[32] = v27;
  v60[32] = &unk_287F2C860;
  v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "@", "Q"];
  v59[33] = v26;
  v60[33] = &unk_287F2C880;
  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "@", "I"];
  v59[34] = v25;
  v60[34] = &unk_287F2C8A0;
  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "@", "{CGSize=dd}"];
  v59[35] = v24;
  v60[35] = &unk_287F2C8C0;
  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "@", "{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v59[36] = v23;
  v60[36] = &unk_287F2C8E0;
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "@", "{CGPoint=dd}"];
  v59[37] = v22;
  v60[37] = &unk_287F2C900;
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "@", "{CGAffineTransform=dddddd}"];
  v59[38] = v21;
  v60[38] = &unk_287F2C920;
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "@", "{CATransform3D=dddddddddddddddd}"];
  v59[39] = v20;
  v60[39] = &unk_287F2C940;
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "@", "{UIEdgeInsets=dddd}"];
  v59[40] = v19;
  v60[40] = &unk_287F2C960;
  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "@", "{_NSRange=QQ}"];
  v59[41] = v18;
  v60[41] = &unk_287F2C980;
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "@", "^{CGPath=}"];
  v59[42] = v17;
  v60[42] = &unk_287F2C9A0;
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s", "@", "@", "@"];
  v59[43] = v16;
  v60[43] = &unk_287F2C9C0;
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s", "@", "@", "d"];
  v59[44] = v15;
  v60[44] = &unk_287F2C9E0;
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s%s", "@", "@", "@", "@"];
  v59[45] = v14;
  v60[45] = &unk_287F2CA00;
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s%s%s", "@", "@", "@", "@", "@"];
  v59[46] = v13;
  v60[46] = &unk_287F2CA20;
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s%s%s%s", "@", "{CGPoint=dd}", "d", "d", "d", "B"];
  v59[47] = v12;
  v60[47] = &unk_287F2CA40;
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s", "@", "Q", "@"];
  v59[48] = v11;
  v60[48] = &unk_287F2CA60;
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"^{CGPath=}"];
  v59[49] = v10;
  v60[49] = &unk_287F2CA80;
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"^{CGColor=}"];
  v59[50] = v0;
  v60[50] = &unk_287F2CAA0;
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"^{CGImage=}"];
  v59[51] = v1;
  v60[51] = &unk_287F2CAC0;
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"{CGSize=dd}"];
  v59[52] = v2;
  v60[52] = &unk_287F2CAE0;
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"B"];
  v59[53] = v3;
  v60[53] = &unk_287F2CB00;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "{CGSize=dd}", "{CGSize=dd}"];
  v59[54] = v4;
  v60[54] = &unk_287F2CB20;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "B", "d"];
  v59[55] = v5;
  v60[55] = &unk_287F2CB40;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "d", "@"];
  v59[56] = v6;
  v60[56] = &unk_287F2CB60;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s", "d", "d", "@"];
  v59[57] = v7;
  v60[57] = &unk_287F2CB80;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:58];
  v9 = qword_2806D9218;
  qword_2806D9218 = v8;
}

uint64_t sub_26F1C194C(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [v7 objectAtIndexedSubscript:1];
  v9 = [MEMORY[0x277CBEB68] null];
  if (v8 == v9)
  {
    [v6 a3];
  }

  else
  {
    v10 = [v7 objectAtIndexedSubscript:1];
    [v6 a3];
  }

  return 0;
}

uint64_t sub_26F1C1A0C(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = a2;
  v7 = [a4 objectAtIndexedSubscript:1];
  [v6 a3];

  return 0;
}

uint64_t sub_26F1C1A74(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = a2;
  v7 = [a4 objectAtIndexedSubscript:1];
  [v7 floatValue];
  [v6 a3];

  return 0;
}

uint64_t sub_26F1C1AD8(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = a2;
  v7 = [a4 objectAtIndexedSubscript:1];
  [v7 doubleValue];
  [v6 a3];

  return 0;
}

uint64_t sub_26F1C1B3C(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = a2;
  v7 = [a4 objectAtIndexedSubscript:1];
  [v6 a3];

  return 0;
}

uint64_t sub_26F1C1BA4(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = a2;
  v7 = [a4 objectAtIndexedSubscript:1];
  [v6 a3];

  return 0;
}

uint64_t sub_26F1C1C0C(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = a2;
  v7 = [a4 objectAtIndexedSubscript:1];
  [v6 a3];

  return 0;
}

uint64_t sub_26F1C1C74(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = a2;
  v7 = [a4 objectAtIndexedSubscript:1];
  [v7 CGSizeValue];
  [v6 a3];

  return 0;
}

uint64_t sub_26F1C1CD8(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = a2;
  v7 = [a4 objectAtIndexedSubscript:1];
  [v7 CGRectValue];
  [v6 a3];

  return 0;
}

uint64_t sub_26F1C1D3C(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = a2;
  v7 = [a4 objectAtIndexedSubscript:1];
  [v7 CGPointValue];
  [v6 a3];

  return 0;
}

uint64_t sub_26F1C1DA0(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = a2;
  v7 = [a4 objectAtIndexedSubscript:1];
  v8 = v7;
  if (v7)
  {
    objc_msgSend_CGAffineTransformValue(v7);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  [v6 a3];

  return 0;
}

uint64_t sub_26F1C1E2C(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = a2;
  v7 = [a4 objectAtIndexedSubscript:1];
  v8 = v7;
  if (v7)
  {
    objc_msgSend_CATransform3DValue(v7);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  [v6 a3];

  return 0;
}

uint64_t sub_26F1C1EC0(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = a2;
  v7 = [a4 objectAtIndexedSubscript:1];
  [v7 UIEdgeInsetsValue];
  [v6 a3];

  return 0;
}

uint64_t sub_26F1C1F24(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = a2;
  v7 = [a4 objectAtIndexedSubscript:1];
  v8 = [v7 rangeValue];
  [v6 a3];

  return 0;
}

uint64_t sub_26F1C1F90(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = a2;
  v7 = [a4 objectAtIndexedSubscript:1];
  v8 = v7;
  if (v7)
  {
    objc_msgSend_CMTimeValue(v7);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  [v6 a3];

  return 0;
}

uint64_t sub_26F1C2018(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [v7 objectAtIndexedSubscript:1];
  v9 = [MEMORY[0x277CBEB68] null];
  if (v8 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = [v7 objectAtIndexedSubscript:1];
  }

  v11 = [v7 objectAtIndexedSubscript:2];
  v12 = [MEMORY[0x277CBEB68] null];
  if (v11 == v12)
  {
    [v6 a3];
  }

  else
  {
    v13 = [v7 objectAtIndexedSubscript:2];
    [v6 a3];
  }

  if (v8 != v9)
  {
  }

  return 0;
}

uint64_t sub_26F1C214C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v18 = a2;
  v5 = a4;
  v6 = [v5 objectAtIndexedSubscript:1];
  v7 = [MEMORY[0x277CBEB68] null];
  if (v6 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v5 objectAtIndexedSubscript:1];
  }

  v9 = [v5 objectAtIndexedSubscript:{2, a3}];
  v10 = [MEMORY[0x277CBEB68] null];
  if (v9 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = [v5 objectAtIndexedSubscript:2];
  }

  v12 = [v5 objectAtIndexedSubscript:3];
  v13 = [MEMORY[0x277CBEB68] null];
  if (v12 == v13)
  {
    [v18 v17];
  }

  else
  {
    v14 = [v5 objectAtIndexedSubscript:3];
    [v18 v17];
  }

  if (v9 != v10)
  {
  }

  if (v6 != v7)
  {
  }

  return 0;
}

uint64_t sub_26F1C22E8(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v5 = a2;
  v6 = a4;
  v7 = [v6 objectAtIndexedSubscript:1];
  v8 = [MEMORY[0x277CBEB68] null];
  if (v7 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = [v6 objectAtIndexedSubscript:1];
  }

  v10 = [v6 objectAtIndexedSubscript:2];
  v11 = [v10 BOOLValue];
  v12 = [v6 objectAtIndexedSubscript:3];
  v13 = [MEMORY[0x277CBEB68] null];
  if (v12 == v13)
  {
    [v5 a3];
  }

  else
  {
    v14 = [v6 objectAtIndexedSubscript:3];
    [v5 a3];
  }

  if (v7 != v8)
  {
  }

  return 0;
}

uint64_t sub_26F1C244C(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [v7 objectAtIndexedSubscript:1];
  v9 = v8;
  if (v8)
  {
    objc_msgSend_CMTimeValue(v8);
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  v10 = [v7 objectAtIndexedSubscript:2];
  v11 = v10;
  if (v10)
  {
    objc_msgSend_CMTimeValue(v10);
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  v12 = [v7 objectAtIndexedSubscript:3];
  v13 = v12;
  if (v12)
  {
    objc_msgSend_CMTimeValue(v12);
  }

  else
  {
    memset(v15, 0, sizeof(v15));
  }

  [v6 a3];

  return 0;
}

uint64_t sub_26F1C2554(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v26 = a2;
  v6 = a4;
  v7 = [v6 objectAtIndexedSubscript:1];
  v8 = [MEMORY[0x277CBEB68] null];
  if (v7 == v8)
  {
    v25 = 0;
  }

  else
  {
    v25 = [v6 objectAtIndexedSubscript:1];
  }

  v9 = [v6 objectAtIndexedSubscript:2];
  v10 = [MEMORY[0x277CBEB68] null];
  if (v9 == v10)
  {
    v24 = 0;
  }

  else
  {
    v24 = [v6 objectAtIndexedSubscript:2];
  }

  v11 = [v6 objectAtIndexedSubscript:{3, v10}];
  v12 = [MEMORY[0x277CBEB68] null];
  if (v11 == v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = [v6 objectAtIndexedSubscript:3];
  }

  v14 = [v6 objectAtIndexedSubscript:4];
  v15 = [MEMORY[0x277CBEB68] null];
  if (v14 == v15)
  {
    [v26 a3];
  }

  else
  {
    v16 = [v6 objectAtIndexedSubscript:4];
    v17 = a3;
    v18 = v9;
    v19 = v8;
    v20 = v7;
    v21 = v16;
    [v26 v17];

    v7 = v20;
    v8 = v19;
    v9 = v18;
  }

  if (v11 != v12)
  {
  }

  if (v9 != v23)
  {
  }

  if (v7 != v8)
  {
  }

  return 0;
}

uint64_t sub_26F1C277C(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  v8 = [v6 objectAtIndexedSubscript:1];
  [v8 floatValue];
  v10 = v9;
  v11 = [v6 objectAtIndexedSubscript:2];

  v12 = [v11 integerValue];
  LODWORD(v13) = v10;
  [v7 a3];

  return 0;
}

uint64_t sub_26F1C2828(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  v8 = [v6 objectAtIndexedSubscript:1];
  v9 = [MEMORY[0x277CBEB68] null];
  if (v8 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = [v6 objectAtIndexedSubscript:1];
  }

  v11 = [v6 objectAtIndexedSubscript:2];
  [v7 a3];

  if (v8 != v9)
  {
  }

  return 0;
}

uint64_t sub_26F1C2910(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [v7 objectAtIndexedSubscript:1];
  v9 = [v8 unsignedIntValue];
  v10 = [v7 objectAtIndexedSubscript:2];
  v11 = [MEMORY[0x277CBEB68] null];
  if (v10 == v11)
  {
    [v6 a3];
  }

  else
  {
    v12 = [v7 objectAtIndexedSubscript:2];
    [v6 a3];
  }

  return 0;
}

uint64_t sub_26F1C2A00(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [v7 objectAtIndexedSubscript:1];
  v9 = [v8 unsignedIntValue];
  v10 = [v7 objectAtIndexedSubscript:2];
  v11 = [MEMORY[0x277CBEB68] null];
  if (v10 == v11)
  {
    [v6 a3];
  }

  else
  {
    v12 = [v7 objectAtIndexedSubscript:2];
    [v6 a3];
  }

  return 0;
}

uint64_t sub_26F1C2AF0(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  v8 = [v6 objectAtIndexedSubscript:1];
  [v8 doubleValue];
  v10 = v9;
  v11 = [v6 objectAtIndexedSubscript:2];

  [v7 a3];
  return 0;
}

id sub_26F1C2BA8(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [v7 objectAtIndexedSubscript:1];
  v9 = [MEMORY[0x277CBEB68] null];
  if (v8 == v9)
  {
    v11 = [v6 a3];
  }

  else
  {
    v10 = [v7 objectAtIndexedSubscript:1];
    v11 = [v6 a3];
  }

  return v11;
}

id sub_26F1C2C88(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = a2;
  v7 = [a4 objectAtIndexedSubscript:1];
  v8 = [v6 a3];

  return v8;
}

id sub_26F1C2D08(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = a2;
  v7 = [a4 objectAtIndexedSubscript:1];
  [v7 floatValue];
  v8 = [v6 a3];

  return v8;
}

id sub_26F1C2D84(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = a2;
  v7 = [a4 objectAtIndexedSubscript:1];
  [v7 doubleValue];
  v8 = [v6 a3];

  return v8;
}

id sub_26F1C2E00(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = a2;
  v7 = [a4 objectAtIndexedSubscript:1];
  v8 = [v6 a3];

  return v8;
}

id sub_26F1C2E80(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = a2;
  v7 = [a4 objectAtIndexedSubscript:1];
  v8 = [v6 a3];

  return v8;
}

id sub_26F1C2F00(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = a2;
  v7 = [a4 objectAtIndexedSubscript:1];
  v8 = [v6 a3];

  return v8;
}

id sub_26F1C2F80(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = a2;
  v7 = [a4 objectAtIndexedSubscript:1];
  [v7 CGSizeValue];
  v8 = [v6 a3];

  return v8;
}

id sub_26F1C2FFC(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = a2;
  v7 = [a4 objectAtIndexedSubscript:1];
  [v7 CGRectValue];
  v8 = [v6 a3];

  return v8;
}

id sub_26F1C3078(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = a2;
  v7 = [a4 objectAtIndexedSubscript:1];
  [v7 CGPointValue];
  v8 = [v6 a3];

  return v8;
}

id sub_26F1C30F4(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = a2;
  v7 = [a4 objectAtIndexedSubscript:1];
  v8 = v7;
  if (v7)
  {
    objc_msgSend_CGAffineTransformValue(v7);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  v9 = [v6 a3];

  return v9;
}

id sub_26F1C3198(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = a2;
  v7 = [a4 objectAtIndexedSubscript:1];
  v8 = v7;
  if (v7)
  {
    objc_msgSend_CATransform3DValue(v7);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  v9 = [v6 a3];

  return v9;
}

id sub_26F1C3244(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = a2;
  v7 = [a4 objectAtIndexedSubscript:1];
  [v7 UIEdgeInsetsValue];
  v8 = [v6 a3];

  return v8;
}

id sub_26F1C32C0(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = a2;
  v7 = [a4 objectAtIndexedSubscript:1];
  v8 = [v7 rangeValue];
  v10 = [v6 a3];

  return v10;
}

id sub_26F1C3344(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [v7 objectAtIndexedSubscript:1];
  v9 = [MEMORY[0x277CBEB68] null];
  if (v8 == v9)
  {
    v11 = [v6 a3];
  }

  else
  {
    v10 = [v7 objectAtIndexedSubscript:1];
    v11 = [v6 a3];
  }

  return v11;
}

id sub_26F1C3424(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [v7 objectAtIndexedSubscript:1];
  v9 = [MEMORY[0x277CBEB68] null];
  if (v8 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = [v7 objectAtIndexedSubscript:1];
  }

  v11 = [v7 objectAtIndexedSubscript:2];
  v12 = [MEMORY[0x277CBEB68] null];
  if (v11 == v12)
  {
    v14 = [v6 a3];
  }

  else
  {
    v13 = [v7 objectAtIndexedSubscript:2];
    v14 = [v6 a3];
  }

  if (v8 != v9)
  {
  }

  return v14;
}

id sub_26F1C3578(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  v8 = [v6 objectAtIndexedSubscript:1];
  v9 = [MEMORY[0x277CBEB68] null];
  if (v8 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = [v6 objectAtIndexedSubscript:1];
  }

  v11 = [v6 objectAtIndexedSubscript:2];
  [v11 doubleValue];
  v12 = [v7 a3];

  if (v8 != v9)
  {
  }

  return v12;
}

id sub_26F1C3674(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v18 = a2;
  v6 = a4;
  v7 = [v6 objectAtIndexedSubscript:1];
  v8 = [MEMORY[0x277CBEB68] null];
  if (v7 == v8)
  {
    [v6 objectAtIndexedSubscript:{2, 0}];
  }

  else
  {
    [v6 objectAtIndexedSubscript:1];
    [v6 objectAtIndexedSubscript:{2, objc_claimAutoreleasedReturnValue()}];
  }
  v9 = ;
  v10 = [MEMORY[0x277CBEB68] null];
  if (v9 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = [v6 objectAtIndexedSubscript:2];
  }

  v12 = [v6 objectAtIndexedSubscript:3];
  v13 = [MEMORY[0x277CBEB68] null];
  if (v12 == v13)
  {
    v15 = [v18 a3];
  }

  else
  {
    v14 = [v6 objectAtIndexedSubscript:3];
    v15 = [v18 a3];
  }

  if (v9 != v10)
  {
  }

  if (v7 != v8)
  {
  }

  return v15;
}

id sub_26F1C3834(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v24 = a2;
  v5 = a4;
  v6 = [v5 objectAtIndexedSubscript:1];
  v7 = [MEMORY[0x277CBEB68] null];
  if (v6 == v7)
  {
    v23 = 0;
  }

  else
  {
    v23 = [v5 objectAtIndexedSubscript:1];
  }

  v8 = [v5 objectAtIndexedSubscript:2];
  v9 = [MEMORY[0x277CBEB68] null];
  if (v8 == v9)
  {
    v22 = 0;
  }

  else
  {
    v22 = [v5 objectAtIndexedSubscript:2];
  }

  v10 = [v5 objectAtIndexedSubscript:3];
  v11 = [MEMORY[0x277CBEB68] null];
  if (v10 == v11)
  {
    v21 = 0;
  }

  else
  {
    v21 = [v5 objectAtIndexedSubscript:3];
  }

  v12 = [v5 objectAtIndexedSubscript:4];
  v13 = [MEMORY[0x277CBEB68] null];
  if (v12 == v13)
  {
    v20 = [v24 a3];
  }

  else
  {
    [v5 objectAtIndexedSubscript:4];
    v14 = v8;
    v15 = v7;
    v17 = v16 = v6;
    v20 = [v24 a3];

    v6 = v16;
    v7 = v15;
    v8 = v14;
  }

  if (v10 != v11)
  {
  }

  if (v8 != v9)
  {
  }

  if (v6 != v7)
  {
  }

  return v20;
}

id sub_26F1C3A70(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  v8 = [v6 objectAtIndexedSubscript:1];
  [v8 CGPointValue];
  v10 = v9;
  v12 = v11;
  v13 = [v6 objectAtIndexedSubscript:2];
  [v13 floatValue];
  v15 = v14;
  v16 = [v6 objectAtIndexedSubscript:3];
  [v16 floatValue];
  v18 = v17;
  v19 = [v6 objectAtIndexedSubscript:4];
  [v19 floatValue];
  v21 = v20;
  v22 = [v6 objectAtIndexedSubscript:5];

  v23 = [v7 a3];

  return v23;
}

id sub_26F1C3BC0(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [v7 objectAtIndexedSubscript:1];
  v9 = [v8 unsignedIntegerValue];
  v10 = [v7 objectAtIndexedSubscript:2];
  v11 = [MEMORY[0x277CBEB68] null];
  if (v10 == v11)
  {
    v13 = [v6 a3];
  }

  else
  {
    v12 = [v7 objectAtIndexedSubscript:2];
    v13 = [v6 a3];
  }

  return v13;
}

uint64_t sub_26F1C3CF4(int a1, id a2, SEL a3)
{
  v3 = MEMORY[0x277CCAE60];
  [a2 a3];

  return [v3 valueWithCGSize:?];
}

uint64_t sub_26F1C3D38(int a1, id a2, SEL a3)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [a2 a3];

  return [v3 numberWithBool:v4];
}

id sub_26F1C3D80(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = MEMORY[0x277CCAE60];
  v7 = a2;
  v8 = [a4 objectAtIndexedSubscript:1];
  [v8 CGSizeValue];
  [v7 a3];
  v10 = v9;
  v12 = v11;

  v13 = [v6 valueWithCGSize:{v10, v12}];

  return v13;
}

id sub_26F1C3E24(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a2;
  v8 = [a4 objectAtIndexedSubscript:1];
  [v8 doubleValue];
  v9 = [v7 a3];

  v10 = [v6 numberWithBool:v9];

  return v10;
}

id sub_26F1C3EB8(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = MEMORY[0x277CCABB0];
  v9 = [v7 objectAtIndexedSubscript:1];
  v10 = [MEMORY[0x277CBEB68] null];
  if (v9 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = [v7 objectAtIndexedSubscript:1];
  }

  [v6 a3];
  v12 = [v8 numberWithDouble:?];
  if (v9 != v10)
  {
  }

  return v12;
}

id sub_26F1C3FA4(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = MEMORY[0x277CCABB0];
  v9 = [v7 objectAtIndexedSubscript:1];
  [v9 doubleValue];
  v11 = v10;
  v12 = [v7 objectAtIndexedSubscript:2];
  v13 = [MEMORY[0x277CBEB68] null];
  if (v12 == v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = [v7 objectAtIndexedSubscript:2];
  }

  [v6 a3];
  v15 = [v8 numberWithDouble:?];
  if (v12 != v13)
  {
  }

  return v15;
}

char *sub_26F1C55A0(uint64_t a1, id a2, uint64_t a3)
{
  v6 = a2;
  result = strdup([a2 UTF8String]);
  *(*(*(a1 + 32) + 40) + 8 * a3) = result;
  return result;
}

void sub_26F1C55F0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = malloc_type_malloc(0x48uLL, 0x10F004036FA40C8uLL);
  *(*(*(a1 + 32) + 64) + 8 * a3) = v5;
  [v6 encode:v5];
}

void sub_26F1C5B48(Class cls)
{
  if (qword_2806D9230 != -1)
  {
    sub_26F201668();
  }

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:class_getName(cls)];
  if (([qword_2806D9228 containsObject:?] & 1) == 0)
  {
    if (([v2 hasPrefix:@"__NSCF"] & 1) == 0)
    {
      class_addProtocol(cls, &unk_287F8BBE8);
    }

    [qword_2806D9228 addObject:v2];
  }
}

uint64_t sub_26F1C5C04()
{
  v0 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:256];
  v1 = qword_2806D9228;
  qword_2806D9228 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_26F1C5C48(void *a1)
{
  Class = object_getClass(a1);

  return [(objc_class *)Class tmlMakeJSObjectClass];
}

id sub_26F1C5C7C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [TMLJSEnvironment normalizeValue:v7 toType:19];
  v9 = [a1 tmlEmitSignalOrCallMethod:v6 withArguments:v8];

  return v9;
}

TMLJSValueProxy *sub_26F1C5D5C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [[TMLJSValueProxy alloc] initWithTarget:a1 keyPath:v4];

  return v5;
}

void sub_26F1C63D8(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v7 object];

    v6 = v5;
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = v7;
  }

  v8 = v6;
  if ([v6 hasTMLOwnerContext:*(a1 + 32)])
  {
    [v8 emitTMLSignal:@"finalize" withArguments:0];
    [TMLReactiveValue removeReactiveValuesForTarget:v8];
    [v8 tmlDispose];
    if (!*(*(a1 + 32) + 24))
    {
      *a3 = 1;
    }
  }

  v6 = v8;
LABEL_9:
}

void sub_26F1C6FD8(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x26F1C6FB4);
}

void sub_26F1C7364(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = *(a1 + 32);
  v6 = [a3 type];
  LODWORD(v5) = [v5 isEqualToString:v6];

  if (v5)
  {
    v7 = [*(a1 + 40) objectWithIdentifier:v8];
    if (v7)
    {
      [*(a1 + 48) setObject:v7 forKey:v8];
    }
  }
}

id sub_26F1C79F4(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) processValue:*(a1 + 40) ofType:16 selfValue:a2];
  v3 = [v2 value];

  return v3;
}

void sub_26F1C7A50(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v9 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [TMLRuntime registerProperty:v9 forObject:*(a1 + 32)];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v3 = MEMORY[0x277CBEAD8];
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unsupported declaration type %@", objc_opt_class()];
      v5 = *(a1 + 40);
      v10 = @"identifier";
      v11[0] = v5;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      v7 = [v3 exceptionWithName:@"TMLRuntimeException" reason:v4 userInfo:v6];
      v8 = v7;

      objc_exception_throw(v7);
    }

    [TMLRuntime registerSignal:v9 forObject:*(a1 + 32)];
  }
}

void sub_26F1C7BF8(uint64_t a1, void *a2, void *a3)
{
  v58[1] = *MEMORY[0x277D85DE8];
  v56 = a2;
  v5 = a3;
  v6 = [v5 signalName];
  v7 = *(a1 + 32);
  if ([v56 rangeOfString:@"." options:4 range:{0, objc_msgSend(v56, "length")}] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [v56 substringToIndex:?];
    v9 = [v7 tmlValueForKeyPath:v8];

    v7 = v9;
  }

  v10 = [TMLRuntime signal:v6 forObject:v7];
  if (!v10 && ([v56 hasSuffix:@"Changed"] & 1) == 0)
  {
    v45 = MEMORY[0x277CBEAD8];
    v46 = MEMORY[0x277CCACA8];
    v47 = [*(a1 + 40) type];
    v48 = [v46 stringWithFormat:@"Undeclared signal %@ for type %@", v56, v47];
    v49 = *(a1 + 48);
    v57 = @"identifier";
    v58[0] = v49;
    v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:&v57 count:1];
    v51 = [v45 exceptionWithName:@"TMLRuntimeException" reason:v48 userInfo:v50];
    v52 = v51;

    objc_exception_throw(v51);
  }

  v11 = MEMORY[0x277CCACA8];
  v12 = *(a1 + 48);
  v13 = v12;
  v14 = v56;
  if (!v12)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"obj_%p", *(a1 + 32)];
    v14 = v56;
    v13 = v15;
  }

  v16 = [v14 stringByReplacingOccurrencesOfString:@"." withString:@"_dot_"];
  v17 = [v11 stringWithFormat:@"$%@_%@", v13, v16];

  if (!v12)
  {
  }

  v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"_%@", v17];
  v18 = [*(*(a1 + 56) + 72) objectForKeyedSubscript:?];
  v55 = v18;
  if (!v18 || (v19 = v18, [v18 isUndefined]))
  {
    if (v10)
    {
      v20 = [v10 parameters];
      v21 = [v20 valueForKey:@"propertyName"];
      v22 = [v21 componentsJoinedByString:{@", "}];
    }

    else
    {
      v22 = 0;
    }

    v53 = v5;
    v23 = [v5 functionBody];
    if (qword_2806D9240 != -1)
    {
      sub_26F20167C();
    }

    v24 = [qword_2806D9238 firstMatchInString:v23 options:0 range:{0, objc_msgSend(v23, "length")}];
    v25 = v24;
    if (v24 && [v24 range] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v26 = [v25 rangeAtIndex:1];
      v28 = [v23 substringWithRange:{v26, v27}];

      v29 = [v25 range];
      [v25 range];
      v31 = [v23 substringFromIndex:v30 + v29];

      v23 = v31;
      v22 = v28;
    }

    if ([v22 length])
    {
      v32 = [@" "];
    }

    else
    {
      v32 = &stru_287F301C0;
    }

    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@._%@ = function ($self%@)%@", *(*(a1 + 56) + 80), v17, v32, v23];

    v34 = [*(*(a1 + 56) + 48) evaluateScript:v33];
    v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%1$@.%2$@ = %1$@._%2$@.bind(%1$@)", *(*(a1 + 56) + 80), v17];
    v36 = [*(*(a1 + 56) + 48) evaluateScript:v35];

    v5 = v53;
    v19 = v55;
  }

  if (v10)
  {
    v37 = -[TMLScriptSignalHandler initWithFunctionName:returnType:target:context:]([TMLScriptSignalHandler alloc], "initWithFunctionName:returnType:target:context:", v17, [v10 returnType], v7, *(a1 + 56));
  }

  else
  {
    v38 = [v6 substringToIndex:{objc_msgSend(v6, "length") - 7}];
    v39 = [TMLRuntime ensurePropertyWithKeyPath:v38 forObject:v7 writable:0];
    v40 = [TMLPropertyChangedScriptSignalHandler alloc];
    v41 = *(a1 + 56);
    [TMLBinding bindingForTarget:v7 withKeyPath:v38];
    v42 = v6;
    v44 = v43 = v5;
    v37 = [(TMLPropertyChangedScriptSignalHandler *)v40 initWithFunctionName:v17 context:v41 binding:v44];

    v5 = v43;
    v6 = v42;

    v19 = v55;
  }

  [v7 setTMLHandler:v37 forSignal:v6];
  [*(*(a1 + 56) + 40) addObject:v37];
}

uint64_t sub_26F1C81D8()
{
  v0 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^function[\\s\\w\\d_]*\\(([^\\)]*)\\"" options:? error:?], 0, 0);
  v1 = qword_2806D9238;
  qword_2806D9238 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_26F1C839C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_26F1C83B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26F1C83CC(uint64_t a1, void *a2)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v14 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:v14];
  v4 = *(a1 + 40);
  v5 = [TMLRuntime propertyWithKeyPath:v14 forObject:*(a1 + 48)];
  v6 = [v4 processValue:v3 ofType:objc_msgSend(v5 selfValue:{"type"), *(a1 + 48)}];

  if (!v6)
  {
    v8 = MEMORY[0x277CBEAD8];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unsupported value type %@", objc_opt_class()];
    v10 = *(a1 + 48);
    v15[0] = @"object";
    v15[1] = @"property";
    v16[0] = v10;
    v16[1] = v14;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
    v12 = [v8 exceptionWithName:@"TMLRuntimeException" reason:v9 userInfo:v11];
    v13 = v12;

    objc_exception_throw(v12);
  }

  v7 = [MEMORY[0x277CBEB68] null];

  if (v6 == v7)
  {

    v6 = 0;
  }

  [*(a1 + 56) setValue:v6 forKeyPath:v14];
  [*(a1 + 48) setTMLValue:v6 forKeyPath:v14];
  if ([v14 isEqualToString:@"tmlState"])
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v6);
  }
}

void sub_26F1C8D68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_26F1C8DCC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 rangeOfString:@"."];
  v6 = v5;
  v7 = v3;
  v8 = v7;
  v9 = v7;
  if (v4 == 0x7FFFFFFFFFFFFFFFLL || ([v7 substringToIndex:v4], v9 = objc_claimAutoreleasedReturnValue(), v8, objc_msgSend(v8, "substringFromIndex:", v4 + v6), (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v13 = *(a1 + 40);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_26F1C8FA8;
    v18[3] = &unk_279DC7E70;
    v9 = v9;
    v19 = v9;
    objc_copyWeak(&v20, (a1 + 48));
    objc_copyWeak(&v21, (a1 + 56));
    v14 = [TMLReference referenceWithBlock:v18];
    [v13 addObject:v14];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&v20);
    v11 = v19;
  }

  else
  {
    v11 = v10;
    if ([v9 isEqualToString:@"self"])
    {
      WeakRetained = objc_loadWeakRetained((a1 + 48));
    }

    else
    {
      WeakRetained = [*(a1 + 32) objectWithIdentifier:v9];
    }

    v15 = WeakRetained;
    v16 = *(a1 + 40);
    v17 = [TMLBinding bindingForTarget:WeakRetained withKeyPath:v11];
    [v16 addObject:v17];
  }
}

void sub_26F1C8F8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

id sub_26F1C8FA8(id *a1)
{
  if ([a1[4] isEqualToString:@"self"])
  {
    WeakRetained = objc_loadWeakRetained(a1 + 5);
  }

  else
  {
    v3 = objc_loadWeakRetained(a1 + 6);
    WeakRetained = [v3 objectWithIdentifier:a1[4] unwrapWeak:0];
  }

  return WeakRetained;
}

void sub_26F1C92FC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = +[TMLJSEnvironment validCurrentContext];
  [v4 raiseJSException:v3];
}

id sub_26F1C9460(uint64_t a1, uint64_t a2)
{
  v3 = +[TMLJSEnvironment validCurrentContext];
  v4 = v3;
  if (v3)
  {
    v5 = [*(v3 + 56) objectAtIndexedSubscript:a2];
    v6 = [TMLJSEnvironment convertTmlValue:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_26F1C9548(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[TMLJSEnvironment validCurrentContext];
  v4 = [v3 objectWithIdentifier:v2];

  return v4;
}

id sub_26F1C9614(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = +[TMLJSEnvironment validCurrentContext];
  v7 = [v6[7] objectAtIndexedSubscript:0];
  v8 = [TMLJSEnvironment convertTmlValue:v7];

  Class = object_getClass(v8);
  if (class_isMetaClass(Class))
  {
    v10 = [v8 tmlGetMethod:v4];
    v11 = [v10 classMethod];

    if ((v11 & 1) == 0)
    {
      v12 = [v8 alloc];

      v8 = v12;
    }
  }

  v13 = [TMLJSEnvironment normalizeValue:v5 toType:16];
  v14 = [v8 tmlCallMethod:v4 withArguments:v13];

  return v14;
}

id sub_26F1C97A0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = +[TMLJSEnvironment validCurrentContext];
  if ([v9 length] && (objc_msgSend(v9, "isEqualToString:", @"init") & 1) == 0)
  {
    v13 = v16;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_26F1C9964;
    v16[3] = &unk_279DC7DA8;
    v4 = &v17;
    v17 = v9;
    v5 = &v18;
    v18 = v10;
    v12 = 1;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v14 = [TMLRuntime createObjectWithIdentifier:@"$new$" ofType:v8 initializer:v13];
  if (v12)
  {
  }

  return v14;
}

id sub_26F1C9964(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 tmlGetMethod:*(a1 + 32)];
  v5 = [v4 classMethod];

  if ((v5 & 1) == 0)
  {
    v6 = [v3 alloc];

    v3 = v6;
  }

  v7 = *(a1 + 32);
  v8 = [TMLJSEnvironment normalizeValue:*(a1 + 40) toType:16];
  v9 = [v3 tmlCallMethod:v7 withArguments:v8];

  return v9;
}

id sub_26F1C9A18(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[TMLJSEnvironment validCurrentContext];
  [v3 resetException];

  return v2;
}

void *sub_26F1C9A6C()
{
  v0 = +[TMLJSEnvironment validCurrentContext];
  v1 = v0[9];
  v2 = v1;

  return v1;
}

void sub_26F1C9D84(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_26F1C9E54;
  v10[3] = &unk_279DC5A50;
  v10[4] = v7;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [TMLJSEnvironment runInContext:v7 block:v10];
}

void sub_26F1C9E54(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v2 + 48);
  v5 = MEMORY[0x277CCACA8];
  v6 = *(v2 + 80);
  v7 = [*(a1 + 48) functionBody];
  v8 = [v5 stringWithFormat:@"%@._%@ = %@", v6, v3, v7];
  v9 = [v4 evaluateScript:v8];

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(v10 + 48);
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%1$@.%2$@ = %1$@._%2$@.bind(%1$@)", *(v10 + 80), v11];
  v13 = [v12 evaluateScript:v14];
}

void sub_26F1C9F44(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = v3;
  v5 = [v3 identifier];
  v6 = [v4 existingObjectWithIdentifier:v5];

  if (v6)
  {
    v7 = [*(a1 + 32) createObjectFromMetaObject:v8 parent:0];
  }
}

void sub_26F1C9FD8(uint64_t a1, void *a2, void *a3)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v15 = a2;
  v5 = a3;
  v6 = [TMLRuntime classForObject:v5];

  if (!v6)
  {
    v10 = MEMORY[0x277CBEAD8];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Attempt to add object of undeclared class %@", objc_opt_class()];
    v16 = @"object";
    v17[0] = v5;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v13 = [v10 exceptionWithName:@"TMLRuntimeException" reason:v11 userInfo:v12];
    v14 = v13;

    objc_exception_throw(v13);
  }

  v7 = [*(*(a1 + 32) + 8) objects];
  v8 = [v7 objectForKeyedSubscript:v15];

  if (v8)
  {
    v9 = [*(a1 + 32) createObjectFromMetaObject:v8 parent:0];
  }
}

void sub_26F1CA320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26F1CA33C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  objc_storeStrong((*(a1 + 32) + 56), *(a1 + 40));
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"var _tmlF=function() { var _tmlResult=%@ return _tmlResult; }; var _tmlResult = _tmlF.call(this.%@); _tmlResult;", *(a1 + 48), *(*(a1 + 32) + 80)];;
  v3 = [*(*(a1 + 32) + 48) evaluateScript:v8];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);
  v7 = *(v6 + 56);
  *(v6 + 56) = v2;
}

void sub_26F1CA5C4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  if (a2 == 1)
  {
    [TMLExceptionHandler raiseException:objc_begin_catch(a1)];
    objc_end_catch();
    JUMPOUT(0x26F1CA588);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_26F1CA620(uint64_t a1)
{
  v2 = [*(a1 + 32) callWithArguments:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

uint64_t sub_26F1CA744(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = sub_26F1CA870(v4);
  v6 = [a1 initWithName:v4 target:v5 selector:sel_action_];

  return v6;
}

uint64_t sub_26F1CA7A8(void *a1)
{
  v2 = sub_26F1CA870(a1);
  [a1 setTarget:v2];

  return [a1 setSelector:sel_action_];
}

id sub_26F1CA870(uint64_t a1)
{
  if (qword_2806D9250 != -1)
  {
    sub_26F201690();
  }

  v2 = qword_2806D9248;

  return v2;
}

uint64_t sub_26F1CA8B4()
{
  v0 = objc_alloc_init(TMLUIAccessibilityCustomActionTarget);
  v1 = qword_2806D9248;
  qword_2806D9248 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_26F1CA9B4(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:a83847776000000_21 length:strlen(a83847776000000_21) freeWhenDone:0];
  *(*(*(a1 + 32) + 8) + 24) = [TMLContext loadClasses:v2];
}

id sub_26F1CABEC(uint64_t a1, void *a2)
{
  v7[0] = MEMORY[0x27438B2D0]([a2 MKCoordinateValue]);
  v7[1] = v2;
  v7[2] = v3;
  v7[3] = v4;
  v5 = [MEMORY[0x277CCAE60] value:v7 withObjCType:"{?={CLLocationCoordinate2D=dd}{?=dd}}"];

  return v5;
}

id sub_26F1CAC60(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [TMLJSNil unwrap:a3];
  v6 = objc_alloc(MEMORY[0x277CD4F00]);
  [v4 MKCoordinateValue];
  v8 = v7;
  v10 = v9;

  v11 = [v6 initWithCoordinate:v5 addressDictionary:{v8, v10}];

  return v11;
}

id sub_26F1CAD08(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [TMLJSNil unwrap:a3];
  v6 = objc_alloc(MEMORY[0x277CD4F00]);
  [v4 MKCoordinateValue];
  v8 = v7;
  v10 = v9;

  v11 = [v6 initWithCoordinate:v5 addressDictionary:{v8, v10}];
  v12 = [objc_alloc(MEMORY[0x277CD4E80]) initWithPlacemark:v11];

  return v12;
}

id sub_26F1CADD0(uint64_t a1, void *a2)
{
  [a2 MKCoordinateValue];
  v4 = MKMapPointForCoordinate(v6);
  v2 = [MEMORY[0x277CCAE60] valueWithBytes:&v4 objCType:"{?=dd}"];

  return v2;
}

id sub_26F1CAE28(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAE60];
  v6.x = 0.0;
  v6.y = 0.0;
  [a2 getValue:&v6];
  v3 = MKCoordinateForMapPoint(v6);
  v4 = [v2 valueWithMKCoordinate:{v3.latitude, v3.longitude}];

  return v4;
}

void sub_26F1CAE88(uint64_t a1, void *a2, void *a3)
{
  v7.x = 0.0;
  v7.y = 0.0;
  v4 = a3;
  [a2 getValue:&v7];
  x = v7.x;
  y = v7.y;
  v7.x = 0.0;
  v7.y = 0.0;
  [v4 getValue:&v7];

  v8.x = x;
  v8.y = y;
  MKMetersBetweenMapPoints(v8, v7);
}

id sub_26F1CAEF8(uint64_t a1, void *a2)
{
  memset(&v4, 0, sizeof(v4));
  [a2 getValue:&v4];
  v4 = MKCoordinateRegionForMapRect(v4);
  v2 = [MEMORY[0x277CCAE60] value:&v4 withObjCType:"{?={CLLocationCoordinate2D=dd}{?=dd}}"];

  return v2;
}

id sub_26F1CAF68()
{
  v0 = objc_alloc_init(MEMORY[0x277CD4F08]);

  return v0;
}

id sub_26F1CAF98(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [TMLJSNil unwrap:a3];
  if ([v4 conformsToProtocol:&unk_287F8BDA8])
  {
    v6 = [objc_alloc(MEMORY[0x277CD4EF0]) initWithAnnotation:v4 reuseIdentifier:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_26F1CB034(uint64_t a1, void *a2, void *a3)
{
  memset(&v9, 0, sizeof(v9));
  v4 = a3;
  [a2 getValue:&v9];
  origin = v9.origin;
  size = v9.size;
  memset(&v9, 0, sizeof(v9));
  [v4 getValue:&v9];

  v11.origin = origin;
  v11.size = size;
  v9 = MKMapRectUnion(v11, v9);
  v7 = [MEMORY[0x277CCAE60] valueWithBytes:&v9 objCType:"{?={?=dd}{?=dd}}"];

  return v7;
}

id sub_26F1CB0F8(double a1, double a2)
{
  *v4 = a1;
  *&v4[1] = a2;
  v2 = [MEMORY[0x277CCAE60] valueWithBytes:v4 objCType:"{?=dd}"];

  return v2;
}

id sub_26F1CB144(uint64_t a1, void *a2, void *a3)
{
  v7[0] = 0uLL;
  v4 = a3;
  [a2 getValue:v7];
  v8 = 0uLL;
  [v4 getValue:&v8];

  v7[1] = v8;
  v5 = [MEMORY[0x277CCAE60] valueWithBytes:v7 objCType:"{?={?=dd}{?=dd}}"];

  return v5;
}

id sub_26F1CB1D4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CD4E20];
  v3 = a2;
  v4 = [[v2 alloc] initWithRequest:v3];

  return v4;
}

void sub_26F1CB9A8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 bind:*(a1 + 32)];
  }
}

void sub_26F1CBB04(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 unbind:*(a1 + 32)];
  }
}

uint64_t sub_26F1CBCF8()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = NSClassFromString(&cfstr_Nsparagraphsty.isa);
  v2 = NSClassFromString(&cfstr_Nsmutableparag.isa);
  v3 = NSClassFromString(&cfstr_Nshashtable.isa);
  v4 = [v0 setWithObjects:{v1, v2, v3, NSClassFromString(&cfstr_Nsmaptable.isa), 0}];
  v5 = qword_2806D9260;
  qword_2806D9260 = v4;

  return MEMORY[0x2821F96F8](v4, v5);
}

uint64_t sub_26F1CBFFC(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 object];
  v6 = [v4 object];

  v7 = [v5 bindingOrder];
  v8 = [v6 bindingOrder];
  v9 = 1;
  if (v7 <= v8)
  {
    v9 = -1;
  }

  if (v7 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

void sub_26F1CC214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26F1CC230(uint64_t a1, void *a2, void *a3, void *a4)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v13 = *MEMORY[0x277CCA2F0];
  v11 = v7;
  if (!v7)
  {
    v11 = [MEMORY[0x277CBEB68] null];
  }

  v14[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [WeakRetained tmlObserveValueForKeyPath:v8 ofObject:v9 change:v12 context:0];

  if (!v7)
  {
  }
}

void sub_26F1CC704(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    atomic_fetch_and_explicit((v2 + 36), 0xBFu, memory_order_relaxed);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_26F1CC748(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  [v3 bindingValueChanged:*(a1 + 32)];
}

void sub_26F1CC934(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:"8384777600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003to+LnLR&{By/uia@}15x(n37zGFoTB7ol8Acb/jzw0d{BAh8kxbyT[bmkrfB.tt#B97#7nP5Y&v{%E[z/ex+A::325^AA0A+PA7a@gH)x>g^ length:? freeWhenDone:?]Bzku3wPwy/B98CpzF6^!nc67z0sxocpdYtBwPzi?BzkVha%471wmoN>nP5SYA=$(c5!mVnl$7gGnP5SYA=$(ca}$v*x(n37zGDG%nLR&{By/ui7Y+*a3jZ=/By/uiqE%]*z/fSc5!ESfnP5SYzGF=/B8V5nB7Df?a@HZ#xl4{kA7KOKzGGP8x>qq$26j)bx(mMc6BCgYwmYU2x>z6<AUnN$BAh8kxcFu66LRDbwO#PXvqYQ(x(mMZByxolA$ON?zGDY@a}L7/wnc6}v@#B6zw04=zGFzI3yp=23q0#>xM4{kv%8(qapnK1B7GwTv@#Bdx([Rk4O/@5B7GwTv@#Bdx([Rq0u@i+25d%%wO#P52Uv=.zGGDcBqL3lpym!IzFsh]x([2*B7GwTv@#Bdx([Ri5e(O%40uS5A:-E1x)aijC[HPZq=N)IAZshSx)aijC{i#qzFsh]x([2*B7GwTv@#Bdx([RYnc66c3j/Z6r=qXZwM9nXA=+/lBrRXi5nu39z!0i$x(v(=xMvK5wFbh*BAh8kxbyT[7ZZK&xM4{kv%8(a3q0#>xM4{kv%8(g0u@o^3tB3ZzGGP8x>qq$22n8%ry]N}0z0kv1YXb!x(>*imSiA!wmoN]z/b", strlen("8384777600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003to+LnLR&{By/uia@}15x(n37zGFoTB7ol8Acb/jzw0d{BAh8kxbyT[bmkrfB.tt#B97#7nP5Y&v{%E[z/ex+A::325^AA0A+PA7a@gH)x>g^)Bzku3wPwy/B98CpzF6^!nc67z0sxocpdYtBwPzi?BzkVha%471wmoN>nP5SYA=$(c5!mVnl$7gGnP5SYA=$(ca}$v*x(n37zGDG%nLR&{By/ui7Y+*a3jZ=/By/uiqE%]*z/fSc5!ESfnP5SYzGF=/B8V5nB7Df?a@HZ#xl4{kA7KOKzGGP8x>qq$26j)bx(mMc6BCgYwmYU2x>z6<AUnN$BAh8kxcFu66LRDbwO#PXvqYQ(x(mMZByxolA$ON?zGDY@a}L7/wnc6}v@#B6zw04=zGFzI3yp=23q0#>xM4{kv%8(qapnK1B7GwTv@#Bdx([Rk4O/@5B7GwTv@#Bdx([Rq0u@i+25d%%wO#P52Uv=.zGGDcBqL3lpym!IzFsh]x([2*B7GwTv@#Bdx([Ri5e(O%40uS5A:-E1x)aijC[HPZq=N)IAZshSx)aijC{i#qzFsh]x([2*B7GwTv@#Bdx([RYnc66c3j/Z6r=qXZwM9nXA=+/lBrRXi5nu39z!0i$x(v(=xMvK5wFbh*BAh8kxbyT[7ZZK&xM4{kv%8(a3q0#>xM4{kv%8(g0u@o^3tB3ZzGGP8x>qq$22n8%ry]N}0z0kv1YXb!x(>*imSiA!wmoN]z/b"), 0);
  *(*(*(a1 + 32) + 8) + 24) = [TMLContext loadClasses:v2];
}

void sub_26F1CCA90(uint64_t a1)
{
  v2 = objc_msgSend(MEMORY[0x277CBEA90], "dataWithBytesNoCopy:length:freeWhenDone:", "8384777600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003CcrC5(8v]CYWImB7]MglVl<:wQ5qvc<?bwx>g</Bwca-xjVdal3uWJy**^?wKHlNAbn%do(BMN5^8&=BrR?m7K6O7xjVfJv@#BdwKHlNAbn%do(BMN5^8&=BqL3lsQDl{x>g</Bwlg*x(e0fq!ZL?mSirnx(!lfvr>N=wmVqT8wiw+wnca7y*?P-z!9z(18hT{a%q8zwm]E}o<@oXzfoX]x)KtWz/OlWB8U@7C$&i/wJzpFmSiA!wmoN]z/b", strlen("8384777600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003CcrC5(8v]CYWImB7]MglVl<:wQ5qvc<?bwx>g</Bwca-xjVdal3uWJy**^?wKHlNAbn%do(BMN5^8&=BrR?m7K6O7xjVfJv@#BdwKHlNAbn%do(BMN5^8&=BqL3lsQDl{x>g</Bwlg*x(e0fq!ZL?mSirnx(!lfvr>N=wmVqT8wiw+wnca7y*?P-z!9z(18hT{a%q8zwm]E}o<@oXzfoX]x)KtWz/OlWB8U@7C$&i/wJzpFmSiA!wmoN]z/b"), 0);
  *(*(*(a1 + 32) + 8) + 24) = [TMLContext loadClasses:v2];
}

id sub_26F1CCF7C(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v7 = a3;
  if ([v7 isObject])
  {
    v8 = [TMLBlock blockWithFunction:v7, INFINITY];
    v9 = objc_alloc_init(*(a1 + 32));
    [v9 setInterval:a4];
    [v9 setRepeats:a2];
    [v9 setBlock:v8];
    [v9 start];
    v10 = +[TMLJSEnvironment currentContext];
    [v10 addObjectReference:v9];
  }

  else
  {
    v11 = MEMORY[0x277CD4658];
    v8 = [MEMORY[0x277CD4640] currentContext];
    v10 = [v11 valueWithNewErrorFromMessage:@"Callback is not a function" inContext:v8];
    v12 = [MEMORY[0x277CD4640] currentContext];
    [v12 setException:v10];

    v9 = 0;
  }

  return v9;
}

void sub_26F1CD224(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:a83847776000000_22 length:strlen(a83847776000000_22) freeWhenDone:0];
  *(*(*(a1 + 32) + 8) + 24) = [TMLContext loadClasses:v2];
}

uint64_t sub_26F1CD3C8(CLLocationDegrees a1, CLLocationDegrees a2)
{
  v2 = CLLocationCoordinate2DMake(a1, a2);
  v3 = MEMORY[0x277CCAE60];

  return [v3 valueWithMKCoordinate:{v2.latitude, v2.longitude}];
}

BOOL sub_26F1CD3F8(uint64_t a1, void *a2)
{
  [a2 MKCoordinateValue];

  return CLLocationCoordinate2DIsValid(*&v2);
}

id sub_26F1CD44C(double a1, double a2)
{
  v2 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:a1 longitude:a2];

  return v2;
}

id sub_26F1CD9D4(uint64_t a1, double a2, double a3)
{
  v3 = [objc_alloc(*(a1 + 32)) initWithOffset:{a2, a3}];

  return v3;
}

void sub_26F1CDB00(uint64_t a1)
{
  v2 = objc_msgSend( MEMORY[0x277CBEA90],  "dataWithBytesNoCopy:length:freeWhenDone:",  "8384777600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003xk5[b1UKfnKl($r=qXZwM9nXA=+/lBxi9!Cscp^BAhqoy?mS15lhq5x>qGQz/fVqz!%l3AV#b62XmH.wOkB[wFbh=vRPE:Btu5/5nu2@Bxrf#xJ5O.A=+/lBpY04777s*xM4{kv%8(a3q0#>xM4{kv%8(q5OVb%Bxrf#xJ5O.A=+/lBuh}[3zELdbs$TgnKWf7Bxir]v}wOLz/P@fB-ZU#wP{HWzGG]qy&0W65!F5mr+Vb?lVl<:A=k=gwPw$c3j7fNy?ml/By=6?z^)D)v@%F83kEn)x()A<BzaY[x>7ZMxM4{kv%8(85e(U#4r=V7v}xZ{z/P@fB-XlbnLSr8x>7ZMxM4{kv%8(q7hmV2Bxrf#xJx4=v}wOLz/P@fB-YVn0sCj}3k#Ghry]F!wl9R.v}wOLz/P@fB-Y@)BAzCs5^RGeluNx(z/c:f3i+G)D2d481A!A@BqL355^![PwO+{<vru5[25^%=wN/*a777s*xM4{kv%8(a3q0#>xM4{kv%8(Gg71F8zFsh]x([2!BA}Xl5d/-?3i+G)D2d481A!A@BrRiezFsh]x([2!BA}XliW+520v37@3mXRxry]F!wl9R.v}wOLz/P@fB-ZU#wP{HWzGG]qy&0W6l$HgCxjk)[bff=(9:@O&r=qXZwM9nXA=+/lBxi9!Cscp^BAhqoy?mR#0u9T03s!0(BAhqoy?mS1b1UKfnKl($r=qXZwM9nXA=+/lBxi9!Cscp^BAhqoy?mS9apnN3z!SY)q!Q8&ByPDn5!vMer=qXZwM9nXA=+/lBq+R@1.zZ{z/MD]mriA!AW0+SwmO.Vx>7ZMxM4{kv%8(]x>qGQz/fVqz!%l3AYN-BwjyoJx(^@?x([2?z!SY)q!Q8&ByPDni+rtLz/N(.t).@/wmO.Vx>7ZMxM4{kv%8(]x>qGQz/fVqz!%l3AZTRLlT:>xwO.[U8zzH9v@DmbA=k=gwPwzcnLSnSl1BIbz!SY)q!Q8&ByPDnr+Vb?lVl<:A=k=gwPw#$1putApe%>KwmO.Vx>7ZMxM4{kv%8(WB-..zzBw5LwOkB[wG(^e3o@GIwPIB2Bvx.OBxir]v}wOLz/P@fB-ZU#wP{HWzGG]qy&0W6mSirkwmO.Vx>7ZMxM4{kv%8(WB-..zzv=*!mHykGwncdez!SY)B7/GjByPDnC4>Jiv@DmbA=k=gwPwzdnLSnSmpZaOr=qXZwM9nXA=+/lBxi9!Cscp^BAhqoy?mS9gZU1bwmP>4x>7Z}xM4{kv%8)5B-..zzw0<Vpe%>KwmO.Vx>7ZMxM4{kv%8(WB-..zzx.w=A+fr6zGFrTx()x]x>7ZMxM4{kv%8(]x>qGQz/fVqz!%l3AYN/JAZskDr=qXZwM9nXA=+/lBv7a(Bz(4Tb7G.4k5+KNB7Glhl1BIbz!SY)q!Q8&ByPDnr+Vb?lVl<:A=k=gwPymUAZskDr=qXZwM9nXA=+/lBv7a(Bz(4d0uauk9:@O&C5I88wPIK6A=+/lBARwfCvLMeBAhqoy?mS1b1UKfnKl($r=qXZwM9nXA=+/lBxi9!Cscp^BAhqoy?mS9gZU1bwmP>4x>7Z}xM4{kv%8)5B-..zzw0<Vpe%>KwmO.Vx>7ZMxM4{kv%8(WB-..zzx.t+A+fr6zGFfPwl9R.v}wOLz/P@fB-ZU#wP{HWzGG]qy&0W6i+AqJl1BIbz!SY)q!Q8&ByPDnluNx(z/dPW=JBO9nLSnSmpZaOr=qXZwM9nXA=+/lBxi9!Cscp^BAhqoy?mSPwO+{<vru68uKwh)wncc^z!SY)q!Q8&ByPDnr+Vb?lVl<:A=k=gwPygMwj6^yv}xD/0u9W13s!0(BAhqoy?mS1bs$TgnKWf7Bxir]v}wOLz/P@fB-ZU#wP{HWzGG]qy&0W6bi]mplUf!xBxir]v}wOLz/P@fB-ZU#wP{HWzGG]qy&0W6l${g1wO+}1wMA.-v}wOLz/P@fB-ZY0BzalRwO#Q7w[+*%5ciX73jpoYzGG]qy&0W65*G$yry]R&x()x]x>7ZMxM4{kv%8(]x>qGQz/fVqz!%l3AVctk9+n?#wPRG]C5I88wPIK6A=+/lBzkn%zGGP8x>qq$22n8%ry]O5mp*1zBxir]v}wOLz/P@fB-ZU#wP{HWzGG]qy&0W6i+h@nl$HgCBy!G>x>7ZMxM4{kv%8({x([2WwmYU2x>z6<AYLz>0syk^wncc^z!SY)q!Q8&ByPDnr+Vb?lVl<:A=k=gwPygMwl0OVvru5(0u9W13s!0(BAhqoy?mS1bs$TgnKWf7Bxir]v}wOLz/P@fB-ZU#wP{HWzGG]qy&0W68xYv@C5I88wM9nXA=+/lBp]9Qpf8pEv}wOLz/P@fB-XJi3i+0YA=k$h1X0DLz/N3+wN]H%r=qXZwM9nXA=+/lBxi9!Cscp^BAhqoy?mSFwnbNOAaAy0wMA.-v}wOLz/P@fB-YVQA=M8siW$qknLr=tdHFT-B-7.#BzkVh",  strlen("8384777600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003xk5[b1UKfnKl($r=qXZwM9nXA=+/lBxi9!Cscp^BAhqoy?mS15lhq5x>qGQz/fVqz!%l3AV#b62XmH.wOkB[wFbh=vRPE:Btu5/5nu2@Bxrf#xJ5O.A=+/lBpY04777s*xM4{kv%8(a3q0#>xM4{kv%8(q5OVb%Bxrf#xJ5O.A=+/lBuh}[3zELdbs$TgnKWf7Bxir]v}wOLz/P@fB-ZU#wP{HWzGG]qy&0W65!F5mr+Vb?lVl<:A=k=gwPw$c3j7fNy?ml/By=6?z^)D)v@%F83kEn)x()A<BzaY[x>7ZMxM4{kv%8(85e(U#4r=V7v}xZ{z/P@fB-XlbnLSr8x>7ZMxM4{kv%8(q7hmV2Bxrf#xJx4=v}wOLz/P@fB-YVn0sCj}3k#Ghry]F!wl9R.v}wOLz/P@fB-Y@)BAzCs5^RGeluNx(z/c:f3i+G)D2d481A!A@BqL355^![PwO+{<vru5[25^%=wN/*a777s*xM4{kv%8(a3q0#>xM4{kv%8(Gg71F8zFsh]x([2!BA}Xl5d/-?3i+G)D2d481A!A@BrRiezFsh]x([2!BA}XliW+520v37@3mXRxry]F!wl9R.v}wOLz/P@fB-ZU#wP{HWzGG]qy&0W6l$HgCxjk)[bff=(9:@O&r=qXZwM9nXA=+/lBxi9!Cscp^BAhqoy?mR#0u9T03s!0(BAhqoy?mS1b1UKfnKl($r=qXZwM9nXA=+/lBxi9!Cscp^BAhqoy?mS9apnN3z!SY)q!Q8&ByPDn5!vMer=qXZwM9nXA=+/lBq+R@1.zZ{z/MD]mriA!AW0+SwmO.Vx>7ZMxM4{kv%8(]x>qGQz/fVqz!%l3AYN-BwjyoJx(^@?x([2?z!SY)q!Q8&ByPDni+rtLz/N(.t).@/wmO.Vx>7ZMxM4{kv%8(]x>qGQz/fVqz!%l3AZTRLlT:>xwO.[U8zzH9v@DmbA=k=gwPwzcnLSnSl1BIbz!SY)q!Q8&ByPDnr+Vb?lVl<:A=k=gwPw#$1putApe%>KwmO.Vx>7ZMxM4{kv%8(WB-..zzBw5LwOkB[wG(^e3o@GIwPIB2Bvx.OBxir]v}wOLz/P@fB-ZU#wP{HWzGG]qy&0W6mSirkwmO.Vx>7ZMxM4{kv%8(WB-..zzv=*!mHykGwncdez!SY)B7/GjByPDnC4>Jiv@DmbA=k=gwPwzdnLSnSmpZaOr=qXZwM9nXA=+/lBxi9!Cscp^BAhqoy?mS9gZU1bwmP>4x>7Z}xM4{kv%8)5B-..zzw0<Vpe%>KwmO.Vx>7ZMxM4{kv%8(WB-..zzx.w=A+fr6zGFrTx()x]x>7ZMxM4{kv%8(]x>qGQz/fVqz!%l3AYN/JAZskDr=qXZwM9nXA=+/lBv7a(Bz(4Tb7G.4k5+KNB7Glhl1BIbz!SY)q!Q8&ByPDnr+Vb?lVl<:A=k=gwPymUAZskDr=qXZwM9nXA=+/lBv7a(Bz(4d0uauk9:@O&C5I88wPIK6A=+/lBARwfCvLMeBAhqoy?mS1b1UKfnKl($r=qXZwM9nXA=+/lBxi9!Cscp^BAhqoy?mS9gZU1bwmP>4x>7Z}xM4{kv%8)5B-..zzw0<Vpe%>KwmO.Vx>7ZMxM4{kv%8(WB-..zzx.t+A+fr6zGFfPwl9R.v}wOLz/P@fB-ZU#wP{HWzGG]qy&0W6i+AqJl1BIbz!SY)q!Q8&ByPDnluNx(z/dPW=JBO9nLSnSmpZaOr=qXZwM9nXA=+/lBxi9!Cscp^BAhqoy?mSPwO+{<vru68uKwh)wncc^z!SY)q!Q8&ByPDnr+Vb?lVl<:A=k=gwPygMwj6^yv}xD/0u9W13s!0(BAhqoy?mS1bs$TgnKWf7Bxir]v}wOLz/P@fB-ZU#wP{HWzGG]qy&0W6bi]mplUf!xBxir]v}wOLz/P@fB-ZU#wP{HWzGG]qy&0W6l${g1wO+}1wMA.-v}wOLz/P@fB-ZY0BzalRwO#Q7w[+*%5ciX73jpoYzGG]qy&0W65*G$yry]R&x()x]x>7ZMxM4{kv%8(]x>qGQz/fVqz!%l3AVctk9+n?#wPRG]C5I88wPIK6A=+/lBzkn%zGGP8x>qq$22n8%ry]O5mp*1zBxir]v}wOLz/P@fB-ZU#wP{HWzGG]qy&0W6i+h@nl$HgCBy!G>x>7ZMxM4{kv%8({x([2WwmYU2x>z6<AYLz>0syk^wncc^z!SY)q!Q8&ByPDnr+Vb?lVl<:A=k=gwPygMwl0OVvru5(0u9W13s!0(BAhqoy?mS1bs$TgnKWf7Bxir]v}wOLz/P@fB-ZU#wP{HWzGG]qy&0W68xYv@C5I88wM9nXA=+/lBp]9Qpf8pEv}wOLz/P@fB-XJi3i+0YA=k$h1X0DLz/N3+wN]H%r=qXZwM9nXA=+/lBxi9!Cscp^BAhqoy?mSFwnbNOAaAy0wMA.-v}wOLz/P@fB-YVQA=M8siW$qknLr=tdHFT-B-7.#BzkVh"),  0);
  *(*(*(a1 + 32) + 8) + 24) = [TMLContext loadClasses:v2];
}

void sub_26F1CDD60(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:a83847776000000_9 length:strlen(a83847776000000_9) freeWhenDone:0];
  *(*(*(a1 + 32) + 8) + 24) = [TMLContext loadClasses:v2];
}

void sub_26F1CE4BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 rootClassDescriptor];
  [v1 registerClass:v2];
}

void sub_26F1CE5C0()
{
  v16[1] = *MEMORY[0x277D85DE8];
  v0 = [[TMLClassDescriptor alloc] initWithName:@"_NSObject" superClassName:0 initializer:0 optional:0];
  v1 = qword_2806D92B8;
  qword_2806D92B8 = v0;

  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  [qword_2806D92B8 setObjcClassName:v3];

  v4 = qword_2806D92B8;
  v5 = [[TMLPropertyDescriptor alloc] initWithName:@"tmlState" type:17 attributes:0];
  [v4 addProperty:v5];

  v6 = qword_2806D92B8;
  v7 = [[TMLSignalDescriptor alloc] initWithName:@"initialize" parameters:0];
  [v6 addSignal:v7];

  v8 = qword_2806D92B8;
  v9 = [[TMLSignalDescriptor alloc] initWithName:@"finalize" parameters:0];
  [v8 addSignal:v9];

  v10 = qword_2806D92B8;
  v11 = [TMLMethodDescriptor alloc];
  v12 = [[TMLPropertyDescriptor alloc] initWithName:@"signal" type:17 attributes:0];
  v16[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v14 = NSStringFromSelector(sel_tmlHasSignal_);
  v15 = [(TMLMethodDescriptor *)v11 initWithName:@"tmlHasSignal" returnType:2 parameters:v13 methodSelector:v14 attributes:0];
  [v10 addMethod:v15];
}

uint64_t sub_26F1CE910()
{
  v0 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:8];
  v1 = qword_2806D92C8;
  qword_2806D92C8 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_26F1CF050(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [*(a1 + 40) protocolForName:a2];
  if (v5)
  {
    v9 = v5;
    v6 = [v5 implementsProtocols];
    if ([v6 count])
    {
      v7 = *(a1 + 32);
      v8 = [v6 allObjects];
      [v7 addObjectsFromArray:v8];

      *a3 = 1;
    }

    v5 = v9;
  }
}

void sub_26F1CF0F4(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 48) protocolForName:?];
  if (!v3)
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot implement undeclared protocol %@", v11];
    v9 = [v7 exceptionWithName:@"TMLRuntimeException" reason:v8 userInfo:0];
    v10 = v9;

    objc_exception_throw(v9);
  }

  v4 = v3;
  v5 = *(a1 + 32);
  v6 = [v3 objcProtocol];
  LOBYTE(v5) = [v5 conformsToProtocol:v6];

  if ((v5 & 1) == 0)
  {
    [*(a1 + 40) addObject:v4];
  }
}

void sub_26F1CF1EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 signals];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = sub_26F1CF2C4;
  v12 = &unk_279DC8290;
  v5 = *(a1 + 32);
  v13 = v3;
  v14 = v5;
  v6 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:&v9];

  v7 = *(a1 + 32);
  v8 = [v6 objcProtocol];
  class_addProtocol(v7, v8);
}

void sub_26F1CF2C4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (([v5 isOptional] & 1) == 0)
  {
    v4 = [*(a1 + 32) objcProtocol];
    [TMLSignalMethods addSignalMethod:v5 forProtocol:v4 toClass:*(a1 + 40)];
  }
}

uint64_t sub_26F1CFCE8()
{
  v0 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:64];
  v1 = qword_2806D9298;
  qword_2806D9298 = v0;

  v2 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:16];
  v3 = qword_2806D92A8;
  qword_2806D92A8 = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

void sub_26F1CFD50(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = [v6 superClassName];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  if (v5)
  {
    [v6 setSuperClass:*(a1 + 40)];
  }
}

void sub_26F1CFDC8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if ([TMLUIControlState isControlStateClass:?])
  {
    [TMLUIControlState registerControlState:v6 forClass:*(a1 + 32)];
  }

  v4 = *(a1 + 40);
  v5 = [v6 objcClassName];
  [v4 registerClass:v6 className:v5];
}

void sub_26F1CFE60(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 superClassName];
  v4 = [*(a1 + 32) className];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    [*(a1 + 40) registerClass:v6];
  }
}

void sub_26F1D001C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a3;
  [v4 verifyMethod:v6 forProtocol:v5];
  [TMLSignalMethods verifySignalMethod:v6 forProtocol:*(a1 + 32)];
}

uint64_t sub_26F1D0090()
{
  v0 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:16];
  v1 = qword_2806D92A0;
  qword_2806D92A0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_26F1D072C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_26F1D0744(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  Superclass = *(a1 + 40);
  v13.receiver = v7;
  if (!Superclass)
  {
    Class = object_getClass(v7);
    Superclass = class_getSuperclass(Class);
  }

  v13.super_class = Superclass;
  v11 = objc_msgSendSuper(&v13, *(a1 + 48), a3, v8);

  sub_26F1D07F4(v11, *(*(*(a1 + 32) + 8) + 40));

  return v11;
}

void sub_26F1D07F4(void *a1, void *a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_opt_class();
  objc_setAssociatedObject(v3, "cppmsc", v5, 0);
  v15 = @"owner";
  v6 = [TMLWeakReferenceObject weakReferenceWithObject:v3];
  v16[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v8 = [TMLContext cloneContext:v4 objects:v7];

  objc_setAssociatedObject(v3, "c", v8, 1);
  objc_initWeak(&location, v8);
  v9 = +[TMLJSEnvironment currentContext];
  v10 = [TMLDisposeBlock alloc];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_26F1D3BD4;
  v12[3] = &unk_279DC6368;
  objc_copyWeak(&v13, &location);
  v11 = [(TMLDisposeBlock *)v10 initWithBlock:v12];
  [v9 addObjectReference:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void sub_26F1D09D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_26F1D09FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  Superclass = *(a1 + 40);
  v11.receiver = v5;
  if (!Superclass)
  {
    Class = object_getClass(v5);
    Superclass = class_getSuperclass(Class);
  }

  v11.super_class = Superclass;
  v9 = objc_msgSendSuper(&v11, *(a1 + 48), v6);

  sub_26F1D07F4(v9, *(*(*(a1 + 32) + 8) + 40));

  return v9;
}

id sub_26F1D0AA4(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = a2;
  Superclass = *(a1 + 40);
  v16.receiver = v11;
  if (!Superclass)
  {
    Class = object_getClass(v11);
    Superclass = class_getSuperclass(Class);
  }

  v16.super_class = Superclass;
  v14 = objc_msgSendSuper(&v16, *(a1 + 48), a3, a4, a5, a6);

  sub_26F1D07F4(v14, *(*(*(a1 + 32) + 8) + 40));

  return v14;
}

id sub_26F1D0B68(uint64_t a1, void *a2)
{
  v3 = a2;
  Superclass = *(a1 + 40);
  v8.receiver = v3;
  if (!Superclass)
  {
    Class = object_getClass(v3);
    Superclass = class_getSuperclass(Class);
  }

  v8.super_class = Superclass;
  v6 = objc_msgSendSuper(&v8, *(a1 + 48));

  sub_26F1D07F4(v6, *(*(*(a1 + 32) + 8) + 40));

  return v6;
}

void sub_26F1D0BFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_26F1D0C9C;
  v6[3] = &unk_279DC8498;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  [TMLJSEnvironment addGCCallback:v6];
}

void sub_26F1D0C9C(uint64_t a1)
{
  objc_removeAssociatedObjects(*(a1 + 32));
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void sub_26F1D0CE4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [*(a1 + 40) protocolForName:a2];
  if (v5)
  {
    v9 = v5;
    v6 = [v5 implementsProtocols];
    if ([v6 count])
    {
      v7 = *(a1 + 32);
      v8 = [v6 allObjects];
      [v7 addObjectsFromArray:v8];

      *a3 = 1;
    }

    v5 = v9;
  }
}

void sub_26F1D0D88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) protocolForName:v3];
  if (!v4)
  {
    v11 = MEMORY[0x277CBEAD8];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot implement undeclared protocol %@", v3];
    v13 = [v11 exceptionWithName:@"TMLRuntimeException" reason:v12 userInfo:0];
    v14 = v13;

    objc_exception_throw(v13);
  }

  v5 = v4;
  v6 = [v4 signals];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_26F1D0ED4;
  v15[3] = &unk_279DC8290;
  v7 = *(a1 + 40);
  v16 = v5;
  v17 = v7;
  v8 = v5;
  [v6 enumerateKeysAndObjectsUsingBlock:v15];

  v9 = *(a1 + 40);
  v10 = [v8 objcProtocol];
  class_addProtocol(v9, v10);
}

void sub_26F1D0ED4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (([v5 isOptional] & 1) == 0)
  {
    v4 = [*(a1 + 32) objcProtocol];
    [TMLSignalMethods addSignalMethod:v5 forProtocol:v4 toClass:*(a1 + 40)];
  }
}

unint64_t sub_26F1D1530(objc_property *a1)
{
  Attributes = property_getAttributes(a1);
  if (Attributes)
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:Attributes length:strlen(Attributes) encoding:1 freeWhenDone:0];
  }

  else
  {
    v2 = @"T ,";
  }

  v3 = [(__CFString *)v2 rangeOfString:@", "];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([(__CFString *)v2 hasPrefix:@"Tr"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    v5 = [(__CFString *)v2 length]- v4;
  }

  else
  {
    v6 = v3;
    if (![(__CFString *)v2 hasPrefix:@"T"])
    {
      v8 = 0;
      goto LABEL_13;
    }

    v5 = v6 - 1;
    v4 = 1;
  }

  v7 = [(__CFString *)v2 substringWithRange:v4, v5];

  v8 = [TMLTypeRegistry typeForEncodedType:v7];
  v2 = v7;
LABEL_13:

  return v8;
}

void sub_26F1D2E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26F1D2E38(uint64_t a1, void *a2, _BYTE *a3)
{
  v12 = a2;
  v5 = [v12 signals];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 32)];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(*(a1 + 48) + 8) + 40);
  if (v9)
  {
    v10 = [v12 objcProtocol];
    v11 = objc_getAssociatedObject(*(a1 + 40), "cppmsc");
    [TMLSignalMethods addSignalMethod:v9 forProtocol:v10 toClass:v11];

    *a3 = 1;
  }
}

void sub_26F1D3190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26F1D31A8(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  if ([a2 isEqualToString:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

uint64_t sub_26F1D3614()
{
  v0 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:64];
  v1 = qword_2806D92F8;
  qword_2806D92F8 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_26F1D3BD4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dispose];
}

void sub_26F1D3CD8(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:a83847776000000_23 length:strlen(a83847776000000_23) freeWhenDone:0];
  *(*(*(a1 + 32) + 8) + 24) = [TMLContext loadClasses:v2];
}

id sub_26F1D3E68(int a1, int32_t preferredTimescale, Float64 a3)
{
  v3 = MEMORY[0x277CCAE60];
  CMTimeMakeWithSeconds(&v6, a3, preferredTimescale);
  v4 = [v3 valueWithCMTime:&v6];

  return v4;
}

id sub_26F1D3EC0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  memset(&v12[1], 0, sizeof(CMTime));
  if (v4)
  {
    objc_msgSend_CMTimeValue(v4);
  }

  memset(v12, 0, 24);
  if (v5)
  {
    objc_msgSend_CMTimeValue(v5);
  }

  v6 = MEMORY[0x277CCAE60];
  lhs = v12[1];
  v9 = v12[0];
  CMTimeAdd(&v11, &lhs, &v9);
  v7 = [v6 valueWithCMTime:&v11];

  return v7;
}

id sub_26F1D3F98(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v5;
  v7 = MEMORY[0x277CCAE60];
  if (v4)
  {
    objc_msgSend_CMTimeValue(v4);
    if (v6)
    {
LABEL_3:
      objc_msgSend_CMTimeValue(v6);
      goto LABEL_6;
    }
  }

  else
  {
    memset(&start, 0, sizeof(start));
    if (v5)
    {
      goto LABEL_3;
    }
  }

  memset(&v10, 0, sizeof(v10));
LABEL_6:
  CMTimeRangeMake(&v12, &start, &v10);
  v8 = [v7 valueWithCMTimeRange:&v12];

  return v8;
}

id sub_26F1D4058(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v5;
  v7 = MEMORY[0x277CCAE60];
  if (v4)
  {
    objc_msgSend_CMTimeValue(v4);
    if (v6)
    {
LABEL_3:
      objc_msgSend_CMTimeValue(v6);
      goto LABEL_6;
    }
  }

  else
  {
    memset(&start, 0, sizeof(start));
    if (v5)
    {
      goto LABEL_3;
    }
  }

  memset(&v10, 0, sizeof(v10));
LABEL_6:
  CMTimeRangeFromTimeToTime(&v12, &start, &v10);
  v8 = [v7 valueWithCMTimeRange:&v12];

  return v8;
}

Float64 sub_26F1D4118(uint64_t a1, void *a2)
{
  if (a2)
  {
    objc_msgSend_CMTimeValue(a2);
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  return CMTimeGetSeconds(&time);
}

id sub_26F1D4158(Float64 a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x277CCAE60];
  if (a3)
  {
    objc_msgSend_CMTimeValue(a3);
  }

  else
  {
    memset(&v7, 0, sizeof(v7));
  }

  CMTimeMultiplyByFloat64(&v8, &v7, a1);
  v5 = [v4 valueWithCMTime:&v8];

  return v5;
}

uint64_t sub_26F1D41DC(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (!v4)
  {
    memset(&time1, 0, sizeof(time1));
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    memset(&v9, 0, sizeof(v9));
    goto LABEL_6;
  }

  objc_msgSend_CMTimeValue(v4);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  objc_msgSend_CMTimeValue(v6);
LABEL_6:
  v7 = CMTimeCompare(&time1, &v9);

  return v7;
}

void sub_26F1D5300(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:"8384777600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003Jf#j6h.C1A+fAdwP{HWzGG]qy&0W65!F5mr+Vb?lVl<:A=k=gwPw$o3kc&>A=L-eBwN0?C4>JinPXJX5^An-ygQ length:? freeWhenDone:?]%7Y+/{3jprLByw9^B-H#65^An-ygQ)%a}+j*wmYN*xjk)[5^An-ygQ)%gb]QUA+e<6wPIJLB-IIlzGFY}wP?^0Cs=)/z4DZ(8ffq2A+fr9lV)A&wO#P^A+fAdwP{Z/wO<gV3jZMOzCUv+C4>JinPXJX5cr:W3iU6+wO&4:z^)D)v@@[ad}r19p&Zb<x>qGWBy/qIg8ZGbA+f69vpR=mBytZYa{@v4y&r-)l$7gCbie!j8=op9A+fAdwP{HWzGG]qy&0W6l$HgCxjk)[b1&mZAb]Jkx>qGQz/fVqz!%l3AZTRLl${ZVx(!tb0u9u[5Pz=4C4>JilVl<:A=k=gwPwy%qa%/bwP?^0Cscp^BAhqoy?mSn0WsPA3m{dpwP?^0Cscp^BAhqoy?mS=xM53fwkveQzDfOdmSirzA+fAdwP{Z/wO?$W8yL}8Ab]Jkx>qGQz/fVqz!%l3AUo3.oI/+vC4>JilVl<:A=k=gwPwW@3iKpaoCdCIA+(T73iU6+wO&4:z^)D)v@@[FAb]Jkx>qGQz/fVqz!%l3AYOnPz/](bpJf(.rz(HKw]zY^A+fAdwP{Z/wO<ER0WpqB9b]}fC4>JilVl<:A=k=gwPy<^y?#HNB8tSjA$wu<c<*M9A+fAdwP{HWzGG]qy&0W65!!bop&Zb<x>qGQz/fVqz!%l3AWQ#k)eWLmqa%/bwP?^0Cscp^BAhqoy?mSPvrt{Rz/{8gwG(m75].(5C4>JinPXJXl3bXowmY#%5e(@75Pz=4C4>JilVl<:A=k=gwPwy%qa%/bwP?^0Cscp^BAhqoy?mS93<)eLzE^s65^8&=BrS2IA+fAdwP{HWzGG]qy&0W6i=GaJC4>JinPXJXl3bXowmZ0Db2[%$zGP/9wPyNUp&Zb<x>qGWBy/rgnP4vBwP?^0Cscp^BAhqoy?mR#1@X(%5Pz=4C4>JilVl<:A=k=gwPwy%qa%/bwP?^0Cscp^BAhqoy?mR", strlen("8384777600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003Jf#j6h.C1A+fAdwP{HWzGG]qy&0W65!F5mr+Vb?lVl<:A=k=gwPw$o3kc&>A=L-eBwN0?C4>JinPXJX5^An-ygQ)%7Y+/{3jprLByw9^B-H#65^An-ygQ)%a}+j*wmYN*xjk)[5^An-ygQ)%gb]QUA+e<6wPIJLB-IIlzGFY}wP?^0Cs=)/z4DZ(8ffq2A+fr9lV)A&wO#P^A+fAdwP{Z/wO<gV3jZMOzCUv+C4>JinPXJX5cr:W3iU6+wO&4:z^)D)v@@[ad}r19p&Zb<x>qGWBy/qIg8ZGbA+f69vpR=mBytZYa{@v4y&r-)l$7gCbie!j8=op9A+fAdwP{HWzGG]qy&0W6l$HgCxjk)[b1&mZAb]Jkx>qGQz/fVqz!%l3AZTRLl${ZVx(!tb0u9u[5Pz=4C4>JilVl<:A=k=gwPwy%qa%/bwP?^0Cscp^BAhqoy?mSn0WsPA3m{dpwP?^0Cscp^BAhqoy?mS=xM53fwkveQzDfOdmSirzA+fAdwP{Z/wO?$W8yL}8Ab]Jkx>qGQz/fVqz!%l3AUo3.oI/+vC4>JilVl<:A=k=gwPwW@3iKpaoCdCIA+(T73iU6+wO&4:z^)D)v@@[FAb]Jkx>qGQz/fVqz!%l3AYOnPz/](bpJf(.rz(HKw]zY^A+fAdwP{Z/wO<ER0WpqB9b]}fC4>JilVl<:A=k=gwPy<^y?#HNB8tSjA$wu<c<*M9A+fAdwP{HWzGG]qy&0W65!!bop&Zb<x>qGQz/fVqz!%l3AWQ#k)eWLmqa%/bwP?^0Cscp^BAhqoy?mSPvrt{Rz/{8gwG(m75].(5C4>JinPXJXl3bXowmY#%5e(@75Pz=4C4>JilVl<:A=k=gwPwy%qa%/bwP?^0Cscp^BAhqoy?mS93<)eLzE^s65^8&=BrS2IA+fAdwP{HWzGG]qy&0W6i=GaJC4>JinPXJXl3bXowmZ0Db2[%$zGP/9wPyNUp&Zb<x>qGWBy/rgnP4vBwP?^0Cscp^BAhqoy?mR#1@X(%5Pz=4C4>JilVl<:A=k=gwPwy%qa%/bwP?^0Cscp^BAhqoy?mR"), 0);
  *(*(*(a1 + 32) + 8) + 24) = [TMLContext loadClasses:v2];
}

id sub_26F1D5900(uint64_t a1, void *a2, void *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 length])
  {
    v9 = [MEMORY[0x277D74310] fontDescriptorWithName:v7 size:a4];
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v11 = MEMORY[0x277D74300];
    if (isKindOfClass)
    {
      [v8 floatValue];
      [v11 systemFontOfSize:a4 weight:v12];
    }

    else
    {
      [MEMORY[0x277D74300] systemFontOfSize:a4];
    }
    v13 = ;
    v9 = [v13 fontDescriptor];
  }

  v14 = [objc_alloc(*(a1 + 32)) initWithFontDescriptor:v9];

  return v14;
}

CGFont *sub_26F1D5A34(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (!v2)
  {
    goto LABEL_11;
  }

  v4 = CGDataProviderCreateWithCFData(v2);
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = CGFontCreateWithDataProvider(v4);
  v6 = v5;
  if (!v5)
  {
    goto LABEL_12;
  }

  error = 0;
  if (!CTFontManagerRegisterGraphicsFont(v5, &error))
  {
    v7 = CFErrorCopyDescription(error);
    CFRelease(v7);
  }

  v8 = [MEMORY[0x277D74300] familyNames];
  v6 = CGFontCopyPostScriptName(v6);
  if ([v8 count] < 1)
  {
LABEL_10:

LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  v9 = 0;
  while (1)
  {
    v10 = MEMORY[0x277D74300];
    v11 = [v8 objectAtIndex:v9];
    v12 = [v10 fontNamesForFamilyName:v11];

    LOBYTE(v11) = [v12 containsObject:v6];
    if (v11)
    {
      break;
    }

    if (++v9 >= [v8 count])
    {
      goto LABEL_10;
    }
  }

LABEL_12:

  return v6;
}

void sub_26F1D5B70()
{
  v6[5] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277D76800];
  v6[0] = *MEMORY[0x277D76808];
  v6[1] = v1;
  v2 = *MEMORY[0x277D767F0];
  v6[2] = *MEMORY[0x277D767F8];
  v6[3] = v2;
  v6[4] = *MEMORY[0x277D767E8];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:5];
  v4 = [v0 setWithArray:v3];
  v5 = qword_2806D9318;
  qword_2806D9318 = v4;
}

id sub_26F1D5C50(uint64_t a1, void *a2, void *a3, int a4)
{
  v6 = a2;
  v7 = a3;
  v8 = [objc_alloc(MEMORY[0x277D75520]) initForTextStyle:v6];
  v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:v6];
  v10 = MEMORY[0x277D74310];
  v11 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x277D76838]];
  v12 = [v10 preferredFontDescriptorWithTextStyle:v6 compatibleWithTraitCollection:v11];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v14 = MEMORY[0x277D74300];
  if (isKindOfClass)
  {
    [v12 pointSize];
    v16 = v15;
    [v7 floatValue];
    v18 = [v14 systemFontOfSize:v16 weight:v17];
  }

  else
  {
    v19 = [v9 fontDescriptor];
    [v12 pointSize];
    v18 = [v14 fontWithDescriptor:v19 size:?];

    v9 = v19;
  }

  if (a4)
  {
    v20 = MEMORY[0x277D74310];
    v21 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x277D76818]];
    v22 = [v20 preferredFontDescriptorWithTextStyle:v6 compatibleWithTraitCollection:v21];

    [v22 pointSize];
    v23 = [v8 scaledFontForFont:v18 maximumPointSize:?];
    v12 = v22;
  }

  else
  {
    v23 = [v8 scaledFontForFont:v18];
  }

  v24 = [objc_alloc(*(a1 + 32)) initWithFont:v23];

  return v24;
}

double sub_26F1D5E74(double a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x277D75520];
  v5 = a3;
  v6 = [[v4 alloc] initForTextStyle:v5];

  [v6 scaledValueForValue:a1];
  v8 = v7;

  return v8;
}

double sub_26F1D5EDC(double a1)
{
  v2 = [MEMORY[0x277D75520] defaultMetrics];
  [v2 scaledValueForValue:a1];
  v4 = v3;

  return v4;
}

double sub_26F1D6B54(void *a1)
{
  v2 = [a1 view];
  [a1 translationInView:v2];
  v4 = v3;

  return v4;
}

double sub_26F1D6BA8(void *a1)
{
  v2 = [a1 view];
  [a1 velocityInView:v2];
  v4 = v3;

  return v4;
}

id sub_26F1D6E7C(uint64_t a1, double a2, double a3)
{
  v3 = [objc_alloc(*(a1 + 32)) initWithPoint:{a2, a3}];

  return v3;
}

BOOL sub_26F1D6EC4(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 point];
  v6 = v5;
  v8 = v7;
  [v4 point];
  v10 = v9;
  v12 = v11;

  return v8 == v12 && v6 == v10;
}

id sub_26F1D6F30(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 alloc];
  [v7 point];
  v16 = v10;
  v17 = v9;

  if (v5)
  {
    objc_msgSend_transform(v5);
    v11 = v18;
    v12 = v19;
    v13 = v20;
  }

  else
  {
    v13 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
  }

  v14 = [v8 initWithPoint:{vaddq_f64(v13, vmlaq_n_f64(vmulq_n_f64(v12, *&v16), v11, *&v17)), v16, v17}];

  return v14;
}

id sub_26F1D6FF4(uint64_t a1, CFDictionaryRef dict)
{
  v6 = *MEMORY[0x277CBF348];
  if (CGPointMakeWithDictionaryRepresentation(dict, &v6))
  {
    v3 = objc_alloc(*(a1 + 32));
    v4 = [v3 initWithPoint:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_26F1D7720(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:"8384777600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003rNSJrzDqcBzku3v{%E[z/eD:B8V5nB7DKr3jH/<Bzku3v{%E[z/cf$rzDqcBzku3v{%E[z/cx length:? freeWhenDone:?]a@*}3vpKy[z/ecSwO#Q7w[+*%5^AA0A+PA77Y:#t0TYVxpek.Hx>z6?vruj4zC>4=B.bSoa%Ev0v@DmbwO#P56&!17z//Y9x>7N[x(v(Rz/fVdzGDY@a%Ev0BAh8dxjV8@6&!17z//Y9x>7N[x(v(*A+Pf0wPwQ*a@gH)x>g^)Bzku3wPwy/B98CpzF6^!go7uZbxvvnB.bSos7#+&nN#yIBzku3wPydRzGGDcBx0o{xj>^@5d/-]3jpGTwO#Q7w[+*%5^AA0A+PA78xYv(v@DmbwO#P56&!17z//Y9x>7N[x(v(Rz/fVdzGD^t3i$V[x>I6&AUo9!pek.Hx>z6?vruj4zD7T<xj>^@a$1)YwPq<7B97F$BzalRwO#Q7w[+*%i+98CBy/uii=]yRxj>^@iTRwU3li5vo)7L^vR/QJz//Y9x>7N[x(v(Rz/fVdzGDHarzDqcBzku3v{%E[z/d{XzGGDcBrRt82Y>b$Bzk&kwFbh*BAh8kxcFi24@tV%zEWuKzdd6*pgn0J5^AA0A+PA7a}C1:vQS!WwFbh=vRPE:BrRRg5oIPawNPavwmYU2x>z6<AUnN$BAh8kxcE&[1:1E2y?jj-B98CpzF7dk3i+G?B-7.56id!5z//Y9x>7N[x(v(/z/]@da}$v(vruQ1v}YZ<zGG}j1Z#B(vr<4b3iT*Rwo!^(B98CpzF7dk3kc&SBy/96A^pk!wO#Q7w[+*%5^AA0A+PA7a@gH>B-RbmnP5cU5^&e-v@#B6zEENh3HE<39At<4vqGH)wmoHNz//Y9x>7N[x(v(*A+Pf0wPwy#rzDqcBzku3v{%E[z/eJ{x>I6&AV#+o4Rf0&wKyxMAbPS9zGG}j5kDd(vru6Fz/6DizE)ZcA#j{kJSxFnBAh8dxjV9+x([2Rvru6Pvru0)x(mMJz/6DizE)ZcB5DN*wNPX45d/:73jZPPBy!%2ze:AhwO#Qh5!E/pl$7gGlVl*Xz/fc7BAnuh3i$P.AaJE1A$OQ+z/oCod>tZZx>I6&A-V%%xHDoJwLDPPv}YN]xg3POAbPS9zGG}XA+fi3vruMK3s<FSrzDqcBzku3v{%E[z/eG(B-7.B9%@A!wObv[y&&P]B-7.35f.MlwmYvYB.(d#z/]@dgaS+tB8MhswklMIwN(t-8v^8SzEEx[5^AA0A+PA7a}b#yz/]@dpgn0Jwi75[3lJnyraQq@nP5G&Bwu:@x>z6?vruj4zC>4!AbPSnwFb+Upek.Hx>z6?vruj4zC>4!AbPSnwG?/}2Z7i1A-uQ{Bp[!0BAh8kxbyTRR2Z]zrzDkav{%E[z/er*Bzku3v{%E[z/eJ{x>I6&AUo9!pek.Hx>z6?vruj4zD7T<xj>^@a}$v*A+e($z/cf[lRHx?xk8p47Y=x[3k4x2x>I6&A-V%%xI@zOx(v(25e(e*26ao/x(v(42T.o-wOkZ}zw<2)2xBx{wNPX45^hVZz!{Qpd%b/Cxj>^@s7#+&qE%GPz/dQRwPhi?BAoFImHxS9pek.Hx>z6?vruj4zxYS01y$}.wFbhxq:+5owF+B(a{[M}wPq<7B953frzDqcBzku3v{%E[z/eD:ADL&lBqL2=g71[0peD7OxIJF/x>z6?vruj4zD7T<xj>^@5/1zwph+k*w[+:-BzkVhrb#X=xjV8<.#Qh*rzDIczdMpRBy/GovqFXSBzku3v{%E[z/eJ{x>I6&AUo9!pek.Hx>z6?vruj4zD7T<xj>^@a@yT}BzkP6nP5SYA=$(c5^z(+BZ/e#7Y=yf3lBqfx>I6&A-V%%xJeX.wL3=YwPz%5y/j?-wNPX45d/-}3jI2<zdNB0By/GovqDLXwn=Q1y?jH}3i$P.AaJE1A$OQ+z/oCoaUdUPx>I6&A-V%%xJeX.wL3=YwPz%5y=VPFAaJE1B2<U>0TYVxpek.Hx>z6?vruj4zBntWBy/uia}$v&B9g@lx([f55^AA0A+PA77Y+*13j*@YB-7Y5nO})GwLMVJwFbh*BAh8kxbyT[5EFXJvpT1Z5^An-ygQ)%7Y+*23j}q)A+eV&nN#yIBzku3wPwy/B98CpzF6^!a}Ud=Bzk&kwFbh*BAh8kxbyT[9TS6(z/]@d5!!nuph+k*w[+:-BzkVhq/u!@weCs>777BTBAy@3xL?r#BAn5#vrcx%C]cMa5deLHz!aba26j)bx(mM20u@M(5[tu(wOk}4C$zKTzGGP8x>qq$26j)bx(mM20u@u/2Z7i1A.gdXzXry/x>8m0z/f07C]cL?dHD[<pek.Hx>z6?vruj4zD7T<xj>^@a}Ud!A+fi3vruM61y=p/y-0g53pX@RzE^f$x(v>",  strlen("8384777600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003rNSJrzDqcBzku3v{%E[z/eD:B8V5nB7DKr3jH/<Bzku3v{%E[z/cf$rzDqcBzku3v{%E[z/cx)a@*}3vpKy[z/ecSwO#Q7w[+*%5^AA0A+PA77Y:#t0TYVxpek.Hx>z6?vruj4zC>4=B.bSoa%Ev0v@DmbwO#P56&!17z//Y9x>7N[x(v(Rz/fVdzGDY@a%Ev0BAh8dxjV8@6&!17z//Y9x>7N[x(v(*A+Pf0wPwQ*a@gH)x>g^)Bzku3wPwy/B98CpzF6^!go7uZbxvvnB.bSos7#+&nN#yIBzku3wPydRzGGDcBx0o{xj>^@5d/-]3jpGTwO#Q7w[+*%5^AA0A+PA78xYv(v@DmbwO#P56&!17z//Y9x>7N[x(v(Rz/fVdzGD^t3i$V[x>I6&AUo9!pek.Hx>z6?vruj4zD7T<xj>^@a$1)YwPq<7B97F$BzalRwO#Q7w[+*%i+98CBy/uii=]yRxj>^@iTRwU3li5vo)7L^vR/QJz//Y9x>7N[x(v(Rz/fVdzGDHarzDqcBzku3v{%E[z/d{XzGGDcBrRt82Y>b$Bzk&kwFbh*BAh8kxcFi24@tV%zEWuKzdd6*pgn0J5^AA0A+PA7a}C1:vQS!WwFbh=vRPE:BrRRg5oIPawNPavwmYU2x>z6<AUnN$BAh8kxcE&[1:1E2y?jj-B98CpzF7dk3i+G?B-7.56id!5z//Y9x>7N[x(v(/z/]@da}$v(vruQ1v}YZ<zGG}j1Z#B(vr<4b3iT*Rwo!^(B98CpzF7dk3kc&SBy/96A^pk!wO#Q7w[+*%5^AA0A+PA7a@gH>B-RbmnP5cU5^&e-v@#B6zEENh3HE<39At<4vqGH)wmoHNz//Y9x>7N[x(v(*A+Pf0wPwy#rzDqcBzku3v{%E[z/eJ{x>I6&AV#+o4Rf0&wKyxMAbPS9zGG}j5kDd(vru6Fz/6DizE)ZcA#j{kJSxFnBAh8dxjV9+x([2Rvru6Pvru0)x(mMJz/6DizE)ZcB5DN*wNPX45d/:73jZPPBy!%2ze:AhwO#Qh5!E/pl$7gGlVl*Xz/fc7BAnuh3i$P.AaJE1A$OQ+z/oCod>tZZx>I6&A-V%%xHDoJwLDPPv}YN]xg3POAbPS9zGG}XA+fi3vruMK3s<FSrzDqcBzku3v{%E[z/eG(B-7.B9%@A!wObv[y&&P]B-7.35f.MlwmYvYB.(d#z/]@dgaS+tB8MhswklMIwN(t-8v^8SzEEx[5^AA0A+PA7a}b#yz/]@dpgn0Jwi75[3lJnyraQq@nP5G&Bwu:@x>z6?vruj4zC>4!AbPSnwFb+Upek.Hx>z6?vruj4zC>4!AbPSnwG?/}2Z7i1A-uQ{Bp[!0BAh8kxbyTRR2Z]zrzDkav{%E[z/er*Bzku3v{%E[z/eJ{x>I6&AUo9!pek.Hx>z6?vruj4zD7T<xj>^@a}$v*A+e($z/cf[lRHx?xk8p47Y=x[3k4x2x>I6&A-V%%xI@zOx(v(25e(e*26ao/x(v(42T.o-wOkZ}zw<2)2xBx{wNPX45^hVZz!{Qpd%b/Cxj>^@s7#+&qE%GPz/dQRwPhi?BAoFImHxS9pek.Hx>z6?vruj4zxYS01y$}.wFbhxq:+5owF+B(a{[M}wPq<7B953frzDqcBzku3v{%E[z/eD:ADL&lBqL2=g71[0peD7OxIJF/x>z6?vruj4zD7T<xj>^@5/1zwph+k*w[+:-BzkVhrb#X=xjV8<.#Qh*rzDIczdMpRBy/GovqFXSBzku3v{%E[z/eJ{x>I6&AUo9!pek.Hx>z6?vruj4zD7T<xj>^@a@yT}BzkP6nP5SYA=$(c5^z(+BZ/e#7Y=yf3lBqfx>I6&A-V%%xJeX.wL3=YwPz%5y/j?-wNPX45d/-}3jI2<zdNB0By/GovqDLXwn=Q1y?jH}3i$P.AaJE1A$OQ+z/oCoaUdUPx>I6&A-V%%xJeX.wL3=YwPz%5y=VPFAaJE1B2<U>0TYVxpek.Hx>z6?vruj4zBntWBy/uia}$v&B9g@lx([f55^AA0A+PA77Y+*13j*@YB-7Y5nO})GwLMVJwFbh*BAh8kxbyT[5EFXJvpT1Z5^An-ygQ)%7Y+*23j}q)A+eV&nN#yIBzku3wPwy/B98CpzF6^!a}Ud=Bzk&kwFbh*BAh8kxbyT[9TS6(z/]@d5!!nuph+k*w[+:-BzkVhq/u!@weCs>777BTBAy@3xL?r#BAn5#vrcx%C]cMa5deLHz!aba26j)bx(mM20u@M(5[tu(wOk}4C$zKTzGGP8x>qq$26j)bx(mM20u@u/2Z7i1A.gdXzXry/x>8m0z/f07C]cL?dHD[<pek.Hx>z6?vruj4zD7T<xj>^@a}Ud!A+fi3vruM61y=p/y-0g53pX@RzE^f$x(v>"),  0);
  *(*(*(a1 + 32) + 8) + 24) = [TMLContext loadClasses:v2];
}

void sub_26F1D7AEC(uint64_t a1)
{
  v2 = a83847776000000_15;
  for (i = 1; ; i = 0)
  {
    v4 = i;
    v5 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v2 length:strlen(v2) freeWhenDone:0];
    if (![TMLContext loadClasses:?])
    {
      break;
    }

    v2 = a83847776000000_16;
    if ((v4 & 1) == 0)
    {
      return;
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
}

id sub_26F1D7F74(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc(MEMORY[0x277CBEA90]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 initWithBase64EncodedString:v2 options:0];
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] string];
    v4 = [v3 initWithBase64EncodedString:v5 options:0];
  }

  return v4;
}

id sub_26F1D8024(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 base64EncodedStringWithOptions:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_26F1D8098(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v4 encoding:a3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_26F1D8118(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 dataUsingEncoding:a3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_26F1D8190(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v2, "length")}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_26F1D8220(double a1, uint64_t a2, void *a3)
{
  v9 = a3;
  if ([v9 isObject])
  {
    v4 = [TMLBlock blockWithFunction:v9];
    v5 = dispatch_time(0, (a1 * 1000000000.0));
    dispatch_after(v5, MEMORY[0x277D85CD0], v4);
  }

  else
  {
    v6 = MEMORY[0x277CD4658];
    v4 = [MEMORY[0x277CD4640] currentContext];
    v7 = [v6 valueWithNewErrorFromMessage:@"Callback is not a function" inContext:v4];
    v8 = [MEMORY[0x277CD4640] currentContext];
    [v8 setException:v7];
  }
}

uint64_t sub_26F1D8334(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v3 = [v2 intValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

float sub_26F1D83AC(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), v3 = 0.0, (objc_opt_isKindOfClass()))
  {
    [v2 floatValue];
    v3 = v4;
  }

  return v3;
}

double sub_26F1D8428(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), v3 = 0.0, (objc_opt_isKindOfClass()))
  {
    [v2 doubleValue];
    v3 = v4;
  }

  return v3;
}

uint64_t sub_26F1D84A4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_26F1D851C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v2 stringValue];
    }

    else
    {
      [MEMORY[0x277CCACA8] string];
    }
    v3 = ;
  }

  v4 = v3;

  return v4;
}

void *sub_26F1D85B8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

void *sub_26F1D8610(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

id sub_26F1D8670(uint64_t a1, uint64_t a2, int a3)
{
  v4 = [TMLJSNil unwrap:a2];
  if (([v4 conformsToProtocol:&unk_287F59900] & 1) == 0)
  {
    v6 = MEMORY[0x277CD4658];
    v7 = [MEMORY[0x277CD4640] currentContext];
    v8 = [v6 valueWithNewErrorFromMessage:@"Object cannot be cloned" inContext:v7];
    v9 = [MEMORY[0x277CD4640] currentContext];
    [v9 setException:v8];

    v10 = 0;
    goto LABEL_10;
  }

  if (!a3)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:v4 copyItems:1];
      goto LABEL_9;
    }

LABEL_8:
    v5 = [v4 copyWithZone:0];
    goto LABEL_9;
  }

  v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v4 copyItems:1];
LABEL_9:
  v10 = v5;
LABEL_10:

  return v10;
}

void sub_26F1D87B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = [TMLJSNil unwrap:a2];
  v5 = [TMLJSNil unwrap:v4];

  if (!v5 || [(__CFString *)v5 isEqualToString:@"undefined"])
  {

    v5 = @"_";
  }
}

void sub_26F1D8860(uint64_t a1, uint64_t a2)
{
  v2 = [TMLJSNil unwrap:a2];
}

id sub_26F1D88A8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[TMLContext currentContext];
  v4 = [v3 objectWithIdentifierNoCreate:v2];

  return v4;
}

id sub_26F1D8918(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v5;
  v7 = 0;
  if (v4 && v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 objectWithIdentifier:v4];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

id sub_26F1D89B0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v5;
  v7 = 0;
  if (v4 && v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 objectWithIdentifierNoCreate:v4];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

BOOL sub_26F1D8A48(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [TMLJSNil unwrap:a3];
  if (v5)
  {
    v6 = [v4 tmlSignalHandlerForSignal:v5];
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_26F1D8AC4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [TMLJSNil unwrap:a3];
  if (v8)
  {
    v9 = [v6 tmlSignalHandlerForSignal:v8];

    if (v9)
    {
      v11 = 0;
      [v6 emitTMLSignal:v8 withArguments:v7 returnValue:&v11];
      v9 = v11;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id sub_26F1D8B8C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [TMLRuntime ensureClass:v2];
  v4 = [v3 objcClass];

  return v4;
}

uint64_t sub_26F1D8CA8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [TMLRuntime ensureClass:v5];
  [v6 objcClass];
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

BOOL sub_26F1D8DD4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [TMLJSNil isNil:v4];
  v7 = 1;
  if (v4 && !v6)
  {
    v8 = [MEMORY[0x277CBEB68] null];
    v7 = v8 == v4;
  }

  v9 = [TMLJSNil isNil:v5];
  v12 = 0;
  if (v5 && !v9)
  {
    v10 = [MEMORY[0x277CBEB68] null];

    v11 = v10 == v5 || v7;
    if ((v11 & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && (v4 == v5 || ([v4 isEqualToDictionary:v5]))
        {
          v12 = 1;
        }
      }
    }
  }

  return v12;
}

void sub_26F1DA97C(uint64_t a1)
{
  v3 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:a83847776000000_17 length:strlen(a83847776000000_17) freeWhenDone:0];
  *(*(*(a1 + 32) + 8) + 24) = [TMLContext loadClasses:?];
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@IndexPath", @"UI", @"Mutable"];
    [NSClassFromString(v2) tmlMakeJSObjectClass];
  }
}

void sub_26F1DAF1C(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v10 = [a2 description];
  v5 = [v4 description];

  v6 = objc_alloc(MEMORY[0x277D75118]);
  v7 = [v10 description];
  v8 = [v5 description];
  v9 = [v6 initWithTitle:v7 message:v8 delegate:0 cancelButtonTitle:@"OK" otherButtonTitles:0];

  [v9 show];
}

double sub_26F1DAFF8()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 systemVersion];
  [v1 doubleValue];
  v3 = v2;

  return v3;
}

id sub_26F1DB050(double a1, uint64_t a2, uint64_t a3)
{
  v5 = [TMLJSNil unwrap:?];
  v6 = [objc_alloc(MEMORY[0x277D742E0]) initWithTextAlignment:a3 location:v5 options:a1];

  return v6;
}

id sub_26F1DB100(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v28 = a3;
  v7 = a2;
  v8 = a4;
  v9 = [TMLJSNil unwrap:a5];
  if (!v9)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v11 = v7;
    if (isKindOfClass)
    {
      v11 = [v7 componentsJoinedByString:@"-"];
    }

    v12 = +[TMLJSEnvironment currentContext];
    v13 = v11;
    v14 = v12;
    if (qword_2806D9348 != -1)
    {
      sub_26F20176C();
    }

    v15 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:16];
    v16 = qword_2806D9340;
    v17 = [v13 length];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_26F1E4E34;
    v34[3] = &unk_279DC8C10;
    v35 = v13;
    v36 = v14;
    v18 = v15;
    v37 = v18;
    v19 = v14;
    v20 = v13;
    [v16 enumerateMatchesInString:v20 options:0 range:0 usingBlock:{v17, v34}];
    v21 = v37;
    v9 = v18;

    if (isKindOfClass)
    {
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:64];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_26F1DB4B0;
    v29[3] = &unk_279DC89E8;
    v23 = v22;
    v30 = v23;
    v33 = v28;
    v31 = v8;
    v24 = v9;
    v32 = v24;
    [v7 enumerateObjectsUsingBlock:v29];
    v25 = v32;
    v26 = v23;

    v9 = v24;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:v7 options:v28 metrics:v8 views:v9];
    }

    else
    {
      [MEMORY[0x277CBEA60] array];
    }
    v26 = ;
  }

  return v26;
}

void sub_26F1DB43C(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v3 = +[TMLJSEnvironment currentContext];
    [v3 raiseException:v2];

    [MEMORY[0x277CBEA60] array];
    objc_claimAutoreleasedReturnValue();

    objc_end_catch();
    JUMPOUT(0x26F1DB3F4);
  }

  _Unwind_Resume(exception_object);
}

void sub_26F1DB4B0(void *a1, uint64_t a2)
{
  v2 = a1[4];
  v3 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:a2 options:a1[7] metrics:a1[5] views:a1[6]];
  [v2 addObjectsFromArray:v3];
}

id sub_26F1DB518(double a1, double a2, float a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v16 = a8;
  v17 = [TMLJSNil unwrap:a5];
  v18 = [TMLJSNil unwrap:v16];

  v19 = [MEMORY[0x277CCAAD0] constraintWithItem:v17 attribute:a6 relatedBy:a7 toItem:v18 attribute:a9 multiplier:a1 constant:a2];
  v21 = v19;
  if (a3 > 0.0)
  {
    *&v20 = a3;
    [v19 setPriority:v20];
  }

  return v21;
}

id sub_26F1DB674(float a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a1 > 0.0)
    {
      *&v5 = a1;
      [v4 setPriority:v5];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = sub_26F1DB764;
      v7[3] = &unk_279DC8A48;
      v8 = a1;
      [v4 enumerateObjectsUsingBlock:v7];
    }
  }

  return v4;
}

void sub_26F1DB764(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && *(a1 + 32) > 0.0)
  {
    [v3 setPriority:?];
  }
}

id sub_26F1DB7D8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = UIImagePNGRepresentation(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_26F1DB848(CGFloat a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = UIImageJPEGRepresentation(v4, a1);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL sub_26F1DB918(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = (objc_opt_isKindOfClass() & 1) != 0 && [v2 horizontalSizeClass] != 0;

  return v3;
}

BOOL sub_26F1DB978(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = (objc_opt_isKindOfClass() & 1) != 0 && [v2 verticalSizeClass] != 0;

  return v3;
}

void sub_26F1DB9D8(double a1, double a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v17 = a5;
  v10 = a6;
  if ([v17 isObject])
  {
    v11 = [TMLBlock blockWithFunction:v17];
    if ([v10 isObject])
    {
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"B"];
      v13 = [TMLBlock blockWithFunction:v10 argumentsEncoding:v12];
      v14 = MEMORY[0x27438BB60]();
    }

    else
    {
      v14 = 0;
    }

    [MEMORY[0x277D75D18] animateWithDuration:a4 delay:v11 options:v14 animations:a1 completion:a2];
  }

  else
  {
    v15 = MEMORY[0x277CD4658];
    v11 = [MEMORY[0x277CD4640] currentContext];
    v14 = [v15 valueWithNewErrorFromMessage:@"Animations is not a function" inContext:v11];
    v16 = [MEMORY[0x277CD4640] currentContext];
    [v16 setException:v14];
  }
}

void sub_26F1DBB4C(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v21 = a7;
  v14 = a8;
  if ([v21 isObject])
  {
    v15 = [TMLBlock blockWithFunction:v21];
    if ([v14 isObject])
    {
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"B"];
      v17 = [TMLBlock blockWithFunction:v14 argumentsEncoding:v16];
      v18 = MEMORY[0x27438BB60]();
    }

    else
    {
      v18 = 0;
    }

    [MEMORY[0x277D75D18] animateWithDuration:a6 delay:v15 usingSpringWithDamping:v18 initialSpringVelocity:a1 options:a2 animations:a3 completion:a4];
  }

  else
  {
    v19 = MEMORY[0x277CD4658];
    v15 = [MEMORY[0x277CD4640] currentContext];
    v18 = [v19 valueWithNewErrorFromMessage:@"Animations is not a function" inContext:v15];
    v20 = [MEMORY[0x277CD4640] currentContext];
    [v20 setException:v18];
  }
}

void sub_26F1DBCD8(double a1, double a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v17 = a5;
  v10 = a6;
  if ([v17 isObject])
  {
    v11 = [TMLBlock blockWithFunction:v17];
    if ([v10 isObject])
    {
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"B"];
      v13 = [TMLBlock blockWithFunction:v10 argumentsEncoding:v12];
      v14 = MEMORY[0x27438BB60]();
    }

    else
    {
      v14 = 0;
    }

    [MEMORY[0x277D75D18] animateKeyframesWithDuration:a4 delay:v11 options:v14 animations:a1 completion:a2];
  }

  else
  {
    v15 = MEMORY[0x277CD4658];
    v11 = [MEMORY[0x277CD4640] currentContext];
    v14 = [v15 valueWithNewErrorFromMessage:@"Animations is not a function" inContext:v11];
    v16 = [MEMORY[0x277CD4640] currentContext];
    [v16 setException:v14];
  }
}

void sub_26F1DBE4C(double a1, double a2, uint64_t a3, void *a4)
{
  v10 = a4;
  if ([v10 isObject])
  {
    v6 = [TMLBlock blockWithFunction:v10];
    [MEMORY[0x277D75D18] addKeyframeWithRelativeStartTime:v6 relativeDuration:a1 animations:a2];
  }

  else
  {
    v7 = MEMORY[0x277CD4658];
    v6 = [MEMORY[0x277CD4640] currentContext];
    v8 = [v7 valueWithNewErrorFromMessage:@"Animations is not a function" inContext:v6];
    v9 = [MEMORY[0x277CD4640] currentContext];
    [v9 setException:v8];
  }
}

void sub_26F1DBF3C(double a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v18 = a3;
  v10 = a5;
  v11 = a6;
  if ([v10 isObject])
  {
    v12 = [TMLBlock blockWithFunction:v10];
    if ([v11 isObject])
    {
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"B"];
      v14 = [TMLBlock blockWithFunction:v11 argumentsEncoding:v13];
      v15 = MEMORY[0x27438BB60]();
    }

    else
    {
      v15 = 0;
    }

    [MEMORY[0x277D75D18] transitionWithView:v18 duration:a4 options:v12 animations:v15 completion:a1];
  }

  else
  {
    v16 = MEMORY[0x277CD4658];
    v12 = [MEMORY[0x277CD4640] currentContext];
    v15 = [v16 valueWithNewErrorFromMessage:@"Animations is not a function" inContext:v12];
    v17 = [MEMORY[0x277CD4640] currentContext];
    [v17 setException:v15];
  }
}

void sub_26F1DC0C4(double a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v10 = a6;
  v11 = a4;
  v16 = [TMLJSNil unwrap:a3];
  v12 = [TMLJSNil unwrap:v11];

  if ([v10 isObject])
  {
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"B"];
    v14 = [TMLBlock blockWithFunction:v10 argumentsEncoding:v13];
    v15 = MEMORY[0x27438BB60]();
  }

  else
  {
    v15 = 0;
  }

  [MEMORY[0x277D75D18] transitionFromView:v16 toView:v12 duration:a5 options:v15 completion:a1];
}

void sub_26F1DC1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v10 = a5;
  v11 = a6;
  v18 = [TMLJSNil unwrap:a3];
  if ([v10 isObject])
  {
    v12 = [TMLBlock blockWithFunction:v10];
    if ([v11 isObject])
    {
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"B"];
      v14 = [TMLBlock blockWithFunction:v11 argumentsEncoding:v13];
      v15 = MEMORY[0x27438BB60]();
    }

    else
    {
      v15 = 0;
    }

    [MEMORY[0x277D75D18] performSystemAnimation:a2 onViews:v18 options:a4 animations:v12 completion:v15];
  }

  else
  {
    v16 = MEMORY[0x277CD4658];
    v12 = [MEMORY[0x277CD4640] currentContext];
    v15 = [v16 valueWithNewErrorFromMessage:@"Animations is not a function" inContext:v12];
    v17 = [MEMORY[0x277CD4640] currentContext];
    [v17 setException:v15];
  }
}

void sub_26F1DC38C(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 isObject])
  {
    v2 = [TMLBlock blockWithFunction:v6];
    [MEMORY[0x277D75D18] performWithoutAnimation:v2];
  }

  else
  {
    v3 = MEMORY[0x277CD4658];
    v2 = [MEMORY[0x277CD4640] currentContext];
    v4 = [v3 valueWithNewErrorFromMessage:@"Animations is not a function" inContext:v2];
    v5 = [MEMORY[0x277CD4640] currentContext];
    [v5 setException:v4];
  }
}

void sub_26F1DC4A8(uint64_t a1, UIAccessibilityNotifications a2)
{
  argument = [TMLJSNil unwrap:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [argument attributedString];
    UIAccessibilityPostNotification(a2, v3);
  }

  else
  {
    UIAccessibilityPostNotification(a2, argument);
  }
}

id sub_26F1DC54C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = UIAccessibilityFocusedElement(v3);

  return v4;
}

id sub_26F1DC5B8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if ([v7 isObject])
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"@"];
    v9 = [TMLBlock blockWithFunction:v7 argumentsEncoding:v8];
    v10 = MEMORY[0x27438BB60]();
  }

  else
  {
    v10 = 0;
  }

  v11 = [MEMORY[0x277D750F8] actionWithTitle:v6 style:a3 handler:v10];

  return v11;
}

uint64_t sub_26F1E4DE4()
{
  v0 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"\\[(\\w+)[^\\]]*\\]" options:0 error:0];
  v1 = qword_2806D9340;
  qword_2806D9340 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_26F1E4E34(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 rangeAtIndex:1];
  v7 = [v3 substringWithRange:{v4, v5}];
  v6 = [*(a1 + 40) objectWithIdentifier:v7];
  [*(a1 + 48) setObject:v6 forKey:v7];
}

void sub_26F1E4EC0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  [v3 setObject:&unk_287F2DB60 forKeyedSubscript:@"image"];
  v4 = [v3 objectForKeyedSubscript:@"image"];
  [v4 setObject:&unk_287F2DB80 forKeyedSubscript:@"systemImageNamed"];

  v5 = [v3 objectForKeyedSubscript:@"image"];

  [v5 setObject:&unk_287F2DBA0 forKeyedSubscript:@"withdata"];
}

id sub_26F1E4F8C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x277D755B8] systemImageNamed:v2];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277D755B8] imageNamed:v2];
  }

  v6 = v5;

  return v6;
}

id sub_26F1E500C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [objc_alloc(MEMORY[0x277D755B8]) initWithData:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_26F1E5084(void *a1)
{
  v1 = a1;

  return [v1 CGImage];
}

id sub_26F1E50B8(void *a1)
{
  [a1 size];
  if (v2 <= 4.0)
  {
    v4 = v2 * 64.0;
  }

  else
  {
    v4 = v2;
  }

  if (v3 <= 4.0)
  {
    v5 = v3 * 64.0;
  }

  else
  {
    v5 = v3;
  }

  v6 = a1;
  [v6 size];
  if (v4 != v8 || v5 != v7)
  {
    v14.width = v4;
    v14.height = v5;
    UIGraphicsBeginImageContextWithOptions(v14, 0, 0.0);
    [v6 drawAsPatternInRect:{0.0, 0.0, v4, v5}];
    v10 = UIGraphicsGetImageFromCurrentImageContext();

    UIGraphicsEndImageContext();
    v6 = v10;
  }

  v11 = [MEMORY[0x277D75348] colorWithPatternImage:v6];

  return v11;
}

uint64_t sub_26F1E5194(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 UIEdgeInsets];

  return MEMORY[0x2821F9670](a1, sel_resizableImageWithCapInsets_resizingMode_);
}

id sub_26F1E51D8(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = [a1 CGImage];
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  v10 = CGImageCreateWithImageInRect(v9, v14);
  v11 = [MEMORY[0x277D755B8] imageWithCGImage:v10];
  CGImageRelease(v10);

  return v11;
}

TMLRect *sub_26F1E5268(void *a1)
{
  [a1 size];
  v3 = [[TMLRect alloc] initWithRect:0.0, 0.0, v1, v2];

  return v3;
}

double sub_26F1E52C0(void *a1)
{
  [a1 size];
  result = v1 / v2;
  if (v2 <= 0.0)
  {
    return 1.0;
  }

  return result;
}

void sub_26F1E5C78(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v8 = v7;
  if (v7 && ([v7 isEqual:v9] & 1) == 0 && (objc_msgSend(v8, "canMergeFromPropertyDescriptor:", v9) & 1) == 0)
  {
    *a4 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void sub_26F1E5D1C(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v8 = v7;
  if (v7 && ([v7 isEqual:v9] & 1) == 0)
  {
    *a4 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void sub_26F1E5DB0(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v8 = v7;
  if (v7 && ([v7 isEqual:v9] & 1) == 0)
  {
    *a4 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void sub_26F1E60D0(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKey:v9];
  v8 = [v7 isEqual:v6];

  if (v8)
  {
    [*(a1 + 32) removeObjectForKey:v9];
  }
}

void sub_26F1E6448(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = malloc_type_malloc(0x30uLL, 0x10700407919B52CuLL);
  *(*(*(a1 + 32) + 56) + 8 * a3) = v5;
  [v6 encode:v5];
}

void sub_26F1E64C0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = malloc_type_malloc(0x48uLL, 0x10F004036FA40C8uLL);
  *(*(*(a1 + 32) + 72) + 8 * a3) = v5;
  [v6 encode:v5];
}

void sub_26F1E6538(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = malloc_type_malloc(0x80uLL, 0x10F0040B03B4CD9uLL);
  *(*(*(a1 + 32) + 104) + 8 * a3) = v5;
  [v6 encode:v5];
}

void sub_26F1E65B0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = malloc_type_malloc(0x48uLL, 0x10F004036FA40C8uLL);
  *(*(*(a1 + 32) + 88) + 8 * a3) = v5;
  [v6 encode:v5];
}

void sub_26F1E6990(objc_class *a1)
{
  InstanceMethod = class_getInstanceMethod(a1, sel_loadView);
  v3 = class_getInstanceMethod(a1, sel_tmlLoadViewOverride);
  method_exchangeImplementations(InstanceMethod, v3);
  v4 = class_getInstanceMethod(a1, sel_viewDidLoad);
  v5 = class_getInstanceMethod(a1, sel_tmlViewDidLoad);
  method_exchangeImplementations(v4, v5);
  v6 = class_getInstanceMethod(a1, sel_viewWillAppear_);
  v7 = class_getInstanceMethod(a1, sel_tmlViewWillAppear_);
  method_exchangeImplementations(v6, v7);
  v8 = class_getInstanceMethod(a1, sel_viewDidAppear_);
  v9 = class_getInstanceMethod(a1, sel_tmlViewDidAppear_);
  method_exchangeImplementations(v8, v9);
  v10 = class_getInstanceMethod(a1, sel_viewWillDisappear_);
  v11 = class_getInstanceMethod(a1, sel_tmlViewWillDisappear_);
  method_exchangeImplementations(v10, v11);
  v12 = class_getInstanceMethod(a1, sel_viewDidDisappear_);
  v13 = class_getInstanceMethod(a1, sel_tmlViewDidDisappear_);
  method_exchangeImplementations(v12, v13);
  v14 = class_getInstanceMethod(a1, sel_viewWillLayoutSubviews);
  v15 = class_getInstanceMethod(a1, sel_tmlViewWillLayoutSubviews);
  method_exchangeImplementations(v14, v15);
  v16 = class_getInstanceMethod(a1, sel_viewDidLayoutSubviews);
  v17 = class_getInstanceMethod(a1, sel_tmlViewDidLayoutSubviews);
  method_exchangeImplementations(v16, v17);
  v18 = class_getInstanceMethod(a1, sel_willMoveToParentViewController_);
  v19 = class_getInstanceMethod(a1, sel_tmlWillMoveToParentViewController_);
  method_exchangeImplementations(v18, v19);
  v20 = class_getInstanceMethod(a1, sel_updateViewConstraints);
  v21 = class_getInstanceMethod(a1, sel_tmlUpdateViewConstraints);
  method_exchangeImplementations(v20, v21);
  v22 = class_getInstanceMethod(a1, sel_encodeRestorableStateWithCoder_);
  v23 = class_getInstanceMethod(a1, sel_tmlEncodeRestorableStateWithCoder_);
  method_exchangeImplementations(v22, v23);
  v24 = class_getInstanceMethod(a1, sel_decodeRestorableStateWithCoder_);
  v25 = class_getInstanceMethod(a1, sel_tmlDecodeRestorableStateWithCoder_);
  method_exchangeImplementations(v24, v25);
  v26 = class_getInstanceMethod(a1, sel_viewWillTransitionToSize_withTransitionCoordinator_);
  v27 = class_getInstanceMethod(a1, sel_tmlViewWillTransitionToSize_withTransitionCoordinator_);
  method_exchangeImplementations(v26, v27);
  v28 = class_getInstanceMethod(a1, sel_willTransitionToTraitCollection_withTransitionCoordinator_);
  v29 = class_getInstanceMethod(a1, sel_tmlWillTransitionToTraitCollection_withTransitionCoordinator_);
  method_exchangeImplementations(v28, v29);
  v30 = class_getInstanceMethod(a1, sel_previewActionItems);
  v31 = class_getInstanceMethod(a1, sel_tmlPreviewActionItems);
  method_exchangeImplementations(v30, v31);
  v32 = class_getInstanceMethod(a1, sel_traitCollectionDidChange_);
  v33 = class_getInstanceMethod(a1, sel_tmlTraitCollectionDidChange_);
  method_exchangeImplementations(v32, v33);
  v34 = class_getInstanceMethod(a1, sel_accessibilityPerformEscape);
  v35 = class_getInstanceMethod(a1, sel_tmlAccessibilityPerformEscape);
  method_exchangeImplementations(v34, v35);
  v36 = class_getInstanceMethod(a1, sel_accessibilityPerformMagicTap);
  v37 = class_getInstanceMethod(a1, sel_tmlAccessibilityPerformMagicTap);
  method_exchangeImplementations(v36, v37);
  v38 = class_getInstanceMethod(a1, sel_preferredStatusBarStyle);
  v39 = class_getInstanceMethod(a1, sel_tmlPreferredStatusBarStyle);
  method_exchangeImplementations(v38, v39);
  v40 = class_getInstanceMethod(a1, sel_prefersStatusBarHidden);
  v41 = class_getInstanceMethod(a1, sel_tmlPrefersStatusBarHidden);
  method_exchangeImplementations(v40, v41);
  v42 = class_getInstanceMethod(a1, sel_preferredStatusBarUpdateAnimation);
  v43 = class_getInstanceMethod(a1, sel_tmlPreferredStatusBarUpdateAnimation);
  method_exchangeImplementations(v42, v43);
  v44 = class_getInstanceMethod(a1, sel_childViewControllerForStatusBarStyle);
  v45 = class_getInstanceMethod(a1, sel_tmlChildViewControllerForStatusBarStyle);
  method_exchangeImplementations(v44, v45);
  v46 = class_getInstanceMethod(a1, sel_childViewControllerForStatusBarHidden);
  v47 = class_getInstanceMethod(a1, sel_tmlChildViewControllerForStatusBarHidden);
  method_exchangeImplementations(v46, v47);
  v48 = class_getInstanceMethod(a1, sel_shouldAutorotate);
  v49 = class_getInstanceMethod(a1, sel_tmlShouldAutorotate);
  method_exchangeImplementations(v48, v49);
  v50 = class_getInstanceMethod(a1, sel_supportedInterfaceOrientations);
  v51 = class_getInstanceMethod(a1, sel_tmlSupportedInterfaceOrientations);
  method_exchangeImplementations(v50, v51);
  v52 = class_getInstanceMethod(a1, sel_preferredInterfaceOrientationForPresentation);
  v53 = class_getInstanceMethod(a1, sel_tmlPreferredInterfaceOrientationForPresentation);

  method_exchangeImplementations(v52, v53);
}

id sub_26F1E6EA4(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = objc_opt_class();
  v3 = [v1 stringWithUTF8String:class_getName(v2)];
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [v4 pathForResource:v3 ofType:@"tml"];

  return v5;
}

TMLContext *sub_26F1E6F50(void *a1)
{
  v2 = objc_getAssociatedObject(a1, "covpshashpc");
  if (!v2)
  {
    v3 = objc_alloc_init(TMLContext);
    v4 = [a1 tmlObjects];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_26F1E7120;
    v10[3] = &unk_279DC6340;
    v2 = v3;
    v11 = v2;
    [v4 enumerateKeysAndObjectsUsingBlock:v10];

    v5 = [TMLWeakReferenceObject weakReferenceWithObject:a1];
    [(TMLContext *)v2 addObject:v5 withIdentifier:@"owner"];

    objc_setAssociatedObject(a1, "covpshashpc", v2, 1);
    objc_initWeak(&location, v2);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_26F1E712C;
    v7[3] = &unk_279DC6368;
    objc_copyWeak(&v8, &location);
    [TMLObjectFinalizer runBlock:v7 onFinalize:a1];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  return v2;
}

void sub_26F1E7104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26F1E712C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dispose];
}

void sub_26F1E716C(void *a1)
{
  v2 = objc_getAssociatedObject(a1, "covpshashpc");
  [v2 dispose];

  objc_setAssociatedObject(a1, "covpshashpc", 0, 1);
}

uint64_t sub_26F1E71D4(void *a1)
{
  v2 = [a1 isViewLoaded];
  v3 = [a1 tmlViewPath];
  v4 = [a1 tmlLoadViewControllerFromPath:v3];

  if (v4 && v2)
  {
    v5 = [a1 view];
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = *MEMORY[0x277CBF3A0];
    v15 = *(MEMORY[0x277CBF3A0] + 8);
    v16 = *(MEMORY[0x277CBF3A0] + 16);
    v17 = *(MEMORY[0x277CBF3A0] + 24);
    v18 = [a1 view];
    [v18 setBounds:{v14, v15, v16, v17}];

    v19 = [a1 view];
    [v19 setBounds:{v7, v9, v11, v13}];

    v20 = [a1 view];
    [v20 layoutIfNeeded];
  }

  return v4;
}

uint64_t sub_26F1E72F4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [a1 isViewLoaded];
  v6 = [a1 tmlLoadViewControllerWithSource:v4];

  if (v6 && v5)
  {
    v7 = [a1 view];
    [v7 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = *MEMORY[0x277CBF3A0];
    v17 = *(MEMORY[0x277CBF3A0] + 8);
    v18 = *(MEMORY[0x277CBF3A0] + 16);
    v19 = *(MEMORY[0x277CBF3A0] + 24);
    v20 = [a1 view];
    [v20 setBounds:{v16, v17, v18, v19}];

    v21 = [a1 view];
    [v21 setBounds:{v9, v11, v13, v15}];

    v22 = [a1 view];
    [v22 layoutIfNeeded];
  }

  return v6;
}

id sub_26F1E7410(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [a1 _tmlUnloadContext];
  v5 = [a1 _tmlEnsureContext];
  [v5 loadSource:v4];

  v6 = [a1 _tmlEnsureContext];
  v7 = [v6 rootObject];

  return v7;
}

id sub_26F1E749C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [a1 _tmlUnloadContext];
  v5 = [a1 _tmlEnsureContext];
  [v5 loadSourceFromPath:v4];

  v6 = [a1 _tmlEnsureContext];
  v7 = [v6 rootObject];

  return v7;
}

uint64_t sub_26F1E7528(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [a1 _tmlUnloadContext];
  v5 = [a1 _tmlEnsureContext];
  [v5 loadSourceFromPath:v4];

  v6 = [a1 _tmlEnsureContext];
  v7 = [v6 rootObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a1 setView:v7];
  }

  else if (([v7 isEqual:a1] & 1) == 0)
  {
    v9 = MEMORY[0x277CBEAD8];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected to load UIViewController or UIView for %@", v7];
    v11 = [v9 exceptionWithName:@"TMLRuntimeException" reason:v10 userInfo:0];
    [TMLExceptionHandler raiseException:v11];

    v8 = 0;
    goto LABEL_6;
  }

  v8 = 1;
LABEL_6:

  return v8;
}

uint64_t sub_26F1E766C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [a1 _tmlUnloadContext];
  v5 = [a1 _tmlEnsureContext];
  [v5 loadSource:v4];

  v6 = [a1 _tmlEnsureContext];
  v7 = [v6 rootObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a1 setView:v7];
  }

  else if (([v7 isEqual:a1] & 1) == 0)
  {
    v9 = MEMORY[0x277CBEAD8];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected to load UIViewController or UIView for %@", v7];
    v11 = [v9 exceptionWithName:@"TMLRuntimeException" reason:v10 userInfo:0];
    [TMLExceptionHandler raiseException:v11];

    v8 = 0;
    goto LABEL_6;
  }

  v8 = 1;
LABEL_6:

  return v8;
}

void sub_26F1E77B0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if ([v7 isEqualToString:@"view"] && (objc_msgSend(a1, "isViewLoaded") & 1) == 0)
  {
    objc_setAssociatedObject(a1, "vpshashpc", v6, 1);
  }

  else
  {
    v8.receiver = a1;
    v8.super_class = &off_287F81CD8;
    objc_msgSendSuper2(&v8, sel_setTMLValue_forKeyPath_, v6, v7);
  }
}

void sub_26F1E7858(void *a1)
{
  v2 = objc_getAssociatedObject(a1, "vpshashpc");
  if (v2)
  {
    objc_setAssociatedObject(a1, "vpshashpc", 0, 1);
    v3.receiver = a1;
    v3.super_class = &off_287F81CD8;
    objc_msgSendSuper2(&v3, sel_setTMLValue_forKeyPath_, v2, @"view");
  }

  else
  {
    [a1 tmlLoadViewOverride];
  }
}

uint64_t sub_26F1E78E8(void *a1)
{
  [a1 tmlViewDidLoad];

  return [a1 emitTMLSignal:@"viewDidLoad" withArguments:0];
}

void sub_26F1E792C(void *a1, uint64_t a2, uint64_t a3)
{
  v7[1] = *MEMORY[0x277D85DE8];
  [a1 tmlViewWillAppear:?];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  v7[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [a1 emitTMLSignal:@"viewWillAppear" withArguments:v6];
}

void sub_26F1E79E4(void *a1, uint64_t a2, uint64_t a3)
{
  v7[1] = *MEMORY[0x277D85DE8];
  [a1 tmlViewDidAppear:?];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  v7[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [a1 emitTMLSignal:@"viewDidAppear" withArguments:v6];
}

void sub_26F1E7A9C(void *a1, uint64_t a2, uint64_t a3)
{
  v7[1] = *MEMORY[0x277D85DE8];
  [a1 tmlViewWillDisappear:?];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  v7[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [a1 emitTMLSignal:@"viewWillDisappear" withArguments:v6];
}

void sub_26F1E7B54(void *a1, uint64_t a2, uint64_t a3)
{
  v7[1] = *MEMORY[0x277D85DE8];
  [a1 tmlViewDidDisappear:?];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  v7[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [a1 emitTMLSignal:@"viewDidDisappear" withArguments:v6];
}

uint64_t sub_26F1E7C0C(void *a1)
{
  [a1 tmlViewWillLayoutSubviews];

  return [a1 emitTMLSignal:@"viewWillLayoutSubviews" withArguments:0];
}

uint64_t sub_26F1E7C50(void *a1)
{
  [a1 tmlViewDidLayoutSubviews];

  return [a1 emitTMLSignal:@"viewDidLayoutSubviews" withArguments:0];
}

uint64_t sub_26F1E7C94(void *a1)
{
  [a1 tmlUpdateViewConstraints];

  return [a1 emitTMLSignal:@"updateViewConstraints" withArguments:0];
}

void sub_26F1E7CD8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [a1 tmlEncodeRestorableStateWithCoder:v4];
  v7 = 0;
  v5 = [a1 emitTMLSignal:@"saveRestorableState" withArguments:0 returnValue:&v7];
  v6 = v7;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 encodeObject:v6 forKey:@"TML.RestorableState"];
    }
  }
}

void sub_26F1E7D84(void *a1, uint64_t a2, void *a3)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  [a1 tmlDecodeRestorableStateWithCoder:v4];
  v5 = [v4 decodeObjectForKey:@"TML.RestorableState"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    [a1 emitTMLSignal:@"loadRestorableState" withArguments:v6];
  }
}

void sub_26F1E7E68(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v8 = a5;
  [a1 tmlViewWillTransitionToSize:v8 withTransitionCoordinator:{a2, a3}];
  objc_initWeak(&location, a1);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_26F1E7FC0;
  v11[3] = &unk_279DC8D68;
  objc_copyWeak(v12, &location);
  v12[1] = *&a2;
  v12[2] = *&a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_26F1E8080;
  v9[3] = &unk_279DC8D68;
  objc_copyWeak(v10, &location);
  v10[1] = *&a2;
  v10[2] = *&a3;
  [v8 animateAlongsideTransition:v11 completion:v9];
  objc_destroyWeak(v10);
  objc_destroyWeak(v12);
  objc_destroyWeak(&location);
}

void sub_26F1E7F9C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_26F1E7FC0(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [TMLTypes convertSize:*(a1 + 40), *(a1 + 48)];
  v5[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  [WeakRetained emitTMLSignal:@"viewWillTransitionToSize" withArguments:v4];
}

void sub_26F1E8080(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [TMLTypes convertSize:*(a1 + 40), *(a1 + 48)];
  v5[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  [WeakRetained emitTMLSignal:@"viewDidTransitionToSize" withArguments:v4];
}

void sub_26F1E8140(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [TMLUITraitCollection traitEnvironment:a1 willTransitionToTraitCollection:v6 fromPreviousTraitCollection:0];
  [a1 tmlWillTransitionToTraitCollection:v6 withTransitionCoordinator:v7];
  objc_initWeak(&location, a1);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_26F1E82D8;
  v15[3] = &unk_279DC8D90;
  v9 = v8;
  v16 = v9;
  v17 = a1;
  v10 = v6;
  v18 = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_26F1E837C;
  v12[3] = &unk_279DC8DB8;
  objc_copyWeak(&v14, &location);
  v11 = v10;
  v13 = v11;
  [v7 animateAlongsideTransition:v15 completion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void sub_26F1E82BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_26F1E82D8(uint64_t a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) emitTMLSignal:@"enter" withArguments:0];
  v2 = *(a1 + 40);
  v4[0] = *(a1 + 48);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  [v2 emitTMLSignal:@"willTransitionToTraitCollection" withArguments:v3];
}

void sub_26F1E837C(uint64_t a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4[0] = *(a1 + 32);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  [WeakRetained emitTMLSignal:@"didTransitionToTraitCollection" withArguments:v3];
}

void sub_26F1E841C(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 tmlTraitCollectionDidChange:?];
  if (!a3)
  {
    v5 = [a1 traitCollection];
    v6 = [TMLUITraitCollection traitEnvironment:a1 willTransitionToTraitCollection:v5 fromPreviousTraitCollection:0];

    [v6 emitTMLSignal:@"enter" withArguments:0];
  }
}

void sub_26F1E84CC(void *a1, uint64_t a2, void *a3)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  [a1 tmlWillMoveToParentViewController:a1];
  v5 = v4;
  if (!v4)
  {
    v5 = [MEMORY[0x277CBEB68] null];
  }

  v7[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [a1 emitTMLSignal:@"willMoveToParentViewController" withArguments:v6];

  if (!v4)
  {
  }
}

uint64_t sub_26F1E85B8(void *a1)
{
  v2 = objc_getAssociatedObject(a1, "shashpc");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = [a1 tmlPreferredStatusBarStyle];
  }

  v4 = v3;

  return v4;
}

uint64_t sub_26F1E8628(void *a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  objc_setAssociatedObject(a1, "shashpc", v2, 3);

  return MEMORY[0x2821F9670](a1, sel_setNeedsStatusBarAppearanceUpdate);
}

uint64_t sub_26F1E868C(void *a1)
{
  v2 = objc_getAssociatedObject(a1, "hashpc");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = [a1 tmlPrefersStatusBarHidden];
  }

  v4 = v3;

  return v4;
}

uint64_t sub_26F1E86FC(void *a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(a1, "hashpc", v2, 3);

  return MEMORY[0x2821F9670](a1, sel_setNeedsStatusBarAppearanceUpdate);
}

uint64_t sub_26F1E8760(void *a1)
{
  v2 = objc_getAssociatedObject(a1, "ashpc");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = [a1 tmlPreferredStatusBarUpdateAnimation];
  }

  v4 = v3;

  return v4;
}

uint64_t sub_26F1E87D0(void *a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  objc_setAssociatedObject(a1, "ashpc", v2, 3);

  return MEMORY[0x2821F9670](a1, sel_setNeedsStatusBarAppearanceUpdate);
}

id sub_26F1E8834(void *a1)
{
  v2 = objc_getAssociatedObject(a1, "shpc");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = [a1 tmlChildViewControllerForStatusBarStyle];
  }

  v4 = v3;

  return v4;
}

uint64_t sub_26F1E88B4(void *a1, uint64_t a2, void *a3)
{
  objc_setAssociatedObject(a1, "shpc", a3, 1);

  return MEMORY[0x2821F9670](a1, sel_setNeedsStatusBarAppearanceUpdate);
}

id sub_26F1E88F8(void *a1)
{
  v2 = objc_getAssociatedObject(a1, "hpc");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = [a1 tmlChildViewControllerForStatusBarHidden];
  }

  v4 = v3;

  return v4;
}

uint64_t sub_26F1E8978(void *a1, uint64_t a2, void *a3)
{
  objc_setAssociatedObject(a1, "hpc", a3, 1);

  return MEMORY[0x2821F9670](a1, sel_setNeedsStatusBarAppearanceUpdate);
}

uint64_t sub_26F1E89BC(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v8 = 0;
  v2 = [a1 emitTMLSignal:@"accessibilityPerformEscape" withArguments:0 returnValue:&v8];
  v3 = v8;
  v4 = v3;
  if (v2)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = [a1 tmlAccessibilityPerformEscape];
  }

  v6 = v5;

  return v6;
}

uint64_t sub_26F1E8A60(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v8 = 0;
  v2 = [a1 emitTMLSignal:@"accessibilityPerformMagicTap" withArguments:0 returnValue:&v8];
  v3 = v8;
  v4 = v3;
  if (v2)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = [a1 tmlAccessibilityPerformMagicTap];
  }

  v6 = v5;

  return v6;
}

uint64_t sub_26F1E8B04(void *a1)
{
  v8 = 0;
  v2 = [a1 emitTMLSignal:@"shouldAutorotate" withArguments:0 returnValue:&v8];
  v3 = v8;
  v4 = v3;
  if (v2)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = [a1 tmlShouldAutorotate];
  }

  v6 = v5;

  return v6;
}

uint64_t sub_26F1E8B80(void *a1)
{
  v8 = 0;
  v2 = [a1 emitTMLSignal:@"supportedInterfaceOrientations" withArguments:0 returnValue:&v8];
  v3 = v8;
  v4 = v3;
  if (v2)
  {
    v5 = [v3 unsignedIntegerValue];
  }

  else
  {
    v5 = [a1 tmlSupportedInterfaceOrientations];
  }

  v6 = v5;

  return v6;
}

uint64_t sub_26F1E8BFC(void *a1)
{
  v8 = 0;
  v2 = [a1 emitTMLSignal:@"preferredInterfaceOrientationForPresentation" withArguments:0 returnValue:&v8];
  v3 = v8;
  v4 = v3;
  if (v2)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = [a1 tmlPreferredInterfaceOrientationForPresentation];
  }

  v6 = v5;

  return v6;
}

void sub_26F1E8D88(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:"8384777600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003Hv^27c$$$y*?Q2A-M length:? freeWhenDone:?]=Cscp^BAhqoy?mS15lhq5x>qGQz/fVqz!%l3AV#b625[x!D1z1e2TIG/y*?Q2AV#?q9:@(3z*cn0x>8mcA+d*Wp?:AYB-I4&y*?P#vpK6=1y=p/y:6]c5[t&$By/uipJ*q&y*?P&x>qG3231k}x>qG90u@J>6)15bCxlO%vr(r<v@1CIzGG]qy&Zi(vScg3a}+j*wmYN*xjk)[5^An-ygQ)%a@HZ#A+eV&C$8Z)l${ZYy*?P41y=p/y-0f%777E[x>g^[m@&3Yx([Rk26j)bx(mL<VipNPk#{/@v@#<lwL3=ox>8mcA+dQRzGG]qy&0W6a%470Abn%dwPyEMD1z1e4ma2>y*?Q2A.G[!wPwQ*a}+j*wmYN*xjk)[5^An-ygQ)%a%EvhAa@*7B-I4+zCU4SBAIRnp&yz@x<$)&5^hVZz!{l>a%NBjAa@*7B-I4+zCU4SBAIRnq*0e2wO#3&wd/2Oz/oCe0u@S[7i0$$BAIRnnP4vsv@#<lwKf*Fx)a521y=p/y-0gdfBwLoByxiip?:AYB-I4+zCU4SBAIRn5ci%&B97&hBwMWYBAIRnnP4vsv@#<lwIL>B6MXwmA8pmUBAIRnnP4vsv@#<lwE[>^6MXwmA8pmUBAIRnnP4vsv@#<lwIQg+3o-uxv@#<lwL3=ox>8mcA+dNWBAzCsq/(C*Bv*sTxjTCGze-{9x<$)&s7#+&rb#zYBvf$.y?m9#x(v(27AaLa4%h&2x((ZXy&0V)BzkVh5!Obnrb#zYBvf$.y?m9#x(v(kkpZX!v@#<lwL3=ox>8mcA+dNWBAzCsq/(C*Bv*sTxjTCGze-{9x<$)&s7#+&rb#zYBvf$.y?m9#x(v(IgnU6VjAb1ABAIRnnP4vsv@#<lwKpJYBz(4}Bz(a&zdd6*lVl*Xvrui)y?lWZBzaS]vqf*Jz!%l3v@#B6zv^Q5bNL67A:-W7lVl^SwN/*@z/cg1ry{egvqf*Jz!%l3v@#B6zx.m{Aa@*7B-I4+zCU4SBAIRnluNx(z/eG}z/wo+vp%dsz/6D4Bzki2wMJO/xJf1Xx((ZXy&0V)BzkVhiX&&98!<v&x>8mcA+d*Wp?:AYB-I4(B-qqrA=+(65cs3}d}%63x>8mcA+d*Wp?:AYB-I4(B-qqrA=+(6bh0bbbTCEcx>8mcA+d*Wp?:AYB-I4Xz/fVqz!%l3AZTFPwOkB[wG(j6gh{@qBAIRnnP4vsv@#<lwKyxNBAhqoy?mS*x(4P:Bz(a{x>8mcA+d*Wp?:AYB-I480ua0a8Goz2BAIRnx(m)7v@#<lwN/T@BAhqoy?mS196)R4x>8mcA+d*Wp?:AYB-I4Xz/fVqz!%l3AWQ#kBQx{zx>8mcA+d*Wp?:AYB-I4Xz/fVqz!%l3A-V%>y/tB:A=+b(v@#<lwL3=ox>8mcA+b^.8AFizAa@*7B-I5czG6r1BAIRnv@DmbA=k=gwPwz6k#{/@v@#<lwL3=ox>8mcA+dQRzGG]qy&0W6c&$Pl3nDHlv@#<lwL3=ox>8mcA+dQRzGG]qy&0W6l${ggBz(a{x>8mcA+d*Wp?:AYB-I480ua0a8Goz2BAIRnx(m)7v@#<lwN/T@BAhqoy?mS196)R4x>8mcA+d*Wp?:AYB-I4Xz/fVqz!%l3AWQ#k/z#sAAa@*7B-I4+zCU4SBAIRnlVl<:A=k=gwPymGx(4u>rbUYSvrcD^x>8mcA+d*Wp?:AYB-I4{x([2SA=M8s5ciXg3l0>$v@#<lwOD43x>8mcA+e:0zGG]qy&0W65/:hrp?:AYB-I4+zCU4SBAIRnlVl<:A=k=gwPwX23i+0YA=k$h2tOh^A=M8sb0{l.v@#<lwL3=ox>8mcA+dQRzGG]qy&0W6i+z/my?mcRz=p:^A=+b(v@#<lwL3=ox>8mcA+er^Bza9-A=k$Vc&$Pm3nMNmv@#<lwL3=ox>8mcA+dQRzGG]qy&0W6l${ggByxiip?:AYB-I4+zCU4SBAIRn5ciXg3l0>$v@#<lwOD43x>8mcA+e:0zGG]qy&0W65/:hrp?:AYB-I4+zCU4SBAIRnlVl<:A=k=gwPxg2dHXQzmSiA!wmoN]z/b",  strlen("8384777600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003Hv^27c$$$y*?Q2A-M)=Cscp^BAhqoy?mS15lhq5x>qGQz/fVqz!%l3AV#b625[x!D1z1e2TIG/y*?Q2AV#?q9:@(3z*cn0x>8mcA+d*Wp?:AYB-I4&y*?P#vpK6=1y=p/y:6]c5[t&$By/uipJ*q&y*?P&x>qG3231k}x>qG90u@J>6)15bCxlO%vr(r<v@1CIzGG]qy&Zi(vScg3a}+j*wmYN*xjk)[5^An-ygQ)%a@HZ#A+eV&C$8Z)l${ZYy*?P41y=p/y-0f%777E[x>g^[m@&3Yx([Rk26j)bx(mL<VipNPk#{/@v@#<lwL3=ox>8mcA+dQRzGG]qy&0W6a%470Abn%dwPyEMD1z1e4ma2>y*?Q2A.G[!wPwQ*a}+j*wmYN*xjk)[5^An-ygQ)%a%EvhAa@*7B-I4+zCU4SBAIRnp&yz@x<$)&5^hVZz!{l>a%NBjAa@*7B-I4+zCU4SBAIRnq*0e2wO#3&wd/2Oz/oCe0u@S[7i0$$BAIRnnP4vsv@#<lwKf*Fx)a521y=p/y-0gdfBwLoByxiip?:AYB-I4+zCU4SBAIRn5ci%&B97&hBwMWYBAIRnnP4vsv@#<lwIL>B6MXwmA8pmUBAIRnnP4vsv@#<lwE[>^6MXwmA8pmUBAIRnnP4vsv@#<lwIQg+3o-uxv@#<lwL3=ox>8mcA+dNWBAzCsq/(C*Bv*sTxjTCGze-{9x<$)&s7#+&rb#zYBvf$.y?m9#x(v(27AaLa4%h&2x((ZXy&0V)BzkVh5!Obnrb#zYBvf$.y?m9#x(v(kkpZX!v@#<lwL3=ox>8mcA+dNWBAzCsq/(C*Bv*sTxjTCGze-{9x<$)&s7#+&rb#zYBvf$.y?m9#x(v(IgnU6VjAb1ABAIRnnP4vsv@#<lwKpJYBz(4}Bz(a&zdd6*lVl*Xvrui)y?lWZBzaS]vqf*Jz!%l3v@#B6zv^Q5bNL67A:-W7lVl^SwN/*@z/cg1ry{egvqf*Jz!%l3v@#B6zx.m{Aa@*7B-I4+zCU4SBAIRnluNx(z/eG}z/wo+vp%dsz/6D4Bzki2wMJO/xJf1Xx((ZXy&0V)BzkVhiX&&98!<v&x>8mcA+d*Wp?:AYB-I4(B-qqrA=+(65cs3}d}%63x>8mcA+d*Wp?:AYB-I4(B-qqrA=+(6bh0bbbTCEcx>8mcA+d*Wp?:AYB-I4Xz/fVqz!%l3AZTFPwOkB[wG(j6gh{@qBAIRnnP4vsv@#<lwKyxNBAhqoy?mS*x(4P:Bz(a{x>8mcA+d*Wp?:AYB-I480ua0a8Goz2BAIRnx(m)7v@#<lwN/T@BAhqoy?mS196)R4x>8mcA+d*Wp?:AYB-I4Xz/fVqz!%l3AWQ#kBQx{zx>8mcA+d*Wp?:AYB-I4Xz/fVqz!%l3A-V%>y/tB:A=+b(v@#<lwL3=ox>8mcA+b^.8AFizAa@*7B-I5czG6r1BAIRnv@DmbA=k=gwPwz6k#{/@v@#<lwL3=ox>8mcA+dQRzGG]qy&0W6c&$Pl3nDHlv@#<lwL3=ox>8mcA+dQRzGG]qy&0W6l${ggBz(a{x>8mcA+d*Wp?:AYB-I480ua0a8Goz2BAIRnx(m)7v@#<lwN/T@BAhqoy?mS196)R4x>8mcA+d*Wp?:AYB-I4Xz/fVqz!%l3AWQ#k/z#sAAa@*7B-I4+zCU4SBAIRnlVl<:A=k=gwPymGx(4u>rbUYSvrcD^x>8mcA+d*Wp?:AYB-I4{x([2SA=M8s5ciXg3l0>$v@#<lwOD43x>8mcA+e:0zGG]qy&0W65/:hrp?:AYB-I4+zCU4SBAIRnlVl<:A=k=gwPwX23i+0YA=k$h2tOh^A=M8sb0{l.v@#<lwL3=ox>8mcA+dQRzGG]qy&0W6i+z/my?mcRz=p:^A=+b(v@#<lwL3=ox>8mcA+er^Bza9-A=k$Vc&$Pm3nMNmv@#<lwL3=ox>8mcA+dQRzGG]qy&0W6l${ggByxiip?:AYB-I4+zCU4SBAIRn5ciXg3l0>$v@#<lwOD43x>8mcA+e:0zGG]qy&0W65/:hrp?:AYB-I4+zCU4SBAIRnlVl<:A=k=gwPxg2dHXQzmSiA!wmoN]z/b"),  0);
  *(*(*(a1 + 32) + 8) + 24) = [TMLContext loadClasses:v2];
}

void sub_26F1E9718(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:v4];
  [v2 addProperty:v4 value:v5];
}

void sub_26F1E98AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_26F1E98C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26F1E98DC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v9 propertyName];
    v8 = [v7 isEqualToString:*(a1 + 32)];

    if (v8)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

void sub_26F1E9AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26F1E9AC0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v9 signalName];
    v8 = [v7 isEqualToString:*(a1 + 32)];

    if (v8)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

void sub_26F1E9F88(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = malloc_type_malloc(0x58uLL, 0x1070040EA06F8A7uLL);
  *(*(*(a1 + 40) + 48) + 8 * a3) = v6;
  sub_26F1BB2F4(v6);
  v6[3] = strdup([v5 UTF8String]);
  v12 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v5];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(v6 + 8) = 1;
    v6[5] = strdup([v12 UTF8String]);
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(v6 + 8) = 5;
      v9 = malloc_type_malloc(0x30uLL, 0x10F004065BF17CFuLL);
      v6[9] = v9;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          *(v6 + 8) = 0;
        }

        goto LABEL_12;
      }

      *(v6 + 8) = 6;
      v9 = malloc_type_malloc(0xA0uLL, 0x10F0040C95C2125uLL);
      v6[10] = v9;
    }

    [v12 encode:v9];
    goto LABEL_12;
  }

  Type = CFNumberGetType(v12);
  if (Type > kCFNumberCGFloatType)
  {
    goto LABEL_19;
  }

  if (((1 << Type) & 0x13060) != 0)
  {
    *(v6 + 8) = 3;
    [v12 floatValue];
    *(v6 + 17) = v8;
    *(v6 + 16) = 1;
    goto LABEL_12;
  }

  if (Type == kCFNumberCharType)
  {
    *(v6 + 8) = 4;
    v10 = [v12 BOOLValue];
    *(v6 + 14) = 1;
    *(v6 + 15) = v10;
  }

  else
  {
LABEL_19:
    *(v6 + 8) = 2;
    v11 = [v12 integerValue];
    *(v6 + 12) = 1;
    *(v6 + 13) = v11;
  }

LABEL_12:
}

void sub_26F1EA1C8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = malloc_type_malloc(0xA0uLL, 0x10F0040C95C2125uLL);
  *(*(*(a1 + 32) + 128) + 8 * a3) = v5;
  [v6 encode:v5];
}

void sub_26F1EA240(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v5;
    v4 = 32;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v3 = v5;
    v4 = 40;
  }

  [*(a1 + v4) addObject:v3];
LABEL_6:
}

void sub_26F1EA2DC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = malloc_type_malloc(0x30uLL, 0x10700407919B52CuLL);
  *(*(*(a1 + 32) + 80) + 8 * a3) = v5;
  [v6 encode:v5];
}

void sub_26F1EA354(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = malloc_type_malloc(0x48uLL, 0x10F004036FA40C8uLL);
  *(*(*(a1 + 32) + 96) + 8 * a3) = v5;
  [v6 encode:v5];
}

void sub_26F1EA3CC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(*(a1 + 32) + 32);
  v6 = a2;
  v9 = [v5 objectForKeyedSubscript:v6];
  v7 = malloc_type_malloc(0x38uLL, 0x107004014DBB691uLL);
  *(*(*(a1 + 40) + 64) + 8 * a3) = v7;
  [v9 encode:v7];
  v8 = [v6 UTF8String];

  v7[6] = strdup(v8);
}

char *sub_26F1EA48C(uint64_t a1, id a2, uint64_t a3)
{
  v6 = a2;
  result = strdup([a2 UTF8String]);
  *(*(*(a1 + 32) + 152) + 8 * a3) = result;
  return result;
}

void sub_26F1EACC0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(*(a1 + 32) + 24);
  v9 = v5;
  v7 = [v5 identifier];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (v8)
  {
    [v8 applyCategory:v9];
    [*(a1 + 40) addIndex:a3];
  }
}

void sub_26F1EAF3C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addProperty:v3];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) addSignal:v3];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(a1 + 32) addMethod:v3];
      }
    }
  }
}

void sub_26F1EB120(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [v14 type];
  v4 = [v3 isEqualToString:@"Class"];

  if (v4)
  {
    v5 = [objc_opt_class() convertObject:v14 toClass:0];
    v6 = [*(a1 + 40) objcClassName];
    v7 = [v6 length];
    v8 = *(a1 + 40);
    if (v7)
    {
      [v8 objcClassName];
    }

    else
    {
      [v8 className];
    }
    v9 = ;

    v10 = MEMORY[0x277CCACA8];
    v11 = [v14 identifier];
    v12 = [v10 stringWithFormat:@"%@_%@", v9, v11];

    v13 = [v5 objcClassName];

    if (!v13)
    {
      [v5 setObjcClassName:v12];
    }

    [*(a1 + 40) addChildClass:v5];
  }
}

void sub_26F1EB3BC(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addSignal:v3];
  }
}

void sub_26F1EB820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_26F1EB838(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26F1EB850(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = [v6 objects];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_26F1EB93C;
  v11[3] = &unk_279DC8E60;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v12 = v8;
  v14 = v9;
  v10 = v6;
  v13 = v10;
  v15 = a4;
  [v7 enumerateObjectsUsingBlock:v11];

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }
}

void sub_26F1EB93C(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  if (v4)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 40));
    **(a1 + 56) = 1;
  }
}

void sub_26F1EBCE8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = malloc_type_malloc(0x80uLL, 0x10F0040B03B4CD9uLL);
  *(*(*(a1 + 32) + 32) + 8 * a3) = v5;
  [v6 encode:v5];
}

void sub_26F1EBD60(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = malloc_type_malloc(0xA0uLL, 0x10F0040C95C2125uLL);
  *(*(*(a1 + 32) + 48) + 8 * a3) = v5;
  [v6 encode:v5];
}

void sub_26F1EBDD8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = malloc_type_malloc(0x28uLL, 0x1070040084410A6uLL);
  *(*(*(a1 + 32) + 64) + 8 * a3) = v5;
  [v6 encode:v5];
}

void sub_26F1EBE50(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = malloc_type_malloc(0x48uLL, 0x10F00406F9DE22FuLL);
  *(*(*(a1 + 32) + 80) + 8 * a3) = v5;
  [v6 encode:v5];
}

char *sub_26F1EBEC8(uint64_t a1, id a2, uint64_t a3)
{
  v6 = a2;
  result = strdup([a2 UTF8String]);
  *(*(*(a1 + 32) + 96) + 8 * a3) = result;
  return result;
}

id sub_26F1EC974(uint64_t a1)
{
  if (qword_2806D9360 != -1)
  {
    sub_26F201780();
  }

  v2 = qword_2806D9358;

  return v2;
}

void sub_26F1EC9B8()
{
  v66[62] = *MEMORY[0x277D85DE8];
  v64 = [MEMORY[0x277CCACA8] stringWithUTF8String:"v"];
  v65[0] = v64;
  v66[0] = &unk_287F2DBE0;
  v63 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "v", "@"];
  v65[1] = v63;
  v66[1] = &unk_287F2DC00;
  v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s", "v", "@", "@"];
  v65[2] = v62;
  v66[2] = &unk_287F2DC20;
  v61 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s%s", "v", "@", "@", "@"];
  v65[3] = v61;
  v66[3] = &unk_287F2DC40;
  v60 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s%s", "v", "@", "@", "@"];
  v59 = [v60 stringByAppendingString:@"?"];
  v65[4] = v59;
  v66[4] = &unk_287F2DC60;
  v58 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s%s%s", "v", "@", "@", "@", "@"];
  v65[5] = v58;
  v66[5] = &unk_287F2DC80;
  v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "v", "B"];
  v65[6] = v57;
  v66[6] = &unk_287F2DCA0;
  v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s", "v", "@", "B"];
  v65[7] = v56;
  v66[7] = &unk_287F2DCC0;
  v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s%s", "v", "@", "@", "B"];
  v65[8] = v55;
  v66[8] = &unk_287F2DCE0;
  v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s%s", "v", "@", "@", "f"];
  v65[9] = v54;
  v66[9] = &unk_287F2DD00;
  v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s%s", "v", "@", "@", "d"];
  v65[10] = v53;
  v66[10] = &unk_287F2DD20;
  v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s", "v", "@", "q"];
  v65[11] = v52;
  v66[11] = &unk_287F2DD40;
  v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s%s", "v", "@", "@", "q"];
  v65[12] = v51;
  v66[12] = &unk_287F2DD60;
  v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s%s", "v", "@", "q", "q"];
  v65[13] = v50;
  v66[13] = &unk_287F2DD80;
  v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s", "v", "@", "i"];
  v65[14] = v49;
  v66[14] = &unk_287F2DDA0;
  v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%sN%s", "v", "@", "{CGPoint=dd}", "^{CGPoint=dd}"];
  v65[15] = v48;
  v66[15] = &unk_287F2DDC0;
  v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%sN%sN^%s", "v", "@", "^{CGRect={CGPoint=dd}{CGSize=dd}}", "@"];
  v65[16] = v47;
  v66[16] = &unk_287F2DDE0;
  v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s%s", "v", "@", "q", "B"];
  v65[17] = v46;
  v66[17] = &unk_287F2DE00;
  v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s%s", "v", "@", "q", "@"];
  v65[18] = v45;
  v66[18] = &unk_287F2DE20;
  v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s%s%s", "v", "@", "@", "Q", "Q"];
  v65[19] = v44;
  v66[19] = &unk_287F2DE40;
  v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s%s%s", "v", "@", "B", "@", "B"];
  v65[20] = v43;
  v66[20] = &unk_287F2DE60;
  v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s%s%s%s", "v", "@", "@", "@", "@", "@"];
  v65[21] = v42;
  v66[21] = &unk_287F2DE80;
  v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s%s", "{CGSize=dd}", "@", "@", "@"];
  v65[22] = v41;
  v66[22] = &unk_287F2DEA0;
  v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s%s", "v", "@", "{_NSRange=QQ}", "@"];
  v65[23] = v40;
  v66[23] = &unk_287F2DEC0;
  v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"@"];
  v65[24] = v39;
  v66[24] = &unk_287F2DEE0;
  v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"d"];
  v65[25] = v38;
  v66[25] = &unk_287F2DF00;
  v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"q"];
  v65[26] = v37;
  v66[26] = &unk_287F2DF20;
  v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "@", "@"];
  v65[27] = v36;
  v66[27] = &unk_287F2DF40;
  v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s", "@", "@", "@"];
  v65[28] = v35;
  v66[28] = &unk_287F2DF60;
  v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s%s", "@", "@", "@", "@"];
  v65[29] = v34;
  v66[29] = &unk_287F2DF80;
  v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s", "@", "@", "q"];
  v65[30] = v33;
  v66[30] = &unk_287F2DFA0;
  v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s%s", "@", "@", "q", "q"];
  v65[31] = v32;
  v66[31] = &unk_287F2DFC0;
  v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s%s%s", "@", "@", "@", "@", "@"];
  v65[32] = v31;
  v66[32] = &unk_287F2DFE0;
  v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s%s%s", "@", "@", "q", "q", "@"];
  v65[33] = v30;
  v66[33] = &unk_287F2E000;
  v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s%s%s", "@", "@", "q", "@", "@"];
  v65[34] = v29;
  v66[34] = &unk_287F2E020;
  v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s", "v", "q", "q"];
  v65[35] = v28;
  v66[35] = &unk_287F2E040;
  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "q", "@"];
  v65[36] = v27;
  v66[36] = &unk_287F2E060;
  v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "Q", "@"];
  v65[37] = v26;
  v66[37] = &unk_287F2E080;
  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "{CGRect={CGPoint=dd}{CGSize=dd}}", "@"];
  v65[38] = v25;
  v66[38] = &unk_287F2E0A0;
  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s", "q", "@", "q"];
  v65[39] = v24;
  v66[39] = &unk_287F2E0C0;
  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s", "B", "@", "q"];
  v65[40] = v23;
  v66[40] = &unk_287F2E0E0;
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "B", "@"];
  v65[41] = v22;
  v66[41] = &unk_287F2E100;
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "d", "@"];
  v65[42] = v21;
  v66[42] = &unk_287F2E120;
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s", "{CGPoint=dd}", "@", "{CGPoint=dd}"];
  v65[43] = v20;
  v66[43] = &unk_287F2E140;
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s%s", "B", "@", "{_NSRange=QQ}", "@"];
  v65[44] = v19;
  v66[44] = &unk_287F2E160;
  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s%s", "B", "@", "@", "{_NSRange=QQ}"];
  v65[45] = v18;
  v66[45] = &unk_287F2E180;
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s%s", "q", "@", "@", "q"];
  v65[46] = v17;
  v66[46] = &unk_287F2E1A0;
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s%s", "B", "@", "@", "q"];
  v65[47] = v16;
  v66[47] = &unk_287F2E1C0;
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s%s", "B", "@", "@", "q"];
  v65[48] = v15;
  v66[48] = &unk_287F2E1E0;
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s%s", "B", "@", "@", "@"];
  v65[49] = v14;
  v66[49] = &unk_287F2E200;
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s%s", "d", "@", "@", "q"];
  v65[50] = v13;
  v66[50] = &unk_287F2E220;
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s%s", "{UIEdgeInsets=dddd}", "@", "@", "q"];
  v65[51] = v12;
  v66[51] = &unk_287F2E240;
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s", "d", "@", "@"];
  v65[52] = v11;
  v66[52] = &unk_287F2E260;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s", "q", "@", "@"];
  v65[53] = v10;
  v66[53] = &unk_287F2E280;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s", "B", "@", "@"];
  v65[54] = v9;
  v66[54] = &unk_287F2E2A0;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s", "d", "@", "q"];
  v65[55] = v8;
  v66[55] = &unk_287F2E2C0;
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "{CGRect={CGPoint=dd}{CGSize=dd}}", "{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v65[56] = v0;
  v66[56] = &unk_287F2E2E0;
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s", "{CGRect={CGPoint=dd}{CGSize=dd}}", "{CGRect={CGPoint=dd}{CGSize=dd}}", "{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v65[57] = v1;
  v66[57] = &unk_287F2E300;
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s%s", "{CGSize=dd}", "@", "@", "q"];
  v65[58] = v2;
  v66[58] = &unk_287F2E320;
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s%s", "{CGRect={CGPoint=dd}{CGSize=dd}}", "@", "{CGRect={CGPoint=dd}{CGSize=dd}}", "{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v65[59] = v3;
  v66[59] = &unk_287F2E340;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s%s%s", "B", "@", "@", "@", "B"];
  v65[60] = v4;
  v66[60] = &unk_287F2E360;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s%s%s", "B", "@", "@", "{_NSRange=QQ}", "q"];
  v65[61] = v5;
  v66[61] = &unk_287F2E380;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:62];
  v7 = qword_2806D9358;
  qword_2806D9358 = v6;
}

IMP sub_26F1ED7B0(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1ED858;
  v7[3] = &unk_279DC8F10;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

IMP sub_26F1ED868(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1ED910;
  v7[3] = &unk_279DC8F38;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

void sub_26F1ED910(uint64_t a1, void *a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = v6;
  if (!v6)
  {
    v8 = [MEMORY[0x277CBEB68] null];
  }

  v10[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [v5 emitTMLSignal:v7 withArguments:v9];

  if (!v6)
  {
  }
}

IMP sub_26F1ED9EC(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1EDA94;
  v7[3] = &unk_279DC8F60;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

void sub_26F1EDA94(uint64_t a1, void *a2, void *a3, void *a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = v8;
  if (!v8)
  {
    v11 = [MEMORY[0x277CBEB68] null];
  }

  v14[0] = v11;
  v12 = v9;
  if (!v9)
  {
    v12 = [MEMORY[0x277CBEB68] null];
  }

  v14[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  [v7 emitTMLSignal:v10 withArguments:v13];

  if (!v9)
  {

    if (v8)
    {
      goto LABEL_7;
    }

LABEL_9:

    goto LABEL_7;
  }

  if (!v8)
  {
    goto LABEL_9;
  }

LABEL_7:
}

IMP sub_26F1EDBB8(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1EDC60;
  v7[3] = &unk_279DC8F88;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

void sub_26F1EDC60(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v18[3] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = *(a1 + 32);
  v14 = v10;
  if (!v10)
  {
    v14 = [MEMORY[0x277CBEB68] null];
  }

  v18[0] = v14;
  v15 = v11;
  if (!v11)
  {
    v15 = [MEMORY[0x277CBEB68] null];
  }

  v18[1] = v15;
  v16 = v12;
  if (!v12)
  {
    v16 = [MEMORY[0x277CBEB68] null];
  }

  v18[2] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  [v9 emitTMLSignal:v13 withArguments:v17];

  if (v12)
  {
    if (v11)
    {
      goto LABEL_9;
    }

LABEL_12:

    if (v10)
    {
      goto LABEL_10;
    }

LABEL_13:

    goto LABEL_10;
  }

  if (!v11)
  {
    goto LABEL_12;
  }

LABEL_9:
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_10:
}

IMP sub_26F1EDDC8(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1EDE70;
  v7[3] = &unk_279DC8FB0;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

void sub_26F1EDE70(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v18[3] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = *(a1 + 32);
  v14 = v10;
  if (!v10)
  {
    v14 = [MEMORY[0x277CBEB68] null];
  }

  v18[0] = v14;
  v15 = v11;
  if (!v11)
  {
    v15 = [MEMORY[0x277CBEB68] null];
  }

  v16 = [v12 copy];
  v18[2] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  [v9 emitTMLSignal:v13 withArguments:v17];

  if (!v11)
  {

    if (v10)
    {
      goto LABEL_7;
    }

LABEL_9:

    goto LABEL_7;
  }

  if (!v10)
  {
    goto LABEL_9;
  }

LABEL_7:
}

IMP sub_26F1EDFC0(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1EE068;
  v7[3] = &unk_279DC8FD8;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

void sub_26F1EE068(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v23[4] = *MEMORY[0x277D85DE8];
  v21 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = *(a1 + 32);
  v16 = v11;
  if (!v11)
  {
    v16 = [MEMORY[0x277CBEB68] null];
  }

  v23[0] = v16;
  v17 = v12;
  if (!v12)
  {
    v17 = [MEMORY[0x277CBEB68] null];
  }

  v23[1] = v17;
  v18 = v13;
  if (!v13)
  {
    v18 = [MEMORY[0x277CBEB68] null];
  }

  v23[2] = v18;
  v19 = v14;
  if (!v14)
  {
    v19 = [MEMORY[0x277CBEB68] null];
  }

  v23[3] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:{4, v21}];
  [v22 emitTMLSignal:v15 withArguments:v20];

  if (v14)
  {
    if (v13)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (v13)
    {
LABEL_11:
      if (v12)
      {
        goto LABEL_12;
      }

LABEL_16:

      if (v11)
      {
        goto LABEL_13;
      }

LABEL_17:

      goto LABEL_13;
    }
  }

  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_12:
  if (!v11)
  {
    goto LABEL_17;
  }

LABEL_13:
}

IMP sub_26F1EE210(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1EE2B8;
  v7[3] = &unk_279DC9000;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

void sub_26F1EE2B8(uint64_t a1, void *a2, uint64_t a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCABB0];
  v6 = a2;
  v7 = [v5 numberWithBool:a3];
  v9[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [v6 emitTMLSignal:v4 withArguments:v8];
}

IMP sub_26F1EE378(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1EE420;
  v7[3] = &unk_279DC9028;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}

void sub_26F1EE420(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v10 = v8;
  if (!v8)
  {
    v10 = [MEMORY[0x277CBEB68] null];
  }

  v13[0] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithBool:a4];
  v13[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  [v7 emitTMLSignal:v9 withArguments:v12];

  if (!v8)
  {
  }
}

IMP sub_26F1EE520(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F1EE5C8;
  v7[3] = &unk_279DC9050;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x27438BB60](v7);
  v5 = imp_implementationWithBlock(v4);

  return v5;
}