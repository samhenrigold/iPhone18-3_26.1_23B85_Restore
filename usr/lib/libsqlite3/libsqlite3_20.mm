uint64_t sub_181960D84(uint64_t a1, const char **a2)
{
  v4 = *a1;
  if (*(a2 + 63) == 1)
  {
    ++*(v4 + 72);
    v5 = a2[10];
    if (v5)
    {
      while (*v5 != v4)
      {
        v5 = *(v5 + 5);
        if (!v5)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      goto LABEL_54;
    }

LABEL_5:
    v6 = *a2[9];
    v7 = *v6;
    if (*v6)
    {
      v8 = 0;
      v9 = v6 + 1;
      do
      {
        v8 = -1640531535 * (v8 + (v7 & 0xDF));
        v10 = *v9++;
        v7 = v10;
      }

      while (v10);
    }

    else
    {
      v8 = 0;
    }

    v24 = (v4 + 568);
    v25 = *(v4 + 584);
    if (v25)
    {
      v24 = (v25 + 16 * (v8 % *v24));
      v26 = *v24;
      if (*v24)
      {
LABEL_21:
        v27 = (v24 + 2);
        do
        {
          v27 = *v27;
          if (v8 == *(v27 + 8))
          {
            v28 = v27[3];
            for (i = *a2[9]; ; ++i)
            {
              if (*v28 == *i)
              {
                if (!*v28)
                {
                  goto LABEL_32;
                }
              }

              else if (byte_181A20298[*v28] != byte_181A20298[*i])
              {
                break;
              }

              ++v28;
            }
          }

          --v26;
        }

        while (v26);
        v30 = qword_1EA831A40;
        if (!qword_1EA831A40)
        {
          goto LABEL_53;
        }

        goto LABEL_33;
      }
    }

    else
    {
      v26 = *(v4 + 572);
      if (v26)
      {
        goto LABEL_21;
      }
    }

    v27 = &qword_1EA831A30;
LABEL_32:
    v30 = v27[2];
    if (!v30)
    {
LABEL_53:
      sub_181910730(a1, "no such module: %s", *a2[9]);
      result = 1;
LABEL_54:
      --*(v4 + 72);
      return result;
    }

LABEL_33:
    v38 = 0;
    result = sub_18194B478(v4, a2, v30, *(*v30 + 16), &v38);
    v31 = v38;
    if (result)
    {
      v32 = result;
      sub_181910730(a1, "%s", v38);
      result = v32;
      if (!*(v4 + 107))
      {
        *(a1 + 24) = v32;
      }
    }

    if (v31)
    {
      v33 = result;
      sub_181929C84(v4, v31);
      result = v33;
    }

    goto LABEL_54;
  }

  v11 = a2 + 27;
  if (*(a2 + 27) < 0)
  {
    sub_181910730(a1, "view %s is circularly defined", *a2);
    return 1;
  }

  else
  {
    v12 = sub_1818CB220(*a1, a2[8], 0);
    if (v12)
    {
      v13 = v12;
      v14 = *(a1 + 302);
      v15 = *(a1 + 56);
      v16 = *(a1 + 124);
      *(a1 + 302) = 0;
      sub_1818EC1FC(a1, *(v12 + 40));
      *v11 = -1;
      ++*(v4 + 432);
      *(v4 + 436) = 0;
      v17 = *(v4 + 528);
      *(v4 + 528) = 0;
      v18 = sub_18195E03C(a1, v13);
      *(v4 + 528) = v17;
      *(a1 + 56) = v15;
      *(a1 + 124) = v16;
      if (v18)
      {
        v21 = v18;
        v22 = a2[4];
        if (v22)
        {
          sub_1819605E4(a1, v22, a2 + 27, a2 + 1);
          if (!*(a1 + 52) && **(v13 + 32) == *v11)
          {
            sub_181961164(a1, a2, v13, 64);
          }
        }

        else
        {
          *(a2 + 27) = *(v18 + 54);
          a2[1] = *(v18 + 8);
          *(a2 + 12) |= *(v18 + 48) & 0x62;
          *(v18 + 54) = 0;
          *(v18 + 8) = 0;
        }

        *(a2 + 28) = *(a2 + 27);
        if (*(v4 + 824) || (v35 = *(v21 + 44) - 1, (*(v21 + 44) = v35) == 0))
        {
          sub_18194E094(v4, v21, v19, v20);
        }

        v34 = 0;
      }

      else
      {
        *(a2 + 54) = 0;
        v34 = 1;
      }

      sub_1818BB408(v4, v13, 1, v20);
      v36 = *(v4 + 432) - 1;
      *(v4 + 432) = v36;
      if (v36)
      {
        v37 = 0;
      }

      else
      {
        v37 = *(v4 + 438);
      }

      *(v4 + 436) = v37;
      *(a1 + 302) = v14;
    }

    else
    {
      v34 = 1;
    }

    *(a2[12] + 57) |= 2u;
    if (*(v4 + 103))
    {
      sub_18194E388(v4, a2);
    }

    return (*(a1 + 52) + v34);
  }
}

void *sub_181961164(void *result, uint64_t a2, uint64_t a3, int a4)
{
  if (!*(*result + 103))
  {
    v4 = result;
    if (*(result + 302) <= 1u)
    {
      v5 = a2;
      v40 = *result;
      do
      {
        v6 = a3;
        a3 = *(a3 + 80);
      }

      while (a3);
      v7 = *(v6 + 32);
      v43 = 0;
      memset(v42, 0, sizeof(v42));
      *(&v42[0] + 1) = *(v6 + 40);
      if (*(a2 + 54) >= 1)
      {
        v8 = 0;
        v39 = v7 + 8;
        v9 = *(a2 + 8);
        do
        {
          *(v5 + 48) |= *(v9 + 14) & 0x62;
          v41 = *(v39 + 24 * v8);
          v10 = sub_1818D0A24(v41);
          *(v9 + 9) = v10;
          if (v10 >= 65)
          {
            v11 = 0;
            v14 = v6;
LABEL_14:
            if (v10 <= 65)
            {
              goto LABEL_27;
            }
          }

          else
          {
            v11 = 0;
            v12 = 24 * v8;
            v13 = v6;
            while (1)
            {
              v14 = *(v13 + 88);
              if (!v14)
              {
                break;
              }

              v11 |= sub_18196165C(*(*(v13 + 32) + v12 + 8));
              v10 = sub_1818D0A24(*(*(v14 + 32) + v12 + 8));
              *(v9 + 9) = v10;
              v13 = v14;
              if (v10 >= 65)
              {
                goto LABEL_14;
              }
            }

            v10 = a4;
            *(v9 + 9) = a4;
            v14 = v13;
            if (a4 <= 65)
            {
              goto LABEL_27;
            }
          }

          v15 = *(v14 + 88);
          if (v14 != v6 || v15)
          {
            for (i = v10; v15; v15 = *(v15 + 88))
            {
              v11 |= sub_18196165C(*(*(v15 + 32) + 24 * v8 + 8));
            }

            if (i == 66 && (v11 & 1) != 0 || i != 66 && (v11 & 2) != 0)
            {
              v17 = 65;
            }

            else
            {
              if (i == 66 || *v41 != 36)
              {
                goto LABEL_27;
              }

              v17 = 70;
            }

            *(v9 + 9) = v17;
          }

LABEL_27:
          v18 = sub_181961778(v42, v41, 0, 0, 0);
          v19 = *(v9 + 9);
          if (!v18)
          {
            goto LABEL_57;
          }

          v20 = *v18;
          if (!*v18)
          {
            if (v19 == 67)
            {
              goto LABEL_70;
            }

            goto LABEL_57;
          }

          v21 = 0;
          v22 = (v18 + 1);
          v23 = 67;
          while (1)
          {
            v21 = byte_181A20298[v20] | (v21 << 8);
            v26 = 66;
            if (v21 > 1668050785)
            {
              if (v21 == 1668050786 || v21 == 1952807028)
              {
                goto LABEL_35;
              }

              goto LABEL_42;
            }

            if (v21 == 1651273570)
            {
              break;
            }

            if (v21 != 1667785074)
            {
              goto LABEL_42;
            }

LABEL_35:
            v25 = *v22++;
            v20 = v25;
            v23 = v26;
            if (!v25)
            {
              goto LABEL_54;
            }
          }

          v26 = 65;
          if (v23 == 67 || v23 == 69)
          {
            goto LABEL_35;
          }

LABEL_42:
          v28 = v21 == 1718382433 || v21 == 1919246700 || v21 == 1685026146;
          if (v28 && v23 == 67)
          {
            v26 = 69;
            goto LABEL_35;
          }

          v26 = v23;
          if ((v21 & 0xFFFFFF) != 0x696E74)
          {
            goto LABEL_35;
          }

          LODWORD(v26) = 68;
LABEL_54:
          if (v19 == v26)
          {
LABEL_70:
            v30 = v4;
            v31 = v5;
            v32 = strlen(v18) & 0x3FFFFFFF;
            v33 = *v9;
            if (*v9)
            {
              v34 = strlen(*v9) & 0x3FFFFFFF;
              v35 = v34 + v32 + 2;
              if (*(v40 + 64) > v33)
              {
                if (*(v40 + 62) <= v33)
                {
                  if (v34 + v32 < 0x7F)
                  {
                    goto LABEL_75;
                  }
                }

                else if (*(v40 + 63) <= v33 && v35 <= *(v40 + 219))
                {
LABEL_75:
                  v36 = *v9;
                  goto LABEL_80;
                }
              }

              v36 = sub_181929F38(v40, v33, v35, 2126928226);
              if (v36)
              {
LABEL_80:
                *v9 = v36;
                *(v9 + 14) &= 0xFDFBu;
                v5 = v31;
                v4 = v30;
LABEL_81:
                memcpy(&v36[v34 + 1], v18, v32 + 1);
                v37 = *(v9 + 14) | 4;
              }

              else
              {
                sub_181929C84(v40, v33);
                *v9 = 0;
                v37 = *(v9 + 14) & 0xFDFB;
                v5 = v31;
                v4 = v30;
              }

              *(v9 + 14) = v37;
            }

            else
            {
              v36 = sub_181929E8C(v40, v32 + 2, 2126928226);
              *v9 = v36;
              *(v9 + 14) &= 0xFDFBu;
              v5 = v31;
              v4 = v30;
              if (v36)
              {
                v34 = 0;
                goto LABEL_81;
              }
            }

            goto LABEL_84;
          }

LABEL_57:
          if (*(v9 + 9) > 0x43u)
          {
            v18 = "NUM";
            switch(v19)
            {
              case 'F':
                goto LABEL_70;
              case 'E':
                v29 = 4;
                break;
              case 'D':
                v29 = 2;
                break;
              default:
                goto LABEL_84;
            }
          }

          else if (v19 == 65)
          {
            v29 = 1;
          }

          else
          {
            if (v19 != 66)
            {
              v18 = "NUM";
              if (v19 == 67)
              {
                goto LABEL_70;
              }

              goto LABEL_84;
            }

            v29 = 5;
          }

          v18 = off_1EA831620[v29];
          if (v18)
          {
            goto LABEL_70;
          }

LABEL_84:
          result = sub_1818B4720(v4, v41);
          if (result)
          {
            result = sub_1819619C4(v40, v9, *result);
          }

          ++v8;
          v9 += 16;
        }

        while (v8 < *(v5 + 54));
      }

      *(v5 + 60) = 1;
    }
  }

  return result;
}

uint64_t sub_18196165C(uint64_t a1)
{
  v1 = 0;
  if (a1)
  {
    while (2)
    {
      v2 = 2;
      switch(*a1)
      {
        case 0x24:
        case 0x8B:
        case 0xA8:
        case 0xAA:
        case 0xB1:
        case 0xB2:
          v8 = sub_1818D0A24(a1);
          if (v8 == 66)
          {
            v9 = 6;
          }

          else
          {
            v9 = 7;
          }

          if (v8 <= 66)
          {
            v2 = v9;
          }

          else
          {
            v2 = 5;
          }

          break;
        case 0x70:
          v2 = 6;
          break;
        case 0x72:
        case 0xAD:
        case 0xB3:
          a1 = *(a1 + 16);
          if (!a1)
          {
            goto LABEL_13;
          }

          continue;
        case 0x76:
          return v2 | v1;
        case 0x7A:
          goto LABEL_13;
        case 0x9B:
          v2 = 4;
          break;
        case 0x9D:
        case 0xA9:
        case 0xAC:
          v2 = 7;
          break;
        case 0x9E:
          v3 = *(a1 + 32);
          v4 = *v3;
          if (v4 < 2)
          {
            v2 = 0;
          }

          else
          {
            v2 = 0;
            v5 = (v3 + 8);
            for (i = 1; i < v4; i += 2)
            {
              v7 = *v5;
              v5 += 6;
              v2 |= sub_18196165C(v7);
            }
          }

          if (v4)
          {
            a1 = *&v3[6 * v4 - 4];
            v1 |= v2;
            v2 = 0;
            if (a1)
            {
              continue;
            }
          }

          break;
        default:
          v2 = 1;
          break;
      }

      break;
    }
  }

  else
  {
LABEL_13:
    v2 = 0;
  }

  return v2 | v1;
}

const char *sub_181961778(const char *result, unsigned __int8 *a2, void *a3, void *a4, const char **a5)
{
  v38 = 0;
  v36 = 0;
  v37 = 0;
  v8 = *a2;
  if (v8 == 139)
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    v15 = *(a2 + 4);
    v17 = *(v15 + 32);
    v16 = *(v15 + 40);
    v18 = *(v17 + 8);
    *(&v33 + 1) = result;
    *&v32 = *result;
    *(&v32 + 1) = v16;
LABEL_17:
    result = sub_181961778(&v32, v18, &v38, &v37, &v36);
    goto LABEL_23;
  }

  if (v8 != 168)
  {
    goto LABEL_22;
  }

  if (!result)
  {
    goto LABEL_23;
  }

  v9 = 0;
  v10 = *(a2 + 12);
  do
  {
    v11 = *(result + 1);
    v12 = *v11;
    if (v12 < 1)
    {
LABEL_9:
      v14 = 0;
      result = *(result + 3);
    }

    else
    {
      v13 = v11 + 9;
      while (*v13 != *(a2 + 11))
      {
        v13 += 18;
        if (!--v12)
        {
          goto LABEL_9;
        }
      }

      v14 = *(v13 - 3);
      if ((*(v13 - 3) & 4) != 0)
      {
        v9 = **(v13 + 9);
      }

      else
      {
        v9 = 0;
      }
    }
  }

  while (result && !v14);
  if (!v14)
  {
    goto LABEL_22;
  }

  if (v9)
  {
    if (v10 < **(v9 + 32))
    {
      v35 = 0;
      v33 = 0u;
      v34 = 0u;
      v32 = 0u;
      v18 = *(*(v9 + 32) + 24 * v10 + 8);
      *(&v32 + 1) = *(v9 + 40);
      *(&v33 + 1) = result;
      *&v32 = *result;
      goto LABEL_17;
    }

LABEL_22:
    result = 0;
    goto LABEL_23;
  }

  if ((v10 & 0x80000000) != 0 && (v10 = *(v14 + 26), (v10 & 0x80000000) != 0))
  {
    v36 = "rowid";
    v23 = "INTEGER";
  }

  else
  {
    v20 = v14[1] + 16 * v10;
    v21 = *v20;
    v36 = *v20;
    if ((*(v20 + 14) & 4) != 0)
    {
      v24 = result;
      v25 = strlen(v21);
      result = v24;
      v23 = &v21[v25 + 1];
    }

    else
    {
      v22 = *(v20 + 8);
      if (v22 >= 0x10)
      {
        v23 = off_1EA831620[(v22 >> 4) - 1];
      }

      else
      {
        v23 = 0;
      }
    }
  }

  v37 = *v14;
  v26 = *result;
  if (*result)
  {
    v27 = v14[12];
    result = v23;
    if (v27)
    {
      v28 = *(*v26 + 32);
      v29 = (v28 + 24);
      v30 = 0xFFFFFFFF00000000;
      do
      {
        v31 = *v29;
        v29 += 4;
        v30 += 0x100000000;
      }

      while (v31 != v27);
      v38 = *(v28 + (v30 >> 27));
    }
  }

  else
  {
    result = v23;
  }

LABEL_23:
  if (a3)
  {
    *a3 = v38;
    v19 = v36;
    *a4 = v37;
    *a5 = v19;
  }

  return result;
}

char *sub_1819619C4(uint64_t a1, uint64_t a2, const char *a3)
{
  v6 = *a2;
  if (*a2)
  {
    v7 = (strlen(*a2) & 0x3FFFFFFF) + 1;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  if ((*(a2 + 14) & 4) != 0)
  {
    v8 = v7 + (strlen(&v6[v7]) & 0x3FFFFFFF) + 1;
  }

  if (a3)
  {
    v9 = (strlen(a3) & 0x3FFFFFFF) + 1;
    v10 = v9 + v8;
    if (v6)
    {
LABEL_8:
      if (*(a1 + 512) <= v6)
      {
        goto LABEL_17;
      }

      if (*(a1 + 496) > v6)
      {
        if (*(a1 + 504) <= v6 && v10 <= *(a1 + 438))
        {
          goto LABEL_18;
        }

LABEL_17:
        result = sub_181929F38(a1, v6, v10, 566941463);
        v6 = result;
        if (!result)
        {
          return result;
        }

        goto LABEL_18;
      }

      if (v10 >= 0x81)
      {
        goto LABEL_17;
      }

LABEL_18:
      *a2 = v6;
      result = memcpy(&v6[v8], a3, v9);
      *(a2 + 14) |= 0x200u;
      return result;
    }
  }

  else
  {
    v9 = 1;
    v10 = v8 + 1;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  result = sub_181929E8C(a1, v10, 566941463);
  v6 = result;
  if (result)
  {
    goto LABEL_18;
  }

  return result;
}

unsigned __int8 *sub_181961AFC(unsigned __int8 *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    do
    {
      *(v5 + 1) |= a3;
      *(v5 + 14) = a2;
      if (*v5 == 172)
      {
        v6 = *(v5 + 4);
        if (v6)
        {
          if (*v6 >= 1)
          {
            v7 = 0;
            v8 = 2;
            do
            {
              sub_181961AFC(*&v6[v8], a2, a3);
              ++v7;
              v6 = *(v5 + 4);
              v8 += 6;
            }

            while (v7 < *v6);
          }
        }
      }

      result = sub_181961AFC(*(v5 + 2), a2, a3);
      v5 = *(v5 + 3);
    }

    while (v5);
  }

  return result;
}

uint64_t sub_181961BC4(unsigned __int8 *a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  if (*(*a1 + 103) || a1[302] > 1u)
  {
    return 0;
  }

  v8 = *a3;
  if (*a3 > *(*a1 + 144))
  {
    sub_181910730(a1, "too many terms in %s BY clause");
    return 1;
  }

  if (v8 < 1)
  {
    return 0;
  }

  v9 = *(a2 + 32);
  v10 = a3 + 7;
  v11 = 1;
  while (1)
  {
    v13 = *v10;
    if (*v10)
    {
      break;
    }

LABEL_11:
    result = 0;
    v10 += 12;
    v12 = v11 < v8;
    v11 = (v11 + 1);
    if (!v12)
    {
      return result;
    }
  }

  v14 = *v9;
  if (v14 >= v13)
  {
    sub_1818EC294(a1, v9, v13 - 1, *(v10 - 10), 0);
    v8 = *a3;
    goto LABEL_11;
  }

  sub_181910730(a1, "%r %s BY term out of range - should be between 1 and %d", v11, a4, v14);
  return 1;
}

uint64_t sub_181961CD4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 7))
  {
    v2 = *(a2 + 72);
    v3 = *(v2 + 56);
    if (v3)
    {
      v4 = *(v2 + 64);
      *v3 = v4;
      if (v4)
      {
        *(v4 + 56) = *(v2 + 56);
      }

      *(v2 + 56) = 0;
    }
  }

  return 0;
}

uint64_t sub_181961D08(uint64_t result, int *a2, unsigned __int8 *a3)
{
  v5 = result;
  v6 = *a2;
  v7 = *a3;
  if (*a3)
  {
    v8 = 0;
    v9 = *a3;
    while (1)
    {
      v10 = (byte_181A204C8[v9] & 6) != 0 || v9 == 95;
      v11 = !v10;
      if (!v10)
      {
        break;
      }

      v12 = v8 + 1;
      v9 = a3[++v8];
      if (!v9)
      {
        v8 = v12;
        break;
      }
    }

    if ((v7 - 58) > 0xFFFFFFFFFFFFFFF5)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v11 = 0;
    v8 = 0;
  }

  result = sub_1819126D8(a3, v8);
  if (!v11 && v8 && result == 60)
  {
    v13 = 0;
    v14 = v6;
    if (v7)
    {
      goto LABEL_25;
    }

LABEL_20:
    LODWORD(v15) = v14;
    goto LABEL_21;
  }

LABEL_24:
  v14 = v6 + 1;
  *(v5 + v6) = 34;
  LOBYTE(v7) = *a3;
  v13 = 1;
  if (!*a3)
  {
    goto LABEL_20;
  }

LABEL_25:
  v16 = a3 + 1;
  do
  {
    v15 = v14 + 1;
    *(v5 + v14) = v7;
    if (*(v16 - 1) == 34)
    {
      *(v5 + v15) = 34;
      LODWORD(v15) = v14 + 2;
    }

    v17 = *v16++;
    LOBYTE(v7) = v17;
    v14 = v15;
  }

  while (v17);
LABEL_21:
  if (v13)
  {
    *(v5 + v15) = 34;
    LODWORD(v15) = v15 + 1;
  }

  *(v5 + v15) = 0;
  *a2 = v15;
  return result;
}

uint64_t sub_181961E4C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 408);
  if (v3)
  {
    while (*v3 != a2)
    {
      v3 = v3[3];
      if (!v3)
      {
        goto LABEL_6;
      }
    }

    *v3 = 0;
  }

LABEL_6:
  if ((*(a2 + 7) & 3) != 0)
  {
    return 0;
  }

  v5 = *(v2 + 408);
  if (!v5)
  {
    return 0;
  }

  while (*v5 != a2 + 72)
  {
    v5 = v5[3];
    if (!v5)
    {
      return 0;
    }
  }

  *v5 = 0;
  return 0;
}

uint64_t sub_181961EB8(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(*a1 + 52))
  {
    return 2;
  }

  if ((*(a2 + 6) & 0x420) != 0)
  {
    return 1;
  }

  v6 = *(a2 + 32);
  if (v6)
  {
    v7 = *v6;
    if (v7 >= 1)
    {
      v8 = 0;
      v9 = v6 + 2;
      do
      {
        v10 = &v9[6 * v8];
        v11 = *(v10 + 1);
        if (v11)
        {
          if ((*(v10 + 17) & 3) == 0)
          {
            v12 = *(v2 + 408);
            if (v12)
            {
              while (*v12 != v11)
              {
                v12 = v12[3];
                if (!v12)
                {
                  goto LABEL_9;
                }
              }

              *v12 = 0;
            }
          }
        }

LABEL_9:
        ++v8;
      }

      while (v8 != v7);
    }
  }

  v13 = *(a2 + 40);
  if (v13)
  {
    v14 = *v13;
    if (*v13 >= 1)
    {
      v15 = 0;
      do
      {
        v16 = &v13[18 * v15 + 2];
        v17 = *(v2 + 408);
        if (v17)
        {
          while (*v17 != *v16)
          {
            v17 = v17[3];
            if (!v17)
            {
              goto LABEL_25;
            }
          }

          *v17 = 0;
        }

LABEL_25:
        v18 = *(v16 + 56);
        if ((*(v16 + 25) & 0x800) != 0)
        {
          v19 = *v18;
          if (v19 >= 1)
          {
            for (i = 0; i != v19; ++i)
            {
              v21 = *(v2 + 408);
              if (v21)
              {
                while (*v21 != *&v18[2 * i + 2])
                {
                  v21 = v21[3];
                  if (!v21)
                  {
                    goto LABEL_31;
                  }
                }

                *v21 = 0;
              }

LABEL_31:
              ;
            }
          }
        }

        else if (v18)
        {
          sub_181959BA0(a1, v18);
          v14 = *v13;
        }

        ++v15;
      }

      while (v15 < v14);
    }
  }

  sub_181962064(a1, a2);
  return 0;
}

void *sub_181962064(void *result, uint64_t a2)
{
  v2 = *(a2 + 104);
  if (v2)
  {
    v3 = result;
    v4 = *result;
    if ((*(*(v2 + 4) + 4) & 0x40) != 0 || (result = sub_18195C5D4(*v4, *(a2 + 104))) == 0)
    {
      v5 = 0;
    }

    else
    {
      result = sub_18195B158(v4, sub_18198D9C8, result);
      v5 = result;
      if (result && !*(v4 + 52))
      {
        result[1] = *(v4 + 400);
        *(v4 + 400) = result;
      }
    }

    if (*v2 >= 1)
    {
      v6 = 0;
      v7 = v2 + 4;
      v24 = v2 + 4;
      do
      {
        v8 = &v7[12 * v6];
        v9 = *(v8 + 2);
        v28 = 0u;
        v27 = 0u;
        v26 = 0u;
        v25 = v4;
        v10 = v4;
        if (v5)
        {
          result = sub_18195FBC4(v4, v9, &v25);
          v10 = v25;
        }

        if (*(*v10 + 103))
        {
          return result;
        }

        result = sub_1818AEE70(v3, v9);
        v11 = *(v8 + 1);
        if (!v11)
        {
          goto LABEL_10;
        }

        v30 = 0u;
        v31 = 0u;
        v29[0] = v4;
        v29[1] = sub_181961E4C;
        v12 = *v11;
        if (*v11 < 1)
        {
          goto LABEL_10;
        }

        v13 = v2;
        v14 = v5;
        v15 = v3;
        for (i = 2; ; i += 6)
        {
          v17 = *&v11[i];
          if (v17)
          {
            break;
          }

          if (v12 <= 1)
          {
            goto LABEL_25;
          }

LABEL_18:
          --v12;
        }

        result = sub_181959BA0(v29, v17);
        if (result)
        {
          v18 = 1;
        }

        else
        {
          v18 = v12 <= 1;
        }

        if (!v18)
        {
          goto LABEL_18;
        }

LABEL_25:
        v19 = *v11;
        v3 = v15;
        v5 = v14;
        v2 = v13;
        v7 = v24;
        if (v19 >= 1)
        {
          for (j = 0; j != v19; ++j)
          {
            v21 = &v11[6 * j + 2];
            if ((*(v21 + 17) & 3) == 0)
            {
              v22 = *(v4 + 408);
              if (v22)
              {
                v23 = *(v21 + 8);
                while (*v22 != v23)
                {
                  v22 = v22[3];
                  if (!v22)
                  {
                    goto LABEL_28;
                  }
                }

                *v22 = 0;
              }
            }

LABEL_28:
            ;
          }
        }

LABEL_10:
        ++v6;
      }

      while (v6 < *v2);
    }

    if (v5)
    {
      if (*(v4 + 400) == v5)
      {
        *(v4 + 400) = v5[1];
      }
    }
  }

  return result;
}

uint64_t sub_181962290(uint64_t *a1, unsigned int *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *a2;
  if (v2 < 1)
  {
    return 0;
  }

  for (i = (a2 + 25); (*i & 0x20) == 0; i += 12)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  v5 = *(i - 1);
  v6 = v5 == 3 || v5 == 0;
  v7 = "LAST";
  if (v6)
  {
    v7 = "FIRST";
  }

  sub_181910730(a1, "unsupported use of NULLS %s", v7);
  return 1;
}

uint64_t sub_18196231C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 35))
  {
    v5 = *(a2 + 72);
    v6 = *(*a1 + 32);
    if (v5)
    {
      v7 = (v6 + 24);
      v8 = 0xFFFFFFFF00000000;
      do
      {
        v9 = *v7;
        v7 += 4;
        v8 += 0x100000000;
      }

      while (v9 != v5);
      v10 = v8 >> 32;
    }

    else
    {
      v10 = -32768;
    }

    v4 = (v6 + 32 * v10);
  }

  else
  {
    v4 = (a2 + 72);
  }

  result = sub_1818CA520(a1, 0, *(a2 + 8), *v4);
  v14 = *(a2 + 24);
  if (v14)
  {
    v15 = *a1;
    if (*(*a1 + 824) || (v17 = *(v14 + 44) - 1, (*(v14 + 44) = v17) == 0))
    {
      v16 = result;
      sub_18194E094(v15, v14, v12, v13);
      result = v16;
    }
  }

  *(a2 + 24) = result;
  *(a2 + 33) |= 0x400u;
  if (result)
  {
    ++*(result + 44);
    if ((*(a2 + 33) & 2) != 0)
    {
      v18 = *(result + 16);
      if (!v18)
      {
        goto LABEL_23;
      }

      while (1)
      {
        v19 = *v18;
        for (i = *(a2 + 48); *v19 == *i; ++i)
        {
          if (!*v19)
          {
            *(a2 + 56) = v18;
            return result;
          }

LABEL_18:
          ++v19;
        }

        if (byte_181A20298[*v19] == byte_181A20298[*i])
        {
          goto LABEL_18;
        }

        v18 = *(v18 + 40);
        if (!v18)
        {
LABEL_23:
          sub_181910730(a1, "no such index: %s", *(a2 + 48));
          result = 0;
          *(a1 + 43) |= 8u;
          return result;
        }
      }
    }
  }

  return result;
}

char *sub_181962494(uint64_t a1, int a2, int a3, void *a4)
{
  v5 = a2;
  v6 = 8 * a2;
  v7 = 2 * a2;
  v8 = v7 + 2;
  v9 = v6 + ((3 * a2 + v7 + 2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = v9 + 112;
  v11 = v9 + 112 + a3;
  if (a1)
  {
    result = sub_181929E8C(a1, v9 + 112 + a3, 3329821686);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = sub_181902484(v9 + 112 + a3, 3329821686);
    if (!result)
    {
      return result;
    }
  }

  v13 = result;
  bzero(result, v11);
  result = v13;
  v14 = &v13[v6 + 112];
  *(v13 + 1) = &v14[v8];
  *(v13 + 2) = v14;
  *(v13 + 7) = &v14[v8 + v7];
  *(v13 + 8) = v13 + 112;
  *(v13 + 48) = v5;
  *(v13 + 47) = v5 - 1;
  *a4 = &v13[v10];
  return result;
}

void sub_181962568(uint64_t *a1, uint64_t a2, int a3)
{
  v6 = *(a2 + 24);
  v7 = *(a1 + 14);
  *(a1 + 14) = v7 + 2;
  v8 = *a1;
  v9 = *(a2 + 48);
  v10 = *(*a1 + 32);
  if (v9)
  {
    v11 = (v10 + 24);
    LODWORD(v12) = -1;
    do
    {
      v13 = *v11;
      v11 += 4;
      v12 = (v12 + 1);
    }

    while (v13 != v9);
    v14 = *(v8 + 528);
    if (!v14)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 4294934528;
    v14 = *(v8 + 528);
    if (!v14)
    {
      goto LABEL_9;
    }
  }

  if (*(v8 + 197) || *(a1 + 302))
  {
    goto LABEL_9;
  }

  v26 = v14(*(v8 + 536), 27, *a2, 0, *(v10 + 32 * v12), a1[46]);
  if (v26 == 1)
  {
    v27 = 23;
    sub_181910730(a1, "not authorized");
LABEL_127:
    *(a1 + 6) = v27;
    return;
  }

  if ((v26 & 0xFFFFFFFD) != 0)
  {
    v27 = 1;
    sub_181910730(a1, "authorizer malfunction");
    goto LABEL_127;
  }

  if (v26)
  {
    return;
  }

LABEL_9:
  if (v12 != 1 && *(*(*(*a1 + 32) + 32 * v12 + 8) + 17))
  {
    sub_1819570CC(a1, v12, *(v6 + 40), 1, *v6);
  }

  v15 = sub_1818E7DFC(a1);
  if (v15)
  {
    v16 = v15;
    v17 = a3;
    if (a3 < 0)
    {
      v17 = *(a2 + 88);
    }

    v77 = v17;
    v78 = 0;
    v18 = sub_1819572CC(a1, a2);
    v19 = v18;
    v20 = *(a1 + 14);
    *(a1 + 14) = v20 + 1;
    v21 = *(a2 + 94);
    if (v18)
    {
      ++*v18;
    }

    v22 = *(v16 + 144);
    if (*(v16 + 148) <= v22)
    {
      v22 = sub_18194C8AC(v16, 119, v20, 0, v21);
    }

    else
    {
      *(v16 + 144) = v22 + 1;
      v23 = *(v16 + 136) + 40 * v22;
      *v23 = 119;
      *(v23 + 4) = v20;
      *(v23 + 8) = 0;
      *(v23 + 12) = v21;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0;
      *(v23 + 16) = 0;
    }

    if (*(*v16 + 103))
    {
      if (v19)
      {
        if (!*(*v16 + 824))
        {
          v24 = (*v19)-- == 1;
          if (v24)
          {
            sub_181939EC8(*(v19 + 2), v19);
          }
        }
      }
    }

    else
    {
      if (v22 < 0)
      {
        v22 = *(v16 + 144) - 1;
      }

      v25 = *(v16 + 136) + 40 * v22;
      if (*(v25 + 1))
      {
        sub_18194CB90(v16, v25, v19, 4294967288);
      }

      else if (v19)
      {
        *(v25 + 16) = v19;
        *(v25 + 1) = -8;
      }
    }

    sub_1818B69D8(a1, v7, v12, v6, 102);
    v28 = *(v16 + 144);
    if (*(v16 + 148) <= v28)
    {
      v28 = sub_18194C8AC(v16, 36, v7, 0, 0);
      v30 = *(a1 + 31);
      if (v30)
      {
        goto LABEL_36;
      }
    }

    else
    {
      *(v16 + 144) = v28 + 1;
      v29 = *(v16 + 136) + 40 * v28;
      *v29 = 36;
      *(v29 + 4) = v7;
      *(v29 + 8) = 0u;
      *(v29 + 24) = 0u;
      v30 = *(a1 + 31);
      if (v30)
      {
LABEL_36:
        v31 = v30 - 1;
        *(a1 + 31) = v31;
        v32 = *(a1 + v31 + 46);
        goto LABEL_39;
      }
    }

    v32 = (*(a1 + 15) + 1);
    *(a1 + 15) = v32;
LABEL_39:
    v33 = a1[19];
    if (!v33)
    {
      v33 = a1;
    }

    *(v33 + 32) = 1;
    sub_1818D72E8(a1, a2, v7, v32, 0, &v78, 0, 0);
    v34 = *(v16 + 144);
    if (*(v16 + 148) <= v34)
    {
      sub_18194C8AC(v16, 139, v20, v32, 0);
      v36 = v78;
      if (!v78)
      {
        goto LABEL_48;
      }
    }

    else
    {
      *(v16 + 144) = v34 + 1;
      v35 = *(v16 + 136) + 40 * v34;
      *v35 = 139;
      *(v35 + 4) = v20;
      *(v35 + 8) = v32;
      *(v35 + 12) = 0;
      *(v35 + 28) = 0;
      *(v35 + 20) = 0;
      *(v35 + 36) = 0;
      v36 = v78;
      if (!v78)
      {
LABEL_48:
        v40 = v28 + 1;
        v41 = *(v16 + 144);
        if (*(v16 + 148) <= v41)
        {
          sub_18194C8AC(v16, 39, v7, v40, 0);
        }

        else
        {
          *(v16 + 144) = v41 + 1;
          v42 = *(v16 + 136) + 40 * v41;
          *v42 = 39;
          *(v42 + 4) = v7;
          *(v42 + 8) = v40;
          *(v42 + 12) = 0;
          *(v42 + 28) = 0;
          *(v42 + 20) = 0;
          *(v42 + 36) = 0;
        }

        v43 = *(v16 + 144);
        v44 = v77;
        if (*(*v16 + 103))
        {
          v45 = &byte_1EA831A58;
        }

        else
        {
          v45 = (*(v16 + 136) + 40 * v28);
        }

        v46 = v7 + 1;
        *(v45 + 2) = v43;
        if (a3 < 0)
        {
          if (*(v16 + 148) <= v43)
          {
            sub_18194C8AC(v16, 145, v77, v12, 0);
            v44 = v77;
          }

          else
          {
            *(v16 + 144) = v43 + 1;
            v47 = *(v16 + 136) + 40 * v43;
            *v47 = 145;
            *(v47 + 4) = v77;
            *(v47 + 8) = v12;
            *(v47 + 12) = 0;
            *(v47 + 28) = 0;
            *(v47 + 20) = 0;
            *(v47 + 36) = 0;
          }
        }

        v48 = *(v16 + 144);
        if (*(v16 + 148) <= v48)
        {
          v48 = sub_18194C8AC(v16, 113, v7 + 1, v44, v12);
        }

        else
        {
          *(v16 + 144) = v48 + 1;
          v49 = *(v16 + 136) + 40 * v48;
          *v49 = 113;
          *(v49 + 4) = v46;
          *(v49 + 8) = v44;
          *(v49 + 12) = v12;
          *(v49 + 24) = 0;
          *(v49 + 32) = 0;
          *(v49 + 16) = 0;
        }

        if (*(*v16 + 103))
        {
          if (v19)
          {
            if (!*(*v16 + 824))
            {
              v24 = (*v19)-- == 1;
              if (v24)
              {
                sub_181939EC8(*(v19 + 2), v19);
              }
            }
          }
        }

        else
        {
          if (v48 < 0)
          {
            v48 = *(v16 + 144) - 1;
          }

          v50 = *(v16 + 136) + 40 * v48;
          if (*(v50 + 1))
          {
            sub_18194CB90(v16, v50, v19, 4294967288);
          }

          else if (v19)
          {
            *(v50 + 16) = v19;
            *(v50 + 1) = -8;
          }
        }

        v51 = *(v16 + 144);
        if (v51 >= 1)
        {
          if (a3 < 0)
          {
            v52 = 1;
          }

          else
          {
            v52 = 17;
          }

          *(*(v16 + 136) + 40 * v51 - 38) = v52;
        }

        if (*(v16 + 148) <= v51)
        {
          v51 = sub_18194C8AC(v16, 34, v20, 0, 0);
          if (*(a2 + 98))
          {
            goto LABEL_80;
          }
        }

        else
        {
          *(v16 + 144) = v51 + 1;
          v53 = *(v16 + 136) + 40 * v51;
          *v53 = 34;
          *(v53 + 4) = v20;
          *(v53 + 8) = 0u;
          *(v53 + 24) = 0u;
          if (*(a2 + 98))
          {
LABEL_80:
            v54 = *(v16 + 144);
            if (*(v16 + 148) <= v54)
            {
              v54 = sub_18194C8AC(v16, 9, 0, 1, 0);
            }

            else
            {
              *(v16 + 144) = v54 + 1;
              v55 = *(v16 + 136) + 40 * v54;
              *v55 = 9;
              *(v55 + 4) = 0x100000000;
              *(v55 + 12) = 0;
              *(v55 + 28) = 0;
              *(v55 + 20) = 0;
              *(v55 + 36) = 0;
            }

            v59 = *(a2 + 94);
            v58 = *(v16 + 144);
            if (*(v16 + 148) <= v58)
            {
              sub_18194CAFC(v16, 132, v20, v54, v32, v59);
            }

            else
            {
              *(v16 + 144) = v58 + 1;
              v60 = *(v16 + 136) + 40 * v58;
              *v60 = 64900;
              *(v60 + 4) = v20;
              *(v60 + 8) = v54;
              *(v60 + 12) = v32;
              *(v60 + 16) = v59;
              *(v60 + 24) = 0;
              *(v60 + 32) = 0;
            }

            sub_181963324(a1, 2, a2, v44);
            v57 = *(v16 + 144);
            if (*(*v16 + 103))
            {
              v61 = &byte_1EA831A58;
            }

            else
            {
              v61 = (*(v16 + 136) + 40 * v54);
            }

            *(v61 + 2) = v57;
            goto LABEL_94;
          }
        }

        v56 = a1[19];
        if (!v56)
        {
          v56 = a1;
        }

        *(v56 + 33) = 1;
        v57 = *(v16 + 144);
        v58 = v57;
LABEL_94:
        if (*(v16 + 148) <= v57)
        {
          sub_18194C8AC(v16, 133, v20, v32, v7 + 1);
          if ((*(a2 + 99) & 0x200) != 0)
          {
            goto LABEL_101;
          }
        }

        else
        {
          *(v16 + 144) = v57 + 1;
          v62 = *(v16 + 136) + 40 * v57;
          *v62 = 133;
          *(v62 + 4) = v20;
          *(v62 + 8) = v32;
          *(v62 + 12) = v46;
          *(v62 + 24) = 0;
          *(v62 + 32) = 0;
          *(v62 + 16) = 0;
          if ((*(a2 + 99) & 0x200) != 0)
          {
            goto LABEL_101;
          }
        }

        v63 = *(v16 + 144);
        if (*(v16 + 148) <= v63)
        {
          sub_18194C8AC(v16, 137, v7 + 1, 0, 0);
        }

        else
        {
          *(v16 + 144) = v63 + 1;
          v64 = *(v16 + 136) + 40 * v63;
          *v64 = 137;
          *(v64 + 4) = v46;
          *(v64 + 8) = 0u;
          *(v64 + 24) = 0u;
        }

LABEL_101:
        v65 = *(v16 + 144);
        if (*(v16 + 148) <= v65)
        {
          sub_18194C8AC(v16, 138, v7 + 1, v32, 0);
        }

        else
        {
          *(v16 + 144) = v65 + 1;
          v66 = *(v16 + 136) + 40 * v65;
          *v66 = 138;
          *(v66 + 4) = v46;
          *(v66 + 8) = v32;
          *(v66 + 12) = 0;
          *(v66 + 28) = 0;
          *(v66 + 20) = 0;
          *(v66 + 36) = 0;
        }

        v67 = *(v16 + 144);
        if (v67 >= 1)
        {
          *(*(v16 + 136) + 40 * v67 - 38) = 16;
        }

        if (v32)
        {
          v68 = *(a1 + 31);
          if (v68 <= 7)
          {
            *(a1 + 31) = v68 + 1;
            *(a1 + v68 + 46) = v32;
            v67 = *(v16 + 144);
          }
        }

        if (*(v16 + 148) <= v67)
        {
          sub_18194C8AC(v16, 37, v20, v58, 0);
        }

        else
        {
          *(v16 + 144) = v67 + 1;
          v69 = *(v16 + 136) + 40 * v67;
          *v69 = 37;
          *(v69 + 4) = v20;
          *(v69 + 8) = v58;
          *(v69 + 12) = 0;
          *(v69 + 28) = 0;
          *(v69 + 20) = 0;
          *(v69 + 36) = 0;
        }

        v70 = *(v16 + 144);
        if (*(*v16 + 103))
        {
          v71 = &byte_1EA831A58;
        }

        else
        {
          v71 = (*(v16 + 136) + 40 * v51);
        }

        *(v71 + 2) = v70;
        if (*(v16 + 148) <= v70)
        {
          sub_18194C8AC(v16, 122, v7, 0, 0);
        }

        else
        {
          *(v16 + 144) = v70 + 1;
          v72 = *(v16 + 136) + 40 * v70;
          *v72 = 122;
          *(v72 + 4) = v7;
          *(v72 + 8) = 0u;
          *(v72 + 24) = 0u;
        }

        v73 = *(v16 + 144);
        if (*(v16 + 148) <= v73)
        {
          sub_18194C8AC(v16, 122, v7 + 1, 0, 0);
        }

        else
        {
          *(v16 + 144) = v73 + 1;
          v74 = *(v16 + 136) + 40 * v73;
          *v74 = 122;
          *(v74 + 4) = v46;
          *(v74 + 8) = 0u;
          *(v74 + 24) = 0u;
        }

        v75 = *(v16 + 144);
        if (*(v16 + 148) <= v75)
        {
          sub_18194C8AC(v16, 122, v20, 0, 0);
        }

        else
        {
          *(v16 + 144) = v75 + 1;
          v76 = *(v16 + 136) + 40 * v75;
          *v76 = 122;
          *(v76 + 4) = v20;
          *(v76 + 8) = 0u;
          *(v76 + 24) = 0u;
        }

        return;
      }
    }

    v37 = a1[2];
    v38 = *(v37 + 24);
    v39 = ~v36;
    if (*(v38 + 72) + *(v38 + 76) < 0)
    {
      sub_18195CB84(v38, v37, v39);
    }

    else
    {
      *(*(v38 + 80) + 4 * v39) = *(v37 + 144);
    }

    goto LABEL_48;
  }
}

uint64_t sub_181962F5C(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 40);
  if (!*(v2 + 64))
  {
    *(a2 + 1) |= 0x40000000u;
  }

  if (*a2 != 157)
  {
    return 0;
  }

  if (*(**v2 + 197))
  {
    result = 0;
    *a2 = 122;
  }

  else
  {
    sub_181910730(*v2, "%s cannot use variables", *(v2 + 80));
    return 2;
  }

  return result;
}

uint64_t sub_181962FE0(void *a1, uint64_t a2)
{
  v4 = a1[5];
  v5 = **v4;
  v36 = v5;
  if (!v4[9])
  {
    v10 = -1;
    v16 = *(a2 + 40);
    if (!v16)
    {
      return 0;
    }

    goto LABEL_25;
  }

  v6 = *(v5 + 40);
  v7 = __OFSUB__(v6, 1);
  v8 = (v6 - 1);
  if (v8 < 0 != v7)
  {
    v10 = v8;
    v16 = *(a2 + 40);
    if (v16)
    {
      goto LABEL_25;
    }

    return 0;
  }

  v9 = (*(v5 + 32) + 32 * v8);
  v10 = -1;
  while (1)
  {
    v11 = *v9;
    if (*v9)
    {
      for (i = v4[9]; ; ++i)
      {
        if (*v11 == *i)
        {
          if (!*v11)
          {
            v10 = v8;
LABEL_24:
            v16 = *(a2 + 40);
            if (v16)
            {
              goto LABEL_25;
            }

            return 0;
          }
        }

        else if (byte_181A20298[*v11] != byte_181A20298[*i])
        {
          break;
        }

        ++v11;
      }
    }

    if (!v8)
    {
      break;
    }

LABEL_12:
    v9 -= 4;
    v13 = v8 <= 0;
    LODWORD(v8) = v8 - 1;
    if (v13)
    {
      goto LABEL_24;
    }
  }

  v14 = "main";
  for (j = v4[9]; *v14 != *j; ++j)
  {
    if (byte_181A20298[*v14] != byte_181A20298[*j])
    {
      goto LABEL_12;
    }

LABEL_17:
    ++v14;
  }

  if (*v14)
  {
    goto LABEL_17;
  }

  v10 = 0;
  v16 = *(a2 + 40);
  if (!v16)
  {
    return 0;
  }

LABEL_25:
  if (*v16 < 1)
  {
LABEL_59:
    v32 = *(a2 + 104);
    if (v32 && *v32 >= 1)
    {
      v33 = 0;
      for (k = 8; !sub_1818AEE70(a1, *&v32[k]); k += 12)
      {
        ++v33;
        v32 = *(a2 + 104);
        if (v33 >= *v32)
        {
          return 0;
        }
      }

      return 2;
    }

    return 0;
  }

  v17 = 0;
  v18 = v16 + 2;
  while (2)
  {
    if (*(v4 + 64) || (v19 = *(v18 + 25), (v19 & 4) != 0))
    {
LABEL_55:
      v30 = &v16[18 * v17 + 2];
      if ((*(v30 + 25) & 0x800) == 0)
      {
        v31 = *(v30 + 56);
        if (v31)
        {
          if (sub_181959BA0((v4 + 1), v31))
          {
            return 2;
          }
        }
      }

      ++v17;
      v18 += 18;
      if (v17 >= *v16)
      {
        goto LABEL_59;
      }

      continue;
    }

    break;
  }

  v20 = *(v18 + 27);
  if ((v20 & 1) != 0 || (v21 = *(v18 + 8)) == 0)
  {
LABEL_54:
    *(v18 + 8) = v4[7];
    *(v18 + 25) = v19 | 0x100;
    *(v18 + 27) = v20 | 1;
    goto LABEL_55;
  }

  v22 = v36;
  v23 = *(v36 + 40);
  v7 = __OFSUB__(v23, 1);
  v24 = (v23 - 1);
  if (v24 < 0 != v7)
  {
    goto LABEL_52;
  }

  v25 = (*(v36 + 32) + 32 * v24);
  while (1)
  {
    v26 = *v25;
    if (*v25)
    {
      break;
    }

LABEL_41:
    if (!v24)
    {
      v28 = "main";
      for (m = *(v18 + 8); ; ++m)
      {
        if (*v28 == *m)
        {
          if (!*v28)
          {
            LODWORD(v24) = 0;
            goto LABEL_51;
          }
        }

        else if (byte_181A20298[*v28] != byte_181A20298[*m])
        {
          break;
        }

        ++v28;
      }
    }

    v25 -= 4;
    v13 = v24 <= 0;
    LODWORD(v24) = v24 - 1;
    if (v13)
    {
      LODWORD(v24) = -1;
      goto LABEL_51;
    }
  }

  v27 = *(v18 + 8);
  while (2)
  {
    if (*v26 != *v27)
    {
      if (byte_181A20298[*v26] != byte_181A20298[*v27])
      {
        goto LABEL_41;
      }

      goto LABEL_37;
    }

    if (*v26)
    {
LABEL_37:
      ++v26;
      ++v27;
      continue;
    }

    break;
  }

LABEL_51:
  v22 = v36;
LABEL_52:
  if (v10 == v24)
  {
    sub_181929C84(v22, v21);
    v19 = *(v18 + 25) | 0x400;
    *(v18 + 25) = v19;
    v20 = *(v18 + 27) | 2;
    *(v18 + 27) = v20;
    goto LABEL_54;
  }

  sub_181910730(*v4, "%s %T cannot reference objects in database %s", v4[10], v4[11], v21);
  return 2;
}

uint64_t sub_181963324(uint64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v33 = 0;
  v7 = *(a3 + 24);
  v8 = *(*a1 + 136);
  v29 = *a1;
  v30 = 0;
  v31 = 0;
  v32 = v8;
  if (!*(a3 + 80))
  {
    if (!*(a3 + 94))
    {
      goto LABEL_3;
    }

    v16 = 0;
    while (1)
    {
      v17 = *(*(v7 + 8) + 16 * *(*(a3 + 8) + 2 * v16));
      if (!v16)
      {
        goto LABEL_28;
      }

      v18 = v33;
      if (v33 + 2 < v31)
      {
        break;
      }

      sub_181906814(&v29, ", ", 2, a4);
      v19 = *v7;
      if (!*v7)
      {
        goto LABEL_35;
      }

LABEL_31:
      v20 = strlen(v19);
      v21 = v20 & 0x3FFFFFFF;
      if ((v20 & 0x3FFFFFFF) != 0)
      {
        v22 = v33;
        if (v33 + v21 >= v31)
        {
          sub_181906814(&v29, v19, v21, a4);
        }

        else
        {
          LODWORD(v33) = v33 + v21;
          memcpy(v30 + v22, v19, v20 & 0x3FFFFFFF);
        }
      }

LABEL_35:
      v23 = v33;
      if (v33 + 1 >= v31)
      {
        sub_181906814(&v29, ".", 1, a4);
        if (v17)
        {
LABEL_39:
          v24 = strlen(v17);
          v25 = v24 & 0x3FFFFFFF;
          if ((v24 & 0x3FFFFFFF) != 0)
          {
            v26 = v33;
            if (v33 + v25 < v31)
            {
              LODWORD(v33) = v33 + v25;
              memcpy(v30 + v26, v17, v24 & 0x3FFFFFFF);
            }

            else
            {
              sub_181906814(&v29, v17, v25, a4);
            }
          }
        }
      }

      else
      {
        LODWORD(v33) = v33 + 1;
        *(v30 + v23) = 46;
        if (v17)
        {
          goto LABEL_39;
        }
      }

      if (++v16 >= *(a3 + 94))
      {
        goto LABEL_3;
      }
    }

    LODWORD(v33) = v33 + 2;
    *(v30 + v18) = 8236;
LABEL_28:
    v19 = *v7;
    if (!*v7)
    {
      goto LABEL_35;
    }

    goto LABEL_31;
  }

  sqlite3_str_appendf(&v29, "index '%q'", *a3);
LABEL_3:
  if (v30 && (*(v30 + v33) = 0, v32) && (v33 & 0x40000000000) == 0)
  {
    v9 = sub_18192A12C(&v29);
  }

  else
  {
    v9 = v30;
  }

  if ((*(a3 + 99) & 3) == 2)
  {
    v10 = 1555;
  }

  else
  {
    v10 = 2067;
  }

  v11 = sub_1818E7DFC(a1);
  v12 = v11;
  if (a2 == 2)
  {
    v13 = a1[19];
    if (!v13)
    {
      v13 = a1;
    }

    *(v13 + 33) = 1;
  }

  result = *(v11 + 144);
  if (*(v12 + 148) <= result)
  {
    result = sub_18194C8AC(v12, 70, v10, a2, 0);
  }

  else
  {
    *(v12 + 144) = result + 1;
    v15 = *(v12 + 136) + 40 * result;
    *v15 = 70;
    *(v15 + 4) = v10;
    *(v15 + 8) = a2;
    *(v15 + 12) = 0;
    *(v15 + 28) = 0;
    *(v15 + 20) = 0;
    *(v15 + 36) = 0;
  }

  if (*(*v12 + 103))
  {
    if (v9)
    {
      result = sub_181939EC8(*v12, v9);
    }
  }

  else
  {
    if ((result & 0x80000000) != 0)
    {
      result = (*(v12 + 144) - 1);
    }

    v27 = *(v12 + 136) + 40 * result;
    if (*(v27 + 1))
    {
      result = sub_18194CB90(v12, v27, v9, 4294967290);
    }

    else if (v9)
    {
      *(v27 + 16) = v9;
      *(v27 + 1) = -6;
    }
  }

  v28 = *(v12 + 144);
  if (v28 >= 1)
  {
    *(*(v12 + 136) + 40 * v28 - 38) = 2;
  }

  return result;
}

uint64_t *sub_181963670(uint64_t *result, _BYTE *a2)
{
  v2 = *result;
  v3 = *(*result + 40);
  if (v3 >= 1)
  {
    v5 = result;
    for (i = 0; i < v3; ++i)
    {
      v8 = *(v2 + 32) + 32 * i;
      if (*(v8 + 8))
      {
        if (a2)
        {
          v9 = *v8;
          for (j = a2; ; ++j)
          {
            if (*j == *v9)
            {
              if (!*j)
              {
                break;
              }
            }

            else if (byte_181A20298[*j] != byte_181A20298[*v9])
            {
              goto LABEL_7;
            }

            ++v9;
          }
        }

        if (v5[19])
        {
          result = v5[19];
        }

        else
        {
          result = v5;
        }

        v7 = *(result + 29);
        if ((v7 & (1 << i)) == 0)
        {
          *(result + 29) = v7 | (1 << i);
          if (i == 1)
          {
            result = sub_1819108F4(result);
            v3 = *(v2 + 40);
          }
        }
      }

LABEL_7:
      ;
    }
  }

  return result;
}

void sub_18196375C(uint64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = *(*(*a1 + 32) + 32 * a2);
  sqlite3_snprintf(24, v8, "sqlite_stat%d", 1);
  if (sub_181917F20(*a1, v8, v7))
  {
    sub_1818F73B0(a1, "DELETE FROM %Q.%s WHERE %s=%Q", v7, v8, a3, a4);
  }

  sqlite3_snprintf(24, v8, "sqlite_stat%d", 2);
  if (sub_181917F20(*a1, v8, v7))
  {
    sub_1818F73B0(a1, "DELETE FROM %Q.%s WHERE %s=%Q", v7, v8, a3, a4);
  }

  sqlite3_snprintf(24, v8, "sqlite_stat%d", 3);
  if (sub_181917F20(*a1, v8, v7))
  {
    sub_1818F73B0(a1, "DELETE FROM %Q.%s WHERE %s=%Q", v7, v8, a3, a4);
  }

  sqlite3_snprintf(24, v8, "sqlite_stat%d", 4);
  if (sub_181917F20(*a1, v8, v7))
  {
    sub_1818F73B0(a1, "DELETE FROM %Q.%s WHERE %s=%Q", v7, v8, a3, a4);
  }
}

uint64_t sub_181963908(uint64_t result, int *a2, unsigned __int8 **a3)
{
  v3 = *result;
  if ((*(*result + 49) & 0x40) == 0 || *(a3 + 63))
  {
    return result;
  }

  v4 = result;
  result = sub_1818E7DFC(result);
  v7 = a3;
  v8 = result;
  v9 = v7[12];
  v10 = **v7;
  if (v10)
  {
    v11 = 0;
    v12 = *v7 + 1;
    do
    {
      v11 = -1640531535 * (v11 + (v10 & 0xDF));
      v13 = *v12++;
      v10 = v13;
    }

    while (v13);
  }

  else
  {
    v11 = 0;
  }

  v14 = v9 + 80;
  v15 = *(v9 + 12);
  v16 = a2;
  if (v15)
  {
    v14 = (v15 + 16 * (v11 % *v14));
    v17 = *v14;
    if (*v14)
    {
LABEL_11:
      v18 = (v14 + 2);
      do
      {
        v18 = *v18;
        if (v11 == *(v18 + 8))
        {
          v19 = v18[3];
          for (i = *v7; ; ++i)
          {
            result = *i;
            if (*v19 == result)
            {
              if (!*v19)
              {
                goto LABEL_22;
              }
            }

            else
            {
              result = byte_181A20298[*i];
              if (byte_181A20298[*v19] != result)
              {
                break;
              }
            }

            ++v19;
          }
        }

        --v17;
      }

      while (v17);
      if (!qword_1EA831A40)
      {
        goto LABEL_47;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v17 = *(v9 + 21);
    if (v17)
    {
      goto LABEL_11;
    }
  }

  v18 = &qword_1EA831A30;
LABEL_22:
  if (!v18[2])
  {
LABEL_47:
    v33 = v7[9];
    if (!v33)
    {
      return result;
    }

    while (!v33[44] && (*(v3 + 50) & 8) == 0)
    {
      v33 = *(v33 + 1);
      if (!v33)
      {
        return result;
      }
    }

    v21 = v4[9].i32[0] - 1;
    v4[9].i32[0] = v21;
    v34 = *(v8 + 144);
    if (*(v8 + 148) <= v34)
    {
      sub_18194C8AC(v8, 49, 1, v21, 0);
      v16 = a2;
    }

    else
    {
      *(v8 + 144) = v34 + 1;
      v35 = *(v8 + 136) + 40 * v34;
      *v35 = 0x100000031;
      *(v35 + 8) = v21;
      *(v35 + 12) = 0;
      *(v35 + 28) = 0;
      *(v35 + 20) = 0;
      *(v35 + 36) = 0;
    }

    goto LABEL_24;
  }

LABEL_23:
  v21 = 0;
LABEL_24:
  v4[5].i8[2] = 1;
  v22 = sub_1818CB478(v3, v16, 0);
  result = sub_1818EA08C(v4, v22, 0, 0, 0);
  v4[5].i8[2] = 0;
  if ((*(v3 + 50) & 8) == 0)
  {
    v23 = *(v8 + 144);
    v24 = v23 + 2;
    if (*(v8 + 148) <= v23)
    {
      sub_18194C8AC(v8, 49, 0, v24, 0);
    }

    else
    {
      *(v8 + 144) = v23 + 1;
      v25 = *(v8 + 136) + 40 * v23;
      *v25 = 49;
      *(v25 + 8) = v24;
      *(v25 + 12) = 0;
      *(v25 + 28) = 0;
      *(v25 + 20) = 0;
      *(v25 + 36) = 0;
    }

    v26 = sub_1818E7DFC(v4);
    v27 = v26;
    v28 = v4[19];
    if (!v28)
    {
      v28 = v4;
    }

    v28[4].i8[1] = 1;
    result = *(v26 + 144);
    if (*(v27 + 148) <= result)
    {
      result = sub_18194C8AC(v27, 70, 787, 2, 0);
    }

    else
    {
      *(v27 + 144) = result + 1;
      v29 = *(v27 + 136) + 40 * result;
      *v29 = 70;
      *(v29 + 4) = 0x200000313;
      *(v29 + 12) = 0;
      *(v29 + 28) = 0;
      *(v29 + 20) = 0;
      *(v29 + 36) = 0;
    }

    if (!*(*v27 + 103))
    {
      if ((result & 0x80000000) != 0)
      {
        result = (*(v27 + 144) - 1);
      }

      v30 = *(v27 + 136) + 40 * result;
      if (*(v30 + 1))
      {
        result = sub_18194CB90(v27, v30, 0, 0xFFFFFFFFLL);
      }
    }

    v31 = *(v27 + 144);
    if (v31 >= 1)
    {
      *(*(v27 + 136) + 40 * v31 - 38) = 4;
    }
  }

  if (v21)
  {
    result = *(v8 + 24);
    v32 = ~v21;
    if (*(result + 72) + *(result + 76) < 0)
    {

      return sub_18195CB84(result, v8, v32);
    }

    else
    {
      *(*(result + 80) + 4 * v32) = *(v8 + 144);
    }
  }

  return result;
}

uint64_t sub_181963CC0(uint64_t *a1, unsigned __int8 **a2, int a3, int a4)
{
  v8 = *a1;
  v9 = *(*a1 + 32);
  v10 = sub_1818E7DFC(a1);
  if (a1[19])
  {
    v11 = a1[19];
  }

  else
  {
    v11 = a1;
  }

  v12 = *(v11 + 29);
  v13 = 1 << a3;
  if ((v12 & (1 << a3)) == 0)
  {
    *(v11 + 29) = v12 | v13;
    if (a3 == 1)
    {
      sub_1819108F4(v11);
    }
  }

  *(v11 + 28) |= v13;
  *(v11 + 32) |= 1u;
  if (*(a2 + 63) == 1)
  {
    v14 = *(v10 + 144);
    if (*(v10 + 148) <= v14)
    {
      sub_18194C8AC(v10, 170, 0, 0, 0);
    }

    else
    {
      *(v10 + 144) = v14 + 1;
      v15 = *(v10 + 136) + 40 * v14;
      *v15 = -86;
      *(v15 + 1) = 0u;
      *(v15 + 17) = 0u;
      *(v15 + 32) = 0;
    }
  }

  v16 = a3;
  v17 = *(*(*a1 + 32) + 56);
  v18 = a2[11];
  v19 = *(v17 + 64);
  if (!v19)
  {
    v21 = a2[11];
    goto LABEL_29;
  }

  v20 = a2[12];
  while (2)
  {
    while (1)
    {
      v21 = v19[2];
      if (*(v21 + 6) != v20)
      {
        break;
      }

      v22 = *(v21 + 1);
      if (!v22)
      {
        break;
      }

      for (i = *a2; *v22 != *i; ++i)
      {
        if (byte_181A20298[*v22] != byte_181A20298[*i])
        {
          goto LABEL_15;
        }

LABEL_22:
        ++v22;
      }

      if (*v22)
      {
        goto LABEL_22;
      }

      if (v20 == v17 && !v21[18])
      {
        break;
      }

LABEL_17:
      *(v21 + 8) = v18;
      v18 = v21;
      v19 = *v19;
      if (!v19)
      {
        goto LABEL_29;
      }
    }

LABEL_15:
    if (v21[16] == 151)
    {
      *(v21 + 1) = *a2;
      *(v21 + 6) = v20;
      goto LABEL_17;
    }

    v21 = v18;
    v19 = *v19;
    if (v19)
    {
      continue;
    }

    break;
  }

LABEL_29:
  for (j = (v9 + 32 * a3); v21; v21 = *(v21 + 8))
  {
    sub_18196418C(a1, v21);
  }

  v25 = *a2;
  if ((a2[6] & 8) != 0)
  {
    sub_1818F73B0(a1, "DELETE FROM %Q.sqlite_sequence WHERE name=%Q", *j, v25);
    v25 = *a2;
  }

  sub_1818F73B0(a1, "DELETE FROM %Q.sqlite_master WHERE tbl_name=%Q and type!='trigger'", *j, v25);
  v26 = *(a2 + 63);
  if (a4)
  {
    if (v26 != 1)
    {
      goto LABEL_67;
    }

LABEL_57:
    v37 = *a2;
    v38 = *(v10 + 144);
    if (*(v10 + 148) <= v38)
    {
      v38 = sub_18194C8AC(v10, 172, a3, 0, 0);
    }

    else
    {
      *(v10 + 144) = v38 + 1;
      v39 = *(v10 + 136) + 40 * v38;
      *v39 = 172;
      *(v39 + 4) = a3;
      *(v39 + 8) = 0u;
      *(v39 + 24) = 0u;
    }

    if (!*(*v10 + 103))
    {
      if (v38 < 0)
      {
        v38 = *(v10 + 144) - 1;
      }

      sub_18194CB90(v10, *(v10 + 136) + 40 * v38, v37, 0);
    }

    v40 = a1[19];
    if (!v40)
    {
      v40 = a1;
    }

    *(v40 + 33) = 1;
  }

  else
  {
    if (v26 == 1)
    {
      goto LABEL_57;
    }

    LODWORD(v27) = 0;
    v28 = *(a2 + 10);
    while (1)
    {
      v30 = v27 - 1;
      if (v27 - 1 >= v28)
      {
        v27 = v28;
      }

      else
      {
        v27 = 0;
      }

      for (k = a2[2]; k; k = *(k + 5))
      {
        v32 = *(k + 22);
        if (v32 <= v27)
        {
          v33 = v27;
        }

        else
        {
          v33 = *(k + 22);
        }

        if (v30 >= v32)
        {
          v27 = v33;
        }

        else
        {
          v27 = v27;
        }
      }

      if (!v27)
      {
        break;
      }

      v34 = a2[12];
      if (v34)
      {
        v35 = (*(*a1 + 32) + 24);
        v29 = -1;
        do
        {
          v36 = *v35;
          v35 += 4;
          ++v29;
        }

        while (v36 != v34);
      }

      else
      {
        v29 = -32768;
      }

      sub_181964544(a1, v27, v29);
    }

    if (*(a2 + 63) == 1)
    {
      goto LABEL_57;
    }
  }

LABEL_67:
  v41 = *a2;
  v42 = *(v10 + 144);
  if (*(v10 + 148) <= v42)
  {
    v42 = sub_18194C8AC(v10, 151, a3, 0, 0);
  }

  else
  {
    *(v10 + 144) = v42 + 1;
    v43 = *(v10 + 136) + 40 * v42;
    *v43 = 151;
    *(v43 + 4) = a3;
    *(v43 + 8) = 0u;
    *(v43 + 24) = 0u;
  }

  if (!*(*v10 + 103))
  {
    if (v42 < 0)
    {
      v42 = *(v10 + 144) - 1;
    }

    sub_18194CB90(v10, *(v10 + 136) + 40 * v42, v41, 0);
  }

  result = a1[2];
  v45 = **(*(*a1 + 32) + 32 * a3 + 24) + 1;
  v46 = *(result + 144);
  if (*(result + 148) <= v46)
  {
    result = sub_18194C8AC(result, 100, a3, 1, v45);
  }

  else
  {
    *(result + 144) = v46 + 1;
    v47 = *(result + 136) + 40 * v46;
    *v47 = 100;
    *(v47 + 4) = a3;
    *(v47 + 8) = 1;
    *(v47 + 12) = v45;
    *(v47 + 24) = 0;
    *(v47 + 32) = 0;
    *(v47 + 16) = 0;
  }

  v48 = *(v8[4] + 32 * a3 + 24);
  v49 = *(v48 + 114);
  if ((v49 & 2) != 0)
  {
    v50 = *(v48 + 16);
    if (v50)
    {
      do
      {
        v51 = v50[2];
        if (*(v51 + 63) == 2)
        {
          result = sub_18194E388(v8, v51);
        }

        v50 = *v50;
      }

      while (v50);
      v48 = *(v8[4] + 32 * v16 + 24);
      v49 = *(v48 + 114);
    }

    *(v48 + 114) = v49 & 0xFFFD;
  }

  return result;
}

void sub_18196418C(uint64_t *a1, const char **a2)
{
  v4 = *a1;
  v5 = a2[5];
  if (v5)
  {
    v6 = (*(v4 + 32) + 24);
    v7 = -1;
    do
    {
      v8 = *v6;
      v6 += 4;
      ++v7;
    }

    while (v8 != v5);
  }

  else
  {
    v7 = -32768;
  }

  v9 = a2[6];
  v10 = a2[1];
  v11 = *v10;
  if (*v10)
  {
    v12 = 0;
    v13 = (v10 + 1);
    do
    {
      v12 = -1640531535 * (v12 + (v11 & 0xDF));
      v14 = *v13++;
      v11 = v14;
    }

    while (v14);
  }

  else
  {
    v12 = 0;
  }

  v15 = (v9 + 8);
  v16 = *(v9 + 3);
  if (v16)
  {
    v15 = (v16 + 16 * (v12 % *v15));
    v17 = *v15;
    if (*v15)
    {
      goto LABEL_13;
    }

LABEL_24:
    v21 = qword_1EA831A40;
    if (!qword_1EA831A40)
    {
      goto LABEL_44;
    }

    goto LABEL_25;
  }

  v17 = *(v9 + 3);
  if (!v17)
  {
    goto LABEL_24;
  }

LABEL_13:
  v18 = v15 + 2;
  while (1)
  {
    v18 = *v18;
    if (v12 == v18[8])
    {
      break;
    }

LABEL_14:
    if (!--v17)
    {
      v21 = qword_1EA831A40;
      if (!qword_1EA831A40)
      {
        goto LABEL_44;
      }

      goto LABEL_25;
    }
  }

  v19 = *(v18 + 3);
  for (i = a2[1]; *v19 != *i; ++i)
  {
    if (byte_181A20298[*v19] != byte_181A20298[*i])
    {
      goto LABEL_14;
    }

LABEL_18:
    ++v19;
  }

  if (*v19)
  {
    goto LABEL_18;
  }

  v21 = *(v18 + 2);
  if (!v21)
  {
    goto LABEL_44;
  }

LABEL_25:
  if (v7 == 1)
  {
    v22 = "sqlite_temp_master";
  }

  else
  {
    v22 = "sqlite_master";
  }

  if (v7 == 1)
  {
    v23 = 14;
  }

  else
  {
    v23 = 16;
  }

  v24 = *(v4 + 528);
  if (!v24)
  {
    goto LABEL_44;
  }

  v25 = *(*(v4 + 32) + 32 * v7);
  if (!*(v4 + 197) && !*(a1 + 302))
  {
    v28 = v24(*(v4 + 536), v23, *a2, *v21, *(*(v4 + 32) + 32 * v7), a1[46]);
    if (v28 == 1)
    {
      goto LABEL_42;
    }

    if ((v28 & 0xFFFFFFFD) != 0)
    {
      goto LABEL_59;
    }

    if (v28)
    {
      return;
    }

    v26 = *a1;
    v24 = *(*a1 + 528);
    if (v24)
    {
      goto LABEL_35;
    }

LABEL_44:
    v30 = sub_1818E7DFC(a1);
    if (v30)
    {
      v31 = v30;
      v32 = 32 * v7;
      sub_1818F73B0(a1, "DELETE FROM %Q.sqlite_master WHERE name=%Q AND type='trigger'", *(*(v4 + 32) + v32), *a2);
      v33 = a1[2];
      v34 = **(*(*a1 + 32) + v32 + 24) + 1;
      v35 = *(v33 + 144);
      if (*(v33 + 148) <= v35)
      {
        sub_18194C8AC(v33, 100, v7, 1, v34);
      }

      else
      {
        *(v33 + 144) = v35 + 1;
        v36 = *(v33 + 136) + 40 * v35;
        *v36 = 100;
        *(v36 + 4) = v7;
        *(v36 + 8) = 1;
        *(v36 + 12) = v34;
        *(v36 + 24) = 0;
        *(v36 + 32) = 0;
        *(v36 + 16) = 0;
      }

      v37 = *a2;
      v38 = *(v31 + 144);
      if (*(v31 + 148) <= v38)
      {
        v38 = sub_18194C8AC(v31, 153, v7, 0, 0);
      }

      else
      {
        *(v31 + 144) = v38 + 1;
        v39 = *(v31 + 136) + 40 * v38;
        *v39 = 153;
        *(v39 + 4) = v7;
        *(v39 + 8) = 0u;
        *(v39 + 24) = 0u;
      }

      if (!*(*v31 + 103))
      {
        if (v38 < 0)
        {
          v38 = *(v31 + 144) - 1;
        }

        v40 = *(v31 + 136) + 40 * v38;

        sub_18194CB90(v31, v40, v37, 0);
      }
    }

    return;
  }

  v26 = *a1;
LABEL_35:
  if (*(v26 + 197) || *(a1 + 302))
  {
    goto LABEL_44;
  }

  v27 = v24(*(v26 + 536), 9, v22, 0, v25, a1[46]);
  if (v27 == 1)
  {
LABEL_42:
    v29 = 23;
    sub_181910730(a1, "not authorized");
LABEL_60:
    *(a1 + 6) = v29;
    return;
  }

  if ((v27 & 0xFFFFFFFD) != 0)
  {
LABEL_59:
    v29 = 1;
    sub_181910730(a1, "authorizer malfunction");
    goto LABEL_60;
  }

  if (!v27)
  {
    goto LABEL_44;
  }
}

void sub_181964544(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_1818E7DFC(a1);
  if (*(a1 + 31))
  {
    v7 = *(a1 + 31) - 1;
    *(a1 + 31) = v7;
    v8 = *(a1 + 4 * v7 + 184);
    if (a2 > 1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = (*(a1 + 60) + 1);
  *(a1 + 60) = v8;
  if (a2 <= 1)
  {
LABEL_3:
    v9 = v6;
    sub_181910730(a1, "corrupt schema");
    v6 = v9;
  }

LABEL_4:
  v10 = *(v6 + 144);
  if (*(v6 + 148) <= v10)
  {
    sub_18194C8AC(v6, 144, a2, v8, a3);
  }

  else
  {
    *(v6 + 144) = v10 + 1;
    v11 = *(v6 + 136) + 40 * v10;
    *v11 = 144;
    *(v11 + 4) = a2;
    *(v11 + 8) = v8;
    *(v11 + 12) = a3;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    *(v11 + 16) = 0;
  }

  v12 = *(a1 + 152);
  if (!v12)
  {
    v12 = a1;
  }

  *(v12 + 33) = 1;
  sub_1818F73B0(a1, "UPDATE %Q.sqlite_master SET rootpage=%d WHERE #%d AND rootpage=#%d", *(*(*a1 + 32) + 32 * a3), a2, v8, v8);
  if (v8)
  {
    v13 = *(a1 + 31);
    if (v13 <= 7)
    {
      *(a1 + 31) = v13 + 1;
      *(a1 + 4 * v13 + 184) = v8;
    }
  }
}

void *sub_181964684(void *a1, void *a2)
{
  if (a2)
  {
    return sub_18194E5B8(a1, a2);
  }

  return a1;
}

uint64_t sub_181964690(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  if (v2 < 1)
  {
    return 0;
  }

  v4 = 0;
  v5 = a2 + 2;
  while (1)
  {
    v6 = &v5[18 * v4];
    if (v6 != a1)
    {
      if (*(a1 + 16) == *(v6 + 2))
      {
        v8 = *(a1 + 8);
        v9 = *(v6 + 1);
        if (v8)
        {
          if (v9)
          {
            while (1)
            {
              if (*v8 == *v9)
              {
                if (!*v8)
                {
                  return 1;
                }
              }

              else if (byte_181A20298[*v8] != byte_181A20298[*v9])
              {
                break;
              }

              ++v8;
              ++v9;
            }
          }
        }

        else if (!v9)
        {
          return 1;
        }
      }

      if ((*(v6 + 25) & 4) != 0)
      {
        v7 = **(v6 + 8);
        if ((*(v7 + 5) & 8) != 0)
        {
          if (sub_181964690(a1, *(v7 + 40)))
          {
            return 1;
          }
        }
      }
    }

    if (++v4 == v2)
    {
      return 0;
    }
  }
}

_BYTE *sub_18196478C(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result[43])
  {
    return result;
  }

  v4 = result;
  v5 = *(result + 2);
  v6 = *result;
  do
  {
    v7 = a2;
    a2 = *(a2 + 80);
  }

  while (a2);
  v9 = *(v7 + 32);
  v8 = *(v7 + 40);
  result[43] |= 1u;
  v10 = *(v6 + 48);
  result = sub_1818BAF94(v5, *v9, a3, a4);
  if (*v9 <= 0)
  {
    return result;
  }

  v31 = v8;
  v32 = v4;
  v11 = 0;
  v12 = 0;
  v33 = v10;
  v13 = v10 & 0x44;
  v14 = v9 + 4;
  do
  {
    v16 = *(v14 - 1);
    v17 = *v14;
    if (*v14 && (*(v14 + 9) & 3) == 0)
    {
      if (!*(*v5 + 103))
      {
        v21 = v5[19] + v11;
        v20 = *v14;
        goto LABEL_22;
      }
    }

    else if (v13 && *v16 == 168)
    {
      v18 = *(v16 + 12);
      v19 = *(v16 + 9);
      if ((v18 & 0x80000000) != 0 && (v18 = *(v19 + 52), (v18 & 0x80000000) != 0))
      {
        v20 = "rowid";
        if ((v33 & 4) != 0)
        {
LABEL_27:
          result = sub_1818A8BAC(v6, "%s.%s", *v19, v20);
          if (!*(*v5 + 103))
          {
            v20 = result;
            v24 = sub_181916CE4;
            v21 = v5[19] + v11;
            goto LABEL_6;
          }

          goto LABEL_7;
        }
      }

      else
      {
        v20 = *(*(v19 + 8) + 16 * v18);
        if ((v33 & 4) != 0)
        {
          goto LABEL_27;
        }
      }

      if (!*(*v5 + 103))
      {
        v21 = v5[19] + v11;
LABEL_22:
        v24 = -1;
LABEL_6:
        result = sub_1818900D0(v21, v20, -1, 1, v24);
      }
    }

    else
    {
      if (v17)
      {
        v22 = strlen(*v14);
        result = sub_181929E8C(v6, v22 + 1, 354097263);
        v23 = result;
        if (result)
        {
          result = memcpy(result, v17, v22 + 1);
        }
      }

      else
      {
        result = sub_1818A8BAC(v6, "column%d", v12 + 1);
        v23 = result;
      }

      if (!*(*v5 + 103))
      {
        v24 = sub_181916CE4;
        v21 = v5[19] + v11;
        v20 = v23;
        goto LABEL_6;
      }
    }

LABEL_7:
    ++v12;
    v15 = *v9;
    v14 += 6;
    v11 += 64;
  }

  while (v12 < v15);
  v25 = *(v32 + 2);
  v37[0] = v32;
  v37[1] = v31;
  if (v15 >= 1)
  {
    v26 = 0;
    v27 = 0;
    v40 = 0;
    v39 = 0u;
    v38 = 0u;
    v28 = 2;
    do
    {
      v29 = *&v9[v28];
      v35 = 0;
      __s = 0;
      v34 = 0;
      result = sub_181961778(v37, v29, &__s, &v35, &v34);
      if (!*(*v25 + 103))
      {
        v30 = result;
        result = sub_1818900D0(*(v25 + 152) + (*(v25 + 262) << 7) + v26, __s, -1, 1, 0xFFFFFFFFFFFFFFFFLL);
        if (!*(*v25 + 103))
        {
          result = sub_1818900D0(*(v25 + 152) + 192 * *(v25 + 262) + v26, v35, -1, 1, 0xFFFFFFFFFFFFFFFFLL);
          if (!*(*v25 + 103))
          {
            result = sub_1818900D0(*(v25 + 152) + (*(v25 + 262) << 8) + v26, v34, -1, 1, 0xFFFFFFFFFFFFFFFFLL);
            if (!*(*v25 + 103))
            {
              result = sub_1818900D0(*(v25 + 152) + (*(v25 + 262) << 6) + v26, v30, -1, 1, 0xFFFFFFFFFFFFFFFFLL);
            }
          }
        }
      }

      ++v27;
      v26 += 64;
      v28 += 6;
    }

    while (v27 < *v9);
  }

  return result;
}

unsigned __int8 *sub_181964B00(unsigned __int8 *result, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (result)
  {
    v6 = result;
    do
    {
      v7 = *(v6 + 1);
      if ((a2 & 0x80000000) != 0)
      {
        v7 &= 0xFFFFFFFC;
      }

      else
      {
        if ((v7 & 1) == 0 || *(v6 + 14) != a2)
        {
          goto LABEL_10;
        }

        v7 = v7 & 0xFFFFFFFC | 2;
      }

      *(v6 + 1) = v7;
LABEL_10:
      v8 = *v6;
      if (v8 == 172)
      {
        v9 = *(v6 + 4);
        if (v9 && *v9 >= 1)
        {
          v10 = 0;
          v11 = 2;
          do
          {
            sub_181964B00(*&v9[v11], a2, a3, a4);
            ++v10;
            v9 = *(v6 + 4);
            v11 += 6;
          }

          while (v10 < *v9);
        }
      }

      else if (v8 == 168 && !a3 && *(v6 + 11) == a2)
      {
        *(v6 + 1) = v7 & 0xFFDFFFFF;
      }

      result = sub_181964B00(*(v6 + 2), a2, a3, a4);
      v6 = *(v6 + 3);
    }

    while (v6);
  }

  return result;
}

uint64_t sub_181964C00(void *a1, uint64_t a2)
{
  v4 = 0;
  v15 = 0;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v5 = *a1 + 103;
  v13[0] = a1;
  v13[1] = v5;
  do
  {
    while (1)
    {
      v14 = 0;
      v16 = 0;
      LODWORD(v15) = 0;
      v6 = *(a2 + 40);
      if (v6 && *v6 >= 1 && (*(v6 + 32) & 0x40) != 0)
      {
        v7 = 3;
      }

      else
      {
        v7 = 1;
      }

      HIDWORD(v15) = v7;
      result = sub_18196A1C4(v13, *(a2 + 48));
      if (v14)
      {
        break;
      }

      if (!HIDWORD(v14))
      {
        return result;
      }
    }

    *&v10 = a1;
    *(&v10 + 1) = sub_18196A30C;
    *&v11 = sub_181961BBC;
    *(&v11 + 1) = 0;
    *&v12 = 0;
    *(&v12 + 1) = v13;
    v9 = *(a2 + 48);
    if (v9)
    {
      result = sub_181959BA0(&v10, v9);
    }

    if (v16)
    {
      result = sub_181929C84(*v13[0], v16);
    }

    v4 += HIDWORD(v14);
  }

  while (HIDWORD(v14));
  return result;
}

uint64_t sub_181964D08(uint64_t *a1, uint64_t a2)
{
  if ((*(a2 + 4) & 8) == 0)
  {
    return 0;
  }

  v3 = *(a2 + 32);
  if (*v3 != 1)
  {
    return 0;
  }

  if (*(a2 + 48))
  {
    return 0;
  }

  if (*(a2 + 64))
  {
    return 0;
  }

  if (*(a2 + 56))
  {
    return 0;
  }

  if (*(a2 + 72))
  {
    return 0;
  }

  v4 = *(v3 + 8);
  if (*v4 != 169)
  {
    return 0;
  }

  v5 = *(v4 + 1);
  if (!v5)
  {
    return 0;
  }

  for (i = "count"; *v5 != *i; ++i)
  {
    if (byte_181A20298[*v5] != byte_181A20298[*i])
    {
      return 0;
    }

LABEL_12:
    ++v5;
  }

  if (*v5)
  {
    goto LABEL_12;
  }

  if (!*(v4 + 4))
  {
    v7 = *(a2 + 40);
    if (*v7 == 1 && (v4[7] & 1) == 0)
    {
      v20 = v4;
      if ((*(v7 + 33) & 4) != 0)
      {
        v9 = *(v7 + 72);
        v10 = *v9;
        if (*(*v9 + 80))
        {
          if ((v10[7] & 4) == 0)
          {
            v11 = *v9;
            while ((*v11 == 136 || !*(v11 + 10)) && !*(v11 + 6) && !*(v11 + 12) && (v11[4] & 9) == 0)
            {
              v11 = *(v11 + 10);
              if (!v11)
              {
                v12 = *a1;
                sub_181929C84(*a1, v9);
                *(v7 + 72) = 0;
                *(v7 + 33) &= ~4u;
                sub_1818BB5B0(v12, *(a2 + 40), v13, v14);
                *(a2 + 40) = sub_18190C56C(*a1, 0x50uLL, 0x103204056E3F560);
                if (v10)
                {
                  v15 = 0;
                  do
                  {
                    v16 = *(v10 + 10);
                    *(v10 + 10) = 0;
                    *(v10 + 11) = 0;
                    *(v10 + 1) = *(v10 + 1) & 0xFFFFFEF7 | 8;
                    *(v10 + 1) = 0;
                    sub_18195B158(a1, sub_181964684, *(v10 + 4));
                    v17 = v20;
                    if (v16)
                    {
                      v17 = sub_1818C7FEC(v12, v20, 0, 0);
                    }

                    *(v10 + 4) = sub_18197FD9C(*a1, v17);
                    v18 = sub_18194F098(a1, 139, 0, 0);
                    sub_181951E94(a1, v18, v10, v19);
                    if (v15)
                    {
                      v18 = sub_18194F098(a1, 107, v18, v15);
                    }

                    v15 = v18;
                    v10 = v16;
                  }

                  while (v16);
                }

                else
                {
                  v18 = 0;
                }

                *(*(a2 + 32) + 8) = v18;
                *(a2 + 4) &= ~8u;
                return 1;
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_181964FA4(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    return 0;
  }

  v5 = a2;
  if ((*(a2 + 1) & 0x2002000) != 0)
  {
    return 0;
  }

  v6 = a4 + 72 * a5;
  if ((*(v6 + 32) & 0x50) != 0)
  {
    return 0;
  }

  v8 = a3;
  if (*(a2 + 10))
  {
    v10 = 0;
    v11 = a2;
    while (1)
    {
      v12 = *v11;
      if (v12 == 139)
      {
        v13 = v10;
      }

      else
      {
        v13 = 1;
      }

      if (v12 != 136)
      {
        v10 = v13;
      }

      if (*(v11 + 14))
      {
        return 0;
      }

      v11 = *(v11 + 10);
      if (!v11)
      {
        v14 = a4;
        v15 = a5;
        if (!v10)
        {
          goto LABEL_26;
        }

        v16 = a2;
        while (1)
        {
          v17 = *(v16 + 4);
          if (*v17 >= 1)
          {
            break;
          }

LABEL_17:
          v16 = *(v16 + 10);
          if (!v16)
          {
            goto LABEL_26;
          }
        }

        v18 = 0;
        v19 = 2;
        while (1)
        {
          v20 = sub_1818B4720(a1, *&v17[v19]);
          if (v20)
          {
            if (v20[3] != sub_1818D0EC0)
            {
              return 0;
            }
          }

          ++v18;
          v19 += 6;
          if (v18 >= *v17)
          {
            goto LABEL_17;
          }
        }
      }
    }
  }

  v14 = a4;
  v15 = a5;
  v21 = *(a2 + 14);
  if (v21)
  {
    if (!*(v21 + 16))
    {
      return 0;
    }
  }

LABEL_26:
  if (*(v5 + 12))
  {
    return 0;
  }

  if (*v8 == 44)
  {
    LODWORD(v22) = 0;
    do
    {
      v22 = sub_181964FA4(a1, v5, *(v8 + 24), v14, v15) + v22;
      v8 = *(v8 + 16);
    }

    while (*v8 == 44);
  }

  else
  {
    v22 = 0;
  }

  if (!sub_18196A6E4(v8, v14, v15, 1))
  {
    return v22;
  }

  *(v5 + 1) |= 0x1000000u;
  do
  {
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v24 = sub_1818C7FEC(*a1, v8, 0, 0);
    sub_181964B00(v24, 0xFFFFFFFFLL, 1, v25);
    v32 = a1;
    v33 = *(v6 + 36);
    v34 = v33;
    LODWORD(v35) = 0;
    v36 = *(v5 + 4);
    v26 = v5;
    do
    {
      v27 = v26;
      v26 = *(v26 + 10);
    }

    while (v26);
    v37 = *(v27 + 4);
    v28 = sub_1818EC4E8(&v32, v24);
    v29 = v28;
    v30 = *(v5 + 14);
    if (v30)
    {
      v31 = *(v30 + 16);
      v38[3] = 0;
      v39 = 0x100000000;
      v38[1] = sub_18196A808;
      v38[2] = 0;
      v40 = v31;
      v38[0] = a1;
      if (v28)
      {
        sub_181959BA0(v38, v28);
        if (!WORD2(v39))
        {
          sub_1819439E0(*a1, v29);
          return v22;
        }
      }
    }

    if ((*(v5 + 1) & 8) != 0)
    {
      v23 = 64;
    }

    else
    {
      v23 = 48;
    }

    *&v5[v23] = sub_181951CA4(a1, *&v5[v23], v29);
    v5 = *(v5 + 10);
  }

  while (v5);
  return (v22 + 1);
}

uint64_t sub_181965288(uint64_t result)
{
  if ((*(result + 25) & 0x210) == 0)
  {
    v1 = **(result + 64);
    v2 = v1;
    while (v2)
    {
      if ((v2[4] & 9) == 0 && (!*(v2 + 10) || *v2 == 136))
      {
        v3 = *(v2 + 14);
        v2 = *(v2 + 10);
        if (!v3)
        {
          continue;
        }
      }

      return result;
    }

    v4 = *(result + 32);
    v5 = *(v1 + 72);
    if (v5)
    {
      v6 = *v5;
      if (v6 >= 1)
      {
        v7 = (v5 + 7);
        do
        {
          v9 = *v7;
          v7 += 12;
          v8 = v9;
          if (v9)
          {
            v10 = v8 - 1;
            if (v10 >= 0x3F)
            {
              LOBYTE(v10) = 63;
            }

            v4 |= 1 << v10;
          }

          --v6;
        }

        while (v6);
      }
    }

    v11 = *(*(result + 16) + 54);
    if (v11 >= 1)
    {
      v12 = 0;
      v13 = 0;
      do
      {
        v14 = 1 << v12;
        if (v12 >= 0x3F)
        {
          v14 = 0x8000000000000000;
        }

        result = v14 & v4;
        if (result)
        {
          v15 = 1;
        }

        else
        {
          v15 = v1 == 0;
        }

        if (!v15)
        {
          result = v1;
          do
          {
            v16 = *(*(result + 32) + 24 * v12 + 8);
            if (*v16 != 122)
            {
              *v16 = 122;
              *(v16 + 4) &= 0xFFF7DFFF;
              *(result + 4) |= 0x1000000u;
              ++v13;
            }

            result = *(result + 80);
          }

          while (result);
        }

        ++v12;
      }

      while (v12 != v11);
    }
  }

  return result;
}

BOOL sub_1819653E0(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  v4 = a2 + 8 + 72 * a3;
  if ((*(v4 + 25) & 0x200) != 0)
  {
    v5 = *(v4 + 48);
    v6 = *(v5 + 18);
    if (!*(v5 + 18))
    {
      return 0;
    }

    v7 = *v5;
    if (v6 != 2 && v7 > 1)
    {
      return 0;
    }
  }

  if ((*(a2 + 32) & 0x40) != 0 || (*(*a1 + 99) & 2) != 0)
  {
    return 0;
  }

  v9 = *a2;
  v10 = **(v4 + 64);
  if ((*(v10 + 7) & 1) == 0)
  {
    LODWORD(v11) = a3 + 1;
    while (v11 < v9)
    {
      v11 = v11;
      while (1)
      {
        v12 = a2 + 8 + 72 * v11++;
        if ((*(v12 + 25) & 0x44) != 4)
        {
          goto LABEL_14;
        }

        v13 = *v12;
        if (!*v12)
        {
          goto LABEL_14;
        }

        v14 = *(*(v12 + 16) + 96);
        if (v14 != *(*(v4 + 16) + 96))
        {
          goto LABEL_14;
        }

        v15 = *v4;
        if (!*v4)
        {
          goto LABEL_14;
        }

        while (*v13 != *v15)
        {
          if (byte_181A20298[*v13] != byte_181A20298[*v15])
          {
            goto LABEL_14;
          }

LABEL_21:
          ++v13;
          ++v15;
        }

        if (*v13)
        {
          goto LABEL_21;
        }

        v16 = **(v12 + 64);
        if (v14 || *(v10 + 16) == *(v16 + 16))
        {
          break;
        }

LABEL_14:
        if (v9 == v11)
        {
          goto LABEL_28;
        }
      }

      result = 0;
      if ((*(v16 + 7) & 1) == 0)
      {
        return result;
      }
    }
  }

LABEL_28:
  if (a3)
  {
    if ((a4 & 0x10000000) == 0)
    {
      v18 = a3 + 1;
      for (i = a2 + 72 * a3 - 39; (*(i + 71) & 0x22) == 0; i -= 72)
      {
        if (!--v18)
        {
          return 1;
        }

        result = 0;
        v20 = *i;
        if ((v20 & 4) != 0)
        {
          return result;
        }
      }
    }

    return 0;
  }

  if (v9 == 1)
  {
    return 1;
  }

  if ((*(a2 + 104) & 2) != 0)
  {
    return 1;
  }

  return ((a4 >> 28) & 1) == 0;
}

uint64_t sub_18196556C(uint64_t a1, unsigned __int8 **a2, uint64_t a3, int a4)
{
  v4 = *a2[8];
  if (*(v4 + 7))
  {
    return 0;
  }

  v5 = a1 + 8;
  do
  {
    if (a3 >= a4)
    {
      return 0;
    }

    a3 = a3;
    while (2)
    {
      result = v5 + 72 * a3++;
      if ((*(result + 25) & 0x44) != 4)
      {
        goto LABEL_5;
      }

      v7 = *result;
      if (!*result)
      {
        goto LABEL_5;
      }

      v8 = *(*(result + 16) + 96);
      if (v8 != *(a2[2] + 12))
      {
        goto LABEL_5;
      }

      v9 = *a2;
      if (!*a2)
      {
        goto LABEL_5;
      }

      while (*v7 != *v9)
      {
        if (byte_181A20298[*v7] != byte_181A20298[*v9])
        {
          goto LABEL_5;
        }

LABEL_12:
        ++v7;
        ++v9;
      }

      if (*v7)
      {
        goto LABEL_12;
      }

      v10 = **(result + 64);
      if (!v8 && *(v4 + 16) != *(v10 + 16))
      {
LABEL_5:
        if (a3 == a4)
        {
          return 0;
        }

        continue;
      }

      break;
    }
  }

  while ((*(v10 + 7) & 1) != 0);
  return result;
}

void *sub_181965648(uint64_t *a1, int *a2, int a3, int a4)
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a2 - a3;
  v10 = a4 + v9 + 1;
  v11 = 9 * v10;
  v12 = sub_181929E8C(*a1, v11 + 32, 0x2004093837F09);
  v13 = v12;
  if (v12)
  {
    *(v12 + 3) = v9;
    *(v12 + 4) = v10;
    *(v12 + 4) = *(v7 + 100);
    v12[2] = v7;
    v12[3] = &v12[v10 + 4];
    *v12 = 1;
    bzero(v12 + 4, v11);
    v14 = v8 - a3;
    if (v8 > a3)
    {
      v15 = 0;
      v16 = &a2[6 * a3 + 2];
      do
      {
        v17 = sub_1818B4720(a1, *v16);
        if (!v17)
        {
          v17 = *(*a1 + 16);
        }

        v13[v15 + 4] = v17;
        *(v13[3] + v15) = *(v16 + 16);
        v16 += 6;
        ++v15;
      }

      while (v14 != v15);
    }
  }

  else if (!*(v7 + 103) && !*(v7 + 104))
  {
    *(v7 + 103) = 1;
    if (*(v7 + 220) >= 1)
    {
      *(v7 + 424) = 1;
    }

    ++*(v7 + 432);
    *(v7 + 436) = 0;
    v19 = *(v7 + 344);
    if (v19)
    {
      sub_181910730(v19, "out of memory");
      for (i = *(v7 + 344); ; ++*(i + 52))
      {
        *(i + 24) = 7;
        i = *(i + 216);
        if (!i)
        {
          break;
        }
      }
    }
  }

  return v13;
}

uint64_t sub_1819657CC(uint64_t a1, uint64_t a2)
{
  v3 = **(**(*(a2 + 40) + 72) + 32);
  v4 = *(a2 + 112);
  result = sub_1818E7DFC(a1);
  v6 = result;
  v7 = *(v4 + 88);
  v8 = *(result + 144);
  if (*(result + 148) <= v8)
  {
    result = sub_18194C8AC(result, 117, v7, v3, 0);
  }

  else
  {
    *(result + 144) = v8 + 1;
    v9 = *(result + 136) + 40 * v8;
    *v9 = 117;
    *(v9 + 4) = v7;
    *(v9 + 8) = v3;
    *(v9 + 12) = 0;
    *(v9 + 28) = 0;
    *(v9 + 20) = 0;
    *(v9 + 36) = 0;
  }

  v10 = *(v4 + 88);
  v11 = v10 + 1;
  v12 = *(v6 + 144);
  if (*(v6 + 148) <= v12)
  {
    result = sub_18194C8AC(v6, 114, v11, v10, 0);
  }

  else
  {
    *(v6 + 144) = v12 + 1;
    v13 = *(v6 + 136) + 40 * v12;
    *v13 = 114;
    *(v13 + 4) = v11;
    *(v13 + 8) = v10;
    *(v13 + 12) = 0;
    *(v13 + 28) = 0;
    *(v13 + 20) = 0;
    *(v13 + 36) = 0;
  }

  v14 = *(v4 + 88);
  v15 = v14 + 2;
  v16 = *(v6 + 144);
  if (*(v6 + 148) <= v16)
  {
    result = sub_18194C8AC(v6, 114, v15, v14, 0);
  }

  else
  {
    *(v6 + 144) = v16 + 1;
    v17 = *(v6 + 136) + 40 * v16;
    *v17 = 114;
    *(v17 + 4) = v15;
    *(v17 + 8) = v14;
    *(v17 + 12) = 0;
    *(v17 + 28) = 0;
    *(v17 + 20) = 0;
    *(v17 + 36) = 0;
  }

  v18 = *(v4 + 88);
  v19 = v18 + 3;
  v20 = *(v6 + 144);
  if (*(v6 + 148) <= v20)
  {
    result = sub_18194C8AC(v6, 114, v19, v18, 0);
    v22 = *(v4 + 16);
    if (!v22)
    {
      goto LABEL_17;
    }
  }

  else
  {
    *(v6 + 144) = v20 + 1;
    v21 = *(v6 + 136) + 40 * v20;
    *v21 = 114;
    *(v21 + 4) = v19;
    *(v21 + 8) = v18;
    *(v21 + 12) = 0;
    *(v21 + 28) = 0;
    *(v21 + 20) = 0;
    *(v21 + 36) = 0;
    v22 = *(v4 + 16);
    if (!v22)
    {
      goto LABEL_17;
    }
  }

  v23 = *v22;
  v24 = *(a1 + 60);
  v25 = v24 + 1;
  *(v4 + 108) = v24 + 1;
  v26 = v24 + v23;
  *(a1 + 60) = v24 + v23;
  v27 = *(v6 + 144);
  if (*(v6 + 148) <= v27)
  {
    result = sub_18194C8AC(v6, 75, 0, v25, v26);
  }

  else
  {
    *(v6 + 144) = v27 + 1;
    v28 = *(v6 + 136) + 40 * v27;
    *v28 = 75;
    *(v28 + 8) = v25;
    *(v28 + 12) = v26;
    *(v28 + 24) = 0;
    *(v28 + 32) = 0;
    *(v28 + 16) = 0;
  }

LABEL_17:
  v29 = *(a1 + 60) + 1;
  *(a1 + 60) = v29;
  *(v4 + 128) = v29;
  v30 = *(v6 + 144);
  if (*(v6 + 148) <= v30)
  {
    result = sub_18194C8AC(v6, 71, 1, v29, 0);
    if (*(v4 + 36))
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  *(v6 + 144) = v30 + 1;
  v31 = *(v6 + 136) + 40 * v30;
  *v31 = 0x100000047;
  *(v31 + 8) = v29;
  *(v31 + 12) = 0;
  *(v31 + 28) = 0;
  *(v31 + 20) = 0;
  *(v31 + 36) = 0;
  if (!*(v4 + 36))
  {
LABEL_22:
    v37 = v4;
    while (1)
    {
      v39 = *(v37 + 80);
      if ((*(v39 + 5) & 0x10) != 0 && *(v37 + 33) != 91)
      {
        result = sub_181965648(a1, *(*(v37 + 112) + 32), 0, 0);
        v49 = result;
        v50 = *(a1 + 56);
        *(v37 + 100) = v50.i32[0];
        v51 = v50.i32[0];
        *(v37 + 104) = v50.i32[1] + 1;
        *(a1 + 56) = vadd_s32(v50, 0x300000001);
        if (result && *(*(*(v37 + 80) + 56) + 1) == 105)
        {
          **(result + 24) = 1;
          v51 = *(v37 + 100);
        }

        v52 = *(v6 + 144);
        if (*(v6 + 148) <= v52)
        {
          result = sub_18194C8AC(v6, 117, v51, 2, 0);
        }

        else
        {
          *(v6 + 144) = v52 + 1;
          v53 = *(v6 + 136) + 40 * v52;
          *v53 = 117;
          *(v53 + 4) = v51;
          *(v53 + 8) = 2;
          *(v53 + 12) = 0;
          *(v53 + 28) = 0;
          *(v53 + 20) = 0;
          *(v53 + 36) = 0;
        }

        if (*(*v6 + 103))
        {
          if (v49)
          {
            v54 = *(*v6 + 824) == 0;
          }

          else
          {
            v54 = 0;
          }

          if (v54)
          {
            v41 = (*v49)-- == 1;
            if (v41)
            {
              result = sub_181939EC8(*(v49 + 16), v49);
            }
          }
        }

        else
        {
          v55 = *(v6 + 136) + 40 * *(v6 + 144);
          *(v55 - 39) = -8;
          *(v55 - 24) = v49;
        }

        v45 = *(v37 + 104) + 1;
        v56 = *(v6 + 144);
        if (*(v6 + 148) <= v56)
        {
          v47 = v6;
          v48 = 71;
          v43 = 0;
          goto LABEL_61;
        }

        *(v6 + 144) = v56 + 1;
        v38 = *(v6 + 136) + 40 * v56;
        *v38 = 71;
      }

      else
      {
        v40 = *(v39 + 56);
        v41 = v40 == "nth_value" || v40 == "first_value";
        if (v41)
        {
          v42 = *(a1 + 56);
          *(v37 + 104) = v42.i32[1] + 1;
          *(v37 + 100) = v42.i32[0];
          v43 = v42.i32[0];
          *(a1 + 56) = vadd_s32(v42, 0x200000001);
        }

        else
        {
          if (v40 != "lead" && v40 != "lag")
          {
            goto LABEL_25;
          }

          v43 = *(a1 + 56);
          *(a1 + 56) = v43 + 1;
          *(v37 + 100) = v43;
        }

        v45 = *(v4 + 88);
        v46 = *(v6 + 144);
        if (*(v6 + 148) <= v46)
        {
          v47 = v6;
          v48 = 114;
LABEL_61:
          result = sub_18194C8AC(v47, v48, v43, v45, 0);
          goto LABEL_25;
        }

        *(v6 + 144) = v46 + 1;
        v38 = *(v6 + 136) + 40 * v46;
        *v38 = 114;
        *(v38 + 4) = v43;
      }

      *(v38 + 8) = v45;
      *(v38 + 12) = 0;
      *(v38 + 28) = 0;
      *(v38 + 20) = 0;
      *(v38 + 36) = 0;
LABEL_25:
      v37 = *(v37 + 64);
      if (!v37)
      {
        return result;
      }
    }
  }

LABEL_19:
  v33 = *(a1 + 56);
  v32 = *(a1 + 60);
  v34 = v32 + 1;
  v32 += 2;
  *(v4 + 132) = v34;
  *(v4 + 136) = v32;
  *(a1 + 56) = v33 + 1;
  *(a1 + 60) = v32;
  *(v4 + 100) = v33;
  v35 = *(v6 + 144);
  if (*(v6 + 148) <= v35)
  {
    result = sub_18194C8AC(v6, 71, 1, v34, 0);
  }

  else
  {
    *(v6 + 144) = v35 + 1;
    v36 = *(v6 + 136) + 40 * v35;
    *v36 = 0x100000047;
    *(v36 + 8) = v34;
    *(v36 + 12) = 0;
    *(v36 + 28) = 0;
    *(v36 + 20) = 0;
    *(v36 + 36) = 0;
  }

  v57 = *(v4 + 136);
  v58 = *(v6 + 144);
  if (*(v6 + 148) <= v58)
  {
    result = sub_18194C8AC(v6, 71, 0, v57, 0);
  }

  else
  {
    *(v6 + 144) = v58 + 1;
    v59 = *(v6 + 136) + 40 * v58;
    *v59 = 71;
    *(v59 + 8) = v57;
    *(v59 + 12) = 0;
    *(v59 + 28) = 0;
    *(v59 + 20) = 0;
    *(v59 + 36) = 0;
  }

  v60 = *(v4 + 100);
  v61 = *(v4 + 88);
  v62 = *(v6 + 144);
  if (*(v6 + 148) <= v62)
  {

    return sub_18194C8AC(v6, 114, v60, v61, 0);
  }

  else
  {
    *(v6 + 144) = v62 + 1;
    v63 = *(v6 + 136) + 40 * v62;
    *v63 = 114;
    *(v63 + 4) = v60;
    *(v63 + 8) = v61;
    *(v63 + 12) = 0;
    *(v63 + 28) = 0;
    *(v63 + 20) = 0;
    *(v63 + 36) = 0;
  }

  return result;
}

uint64_t sub_181965E3C(uint64_t a1, uint64_t a2, uint64_t **a3, int a4, int a5)
{
  v10 = *(a2 + 112);
  v240 = *(v10 + 24);
  v11 = sub_1818E7DFC(a1);
  v12 = *(a2 + 40);
  v13 = *(v12 + 36);
  v14 = *(*(v12 + 24) + 54);
  v15 = *(a1 + 72);
  v237 = v15 - 1;
  *(a1 + 72) = v15 - 1;
  memset(v247, 0, sizeof(v247));
  v246 = 0u;
  v243[0] = a1;
  v243[1] = v10;
  v243[2] = v11;
  v244 = a5;
  v245 = a4;
  LODWORD(v12) = *(v10 + 88);
  v16 = v12 + 2;
  *&v247[4] = v12;
  HIDWORD(v246) = v12 + 2;
  v242 = v12;
  v235 = v12 + 3;
  *&v247[12] = (v12 + 3);
  v17 = *(v10 + 33);
  if (v17 == 91)
  {
    if (!*(v10 + 132))
    {
      v23 = v10;
      while (1)
      {
        v24 = *(*(v23 + 80) + 56);
        v25 = v24 == "lag" || v24 == "lead";
        v26 = v25 || v24 == "nth_value";
        if (v26 || v24 == "first_value")
        {
          break;
        }

        v23 = *(v23 + 64);
        if (!v23)
        {
          if (*(v10 + 34) != 89)
          {
            goto LABEL_282;
          }

          if (*(v10 + 32) != 90)
          {
            v28 = *(v10 + 48);
            v29 = *a1;
            v248[0] = 0;
            if (v28)
            {
              sub_18194BC5C(v29, v28, *(v29 + 100), 67, v248);
              v30 = v248[0];
              if (v248[0])
              {
                v31 = sqlite3_value_int(v248[0]);
                if ((*(v30 + 10) & 0x9000) != 0 || *(v30 + 8))
                {
                  sub_18193CA00(v30);
                }

                sub_181929C84(*(v30 + 3), v30);
                if (v31 >= 1)
                {
                  v32 = 3;
                  goto LABEL_36;
                }
              }
            }
          }

          goto LABEL_37;
        }
      }
    }

    goto LABEL_37;
  }

  if (v17 == 87)
  {
    if (*(v10 + 32) == 90)
    {
      goto LABEL_37;
    }

    v18 = *(v10 + 40);
    v19 = *a1;
    v248[0] = 0;
    if (!v18)
    {
      goto LABEL_37;
    }

    sub_18194BC5C(v19, v18, *(v19 + 100), 67, v248);
    v20 = v248[0];
    if (!v248[0])
    {
      goto LABEL_37;
    }

    v21 = *(v248[0] + 10);
    if ((v21 & 0x24) != 0)
    {
      v22 = *v248[0];
    }

    else if ((v21 & 8) != 0)
    {
      v224 = *v248[0];
      if (*v248[0] >= -9.22337204e18)
      {
        if (v224 <= 9.22337204e18)
        {
          v22 = v224;
        }

        else
        {
          LODWORD(v22) = -1;
        }
      }

      else
      {
        LODWORD(v22) = 0;
      }
    }

    else if ((v21 & 0x12) != 0 && *(v248[0] + 1))
    {
      LODWORD(v22) = sub_18193CFCC(v248[0]);
      v21 = *(v20 + 10);
    }

    else
    {
      LODWORD(v22) = 0;
    }

    if ((v21 & 0x9000) != 0 || *(v20 + 8))
    {
      sub_18193CA00(v20);
    }

    sub_181929C84(*(v20 + 3), v20);
    if (v22 < 1)
    {
      goto LABEL_37;
    }

LABEL_282:
    v32 = 1;
  }

  else
  {
    v32 = 2;
  }

LABEL_36:
  DWORD1(v246) = v32;
LABEL_37:
  v33 = *(a1 + 60);
  v34 = v33 + v14;
  v35 = v33 + v14 + 2;
  *(a1 + 60) = v35;
  DWORD2(v246) = v35;
  v36 = *(v10 + 33);
  if (v36 == 89 || v36 == 87)
  {
    v37 = v34 + 3;
    *(a1 + 60) = v34 + 3;
    v38 = v34 + 3;
  }

  else
  {
    v38 = 0;
    v37 = v34 + 2;
  }

  v39 = *(v10 + 34);
  v233 = a3;
  v231 = v38;
  v232 = v15;
  v228 = v16;
  if (v39 == 89 || v39 == 87)
  {
    *(a1 + 60) = ++v37;
    v230 = v37;
  }

  else
  {
    v230 = 0;
  }

  v40 = v33 + 1;
  v241 = a1;
  v41 = v240;
  v229 = v35;
  if (*(v10 + 32) == 77)
  {
    v227 = 0;
    v226 = 0;
    v236 = 0;
    v234 = 0;
  }

  else
  {
    if (v240)
    {
      v41 = *v240;
    }

    v42 = *(v10 + 120) + v40;
    v43 = *(v10 + 16);
    if (v43)
    {
      v42 += *v43;
    }

    v234 = v42;
    v236 = v37 + 1;
    v44 = v41 + v37;
    v45 = v44 + 1;
    v46 = v44 + v41;
    LODWORD(v226) = v45;
    HIDWORD(v226) = v46 + 1;
    *v247 = v45;
    *&v247[8] = v46 + 1;
    v47 = v46 + v41;
    v227 = v47 + 1;
    *&v247[16] = v47 + 1;
    *(a1 + 60) = v47 + v41;
  }

  v238 = v34 + 1;
  if (v14 >= 1)
  {
    v48 = 0;
    v49 = v40;
    v50 = v14;
    do
    {
      v52 = *(v11 + 144);
      if (*(v11 + 148) > v52)
      {
        *(v11 + 144) = v52 + 1;
        v51 = *(v11 + 136) + 40 * v52;
        *v51 = 94;
        *(v51 + 4) = v13;
        *(v51 + 8) = v48;
        *(v51 + 12) = v49;
        *(v51 + 24) = 0;
        *(v51 + 32) = 0;
        *(v51 + 16) = 0;
      }

      else
      {
        sub_18194C8AC(v11, 94, v13, v48, v49);
      }

      ++v48;
      ++v49;
      --v50;
    }

    while (v50);
  }

  v53 = *(v11 + 144);
  if (*(v11 + 148) <= v53)
  {
    sub_18194C8AC(v11, 97, v40, v14, v238);
  }

  else
  {
    *(v11 + 144) = v53 + 1;
    v54 = *(v11 + 136) + 40 * v53;
    *v54 = 97;
    *(v54 + 4) = v40;
    *(v54 + 8) = v14;
    *(v54 + 12) = v238;
    *(v54 + 24) = 0;
    *(v54 + 32) = 0;
    *(v54 + 16) = 0;
  }

  v55 = v242 + 1;
  v56 = *(v10 + 16);
  if (v56)
  {
    v57 = *v56;
    v58 = *(v10 + 120) + v40;
    v59 = sub_181965648(a1, v56, 0, 0);
    v60 = *(a1 + 60) + 1;
    *(v241 + 60) = v60;
    v61 = *(v10 + 108);
    v62 = *(v11 + 144);
    if (*(v11 + 148) <= v62)
    {
      v62 = sub_18194C8AC(v11, 90, v58, v61, v57);
    }

    else
    {
      *(v11 + 144) = v62 + 1;
      v63 = *(v11 + 136) + 40 * v62;
      *v63 = 90;
      *(v63 + 4) = v58;
      *(v63 + 8) = v61;
      *(v63 + 12) = v57;
      *(v63 + 24) = 0;
      *(v63 + 32) = 0;
      *(v63 + 16) = 0;
    }

    if (*(*v11 + 103))
    {
      if (v59)
      {
        if (!*(*v11 + 824))
        {
          v25 = (*v59)-- == 1;
          if (v25)
          {
            sub_181939EC8(v59[2], v59);
          }
        }
      }
    }

    else
    {
      v65 = *(v11 + 136) + 40 * *(v11 + 144);
      *(v65 - 39) = -8;
      *(v65 - 24) = v59;
    }

    v66 = v62 + 2;
    v67 = v62 + 4;
    v68 = *(v11 + 144);
    if (*(v11 + 148) <= v68)
    {
      sub_18194C8AC(v11, 14, v66, v67, v62 + 2);
    }

    else
    {
      *(v11 + 144) = v68 + 1;
      v69 = *(v11 + 136) + 40 * v68;
      *v69 = 14;
      *(v69 + 4) = v66;
      *(v69 + 8) = v67;
      *(v69 + 12) = v66;
      *(v69 + 24) = 0;
      *(v69 + 32) = 0;
      *(v69 + 16) = 0;
    }

    v55 = v242 + 1;
    v64 = *(v11 + 144);
    if (*(v11 + 148) <= v64)
    {
      v64 = sub_18194C8AC(v11, 10, v60, 0, 0);
    }

    else
    {
      *(v11 + 144) = v64 + 1;
      v70 = *(v11 + 136) + 40 * v64;
      *v70 = 10;
      *(v70 + 4) = v60;
      *(v70 + 8) = 0u;
      *(v70 + 24) = 0u;
    }

    v71 = *(v10 + 108);
    v72 = v57 - 1;
    v73 = *(v11 + 144);
    if (*(v11 + 148) <= v73)
    {
      sub_18194C8AC(v11, 80, v58, v71, v72);
    }

    else
    {
      *(v11 + 144) = v73 + 1;
      v74 = *(v11 + 136) + 40 * v73;
      *v74 = 80;
      *(v74 + 4) = v58;
      *(v74 + 8) = v71;
      *(v74 + 12) = v72;
      *(v74 + 24) = 0;
      *(v74 + 32) = 0;
      *(v74 + 16) = 0;
    }
  }

  else
  {
    v60 = 0;
    v64 = 0;
  }

  v75 = *(v11 + 144);
  if (*(v11 + 148) <= v75)
  {
    sub_18194C8AC(v11, 127, v55, v229, 0);
  }

  else
  {
    *(v11 + 144) = v75 + 1;
    v76 = *(v11 + 136) + 40 * v75;
    *v76 = 127;
    *(v76 + 4) = v55;
    *(v76 + 8) = v229;
    *(v76 + 12) = 0;
    *(v76 + 28) = 0;
    *(v76 + 20) = 0;
    *(v76 + 36) = 0;
  }

  v77 = *(v11 + 144);
  if (*(v11 + 148) <= v77)
  {
    sub_18194C8AC(v11, 128, v55, v238, v229);
  }

  else
  {
    *(v11 + 144) = v77 + 1;
    v78 = *(v11 + 136) + 40 * v77;
    *v78 = 128;
    *(v78 + 4) = v55;
    *(v78 + 8) = v238;
    *(v78 + 12) = v229;
    *(v78 + 24) = 0;
    *(v78 + 32) = 0;
    *(v78 + 16) = 0;
  }

  v79 = *(v10 + 128);
  v80 = *(v11 + 144);
  v225 = v64;
  if (*(v11 + 148) <= v80)
  {
    v239 = sub_18194C8AC(v11, 53, v79, 0, v229);
  }

  else
  {
    *(v11 + 144) = v80 + 1;
    v239 = v80;
    v81 = *(v11 + 136) + 40 * v80;
    *v81 = 53;
    *(v81 + 4) = v79;
    *(v81 + 8) = 0;
    *(v81 + 12) = v229;
    *(v81 + 24) = 0;
    *(v81 + 32) = 0;
    *(v81 + 16) = 0;
  }

  v82 = sub_1818E7DFC(v241);
  v83 = 0;
  v84 = v10;
  do
  {
    v86 = *(v84 + 80);
    v87 = *(v84 + 92);
    v88 = *(v82 + 144);
    if (*(v82 + 148) <= v88)
    {
      sub_18194C8AC(v82, 75, 0, v87, 0);
    }

    else
    {
      *(v82 + 144) = v88 + 1;
      v89 = *(v82 + 136) + 40 * v88;
      *v89 = 75;
      *(v89 + 8) = v87;
      *(v89 + 12) = 0;
      *(v89 + 28) = 0;
      *(v89 + 20) = 0;
      *(v89 + 36) = 0;
    }

    v90 = *(*(v84 + 112) + 32);
    if (!v90)
    {
      if (v83 > 0)
      {
        goto LABEL_103;
      }

      v91 = 0;
LABEL_102:
      v83 = v91;
      goto LABEL_103;
    }

    v91 = *v90;
    if (v83 <= v91)
    {
      goto LABEL_102;
    }

LABEL_103:
    if (*(v10 + 132))
    {
      goto LABEL_93;
    }

    v92 = *(v86 + 56);
    if (v92 == "nth_value" || v92 == "first_value")
    {
      v94 = *(v84 + 104);
      v95 = *(v82 + 144);
      if (*(v82 + 148) <= v95)
      {
        sub_18194C8AC(v82, 71, 0, v94, 0);
      }

      else
      {
        *(v82 + 144) = v95 + 1;
        v96 = *(v82 + 136) + 40 * v95;
        *v96 = 71;
        *(v96 + 8) = v94;
        *(v96 + 12) = 0;
        *(v96 + 28) = 0;
        *(v96 + 20) = 0;
        *(v96 + 36) = 0;
      }

      v97 = *(v84 + 104) + 1;
      v98 = *(v82 + 144);
      if (*(v82 + 148) <= v98)
      {
        sub_18194C8AC(v82, 71, 0, v97, 0);
        if ((*(v86 + 5) & 0x10) == 0)
        {
          goto LABEL_93;
        }

        goto LABEL_115;
      }

      *(v82 + 144) = v98 + 1;
      v99 = *(v82 + 136) + 40 * v98;
      *v99 = 71;
      *(v99 + 8) = v97;
      *(v99 + 12) = 0;
      *(v99 + 28) = 0;
      *(v99 + 20) = 0;
      *(v99 + 36) = 0;
    }

    if ((*(v86 + 5) & 0x10) == 0)
    {
      goto LABEL_93;
    }

LABEL_115:
    v100 = *(v84 + 100);
    if (v100)
    {
      v101 = *(v82 + 144);
      if (*(v82 + 148) <= v101)
      {
        sub_18194C8AC(v82, 146, v100, 0, 0);
      }

      else
      {
        *(v82 + 144) = v101 + 1;
        v102 = *(v82 + 136) + 40 * v101;
        *v102 = 146;
        *(v102 + 4) = v100;
        *(v102 + 8) = 0u;
        *(v102 + 24) = 0u;
      }

      v103 = *(v84 + 104) + 1;
      v104 = *(v82 + 144);
      if (*(v82 + 148) > v104)
      {
        *(v82 + 144) = v104 + 1;
        v85 = *(v82 + 136) + 40 * v104;
        *v85 = 71;
        *(v85 + 8) = v103;
        *(v85 + 12) = 0;
        *(v85 + 28) = 0;
        *(v85 + 20) = 0;
        *(v85 + 36) = 0;
      }

      else
      {
        sub_18194C8AC(v82, 71, 0, v103, 0);
      }
    }

LABEL_93:
    v84 = *(v84 + 64);
  }

  while (v84);
  v105 = *(v241 + 60);
  *(v241 + 60) = v105 + v83;
  LODWORD(v246) = v105 + 1;
  if (v231)
  {
    if (*(v241 + 16))
    {
      v106 = *(v10 + 40);
      v107 = sub_1818B8080(v241, v106, v231);
      if (v107 != v231)
      {
        v108 = v107;
        if (!v106)
        {
          goto LABEL_137;
        }

        while (1)
        {
          v109 = *(v106 + 1);
          if ((v109 & 0x82000) == 0)
          {
            break;
          }

          if ((v109 & 0x80000) != 0)
          {
            v106 = *(*(v106 + 4) + 8);
            if (!v106)
            {
              goto LABEL_137;
            }
          }

          else
          {
            if (*v106 != 114)
            {
              break;
            }

            v106 = *(v106 + 2);
            if (!v106)
            {
              goto LABEL_137;
            }
          }
        }

        if ((v109 & 0x400000) != 0 || *v106 == 176)
        {
          v110 = 80;
        }

        else
        {
LABEL_137:
          v110 = 81;
        }

        v111 = *(v241 + 16);
        v112 = *(v111 + 144);
        if (*(v111 + 148) <= v112)
        {
          sub_18194C8AC(v111, v110, v108, v231, 0);
        }

        else
        {
          *(v111 + 144) = v112 + 1;
          v113 = *(v111 + 136) + 40 * v112;
          *v113 = v110;
          *(v113 + 2) = 0;
          *(v113 + 4) = v108;
          *(v113 + 8) = v231;
          *(v113 + 1) = 0;
          *(v113 + 12) = 0;
          *(v113 + 28) = 0;
          *(v113 + 20) = 0;
          *(v113 + 36) = 0;
        }
      }
    }

    if (*(v10 + 32) == 90)
    {
      v114 = 3;
    }

    else
    {
      v114 = 0;
    }

    sub_18197B790(v241, v231, v114);
  }

  if (v230)
  {
    if (*(v241 + 16))
    {
      v115 = *(v10 + 48);
      v116 = sub_1818B8080(v241, v115, v230);
      if (v116 != v230)
      {
        v117 = v116;
        if (!v115)
        {
          goto LABEL_159;
        }

        while (1)
        {
          v118 = *(v115 + 1);
          if ((v118 & 0x82000) == 0)
          {
            break;
          }

          if ((v118 & 0x80000) != 0)
          {
            v115 = *(*(v115 + 4) + 8);
            if (!v115)
            {
              goto LABEL_159;
            }
          }

          else
          {
            if (*v115 != 114)
            {
              break;
            }

            v115 = *(v115 + 2);
            if (!v115)
            {
              goto LABEL_159;
            }
          }
        }

        if ((v118 & 0x400000) != 0 || *v115 == 176)
        {
          v119 = 80;
        }

        else
        {
LABEL_159:
          v119 = 81;
        }

        v120 = *(v241 + 16);
        v121 = *(v120 + 144);
        if (*(v120 + 148) <= v121)
        {
          sub_18194C8AC(v120, v119, v117, v230, 0);
        }

        else
        {
          *(v120 + 144) = v121 + 1;
          v122 = *(v120 + 136) + 40 * v121;
          *v122 = v119;
          *(v122 + 2) = 0;
          *(v122 + 4) = v117;
          *(v122 + 8) = v230;
          *(v122 + 1) = 0;
          *(v122 + 12) = 0;
          *(v122 + 28) = 0;
          *(v122 + 20) = 0;
          *(v122 + 36) = 0;
        }
      }
    }

    if (*(v10 + 32) == 90)
    {
      v123 = 4;
    }

    else
    {
      v123 = 1;
    }

    sub_18197B790(v241, v230, v123);
  }

  v124 = v236;
  if (*(v10 + 32) == 90)
  {
LABEL_189:
    v125 = *(v10 + 33);
  }

  else
  {
    v125 = *(v10 + 33);
    if (v231 && v125 == *(v10 + 34))
    {
      if (v125 == 87)
      {
        v126 = 58;
      }

      else
      {
        v126 = 56;
      }

      v127 = *(v11 + 144);
      if (*(v11 + 148) <= v127)
      {
        v127 = sub_18194C8AC(v11, v126, v231, 0, v230);
      }

      else
      {
        *(v11 + 144) = v127 + 1;
        v128 = *(v11 + 136) + 40 * v127;
        *v128 = v126;
        *(v128 + 2) = 0;
        *(v128 + 4) = v231;
        *(v128 + 8) = 0;
        *(v128 + 12) = v230;
        *(v128 + 1) = 0;
        *(v128 + 24) = 0;
        *(v128 + 32) = 0;
        *(v128 + 16) = 0;
      }

      sub_18197BB58(v243, 0);
      v129 = *(v11 + 144);
      if (*(v11 + 148) <= v129)
      {
        sub_18194C8AC(v11, 36, v242, 0, 0);
      }

      else
      {
        *(v11 + 144) = v129 + 1;
        v130 = *(v11 + 136) + 40 * v129;
        *v130 = 36;
        *(v130 + 4) = v242;
        *(v130 + 8) = 0u;
        *(v130 + 24) = 0u;
      }

      sub_18197BEE0(v243);
      v131 = *(v11 + 144);
      if (*(v11 + 148) <= v131)
      {
        sub_18194C8AC(v11, 146, v242, 0, 0);
      }

      else
      {
        *(v11 + 144) = v131 + 1;
        v132 = *(v11 + 136) + 40 * v131;
        *v132 = 146;
        *(v132 + 4) = v242;
        *(v132 + 8) = 0u;
        *(v132 + 24) = 0u;
      }

      v133 = *(v11 + 144);
      if (*(v11 + 148) <= v133)
      {
        sub_18194C8AC(v11, 9, 0, v237, 0);
      }

      else
      {
        *(v11 + 144) = v133 + 1;
        v134 = *(v11 + 136) + 40 * v133;
        *v134 = 9;
        *(v134 + 8) = v237;
        *(v134 + 12) = 0;
        *(v134 + 28) = 0;
        *(v134 + 20) = 0;
        *(v134 + 36) = 0;
      }

      if (*(*v11 + 103))
      {
        v135 = &byte_1EA831A58;
      }

      else
      {
        v135 = (*(v11 + 136) + 40 * v127);
      }

      v124 = v236;
      *(v135 + 2) = *(v11 + 144);
      goto LABEL_189;
    }
  }

  if (v125 == 87 && v230 && *(v10 + 32) != 90)
  {
    v136 = *(v11 + 144);
    if (*(v11 + 148) <= v136)
    {
      sub_18194C8AC(v11, 108, v231, v230, v231);
    }

    else
    {
      *(v11 + 144) = v136 + 1;
      v137 = *(v11 + 136) + 40 * v136;
      *v137 = 108;
      *(v137 + 4) = v231;
      *(v137 + 8) = v230;
      *(v137 + 12) = v231;
      *(v137 + 24) = 0;
      *(v137 + 32) = 0;
      *(v137 + 16) = 0;
    }
  }

  if (*(v10 + 33) != 91)
  {
    v138 = *(v11 + 144);
    if (*(v11 + 148) <= v138)
    {
      sub_18194C8AC(v11, 36, v228, 0, 0);
    }

    else
    {
      *(v11 + 144) = v138 + 1;
      v139 = *(v11 + 136) + 40 * v138;
      *v139 = 36;
      *(v139 + 4) = v228;
      *(v139 + 8) = 0u;
      *(v139 + 24) = 0u;
    }
  }

  v140 = *(v11 + 144);
  if (*(v11 + 148) <= v140)
  {
    sub_18194C8AC(v11, 36, v242, 0, 0);
  }

  else
  {
    *(v11 + 144) = v140 + 1;
    v141 = *(v11 + 136) + 40 * v140;
    *v141 = 36;
    *(v141 + 4) = v242;
    *(v141 + 8) = 0u;
    *(v141 + 24) = 0u;
  }

  v142 = *(v11 + 144);
  if (*(v11 + 148) <= v142)
  {
    sub_18194C8AC(v11, 36, v235, 0, 0);
    if (!v124)
    {
      goto LABEL_220;
    }
  }

  else
  {
    *(v11 + 144) = v142 + 1;
    v143 = *(v11 + 136) + 40 * v142;
    *v143 = 36;
    *(v143 + 4) = v235;
    *(v143 + 8) = 0u;
    *(v143 + 24) = 0u;
    if (!v124)
    {
      goto LABEL_220;
    }
  }

  if (v240)
  {
    v144 = *v240 - 1;
    v145 = *(v11 + 144);
    if (*(v11 + 148) <= v145)
    {
      sub_18194C8AC(v11, 80, v234, v124, v144);
    }

    else
    {
      *(v11 + 144) = v145 + 1;
      v146 = *(v11 + 136) + 40 * v145;
      *v146 = 80;
      *(v146 + 4) = v234;
      *(v146 + 8) = v124;
      *(v146 + 12) = v144;
      *(v146 + 24) = 0;
      *(v146 + 32) = 0;
      *(v146 + 16) = 0;
    }

    v147 = *v240 - 1;
    v148 = *(v11 + 144);
    if (*(v11 + 148) <= v148)
    {
      sub_18194C8AC(v11, 80, v124, v226, v147);
    }

    else
    {
      *(v11 + 144) = v148 + 1;
      v149 = *(v11 + 136) + 40 * v148;
      *v149 = 80;
      *(v149 + 4) = v124;
      *(v149 + 8) = v226;
      *(v149 + 12) = v147;
      *(v149 + 24) = 0;
      *(v149 + 32) = 0;
      *(v149 + 16) = 0;
    }

    v150 = *v240 - 1;
    v151 = *(v11 + 144);
    if (*(v11 + 148) <= v151)
    {
      sub_18194C8AC(v11, 80, v124, SHIDWORD(v226), v150);
    }

    else
    {
      *(v11 + 144) = v151 + 1;
      v152 = *(v11 + 136) + 40 * v151;
      *v152 = 80;
      *(v152 + 4) = v124;
      *(v152 + 8) = HIDWORD(v226);
      *(v152 + 12) = v150;
      *(v152 + 24) = 0;
      *(v152 + 32) = 0;
      *(v152 + 16) = 0;
    }

    v153 = *v240 - 1;
    v154 = *(v11 + 144);
    if (*(v11 + 148) <= v154)
    {
      sub_18194C8AC(v11, 80, v124, v227, v153);
    }

    else
    {
      *(v11 + 144) = v154 + 1;
      v155 = *(v11 + 136) + 40 * v154;
      *v155 = 80;
      *(v155 + 4) = v124;
      *(v155 + 8) = v227;
      *(v155 + 12) = v153;
      *(v155 + 24) = 0;
      *(v155 + 32) = 0;
      *(v155 + 16) = 0;
    }
  }

LABEL_220:
  v156 = *(v11 + 144);
  if (*(v11 + 148) <= v156)
  {
    sub_18194C8AC(v11, 9, 0, v237, 0);
  }

  else
  {
    *(v11 + 144) = v156 + 1;
    v157 = *(v11 + 136) + 40 * v156;
    *v157 = 9;
    *(v157 + 8) = v237;
    *(v157 + 12) = 0;
    *(v157 + 28) = 0;
    *(v157 + 20) = 0;
    *(v157 + 36) = 0;
  }

  if (*(*v11 + 103))
  {
    dword_1EA831A60 = *(v11 + 144);
    if (v124)
    {
      goto LABEL_225;
    }
  }

  else
  {
    *(*(v11 + 136) + 40 * v239 + 8) = *(v11 + 144);
    if (v124)
    {
LABEL_225:
      sub_18197D078(v241, v240, v234, v124, v237);
    }
  }

  v158 = *(v10 + 33);
  if (v158 == 87)
  {
    sub_18197D2A4(v243, 3, 0, 0);
    if (*(v10 + 34) == 91)
    {
      goto LABEL_246;
    }

    if (*(v10 + 32) == 90)
    {
      v159 = *(v241 + 72);
      *(v241 + 72) = v159 - 1;
      v160 = *(v11 + 144);
      sub_18197DC1C(v243, 58, v242, v230, v235, v159 - 1);
      sub_18197D2A4(v243, 2, v231, 0);
      sub_18197D2A4(v243, 1, 0, 0);
      v161 = *(v11 + 144);
      if (*(v11 + 148) <= v161)
      {
        sub_18194C8AC(v11, 9, 0, v160, 0);
      }

      else
      {
        *(v11 + 144) = v161 + 1;
        v162 = *(v11 + 136) + 40 * v161;
        *v162 = 9;
        *(v162 + 8) = v160;
        *(v162 + 12) = 0;
        *(v162 + 28) = 0;
        *(v162 + 20) = 0;
        *(v162 + 36) = 0;
      }

      v196 = *(v11 + 24);
      v197 = -v159;
      if (*(v196 + 72) + *(v196 + 76) < 0)
      {
        sub_18195CB84(v196, v11, v197);
      }

      else
      {
        *(*(v196 + 80) + 4 * v197) = *(v11 + 144);
      }

      goto LABEL_246;
    }

    v169 = v230;
LABEL_244:
    sub_18197D2A4(v243, 1, v169, 0);
    v164 = 2;
    v165 = v231;
LABEL_245:
    sub_18197D2A4(v243, v164, v165, 0);
    goto LABEL_246;
  }

  if (*(v10 + 34) == 89)
  {
    if (v158 == 89)
    {
      v163 = *(v10 + 32);
      sub_18197D2A4(v243, 3, v230, 0);
      if (v163 == 90)
      {
        sub_18197D2A4(v243, 2, v231, 0);
        v164 = 1;
        v165 = 0;
        goto LABEL_245;
      }
    }

    else
    {
      sub_18197D2A4(v243, 3, v230, 0);
    }

    v169 = 0;
    goto LABEL_244;
  }

  sub_18197D2A4(v243, 3, 0, 0);
  if (*(v10 + 34) != 91)
  {
    if (*(v10 + 32) == 90)
    {
      v166 = *(v11 + 144);
      if (v230)
      {
        v167 = *(v241 + 72);
        *(v241 + 72) = v167 - 1;
        sub_18197DC1C(v243, 58, v242, v230, v235, v167 - 1);
        v168 = -v167;
      }

      else
      {
        v168 = -1;
      }

      sub_18197D2A4(v243, 1, 0, 0);
      sub_18197D2A4(v243, 2, v231, 0);
      if (v230)
      {
        v220 = *(v11 + 144);
        if (*(v11 + 148) <= v220)
        {
          sub_18194C8AC(v11, 9, 0, v166, 0);
        }

        else
        {
          *(v11 + 144) = v220 + 1;
          v221 = *(v11 + 136) + 40 * v220;
          *v221 = 9;
          *(v221 + 8) = v166;
          *(v221 + 12) = 0;
          *(v221 + 28) = 0;
          *(v221 + 20) = 0;
          *(v221 + 36) = 0;
        }

        v223 = *(v11 + 24);
        if (*(v223 + 72) + *(v223 + 76) < 0)
        {
          sub_18195CB84(v223, v11, v168);
        }

        else
        {
          *(*(v223 + 80) + 4 * v168) = *(v11 + 144);
        }
      }
    }

    else
    {
      if (v230)
      {
        v198 = *(v11 + 144);
        if (*(v11 + 148) <= v198)
        {
          v198 = sub_18194C8AC(v11, 50, v230, 0, 1);
        }

        else
        {
          *(v11 + 144) = v198 + 1;
          v199 = *(v11 + 136) + 40 * v198;
          *v199 = 50;
          *(v199 + 4) = v230;
          *(v199 + 8) = 0x100000000;
          *(v199 + 24) = 0;
          *(v199 + 32) = 0;
          *(v199 + 16) = 0;
        }
      }

      else
      {
        v198 = 0;
      }

      sub_18197D2A4(v243, 1, 0, 0);
      sub_18197D2A4(v243, 2, v231, 0);
      if (v230)
      {
        if (*(*v11 + 103))
        {
          v222 = &byte_1EA831A58;
        }

        else
        {
          v222 = (*(v11 + 136) + 40 * v198);
        }

        *(v222 + 2) = *(v11 + 144);
      }
    }
  }

LABEL_246:
  v170 = *(v11 + 24);
  v171 = -v232;
  if (*(v170 + 72) + *(v170 + 76) < 0)
  {
    sub_18195CB84(v170, v11, v171);
  }

  else
  {
    *(*(v170 + 80) + 4 * v171) = *(v11 + 144);
  }

  sub_1818B9E4C(v233);
  v172 = *(v11 + 144);
  if (*(v10 + 16))
  {
    v173 = v242 + 1;
    if (*(v11 + 148) <= v172)
    {
      v175 = sub_18194C8AC(v11, 71, 0, v60, 0);
    }

    else
    {
      *(v11 + 144) = v172 + 1;
      v174 = *(v11 + 136) + 40 * v172;
      *v174 = 71;
      *(v174 + 8) = v60;
      *(v174 + 12) = 0;
      *(v174 + 28) = 0;
      *(v174 + 20) = 0;
      *(v174 + 36) = 0;
      v175 = v172;
    }

    v172 = *(v11 + 144);
    v176 = v60;
    if (*(*v11 + 103))
    {
      v178 = &byte_1EA831A58;
    }

    else
    {
      v178 = (*(v11 + 136) + 40 * v225);
    }

    *(v178 + 2) = v172;
    v177 = v175;
  }

  else
  {
    v176 = v60;
    v177 = 0;
    v173 = v242 + 1;
  }

  DWORD2(v246) = 0;
  if (*(v11 + 148) <= v172)
  {
    v172 = sub_18194C8AC(v11, 36, v173, 0, 0);
  }

  else
  {
    *(v11 + 144) = v172 + 1;
    v179 = *(v11 + 136) + 40 * v172;
    *v179 = 36;
    *(v179 + 4) = v173;
    *(v179 + 8) = 0u;
    *(v179 + 24) = 0u;
  }

  v180 = *(v10 + 33);
  if (*(v10 + 34) == 89)
  {
    if (v180 == 89)
    {
      v181 = *(v10 + 32);
      sub_18197D2A4(v243, 3, v230, 0);
      if (v181 == 90)
      {
        v182 = 2;
        v183 = v231;
        goto LABEL_269;
      }
    }

    else
    {
      v182 = 3;
      v183 = v230;
LABEL_269:
      sub_18197D2A4(v243, v182, v183, 0);
    }

    result = sub_18197D2A4(v243, 1, 0, 0);
    v188 = *(v11 + 144);
    if (*(*v11 + 103))
    {
LABEL_271:
      v189 = &byte_1EA831A58;
      goto LABEL_304;
    }
  }

  else
  {
    sub_18197D2A4(v243, 3, 0, 0);
    if (v180 == 87)
    {
      if (*(v10 + 32) == 90)
      {
        v184 = *(v11 + 144);
        v185 = sub_18197D2A4(v243, 2, v231, 1);
        v186 = sub_18197D2A4(v243, 1, 0, 1);
      }

      else
      {
        v184 = *(v11 + 144);
        if (*(v10 + 34) == 91)
        {
          v186 = sub_18197D2A4(v243, 1, v231, 1);
          v194 = 0;
        }

        else
        {
          v186 = sub_18197D2A4(v243, 1, v230, 1);
          v194 = v231;
        }

        v185 = sub_18197D2A4(v243, 2, v194, 1);
      }

      v200 = *(v11 + 144);
      if (*(v11 + 148) <= v200)
      {
        sub_18194C8AC(v11, 9, 0, v184, 0);
      }

      else
      {
        *(v11 + 144) = v200 + 1;
        v201 = *(v11 + 136) + 40 * v200;
        *v201 = 9;
        *(v201 + 8) = v184;
        *(v201 + 12) = 0;
        *(v201 + 28) = 0;
        *(v201 + 20) = 0;
        *(v201 + 36) = 0;
      }

      v202 = *(v11 + 144);
      v203 = &byte_1EA831A58;
      if (!*(*v11 + 103))
      {
        v203 = (*(v11 + 136) + 40 * v185);
      }

      *(v203 + 2) = v202;
      result = sub_18197D2A4(v243, 1, 0, 1);
      v204 = result;
      v205 = *(v11 + 144);
      if (*(v11 + 148) <= v205)
      {
        result = sub_18194C8AC(v11, 9, 0, v202, 0);
      }

      else
      {
        *(v11 + 144) = v205 + 1;
        v206 = *(v11 + 136) + 40 * v205;
        *v206 = 9;
        *(v206 + 8) = v202;
        *(v206 + 12) = 0;
        *(v206 + 28) = 0;
        *(v206 + 20) = 0;
        *(v206 + 36) = 0;
      }

      v188 = *(v11 + 144);
      v207 = *(*v11 + 103);
      if (*(*v11 + 103))
      {
        dword_1EA831A60 = *(v11 + 144);
        if (v207)
        {
          goto LABEL_271;
        }
      }

      else
      {
        v208 = *(v11 + 136);
        *(v208 + 40 * v186 + 8) = v188;
        *(v208 + 40 * v204 + 8) = v188;
        if (v207)
        {
          goto LABEL_271;
        }
      }
    }

    else
    {
      v190 = *(v11 + 144);
      v191 = sub_18197D2A4(v243, 1, 0, 1);
      result = sub_18197D2A4(v243, 2, v231, 0);
      v192 = *(v11 + 144);
      if (*(v11 + 148) <= v192)
      {
        result = sub_18194C8AC(v11, 9, 0, v190, 0);
      }

      else
      {
        *(v11 + 144) = v192 + 1;
        v193 = *(v11 + 136) + 40 * v192;
        *v193 = 9;
        *(v193 + 8) = v190;
        *(v193 + 12) = 0;
        *(v193 + 28) = 0;
        *(v193 + 20) = 0;
        *(v193 + 36) = 0;
      }

      v188 = *(v11 + 144);
      v195 = *(*v11 + 103);
      if (*(*v11 + 103))
      {
        dword_1EA831A60 = *(v11 + 144);
        if (v195)
        {
          goto LABEL_271;
        }
      }

      else
      {
        *(*(v11 + 136) + 40 * v191 + 8) = v188;
        if (v195)
        {
          goto LABEL_271;
        }
      }
    }
  }

  v189 = (*(v11 + 136) + 40 * v172);
LABEL_304:
  *(v189 + 2) = v188;
  v209 = *&v247[4];
  if (*(v11 + 148) <= v188)
  {
    result = sub_18194C8AC(v11, 146, *&v247[4], 0, 0);
    if (*(v10 + 16))
    {
      goto LABEL_308;
    }
  }

  else
  {
    *(v11 + 144) = v188 + 1;
    v210 = *(v11 + 136) + 40 * v188;
    *v210 = 146;
    *(v210 + 4) = v209;
    *(v210 + 8) = 0u;
    *(v210 + 24) = 0u;
    if (!*(v10 + 16))
    {
      return result;
    }

LABEL_308:
    v211 = *(v10 + 132);
    if (v211)
    {
      v212 = *(v11 + 144);
      if (*(v11 + 148) <= v212)
      {
        result = sub_18194C8AC(v11, 71, 1, v211, 0);
      }

      else
      {
        *(v11 + 144) = v212 + 1;
        v213 = *(v11 + 136) + 40 * v212;
        *v213 = 0x100000047;
        *(v213 + 8) = v211;
        *(v213 + 12) = 0;
        *(v213 + 28) = 0;
        *(v213 + 20) = 0;
        *(v213 + 36) = 0;
      }

      v214 = *(v10 + 136);
      v215 = *(v11 + 144);
      if (*(v11 + 148) <= v215)
      {
        result = sub_18194C8AC(v11, 71, 0, v214, 0);
      }

      else
      {
        *(v11 + 144) = v215 + 1;
        v216 = *(v11 + 136) + 40 * v215;
        *v216 = 71;
        *(v216 + 8) = v214;
        *(v216 + 12) = 0;
        *(v216 + 28) = 0;
        *(v216 + 20) = 0;
        *(v216 + 36) = 0;
      }
    }

    v217 = *(v11 + 144);
    if (*(*v11 + 103))
    {
      v218 = &byte_1EA831A58;
    }

    else
    {
      v218 = (*(v11 + 136) + 40 * v177);
    }

    *(v218 + 1) = v217;
    if (*(v11 + 148) <= v217)
    {

      return sub_18194C8AC(v11, 67, v176, 0, 0);
    }

    else
    {
      *(v11 + 144) = v217 + 1;
      v219 = *(v11 + 136) + 40 * v217;
      *v219 = 67;
      *(v219 + 4) = v176;
      *(v219 + 8) = 0u;
      *(v219 + 24) = 0u;
    }
  }

  return result;
}

void *sub_1819679DC(void *a1, void *a2)
{
  v4 = a2[4];
  if (v4)
  {
    sub_181929C84(a1, v4);
  }

  v5 = a2[6];
  if (v5)
  {
    sub_181929C84(a1, v5);
  }

  return sub_181929C84(a1, a2);
}

uint64_t sub_181967A38(uint64_t result, int *a2)
{
  if (a2 && *a2 >= 1)
  {
    v3 = result;
    v4 = 0;
    v5 = 2;
    do
    {
      result = sub_181967AA0(v3, *&a2[v5]);
      ++v4;
      v5 += 6;
    }

    while (v4 < *a2);
  }

  return result;
}

uint64_t sub_181967AA0(uint64_t a1, uint64_t a2)
{
  v3[4] = 0;
  v3[5] = a1;
  v3[0] = 0;
  v3[1] = sub_1818EAE9C;
  v3[2] = sub_181968AFC;
  v3[3] = sub_181968B10;
  return sub_1818B1590(v3, a2);
}

uint64_t sub_181967AF8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a2 + 32);
  if (!v4)
  {
    return 0;
  }

  if (*v4 != 1 || (*(a2 + 7) & 1) != 0 || (*(a1 + 98) & 1) != 0)
  {
    return 0;
  }

  v5 = *(a2 + 8);
  v6 = "min";
  for (i = v5; *i != *v6; ++i)
  {
    if (byte_181A20298[*i] != byte_181A20298[*v6])
    {
      for (j = "max"; ; ++j)
      {
        if (*v5 == *j)
        {
          if (!*v5)
          {
            v9 = a3;
            v10 = 1;
            v11 = 2;
            goto LABEL_35;
          }
        }

        else if (byte_181A20298[*v5] != byte_181A20298[*j])
        {
          return 0;
        }

        ++v5;
      }
    }

LABEL_7:
    ++v6;
  }

  if (*i)
  {
    goto LABEL_7;
  }

  for (k = (v4 + 2); ; k = (v14 + 16))
  {
    v14 = *k;
    v15 = *v14;
    if ((v15 - 173) >= 2)
    {
      break;
    }
  }

  if (v15 == 176)
  {
    v15 = v14[2];
  }

  if ((v15 - 154) < 3 || v15 == 118 || v15 == 168 && (v14[6] & 0x20) == 0 && (v16 = *(v14 + 9)) != 0 && ((v17 = *(v14 + 12), (v17 & 0x80000000) != 0) || (v18 = *(v16 + 8)) == 0 || v17 >= *(v16 + 54) || (*(v18 + 16 * v17 + 8) & 0xF) != 0))
  {
    v9 = a3;
    v10 = 0;
  }

  else
  {
    v9 = a3;
    v10 = 2;
  }

  v11 = 1;
LABEL_35:
  v19 = sub_1818C83A0(a1, v4, 0);
  *v9 = v19;
  if (v19)
  {
    *(v19 + 24) = v10;
  }

  return v11;
}

uint64_t sub_181967C9C(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 40) | 0x20000;
  *(a2 + 40) = v3;
  if (*(result + 56) >= 1)
  {
    v4 = result;
    v5 = 0;
    do
    {
      v6 = *(*(v4 + 48) + 32 * v5);
      v7 = *(v6 + 32);
      if (v7 && *v7 >= 1)
      {
        v8 = 0;
        v9 = 2;
        do
        {
          v10 = *&v7[v9];
          v21 = 0;
          v22 = a2;
          v17 = 0;
          v18 = sub_1818EAE9C;
          v19 = sub_181968AFC;
          v20 = sub_181968B10;
          if (v10)
          {
            result = sub_181959BA0(&v17, v10);
          }

          ++v8;
          v9 += 6;
        }

        while (v8 < *v7);
      }

      v11 = *(v6 + 16);
      if (v11)
      {
        v12 = *(v11 + 32);
        if (v12)
        {
          if (*v12 >= 1)
          {
            v13 = 0;
            v14 = 2;
            do
            {
              v15 = *&v12[v14];
              v21 = 0;
              v22 = a2;
              v17 = 0;
              v18 = sub_1818EAE9C;
              v19 = sub_181968AFC;
              v20 = sub_181968B10;
              if (v15)
              {
                result = sub_181959BA0(&v17, v15);
              }

              ++v13;
              v14 += 6;
            }

            while (v13 < *v12);
          }
        }
      }

      if (*(v6 + 7))
      {
        v16 = *(*(v6 + 72) + 72);
        v21 = 0;
        v22 = a2;
        v17 = 0;
        v18 = sub_1818EAE9C;
        v19 = sub_181968AFC;
        v20 = sub_181968B10;
        if (v16)
        {
          result = sub_181959BA0(&v17, v16);
        }
      }

      ++v5;
    }

    while (v5 < *(v4 + 56));
    v3 = *(a2 + 40);
  }

  *(a2 + 40) = v3 & 0xFFFDFFFF;
  return result;
}

uint64_t sub_181967E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 44);
  *(a2 + 40) = v3;
  if (*(a2 + 4))
  {
    v4 = **(a1 + 56);
    if (v3 >= 1)
    {
      v5 = v4 - 1;
      v6 = *(a2 + 32);
      if (v3 >= 9)
      {
        v8 = v3 & 7;
        if ((v3 & 7) == 0)
        {
          v8 = 8;
        }

        v7 = v3 - v8;
        v9 = vdupq_n_s32(v5);
        v10 = (v6 + 152);
        v11 = v7;
        v12 = v9;
        do
        {
          v13.i32[0] = *(v10 - 32);
          v13.i32[1] = *(v10 - 24);
          v13.i32[2] = *(v10 - 16);
          v13.i32[3] = *(v10 - 8);
          v14.i32[0] = *v10;
          v14.i32[1] = v10[8];
          v14.i32[2] = v10[16];
          v14.i32[3] = v10[24];
          v9 = vmaxq_s32(v13, v9);
          v12 = vmaxq_s32(v14, v12);
          v10 += 64;
          v11 -= 8;
        }

        while (v11);
        v5 = vmaxvq_s32(vmaxq_s32(v9, v12));
      }

      else
      {
        v7 = 0;
      }

      v15 = (v6 + 32 * v7 + 24);
      v16 = v3 - v7;
      do
      {
        v18 = *v15;
        v15 += 8;
        v17 = v18;
        if (v18 > v5)
        {
          v5 = v17;
        }

        --v16;
      }

      while (v16);
      v4 = v5 + 1;
    }

    *(a2 + 4) = v4;
  }

  return sub_181967C9C(a2, a3);
}

uint64_t sub_181967F64(uint64_t result)
{
  v7 = 0u;
  v8 = 0u;
  v6[0] = 0;
  v6[1] = sub_18197FD20;
  v1 = *(result + 56);
  if (v1 >= 1)
  {
    v2 = result;
    v3 = 0;
    for (i = 0; i < v1; ++i)
    {
      v5 = *(*(v2 + 48) + v3);
      if (v5)
      {
        result = sub_181959BA0(v6, v5);
        v1 = *(v2 + 56);
      }

      v3 += 32;
    }
  }

  return result;
}

void *sub_181967FF4(void *result, uint64_t a2)
{
  if (*(a2 + 56) >= 1)
  {
    v2 = a2;
    v3 = result;
    v4 = 0;
    v5 = result[2];
    v57 = result + 23;
    for (i = *(a2 + 48); ; i += 8)
    {
      if (*(v3 + 13))
      {
        return result;
      }

      v8 = *i;
      v9 = *(*i + 32);
      v10 = i[6];
      if ((v10 & 0x80000000) == 0)
      {
        break;
      }

LABEL_68:
      if (v9)
      {
        v51 = *v9;
      }

      else
      {
        v51 = 0;
      }

      v52 = v2[4] + v4 + v2[10];
      v53 = *(v5 + 36);
      if (*(v5 + 37) <= v53)
      {
        sub_18194C8AC(v5, 165, v52, v51, 0);
      }

      else
      {
        *(v5 + 36) = v53 + 1;
        v54 = &v5[17][5 * v53];
        *v54 = 165;
        *(v54 + 4) = v52;
        *(v54 + 8) = v51;
        *(v54 + 12) = 0;
        *(v54 + 28) = 0;
        *(v54 + 20) = 0;
        *(v54 + 36) = 0;
      }

      v55 = *(i + 1);
      result = *v5;
      if (*(*v5 + 103))
      {
        if ((*(v55 + 4) & 0x10) != 0)
        {
          result = sub_181939EC8(result, v55);
        }
      }

      else
      {
        v7 = &v5[17][5 * *(v5 + 36)];
        *(v7 - 39) = -7;
        *(v7 - 24) = v55;
      }

      if (++v4 >= v2[14])
      {
        return result;
      }
    }

    v11 = *v9;
    v59 = *(*i + 32);
    if (*v9 == 1)
    {
      if (*(v3 + 31))
      {
        v12 = *(v3 + 31) - 1;
        *(v3 + 31) = v12;
        v60 = *(v57 + v12);
        if (!*(i + 28))
        {
          goto LABEL_15;
        }

LABEL_18:
        v19 = **(*(v8 + 16) + 32);
        if (*(i + 29))
        {
          v18 = v19;
        }

        else
        {
          v18 = v19 + 1;
        }

LABEL_21:
        v20 = *(v5 + 36);
        if (*(v5 + 37) <= v20)
        {
          v58 = sub_18194C8AC(v5, 36, v10, 0, 0);
          if (v11 < 1)
          {
            goto LABEL_30;
          }
        }

        else
        {
          *(v5 + 36) = v20 + 1;
          v58 = v20;
          v21 = &v5[17][5 * v20];
          *v21 = 36;
          *(v21 + 4) = v10;
          *(v21 + 8) = 0u;
          *(v21 + 24) = 0u;
          if (v11 < 1)
          {
            goto LABEL_30;
          }
        }

        v22 = v11;
        do
        {
          while (1)
          {
            v24 = i[6];
            v25 = v18 - 1 + v22;
            v26 = v60 - 1 + v22;
            v27 = *(v5 + 36);
            if (*(v5 + 37) <= v27)
            {
              break;
            }

            *(v5 + 36) = v27 + 1;
            v23 = &v5[17][5 * v27];
            *v23 = 94;
            *(v23 + 4) = v24;
            *(v23 + 8) = v25;
            *(v23 + 12) = v26;
            *(v23 + 24) = 0;
            *(v23 + 32) = 0;
            *(v23 + 16) = 0;
            v14 = __OFSUB__(v22--, 1);
            if ((v22 < 0) ^ v14 | (v22 == 0))
            {
              goto LABEL_30;
            }
          }

          sub_18194C8AC(v5, 94, v24, v25, v26);
          v14 = __OFSUB__(v22--, 1);
        }

        while (!((v22 < 0) ^ v14 | (v22 == 0)));
LABEL_30:
        if (!*(i + 30))
        {
LABEL_48:
          v2 = a2;
          v40 = *(a2 + 16) + v4 + *(a2 + 40);
          v41 = *(v5 + 36);
          if (*(v5 + 37) <= v41)
          {
            sub_18194C8AC(v5, 162, 0, v60, v40);
          }

          else
          {
            *(v5 + 36) = v41 + 1;
            v42 = &v5[17][5 * v41];
            *v42 = 162;
            *(v42 + 8) = v60;
            *(v42 + 12) = v40;
            *(v42 + 24) = 0;
            *(v42 + 32) = 0;
            *(v42 + 16) = 0;
          }

          v43 = *(i + 1);
          if (*(*v5 + 103))
          {
            if ((*(v43 + 4) & 0x10) != 0)
            {
              sub_181939EC8(*v5, v43);
            }
          }

          else
          {
            v44 = &v5[17][5 * *(v5 + 36)];
            *(v44 - 39) = -7;
            *(v44 - 24) = v43;
          }

          v45 = *(v5 + 36);
          if (v45 >= 1)
          {
            *(&v5[17][5 * v45 - 4] - 3) = v11;
          }

          v46 = i[6];
          v47 = v58 + 1;
          if (*(v5 + 37) <= v45)
          {
            sub_18194C8AC(v5, 39, v46, v47, 0);
          }

          else
          {
            *(v5 + 36) = v45 + 1;
            v48 = &v5[17][5 * v45];
            *v48 = 39;
            *(v48 + 4) = v46;
            *(v48 + 8) = v47;
            *(v48 + 12) = 0;
            *(v48 + 28) = 0;
            *(v48 + 20) = 0;
            *(v48 + 36) = 0;
          }

          v49 = &byte_1EA831A58;
          if (!*(*v5 + 103))
          {
            v49 = &v5[17][5 * v58];
          }

          *(v49 + 2) = *(v5 + 36);
          if (v11 == 1)
          {
            v9 = v59;
            if (v60)
            {
              v50 = *(v3 + 31);
              if (v50 <= 7)
              {
                *(v3 + 31) = v50 + 1;
                *(v57 + v50) = v60;
              }
            }
          }

          else
          {
            v9 = v59;
            if (*(v3 + 11) < v11)
            {
              *(v3 + 11) = v11;
              *(v3 + 12) = v60;
            }
          }

          goto LABEL_68;
        }

        if (*(v3 + 31))
        {
          v28 = *(v3 + 31) - 1;
          *(v3 + 31) = v28;
          v29 = *(v57 + v28);
          if (*(i + 28))
          {
            goto LABEL_33;
          }
        }

        else
        {
          v29 = *(v3 + 15) + 1;
          *(v3 + 15) = v29;
          if (*(i + 28))
          {
LABEL_33:
            v30 = 0;
            if (v11 < 1)
            {
              goto LABEL_45;
            }

LABEL_37:
            v31 = v30 + v18 + 2 * v11 - 1;
            v32 = v11;
            do
            {
              v34 = i[6];
              v35 = *(v5 + 36);
              if (*(v5 + 37) <= v35)
              {
                sub_18194C8AC(v5, 94, v34, v31, v29);
              }

              else
              {
                *(v5 + 36) = v35 + 1;
                v36 = &v5[17][5 * v35];
                *v36 = 94;
                *(v36 + 4) = v34;
                *(v36 + 8) = v31;
                *(v36 + 12) = v29;
                *(v36 + 24) = 0;
                *(v36 + 32) = 0;
                *(v36 + 16) = 0;
              }

              v37 = v60 - 1 + v32;
              v38 = *(v5 + 36);
              if (*(v5 + 37) > v38)
              {
                *(v5 + 36) = v38 + 1;
                v33 = &v5[17][5 * v38];
                *v33 = 182;
                *(v33 + 4) = v29;
                *(v33 + 8) = v37;
                *(v33 + 12) = 0;
                *(v33 + 28) = 0;
                *(v33 + 20) = 0;
                *(v33 + 36) = 0;
              }

              else
              {
                sub_18194C8AC(v5, 182, v29, v37, 0);
              }

              --v31;
              v14 = __OFSUB__(v32--, 1);
            }

            while (!((v32 < 0) ^ v14 | (v32 == 0)));
LABEL_45:
            if (v29)
            {
              v39 = *(v3 + 31);
              if (v39 <= 7)
              {
                *(v3 + 31) = v39 + 1;
                *(v57 + v39) = v29;
              }
            }

            goto LABEL_48;
          }
        }

        v30 = *(i + 29) == 0;
        if (v11 < 1)
        {
          goto LABEL_45;
        }

        goto LABEL_37;
      }

      v17 = *(v3 + 15) + 1;
      v60 = v17;
    }

    else
    {
      v13 = *(v3 + 11);
      v14 = __OFSUB__(v13, v11);
      v15 = v13 - v11;
      if (v15 < 0 == v14)
      {
        v60 = *(v3 + 12);
        *(v3 + 11) = v15;
        *(v3 + 12) = v60 + v11;
        if (*(i + 28))
        {
          goto LABEL_18;
        }

        goto LABEL_15;
      }

      v16 = *(v3 + 15);
      v60 = v16 + 1;
      v17 = v16 + v11;
    }

    *(v3 + 15) = v17;
    if (*(i + 28))
    {
      goto LABEL_18;
    }

LABEL_15:
    v18 = 0;
    goto LABEL_21;
  }

  return result;
}

void *sub_181968590(void *result, int a2, int a3, uint64_t a4)
{
  if (!*(result + 13) && (a2 - 1) <= 1)
  {
    v4 = a4;
    v5 = result[2];
    result = *v5;
    if (!*(*v5 + 103))
    {
      v6 = v5[17] + 40 * a4;
      v7 = a2;
      v8 = a3;
      sub_1818A3B68(result, *(v6 + 1), *(v6 + 16), a4);
      a2 = v7;
      a3 = v8;
      *(v6 + 16) = 0;
      *v6 = 187;
      result = *v5;
      if (!*(*v5 + 103))
      {
        v10 = v5[17] + 40 * v4;
        if (*(v10 + 40) == 188)
        {
          result = sub_1818A3B68(result, *(v10 + 41), *(v10 + 56), v9);
          a2 = v7;
          a3 = v8;
          *(v10 + 56) = 0;
          *(v10 + 40) = 187;
        }
      }
    }

    if (a2 == 2)
    {
      if (*(*v5 + 103))
      {
        v11 = &byte_1EA831A58;
      }

      else
      {
        v11 = (v5[17] + 40 * v4);
      }

      *v11 = 75;
      *(v11 + 1) = 1;
      *(v11 + 2) = a3;
    }
  }

  return result;
}

uint64_t sub_1819686A8(void *a1, uint64_t a2)
{
  if (a1[6])
  {
    return 0;
  }

  v2 = a1[4];
  if (*v2 != 1)
  {
    return 0;
  }

  v3 = a1[5];
  if (*v3 != 1)
  {
    return 0;
  }

  if ((*(v3 + 33) & 4) != 0)
  {
    return 0;
  }

  if (*(a2 + 56) != 1)
  {
    return 0;
  }

  if (a1[8])
  {
    return 0;
  }

  v4 = *(v3 + 24);
  if (*(v4 + 63))
  {
    return 0;
  }

  v5 = *(v2 + 8);
  if (*v5 != 169 || *(v5 + 8) != a2 || (*(*(*(a2 + 48) + 8) + 5) & 1) == 0)
  {
    return 0;
  }

  if ((*(v5 + 1) & 0x1000004) != 0)
  {
    return 0;
  }

  return v4;
}

_BYTE *sub_181968744(_BYTE *result, uint64_t a2, uint64_t a3)
{
  if (result[301] == 2)
  {
    if (a3)
    {
      if ((*(a2 + 48) & 0x80) == 0)
      {
        v3 = *a2;
LABEL_9:
        v5 = *a3;
        v4 = " USING COVERING INDEX ";
        return sub_18195AD8C(result, 0, "SCAN %s%s%s", v3, v4, v5);
      }

      v3 = *a2;
      if ((*(a3 + 99) & 3) != 2)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v3 = *a2;
    }

    v4 = &byte_181A2878D;
    v5 = &byte_181A2878D;
    return sub_18195AD8C(result, 0, "SCAN %s%s%s", v3, v4, v5);
  }

  return result;
}

uint64_t sub_1819687D4(uint64_t result, uint64_t a2)
{
  if ((*(a2 + 68) & 4) != 0 && *(a2 + 65))
  {
    v2 = *(a2 + 64) + 1;
    v3 = a2 + 120 * *(a2 + 64) + 872;
    while (--v2 >= 1)
    {
      v4 = (v3 - 120);
      v5 = *(*(v3 - 40) + 48);
      v3 -= 120;
      if ((v5 & 4) != 0)
      {
        v6 = *v4;
        goto LABEL_9;
      }
    }

    v6 = *(a2 + 52);
LABEL_9:
    v7 = *(result + 144);
    if (*(result + 148) <= v7)
    {
      return sub_18194C8AC(result, 9, 0, v6, 0);
    }

    else
    {
      *(result + 144) = v7 + 1;
      v8 = *(result + 136) + 40 * v7;
      *v8 = 9;
      *(v8 + 8) = v6;
      *(v8 + 12) = 0;
      *(v8 + 28) = 0;
      *(v8 + 20) = 0;
      *(v8 + 36) = 0;
    }
  }

  return result;
}

uint64_t sub_18196887C(uint64_t **a1, unsigned __int8 *a2)
{
  if (*a2 != 169 || *(a2 + 8))
  {
    return 0;
  }

  sub_181910730(*a1, "misuse of aggregate: %s()", *(a2 + 1));
  return 0;
}

int *sub_1819688D4(uint64_t *a1, int *a2, int *a3, int a4)
{
  v4 = a2;
  if (!a3)
  {
    return v4;
  }

  v18 = a2 ? *a2 : 0;
  if (*a3 < 1)
  {
    return v4;
  }

  v7 = 0;
  while (1)
  {
    v9 = *a1;
    v10 = &a3[6 * v7 + 2];
    if (*v10)
    {
      break;
    }

    if (*(v9 + 103))
    {
      return v4;
    }

    if (a4)
    {
      v12 = 0;
      v13 = 0;
      v20 = 0;
      goto LABEL_25;
    }

    v12 = 0;
    if (!v4)
    {
LABEL_31:
      v16 = sub_18197FD9C(*a1, v12);
LABEL_32:
      v4 = v16;
      if (!v16)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

LABEL_28:
    v15 = *v4;
    if (v4[1] <= *v4)
    {
      v16 = sub_18197FE14(*a1, v4, v12);
      goto LABEL_32;
    }

    *v4 = v15 + 1;
    v8 = &v4[6 * v15];
    *(v8 + 2) = 0;
    *(v8 + 3) = 0;
    *(v8 + 1) = v12;
LABEL_8:
    LOBYTE(v4[6 * v7 + 6 + 6 * v18]) = *(v10 + 16);
LABEL_9:
    if (++v7 >= *a3)
    {
      return v4;
    }
  }

  v11 = sub_1818C7FEC(*a1, *v10, 0, 0);
  v12 = v11;
  if (!*(v9 + 103))
  {
    if (a4)
    {
      v20 = 0;
      if (v11)
      {
        v13 = v11;
        while (1)
        {
          v14 = *(v13 + 1);
          if ((v14 & 0x82000) == 0)
          {
            break;
          }

          if ((v14 & 0x80000) != 0)
          {
            v13 = *(*(v13 + 4) + 8);
            if (!v13)
            {
              break;
            }
          }

          else
          {
            if (*v13 != 114)
            {
              break;
            }

            v13 = *(v13 + 2);
            if (!v13)
            {
              break;
            }
          }
        }
      }

      else
      {
        v13 = 0;
      }

LABEL_25:
      if (sub_18195A9F8(v13, &v20, 0))
      {
        *v13 = 122;
        *(v13 + 1) &= 0xCFFFF7FF;
        *(v13 + 1) = 0;
      }
    }

    if (!v4)
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (v11)
  {
    sub_1819439E0(v9, v11);
  }

  return v4;
}

uint64_t sub_181968AD0(uint64_t a1, unsigned __int8 *a2)
{
  if (*a2 == 169)
  {
    v2 = a2[2];
    if (*(a1 + 32) <= v2)
    {
      a2[2] = v2 + 1;
    }
  }

  return 0;
}

uint64_t sub_181968B20(uint64_t **a1, unsigned __int8 *a2)
{
  if ((*(a2 + 5) & 0x140) != 0)
  {
    return 0;
  }

  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *(a2 + 26);
    v5 = *a1;
    v6 = **a1;
    if (*a2 == 169)
    {
      if (*(v3 + 56) > v4)
      {
        v7 = 32 * *(a2 + 26);
        if (*(*(v3 + 48) + v7) == a2)
        {
          v8 = sub_1818C7FEC(v6, a2, 0, 0);
          if (v8)
          {
            v9 = v8;
            if (sub_18195B158(v5, sub_18195B270, v8))
            {
              *(*(v3 + 48) + v7) = v9;
            }
          }
        }
      }
    }

    else if (*(v3 + 40) > v4)
    {
      v10 = *(a2 + 26);
      if (*(*(v3 + 32) + 32 * v10 + 8) == a2)
      {
        v11 = sub_1818C7FEC(v6, a2, 0, 0);
        if (v11)
        {
          v12 = v11;
          if (sub_18195B158(v5, sub_18195B270, v11))
          {
            *(*(v3 + 32) + 32 * v10 + 8) = v12;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_181968C50(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 40);
  v4 = *a1;
  v5 = *a2;
  if (v3[4])
  {
    if (v5 != 168)
    {
      return 0;
    }

    v6 = v3[1];
    v7 = *v6;
    if (v7 < 1)
    {
      LODWORD(v8) = 0;
    }

    else
    {
      v8 = 0;
      v9 = (v6 + 9);
      while (1)
      {
        v10 = *v9;
        v9 += 18;
        if (*(a2 + 11) == v10)
        {
          break;
        }

        if (v7 == ++v8)
        {
          return 0;
        }
      }
    }

    if (v8 == v7)
    {
      return 0;
    }
  }

  if ((v5 - 168) < 2 || v5 == 179)
  {
    goto LABEL_17;
  }

  if (v5 != 172 || (a2[7] & 1) == 0)
  {
    return 0;
  }

  v11 = *v3;
  if (!*v3)
  {
LABEL_17:
    v12 = *v4;
    if (*(*v4 + 103))
    {
      return 2;
    }

    v13 = v3[2];
    if (v13 && *v13 >= 1)
    {
      v14 = 0;
      v15 = 2;
      while (1)
      {
        v16 = sub_181959260(0, *&v13[v15], a2, 0xFFFFFFFFLL);
        v13 = v3[2];
        if (!v16)
        {
          break;
        }

        ++v14;
        v15 += 6;
        if (v14 >= *v13)
        {
          v12 = *v4;
          goto LABEL_24;
        }
      }

      v22 = 0;
      if (!v13)
      {
LABEL_37:
        if (*(*v4 + 103))
        {
          return 2;
        }

        return 0;
      }

LABEL_34:
      v23 = *(a2 + 1) & 0x200;
      *(a2 + 1) |= 0x8000000u;
      sub_1819439E0(*v4, a2);
      *(a2 + 3) = 0u;
      *(a2 + 4) = 0u;
      *(a2 + 1) = 0u;
      *(a2 + 2) = 0u;
      *a2 = 0u;
      *a2 = -88;
      if (v22)
      {
        LODWORD(v14) = *v3[2] - 1;
      }

      *(a2 + 11) = *(*v3 + 88);
      *(a2 + 12) = v14;
      *(a2 + 9) = v3[3];
      *(a2 + 1) = v23;
      goto LABEL_37;
    }

LABEL_24:
    v17 = sub_1818C7FEC(v12, a2, 0, 0);
    if (v17 && *v17 == 169)
    {
      *v17 = -84;
    }

    v18 = v3[2];
    if (v18)
    {
      v19 = *v18;
      if (v18[1] > *v18)
      {
        *v18 = v19 + 1;
        v20 = &v18[6 * v19];
        *(v20 + 2) = 0;
        *(v20 + 3) = 0;
        *(v20 + 1) = v17;
        goto LABEL_33;
      }

      v21 = sub_18197FE14(*v4, v18, v17);
    }

    else
    {
      v21 = sub_18197FD9C(*v4, v17);
    }

    v18 = v21;
LABEL_33:
    v3[2] = v18;
    LODWORD(v14) = -1;
    v22 = 1;
    if (!v18)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  while (*(a2 + 9) != v11)
  {
    v11 = *(v11 + 64);
    if (!v11)
    {
      goto LABEL_17;
    }
  }

  return 1;
}

uint64_t sub_181968E90(void *a1, void *a2)
{
  v2 = a1[5];
  v3 = *(v2 + 32);
  if (v3 == a2)
  {
    return 0;
  }

  *(v2 + 32) = a2;
  sub_1818AEE70(a1, a2);
  *(v2 + 32) = v3;
  return 1;
}

uint64_t sub_181968ED4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *v1;
  if (v2 >= 1)
  {
    v4 = 0;
    v5 = v1 + 2;
    do
    {
      v6 = sub_1818D0A24(*&v5[6 * v4]);
      v7 = a1;
      while (1)
      {
        v7 = *(v7 + 80);
        if (!v7)
        {
          break;
        }

        if (sub_1818D0A24(*(*(v7 + 32) + 24 * v4 + 8)) != v6)
        {
          return 1;
        }
      }

      ++v4;
    }

    while (v4 != v2);
  }

  return 0;
}

uint64_t sub_181968F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_181969238(a1, a4, *(a2 + 40), a3);
  v7[0] = 0;
  v7[3] = 0;
  v7[4] = 0;
  v7[5] = a4;
  v7[1] = sub_18196931C;
  v7[2] = sub_181961BBC;
  return sub_1818AEE70(v7, a2);
}

void *sub_181968FEC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a1[103])
    {
      return sub_18194E094(a1, a2, a3, a4);
    }

    v4 = *(a2 + 11) - 1;
    *(a2 + 11) = v4;
    if (!v4)
    {
      return sub_18194E094(a1, a2, a3, a4);
    }
  }

  return a1;
}

unsigned __int8 *sub_181969010(unsigned __int8 *result, uint64_t a2, int a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = result;
    do
    {
      v6 = *(v4 + 32);
      if (v6 && *v6 >= 1)
      {
        v7 = 0;
        v8 = 2;
        do
        {
          *&v6[v8] = sub_1818EC4E8(v5, *&v6[v8]);
          ++v7;
          v8 += 6;
        }

        while (v7 < *v6);
      }

      v9 = *(v4 + 56);
      if (v9 && *v9 >= 1)
      {
        v10 = 0;
        v11 = 2;
        do
        {
          *&v9[v11] = sub_1818EC4E8(v5, *&v9[v11]);
          ++v10;
          v11 += 6;
        }

        while (v10 < *v9);
      }

      v12 = *(v4 + 72);
      if (v12 && *v12 >= 1)
      {
        v13 = 0;
        v14 = 2;
        do
        {
          *&v12[v14] = sub_1818EC4E8(v5, *&v12[v14]);
          ++v13;
          v14 += 6;
        }

        while (v13 < *v12);
      }

      *(v4 + 64) = sub_1818EC4E8(v5, *(v4 + 64));
      result = sub_1818EC4E8(v5, *(v4 + 48));
      *(v4 + 48) = result;
      v15 = *(v4 + 40);
      v16 = *v15;
      if (*v15 >= 1)
      {
        v17 = v15 + 2;
        do
        {
          v19 = *(v17 + 25);
          if ((v19 & 4) != 0)
          {
            result = sub_181969010(v5, **(v17 + 8), 1);
            v19 = *(v17 + 25);
          }

          if ((v19 & 8) != 0)
          {
            v20 = *(v17 + 5);
            if (v20)
            {
              if (*v20 >= 1)
              {
                v21 = 0;
                v22 = 2;
                do
                {
                  result = sub_1818EC4E8(v5, *&v20[v22]);
                  *&v20[v22] = result;
                  ++v21;
                  v22 += 6;
                }

                while (v21 < *v20);
              }
            }
          }

          v17 += 18;
          v18 = __OFSUB__(v16--, 1);
        }

        while (!((v16 < 0) ^ v18 | (v16 == 0)));
      }

      if (!a3)
      {
        break;
      }

      v4 = *(v4 + 80);
    }

    while (v4);
  }

  return result;
}

void *sub_1819691D0(void *result, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2[0] = 0;
    v2[3] = 0;
    v2[4] = 0;
    v2[5] = a2;
    v2[1] = sub_181969390;
    v2[2] = sub_181961BBC;
    *(a2 + 32) = 0;
    return sub_1818AEE70(v2, result);
  }

  return result;
}

uint64_t sub_181969238(uint64_t result, uint64_t a2, int *a3, int a4)
{
  if (*a3 >= 1)
  {
    v7 = result;
    v8 = 0;
    v9 = a2 + 4;
    v10 = a3 + 2;
    do
    {
      if (v8 != a4)
      {
        v11 = *(v10 + 25);
        v12 = v10[7];
        if ((v11 & 0x80) == 0 || (v13 = *(v9 + 4 * v12)) == 0)
        {
          v14 = *(v7 + 56);
          *(v7 + 56) = v14 + 1;
          *(v9 + 4 * v12) = v14;
          v13 = *(v9 + 4 * v10[7]);
          v11 = *(v10 + 25);
        }

        v10[7] = v13;
        if ((v11 & 4) != 0)
        {
          for (i = **(v10 + 8); i; i = *(i + 80))
          {
            result = sub_181969238(v7, a2, *(i + 40), -1);
          }
        }
      }

      ++v8;
      v10 += 18;
    }

    while (v8 < *a3);
  }

  return result;
}

uint64_t sub_18196931C(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (v2 == 179 || v2 == 168)
  {
    v3 = *(a1 + 40);
    v4 = *(a2 + 11);
    if (v4 < *v3)
    {
      v5 = v3[v4 + 1];
      if (v5 >= 1)
      {
        *(a2 + 11) = v5;
      }
    }
  }

  if (a2[4])
  {
    v6 = *(a1 + 40);
    v7 = *(a2 + 14);
    if (v7 < *v6)
    {
      v8 = v6[v7 + 1];
      if (v8 >= 1)
      {
        *(a2 + 14) = v8;
      }
    }
  }

  return 0;
}

uint64_t sub_181969390(uint64_t a1, unsigned __int8 *a2)
{
  if (*a2 == 168)
  {
    v2 = *(a1 + 40);
    if (*(v2 + 28) == *(a2 + 11))
    {
      v3 = *(a2 + 12);
      if ((v3 & 0x80000000) == 0)
      {
        v4 = *(a2 + 9);
        if ((*(v4 + 48) & 0x60) != 0 && (*(*(v4 + 8) + 16 * v3 + 14) & 0x60) != 0)
        {
          v5 = *(v4 + 54);
          if (v5 <= 63)
          {
            v6 = ~(-1 << v5);
          }

          else
          {
            v6 = -1;
          }
        }

        else
        {
          if (v3 >= 0x3F)
          {
            LOBYTE(v3) = 63;
          }

          v6 = 1 << v3;
        }

        *(v2 + 32) |= v6;
      }
    }
  }

  return 0;
}

uint64_t sub_18196941C(int a1, int a2)
{
  if (a1 < a2)
  {
    if (a1 + 49 < a2)
    {
      return a2;
    }

    if (a1 + 31 < a2)
    {
      return (a2 + 1);
    }

    LOWORD(a1) = byte_181A245A6[a2 - a1] + a2;
    return a1;
  }

  if (a2 + 49 < a1)
  {
    return a1;
  }

  if (a2 + 31 >= a1)
  {
    return (byte_181A245A6[a1 - a2] + a1);
  }

  else
  {
    return (a1 + 1);
  }
}

void *sub_1819694AC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    return sub_1818BB408(result, a2, 1, a4);
  }

  return result;
}

void *sub_1819694BC(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = *(a2 + 72);
  if (v4)
  {
    v5 = *v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = *a1;
  v7 = v5 + 2;
  v8 = 9 * v7;
  v9 = sub_181929E8C(*a1, v8 + 32, 0x2004093837F09);
  v10 = v9;
  if (v9)
  {
    *(v9 + 3) = v5 + 1;
    *(v9 + 4) = v7;
    *(v9 + 4) = *(v6 + 100);
    v9[2] = v6;
    v9[3] = &v9[v7 + 4];
    *v9 = 1;
    bzero(v9 + 4, v8);
  }

  else
  {
    if (*(v6 + 103) || *(v6 + 104))
    {
      return v10;
    }

    *(v6 + 103) = 1;
    if (*(v6 + 220) >= 1)
    {
      *(v6 + 424) = 1;
    }

    ++*(v6 + 432);
    *(v6 + 436) = 0;
    v27 = *(v6 + 344);
    if (!v27)
    {
      return v10;
    }

    sub_181910730(v27, "out of memory");
    v28 = *(v6 + 344);
    *(v28 + 24) = 7;
    v29 = *(v28 + 216);
    if (!v29)
    {
      return v10;
    }

    do
    {
      ++*(v29 + 52);
      *(v29 + 24) = 7;
      v29 = *(v29 + 216);
    }

    while (v29);
  }

  if (v10 && v5 >= 1)
  {
    v11 = 0;
    v12 = v10 + 4;
    v13 = v4 + 6;
    v14 = v5;
    v30 = v3;
    v31 = v2;
    v32 = v5;
    v33 = v10;
    while (1)
    {
      v17 = *(v13 - 2);
      if ((*(v17 + 5) & 2) == 0)
      {
        break;
      }

      v15 = sub_1818B4720(v3, *(v13 - 2));
LABEL_10:
      v12[v11] = v15;
      v16 = *v13;
      v13 += 6;
      *(v10[3] + v11++) = v16;
      if (v14 == v11)
      {
        return v10;
      }
    }

    v15 = sub_1818E450C(v3, v2, *(v13 + 2) - 1);
    if (v15)
    {
      v18 = *v15;
      if (!*v15)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v15 = *(v6 + 16);
      v18 = *v15;
      if (!*v15)
      {
LABEL_20:
        *(v13 - 2) = v17;
        goto LABEL_10;
      }
    }

    v19 = v12;
    v20 = v6;
    v21 = v15;
    v22 = strlen(v18) & 0x3FFFFFFF;
    if (v22)
    {
      v23 = sub_181929E8C(*v3, v22 + 81, 0x1032040B79D87BDLL);
      if (v23)
      {
        *(v23 + 3) = 0u;
        *(v23 + 4) = 0u;
        *(v23 + 1) = 0u;
        *(v23 + 2) = 0u;
        *v23 = 0u;
        *v23 = 114;
        *(v23 + 26) = -1;
        v24 = v23 + 10;
        v23[1] = v23 + 10;
        v25 = v23;
        memcpy(v23 + 10, v18, v22);
        *(v24 + v22) = 0;
        *(v25 + 10) = 1;
        v25[2] = v17;
        *(v25 + 1) |= 0x2200u;
        v17 = v25;
        v3 = v30;
        v2 = v31;
      }
    }

    v15 = v21;
    v6 = v20;
    v12 = v19;
    v14 = v32;
    v10 = v33;
    goto LABEL_20;
  }

  return v10;
}

uint64_t sub_181969748(uint64_t result, int a2, int a3)
{
  if (a2 >= 1)
  {
    v3 = *(result + 144);
    if (*(result + 148) <= v3)
    {
      return sub_18194C8AC(result, 50, a2, a3, 1);
    }

    else
    {
      *(result + 144) = v3 + 1;
      v4 = *(result + 136) + 40 * v3;
      *v4 = 50;
      *(v4 + 4) = a2;
      *(v4 + 8) = a3;
      *(v4 + 12) = 1;
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
      *(v4 + 16) = 0;
    }
  }

  return result;
}

uint64_t sub_1819697A4(_BYTE *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, int a5, int a6, char *__s, int a8)
{
  HIDWORD(v113) = a8;
  v9 = a4;
  v12 = *(a1 + 2);
  v13 = *(v12 + 36);
  v116 = *(a1 + 18);
  v14 = v116 - 1;
  *(a1 + 18) = v116 - 1;
  if (a6)
  {
    if (*(v12 + 37) <= v13)
    {
      v18 = v13;
      LODWORD(v113) = sub_18194C8AC(v12, 17, a6, 0, 0);
    }

    else
    {
      *(v12 + 36) = v13 + 1;
      v17 = &v12[17][5 * v13];
      *v17 = 17;
      *(v17 + 4) = a6;
      *(v17 + 8) = 0u;
      *(v17 + 24) = 0u;
      v18 = v13;
      LODWORD(v113) = v13;
    }

    v19 = a5;
    v20 = a6 + 1;
    v21 = *(a3 + 12);
    v22 = *(a3 + 16);
    if (__s)
    {
      ++*__s;
    }

    v23 = *(v12 + 36);
    if (*(v12 + 37) <= v23)
    {
      v23 = sub_18194C8AC(v12, 90, v21, a6 + 1, v22);
    }

    else
    {
      *(v12 + 36) = v23 + 1;
      v24 = &v12[17][5 * v23];
      *v24 = 90;
      *(v24 + 4) = v21;
      *(v24 + 8) = v20;
      *(v24 + 12) = v22;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0;
      *(v24 + 16) = 0;
    }

    if (*(*v12 + 103))
    {
      if (__s)
      {
        if (!(*v12)[103] && (*__s)-- == 1)
        {
          sub_181939EC8(*(__s + 2), __s);
        }
      }
    }

    else
    {
      v26 = v23;
      if (v23 < 0)
      {
        v26 = *(v12 + 36) - 1;
      }

      v27 = &v12[17][5 * v26];
      if (*(v27 + 1))
      {
        sub_18194CB90(v12, v27, __s, 4294967288);
      }

      else if (__s)
      {
        *(v27 + 16) = __s;
        *(v27 + 1) = -8;
      }
    }

    v28 = v23 + 2;
    v29 = *(v12 + 36);
    if (*(v12 + 37) <= v29)
    {
      sub_18194C8AC(v12, 14, v28, v14, v23 + 2);
    }

    else
    {
      *(v12 + 36) = v29 + 1;
      v30 = &v12[17][5 * v29];
      *v30 = 14;
      *(v30 + 4) = v28;
      *(v30 + 8) = v14;
      *(v30 + 12) = v28;
      *(v30 + 24) = 0;
      *(v30 + 32) = 0;
      *(v30 + 16) = 0;
    }

    a5 = v19;
    v31 = *(v12 + 36);
    v13 = v18;
    if (*(*v12 + 103))
    {
      v32 = &byte_1EA831A58;
    }

    else
    {
      v32 = &v12[17][5 * v113];
    }

    v9 = a4;
    *(v32 + 2) = v31;
    v33 = *(a3 + 12);
    v34 = *(a3 + 16) - 1;
    if (*(v12 + 37) <= v31)
    {
      sub_18194C8AC(v12, 80, v33, a6 + 1, v34);
    }

    else
    {
      *(v12 + 36) = v31 + 1;
      v35 = &v12[17][5 * v31];
      *v35 = 80;
      *(v35 + 4) = v33;
      *(v35 + 8) = v20;
      *(v35 + 12) = v34;
      *(v35 + 24) = 0;
      *(v35 + 32) = 0;
      *(v35 + 16) = 0;
    }

    v36 = *(v12 + 36);
    if (*(v12 + 37) <= v36)
    {
      sub_18194C8AC(v12, 71, 1, a6, 0);
    }

    else
    {
      *(v12 + 36) = v36 + 1;
      v37 = &v12[17][5 * v36];
      *v37 = 0x100000047;
      *(v37 + 8) = a6;
      *(v37 + 12) = 0;
      *(v37 + 28) = 0;
      *(v37 + 20) = 0;
      *(v37 + 36) = 0;
    }
  }

  if (*(*a1 + 103))
  {
    return 0;
  }

  v38 = *(a2 + 12);
  if (v38 >= 1)
  {
    v39 = *(v12 + 36);
    if (*(v12 + 37) <= v39)
    {
      sub_18194C8AC(v12, 50, v38, v14, 1);
    }

    else
    {
      *(v12 + 36) = v39 + 1;
      v40 = &v12[17][5 * v39];
      *v40 = 50;
      *(v40 + 4) = v38;
      *(v40 + 8) = v14;
      *(v40 + 12) = 1;
      *(v40 + 24) = 0;
      *(v40 + 32) = 0;
      *(v40 + 16) = 0;
    }
  }

  v41 = *v9;
  if (v41 > 0xB)
  {
    if (v41 == 13)
    {
      v57 = *(v9 + 3);
      if (!v57)
      {
        v58 = *(a3 + 16);
        if (v58 == 1)
        {
          if (a1[31])
          {
            v59 = a1[31] - 1;
            a1[31] = v59;
            v57 = *&a1[4 * v59 + 184];
          }

          else
          {
            v57 = *(a1 + 15) + 1;
            *(a1 + 15) = v57;
          }
        }

        else
        {
          v101 = *(a1 + 11);
          v102 = __OFSUB__(v101, v58);
          v103 = v101 - v58;
          if (v103 < 0 != v102)
          {
            v104 = *(a1 + 15);
            v57 = v104 + 1;
            *(a1 + 15) = v104 + v58;
          }

          else
          {
            v57 = *(a1 + 12);
            *(a1 + 11) = v103;
            *(a1 + 12) = v57 + v58;
          }
        }

        *(v9 + 3) = v57;
        *(v9 + 4) = v58;
      }

      v105 = *(a3 + 12);
      v106 = *(a3 + 16);
      v107 = *(a1 + 2);
      v108 = *(v107 + 144);
      if (*(v107 + 148) <= v108)
      {
        sub_18194C8AC(v107, 79, v105, v57, v106);
      }

      else
      {
        *(v107 + 144) = v108 + 1;
        v109 = *(v107 + 136) + 40 * v108;
        *v109 = 79;
        *(v109 + 4) = v105;
        *(v109 + 8) = v57;
        *(v109 + 12) = v106;
        *(v109 + 24) = 0;
        *(v109 + 32) = 0;
        *(v109 + 16) = 0;
      }

      v61 = v116;
      v110 = *(v9 + 1);
      v111 = *(v12 + 36);
      if (*(v12 + 37) <= v111)
      {
        sub_18194C8AC(v12, 12, v110, 0, 0);
      }

      else
      {
        *(v12 + 36) = v111 + 1;
        v112 = &v12[17][5 * v111];
        *v112 = 12;
        *(v112 + 4) = v110;
        *(v112 + 8) = 0u;
        *(v112 + 24) = 0u;
      }

      goto LABEL_62;
    }

    if (v41 != 12)
    {
      goto LABEL_50;
    }

    v44 = a1[31];
    if (v44)
    {
      a1[31] = v44 - 1;
      v45 = *&a1[4 * (v44 - 1) + 184];
      v46 = v9;
      if (v44 != 1)
      {
        v47 = v44 - 2;
        a1[31] = v47;
        v48 = *&a1[4 * v47 + 184];
LABEL_82:
        v76 = *(a3 + 12);
        v77 = *(a3 + 16);
        v78 = *(v12 + 36);
        if (*(v12 + 37) <= v78)
        {
          sub_18194C8AC(v12, 97, v76, v77, v45);
        }

        else
        {
          *(v12 + 36) = v78 + 1;
          v79 = &v12[17][5 * v78];
          *v79 = 97;
          *(v79 + 4) = v76;
          *(v79 + 8) = v77;
          *(v79 + 12) = v45;
          *(v79 + 24) = 0;
          *(v79 + 32) = 0;
          *(v79 + 16) = 0;
        }

        v61 = v116;
        v80 = *(v46 + 1);
        v81 = *(v12 + 36);
        if (*(v12 + 37) <= v81)
        {
          sub_18194C8AC(v12, 127, v80, v48, 0);
        }

        else
        {
          *(v12 + 36) = v81 + 1;
          v82 = &v12[17][5 * v81];
          *v82 = 127;
          *(v82 + 4) = v80;
          *(v82 + 8) = v48;
          *(v82 + 12) = 0;
          *(v82 + 28) = 0;
          *(v82 + 20) = 0;
          *(v82 + 36) = 0;
        }

        v83 = *(v46 + 1);
        v84 = *(v12 + 36);
        if (*(v12 + 37) <= v84)
        {
          sub_18194C8AC(v12, 128, v83, v45, v48);
        }

        else
        {
          *(v12 + 36) = v84 + 1;
          v85 = &v12[17][5 * v84];
          *v85 = 128;
          *(v85 + 4) = v83;
          *(v85 + 8) = v45;
          *(v85 + 12) = v48;
          *(v85 + 24) = 0;
          *(v85 + 32) = 0;
          *(v85 + 16) = 0;
        }

        v86 = *(v12 + 36);
        if (v86 >= 1)
        {
          *(&v12[17][5 * v86 - 4] - 3) = 8;
        }

        if (v48)
        {
          v87 = a1[31];
          if (v87 <= 7)
          {
            a1[31] = v87 + 1;
            *&a1[4 * v87 + 184] = v48;
          }
        }

        if (v45)
        {
          v88 = a1[31];
          if (v88 <= 7)
          {
            a1[31] = v88 + 1;
            *&a1[4 * v88 + 184] = v45;
          }
        }

        goto LABEL_62;
      }
    }

    else
    {
      v46 = v9;
      v45 = *(a1 + 15) + 1;
      *(a1 + 15) = v45;
    }

    v48 = *(a1 + 15) + 1;
    *(a1 + 15) = v48;
    goto LABEL_82;
  }

  if (v41 == 10)
  {
    v50 = *(v9 + 1);
    v49 = *(a3 + 12);
    v53 = *(a3 + 16);
    v54 = *(a1 + 2);
    v55 = *(v54 + 144);
    if (*(v54 + 148) > v55)
    {
      *(v54 + 144) = v55 + 1;
      v56 = *(v54 + 136) + 40 * v55;
      *v56 = 79;
      *(v56 + 4) = v49;
      *(v56 + 8) = v50;
      *(v56 + 12) = v53;
      *(v56 + 24) = 0;
      *(v56 + 32) = 0;
      *(v56 + 16) = 0;
      goto LABEL_61;
    }

    v60 = 79;
LABEL_60:
    sub_18194C8AC(v54, v60, v49, v50, v53);
    goto LABEL_61;
  }

  if (v41 == 11)
  {
    if (a1[31])
    {
      v42 = a1[31] - 1;
      a1[31] = v42;
      v43 = *&a1[4 * v42 + 184];
    }

    else
    {
      v43 = *(a1 + 15) + 1;
      *(a1 + 15) = v43;
    }

    v70 = *(a3 + 12);
    v71 = *(a3 + 16);
    v72 = v9;
    v73 = *(v9 + 3);
    v74 = *(v12 + 36);
    if (*(v12 + 37) <= v74)
    {
      v74 = sub_18194C8AC(v12, 97, v70, *(a3 + 16), v43);
    }

    else
    {
      *(v12 + 36) = v74 + 1;
      v75 = &v12[17][5 * v74];
      *v75 = 97;
      *(v75 + 4) = v70;
      *(v75 + 8) = v71;
      *(v75 + 12) = v43;
      *(v75 + 24) = 0;
      *(v75 + 32) = 0;
      *(v75 + 16) = 0;
    }

    if (*(*v12 + 103))
    {
      if (v71 != -11)
      {
        sub_1818A3B68(*v12, v71, v73, a4);
      }
    }

    else
    {
      if (v74 < 0)
      {
        v74 = *(v12 + 36) - 1;
      }

      v89 = &v12[17][5 * v74];
      if ((v71 & 0x80000000) != 0 && !*(v89 + 1))
      {
        if (v71 == -3)
        {
          *(v89 + 16) = v73;
          *(v89 + 1) = -3;
        }

        else if (v73)
        {
          *(v89 + 16) = v73;
          *(v89 + 1) = v71;
          if (v71 == -11)
          {
            ++*(v73 + 24);
          }
        }
      }

      else
      {
        sub_18194CB90(v12, v89, v73, v71);
      }
    }

    v90 = *(v72 + 1);
    v91 = *(a3 + 12);
    v92 = *(a3 + 16);
    v93 = *(v12 + 36);
    if (*(v12 + 37) <= v93)
    {
      sub_18194CAFC(v12, 138, v90, v43, v91, v92);
    }

    else
    {
      *(v12 + 36) = v93 + 1;
      v94 = &v12[17][5 * v93];
      *v94 = 64906;
      *(v94 + 4) = v90;
      *(v94 + 8) = v43;
      *(v94 + 12) = v91;
      *(v94 + 16) = v92;
      *(v94 + 24) = 0;
      *(v94 + 32) = 0;
    }

    v95 = *(v72 + 2);
    if (v95 >= 1)
    {
      v96 = *(a3 + 12);
      v97 = *(a3 + 16);
      v98 = *(v12 + 36);
      if (*(v12 + 37) <= v98)
      {
        sub_18194CAFC(v12, 183, v95, 0, v96, v97);
      }

      else
      {
        *(v12 + 36) = v98 + 1;
        v99 = &v12[17][5 * v98];
        *v99 = 64951;
        *(v99 + 4) = v95;
        *(v99 + 8) = 0;
        *(v99 + 12) = v96;
        *(v99 + 16) = v97;
        *(v99 + 24) = 0;
        *(v99 + 32) = 0;
      }

      sub_18195AD8C(a1, 0, "CREATE BLOOM FILTER", v113);
    }

    v61 = v116;
    if (v43)
    {
      v100 = a1[31];
      if (v100 <= 7)
      {
        a1[31] = v100 + 1;
        *&a1[4 * v100 + 184] = v43;
      }
    }

    goto LABEL_62;
  }

LABEL_50:
  v49 = *(a3 + 12);
  v50 = *(a3 + 16);
  v51 = *(v12 + 36);
  if (*(v12 + 37) <= v51)
  {
    v54 = v12;
    v60 = 84;
    v53 = 0;
    goto LABEL_60;
  }

  *(v12 + 36) = v51 + 1;
  v52 = &v12[17][5 * v51];
  *v52 = 84;
  *(v52 + 4) = v49;
  *(v52 + 8) = v50;
  *(v52 + 12) = 0;
  *(v52 + 28) = 0;
  *(v52 + 20) = 0;
  *(v52 + 36) = 0;
LABEL_61:
  v61 = v116;
LABEL_62:
  v62 = *(a2 + 8);
  if (v62)
  {
    v63 = *(v12 + 36);
    if (*(v12 + 37) <= v63)
    {
      sub_18194C8AC(v12, 61, v62, SHIDWORD(v113), 0);
    }

    else
    {
      *(v12 + 36) = v63 + 1;
      v64 = &v12[17][5 * v63];
      *v64 = 61;
      *(v64 + 4) = v62;
      *(v64 + 8) = HIDWORD(v113);
      *(v64 + 12) = 0;
      *(v64 + 28) = 0;
      *(v64 + 20) = 0;
      *(v64 + 36) = 0;
    }
  }

  v65 = v12[3];
  v66 = -v61;
  if (*(v65 + 72) + *(v65 + 76) < 0)
  {
    sub_18195CB84(v65, v12, v66);
    v67 = *(v12 + 36);
  }

  else
  {
    v67 = *(v12 + 36);
    *(*(v65 + 80) + 4 * v66) = v67;
  }

  if (*(v12 + 37) <= v67)
  {
    sub_18194C8AC(v12, 67, a5, 0, 0);
  }

  else
  {
    *(v12 + 36) = v67 + 1;
    v68 = &v12[17][5 * v67];
    *v68 = 67;
    *(v68 + 4) = a5;
    *(v68 + 8) = 0u;
    *(v68 + 24) = 0u;
  }

  return v13;
}

uint64_t sub_18196A1C4(uint64_t result, unsigned __int8 *a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    while ((*(v3 + 28) & *(v2 + 1)) == 0)
    {
      v4 = *v2;
      if (v4 != 44)
      {
        if (v4 == 54)
        {
          v6 = *(v2 + 2);
          v5 = *(v2 + 3);
          if (*v5 == 168)
          {
            v7 = *v3;
            v13 = 0x100000000;
            v14 = 0;
            v9 = v7;
            v10 = sub_1818C7E14;
            v11 = sub_18195A49C;
            v12 = 0;
            if (!v6 || (result = sub_181959BA0(&v9, v6), WORD2(v13)))
            {
              result = sub_18196A3BC(v3, v5, v6, v2);
            }
          }

          if (*v6 == 168)
          {
            v8 = *v3;
            v13 = 0x100000000;
            v14 = 0;
            v9 = v8;
            v10 = sub_1818C7E14;
            v11 = sub_18195A49C;
            v12 = 0;
            result = sub_181959BA0(&v9, v5);
            if (WORD2(v13))
            {
              return sub_18196A3BC(v3, v6, v5, v2);
            }
          }
        }

        return result;
      }

      result = sub_18196A1C4(v3, *(v2 + 3));
      v2 = *(v2 + 2);
      if (!v2)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_18196A30C(uint64_t a1, unsigned __int8 **a2)
{
  v3 = *(a1 + 40);
  if (*(v3 + 24))
  {
    v4 = *a2;
    if ((v4 - 54) < 5 || v4 == 45)
    {
      sub_18196A5C4(*(a1 + 40), a2[2], 0);
      if (**(v3 + 8))
      {
        return 1;
      }

      if (sub_1818D0A24(a2[2]) != 66)
      {
        sub_18196A5C4(v3, a2[3], 0);
      }
    }
  }

  v6 = *(v3 + 24);

  return sub_18196A5C4(v3, a2, v6);
}

uint64_t sub_18196A3BC(uint64_t result, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  if ((*(a2 + 4) & 0x20) != 0)
  {
    return result;
  }

  v7 = result;
  result = sub_1818D0A24(a3);
  if (result)
  {
    return result;
  }

  v8 = *v7;
  v9 = 24;
  if ((*(a4 + 4) & 0x400) != 0)
  {
    v10 = 24;
  }

  else
  {
    v10 = 16;
  }

  if ((*(a4 + 4) & 0x400) != 0)
  {
    v9 = 16;
  }

  v11 = *(a4 + v10);
  if ((v11[5] & 2) != 0)
  {
LABEL_14:
    result = sub_1818B4720(v8, v11);
    if (!result)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v12 = *(a4 + v9);
  if (v12 && (v12[5] & 2) != 0)
  {
LABEL_13:
    v11 = v12;
    goto LABEL_14;
  }

  v13 = *v7;
  result = sub_1818B4720(v8, v11);
  if (!result)
  {
    v8 = v13;
    goto LABEL_13;
  }

LABEL_15:
  if (*(result + 24) != sub_1818D0EC0)
  {
    return result;
  }

LABEL_16:
  v14 = *(v7 + 16);
  if (v14 < 1)
  {
LABEL_22:
    if (sub_1818D0A24(a2) <= 65)
    {
      *(v7 + 24) = 1;
    }

    v17 = v14 + 1;
    *(v7 + 16) = v14 + 1;
    v18 = **v7;
    v19 = *(v7 + 32);
    v20 = 16 * v17;
    if (v19)
    {
      if (*(v18 + 512) > v19)
      {
        if (*(v18 + 496) <= v19)
        {
          if (v20 < 0x81)
          {
LABEL_29:
            result = *(v7 + 32);
LABEL_34:
            *(v7 + 32) = result;
            goto LABEL_35;
          }
        }

        else if (*(v18 + 504) <= v19 && v20 <= *(v18 + 438))
        {
          goto LABEL_29;
        }
      }

      result = sub_181929F38(**v7, *(v7 + 32), v20, 0x2004093837F09);
      if (result)
      {
        goto LABEL_34;
      }

      result = sub_181929C84(v18, v19);
      *(v7 + 32) = 0;
    }

    else
    {
      result = sub_181929E8C(**v7, v20, 0x2004093837F09);
      *(v7 + 32) = result;
      if (result)
      {
LABEL_35:
        v21 = 16 * *(v7 + 16);
        *(result + v21 - 16) = a2;
        *(*(v7 + 32) + v21 - 8) = a3;
        return result;
      }
    }

    *(v7 + 16) = 0;
    return result;
  }

  v15 = *(v7 + 32);
  v16 = *(v7 + 16);
  while (*(*v15 + 44) != *(a2 + 44) || *(*v15 + 48) != *(a2 + 48))
  {
    v15 += 16;
    if (!--v16)
    {
      goto LABEL_22;
    }
  }

  return result;
}

uint64_t sub_18196A5C4(uint64_t a1, unsigned __int8 *a2, int a3)
{
  if (**(a1 + 8))
  {
    return 1;
  }

  if (*a2 == 168)
  {
    v4 = *(a2 + 1);
    if (((*(a1 + 28) | 0x20) & v4) == 0)
    {
      v5 = *(a1 + 16);
      if (v5 >= 1)
      {
        for (i = (*(a1 + 32) + 8); ; i += 2)
        {
          v7 = *(i - 1);
          if (v7 != a2 && *(v7 + 44) == *(a2 + 11) && *(v7 + 48) == *(a2 + 12))
          {
            break;
          }

          if (!--v5)
          {
            return 1;
          }
        }

        if (!a3 || (v8 = a1, v9 = a2, v10 = sub_1818D0A24(*(i - 1)), a2 = v9, v11 = v10, a1 = v8, v11 >= 66))
        {
          ++*(a1 + 20);
          *(a2 + 1) = v4 & 0xFF7FFFDF | 0x20;
          if (*i)
          {
            *(a2 + 2) = sub_1818C7FEC(**a1, *i, 0, 0);
          }

          else
          {
            *(a2 + 2) = 0;
          }
        }
      }

      return 1;
    }
  }

  return 0;
}

uint64_t sub_18196A6E4(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v6 = a2 + 72 * a3;
  if ((*(v6 + 32) & 0x40) != 0)
  {
    return 0;
  }

  v7 = *(a1 + 4);
  if ((*(v6 + 32) & 8) != 0)
  {
    if ((v7 & 1) == 0 || *(a1 + 56) != *(v6 + 36))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v16 = v4;
  v17 = v5;
  if ((v7 & 3) == 0 || (*(a2 + 32) & 0x40) == 0 || a3 < 1)
  {
    goto LABEL_16;
  }

  v8 = a3;
  v9 = (a2 + 36);
  while (*(a1 + 56) != *v9)
  {
    v9 += 18;
    if (!--v8)
    {
      goto LABEL_16;
    }
  }

  if ((*(v9 - 1) & 0x40) != 0)
  {
    return 0;
  }

LABEL_16:
  v11 = *(v6 + 36);
  v14 = 0x300000000;
  v15 = 0;
  v13[0] = 0;
  v13[1] = sub_1818C7E14;
  v12 = sub_18196A7EC;
  if (!a4)
  {
    v12 = sub_18195A49C;
  }

  v13[2] = v12;
  v13[3] = 0;
  LODWORD(v15) = v11;
  sub_181959BA0(v13, a1);
  return WORD2(v14);
}