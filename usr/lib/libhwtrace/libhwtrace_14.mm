void *sub_298B995E4(uint64_t a1, uint64_t *a2, void *a3)
{
  v9 = a3;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (4 * v4 + 4 >= 3 * v5)
  {
    v7 = a2;
    v5 *= 2;
  }

  else
  {
    if (v5 + ~v4 - *(a1 + 12) > v5 >> 3)
    {
      goto LABEL_3;
    }

    v7 = a2;
  }

  v8 = a1;
  sub_298B67F2C(a1, v5);
  sub_298B99564(*v8, *(v8 + 16), *v7, &v9);
  a1 = v8;
  v4 = *(v8 + 8);
  a3 = v9;
LABEL_3:
  *(a1 + 8) = v4 + 1;
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

void sub_298B996A4(char *a1@<X0>, void *a2@<X8>)
{
  v33 = *MEMORY[0x29EDCA608];
  v3 = a1[32];
  v4 = a1[33];
  if (v3 != 7)
  {
    if (v3 != 4)
    {
      v25 = &v27;
      v5 = &v26;
      v26 = xmmword_298D1A100;
      if (v4 != 1)
      {
        goto LABEL_4;
      }

      if (v3 <= 4)
      {
        if (v3 != 1)
        {
          if (v3 != 3)
          {
            goto LABEL_4;
          }

          v9 = *a1;
          if (*a1)
          {
            v10 = strlen(*a1);
            goto LABEL_8;
          }
        }

        v8 = &v27;
        goto LABEL_28;
      }

      if ((v3 - 5) < 2)
      {
        v9 = *a1;
        v8 = &v27;
        v5 = (a1 + 8);
        goto LABEL_6;
      }

LABEL_4:
      v17 = 0;
      v21 = 0;
      v22 = 0;
      v24 = &v25;
      v23 = 0;
      v16 = &unk_2A1F1E0B8;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      sub_298B99BA4(a1, &v16, *a1, *(a1 + 1), v3);
      sub_298B99BA4(v7, &v16, *(a1 + 2), *(a1 + 3), a1[33]);
      v16 = &unk_2A1F1DEC8;
      if (v23 == 1 && v18)
      {
        MEMORY[0x29C2945C0](v18, 0x1000C8077774924);
      }

      v8 = v25;
      v9 = v25;
LABEL_6:
      if (v9)
      {
        v10 = *v5;
LABEL_8:
        if (v10 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_298ADDDA0();
        }

        if (v10 >= 0x17)
        {
          operator new();
        }

        *(a2 + 23) = v10;
        if (v10)
        {
          memmove(a2, v9, v10);
        }

        *(a2 + v10) = 0;
        v8 = v25;
        goto LABEL_29;
      }

LABEL_28:
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
LABEL_29:
      if (v8 != &v27)
      {
        free(v8);
      }

      return;
    }

    if (v4 == 1)
    {
      v12 = *a1;
      if (*(*a1 + 23) < 0)
      {
        v14 = *v12;
        v15 = v12[1];

        sub_298AFE11C(a2, v14, v15);
      }

      else
      {
        v13 = *v12;
        a2[2] = v12[2];
        *a2 = v13;
      }

      return;
    }

LABEL_34:
    v25 = &v27;
    v5 = &v26;
    v26 = xmmword_298D1A100;
    goto LABEL_4;
  }

  if (v4 != 1)
  {
    goto LABEL_34;
  }

  v11 = *a1;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  LODWORD(v26) = 0;
  v29 = 0;
  v30 = 0;
  v32 = a2;
  v31 = 0;
  v25 = &unk_2A1F1E040;
  *(&v26 + 1) = 0;
  v27 = 0;
  v28 = 0;
  sub_298B9BEC0(v11, &v25);
  if (v28 != *(&v26 + 1))
  {
    v28 = *(&v26 + 1);
    sub_298B9BB84(&v25);
  }

  sub_298B9AE14(&v25);
}

uint64_t sub_298B99A14(uint64_t **a1, uint64_t a2)
{
  v6 = 0;
  v10 = 0;
  v11 = 0;
  v13 = a2;
  v12 = 0;
  v5 = &unk_2A1F1E0B8;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  sub_298B99BA4(a1, &v5, *a1, a1[1], *(a1 + 32));
  sub_298B99BA4(v3, &v5, a1[2], a1[3], *(a1 + 33));
  return sub_298B9AE14(&v5);
}

void sub_298B99AA0(uint64_t **a1, uint64_t a2)
{
  sub_298B99BA4(a1, a2, *a1, a1[1], *(a1 + 32));
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 33);

  sub_298B99BA4(v4, a2, v5, v6, v7);
}

const char *sub_298B99AEC(uint64_t a1, const char **a2)
{
  if (*(a1 + 33) != 1 || (v2 = *(a1 + 32), v2 < 2))
  {
LABEL_13:
    sub_298B99A14(a1, a2);
    sub_298B8CB34(a2, 0);
    result = *a2;
    --a2[1];
    return result;
  }

  if (v2 == 3)
  {
    v3 = *a1;
    if (!*a1)
    {
      return 0;
    }

    strlen(*a1);
    return v3;
  }

  if (v2 != 4)
  {
    if (v2 == 6)
    {
      return *a1;
    }

    goto LABEL_13;
  }

  result = *a1;
  if ((result[23] & 0x8000000000000000) != 0)
  {
    return *result;
  }

  return result;
}

void sub_298B99BA4(void *result, uint64_t a2, uint64_t *a3, size_t a4, char a5)
{
  while (2)
  {
    switch(a5)
    {
      case 2:
        result = sub_298B99BA4(result, a2, *a3, a3[1], *(a3 + 32));
        a5 = *(a3 + 33);
        v7 = a3 + 2;
        a3 = a3[2];
        a4 = v7[1];
        continue;
      case 3:
        if (!a3)
        {
          return;
        }

        v8 = strlen(a3);
        v9 = *(a2 + 32);
        v10 = *(a2 + 24) - v9;
        if (v8 <= v10)
        {
          if (v8)
          {
            memcpy(v9, a3, v8);
            *(a2 + 32) += v8;
          }
        }

        else
        {
          while (1)
          {
            while (1)
            {
              v11 = *(a2 + 16);
              if (!v11)
              {
                break;
              }

              if (v9 == v11)
              {
                v10 *= v8 / v10;
                v8 -= v10;
                sub_298B9BB84(a2);
                v9 = *(a2 + 32);
                v12 = *(a2 + 24) - v9;
                if (v8 <= v12)
                {
                  v14 = (a3 + v10);
                  v13 = a2;
                  goto LABEL_10;
                }
              }

              else
              {
                sub_298B9BE18(a2, a3, v10);
                *(a2 + 32) = *(a2 + 16);
                sub_298B9BB84(a2);
                v8 -= v10;
                v9 = *(a2 + 32);
                v12 = *(a2 + 24) - v9;
              }

              a3 = (a3 + v10);
              v10 = v12;
              if (v12 >= v8)
              {
                goto LABEL_9;
              }
            }

            if (!*(a2 + 56))
            {
              break;
            }

            sub_298B9AE98(a2);
            v9 = *(a2 + 32);
            v10 = *(a2 + 24) - v9;
            if (v10 >= v8)
            {
LABEL_9:
              v13 = a2;
              v14 = a3;
LABEL_10:

              sub_298B9BE18(v13, v14, v8);
              return;
            }
          }

          sub_298B9BB84(a2);
        }

        return;
      case 4:
        v15 = *(a3 + 23);
        if ((v15 & 0x8000000000000000) != 0)
        {
          v16 = *a3;
          v15 = a3[1];
        }

        else
        {
          v16 = a3;
        }

        sub_298B9BCEC(a2, v16, v15);
        return;
      case 5:
      case 6:

        sub_298B63DC4(a2, a3, a4);
        return;
      case 7:

        sub_298B9BEC0(a3, a2);
        return;
      case 8:
        v22 = *(a2 + 32);
        if (v22 >= *(a2 + 24))
        {

          sub_298B9BC1C(a2, a3);
        }

        else
        {
          *(a2 + 32) = v22 + 1;
          *v22 = a3;
        }

        return;
      case 9:
        v20 = a3;
        goto LABEL_47;
      case 10:
        v18 = a3;
        goto LABEL_43;
      case 11:
        v20 = *a3;
LABEL_47:
        v21 = a2;

        goto LABEL_39;
      case 12:
        v18 = *a3;
LABEL_43:
        v19 = a2;

        goto LABEL_36;
      case 13:
        v20 = *a3;
        v21 = a2;

LABEL_39:
        sub_298B9B00C(v21, v20);
        return;
      case 14:
        v18 = *a3;
        v19 = a2;

LABEL_36:
        sub_298B9B068(v19, v18);
        return;
      case 15:
        v17 = *a3;

        sub_298B9B11C(a2, v17);
        return;
      default:
        return;
    }
  }
}

uint64_t sub_298B99F40(unint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v3 = *a2;
  if ((v3 - 58) < 0xFFFFFFF6)
  {
    return 1;
  }

  v5 = v3 - 48;
  if (a3 == 1)
  {
LABEL_8:
    *a1 = v5;
    a1[1] = 0;
    return 0;
  }

  else
  {
    v6 = 0;
    while (1)
    {
      v7 = a2[v6 + 1];
      if ((v7 - 58) < 0xFFFFFFF6)
      {
        break;
      }

      v5 = v7 + 10 * v5 - 48;
      if (a3 - 1 == ++v6)
      {
        goto LABEL_8;
      }
    }

    if (a3 - 2 == v6)
    {
      return 1;
    }

    if (v7 != 46)
    {
      return 1;
    }

    v8 = a2[v6 + 2];
    if ((v8 - 58) < 0xFFFFFFF6)
    {
      return 1;
    }

    v9 = (v8 - 48);
    if (a3 - 3 == v6)
    {
LABEL_15:
      *a1 = v5 | (v9 << 32) | 0x8000000000000000;
      a1[1] = 0;
      return 0;
    }

    else
    {
      while (1)
      {
        v10 = a2[v6 + 3];
        if ((v10 - 58) < 0xFFFFFFF6)
        {
          break;
        }

        v9 = (v10 + 10 * v9 - 48);
        if (a3 - 3 == ++v6)
        {
          goto LABEL_15;
        }
      }

      if (a3 - 4 == v6)
      {
        return 1;
      }

      if (v10 != 46)
      {
        return 1;
      }

      v11 = a2[v6 + 4];
      if ((v11 - 58) < 0xFFFFFFF6)
      {
        return 1;
      }

      v12 = v11 - 48;
      if (a3 - 5 == v6)
      {
LABEL_22:
        *a1 = v5 | (v9 << 32) | 0x8000000000000000;
        a1[1] = v12 | 0x80000000;
        return 0;
      }

      else
      {
        while (1)
        {
          v13 = a2[v6 + 5];
          if ((v13 - 58) < 0xFFFFFFF6)
          {
            break;
          }

          v12 = v13 + 10 * v12 - 48;
          if (a3 - 5 == ++v6)
          {
            goto LABEL_22;
          }
        }

        if (a3 - 6 == v6)
        {
          return 1;
        }

        if (v13 != 46)
        {
          return 1;
        }

        v14 = a2[v6 + 6];
        if ((v14 - 58) < 0xFFFFFFF6)
        {
          return 1;
        }

        v15 = (v14 - 48);
        if (a3 - 7 != v6)
        {
          v16 = a3 - v6 - 7;
          v17 = &a2[v6 + 7];
          do
          {
            v18 = *v17;
            if ((v18 - 58) < 0xFFFFFFF6)
            {
              return 1;
            }

            ++v17;
            v15 = (v18 + 10 * v15 - 48);
          }

          while (--v16);
        }

        *a1 = v5 | (v9 << 32) | 0x8000000000000000;
        a1[1] = v12 | (v15 << 32) | 0x8000000080000000;
        return 0;
      }
    }
  }
}

uint64_t sub_298B9A154(uint64_t a1)
{
  if (atomic_load_explicit(qword_2A13C2C80, memory_order_acquire))
  {
    if (*(qword_2A13C2C80[0] + 128))
    {
LABEL_3:
      if (!atomic_load_explicit(qword_2A13C2C80, memory_order_acquire))
      {
        sub_298B8D820(qword_2A13C2C80, sub_298B9A684, sub_298B9A94C);
      }

      return *(qword_2A13C2C80[0] + 128) == 1;
    }
  }

  else
  {
    v2 = a1;
    sub_298B8D820(qword_2A13C2C80, sub_298B9A684, sub_298B9A94C);
    a1 = v2;
    if (*(qword_2A13C2C80[0] + 128))
    {
      goto LABEL_3;
    }
  }

  v3 = *(*a1 + 56);

  return v3();
}

void *sub_298B9A258(uint64_t a1)
{
  v1 = sub_298B9CEA8();
  if (off_2A1A99568(v1))
  {
    (*(*v1 + 24))(v1, 1, 1, 0);
  }

  v2 = v1[4];
  if (v1[3] - v2 <= 6uLL)
  {
    v3 = sub_298B9BCEC(v1, "error: ", 7uLL);
    if (!off_2A1A99568(v3))
    {
      return v1;
    }

    goto LABEL_7;
  }

  *(v2 + 3) = 540701295;
  *v2 = 1869771365;
  v1[4] += 7;
  if (off_2A1A99568(v1))
  {
LABEL_7:
    (*(*v1 + 32))(v1);
  }

  return v1;
}

void *sub_298B9A354(void *a1, _BYTE *a2, size_t a3, char a4)
{
  if (!a3)
  {
LABEL_5:
    v8 = 0x2A1A99000;
    if (a4)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v6 = a1[4];
  if (a3 <= a1[3] - v6)
  {
    memcpy(v6, a2, a3);
    v10 = a1[3];
    v7 = (a1[4] + a3);
    a1[4] = v7;
    if ((v10 - v7) > 1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    sub_298B9BCEC(a1, a2, a3);
    v7 = a1[4];
    if (a1[3] - v7 > 1uLL)
    {
LABEL_4:
      *v7 = 8250;
      a1[4] += 2;
      goto LABEL_5;
    }
  }

  sub_298B9BCEC(a1, ": ", 2uLL);
  v8 = 0x2A1A99000uLL;
  if (a4)
  {
    goto LABEL_11;
  }

LABEL_9:
  if ((*(v8 + 1384))(a1))
  {
    (*(*a1 + 24))(a1, 1, 1, 0);
  }

LABEL_11:
  v11 = a1[4];
  if (a1[3] - v11 > 6uLL)
  {
    *(v11 + 3) = 540701295;
    *v11 = 1869771365;
    a1[4] += 7;
    if (a4)
    {
      return a1;
    }
  }

  else
  {
    sub_298B9BCEC(a1, "error: ", 7uLL);
    if (a4)
    {
      return a1;
    }
  }

  if (!(*(v8 + 1384))(a1))
  {
    return a1;
  }

  (*(*a1 + 32))(a1);
  return a1;
}

void *sub_298B9A4EC(void *a1, _BYTE *a2, size_t a3, char a4)
{
  if (!a3)
  {
LABEL_5:
    v8 = 0x2A1A99000;
    if (a4)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v6 = a1[4];
  if (a3 <= a1[3] - v6)
  {
    memcpy(v6, a2, a3);
    v10 = a1[3];
    v7 = (a1[4] + a3);
    a1[4] = v7;
    if ((v10 - v7) > 1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    sub_298B9BCEC(a1, a2, a3);
    v7 = a1[4];
    if (a1[3] - v7 > 1uLL)
    {
LABEL_4:
      *v7 = 8250;
      a1[4] += 2;
      goto LABEL_5;
    }
  }

  sub_298B9BCEC(a1, ": ", 2uLL);
  v8 = 0x2A1A99000uLL;
  if (a4)
  {
    goto LABEL_11;
  }

LABEL_9:
  if ((*(v8 + 1384))(a1))
  {
    (*(*a1 + 24))(a1, 5, 1, 0);
  }

LABEL_11:
  v11 = a1[4];
  if ((a1[3] - v11) > 8)
  {
    *(v11 + 8) = 32;
    *v11 = *"warning: ";
    a1[4] += 9;
    if (a4)
    {
      return a1;
    }
  }

  else
  {
    sub_298B9BCEC(a1, "warning: ", 9uLL);
    if (a4)
    {
      return a1;
    }
  }

  if (!(*(v8 + 1384))(a1))
  {
    return a1;
  }

  (*(*a1 + 32))(a1);
  return a1;
}

uint64_t sub_298B9A94C(uint64_t result)
{
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t sub_298B9A978(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6)
{
  v11 = 0;
  result = sub_298B83644(a1 + 152, a1, a3, a4, a5, a6, &v11);
  if ((result & 1) == 0)
  {
    v9 = result;
    *(a1 + 128) = v11;
    *(a1 + 12) = a2;
    v10 = *(a1 + 184);
    if (v10)
    {
      (*(*v10 + 48))(v10, &v11);
      return v9;
    }

    else
    {
      sub_298AE761C();
      return sub_298B9AA0C();
    }
  }

  return result;
}

void *sub_298B9AA14(void *a1)
{
  *a1 = &unk_2A1F1DE18;
  v2 = a1 + 20;
  v3 = a1[23];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_2A1F1DA08;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_2A1F1DA08;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void sub_298B9AB1C(void *a1)
{
  *a1 = &unk_2A1F1DE18;
  v2 = a1 + 20;
  v3 = a1[23];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_2A1F1DA08;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_2A1F1DA08;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  JUMPOUT(0x29C2945F0);
}

uint64_t sub_298B9AC44(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == 1)
  {
    v3 = 7;
  }

  else
  {
    v3 = v2 + 7;
  }

  (*(*(a1 + 152) + 16))();
  if (v4)
  {
    v5 = 6;
    if ((*(a1 + 10) & 0x400) == 0)
    {
      v5 = 3;
    }

    v6 = *(a1 + 56);
    if (!v6)
    {
      v6 = v4;
    }

    v3 += v5 + v6;
  }

  return v3;
}

void sub_298B9ACDC(uint64_t a1, int a2, char a3)
{
  if ((a3 & 1) != 0 || *(a1 + 148) != 1 || *(a1 + 144) != *(a1 + 128))
  {
    v9 = v3;
    v10 = v4;
    v5 = *(a1 + 128);
    v7 = *(a1 + 144);
    v8 = *(a1 + 148);
    v6 = &unk_2A1F1DA70;
    sub_298B837B4(a1 + 152, a1, v5, &v6, a2);
  }
}

uint64_t sub_298B9AD64(uint64_t result)
{
  if (*(result + 148) == 1)
  {
    *(result + 128) = *(result + 144);
  }

  else
  {
    *(result + 128) = 0;
  }

  return result;
}

uint64_t sub_298B9AE14(uint64_t result)
{
  *result = &unk_2A1F1DEC8;
  if (*(result + 56) == 1)
  {
    v1 = *(result + 16);
    if (v1)
    {
      v2 = result;
      MEMORY[0x29C2945C0](v1, 0x1000C8077774924);
      return v2;
    }
  }

  return result;
}

uint64_t sub_298B9AE98(void *a1)
{
  if ((*(*a1 + 88))(a1))
  {
    v2 = a1[2];
    if (a1[4] != v2)
    {
      a1[4] = v2;
      sub_298B9BB84(a1);
    }

    operator new[]();
  }

  return sub_298ADDDB0(a1);
}

uint64_t sub_298B9AF84(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (*(result + 56) == 1)
  {
    v4 = *(result + 16);
    if (v4)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      v8 = a3;
      MEMORY[0x29C2945C0](v4, 0x1000C8077774924);
      a3 = v8;
      a2 = v6;
      result = v5;
      a4 = v7;
    }
  }

  *(result + 16) = a2;
  *(result + 24) = a2 + a3;
  *(result + 32) = a2;
  *(result + 56) = a4;
  return result;
}

void *sub_298B9B00C(void *a1, unint64_t a2)
{
  if (HIDWORD(a2))
  {
    sub_298B8FEA0(a1, a2, 0, 0, 0);
  }

  else
  {
    sub_298B8FC48(a1, a2, 0, 0, 0);
  }

  return a1;
}

void *sub_298B9B068(void *a1, uint64_t a2)
{
  if (a2 < 0)
  {
    v4 = -a2;
    if (HIDWORD(v4))
    {
      sub_298B8FEA0(a1, v4, 0, 0, 1);
    }

    else
    {
      sub_298B8FC48(a1, v4, 0, 0, 1);
    }

    return a1;
  }

  else
  {
    if (HIDWORD(a2))
    {
      sub_298B8FEA0(a1, a2, 0, 0, 0);
    }

    else
    {
      sub_298B8FC48(a1, a2, 0, 0, 0);
    }

    return a1;
  }
}

uint64_t sub_298B9B11C(uint64_t a1, unint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = 0;
  v3 = (67 - __clz(a2)) >> 2;
  *&v4 = 0x3030303030303030;
  *(&v4 + 1) = 0x3030303030303030;
  v9[6] = v4;
  v9[7] = v4;
  if (v3)
  {
    v2 = v3;
  }

  v9[4] = v4;
  v9[5] = v4;
  if (v2 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v2;
  }

  v9[2] = v4;
  v9[3] = v4;
  v9[0] = v4;
  v9[1] = v4;
  if (a2)
  {
    v6 = &v9[-1] + v5 + 15;
    do
    {
      *v6-- = a0123456789abcd_1[a2 & 0xF] | 0x20;
      v7 = a2 > 0xF;
      a2 >>= 4;
    }

    while (v7);
  }

  return sub_298B9BCEC(a1, v9, v5);
}

uint64_t sub_298B9B1F8(uint64_t a1, uint64_t a2)
{
  v16[16] = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 24) - *(a1 + 32);
  if (v4 <= 3)
  {
    v7 = 127;
  }

  else
  {
    v5 = (*(*a2 + 8))(a2);
    if (v5 < v4)
    {
      v6 = v5;
    }

    else
    {
      v6 = v5 + 1;
    }

    if (v5 >= 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = (2 * v4);
    }

    if (v4 >= v7)
    {
      *(a1 + 32) += v7;
      return a1;
    }
  }

  v14 = v16;
  v15 = xmmword_298D1A050;
  do
  {
    v12 = v15;
    if (v15 != v7)
    {
      if (v15 <= v7)
      {
        if (*(&v15 + 1) < v7)
        {
          sub_298B90C08(&v14, v16, v7, 1);
          v12 = v15;
        }

        if (v7 != v12)
        {
          bzero(v14 + v12, v7 - v12);
        }
      }

      *&v15 = v7;
    }

    v8 = (*(*a2 + 8))(a2, v14, v7);
    if (v8 < v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 + 1;
    }

    if (v8 >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = (2 * v7);
    }

    v11 = v7 >= v10;
    v7 = v10;
  }

  while (!v11);
  sub_298B9BCEC(a1, v14, v10);
  if (v14 != v16)
  {
    free(v14);
  }

  return a1;
}

uint64_t sub_298B9B3A0(uint64_t a1, unsigned __int8 *a2, uint64_t a3, int a4)
{
  if (a3)
  {
    v6 = a2;
    v7 = &a2[a3];
    do
    {
      v10 = *v6;
      if (*v6 > 0x21u)
      {
        if (v10 == 34)
        {
          while (1)
          {
            v43 = *(a1 + 32);
            if (v43 < *(a1 + 24))
            {
              goto LABEL_117;
            }

            v44 = *(a1 + 16);
            if (v44)
            {
              break;
            }

            if (!*(a1 + 56))
            {
              sub_298B9BB84(a1);
              v45 = *(a1 + 32);
              if (v45 >= *(a1 + 24))
              {
LABEL_118:
                while (1)
                {
                  v46 = *(a1 + 16);
                  if (v46)
                  {
                    break;
                  }

                  if (!*(a1 + 56))
                  {
LABEL_140:
                    sub_298B9BB84(a1);
                    goto LABEL_9;
                  }

                  sub_298B9AE98(a1);
                  v45 = *(a1 + 32);
                  if (v45 < *(a1 + 24))
                  {
                    goto LABEL_123;
                  }
                }

                *(a1 + 32) = v46;
                sub_298B9BB84(a1);
                v45 = *(a1 + 32);
              }

              goto LABEL_123;
            }

            sub_298B9AE98(a1);
          }

          *(a1 + 32) = v44;
          sub_298B9BB84(a1);
          v43 = *(a1 + 32);
LABEL_117:
          *(a1 + 32) = v43 + 1;
          *v43 = 92;
          v45 = *(a1 + 32);
          if (v45 >= *(a1 + 24))
          {
            goto LABEL_118;
          }

LABEL_123:
          *(a1 + 32) = v45 + 1;
          *v45 = 34;
          goto LABEL_9;
        }

        if (v10 == 92)
        {
          v13 = *(a1 + 32);
          if (v13 >= *(a1 + 24))
          {
            while (1)
            {
              v14 = *(a1 + 16);
              if (v14)
              {
                break;
              }

              if (!*(a1 + 56))
              {
                sub_298B9BB84(a1);
                while (1)
                {
LABEL_41:
                  v19 = *(a1 + 32);
                  if (v19 < *(a1 + 24))
                  {
                    goto LABEL_46;
                  }

                  v20 = *(a1 + 16);
                  if (v20)
                  {
                    break;
                  }

                  if (!*(a1 + 56))
                  {
                    goto LABEL_140;
                  }

                  sub_298B9AE98(a1);
                }

                *(a1 + 32) = v20;
                sub_298B9BB84(a1);
                v19 = *(a1 + 32);
LABEL_46:
                *(a1 + 32) = v19 + 1;
                *v19 = 92;
                goto LABEL_9;
              }

              sub_298B9AE98(a1);
              v13 = *(a1 + 32);
              if (v13 < *(a1 + 24))
              {
                goto LABEL_40;
              }
            }

            *(a1 + 32) = v14;
            sub_298B9BB84(a1);
            v13 = *(a1 + 32);
          }

LABEL_40:
          *(a1 + 32) = v13 + 1;
          *v13 = 92;
          goto LABEL_41;
        }

LABEL_25:
        v16 = *(a1 + 24);
        v15 = *(a1 + 32);
        if ((v10 - 32) <= 0x5E)
        {
          if (v15 >= v16)
          {
            while (1)
            {
              v17 = *(a1 + 16);
              if (v17)
              {
                break;
              }

              if (!*(a1 + 56))
              {
                goto LABEL_140;
              }

              sub_298B9AE98(a1);
              v15 = *(a1 + 32);
              if (v15 < *(a1 + 24))
              {
                goto LABEL_53;
              }
            }

            *(a1 + 32) = v17;
            sub_298B9BB84(a1);
            v15 = *(a1 + 32);
          }

LABEL_53:
          *(a1 + 32) = v15 + 1;
          *v15 = v10;
          goto LABEL_9;
        }

        if (a4)
        {
          if (v15 >= v16)
          {
            while (1)
            {
              v18 = *(a1 + 16);
              if (v18)
              {
                break;
              }

              if (!*(a1 + 56))
              {
                sub_298B9BB84(a1);
                while (1)
                {
LABEL_56:
                  v22 = *(a1 + 32);
                  if (v22 < *(a1 + 24))
                  {
                    goto LABEL_67;
                  }

                  v23 = *(a1 + 16);
                  if (v23)
                  {
                    break;
                  }

                  if (!*(a1 + 56))
                  {
                    sub_298B9BB84(a1);
                    goto LABEL_68;
                  }

                  sub_298B9AE98(a1);
                }

                *(a1 + 32) = v23;
                sub_298B9BB84(a1);
                v22 = *(a1 + 32);
LABEL_67:
                *(a1 + 32) = v22 + 1;
                *v22 = 120;
LABEL_68:
                v27 = a0123456789abcd_1[v10 >> 4];
                v28 = *(a1 + 32);
                if (v28 >= *(a1 + 24))
                {
                  while (1)
                  {
                    v29 = *(a1 + 16);
                    if (v29)
                    {
                      break;
                    }

                    if (!*(a1 + 56))
                    {
                      sub_298B9BB84(a1);
LABEL_81:
                      v33 = a0123456789abcd_1[v10 & 0xF];
                      v34 = *(a1 + 32);
                      if (v34 >= *(a1 + 24))
                      {
                        while (1)
                        {
                          v35 = *(a1 + 16);
                          if (v35)
                          {
                            break;
                          }

                          if (!*(a1 + 56))
                          {
                            goto LABEL_140;
                          }

                          sub_298B9AE98(a1);
                          v34 = *(a1 + 32);
                          if (v34 < *(a1 + 24))
                          {
                            goto LABEL_93;
                          }
                        }

                        *(a1 + 32) = v35;
                        sub_298B9BB84(a1);
                        v34 = *(a1 + 32);
                      }

LABEL_93:
                      *(a1 + 32) = v34 + 1;
                      *v34 = v33;
                      goto LABEL_9;
                    }

                    sub_298B9AE98(a1);
                    v28 = *(a1 + 32);
                    if (v28 < *(a1 + 24))
                    {
                      goto LABEL_80;
                    }
                  }

                  *(a1 + 32) = v29;
                  sub_298B9BB84(a1);
                  v28 = *(a1 + 32);
                }

LABEL_80:
                *(a1 + 32) = v28 + 1;
                *v28 = v27;
                goto LABEL_81;
              }

              sub_298B9AE98(a1);
              v15 = *(a1 + 32);
              if (v15 < *(a1 + 24))
              {
                goto LABEL_55;
              }
            }

            *(a1 + 32) = v18;
            sub_298B9BB84(a1);
            v15 = *(a1 + 32);
          }

LABEL_55:
          *(a1 + 32) = v15 + 1;
          *v15 = 92;
          goto LABEL_56;
        }

        if (v15 >= v16)
        {
          while (1)
          {
            v21 = *(a1 + 16);
            if (v21)
            {
              break;
            }

            if (!*(a1 + 56))
            {
              sub_298B9BB84(a1);
              v24 = (v10 >> 6) | 0x30;
              v25 = *(a1 + 32);
              if (v25 >= *(a1 + 24))
              {
LABEL_62:
                while (1)
                {
                  v26 = *(a1 + 16);
                  if (v26)
                  {
                    break;
                  }

                  if (!*(a1 + 56))
                  {
                    sub_298B9BB84(a1);
                    v30 = (v10 >> 3) & 7 | 0x30;
                    v31 = *(a1 + 32);
                    if (v31 >= *(a1 + 24))
                    {
LABEL_75:
                      while (1)
                      {
                        v32 = *(a1 + 16);
                        if (v32)
                        {
                          break;
                        }

                        if (!*(a1 + 56))
                        {
                          sub_298B9BB84(a1);
                          v36 = v10 & 7 | 0x30;
                          v37 = *(a1 + 32);
                          if (v37 >= *(a1 + 24))
                          {
LABEL_88:
                            while (1)
                            {
                              v38 = *(a1 + 16);
                              if (v38)
                              {
                                break;
                              }

                              if (!*(a1 + 56))
                              {
                                goto LABEL_140;
                              }

                              sub_298B9AE98(a1);
                              v37 = *(a1 + 32);
                              if (v37 < *(a1 + 24))
                              {
                                goto LABEL_95;
                              }
                            }

                            *(a1 + 32) = v38;
                            sub_298B9BB84(a1);
                            v37 = *(a1 + 32);
                          }

LABEL_95:
                          *(a1 + 32) = v37 + 1;
                          *v37 = v36;
                          goto LABEL_9;
                        }

                        sub_298B9AE98(a1);
                        v31 = *(a1 + 32);
                        if (v31 < *(a1 + 24))
                        {
                          goto LABEL_87;
                        }
                      }

                      *(a1 + 32) = v32;
                      sub_298B9BB84(a1);
                      v31 = *(a1 + 32);
                    }

LABEL_87:
                    *(a1 + 32) = v31 + 1;
                    *v31 = v30;
                    v36 = v10 & 7 | 0x30;
                    v37 = *(a1 + 32);
                    if (v37 >= *(a1 + 24))
                    {
                      goto LABEL_88;
                    }

                    goto LABEL_95;
                  }

                  sub_298B9AE98(a1);
                  v25 = *(a1 + 32);
                  if (v25 < *(a1 + 24))
                  {
                    goto LABEL_74;
                  }
                }

                *(a1 + 32) = v26;
                sub_298B9BB84(a1);
                v25 = *(a1 + 32);
              }

LABEL_74:
              *(a1 + 32) = v25 + 1;
              *v25 = v24;
              v30 = (v10 >> 3) & 7 | 0x30;
              v31 = *(a1 + 32);
              if (v31 >= *(a1 + 24))
              {
                goto LABEL_75;
              }

              goto LABEL_87;
            }

            sub_298B9AE98(a1);
            v15 = *(a1 + 32);
            if (v15 < *(a1 + 24))
            {
              goto LABEL_61;
            }
          }

          *(a1 + 32) = v21;
          sub_298B9BB84(a1);
          v15 = *(a1 + 32);
        }

LABEL_61:
        *(a1 + 32) = v15 + 1;
        *v15 = 92;
        v24 = (v10 >> 6) | 0x30;
        v25 = *(a1 + 32);
        if (v25 >= *(a1 + 24))
        {
          goto LABEL_62;
        }

        goto LABEL_74;
      }

      if (v10 == 9)
      {
        while (1)
        {
          v39 = *(a1 + 32);
          if (v39 < *(a1 + 24))
          {
            goto LABEL_103;
          }

          v40 = *(a1 + 16);
          if (v40)
          {
            break;
          }

          if (!*(a1 + 56))
          {
            sub_298B9BB84(a1);
            v41 = *(a1 + 32);
            if (v41 >= *(a1 + 24))
            {
LABEL_104:
              while (1)
              {
                v42 = *(a1 + 16);
                if (v42)
                {
                  break;
                }

                if (!*(a1 + 56))
                {
                  goto LABEL_140;
                }

                sub_298B9AE98(a1);
                v41 = *(a1 + 32);
                if (v41 < *(a1 + 24))
                {
                  goto LABEL_109;
                }
              }

              *(a1 + 32) = v42;
              sub_298B9BB84(a1);
              v41 = *(a1 + 32);
            }

            goto LABEL_109;
          }

          sub_298B9AE98(a1);
        }

        *(a1 + 32) = v40;
        sub_298B9BB84(a1);
        v39 = *(a1 + 32);
LABEL_103:
        *(a1 + 32) = v39 + 1;
        *v39 = 92;
        v41 = *(a1 + 32);
        if (v41 >= *(a1 + 24))
        {
          goto LABEL_104;
        }

LABEL_109:
        *(a1 + 32) = v41 + 1;
        *v41 = 116;
        goto LABEL_9;
      }

      if (v10 != 10)
      {
        goto LABEL_25;
      }

      v11 = *(a1 + 32);
      if (v11 < *(a1 + 24))
      {
        goto LABEL_38;
      }

      while (1)
      {
        v12 = *(a1 + 16);
        if (v12)
        {
          *(a1 + 32) = v12;
          sub_298B9BB84(a1);
          v11 = *(a1 + 32);
LABEL_38:
          *(a1 + 32) = v11 + 1;
          *v11 = 92;
          goto LABEL_3;
        }

        if (!*(a1 + 56))
        {
          break;
        }

        sub_298B9AE98(a1);
        v11 = *(a1 + 32);
        if (v11 < *(a1 + 24))
        {
          goto LABEL_38;
        }
      }

      sub_298B9BB84(a1);
LABEL_3:
      while (1)
      {
        v8 = *(a1 + 32);
        if (v8 < *(a1 + 24))
        {
          break;
        }

        v9 = *(a1 + 16);
        if (v9)
        {
          *(a1 + 32) = v9;
          sub_298B9BB84(a1);
          v8 = *(a1 + 32);
          break;
        }

        if (!*(a1 + 56))
        {
          goto LABEL_140;
        }

        sub_298B9AE98(a1);
      }

      *(a1 + 32) = v8 + 1;
      *v8 = 110;
LABEL_9:
      ++v6;
    }

    while (v6 != v7);
  }

  return a1;
}

uint64_t sub_298B9BB84(void *a1)
{
  v1 = a1[6];
  if (v1)
  {
    v2 = v1[2];
    if (v1[4] != v2)
    {
      v1[4] = v2;
      v3 = a1;
      sub_298B9BB84(v1);
      a1 = v3;
    }
  }

  v4 = *(*a1 + 72);

  return v4();
}

void *sub_298B9BC1C(void *result, char a2)
{
  v2 = result[4];
  if (v2 < result[3])
  {
LABEL_2:
    result[4] = v2 + 1;
    *v2 = a2;
    return result;
  }

  v3 = a2;
  v4 = result[2];
  if (v4)
  {
LABEL_4:
    result[4] = v4;
    v5 = result;
    sub_298B9BB84(result);
    result = v5;
    v2 = *(v5 + 32);
LABEL_5:
    a2 = v3;
    goto LABEL_2;
  }

  while (1)
  {
    v6 = result;
    if (!*(result + 14))
    {
      break;
    }

    sub_298B9AE98(result);
    v2 = v6[4];
    if (v2 < v6[3])
    {
      result = v6;
      goto LABEL_5;
    }

    result = v6;
    v4 = v6[2];
    if (v4)
    {
      goto LABEL_4;
    }
  }

  sub_298B9BB84(result);
  return v6;
}

uint64_t sub_298B9BCEC(uint64_t a1, _BYTE *a2, unint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 24) - v4;
  if (v5 < a3)
  {
    while (1)
    {
      v7 = *(a1 + 16);
      if (!v7)
      {
        break;
      }

LABEL_5:
      v8 = a3;
      if (v4 == v7)
      {
        v5 *= a3 / v5;
        v11 = a3 - v5;
        v9 = a2;
        sub_298B9BB84(a1);
        v4 = *(a1 + 32);
        v10 = *(a1 + 24) - v4;
        a3 = v11;
        if (v11 <= v10)
        {
          a2 = &v9[v5];
          goto LABEL_2;
        }
      }

      else
      {
        v9 = a2;
        sub_298B9BE18(a1, a2, v5);
        *(a1 + 32) = *(a1 + 16);
        sub_298B9BB84(a1);
        a3 = v8 - v5;
        v4 = *(a1 + 32);
        v10 = *(a1 + 24) - v4;
      }

      a2 = &v9[v5];
      v5 = v10;
      if (v10 >= a3)
      {
        goto LABEL_2;
      }
    }

    while (1)
    {
      v12 = a2;
      v13 = a3;
      if (!*(a1 + 56))
      {
        sub_298B9BB84(a1);
        return a1;
      }

      sub_298B9AE98(a1);
      v4 = *(a1 + 32);
      v5 = *(a1 + 24) - v4;
      if (v5 >= v13)
      {
        break;
      }

      v7 = *(a1 + 16);
      a2 = v12;
      a3 = v13;
      if (v7)
      {
        goto LABEL_5;
      }
    }

    a2 = v12;
    a3 = v13;
  }

LABEL_2:
  sub_298B9BE18(a1, a2, a3);
  return a1;
}

uint64_t sub_298B9BE18(uint64_t result, _BYTE *a2, int64_t a3)
{
  if (a3 > 1)
  {
    switch(a3)
    {
      case 2:
LABEL_7:
        *(*(result + 32) + 1) = a2[1];
        goto LABEL_8;
      case 3:
LABEL_6:
        *(*(result + 32) + 2) = a2[2];
        goto LABEL_7;
      case 4:
        *(*(result + 32) + 3) = a2[3];
        goto LABEL_6;
    }

LABEL_12:
    v3 = result;
    v4 = a3;
    memcpy(*(result + 32), a2, a3);
    result = v3;
    a3 = v4;
    goto LABEL_9;
  }

  if (!a3)
  {
    goto LABEL_9;
  }

  if (a3 != 1)
  {
    goto LABEL_12;
  }

LABEL_8:
  **(result + 32) = *a2;
LABEL_9:
  *(result + 32) += a3;
  return result;
}

void sub_298B9BEC0(uint64_t a1, uint64_t a2)
{
  v46 = *MEMORY[0x29EDCA608];
  v4 = *a1;
  v5 = *(a1 + 8);
  v38 = v40;
  v39 = 0x200000000;
  *v35 = 0;
  memset(&v35[8], 0, 32);
  *&v35[40] = 2;
  v35[44] = 0;
  v36 = 0uLL;
  if (v5)
  {
    sub_298B86C2C(v5, v4, v41);
    *v35 = *v41;
    *&v35[16] = *&v41[16];
    *&v35[32] = v42;
    v36 = v43;
    v6 = v44;
    v7 = v45;
    if (*v41)
    {
      v25 = v44;
      v26 = v45;
      sub_298B87210(&v38, v35);
      v7 = v26;
      v6 = v25;
    }

    if (v7)
    {
      sub_298B86C2C(v7, v6, v41);
      *v35 = *v41;
      *&v35[16] = *&v41[16];
      *&v35[32] = v42;
      v36 = v43;
      v23 = v44;
      v24 = v45;
      if (*v41)
      {
        v27 = v44;
        v28 = v45;
        sub_298B87210(&v38, v35);
        v24 = v28;
        v23 = v27;
      }

      while (v24)
      {
        sub_298B86C2C(v24, v23, v41);
        *v35 = *v41;
        *&v35[16] = *&v41[16];
        *&v35[32] = v42;
        v36 = v43;
        v23 = v44;
        v24 = v45;
        if (*v41)
        {
          v29 = v44;
          v30 = v45;
          sub_298B87210(&v38, v35);
          v24 = v30;
          v23 = v29;
        }
      }
    }

    v8 = v38;
    if (v39)
    {
      v9 = v39 << 6;
      v10 = v38 + 32;
      do
      {
        v11 = *(v10 - 8);
        if (v11)
        {
          if (v11 == 2 || (v12 = *(v10 - 1), v12 >= *(a1 + 24)))
          {
            sub_298B63DC4(a2, *(v10 - 3), *(v10 - 2));
          }

          else
          {
            v13 = *(*(a1 + 16) + 8 * v12);
            v14 = *(v10 + 2);
            v15 = *v10;
            v16 = v10[12];
            v31 = v13;
            v32 = v14;
            v33 = v15;
            v34 = v16;
            v17 = *(v10 + 2);
            v18 = *(v10 + 3);
            if (v15)
            {
              *v41 = &v41[24];
              *&v41[8] = xmmword_298D1AB80;
              *&v35[8] = 0;
              *&v36 = 0;
              DWORD2(v36) = 1;
              memset(&v35[16], 0, 25);
              *v35 = &unk_2A1F1E0B8;
              v37 = v41;
              v19 = v13;
              v20 = v18;
              v21 = v17;
              sub_298ADDDB0(v35);
              (*(*v19 + 24))(v19, v35, v21, v20);
              v22 = v15 - *&v41[8];
              if (v15 <= *&v41[8])
              {
                sub_298B9BCEC(a2, *v41, *&v41[8]);
              }

              else if (v14 == 1)
              {
                sub_298B9D6C8(&v31, a2, v22 >> 1);
                sub_298B9BCEC(a2, *v41, *&v41[8]);
                sub_298B9D6C8(&v31, a2, v22 - (v22 >> 1));
              }

              else if (v14)
              {
                sub_298B9D6C8(&v31, a2, v22);
                sub_298B9BCEC(a2, *v41, *&v41[8]);
              }

              else
              {
                sub_298B9BCEC(a2, *v41, *&v41[8]);
                sub_298B9D6C8(&v31, a2, v22);
              }

              sub_298B9AE14(v35);
              if (*v41 != &v41[24])
              {
                free(*v41);
              }
            }

            else
            {
              (*(*v13 + 24))(v13, a2, v17, v18);
            }
          }
        }

        v10 += 64;
        v9 -= 64;
      }

      while (v9);
      v8 = v38;
    }

    if (v8 != v40)
    {
      free(v8);
    }
  }
}

uint64_t sub_298B9C2A8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16) - *(a2 + 8);
  if (v4 < 1)
  {
    LODWORD(v4) = 0;
    v6 = 0;
    goto LABEL_10;
  }

  v5 = *(a2 + 20);
  if (v5 == 3)
  {
    v6 = v4 - (v4 >> 1);
    v4 = v4 >> 1;
    if (v4 < 0x50)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (v5 != 2)
    {
      if (v5 == 1)
      {
        v6 = *(a2 + 16) - *(a2 + 8);
      }

      else
      {
        v6 = 0;
      }

      LODWORD(v4) = 0;
      goto LABEL_10;
    }

    v6 = 0;
    if (v4 < 0x50)
    {
LABEL_10:
      sub_298B9BCEC(a1, "                                                                                ", v4);
      goto LABEL_11;
    }
  }

  do
  {
    if (v4 >= 0x4F)
    {
      v13 = 79;
    }

    else
    {
      v13 = v4;
    }

    sub_298B9BCEC(a1, "                                                                                ", v13);
    LODWORD(v4) = v4 - v13;
  }

  while (v4);
LABEL_11:
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a1 + 32);
  if (v8 <= *(a1 + 24) - v9)
  {
    if (v8)
    {
      v10 = *(a2 + 8);
      memcpy(v9, v7, v8);
      *(a1 + 32) += v10;
    }
  }

  else
  {
    sub_298B9BCEC(a1, v7, v8);
  }

  if (v6 >= 0x50)
  {
    do
    {
      if (v6 >= 0x4F)
      {
        v11 = 79;
      }

      else
      {
        v11 = v6;
      }

      sub_298B9BCEC(a1, "                                                                                ", v11);
      v6 -= v11;
    }

    while (v6);
  }

  else
  {
    sub_298B9BCEC(a1, "                                                                                ", v6);
  }

  return a1;
}

uint64_t sub_298B9C414(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x29EDCA608];
  if (*(a2 + 20) == 1)
  {
    if (*(a2 + 22))
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    if (*(a2 + 22))
    {
      v5 = 3;
    }

    else
    {
      v5 = 1;
    }

    if (!*(a2 + 21))
    {
      v4 = v5;
    }

    v6 = *a2;
    v7 = *(a2 + 16);
    if (v7 >= 0x80)
    {
      LODWORD(v7) = 128;
    }

    v8 = (67 - __clz(v6)) >> 2;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    *&v9 = 0x3030303030303030;
    *(&v9 + 1) = 0x3030303030303030;
    v31 = v9;
    v32 = v9;
    v29 = v9;
    v30 = v9;
    v10 = v8 + 2 * (v4 > 1);
    v27 = v9;
    v28 = v9;
    if (v7 <= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v7;
    }

    v25 = v9;
    v26 = v9;
    if (v4 >= 2)
    {
      BYTE1(v25) = 120;
    }

    if (v6)
    {
      v12 = 32 * (v4 & 1);
      v13 = &v25 + v11 - 1;
      do
      {
        *v13-- = a0123456789abcd_1[v6 & 0xF] | v12;
        v14 = v6 > 0xF;
        v6 >>= 4;
      }

      while (v14);
    }

    sub_298B9BCEC(a1, &v25, v11);
    return a1;
  }

  v22 = v24;
  v23 = xmmword_298D1ABD0;
  DWORD2(v25) = 0;
  BYTE8(v27) = 0;
  *&v28 = 0;
  DWORD2(v28) = 1;
  *&v27 = 0;
  v26 = 0uLL;
  *&v25 = &unk_2A1F1E0B8;
  *&v29 = &v22;
  sub_298ADDDB0(&v25);
  v15 = *(a2 + 8);
  if ((v15 & 0x8000000000000000) == 0)
  {
    if (!HIDWORD(v15))
    {
      sub_298B8FC48(&v25, v15, 0, 0, 0);
      v16 = v23;
      v17 = *(a2 + 16);
      if (v23 >= v17)
      {
        goto LABEL_35;
      }

      goto LABEL_29;
    }

    v21 = 0;
LABEL_40:
    sub_298B8FEA0(&v25, v15, 0, 0, v21);
    v16 = v23;
    v17 = *(a2 + 16);
    if (v23 >= v17)
    {
      goto LABEL_35;
    }

    goto LABEL_29;
  }

  v15 = -v15;
  if (HIDWORD(v15))
  {
    v21 = 1;
    goto LABEL_40;
  }

  sub_298B8FC48(&v25, v15, 0, 0, 1);
  v16 = v23;
  v17 = *(a2 + 16);
  if (v23 >= v17)
  {
    goto LABEL_35;
  }

LABEL_29:
  v18 = v17 - v16;
  if ((v17 - v16) >= 0x50)
  {
    do
    {
      if (v18 >= 0x4F)
      {
        v19 = 79;
      }

      else
      {
        v19 = v18;
      }

      sub_298B9BCEC(a1, "                                                                                ", v19);
      v18 -= v19;
    }

    while (v18);
  }

  else
  {
    sub_298B9BCEC(a1, "                                                                                ", (v17 - v16));
  }

LABEL_35:
  sub_298B9BCEC(a1, v22, v23);
  sub_298B9AE14(&v25);
  if (v22 != v24)
  {
    free(v22);
  }

  return a1;
}

uint64_t sub_298B9C6DC(uint64_t a1, int a2, int a3, int a4)
{
  if (*(a1 + 40) == 1)
  {
    if (a2 == 16)
    {
      v5 = "\x1B[1m";
    }

    else
    {
      v5 = &a030m[352 * a4 + 176 * a3 + 11 * (a2 & 0xF)];
    }

    v6 = strlen(v5);
    sub_298B9BCEC(a1, v5, v6);
  }

  return a1;
}

uint64_t sub_298B9C758(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return sub_298B9BCEC(result, "\x1B[0m", 4uLL);
  }

  return result;
}

uint64_t sub_298B9C78C(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return sub_298B9BCEC(result, "\x1B[7m", 4uLL);
  }

  return result;
}

uint64_t sub_298B9C7C8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = sub_298B9C828(a2, a3, a4, a5, a6, a7);

  return sub_298B9C8D4(a1, v8, 1, 0, 0);
}

uint64_t sub_298B9C828(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a2 == 1 && *a1 == 45)
  {
    v12 = std::system_category();
    *a3 = 0;
    *(a3 + 8) = v12;
    return 1;
  }

  else
  {
    v15 = 0;
    v14 = 261;
    v13[0] = a1;
    v13[1] = a2;
    v7 = a4;
    if (a5)
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v9 = sub_298BABA40(v13, &v15, v7, v8, a6, 438);
    *a3 = v9;
    *(a3 + 8) = v10;
    if (v9)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v15;
    }
  }
}

uint64_t sub_298B9C8D4(uint64_t a1, unsigned int a2, char a3, int a4, int a5)
{
  *(a1 + 8) = a5;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a4 ^ 1;
  *(a1 + 60) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A1F1DF40;
  *(a1 + 64) = a3;
  *(a1 + 72) = 0;
  v7 = std::system_category();
  *(a1 + 65) = 0;
  *(a1 + 80) = v7;
  *(a1 + 88) = 0;
  if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 64) = 0;
  }

  else
  {
    *(a1 + 40) = 1;
    if (a2 <= 2)
    {
      *(a1 + 64) = 0;
    }

    v8 = lseek(a2, 0, 1);
    memset(v12, 0, sizeof(v12));
    v13 = 0xFFFFLL;
    v14 = 0;
    v15 = 0;
    v9 = sub_298BAB694(*(a1 + 60), v12);
    *(a1 + 66) = *&v12[40] == 2;
    *(a1 + 65) = v9 == 0 && v8 != -1;
    if (v9 == 0 && v8 != -1)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    *(a1 + 88) = v10;
  }

  return a1;
}

uint64_t sub_298B9C9DC(uint64_t a1)
{
  *a1 = &unk_2A1F1DF40;
  if ((*(a1 + 60) & 0x80000000) == 0)
  {
    v1 = *(a1 + 16);
    if (*(a1 + 32) != v1)
    {
      *(a1 + 32) = v1;
      v2 = a1;
      sub_298B9BB84(a1);
      a1 = v2;
    }

    if (*(a1 + 64) == 1)
    {
      v3 = a1;
      v5 = sub_298BAC580(*(a1 + 60));
      a1 = v3;
      if (v5)
      {
        *(v3 + 72) = v5;
        *(v3 + 80) = v4;
      }
    }
  }

  if (*(a1 + 72))
  {
    v11 = "IO failure on output stream: ";
    v12 = 259;
    v7 = *(a1 + 72);
    std::error_code::message(&v8, &v7);
    v10 = 260;
    v9 = &v8;
    sub_298ADC860(&v11, &v9, v13);
    sub_298B868DC(v13, 0);
  }

  return sub_298B9AE14(a1);
}

void sub_298B9CAE0(uint64_t a1)
{
  sub_298B9C9DC(a1);

  JUMPOUT(0x29C2945F0);
}

uint64_t sub_298B9CB18(uint64_t a1, char *__buf, unint64_t a3)
{
  v3 = a3;
  *(a1 + 88) += a3;
  while (1)
  {
    v6 = v3 >= 0x7FFFFFFF ? 0x7FFFFFFFLL : v3;
    result = write(*(a1 + 60), __buf, v6);
    if (result < 0)
    {
      break;
    }

    __buf += result;
    v3 -= result;
LABEL_3:
    if (!v3)
    {
      return result;
    }
  }

  result = __error();
  if (*result == 4)
  {
    goto LABEL_3;
  }

  result = __error();
  if (*result == 35)
  {
    goto LABEL_3;
  }

  result = __error();
  if (*result == 35)
  {
    goto LABEL_3;
  }

  v8 = *__error();
  result = std::generic_category();
  *(a1 + 72) = v8;
  *(a1 + 80) = result;
  return result;
}

off_t sub_298B9CBC0(int *a1, _BYTE *a2, unint64_t a3, off_t a4)
{
  v8 = (*(*a1 + 80))(a1);
  v9 = *(a1 + 4);
  v10 = *(a1 + 2);
  v11 = v8 + v9;
  if (v9 != v10)
  {
    *(a1 + 4) = v10;
    sub_298B9BB84(a1);
  }

  v12 = v11 - v10;
  v13 = lseek(a1[15], a4, 0);
  *(a1 + 11) = v13;
  if (v13 == -1)
  {
    v14 = *__error();
    v15 = std::generic_category();
    *(a1 + 9) = v14;
    *(a1 + 10) = v15;
  }

  sub_298B9BCEC(a1, a2, a3);
  v16 = *(a1 + 2);
  if (*(a1 + 4) != v16)
  {
    *(a1 + 4) = v16;
    sub_298B9BB84(a1);
  }

  result = lseek(a1[15], v12, 0);
  *(a1 + 11) = result;
  if (result == -1)
  {
    v18 = *__error();
    result = std::generic_category();
    *(a1 + 9) = v18;
    *(a1 + 10) = result;
  }

  return result;
}

uint64_t sub_298B9CCE0(int *a1)
{
  if (fstat(a1[15], &v3))
  {
    return 0;
  }

  if (v3.st_mode & 0xF000) == 0x2000 && ((*(*a1 + 48))(a1))
  {
    return 0;
  }

  return v3.st_blksize;
}

uint64_t sub_298B9CDA4(uint64_t a1)
{
  if (*(a1 + 68) == 1)
  {
    return *(a1 + 67) & 1;
  }

  v3 = sub_298BAC614(*(a1 + 60));
  *(a1 + 67) = v3 | 0x100;
  return v3 & 1;
}

void *sub_298B9CDFC()
{
  v1 = 0;
  v2 = std::system_category();
  if ((atomic_load_explicit(&qword_2A13C2CC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2CC0))
  {
    sub_298B9C7C8(&unk_2A13C2D18, "-", 1, &v1, 0, 2, 0);
    __cxa_atexit(sub_298B9CADC, &unk_2A13C2D18, &dword_298AD8000);
    __cxa_guard_release(&qword_2A13C2CC0);
  }

  return &unk_2A13C2D18;
}

void *sub_298B9CEA8()
{
  if (atomic_load_explicit(&qword_2A13C2CC8, memory_order_acquire))
  {
    return &unk_2A13C2D78;
  }

  if (__cxa_guard_acquire(&qword_2A13C2CC8))
  {
    sub_298B9C8D4(&unk_2A13C2D78, 2u, 0, 1, 0);
    __cxa_atexit(sub_298B9CADC, &unk_2A13C2D78, &dword_298AD8000);
    __cxa_guard_release(&qword_2A13C2CC8);
  }

  return &unk_2A13C2D78;
}

uint64_t *sub_298B9CF40()
{
  if (atomic_load_explicit(&qword_2A13C2CD0, memory_order_acquire))
  {
    return &qword_2A13C2CD8;
  }

  if (__cxa_guard_acquire(&qword_2A13C2CD0))
  {
    dword_2A13C2CE0 = 0;
    byte_2A13C2D00 = 0;
    qword_2A13C2D08 = 0;
    dword_2A13C2D10 = 1;
    qword_2A13C2CF0 = 0;
    unk_2A13C2CF8 = 0;
    qword_2A13C2CE8 = 0;
    qword_2A13C2CD8 = &unk_2A1F1DFC0;
    __cxa_atexit(sub_298B9CFF8, &qword_2A13C2CD8, &dword_298AD8000);
    __cxa_guard_release(&qword_2A13C2CD0);
  }

  return &qword_2A13C2CD8;
}

void sub_298B9D010(uint64_t a1, const void *a2, size_t __n)
{
  v4 = *(a1 + 64);
  v5 = v4[1];
  v6 = v5 + __n;
  if (v4[2] < v6)
  {
    v7 = a2;
    sub_298B90C08(*(a1 + 64), v4 + 3, v6, 1);
    a2 = v7;
    v5 = v4[1];
  }

  if (__n)
  {
    memcpy((*v4 + v5), a2, __n);
    v5 = v4[1];
  }

  v4[1] = v5 + __n;
}

void sub_298B9D098(uint64_t a1)
{
  sub_298B9AE14(a1);

  JUMPOUT(0x29C2945F0);
}

void sub_298B9D0E4(_BYTE *a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v36 = *MEMORY[0x29EDCA608];
  if (a2 == 1)
  {
    if (*a1 == 45)
    {
      sub_298B9CDFC();
      v8 = *(a3 + 24);
      if (v8)
      {
        v9 = *(*v8 + 48);

        v9();
        return;
      }

LABEL_39:
      v18 = sub_298AE761C();
      sub_298B9D51C(v18);
      return;
    }
  }

  else if (a2 == 9 && *a1 == 0x6C756E2F7665642FLL && a1[8] == 108)
  {
    LODWORD(v24) = 0;
    v28 = 0;
    v29 = 0;
    v30 = 1;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    v23 = &unk_2A1F1DFC0;
    v17 = *(a3 + 24);
    if (v17)
    {
      (*(*v17 + 48))(v17, &v23);
      sub_298B9AE14(&v23);
      return;
    }

    goto LABEL_39;
  }

  LOWORD(v27) = 773;
  v23 = a1;
  v24 = a2;
  v25 = ".temp-stream-%%%%%%";
  sub_298BAC1B4(&v23, 0x1B6u, 0, v32);
  if (v35)
  {
    LOWORD(v27) = 261;
    v23 = a1;
    v24 = a2;
    v11 = v32[0];
    v32[0] = 0;
    v19.__pn_.__r_.__value_.__r.__words[0] = v11;
    sub_298B73A34(&v23, 0, 0, &v19);
  }

  sub_298B9C8D4(&v23, v34, 0, 0, 0);
  v13 = *(a3 + 24);
  if (!v13)
  {
    goto LABEL_39;
  }

  (*(*v13 + 48))(&v22);
  if (!v22)
  {
    v16 = (v27 - v25);
    if (v27 != v25)
    {
      v27 = v25;
      sub_298B9BB84(&v23);
    }

    v20 = 261;
    v19.__pn_.__r_.__value_.__r.__words[0] = a1;
    v19.__pn_.__r_.__value_.__l.__size_ = a2;
    sub_298BAC020(v32, &v19, v16, a4);
    goto LABEL_31;
  }

  sub_298BABEB0(v32, &v21);
  v14 = v21;
  if (v21)
  {
    v15 = v22;
    v21 = 0;
    v22 = 0;
    v19.__pn_.__r_.__value_.__r.__words[0] = v15;
    v31 = v14;
    sub_298ADE6E8(&v19, &v31, a4);
    if (v31)
    {
      (*(*v31 + 8))(v31);
    }

    if (v19.__pn_.__r_.__value_.__r.__words[0])
    {
      (*(*v19.__pn_.__r_.__value_.__l.__data_ + 8))(v19.__pn_.__r_.__value_.__r.__words[0]);
    }

    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    if (v22)
    {
      (*(*v22 + 8))(v22);
      sub_298B9C9DC(&v23);
      if ((v35 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_14;
    }

LABEL_31:
    sub_298B9C9DC(&v23);
    if ((v35 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_14;
  }

  *a4 = v22;
  sub_298B9C9DC(&v23);
  if ((v35 & 1) == 0)
  {
LABEL_32:
    if (v33 < 0)
    {
      operator delete(v32[1]);
    }

    return;
  }

LABEL_14:
  v12 = v32[0];
  v32[0] = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }
}

void sub_298B9D51C(uint64_t a1)
{
  sub_298B9AE14(a1);

  JUMPOUT(0x29C2945F0);
}

void sub_298B9D554(void *a1, uint64_t a2)
{
  v2 = a1[8];
  v3 = (*(*a1 + 80))(a1) + a2 + a1[4] - a1[2];

  std::string::reserve(v2, v3);
}

uint64_t sub_298B9D5D0(uint64_t a1)
{
  v1 = *(a1 + 64);
  result = *(v1 + 23);
  if (result < 0)
  {
    return *(v1 + 8);
  }

  return result;
}

void sub_298B9D5E8(uint64_t a1)
{
  sub_298B9AE14(a1);

  JUMPOUT(0x29C2945F0);
}

void sub_298B9D620(void *a1, uint64_t a2)
{
  v2 = a1[8];
  v3 = (*(*a1 + 80))(a1) + a2 + a1[4] - a1[2];
  if (*(v2 + 16) < v3)
  {

    sub_298B90C08(v2, (v2 + 24), v3, 1);
  }
}

uint64_t sub_298B9D6C8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = result;
    for (i = 0; i != a3; ++i)
    {
      while (1)
      {
        v7 = *(v5 + 24);
        v8 = *(a2 + 32);
        if (v8 >= *(a2 + 24))
        {
          break;
        }

LABEL_9:
        *(a2 + 32) = v8 + 1;
        *v8 = v7;
        if (++i == a3)
        {
          return result;
        }
      }

      while (1)
      {
        v9 = *(a2 + 16);
        if (v9)
        {
          *(a2 + 32) = v9;
          result = sub_298B9BB84(a2);
          v8 = *(a2 + 32);
          goto LABEL_9;
        }

        if (!*(a2 + 56))
        {
          break;
        }

        result = sub_298B9AE98(a2);
        v8 = *(a2 + 32);
        if (v8 < *(a2 + 24))
        {
          goto LABEL_9;
        }
      }

      result = sub_298B9BB84(a2);
    }
  }

  return result;
}

uint64_t sub_298B9D79C(uint64_t a1, char *__s, int a3)
{
  if ((~a3 & 0x11) == 0)
  {
    return 16;
  }

  v85 = v3;
  v86 = v4;
  if ((a3 & 0x20) != 0)
  {
    v10 = *(a1 + 16);
    v9 = v10 - __s;
    if (v10 < __s)
    {
      return 16;
    }

    v6 = a3;
    v8 = __s;
    v7 = a1;
  }

  else
  {
    v6 = a3;
    v7 = a1;
    v8 = __s;
    v9 = strlen(__s);
  }

  v11 = malloc_type_malloc(0x18FuLL, 0x10300409EB0E935uLL);
  if (!v11)
  {
    return 12;
  }

  v12 = v11;
  v73 = 0;
  ptr[0] = 0;
  v72 = 0u;
  v13 = 3 * (v9 >> 1);
  *&v72 = v13 + 1;
  v14 = malloc_type_calloc(v13 + 1, 8uLL, 0x100004000313F17uLL);
  ptr[1] = v14;
  if (!v14)
  {
    free(v12);
    return 12;
  }

  v18 = v6;
  v74 = v12;
  v19 = v8;
  v20 = &v8[v9];
  v69 = v19;
  v70 = v20;
  LODWORD(ptr[0]) = 0;
  LODWORD(v73) = 0;
  v21 = 0uLL;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v12[4] = 256;
  *(v12 + 5) = 0;
  v22 = v12 + 5;
  *(v12 + 7) = 0;
  v12[9] = 0;
  *(v12 + 34) = 0u;
  *(v12 + 66) = 0u;
  v12[10] = v6 & 0xFFFFFF7F;
  *(v12 + 11) = v12 + 66;
  *(v12 + 12) = 0;
  v12[26] = 0;
  *(v12 + 14) = 0;
  *(v12 + 9) = 0;
  *(v12 + 10) = 0x100000000;
  *(v12 + 38) = 0u;
  *(v12 + 42) = 0u;
  *(v12 + 46) = 0u;
  *(v12 + 50) = 0u;
  *(v12 + 54) = 0u;
  *(v12 + 58) = 0u;
  *(v12 + 62) = 0u;
  *(v12 + 70) = 0u;
  *(v12 + 74) = 0u;
  *(v12 + 78) = 0u;
  *(v12 + 82) = 0u;
  *(v12 + 86) = 0u;
  *(v12 + 90) = 0u;
  *(v12 + 94) = 0u;
  v12[30] = 0;
  if (v13 < 0x7FFFFFFFFFFFFFFFLL || (v23 = (v13 + 2) / 2, v24 = ((v13 + 2 + ((v13 + 2) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v23, (v13 + 1) >= v24))
  {
    v25 = 1;
  }

  else if (v24 >> 61)
  {
    v25 = 0;
    LODWORD(ptr[0]) = 12;
    v19 = &byte_2A13C2DD8;
    v69 = &byte_2A13C2DD8;
    v70 = &byte_2A13C2DD8;
    v20 = &byte_2A13C2DD8;
  }

  else
  {
    v53 = v6;
    v54 = v19;
    v55 = v14;
    v14 = malloc_type_realloc(v14, 24 * v23, 0x100004000313F17uLL);
    if (v14)
    {
      ptr[1] = v14;
      *&v72 = 0;
      v25 = 1;
      v19 = v54;
      v18 = v53;
    }

    else
    {
      v25 = 0;
      LODWORD(ptr[0]) = 12;
      v19 = &byte_2A13C2DD8;
      v69 = &byte_2A13C2DD8;
      v70 = &byte_2A13C2DD8;
      v20 = &byte_2A13C2DD8;
      v18 = v53;
      v14 = v55;
    }
  }

  *(&v72 + 1) = 1;
  *v14 = 0x8000000;
  *(v12 + 7) = *(&v72 + 1) - 1;
  if (v18)
  {
    sub_298B9DF0C(&v69, 128, v21, v15, v16, v17);
  }

  else if ((v18 & 0x10) != 0)
  {
    if (v20 - v19 <= 0)
    {
      if (v25)
      {
        LODWORD(ptr[0]) = 14;
      }

      v19 = &byte_2A13C2DD8;
      v69 = &byte_2A13C2DD8;
      v70 = &byte_2A13C2DD8;
      v20 = &byte_2A13C2DD8;
    }

    if (v20 - v19 >= 1)
    {
      do
      {
        v69 = v19 + 1;
        v21.n128_u64[0] = sub_298BA29F0(&v69, *v19, v21.n128_f64[0], *v15.i64, *v16.i64, v17).n128_u64[0];
        v19 = v69;
      }

      while (v70 - v69 > 0);
    }
  }

  else
  {
    sub_298BA0138(&v69, 128, 128, v21, v15, v16, v17);
  }

  v26 = *(&v72 + 1);
  if (!LODWORD(ptr[0]))
  {
    if (*(&v72 + 1) < v72 || (v27 = (v72 + 1) / 2, v28 = ((v72 + 1 + ((v72 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v27, v72 >= v28))
    {
      v29 = 1;
    }

    else
    {
      if (v28 >> 61)
      {
        v29 = 0;
        LODWORD(ptr[0]) = 12;
        v69 = &byte_2A13C2DD8;
        v70 = &byte_2A13C2DD8;
        goto LABEL_35;
      }

      v56 = malloc_type_realloc(ptr[1], 24 * v27, 0x100004000313F17uLL);
      if (v56)
      {
        ptr[1] = v56;
        *&v72 = v28;
        v29 = LODWORD(ptr[0]) == 0;
      }

      else
      {
        if (!LODWORD(ptr[0]))
        {
          LODWORD(ptr[0]) = 12;
        }

        v29 = 0;
        v69 = &byte_2A13C2DD8;
        v70 = &byte_2A13C2DD8;
      }
    }

    v26 = *(&v72 + 1);
LABEL_35:
    *(&v72 + 1) = v26 + 1;
    *(ptr[1] + v26) = 0x8000000;
    v26 = *(&v72 + 1);
    *(v12 + 8) = *(&v72 + 1) - 1;
    if (v29)
    {
      v30 = *(v12 + 11);
      for (i = -128; i != 128; ++i)
      {
        if (!*(v30 + i) && *v22 >= 1)
        {
          v32 = (*v22 + 7) >> 3;
          v33 = *(v12 + 4);
          while (!*(v33 + i))
          {
            v33 += v12[4];
            if (!--v32)
            {
              goto LABEL_37;
            }
          }

          v34 = v12[21];
          v12[21] = v34 + 1;
          *(v30 + i) = v34;
          if (i <= 126)
          {
            v35 = i;
            do
            {
              ++v35;
              if (!*(v30 + v35))
              {
                if (*v22 < 1)
                {
LABEL_46:
                  *(v30 + v35) = v34;
                }

                else
                {
                  v36 = (*v22 + 7) >> 3;
                  v37 = *(v12 + 4);
                  while (*(v37 + i) == *(v37 + v35))
                  {
                    v37 += v12[4];
                    if (!--v36)
                    {
                      goto LABEL_46;
                    }
                  }
                }
              }
            }

            while (v35 != 127);
          }
        }

LABEL_37:
        ;
      }

      v26 = *(&v72 + 1);
    }

    goto LABEL_55;
  }

  *(v12 + 8) = *(&v72 + 1) - 1;
LABEL_55:
  *(v12 + 6) = v26;
  if (v26 >> 61)
  {
    *(v12 + 1) = ptr[1];
    LODWORD(v38) = ptr[0];
    v39 = v7;
    if (!LODWORD(ptr[0]))
    {
      LODWORD(v38) = 12;
      LODWORD(ptr[0]) = 12;
    }

    v40 = 0;
    v41 = 0;
    v69 = &byte_2A13C2DD8;
    v70 = &byte_2A13C2DD8;
    goto LABEL_86;
  }

  v42 = malloc_type_realloc(ptr[1], 8 * v26, 0x100004000313F17uLL);
  *(v12 + 1) = v42;
  LODWORD(v38) = ptr[0];
  if (!v42)
  {
    v39 = v7;
    if (!LODWORD(ptr[0]))
    {
      LODWORD(v38) = 12;
      LODWORD(ptr[0]) = 12;
    }

    v40 = 0;
    v41 = 0;
    v69 = &byte_2A13C2DD8;
    v70 = &byte_2A13C2DD8;
    *(v12 + 1) = ptr[1];
    goto LABEL_86;
  }

  v43 = v42;
  v39 = v7;
  if (LODWORD(ptr[0]))
  {
    goto LABEL_85;
  }

  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = (v43 + 8);
  v48 = (v43 + 8);
  do
  {
    v50 = *v48++;
    LODWORD(v49) = v50;
    v51 = ((v50 & 0xF8000000) - 0x10000000) >> 27;
    if (v51 > 0xD)
    {
      goto LABEL_76;
    }

    if (((1 << v51) & 0x1880) != 0)
    {
      goto LABEL_63;
    }

    if (((1 << v51) & 0x2200) != 0)
    {
      v48 = v47;
      while (1)
      {
        v48 += v49 & 0x7FFFFFF;
        v49 = *v48;
        v52 = *v48 & 0xF8000000;
        if (v52 == 1610612736)
        {
          break;
        }

        if (v52 != -2013265920)
        {
          if (v52 == -1879048192)
          {
            break;
          }

          v12[18] |= 4u;
          goto LABEL_84;
        }
      }

LABEL_76:
      if (v46 > v12[26])
      {
        v12[26] = v46;
        v44 = v45;
      }

      v46 = 0;
      goto LABEL_63;
    }

    if (v51)
    {
      goto LABEL_76;
    }

    if (!v46)
    {
      v45 = v47;
    }

    ++v46;
LABEL_63:
    v47 = v48;
  }

  while ((v49 & 0xF8000000) != 0x8000000);
  v62 = v12[26];
  if (v62)
  {
    v63 = malloc_type_malloc(v62 + 1, 0xAAABC376uLL);
    *(v12 + 12) = v63;
    if (v63)
    {
      v64 = v63;
      v65 = v12[26];
      if (v65 < 1)
      {
        v39 = v7;
      }

      else
      {
        v39 = v7;
        do
        {
          do
          {
            v67 = *v44++;
            v66 = v67;
          }

          while ((v67 & 0xF8000000) != 0x10000000);
          *v64++ = v66;
        }

        while (v65-- > 1);
      }

      *v64 = 0;
    }

    else
    {
      v12[26] = 0;
      v39 = v7;
    }
  }

LABEL_84:
  LODWORD(v38) = ptr[0];
  if (LODWORD(ptr[0]))
  {
LABEL_85:
    v40 = 0;
    v41 = 0;
  }

  else
  {
    v38 = 0;
    v41 = 0;
    v57 = (*(v12 + 1) + 8);
    do
    {
      v58 = *v57++;
      v59 = v58 & 0xF8000000;
      if (v38 <= v41)
      {
        v60 = v41;
      }

      else
      {
        v60 = v38;
      }

      v61 = v38 - 1;
      if (v59 == 1207959552)
      {
        ++v38;
      }

      if (v59 == 1342177280)
      {
        v38 = v61;
        v41 = v60;
      }
    }

    while (v59 != 0x8000000);
    if (v38)
    {
      LODWORD(v38) = 0;
      v12[18] |= 4u;
    }

    v40 = 1;
  }

LABEL_86:
  *(v12 + 16) = v41;
  *v12 = 53829;
  *(v39 + 8) = *(v12 + 14);
  *(v39 + 24) = v12;
  *v39 = 62053;
  if ((v12[18] & 4) != 0)
  {
    if (v40)
    {
      LODWORD(v38) = 15;
      LODWORD(ptr[0]) = 15;
    }

    v69 = &byte_2A13C2DD8;
    v70 = &byte_2A13C2DD8;
  }

  if (!v38)
  {
    return 0;
  }

  sub_298BA71B0(v39);
  return LODWORD(ptr[0]);
}

void sub_298B9DF0C(void *result, int a2, __n128 a3, int32x4_t a4, int32x4_t a5, int32x4_t a6)
{
  v284 = 0;
  v285 = 0;
  v286 = 0;
  v8 = result + 18;
  v282 = result + 18;
  v283 = result + 8;
  while (2)
  {
    v9 = result[5];
    v11 = *result;
    v12 = result[1];
    if (&v12[-*result] < 1)
    {
LABEL_503:
      if (!*(result + 4))
      {
        *(result + 4) = 14;
      }

      *result = &byte_2A13C2DD8;
      result[1] = &byte_2A13C2DD8;
      v14 = v9;
      v11 = &byte_2A13C2DD8;
      v12 = &byte_2A13C2DD8;
      goto LABEL_506;
    }

    while (1)
    {
      v13 = *v11;
      v14 = result[5];
      if (v13 == 124 || v13 == a2)
      {
        break;
      }

      v16 = v11 + 1;
      *result = v11 + 1;
      v17 = *v11;
      if (v17 <= 62)
      {
        if (v17 <= 41)
        {
          if (v17 != 36)
          {
            if (v17 == 40)
            {
              if (v12 - v16 > 0)
              {
                v29 = result[7];
                v30 = *(v29 + 112) + 1;
                *(v29 + 112) = v30;
                if (v30 <= 9)
                {
                  goto LABEL_58;
                }

LABEL_86:
                if (*(result + 4))
                {
                  goto LABEL_87;
                }

LABEL_59:
                v31 = result[4];
                if (result[5] >= v31)
                {
                  v32 = (v31 + 1) / 2;
                  v33 = ((v31 + 1 + ((v31 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v32;
                  if (v31 < v33)
                  {
                    if (v33 >> 61)
                    {
                      *(result + 4) = 12;
                      v16 = &byte_2A13C2DD8;
                      v12 = &byte_2A13C2DD8;
                      *result = &byte_2A13C2DD8;
                      result[1] = &byte_2A13C2DD8;
                    }

                    else
                    {
                      v54 = malloc_type_realloc(result[3], 24 * v32, 0x100004000313F17uLL);
                      if (v54)
                      {
                        result[3] = v54;
                        result[4] = v33;
                        v16 = *result;
                        v12 = result[1];
                      }

                      else
                      {
                        if (!*(result + 4))
                        {
                          *(result + 4) = 12;
                        }

                        *result = &byte_2A13C2DD8;
                        result[1] = &byte_2A13C2DD8;
                        v16 = &byte_2A13C2DD8;
                        v12 = &byte_2A13C2DD8;
                      }
                    }
                  }
                }

                v58 = result[3];
                v59 = result[5];
                result[5] = v59 + 1;
                *(v58 + 8 * v59) = v30 | 0x68000000;
                v8 = v282;
                if (v12 - v16 >= 1)
                {
                  goto LABEL_120;
                }

LABEL_128:
                sub_298B9DF0C(result, 41);
                if (v30 > 9)
                {
                  goto LABEL_129;
                }

LABEL_122:
                v8[v30] = result[5];
                if (!*(result + 4))
                {
                  goto LABEL_123;
                }

LABEL_130:
                v63 = *result;
                if ((result[1] - *result) < 1)
                {
LABEL_136:
                  if (!*(result + 4))
                  {
                    v19 = 8;
LABEL_138:
                    *(result + 4) = v19;
                  }

                  goto LABEL_139;
                }

LABEL_135:
                *result = v63 + 1;
                if (*v63 == 41)
                {
                  goto LABEL_140;
                }

                goto LABEL_136;
              }

              if (!*(result + 4))
              {
                *(result + 4) = 8;
              }

              *result = &byte_2A13C2DD8;
              result[1] = &byte_2A13C2DD8;
              v16 = &byte_2A13C2DD8;
              v12 = &byte_2A13C2DD8;
              v41 = result[7];
              v30 = *(v41 + 112) + 1;
              *(v41 + 112) = v30;
              if (v30 > 9)
              {
                goto LABEL_86;
              }

LABEL_58:
              v283[v30] = v14;
              if (!*(result + 4))
              {
                goto LABEL_59;
              }

LABEL_87:
              if (v12 - v16 < 1)
              {
                goto LABEL_128;
              }

LABEL_120:
              if (*v16 != 41)
              {
                goto LABEL_128;
              }

              if (v30 <= 9)
              {
                goto LABEL_122;
              }

LABEL_129:
              if (*(result + 4))
              {
                goto LABEL_130;
              }

LABEL_123:
              v60 = result[4];
              if (result[5] >= v60)
              {
                v61 = (v60 + 1) / 2;
                v62 = ((v60 + 1 + ((v60 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v61;
                if (v60 < v62)
                {
                  if (v62 >> 61)
                  {
                    goto LABEL_126;
                  }

                  v64 = malloc_type_realloc(result[3], 24 * v61, 0x100004000313F17uLL);
                  if (v64)
                  {
                    result[3] = v64;
                    result[4] = v62;
                  }

                  else
                  {
                    if (!*(result + 4))
                    {
LABEL_126:
                      *(result + 4) = 12;
                    }

                    *result = &byte_2A13C2DD8;
                    result[1] = &byte_2A13C2DD8;
                  }
                }
              }

              v65 = result[3];
              v66 = result[5];
              result[5] = v66 + 1;
              *(v65 + 8 * v66) = v30 | 0x70000000;
              v63 = *result;
              if ((result[1] - *result) < 1)
              {
                goto LABEL_136;
              }

              goto LABEL_135;
            }

            if (v17 == 41)
            {
              goto LABEL_136;
            }

            goto LABEL_70;
          }

          if (!*(result + 4))
          {
            v23 = result[4];
            if (v14 >= v23)
            {
              v24 = (v23 + 1) / 2;
              v25 = ((v23 + 1 + ((v23 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v24;
              if (v23 < v25)
              {
                if (v25 >> 61)
                {
                  goto LABEL_48;
                }

                v45 = malloc_type_realloc(result[3], 24 * v24, 0x100004000313F17uLL);
                if (v45)
                {
                  result[3] = v45;
                  result[4] = v25;
                }

                else
                {
                  if (!*(result + 4))
                  {
LABEL_48:
                    *(result + 4) = 12;
                  }

                  *result = &byte_2A13C2DD8;
                  result[1] = &byte_2A13C2DD8;
                }
              }
            }

            v46 = result[3];
            v47 = result[5];
            result[5] = v47 + 1;
            *(v46 + 8 * v47) = 0x20000000;
          }

          v48 = result[7];
          *(v48 + 72) |= 2u;
          ++*(v48 + 80);
          v34 = 1;
          v11 = *result;
          v12 = result[1];
          v35 = &v12[-*result];
          if (v35 < 1)
          {
            goto LABEL_10;
          }

          goto LABEL_141;
        }

        if ((v17 - 42) < 2)
        {
LABEL_29:
          if (!*(result + 4))
          {
            v19 = 13;
            goto LABEL_138;
          }

          goto LABEL_139;
        }

        if (v17 != 46)
        {
          goto LABEL_70;
        }

        if ((*(result[7] + 40) & 8) != 0)
        {
          *result = "^\n]";
          result[1] = "";
          sub_298BA1398(result, a3, a4, a5, a6);
          *result = v16;
          result[1] = v12;
          v34 = 1;
          v11 = *result;
          v12 = result[1];
          v35 = &v12[-*result];
          if (v35 < 1)
          {
            goto LABEL_10;
          }

          goto LABEL_141;
        }

        if (*(result + 4))
        {
          goto LABEL_140;
        }

        v20 = result[4];
        if (v14 >= v20)
        {
          v21 = (v20 + 1) / 2;
          v22 = ((v20 + 1 + ((v20 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v21;
          if (v20 < v22)
          {
            if (v22 >> 61)
            {
              goto LABEL_42;
            }

            v55 = malloc_type_realloc(result[3], 24 * v21, 0x100004000313F17uLL);
            if (v55)
            {
              result[3] = v55;
              result[4] = v22;
            }

            else
            {
              if (!*(result + 4))
              {
LABEL_42:
                *(result + 4) = 12;
              }

              *result = &byte_2A13C2DD8;
              result[1] = &byte_2A13C2DD8;
            }
          }
        }

        v56 = result[3];
        v57 = result[5];
        result[5] = v57 + 1;
        *(v56 + 8 * v57) = 671088640;
        v34 = 1;
        v11 = *result;
        v12 = result[1];
        v35 = &v12[-*result];
        if (v35 < 1)
        {
          goto LABEL_10;
        }

        goto LABEL_141;
      }

      if (v17 > 93)
      {
        if (v17 != 94)
        {
          if (v17 == 123)
          {
            if (v12 - v16 >= 1 && *v16 - 48 <= 9)
            {
              if (!*(result + 4))
              {
                *(result + 4) = 13;
              }

              *result = &byte_2A13C2DD8;
              result[1] = &byte_2A13C2DD8;
            }
          }

          else if (v17 == 124)
          {
            if (!*(result + 4))
            {
              v19 = 14;
              goto LABEL_138;
            }

            goto LABEL_139;
          }

LABEL_70:
          v18 = v17;
LABEL_71:
          a3 = sub_298BA29F0(result, v18, a3.n128_f64[0], *a4.i64, *a5.i64, a6);
          v34 = 1;
          v11 = *result;
          v12 = result[1];
          v35 = &v12[-*result];
          if (v35 < 1)
          {
            goto LABEL_10;
          }

          goto LABEL_141;
        }

        if (!*(result + 4))
        {
          v26 = result[4];
          if (v14 >= v26)
          {
            v27 = (v26 + 1) / 2;
            v28 = ((v26 + 1 + ((v26 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v27;
            if (v26 < v28)
            {
              if (v28 >> 61)
              {
                goto LABEL_54;
              }

              v49 = malloc_type_realloc(result[3], 24 * v27, 0x100004000313F17uLL);
              if (v49)
              {
                result[3] = v49;
                result[4] = v28;
              }

              else
              {
                if (!*(result + 4))
                {
LABEL_54:
                  *(result + 4) = 12;
                }

                *result = &byte_2A13C2DD8;
                result[1] = &byte_2A13C2DD8;
              }
            }
          }

          v50 = result[3];
          v51 = result[5];
          result[5] = v51 + 1;
          *(v50 + 8 * v51) = 402653184;
        }

        v34 = 0;
        v52 = result[7];
        v53 = v52[9];
        *a4.i8 = vadd_s32(v53, 0x100000001);
        a3.n128_u32[0] = v53.i32[0] | 1;
        a3.n128_u32[1] = a4.u32[1];
        v52[9] = a3.n128_u64[0];
        v11 = *result;
        v12 = result[1];
        v35 = &v12[-*result];
        if (v35 < 1)
        {
          goto LABEL_10;
        }

        goto LABEL_141;
      }

      if (v17 == 63)
      {
        goto LABEL_29;
      }

      if (v17 == 91)
      {
        sub_298BA1398(result, a3, a4, a5, a6);
        v34 = 1;
        v11 = *result;
        v12 = result[1];
        v35 = &v12[-*result];
        if (v35 < 1)
        {
          goto LABEL_10;
        }

        goto LABEL_141;
      }

      if (v17 != 92)
      {
        goto LABEL_70;
      }

      if (v12 - v16 <= 0)
      {
        if (!*(result + 4))
        {
          *(result + 4) = 5;
        }

        *result = &byte_2A13C2DD9;
        result[1] = &byte_2A13C2DD8;
        v18 = byte_2A13C2DD8;
        if ((byte_2A13C2DD8 - 49) > 8)
        {
          goto LABEL_71;
        }
      }

      else
      {
        *result = v16 + 1;
        v18 = *v16;
        if ((v18 - 49) > 8)
        {
          goto LABEL_71;
        }
      }

      v36 = (v18 - 48);
      v37 = v8[v36];
      v38 = *(result + 4);
      if (!v37)
      {
        if (!v38)
        {
          v19 = 6;
          goto LABEL_138;
        }

LABEL_139:
        *result = &byte_2A13C2DD8;
        result[1] = &byte_2A13C2DD8;
LABEL_140:
        v34 = 1;
        v11 = *result;
        v12 = result[1];
        v35 = &v12[-*result];
        if (v35 < 1)
        {
          goto LABEL_10;
        }

        goto LABEL_141;
      }

      if (v38)
      {
        v39 = v283[v36] + 1;
        v40 = v37 - v39;
        if (v37 == v39)
        {
          goto LABEL_81;
        }

        goto LABEL_391;
      }

      v42 = result[4];
      if (v14 >= v42)
      {
        v43 = (v42 + 1) / 2;
        v44 = ((v42 + 1 + ((v42 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v43;
        if (v42 < v44)
        {
          if (v44 >> 61)
          {
            goto LABEL_94;
          }

          v192 = malloc_type_realloc(result[3], 24 * v43, 0x100004000313F17uLL);
          if (!v192)
          {
            if (!*(result + 4))
            {
LABEL_94:
              *(result + 4) = 12;
            }

            *result = &byte_2A13C2DD8;
            result[1] = &byte_2A13C2DD8;
            goto LABEL_390;
          }

          result[3] = v192;
          result[4] = v44;
        }
      }

LABEL_390:
      v193 = result[3];
      v194 = result[5];
      result[5] = v194 + 1;
      *(v193 + 8 * v194) = v36 | 0x38000000;
      v195 = v8[v36];
      v39 = v283[v36] + 1;
      v40 = v195 - v39;
      if (v195 == v39)
      {
LABEL_81:
        if (*(result + 4))
        {
          goto LABEL_408;
        }

LABEL_400:
        v198 = result[4];
        if (result[5] >= v198)
        {
          v199 = (v198 + 1) / 2;
          v200 = ((v198 + 1 + ((v198 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v199;
          if (v198 < v200)
          {
            if (v200 >> 61)
            {
              goto LABEL_403;
            }

            v201 = malloc_type_realloc(result[3], 24 * v199, 0x100004000313F17uLL);
            if (v201)
            {
              result[3] = v201;
              result[4] = v200;
            }

            else
            {
              if (!*(result + 4))
              {
LABEL_403:
                *(result + 4) = 12;
              }

              *result = &byte_2A13C2DD8;
              result[1] = &byte_2A13C2DD8;
            }
          }
        }

        v202 = result[3];
        v203 = result[5];
        result[5] = v203 + 1;
        *(v202 + 8 * v203) = v36 | 0x40000000;
        goto LABEL_408;
      }

LABEL_391:
      if (v40 >= 1)
      {
        v196 = result[4] + v40;
        if (v196 >> 61 || (v197 = malloc_type_realloc(result[3], 8 * v196, 0x100004000313F17uLL)) == 0)
        {
          if (!*(result + 4))
          {
            *(result + 4) = 12;
          }

          *result = &byte_2A13C2DD8;
          result[1] = &byte_2A13C2DD8;
        }

        else
        {
          result[3] = v197;
          result[4] = v196;
        }

        v8 = v282;
      }

      memmove((result[3] + 8 * result[5]), (result[3] + 8 * v39), 8 * v40);
      result[5] += v40;
      if (!*(result + 4))
      {
        goto LABEL_400;
      }

LABEL_408:
      v34 = 1;
      *(result[7] + 120) = 1;
      v11 = *result;
      v12 = result[1];
      v35 = &v12[-*result];
      if (v35 < 1)
      {
        goto LABEL_10;
      }

LABEL_141:
      v67 = *v11;
      if ((v67 - 42) < 2 || v67 == 63 || v67 == 123 && v35 != 1 && v11[1] - 48 <= 9)
      {
        v68 = v11 + 1;
        *result = v11 + 1;
        if ((v34 & 1) == 0)
        {
          if (!*(result + 4))
          {
            *(result + 4) = 13;
          }

          *result = &byte_2A13C2DD8;
          result[1] = &byte_2A13C2DD8;
          v68 = &byte_2A13C2DD8;
          v12 = &byte_2A13C2DD8;
        }

        if (v67 <= 62)
        {
          if (v67 != 42)
          {
            if (v67 == 43 && !*(result + 4))
            {
              v69 = result[4];
              v70 = result[5];
              if (v70 >= v69)
              {
                v71 = (v69 + 1) / 2;
                v72 = ((v69 + 1 + ((v69 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v71;
                if (v69 < v72)
                {
                  if (v72 >> 61)
                  {
                    goto LABEL_157;
                  }

                  v91 = malloc_type_realloc(result[3], 24 * v71, 0x100004000313F17uLL);
                  if (v91)
                  {
                    result[3] = v91;
                    result[4] = v72;
                  }

                  else
                  {
                    if (!*(result + 4))
                    {
LABEL_157:
                      *(result + 4) = 12;
                    }

                    *result = &byte_2A13C2DD8;
                    result[1] = &byte_2A13C2DD8;
                  }
                }
              }

              v92 = result[3];
              v93 = result[5];
              result[5] = v93 + 1;
              *(v92 + 8 * v93) = (v70 - v14 + 1) | 0x48000000;
              v94 = *(v92 + 8 * v70);
              v95 = result[9];
              if (v95 >= v14)
              {
                result[9] = v95 + 1;
                v96 = result[19];
                if (v96 >= v14)
                {
                  goto LABEL_231;
                }

LABEL_208:
                v97 = result[10];
                if (v97 < v14)
                {
                  goto LABEL_209;
                }

LABEL_232:
                result[10] = v97 + 1;
                v98 = result[20];
                if (v98 >= v14)
                {
                  goto LABEL_233;
                }

LABEL_210:
                v99 = result[11];
                if (v99 < v14)
                {
                  goto LABEL_211;
                }

LABEL_234:
                result[11] = v99 + 1;
                v100 = result[21];
                if (v100 >= v14)
                {
                  goto LABEL_235;
                }

LABEL_212:
                v101 = result[12];
                if (v101 < v14)
                {
                  goto LABEL_213;
                }

LABEL_236:
                result[12] = v101 + 1;
                v102 = result[22];
                if (v102 >= v14)
                {
                  goto LABEL_237;
                }

LABEL_214:
                v103 = result[13];
                if (v103 < v14)
                {
                  goto LABEL_215;
                }

LABEL_238:
                result[13] = v103 + 1;
                v104 = result[23];
                if (v104 >= v14)
                {
                  goto LABEL_239;
                }

LABEL_216:
                v105 = result[14];
                if (v105 < v14)
                {
                  goto LABEL_217;
                }

LABEL_240:
                result[14] = v105 + 1;
                v106 = result[24];
                if (v106 >= v14)
                {
                  goto LABEL_241;
                }

LABEL_218:
                v107 = result[15];
                if (v107 < v14)
                {
                  goto LABEL_219;
                }

LABEL_242:
                result[15] = v107 + 1;
                v108 = result[25];
                if (v108 >= v14)
                {
                  goto LABEL_243;
                }

LABEL_220:
                v109 = result[16];
                if (v109 < v14)
                {
                  goto LABEL_221;
                }

LABEL_244:
                result[16] = v109 + 1;
                v110 = result[26];
                if (v110 >= v14)
                {
                  goto LABEL_245;
                }

LABEL_222:
                v111 = result[17];
                if (v111 < v14)
                {
                  goto LABEL_223;
                }

LABEL_246:
                result[17] = v111 + 1;
                v112 = result[27];
                if (v112 >= v14)
                {
LABEL_224:
                  result[27] = v112 + 1;
                }
              }

              else
              {
                v96 = result[19];
                if (v96 < v14)
                {
                  goto LABEL_208;
                }

LABEL_231:
                result[19] = v96 + 1;
                v97 = result[10];
                if (v97 >= v14)
                {
                  goto LABEL_232;
                }

LABEL_209:
                v98 = result[20];
                if (v98 < v14)
                {
                  goto LABEL_210;
                }

LABEL_233:
                result[20] = v98 + 1;
                v99 = result[11];
                if (v99 >= v14)
                {
                  goto LABEL_234;
                }

LABEL_211:
                v100 = result[21];
                if (v100 < v14)
                {
                  goto LABEL_212;
                }

LABEL_235:
                result[21] = v100 + 1;
                v101 = result[12];
                if (v101 >= v14)
                {
                  goto LABEL_236;
                }

LABEL_213:
                v102 = result[22];
                if (v102 < v14)
                {
                  goto LABEL_214;
                }

LABEL_237:
                result[22] = v102 + 1;
                v103 = result[13];
                if (v103 >= v14)
                {
                  goto LABEL_238;
                }

LABEL_215:
                v104 = result[23];
                if (v104 < v14)
                {
                  goto LABEL_216;
                }

LABEL_239:
                result[23] = v104 + 1;
                v105 = result[14];
                if (v105 >= v14)
                {
                  goto LABEL_240;
                }

LABEL_217:
                v106 = result[24];
                if (v106 < v14)
                {
                  goto LABEL_218;
                }

LABEL_241:
                result[24] = v106 + 1;
                v107 = result[15];
                if (v107 >= v14)
                {
                  goto LABEL_242;
                }

LABEL_219:
                v108 = result[25];
                if (v108 < v14)
                {
                  goto LABEL_220;
                }

LABEL_243:
                result[25] = v108 + 1;
                v109 = result[16];
                if (v109 >= v14)
                {
                  goto LABEL_244;
                }

LABEL_221:
                v110 = result[26];
                if (v110 < v14)
                {
                  goto LABEL_222;
                }

LABEL_245:
                result[26] = v110 + 1;
                v111 = result[17];
                if (v111 >= v14)
                {
                  goto LABEL_246;
                }

LABEL_223:
                v112 = result[27];
                if (v112 >= v14)
                {
                  goto LABEL_224;
                }
              }

              memmove((v92 + 8 * v14 + 8), (v92 + 8 * v14), 8 * (result[5] + ~v14));
              v113 = result[3];
              v113[v14] = v94;
              if (!*(result + 4))
              {
                v114 = result[4];
                v115 = result[5];
                if (v115 >= v114)
                {
                  v116 = (v114 + 1) / 2;
                  v117 = ((v114 + 1 + ((v114 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v116;
                  if (v114 < v117)
                  {
                    if (v117 >> 61)
                    {
                      *(result + 4) = 12;
                      *result = &byte_2A13C2DD8;
                      result[1] = &byte_2A13C2DD8;
                    }

                    else
                    {
                      v113 = malloc_type_realloc(v113, 24 * v116, 0x100004000313F17uLL);
                      if (v113)
                      {
                        result[3] = v113;
                        result[4] = v117;
                      }

                      else
                      {
                        if (!*(result + 4))
                        {
                          *(result + 4) = 12;
                        }

                        *result = &byte_2A13C2DD8;
                        result[1] = &byte_2A13C2DD8;
                        v113 = result[3];
                      }
                    }
                  }
                }

                v206 = (v115 - v14) | 0x50000000;
                goto LABEL_421;
              }
            }

            goto LABEL_363;
          }

          if (*(result + 4))
          {
            goto LABEL_363;
          }

          v78 = result[4];
          v79 = result[5];
          if (v79 >= v78)
          {
            v80 = (v78 + 1) / 2;
            v81 = ((v78 + 1 + ((v78 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v80;
            if (v78 < v81)
            {
              if (v81 >> 61)
              {
                goto LABEL_172;
              }

              v118 = malloc_type_realloc(result[3], 24 * v80, 0x100004000313F17uLL);
              if (v118)
              {
                result[3] = v118;
                result[4] = v81;
              }

              else
              {
                if (!*(result + 4))
                {
LABEL_172:
                  *(result + 4) = 12;
                }

                *result = &byte_2A13C2DD8;
                result[1] = &byte_2A13C2DD8;
              }
            }
          }

          v119 = result[3];
          v120 = result[5];
          result[5] = v120 + 1;
          *(v119 + 8 * v120) = (v79 - v14 + 1) | 0x48000000;
          v121 = *(v119 + 8 * v79);
          v122 = result[9];
          if (v122 >= v14)
          {
            result[9] = v122 + 1;
            v123 = result[19];
            if (v123 >= v14)
            {
              goto LABEL_273;
            }

LABEL_252:
            v124 = result[10];
            if (v124 < v14)
            {
              goto LABEL_253;
            }

LABEL_274:
            result[10] = v124 + 1;
            v125 = result[20];
            if (v125 >= v14)
            {
              goto LABEL_275;
            }

LABEL_254:
            v126 = result[11];
            if (v126 < v14)
            {
              goto LABEL_255;
            }

LABEL_276:
            result[11] = v126 + 1;
            v127 = result[21];
            if (v127 >= v14)
            {
              goto LABEL_277;
            }

LABEL_256:
            v128 = result[12];
            if (v128 < v14)
            {
              goto LABEL_257;
            }

LABEL_278:
            result[12] = v128 + 1;
            v129 = result[22];
            if (v129 >= v14)
            {
              goto LABEL_279;
            }

LABEL_258:
            v130 = result[13];
            if (v130 < v14)
            {
              goto LABEL_259;
            }

LABEL_280:
            result[13] = v130 + 1;
            v131 = result[23];
            if (v131 >= v14)
            {
              goto LABEL_281;
            }

LABEL_260:
            v132 = result[14];
            if (v132 < v14)
            {
              goto LABEL_261;
            }

LABEL_282:
            result[14] = v132 + 1;
            v133 = result[24];
            if (v133 >= v14)
            {
              goto LABEL_283;
            }

LABEL_262:
            v134 = result[15];
            if (v134 < v14)
            {
              goto LABEL_263;
            }

LABEL_284:
            result[15] = v134 + 1;
            v135 = result[25];
            if (v135 >= v14)
            {
              goto LABEL_285;
            }

LABEL_264:
            v136 = result[16];
            if (v136 < v14)
            {
              goto LABEL_265;
            }

LABEL_286:
            result[16] = v136 + 1;
            v137 = result[26];
            if (v137 >= v14)
            {
              goto LABEL_287;
            }

LABEL_266:
            v138 = result[17];
            if (v138 < v14)
            {
              goto LABEL_267;
            }

LABEL_288:
            result[17] = v138 + 1;
            v139 = result[27];
            if (v139 >= v14)
            {
LABEL_268:
              result[27] = v139 + 1;
            }
          }

          else
          {
            v123 = result[19];
            if (v123 < v14)
            {
              goto LABEL_252;
            }

LABEL_273:
            result[19] = v123 + 1;
            v124 = result[10];
            if (v124 >= v14)
            {
              goto LABEL_274;
            }

LABEL_253:
            v125 = result[20];
            if (v125 < v14)
            {
              goto LABEL_254;
            }

LABEL_275:
            result[20] = v125 + 1;
            v126 = result[11];
            if (v126 >= v14)
            {
              goto LABEL_276;
            }

LABEL_255:
            v127 = result[21];
            if (v127 < v14)
            {
              goto LABEL_256;
            }

LABEL_277:
            result[21] = v127 + 1;
            v128 = result[12];
            if (v128 >= v14)
            {
              goto LABEL_278;
            }

LABEL_257:
            v129 = result[22];
            if (v129 < v14)
            {
              goto LABEL_258;
            }

LABEL_279:
            result[22] = v129 + 1;
            v130 = result[13];
            if (v130 >= v14)
            {
              goto LABEL_280;
            }

LABEL_259:
            v131 = result[23];
            if (v131 < v14)
            {
              goto LABEL_260;
            }

LABEL_281:
            result[23] = v131 + 1;
            v132 = result[14];
            if (v132 >= v14)
            {
              goto LABEL_282;
            }

LABEL_261:
            v133 = result[24];
            if (v133 < v14)
            {
              goto LABEL_262;
            }

LABEL_283:
            result[24] = v133 + 1;
            v134 = result[15];
            if (v134 >= v14)
            {
              goto LABEL_284;
            }

LABEL_263:
            v135 = result[25];
            if (v135 < v14)
            {
              goto LABEL_264;
            }

LABEL_285:
            result[25] = v135 + 1;
            v136 = result[16];
            if (v136 >= v14)
            {
              goto LABEL_286;
            }

LABEL_265:
            v137 = result[26];
            if (v137 < v14)
            {
              goto LABEL_266;
            }

LABEL_287:
            result[26] = v137 + 1;
            v138 = result[17];
            if (v138 >= v14)
            {
              goto LABEL_288;
            }

LABEL_267:
            v139 = result[27];
            if (v139 >= v14)
            {
              goto LABEL_268;
            }
          }

          memmove((v119 + 8 * v14 + 8), (v119 + 8 * v14), 8 * (result[5] + ~v14));
          v140 = result[3];
          v140[v14] = v121;
          if (*(result + 4))
          {
            goto LABEL_363;
          }

          v141 = result[4];
          v142 = result[5];
          if (v142 >= v141)
          {
            v144 = (v141 + 1) / 2;
            v145 = ((v141 + 1 + ((v141 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v144;
            if (v141 >= v145)
            {
              v143 = 1;
            }

            else if (v145 >> 61)
            {
              v143 = 0;
              *(result + 4) = 12;
              *result = &byte_2A13C2DD8;
              result[1] = &byte_2A13C2DD8;
            }

            else
            {
              v140 = malloc_type_realloc(v140, 24 * v144, 0x100004000313F17uLL);
              if (v140)
              {
                result[3] = v140;
                result[4] = v145;
                v143 = *(result + 4) == 0;
              }

              else
              {
                if (!*(result + 4))
                {
                  *(result + 4) = 12;
                }

                v143 = 0;
                *result = &byte_2A13C2DD8;
                result[1] = &byte_2A13C2DD8;
                v140 = result[3];
              }
            }

            v8 = v282;
          }

          else
          {
            v143 = 1;
          }

          v208 = result[5];
          result[5] = v208 + 1;
          v140[v208] = (v142 - v14) | 0x50000000;
          if (!v143)
          {
            goto LABEL_363;
          }

          v209 = result[4];
          v210 = result[5];
          if (v210 >= v209)
          {
            v211 = (v209 + 1) / 2;
            v212 = ((v209 + 1 + ((v209 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v211;
            if (v209 < v212)
            {
              if (v212 >> 61)
              {
                *(result + 4) = 12;
                *result = &byte_2A13C2DD8;
                result[1] = &byte_2A13C2DD8;
              }

              else
              {
                v140 = malloc_type_realloc(v140, 24 * v211, 0x100004000313F17uLL);
                if (v140)
                {
                  result[3] = v140;
                  result[4] = v212;
                }

                else
                {
                  if (!*(result + 4))
                  {
                    *(result + 4) = 12;
                  }

                  *result = &byte_2A13C2DD8;
                  result[1] = &byte_2A13C2DD8;
                  v140 = result[3];
                }
              }
            }

            v8 = v282;
          }

          v214 = result[5];
          result[5] = v214 + 1;
          v140[v214] = (v210 - v14 + 1) | 0x58000000;
          v215 = v140[v210];
          v216 = result[9];
          if (v216 >= v14)
          {
            result[9] = v216 + 1;
            v217 = result[19];
            if (v217 >= v14)
            {
              goto LABEL_478;
            }

LABEL_455:
            v218 = result[10];
            if (v218 < v14)
            {
              goto LABEL_456;
            }

LABEL_479:
            result[10] = v218 + 1;
            v219 = result[20];
            if (v219 >= v14)
            {
              goto LABEL_480;
            }

LABEL_457:
            v220 = result[11];
            if (v220 < v14)
            {
              goto LABEL_458;
            }

LABEL_481:
            result[11] = v220 + 1;
            v221 = result[21];
            if (v221 >= v14)
            {
              goto LABEL_482;
            }

LABEL_459:
            v222 = result[12];
            if (v222 < v14)
            {
              goto LABEL_460;
            }

LABEL_483:
            result[12] = v222 + 1;
            v223 = result[22];
            if (v223 >= v14)
            {
              goto LABEL_484;
            }

LABEL_461:
            v224 = result[13];
            if (v224 < v14)
            {
              goto LABEL_462;
            }

LABEL_485:
            result[13] = v224 + 1;
            v225 = result[23];
            if (v225 >= v14)
            {
              goto LABEL_486;
            }

LABEL_463:
            v226 = result[14];
            if (v226 < v14)
            {
              goto LABEL_464;
            }

LABEL_487:
            result[14] = v226 + 1;
            v227 = result[24];
            if (v227 >= v14)
            {
              goto LABEL_488;
            }

LABEL_465:
            v228 = result[15];
            if (v228 < v14)
            {
              goto LABEL_466;
            }

LABEL_489:
            result[15] = v228 + 1;
            v229 = result[25];
            if (v229 >= v14)
            {
              goto LABEL_490;
            }

LABEL_467:
            v230 = result[16];
            if (v230 < v14)
            {
              goto LABEL_468;
            }

LABEL_491:
            result[16] = v230 + 1;
            v231 = result[26];
            if (v231 >= v14)
            {
              goto LABEL_492;
            }

LABEL_469:
            v232 = result[17];
            if (v232 < v14)
            {
              goto LABEL_470;
            }

LABEL_493:
            result[17] = v232 + 1;
            v233 = result[27];
            if (v233 >= v14)
            {
LABEL_471:
              result[27] = v233 + 1;
            }
          }

          else
          {
            v217 = result[19];
            if (v217 < v14)
            {
              goto LABEL_455;
            }

LABEL_478:
            result[19] = v217 + 1;
            v218 = result[10];
            if (v218 >= v14)
            {
              goto LABEL_479;
            }

LABEL_456:
            v219 = result[20];
            if (v219 < v14)
            {
              goto LABEL_457;
            }

LABEL_480:
            result[20] = v219 + 1;
            v220 = result[11];
            if (v220 >= v14)
            {
              goto LABEL_481;
            }

LABEL_458:
            v221 = result[21];
            if (v221 < v14)
            {
              goto LABEL_459;
            }

LABEL_482:
            result[21] = v221 + 1;
            v222 = result[12];
            if (v222 >= v14)
            {
              goto LABEL_483;
            }

LABEL_460:
            v223 = result[22];
            if (v223 < v14)
            {
              goto LABEL_461;
            }

LABEL_484:
            result[22] = v223 + 1;
            v224 = result[13];
            if (v224 >= v14)
            {
              goto LABEL_485;
            }

LABEL_462:
            v225 = result[23];
            if (v225 < v14)
            {
              goto LABEL_463;
            }

LABEL_486:
            result[23] = v225 + 1;
            v226 = result[14];
            if (v226 >= v14)
            {
              goto LABEL_487;
            }

LABEL_464:
            v227 = result[24];
            if (v227 < v14)
            {
              goto LABEL_465;
            }

LABEL_488:
            result[24] = v227 + 1;
            v228 = result[15];
            if (v228 >= v14)
            {
              goto LABEL_489;
            }

LABEL_466:
            v229 = result[25];
            if (v229 < v14)
            {
              goto LABEL_467;
            }

LABEL_490:
            result[25] = v229 + 1;
            v230 = result[16];
            if (v230 >= v14)
            {
              goto LABEL_491;
            }

LABEL_468:
            v231 = result[26];
            if (v231 < v14)
            {
              goto LABEL_469;
            }

LABEL_492:
            result[26] = v231 + 1;
            v232 = result[17];
            if (v232 >= v14)
            {
              goto LABEL_493;
            }

LABEL_470:
            v233 = result[27];
            if (v233 >= v14)
            {
              goto LABEL_471;
            }
          }

          memmove(&v140[v14 + 1], &v140[v14], 8 * (result[5] + ~v14));
          v113 = result[3];
          v113[v14] = v215;
          if (!*(result + 4))
          {
            v234 = result[4];
            v235 = result[5];
            if (v235 >= v234)
            {
              v236 = (v234 + 1) / 2;
              v237 = ((v234 + 1 + ((v234 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v236;
              if (v234 < v237)
              {
                if (v237 >> 61)
                {
                  *(result + 4) = 12;
                  *result = &byte_2A13C2DD8;
                  result[1] = &byte_2A13C2DD8;
                }

                else
                {
                  v113 = malloc_type_realloc(v113, 24 * v236, 0x100004000313F17uLL);
                  if (v113)
                  {
                    result[3] = v113;
                    result[4] = v237;
                  }

                  else
                  {
                    if (!*(result + 4))
                    {
                      *(result + 4) = 12;
                    }

                    *result = &byte_2A13C2DD8;
                    result[1] = &byte_2A13C2DD8;
                    v113 = result[3];
                  }
                }
              }
            }

            v206 = (v235 - v14) | 0x60000000;
LABEL_421:
            v207 = result[5];
            result[5] = v207 + 1;
            v113[v207] = v206;
          }

LABEL_363:
          v11 = *result;
          v12 = result[1];
          v187 = &v12[-*result];
          if (v187 >= 1)
          {
            if ((v188 = *v11, (v188 - 42) < 2) || v188 == 63 || (v188 == 123 ? (v189 = v187 == 1) : (v189 = 1), !v189 && v11[1] - 48 <= 9))
            {
              if (!*(result + 4))
              {
                *(result + 4) = 13;
              }

              *result = &byte_2A13C2DD8;
              result[1] = &byte_2A13C2DD8;
              v11 = &byte_2A13C2DD8;
              v12 = &byte_2A13C2DD8;
            }
          }

          goto LABEL_10;
        }

        if (v67 != 63)
        {
          if (v67 != 123)
          {
            goto LABEL_363;
          }

          v73 = v12 - v68;
          if (v12 - v68 < 1)
          {
            v75 = 0;
            goto LABEL_183;
          }

          v74 = 0;
          v75 = 0;
          while (*v68 - 48 <= 9 && v75 <= 255)
          {
            v76 = v68 + 1;
            *result = v68 + 1;
            v75 = (*v68 + 10 * v75 - 48);
            ++v74;
            ++v68;
            if (v73-- <= 1)
            {
              goto LABEL_182;
            }
          }

          v76 = v68;
          if (!v74)
          {
            goto LABEL_183;
          }

LABEL_182:
          if (v75 >= 256)
          {
LABEL_183:
            if (!*(result + 4))
            {
              *(result + 4) = 10;
            }

            *result = &byte_2A13C2DD8;
            result[1] = &byte_2A13C2DD8;
            v76 = &byte_2A13C2DD8;
            v12 = &byte_2A13C2DD8;
          }

          v86 = v75;
          if (v12 - v76 < 1)
          {
            goto LABEL_351;
          }

          v86 = v75;
          if (*v76 != 44)
          {
            goto LABEL_351;
          }

          v87 = v76 + 1;
          *result = v76 + 1;
          if (v76[1] - 48 > 9)
          {
            v86 = 256;
            goto LABEL_351;
          }

          v88 = (v12 - v87);
          if (v12 - v87 < 1)
          {
            v86 = 0;
          }

          else
          {
            v89 = 0;
            v86 = 0;
            while (1)
            {
              v90 = &v87[v89];
              if (v87[v89] - 48 > 9 || v86 > 255)
              {
                break;
              }

              *result = v90 + 1;
              v86 = (*v90 + 10 * v86 - 48);
              ++v89;
              if (--v88 <= 0)
              {
                LODWORD(v89) = 1;
                break;
              }
            }

            if (v89 && v86 < 256)
            {
              if (v75 <= v86)
              {
                goto LABEL_351;
              }

LABEL_348:
              if (!*(result + 4))
              {
                *(result + 4) = 10;
              }

              *result = &byte_2A13C2DD8;
              result[1] = &byte_2A13C2DD8;
              goto LABEL_351;
            }
          }

          if (!*(result + 4))
          {
            *(result + 4) = 10;
            *result = &byte_2A13C2DD8;
            result[1] = &byte_2A13C2DD8;
            if (v75 <= v86)
            {
              goto LABEL_351;
            }

            goto LABEL_348;
          }

          *result = &byte_2A13C2DD8;
          result[1] = &byte_2A13C2DD8;
          if (v75 > v86)
          {
            goto LABEL_348;
          }

LABEL_351:
          sub_298BA2BE4(result, v14, v75, v86);
          v182 = *result;
          v181 = result[1];
          if (v181 - *result >= 1)
          {
            if (*v182 == 125)
            {
              *result = v182 + 1;
              goto LABEL_363;
            }

            v183 = ~v182 + v181;
            v184 = (v182 + 1);
            while (1)
            {
              *result = v184;
              if (v183 <= 0)
              {
                break;
              }

              v185 = *v184++;
              --v183;
              if (v185 == 125)
              {
                if (*(result + 4))
                {
                  goto LABEL_362;
                }

                v186 = 10;
                goto LABEL_361;
              }
            }
          }

          if (!*(result + 4))
          {
            v186 = 9;
LABEL_361:
            *(result + 4) = v186;
          }

LABEL_362:
          *result = &byte_2A13C2DD8;
          result[1] = &byte_2A13C2DD8;
          goto LABEL_363;
        }

        if (*(result + 4))
        {
          goto LABEL_363;
        }

        v82 = result[4];
        v83 = result[5];
        if (v83 >= v82)
        {
          v84 = (v82 + 1) / 2;
          v85 = ((v82 + 1 + ((v82 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v84;
          if (v82 < v85)
          {
            if (v85 >> 61)
            {
              goto LABEL_178;
            }

            v146 = malloc_type_realloc(result[3], 24 * v84, 0x100004000313F17uLL);
            if (v146)
            {
              result[3] = v146;
              result[4] = v85;
            }

            else
            {
              if (!*(result + 4))
              {
LABEL_178:
                *(result + 4) = 12;
              }

              *result = &byte_2A13C2DD8;
              result[1] = &byte_2A13C2DD8;
            }
          }
        }

        v147 = result[3];
        v148 = result[5];
        result[5] = v148 + 1;
        *(v147 + 8 * v148) = (v83 - v14 + 1) | 0x78000000;
        v149 = *(v147 + 8 * v83);
        v150 = result[9];
        if (v150 >= v14)
        {
          result[9] = v150 + 1;
          v151 = result[19];
          if (v151 >= v14)
          {
            goto LABEL_320;
          }

LABEL_297:
          v152 = result[10];
          if (v152 < v14)
          {
            goto LABEL_298;
          }

LABEL_321:
          result[10] = v152 + 1;
          v153 = result[20];
          if (v153 >= v14)
          {
            goto LABEL_322;
          }

LABEL_299:
          v154 = result[11];
          if (v154 < v14)
          {
            goto LABEL_300;
          }

LABEL_323:
          result[11] = v154 + 1;
          v155 = result[21];
          if (v155 >= v14)
          {
            goto LABEL_324;
          }

LABEL_301:
          v156 = result[12];
          if (v156 < v14)
          {
            goto LABEL_302;
          }

LABEL_325:
          result[12] = v156 + 1;
          v157 = result[22];
          if (v157 >= v14)
          {
            goto LABEL_326;
          }

LABEL_303:
          v158 = result[13];
          if (v158 < v14)
          {
            goto LABEL_304;
          }

LABEL_327:
          result[13] = v158 + 1;
          v159 = result[23];
          if (v159 >= v14)
          {
            goto LABEL_328;
          }

LABEL_305:
          v160 = result[14];
          if (v160 < v14)
          {
            goto LABEL_306;
          }

LABEL_329:
          result[14] = v160 + 1;
          v161 = result[24];
          if (v161 >= v14)
          {
            goto LABEL_330;
          }

LABEL_307:
          v162 = result[15];
          if (v162 < v14)
          {
            goto LABEL_308;
          }

LABEL_331:
          result[15] = v162 + 1;
          v163 = result[25];
          if (v163 >= v14)
          {
            goto LABEL_332;
          }

LABEL_309:
          v164 = result[16];
          if (v164 < v14)
          {
            goto LABEL_310;
          }

LABEL_333:
          result[16] = v164 + 1;
          v165 = result[26];
          if (v165 >= v14)
          {
            goto LABEL_334;
          }

LABEL_311:
          v166 = result[17];
          if (v166 < v14)
          {
            goto LABEL_312;
          }

LABEL_335:
          result[17] = v166 + 1;
          v167 = result[27];
          if (v167 >= v14)
          {
LABEL_313:
            result[27] = v167 + 1;
          }
        }

        else
        {
          v151 = result[19];
          if (v151 < v14)
          {
            goto LABEL_297;
          }

LABEL_320:
          result[19] = v151 + 1;
          v152 = result[10];
          if (v152 >= v14)
          {
            goto LABEL_321;
          }

LABEL_298:
          v153 = result[20];
          if (v153 < v14)
          {
            goto LABEL_299;
          }

LABEL_322:
          result[20] = v153 + 1;
          v154 = result[11];
          if (v154 >= v14)
          {
            goto LABEL_323;
          }

LABEL_300:
          v155 = result[21];
          if (v155 < v14)
          {
            goto LABEL_301;
          }

LABEL_324:
          result[21] = v155 + 1;
          v156 = result[12];
          if (v156 >= v14)
          {
            goto LABEL_325;
          }

LABEL_302:
          v157 = result[22];
          if (v157 < v14)
          {
            goto LABEL_303;
          }

LABEL_326:
          result[22] = v157 + 1;
          v158 = result[13];
          if (v158 >= v14)
          {
            goto LABEL_327;
          }

LABEL_304:
          v159 = result[23];
          if (v159 < v14)
          {
            goto LABEL_305;
          }

LABEL_328:
          result[23] = v159 + 1;
          v160 = result[14];
          if (v160 >= v14)
          {
            goto LABEL_329;
          }

LABEL_306:
          v161 = result[24];
          if (v161 < v14)
          {
            goto LABEL_307;
          }

LABEL_330:
          result[24] = v161 + 1;
          v162 = result[15];
          if (v162 >= v14)
          {
            goto LABEL_331;
          }

LABEL_308:
          v163 = result[25];
          if (v163 < v14)
          {
            goto LABEL_309;
          }

LABEL_332:
          result[25] = v163 + 1;
          v164 = result[16];
          if (v164 >= v14)
          {
            goto LABEL_333;
          }

LABEL_310:
          v165 = result[26];
          if (v165 < v14)
          {
            goto LABEL_311;
          }

LABEL_334:
          result[26] = v165 + 1;
          v166 = result[17];
          if (v166 >= v14)
          {
            goto LABEL_335;
          }

LABEL_312:
          v167 = result[27];
          if (v167 >= v14)
          {
            goto LABEL_313;
          }
        }

        memmove((v147 + 8 * v14 + 8), (v147 + 8 * v14), 8 * (result[5] + ~v14));
        v168 = result[3];
        v168[v14] = v149;
        if (*(result + 4))
        {
          goto LABEL_363;
        }

        v170 = result[4];
        v169 = result[5];
        v171 = v169 - v14;
        if (v169 < v170 || (v172 = (v170 + 1) / 2, v173 = ((v170 + 1 + ((v170 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v172, v170 >= v173))
        {
          result[5] = v169 + 1;
          v168[v169] = v171 | 0x80000000;
        }

        else
        {
          if (v173 >> 61)
          {
            *(result + 4) = 12;
            *result = &byte_2A13C2DD8;
            result[1] = &byte_2A13C2DD8;
LABEL_436:
            result[5] = v169 + 1;
            v168[v169] = v171 | 0x80000000;
            goto LABEL_363;
          }

          v168 = malloc_type_realloc(v168, 24 * v172, 0x100004000313F17uLL);
          if (!v168)
          {
            if (!*(result + 4))
            {
              *(result + 4) = 12;
            }

            *result = &byte_2A13C2DD8;
            result[1] = &byte_2A13C2DD8;
            v168 = result[3];
            v169 = result[5];
            goto LABEL_436;
          }

          result[3] = v168;
          result[4] = v173;
          v190 = *(result + 4);
          v191 = result[5];
          result[5] = v191 + 1;
          v168[v191] = v171 | 0x80000000;
          if (v190)
          {
            goto LABEL_363;
          }
        }

        v168[v14] = v168[v14] & 0xF8000000 | (result[5] - v14);
        v175 = result[4];
        v174 = result[5];
        if (v174 < v175 || (v176 = (v175 + 1) / 2, v177 = ((v175 + 1 + ((v175 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v176, v175 >= v177))
        {
          result[5] = v174 + 1;
          v168[v174] = 2281701376;
        }

        else
        {
          if (v177 >> 61)
          {
            *(result + 4) = 12;
            *result = &byte_2A13C2DD8;
            result[1] = &byte_2A13C2DD8;
LABEL_444:
            result[5] = v174 + 1;
            v168[v174] = 2281701376;
            goto LABEL_363;
          }

          v168 = malloc_type_realloc(v168, 24 * v176, 0x100004000313F17uLL);
          if (!v168)
          {
            if (!*(result + 4))
            {
              *(result + 4) = 12;
            }

            *result = &byte_2A13C2DD8;
            result[1] = &byte_2A13C2DD8;
            v168 = result[3];
            v174 = result[5];
            goto LABEL_444;
          }

          result[3] = v168;
          result[4] = v177;
          v204 = *(result + 4);
          v205 = result[5];
          result[5] = v205 + 1;
          v168[v205] = 2281701376;
          if (v204)
          {
            goto LABEL_363;
          }
        }

        v168[result[5] - 1] = v168[result[5] - 1] & 0xF8000000 | 1;
        v178 = result[4];
        if (result[5] >= v178)
        {
          v179 = (v178 + 1) / 2;
          v180 = ((v178 + 1 + ((v178 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v179;
          if (v178 < v180)
          {
            if (v180 >> 61)
            {
              *(result + 4) = 12;
              *result = &byte_2A13C2DD8;
              result[1] = &byte_2A13C2DD8;
            }

            else
            {
              v168 = malloc_type_realloc(v168, 24 * v179, 0x100004000313F17uLL);
              if (v168)
              {
                result[3] = v168;
                result[4] = v180;
              }

              else
              {
                if (!*(result + 4))
                {
                  *(result + 4) = 12;
                }

                *result = &byte_2A13C2DD8;
                result[1] = &byte_2A13C2DD8;
                v168 = result[3];
              }
            }
          }
        }

        v213 = result[5];
        result[5] = v213 + 1;
        v168[v213] = 2415919106;
        goto LABEL_363;
      }

LABEL_10:
      if (v12 - v11 <= 0)
      {
        v14 = result[5];
        break;
      }
    }

    if (v14 == v9)
    {
      goto LABEL_503;
    }

LABEL_506:
    if (v12 - v11 >= 1 && *v11 == 124)
    {
      *result = v11 + 1;
      v238 = *(result + 4);
      if (v286)
      {
        v9 = v285;
        if (!v238)
        {
          goto LABEL_537;
        }
      }

      else if (!v238)
      {
        v239 = result[4];
        if (v14 >= v239)
        {
          v240 = (v239 + 1) / 2;
          v241 = ((v239 + 1 + ((v239 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v240;
          if (v239 < v241)
          {
            if (v241 >> 61)
            {
              goto LABEL_513;
            }

            v242 = malloc_type_realloc(result[3], 24 * v240, 0x100004000313F17uLL);
            if (v242)
            {
              result[3] = v242;
              result[4] = v241;
            }

            else
            {
              if (!*(result + 4))
              {
LABEL_513:
                *(result + 4) = 12;
              }

              *result = &byte_2A13C2DD8;
              result[1] = &byte_2A13C2DD8;
            }
          }
        }

        v243 = result[3];
        v244 = result[5];
        result[5] = v244 + 1;
        *(v243 + 8 * v244) = (v14 - v9 + 1) | 0x78000000;
        v245 = *(v243 + 8 * v14);
        v246 = result[9];
        if (v246 >= v9)
        {
          result[9] = v246 + 1;
          v247 = result[19];
          if (v247 >= v9)
          {
            goto LABEL_549;
          }

LABEL_519:
          v248 = result[10];
          if (v248 < v9)
          {
            goto LABEL_520;
          }

LABEL_550:
          result[10] = v248 + 1;
          v249 = result[20];
          if (v249 >= v9)
          {
            goto LABEL_551;
          }

LABEL_521:
          v250 = result[11];
          if (v250 < v9)
          {
            goto LABEL_522;
          }

LABEL_552:
          result[11] = v250 + 1;
          v251 = result[21];
          if (v251 >= v9)
          {
            goto LABEL_553;
          }

LABEL_523:
          v252 = result[12];
          if (v252 < v9)
          {
            goto LABEL_524;
          }

LABEL_554:
          result[12] = v252 + 1;
          v253 = result[22];
          if (v253 >= v9)
          {
            goto LABEL_555;
          }

LABEL_525:
          v254 = result[13];
          if (v254 < v9)
          {
            goto LABEL_526;
          }

LABEL_556:
          result[13] = v254 + 1;
          v255 = result[23];
          if (v255 >= v9)
          {
            goto LABEL_557;
          }

LABEL_527:
          v256 = result[14];
          if (v256 < v9)
          {
            goto LABEL_528;
          }

LABEL_558:
          result[14] = v256 + 1;
          v257 = result[24];
          if (v257 >= v9)
          {
            goto LABEL_559;
          }

LABEL_529:
          v258 = result[15];
          if (v258 < v9)
          {
            goto LABEL_530;
          }

LABEL_560:
          result[15] = v258 + 1;
          v259 = result[25];
          if (v259 >= v9)
          {
            goto LABEL_561;
          }

LABEL_531:
          v260 = result[16];
          if (v260 < v9)
          {
            goto LABEL_532;
          }

LABEL_562:
          result[16] = v260 + 1;
          v261 = result[26];
          if (v261 >= v9)
          {
            goto LABEL_563;
          }

LABEL_533:
          v262 = result[17];
          if (v262 < v9)
          {
            goto LABEL_534;
          }

LABEL_564:
          result[17] = v262 + 1;
          v263 = result[27];
          if (v263 >= v9)
          {
LABEL_535:
            result[27] = v263 + 1;
          }
        }

        else
        {
          v247 = result[19];
          if (v247 < v9)
          {
            goto LABEL_519;
          }

LABEL_549:
          result[19] = v247 + 1;
          v248 = result[10];
          if (v248 >= v9)
          {
            goto LABEL_550;
          }

LABEL_520:
          v249 = result[20];
          if (v249 < v9)
          {
            goto LABEL_521;
          }

LABEL_551:
          result[20] = v249 + 1;
          v250 = result[11];
          if (v250 >= v9)
          {
            goto LABEL_552;
          }

LABEL_522:
          v251 = result[21];
          if (v251 < v9)
          {
            goto LABEL_523;
          }

LABEL_553:
          result[21] = v251 + 1;
          v252 = result[12];
          if (v252 >= v9)
          {
            goto LABEL_554;
          }

LABEL_524:
          v253 = result[22];
          if (v253 < v9)
          {
            goto LABEL_525;
          }

LABEL_555:
          result[22] = v253 + 1;
          v254 = result[13];
          if (v254 >= v9)
          {
            goto LABEL_556;
          }

LABEL_526:
          v255 = result[23];
          if (v255 < v9)
          {
            goto LABEL_527;
          }

LABEL_557:
          result[23] = v255 + 1;
          v256 = result[14];
          if (v256 >= v9)
          {
            goto LABEL_558;
          }

LABEL_528:
          v257 = result[24];
          if (v257 < v9)
          {
            goto LABEL_529;
          }

LABEL_559:
          result[24] = v257 + 1;
          v258 = result[15];
          if (v258 >= v9)
          {
            goto LABEL_560;
          }

LABEL_530:
          v259 = result[25];
          if (v259 < v9)
          {
            goto LABEL_531;
          }

LABEL_561:
          result[25] = v259 + 1;
          v260 = result[16];
          if (v260 >= v9)
          {
            goto LABEL_562;
          }

LABEL_532:
          v261 = result[26];
          if (v261 < v9)
          {
            goto LABEL_533;
          }

LABEL_563:
          result[26] = v261 + 1;
          v262 = result[17];
          if (v262 >= v9)
          {
            goto LABEL_564;
          }

LABEL_534:
          v263 = result[27];
          if (v263 >= v9)
          {
            goto LABEL_535;
          }
        }

        memmove((v243 + 8 * v9 + 8), (v243 + 8 * v9), 8 * (result[5] + ~v9));
        *(result[3] + 8 * v9) = v245;
        v14 = result[5];
        v284 = v9;
        if (!*(result + 4))
        {
LABEL_537:
          v264 = result[4];
          if (v14 < v264 || (v265 = (v264 + 1) / 2, v266 = ((v264 + 1 + ((v264 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v265, v264 >= v266))
          {
            v267 = 1;
          }

          else
          {
            if (v266 >> 61)
            {
              v267 = 0;
              *(result + 4) = 12;
              goto LABEL_573;
            }

            v273 = malloc_type_realloc(result[3], 24 * v265, 0x100004000313F17uLL);
            if (v273)
            {
              result[3] = v273;
              result[4] = v266;
              v267 = *(result + 4) == 0;
            }

            else
            {
              if (!*(result + 4))
              {
                *(result + 4) = 12;
              }

              v267 = 0;
LABEL_573:
              *result = &byte_2A13C2DD8;
              result[1] = &byte_2A13C2DD8;
            }
          }

          v268 = result[3];
          v269 = result[5];
          result[5] = v269 + 1;
          v268[v269] = (v14 - v9) | 0x80000000;
          v10 = result[5];
          if (v267)
          {
            v268[v284] = v268[v284] & 0xF8000000 | (v10 - v284);
            v270 = result[4];
            v14 = result[5];
            if (v14 >= v270)
            {
              v271 = (v270 + 1) / 2;
              v272 = ((v270 + 1 + ((v270 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v271;
              if (v270 < v272)
              {
                if (v272 >> 61)
                {
                  *(result + 4) = 12;
                  *result = &byte_2A13C2DD8;
                  result[1] = &byte_2A13C2DD8;
                }

                else
                {
                  v268 = malloc_type_realloc(v268, 24 * v271, 0x100004000313F17uLL);
                  if (v268)
                  {
                    result[3] = v268;
                    result[4] = v272;
                  }

                  else
                  {
                    if (!*(result + 4))
                    {
                      *(result + 4) = 12;
                    }

                    *result = &byte_2A13C2DD8;
                    result[1] = &byte_2A13C2DD8;
                    v268 = result[3];
                  }
                }
              }
            }

            v274 = result[5];
            result[5] = v274 + 1;
            v268[v274] = 2281701376;
          }

          else
          {
            v14 = result[5];
          }

LABEL_4:
          v284 = v14;
          v285 = v10 - 1;
          v286 = 1;
          continue;
        }
      }

      v10 = v14;
      goto LABEL_4;
    }

    break;
  }

  if ((v286 & 1) != 0 && !*(result + 4))
  {
    v275 = result[3];
    v275[v284] = v275[v284] & 0xF8000000 | (v14 - v284);
    v276 = result[4];
    v277 = result[5];
    v278 = v277 - v285;
    if (v277 >= v276)
    {
      v279 = (v276 + 1) / 2;
      v280 = ((v276 + 1 + ((v276 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v279;
      if (v276 < v280)
      {
        if (v280 >> 61)
        {
          *(result + 4) = 12;
          *result = &byte_2A13C2DD8;
          result[1] = &byte_2A13C2DD8;
        }

        else
        {
          v275 = malloc_type_realloc(v275, 24 * v279, 0x100004000313F17uLL);
          if (v275)
          {
            result[3] = v275;
            result[4] = v280;
          }

          else
          {
            if (!*(result + 4))
            {
              *(result + 4) = 12;
            }

            *result = &byte_2A13C2DD8;
            result[1] = &byte_2A13C2DD8;
            v275 = result[3];
          }
        }
      }
    }

    v281 = result[5];
    result[5] = v281 + 1;
    v275[v281] = v278 | 0x90000000;
  }
}

void sub_298BA0138(char *result, int a2, int a3, __n128 a4, int32x4_t a5, int32x4_t a6, int32x4_t a7)
{
  v8 = *result;
  v9 = *(result + 1);
  v10 = &v9[-*result];
  if (v10 < 1)
  {
    goto LABEL_320;
  }

  v12 = *(result + 5);
  if (*v8 != 94)
  {
    goto LABEL_13;
  }

  *result = ++v8;
  if (!*(result + 4))
  {
    v13 = *(result + 4);
    if (v12 < v13)
    {
      goto LABEL_11;
    }

    v14 = (v13 + 1) / 2;
    v15 = ((v13 + 1 + ((v13 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v14;
    if (v13 >= v15)
    {
      goto LABEL_11;
    }

    if (v15 >> 61)
    {
      goto LABEL_7;
    }

    v16 = malloc_type_realloc(*(result + 3), 24 * v14, 0x100004000313F17uLL);
    if (v16)
    {
      *(result + 3) = v16;
      *(result + 4) = v15;
      v8 = *result;
      v9 = *(result + 1);
      goto LABEL_11;
    }

    if (!*(result + 4))
    {
LABEL_7:
      *(result + 4) = 12;
    }

    *result = &byte_2A13C2DD8;
    *(result + 1) = &byte_2A13C2DD8;
    v8 = &byte_2A13C2DD8;
    v9 = &byte_2A13C2DD8;
LABEL_11:
    v17 = *(result + 3);
    v18 = *(result + 5);
    *(result + 5) = v18 + 1;
    *(v17 + 8 * v18) = 402653184;
  }

  v19 = *(result + 7);
  v20 = v19[9];
  *a5.i8 = vadd_s32(v20, 0x100000001);
  a4.n128_u32[0] = v20.i32[0] | 1;
  a4.n128_u32[1] = a5.u32[1];
  v19[9] = a4.n128_u64[0];
  v10 = v9 - v8;
  if (v9 - v8 <= 0)
  {
    v149 = *(result + 5);
    goto LABEL_319;
  }

LABEL_13:
  v157 = v12;
  v21 = 0;
  v22 = 0;
  v23 = result + 144;
  v159 = result + 64;
  while (v10 == 1 || *v8 != a2 || v8[1] != a3)
  {
    v24 = *(result + 5);
    v25 = v8 + 1;
    *result = v8 + 1;
    v26 = *v8;
    if (v26 == 92)
    {
      if (v9 - v25 <= 0)
      {
        if (!*(result + 4))
        {
          *(result + 4) = 5;
        }

        *(result + 1) = &byte_2A13C2DD8;
        v9 = &byte_2A13C2DD8;
        v25 = &byte_2A13C2DD8;
      }

      *result = v25 + 1;
      v26 = *v25++ | 0x100;
    }

    if (v26 <= 304)
    {
      if (v26 <= 90)
      {
        if (v26 == 42)
        {
          if (v22)
          {
            if (!*(result + 4))
            {
              *(result + 4) = 13;
            }

            *result = &byte_2A13C2DD8;
            *(result + 1) = &byte_2A13C2DD8;
          }

LABEL_66:
          a4 = sub_298BA29F0(result, v26, a4.n128_f64[0], *a5.i64, *a6.i64, a7);
          goto LABEL_196;
        }

        if (v26 != 46)
        {
          goto LABEL_66;
        }

        if ((*(*(result + 7) + 40) & 8) != 0)
        {
          *result = "^\n]";
          *(result + 1) = "";
          sub_298BA1398(result, a4, a5, a6, a7);
          *result = v25;
          *(result + 1) = v9;
          goto LABEL_196;
        }

        if (*(result + 4))
        {
          goto LABEL_196;
        }

        v32 = *(result + 4);
        if (v24 >= v32)
        {
          v33 = (v32 + 1) / 2;
          v34 = ((v32 + 1 + ((v32 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v33;
          if (v32 < v34)
          {
            if (v34 >> 61)
            {
              goto LABEL_50;
            }

            v95 = malloc_type_realloc(*(result + 3), 24 * v33, 0x100004000313F17uLL);
            if (v95)
            {
              *(result + 3) = v95;
              *(result + 4) = v34;
            }

            else
            {
              if (!*(result + 4))
              {
LABEL_50:
                *(result + 4) = 12;
              }

              *result = &byte_2A13C2DD8;
              *(result + 1) = &byte_2A13C2DD8;
            }
          }
        }

        v96 = *(result + 3);
        v97 = *(result + 5);
        *(result + 5) = v97 + 1;
        *(v96 + 8 * v97) = 671088640;
        goto LABEL_196;
      }

      if (v26 == 91)
      {
        sub_298BA1398(result, a4, a5, a6, a7);
        goto LABEL_196;
      }

      if (v26 != 296)
      {
        if (v26 != 297)
        {
          goto LABEL_66;
        }

        goto LABEL_192;
      }

      v42 = *(result + 7);
      v43 = *(v42 + 112) + 1;
      *(v42 + 112) = v43;
      if (v43 > 9)
      {
        if (!*(result + 4))
        {
          goto LABEL_69;
        }
      }

      else
      {
        *&v159[8 * v43] = v24;
        if (!*(result + 4))
        {
LABEL_69:
          v44 = *(result + 4);
          if (*(result + 5) >= v44)
          {
            v45 = (v44 + 1) / 2;
            v46 = ((v44 + 1 + ((v44 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v45;
            if (v44 < v46)
            {
              if (v46 >> 61)
              {
                *(result + 4) = 12;
                v25 = &byte_2A13C2DD8;
                v9 = &byte_2A13C2DD8;
                *result = &byte_2A13C2DD8;
                *(result + 1) = &byte_2A13C2DD8;
              }

              else
              {
                v94 = malloc_type_realloc(*(result + 3), 24 * v45, 0x100004000313F17uLL);
                if (v94)
                {
                  *(result + 3) = v94;
                  *(result + 4) = v46;
                  v25 = *result;
                  v9 = *(result + 1);
                }

                else
                {
                  if (!*(result + 4))
                  {
                    *(result + 4) = 12;
                  }

                  *result = &byte_2A13C2DD8;
                  *(result + 1) = &byte_2A13C2DD8;
                  v25 = &byte_2A13C2DD8;
                  v9 = &byte_2A13C2DD8;
                }
              }
            }
          }

          v98 = *(result + 3);
          v99 = *(result + 5);
          *(result + 5) = v99 + 1;
          *(v98 + 8 * v99) = v43 | 0x68000000;
          v47 = v9 - v25 == 1;
          if (v9 - v25 >= 1)
          {
LABEL_172:
            if (v47 || *v25 != 92 || v25[1] != 41)
            {
              sub_298BA0138(result, 92, 41);
            }
          }

LABEL_176:
          if (v43 > 9)
          {
            if (!*(result + 4))
            {
              goto LABEL_178;
            }
          }

          else
          {
            *&v23[8 * v43] = *(result + 5);
            if (!*(result + 4))
            {
LABEL_178:
              v100 = *(result + 4);
              if (*(result + 5) >= v100)
              {
                v101 = (v100 + 1) / 2;
                v102 = ((v100 + 1 + ((v100 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v101;
                if (v100 < v102)
                {
                  if (v102 >> 61)
                  {
                    goto LABEL_181;
                  }

                  v104 = malloc_type_realloc(*(result + 3), 24 * v101, 0x100004000313F17uLL);
                  if (v104)
                  {
                    *(result + 3) = v104;
                    *(result + 4) = v102;
                  }

                  else
                  {
                    if (!*(result + 4))
                    {
LABEL_181:
                      *(result + 4) = 12;
                    }

                    *result = &byte_2A13C2DD8;
                    *(result + 1) = &byte_2A13C2DD8;
                  }
                }
              }

              v105 = *(result + 3);
              v106 = *(result + 5);
              *(result + 5) = v106 + 1;
              *(v105 + 8 * v106) = v43 | 0x70000000;
              v103 = *result;
              if ((*(result + 1) - *result) < 2)
              {
                goto LABEL_192;
              }

LABEL_189:
              if (*v103 == 92 && v103[1] == 41)
              {
                *result = v103 + 2;
                goto LABEL_196;
              }

LABEL_192:
              if (!*(result + 4))
              {
                v48 = 8;
                goto LABEL_194;
              }

              goto LABEL_195;
            }
          }

          v103 = *result;
          if ((*(result + 1) - *result) < 2)
          {
            goto LABEL_192;
          }

          goto LABEL_189;
        }
      }

      v47 = v9 - v25 == 1;
      if (v9 - v25 >= 1)
      {
        goto LABEL_172;
      }

      goto LABEL_176;
    }

    if ((v26 - 305) < 9)
    {
      v27 = (v26 & 0xFFFFFEFF) - 48;
      v28 = *&v23[8 * v27];
      v29 = *(result + 4);
      if (!v28)
      {
        if (!v29)
        {
          *(result + 4) = 6;
        }

        *result = &byte_2A13C2DD8;
        *(result + 1) = &byte_2A13C2DD8;
        goto LABEL_99;
      }

      if (v29)
      {
        v30 = *&v159[8 * v27] + 1;
        v31 = v28 - v30;
        if (v28 == v30)
        {
          goto LABEL_30;
        }

LABEL_83:
        if (v31 >= 1)
        {
          v53 = *(result + 4) + v31;
          if (v53 >> 61 || (v54 = malloc_type_realloc(*(result + 3), 8 * v53, 0x100004000313F17uLL)) == 0)
          {
            if (!*(result + 4))
            {
              *(result + 4) = 12;
            }

            *result = &byte_2A13C2DD8;
            *(result + 1) = &byte_2A13C2DD8;
          }

          else
          {
            *(result + 3) = v54;
            *(result + 4) = v53;
          }
        }

        memmove((*(result + 3) + 8 * *(result + 5)), (*(result + 3) + 8 * v30), 8 * v31);
        *(result + 5) += v31;
        if (!*(result + 4))
        {
          goto LABEL_91;
        }

LABEL_99:
        *(*(result + 7) + 120) = 1;
        goto LABEL_196;
      }

      v35 = *(result + 4);
      if (v24 >= v35)
      {
        v36 = (v35 + 1) / 2;
        v37 = ((v35 + 1 + ((v35 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v36;
        if (v35 < v37)
        {
          if (v37 >> 61)
          {
            goto LABEL_55;
          }

          v49 = malloc_type_realloc(*(result + 3), 24 * v36, 0x100004000313F17uLL);
          if (v49)
          {
            *(result + 3) = v49;
            *(result + 4) = v37;
          }

          else
          {
            if (!*(result + 4))
            {
LABEL_55:
              *(result + 4) = 12;
            }

            *result = &byte_2A13C2DD8;
            *(result + 1) = &byte_2A13C2DD8;
          }
        }
      }

      v50 = *(result + 3);
      v51 = *(result + 5);
      *(result + 5) = v51 + 1;
      *(v50 + 8 * v51) = v27 | 0x38000000;
      v52 = *&v23[8 * v27];
      v30 = *&v159[8 * v27] + 1;
      v31 = v52 - v30;
      if (v52 != v30)
      {
        goto LABEL_83;
      }

LABEL_30:
      if (*(result + 4))
      {
        goto LABEL_99;
      }

LABEL_91:
      v55 = *(result + 4);
      if (*(result + 5) >= v55)
      {
        v56 = (v55 + 1) / 2;
        v57 = ((v55 + 1 + ((v55 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v56;
        if (v55 < v57)
        {
          if (v57 >> 61)
          {
            goto LABEL_94;
          }

          v58 = malloc_type_realloc(*(result + 3), 24 * v56, 0x100004000313F17uLL);
          if (v58)
          {
            *(result + 3) = v58;
            *(result + 4) = v57;
          }

          else
          {
            if (!*(result + 4))
            {
LABEL_94:
              *(result + 4) = 12;
            }

            *result = &byte_2A13C2DD8;
            *(result + 1) = &byte_2A13C2DD8;
          }
        }
      }

      v59 = *(result + 3);
      v60 = *(result + 5);
      *(result + 5) = v60 + 1;
      *(v59 + 8 * v60) = v27 | 0x40000000;
      goto LABEL_99;
    }

    if (v26 != 379)
    {
      if (v26 != 381)
      {
        goto LABEL_66;
      }

      goto LABEL_192;
    }

    if (!*(result + 4))
    {
      v48 = 13;
LABEL_194:
      *(result + 4) = v48;
    }

LABEL_195:
    *result = &byte_2A13C2DD8;
    *(result + 1) = &byte_2A13C2DD8;
LABEL_196:
    v8 = *result;
    v9 = *(result + 1);
    v10 = &v9[-*result];
    if (v10 < 1)
    {
      goto LABEL_207;
    }

    v107 = *v8;
    if (v107 == 42)
    {
      *result = v8 + 1;
      if (!*(result + 4))
      {
        v38 = *(result + 4);
        v39 = *(result + 5);
        if (v39 >= v38)
        {
          v40 = (v38 + 1) / 2;
          v41 = ((v38 + 1 + ((v38 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v40;
          if (v38 < v41)
          {
            if (v41 >> 61)
            {
              goto LABEL_60;
            }

            v61 = malloc_type_realloc(*(result + 3), 24 * v40, 0x100004000313F17uLL);
            if (v61)
            {
              *(result + 3) = v61;
              *(result + 4) = v41;
            }

            else
            {
              if (!*(result + 4))
              {
LABEL_60:
                *(result + 4) = 12;
              }

              *result = &byte_2A13C2DD8;
              *(result + 1) = &byte_2A13C2DD8;
            }
          }
        }

        v62 = *(result + 3);
        v63 = *(result + 5);
        *(result + 5) = v63 + 1;
        *(v62 + 8 * v63) = (v39 - v24 + 1) | 0x48000000;
        v64 = *(v62 + 8 * v39);
        v65 = *(result + 9);
        if (v65 >= v24)
        {
          *(result + 9) = v65 + 1;
          v66 = *(result + 19);
          if (v66 >= v24)
          {
            goto LABEL_127;
          }

LABEL_104:
          v67 = *(result + 10);
          if (v67 < v24)
          {
            goto LABEL_105;
          }

LABEL_128:
          *(result + 10) = v67 + 1;
          v68 = *(result + 20);
          if (v68 >= v24)
          {
            goto LABEL_129;
          }

LABEL_106:
          v69 = *(result + 11);
          if (v69 < v24)
          {
            goto LABEL_107;
          }

LABEL_130:
          *(result + 11) = v69 + 1;
          v70 = *(result + 21);
          if (v70 >= v24)
          {
            goto LABEL_131;
          }

LABEL_108:
          v71 = *(result + 12);
          if (v71 < v24)
          {
            goto LABEL_109;
          }

LABEL_132:
          *(result + 12) = v71 + 1;
          v72 = *(result + 22);
          if (v72 >= v24)
          {
            goto LABEL_133;
          }

LABEL_110:
          v73 = *(result + 13);
          if (v73 < v24)
          {
            goto LABEL_111;
          }

LABEL_134:
          *(result + 13) = v73 + 1;
          v74 = *(result + 23);
          if (v74 >= v24)
          {
            goto LABEL_135;
          }

LABEL_112:
          v75 = *(result + 14);
          if (v75 < v24)
          {
            goto LABEL_113;
          }

LABEL_136:
          *(result + 14) = v75 + 1;
          v76 = *(result + 24);
          if (v76 >= v24)
          {
            goto LABEL_137;
          }

LABEL_114:
          v77 = *(result + 15);
          if (v77 < v24)
          {
            goto LABEL_115;
          }

LABEL_138:
          *(result + 15) = v77 + 1;
          v78 = *(result + 25);
          if (v78 >= v24)
          {
            goto LABEL_139;
          }

LABEL_116:
          v79 = *(result + 16);
          if (v79 < v24)
          {
            goto LABEL_117;
          }

LABEL_140:
          *(result + 16) = v79 + 1;
          v80 = *(result + 26);
          if (v80 >= v24)
          {
            goto LABEL_141;
          }

LABEL_118:
          v81 = *(result + 17);
          if (v81 < v24)
          {
            goto LABEL_119;
          }

LABEL_142:
          *(result + 17) = v81 + 1;
          v82 = *(result + 27);
          if (v82 >= v24)
          {
LABEL_120:
            *(result + 27) = v82 + 1;
          }
        }

        else
        {
          v66 = *(result + 19);
          if (v66 < v24)
          {
            goto LABEL_104;
          }

LABEL_127:
          *(result + 19) = v66 + 1;
          v67 = *(result + 10);
          if (v67 >= v24)
          {
            goto LABEL_128;
          }

LABEL_105:
          v68 = *(result + 20);
          if (v68 < v24)
          {
            goto LABEL_106;
          }

LABEL_129:
          *(result + 20) = v68 + 1;
          v69 = *(result + 11);
          if (v69 >= v24)
          {
            goto LABEL_130;
          }

LABEL_107:
          v70 = *(result + 21);
          if (v70 < v24)
          {
            goto LABEL_108;
          }

LABEL_131:
          *(result + 21) = v70 + 1;
          v71 = *(result + 12);
          if (v71 >= v24)
          {
            goto LABEL_132;
          }

LABEL_109:
          v72 = *(result + 22);
          if (v72 < v24)
          {
            goto LABEL_110;
          }

LABEL_133:
          *(result + 22) = v72 + 1;
          v73 = *(result + 13);
          if (v73 >= v24)
          {
            goto LABEL_134;
          }

LABEL_111:
          v74 = *(result + 23);
          if (v74 < v24)
          {
            goto LABEL_112;
          }

LABEL_135:
          *(result + 23) = v74 + 1;
          v75 = *(result + 14);
          if (v75 >= v24)
          {
            goto LABEL_136;
          }

LABEL_113:
          v76 = *(result + 24);
          if (v76 < v24)
          {
            goto LABEL_114;
          }

LABEL_137:
          *(result + 24) = v76 + 1;
          v77 = *(result + 15);
          if (v77 >= v24)
          {
            goto LABEL_138;
          }

LABEL_115:
          v78 = *(result + 25);
          if (v78 < v24)
          {
            goto LABEL_116;
          }

LABEL_139:
          *(result + 25) = v78 + 1;
          v79 = *(result + 16);
          if (v79 >= v24)
          {
            goto LABEL_140;
          }

LABEL_117:
          v80 = *(result + 26);
          if (v80 < v24)
          {
            goto LABEL_118;
          }

LABEL_141:
          *(result + 26) = v80 + 1;
          v81 = *(result + 17);
          if (v81 >= v24)
          {
            goto LABEL_142;
          }

LABEL_119:
          v82 = *(result + 27);
          if (v82 >= v24)
          {
            goto LABEL_120;
          }
        }

        memmove((v62 + 8 * v24 + 8), (v62 + 8 * v24), 8 * (*(result + 5) + ~v24));
        v83 = *(result + 3);
        v83[v24] = v64;
        if (*(result + 4))
        {
          goto LABEL_15;
        }

        v84 = *(result + 4);
        v85 = *(result + 5);
        if (v85 < v84 || (v86 = (v84 + 1) / 2, v87 = ((v84 + 1 + ((v84 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v86, v84 >= v87))
        {
          v88 = 1;
        }

        else if (v87 >> 61)
        {
          v88 = 0;
          *(result + 4) = 12;
          *result = &byte_2A13C2DD8;
          *(result + 1) = &byte_2A13C2DD8;
        }

        else
        {
          v83 = malloc_type_realloc(v83, 24 * v86, 0x100004000313F17uLL);
          if (v83)
          {
            *(result + 3) = v83;
            *(result + 4) = v87;
            v88 = *(result + 4) == 0;
          }

          else
          {
            if (!*(result + 4))
            {
              *(result + 4) = 12;
            }

            v88 = 0;
            *result = &byte_2A13C2DD8;
            *(result + 1) = &byte_2A13C2DD8;
            v83 = *(result + 3);
          }
        }

        v89 = *(result + 5);
        *(result + 5) = v89 + 1;
        v83[v89] = (v85 - v24) | 0x50000000;
        if (!v88)
        {
          goto LABEL_15;
        }

        v90 = *(result + 4);
        v91 = *(result + 5);
        if (v91 >= v90)
        {
          v92 = (v90 + 1) / 2;
          v93 = ((v90 + 1 + ((v90 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v92;
          if (v90 < v93)
          {
            if (v93 >> 61)
            {
              *(result + 4) = 12;
              *result = &byte_2A13C2DD8;
              *(result + 1) = &byte_2A13C2DD8;
            }

            else
            {
              v83 = malloc_type_realloc(v83, 24 * v92, 0x100004000313F17uLL);
              if (v83)
              {
                *(result + 3) = v83;
                *(result + 4) = v93;
              }

              else
              {
                if (!*(result + 4))
                {
                  *(result + 4) = 12;
                }

                *result = &byte_2A13C2DD8;
                *(result + 1) = &byte_2A13C2DD8;
                v83 = *(result + 3);
              }
            }
          }
        }

        v122 = *(result + 5);
        *(result + 5) = v122 + 1;
        v83[v122] = (v91 - v24 + 1) | 0x58000000;
        v123 = v83[v91];
        v124 = *(result + 9);
        if (v124 >= v24)
        {
          *(result + 9) = v124 + 1;
          v125 = *(result + 19);
          if (v125 >= v24)
          {
            goto LABEL_281;
          }

LABEL_258:
          v126 = *(result + 10);
          if (v126 < v24)
          {
            goto LABEL_259;
          }

LABEL_282:
          *(result + 10) = v126 + 1;
          v127 = *(result + 20);
          if (v127 >= v24)
          {
            goto LABEL_283;
          }

LABEL_260:
          v128 = *(result + 11);
          if (v128 < v24)
          {
            goto LABEL_261;
          }

LABEL_284:
          *(result + 11) = v128 + 1;
          v129 = *(result + 21);
          if (v129 >= v24)
          {
            goto LABEL_285;
          }

LABEL_262:
          v130 = *(result + 12);
          if (v130 < v24)
          {
            goto LABEL_263;
          }

LABEL_286:
          *(result + 12) = v130 + 1;
          v131 = *(result + 22);
          if (v131 >= v24)
          {
            goto LABEL_287;
          }

LABEL_264:
          v132 = *(result + 13);
          if (v132 < v24)
          {
            goto LABEL_265;
          }

LABEL_288:
          *(result + 13) = v132 + 1;
          v133 = *(result + 23);
          if (v133 >= v24)
          {
            goto LABEL_289;
          }

LABEL_266:
          v134 = *(result + 14);
          if (v134 < v24)
          {
            goto LABEL_267;
          }

LABEL_290:
          *(result + 14) = v134 + 1;
          v135 = *(result + 24);
          if (v135 >= v24)
          {
            goto LABEL_291;
          }

LABEL_268:
          v136 = *(result + 15);
          if (v136 < v24)
          {
            goto LABEL_269;
          }

LABEL_292:
          *(result + 15) = v136 + 1;
          v137 = *(result + 25);
          if (v137 >= v24)
          {
            goto LABEL_293;
          }

LABEL_270:
          v138 = *(result + 16);
          if (v138 < v24)
          {
            goto LABEL_271;
          }

LABEL_294:
          *(result + 16) = v138 + 1;
          v139 = *(result + 26);
          if (v139 >= v24)
          {
            goto LABEL_295;
          }

LABEL_272:
          v140 = *(result + 17);
          if (v140 < v24)
          {
            goto LABEL_273;
          }

LABEL_296:
          *(result + 17) = v140 + 1;
          v141 = *(result + 27);
          if (v141 >= v24)
          {
LABEL_274:
            *(result + 27) = v141 + 1;
          }
        }

        else
        {
          v125 = *(result + 19);
          if (v125 < v24)
          {
            goto LABEL_258;
          }

LABEL_281:
          *(result + 19) = v125 + 1;
          v126 = *(result + 10);
          if (v126 >= v24)
          {
            goto LABEL_282;
          }

LABEL_259:
          v127 = *(result + 20);
          if (v127 < v24)
          {
            goto LABEL_260;
          }

LABEL_283:
          *(result + 20) = v127 + 1;
          v128 = *(result + 11);
          if (v128 >= v24)
          {
            goto LABEL_284;
          }

LABEL_261:
          v129 = *(result + 21);
          if (v129 < v24)
          {
            goto LABEL_262;
          }

LABEL_285:
          *(result + 21) = v129 + 1;
          v130 = *(result + 12);
          if (v130 >= v24)
          {
            goto LABEL_286;
          }

LABEL_263:
          v131 = *(result + 22);
          if (v131 < v24)
          {
            goto LABEL_264;
          }

LABEL_287:
          *(result + 22) = v131 + 1;
          v132 = *(result + 13);
          if (v132 >= v24)
          {
            goto LABEL_288;
          }

LABEL_265:
          v133 = *(result + 23);
          if (v133 < v24)
          {
            goto LABEL_266;
          }

LABEL_289:
          *(result + 23) = v133 + 1;
          v134 = *(result + 14);
          if (v134 >= v24)
          {
            goto LABEL_290;
          }

LABEL_267:
          v135 = *(result + 24);
          if (v135 < v24)
          {
            goto LABEL_268;
          }

LABEL_291:
          *(result + 24) = v135 + 1;
          v136 = *(result + 15);
          if (v136 >= v24)
          {
            goto LABEL_292;
          }

LABEL_269:
          v137 = *(result + 25);
          if (v137 < v24)
          {
            goto LABEL_270;
          }

LABEL_293:
          *(result + 25) = v137 + 1;
          v138 = *(result + 16);
          if (v138 >= v24)
          {
            goto LABEL_294;
          }

LABEL_271:
          v139 = *(result + 26);
          if (v139 < v24)
          {
            goto LABEL_272;
          }

LABEL_295:
          *(result + 26) = v139 + 1;
          v140 = *(result + 17);
          if (v140 >= v24)
          {
            goto LABEL_296;
          }

LABEL_273:
          v141 = *(result + 27);
          if (v141 >= v24)
          {
            goto LABEL_274;
          }
        }

        memmove(&v83[v24 + 1], &v83[v24], 8 * (*(result + 5) + ~v24));
        v142 = *(result + 3);
        v142[v24] = v123;
        if (!*(result + 4))
        {
          v143 = *(result + 4);
          v144 = *(result + 5);
          if (v144 >= v143)
          {
            v145 = (v143 + 1) / 2;
            v146 = ((v143 + 1 + ((v143 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v145;
            if (v143 < v146)
            {
              if (v146 >> 61)
              {
                *(result + 4) = 12;
                *result = &byte_2A13C2DD8;
                *(result + 1) = &byte_2A13C2DD8;
              }

              else
              {
                v142 = malloc_type_realloc(v142, 24 * v145, 0x100004000313F17uLL);
                if (v142)
                {
                  *(result + 3) = v142;
                  *(result + 4) = v146;
                }

                else
                {
                  if (!*(result + 4))
                  {
                    *(result + 4) = 12;
                  }

                  *result = &byte_2A13C2DD8;
                  *(result + 1) = &byte_2A13C2DD8;
                  v142 = *(result + 3);
                }
              }
            }
          }

          v147 = *(result + 5);
          *(result + 5) = v147 + 1;
          v142[v147] = (v144 - v24) | 0x60000000;
        }

        goto LABEL_15;
      }

      goto LABEL_15;
    }

    if (v10 != 1 && v107 == 92 && v8[1] == 123)
    {
      v108 = v8 + 2;
      *result = v8 + 2;
      v109 = v9 - (v8 + 2);
      if (v109 < 1)
      {
        v111 = 0;
      }

      else
      {
        v110 = 0;
        v111 = 0;
        while (*v108 - 48 <= 9 && v111 <= 255)
        {
          v112 = v108 + 1;
          *result = v108 + 1;
          v111 = (*v108 + 10 * v111 - 48);
          ++v110;
          --v109;
          ++v108;
          if (v109 <= 0)
          {
            goto LABEL_212;
          }
        }

        v112 = v108;
        if (!v110)
        {
          goto LABEL_213;
        }

LABEL_212:
        if (v111 < 256)
        {
          goto LABEL_216;
        }
      }

LABEL_213:
      if (!*(result + 4))
      {
        *(result + 4) = 10;
      }

      *result = &byte_2A13C2DD8;
      *(result + 1) = &byte_2A13C2DD8;
      v112 = &byte_2A13C2DD8;
      v9 = &byte_2A13C2DD8;
LABEL_216:
      v113 = v111;
      if (v9 - v112 >= 1)
      {
        v113 = v111;
        if (*v112 == 44)
        {
          v114 = v112 + 1;
          *result = v114;
          v115 = v9 - v114;
          if (v9 - v114 < 1 || *v114 - 48 > 9)
          {
            v113 = 256;
          }

          else
          {
            v116 = 0;
            v113 = 0;
            while (1)
            {
              v117 = &v114[v116];
              if (v114[v116] - 48 > 9 || v113 > 255)
              {
                break;
              }

              *result = v117 + 1;
              v113 = (*v117 + 10 * v113 - 48);
              ++v116;
              if (--v115 <= 0)
              {
                LODWORD(v116) = 1;
                break;
              }
            }

            if (!v116 || v113 >= 256)
            {
              if (!*(result + 4))
              {
                *(result + 4) = 10;
              }

              *result = &byte_2A13C2DD8;
              *(result + 1) = &byte_2A13C2DD8;
            }

            if (v111 > v113)
            {
              if (!*(result + 4))
              {
                *(result + 4) = 10;
              }

              *result = &byte_2A13C2DD8;
              *(result + 1) = &byte_2A13C2DD8;
            }
          }
        }
      }

      sub_298BA2BE4(result, v24, v111, v113);
      v118 = *result;
      v119 = *(result + 1) - *result;
      if (v119 <= 1)
      {
        if (v119 == 1)
        {
LABEL_240:
          v120 = v118 + 1;
          while (1)
          {
            if (--v119)
            {
              if (*(v120 - 1) == 92 && *v120 == 125)
              {
                break;
              }
            }

            *result = v120++;
            if (v119 <= 0)
            {
              goto LABEL_247;
            }
          }

          if (!*(result + 4))
          {
            v121 = 10;
            goto LABEL_249;
          }
        }

        else
        {
LABEL_247:
          if (!*(result + 4))
          {
            v121 = 9;
LABEL_249:
            *(result + 4) = v121;
          }
        }

        *result = &byte_2A13C2DD8;
        *(result + 1) = &byte_2A13C2DD8;
        goto LABEL_15;
      }

      if (*v118 != 92 || v118[1] != 125)
      {
        goto LABEL_240;
      }

      *result = v118 + 2;
LABEL_15:
      v21 = 0;
      v8 = *result;
      v9 = *(result + 1);
      v10 = &v9[-*result];
      v22 = 1;
      if (v10 <= 0)
      {
        break;
      }
    }

    else
    {
LABEL_207:
      if (v26 != 36)
      {
        goto LABEL_15;
      }

      v21 = 1;
      v22 = 1;
      if (v10 <= 0)
      {
        break;
      }
    }
  }

  v148 = *(result + 5);
  if (v21)
  {
    v149 = v148 - 1;
    *(result + 5) = v148 - 1;
    v12 = v157;
    if (!*(result + 4))
    {
      v150 = *(result + 4);
      if (v148 > v150)
      {
        v151 = (v150 + 1) / 2;
        v152 = ((v150 + 1 + ((v150 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v151;
        if (v150 < v152)
        {
          if (v152 >> 61)
          {
            goto LABEL_311;
          }

          v153 = malloc_type_realloc(*(result + 3), 24 * v151, 0x100004000313F17uLL);
          if (v153)
          {
            *(result + 3) = v153;
            *(result + 4) = v152;
          }

          else
          {
            if (!*(result + 4))
            {
LABEL_311:
              *(result + 4) = 12;
            }

            *result = &byte_2A13C2DD8;
            *(result + 1) = &byte_2A13C2DD8;
          }
        }
      }

      v154 = *(result + 3);
      v155 = *(result + 5);
      *(result + 5) = v155 + 1;
      *(v154 + 8 * v155) = 0x20000000;
      v149 = *(result + 5);
    }

    v156 = *(result + 7);
    *(v156 + 72) |= 2u;
    ++*(v156 + 80);
  }

  else
  {
    v149 = *(result + 5);
    v12 = v157;
  }

LABEL_319:
  if (v149 == v12)
  {
LABEL_320:
    if (!*(result + 4))
    {
      *(result + 4) = 14;
    }

    *result = &byte_2A13C2DD8;
    *(result + 1) = &byte_2A13C2DD8;
  }
}

void sub_298BA1398(uint64_t a1, int32x4_t a2, int32x4_t a3, int32x4_t a4, int32x4_t a5)
{
  v6 = *a1;
  if ((*(a1 + 8) - *a1) >= 6)
  {
    if (strncmp(*a1, "[:<:]]", 6uLL))
    {
      if (strncmp(v6, "[:>:]]", 6uLL))
      {
        goto LABEL_4;
      }

      if (!*(a1 + 16))
      {
        v30 = *(a1 + 32);
        if (*(a1 + 40) < v30)
        {
          goto LABEL_312;
        }

        v31 = (v30 + 1) / 2;
        v32 = ((v30 + 1 + ((v30 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v31;
        if (v30 >= v32)
        {
          goto LABEL_312;
        }

        if (v32 >> 61)
        {
          goto LABEL_30;
        }

        v130 = malloc_type_realloc(*(a1 + 24), 24 * v31, 0x100004000313F17uLL);
        if (v130)
        {
          *(a1 + 24) = v130;
          *(a1 + 32) = v32;
          v6 = *a1;
          goto LABEL_312;
        }

        if (!*(a1 + 16))
        {
LABEL_30:
          *(a1 + 16) = 12;
        }

        v6 = &byte_2A13C2DD8;
        *(a1 + 8) = &byte_2A13C2DD8;
LABEL_312:
        v115 = *(a1 + 24);
        v116 = *(a1 + 40);
        *(a1 + 40) = v116 + 1;
        v117 = 2684354560;
        goto LABEL_313;
      }

LABEL_314:
      *a1 = v6 + 6;
      return;
    }

    if (*(a1 + 16))
    {
      goto LABEL_314;
    }

    v27 = *(a1 + 32);
    if (*(a1 + 40) >= v27)
    {
      v28 = (v27 + 1) / 2;
      v29 = ((v27 + 1 + ((v27 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v28;
      if (v27 < v29)
      {
        if (v29 >> 61)
        {
          goto LABEL_24;
        }

        v114 = malloc_type_realloc(*(a1 + 24), 24 * v28, 0x100004000313F17uLL);
        if (v114)
        {
          *(a1 + 24) = v114;
          *(a1 + 32) = v29;
          v6 = *a1;
          goto LABEL_294;
        }

        if (!*(a1 + 16))
        {
LABEL_24:
          *(a1 + 16) = 12;
        }

        v6 = &byte_2A13C2DD8;
        *(a1 + 8) = &byte_2A13C2DD8;
      }
    }

LABEL_294:
    v115 = *(a1 + 24);
    v116 = *(a1 + 40);
    *(a1 + 40) = v116 + 1;
    v117 = 2550136832;
LABEL_313:
    *(v115 + 8 * v116) = v117;
    goto LABEL_314;
  }

LABEL_4:
  v7 = *(a1 + 56);
  v8 = *(v7 + 20);
  v9 = *(v7 + 16);
  *(v7 + 20) = v8 + 1;
  v10 = *(a1 + 48);
  if (v8 >= v10)
  {
    v21 = (v10 + 8);
    *(a1 + 48) = v21;
    if (v10 < -8)
    {
      goto LABEL_256;
    }

    v22 = malloc_type_realloc(*(v7 + 24), 32 * (v10 + 8), 0x1010040FE74B554uLL);
    v7 = *(a1 + 56);
    if (!v22)
    {
      goto LABEL_256;
    }

    v23 = (v21 >> 3) * v9;
    *(v7 + 24) = v22;
    v24 = malloc_type_realloc(*(v7 + 32), v23, 0x100004077774924uLL);
    v7 = *(a1 + 56);
    if (!v24)
    {
      goto LABEL_256;
    }

    *(v7 + 32) = v24;
    if (v8 >= 1)
    {
      v25 = *(v7 + 24);
      if (v8 == 1)
      {
        v26 = 0;
LABEL_253:
        v101 = (v25 + 32 * v26);
        do
        {
          *v101 = &v24[(v26 >> 3) * v9];
          v101 += 4;
          ++v26;
        }

        while (v8 != v26);
        goto LABEL_255;
      }

      v98 = 0;
      v26 = v8 & 0x7FFFFFFE;
      v99 = (v25 + 32);
      do
      {
        v100 = &v24[(v98 >> 3) * v9];
        *(v99 - 4) = v100;
        *v99 = v100;
        v99 += 8;
        v98 += 2;
      }

      while (v26 != v98);
      if (v26 != v8)
      {
        goto LABEL_253;
      }
    }

LABEL_255:
    bzero(&v24[v23 - v9], v9);
    v7 = *(a1 + 56);
    v11 = *(v7 + 24);
    if (!v11)
    {
      goto LABEL_256;
    }

    goto LABEL_6;
  }

  v11 = *(v7 + 24);
  if (!v11)
  {
LABEL_256:
    free(*(v7 + 24));
    v102 = *(a1 + 56);
    *(v102 + 24) = 0;
    free(*(v102 + 32));
    *(*(a1 + 56) + 32) = 0;
    if (!*(a1 + 16))
    {
      *(a1 + 16) = 12;
    }

    *a1 = &byte_2A13C2DD8;
    *(a1 + 8) = &byte_2A13C2DD8;
    return;
  }

LABEL_6:
  v12 = *(v7 + 32);
  if (!v12)
  {
    goto LABEL_256;
  }

  v13 = (v11 + 32 * v8);
  v14 = v12 + v9 * (v8 / 8);
  *v13 = v14;
  v15 = 1;
  v16 = 1 << (v8 & 7);
  *(v13 + 4) = v16;
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  v17 = *a1;
  v18 = *(a1 + 8);
  if (&v18[-*a1] < 1)
  {
    goto LABEL_34;
  }

  v19 = *v17;
  v15 = v19 != 94;
  if (v19 == 94)
  {
    *a1 = ++v17;
    if (v18 - v17 < 1)
    {
      v15 = 0;
      goto LABEL_260;
    }

    v19 = *v17;
  }

  if (v19 == 93)
  {
    v20 = 93;
  }

  else
  {
    if (v19 != 45)
    {
      goto LABEL_34;
    }

    v20 = 45;
  }

  *a1 = v17 + 1;
  *(v14 + v20) |= v16;
  v13[9] += v19;
  v17 = *a1;
  v18 = *(a1 + 8);
LABEL_34:
  v33 = v18 - v17;
  if (v18 - v17 >= 1)
  {
    v34 = "NUL";
    v35 = &off_29EEB5930;
    while (1)
    {
      v36 = *v17;
      if (v36 == 93)
      {
        goto LABEL_260;
      }

      if (v33 != 1 && v36 == 45)
      {
        if (v17[1] == 93)
        {
          *a1 = v17 + 1;
          *(*v13 + 45) |= v13[8];
          v13[9] += 45;
          v17 = *a1;
          v18 = *(a1 + 8);
          goto LABEL_260;
        }

        goto LABEL_150;
      }

      if (v36 == 45)
      {
        goto LABEL_150;
      }

      if (v36 != 91 || v33 == 1)
      {
LABEL_51:
        if (v36 == 91 && (v38 = v18 - v17, v18 - v17 >= 2) && v17[1] == 46)
        {
          v39 = v17 + 2;
          *a1 = v17 + 2;
          if (v18 - (v17 + 2) < 1)
          {
LABEL_85:
            if (!*(a1 + 16))
            {
              *(a1 + 16) = 7;
            }

            v47 = 0;
            *a1 = &byte_2A13C2DD8;
            *(a1 + 8) = &byte_2A13C2DD8;
            v43 = &byte_2A13C2DD8;
            v18 = &byte_2A13C2DD8;
          }

          else
          {
            v40 = 0;
            v41 = -2;
            while (1)
            {
              v42 = &v17[v40];
              if (v38 - 3 != v40 && v42[2] == 46 && v17[v40 + 3] == 93)
              {
                break;
              }

              *a1 = v42 + 3;
              ++v40;
              --v41;
              if (v38 + v41 <= 0)
              {
                goto LABEL_85;
              }
            }

            v43 = &v17[v40 + 2];
            v44 = v35;
            v45 = v34;
            do
            {
              if (!strncmp(v45, v39, v40) && strlen(v45) == v40)
              {
                v47 = *(v44 - 8);
                v34 = "NUL";
                v35 = &off_29EEB5930;
                goto LABEL_88;
              }

              v48 = *v44;
              v44 += 2;
              v45 = v48;
            }

            while (v48);
            if (v40 == 1)
            {
              v47 = *v39;
              v34 = "NUL";
              v35 = &off_29EEB5930;
            }

            else
            {
              if (!*(a1 + 16))
              {
                *(a1 + 16) = 3;
              }

              v47 = 0;
              *a1 = &byte_2A13C2DD8;
              *(a1 + 8) = &byte_2A13C2DD8;
              v43 = &byte_2A13C2DD8;
              v18 = &byte_2A13C2DD8;
              v34 = "NUL";
              v35 = &off_29EEB5930;
            }
          }

LABEL_88:
          if (v18 - v43 > 1 && *v43 == 46 && v43[1] == 93)
          {
            v46 = v43 + 2;
            *a1 = v43 + 2;
          }

          else
          {
            if (!*(a1 + 16))
            {
              *(a1 + 16) = 3;
            }

            *a1 = &byte_2A13C2DD8;
            *(a1 + 8) = &byte_2A13C2DD8;
            v46 = &byte_2A13C2DD8;
            v18 = &byte_2A13C2DD8;
          }
        }

        else
        {
          v46 = v17 + 1;
          *a1 = v17 + 1;
          v47 = *v17;
        }

        LOBYTE(v57) = v47;
        if (v18 - v46 >= 1)
        {
          LOBYTE(v57) = v47;
          if (v18 - v46 != 1)
          {
            LOBYTE(v57) = v47;
            if (*v46 == 45)
            {
              v58 = v46 + 1;
              LOBYTE(v57) = v47;
              if (v46[1] != 93)
              {
                *a1 = v58;
                if (v18 - v58 < 1)
                {
                  if (!*(a1 + 16))
                  {
                    *(a1 + 16) = 7;
                  }

                  *a1 = &byte_2A13C2DD8;
                  *(a1 + 8) = &byte_2A13C2DD8;
                  v58 = &byte_2A13C2DD8;
                  v18 = &byte_2A13C2DD8;
                }

                else
                {
                  v57 = *v58;
                  if (v57 == 45)
                  {
LABEL_101:
                    *a1 = v46 + 2;
                    v57 = v57;
                    if (v57 >= v47)
                    {
                      goto LABEL_198;
                    }

                    goto LABEL_150;
                  }
                }

                v70 = v18 - v58;
                if (v18 - v58 >= 2 && *v58 == 91 && v58[1] == 46)
                {
                  v71 = v58 + 2;
                  *a1 = v58 + 2;
                  if (v18 - (v58 + 2) < 1)
                  {
LABEL_189:
                    if (!*(a1 + 16))
                    {
                      *(a1 + 16) = 7;
                    }

                    LOBYTE(v57) = 0;
                    *a1 = &byte_2A13C2DD8;
                    *(a1 + 8) = &byte_2A13C2DD8;
                    v46 = &byte_2A13C2DD8;
                    v18 = &byte_2A13C2DD8;
                  }

                  else
                  {
                    v72 = 0;
                    v73 = -2;
                    while (1)
                    {
                      v74 = &v58[v72];
                      if (v70 - 3 != v72 && v74[2] == 46 && v58[v72 + 3] == 93)
                      {
                        break;
                      }

                      *a1 = v74 + 3;
                      ++v72;
                      --v73;
                      if (v70 + v73 <= 0)
                      {
                        goto LABEL_189;
                      }
                    }

                    v168 = &v58[v72 + 2];
                    v75 = v35;
                    v76 = v34;
                    do
                    {
                      if (!strncmp(v76, v71, v72) && strlen(v76) == v72)
                      {
                        LOBYTE(v57) = *(v75 - 8);
                        v34 = "NUL";
                        v35 = &off_29EEB5930;
                        v46 = v168;
                        goto LABEL_192;
                      }

                      v77 = *v75;
                      v75 += 2;
                      v76 = v77;
                    }

                    while (v77);
                    if (v72 == 1)
                    {
                      LOBYTE(v57) = *v71;
                      v34 = "NUL";
                      v35 = &off_29EEB5930;
                      v46 = v168;
                    }

                    else
                    {
                      if (!*(a1 + 16))
                      {
                        *(a1 + 16) = 3;
                      }

                      LOBYTE(v57) = 0;
                      *a1 = &byte_2A13C2DD8;
                      *(a1 + 8) = &byte_2A13C2DD8;
                      v46 = &byte_2A13C2DD8;
                      v18 = &byte_2A13C2DD8;
                      v34 = "NUL";
                      v35 = &off_29EEB5930;
                    }
                  }

LABEL_192:
                  if (v18 - v46 > 1 && *v46 == 46 && v46[1] == 93)
                  {
                    goto LABEL_101;
                  }

                  if (!*(a1 + 16))
                  {
                    *(a1 + 16) = 3;
                  }

                  *a1 = &byte_2A13C2DD8;
                  *(a1 + 8) = &byte_2A13C2DD8;
                  v57 = v57;
                  if (v57 >= v47)
                  {
LABEL_198:
                    v80 = v47;
                    v81 = v57 + 1;
                    do
                    {
                      *(*v13 + v80) |= v13[8];
                      v13[9] += v80++;
                    }

                    while (v81 != v80);
                    v17 = *a1;
                    v18 = *(a1 + 8);
                    goto LABEL_39;
                  }

LABEL_150:
                  if (!*(a1 + 16))
                  {
                    *(a1 + 16) = 11;
                  }

                  goto LABEL_38;
                }

                *a1 = v58 + 1;
                LOBYTE(v57) = *v58;
              }
            }
          }
        }

        v57 = v57;
        if (v57 >= v47)
        {
          goto LABEL_198;
        }

        goto LABEL_150;
      }

      v49 = v17[1];
      if (v49 != 61)
      {
        break;
      }

      v59 = v17 + 2;
      *a1 = v17 + 2;
      if (v18 - (v17 + 2) <= 0)
      {
        if (!*(a1 + 16))
        {
          *(a1 + 16) = 7;
        }

        *a1 = &byte_2A13C2DD8;
        *(a1 + 8) = &byte_2A13C2DD8;
        v18 = &byte_2A13C2DD8;
        v59 = &byte_2A13C2DD8;
      }

      v60 = *v59;
      if (v60 == 93 || v60 == 45)
      {
        if (!*(a1 + 16))
        {
          *(a1 + 16) = 3;
        }

        *a1 = &byte_2A13C2DD8;
        *(a1 + 8) = &byte_2A13C2DD8;
        v18 = &byte_2A13C2DD8;
        v59 = &byte_2A13C2DD8;
      }

      if (v18 - v59 < 1)
      {
LABEL_123:
        if (!*(a1 + 16))
        {
          *(a1 + 16) = 7;
        }

        v68 = 0;
        *a1 = &byte_2A13C2DD8;
        *(a1 + 8) = &byte_2A13C2DD8;
      }

      else
      {
        v61 = 0;
        v62 = 0;
        while (v18 - v59 - 1 == v62 || v59[v62] != 61 || v59[v62 + 1] != 93)
        {
          *a1 = &v59[++v62];
          --v61;
          if (v18 - v59 + v61 <= 0)
          {
            goto LABEL_123;
          }
        }

        v63 = v35;
        v64 = v35;
        v65 = v34;
        v66 = v34;
        do
        {
          if (!strncmp(v66, v59, v62) && strlen(v66) == v62)
          {
            v68 = *(v64 - 8);
            v34 = v65;
            v35 = v63;
            goto LABEL_126;
          }

          v67 = *v64;
          v64 += 2;
          v66 = v67;
        }

        while (v67);
        if (v62 == 1)
        {
          v68 = *v59;
          v34 = v65;
          v35 = v63;
        }

        else
        {
          if (!*(a1 + 16))
          {
            *(a1 + 16) = 3;
          }

          v68 = 0;
          *a1 = &byte_2A13C2DD8;
          *(a1 + 8) = &byte_2A13C2DD8;
          v34 = v65;
          v35 = v63;
        }
      }

LABEL_126:
      *(*v13 + v68) |= v13[8];
      v13[9] += v68;
      v69 = *a1;
      v18 = *(a1 + 8);
      if (&v18[-*a1] < 1)
      {
        if (!*(a1 + 16))
        {
          *(a1 + 16) = 7;
        }

        *a1 = &byte_2A13C2DD8;
        *(a1 + 8) = &byte_2A13C2DD8;
        v69 = &byte_2A13C2DD8;
        v18 = &byte_2A13C2DD8;
      }

      if (v18 - v69 > 1 && *v69 == 61 && v69[1] == 93)
      {
LABEL_244:
        v17 = v69 + 2;
        *a1 = v17;
        goto LABEL_39;
      }

      if (!*(a1 + 16))
      {
        *(a1 + 16) = 3;
      }

LABEL_38:
      *a1 = &byte_2A13C2DD8;
      *(a1 + 8) = &byte_2A13C2DD8;
      v17 = &byte_2A13C2DD8;
      v18 = &byte_2A13C2DD8;
LABEL_39:
      v33 = v18 - v17;
      if (v18 - v17 <= 0)
      {
        goto LABEL_260;
      }
    }

    if (v49 != 58)
    {
      goto LABEL_51;
    }

    v50 = (v17 + 2);
    *a1 = v17 + 2;
    if (v18 - (v17 + 2) <= 0)
    {
      if (!*(a1 + 16))
      {
        *(a1 + 16) = 7;
      }

      *a1 = &byte_2A13C2DD8;
      *(a1 + 8) = &byte_2A13C2DD8;
      v18 = &byte_2A13C2DD8;
      v50 = &byte_2A13C2DD8;
    }

    v51 = *v50;
    if (v51 == 93 || v51 == 45)
    {
      if (!*(a1 + 16))
      {
        *(a1 + 16) = 4;
      }

      *a1 = &byte_2A13C2DD8;
      *(a1 + 8) = &byte_2A13C2DD8;
      v18 = &byte_2A13C2DD8;
      v50 = &byte_2A13C2DD8;
    }

    if (&v18[-v50] >= 1)
    {
      v52 = -v50;
      v53 = (v50 + 1);
      v54 = MEMORY[0x29EDCA600];
      while (1)
      {
        v55 = *(v53 - 1);
        if (v55 < 0)
        {
          if (!__maskrune(*(v53 - 1), 0x100uLL))
          {
LABEL_157:
            v56 = *a1;
            goto LABEL_158;
          }
        }

        else if ((*(v54 + 4 * v55 + 60) & 0x100) == 0)
        {
          goto LABEL_157;
        }

        *a1 = v53;
        --v52;
        ++v53;
        if (*(a1 + 8) + v52 <= 0)
        {
          v56 = -v52;
          goto LABEL_158;
        }
      }
    }

    v56 = v50;
LABEL_158:
    v78 = v56 - v50;
    if (!strncmp("alnum", v50, v56 - v50) && !aAlnum[v78])
    {
      v79 = off_29EEB57E8;
    }

    else if (!strncmp("alpha", v50, v78) && !aAlpha[v78])
    {
      v79 = off_29EEB5800;
    }

    else if (!strncmp("blank", v50, v78) && !aBlank[v78])
    {
      v79 = off_29EEB5818;
    }

    else if (!strncmp("cntrl", v50, v78) && !aCntrl[v78])
    {
      v79 = off_29EEB5830;
    }

    else if (!strncmp("digit", v50, v78) && !aDigit[v78])
    {
      v79 = off_29EEB5848;
    }

    else if (!strncmp("graph", v50, v78) && !aGraph[v78])
    {
      v79 = off_29EEB5860;
    }

    else if (!strncmp("lower", v50, v78) && !aLower[v78])
    {
      v79 = off_29EEB5878;
    }

    else if (!strncmp("print", v50, v78) && !aPrint[v78])
    {
      v79 = off_29EEB5890;
    }

    else if (!strncmp("punct", v50, v78) && !aPunct[v78])
    {
      v79 = off_29EEB58A8;
    }

    else if (!strncmp("space", v50, v78) && !aSpace_0[v78])
    {
      v79 = off_29EEB58C0;
    }

    else if (!strncmp("upper", v50, v78) && !aUpper[v78])
    {
      v79 = off_29EEB58D8;
    }

    else
    {
      if (strncmp("xdigit", v50, v78) || aXdigit[v78])
      {
        if (!*(a1 + 16))
        {
          *(a1 + 16) = 4;
        }

        *a1 = &byte_2A13C2DD8;
        *(a1 + 8) = &byte_2A13C2DD8;
LABEL_223:
        v69 = *a1;
        v18 = *(a1 + 8);
        if (&v18[-*a1] < 1)
        {
          v34 = "NUL";
          v35 = &off_29EEB5930;
          if (!*(a1 + 16))
          {
            *(a1 + 16) = 7;
          }

          *a1 = &byte_2A13C2DD8;
          *(a1 + 8) = &byte_2A13C2DD8;
          v69 = &byte_2A13C2DD8;
          v18 = &byte_2A13C2DD8;
        }

        else
        {
          v34 = "NUL";
          v35 = &off_29EEB5930;
        }

        if (v18 - v69 > 1 && *v69 == 58 && v69[1] == 93)
        {
          goto LABEL_244;
        }

        if (!*(a1 + 16))
        {
          *(a1 + 16) = 4;
        }

        goto LABEL_38;
      }

      v79 = off_29EEB58F0;
    }

    v82 = v79[1];
    v83 = *v82;
    if (*v82)
    {
      v84 = (v82 + 1);
      do
      {
        *(*v13 + v83) |= v13[8];
        v13[9] += v83;
        v85 = *v84++;
        v83 = v85;
      }

      while (v85);
    }

    v86 = v79[2];
    if (*v86)
    {
      do
      {
        v89 = *(v13 + 2);
        v90 = v89 + strlen(v86) + 1;
        *(v13 + 2) = v90;
        v91 = malloc_type_realloc(*(v13 + 3), v90, 0xBC45E43CuLL);
        if (v91)
        {
          *(v13 + 3) = v91;
          v92 = *(v13 + 2);
          if (v92 - v89 != -1)
          {
            v93 = &v91[v89 - 1];
            v94 = v89 - v92;
            v95 = v86;
            while (v94)
            {
              v96 = *v95++;
              *v93++ = v96;
              ++v94;
              if (!v96)
              {
                goto LABEL_226;
              }
            }

            *v93 = 0;
          }
        }

        else
        {
          v97 = *(v13 + 3);
          if (v97)
          {
            free(v97);
          }

          *(v13 + 3) = 0;
          if (!*(a1 + 16))
          {
            *(a1 + 16) = 12;
          }

          *a1 = &byte_2A13C2DD8;
          *(a1 + 8) = &byte_2A13C2DD8;
        }

LABEL_226:
        v87 = &v86[strlen(v86)];
        v88 = *(v87 + 1);
        v86 = v87 + 1;
      }

      while (v88);
    }

    goto LABEL_223;
  }

LABEL_260:
  if (v18 - v17 < 1 || (*a1 = v17 + 1, *v17 != 93))
  {
    if (!*(a1 + 16))
    {
      *(a1 + 16) = 7;
    }

    *a1 = &byte_2A13C2DD8;
    *(a1 + 8) = &byte_2A13C2DD8;
    goto LABEL_287;
  }

  if (*(a1 + 16))
  {
LABEL_287:
    v110 = *(a1 + 56);
    v111 = *(v110 + 16);
    v112 = *(v110 + 24) + 32 * *(v110 + 20);
    if (v111)
    {
      for (i = 0; i != v111; ++i)
      {
        *(*v13 + i) &= ~v13[8];
        v13[9] -= i;
      }
    }

LABEL_290:
    if ((v112 - 32) == v13)
    {
      --*(*(a1 + 56) + 20);
    }

    return;
  }

  v103 = *(a1 + 56);
  if ((*(v103 + 40) & 2) != 0)
  {
    v104 = *(v103 + 16);
    if (v104 >= 1)
    {
      v105 = MEMORY[0x29EDCA600];
      while (1)
      {
        v106 = v104 - 1;
        v107 = (v104 - 1);
        if ((v13[8] & *(*v13 + v107)) == 0)
        {
          goto LABEL_266;
        }

        if (v104 > 0x80)
        {
          if (!__maskrune(v104 - 1, 0x100uLL))
          {
            goto LABEL_266;
          }
        }

        else if ((*(v105 + 4 * v104 + 56) & 0x100) == 0)
        {
          goto LABEL_266;
        }

        if (v106 > 0x7Fu)
        {
          if (__maskrune(v106, 0x8000uLL))
          {
LABEL_276:
            v109 = __tolower(v106);
            if (v106 != v109)
            {
              goto LABEL_283;
            }

            goto LABEL_266;
          }

          v108 = __maskrune(v106, 0x1000uLL);
        }

        else
        {
          if ((*(v105 + 4 * v107 + 60) & 0x8000) != 0)
          {
            goto LABEL_276;
          }

          v108 = *(v105 + 4 * v107 + 60) & 0x1000;
        }

        if (v108)
        {
          v109 = __toupper(v106);
          if (v106 != v109)
          {
            goto LABEL_283;
          }
        }

        else
        {
          v109 = v106;
          if (v106 != v106)
          {
LABEL_283:
            *(*v13 + v109) |= v13[8];
            v13[9] += v109;
          }
        }

LABEL_266:
        v104 = v106;
        if (v106 + 1 <= 1)
        {
          v103 = *(a1 + 56);
          break;
        }
      }
    }
  }

  if (!v15)
  {
    v118 = *(v103 + 16);
    if (v118 >= 1)
    {
      v119 = v118 + 1;
      do
      {
        while (1)
        {
          v120 = v119 - 2;
          v121 = *v13;
          v122 = (v119 - 2);
          v123 = *(*v13 + v122);
          v124 = v13[8];
          if ((v124 & v123) != 0)
          {
            break;
          }

          *(v121 + v122) = v124 | v123;
          v13[9] += v120;
          if (--v119 <= 1)
          {
            goto LABEL_302;
          }
        }

        *(v121 + v122) = v123 & ~v124;
        v13[9] -= v120;
        --v119;
      }

      while (v119 > 1);
LABEL_302:
      v103 = *(a1 + 56);
    }

    if ((*(v103 + 40) & 8) != 0)
    {
      *(*v13 + 10) &= ~v13[8];
      v13[9] -= 10;
      v103 = *(a1 + 56);
    }
  }

  v125 = *(v103 + 16);
  if (v125)
  {
    v126 = 0;
    v127 = 0;
    v128 = *v13;
    v129 = v13[8];
    if (v125 >= 4 && (v125 - 257) >= 0xFFFFFFFFFFFFFF00)
    {
      if (v125 < 0x20)
      {
        v127 = 0;
        v126 = 0;
LABEL_322:
        v149 = v126;
        v126 = v125 & 0x1FC;
        a2 = v127;
        *a3.i8 = vdup_n_s16(v129);
        a4.i64[0] = 0x100000001;
        a4.i64[1] = 0x100000001;
        do
        {
          a5.i32[0] = *(v128 + (v149 & 0xFC));
          a5 = vandq_s8(vmovl_u16(vtst_s16(*&vmovl_u8(*a5.i8), *a3.i8)), a4);
          a2 = vaddq_s32(a2, a5);
          v149 += 4;
        }

        while (v126 != v149);
        a2.i32[0] = vaddvq_s32(a2);
        v127 = a2.i32[0];
        if (v126 == v125)
        {
          goto LABEL_328;
        }

        goto LABEL_325;
      }

      v131 = 0;
      v132 = vdupq_n_s8(v129);
      v133 = 0uLL;
      v134.i64[0] = 0x100000001;
      v134.i64[1] = 0x100000001;
      v126 = v125 & 0x1E0;
      v135 = 0uLL;
      v136 = 0uLL;
      v137 = 0uLL;
      v138 = 0uLL;
      v139 = 0uLL;
      v140 = 0uLL;
      v141 = 0uLL;
      do
      {
        v142 = (v128 + (v131 & 0xE0));
        v143 = vtstq_s8(*v142, v132);
        v144 = vmovl_u8(*v143.i8);
        v145 = vmovl_high_u8(v143);
        v146 = vtstq_s8(v142[1], v132);
        v147 = vmovl_u8(*v146.i8);
        v148 = vmovl_high_u8(v146);
        v137 = vaddq_s32(v137, vandq_s8(vmovl_high_u16(v145), v134));
        v136 = vaddq_s32(v136, vandq_s8(vmovl_u16(*v145.i8), v134));
        v135 = vaddq_s32(v135, vandq_s8(vmovl_high_u16(v144), v134));
        v133 = vaddq_s32(v133, vandq_s8(vmovl_u16(*v144.i8), v134));
        v141 = vaddq_s32(v141, vandq_s8(vmovl_high_u16(v148), v134));
        v140 = vaddq_s32(v140, vandq_s8(vmovl_u16(*v148.i8), v134));
        v139 = vaddq_s32(v139, vandq_s8(vmovl_high_u16(v147), v134));
        v138 = vaddq_s32(v138, vandq_s8(vmovl_u16(*v147.i8), v134));
        v131 += 32;
      }

      while (v126 != v131);
      a4 = vaddq_s32(v141, v137);
      a5 = vaddq_s32(v140, v136);
      a3 = vaddq_s32(vaddq_s32(v139, v135), a4);
      a2 = vaddq_s32(vaddq_s32(vaddq_s32(v138, v133), a5), a3);
      a2.i32[0] = vaddvq_s32(a2);
      v127 = a2.i32[0];
      if (v126 == v125)
      {
        goto LABEL_328;
      }

      if ((v125 & 0x1C) != 0)
      {
        goto LABEL_322;
      }
    }

    do
    {
LABEL_325:
      if ((*(v128 + v126) & v129) != 0)
      {
        ++v127;
      }

      ++v126;
    }

    while (v125 != v126);
LABEL_328:
    if (v127 == 1)
    {
      v150 = 0;
      v151 = 0;
      while ((*(v128 + v151) & v129) == 0)
      {
        ++v151;
        v150 += 0x1000000;
        if (v125 == v151)
        {
          v152 = 0;
          goto LABEL_357;
        }
      }

      v152 = v150 >> 24;
LABEL_357:
      sub_298BA29F0(a1, v152, *a2.i64, *a3.i64, *a4.i64, a5);
      v162 = *(a1 + 56);
      v163 = *(v162 + 16);
      v112 = *(v162 + 24) + 32 * *(v162 + 20);
      if (v163)
      {
        for (j = 0; j != v163; ++j)
        {
          *(*v13 + j) &= ~v13[8];
          v13[9] -= j;
        }
      }

      goto LABEL_290;
    }
  }

  v153 = *(v103 + 20);
  if (v153 >= 1)
  {
    v154 = *(v103 + 24);
    v155 = &v154[32 * v153];
    while (1)
    {
      if (v154 != v13 && v154[9] == v13[9])
      {
        v156 = 0;
        if (v125)
        {
          while (((*(*v154 + v156) & v154[8]) != 0) != ((*(*v13 + v156) & v13[8]) == 0))
          {
            if (v125 == ++v156)
            {
              goto LABEL_342;
            }
          }
        }

        if (v156 == v125)
        {
          break;
        }
      }

      v154 += 32;
      if (v154 >= v155)
      {
        v154 = v13;
        if (*(a1 + 16))
        {
          return;
        }

        goto LABEL_351;
      }
    }

LABEL_342:
    if (v125)
    {
      for (k = 0; k != v125; ++k)
      {
        *(*v13 + k) &= ~v13[8];
        v13[9] -= k;
      }

      v103 = *(a1 + 56);
    }

    if (v155 - 32 != v13)
    {
      goto LABEL_350;
    }

    --*(v103 + 20);
    if (*(a1 + 16))
    {
      return;
    }

    goto LABEL_351;
  }

  v154 = v13;
LABEL_350:
  if (!*(a1 + 16))
  {
LABEL_351:
    v158 = (&v154[-*(v103 + 24)] >> 5);
    v159 = *(a1 + 32);
    if (*(a1 + 40) < v159)
    {
      goto LABEL_367;
    }

    v160 = (v159 + 1) / 2;
    v161 = ((v159 + 1 + ((v159 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v160;
    if (v159 >= v161)
    {
      goto LABEL_367;
    }

    if (v161 >> 61)
    {
      goto LABEL_354;
    }

    v165 = malloc_type_realloc(*(a1 + 24), 24 * v160, 0x100004000313F17uLL);
    if (v165)
    {
      *(a1 + 24) = v165;
      *(a1 + 32) = v161;
      goto LABEL_367;
    }

    if (!*(a1 + 16))
    {
LABEL_354:
      *(a1 + 16) = 12;
    }

    *a1 = &byte_2A13C2DD8;
    *(a1 + 8) = &byte_2A13C2DD8;
LABEL_367:
    v166 = *(a1 + 24);
    v167 = *(a1 + 40);
    *(a1 + 40) = v167 + 1;
    *(v166 + 8 * v167) = v158 | 0x30000000;
  }
}

__n128 sub_298BA29F0(uint64_t a1, int a2, double a3, double a4, double a5, int32x4_t a6)
{
  v8 = *(a1 + 56);
  v9 = *(v8 + 88);
  v10 = a2;
  if ((*(v8 + 40) & 2) == 0)
  {
    goto LABEL_13;
  }

  if (a2 > 0x7Fu)
  {
    if (!__maskrune(a2, 0x100uLL))
    {
      goto LABEL_13;
    }

    if (!__maskrune(v10, 0x8000uLL))
    {
      v14 = __maskrune(v10, 0x1000uLL);
      v12 = a2;
      if (!v14)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_9:
    v12 = __tolower(v10);
    goto LABEL_12;
  }

  v11 = *(MEMORY[0x29EDCA600] + 4 * a2 + 60);
  if ((v11 & 0x100) == 0)
  {
    goto LABEL_13;
  }

  if ((v11 & 0x8000) != 0)
  {
    goto LABEL_9;
  }

  v12 = a2;
  if ((v11 & 0x1000) != 0)
  {
LABEL_11:
    v12 = __toupper(v10);
  }

LABEL_12:
  if (a2 != v12)
  {
    v26 = a2;
    v27 = 93;
    v23 = *a1;
    v25 = *a1;
    *a1 = &v26;
    *(a1 + 8) = &v27 + 1;
    sub_298BA1398(a1, v23.n128_f64[0], a4, a5, a6);
    result = v25;
    *a1 = v25;
    return result;
  }

LABEL_13:
  if (*(a1 + 16))
  {
    if (*(v9 + a2))
    {
      return result;
    }

LABEL_21:
    v21 = *(a1 + 56);
    v22 = *(v21 + 84);
    *(v21 + 84) = v22 + 1;
    *(v9 + a2) = v22;
    return result;
  }

  v15 = *(a1 + 32);
  v16 = (v15 + 1) / 2;
  v17 = ((v15 + 1 + ((v15 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v16;
  if (*(a1 + 40) >= v15 && v15 < v17)
  {
    if (v17 >> 61)
    {
      goto LABEL_24;
    }

    v24 = malloc_type_realloc(*(a1 + 24), 24 * v16, 0x100004000313F17uLL);
    if (v24)
    {
      *(a1 + 24) = v24;
      *(a1 + 32) = v17;
      goto LABEL_20;
    }

    if (!*(a1 + 16))
    {
LABEL_24:
      *(a1 + 16) = 12;
    }

    *a1 = &byte_2A13C2DD8;
    *(a1 + 8) = &byte_2A13C2DD8;
  }

LABEL_20:
  v19 = *(a1 + 24);
  v20 = *(a1 + 40);
  *(a1 + 40) = v20 + 1;
  *(v19 + 8 * v20) = v10 | 0x10000000u;
  if (!*(v9 + a2))
  {
    goto LABEL_21;
  }

  return result;
}