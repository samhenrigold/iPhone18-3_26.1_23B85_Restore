unsigned int *sub_70859C(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int (**a4)(unint64_t, unint64_t))
{
  if (a1 == a2)
  {
    return a3;
  }

  v8 = a1;
  v56 = a2;
  v9 = a2 - a1;
  v10 = a2 - a1;
  if (v10 >= 2)
  {
    v11 = (v10 - 2) >> 1;
    v12 = v11 + 1;
    v4 = &a1[v11];
    do
    {
      sub_7089FC(v8, a4, v10, v4);
      v4 -= 4;
      --v12;
    }

    while (v12);
  }

  v13 = v56;
  v60 = v8;
  if (v56 != a3)
  {
    if (v10 < 2)
    {
      v13 = v56;
      do
      {
        v9 = v9 & 0xFFFFFFFF00000000 | *v13;
        v4 = v4 & 0xFFFFFFFF00000000 | *v8;
        if ((*a4)(v9, v4))
        {
          v14 = *v13;
          v15 = *v8;
          *(v13 + 2) = *(v8 + 2);
          *v13 = v15;
          *(v8 + 2) = BYTE2(v14);
          *v8 = v14;
        }

        ++v13;
      }

      while (v13 != a3);
      goto LABEL_32;
    }

    v4 = v8 + 4;
    v48 = (v8 + 8);
    v49 = v8 + 4;
    v13 = v56;
    v50 = v9;
    v51 = a3;
    do
    {
      v5 = v5 & 0xFFFFFFFF00000000 | *v8;
      v55 = v55 & 0xFFFFFFFF00000000 | *v13;
      if ((*a4)())
      {
        v16 = *v13;
        v17 = *v8;
        *(v13 + 2) = *(v8 + 2);
        *v13 = v17;
        *(v8 + 2) = BYTE2(v16);
        *v8 = v16;
        if (v9 == 8)
        {
          v18 = v4;
          v19 = 1;
          if (((*a4)(*v4, *v8) & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v20 = (*a4)(*v4, *v48);
          if (v20)
          {
            v18 = v48;
          }

          else
          {
            v18 = v4;
          }

          if (v20)
          {
            v19 = 2;
          }

          else
          {
            v19 = 1;
          }

          if (((*a4)(*v18, *v8) & 1) == 0)
          {
LABEL_25:
            v52 = v5;
            v53 = v13;
            v21 = *v8;
            v22 = v8;
            do
            {
              v24 = v18;
              v25 = *v18;
              *(v22 + 2) = *(v18 + 2);
              *v22 = v25;
              if (((v10 - 2) >> 1) < v19)
              {
                break;
              }

              v26 = (2 * v19) | 1;
              v18 = (v60 + 4 * v26);
              v27 = 2 * v19 + 2;
              if (v27 < v10)
              {
                v57 = v57 & 0xFFFFFFFF00000000 | v18[1];
                v58 = v58 & 0xFFFFFFFF00000000 | *v18;
                if ((*a4)())
                {
                  ++v18;
                  v26 = v27;
                }
              }

              v8 = v8 & 0xFFFFFFFF00000000 | *v18;
              v4 = v4 & 0xFFFFFFFF00000000 | v21;
              v23 = (*a4)(v8, v4);
              v22 = v24;
              v19 = v26;
            }

            while (!v23);
            *v24 = v21;
            *(v24 + 2) = BYTE2(v21);
            v8 = v60;
            v5 = v52;
            v13 = v53;
            v9 = v50;
            a3 = v51;
            v4 = v49;
          }
        }
      }

      ++v13;
    }

    while (v13 != a3);
  }

LABEL_32:
  if (v10 >= 2)
  {
    v54 = v13;
    while (1)
    {
      v30 = 0;
      v59 = *v8;
      do
      {
        v35 = v8 + 4 * v30;
        v33 = (v35 + 4);
        v36 = (2 * v30) | 1;
        v37 = 2 * v30 + 2;
        if (v37 < v10)
        {
          v32 = *(v35 + 8);
          v31 = (v35 + 8);
          v4 = v4 & 0xFFFFFFFF00000000 | *(v31 - 1);
          v9 = v9 & 0xFFFFFFFF00000000 | v32;
          if ((*a4)(v4, v9))
          {
            v33 = v31;
            v30 = v37;
          }

          else
          {
            v30 = v36;
          }
        }

        else
        {
          v30 = (2 * v30) | 1;
        }

        v34 = *v33;
        *(v8 + 2) = *(v33 + 2);
        *v8 = v34;
        v8 = v33;
      }

      while (v30 <= ((v10 - 2) >> 1));
      v38 = v56 - 1;
      if (v33 == --v56)
      {
        LODWORD(v28) = v59;
        v8 = v60;
      }

      else
      {
        v40 = *v38;
        *(v33 + 2) = *(v38 + 2);
        *v33 = v40;
        v8 = v60;
        *(v38 + 2) = BYTE2(v59);
        *v38 = v59;
        v41 = (v33 - v60 + 4) >> 2;
        v29 = v41 < 2;
        v42 = v41 - 2;
        if (v29)
        {
          goto LABEL_36;
        }

        v43 = v42 >> 1;
        v44 = (v60 + 4 * (v42 >> 1));
        if (!(*a4)(*v44, *v33))
        {
          goto LABEL_36;
        }

        v28 = *v33;
        do
        {
          v45 = v44;
          v46 = *v44;
          *(v33 + 2) = *(v44 + 2);
          *v33 = v46;
          if (!v43)
          {
            break;
          }

          v43 = (v43 - 1) >> 1;
          v44 = (v60 + 4 * v43);
          v4 = v4 & 0xFFFFFFFF00000000 | *v44;
          v9 = v9 & 0xFFFFFFFF00000000 | v28;
          v33 = v45;
        }

        while (((*a4)(v4, v9) & 1) != 0);
        v33 = v45;
      }

      *v33 = v28;
      *(v33 + 2) = BYTE2(v28);
LABEL_36:
      v29 = v10-- <= 2;
      if (v29)
      {
        return v54;
      }
    }
  }

  return v13;
}

uint64_t sub_7089FC(uint64_t result, unsigned int (**a2)(unint64_t, unint64_t), uint64_t a3, unsigned int *a4)
{
  v7 = a3 - 2;
  if (a3 >= 2)
  {
    v8 = a4;
    v9 = result;
    v21 = v7 >> 1;
    if ((v7 >> 1) >= (a4 - result) >> 2)
    {
      v11 = (a4 - result) >> 1;
      v12 = v11 + 1;
      v13 = (result + 4 * (v11 + 1));
      v14 = v11 + 2;
      if (v11 + 2 < a3)
      {
        v4 = (v13 + 1);
        if ((*a2)(*v13, v13[1]))
        {
          ++v13;
          v12 = v14;
        }
      }

      result = (*a2)(*v13, *v8);
      if ((result & 1) == 0)
      {
        v19 = v9;
        v20 = *v8;
        do
        {
          v15 = v13;
          v16 = *v13;
          *(v8 + 2) = *(v13 + 2);
          *v8 = v16;
          if (v21 < v12)
          {
            break;
          }

          v17 = (2 * v12) | 1;
          v13 = (v19 + 4 * v17);
          v18 = 2 * v12 + 2;
          if (v18 < a3)
          {
            v4 = v4 & 0xFFFFFFFF00000000 | *v13;
            v9 = v9 & 0xFFFFFFFF00000000 | v13[1];
            if ((*a2)(v4, v9))
            {
              ++v13;
              v17 = v18;
            }
          }

          v5 = v5 & 0xFFFFFFFF00000000 | *v13;
          v6 = v6 & 0xFFFFFFFF00000000 | v20;
          result = (*a2)(v5, v6);
          v8 = v15;
          v12 = v17;
        }

        while (!result);
        *v15 = v20;
        *(v15 + 2) = BYTE2(v20);
      }
    }
  }

  return result;
}

BOOL sub_708B8C(uint64_t a1, int **a2)
{
  v4 = *(a1 + 8);
  v5 = sub_311A24(*a2, *(a2 + 38));
  v6 = **a1;
  if (v6 < 1 || v5 < 1)
  {
    v8 = 0;
    v9 = *a2;
    v10 = (*a2 - **a2);
    if (*v10 < 0x43u)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v11 = v6 - v5;
    if (v11 < 0)
    {
      v11 = -v11;
    }

    v8 = v11 > *(v4 + 1152);
    v9 = *a2;
    v10 = (*a2 - **a2);
    if (*v10 < 0x43u)
    {
      goto LABEL_13;
    }
  }

  v12 = v10[33];
  if (v12)
  {
    v13 = *(v9 + v12);
    goto LABEL_14;
  }

LABEL_13:
  v13 = 0;
LABEL_14:
  v14 = **(a1 + 16) - v13;
  if (v14 >= 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = -v14;
  }

  v16 = *(v4 + 1153);
  v17 = v15 > v16;
  v18 = *(*(a1 + 24) + 32);
  if (__PAIR64__(*(a2 + 18), *(a2 + 8)) != __PAIR64__(WORD2(v18), v18) || *(a2 + 38) != BYTE6(v18))
  {
    result = sub_70EE0C(v4 + 1432, a2);
    if (!result)
    {
      return result;
    }

    v21 = *a2;
    v22 = (*a2 - **a2);
    v23 = *v22;
    if (v23 < 0x2F || !v22[23])
    {
      goto LABEL_37;
    }

    v24 = *(v21 + v22[23]);
    if (v24 - 15 >= 0x21 || ((0x1C5C08009uLL >> (v24 - 15)) & 1) == 0)
    {
      v25 = v24 > 0x2B || ((1 << v24) & 0x80000001040) == 0;
      if (v25 || v23 >= 0x9B && (v26 = v22[77]) != 0 && (*(v21 + v26 + 2) & 0x20) != 0)
      {
        v17 = v24 == 44 || v15 > v16;
LABEL_37:
        if (!v17 && !v8)
        {
          return **(a1 + 40) - fabs(sub_70E16C(v4 + 1432, *(a1 + 32), a2, v20)) > *(v4 + 1160);
        }
      }
    }
  }

  return 0;
}

int **sub_708D84(int **a1, int **a2, uint64_t a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while (1)
    {
      if (!sub_70EE0C(a3 + 1432, v3))
      {
LABEL_16:
        if (v3 == a2)
        {
          return v3;
        }

        v15 = v3 + 5;
        if (v3 + 5 == a2)
        {
          return v3;
        }

        while (2)
        {
          if (sub_70EE0C(a3 + 1432, v15))
          {
            v18 = *v15;
            v19 = (*v15 - **v15);
            v20 = *v19;
            if (v20 < 0x9B)
            {
              if (v20 >= 0x2F)
              {
LABEL_29:
                v21 = v19[23];
                if (v21)
                {
                  v22 = *(v18 + v21);
                  v12 = v22 > 0x2A;
                  v23 = (1 << v22) & 0x50400000000;
                  if (!v12 && v23 != 0)
                  {
                    goto LABEL_22;
                  }
                }
              }

              v16 = *v15;
              v17 = *(v15 + 1);
              v3[4] = v15[4];
              *v3 = v16;
              *(v3 + 1) = v17;
              v3 += 5;
              goto LABEL_22;
            }

            if (!v19[77] || (*(v18 + v19[77] + 3) & 4) == 0)
            {
              goto LABEL_29;
            }
          }

LABEL_22:
          v15 += 5;
          if (v15 == a2)
          {
            return v3;
          }

          continue;
        }
      }

      v7 = *v3;
      v8 = (*v3 - **v3);
      v9 = *v8;
      if (v9 >= 0x9B)
      {
        break;
      }

      if (v9 >= 0x2F)
      {
        goto LABEL_11;
      }

LABEL_4:
      v3 += 5;
      if (v3 == a2)
      {
        return a2;
      }
    }

    if (v8[77] && (*(v7 + v8[77] + 3) & 4) != 0)
    {
      goto LABEL_16;
    }

LABEL_11:
    v10 = v8[23];
    if (v10)
    {
      v11 = *(v7 + v10);
      v12 = v11 > 0x2A;
      v13 = (1 << v11) & 0x50400000000;
      if (!v12 && v13 != 0)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_4;
  }

  return v3;
}

int **sub_708F08(int **result, int **a2, uint64_t a3)
{
  if (result != a2)
  {
    v3 = *(a3 + 32);
    while (1)
    {
      if (*(result + 8) != v3 || (*(result + 18) == WORD2(v3) ? (v4 = *(result + 38) == BYTE6(v3)) : (v4 = 0), !v4))
      {
        v5 = (*result - **result);
        if (*v5 >= 0x2Fu)
        {
          v6 = v5[23];
          if (v6)
          {
            if (!*(*result + v6))
            {
              break;
            }
          }
        }
      }

      result += 5;
      if (result == a2)
      {
        return a2;
      }
    }
  }

  return result;
}

uint64_t sub_708F80(uint64_t *a1, int **a2)
{
  v4 = *a1;
  v5 = *(a1[2] + 32);
  if (__PAIR64__(*(a2 + 18), *(a2 + 8)) == __PAIR64__(WORD2(v5), v5) && *(a2 + 38) == BYTE6(v5))
  {
    return 0;
  }

  if (fabs(sub_70E2E0(v4 + 1432, a1[1], a2)) >= *(v4 + 200))
  {
    return 0;
  }

  result = sub_70ED3C(v4 + 1432, a1[1], a2);
  if (result)
  {
    result = sub_31EE90(*v4, *(a1[1] + 32) & 0xFFFFFFFFFFFFFFLL, a2[4] & 0xFFFFFFFFFFFFFFLL);
    if (result)
    {
      v7 = *a2;
      v8 = (*a2 - **a2);
      v9 = *v8;
      if (v9 >= 0x2F && v8[23])
      {
        v10 = *(v7 + v8[23]);
        v11 = v10 > 0x2B || ((1 << v10) & 0x80000001040) == 0;
        v13 = !v11 && (v9 < 0x9B || (v12 = v8[77]) == 0 || (*(v7 + v12 + 2) & 0x20) == 0) || v10 == 44;
      }

      else
      {
        v13 = 0;
      }

      v14 = *a1[1];
      v15 = (v14 - *v14);
      v16 = *v15;
      if (v16 >= 0x2F && v15[23])
      {
        v17 = *(v14 + v15[23]);
        if (v17 > 0x2B || ((1 << v17) & 0x80000001040) == 0)
        {
          return v13 ^ (v17 == 44) ^ 1u;
        }

        if (v16 >= 0x9B && (v19 = v15[77]) != 0 && (*(v14 + v19 + 2) & 0x20) != 0)
        {
          return v13 ^ (v17 == 44) ^ 1u;
        }

        else
        {
          return v13;
        }
      }

      else
      {
        return !v13;
      }
    }
  }

  return result;
}

int **sub_709188(int **a1, int **a2)
{
  result = a2;
  if (a1 != a2)
  {
    result = a1;
    while (1)
    {
      v4 = *result;
      v5 = (*result - **result);
      v6 = *v5;
      if (*(result + 38))
      {
        if (v6 < 0x9B)
        {
          break;
        }

        if (!v5[77])
        {
          break;
        }

        v7 = *&v4[v5[77]];
        if ((v7 & 2) == 0 && (v7 & 1) == 0)
        {
          break;
        }
      }

      else
      {
        if (v6 < 0x9B)
        {
          break;
        }

        if (!v5[77])
        {
          break;
        }

        v8 = *&v4[v5[77]];
        if ((v8 & 1) == 0 && (v8 & 2) == 0)
        {
          break;
        }
      }

      v9 = v5[23];
      if (v9)
      {
        v10 = v4[v9];
        v11 = v10 > 0x2F;
        v12 = (1 << v10) & 0xA08040000000;
        if (!v11 && v12 != 0)
        {
          break;
        }
      }

      result += 5;
      if (result == a2)
      {
        return a2;
      }
    }

    if (result != a2)
    {
      for (i = result + 5; i != a2; i += 5)
      {
        v17 = *i;
        v18 = (*i - **i);
        v19 = *v18;
        if (*(i + 38))
        {
          if (v19 >= 0x9B)
          {
            if (v18[77])
            {
              v20 = *(v17 + v18[77]);
              if (v20 & 2) != 0 || (v20)
              {
                goto LABEL_35;
              }
            }
          }
        }

        else if (v19 >= 0x9B)
        {
          if (v18[77])
          {
            v21 = *(v17 + v18[77]);
            if ((v21 & 1) != 0 || (v21 & 2) != 0)
            {
LABEL_35:
              v22 = v18[23];
              if (!v22 || ((v23 = *(v17 + v22), v11 = v23 > 0x2F, v24 = (1 << v23) & 0xA08040000000, !v11) ? (v25 = v24 == 0) : (v25 = 1), v25))
              {
                v15 = *i;
                v16 = *(i + 1);
                result[4] = i[4];
                *result = v15;
                *(result + 1) = v16;
                result += 5;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

int **sub_709314(int **result, int **a2, int ***a3, unint64_t a4, __int128 *a5, int64_t a6)
{
  if (a4 >= 2)
  {
    v7 = result;
    if (a4 == 2)
    {
      v8 = a2 - 5;
      result = sub_709574(a3, a2 - 5, result);
      if (result)
      {
        v9 = *v7;
        v10 = *(v7 + 1);
        v11 = v7[4];
        v12 = v8[4];
        v13 = *(v8 + 1);
        *v7 = *v8;
        *(v7 + 1) = v13;
        v7[4] = v12;
        v8[4] = v11;
        *v8 = v9;
        *(v8 + 1) = v10;
      }
    }

    else if (a4 > 128)
    {
      v14 = a5;
      v16 = a4 >> 1;
      v17 = &result[5 * (a4 >> 1)];
      v18 = a4 - (a4 >> 1);
      if (a4 <= a6)
      {
        sub_709A48(result, v17, a3, a4 >> 1, a5);
        v21 = v14 + 40 * v16;
        result = sub_709A48(v17, a2, a3, v18, v21);
        v22 = v14 + 40 * a4;
        v23 = v21;
        while (v23 != v22)
        {
          result = sub_709574(a3, v23, v14);
          if (result)
          {
            v26 = *v23;
            v27 = *(v23 + 16);
            v7[4] = *(v23 + 32);
            *v7 = v26;
            *(v7 + 1) = v27;
            v23 += 40;
            v7 += 5;
            if (v14 == v21)
            {
LABEL_24:
              while (v23 != v22)
              {
                v30 = *v23;
                v31 = *(v23 + 16);
                v7[4] = *(v23 + 32);
                *v7 = v30;
                *(v7 + 1) = v31;
                v23 += 40;
                v7 += 5;
              }

              return result;
            }
          }

          else
          {
            v24 = *v14;
            v25 = v14[1];
            v7[4] = *(v14 + 4);
            *v7 = v24;
            *(v7 + 1) = v25;
            v14 = (v14 + 40);
            v7 += 5;
            if (v14 == v21)
            {
              goto LABEL_24;
            }
          }
        }

        while (v14 != v21)
        {
          v28 = *v14;
          v29 = v14[1];
          v7[4] = *(v14 + 4);
          *v7 = v28;
          *(v7 + 1) = v29;
          v14 = (v14 + 40);
          v7 += 5;
        }
      }

      else
      {
        sub_709314(result, v17, a3, a4 >> 1, a5, a6);
        sub_709314(v17, a2, a3, v18, v14, a6);

        return sub_709C5C(v7, v17, a2, a3, v16, v18, v14, a6);
      }
    }

    else
    {

      return sub_70974C(result, a2, a3);
    }
  }

  return result;
}

uint64_t sub_709574(int ***a1, int **a2, int **a3)
{
  v3 = **a1;
  v4 = (v3 - *v3);
  v5 = *v4;
  if (*(*a1 + 38))
  {
    if (v5 < 0x49)
    {
      goto LABEL_11;
    }

    v6 = v4[36];
    if (!v4[36])
    {
      goto LABEL_11;
    }
  }

  else if (v5 < 0x4B || (v6 = v4[37]) == 0)
  {
LABEL_11:
    v7 = 0xFFFF;
    v8 = *a2;
    v9 = (*a2 - **a2);
    v10 = *v9;
    if (*(a2 + 38))
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v7 = *(v3 + v6);
  v8 = *a2;
  v9 = (*a2 - **a2);
  v10 = *v9;
  if (*(a2 + 38))
  {
LABEL_12:
    if (v10 >= 0x4B)
    {
      v11 = v9[37];
      if (v11)
      {
        goto LABEL_14;
      }
    }

LABEL_18:
    v12 = 0xFFFF;
    if (!*(*a1 + 38))
    {
      goto LABEL_15;
    }

    goto LABEL_19;
  }

LABEL_8:
  if (v10 < 0x49)
  {
    goto LABEL_18;
  }

  v11 = v9[36];
  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_14:
  v12 = *&v8[v11];
  if (!*(*a1 + 38))
  {
LABEL_15:
    if (v5 < 0x4B)
    {
      goto LABEL_25;
    }

    v13 = v4[37];
    if (!v13)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

LABEL_19:
  if (v5 < 0x49 || (v13 = v4[36]) == 0)
  {
LABEL_25:
    v14 = 0xFFFF;
    v15 = *a3;
    v16 = (*a3 - **a3);
    v17 = *v16;
    if (*(a3 + 38))
    {
      goto LABEL_26;
    }

LABEL_22:
    if (v17 >= 0x49)
    {
      v18 = v16[36];
      if (v18)
      {
        goto LABEL_28;
      }
    }

LABEL_29:
    v19 = 0xFFFF;
    goto LABEL_30;
  }

LABEL_21:
  v14 = *(v3 + v13);
  v15 = *a3;
  v16 = (*a3 - **a3);
  v17 = *v16;
  if (!*(a3 + 38))
  {
    goto LABEL_22;
  }

LABEL_26:
  if (v17 < 0x4B)
  {
    goto LABEL_29;
  }

  v18 = v16[37];
  if (!v18)
  {
    goto LABEL_29;
  }

LABEL_28:
  v19 = *&v15[v18];
LABEL_30:
  v20 = vdup_n_s32(0x4650u);
  v21 = vadd_s32(__PAIR64__(v14, v7), v20);
  v22 = vdup_n_s32(0x8CA0u);
  v23 = vsub_s32(__PAIR64__(v19, v12), vand_s8(vbsl_s8(vcgt_u32(v22, vand_s8(v21, 0xFFFF0000FFFFLL)), v21, vadd_s32(__PAIR64__(v14, v7), vdup_n_s32(0xB9B0u))), 0xFFFF0000FFFFLL));
  v24 = vadd_s32(v23, vand_s8(vcgt_s32(v23, v20), vdup_n_s32(0xFFFF7360)));
  v25 = vadd_s32(v24, vand_s8(vcgt_s32(vdup_n_s32(0xFFFFB9B1), v24), v22));
  v26.i64[0] = v25.i32[0];
  v26.i64[1] = v25.i32[1];
  v27 = vabsq_f64(vdivq_f64(vcvtq_f64_s64(v26), vdupq_n_s64(0x4059000000000000uLL)));
  return *&vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v27, 1), v27)) & 1;
}

uint64_t sub_70974C(uint64_t result, int **a2, int ***a3)
{
  if (result == a2)
  {
    return result;
  }

  v4 = result;
  v5 = (result + 40);
  if ((result + 40) == a2)
  {
    return result;
  }

  v7 = 0;
  v8 = vdup_n_s32(0x4650u);
  v9 = vdup_n_s32(0xB9B0u);
  v10 = vdup_n_s32(0x8CA0u);
  v11 = vdup_n_s32(0xFFFF7360);
  v12 = vdup_n_s32(0xFFFFB9B1);
  v13 = result;
  v44 = vdupq_n_s64(0x4059000000000000uLL);
  while (2)
  {
    v15 = v5;
    result = sub_709574(a3, v5, v13);
    if (!result)
    {
      goto LABEL_6;
    }

    v16 = *v15;
    *v45 = *(v13 + 48);
    *&v45[14] = *(v13 + 62);
    v17 = *(v13 + 78);
    v18 = *(v13 + 79);
    v19 = v7;
    do
    {
      v27 = v4 + v19;
      v28 = *(v4 + v19 + 16);
      *(v27 + 40) = *(v4 + v19);
      *(v27 + 56) = v28;
      *(v27 + 72) = *(v4 + v19 + 32);
      if (!v19)
      {
        v14 = v4;
        goto LABEL_5;
      }

      v29 = **a3;
      v30 = (v29 - *v29);
      v31 = *v30;
      if (*(*a3 + 38))
      {
        if (v31 >= 0x49)
        {
          v32 = v30[36];
          if (v30[36])
          {
            goto LABEL_18;
          }
        }
      }

      else if (v31 >= 0x4B)
      {
        v32 = v30[37];
        if (v30[37])
        {
LABEL_18:
          v33 = *(v29 + v32);
          v34 = (v16 - *v16);
          v35 = *v34;
          if (v17)
          {
            goto LABEL_23;
          }

          goto LABEL_19;
        }
      }

      v33 = 0xFFFF;
      v34 = (v16 - *v16);
      v35 = *v34;
      if (v17)
      {
LABEL_23:
        if (v35 >= 0x4B)
        {
          v36 = v34[37];
          if (v36)
          {
            goto LABEL_25;
          }
        }

        goto LABEL_29;
      }

LABEL_19:
      if (v35 >= 0x49)
      {
        v36 = v34[36];
        if (v36)
        {
LABEL_25:
          v37 = *(v16 + v36);
          if (!*(*a3 + 38))
          {
            goto LABEL_26;
          }

          goto LABEL_30;
        }
      }

LABEL_29:
      v37 = 0xFFFF;
      if (!*(*a3 + 38))
      {
LABEL_26:
        if (v31 >= 0x4B)
        {
          v38 = v30[37];
          if (v38)
          {
            goto LABEL_32;
          }
        }

        goto LABEL_33;
      }

LABEL_30:
      if (v31 >= 0x49)
      {
        v38 = v30[36];
        if (v38)
        {
LABEL_32:
          v39 = *(v29 + v38);
          goto LABEL_34;
        }
      }

LABEL_33:
      v39 = 0xFFFF;
LABEL_34:
      result = *(v4 + v19 - 2);
      v40 = *(v27 - 40);
      v41 = (v40 - *v40);
      v42 = *v41;
      if (*(v4 + v19 - 2))
      {
        if (v42 < 0x4B)
        {
          goto LABEL_9;
        }

        v43 = v41[37];
        if (!v43)
        {
          goto LABEL_9;
        }
      }

      else if (v42 < 0x49 || (v43 = v41[36]) == 0)
      {
LABEL_9:
        v20 = 0xFFFF;
        goto LABEL_10;
      }

      v20 = *(v40 + v43);
LABEL_10:
      v21 = vadd_s32(__PAIR64__(v39, v33), v8);
      v22 = vsub_s32(__PAIR64__(v20, v37), vand_s8(vbsl_s8(vcgt_u32(v10, vand_s8(v21, 0xFFFF0000FFFFLL)), v21, vadd_s32(__PAIR64__(v39, v33), v9)), 0xFFFF0000FFFFLL));
      v23 = vadd_s32(v22, vand_s8(vcgt_s32(v22, v8), v11));
      v24 = vadd_s32(v23, vand_s8(vcgt_s32(v12, v23), v10));
      v25.i64[0] = v24.i32[0];
      v25.i64[1] = v24.i32[1];
      v26 = vabsq_f64(vdivq_f64(vcvtq_f64_s64(v25), v44));
      v19 -= 40;
    }

    while ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v26, 1), v26)).u8[0] & 1) != 0);
    v14 = v4 + v19 + 40;
LABEL_5:
    *v14 = v16;
    *(v14 + 8) = *v45;
    *(v14 + 22) = *&v45[14];
    *(v14 + 38) = v17;
    *(v14 + 39) = v18;
LABEL_6:
    v5 = v15 + 5;
    v7 += 40;
    v13 = v15;
    if (v15 + 5 != a2)
    {
      continue;
    }

    return result;
  }
}

int **sub_709A48(int **result, int **a2, int ***a3, unint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v5 = a5;
    v8 = result;
    if (a4 == 2)
    {
      v11 = a2 - 5;
      result = sub_709574(a3, a2 - 5, result);
      if (result)
      {
        v12 = *v11;
        v13 = *(v11 + 1);
        *(v5 + 32) = v11[4];
        *v5 = v12;
        *(v5 + 16) = v13;
        v14 = *v8;
        v15 = *(v8 + 1);
        v16 = v8[4];
      }

      else
      {
        v17 = *v8;
        v18 = *(v8 + 1);
        *(v5 + 32) = v8[4];
        *v5 = v17;
        *(v5 + 16) = v18;
        v14 = *v11;
        v15 = *(v11 + 1);
        v16 = v11[4];
      }

      *(v5 + 72) = v16;
      *(v5 + 56) = v15;
      *(v5 + 40) = v14;
    }

    else if (a4 == 1)
    {
      v9 = *result;
      v10 = *(result + 1);
      *(a5 + 32) = result[4];
      *a5 = v9;
      *(a5 + 16) = v10;
    }

    else if (a4 > 8)
    {
      v19 = a4 >> 1;
      v20 = 5 * (a4 >> 1);
      v21 = &result[v20];
      sub_709314(result, &result[v20], a3, v19, a5, v19);
      result = sub_709314(&v8[v20], a2, a3, a4 - v19, (v5 + v20 * 8), a4 - v19);
      v23 = &v8[v20];
      while (v23 != a2)
      {
        result = sub_709574(a3, v23, v8);
        if (result)
        {
          v26 = *v23;
          v27 = *(v23 + 1);
          *(v5 + 32) = v23[4];
          *v5 = v26;
          *(v5 + 16) = v27;
          v23 += 5;
          v5 += 40;
          if (v8 == v21)
          {
LABEL_24:
            while (v23 != a2)
            {
              v30 = *v23;
              v31 = *(v23 + 1);
              *(v5 + 32) = v23[4];
              *v5 = v30;
              *(v5 + 16) = v31;
              v23 += 5;
              v5 += 40;
            }

            return result;
          }
        }

        else
        {
          v24 = *v8;
          v25 = *(v8 + 1);
          *(v5 + 32) = v8[4];
          *v5 = v24;
          *(v5 + 16) = v25;
          v8 += 5;
          v5 += 40;
          if (v8 == v21)
          {
            goto LABEL_24;
          }
        }
      }

      while (v8 != v21)
      {
        v28 = *v8;
        v29 = *(v8 + 1);
        *(v5 + 32) = v8[4];
        *v5 = v28;
        *(v5 + 16) = v29;
        v8 += 5;
        v5 += 40;
      }
    }

    else
    {

      return sub_70A118(result, a2, a5, a3);
    }
  }

  return result;
}

uint64_t sub_709C5C(uint64_t result, int **a2, int **a3, int ***a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v69 = a6;
  if (a6)
  {
    v13 = result;
    v70 = a4;
    while (v69 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v14 = 0;
      v15 = -a5;
      while (1)
      {
        v16 = (v14 + v13);
        result = sub_709574(a4, a2, (v14 + v13));
        if (result)
        {
          break;
        }

        v14 += 5;
        v17 = __CFADD__(v15++, 1);
        a4 = v70;
        if (v17)
        {
          return result;
        }
      }

      v18 = v69;
      v66 = a7;
      v67 = a3;
      v65 = a8;
      if (-v15 >= v69)
      {
        if (v15 == -1)
        {
          v56 = v14 + v13;
          v57 = *(v14 + v13);
          v58 = *(v14 + v13 + 16);
          v73 = *(v14 + v13 + 32);
          v71 = v57;
          v72 = v58;
          v59 = *a2;
          v60 = *(a2 + 1);
          *(v56 + 4) = a2[4];
          *v56 = v59;
          *(v56 + 1) = v60;
          *a2 = v71;
          *(a2 + 1) = v72;
          a2[4] = v73;
          return result;
        }

        v23 = -v15 / 2;
        *&v71 = *v70;
        v24 = a3;
        v20 = a2;
        if (a2 != v24)
        {
          v25 = &v13[5 * v23];
          v26 = 0xCCCCCCCCCCCCCCCDLL * (v67 - a2);
          v20 = a2;
          do
          {
            v27 = &v20[5 * (v26 >> 1)];
            v28 = sub_709574(&v71, v27, (v14 + v25));
            if (v28)
            {
              v26 += ~(v26 >> 1);
            }

            else
            {
              v26 >>= 1;
            }

            if (v28)
            {
              v20 = v27 + 5;
            }
          }

          while (v26);
          v18 = v69;
          v23 = -v15 / 2;
        }

        v19 = 0xCCCCCCCCCCCCCCCDLL * (v20 - a2);
        v21 = &v13[5 * v23] + v14;
      }

      else
      {
        v19 = v69 / 2;
        v20 = &a2[5 * (v69 / 2)];
        v21 = a2;
        if ((a2 - v13) != v14)
        {
          v22 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v13 - v14) >> 3);
          v21 = v14 + v13;
          do
          {
            if (sub_709574(v70, v20, &v21[40 * (v22 >> 1)]))
            {
              v22 >>= 1;
            }

            else
            {
              v21 += 40 * (v22 >> 1) + 40;
              v22 += ~(v22 >> 1);
            }
          }

          while (v22);
          v19 = v69 / 2;
          v18 = v69;
        }

        v23 = 0xCCCCCCCCCCCCCCCDLL * ((v21 - v13 - v14) >> 3);
      }

      a5 = -(v23 + v15);
      v69 = v18 - v19;
      v29 = a2;
      v30 = v18;
      v31 = v23;
      v32 = sub_70A410(v21, v29, v20);
      v33 = v31;
      v34 = v32;
      if (v33 + v19 >= v30 - (v33 + v19) - v15)
      {
        v36 = v33;
        v37 = v19;
        a8 = v65;
        a7 = v66;
        result = sub_709C5C(v32, v20, v67, v70, a5, v69, v66, v65);
        v38 = v37;
        a5 = v36;
        v68 = v34;
        v69 = v37;
        v13 = v16;
        a2 = v21;
        a3 = v68;
        a4 = v70;
        if (!v38)
        {
          return result;
        }
      }

      else
      {
        v35 = v19;
        a8 = v65;
        a7 = v66;
        result = sub_709C5C(v14 + v13, v21, v32, v70, v33, v35, v66, v65);
        a4 = v70;
        v13 = v34;
        a2 = v20;
        a3 = v67;
        if (!v69)
        {
          return result;
        }
      }
    }

    if (a5 <= v69)
    {
      if (a2 != v13)
      {
        v47 = -a7;
        v48 = a7;
        v49 = v13;
        do
        {
          v50 = *v49;
          v51 = *(v49 + 1);
          *(v48 + 32) = v49[4];
          *v48 = v50;
          *(v48 + 16) = v51;
          v49 += 5;
          v48 += 40;
          v47 -= 40;
        }

        while (v49 != a2);
        while (a2 != a3)
        {
          result = sub_709574(a4, a2, a7);
          if (result)
          {
            v54 = *a2;
            v55 = *(a2 + 1);
            v13[4] = a2[4];
            *v13 = v54;
            *(v13 + 1) = v55;
            a2 += 5;
            v13 += 5;
            a4 = v70;
            if (v48 == a7)
            {
              return result;
            }
          }

          else
          {
            v52 = *a7;
            v53 = *(a7 + 16);
            v13[4] = *(a7 + 32);
            *v13 = v52;
            *(v13 + 1) = v53;
            a7 += 40;
            v13 += 5;
            a4 = v70;
            if (v48 == a7)
            {
              return result;
            }
          }
        }

        return memmove(v13, a7, -(a7 + v47));
      }
    }

    else if (a2 != a3)
    {
      v39 = 0;
      do
      {
        v40 = a7 + v39 * 8;
        v41 = *&a2[v39];
        v42 = *&a2[v39 + 2];
        *(v40 + 32) = a2[v39 + 4];
        *v40 = v41;
        *(v40 + 16) = v42;
        v39 += 5;
      }

      while (&a2[v39] != a3);
      v43 = a7 + v39 * 8;
      while (a2 != v13)
      {
        result = sub_709574(a4, (v43 - 40), a2 - 5);
        a4 = v70;
        if (result)
        {
          v44 = a2 - 5;
        }

        else
        {
          v44 = (v43 - 40);
        }

        v45 = v44[4];
        v46 = *(v44 + 1);
        *(a3 - 5) = *v44;
        *(a3 - 3) = v46;
        *(a3 - 1) = v45;
        a3 -= 5;
        if (result)
        {
          a2 -= 5;
        }

        else
        {
          v43 -= 40;
        }

        if (v43 == a7)
        {
          return result;
        }
      }

      if (v43 != a7)
      {
        v61 = 0x1FFFFFFFFFFFFFFBLL;
        do
        {
          v62 = *(v43 - 40);
          v63 = *(v43 - 24);
          v64 = &a3[v61];
          v64[4] = *(v43 - 8);
          *v64 = v62;
          *(v64 + 1) = v63;
          v61 -= 5;
          v43 -= 40;
        }

        while (v43 != a7);
      }
    }
  }

  return result;
}

int **sub_70A118(int **result, int **a2, uint64_t a3, int ***a4)
{
  if (result != a2)
  {
    v6 = result;
    v7 = *result;
    v8 = *(result + 1);
    *(a3 + 32) = result[4];
    *a3 = v7;
    *(a3 + 16) = v8;
    v9 = result + 5;
    if (result + 5 != a2)
    {
      v11 = 0;
      v12 = vdup_n_s32(0x4650u);
      v13 = vdup_n_s32(0xB9B0u);
      v14 = vdup_n_s32(0x8CA0u);
      v15 = vdup_n_s32(0xFFFF7360);
      v16 = vdup_n_s32(0xFFFFB9B1);
      v17 = a3;
      v50 = vdupq_n_s64(0x4059000000000000uLL);
      while (1)
      {
        v21 = v6;
        v22 = v17;
        v6 = v9;
        v17 += 40;
        result = sub_709574(a4, v9, v22);
        v18 = v17;
        if (result)
        {
          v23 = *(v22 + 16);
          *v17 = *v22;
          *(v17 + 16) = v23;
          *(v17 + 32) = *(v22 + 32);
          v18 = a3;
          if (v22 != a3)
          {
            break;
          }
        }

LABEL_5:
        v19 = *v6;
        v20 = *(v6 + 1);
        *(v18 + 32) = v6[4];
        *v18 = v19;
        *(v18 + 16) = v20;
        v9 = v6 + 5;
        v11 += 40;
        if (v6 + 5 == a2)
        {
          return result;
        }
      }

      v24 = v11;
      while (1)
      {
        v25 = **a4;
        v26 = (v25 - *v25);
        v27 = *v26;
        if (*(*a4 + 38))
        {
          if (v27 >= 0x49)
          {
            v28 = v26[36];
            if (v26[36])
            {
              goto LABEL_15;
            }
          }
        }

        else if (v27 >= 0x4B)
        {
          v28 = v26[37];
          if (v26[37])
          {
LABEL_15:
            v29 = *(v25 + v28);
            v30 = *v6;
            v31 = (*v6 - **v6);
            v32 = *v31;
            if (*(v21 + 78))
            {
              goto LABEL_20;
            }

            goto LABEL_16;
          }
        }

        v29 = 0xFFFF;
        v30 = *v6;
        v31 = (*v6 - **v6);
        v32 = *v31;
        if (*(v21 + 78))
        {
LABEL_20:
          if (v32 >= 0x4B)
          {
            v33 = v31[37];
            if (v33)
            {
              goto LABEL_22;
            }
          }

          goto LABEL_26;
        }

LABEL_16:
        if (v32 >= 0x49)
        {
          v33 = v31[36];
          if (v33)
          {
LABEL_22:
            v34 = *(v30 + v33);
            if (!*(*a4 + 38))
            {
              goto LABEL_23;
            }

            goto LABEL_27;
          }
        }

LABEL_26:
        v34 = 0xFFFF;
        if (!*(*a4 + 38))
        {
LABEL_23:
          if (v27 >= 0x4B)
          {
            v35 = v26[37];
            if (v35)
            {
              goto LABEL_29;
            }
          }

          goto LABEL_30;
        }

LABEL_27:
        if (v27 >= 0x49)
        {
          v35 = v26[36];
          if (v35)
          {
LABEL_29:
            v36 = *(v25 + v35);
            goto LABEL_31;
          }
        }

LABEL_30:
        v36 = 0xFFFF;
LABEL_31:
        v37 = a3 + v24;
        v38 = (a3 + v24 - 40);
        v39 = (*v38 - **v38);
        v40 = *v39;
        if (*(a3 + v24 - 2))
        {
          if (v40 < 0x4B)
          {
            goto LABEL_38;
          }

          v41 = v39[37];
          if (!v41)
          {
            goto LABEL_38;
          }
        }

        else if (v40 < 0x49 || (v41 = v39[36]) == 0)
        {
LABEL_38:
          v42 = 0xFFFF;
          goto LABEL_39;
        }

        v42 = *(*v38 + v41);
LABEL_39:
        v43 = vadd_s32(__PAIR64__(v36, v29), v12);
        v44 = vsub_s32(__PAIR64__(v42, v34), vand_s8(vbsl_s8(vcgt_u32(v14, vand_s8(v43, 0xFFFF0000FFFFLL)), v43, vadd_s32(__PAIR64__(v36, v29), v13)), 0xFFFF0000FFFFLL));
        v45 = vadd_s32(v44, vand_s8(vcgt_s32(v44, v12), v15));
        v46 = vadd_s32(v45, vand_s8(vcgt_s32(v16, v45), v14));
        v47.i64[0] = v46.i32[0];
        v47.i64[1] = v46.i32[1];
        v48 = vabsq_f64(vdivq_f64(vcvtq_f64_s64(v47), v50));
        if ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v48, 1), v48)).u8[0] & 1) == 0)
        {
          v18 = a3 + v24;
          goto LABEL_5;
        }

        v49 = *(a3 + v24 - 24);
        *v37 = *v38;
        *(v37 + 16) = v49;
        *(v37 + 32) = *(a3 + v24 - 8);
        v24 -= 40;
        if (!v24)
        {
          v18 = a3;
          goto LABEL_5;
        }
      }
    }
  }

  return result;
}

char *sub_70A410(char *__src, char *a2, char *a3)
{
  v4 = a3;
  v5 = a2 - __src;
  if (a2 != __src)
  {
    v6 = a3 - a2;
    if (a3 == a2)
    {
      return __src;
    }

    else if (__src + 40 == a2)
    {
      v32 = *__src;
      v35 = *(__src + 1);
      v38 = *(__src + 4);
      v7 = __src;
      memmove(__src, __src + 40, v6);
      v4 = &v7[v6];
      *v4 = v32;
      *(v4 + 1) = v35;
      *(v4 + 4) = v38;
    }

    else if (a2 + 40 == a3)
    {
      v4 = __src + 40;
      v33 = *(a3 - 40);
      v36 = *(a3 - 24);
      v39 = *(a3 - 1);
      v8 = a3 - 40 - __src;
      if (a3 - 40 != __src)
      {
        v9 = __src;
        memmove(__src + 40, __src, v8);
        __src = v9;
      }

      *__src = v33;
      *(__src + 1) = v36;
      *(__src + 4) = v39;
    }

    else
    {
      v10 = 0xCCCCCCCCCCCCCCCDLL * (v6 >> 3);
      if (0xCCCCCCCCCCCCCCCDLL * (v5 >> 3) == v10)
      {
        v11 = __src + 40;
        v12 = a2 + 40;
        do
        {
          v13 = *(v11 - 40);
          v14 = *(v11 - 24);
          v15 = *(v11 - 1);
          v16 = *(v12 - 1);
          v17 = *(v12 - 24);
          *(v11 - 40) = *(v12 - 40);
          *(v11 - 24) = v17;
          *(v11 - 1) = v16;
          *(v12 - 1) = v15;
          *(v12 - 24) = v14;
          *(v12 - 40) = v13;
          if (v11 == a2)
          {
            break;
          }

          v11 += 40;
          v18 = v12 == a3;
          v12 += 40;
        }

        while (!v18);
        return a2;
      }

      else
      {
        v19 = 0xCCCCCCCCCCCCCCCDLL * (v5 >> 3);
        do
        {
          v20 = v19;
          v19 = v10;
          v10 = v20 % v10;
        }

        while (v10);
        v21 = &__src[40 * v19];
        do
        {
          v22 = *(v21 - 40);
          v23 = *(v21 - 24);
          v24 = *(v21 - 1);
          v21 -= 40;
          v34 = v22;
          v37 = v23;
          v40 = v24;
          v25 = &v21[v5];
          v26 = v21;
          do
          {
            v27 = v25;
            v28 = *v25;
            v29 = *(v25 + 1);
            *(v26 + 4) = *(v25 + 4);
            *v26 = v28;
            *(v26 + 1) = v29;
            v30 = (a3 - v25);
            v25 += 8 * (v5 >> 3);
            if (v5 >= v30)
            {
              v25 = (a2 - v30);
            }

            v26 = v27;
          }

          while (v25 != v21);
          *(v27 + 4) = v40;
          *v27 = v34;
          *(v27 + 1) = v37;
        }

        while (v21 != __src);
        return &__src[v6];
      }
    }
  }

  return v4;
}

void sub_70A610(int **result, int **a2, double *a3, unint64_t a4, __int128 *a5, int64_t a6, __n128 a7)
{
  if (a4 >= 2)
  {
    v9 = result;
    if (a4 == 2)
    {
      v10 = a2 - 5;
      if (sub_70A8E8(a3, a2 - 5, result))
      {
        v11 = *v9;
        v12 = *(v9 + 16);
        v13 = *(v9 + 32);
        v14 = *(a2 - 1);
        v15 = *(a2 - 3);
        *v9 = *v10;
        *(v9 + 16) = v15;
        *(v9 + 32) = v14;
        *(a2 - 1) = v13;
        *v10 = v11;
        *(a2 - 3) = v12;
      }
    }

    else if (a4 > 128)
    {
      v28 = a5;
      v29 = a4 >> 1;
      v30 = &result[5 * (a4 >> 1)];
      v31 = a4 - (a4 >> 1);
      if (a4 <= a6)
      {
        v34 = sub_70ACC0(result, v30, a3, a4 >> 1, a5, a7);
        v35 = v28 + 40 * v29;
        sub_70ACC0(v30, a2, a3, v31, v35, v34);
        v36 = v28 + 40 * a4;
        v37 = v35;
        while (v37 != v36)
        {
          if (sub_70A8E8(a3, v37, v28))
          {
            v40 = *v37;
            v41 = *(v37 + 16);
            *(v9 + 32) = *(v37 + 32);
            *v9 = v40;
            *(v9 + 16) = v41;
            v37 += 40;
            v9 += 40;
            if (v28 == v35)
            {
LABEL_32:
              while (v37 != v36)
              {
                v44 = *v37;
                v45 = *(v37 + 16);
                *(v9 + 32) = *(v37 + 32);
                *v9 = v44;
                *(v9 + 16) = v45;
                v37 += 40;
                v9 += 40;
              }

              return;
            }
          }

          else
          {
            v38 = *v28;
            v39 = v28[1];
            *(v9 + 32) = *(v28 + 4);
            *v9 = v38;
            *(v9 + 16) = v39;
            v28 = (v28 + 40);
            v9 += 40;
            if (v28 == v35)
            {
              goto LABEL_32;
            }
          }
        }

        while (v28 != v35)
        {
          v42 = *v28;
          v43 = v28[1];
          *(v9 + 32) = *(v28 + 4);
          *v9 = v42;
          *(v9 + 16) = v43;
          v28 = (v28 + 40);
          v9 += 40;
        }
      }

      else
      {
        sub_70A610(result, v30, a3, a4 >> 1, a5, a6);
        sub_70A610(v30, a2, a3, v31, v28, a6);

        sub_70AF5C(v9, v30, a2, a3, v29, v31, v28, a6);
      }
    }

    else if (result != a2)
    {
      v16 = result + 5;
      if (result + 5 != a2)
      {
        v17 = 0;
        v18 = result;
        do
        {
          v22 = v18;
          v18 = v16;
          if (sub_70A8E8(a3, v16, v22))
          {
            v23 = *v18;
            v24 = *(v18 + 1);
            v48 = v18[4];
            v46 = v23;
            v47 = v24;
            v25 = v17;
            do
            {
              v26 = v9 + v25;
              v27 = *(v9 + v25 + 16);
              *(v26 + 40) = *(v9 + v25);
              *(v26 + 56) = v27;
              *(v26 + 72) = *(v9 + v25 + 32);
              if (!v25)
              {
                v19 = v9;
                goto LABEL_11;
              }

              v25 -= 40;
            }

            while (sub_70A8E8(a3, &v46, (v25 + v9)));
            v19 = v9 + v25 + 40;
LABEL_11:
            v20 = v46;
            v21 = v47;
            *(v19 + 32) = v48;
            *v19 = v20;
            *(v19 + 16) = v21;
          }

          v16 = v18 + 5;
          v17 += 40;
        }

        while (v18 + 5 != a2);
      }
    }
  }
}

BOOL sub_70A8E8(double *a1, int **a2, int **a3)
{
  v3 = *a2;
  v4 = *(a2 + 38);
  v5 = (*a2 - **a2);
  v6 = *v5;
  if (*(a2 + 38))
  {
    if (v6 >= 0x9B)
    {
      v7 = v5[77];
      if (v5[77])
      {
        v8 = 2;
LABEL_8:
        v9 = (*(v3 + v7) & v8) != 0;
        goto LABEL_10;
      }
    }
  }

  else if (v6 >= 0x9B)
  {
    v7 = v5[77];
    if (v5[77])
    {
      v8 = 1;
      goto LABEL_8;
    }
  }

  v9 = 0;
LABEL_10:
  v10 = *a3;
  v11 = *(a3 + 38);
  v12 = (*a3 - **a3);
  v13 = *v12;
  if (*(a3 + 38))
  {
    if (v13 >= 0x9B && v12[77])
    {
      if (v9 == ((*(v10 + v12[77]) & 2) != 0))
      {
        goto LABEL_14;
      }

LABEL_38:
      if (*(a2 + 38))
      {
        if (v6 >= 0x9B && v5[77])
        {
          return (*(v3 + v5[77]) & 2) != 0;
        }
      }

      else if (v6 >= 0x9B && v5[77])
      {
        return (*(v3 + v5[77]) & 1) != 0;
      }

      return 0;
    }

    goto LABEL_37;
  }

  if (v13 < 0x9B || !v12[77])
  {
LABEL_37:
    if (v9)
    {
      goto LABEL_38;
    }

    goto LABEL_14;
  }

  if (v9 != ((*(v10 + v12[77]) & 1) != 0))
  {
    goto LABEL_38;
  }

LABEL_14:
  if (v6 < 0x2F || !v5[23] || ((v14 = *(v3 + v5[23]), v15 = v14 > 0x2D, v16 = (1 << v14) & 0x208040000000, !v15) ? (v17 = v16 == 0) : (v17 = 1), v17))
  {
    if (v13 <= 0x2E)
    {
      v23 = 0;
      if (v6 < 0x2F)
      {
        goto LABEL_32;
      }

      goto LABEL_43;
    }

    v18 = v12[23];
    if (!v12[23])
    {
      goto LABEL_31;
    }

    v19 = 0;
  }

  else
  {
    if (v13 <= 0x2E)
    {
      return 0;
    }

    v18 = v12[23];
    if (!v12[23])
    {
      return v18 & 1;
    }

    v19 = 1;
  }

  v20 = *(v10 + v18);
  v15 = v20 > 0x2D;
  v21 = (1 << v20) & 0x208040000000;
  if (!v15 && v21 != 0)
  {
    if (v19)
    {
      goto LABEL_31;
    }

LABEL_97:
    v44 = *(v10 + v18);
    if (v44 < 0x2E)
    {
      return (0x208040000000uLL >> v44) & 1;
    }

    return 0;
  }

  if (v19)
  {
    goto LABEL_97;
  }

LABEL_31:
  v23 = 1;
  if (v6 < 0x2F)
  {
LABEL_32:
    LODWORD(v24) = 0;
    goto LABEL_45;
  }

LABEL_43:
  v24 = v5[23];
  if (v5[23])
  {
    LODWORD(v24) = *(v3 + v24) == 47;
  }

LABEL_45:
  if (!v23 || !v12[23])
  {
    if ((v24 & 1) == 0)
    {
      goto LABEL_50;
    }

    return 0;
  }

  v18 = *(v10 + v12[23]) == 47;
  if ((v24 ^ v18))
  {
    return v18 & 1;
  }

LABEL_50:
  v26 = **a1;
  v27 = (v26 - *v26);
  v28 = *v27;
  if (*(*a1 + 38))
  {
    if (v28 < 0x49)
    {
      goto LABEL_63;
    }

    v29 = v27[36];
    if (!v27[36])
    {
      goto LABEL_63;
    }
  }

  else if (v28 < 0x4B || (v29 = v27[37]) == 0)
  {
LABEL_63:
    v30 = -1;
    if (v4)
    {
      goto LABEL_64;
    }

LABEL_60:
    if (v6 >= 0x49)
    {
      v31 = v5[36];
      if (v31)
      {
        goto LABEL_66;
      }
    }

    goto LABEL_67;
  }

  v30 = *(v26 + v29);
  if (!v4)
  {
    goto LABEL_60;
  }

LABEL_64:
  if (v6 >= 0x4B)
  {
    v31 = v5[37];
    if (v31)
    {
LABEL_66:
      v32 = *(v3 + v31);
      goto LABEL_68;
    }
  }

LABEL_67:
  v32 = 0xFFFF;
LABEL_68:
  v33 = v30 + 18000;
  if (((v30 + 18000) >> 5) >= 0x465u)
  {
    v33 = v30 - 18000;
  }

  v34 = v32 - v33;
  if (v34 > 18000)
  {
    v34 -= 36000;
  }

  if (v34 < -17999)
  {
    v34 += 36000;
  }

  v35 = v34;
  if (*(*a1 + 38))
  {
    if (v28 < 0x49)
    {
      goto LABEL_84;
    }

    v36 = v27[36];
    if (!v27[36])
    {
      goto LABEL_84;
    }
  }

  else if (v28 < 0x4B || (v36 = v27[37]) == 0)
  {
LABEL_84:
    v37 = -1;
    v38 = v35 / 100.0;
    if (v11)
    {
      goto LABEL_85;
    }

LABEL_81:
    if (v13 >= 0x49)
    {
      v39 = v12[36];
      if (v39)
      {
        goto LABEL_87;
      }
    }

LABEL_88:
    v40 = 0xFFFF;
    goto LABEL_89;
  }

  v37 = *(v26 + v36);
  v38 = v35 / 100.0;
  if (!v11)
  {
    goto LABEL_81;
  }

LABEL_85:
  if (v13 < 0x4B)
  {
    goto LABEL_88;
  }

  v39 = v12[37];
  if (!v39)
  {
    goto LABEL_88;
  }

LABEL_87:
  v40 = *(v10 + v39);
LABEL_89:
  v41 = v37 + 18000;
  v42 = v37 - 18000;
  if ((v41 >> 5) < 0x465u)
  {
    v42 = v41;
  }

  v43 = v40 - v42;
  if (v43 > 18000)
  {
    v43 -= 36000;
  }

  if (v43 < -17999)
  {
    v43 += 36000;
  }

  return vabdd_f64(v38, a1[1]) < vabdd_f64(v43 / 100.0, a1[1]);
}

__n128 sub_70ACC0(uint64_t a1, uint64_t a2, double *a3, unint64_t a4, uint64_t a5, __n128 result)
{
  if (a4)
  {
    v6 = a5;
    v9 = a1;
    if (a4 == 2)
    {
      v11 = a2 - 40;
      if (sub_70A8E8(a3, (a2 - 40), a1))
      {
        v12 = *v11;
        v13 = *(v11 + 16);
        *(v6 + 32) = *(v11 + 32);
        *v6 = v12;
        *(v6 + 16) = v13;
        result = *v9;
        v14 = *(v9 + 16);
        v15 = *(v9 + 32);
      }

      else
      {
        v26 = *v9;
        v27 = *(v9 + 16);
        *(v6 + 32) = *(v9 + 32);
        *v6 = v26;
        *(v6 + 16) = v27;
        result = *v11;
        v14 = *(v11 + 16);
        v15 = *(v11 + 32);
      }

      *(v6 + 72) = v15;
      *(v6 + 56) = v14;
      *(v6 + 40) = result;
    }

    else if (a4 == 1)
    {
      result = *a1;
      v10 = *(a1 + 16);
      *(a5 + 32) = *(a1 + 32);
      *a5 = result;
      *(a5 + 16) = v10;
    }

    else if (a4 > 8)
    {
      v28 = a4 >> 1;
      v29 = 40 * (a4 >> 1);
      v30 = v29 + a1;
      sub_70A610(a1, v29 + a1, a3, v28, a5, v28);
      sub_70A610(v29 + v9, a2, a3, a4 - v28, (v6 + v29), a4 - v28);
      v32 = v29 + v9;
      while (v32 != a2)
      {
        if (sub_70A8E8(a3, v32, v9))
        {
          result = *v32;
          v34 = *(v32 + 16);
          *(v6 + 32) = *(v32 + 32);
          *v6 = result;
          *(v6 + 16) = v34;
          v32 += 40;
          v6 += 40;
          if (v9 == v30)
          {
LABEL_30:
            while (v32 != a2)
            {
              result = *v32;
              v36 = *(v32 + 16);
              *(v6 + 32) = *(v32 + 32);
              *v6 = result;
              *(v6 + 16) = v36;
              v32 += 40;
              v6 += 40;
            }

            return result;
          }
        }

        else
        {
          result = *v9;
          v33 = *(v9 + 16);
          *(v6 + 32) = *(v9 + 32);
          *v6 = result;
          *(v6 + 16) = v33;
          v9 += 40;
          v6 += 40;
          if (v9 == v30)
          {
            goto LABEL_30;
          }
        }
      }

      while (v9 != v30)
      {
        result = *v9;
        v35 = *(v9 + 16);
        *(v6 + 32) = *(v9 + 32);
        *v6 = result;
        *(v6 + 16) = v35;
        v9 += 40;
        v6 += 40;
      }
    }

    else if (a1 != a2)
    {
      result = *a1;
      v16 = *(a1 + 16);
      *(a5 + 32) = *(a1 + 32);
      *a5 = result;
      *(a5 + 16) = v16;
      v17 = a1 + 40;
      if (a1 + 40 != a2)
      {
        v18 = 0;
        v19 = a5;
        do
        {
          v21 = v19;
          v19 += 40;
          v22 = v19;
          if (sub_70A8E8(a3, v17, v21))
          {
            v23 = *(v21 + 16);
            *v19 = *v21;
            *(v19 + 16) = v23;
            *(v19 + 32) = *(v21 + 32);
            v22 = v6;
            if (v21 != v6)
            {
              v24 = v18;
              while (1)
              {
                v22 = v6 + v24;
                if (!sub_70A8E8(a3, v17, (v6 + v24 - 40)))
                {
                  break;
                }

                v25 = *(v6 + v24 - 24);
                *v22 = *(v6 + v24 - 40);
                *(v22 + 16) = v25;
                *(v22 + 32) = *(v6 + v24 - 8);
                v24 -= 40;
                if (!v24)
                {
                  v22 = v6;
                  break;
                }
              }
            }
          }

          result = *v17;
          v20 = *(v17 + 16);
          *(v22 + 32) = *(v17 + 32);
          *v22 = result;
          *(v22 + 16) = v20;
          v17 += 40;
          v18 += 40;
        }

        while (v17 != a2);
      }
    }
  }

  return result;
}

unint64_t sub_70AF5C(unint64_t result, int **a2, int **a3, double *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v69 = a6;
  if (a6)
  {
    v13 = result;
    v70 = a4;
    while (v69 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v14 = 0;
      v15 = -a5;
      while (1)
      {
        v16 = (v14 + v13);
        result = sub_70A8E8(a4, a2, (v14 + v13));
        if (result)
        {
          break;
        }

        v14 += 5;
        v17 = __CFADD__(v15++, 1);
        a4 = v70;
        if (v17)
        {
          return result;
        }
      }

      v18 = v69;
      v66 = a7;
      v67 = a3;
      v65 = a8;
      if (-v15 >= v69)
      {
        if (v15 == -1)
        {
          v56 = v14 + v13;
          v57 = *(v14 + v13);
          v58 = *(v14 + v13 + 16);
          v73 = *(v14 + v13 + 32);
          v71 = v57;
          v72 = v58;
          v59 = *a2;
          v60 = *(a2 + 1);
          *(v56 + 4) = a2[4];
          *v56 = v59;
          *(v56 + 1) = v60;
          *a2 = v71;
          *(a2 + 1) = v72;
          a2[4] = v73;
          return result;
        }

        v23 = -v15 / 2;
        v71 = *v70;
        v24 = a3;
        v20 = a2;
        if (a2 != v24)
        {
          v25 = &v13[5 * v23];
          v26 = 0xCCCCCCCCCCCCCCCDLL * (v67 - a2);
          v20 = a2;
          do
          {
            v27 = &v20[5 * (v26 >> 1)];
            v28 = sub_70A8E8(&v71, v27, (v14 + v25));
            if (v28)
            {
              v26 += ~(v26 >> 1);
            }

            else
            {
              v26 >>= 1;
            }

            if (v28)
            {
              v20 = v27 + 5;
            }
          }

          while (v26);
          v18 = v69;
          v23 = -v15 / 2;
        }

        v19 = 0xCCCCCCCCCCCCCCCDLL * (v20 - a2);
        v21 = &v13[5 * v23] + v14;
      }

      else
      {
        v19 = v69 / 2;
        v20 = &a2[5 * (v69 / 2)];
        v21 = a2;
        if ((a2 - v13) != v14)
        {
          v22 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v13 - v14) >> 3);
          v21 = v14 + v13;
          do
          {
            if (sub_70A8E8(v70, v20, &v21[40 * (v22 >> 1)]))
            {
              v22 >>= 1;
            }

            else
            {
              v21 += 40 * (v22 >> 1) + 40;
              v22 += ~(v22 >> 1);
            }
          }

          while (v22);
          v19 = v69 / 2;
          v18 = v69;
        }

        v23 = 0xCCCCCCCCCCCCCCCDLL * ((v21 - v13 - v14) >> 3);
      }

      a5 = -(v23 + v15);
      v69 = v18 - v19;
      v29 = a2;
      v30 = v18;
      v31 = v23;
      v32 = sub_70A410(v21, v29, v20);
      v33 = v31;
      v34 = v32;
      if (v33 + v19 >= v30 - (v33 + v19) - v15)
      {
        v36 = v33;
        v37 = v19;
        a8 = v65;
        a7 = v66;
        result = sub_70AF5C(v32, v20, v67, v70, a5, v69, v66, v65);
        v38 = v37;
        a5 = v36;
        v68 = v34;
        v69 = v37;
        v13 = v16;
        a2 = v21;
        a3 = v68;
        a4 = v70;
        if (!v38)
        {
          return result;
        }
      }

      else
      {
        v35 = v19;
        a8 = v65;
        a7 = v66;
        result = sub_70AF5C(v14 + v13, v21, v32, v70, v33, v35, v66, v65);
        a4 = v70;
        v13 = v34;
        a2 = v20;
        a3 = v67;
        if (!v69)
        {
          return result;
        }
      }
    }

    if (a5 <= v69)
    {
      if (a2 != v13)
      {
        v47 = -a7;
        v48 = a7;
        v49 = v13;
        do
        {
          v50 = *v49;
          v51 = *(v49 + 1);
          *(v48 + 32) = v49[4];
          *v48 = v50;
          *(v48 + 16) = v51;
          v49 += 5;
          v48 += 40;
          v47 -= 40;
        }

        while (v49 != a2);
        while (a2 != a3)
        {
          result = sub_70A8E8(a4, a2, a7);
          if (result)
          {
            v54 = *a2;
            v55 = *(a2 + 1);
            v13[4] = a2[4];
            *v13 = v54;
            *(v13 + 1) = v55;
            a2 += 5;
            v13 += 5;
            a4 = v70;
            if (v48 == a7)
            {
              return result;
            }
          }

          else
          {
            v52 = *a7;
            v53 = *(a7 + 16);
            v13[4] = *(a7 + 32);
            *v13 = v52;
            *(v13 + 1) = v53;
            a7 += 40;
            v13 += 5;
            a4 = v70;
            if (v48 == a7)
            {
              return result;
            }
          }
        }

        return memmove(v13, a7, -(a7 + v47));
      }
    }

    else if (a2 != a3)
    {
      v39 = 0;
      do
      {
        v40 = a7 + v39 * 8;
        v41 = *&a2[v39];
        v42 = *&a2[v39 + 2];
        *(v40 + 32) = a2[v39 + 4];
        *v40 = v41;
        *(v40 + 16) = v42;
        v39 += 5;
      }

      while (&a2[v39] != a3);
      v43 = a7 + v39 * 8;
      while (a2 != v13)
      {
        result = sub_70A8E8(a4, (v43 - 40), a2 - 5);
        a4 = v70;
        if (result)
        {
          v44 = a2 - 5;
        }

        else
        {
          v44 = (v43 - 40);
        }

        v45 = v44[4];
        v46 = *(v44 + 1);
        *(a3 - 5) = *v44;
        *(a3 - 3) = v46;
        *(a3 - 1) = v45;
        a3 -= 5;
        if (result)
        {
          a2 -= 5;
        }

        else
        {
          v43 -= 40;
        }

        if (v43 == a7)
        {
          return result;
        }
      }

      if (v43 != a7)
      {
        v61 = 0x1FFFFFFFFFFFFFFBLL;
        do
        {
          v62 = *(v43 - 40);
          v63 = *(v43 - 24);
          v64 = &a3[v61];
          v64[4] = *(v43 - 8);
          *v64 = v62;
          *(v64 + 1) = v63;
          v61 -= 5;
          v43 -= 40;
        }

        while (v43 != a7);
      }
    }
  }

  return result;
}

uint64_t *sub_70B418(void *a1, void *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = __ROR8__(*a2, 32);
  v6 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) >> 33));
  v7 = v6 ^ (v6 >> 33);
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_31;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6 ^ (v6 >> 33);
    if (v7 >= *&v8)
    {
      v10 = v7 % *&v8;
    }
  }

  else
  {
    v10 = v7 & (*&v8 - 1);
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v15 = v12[1];
      if (v15 == v7)
      {
        if (*(v12 + 4) == v4 && *(v12 + 5) == HIDWORD(v4))
        {
          return v12;
        }
      }

      else if ((v15 & (*&v8 - 1)) != v10)
      {
        goto LABEL_31;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v7)
    {
      break;
    }

    if (v13 >= *&v8)
    {
      v13 %= *&v8;
    }

    if (v13 != v10)
    {
      goto LABEL_31;
    }

LABEL_12:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_31;
    }
  }

  if (*(v12 + 4) != v4 || *(v12 + 5) != HIDWORD(v4))
  {
    goto LABEL_12;
  }

  return v12;
}

void sub_70B794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_302964(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_70B7A8(void *a1, void *a2, void *a3)
{
  v3 = *a2;
  v4 = __ROR8__(*a2, 32);
  v5 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v4 ^ (v4 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v4 ^ (v4 >> 33))) >> 33));
  v6 = v5 ^ (v5 >> 33);
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_31;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v5 ^ (v5 >> 33);
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v14 = v11[1];
      if (v14 == v6)
      {
        if (*(v11 + 4) == v3 && *(v11 + 5) == HIDWORD(v3))
        {
          return v11;
        }
      }

      else if ((v14 & (*&v7 - 1)) != v9)
      {
        goto LABEL_31;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v12 >= *&v7)
    {
      v12 %= *&v7;
    }

    if (v12 != v9)
    {
      goto LABEL_31;
    }

LABEL_12:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_31;
    }
  }

  if (*(v11 + 4) != v3 || *(v11 + 5) != HIDWORD(v3))
  {
    goto LABEL_12;
  }

  return v11;
}

BOOL sub_70BB20(uint64_t a1, int **a2)
{
  v4 = *(a1 + 8);
  v5 = sub_311A24(*a2, *(a2 + 38));
  v6 = **a1;
  if (v6 < 1 || v5 < 1)
  {
    v8 = 0;
    v9 = *a2;
    v10 = (*a2 - **a2);
    if (*v10 < 0x43u)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v11 = v6 - v5;
    if (v11 < 0)
    {
      v11 = -v11;
    }

    v8 = v11 > *(v4 + 1152);
    v9 = *a2;
    v10 = (*a2 - **a2);
    if (*v10 < 0x43u)
    {
      goto LABEL_13;
    }
  }

  v12 = v10[33];
  if (v12)
  {
    v13 = *(v9 + v12);
    goto LABEL_14;
  }

LABEL_13:
  v13 = 0;
LABEL_14:
  v14 = **(a1 + 16) - v13;
  if (v14 >= 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = -v14;
  }

  v16 = *(v4 + 1153);
  v17 = v15 > v16;
  v18 = *(*(a1 + 24) + 32);
  if (__PAIR64__(*(a2 + 18), *(a2 + 8)) != __PAIR64__(WORD2(v18), v18) || *(a2 + 38) != BYTE6(v18))
  {
    result = sub_712D18(v4 + 1432, a2);
    if (!result)
    {
      return result;
    }

    v21 = *a2;
    v22 = (*a2 - **a2);
    v23 = *v22;
    if (v23 < 0x2F || !v22[23])
    {
      goto LABEL_37;
    }

    v24 = *(v21 + v22[23]);
    if (v24 - 15 >= 0x21 || ((0x1C5C08009uLL >> (v24 - 15)) & 1) == 0)
    {
      v25 = v24 > 0x2B || ((1 << v24) & 0x80000001040) == 0;
      if (v25 || v23 >= 0x9B && (v26 = v22[77]) != 0 && (*(v21 + v26 + 2) & 0x20) != 0)
      {
        v17 = v24 == 44 || v15 > v16;
LABEL_37:
        if (!v17 && !v8)
        {
          return **(a1 + 40) - fabs(sub_70E16C(v4 + 1432, *(a1 + 32), a2, v20)) > *(v4 + 1160);
        }
      }
    }
  }

  return 0;
}

int **sub_70BD18(int **a1, int **a2, uint64_t a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while (1)
    {
      if (!sub_712D18(a3 + 1432, v3))
      {
LABEL_16:
        if (v3 == a2)
        {
          return v3;
        }

        v15 = v3 + 5;
        if (v3 + 5 == a2)
        {
          return v3;
        }

        while (2)
        {
          if (sub_712D18(a3 + 1432, v15))
          {
            v18 = *v15;
            v19 = (*v15 - **v15);
            v20 = *v19;
            if (v20 < 0x9B)
            {
              if (v20 >= 0x2F)
              {
LABEL_29:
                v21 = v19[23];
                if (v21)
                {
                  v22 = *(v18 + v21);
                  v12 = v22 > 0x2A;
                  v23 = (1 << v22) & 0x50400000000;
                  if (!v12 && v23 != 0)
                  {
                    goto LABEL_22;
                  }
                }
              }

              v16 = *v15;
              v17 = *(v15 + 1);
              v3[4] = v15[4];
              *v3 = v16;
              *(v3 + 1) = v17;
              v3 += 5;
              goto LABEL_22;
            }

            if (!v19[77] || (*(v18 + v19[77] + 3) & 4) == 0)
            {
              goto LABEL_29;
            }
          }

LABEL_22:
          v15 += 5;
          if (v15 == a2)
          {
            return v3;
          }

          continue;
        }
      }

      v7 = *v3;
      v8 = (*v3 - **v3);
      v9 = *v8;
      if (v9 >= 0x9B)
      {
        break;
      }

      if (v9 >= 0x2F)
      {
        goto LABEL_11;
      }

LABEL_4:
      v3 += 5;
      if (v3 == a2)
      {
        return a2;
      }
    }

    if (v8[77] && (*(v7 + v8[77] + 3) & 4) != 0)
    {
      goto LABEL_16;
    }

LABEL_11:
    v10 = v8[23];
    if (v10)
    {
      v11 = *(v7 + v10);
      v12 = v11 > 0x2A;
      v13 = (1 << v11) & 0x50400000000;
      if (!v12 && v13 != 0)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_4;
  }

  return v3;
}

uint64_t sub_70BE9C(uint64_t *a1, int **a2)
{
  v4 = *a1;
  v5 = *(a1[2] + 32);
  if (__PAIR64__(*(a2 + 18), *(a2 + 8)) == __PAIR64__(WORD2(v5), v5) && *(a2 + 38) == BYTE6(v5))
  {
    return 0;
  }

  if (fabs(sub_70E2E0(v4 + 1432, a1[1], a2)) >= *(v4 + 200))
  {
    return 0;
  }

  result = sub_71395C(v4 + 1432, a1[1], a2);
  if (result)
  {
    result = sub_31EE90(*v4, *(a1[1] + 32) & 0xFFFFFFFFFFFFFFLL, a2[4] & 0xFFFFFFFFFFFFFFLL);
    if (result)
    {
      v7 = *a2;
      v8 = (*a2 - **a2);
      v9 = *v8;
      if (v9 >= 0x2F && v8[23])
      {
        v10 = *(v7 + v8[23]);
        v11 = v10 > 0x2B || ((1 << v10) & 0x80000001040) == 0;
        v13 = !v11 && (v9 < 0x9B || (v12 = v8[77]) == 0 || (*(v7 + v12 + 2) & 0x20) == 0) || v10 == 44;
      }

      else
      {
        v13 = 0;
      }

      v14 = *a1[1];
      v15 = (v14 - *v14);
      v16 = *v15;
      if (v16 >= 0x2F && v15[23])
      {
        v17 = *(v14 + v15[23]);
        if (v17 > 0x2B || ((1 << v17) & 0x80000001040) == 0)
        {
          return v13 ^ (v17 == 44) ^ 1u;
        }

        if (v16 >= 0x9B && (v19 = v15[77]) != 0 && (*(v14 + v19 + 2) & 0x20) != 0)
        {
          return v13 ^ (v17 == 44) ^ 1u;
        }

        else
        {
          return v13;
        }
      }

      else
      {
        return !v13;
      }
    }
  }

  return result;
}

int **sub_70C0A4(int **result, int **a2, int ***a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    v7 = result;
    if (a4 == 2)
    {
      v8 = a2 - 5;
      result = sub_709574(a3, a2 - 5, result);
      if (result)
      {
        v9 = *v7;
        v10 = *(v7 + 1);
        v11 = v7[4];
        v12 = v8[4];
        v13 = *(v8 + 1);
        *v7 = *v8;
        *(v7 + 1) = v13;
        v7[4] = v12;
        v8[4] = v11;
        *v8 = v9;
        *(v8 + 1) = v10;
      }
    }

    else if (a4 > 128)
    {
      v14 = a5;
      v16 = a4 >> 1;
      v17 = &result[5 * (a4 >> 1)];
      v18 = a4 - (a4 >> 1);
      if (a4 <= a6)
      {
        sub_70C304(result, v17, a3, a4 >> 1, a5);
        v21 = v14 + 40 * v16;
        result = sub_70C304(v17, a2, a3, v18, v21);
        v22 = v14 + 40 * a4;
        v23 = v21;
        while (v23 != v22)
        {
          result = sub_709574(a3, v23, v14);
          if (result)
          {
            v26 = *v23;
            v27 = *(v23 + 16);
            v7[4] = *(v23 + 32);
            *v7 = v26;
            *(v7 + 1) = v27;
            v23 += 40;
            v7 += 5;
            if (v14 == v21)
            {
LABEL_24:
              while (v23 != v22)
              {
                v30 = *v23;
                v31 = *(v23 + 16);
                v7[4] = *(v23 + 32);
                *v7 = v30;
                *(v7 + 1) = v31;
                v23 += 40;
                v7 += 5;
              }

              return result;
            }
          }

          else
          {
            v24 = *v14;
            v25 = *(v14 + 16);
            v7[4] = *(v14 + 32);
            *v7 = v24;
            *(v7 + 1) = v25;
            v14 += 40;
            v7 += 5;
            if (v14 == v21)
            {
              goto LABEL_24;
            }
          }
        }

        while (v14 != v21)
        {
          v28 = *v14;
          v29 = *(v14 + 16);
          v7[4] = *(v14 + 32);
          *v7 = v28;
          *(v7 + 1) = v29;
          v14 += 40;
          v7 += 5;
        }
      }

      else
      {
        sub_70C0A4(result, v17, a3, a4 >> 1, a5, a6);
        sub_70C0A4(v17, a2, a3, v18, v14, a6);

        return sub_709C5C(v7, v17, a2, a3, v16, v18, v14, a6);
      }
    }

    else
    {

      return sub_70974C(result, a2, a3);
    }
  }

  return result;
}

int **sub_70C304(int **result, int **a2, int ***a3, unint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v5 = a5;
    v8 = result;
    if (a4 == 2)
    {
      v11 = a2 - 5;
      result = sub_709574(a3, a2 - 5, result);
      if (result)
      {
        v12 = *v11;
        v13 = *(v11 + 1);
        *(v5 + 32) = v11[4];
        *v5 = v12;
        *(v5 + 16) = v13;
        v14 = *v8;
        v15 = *(v8 + 1);
        v16 = v8[4];
      }

      else
      {
        v17 = *v8;
        v18 = *(v8 + 1);
        *(v5 + 32) = v8[4];
        *v5 = v17;
        *(v5 + 16) = v18;
        v14 = *v11;
        v15 = *(v11 + 1);
        v16 = v11[4];
      }

      *(v5 + 72) = v16;
      *(v5 + 56) = v15;
      *(v5 + 40) = v14;
    }

    else if (a4 == 1)
    {
      v9 = *result;
      v10 = *(result + 1);
      *(a5 + 32) = result[4];
      *a5 = v9;
      *(a5 + 16) = v10;
    }

    else if (a4 > 8)
    {
      v19 = a4 >> 1;
      v20 = 5 * (a4 >> 1);
      v21 = &result[v20];
      sub_70C0A4(result, &result[v20], a3, v19, a5, v19);
      result = sub_70C0A4(&v8[v20], a2, a3, a4 - v19, v5 + v20 * 8, a4 - v19);
      v23 = &v8[v20];
      while (v23 != a2)
      {
        result = sub_709574(a3, v23, v8);
        if (result)
        {
          v26 = *v23;
          v27 = *(v23 + 1);
          *(v5 + 32) = v23[4];
          *v5 = v26;
          *(v5 + 16) = v27;
          v23 += 5;
          v5 += 40;
          if (v8 == v21)
          {
LABEL_24:
            while (v23 != a2)
            {
              v30 = *v23;
              v31 = *(v23 + 1);
              *(v5 + 32) = v23[4];
              *v5 = v30;
              *(v5 + 16) = v31;
              v23 += 5;
              v5 += 40;
            }

            return result;
          }
        }

        else
        {
          v24 = *v8;
          v25 = *(v8 + 1);
          *(v5 + 32) = v8[4];
          *v5 = v24;
          *(v5 + 16) = v25;
          v8 += 5;
          v5 += 40;
          if (v8 == v21)
          {
            goto LABEL_24;
          }
        }
      }

      while (v8 != v21)
      {
        v28 = *v8;
        v29 = *(v8 + 1);
        *(v5 + 32) = v8[4];
        *v5 = v28;
        *(v5 + 16) = v29;
        v8 += 5;
        v5 += 40;
      }
    }

    else
    {

      return sub_70A118(result, a2, a5, a3);
    }
  }

  return result;
}

void sub_70C518(int **result, int **a2, double *a3, unint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  if (a4 >= 2)
  {
    v9 = result;
    if (a4 == 2)
    {
      v10 = a2 - 5;
      if (sub_70A8E8(a3, a2 - 5, result))
      {
        v11 = *v9;
        v12 = *(v9 + 16);
        v13 = *(v9 + 32);
        v14 = *(a2 - 1);
        v15 = *(a2 - 3);
        *v9 = *v10;
        *(v9 + 16) = v15;
        *(v9 + 32) = v14;
        *(a2 - 1) = v13;
        *v10 = v11;
        *(a2 - 3) = v12;
      }
    }

    else if (a4 > 128)
    {
      v28 = a5;
      v29 = a4 >> 1;
      v30 = &result[5 * (a4 >> 1)];
      v31 = a4 - (a4 >> 1);
      if (a4 <= a6)
      {
        v34 = sub_70C7F0(result, v30, a3, a4 >> 1, a5, a7);
        v35 = v28 + 40 * v29;
        sub_70C7F0(v30, a2, a3, v31, v35, v34);
        v36 = v28 + 40 * a4;
        v37 = v35;
        while (v37 != v36)
        {
          if (sub_70A8E8(a3, v37, v28))
          {
            v40 = *v37;
            v41 = *(v37 + 16);
            *(v9 + 32) = *(v37 + 32);
            *v9 = v40;
            *(v9 + 16) = v41;
            v37 += 40;
            v9 += 40;
            if (v28 == v35)
            {
LABEL_32:
              while (v37 != v36)
              {
                v44 = *v37;
                v45 = *(v37 + 16);
                *(v9 + 32) = *(v37 + 32);
                *v9 = v44;
                *(v9 + 16) = v45;
                v37 += 40;
                v9 += 40;
              }

              return;
            }
          }

          else
          {
            v38 = *v28;
            v39 = *(v28 + 16);
            *(v9 + 32) = *(v28 + 32);
            *v9 = v38;
            *(v9 + 16) = v39;
            v28 += 40;
            v9 += 40;
            if (v28 == v35)
            {
              goto LABEL_32;
            }
          }
        }

        while (v28 != v35)
        {
          v42 = *v28;
          v43 = *(v28 + 16);
          *(v9 + 32) = *(v28 + 32);
          *v9 = v42;
          *(v9 + 16) = v43;
          v28 += 40;
          v9 += 40;
        }
      }

      else
      {
        sub_70C518(result, v30, a3, a4 >> 1, a5, a6);
        sub_70C518(v30, a2, a3, v31, v28, a6);

        sub_70AF5C(v9, v30, a2, a3, v29, v31, v28, a6);
      }
    }

    else if (result != a2)
    {
      v16 = result + 5;
      if (result + 5 != a2)
      {
        v17 = 0;
        v18 = result;
        do
        {
          v22 = v18;
          v18 = v16;
          if (sub_70A8E8(a3, v16, v22))
          {
            v23 = *v18;
            v24 = *(v18 + 1);
            v48 = v18[4];
            v46 = v23;
            v47 = v24;
            v25 = v17;
            do
            {
              v26 = v9 + v25;
              v27 = *(v9 + v25 + 16);
              *(v26 + 40) = *(v9 + v25);
              *(v26 + 56) = v27;
              *(v26 + 72) = *(v9 + v25 + 32);
              if (!v25)
              {
                v19 = v9;
                goto LABEL_11;
              }

              v25 -= 40;
            }

            while (sub_70A8E8(a3, &v46, (v25 + v9)));
            v19 = v9 + v25 + 40;
LABEL_11:
            v20 = v46;
            v21 = v47;
            *(v19 + 32) = v48;
            *v19 = v20;
            *(v19 + 16) = v21;
          }

          v16 = v18 + 5;
          v17 += 40;
        }

        while (v18 + 5 != a2);
      }
    }
  }
}

__n128 sub_70C7F0(uint64_t a1, int **a2, double *a3, unint64_t a4, uint64_t a5, __n128 result)
{
  if (a4)
  {
    v6 = a5;
    v9 = a1;
    if (a4 == 2)
    {
      v11 = a2 - 5;
      if (sub_70A8E8(a3, a2 - 5, a1))
      {
        v12 = *v11;
        v13 = *(v11 + 1);
        *(v6 + 32) = v11[4];
        *v6 = v12;
        *(v6 + 16) = v13;
        result = *v9;
        v14 = *(v9 + 16);
        v15 = *(v9 + 32);
      }

      else
      {
        v26 = *v9;
        v27 = *(v9 + 16);
        *(v6 + 32) = *(v9 + 32);
        *v6 = v26;
        *(v6 + 16) = v27;
        result = *v11;
        v14 = *(v11 + 1);
        v15 = v11[4];
      }

      *(v6 + 72) = v15;
      *(v6 + 56) = v14;
      *(v6 + 40) = result;
    }

    else if (a4 == 1)
    {
      result = *a1;
      v10 = *(a1 + 16);
      *(a5 + 32) = *(a1 + 32);
      *a5 = result;
      *(a5 + 16) = v10;
    }

    else if (a4 > 8)
    {
      v28 = a4 >> 1;
      v29 = 40 * (a4 >> 1);
      v30 = v29 + a1;
      sub_70C518(a1, (v29 + a1), a3, v28, a5, v28);
      sub_70C518(v29 + v9, a2, a3, a4 - v28, v6 + v29, a4 - v28);
      v32 = v29 + v9;
      while (v32 != a2)
      {
        if (sub_70A8E8(a3, v32, v9))
        {
          result = *v32;
          v34 = *(v32 + 16);
          *(v6 + 32) = *(v32 + 32);
          *v6 = result;
          *(v6 + 16) = v34;
          v32 += 40;
          v6 += 40;
          if (v9 == v30)
          {
LABEL_30:
            while (v32 != a2)
            {
              result = *v32;
              v36 = *(v32 + 16);
              *(v6 + 32) = *(v32 + 32);
              *v6 = result;
              *(v6 + 16) = v36;
              v32 += 40;
              v6 += 40;
            }

            return result;
          }
        }

        else
        {
          result = *v9;
          v33 = *(v9 + 16);
          *(v6 + 32) = *(v9 + 32);
          *v6 = result;
          *(v6 + 16) = v33;
          v9 += 40;
          v6 += 40;
          if (v9 == v30)
          {
            goto LABEL_30;
          }
        }
      }

      while (v9 != v30)
      {
        result = *v9;
        v35 = *(v9 + 16);
        *(v6 + 32) = *(v9 + 32);
        *v6 = result;
        *(v6 + 16) = v35;
        v9 += 40;
        v6 += 40;
      }
    }

    else if (a1 != a2)
    {
      result = *a1;
      v16 = *(a1 + 16);
      *(a5 + 32) = *(a1 + 32);
      *a5 = result;
      *(a5 + 16) = v16;
      v17 = a1 + 40;
      if ((a1 + 40) != a2)
      {
        v18 = 0;
        v19 = a5;
        do
        {
          v21 = v19;
          v19 += 40;
          v22 = v19;
          if (sub_70A8E8(a3, v17, v21))
          {
            v23 = *(v21 + 16);
            *v19 = *v21;
            *(v19 + 16) = v23;
            *(v19 + 32) = *(v21 + 32);
            v22 = v6;
            if (v21 != v6)
            {
              v24 = v18;
              while (1)
              {
                v22 = v6 + v24;
                if (!sub_70A8E8(a3, v17, (v6 + v24 - 40)))
                {
                  break;
                }

                v25 = *(v6 + v24 - 24);
                *v22 = *(v6 + v24 - 40);
                *(v22 + 16) = v25;
                *(v22 + 32) = *(v6 + v24 - 8);
                v24 -= 40;
                if (!v24)
                {
                  v22 = v6;
                  break;
                }
              }
            }
          }

          result = *v17;
          v20 = *(v17 + 16);
          *(v22 + 32) = *(v17 + 32);
          *v22 = result;
          *(v22 + 16) = v20;
          v17 += 40;
          v18 += 40;
        }

        while (v17 != a2);
      }
    }
  }

  return result;
}

uint64_t sub_70CA8C(uint64_t a1, int **a2)
{
  v4 = *(a1 + 8);
  v5 = sub_311A24(*a2, *(a2 + 38));
  v6 = **a1;
  if (v6 < 1 || v5 < 1)
  {
    v8 = 0;
    v9 = *a2;
    v10 = (*a2 - **a2);
    if (*v10 < 0x43u)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v11 = v6 - v5;
    if (v11 < 0)
    {
      v11 = -v11;
    }

    v8 = v11 > *(v4 + 1152);
    v9 = *a2;
    v10 = (*a2 - **a2);
    if (*v10 < 0x43u)
    {
      goto LABEL_13;
    }
  }

  v12 = v10[33];
  if (v12)
  {
    v13 = *(v9 + v12);
    goto LABEL_14;
  }

LABEL_13:
  v13 = 0;
LABEL_14:
  v14 = **(a1 + 16) - v13;
  if (v14 >= 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = -v14;
  }

  v16 = *(v4 + 1153);
  v17 = v15 > v16;
  v18 = *(*(a1 + 24) + 32);
  if (__PAIR64__(*(a2 + 18), *(a2 + 8)) != __PAIR64__(WORD2(v18), v18) || *(a2 + 38) != BYTE6(v18))
  {
    result = sub_716E70(v4 + 1432, a2);
    if (!result)
    {
      return result;
    }

    v21 = *a2;
    v22 = (*a2 - **a2);
    v23 = *v22;
    if (v23 < 0x2F || !v22[23])
    {
      goto LABEL_37;
    }

    v24 = *(v21 + v22[23]);
    if (v24 - 15 >= 0x21 || ((0x1C5C08009uLL >> (v24 - 15)) & 1) == 0)
    {
      v25 = v24 > 0x2B || ((1 << v24) & 0x80000001040) == 0;
      if (v25 || v23 >= 0x9B && (v26 = v22[77]) != 0 && (*(v21 + v26 + 2) & 0x20) != 0)
      {
        v17 = v24 == 44 || v15 > v16;
LABEL_37:
        if (!v17 && !v8)
        {
          return **(a1 + 40) - fabs(sub_70E16C(v4 + 1432, *(a1 + 32), a2, v20)) > *(v4 + 1160);
        }
      }
    }
  }

  return 0;
}

int **sub_70CC84(int **a1, int **a2, uint64_t a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while (1)
    {
      if (!sub_716E70(a3 + 1432, v3))
      {
LABEL_16:
        if (v3 == a2)
        {
          return v3;
        }

        v15 = v3 + 5;
        if (v3 + 5 == a2)
        {
          return v3;
        }

        while (2)
        {
          if (sub_716E70(a3 + 1432, v15))
          {
            v18 = *v15;
            v19 = (*v15 - **v15);
            v20 = *v19;
            if (v20 < 0x9B)
            {
              if (v20 >= 0x2F)
              {
LABEL_29:
                v21 = v19[23];
                if (v21)
                {
                  v22 = *(v18 + v21);
                  v12 = v22 > 0x2A;
                  v23 = (1 << v22) & 0x50400000000;
                  if (!v12 && v23 != 0)
                  {
                    goto LABEL_22;
                  }
                }
              }

              v16 = *v15;
              v17 = *(v15 + 1);
              v3[4] = v15[4];
              *v3 = v16;
              *(v3 + 1) = v17;
              v3 += 5;
              goto LABEL_22;
            }

            if (!v19[77] || (*(v18 + v19[77] + 3) & 4) == 0)
            {
              goto LABEL_29;
            }
          }

LABEL_22:
          v15 += 5;
          if (v15 == a2)
          {
            return v3;
          }

          continue;
        }
      }

      v7 = *v3;
      v8 = (*v3 - **v3);
      v9 = *v8;
      if (v9 >= 0x9B)
      {
        break;
      }

      if (v9 >= 0x2F)
      {
        goto LABEL_11;
      }

LABEL_4:
      v3 += 5;
      if (v3 == a2)
      {
        return a2;
      }
    }

    if (v8[77] && (*(v7 + v8[77] + 3) & 4) != 0)
    {
      goto LABEL_16;
    }

LABEL_11:
    v10 = v8[23];
    if (v10)
    {
      v11 = *(v7 + v10);
      v12 = v11 > 0x2A;
      v13 = (1 << v11) & 0x50400000000;
      if (!v12 && v13 != 0)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_4;
  }

  return v3;
}

uint64_t sub_70CE08(uint64_t *a1, int **a2)
{
  v4 = *a1;
  v5 = *(a1[2] + 32);
  if (__PAIR64__(*(a2 + 18), *(a2 + 8)) == __PAIR64__(WORD2(v5), v5) && *(a2 + 38) == BYTE6(v5))
  {
    return 0;
  }

  if (fabs(sub_70E2E0(v4 + 1432, a1[1], a2)) >= *(v4 + 200))
  {
    return 0;
  }

  result = sub_6EECC();
  if (result)
  {
    result = sub_31EE90(*v4, *(a1[1] + 32) & 0xFFFFFFFFFFFFFFLL, a2[4] & 0xFFFFFFFFFFFFFFLL);
    if (result)
    {
      v7 = *a2;
      v8 = (*a2 - **a2);
      v9 = *v8;
      if (v9 >= 0x2F && v8[23])
      {
        v10 = *(v7 + v8[23]);
        v11 = v10 > 0x2B || ((1 << v10) & 0x80000001040) == 0;
        v13 = !v11 && (v9 < 0x9B || (v12 = v8[77]) == 0 || (*(v7 + v12 + 2) & 0x20) == 0) || v10 == 44;
      }

      else
      {
        v13 = 0;
      }

      v14 = *a1[1];
      v15 = (v14 - *v14);
      v16 = *v15;
      if (v16 >= 0x2F && v15[23])
      {
        v17 = *(v14 + v15[23]);
        if (v17 > 0x2B || ((1 << v17) & 0x80000001040) == 0)
        {
          return v13 ^ (v17 == 44) ^ 1u;
        }

        if (v16 >= 0x9B && (v19 = v15[77]) != 0 && (*(v14 + v19 + 2) & 0x20) != 0)
        {
          return v13 ^ (v17 == 44) ^ 1u;
        }

        else
        {
          return v13;
        }
      }

      else
      {
        return !v13;
      }
    }
  }

  return result;
}

int **sub_70D010(int **result, int **a2, int ***a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    v7 = result;
    if (a4 == 2)
    {
      v8 = a2 - 5;
      result = sub_709574(a3, a2 - 5, result);
      if (result)
      {
        v9 = *v7;
        v10 = *(v7 + 1);
        v11 = v7[4];
        v12 = v8[4];
        v13 = *(v8 + 1);
        *v7 = *v8;
        *(v7 + 1) = v13;
        v7[4] = v12;
        v8[4] = v11;
        *v8 = v9;
        *(v8 + 1) = v10;
      }
    }

    else if (a4 > 128)
    {
      v14 = a5;
      v16 = a4 >> 1;
      v17 = &result[5 * (a4 >> 1)];
      v18 = a4 - (a4 >> 1);
      if (a4 <= a6)
      {
        sub_70D270(result, v17, a3, a4 >> 1, a5);
        v21 = v14 + 40 * v16;
        result = sub_70D270(v17, a2, a3, v18, v21);
        v22 = v14 + 40 * a4;
        v23 = v21;
        while (v23 != v22)
        {
          result = sub_709574(a3, v23, v14);
          if (result)
          {
            v26 = *v23;
            v27 = *(v23 + 16);
            v7[4] = *(v23 + 32);
            *v7 = v26;
            *(v7 + 1) = v27;
            v23 += 40;
            v7 += 5;
            if (v14 == v21)
            {
LABEL_24:
              while (v23 != v22)
              {
                v30 = *v23;
                v31 = *(v23 + 16);
                v7[4] = *(v23 + 32);
                *v7 = v30;
                *(v7 + 1) = v31;
                v23 += 40;
                v7 += 5;
              }

              return result;
            }
          }

          else
          {
            v24 = *v14;
            v25 = *(v14 + 16);
            v7[4] = *(v14 + 32);
            *v7 = v24;
            *(v7 + 1) = v25;
            v14 += 40;
            v7 += 5;
            if (v14 == v21)
            {
              goto LABEL_24;
            }
          }
        }

        while (v14 != v21)
        {
          v28 = *v14;
          v29 = *(v14 + 16);
          v7[4] = *(v14 + 32);
          *v7 = v28;
          *(v7 + 1) = v29;
          v14 += 40;
          v7 += 5;
        }
      }

      else
      {
        sub_70D010(result, v17, a3, a4 >> 1, a5, a6);
        sub_70D010(v17, a2, a3, v18, v14, a6);

        return sub_709C5C(v7, v17, a2, a3, v16, v18, v14, a6);
      }
    }

    else
    {

      return sub_70974C(result, a2, a3);
    }
  }

  return result;
}

int **sub_70D270(int **result, int **a2, int ***a3, unint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v5 = a5;
    v8 = result;
    if (a4 == 2)
    {
      v11 = a2 - 5;
      result = sub_709574(a3, a2 - 5, result);
      if (result)
      {
        v12 = *v11;
        v13 = *(v11 + 1);
        *(v5 + 32) = v11[4];
        *v5 = v12;
        *(v5 + 16) = v13;
        v14 = *v8;
        v15 = *(v8 + 1);
        v16 = v8[4];
      }

      else
      {
        v17 = *v8;
        v18 = *(v8 + 1);
        *(v5 + 32) = v8[4];
        *v5 = v17;
        *(v5 + 16) = v18;
        v14 = *v11;
        v15 = *(v11 + 1);
        v16 = v11[4];
      }

      *(v5 + 72) = v16;
      *(v5 + 56) = v15;
      *(v5 + 40) = v14;
    }

    else if (a4 == 1)
    {
      v9 = *result;
      v10 = *(result + 1);
      *(a5 + 32) = result[4];
      *a5 = v9;
      *(a5 + 16) = v10;
    }

    else if (a4 > 8)
    {
      v19 = a4 >> 1;
      v20 = 5 * (a4 >> 1);
      v21 = &result[v20];
      sub_70D010(result, &result[v20], a3, v19, a5, v19);
      result = sub_70D010(&v8[v20], a2, a3, a4 - v19, v5 + v20 * 8, a4 - v19);
      v23 = &v8[v20];
      while (v23 != a2)
      {
        result = sub_709574(a3, v23, v8);
        if (result)
        {
          v26 = *v23;
          v27 = *(v23 + 1);
          *(v5 + 32) = v23[4];
          *v5 = v26;
          *(v5 + 16) = v27;
          v23 += 5;
          v5 += 40;
          if (v8 == v21)
          {
LABEL_24:
            while (v23 != a2)
            {
              v30 = *v23;
              v31 = *(v23 + 1);
              *(v5 + 32) = v23[4];
              *v5 = v30;
              *(v5 + 16) = v31;
              v23 += 5;
              v5 += 40;
            }

            return result;
          }
        }

        else
        {
          v24 = *v8;
          v25 = *(v8 + 1);
          *(v5 + 32) = v8[4];
          *v5 = v24;
          *(v5 + 16) = v25;
          v8 += 5;
          v5 += 40;
          if (v8 == v21)
          {
            goto LABEL_24;
          }
        }
      }

      while (v8 != v21)
      {
        v28 = *v8;
        v29 = *(v8 + 1);
        *(v5 + 32) = v8[4];
        *v5 = v28;
        *(v5 + 16) = v29;
        v8 += 5;
        v5 += 40;
      }
    }

    else
    {

      return sub_70A118(result, a2, a5, a3);
    }
  }

  return result;
}

void sub_70D484(int **result, int **a2, double *a3, unint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  if (a4 >= 2)
  {
    v9 = result;
    if (a4 == 2)
    {
      v10 = a2 - 5;
      if (sub_70A8E8(a3, a2 - 5, result))
      {
        v11 = *v9;
        v12 = *(v9 + 16);
        v13 = *(v9 + 32);
        v14 = *(a2 - 1);
        v15 = *(a2 - 3);
        *v9 = *v10;
        *(v9 + 16) = v15;
        *(v9 + 32) = v14;
        *(a2 - 1) = v13;
        *v10 = v11;
        *(a2 - 3) = v12;
      }
    }

    else if (a4 > 128)
    {
      v28 = a5;
      v29 = a4 >> 1;
      v30 = &result[5 * (a4 >> 1)];
      v31 = a4 - (a4 >> 1);
      if (a4 <= a6)
      {
        v34 = sub_70D75C(result, v30, a3, a4 >> 1, a5, a7);
        v35 = v28 + 40 * v29;
        sub_70D75C(v30, a2, a3, v31, v35, v34);
        v36 = v28 + 40 * a4;
        v37 = v35;
        while (v37 != v36)
        {
          if (sub_70A8E8(a3, v37, v28))
          {
            v40 = *v37;
            v41 = *(v37 + 16);
            *(v9 + 32) = *(v37 + 32);
            *v9 = v40;
            *(v9 + 16) = v41;
            v37 += 40;
            v9 += 40;
            if (v28 == v35)
            {
LABEL_32:
              while (v37 != v36)
              {
                v44 = *v37;
                v45 = *(v37 + 16);
                *(v9 + 32) = *(v37 + 32);
                *v9 = v44;
                *(v9 + 16) = v45;
                v37 += 40;
                v9 += 40;
              }

              return;
            }
          }

          else
          {
            v38 = *v28;
            v39 = *(v28 + 16);
            *(v9 + 32) = *(v28 + 32);
            *v9 = v38;
            *(v9 + 16) = v39;
            v28 += 40;
            v9 += 40;
            if (v28 == v35)
            {
              goto LABEL_32;
            }
          }
        }

        while (v28 != v35)
        {
          v42 = *v28;
          v43 = *(v28 + 16);
          *(v9 + 32) = *(v28 + 32);
          *v9 = v42;
          *(v9 + 16) = v43;
          v28 += 40;
          v9 += 40;
        }
      }

      else
      {
        sub_70D484(result, v30, a3, a4 >> 1, a5, a6);
        sub_70D484(v30, a2, a3, v31, v28, a6);

        sub_70AF5C(v9, v30, a2, a3, v29, v31, v28, a6);
      }
    }

    else if (result != a2)
    {
      v16 = result + 5;
      if (result + 5 != a2)
      {
        v17 = 0;
        v18 = result;
        do
        {
          v22 = v18;
          v18 = v16;
          if (sub_70A8E8(a3, v16, v22))
          {
            v23 = *v18;
            v24 = *(v18 + 1);
            v48 = v18[4];
            v46 = v23;
            v47 = v24;
            v25 = v17;
            do
            {
              v26 = v9 + v25;
              v27 = *(v9 + v25 + 16);
              *(v26 + 40) = *(v9 + v25);
              *(v26 + 56) = v27;
              *(v26 + 72) = *(v9 + v25 + 32);
              if (!v25)
              {
                v19 = v9;
                goto LABEL_11;
              }

              v25 -= 40;
            }

            while (sub_70A8E8(a3, &v46, (v25 + v9)));
            v19 = v9 + v25 + 40;
LABEL_11:
            v20 = v46;
            v21 = v47;
            *(v19 + 32) = v48;
            *v19 = v20;
            *(v19 + 16) = v21;
          }

          v16 = v18 + 5;
          v17 += 40;
        }

        while (v18 + 5 != a2);
      }
    }
  }
}

__n128 sub_70D75C(uint64_t a1, int **a2, double *a3, unint64_t a4, uint64_t a5, __n128 result)
{
  if (a4)
  {
    v6 = a5;
    v9 = a1;
    if (a4 == 2)
    {
      v11 = a2 - 5;
      if (sub_70A8E8(a3, a2 - 5, a1))
      {
        v12 = *v11;
        v13 = *(v11 + 1);
        *(v6 + 32) = v11[4];
        *v6 = v12;
        *(v6 + 16) = v13;
        result = *v9;
        v14 = *(v9 + 16);
        v15 = *(v9 + 32);
      }

      else
      {
        v26 = *v9;
        v27 = *(v9 + 16);
        *(v6 + 32) = *(v9 + 32);
        *v6 = v26;
        *(v6 + 16) = v27;
        result = *v11;
        v14 = *(v11 + 1);
        v15 = v11[4];
      }

      *(v6 + 72) = v15;
      *(v6 + 56) = v14;
      *(v6 + 40) = result;
    }

    else if (a4 == 1)
    {
      result = *a1;
      v10 = *(a1 + 16);
      *(a5 + 32) = *(a1 + 32);
      *a5 = result;
      *(a5 + 16) = v10;
    }

    else if (a4 > 8)
    {
      v28 = a4 >> 1;
      v29 = 40 * (a4 >> 1);
      v30 = v29 + a1;
      sub_70D484(a1, (v29 + a1), a3, v28, a5, v28);
      sub_70D484(v29 + v9, a2, a3, a4 - v28, v6 + v29, a4 - v28);
      v32 = v29 + v9;
      while (v32 != a2)
      {
        if (sub_70A8E8(a3, v32, v9))
        {
          result = *v32;
          v34 = *(v32 + 16);
          *(v6 + 32) = *(v32 + 32);
          *v6 = result;
          *(v6 + 16) = v34;
          v32 += 40;
          v6 += 40;
          if (v9 == v30)
          {
LABEL_30:
            while (v32 != a2)
            {
              result = *v32;
              v36 = *(v32 + 16);
              *(v6 + 32) = *(v32 + 32);
              *v6 = result;
              *(v6 + 16) = v36;
              v32 += 40;
              v6 += 40;
            }

            return result;
          }
        }

        else
        {
          result = *v9;
          v33 = *(v9 + 16);
          *(v6 + 32) = *(v9 + 32);
          *v6 = result;
          *(v6 + 16) = v33;
          v9 += 40;
          v6 += 40;
          if (v9 == v30)
          {
            goto LABEL_30;
          }
        }
      }

      while (v9 != v30)
      {
        result = *v9;
        v35 = *(v9 + 16);
        *(v6 + 32) = *(v9 + 32);
        *v6 = result;
        *(v6 + 16) = v35;
        v9 += 40;
        v6 += 40;
      }
    }

    else if (a1 != a2)
    {
      result = *a1;
      v16 = *(a1 + 16);
      *(a5 + 32) = *(a1 + 32);
      *a5 = result;
      *(a5 + 16) = v16;
      v17 = a1 + 40;
      if ((a1 + 40) != a2)
      {
        v18 = 0;
        v19 = a5;
        do
        {
          v21 = v19;
          v19 += 40;
          v22 = v19;
          if (sub_70A8E8(a3, v17, v21))
          {
            v23 = *(v21 + 16);
            *v19 = *v21;
            *(v19 + 16) = v23;
            *(v19 + 32) = *(v21 + 32);
            v22 = v6;
            if (v21 != v6)
            {
              v24 = v18;
              while (1)
              {
                v22 = v6 + v24;
                if (!sub_70A8E8(a3, v17, (v6 + v24 - 40)))
                {
                  break;
                }

                v25 = *(v6 + v24 - 24);
                *v22 = *(v6 + v24 - 40);
                *(v22 + 16) = v25;
                *(v22 + 32) = *(v6 + v24 - 8);
                v24 -= 40;
                if (!v24)
                {
                  v22 = v6;
                  break;
                }
              }
            }
          }

          result = *v17;
          v20 = *(v17 + 16);
          *(v22 + 32) = *(v17 + 32);
          *v22 = result;
          *(v22 + 16) = v20;
          v17 += 40;
          v18 += 40;
        }

        while (v17 != a2);
      }
    }
  }

  return result;
}

void sub_70D9F8()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27A4058 = 0u;
  unk_27A4068 = 0u;
  dword_27A4078 = 1065353216;
  sub_3A9A34(&xmmword_27A4058, v0, v0);
  sub_3A9A34(&xmmword_27A4058, v3, v3);
  sub_3A9A34(&xmmword_27A4058, __p, __p);
  sub_3A9A34(&xmmword_27A4058, v9, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27A4030 = 0;
    qword_27A4038 = 0;
    qword_27A4028 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_70DC40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27A4040)
  {
    qword_27A4048 = qword_27A4040;
    operator delete(qword_27A4040);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_70DCEC(uint64_t a1, uint64_t a2, const void *a3, _OWORD *a4, char a5)
{
  *(sub_71AEDC(a1) + 880) = a2;
  *(a1 + 888) = sub_3AF6B4(a2);
  *(a1 + 896) = *a4;
  *(a1 + 912) = a5;
  *(a1 + 920) = 0u;
  *(a1 + 936) = 0u;
  *(a1 + 952) = 1065353216;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 1065353216;
  memcpy((a1 + 1000), a3, 0x4E0uLL);
  return a1;
}

uint64_t sub_70DD90(double *a1, int a2, double a3)
{
  v3 = a1[140];
  if (a2)
  {
    if (v3 < a3)
    {
      return 61;
    }

    v5 = a1[138];
    if (v5 < a3)
    {
      return 2;
    }

    if (a1[272] < a3)
    {
      return 63;
    }

    if (a1[135] < a3)
    {
      return 21;
    }

    if (-a1[136] < a3)
    {
      return 20;
    }

    if (-v5 < a3)
    {
      return 62;
    }
  }

  else
  {
    if (v3 < a3)
    {
      return 61;
    }

    v6 = a1[138];
    if (v6 < a3)
    {
      return 2;
    }

    v7 = a1[136];
    if (v7 < a3)
    {
      return 63;
    }

    if (a1[135] < a3)
    {
      return 21;
    }

    if (-v7 < a3)
    {
      return 20;
    }

    if (-v6 < a3)
    {
      return 62;
    }
  }

  if (-v3 < a3)
  {
    return 1;
  }

  else
  {
    return 60;
  }
}

double sub_70DE9C(void *a1, int **a2, int **a3)
{
  v6 = sub_3116D0(a2);
  if (v6 == sub_311544(a3))
  {
    v7 = (*a2 - **a2);
    v8 = *v7;
    if (*(a2 + 38))
    {
      if (v8 < 0x49)
      {
        goto LABEL_28;
      }

      v9 = v7[36];
      if (!v9)
      {
        goto LABEL_28;
      }
    }

    else if (v8 < 0x4B || (v9 = v7[37]) == 0)
    {
LABEL_28:
      v22 = -1;
      v23 = *a3;
      v24 = (*a3 - **a3);
      v25 = *v24;
      if (*(a3 + 38))
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    }

    v22 = *(*a2 + v9);
    v23 = *a3;
    v24 = (*a3 - **a3);
    v25 = *v24;
    if (*(a3 + 38))
    {
LABEL_29:
      if (v25 >= 0x4B)
      {
        v26 = v24[37];
        if (v26)
        {
LABEL_31:
          v17 = *&v23[v26];
          goto LABEL_37;
        }
      }

      goto LABEL_32;
    }

LABEL_25:
    if (v25 >= 0x49)
    {
      v26 = v24[36];
      if (v26)
      {
        goto LABEL_31;
      }
    }

LABEL_32:
    v17 = 0xFFFF;
    goto LABEL_37;
  }

  v10 = sub_335660(a1, a2, 1);
  v11 = sub_335660(a1, a3, 0);
  if (v11 == v10)
  {
    v12 = HIDWORD(v10);
    v13 = HIDWORD(v11);
    i = 0.0;
    if (HIDWORD(v10) == HIDWORD(v11))
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = HIDWORD(v11);
    v12 = HIDWORD(v10);
  }

  v15 = -(v10 - v11);
  if (v11 - v10 < (v10 - v11))
  {
    v15 = (v11 - v10);
  }

    ;
  }

    ;
  }

LABEL_16:
  v16 = llround(i * 100.0) % 36000;
  v17 = v16 + 36000;
  if (v16 <= 0xFFFF735F)
  {
    v17 = v16;
  }

  v18 = a2[1];
  v19 = (v18 - *v18);
  v20 = *v19;
  if (!*(a2 + 38))
  {
    if (v20 < 9)
    {
      goto LABEL_36;
    }

    v21 = v19[4];
    if (!v21)
    {
      goto LABEL_36;
    }

LABEL_35:
    v22 = *(v18 + v21);
    goto LABEL_37;
  }

  if (v20 >= 5)
  {
    v21 = v19[2];
    if (v21)
    {
      goto LABEL_35;
    }
  }

LABEL_36:
  v22 = 0;
LABEL_37:
  v27 = v22 + 18000;
  v28 = v22 - 18000;
  if ((v27 >> 5) < 0x465u)
  {
    v28 = v27;
  }

  v29 = v17 - v28;
  if (v29 > 18000)
  {
    v29 -= 36000;
  }

  if (v29 < -17999)
  {
    v29 += 36000;
  }

  return v29 / 100.0;
}

double sub_70E16C(uint64_t a1, int **a2, int **a3, double a4)
{
  LODWORD(a4) = *(a1 + 1552);
  if (sub_4346FC(*(a1 + 888), a2, a3, *(a1 + 1952), *(a1 + 1944), *&a4, *(a1 + 1936)))
  {
    v7 = (*a2 - **a2);
    v8 = *v7;
    if (*(a2 + 38))
    {
      if (v8 < 0x49)
      {
        goto LABEL_15;
      }

      v9 = v7[36];
      if (!v9)
      {
        goto LABEL_15;
      }
    }

    else if (v8 < 0x4B || (v9 = v7[37]) == 0)
    {
LABEL_15:
      v11 = -1;
      v12 = *a3;
      v13 = (*a3 - **a3);
      v14 = *v13;
      if (*(a3 + 38))
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }

    v11 = *(*a2 + v9);
    v12 = *a3;
    v13 = (*a3 - **a3);
    v14 = *v13;
    if (*(a3 + 38))
    {
LABEL_16:
      if (v14 >= 0x4B)
      {
        v15 = v13[37];
        if (v15)
        {
LABEL_18:
          v16 = *&v12[v15];
LABEL_20:
          v17 = v11 + 18000;
          v18 = v11 - 18000;
          if ((v17 >> 5) < 0x465u)
          {
            v18 = v17;
          }

          v19 = v16 - v18;
          if (v19 > 18000)
          {
            v19 -= 36000;
          }

          if (v19 < -17999)
          {
            v19 += 36000;
          }

          return v19 / 100.0;
        }
      }

LABEL_19:
      v16 = 0xFFFF;
      goto LABEL_20;
    }

LABEL_12:
    if (v14 >= 0x49)
    {
      v15 = v13[36];
      if (v15)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_19;
  }

  return sub_70E2E0(a1, a2, a3);
}

double sub_70E2E0(uint64_t a1, int **a2, int **a3)
{
  if (*(a1 + 912) == 1)
  {
    v3 = a2[1];
    v4 = (v3 - *v3);
    v5 = *v4;
    if (*(a2 + 38))
    {
      if (v5 < 5)
      {
        goto LABEL_16;
      }

      v6 = v4[2];
      if (!v4[2])
      {
        goto LABEL_16;
      }
    }

    else if (v5 < 9 || (v6 = v4[4]) == 0)
    {
LABEL_16:
      v10 = 0;
      v11 = a3[1];
      v12 = (v11 - *v11);
      v13 = *v12;
      if (*(a3 + 38))
      {
        goto LABEL_17;
      }

LABEL_13:
      if (v13 < 5)
      {
        goto LABEL_19;
      }

      v14 = v12[2];
      if (!v14)
      {
        goto LABEL_19;
      }

      goto LABEL_29;
    }

    v10 = *(v3 + v6);
    v11 = a3[1];
    v12 = (v11 - *v11);
    v13 = *v12;
    if (*(a3 + 38))
    {
LABEL_17:
      if (v13 < 9 || (v14 = v12[4]) == 0)
      {
LABEL_19:
        v15 = 0;
        goto LABEL_31;
      }

      goto LABEL_29;
    }

    goto LABEL_13;
  }

  v7 = (*a2 - **a2);
  v8 = *v7;
  if (*(a2 + 38))
  {
    if (v8 < 0x49)
    {
      goto LABEL_26;
    }

    v9 = v7[36];
    if (!v7[36])
    {
      goto LABEL_26;
    }
  }

  else if (v8 < 0x4B || (v9 = v7[37]) == 0)
  {
LABEL_26:
    v10 = -1;
    v11 = *a3;
    v16 = (*a3 - **a3);
    v17 = *v16;
    if (*(a3 + 38))
    {
      goto LABEL_27;
    }

LABEL_23:
    if (v17 >= 0x49)
    {
      v14 = v16[36];
      if (v14)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_30;
  }

  v10 = *(*a2 + v9);
  v11 = *a3;
  v16 = (*a3 - **a3);
  v17 = *v16;
  if (!*(a3 + 38))
  {
    goto LABEL_23;
  }

LABEL_27:
  if (v17 >= 0x4B)
  {
    v14 = v16[37];
    if (v14)
    {
LABEL_29:
      v15 = *(v11 + v14);
      goto LABEL_31;
    }
  }

LABEL_30:
  v15 = 0xFFFF;
LABEL_31:
  v18 = v10 + 18000;
  v19 = v10 - 18000;
  if ((v18 >> 5) < 0x465u)
  {
    v19 = v18;
  }

  v20 = v15 - v19;
  if (v20 > 18000)
  {
    v20 -= 36000;
  }

  if (v20 < -17999)
  {
    v20 += 36000;
  }

  return v20 / 100.0;
}

double sub_70E484(uint64_t a1, uint64_t a2, int **a3, int **a4, int a5, double a6)
{
  if (a5 && (v8 = a1, v9 = sub_70E510(a1, a2, a3, a4), a1 = v8, v9))
  {

    return sub_70E2E0(v8, a3, a4);
  }

  else
  {

    return sub_70E16C(a1, a3, a4, a6);
  }
}

uint64_t *sub_70E510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 2168) != 1)
  {
    return 0;
  }

  if (*(a2 + 10120) != 1)
  {
    return 0;
  }

  v6 = *(a3 + 8);
  v7 = (v6 - *v6);
  if (*v7 < 0x11u)
  {
    return 0;
  }

  v8 = v7[8];
  if (!v8)
  {
    return 0;
  }

  if ((*(v6 + v8) & 0x40) == 0)
  {
    return 0;
  }

  v9 = *(a4 + 8);
  v10 = (v9 - *v9);
  if (*v10 < 0x11u)
  {
    return 0;
  }

  v11 = v10[8];
  if (!v11 || (*(v9 + v11) & 0x40) == 0)
  {
    return 0;
  }

  v27[5] = v4;
  v27[6] = v5;
  v15 = *(a3 + 32);
  LODWORD(v26) = v15;
  BYTE6(v26) = BYTE6(v15);
  WORD2(v26) = WORD2(v15);
  v17 = sub_4727F8((a1 + 960), &v26);
  if (v17)
  {
    v18 = v17[3];
  }

  else
  {
    v18 = -1;
  }

  v27[0] = v18;
  v19 = *(a4 + 32);
  LODWORD(v25) = v19;
  BYTE6(v25) = BYTE6(v19);
  WORD2(v25) = WORD2(v19);
  result = sub_4727F8((a1 + 960), &v25);
  if (result)
  {
    v20 = result;
    result = 0;
    v21 = v20[3];
    v26 = v21;
    if (v18 != -1 && v21 != -1)
    {
      v22 = a2;
      v23 = sub_710C28((a2 + 12544), v27);
      v24 = sub_710C28((v22 + 12544), &v26);
      result = 0;
      if (v26 == v27[0] + 1 && v23 && v24)
      {
        if ((*(v23 + 6) - 3) > 1)
        {
          return 0;
        }

        else
        {
          return ((*(v24 + 6) - 3) < 2);
        }
      }
    }
  }

  return result;
}

void sub_70E6E8(uint64_t a1, uint64_t a2, __int128 **a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v4 - *a3) >> 3));
  v6 = v4 == *a3;
  v8[0] = a2;
  v8[1] = a1;
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  sub_71B06C(v3, v4, v8, v7, 1);
}

uint64_t sub_70E748(uint64_t a1, char **a2)
{
  v2 = *a2;
  v3 = &(*a2)[-**a2];
  v4 = *v3;
  if (v4 < 0x2F)
  {
    return 0;
  }

  if (*(v3 + 23))
  {
    v5 = *(v2 + *(v3 + 23));
    if (v5 <= 0x2C)
    {
      if (((1 << v5) & 0x180000105240) != 0)
      {
        return *(a1 + 1588);
      }

      if (!*(v2 + *(v3 + 23)))
      {
        return *(a1 + 1584);
      }
    }
  }

  if (v4 >= 0x43 && (v7 = *(v3 + 33)) != 0)
  {
    return *(v2 + v7);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_70E7C4(uint64_t a1, int **a2, int ***a3, uint64_t a4, double a5)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  sub_70E87C(a1, a2, a3, &v8, a5);
  if (v8 == v9)
  {
    a4 = -1;
LABEL_8:
    if (!v8)
    {
      return a4;
    }
  }

  else
  {
    v6 = v8;
    while (*v6 != a4)
    {
      if (++v6 == v9)
      {
        goto LABEL_10;
      }
    }

    if (v6 != v9)
    {
      goto LABEL_8;
    }

LABEL_10:
    a4 = *v8;
  }

  v9 = v8;
  operator delete(v8);
  return a4;
}

void sub_70E860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_70E87C(uint64_t a1, int **a2, int ***a3, void *a4, double a5)
{
  a4[1] = *a4;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  sub_710D00(a1, a2, a3, &v42, a5);
  v9 = v42;
  v10 = v43;
  if (v42 == v43)
  {
    goto LABEL_50;
  }

  do
  {
    v11 = *v9;
    v41 = v11;
    if (v11 == -1 || !sub_70EB5C(a1, a2, a3, v11))
    {
      goto LABEL_4;
    }

    v12 = sub_605E3C(a3, v41);
    v13 = (*a2 - **a2);
    v14 = *v13;
    if (*(a2 + 38))
    {
      if (v14 >= 0x49)
      {
        v15 = v13[36];
        if (v15)
        {
          goto LABEL_14;
        }
      }
    }

    else if (v14 >= 0x4B)
    {
      v15 = v13[37];
      if (v15)
      {
LABEL_14:
        v16 = *(*a2 + v15);
        v17 = *v12;
        v18 = (*v12 - **v12);
        v19 = *v18;
        if (*(v12 + 38))
        {
          goto LABEL_19;
        }

        goto LABEL_15;
      }
    }

    v16 = -1;
    v17 = *v12;
    v18 = (*v12 - **v12);
    v19 = *v18;
    if (*(v12 + 38))
    {
LABEL_19:
      if (v19 >= 0x4B)
      {
        v20 = v18[37];
        if (v20)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_22;
    }

LABEL_15:
    if (v19 >= 0x49)
    {
      v20 = v18[36];
      if (v20)
      {
LABEL_21:
        v21 = *&v17[v20];
        goto LABEL_23;
      }
    }

LABEL_22:
    v21 = 0xFFFF;
LABEL_23:
    v22 = v16 + 18000;
    v23 = v16 - 18000;
    if ((v22 >> 5) < 0x465u)
    {
      v23 = v22;
    }

    v24 = v21 - v23;
    if (v24 > 18000)
    {
      v24 -= 36000;
    }

    if (v24 >= -17999)
    {
      v25 = v24;
    }

    else
    {
      v25 = v24 + 36000;
    }

    v26 = sub_605E3C(a3, v41);
    v27 = sub_70E2E0(a1, a2, v26);
    v28 = fabs(v25 / 100.0);
    v29 = fabs(v27);
    if (v29 >= v28)
    {
      v29 = v28;
    }

    if (v29 <= *(a1 + 1152) || (v30 = (*a2 - **a2), *v30 < 0x2Fu) || (v31 = v30[23]) == 0 || ((v32 = *(*a2 + v31), v33 = v32 > 0x2A, v34 = (1 << v32) & 0x50426810004, !v33) ? (v35 = v34 == 0) : (v35 = 1), v35))
    {
      if (v29 <= *(a1 + 1144) || (v36 = (*a2 - **a2), *v36 >= 0x2Fu) && (v37 = v36[23]) != 0 && ((v38 = *(*a2 + v37), v33 = v38 > 0x2A, v39 = (1 << v38) & 0x50426810004, !v33) ? (v40 = v39 == 0) : (v40 = 1), !v40))
      {
        sub_2512DC(a4, &v41);
LABEL_4:
        sub_2512DC(a4, &v41);
      }
    }

    ++v9;
  }

  while (v9 != v10);
  v9 = v42;
LABEL_50:
  if (v9)
  {
    v43 = v9;
    operator delete(v9);
  }
}

void sub_70EB30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_70EB5C(uint64_t a1, int **a2, uint64_t *a3, unint64_t a4)
{
  v7 = sub_605E3C(a3, a4);
  v8 = sub_70E2E0(a1, a2, v7);
  v9 = *a3;
  v10 = a3[1];
  if (*a3 == v10)
  {
    return 0;
  }

  v11 = fabs(v8);
  while (1)
  {
    v12 = *(a1 + 888);
    v13 = *(v9 + 32);
    v14 = (v13 & 0xFF000000000000) == 0;
    v15 = v13 & 0xFFFFFFFFFFFFLL;
    v16 = sub_2B51D8(v12, v13 & 0xFFFFFFFFFFFFLL);
    if (*(v12 + 7772) == 1)
    {
      v17 = sub_30C50C(v12 + 3896, v13, 0);
      v18 = &v17[-*v17];
      if (*v18 < 5u)
      {
        v19 = 0;
      }

      else
      {
        v19 = *(v18 + 2);
        if (v19)
        {
          v19 += &v17[*&v17[v19]];
        }
      }

      v20 = (v19 + ((v13 >> 30) & 0x3FFFC) + 4 + *(v19 + ((v13 >> 30) & 0x3FFFC) + 4));
    }

    else
    {
      v20 = 0;
    }

    v21 = sub_31D7E8(v12, v15, 1);
    v30[0] = v16;
    v30[1] = v20;
    v30[2] = v21;
    v30[3] = v22;
    v31 = v15 | (v14 << 48);
    v23 = sub_70E2E0(a1, v30, v7);
    v25 = (v30[0] - *v30[0]);
    v26 = *v25;
    if (BYTE6(v31))
    {
      if (v26 < 0x9B)
      {
        goto LABEL_4;
      }

      v27 = v25[77];
      if (!v27 || (*(v30[0] + v27) & 2) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v26 < 0x9B)
      {
        goto LABEL_4;
      }

      v28 = v25[77];
      if (!v28 || (*(v30[0] + v28) & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v24.i16[0] = *(a1 + 1416);
    if (fabs(v23) + vmovl_s16(v24).i32[0] < v11)
    {
      return 1;
    }

LABEL_4:
    v9 += 40;
    if (v9 == v10)
    {
      return 0;
    }
  }
}

BOOL sub_70ED3C(uint64_t a1, int **a2, int **a3)
{
  v3 = (*a2 - **a2);
  v4 = *v3;
  if (*(a2 + 38))
  {
    if (v4 >= 0x47)
    {
      v5 = v3[35];
      if (v5)
      {
        v6 = 2;
LABEL_8:
        v7 = (*(*a2 + v5) & v6) != 0;
        goto LABEL_10;
      }
    }
  }

  else if (v4 >= 0x47)
  {
    v5 = v3[35];
    if (v5)
    {
      v6 = 1;
      goto LABEL_8;
    }
  }

  v7 = 0;
LABEL_10:
  v8 = *a3;
  v9 = (*a3 - **a3);
  v10 = *v9;
  if (*(a3 + 38))
  {
    if (v10 >= 0x47)
    {
      v11 = v9[35];
      if (v11)
      {
        return v7 ^ ((*&v8[v11] & 2) != 0) ^ 1;
      }
    }
  }

  else if (v10 >= 0x47)
  {
    v13 = v9[35];
    if (v13)
    {
      return v7 ^ ((*&v8[v13] & 1) != 0) ^ 1;
    }
  }

  return !v7;
}

BOOL sub_70EE0C(uint64_t a1, int **a2)
{
  v2 = *a2;
  v3 = (*a2 - **a2);
  v4 = *v3;
  if (*(a2 + 38))
  {
    if (v4 >= 0x47)
    {
      v5 = v3[35];
      if (v5)
      {
        return (*&v2[v5] & 2) != 0;
      }
    }
  }

  else if (v4 >= 0x47)
  {
    v7 = v3[35];
    if (v7)
    {
      return (*&v2[v7] & 1) != 0;
    }
  }

  return 0;
}

BOOL sub_70EE70(uint64_t a1, int **a2)
{
  v2 = *a2;
  v3 = (*a2 - **a2);
  v4 = *v3;
  if (*(a2 + 38))
  {
    if (v4 >= 0x47)
    {
      v5 = v3[35];
      if (v5)
      {
        return (*&v2[v5] & 1) != 0;
      }
    }
  }

  else if (v4 >= 0x47)
  {
    v7 = v3[35];
    if (v7)
    {
      return (*&v2[v7] & 2) != 0;
    }
  }

  return 0;
}

BOOL sub_70EED4(void *a1, int **a2)
{
  v4 = *a2;
  v5 = (*a2 - **a2);
  v6 = *v5;
  if (*(a2 + 38))
  {
    if (v6 >= 0x9B)
    {
      v7 = v5[77];
      if (v7)
      {
        v8 = *&v4[v7];
        if ((v8 & 2) != 0 && (v8 & 1) == 0)
        {
LABEL_67:
          v55 = *(a2 + 1);
          v72 = *a2;
          v73 = v55;
          v56 = a2[4];
          v74 = v56;
          v57 = a1[111];
          v58 = v56 & 0xFFFFFFFFFFFFLL;
          v59 = v56 & 0xFFFFFFFFFFFFLL | (((v56 & 0xFF000000000000) == 0) << 48);
          v60 = sub_2B51D8(v57, v56 & 0xFFFFFFFFFFFFLL);
          if (*(v57 + 7772) == 1)
          {
            v61 = sub_30C50C(v57 + 3896, v56, 0);
            v62 = &v61[-*v61];
            if (*v62 < 5u)
            {
              v63 = 0;
            }

            else
            {
              v63 = *(v62 + 2);
              if (v63)
              {
                v63 += &v61[*&v61[v63]];
              }
            }

            v64 = v63 + ((v56 >> 30) & 0x3FFFC) + 4 + *(v63 + ((v56 >> 30) & 0x3FFFC) + 4);
          }

          else
          {
            v64 = 0;
          }

          *&v69 = v60;
          *(&v69 + 1) = v64;
          *&v70 = sub_31D7E8(v57, v58, 1);
          *(&v70 + 1) = v65;
          v71 = v59;
          goto LABEL_19;
        }
      }
    }
  }

  else if (v6 >= 0x9B)
  {
    v9 = v5[77];
    if (v9)
    {
      v10 = *&v4[v9];
      if ((v10 & 1) != 0 && (v10 & 2) == 0)
      {
        goto LABEL_67;
      }
    }
  }

  v11 = a1[111];
  v12 = a2[4];
  v13 = v12 & 0xFFFFFFFFFFFFLL;
  v14 = v12 & 0xFFFFFFFFFFFFLL | (((v12 & 0xFF000000000000) == 0) << 48);
  v15 = sub_2B51D8(v11, v12 & 0xFFFFFFFFFFFFLL);
  if (*(v11 + 7772) == 1)
  {
    v16 = sub_30C50C(v11 + 3896, v12, 0);
    v17 = &v16[-*v16];
    if (*v17 < 5u)
    {
      v18 = 0;
    }

    else
    {
      v18 = *(v17 + 2);
      if (v18)
      {
        v18 += &v16[*&v16[v18]];
      }
    }

    v19 = v18 + ((v12 >> 30) & 0x3FFFC) + 4 + *(v18 + ((v12 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v19 = 0;
  }

  *&v72 = v15;
  *(&v72 + 1) = v19;
  *&v73 = sub_31D7E8(v11, v13, 1);
  *(&v73 + 1) = v20;
  v74 = v14;
  v21 = *(a2 + 1);
  v69 = *a2;
  v70 = v21;
  v71 = a2[4];
LABEL_19:
  sub_70F3A8(a1, &v72, 1, a1 + 168, 1, &v66);
  v22 = v66;
  if (v66 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_45;
  }

  v23 = v67;
  v24 = v68;
  sub_70F3A8(a1, &v69, 0, a1 + 168, 1, &v66);
  if (v66 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_45;
  }

  v25 = (v23 - *v23);
  if (*v25 >= 0x2Fu && (v26 = v25[23]) != 0)
  {
    v27 = *(v23 + v26);
    v28 = v27 > 0x2F;
    v29 = 0xE2E040048000uLL >> v27;
    if (v28)
    {
      v30 = 0;
    }

    else
    {
      v30 = v29;
    }

    v31 = v68;
    v32 = (v67 - *v67);
    if (*v32 < 0x2Fu)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v30 = 0;
    v31 = v68;
    v32 = (v67 - *v67);
    if (*v32 < 0x2Fu)
    {
      goto LABEL_36;
    }
  }

  v33 = v32[23];
  if (v33)
  {
    v34 = *(v67 + v33);
    v28 = v34 > 0x2F;
    v35 = (1 << v34) & 0xE2E040048000;
    v36 = v28 || v35 == 0;
    if (!v36)
    {
      if ((v30 & 1) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_37;
    }
  }

LABEL_36:
  if (v30)
  {
    goto LABEL_45;
  }

LABEL_37:
  v37 = (v72 - *v72);
  if (*v37 >= 9u && (v38 = v37[4]) != 0)
  {
    v39 = *(v72 + v38);
  }

  else
  {
    v39 = 0;
  }

  v36 = ((v24 | v31) & 1) == 0;
  v40 = 169;
  if (!v36)
  {
    v40 = 168;
  }

  if (v66 + v22 + v39 < a1[v40])
  {
    return 1;
  }

LABEL_45:
  sub_70F3A8(a1, &v72, 1, a1 + 170, 0, &v66);
  v42 = v66;
  if (v66 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v43 = v67;
  sub_70F3A8(a1, &v69, 0, a1 + 170, 0, &v66);
  if (v66 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v44 = (v43 - *v43);
  if (*v44 < 0x2Fu)
  {
    LOBYTE(v45) = 0;
    v47 = (v67 - *v67);
    if (*v47 < 0x2Fu)
    {
      goto LABEL_61;
    }
  }

  else
  {
    v45 = v44[23];
    if (v45)
    {
      v46 = *(v43 + v45);
      v28 = v46 > 0x2F;
      v45 = 0xE2E040048000uLL >> v46;
      if (v28)
      {
        LOBYTE(v45) = 0;
      }
    }

    v47 = (v67 - *v67);
    if (*v47 < 0x2Fu)
    {
      goto LABEL_61;
    }
  }

  v48 = v47[23];
  if (v48)
  {
    v49 = *(v67 + v48);
    v28 = v49 > 0x2F;
    v50 = (1 << v49) & 0xE2E040048000;
    if (!v28 && v50 != 0)
    {
      if (v45)
      {
        goto LABEL_62;
      }

      return 0;
    }
  }

LABEL_61:
  if (v45)
  {
    return 0;
  }

LABEL_62:
  v52 = (v72 - *v72);
  if (*v52 >= 9u && (v53 = v52[4]) != 0)
  {
    v54 = *(v72 + v53);
  }

  else
  {
    v54 = 0;
  }

  return v66 + v42 + v54 < a1[170];
}

void sub_70F3A8(uint64_t a1@<X0>, int **a2@<X1>, int a3@<W2>, void *a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v8 = 0;
  *(a1 + 856) = *(a1 + 848);
  *(a1 + 832) = *(a1 + 824);
  *(a1 + 872) = 0;
  *(a1 + 776) = *(a1 + 768);
  do
  {
    v10 = a1 + v8;
    if (*(a1 + v8 + 16))
    {
      v11 = *(v10 + 24);
      if (v11 >= 0x80)
      {
        v9 = (a1 + v8);
        operator delete(*(a1 + v8));
        v9[5] = 0;
        *v9 = &unk_2290750;
        v9[1] = 0;
        v9[2] = 0;
        v9[3] = 0;
      }

      else if (v11)
      {
        *(v10 + 16) = 0;
        memset(*(a1 + v8), 128, v11 + 8);
        *(*(a1 + v8) + v11) = -1;
        v12 = *(v10 + 24);
        if (v12 == 7)
        {
          v13 = 6;
        }

        else
        {
          v13 = v12 - (v12 >> 3);
        }

        *(a1 + v8 + 40) = v13 - *(v10 + 16);
      }
    }

    v8 += 48;
  }

  while (v8 != 768);
  *(a1 + 800) = *(a1 + 792);
  *(a1 + 816) = 0;
  v14 = a2[4];
  LODWORD(v165[0]) = v14;
  BYTE6(v165[0]) = BYTE6(v14);
  WORD2(v165[0]) = WORD2(v14);
  v15 = (*a2 - **a2);
  v17 = *v15 >= 0x2Fu && (v16 = v15[23]) != 0 && (*(*a2 + v16) & 0xF7) == 34;
  *v173 = 0;
  v18 = *(a2 + 1);
  *&v173[8] = *a2;
  *&v173[24] = v18;
  v174 = a2[4];
  v175 = v17;
  sub_712D7C(a1, v165, v173);
  v170 = 0;
  v171 = 0;
  v172 = 0;
  __p = 0;
  v168 = 0;
  v169 = 0;
  if (*(a1 + 872))
  {
    v19 = 0;
    *&v156[8] = 0;
    v20 = a3;
    *v156 = a3 ^ 1u;
    while (1)
    {
      v21 = *(a1 + 824);
      v22 = *(a1 + 768) + (*v21 << 6);
      v23 = *(v22 + 16);
      v24 = *(v22 + 32);
      v166 = *(v22 + 48);
      v165[0] = v23;
      v165[1] = v24;
      v160 = *(v22 + 8);
      v157 = *(v22 + 56);
      sub_DD38(a1 + 792, v21);
      v25 = *(a1 + 824);
      *(*(a1 + 848) + 4 * *v25) = -1;
      v26 = *(a1 + 872) - 1;
      *(a1 + 872) = v26;
      if (v26)
      {
        v27 = &v25[4 * v26];
        *v25 = *v27;
        *(v25 + 1) = *(v27 + 1);
        v28 = *(a1 + 824);
        *(*(a1 + 848) + 4 * *v28) = 0;
        v29 = *(a1 + 872);
        if (v29 >= 2)
        {
          v30 = 0;
          v31 = 0;
          v32 = 1;
          do
          {
            v33 = v30 + 5;
            if (v33 >= v29)
            {
              v34 = v29;
            }

            else
            {
              v34 = v33;
            }

            if (v33 <= v32)
            {
              break;
            }

            v35 = v31;
            v36 = *&v28[4 * v31 + 2];
            v37 = &v28[4 * v32 + 2];
            v31 = -1;
            v38 = v36;
            do
            {
              v40 = *v37;
              v37 += 4;
              v39 = v40;
              if (v40 < v38)
              {
                v38 = v39;
                v31 = v32;
              }

              ++v32;
            }

            while (v32 < v34);
            if (v31 >= v29)
            {
              break;
            }

            v41 = 4 * v31;
            v42 = &v28[v41];
            v43 = 16 * v35;
            v44 = v28 + v43;
            v45 = *v42;
            *v42 = *v44;
            *v44 = v45;
            v46 = *(v42 + 1);
            *(v42 + 1) = v36;
            *(v44 + 1) = v46;
            v28 = *(a1 + 824);
            v47 = v28[v41];
            v48 = *(a1 + 848);
            v49 = *(v28 + v43);
            LODWORD(v43) = *(v48 + 4 * v47);
            *(v48 + 4 * v47) = *(v48 + 4 * v49);
            *(v48 + 4 * v49) = v43;
            v30 = 4 * v31;
            v32 = (4 * v31) | 1;
            v29 = *(a1 + 872);
          }

          while (v32 < v29);
        }
      }

      *(a1 + 832) -= 16;
      sub_31B8F4(*(a1 + 888), v165, &v170);
      v50 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v171 - v170) >> 3));
      *v173 = v165;
      *&v173[8] = a1;
      if (v171 == v170)
      {
        v51 = 0;
      }

      else
      {
        v51 = v50;
      }

      sub_71B06C(v170, v171, v173, v51, 1);
      if (!v20)
      {
        v55 = -1;
        goto LABEL_46;
      }

      memset(v173, 0, 24);
      sub_70E87C(a1, v165, &v170, v173, v52);
      if (*v173 != *&v173[8])
      {
        break;
      }

LABEL_42:
      v55 = -1;
      if (*v173)
      {
        goto LABEL_45;
      }

LABEL_46:
      v57 = v170;
      v56 = v171;
      if (v170 != v171)
      {
        v161 = 0;
        v158 = v19;
        v163 = v171;
        while (1)
        {
          v63 = (*v57 - **v57);
          if (*v63 >= 0x2Fu)
          {
            v58 = v63[23];
            if (v58)
            {
              v59 = *(*v57 + v58);
              v60 = v59 > 0x36;
              v61 = (1 << v59) & 0x44000000000008;
              if (!v60 && v61 != 0)
              {
                goto LABEL_53;
              }
            }
          }

          if (v20)
          {
            if (v55 == -1)
            {
              goto LABEL_121;
            }

            v64 = *(sub_6B8D68(&v170, v55) + 32);
            v65 = v57[4];
            if (v64 != v65 || WORD2(v64) != WORD2(v65))
            {
              goto LABEL_121;
            }

            v66 = BYTE6(v64) == BYTE6(v65);
LABEL_116:
            v95 = v66;
            v96 = *&v165[0];
            v97 = **&v165[0];
            v98 = *&v165[0] - v97;
            v99 = *(*&v165[0] - v97);
            if (!BYTE6(v166))
            {
              goto LABEL_109;
            }

            goto LABEL_122;
          }

          v67 = v19;
          v68 = *(a1 + 888);
          v69 = v57[4];
          v70 = (v69 & 0xFF000000000000) == 0;
          v71 = v69 & 0xFFFFFFFFFFFFLL;
          v72 = sub_2B51D8(v68, v69 & 0xFFFFFFFFFFFFLL);
          if (*(v68 + 7772) == 1)
          {
            v73 = sub_30C50C(v68 + 3896, v69, 0);
            v74 = &v73[-*v73];
            if (*v74 < 5u)
            {
              v75 = 0;
            }

            else
            {
              v75 = *(v74 + 2);
              if (v75)
              {
                v75 += &v73[*&v73[v75]];
              }
            }

            v76 = v75 + ((v69 >> 30) & 0x3FFFC) + 4 + *(v75 + ((v69 >> 30) & 0x3FFFC) + 4);
            if (*(v68 + 7773) != 1)
            {
              goto LABEL_95;
            }
          }

          else
          {
            v76 = 0;
            if (*(v68 + 7773) != 1)
            {
              goto LABEL_95;
            }
          }

          v77 = sub_31D994(v68 + 3896, v69, 1);
          if (!v77)
          {
            goto LABEL_95;
          }

          v78 = &v77[-*v77];
          if (*v78 < 0xBu)
          {
            goto LABEL_95;
          }

          v79 = *(v78 + 5);
          if (!*(v78 + 5))
          {
            goto LABEL_96;
          }

          v80 = &v79[v77 + *&v79[v77]];
          v19 = v67;
          if (*v80 <= HIDWORD(v71) || (v81 = &v80[8 * HIDWORD(v71)], v84 = *(v81 + 1), v83 = v81 + 4, (v82 = v84) == 0))
          {
            v79 = 0;
            v88 = 0;
            goto LABEL_97;
          }

          v85 = sub_2B3284(v68 + 3896, v82, 1);
          if (!v85)
          {
LABEL_95:
            v79 = 0;
LABEL_96:
            v88 = 0;
            v19 = v67;
            goto LABEL_97;
          }

          v86 = &v85[-*v85];
          v87 = *v86;
          if ((*(v83 + 6) & 2) != 0)
          {
            if (v87 < 5)
            {
              goto LABEL_95;
            }

            v88 = *(v86 + 2);
            v19 = v67;
            if (*(v86 + 2))
            {
              v88 = (v88 + v85 + *(v88 + v85));
            }

            if (v87 < 7)
            {
              goto LABEL_86;
            }

            v89 = *(v86 + 3);
            if (!v89)
            {
              goto LABEL_86;
            }
          }

          else if (v87 < 7)
          {
            if (v87 < 5)
            {
              goto LABEL_95;
            }

            v88 = 0;
            v19 = v67;
            v89 = *(v86 + 2);
            if (!v89)
            {
LABEL_86:
              v79 = 0;
              if (!v88)
              {
                goto LABEL_93;
              }

              goto LABEL_91;
            }
          }

          else
          {
            v88 = *(v86 + 3);
            if (*(v86 + 3))
            {
              v88 = (v88 + v85 + *(v88 + v85));
            }

            v19 = v67;
            v89 = *(v86 + 2);
            if (!v89)
            {
              goto LABEL_86;
            }
          }

          v79 = &v85[v89 + *&v85[v89]];
          if (!v88)
          {
            goto LABEL_93;
          }

LABEL_91:
          v90 = *(v83 + 2);
          if (*v88 > v90)
          {
            v88 = (v88 + 4 * v90 + v88[v90 + 1] + 4);
LABEL_93:
            if (v79)
            {
              goto LABEL_221;
            }

            goto LABEL_97;
          }

          v88 = 0;
          if (v79)
          {
LABEL_221:
            v146 = *(v83 + 2);
            if (*v79 <= v146)
            {
              v79 = 0;
            }

            else
            {
              v79 += 4 * v146 + *&v79[4 * v146 + 4] + 4;
            }
          }

LABEL_97:
          *v173 = v72;
          *&v173[8] = v76;
          *&v173[16] = v88;
          *&v173[24] = v79;
          *&v173[32] = v71 | (v70 << 48);
          sub_31B8F4(*(a1 + 888), v173, &__p);
          v91 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v168 - __p) >> 3));
          v176 = v173;
          v177 = a1;
          if (v168 == __p)
          {
            v92 = 0;
          }

          else
          {
            v92 = v91;
          }

          sub_71B06C(__p, v168, &v176, v92, 1);
          v176 = 0;
          v177 = 0;
          v178 = 0;
          sub_70E87C(a1, v173, &__p, &v176, v93);
          v20 = a3;
          v56 = v163;
          if (v176 != v177)
          {
            v94 = v176;
            while (*v94 != -1)
            {
              if (++v94 == v177)
              {
                goto LABEL_112;
              }
            }

            if (v94 != v177)
            {
              goto LABEL_106;
            }

LABEL_112:
            v55 = *v176;
            v177 = v176;
            operator delete(v176);
            if (v55 == -1 || (v101 = *(sub_6B8D68(&__p, v55) + 32), v101 != v166) || WORD2(v101) != WORD2(v166))
            {
LABEL_121:
              v95 = 0;
              v96 = *&v165[0];
              v97 = **&v165[0];
              v98 = *&v165[0] - v97;
              v99 = *(*&v165[0] - v97);
              if (!BYTE6(v166))
              {
                goto LABEL_109;
              }

              goto LABEL_122;
            }

            v66 = ((v101 & 0xFF000000000000) == 0) == BYTE6(v166);
            goto LABEL_116;
          }

LABEL_106:
          if (v176)
          {
            v177 = v176;
            operator delete(v176);
          }

          v95 = 0;
          v55 = -1;
          v96 = *&v165[0];
          v97 = **&v165[0];
          v98 = *&v165[0] - v97;
          v99 = *(*&v165[0] - v97);
          if (!BYTE6(v166))
          {
LABEL_109:
            if (v99 >= 0x4B)
            {
              v100 = *(v98 + 74);
              if (v100)
              {
                goto LABEL_124;
              }
            }

            goto LABEL_128;
          }

LABEL_122:
          if (v99 >= 0x49)
          {
            v100 = *(v98 + 72);
            if (v100)
            {
LABEL_124:
              v102 = *(v96 + v100);
              v103 = *(v57 + 38);
              v104 = *v57;
              v105 = **v57;
              v106 = (*v57 - v105);
              v107 = *v106;
              if (*(v57 + 38))
              {
                goto LABEL_129;
              }

              goto LABEL_125;
            }
          }

LABEL_128:
          v102 = -1;
          v103 = *(v57 + 38);
          v104 = *v57;
          v105 = **v57;
          v106 = (*v57 - v105);
          v107 = *v106;
          if (*(v57 + 38))
          {
LABEL_129:
            if (v107 >= 0x4B)
            {
              v108 = v106[37];
              if (v106[37])
              {
                goto LABEL_131;
              }
            }

            goto LABEL_132;
          }

LABEL_125:
          if (v107 >= 0x49)
          {
            v108 = v106[36];
            if (v106[36])
            {
LABEL_131:
              v109 = *(v104 + v108);
              goto LABEL_133;
            }
          }

LABEL_132:
          v109 = 0xFFFF;
LABEL_133:
          v110 = -v105;
          v111 = v102 + 18000;
          v112 = v102 - 18000;
          if ((v111 >> 5) < 0x465u)
          {
            v112 = v111;
          }

          v113 = v109 - v112;
          if (v113 > 18000)
          {
            v113 -= 36000;
          }

          if (v113 < -17999)
          {
            v113 += 36000;
          }

          v114 = v113 / 100.0;
          if (a5)
          {
            if (v107 < 0x2F)
            {
              goto LABEL_178;
            }

            if (v106[23] && *(v104 + v106[23]) == 23)
            {
              if (v95)
              {
                goto LABEL_178;
              }
            }

            else if (v107 < 0x9B || !v106[77] || v95 & 1 | ((*(v104 + v106[77]) & 4) == 0))
            {
              goto LABEL_178;
            }
          }

          else
          {
            if (v103)
            {
              if (v107 < 0x9B)
              {
                goto LABEL_178;
              }

              v115 = v106[77];
              if (!v106[77])
              {
                goto LABEL_178;
              }

              v116 = 2;
              v117 = 1;
            }

            else
            {
              if (v107 < 0x9B)
              {
                goto LABEL_178;
              }

              v115 = v106[77];
              if (!v106[77])
              {
                goto LABEL_178;
              }

              v116 = 1;
              v117 = 2;
            }

            if (((*(v104 + v115) & v116) != 0) == ((*(v104 + v115) & v117) != 0))
            {
              goto LABEL_178;
            }

            LOWORD(v53) = *(a1 + 1368);
            v53 = vmovl_s16(*&v53).i32[0];
            if (v95 & 1 | (fabs(v114) <= v53))
            {
              goto LABEL_178;
            }
          }

          if (v107 < 0x9B)
          {
            LODWORD(v118) = 0;
          }

          else
          {
            v118 = v106[77];
            if (v106[77])
            {
              v119 = *(v104 + v118);
              v118 = (v119 >> 15) & 1;
              v120 = 1;
              if (v103)
              {
                v120 = 2;
              }

              v121 = (v119 & v120) != 0;
              goto LABEL_165;
            }
          }

          v121 = 0;
LABEL_165:
          if (v118 != v121)
          {
            v122 = v114 < 0.0;
          }

          else
          {
            v122 = v114 > 0.0;
          }

          if (v122)
          {
            *v173 = sub_3116D0(v165);
            if (!sub_420B0C((a1 + 896), v173))
            {
              if (v157)
              {
                v150 = 1;
                v151 = a6;
              }

              else
              {
                v152 = (*v57 - **v57);
                v151 = a6;
                v150 = *v152 >= 0x2Fu && (v153 = v152[23]) != 0 && (*(*v57 + v153) & 0xF7) == 34;
              }

              *v151 = v160;
              v154 = *(v57 + 1);
              *(v151 + 8) = *v57;
              *(v151 + 24) = v154;
              *(v151 + 40) = v57[4];
              *(v151 + 48) = v150;
              v149 = __p;
              if (__p)
              {
                goto LABEL_231;
              }

              goto LABEL_232;
            }

            v96 = *&v165[0];
          }

          v97 = *v96;
          if (*(v96 - v97) >= 0x2Fu && *(v96 - v97 + 46))
          {
            v123 = *(v96 + *(v96 - v97 + 46));
            v60 = v123 > 0x2A;
            v124 = 0x2FBD97EFFFBuLL >> v123;
            if (v60)
            {
              LOBYTE(v124) = 1;
            }
          }

          else
          {
            LOBYTE(v124) = 1;
          }

          v161 |= v124 | a3 ^ 1;
          v104 = *v57;
          v110 = -**v57;
LABEL_178:
          v125 = (v104 + v110);
          v126 = *v125;
          if (v126 < 9)
          {
            v127 = 0;
            v128 = *(v57 + 38);
            v129 = v126 >= 0x9B;
            if (v20)
            {
              goto LABEL_182;
            }
          }

          else
          {
            v127 = v125[4];
            if (v125[4])
            {
              v127 = *(v104 + v127);
            }

            v128 = *(v57 + 38);
            v129 = v126 >= 0x9B;
            if (v20)
            {
LABEL_182:
              if (!v128)
              {
                goto LABEL_190;
              }

              goto LABEL_183;
            }
          }

          if (v128)
          {
LABEL_190:
            if (!v129 || !v125[77] || (*(v104 + v125[77]) & 1) == 0)
            {
              goto LABEL_53;
            }

            goto LABEL_194;
          }

LABEL_183:
          if (!v129 || !v125[77] || (*(v104 + v125[77]) & 2) == 0)
          {
            goto LABEL_53;
          }

LABEL_194:
          v130 = v127 + v160;
          if (v127 + v160 > *a4)
          {
            goto LABEL_53;
          }

          v131 = (v96 - v97);
          if (*v131 < 0x2Fu || (v132 = v131[23]) == 0 || (v133 = *(v96 + v132), v133 > 0x2A) || ((1 << v133) & 0x50426810004) == 0)
          {
            if (!v95)
            {
              goto LABEL_53;
            }
          }

          if (v157)
          {
            v134 = 1;
            v135 = v158;
            if (v158 >= *&v156[4])
            {
              goto LABEL_205;
            }
          }

          else if (v125[23])
          {
            v134 = (*(v104 + v125[23]) & 0xF7) == 34;
            v135 = v158;
            if (v158 >= *&v156[4])
            {
              goto LABEL_205;
            }
          }

          else
          {
            v134 = 0;
            v135 = v158;
            if (v158 >= *&v156[4])
            {
LABEL_205:
              v138 = v135 - v19;
              v139 = 0x6DB6DB6DB6DB6DB7 * ((v135 - v19) >> 3);
              v140 = v139 + 1;
              if ((v139 + 1) > 0x492492492492492)
              {
                sub_1794();
              }

              v141 = v19;
              if (0xDB6DB6DB6DB6DB6ELL * ((*&v156[4] - v19) >> 3) > v140)
              {
                v140 = 0xDB6DB6DB6DB6DB6ELL * ((*&v156[4] - v19) >> 3);
              }

              if ((0x6DB6DB6DB6DB6DB7 * ((*&v156[4] - v19) >> 3)) >= 0x249249249249249)
              {
                v142 = 0x492492492492492;
              }

              else
              {
                v142 = v140;
              }

              if (v142)
              {
                if (v142 <= 0x492492492492492)
                {
                  operator new();
                }

                sub_1808();
              }

              v143 = 56 * v139;
              *&v156[4] = 0;
              *v143 = v130;
              v144 = *v57;
              v145 = *(v57 + 1);
              *(v143 + 40) = v57[4];
              *(v143 + 24) = v145;
              *(v143 + 8) = v144;
              *(v143 + 48) = v134;
              v158 = 56 * v139 + 56;
              v19 = (56 * v139 + 56 * (v138 / -56));
              memcpy(v19, v141, v138);
              if (v141)
              {
                operator delete(v141);
              }

              v20 = a3;
              goto LABEL_219;
            }
          }

          *v173 = *v57;
          *&v173[16] = *(v57 + 1);
          *&v173[32] = v57[4];
          *v135 = v130;
          v136 = *&v173[32];
          v137 = *&v173[16];
          *(v135 + 8) = *v173;
          *(v135 + 24) = v137;
          *(v135 + 40) = v136;
          *(v135 + 48) = v134;
          v158 = v135 + 56;
LABEL_219:
          v56 = v163;
LABEL_53:
          v57 += 5;
          if (v57 == v56)
          {
            if ((v161 & 1) == 0 && v19 != v158)
            {
              v147 = v19;
              do
              {
                v148 = *(v147 + 5);
                *v173 = v148;
                v173[6] = BYTE6(v148);
                *&v173[4] = WORD2(v148);
                sub_712FC8(a1, v173, v147);
                v147 = (v147 + 56);
              }

              while (v147 != v158);
            }

            break;
          }
        }
      }

      if (!*(a1 + 872))
      {
        goto LABEL_230;
      }
    }

    v54 = *v173;
    while (*v54 != -1)
    {
      if (++v54 == *&v173[8])
      {
        goto LABEL_44;
      }
    }

    if (v54 != *&v173[8])
    {
      goto LABEL_42;
    }

LABEL_44:
    v55 = **v173;
LABEL_45:
    *&v173[8] = *v173;
    operator delete(*v173);
    goto LABEL_46;
  }

  v19 = 0;
LABEL_230:
  *a6 = 0x7FFFFFFFFFFFFFFFLL;
  *(a6 + 8) = 0u;
  *(a6 + 24) = 0u;
  *(a6 + 40) = 0x1000000000000;
  *(a6 + 48) = 0;
  v149 = __p;
  if (__p)
  {
LABEL_231:
    v168 = v149;
    operator delete(v149);
  }

LABEL_232:
  if (v19)
  {
    operator delete(v19);
  }

  if (v170)
  {
    v171 = v170;
    operator delete(v170);
  }
}

void sub_710240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
    if (!v32)
    {
LABEL_3:
      v34 = a28;
      if (!a28)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (!v32)
  {
    goto LABEL_3;
  }

  operator delete(v32);
  v34 = a28;
  if (!a28)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v34);
  _Unwind_Resume(exception_object);
}

uint64_t sub_7102E4(uint64_t a1, int **a2, int **a3)
{
  v7 = a2[4];
  v8 = a3[4];
  if (v7 == v8 && WORD2(v7) == WORD2(v8) && ((v7 & 0xFF000000000000) == 0) == BYTE6(v8))
  {
    return 1;
  }

  v52[1] = v6;
  v52[2] = v5;
  v52[7] = v3;
  v52[8] = v4;
  v10 = *a2;
  v11 = (*a2 - **a2);
  v12 = *v11;
  if ((v7 & 0xFF000000000000) != 0)
  {
    if (v12 < 0x9B)
    {
      return 0;
    }

    if (!v11[77])
    {
      return 0;
    }

    v13 = *(v10 + v11[77]);
    if ((v13 & 2) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v12 < 0x9B)
    {
      return 0;
    }

    if (!v11[77])
    {
      return 0;
    }

    v13 = *(v10 + v11[77]);
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v14 = BYTE6(v8);
  v15 = *a3;
  v16 = (*a3 - **a3);
  v17 = *v16;
  if (v14)
  {
    if (v17 < 0x9B)
    {
      return 0;
    }

    if (!v16[77])
    {
      return 0;
    }

    v18 = *(v15 + v16[77]);
    if ((v18 & 2) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v17 < 0x9B)
    {
      return 0;
    }

    if (!v16[77])
    {
      return 0;
    }

    v18 = *(v15 + v16[77]);
    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  if ((v18 & 1) == ((v18 >> 1) & 1))
  {
    return 0;
  }

  if ((v13 & 4) != 0)
  {
    goto LABEL_28;
  }

  v19 = v11[23];
  if (v19)
  {
    if (*(v10 + v19) != 32 || (v13 & 3) != 3)
    {
      goto LABEL_28;
    }
  }

  else if ((~v13 & 3) != 0)
  {
LABEL_28:
    LOBYTE(v21) = 1;
    goto LABEL_29;
  }

  v21 = v16[23];
  if (v16[23])
  {
    LOBYTE(v21) = *(v15 + v21) != 32;
  }

LABEL_29:
  if (((v13 ^ (v13 >> 1) & 1) & 1) == 0 && v21 & 1 | ((*(a1 + 1257) & 1) == 0))
  {
    return 0;
  }

  v25 = sub_70E2E0(a1, a2, a3);
  v26 = (*a2 - **a2);
  v27 = *v26;
  if (*(a2 + 38))
  {
    if (v27 >= 0x49)
    {
      v28 = v26[36];
      v29 = a1;
      v30 = a3;
      if (v28)
      {
        goto LABEL_34;
      }

      goto LABEL_40;
    }

LABEL_42:
    v31 = -1;
    v29 = a1;
    v30 = a3;
    v32 = *a3;
    v33 = (*a3 - **a3);
    v34 = *v33;
    if (!*(a3 + 38))
    {
      goto LABEL_35;
    }

LABEL_43:
    if (v34 < 0x4B)
    {
      goto LABEL_46;
    }

    v35 = v33[37];
    if (!v35)
    {
      goto LABEL_46;
    }

LABEL_45:
    v36 = *(v32 + v35);
    goto LABEL_47;
  }

  if (v27 < 0x4B)
  {
    goto LABEL_42;
  }

  v28 = v26[37];
  v29 = a1;
  v30 = a3;
  if (!v28)
  {
LABEL_40:
    v31 = -1;
    v32 = *v30;
    v33 = (*v30 - **v30);
    v34 = *v33;
    if (!*(v30 + 38))
    {
      goto LABEL_35;
    }

    goto LABEL_43;
  }

LABEL_34:
  v31 = *(*a2 + v28);
  v32 = *v30;
  v33 = (*v30 - **v30);
  v34 = *v33;
  if (*(v30 + 38))
  {
    goto LABEL_43;
  }

LABEL_35:
  if (v34 >= 0x49)
  {
    v35 = v33[36];
    if (v35)
    {
      goto LABEL_45;
    }
  }

LABEL_46:
  v36 = 0xFFFF;
LABEL_47:
  v37 = v31 + 18000;
  v38 = v31 - 18000;
  if ((v37 >> 5) < 0x465u)
  {
    v38 = v37;
  }

  v39 = v36 - v38;
  if (v39 > 18000)
  {
    v39 -= 36000;
  }

  if (v39 >= -17999)
  {
    v40 = v39;
  }

  else
  {
    v40 = v39 + 36000;
  }

  v41 = sub_70DE9C(*(v29 + 888), a2, v30);
  v42 = a2;
  v43 = (*a2 - **a2);
  if (*v43 >= 0x9Bu)
  {
    v44 = v43[77];
    if (v44)
    {
      if ((((v41 > 0.0) ^ (*(*a2 + v44 + 1) >> 7)) & 1) == 0)
      {
        goto LABEL_60;
      }

      return 0;
    }
  }

  if (v41 > 0.0)
  {
    return 0;
  }

LABEL_60:
  v45 = fabs(v25);
  v46 = *(a1 + 1136);
  if (v45 <= v46)
  {
    v47 = fabs(v40 / 100.0);
    if (v47 <= v46)
    {
      if ((v48 = *(a1 + 1128), v45 <= v48) && v47 <= v48 || (v49 = sub_31EE90(*(a1 + 888), a2[4] & 0xFFFFFFFFFFFFFFLL, a3[4] & 0xFFFFFFFFFFFFFFLL), v42 = a2, (v49 & 1) == 0))
      {
        v50 = sub_3116D0(v42);
        v51 = sub_311544(a3);
        if (v50 != v51)
        {
          return 0;
        }

        if ((v51 ^ v50) >> 32)
        {
          return 0;
        }

        v52[0] = sub_3116D0(a2);
        if ((sub_420B0C((a1 + 896), v52) & 1) == 0)
        {
          return 0;
        }
      }
    }
  }

  return 1;
}

BOOL sub_7106B4(uint64_t a1, char **a2, int **a3)
{
  v3 = *a3;
  v4 = (*a3 - **a3);
  v5 = *v4;
  if (v5 >= 0x2F && v4[23])
  {
    v6 = *(v3 + v4[23]);
    v7 = v6 > 0x36;
    v8 = (1 << v6) & 0x44000000000008;
    if (!v7 && v8 != 0)
    {
      return 0;
    }
  }

  v10 = *a2;
  v11 = &(*a2)[-**a2];
  v12 = *v11;
  if (v12 < 0x2F)
  {
    return 0;
  }

  if (!*(v11 + 23) || *(v10 + *(v11 + 23)) != 23)
  {
    if (v12 < 0x9B)
    {
      return 0;
    }

    v13 = *(v11 + 77);
    if (!v13 || (*(v10 + v13) & 4) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 1545) != 1)
  {
    return 0;
  }

  if (v5 >= 9 && (v14 = v4[4]) != 0)
  {
    if (*(v3 + v14) >= *(a1 + 1560))
    {
      return 0;
    }
  }

  else if (*(a1 + 1560) <= 0)
  {
    return 0;
  }

  return sub_70EED4(a1, a3);
}

BOOL sub_710788(uint64_t a1, unint64_t **a2, char a3)
{
  v30 = a3;
  v3 = *a2;
  if (*a2 == a2[1])
  {
    return 0;
  }

  v29 = a1;
  v6 = *(a1 + 888);
  v7 = *v3;
  v8 = sub_2B51D8(v6, *v3 & 0xFFFFFFFFFFFFLL);
  if (*(v6 + 7772) == 1)
  {
    v9 = sub_30C50C(v6 + 3896, v7, 0);
    v10 = &v9[-*v9];
    if (*v10 < 5u)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(v10 + 2);
      if (v11)
      {
        v11 += &v9[*&v9[v11]];
      }
    }

    v13 = v11 + ((v7 >> 30) & 0x3FFFC) + 4 + *(v11 + ((v7 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v13 = 0;
  }

  v28[0] = v8;
  v28[1] = v13;
  v28[2] = sub_31D7E8(v6, v7 & 0xFFFFFFFFFFFFLL, 1);
  v28[3] = v14;
  v28[4] = v7;
  v15 = *(a1 + 888);
  v16 = *(a2[1] - 1);
  v17 = sub_2B51D8(v15, v16 & 0xFFFFFFFFFFFFLL);
  if (*(v15 + 7772) == 1)
  {
    v18 = sub_30C50C(v15 + 3896, v16, 0);
    v19 = &v18[-*v18];
    if (*v19 < 5u)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(v19 + 2);
      if (v20)
      {
        v20 += &v18[*&v18[v20]];
      }
    }

    v21 = v20 + ((v16 >> 30) & 0x3FFFC) + 4 + *(v20 + ((v16 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v21 = 0;
  }

  v27[0] = v17;
  v27[1] = v21;
  v27[2] = sub_31D7E8(v15, v16 & 0xFFFFFFFFFFFFLL, 1);
  v27[3] = v22;
  v27[4] = v16;
  v23 = *a2;
  v24 = a2[1];
  v31[0] = a1;
  v31[1] = &v30;
  v31[2] = v28;
  v31[3] = v27;
  v31[4] = &v29;
  if (v23 != v24)
  {
    v25 = v23 + 1;
    while (v25 != v24)
    {
      v26 = sub_71DDDC(v31, *(v25 - 1), *v25);
      ++v25;
      if (v26)
      {
        v24 = v25 - 2;
        break;
      }
    }

    v23 = v24;
    v24 = a2[1];
  }

  return v23 != v24;
}

BOOL sub_710994(uint64_t a1, int **a2, int **a3, int a4)
{
  v7 = (*a3 - **a3);
  v8 = *v7;
  if (*(a3 + 38))
  {
    if (v8 < 0x49)
    {
      goto LABEL_11;
    }

    v9 = v7[36];
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  else if (v8 < 0x4B || (v9 = v7[37]) == 0)
  {
LABEL_11:
    v10 = -1;
    v11 = *a2;
    v12 = (*a2 - **a2);
    v13 = *v12;
    if (*(a2 + 38))
    {
      goto LABEL_12;
    }

LABEL_8:
    if (v13 >= 0x49)
    {
      v14 = v12[36];
      if (v14)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_15;
  }

  v10 = *(*a3 + v9);
  v11 = *a2;
  v12 = (*a2 - **a2);
  v13 = *v12;
  if (!*(a2 + 38))
  {
    goto LABEL_8;
  }

LABEL_12:
  if (v13 >= 0x4B)
  {
    v14 = v12[37];
    if (v14)
    {
LABEL_14:
      v15 = *&v11[v14];
      goto LABEL_16;
    }
  }

LABEL_15:
  v15 = 0xFFFF;
LABEL_16:
  v16 = v10 + 18000;
  v17 = v10 - 18000;
  if ((v16 >> 5) < 0x465u)
  {
    v17 = v16;
  }

  v18 = v15 - v17;
  if (v18 > 18000)
  {
    v18 -= 36000;
  }

  if (v18 >= -17999)
  {
    v19 = v18;
  }

  else
  {
    v19 = v18 + 36000;
  }

  v20 = sub_70E2E0(a1, a3, a2);
  v21 = (*a3 - **a3);
  if (*v21 >= 0x9Bu && (v22 = v21[77]) != 0 && (*(*a3 + v22 + 1) & 0x80) != 0)
  {
    v23 = *(a1 + 1088);
    result = v20 > v23;
    if (v20 > v23)
    {
      return result;
    }
  }

  else
  {
    v23 = *(a1 + 1088);
    result = v20 < -v23;
    if (v20 < -v23)
    {
      return result;
    }
  }

  if (a4)
  {
    return fabs(v19 / 100.0) < v23;
  }

  return result;
}

unint64_t sub_710B30(void *a1, void *a2)
{
  v3 = (a1 + 120);
  if (a1[123])
  {
    v5 = a1[122];
    if (v5)
    {
      do
      {
        v6 = *v5;
        operator delete(v5);
        v5 = v6;
      }

      while (v6);
    }

    a1[122] = 0;
    v7 = a1[121];
    if (v7)
    {
      bzero(*v3, 8 * v7);
    }

    a1[123] = 0;
  }

  result = sub_4D1DC0(a2);
  if (result)
  {
    v9 = result;
    for (i = 0; i != v9; ++i)
    {
      v11 = *(sub_4D1F50(a2, i) + 32);
      LODWORD(v12) = v11;
      BYTE6(v12) = BYTE6(v11);
      WORD2(v12) = WORD2(v11);
      v13 = &v12;
      result = sub_71E858(v3, &v12, &unk_229EB70, &v13);
      *(result + 24) = i;
    }
  }

  return result;
}

void *sub_710C28(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    if (v4.u32[0] < 2uLL)
    {
      v8 = *&v2 - 1;
      while (1)
      {
        v9 = result[1];
        if (v3 == v9)
        {
          if (result[2] == v3)
          {
            return result;
          }
        }

        else if ((v9 & v8) != v5)
        {
          return 0;
        }

        result = *result;
        if (!result)
        {
          return result;
        }
      }
    }

    do
    {
      v10 = result[1];
      if (v3 == v10)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }

        if (v10 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void sub_710D00(uint64_t a1, int **a2, int ***a3, void **a4, double a5)
{
  a4[1] = *a4;
  if (*a3 == a3[1])
  {
    return;
  }

  v5 = a4;
  v8 = a1;
  if (sub_712438(a1, a2, a3, a5))
  {
    v10 = v5[1];
    v9 = v5[2];
    if (v10 < v9)
    {
      *v10 = 0;
      v11 = v10 + 8;
LABEL_30:
      v5[1] = v11;
      return;
    }

    v22 = *v5;
    v23 = v10 - *v5;
    v24 = (v23 >> 3) + 1;
    if (!(v24 >> 61))
    {
      v25 = v9 - v22;
      if (v25 >> 2 > v24)
      {
        v24 = v25 >> 2;
      }

      if (v25 >= 0x7FFFFFFFFFFFFFF8)
      {
        v26 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v24;
      }

      if (v26)
      {
        if (!(v26 >> 61))
        {
          operator new();
        }

        goto LABEL_439;
      }

      v27 = (8 * (v23 >> 3));
      *v27 = 0;
      v11 = v27 + 1;
      memcpy(0, v22, v23);
      *v5 = 0;
      v5[1] = v11;
      v5[2] = 0;
      if (!v22)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    goto LABEL_437;
  }

  sub_7126C8(v8, a2, a3, v5);
  if (*v5 != v5[1])
  {
    return;
  }

  v248 = v5;
  v253[0] = v8;
  v253[1] = a2;
  v12 = *a3;
  v13 = a3[1];
  v254 = v8;
  v255 = a2;
  v256 = v253;
  if (v12 == v13)
  {
    goto LABEL_11;
  }

  while (!sub_71EBFC(&v254, v12))
  {
    v12 += 5;
    if (v12 == v13)
    {
      v12 = v13;
      break;
    }
  }

  v14 = v12;
  v12 = *a3;
  v13 = a3[1];
  if (v14 == v13)
  {
LABEL_11:
    v14 = sub_71EE9C(v12, v13, v8, a2);
    v12 = *a3;
    v13 = a3[1];
  }

  if (v14 == v13)
  {
    v15 = v12;
  }

  else
  {
    v15 = v14;
  }

  v249 = v15;
  v16 = v15[4];
  v17 = v16 & 0xFF000000000000;
  v18 = sub_2B51D8(*(v8 + 888), v16 & 0xFFFFFFFFFFFFLL);
  v19 = (v18 - *v18);
  v20 = *v19;
  if (v17)
  {
    if (v20 < 0x29)
    {
      goto LABEL_80;
    }

    v21 = v19[20];
    if (!v21)
    {
      goto LABEL_80;
    }

    goto LABEL_35;
  }

  if (v20 >= 0x27)
  {
    v21 = v19[19];
    if (v21)
    {
LABEL_35:
      if (*(v18 + v21 + *(v18 + v21)) != 1)
      {
        goto LABEL_80;
      }

      v28 = a3[1] - *a3;
      if (!v28)
      {
        goto LABEL_80;
      }

      v29 = 0;
      v30 = 0;
      v31 = 0xCCCCCCCCCCCCCCCDLL * (v28 >> 3);
      do
      {
        v32 = sub_605E3C(a3, v30);
        v33 = *(v32 + 32);
        v34 = v249[4];
        v37 = v33 == v34;
        v35 = HIDWORD(v33) & 0xFFFFFF;
        v36 = HIDWORD(v34) & 0xFFFFFF;
        v37 = v37 && v35 == v36;
        if (v37)
        {
          goto LABEL_38;
        }

        v38 = v32;
        if (fabs(sub_70E2E0(v8, a2, v32)) > *(v8 + 1000))
        {
          break;
        }

        v39 = (*a2 - **a2);
        v40 = *v39;
        if (*(a2 + 38))
        {
          if (v40 >= 0x47)
          {
            v41 = v39[35];
            if (v41)
            {
              v42 = 2;
LABEL_51:
              v43 = (*(*a2 + v41) & v42) != 0;
              goto LABEL_53;
            }
          }
        }

        else if (v40 >= 0x47)
        {
          v41 = v39[35];
          if (v41)
          {
            v42 = 1;
            goto LABEL_51;
          }
        }

        v43 = 0;
LABEL_53:
        v44 = *v38;
        v45 = (*v38 - **v38);
        v46 = *v45;
        if (!*(v38 + 38))
        {
          if (v46 >= 0x47)
          {
            v48 = v45[35];
            if (v48)
            {
              LOBYTE(v43) = v43 ^ ((*&v44[v48] & 1) != 0);
            }
          }

LABEL_61:
          if (v43)
          {
            goto LABEL_38;
          }

          goto LABEL_62;
        }

        if (v46 < 0x47)
        {
          goto LABEL_61;
        }

        v47 = v45[35];
        if (!v47)
        {
          goto LABEL_61;
        }

        if ((v43 ^ ((*&v44[v47] & 2) != 0)))
        {
          goto LABEL_38;
        }

LABEL_62:
        v49 = v249[4];
        v50 = v49 & 0xFF000000000000;
        v51 = sub_2B51D8(*(v8 + 888), v49 & 0xFFFFFFFFFFFFLL);
        v52 = (v51 - *v51);
        v53 = *v52;
        if (v50)
        {
          if (v53 >= 0x29)
          {
            v54 = v52[20];
            if (v54)
            {
              goto LABEL_68;
            }
          }
        }

        else if (v53 >= 0x27)
        {
          v54 = v52[19];
          if (v54)
          {
LABEL_68:
            v55 = *(v51 + v54 + *(v51 + v54));
            goto LABEL_70;
          }
        }

        v55 = 0;
LABEL_70:
        v56 = v38[4];
        v57 = v56 & 0xFF000000000000;
        v58 = sub_2B51D8(*(v8 + 888), v56 & 0xFFFFFFFFFFFFLL);
        v59 = (v58 - *v58);
        v60 = *v59;
        if (v57)
        {
          if (v60 >= 0x29)
          {
            v61 = v59[20];
            if (v61)
            {
              goto LABEL_76;
            }
          }
        }

        else if (v60 >= 0x27)
        {
          v61 = v59[19];
          if (v61)
          {
LABEL_76:
            if (v55)
            {
              v62 = *(v58 + v61 + *(v58 + v61));
              if (v62)
              {
                if (v62 - v55 >= *(v8 + 1168))
                {
                  v249 = &(*a3)[v29];
                }
              }
            }
          }
        }

LABEL_38:
        ++v30;
        v29 += 5;
      }

      while (v31 != v30);
    }
  }

LABEL_80:
  v63 = *a2;
  v64 = (*a2 - **a2);
  v65 = *v64;
  if (*(a2 + 38))
  {
    if (v65 < 0x47)
    {
      goto LABEL_100;
    }

    v66 = v64[35];
    if (!v66)
    {
      goto LABEL_100;
    }

    v67 = *(v63 + v66);
    if ((v67 & 0x141510) != 0)
    {
      goto LABEL_90;
    }

    v68 = 64;
    goto LABEL_89;
  }

  if (v65 < 0x47)
  {
    goto LABEL_100;
  }

  v69 = v64[35];
  if (!v69)
  {
    goto LABEL_100;
  }

  v67 = *(v63 + v69);
  if ((v67 & 0xA0A88) == 0)
  {
    v68 = 32;
LABEL_89:
    if ((v68 & v67) == 0)
    {
      goto LABEL_100;
    }
  }

LABEL_90:
  v70 = *v249;
  v71 = (*v249 - **v249);
  v72 = *v71;
  if (*(v249 + 38))
  {
    if (v72 >= 0x47)
    {
      v73 = v71[35];
      if (v73)
      {
        v74 = *(v70 + v73);
        if ((v74 & 0x141510) != 0)
        {
          goto LABEL_172;
        }

        v75 = 64;
        goto LABEL_99;
      }
    }
  }

  else if (v72 >= 0x47)
  {
    v76 = v71[35];
    if (v76)
    {
      v74 = *(v70 + v76);
      if ((v74 & 0xA0A88) != 0)
      {
        goto LABEL_172;
      }

      v75 = 32;
LABEL_99:
      if ((v75 & v74) != 0)
      {
        goto LABEL_172;
      }
    }
  }

LABEL_100:
  v77 = a3[1] - *a3;
  if (v77)
  {
    v78 = 0;
    v79 = 0;
    v80 = 0xCCCCCCCCCCCCCCCDLL * (v77 >> 3);
    do
    {
      v81 = sub_605E3C(a3, v79);
      v83 = v81[4];
      v84 = v249[4];
      v37 = v83 == v84;
      v85 = HIDWORD(v84) & 0xFFFFFF;
      if (v37 && (HIDWORD(v83) & 0xFFFFFF) == v85)
      {
        goto LABEL_103;
      }

      v87 = *a2;
      v88 = (*a2 - **a2);
      v89 = *v88;
      if (*(a2 + 38))
      {
        if (v89 >= 0x47)
        {
          v90 = v88[35];
          if (v88[35])
          {
            v91 = 2;
LABEL_115:
            v92 = (*(v87 + v90) & v91) != 0;
            goto LABEL_117;
          }
        }
      }

      else if (v89 >= 0x47)
      {
        v90 = v88[35];
        if (v88[35])
        {
          v91 = 1;
          goto LABEL_115;
        }
      }

      v92 = 0;
LABEL_117:
      v93 = *v81;
      v94 = (*v81 - **v81);
      v95 = *v94;
      v96 = v83 & 0xFF000000000000;
      if (!v96)
      {
        if (v95 >= 0x47 && v94[35])
        {
          LOBYTE(v92) = v92 ^ ((*(v93 + v94[35]) & 1) != 0);
        }

LABEL_125:
        if (v92)
        {
          goto LABEL_103;
        }

        goto LABEL_126;
      }

      if (v95 < 0x47 || !v94[35])
      {
        goto LABEL_125;
      }

      if ((v92 ^ ((*(v93 + v94[35]) & 2) != 0)))
      {
        goto LABEL_103;
      }

LABEL_126:
      if (*(a2 + 38))
      {
        if (v89 < 0x47)
        {
          goto LABEL_103;
        }

        v97 = v88[35];
        if (!v97)
        {
          goto LABEL_103;
        }

        v98 = *(v87 + v97);
        if ((v98 & 0x141510) == 0 && (v98 & 0x40) == 0)
        {
          goto LABEL_103;
        }
      }

      else
      {
        if (v89 < 0x47)
        {
          goto LABEL_103;
        }

        v99 = v88[35];
        if (!v99)
        {
          goto LABEL_103;
        }

        v100 = *(v87 + v99);
        if ((v100 & 0xA0A88) == 0 && (v100 & 0x20) == 0)
        {
          goto LABEL_103;
        }
      }

      if (v96)
      {
        if (v95 < 0x47 || !v94[35])
        {
          goto LABEL_103;
        }

        v101 = *(v93 + v94[35]);
        if ((v101 & 0x141510) != 0)
        {
          goto LABEL_146;
        }

        v102 = 64;
      }

      else
      {
        if (v95 < 0x47 || !v94[35])
        {
          goto LABEL_103;
        }

        v101 = *(v93 + v94[35]);
        if ((v101 & 0xA0A88) != 0)
        {
          goto LABEL_146;
        }

        v102 = 32;
      }

      if ((v102 & v101) == 0)
      {
        goto LABEL_103;
      }

LABEL_146:
      v103 = v81;
      v104 = sub_70E16C(v8, a2, v81, v82);
      v105 = fabs(sub_70E16C(v8, a2, v249, v104));
      v106 = *(v8 + 1224);
      if (v105 >= v106)
      {
        v106 = *(v8 + 1000);
      }

      if (fabs(v104) > v106)
      {
        break;
      }

      v107 = *a2;
      v108 = (*a2 - **a2);
      v109 = *v108;
      if (v109 >= 0x2F && v108[23])
      {
        v110 = *(v107 + v108[23]);
        if (v110 > 0x2B || ((1 << v110) & 0x80000001040) == 0 || v109 >= 0x9B && (v111 = v108[77]) != 0 && (*(v107 + v111 + 2) & 0x20) != 0)
        {
          v112 = v110 == 44;
          v113 = *v103;
          v114 = (*v103 - **v103);
          v115 = *v114;
          if (v115 < 0x2F)
          {
LABEL_168:
            if (v112)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          }
        }

        else
        {
          v112 = 1;
          v113 = *v103;
          v114 = (*v103 - **v103);
          v115 = *v114;
          if (v115 < 0x2F)
          {
            goto LABEL_168;
          }
        }
      }

      else
      {
        v112 = 0;
        v113 = *v103;
        v114 = (*v103 - **v103);
        v115 = *v114;
        if (v115 < 0x2F)
        {
          goto LABEL_168;
        }
      }

      if (!v114[23])
      {
        goto LABEL_168;
      }

      v116 = *(v113 + v114[23]);
      if (v116 > 0x2B || ((1 << v116) & 0x80000001040) == 0 || v115 >= 0x9B && (v117 = v114[77]) != 0 && (*(v113 + v117 + 2) & 0x20) != 0)
      {
        if ((v112 ^ (v116 == 44)))
        {
          goto LABEL_103;
        }
      }

      else if (!v112)
      {
        goto LABEL_103;
      }

LABEL_102:
      v249 = &(*a3)[v78];
LABEL_103:
      ++v79;
      v78 += 5;
    }

    while (v80 != v79);
  }

LABEL_172:
  v252 = 0xCCCCCCCCCCCCCCCDLL * (v249 - *a3);
  v118 = sub_70E2E0(v8, a2, v249);
  v119 = *v249;
  v120 = (*v249 - **v249);
  v121 = *v120;
  if (v121 < 0x2F)
  {
    goto LABEL_182;
  }

  if (!v120[23] || (v122 = *(v119 + v120[23]), v122 > 0x2C))
  {
LABEL_179:
    if (v121 >= 0x43 && v120[33])
    {
      v123 = *(v119 + v120[33]);
      goto LABEL_183;
    }

LABEL_182:
    v123 = 0;
    goto LABEL_183;
  }

  if (((1 << v122) & 0x180000105240) == 0)
  {
    if (!*(v119 + v120[23]))
    {
      v123 = *(v8 + 1584);
      goto LABEL_183;
    }

    goto LABEL_179;
  }

  v123 = *(v8 + 1588);
LABEL_183:
  v124 = *a2;
  v125 = (*a2 - **a2);
  v126 = *v125;
  if (v126 < 0x2F)
  {
    goto LABEL_193;
  }

  if (v125[23])
  {
    v127 = *(v124 + v125[23]);
    if (v127 <= 0x2C)
    {
      if (((1 << v127) & 0x180000105240) != 0)
      {
        LODWORD(v128) = *(v8 + 1588);
        goto LABEL_194;
      }

      if (!*(v124 + v125[23]))
      {
        LODWORD(v128) = *(v8 + 1584);
        goto LABEL_194;
      }
    }
  }

  if (v126 < 0x43)
  {
LABEL_193:
    LODWORD(v128) = 0;
  }

  else
  {
    v128 = v125[33];
    if (v125[33])
    {
      LODWORD(v128) = *(v124 + v128);
    }
  }

LABEL_194:
  v129 = fabs(v118);
  if (v123 == v128)
  {
    if (v121 < 0x2F)
    {
      LOBYTE(v130) = 0;
    }

    else
    {
      v130 = v120[23];
      if (v120[23])
      {
        v131 = *(v119 + v130);
        v132 = v131 > 0x2A;
        v130 = 0x50426810004uLL >> v131;
        if (v132)
        {
          LOBYTE(v130) = 0;
        }
      }
    }

    if (v126 < 0x2F || !v125[23] || ((v133 = *(v124 + v125[23]), v132 = v133 > 0x2A, v134 = (1 << v133) & 0x50426810004, !v132) ? (v135 = v134 == 0) : (v135 = 1), v135))
    {
      if (v130)
      {
        goto LABEL_233;
      }
    }

    else if ((v130 & 1) == 0)
    {
      goto LABEL_233;
    }

    v137 = v121 >= 0x2F && (v136 = v120[23]) != 0 && *(v119 + v136) == 28;
    if (v126 >= 0x2F && v125[23])
    {
      v137 ^= *(v124 + v125[23]) == 28;
    }

    if ((v137 & 1) == 0 && sub_70ED3C(v8, v249, a2))
    {
      v138 = sub_312F00(v249);
      if (v138 == sub_312F00(a2))
      {
        v139 = (*v249 - **v249);
        if (*v139 >= 0x9Bu && (v140 = v139[77]) != 0)
        {
          v141 = (*(*v249 + v140 + 1) >> 4) & 1;
        }

        else
        {
          v141 = 0;
        }

        v142 = (*a2 - **a2);
        if (*v142 >= 0x9Bu && (v143 = v142[77]) != 0)
        {
          if (v141 != (*(*a2 + v143 + 1) & 0x10) >> 4)
          {
            goto LABEL_233;
          }
        }

        else if (v141)
        {
          goto LABEL_233;
        }

        if (v129 <= *(v8 + 1048) || (v144 = *a3, v145 = a3[1], v254 = v8, v255 = a2, v146 = sub_71A3B8(v144, v145, &v254), v129 <= *(v8 + 1016)) && ((v147 = v146, (sub_712AA4(v8, a2, v249) & 1) != 0) || v147 == 1))
        {
          sub_7125C0(v248, &v252);
          return;
        }
      }
    }
  }

LABEL_233:
  v254 = sub_311544(v249);
  if ((sub_420B0C((v8 + 896), &v254) & 1) == 0)
  {
    v251 = sub_3116D0(a2);
    if ((sub_420B0C((v8 + 896), &v251) & 1) == 0)
    {
      v149 = *a2;
      v151 = **a2;
      v152 = (*a2 - v151);
      v153 = *v152;
      if (*(a2 + 38))
      {
        v5 = v248;
        if (v153 < 0x49 || (v154 = v152[36]) == 0)
        {
LABEL_244:
          v155 = -1;
LABEL_245:
          v156 = -v151;
          v157 = (*v249 - **v249);
          v158 = *v157;
          if (*(v249 + 38))
          {
            if (v158 < 0x4B || (v159 = v157[37]) == 0)
            {
LABEL_252:
              v160 = 0xFFFF;
LABEL_253:
              v161 = v155 + 18000;
              v162 = v155 - 18000;
              if ((v161 >> 5) < 0x465u)
              {
                v162 = v161;
              }

              v163 = v160 - v162;
              if (v163 > 18000)
              {
                v163 -= 36000;
              }

              if (v163 < -17999)
              {
                v163 += 36000;
              }

              v148 = v163 / 100.0;
              v150 = (v149 + v156);
              if (*v150 < 0x2Fu)
              {
                goto LABEL_266;
              }

LABEL_260:
              v164 = v150[23];
              if (v164)
              {
                v165 = *(v149 + v164);
                v132 = v165 > 0x2A;
                v166 = (1 << v165) & 0x50426810004;
                v167 = v132 || v166 == 0;
                if (!v167 && fabs(v148) <= *(v8 + 1016))
                {
                  v224 = v5[1];
                  v223 = v5[2];
                  if (v224 < v223)
                  {
                    *v224 = v252;
                    v11 = v224 + 8;
                    goto LABEL_30;
                  }

                  v22 = *v5;
                  v239 = v224 - *v5;
                  v240 = (v239 >> 3) + 1;
                  if (!(v240 >> 61))
                  {
                    v241 = v223 - v22;
                    if (v241 >> 2 > v240)
                    {
                      v240 = v241 >> 2;
                    }

                    if (v241 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v242 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v242 = v240;
                    }

                    if (v242)
                    {
                      if (!(v242 >> 61))
                      {
                        operator new();
                      }

LABEL_439:
                      sub_1808();
                    }

                    v246 = (8 * (v239 >> 3));
                    *v246 = v252;
                    v11 = v246 + 1;
                    memcpy(0, v22, v239);
                    *v5 = 0;
                    v5[1] = v11;
                    v5[2] = 0;
                    if (!v22)
                    {
                      goto LABEL_30;
                    }

LABEL_29:
                    operator delete(v22);
                    goto LABEL_30;
                  }

LABEL_437:
                  sub_1794();
                }
              }

              goto LABEL_266;
            }
          }

          else
          {
            if (v158 < 0x49)
            {
              goto LABEL_252;
            }

            v159 = v157[36];
            if (!v159)
            {
              goto LABEL_252;
            }
          }

          v160 = *(*v249 + v159);
          goto LABEL_253;
        }
      }

      else
      {
        v5 = v248;
        if (v153 < 0x4B)
        {
          goto LABEL_244;
        }

        v154 = v152[37];
        if (!v154)
        {
          goto LABEL_244;
        }
      }

      v155 = *(v149 + v154);
      goto LABEL_245;
    }
  }

  v148 = sub_70E2E0(v8, a2, v249);
  v149 = *a2;
  v5 = v248;
  v150 = (*a2 - **a2);
  if (*v150 >= 0x2Fu)
  {
    goto LABEL_260;
  }

LABEL_266:
  v168 = a3[1] - *a3;
  if (!v168)
  {
    goto LABEL_375;
  }

  v169 = 0;
  v170 = 0;
  v171 = 0;
  v172 = 0xCCCCCCCCCCCCCCCDLL * (v168 >> 3);
  v247 = v172;
  do
  {
    v173 = fabs(sub_70E2E0(v8, a2, &(*a3)[v169]));
    v174 = *(v8 + 1024);
    v175 = *a3;
    v176 = *a2;
    v177 = **a2;
    if (v173 < v174)
    {
LABEL_293:
      v190 = (v176 - v177);
      v191 = *v190;
      if (*(a2 + 38))
      {
        if (v191 >= 0x47)
        {
          v192 = v190[35];
          if (v190[35])
          {
            v193 = 2;
LABEL_300:
            v194 = (*(v176 + v192) & v193) != 0;
            goto LABEL_302;
          }
        }
      }

      else if (v191 >= 0x47)
      {
        v192 = v190[35];
        if (v190[35])
        {
          v193 = 1;
          goto LABEL_300;
        }
      }

      v194 = 0;
LABEL_302:
      v195 = v175[v169];
      v196 = (v195 - *v195);
      v197 = *v196;
      if (BYTE6(v175[v169 + 4]))
      {
        if (v197 >= 0x47 && v196[35])
        {
          if ((v194 ^ ((*(v195 + v196[35]) & 2) != 0)))
          {
            goto LABEL_268;
          }

          goto LABEL_311;
        }
      }

      else if (v197 >= 0x47 && v196[35])
      {
        LOBYTE(v194) = v194 ^ ((*(v195 + v196[35]) & 1) != 0);
      }

      if (v194)
      {
        goto LABEL_268;
      }

LABEL_311:
      if (v191 >= 0x9B && (v198 = v190[77]) != 0)
      {
        if ((*(v176 + v198 + 1) & 0x10) != 0 || v197 <= 0x9A)
        {
LABEL_319:
          if (sub_31EE90(*(v8 + 888), a2[4] & 0xFFFFFFFFFFFFFFLL, v175[v169 + 4] & 0xFFFFFFFFFFFFFFLL))
          {
            v199 = (v171 >> 3) + 1;
            if (v199 >> 61)
            {
              sub_1794();
            }

            if (v171 >> 3 != -1)
            {
              if (!(v199 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            v200 = v8;
            v201 = (8 * (v171 >> 3));
            *v201 = v170;
            memcpy(0, 0, v171);
            v171 = (v201 + 1);
            v8 = v200;
            v172 = v247;
          }

          goto LABEL_268;
        }
      }

      else if (v197 < 0x9B)
      {
        goto LABEL_319;
      }

      if (v196[77] && (*(v195 + v196[77] + 1) & 0x10) != 0)
      {
        goto LABEL_268;
      }

      goto LABEL_319;
    }

    v178 = v176 - v177;
    v179 = *(v176 - v177);
    if (*(a2 + 38))
    {
      if (v179 >= 0x49)
      {
        v180 = *(v178 + 36);
        if (v180)
        {
          goto LABEL_276;
        }
      }
    }

    else if (v179 >= 0x4B)
    {
      v180 = *(v178 + 37);
      if (v180)
      {
LABEL_276:
        v181 = *(v176 + v180);
        goto LABEL_278;
      }
    }

    v181 = -1;
LABEL_278:
    v182 = v175[v169];
    v183 = (v182 - *v182);
    v184 = *v183;
    if (BYTE6(v175[v169 + 4]))
    {
      if (v184 >= 0x4B)
      {
        v185 = v183[37];
        if (v185)
        {
          goto LABEL_284;
        }
      }
    }

    else if (v184 >= 0x49)
    {
      v185 = v183[36];
      if (v185)
      {
LABEL_284:
        v186 = *(v182 + v185);
        goto LABEL_286;
      }
    }

    v186 = 0xFFFF;
LABEL_286:
    v187 = v181 + 18000;
    v188 = v181 - 18000;
    if ((v187 >> 5) < 0x465u)
    {
      v188 = v187;
    }

    v189 = v186 - v188;
    if (v189 > 18000)
    {
      v189 -= 36000;
    }

    if (v189 < -17999)
    {
      v189 += 36000;
    }

    if (fabs(v189 / 100.0) < v174)
    {
      goto LABEL_293;
    }

LABEL_268:
    ++v170;
    v169 += 5;
  }

  while (v172 != v170);
  if (v171 == 8)
  {
    v203 = v248[1];
    v202 = v248[2];
    if (v203 >= v202)
    {
      v234 = *v248;
      v235 = v203 - *v248;
      v236 = (v235 >> 3) + 1;
      if (v236 >> 61)
      {
        sub_1794();
      }

      v237 = v202 - v234;
      if (v237 >> 2 > v236)
      {
        v236 = v237 >> 2;
      }

      if (v237 >= 0x7FFFFFFFFFFFFFF8)
      {
        v238 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v238 = v236;
      }

      if (v238)
      {
        if (!(v238 >> 61))
        {
          operator new();
        }

        sub_1808();
      }

      v244 = (8 * (v235 >> 3));
      *v244 = 0x100000CFEEDFACFLL;
      v204 = v244 + 1;
      memcpy(0, v234, v235);
      *v248 = 0;
      v248[1] = v204;
      v248[2] = 0;
      if (v234)
      {
        operator delete(v234);
      }
    }

    else
    {
      *v203 = 0x100000CFEEDFACFLL;
      v204 = v203 + 1;
    }

    v248[1] = v204;
    operator delete(0);
    return;
  }

  v5 = v248;
  if (v171)
  {
    v205 = *a3;
    v206 = *a2;
    for (i = 0; i != v171; ++i)
    {
      v254 = *i;
      v208 = v205[5 * v254];
      v209 = (v208 - *v208);
      v210 = *v209;
      if (v210 < 0x2F)
      {
        goto LABEL_346;
      }

      if (v209[23])
      {
        v211 = *(v208 + v209[23]);
        if (v211 <= 0x2C)
        {
          if (((1 << v211) & 0x180000105240) != 0)
          {
            v212 = *(v8 + 1588);
            v213 = (v206 - *v206);
            v214 = *v213;
            if (v214 < 0x2F)
            {
              goto LABEL_356;
            }

            goto LABEL_347;
          }

          if (!*(v208 + v209[23]))
          {
            v212 = *(v8 + 1584);
            v213 = (v206 - *v206);
            v214 = *v213;
            if (v214 < 0x2F)
            {
              goto LABEL_356;
            }

            goto LABEL_347;
          }
        }
      }

      if (v210 >= 0x43 && v209[33])
      {
        v212 = *(v208 + v209[33]);
        v213 = (v206 - *v206);
        v214 = *v213;
        if (v214 < 0x2F)
        {
          goto LABEL_356;
        }
      }

      else
      {
LABEL_346:
        v212 = 0;
        v213 = (v206 - *v206);
        v214 = *v213;
        if (v214 < 0x2F)
        {
          goto LABEL_356;
        }
      }

LABEL_347:
      if (v213[23])
      {
        v215 = *(v206 + v213[23]);
        if (v215 <= 0x2C)
        {
          if (((1 << v215) & 0x180000105240) != 0)
          {
            LODWORD(v216) = *(v8 + 1588);
            goto LABEL_357;
          }

          if (!*(v206 + v213[23]))
          {
            LODWORD(v216) = *(v8 + 1584);
            goto LABEL_357;
          }
        }
      }

      if (v214 < 0x43)
      {
LABEL_356:
        LODWORD(v216) = 0;
        goto LABEL_357;
      }

      v216 = v213[33];
      if (v213[33])
      {
        LODWORD(v216) = *(v206 + v216);
      }

LABEL_357:
      if (v212 != v216)
      {
        continue;
      }

      if (v210 >= 0x2F && v209[23])
      {
        v217 = *(v208 + v209[23]);
        if (v214 < 0x2F)
        {
          goto LABEL_366;
        }
      }

      else
      {
        v217 = 32;
        if (v214 < 0x2F)
        {
          goto LABEL_366;
        }
      }

      if (!v213[23])
      {
LABEL_366:
        if (v217 != 32)
        {
          continue;
        }

        goto LABEL_367;
      }

      if (v217 != *(v206 + v213[23]))
      {
        continue;
      }

LABEL_367:
      if (v210 >= 0x9B && (v218 = v209[77]) != 0)
      {
        v219 = (*(v208 + v218 + 1) >> 4) & 1;
        if (v214 < 0x9B)
        {
          goto LABEL_331;
        }
      }

      else
      {
        v219 = 0;
        if (v214 < 0x9B)
        {
          goto LABEL_331;
        }
      }

      if (!v213[77])
      {
LABEL_331:
        if ((v219 & 1) == 0)
        {
          goto LABEL_374;
        }

        continue;
      }

      if (v219 == (*(v206 + v213[77] + 1) & 0x10) >> 4)
      {
LABEL_374:
        sub_7125C0(v248, &v254);
        return;
      }
    }
  }

LABEL_375:
  if (v129 <= *(v8 + 1040))
  {
    v221 = v5[1];
    v220 = v5[2];
    if (v221 >= v220)
    {
      v225 = *v5;
      v226 = v221 - *v5;
      v227 = (v226 >> 3) + 1;
      if (v227 >> 61)
      {
        sub_1794();
      }

      v228 = v220 - v225;
      if (v228 >> 2 > v227)
      {
        v227 = v228 >> 2;
      }

      if (v228 >= 0x7FFFFFFFFFFFFFF8)
      {
        v229 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v229 = v227;
      }

      if (v229)
      {
        if (!(v229 >> 61))
        {
          operator new();
        }

        sub_1808();
      }

      v243 = (8 * (v226 >> 3));
      *v243 = v252;
      v222 = v243 + 1;
      memcpy(0, v225, v226);
      *v5 = 0;
      v5[1] = v222;
      v5[2] = 0;
      if (v225)
      {
        operator delete(v225);
      }
    }

    else
    {
      *v221 = v252;
      v222 = v221 + 8;
    }

    v5[1] = v222;
  }

  else
  {
    v254 = sub_3116D0(a2);
    if (sub_420B0C((v8 + 896), &v254))
    {
      v254 = 0;
      sub_7125C0(v5, &v254);
      return;
    }

    if (v129 <= *(v8 + 1064) && (sub_70EB5C(v8, a2, a3, v252) & 1) == 0)
    {
      sub_7125C0(v5, &v252);
      return;
    }

    v230 = sub_712C28(*a3, a3[1], a2);
    v231 = 0xCCCCCCCCCCCCCCCDLL * (v230 - *a3);
    v254 = v231;
    v232 = sub_6DF738(a2, v230);
    v251 = v8;
    if (0xCCCCCCCCCCCCCCCDLL * (a3[1] - *a3) >= 2 && fabs(v232) <= *(v8 + 1072) && (sub_70EB5C(v8, a2, a3, v231) & 1) == 0 && (*(v8 + 1688) != 1 || (sub_712C9C(&v251, a2, v230) & 1) != 0))
    {
      v245 = &v254;
      goto LABEL_435;
    }

    if (a3[1] - *a3 == 40 && (sub_712C9C(&v251, a2, v249) & 1) != 0 || v129 <= *(v8 + 1032) && (v233 = sub_712D18(v8, a2), v233 != sub_712D18(v8, v249)) && (sub_70EB5C(v8, a2, a3, v252) & 1) == 0)
    {
      v245 = &v252;
LABEL_435:
      sub_7125C0(v5, v245);
      return;
    }

    if (fabs(sub_70E2E0(v8, a2, *a3)) <= *(v8 + 1000))
    {
      v250 = 0;
      sub_7125C0(v5, &v250);
    }
  }
}