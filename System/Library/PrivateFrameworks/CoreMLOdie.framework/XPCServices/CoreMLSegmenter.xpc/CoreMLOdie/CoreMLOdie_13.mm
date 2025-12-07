void sub_10009BA3C(__n128 *a1, __n128 *a2, unint64_t a3, char *a4)
{
  if (a3)
  {
    if (a3 == 1)
    {
LABEL_8:
      *a4 = a1->n128_u64[0];
      return;
    }

    if (a3 == 2)
    {
      v6 = a2[-1].n128_u64[1];
      v4 = (a2 - 8);
      v5 = v6;
      v7 = *(v6 + 12);
      v8 = *(a1->n128_u64[0] + 12);
      if (v7 <= v8)
      {
        v5 = a1->n128_u64[0];
      }

      *a4 = v5;
      a4 += 8;
      if (v7 <= v8)
      {
        a1 = v4;
      }

      goto LABEL_8;
    }

    if (a3 > 8)
    {
      v20 = a3 >> 1;
      v21 = 8 * (a3 >> 1);
      v22 = (a1 + v21);
      v23 = a1;
      v26 = a4;
      sub_10009B714(a1, a1 + v21, v20, a4, v20);
      sub_10009B714(v22, a2, a3 - v20, &v26[v21], a3 - v20);
      v27 = v26;
      v28 = v22;
      do
      {
        if (v28 == a2)
        {
          if (v23 == v22)
          {
            return;
          }

          v48 = v22 - v23 - 8;
          if (v48 >= 0x38)
          {
            if ((v27 - v23) >= 0x20)
            {
              v50 = (v26 + 16);
              v51 = (v48 >> 3) + 1;
              v52 = 8 * (v51 & 0x3FFFFFFFFFFFFFFCLL);
              v26 += v52;
              v49 = (v23 + v52);
              v53 = v23 + 1;
              v54 = v51 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v55 = *v53;
                v50[-1] = v53[-1];
                *v50 = v55;
                v53 += 2;
                v50 += 2;
                v54 -= 4;
              }

              while (v54);
              if (v51 == (v51 & 0x3FFFFFFFFFFFFFFCLL))
              {
                return;
              }
            }

            else
            {
              v49 = v23;
            }
          }

          else
          {
            v49 = v23;
          }

          do
          {
            v56 = v49->n128_u64[0];
            v49 = (v49 + 8);
            *v26 = v56;
            v26 += 8;
          }

          while (v49 != v22);
          return;
        }

        v29 = v28;
        v30 = *v28;
        v31 = *(v30 + 12);
        v32 = *(v23->n128_u64[0] + 12);
        v33 = v31 > v32;
        v34 = v31 <= v32;
        v35 = v33;
        if (v33)
        {
          v36 = v30;
        }

        else
        {
          v36 = v23->n128_u64[0];
        }

        v37 = 8 * v35;
        v28 = &v29[v37];
        v23 = (v23 + 8 * v34);
        *v26 = v36;
        v26 += 8;
        v27 += 8;
      }

      while (v23 != v22);
      if (v28 != a2)
      {
        v38 = a2 - &v29[v37] - 8;
        if (v38 < 0x58)
        {
          goto LABEL_51;
        }

        if ((v27 - v29 - v37) < 0x20)
        {
          goto LABEL_51;
        }

        v39 = 0;
        v40 = (v38 >> 3) + 1;
        v41 = 8 * (v40 & 0x3FFFFFFFFFFFFFFCLL);
        v42 = &v26[v41];
        v28 += v41;
        v43 = &v29[v37 + 16];
        v44 = v40 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v45 = &v26[v39];
          v46 = *v43;
          *v45 = *(v43 - 1);
          *(v45 + 1) = v46;
          v43 += 32;
          v39 += 32;
          v44 -= 4;
        }

        while (v44);
        v26 = v42;
        if (v40 != (v40 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_51:
          do
          {
            v47 = *v28;
            v28 += 8;
            *v26 = v47;
            v26 += 8;
          }

          while (v28 != a2);
        }
      }
    }

    else if (a1 != a2)
    {
      v10 = a1->n128_u64[0];
      v9 = &a1->n128_i8[8];
      *a4 = v10;
      if (v9 != a2)
      {
        v11 = 0;
        v12 = a4;
        v13 = a4;
        do
        {
          while (1)
          {
            v15 = *v13;
            v13 += 8;
            v14 = v15;
            if (*(*v9 + 12) > *(v15 + 12))
            {
              break;
            }

            *v13 = *v9;
            v9 += 8;
            v11 += 8;
            v12 = v13;
            if (v9 == a2)
            {
              return;
            }
          }

          *(v12 + 1) = v14;
          v16 = a4;
          if (v12 != a4)
          {
            v17 = v11;
            while (1)
            {
              v16 = &a4[v17];
              v18 = *&a4[v17 - 8];
              if (*(*v9 + 12) <= *(v18 + 12))
              {
                break;
              }

              *v16 = v18;
              v17 -= 8;
              if (!v17)
              {
                v16 = a4;
                break;
              }
            }
          }

          v19 = *v9;
          v9 += 8;
          *v16 = v19;
          v11 += 8;
          v12 = v13;
        }

        while (v9 != a2);
      }
    }
  }
}

void sub_10009BD18(void *result, char *a2, uint64_t a3, unint64_t a4, __n128 *a5, int64_t a6)
{
  if (a4 < 2)
  {
    return;
  }

  if (a4 == 2)
  {
    v6 = *(a2 - 1);
    v7 = *result;
    v8 = **(a3 + 8);
    v9 = *(*(v6 + 16) + 16);
    v10 = *(*(*result + 16) + 16);
    if (v9 == v8)
    {
      if (v10 == v8)
      {
        return;
      }
    }

    else if (v10 == v8 || v10 <= v9)
    {
      return;
    }

    *result = v6;
    *(a2 - 1) = v7;
    return;
  }

  if (a4 <= 128)
  {
    if (result == a2)
    {
      return;
    }

    v11 = result + 1;
    if (result + 1 == a2)
    {
      return;
    }

    v12 = 0;
    v13 = **(a3 + 8);
    v14 = result;
    while (1)
    {
      v16 = v14;
      v14 = v11;
      v18 = *v16;
      v17 = v16[1];
      v19 = *(*(v17 + 16) + 16);
      v20 = *(*(*v16 + 16) + 16);
      if (v19 == v13)
      {
        if (v20 == v13)
        {
          goto LABEL_13;
        }

        v16[1] = v18;
        v21 = v12;
        v15 = result;
        if (v16 != result)
        {
          while (1)
          {
            v15 = (result + v21);
            v22 = *(result + v21 - 8);
            if (*(*(v22 + 16) + 16) == v13)
            {
              break;
            }

            *v15 = v22;
            v21 -= 8;
            if (!v21)
            {
              goto LABEL_11;
            }
          }
        }
      }

      else
      {
        if (v20 == v13 || v20 <= v19)
        {
          goto LABEL_13;
        }

        v16[1] = v18;
        v24 = v12;
        v15 = result;
        if (v16 != result)
        {
          while (1)
          {
            v15 = (result + v24);
            v25 = *(result + v24 - 8);
            v26 = *(*(v25 + 16) + 16);
            if (v26 == v13 || v26 <= v19)
            {
              break;
            }

            *v15 = v25;
            v24 -= 8;
            if (!v24)
            {
LABEL_11:
              v15 = result;
              break;
            }
          }
        }
      }

      *v15 = v17;
LABEL_13:
      v11 = v14 + 1;
      v12 += 8;
      if (v14 + 1 == a2)
      {
        return;
      }
    }
  }

  v30 = a4 >> 1;
  v31 = &result[a4 >> 1];
  v32 = a4 - (a4 >> 1);
  v33 = result;
  if (a4 > a6)
  {
    sub_10009BD18(result, v31, a3, a4 >> 1, a5, a6);
    sub_10009BD18(v31, a2, a3, v32, a5, a6);

    sub_10009C4B0(v33, v31, a2, a3, v30, v32, a5, a6);
    return;
  }

  v39 = a5;
  sub_10009C114(result, v31, a3, a4 >> 1, a5);
  v40 = (v39 + 8 * v30);
  sub_10009C114(v31, a2, a3, v32, v40);
  v41 = (v39 + 8 * a4);
  v42 = *(a3 + 8);
  v43 = v33;
  v44 = v40;
  do
  {
    while (1)
    {
      if (v44 == v41)
      {
        if (v39 == v40)
        {
          return;
        }

        v53 = v40 - v39 - 8;
        if (v53 >= 0x38)
        {
          if ((v43 - v39) >= 0x20)
          {
            v55 = (v33 + 16);
            v56 = (v53 >> 3) + 1;
            v57 = 8 * (v56 & 0x3FFFFFFFFFFFFFFCLL);
            v33 += v57;
            v54 = (v39 + v57);
            v58 = v39 + 1;
            v59 = v56 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v60 = *v58;
              v55[-1] = v58[-1];
              *v55 = v60;
              v58 += 2;
              v55 += 2;
              v59 -= 4;
            }

            while (v59);
            if (v56 == (v56 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return;
            }
          }

          else
          {
            v54 = v39;
          }
        }

        else
        {
          v54 = v39;
        }

        do
        {
          v61 = v54->n128_u64[0];
          v54 = (v54 + 8);
          *v33 = v61;
          v33 += 8;
        }

        while (v54 != v40);
        return;
      }

      v45 = *v42;
      v46 = *(*(v44->n128_u64[0] + 16) + 16);
      v47 = *(*(v39->n128_u64[0] + 16) + 16);
      if (v46 != *v42)
      {
        break;
      }

      if (v47 == v45)
      {
        goto LABEL_53;
      }

LABEL_44:
      *v33 = v44->n128_u64[0];
      v33 += 8;
      v44 = (v44 + 8);
      v43 += 8;
      if (v39 == v40)
      {
        goto LABEL_54;
      }
    }

    if (v47 != v45 && v47 > v46)
    {
      goto LABEL_44;
    }

LABEL_53:
    *v33 = v39->n128_u64[0];
    v33 += 8;
    v39 = (v39 + 8);
    v43 += 8;
  }

  while (v39 != v40);
LABEL_54:
  if (v44 == v41)
  {
    return;
  }

  v49 = v41 - v44 - 8;
  if (v49 <= 0x47 || (v43 - v44) < 0x20)
  {
    v50 = v33;
    v51 = v44;
    do
    {
LABEL_58:
      v52 = v51->n128_u64[0];
      v51 = (v51 + 8);
      *v50 = v52;
      v50 += 8;
    }

    while (v51 != v41);
    return;
  }

  v62 = 0;
  v63 = (v49 >> 3) + 1;
  v64 = 8 * (v63 & 0x3FFFFFFFFFFFFFFCLL);
  v50 = &v33[v64];
  v51 = (v44 + v64);
  v65 = v44 + 1;
  v66 = v63 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v67 = &v33[v62];
    v68 = *v65;
    *v67 = v65[-1];
    *(v67 + 1) = v68;
    v65 += 2;
    v62 += 32;
    v66 -= 4;
  }

  while (v66);
  if (v63 != (v63 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_58;
  }
}

__n128 sub_10009C114(uint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t a4, __n128 *a5)
{
  switch(a4)
  {
    case 0uLL:
      return result;
    case 1uLL:
LABEL_36:
      a5->n128_u64[0] = *a1;
      return result;
    case 2uLL:
      v7 = *(a2 - 1);
      v5 = a2 - 1;
      v6 = v7;
      v8 = **(a3 + 8);
      v9 = *(*(v7 + 16) + 16);
      v10 = *(*(*a1 + 16) + 16);
      if (v9 == v8)
      {
        if (v10 != v8)
        {
          goto LABEL_35;
        }
      }

      else if (v10 != v8 && v10 > v9)
      {
        goto LABEL_35;
      }

      v6 = *a1;
      a1 = v5;
LABEL_35:
      a5->n128_u64[0] = v6;
      a5 = (a5 + 8);
      goto LABEL_36;
  }

  if (a4 <= 8)
  {
    if (a1 == a2)
    {
      return result;
    }

    v11 = *(a3 + 8);
    v13 = *a1;
    v12 = a1 + 1;
    a5->n128_u64[0] = v13;
    if (v12 == a2)
    {
      return result;
    }

    v14 = 0;
    v15 = *v11;
    v16 = a5;
    v17 = a5;
LABEL_13:
    while (2)
    {
      v21 = v17->n128_u64[0];
      v17 = (v17 + 8);
      v20 = v21;
      v22 = *(*(*v12 + 16) + 16);
      v23 = *(*(v21 + 16) + 16);
      if (v22 == v15)
      {
        if (v23 != v15)
        {
LABEL_15:
          v16->n128_u64[1] = v20;
          v18 = a5;
          if (v16 == a5)
          {
            goto LABEL_12;
          }

          v24 = v14;
          while (1)
          {
            v25 = *(&a5->n128_u64[-1] + v24);
            v26 = *(*(*v12 + 16) + 16);
            v27 = *(*(v25 + 16) + 16);
            if (v26 == v15)
            {
              if (v27 == v15)
              {
                v18 = (a5 + v24);
LABEL_12:
                v19 = *v12++;
                v18->n128_u64[0] = v19;
                v14 += 8;
                v16 = v17;
                if (v12 == a2)
                {
                  return result;
                }

                goto LABEL_13;
              }
            }

            else if (v27 == v15 || v27 <= v26)
            {
              v18 = v16;
              goto LABEL_12;
            }

            v16 = (v16 - 8);
            *(a5->n128_u64 + v24) = v25;
            v24 -= 8;
            if (!v24)
            {
              v18 = a5;
              goto LABEL_12;
            }
          }
        }
      }

      else if (v23 != v15 && v23 > v22)
      {
        goto LABEL_15;
      }

      v17->n128_u64[0] = *v12++;
      v14 += 8;
      v16 = v17;
      if (v12 == a2)
      {
        return result;
      }

      continue;
    }
  }

  v30 = a4 >> 1;
  v31 = a4 >> 1;
  v32 = &a1[v31];
  v33 = a1;
  v37 = a5;
  sub_10009BD18(a1, &a1[v31], a3, v30, a5, v30);
  sub_10009BD18(v32, a2, a3, a4 - v30, v37 + v31 * 8, a4 - v30);
  v39 = *(a3 + 8);
  v40 = v37;
  v41 = v33;
  v42 = v32;
  do
  {
    while (1)
    {
      if (v42 == a2)
      {
        if (v41 == v32)
        {
          return result;
        }

        v51 = &v33[v30] - v41 - 8;
        if (v51 >= 0x38)
        {
          if ((v40 - v41) >= 0x20)
          {
            v53 = v37 + 1;
            v54 = (v51 >> 3) + 1;
            v55 = v54 & 0x3FFFFFFFFFFFFFFCLL;
            v37 = (v37 + v55 * 8);
            v52 = &v41[v55];
            v56 = (v41 + 2);
            v57 = v54 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              result = v56[-1];
              v58 = *v56;
              v53[-1] = result;
              *v53 = v58;
              v56 += 2;
              v53 += 2;
              v57 -= 4;
            }

            while (v57);
            if (v54 == (v54 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return result;
            }
          }

          else
          {
            v52 = v41;
          }
        }

        else
        {
          v52 = v41;
        }

        do
        {
          v59 = *v52++;
          v37->n128_u64[0] = v59;
          v37 = (v37 + 8);
        }

        while (v52 != v32);
        return result;
      }

      v43 = *v39;
      v44 = *(*(*v42 + 16) + 16);
      v45 = *(*(*v41 + 16) + 16);
      if (v44 != *v39)
      {
        break;
      }

      if (v45 == v43)
      {
        goto LABEL_48;
      }

LABEL_39:
      v37->n128_u64[0] = *v42;
      v37 = (v37 + 8);
      ++v42;
      v40 = (v40 + 8);
      if (v41 == v32)
      {
        goto LABEL_49;
      }
    }

    if (v45 != v43 && v45 > v44)
    {
      goto LABEL_39;
    }

LABEL_48:
    v37->n128_u64[0] = *v41;
    v37 = (v37 + 8);
    ++v41;
    v40 = (v40 + 8);
  }

  while (v41 != v32);
LABEL_49:
  if (v42 == a2)
  {
    return result;
  }

  v47 = a2 - v42 - 8;
  if (v47 < 0x48 || (v40 - v42) < 0x20)
  {
    v48 = v37;
    v49 = v42;
    do
    {
LABEL_53:
      v50 = *v49++;
      v48->n128_u64[0] = v50;
      v48 = (v48 + 8);
    }

    while (v49 != a2);
    return result;
  }

  v60 = 0;
  v61 = (v47 >> 3) + 1;
  v62 = v61 & 0x3FFFFFFFFFFFFFFCLL;
  v48 = (v37 + v62 * 8);
  v49 = &v42[v62];
  v63 = (v42 + 2);
  v64 = v61 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v65 = &v37[v60];
    result = v63[-1];
    v66 = *v63;
    *v65 = result;
    v65[1] = v66;
    v63 += 2;
    v60 += 2;
    v64 -= 4;
  }

  while (v64);
  if (v61 != (v61 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_53;
  }

  return result;
}

char *sub_10009C4B0(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  if (!a6)
  {
    return result;
  }

  while (2)
  {
    while (2)
    {
      if (a6 <= a8 || a5 <= a8)
      {
        if (a5 > a6)
        {
          if (a2 == a3)
          {
            return result;
          }

          v80 = a3 - a2 - 8;
          v81 = a7;
          v82 = a2;
          if (v80 < 0x18)
          {
            goto LABEL_133;
          }

          v81 = a7;
          v82 = a2;
          if ((a7 - a2) <= 0x1F)
          {
            goto LABEL_133;
          }

          v83 = (v80 >> 3) + 1;
          v84 = 8 * (v83 & 0x3FFFFFFFFFFFFFFCLL);
          v81 = &a7[v84];
          v82 = &a2[v84];
          v85 = a2 + 16;
          v86 = a7 + 16;
          v87 = v83 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v88 = *v85;
            *(v86 - 1) = *(v85 - 1);
            *v86 = v88;
            v85 += 32;
            v86 += 32;
            v87 -= 4;
          }

          while (v87);
          if (v83 != (v83 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_133:
            do
            {
              v89 = *v82;
              v82 += 8;
              *v81 = v89;
              v81 += 8;
            }

            while (v82 != a3);
          }

          v90 = *(a4 + 8);
          for (i = a3; ; i -= 8)
          {
            if (a2 == result)
            {
              v113 = v81 - a7;
              if (v81 != a7)
              {
                v114 = v113 - 8;
                if ((v113 - 8) < 0x48 || (v81 - i) < 0x20)
                {
                  v115 = v81;
                  goto LABEL_121;
                }

                v118 = a3 - 16;
                v119 = (v114 >> 3) + 1;
                v120 = 8 * (v119 & 0x3FFFFFFFFFFFFFFCLL);
                v115 = &v81[-v120];
                a3 -= v120;
                v121 = v81 - 16;
                v122 = v119 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v123 = *v121;
                  *(v118 - 1) = *(v121 - 1);
                  *v118 = v123;
                  v118 -= 32;
                  v121 -= 32;
                  v122 -= 4;
                }

                while (v122);
                if (v119 != (v119 & 0x3FFFFFFFFFFFFFFCLL))
                {
LABEL_121:
                  v116 = a3 - 8;
                  do
                  {
                    v117 = *(v115 - 1);
                    v115 -= 8;
                    *v116 = v117;
                    v116 -= 8;
                  }

                  while (v115 != a7);
                }
              }

              return result;
            }

            v93 = a2 - 8;
            v92 = *(a2 - 1);
            v94 = *v90;
            v95 = *(*(v92 + 16) + 16);
            v96 = *(*(*(v81 - 1) + 16) + 16);
            if (v96 == *v90)
            {
              if (v95 != v94)
              {
                goto LABEL_87;
              }
            }

            else if (v95 != v94 && v95 > v96)
            {
              goto LABEL_87;
            }

            v92 = *(v81 - 1);
            v93 = a2;
            v81 -= 8;
LABEL_87:
            *(a3 - 1) = v92;
            a3 -= 8;
            a2 = v93;
            if (v81 == a7)
            {
              return result;
            }
          }
        }

        if (result == a2)
        {
          return result;
        }

        v98 = a2 - result - 8;
        v99 = a7;
        v100 = result;
        if (v98 < 0x18)
        {
          goto LABEL_134;
        }

        v99 = a7;
        v100 = result;
        if ((a7 - result) <= 0x1F)
        {
          goto LABEL_134;
        }

        v101 = (v98 >> 3) + 1;
        v102 = 8 * (v101 & 0x3FFFFFFFFFFFFFFCLL);
        v99 = &a7[v102];
        v100 = &result[v102];
        v103 = result + 16;
        v104 = a7 + 16;
        v105 = v101 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v106 = *v103;
          *(v104 - 1) = *(v103 - 1);
          *v104 = v106;
          v103 += 32;
          v104 += 32;
          v105 -= 4;
        }

        while (v105);
        if (v101 != (v101 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_134:
          do
          {
            v107 = *v100;
            v100 += 8;
            *v99 = v107;
            v99 += 8;
          }

          while (v100 != a2);
        }

        v108 = *(a4 + 8);
        while (1)
        {
          while (1)
          {
            if (a2 == a3)
            {

              return memmove(result, a7, v99 - a7);
            }

            v109 = *v108;
            v110 = *(*(*a2 + 16) + 16);
            v111 = *(*(*a7 + 16) + 16);
            if (v110 == *v108)
            {
              break;
            }

            if (v111 == v109 || v111 <= v110)
            {
              goto LABEL_114;
            }

LABEL_105:
            *result = *a2;
            result += 8;
            a2 += 8;
            if (a7 == v99)
            {
              return result;
            }
          }

          if (v111 != v109)
          {
            goto LABEL_105;
          }

LABEL_114:
          *result = *a7;
          result += 8;
          a7 += 8;
          if (a7 == v99)
          {
            return result;
          }
        }
      }

      if (!a5)
      {
        return result;
      }

      v9 = 0;
      v10 = 0;
      v11 = **(a4 + 8);
      v12 = *(*(*a2 + 16) + 16);
      while (1)
      {
        v14 = *&result[8 * v10];
        v15 = *(*(v14 + 16) + 16);
        if (v12 != v11)
        {
          break;
        }

        if (v15 != v11)
        {
          goto LABEL_13;
        }

LABEL_10:
        ++v10;
        v9 -= 8;
        if (a5 == v10)
        {
          return result;
        }
      }

      v13 = v15 != v11 && v15 > v12;
      if (!v13)
      {
        goto LABEL_10;
      }

LABEL_13:
      v16 = a5 - v10;
      v17 = &result[-v9];
      if (a5 - v10 >= a6)
      {
        if (a5 - 1 == v10)
        {
          *&result[8 * v10] = *a2;
          *a2 = v14;
          return result;
        }

        v31 = v16 / 2;
        v33 = &result[8 * (v16 / 2)];
        v19 = a2;
        if (a3 != a2)
        {
          v34 = (a3 - a2) >> 3;
          v35 = *(*(*&v33[8 * v10] + 16) + 16);
          v19 = a2;
          if (v35 == v11)
          {
            do
            {
              v36 = v34 >> 1;
              v37 = &v19[8 * (v34 >> 1)];
              v39 = *v37;
              v38 = v37 + 8;
              v40 = *(*(v39 + 16) + 16);
              v41 = v40 != v11 || v35 == v40;
              v34 += ~v36;
              if (v41)
              {
                v34 = v36;
              }

              else
              {
                v19 = v38;
              }
            }

            while (v34);
          }

          else
          {
            do
            {
              v42 = v34 >> 1;
              v43 = &v19[8 * (v34 >> 1)];
              v45 = *v43;
              v44 = v43 + 8;
              v46 = *(*(v45 + 16) + 16);
              v48 = v46 == v11 || v35 > v46;
              v34 += ~v42;
              if (v48)
              {
                v19 = v44;
              }

              else
              {
                v34 = v42;
              }
            }

            while (v34);
          }
        }

        v22 = &v33[-v9];
        v18 = (v19 - a2) >> 3;
        v32 = v19;
        if (&v33[-v9] == a2)
        {
          goto LABEL_72;
        }

LABEL_51:
        v32 = v22;
        if (a2 != v19)
        {
          v49 = v22 + 8;
          if (v22 + 8 == a2)
          {
            v124 = *v22;
            v126 = v17;
            v55 = v19 - a2;
            v128 = a3;
            v56 = a5;
            v57 = a6;
            v58 = a4;
            memmove(v22, v22 + 8, v19 - a2);
            v17 = v126;
            a3 = v128;
            a4 = v58;
            a6 = v57;
            a5 = v56;
            v32 = &v22[v55];
            *&v22[v55] = v124;
          }

          else
          {
            v50 = a2 + 8;
            if (a2 + 8 == v19)
            {
              v59 = *(v19 - 1);
              v32 = v22 + 8;
              if (v19 - 8 != v22)
              {
                v127 = v17;
                v129 = a3;
                v60 = a5;
                v125 = a6;
                v61 = a4;
                memmove(v22 + 8, v22, v19 - 8 - v22);
                a6 = v125;
                v17 = v127;
                a4 = v61;
                a5 = v60;
                a3 = v129;
              }

              *v22 = v59;
            }

            else
            {
              v51 = (a2 - v22);
              v52 = (a2 - v22) >> 3;
              v53 = (v19 - a2) >> 3;
              if (v52 == v53)
              {
                do
                {
                  v54 = *(v49 - 1);
                  *(v49 - 1) = *(v50 - 1);
                  *(v50 - 1) = v54;
                  if (v49 == a2)
                  {
                    break;
                  }

                  v49 += 8;
                  v41 = v50 == v19;
                  v50 += 8;
                }

                while (!v41);
                v32 = a2;
              }

              else
              {
                v62 = (a2 - v22) >> 3;
                do
                {
                  v63 = v62;
                  v62 = v53;
                  v53 = v63 % v53;
                }

                while (v53);
                v64 = &v22[8 * v62];
                do
                {
                  v66 = *(v64 - 1);
                  v64 -= 8;
                  v65 = v66;
                  v67 = &v51[v64];
                  v68 = v64;
                  do
                  {
                    v69 = v68;
                    v68 = v67;
                    *v69 = *v67;
                    v70 = (v19 - v67) >> 3;
                    v71 = __OFSUB__(v52, v70);
                    v72 = v52 - v70;
                    v13 = (v72 < 0) ^ v71;
                    v67 = &v22[8 * v72];
                    if (v13)
                    {
                      v67 = &v51[v68];
                    }
                  }

                  while (v67 != v64);
                  *v68 = v65;
                }

                while (v64 != v22);
                v32 = &v22[v19 - a2];
              }
            }
          }
        }

        goto LABEL_72;
      }

      v18 = a6 / 2;
      v19 = &a2[8 * (a6 / 2)];
      if (v17 == a2)
      {
        v22 = &result[-v9];
        v31 = 0;
        v32 = &a2[8 * (a6 / 2)];
        goto LABEL_72;
      }

      v20 = (a2 - result + v9) >> 3;
      v21 = *(*(*v19 + 16) + 16);
      v22 = v17;
      if (v21 == v11)
      {
        do
        {
          v23 = v20 >> 1;
          v24 = &v22[8 * (v20 >> 1)];
          v26 = *v24;
          v25 = v24 + 8;
          v20 += ~(v20 >> 1);
          if (*(*(v26 + 16) + 16) == v11)
          {
            v22 = v25;
          }

          else
          {
            v20 = v23;
          }
        }

        while (v20);
      }

      else
      {
        do
        {
          v27 = v20 >> 1;
          v28 = &v22[8 * (v20 >> 1)];
          v30 = *v28;
          v29 = v28 + 8;
          v20 += ~(v20 >> 1);
          if (*(*(v30 + 16) + 16) != v11 && *(*(v30 + 16) + 16) > v21)
          {
            v20 = v27;
          }

          else
          {
            v22 = v29;
          }
        }

        while (v20);
      }

      v31 = (v22 - v17) >> 3;
      v32 = &a2[8 * (a6 / 2)];
      if (v22 != a2)
      {
        goto LABEL_51;
      }

LABEL_72:
      v73 = a5 - v31 - v10;
      v74 = a6 - v18;
      if (v31 + v18 < a6 + a5 - (v31 + v18) - v10)
      {
        v75 = a3;
        v76 = a4;
        sub_10009C4B0(v17, v22, v32, a4, v31, v18, a7, a8);
        a3 = v75;
        result = v32;
        a5 = v73;
        a6 = v74;
        a2 = v19;
        a4 = v76;
        if (!v74)
        {
          return result;
        }

        continue;
      }

      break;
    }

    v77 = a4;
    v78 = a5 - v31 - v10;
    v79 = v17;
    sub_10009C4B0(v32, v19, a3, a4, v78, a6 - v18, a7, a8);
    result = v79;
    a3 = v32;
    a5 = v31;
    a6 = v18;
    a2 = v22;
    a4 = v77;
    if (v18)
    {
      continue;
    }

    return result;
  }
}

void sub_10009CC78(void *result, char *a2, uint64_t a3, unint64_t a4, __n128 *a5, int64_t a6)
{
  if (a4 < 2)
  {
    return;
  }

  if (a4 == 2)
  {
    v6 = *(a2 - 1);
    v7 = *result;
    v8 = **(a3 + 8);
    v9 = *(*v6 + 16);
    v10 = *(**result + 16);
    if (v9 == v8)
    {
      if (v10 == v8)
      {
        return;
      }
    }

    else if (v10 == v8 || v10 <= v9)
    {
      return;
    }

    *result = v6;
    *(a2 - 1) = v7;
    return;
  }

  if (a4 <= 128)
  {
    if (result == a2)
    {
      return;
    }

    v11 = result + 1;
    if (result + 1 == a2)
    {
      return;
    }

    v12 = 0;
    v13 = **(a3 + 8);
    v14 = result;
    while (1)
    {
      v16 = v14;
      v14 = v11;
      v18 = *v16;
      v17 = v16[1];
      v19 = *(*v17 + 16);
      v20 = *(**v16 + 16);
      if (v19 == v13)
      {
        if (v20 == v13)
        {
          goto LABEL_13;
        }

        v16[1] = v18;
        v21 = v12;
        v15 = result;
        if (v16 != result)
        {
          while (1)
          {
            v15 = (result + v21);
            v22 = *(result + v21 - 8);
            if (*(*v22 + 16) == v13)
            {
              break;
            }

            *v15 = v22;
            v21 -= 8;
            if (!v21)
            {
              goto LABEL_11;
            }
          }
        }
      }

      else
      {
        if (v20 == v13 || v20 <= v19)
        {
          goto LABEL_13;
        }

        v16[1] = v18;
        v24 = v12;
        v15 = result;
        if (v16 != result)
        {
          while (1)
          {
            v15 = (result + v24);
            v25 = *(result + v24 - 8);
            v26 = *(*v25 + 16);
            if (v26 == v13 || v26 <= v19)
            {
              break;
            }

            *v15 = v25;
            v24 -= 8;
            if (!v24)
            {
LABEL_11:
              v15 = result;
              break;
            }
          }
        }
      }

      *v15 = v17;
LABEL_13:
      v11 = v14 + 1;
      v12 += 8;
      if (v14 + 1 == a2)
      {
        return;
      }
    }
  }

  v30 = a4 >> 1;
  v31 = &result[a4 >> 1];
  v32 = a4 - (a4 >> 1);
  v33 = result;
  if (a4 > a6)
  {
    sub_10009CC78(result, v31, a3, a4 >> 1, a5, a6);
    sub_10009CC78(v31, a2, a3, v32, a5, a6);

    sub_10009D410(v33, v31, a2, a3, v30, v32, a5, a6);
    return;
  }

  v39 = a5;
  sub_10009D074(result, v31, a3, a4 >> 1, a5);
  v40 = (v39 + 8 * v30);
  sub_10009D074(v31, a2, a3, v32, v40);
  v41 = (v39 + 8 * a4);
  v42 = *(a3 + 8);
  v43 = v33;
  v44 = v40;
  do
  {
    while (1)
    {
      if (v44 == v41)
      {
        if (v39 == v40)
        {
          return;
        }

        v53 = v40 - v39 - 8;
        if (v53 >= 0x38)
        {
          if ((v43 - v39) >= 0x20)
          {
            v55 = (v33 + 16);
            v56 = (v53 >> 3) + 1;
            v57 = 8 * (v56 & 0x3FFFFFFFFFFFFFFCLL);
            v33 += v57;
            v54 = (v39 + v57);
            v58 = v39 + 1;
            v59 = v56 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v60 = *v58;
              v55[-1] = v58[-1];
              *v55 = v60;
              v58 += 2;
              v55 += 2;
              v59 -= 4;
            }

            while (v59);
            if (v56 == (v56 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return;
            }
          }

          else
          {
            v54 = v39;
          }
        }

        else
        {
          v54 = v39;
        }

        do
        {
          v61 = v54->n128_u64[0];
          v54 = (v54 + 8);
          *v33 = v61;
          v33 += 8;
        }

        while (v54 != v40);
        return;
      }

      v45 = *v42;
      v46 = *(*v44->n128_u64[0] + 16);
      v47 = *(*v39->n128_u64[0] + 16);
      if (v46 != *v42)
      {
        break;
      }

      if (v47 == v45)
      {
        goto LABEL_53;
      }

LABEL_44:
      *v33 = v44->n128_u64[0];
      v33 += 8;
      v44 = (v44 + 8);
      v43 += 8;
      if (v39 == v40)
      {
        goto LABEL_54;
      }
    }

    if (v47 != v45 && v47 > v46)
    {
      goto LABEL_44;
    }

LABEL_53:
    *v33 = v39->n128_u64[0];
    v33 += 8;
    v39 = (v39 + 8);
    v43 += 8;
  }

  while (v39 != v40);
LABEL_54:
  if (v44 == v41)
  {
    return;
  }

  v49 = v41 - v44 - 8;
  if (v49 <= 0x47 || (v43 - v44) < 0x20)
  {
    v50 = v33;
    v51 = v44;
    do
    {
LABEL_58:
      v52 = v51->n128_u64[0];
      v51 = (v51 + 8);
      *v50 = v52;
      v50 += 8;
    }

    while (v51 != v41);
    return;
  }

  v62 = 0;
  v63 = (v49 >> 3) + 1;
  v64 = 8 * (v63 & 0x3FFFFFFFFFFFFFFCLL);
  v50 = &v33[v64];
  v51 = (v44 + v64);
  v65 = v44 + 1;
  v66 = v63 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v67 = &v33[v62];
    v68 = *v65;
    *v67 = v65[-1];
    *(v67 + 1) = v68;
    v65 += 2;
    v62 += 32;
    v66 -= 4;
  }

  while (v66);
  if (v63 != (v63 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_58;
  }
}

__n128 sub_10009D074(uint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t a4, __n128 *a5)
{
  switch(a4)
  {
    case 0uLL:
      return result;
    case 1uLL:
LABEL_36:
      a5->n128_u64[0] = *a1;
      return result;
    case 2uLL:
      v7 = *(a2 - 1);
      v5 = a2 - 1;
      v6 = v7;
      v8 = **(a3 + 8);
      v9 = *(*v7 + 16);
      v10 = *(**a1 + 16);
      if (v9 == v8)
      {
        if (v10 != v8)
        {
          goto LABEL_35;
        }
      }

      else if (v10 != v8 && v10 > v9)
      {
        goto LABEL_35;
      }

      v6 = *a1;
      a1 = v5;
LABEL_35:
      a5->n128_u64[0] = v6;
      a5 = (a5 + 8);
      goto LABEL_36;
  }

  if (a4 <= 8)
  {
    if (a1 == a2)
    {
      return result;
    }

    v11 = *(a3 + 8);
    v13 = *a1;
    v12 = a1 + 1;
    a5->n128_u64[0] = v13;
    if (v12 == a2)
    {
      return result;
    }

    v14 = 0;
    v15 = *v11;
    v16 = a5;
    v17 = a5;
LABEL_13:
    while (2)
    {
      v21 = v17->n128_u64[0];
      v17 = (v17 + 8);
      v20 = v21;
      v22 = *(**v12 + 16);
      v23 = *(*v21 + 16);
      if (v22 == v15)
      {
        if (v23 != v15)
        {
LABEL_15:
          v16->n128_u64[1] = v20;
          v18 = a5;
          if (v16 == a5)
          {
            goto LABEL_12;
          }

          v24 = v14;
          while (1)
          {
            v25 = *(&a5->n128_u64[-1] + v24);
            v26 = *(**v12 + 16);
            v27 = *(*v25 + 16);
            if (v26 == v15)
            {
              if (v27 == v15)
              {
                v18 = (a5 + v24);
LABEL_12:
                v19 = *v12++;
                v18->n128_u64[0] = v19;
                v14 += 8;
                v16 = v17;
                if (v12 == a2)
                {
                  return result;
                }

                goto LABEL_13;
              }
            }

            else if (v27 == v15 || v27 <= v26)
            {
              v18 = v16;
              goto LABEL_12;
            }

            v16 = (v16 - 8);
            *(a5->n128_u64 + v24) = v25;
            v24 -= 8;
            if (!v24)
            {
              v18 = a5;
              goto LABEL_12;
            }
          }
        }
      }

      else if (v23 != v15 && v23 > v22)
      {
        goto LABEL_15;
      }

      v17->n128_u64[0] = *v12++;
      v14 += 8;
      v16 = v17;
      if (v12 == a2)
      {
        return result;
      }

      continue;
    }
  }

  v30 = a4 >> 1;
  v31 = a4 >> 1;
  v32 = &a1[v31];
  v33 = a1;
  v37 = a5;
  sub_10009CC78(a1, &a1[v31], a3, v30, a5, v30);
  sub_10009CC78(v32, a2, a3, a4 - v30, v37 + v31 * 8, a4 - v30);
  v39 = *(a3 + 8);
  v40 = v37;
  v41 = v33;
  v42 = v32;
  do
  {
    while (1)
    {
      if (v42 == a2)
      {
        if (v41 == v32)
        {
          return result;
        }

        v51 = &v33[v30] - v41 - 8;
        if (v51 >= 0x38)
        {
          if ((v40 - v41) >= 0x20)
          {
            v53 = v37 + 1;
            v54 = (v51 >> 3) + 1;
            v55 = v54 & 0x3FFFFFFFFFFFFFFCLL;
            v37 = (v37 + v55 * 8);
            v52 = &v41[v55];
            v56 = (v41 + 2);
            v57 = v54 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              result = v56[-1];
              v58 = *v56;
              v53[-1] = result;
              *v53 = v58;
              v56 += 2;
              v53 += 2;
              v57 -= 4;
            }

            while (v57);
            if (v54 == (v54 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return result;
            }
          }

          else
          {
            v52 = v41;
          }
        }

        else
        {
          v52 = v41;
        }

        do
        {
          v59 = *v52++;
          v37->n128_u64[0] = v59;
          v37 = (v37 + 8);
        }

        while (v52 != v32);
        return result;
      }

      v43 = *v39;
      v44 = *(**v42 + 16);
      v45 = *(**v41 + 16);
      if (v44 != *v39)
      {
        break;
      }

      if (v45 == v43)
      {
        goto LABEL_48;
      }

LABEL_39:
      v37->n128_u64[0] = *v42;
      v37 = (v37 + 8);
      ++v42;
      v40 = (v40 + 8);
      if (v41 == v32)
      {
        goto LABEL_49;
      }
    }

    if (v45 != v43 && v45 > v44)
    {
      goto LABEL_39;
    }

LABEL_48:
    v37->n128_u64[0] = *v41;
    v37 = (v37 + 8);
    ++v41;
    v40 = (v40 + 8);
  }

  while (v41 != v32);
LABEL_49:
  if (v42 == a2)
  {
    return result;
  }

  v47 = a2 - v42 - 8;
  if (v47 < 0x48 || (v40 - v42) < 0x20)
  {
    v48 = v37;
    v49 = v42;
    do
    {
LABEL_53:
      v50 = *v49++;
      v48->n128_u64[0] = v50;
      v48 = (v48 + 8);
    }

    while (v49 != a2);
    return result;
  }

  v60 = 0;
  v61 = (v47 >> 3) + 1;
  v62 = v61 & 0x3FFFFFFFFFFFFFFCLL;
  v48 = (v37 + v62 * 8);
  v49 = &v42[v62];
  v63 = (v42 + 2);
  v64 = v61 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v65 = &v37[v60];
    result = v63[-1];
    v66 = *v63;
    *v65 = result;
    v65[1] = v66;
    v63 += 2;
    v60 += 2;
    v64 -= 4;
  }

  while (v64);
  if (v61 != (v61 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_53;
  }

  return result;
}

char *sub_10009D410(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  if (!a6)
  {
    return result;
  }

  while (2)
  {
    while (2)
    {
      if (a6 <= a8 || a5 <= a8)
      {
        if (a5 > a6)
        {
          if (a2 == a3)
          {
            return result;
          }

          v80 = a3 - a2 - 8;
          v81 = a7;
          v82 = a2;
          if (v80 < 0x18)
          {
            goto LABEL_133;
          }

          v81 = a7;
          v82 = a2;
          if ((a7 - a2) <= 0x1F)
          {
            goto LABEL_133;
          }

          v83 = (v80 >> 3) + 1;
          v84 = 8 * (v83 & 0x3FFFFFFFFFFFFFFCLL);
          v81 = &a7[v84];
          v82 = &a2[v84];
          v85 = a2 + 16;
          v86 = a7 + 16;
          v87 = v83 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v88 = *v85;
            *(v86 - 1) = *(v85 - 1);
            *v86 = v88;
            v85 += 32;
            v86 += 32;
            v87 -= 4;
          }

          while (v87);
          if (v83 != (v83 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_133:
            do
            {
              v89 = *v82;
              v82 += 8;
              *v81 = v89;
              v81 += 8;
            }

            while (v82 != a3);
          }

          v90 = *(a4 + 8);
          for (i = a3; ; i -= 8)
          {
            if (a2 == result)
            {
              v113 = v81 - a7;
              if (v81 != a7)
              {
                v114 = v113 - 8;
                if ((v113 - 8) < 0x48 || (v81 - i) < 0x20)
                {
                  v115 = v81;
                  goto LABEL_121;
                }

                v118 = a3 - 16;
                v119 = (v114 >> 3) + 1;
                v120 = 8 * (v119 & 0x3FFFFFFFFFFFFFFCLL);
                v115 = &v81[-v120];
                a3 -= v120;
                v121 = v81 - 16;
                v122 = v119 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v123 = *v121;
                  *(v118 - 1) = *(v121 - 1);
                  *v118 = v123;
                  v118 -= 32;
                  v121 -= 32;
                  v122 -= 4;
                }

                while (v122);
                if (v119 != (v119 & 0x3FFFFFFFFFFFFFFCLL))
                {
LABEL_121:
                  v116 = a3 - 8;
                  do
                  {
                    v117 = *(v115 - 1);
                    v115 -= 8;
                    *v116 = v117;
                    v116 -= 8;
                  }

                  while (v115 != a7);
                }
              }

              return result;
            }

            v93 = a2 - 8;
            v92 = *(a2 - 1);
            v94 = *v90;
            v95 = *(*v92 + 16);
            v96 = *(**(v81 - 1) + 16);
            if (v96 == *v90)
            {
              if (v95 != v94)
              {
                goto LABEL_87;
              }
            }

            else if (v95 != v94 && v95 > v96)
            {
              goto LABEL_87;
            }

            v92 = *(v81 - 1);
            v93 = a2;
            v81 -= 8;
LABEL_87:
            *(a3 - 1) = v92;
            a3 -= 8;
            a2 = v93;
            if (v81 == a7)
            {
              return result;
            }
          }
        }

        if (result == a2)
        {
          return result;
        }

        v98 = a2 - result - 8;
        v99 = a7;
        v100 = result;
        if (v98 < 0x18)
        {
          goto LABEL_134;
        }

        v99 = a7;
        v100 = result;
        if ((a7 - result) <= 0x1F)
        {
          goto LABEL_134;
        }

        v101 = (v98 >> 3) + 1;
        v102 = 8 * (v101 & 0x3FFFFFFFFFFFFFFCLL);
        v99 = &a7[v102];
        v100 = &result[v102];
        v103 = result + 16;
        v104 = a7 + 16;
        v105 = v101 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v106 = *v103;
          *(v104 - 1) = *(v103 - 1);
          *v104 = v106;
          v103 += 32;
          v104 += 32;
          v105 -= 4;
        }

        while (v105);
        if (v101 != (v101 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_134:
          do
          {
            v107 = *v100;
            v100 += 8;
            *v99 = v107;
            v99 += 8;
          }

          while (v100 != a2);
        }

        v108 = *(a4 + 8);
        while (1)
        {
          while (1)
          {
            if (a2 == a3)
            {

              return memmove(result, a7, v99 - a7);
            }

            v109 = *v108;
            v110 = *(**a2 + 16);
            v111 = *(**a7 + 16);
            if (v110 == *v108)
            {
              break;
            }

            if (v111 == v109 || v111 <= v110)
            {
              goto LABEL_114;
            }

LABEL_105:
            *result = *a2;
            result += 8;
            a2 += 8;
            if (a7 == v99)
            {
              return result;
            }
          }

          if (v111 != v109)
          {
            goto LABEL_105;
          }

LABEL_114:
          *result = *a7;
          result += 8;
          a7 += 8;
          if (a7 == v99)
          {
            return result;
          }
        }
      }

      if (!a5)
      {
        return result;
      }

      v9 = 0;
      v10 = 0;
      v11 = **(a4 + 8);
      v12 = *(**a2 + 16);
      while (1)
      {
        v14 = *&result[8 * v10];
        v15 = *(*v14 + 16);
        if (v12 != v11)
        {
          break;
        }

        if (v15 != v11)
        {
          goto LABEL_13;
        }

LABEL_10:
        ++v10;
        v9 -= 8;
        if (a5 == v10)
        {
          return result;
        }
      }

      v13 = v15 != v11 && v15 > v12;
      if (!v13)
      {
        goto LABEL_10;
      }

LABEL_13:
      v16 = a5 - v10;
      v17 = &result[-v9];
      if (a5 - v10 >= a6)
      {
        if (a5 - 1 == v10)
        {
          *&result[8 * v10] = *a2;
          *a2 = v14;
          return result;
        }

        v31 = v16 / 2;
        v33 = &result[8 * (v16 / 2)];
        v19 = a2;
        if (a3 != a2)
        {
          v34 = (a3 - a2) >> 3;
          v35 = *(**&v33[8 * v10] + 16);
          v19 = a2;
          if (v35 == v11)
          {
            do
            {
              v36 = v34 >> 1;
              v37 = &v19[8 * (v34 >> 1)];
              v39 = *v37;
              v38 = v37 + 8;
              v40 = *(*v39 + 16);
              v41 = v40 != v11 || v35 == v40;
              v34 += ~v36;
              if (v41)
              {
                v34 = v36;
              }

              else
              {
                v19 = v38;
              }
            }

            while (v34);
          }

          else
          {
            do
            {
              v42 = v34 >> 1;
              v43 = &v19[8 * (v34 >> 1)];
              v45 = *v43;
              v44 = v43 + 8;
              v46 = *(*v45 + 16);
              v48 = v46 == v11 || v35 > v46;
              v34 += ~v42;
              if (v48)
              {
                v19 = v44;
              }

              else
              {
                v34 = v42;
              }
            }

            while (v34);
          }
        }

        v22 = &v33[-v9];
        v18 = (v19 - a2) >> 3;
        v32 = v19;
        if (&v33[-v9] == a2)
        {
          goto LABEL_72;
        }

LABEL_51:
        v32 = v22;
        if (a2 != v19)
        {
          v49 = v22 + 8;
          if (v22 + 8 == a2)
          {
            v124 = *v22;
            v126 = v17;
            v55 = v19 - a2;
            v128 = a3;
            v56 = a5;
            v57 = a6;
            v58 = a4;
            memmove(v22, v22 + 8, v19 - a2);
            v17 = v126;
            a3 = v128;
            a4 = v58;
            a6 = v57;
            a5 = v56;
            v32 = &v22[v55];
            *&v22[v55] = v124;
          }

          else
          {
            v50 = a2 + 8;
            if (a2 + 8 == v19)
            {
              v59 = *(v19 - 1);
              v32 = v22 + 8;
              if (v19 - 8 != v22)
              {
                v127 = v17;
                v129 = a3;
                v60 = a5;
                v125 = a6;
                v61 = a4;
                memmove(v22 + 8, v22, v19 - 8 - v22);
                a6 = v125;
                v17 = v127;
                a4 = v61;
                a5 = v60;
                a3 = v129;
              }

              *v22 = v59;
            }

            else
            {
              v51 = (a2 - v22);
              v52 = (a2 - v22) >> 3;
              v53 = (v19 - a2) >> 3;
              if (v52 == v53)
              {
                do
                {
                  v54 = *(v49 - 1);
                  *(v49 - 1) = *(v50 - 1);
                  *(v50 - 1) = v54;
                  if (v49 == a2)
                  {
                    break;
                  }

                  v49 += 8;
                  v41 = v50 == v19;
                  v50 += 8;
                }

                while (!v41);
                v32 = a2;
              }

              else
              {
                v62 = (a2 - v22) >> 3;
                do
                {
                  v63 = v62;
                  v62 = v53;
                  v53 = v63 % v53;
                }

                while (v53);
                v64 = &v22[8 * v62];
                do
                {
                  v66 = *(v64 - 1);
                  v64 -= 8;
                  v65 = v66;
                  v67 = &v51[v64];
                  v68 = v64;
                  do
                  {
                    v69 = v68;
                    v68 = v67;
                    *v69 = *v67;
                    v70 = (v19 - v67) >> 3;
                    v71 = __OFSUB__(v52, v70);
                    v72 = v52 - v70;
                    v13 = (v72 < 0) ^ v71;
                    v67 = &v22[8 * v72];
                    if (v13)
                    {
                      v67 = &v51[v68];
                    }
                  }

                  while (v67 != v64);
                  *v68 = v65;
                }

                while (v64 != v22);
                v32 = &v22[v19 - a2];
              }
            }
          }
        }

        goto LABEL_72;
      }

      v18 = a6 / 2;
      v19 = &a2[8 * (a6 / 2)];
      if (v17 == a2)
      {
        v22 = &result[-v9];
        v31 = 0;
        v32 = &a2[8 * (a6 / 2)];
        goto LABEL_72;
      }

      v20 = (a2 - result + v9) >> 3;
      v21 = *(**v19 + 16);
      v22 = v17;
      if (v21 == v11)
      {
        do
        {
          v23 = v20 >> 1;
          v24 = &v22[8 * (v20 >> 1)];
          v26 = *v24;
          v25 = v24 + 8;
          v20 += ~(v20 >> 1);
          if (*(*v26 + 16) == v11)
          {
            v22 = v25;
          }

          else
          {
            v20 = v23;
          }
        }

        while (v20);
      }

      else
      {
        do
        {
          v27 = v20 >> 1;
          v28 = &v22[8 * (v20 >> 1)];
          v30 = *v28;
          v29 = v28 + 8;
          v20 += ~(v20 >> 1);
          if (*(*v30 + 16) != v11 && *(*v30 + 16) > v21)
          {
            v20 = v27;
          }

          else
          {
            v22 = v29;
          }
        }

        while (v20);
      }

      v31 = (v22 - v17) >> 3;
      v32 = &a2[8 * (a6 / 2)];
      if (v22 != a2)
      {
        goto LABEL_51;
      }

LABEL_72:
      v73 = a5 - v31 - v10;
      v74 = a6 - v18;
      if (v31 + v18 < a6 + a5 - (v31 + v18) - v10)
      {
        v75 = a3;
        v76 = a4;
        sub_10009D410(v17, v22, v32, a4, v31, v18, a7, a8);
        a3 = v75;
        result = v32;
        a5 = v73;
        a6 = v74;
        a2 = v19;
        a4 = v76;
        if (!v74)
        {
          return result;
        }

        continue;
      }

      break;
    }

    v77 = a4;
    v78 = a5 - v31 - v10;
    v79 = v17;
    sub_10009D410(v32, v19, a3, a4, v78, a6 - v18, a7, a8);
    result = v79;
    a3 = v32;
    a5 = v31;
    a6 = v18;
    a2 = v22;
    a4 = v77;
    if (v18)
    {
      continue;
    }

    return result;
  }
}

void sub_10009DBD8(__n128 *result, __n128 *a2, uint64_t a3, unint64_t a4, char *a5, uint64_t a6)
{
  if (a4 < 2)
  {
    return;
  }

  if (a4 == 2)
  {
    v6 = a2[-1].n128_u64[1];
    v7 = result->n128_u64[0];
    v8 = **(a3 + 8);
    v9 = *(*(v6 + 16) + 16);
    v10 = *(*(result->n128_u64[0] + 16) + 16);
    if (v9 == v8)
    {
      if (v10 == v8)
      {
        return;
      }
    }

    else if (v10 == v8 || v10 <= v9)
    {
      return;
    }

    result->n128_u64[0] = v6;
    a2[-1].n128_u64[1] = v7;
    return;
  }

  if (a4 <= 128)
  {
    if (result == a2)
    {
      return;
    }

    v11 = &result->n128_i8[8];
    if (&result->n128_i8[8] == a2)
    {
      return;
    }

    v12 = 0;
    v13 = **(a3 + 8);
    v14 = result;
    while (1)
    {
      v16 = v14;
      v14 = v11;
      v18 = v16->n128_u64[0];
      v17 = v16->n128_u64[1];
      v19 = *(*(v17 + 16) + 16);
      v20 = *(*(v16->n128_u64[0] + 16) + 16);
      if (v19 == v13)
      {
        if (v20 == v13)
        {
          goto LABEL_13;
        }

        v16->n128_u64[1] = v18;
        v21 = v12;
        v15 = result;
        if (v16 != result)
        {
          while (1)
          {
            v15 = (result + v21);
            v22 = *(&result->n128_u64[-1] + v21);
            if (*(*(v22 + 16) + 16) == v13)
            {
              break;
            }

            v15->n128_u64[0] = v22;
            v21 -= 8;
            if (!v21)
            {
              goto LABEL_11;
            }
          }
        }
      }

      else
      {
        if (v20 == v13 || v20 <= v19)
        {
          goto LABEL_13;
        }

        v16->n128_u64[1] = v18;
        v24 = v12;
        v15 = result;
        if (v16 != result)
        {
          while (1)
          {
            v15 = (result + v24);
            v25 = *(&result->n128_u64[-1] + v24);
            v26 = *(*(v25 + 16) + 16);
            if (v26 == v13 || v26 <= v19)
            {
              break;
            }

            v15->n128_u64[0] = v25;
            v24 -= 8;
            if (!v24)
            {
LABEL_11:
              v15 = result;
              break;
            }
          }
        }
      }

      v15->n128_u64[0] = v17;
LABEL_13:
      v11 = &v14->n128_i8[8];
      v12 += 8;
      if (&v14->n128_i8[8] == a2)
      {
        return;
      }
    }
  }

  v30 = a4 >> 1;
  v31 = (result + 8 * (a4 >> 1));
  v32 = a4 - (a4 >> 1);
  v33 = result;
  if (a4 > a6)
  {
    sub_10009DBD8(result, v31, a3, a4 >> 1, a5, a6);
    sub_10009DBD8(v31, a2, a3, v32, a5, a6);

    sub_10009C4B0(v33, v31, a2, a3, v30, v32, a5, a6);
    return;
  }

  v39 = a5;
  sub_10009DFD4(result, v31, a3, a4 >> 1, a5);
  v40 = &v39[8 * v30];
  sub_10009DFD4(v31, a2, a3, v32, v40);
  v41 = &v39[8 * a4];
  v42 = *(a3 + 8);
  v43 = v33;
  v44 = v40;
  do
  {
    while (1)
    {
      if (v44 == v41)
      {
        if (v39 == v40)
        {
          return;
        }

        v53 = v40 - v39 - 8;
        if (v53 >= 0x38)
        {
          if ((v43 - v39) >= 0x20)
          {
            v55 = v33 + 16;
            v56 = (v53 >> 3) + 1;
            v57 = 8 * (v56 & 0x3FFFFFFFFFFFFFFCLL);
            v33 += v57;
            v54 = &v39[v57];
            v58 = (v39 + 16);
            v59 = v56 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v60 = *v58;
              *(v55 - 1) = *(v58 - 1);
              *v55 = v60;
              v58 += 2;
              v55 += 2;
              v59 -= 4;
            }

            while (v59);
            if (v56 == (v56 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return;
            }
          }

          else
          {
            v54 = v39;
          }
        }

        else
        {
          v54 = v39;
        }

        do
        {
          v61 = *v54;
          v54 += 8;
          *v33 = v61;
          v33 += 8;
        }

        while (v54 != v40);
        return;
      }

      v45 = *v42;
      v46 = *(*(*v44 + 16) + 16);
      v47 = *(*(*v39 + 16) + 16);
      if (v46 != *v42)
      {
        break;
      }

      if (v47 == v45)
      {
        goto LABEL_53;
      }

LABEL_44:
      *v33 = *v44;
      v33 += 8;
      v44 += 8;
      v43 += 8;
      if (v39 == v40)
      {
        goto LABEL_54;
      }
    }

    if (v47 != v45 && v47 > v46)
    {
      goto LABEL_44;
    }

LABEL_53:
    *v33 = *v39;
    v33 += 8;
    v39 += 8;
    v43 += 8;
  }

  while (v39 != v40);
LABEL_54:
  if (v44 == v41)
  {
    return;
  }

  v49 = v41 - v44 - 8;
  if (v49 <= 0x47 || (v43 - v44) < 0x20)
  {
    v50 = v33;
    v51 = v44;
    do
    {
LABEL_58:
      v52 = *v51;
      v51 += 8;
      *v50 = v52;
      v50 += 8;
    }

    while (v51 != v41);
    return;
  }

  v62 = 0;
  v63 = (v49 >> 3) + 1;
  v64 = 8 * (v63 & 0x3FFFFFFFFFFFFFFCLL);
  v50 = &v33[v64];
  v51 = &v44[v64];
  v65 = (v44 + 16);
  v66 = v63 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v67 = &v33[v62];
    v68 = *v65;
    *v67 = *(v65 - 1);
    *(v67 + 1) = v68;
    v65 += 2;
    v62 += 32;
    v66 -= 4;
  }

  while (v66);
  if (v63 != (v63 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_58;
  }
}

__n128 sub_10009DFD4(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4, char *a5)
{
  switch(a4)
  {
    case 0uLL:
      return result;
    case 1uLL:
LABEL_36:
      *a5 = a1->n128_u64[0];
      return result;
    case 2uLL:
      v7 = a2[-1].n128_u64[1];
      v5 = &a2[-1].n128_i8[8];
      v6 = v7;
      v8 = **(a3 + 8);
      v9 = *(*(v7 + 16) + 16);
      v10 = *(*(a1->n128_u64[0] + 16) + 16);
      if (v9 == v8)
      {
        if (v10 != v8)
        {
          goto LABEL_35;
        }
      }

      else if (v10 != v8 && v10 > v9)
      {
        goto LABEL_35;
      }

      v6 = a1->n128_u64[0];
      a1 = v5;
LABEL_35:
      *a5 = v6;
      a5 += 8;
      goto LABEL_36;
  }

  if (a4 <= 8)
  {
    if (a1 == a2)
    {
      return result;
    }

    v11 = *(a3 + 8);
    v13 = a1->n128_u64[0];
    v12 = &a1->n128_i8[8];
    *a5 = v13;
    if (v12 == a2)
    {
      return result;
    }

    v14 = 0;
    v15 = *v11;
    v16 = a5;
    v17 = a5;
LABEL_13:
    while (2)
    {
      v21 = *v17;
      v17 += 8;
      v20 = v21;
      v22 = *(*(*v12 + 16) + 16);
      v23 = *(*(v21 + 16) + 16);
      if (v22 == v15)
      {
        if (v23 != v15)
        {
LABEL_15:
          *(v16 + 1) = v20;
          v18 = a5;
          if (v16 == a5)
          {
            goto LABEL_12;
          }

          v24 = v14;
          while (1)
          {
            v25 = *&a5[v24 - 8];
            v26 = *(*(*v12 + 16) + 16);
            v27 = *(*(v25 + 16) + 16);
            if (v26 == v15)
            {
              if (v27 == v15)
              {
                v18 = &a5[v24];
LABEL_12:
                v19 = *v12;
                v12 += 8;
                *v18 = v19;
                v14 += 8;
                v16 = v17;
                if (v12 == a2)
                {
                  return result;
                }

                goto LABEL_13;
              }
            }

            else if (v27 == v15 || v27 <= v26)
            {
              v18 = v16;
              goto LABEL_12;
            }

            v16 -= 8;
            *&a5[v24] = v25;
            v24 -= 8;
            if (!v24)
            {
              v18 = a5;
              goto LABEL_12;
            }
          }
        }
      }

      else if (v23 != v15 && v23 > v22)
      {
        goto LABEL_15;
      }

      *v17 = *v12;
      v12 += 8;
      v14 += 8;
      v16 = v17;
      if (v12 == a2)
      {
        return result;
      }

      continue;
    }
  }

  v30 = a4 >> 1;
  v31 = 8 * (a4 >> 1);
  v32 = a1 + v31;
  v33 = a1;
  v37 = a5;
  sub_10009DBD8(a1, a1 + v31, a3, v30, a5, v30);
  sub_10009DBD8(v32, a2, a3, a4 - v30, &v37[v31], a4 - v30);
  v39 = *(a3 + 8);
  v40 = v37;
  v41 = v33;
  v42 = v32;
  do
  {
    while (1)
    {
      if (v42 == a2)
      {
        if (v41 == v32)
        {
          return result;
        }

        v51 = &v33[8 * v30] - v41 - 8;
        if (v51 >= 0x38)
        {
          if ((v40 - v41) >= 0x20)
          {
            v53 = (v37 + 16);
            v54 = (v51 >> 3) + 1;
            v55 = 8 * (v54 & 0x3FFFFFFFFFFFFFFCLL);
            v37 += v55;
            v52 = &v41[v55];
            v56 = (v41 + 16);
            v57 = v54 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              result = v56[-1];
              v58 = *v56;
              v53[-1] = result;
              *v53 = v58;
              v56 += 2;
              v53 += 2;
              v57 -= 4;
            }

            while (v57);
            if (v54 == (v54 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return result;
            }
          }

          else
          {
            v52 = v41;
          }
        }

        else
        {
          v52 = v41;
        }

        do
        {
          v59 = *v52;
          v52 += 8;
          *v37 = v59;
          v37 += 8;
        }

        while (v52 != v32);
        return result;
      }

      v43 = *v39;
      v44 = *(*(v42->n128_u64[0] + 16) + 16);
      v45 = *(*(*v41 + 16) + 16);
      if (v44 != *v39)
      {
        break;
      }

      if (v45 == v43)
      {
        goto LABEL_48;
      }

LABEL_39:
      *v37 = v42->n128_u64[0];
      v37 += 8;
      v42 = (v42 + 8);
      v40 += 8;
      if (v41 == v32)
      {
        goto LABEL_49;
      }
    }

    if (v45 != v43 && v45 > v44)
    {
      goto LABEL_39;
    }

LABEL_48:
    *v37 = *v41;
    v37 += 8;
    v41 += 8;
    v40 += 8;
  }

  while (v41 != v32);
LABEL_49:
  if (v42 == a2)
  {
    return result;
  }

  v47 = a2 - v42 - 8;
  if (v47 < 0x48 || (v40 - v42) < 0x20)
  {
    v48 = v37;
    v49 = v42;
    do
    {
LABEL_53:
      v50 = *v49;
      v49 += 8;
      *v48 = v50;
      v48 += 8;
    }

    while (v49 != a2);
    return result;
  }

  v60 = 0;
  v61 = (v47 >> 3) + 1;
  v62 = 8 * (v61 & 0x3FFFFFFFFFFFFFFCLL);
  v48 = &v37[v62];
  v49 = v42 + v62;
  v63 = v42 + 1;
  v64 = v61 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v65 = &v37[v60];
    result = v63[-1];
    v66 = *v63;
    *v65 = result;
    *(v65 + 1) = v66;
    v63 += 2;
    v60 += 32;
    v64 -= 4;
  }

  while (v64);
  if (v61 != (v61 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_53;
  }

  return result;
}

double sub_10009E370(uint64_t **result, uint64_t a2, int *a3)
{
  v5 = *a3;
  v4 = a3[1];
  v40 = a2;
  v6 = *(a2 + 44);
  if ((v6 & 0x7FFFFF) != 0 && v4 == v5)
  {
    v13 = *(*result + 2);
    v14 = *(**result + 24 * v13 - 16);
    *(*result + 2) = v13 - 1;
    if ((*(v14 + 5) & 1) == 0)
    {
      *(v14 + 4) = 257;
    }
  }

  else if (!v4)
  {
    v9 = result[1];
    v10 = *(*result + 2);
    if (v10 && *(**result + 24 * v10 - 8) == 1)
    {
      v11 = *(a2 + 16);
      if (v11)
      {
        Parent = mlir::Block::getParent(v11);
        v6 = *(a2 + 44);
      }

      else
      {
        Parent = 0;
      }

      if ((v6 & 0x800000) != 0)
      {
        v15 = *(a2 + 68);
        if (v15)
        {
          v16 = 0;
          v17 = *(a2 + 72);
          do
          {
            *&v37 = *(v17 + 32 * v16 + 24);
            ParentRegion = mlir::Value::getParentRegion(&v37);
            if (ParentRegion != Parent)
            {
              v19 = **result;
              v20 = 24 * *(*result + 2);
              v21 = v19 + v20;
              while (v20)
              {
                v22 = *(v19 + v20 - 24);
                v23 = *(v19 + v20 - 8);
                v20 -= 24;
                if (v23 != 1 || v22 == *(ParentRegion + 2))
                {
                  v19 += v20 + 24;
                  break;
                }
              }

              while (v21 != v19)
              {
                *(v21 - 8) = *(v19 - 8);
                *(*(v21 - 16) + 4) = 256;
                v21 -= 24;
              }
            }

            ++v16;
          }

          while (v16 != v15);
        }
      }
    }

    v9[66] += 8;
    v25 = v9[56];
    if (v25 && (v26 = (v25 + 3) & 0xFFFFFFFFFFFFFFFCLL, v26 + 8 <= v9[57]))
    {
      v9[56] = v26 + 8;
    }

    else
    {
      v26 = sub_10003E4AC((v9 + 56), 8, 8, 2);
    }

    v27 = result[2];
    v28 = (*v27)++;
    *v26 = v28;
    *(v26 + 4) = 0;
    v39 = v26;
    {
      if (v33)
      {
        v35 = sub_10007A3D8(v33, v34);
        mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v35, v36);
      }
    }

    if ((*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id))
    {
      *(v39 + 4) = 257;
    }

    sub_1000819A8(v9 + 3, &v40, &v39, &v37);
    if ((*(v40 + 44) & 0x7FFFFF) != 0)
    {
      v30 = *result;
      *&v37 = v40;
      *(&v37 + 1) = v39;
      LOBYTE(v38) = *(v39 + 5) ^ 1;
      v31 = *(v30 + 2);
      if (v31 >= *(v30 + 3))
      {
        *&v29 = sub_10009E658(v30, &v37).n128_u64[0];
      }

      else
      {
        v32 = *v30 + 24 * v31;
        v29 = *&v37;
        *v32 = v37;
        *(v32 + 16) = v38;
        ++*(v30 + 2);
      }
    }
  }

  return v29;
}

__n128 sub_10009E658(unint64_t *a1, __int128 *a2)
{
  v10 = *a2;
  v11 = *(a2 + 2);
  v2 = *(a1 + 2);
  v3 = *a1;
  v4 = &v10;
  if (v2 >= *(a1 + 3))
  {
    if (v3 <= &v10 && v3 + 24 * v2 > &v10)
    {
      v8 = &v10 - v3;
      v9 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v2 + 1, 24);
      a1 = v9;
      v3 = *v9;
      v4 = &v8[*v9];
    }

    else
    {
      v7 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v2 + 1, 24);
      a1 = v7;
      v3 = *v7;
      v4 = &v10;
    }
  }

  v5 = (v3 + 24 * *(a1 + 2));
  result = *v4;
  v5[1].n128_u64[0] = v4[1].n128_u64[0];
  *v5 = result;
  ++*(a1 + 2);
  return result;
}

uint64_t sub_10009E734@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v14 = 0;
  result = sub_10009E84C(a1, a2, &v14);
  v9 = v14;
  if (!result)
  {
    v15 = v14;
    v11 = *(a1 + 8);
    v12 = *(a1 + 16);
    if (4 * v11 + 4 >= 3 * v12)
    {
      v12 *= 2;
    }

    else if (v12 + ~v11 - *(a1 + 12) > v12 >> 3)
    {
      *(a1 + 8) = v11 + 1;
      if (*v9 == -1)
      {
LABEL_7:
        *v9 = *a2;
        *(v9 + 4) = *a3;
        v10 = 1;
        goto LABEL_8;
      }

LABEL_6:
      --*(a1 + 12);
      goto LABEL_7;
    }

    sub_10009EA94(a1, v12);
    result = sub_10009E84C(a1, a2, &v15);
    v9 = v15;
    ++*(a1 + 8);
    if (*v9 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v10 = 0;
LABEL_8:
  v13 = *a1 + 24 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v13;
  *(a4 + 16) = v10;
  return result;
}

uint64_t sub_10009E84C(uint64_t *a1, uint64_t a2, char ***a3)
{
  v4 = *(a1 + 4);
  if (!v4)
  {
    v13 = 0;
    result = 0;
    goto LABEL_44;
  }

  v5 = *a1;
  HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*a2, *(a2 + 8));
  v8 = v4 - 1;
  v9 = *a2;
  v10 = *(a2 + 8);
  if (!v10)
  {
    if (v9 != -2)
    {
      v21 = 0;
      v30 = 1;
      v31 = HashValue & v8;
      v13 = (v5 + 24 * (HashValue & v8));
      v32 = *v13;
      if (*v13 != -2)
      {
        goto LABEL_41;
      }

      while (1)
      {
        do
        {
          if (v21)
          {
            v33 = 0;
          }

          else
          {
            v33 = v32 + 2 == 0;
          }

          if (v33)
          {
            v21 = v13;
          }

          v34 = v30 + v31;
          ++v30;
          v31 = v34 & v8;
          v13 = (v5 + 24 * (v34 & v8));
          v32 = *v13;
        }

        while (*v13 == -2);
LABEL_41:
        if (v32 == -1)
        {
          goto LABEL_18;
        }

        if (!v13[1])
        {
          goto LABEL_43;
        }
      }
    }

    v17 = 1;
    v18 = HashValue & v8;
    v13 = (v5 + 24 * (HashValue & v8));
    v19 = *v13;
    if (*v13 != -2)
    {
      while (v19 != -1)
      {
        if (v13[1])
        {
          v20 = v17 + v18;
          ++v17;
          v18 = v20 & v8;
          v13 = (v5 + 24 * (v20 & v8));
          v19 = *v13;
          if (*v13 != -2)
          {
            continue;
          }
        }

        goto LABEL_43;
      }

      goto LABEL_17;
    }

LABEL_43:
    result = 1;
    goto LABEL_44;
  }

  if (v9 != -2)
  {
    v21 = 0;
    v22 = 1;
    v23 = HashValue & v8;
    v13 = (v5 + 24 * (HashValue & v8));
    v24 = *v13;
    if (*v13 != -2)
    {
      goto LABEL_30;
    }

    while (1)
    {
      do
      {
        if (v21)
        {
          v25 = 0;
        }

        else
        {
          v25 = v24 + 2 == 0;
        }

        if (v25)
        {
          v21 = v13;
        }

        v26 = v22 + v23;
        ++v22;
        v23 = v26 & v8;
        v13 = (v5 + 24 * (v26 & v8));
        v24 = *v13;
      }

      while (*v13 == -2);
LABEL_30:
      if (v24 == -1)
      {
        goto LABEL_18;
      }

      if (v10 == v13[1])
      {
        v35 = v24;
        v27 = v21;
        v28 = v22;
        v29 = memcmp(v9, v24, v10);
        v22 = v28;
        v21 = v27;
        v24 = v35;
        if (!v29)
        {
          goto LABEL_43;
        }
      }
    }
  }

  v11 = 1;
  v12 = HashValue & v8;
  v13 = (v5 + 24 * (HashValue & v8));
  v14 = *v13;
  if (*v13 == -2)
  {
    goto LABEL_43;
  }

  while (v14 != -1)
  {
    if (v10 != v13[1] || memcmp(0xFFFFFFFFFFFFFFFELL, v14, v10))
    {
      v15 = v11 + v12;
      ++v11;
      v12 = v15 & v8;
      v13 = (v5 + 24 * (v15 & v8));
      v14 = *v13;
      if (*v13 != -2)
      {
        continue;
      }
    }

    goto LABEL_43;
  }

LABEL_17:
  v21 = 0;
LABEL_18:
  if (!v21)
  {
    v21 = v13;
  }

  if (v9 == -1)
  {
    result = 1;
  }

  else
  {
    v13 = v21;
    result = 0;
  }

LABEL_44:
  *a3 = v13;
  return result;
}

void sub_10009EA94(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  buffer = llvm::allocate_buffer((24 * v8), 8uLL);
  *a1 = buffer;
  if (!v4)
  {
    *(a1 + 8) = 0;
    v13 = *(a1 + 16);
    if (!v13)
    {
      return;
    }

    v14 = 24 * v13 - 24;
    if (v14 >= 0x18)
    {
      v24 = v14 / 0x18 + 1;
      v15 = (buffer + 24 * (v24 & 0x1FFFFFFFFFFFFFFELL));
      v25 = buffer;
      v26 = v24 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v25 = xmmword_1002B02F0;
        *(v25 + 24) = xmmword_1002B02F0;
        v25 += 3;
        v26 -= 2;
      }

      while (v26);
      if (v24 == (v24 & 0x1FFFFFFFFFFFFFFELL))
      {
        return;
      }
    }

    else
    {
      v15 = buffer;
    }

    v27 = (buffer + 24 * v13);
    do
    {
      *v15 = xmmword_1002B02F0;
      v15 = (v15 + 24);
    }

    while (v15 != v27);
    return;
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 24 * v10 - 24;
    if (v11 >= 0x18)
    {
      v16 = v11 / 0x18 + 1;
      v12 = (buffer + 24 * (v16 & 0x1FFFFFFFFFFFFFFELL));
      v17 = buffer;
      v18 = v16 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v17 = xmmword_1002B02F0;
        *(v17 + 24) = xmmword_1002B02F0;
        v17 += 3;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0x1FFFFFFFFFFFFFFELL))
      {
        goto LABEL_16;
      }
    }

    else
    {
      v12 = buffer;
    }

    v19 = (buffer + 24 * v10);
    do
    {
      *v12 = xmmword_1002B02F0;
      v12 = (v12 + 24);
    }

    while (v12 != v19);
  }

LABEL_16:
  v20 = 3 * v3;
  if (v3)
  {
    v21 = 24 * v3;
    v22 = v4;
    do
    {
      if (*v22 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v28 = 0;
        sub_10009E84C(a1, v22, &v28);
        v23 = v28;
        *v28 = *v22;
        *(v23 + 4) = *(v22 + 16);
        ++*(a1 + 8);
      }

      v22 += 24;
      v21 -= 24;
    }

    while (v21);
  }

  llvm::deallocate_buffer(v4, (8 * v20), 8uLL);
}

uint64_t *sub_10009ECC4@<X0>(uint64_t *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 4);
  if (!v4)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v5 = *result;
  v6 = v4 - 1;
  v7 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
  v8 = (*result + 24 * v7);
  v9 = *v8;
  if (*a2 != *v8)
  {
    v13 = 0;
    v14 = 1;
    while (v9 != -4096)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v9 == -8192;
      }

      if (v15)
      {
        v13 = v8;
      }

      v16 = v7 + v14++;
      v7 = v16 & v6;
      v8 = (v5 + 24 * (v16 & v6));
      v9 = *v8;
      if (*a2 == *v8)
      {
        goto LABEL_3;
      }
    }

    if (v13)
    {
      v8 = v13;
    }

LABEL_5:
    v19 = v8;
    v11 = *(result + 2);
    if (4 * v11 + 4 >= 3 * v4)
    {
      v4 *= 2;
    }

    else if (v4 + ~v11 - *(result + 3) > v4 >> 3)
    {
      *(result + 2) = v11 + 1;
      if (*v8 == -4096)
      {
LABEL_9:
        v12 = *a2;
        v8[2] = a2[2];
        *v8 = v12;
        v5 = *result;
        v4 = *(result + 4);
        v10 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 3);
      goto LABEL_9;
    }

    v17 = result;
    v18 = a3;
    sub_10009EE48(result, v4);
    sub_10005FBDC(v17, a2, &v19);
    result = v17;
    a3 = v18;
    v8 = v19;
    ++*(v17 + 2);
    if (*v8 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v10 = 0;
LABEL_10:
  *a3 = v8;
  *(a3 + 8) = v5 + 24 * v4;
  *(a3 + 16) = v10;
  return result;
}

void sub_10009EE48(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  buffer = llvm::allocate_buffer((24 * v8), 8uLL);
  *a1 = buffer;
  if (!v4)
  {
    *(a1 + 8) = 0;
    v13 = *(a1 + 16);
    if (!v13)
    {
      return;
    }

    v14 = 24 * v13 - 24;
    if (v14 >= 0x48)
    {
      v22 = v14 / 0x18 + 1;
      v15 = &buffer->i64[3 * (v22 & 0x1FFFFFFFFFFFFFFCLL)];
      v23 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      v24 = buffer;
      v25 = v22 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        *v24 = v23;
        v24[1] = xmmword_1002B0DA0;
        v24[4] = xmmword_1002B0DA0;
        v24[5] = xmmword_1002B0D90;
        v24[2] = xmmword_1002B0D90;
        v24[3] = v23;
        v24 += 6;
        v25 -= 4;
      }

      while (v25);
      if (v22 == (v22 & 0x1FFFFFFFFFFFFFFCLL))
      {
        return;
      }
    }

    else
    {
      v15 = buffer;
    }

    v26 = &buffer->i64[3 * v13];
    do
    {
      *v15 = -4096;
      v15[1] = -4096;
      v15[2] = 0;
      v15 += 3;
    }

    while (v15 != v26);
    return;
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 24 * v10 - 24;
    if (v11 >= 0x48)
    {
      v16 = v11 / 0x18 + 1;
      v12 = &buffer->i64[3 * (v16 & 0x1FFFFFFFFFFFFFFCLL)];
      v17 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      v18 = buffer;
      v19 = v16 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        *v18 = v17;
        v18[1] = xmmword_1002B0DA0;
        v18[4] = xmmword_1002B0DA0;
        v18[5] = xmmword_1002B0D90;
        v18[2] = xmmword_1002B0D90;
        v18[3] = v17;
        v18 += 6;
        v19 -= 4;
      }

      while (v19);
      if (v16 == (v16 & 0x1FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_16;
      }
    }

    else
    {
      v12 = buffer;
    }

    v20 = &buffer->i64[3 * v10];
    do
    {
      *v12 = -4096;
      v12[1] = -4096;
      v12[2] = 0;
      v12 += 3;
    }

    while (v12 != v20);
  }

LABEL_16:
  if (v3)
  {
    v21 = v4;
    do
    {
      v29 = *v21;
      if ((*v21 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v30 = *(a1 + 16) - 1;
        v31 = v30 & ((v29 >> 4) ^ (v29 >> 9));
        v27 = (*a1 + 24 * v31);
        v32 = *v27;
        if (v29 != *v27)
        {
          v33 = 0;
          v34 = 1;
          while (v32 != -4096)
          {
            if (v33)
            {
              v35 = 0;
            }

            else
            {
              v35 = v32 == -8192;
            }

            if (v35)
            {
              v33 = v27;
            }

            v36 = v31 + v34++;
            v31 = v36 & v30;
            v27 = (*a1 + 24 * (v36 & v30));
            v32 = *v27;
            if (v29 == *v27)
            {
              goto LABEL_26;
            }
          }

          if (v33)
          {
            v27 = v33;
          }
        }

LABEL_26:
        v28 = *v21;
        v27[2] = *(v21 + 2);
        *v27 = v28;
        ++*(a1 + 8);
      }

      v21 = (v21 + 24);
    }

    while (v21 != (v4 + 24 * v3));
  }

  llvm::deallocate_buffer(v4, (24 * v3), 8uLL);
}

BOOL mlir::BytecodeReader::Impl::read(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 1176);
  v7 = *(a1 + 1184);
  v8 = *(a1 + 8);
  v135 = v6;
  v136 = v7;
  v137 = v6;
  v138 = v8;
  *(a1 + 72) = a3;
  *(a1 + 80) = a4;
  *&v166 = 4;
  if (v7 > 3)
  {
    v137 = v6 + 4;
  }

  else
  {
    *&v140 = v7;
    mlir::emitError(v8, &v143);
    if (v143)
    {
      sub_1000A6DB4(&v143 + 8, "attempting to skip ", &v166, " bytes when only ", &v140, " remain");
    }

    sub_10006BAFC(&v176, &v143);
    if (v143)
    {
      mlir::InFlightDiagnostic::report(&v143);
    }

    if (v164 == 1)
    {
      if (v162 != &v164)
      {
        free(v162);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v161;
        v11 = __p;
        if (v161 != __p)
        {
          do
          {
            v10 = sub_10005BEF4(v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v161 = v9;
        operator delete(v11);
      }

      v12 = v158;
      if (v158)
      {
        v13 = v159;
        v14 = v158;
        if (v159 != v158)
        {
          do
          {
            v15 = *--v13;
            *v13 = 0;
            if (v15)
            {
              operator delete[]();
            }
          }

          while (v13 != v12);
          v14 = v158;
        }

        *&v159 = v12;
        operator delete(v14);
      }

      if (v145 != &v147)
      {
        free(v145);
      }
    }

    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v176);
    if (v176)
    {
      mlir::InFlightDiagnostic::report(&v176);
    }

    if (v187[0] == 1)
    {
      if (v186 != v187)
      {
        free(v186);
      }

      v17 = v184;
      if (v184)
      {
        v18 = v185;
        v19 = v184;
        if (v185 != v184)
        {
          do
          {
            v18 = sub_10005BEF4(v18 - 1);
          }

          while (v18 != v17);
          v19 = v184;
        }

        v185 = v17;
        operator delete(v19);
      }

      v20 = v182;
      if (v182)
      {
        v21 = v183;
        v22 = v182;
        if (v183 != v182)
        {
          do
          {
            v23 = *--v21;
            *v21 = 0;
            if (v23)
            {
              operator delete[]();
            }
          }

          while (v21 != v20);
          v22 = v182;
        }

        v183 = v20;
        operator delete(v22);
      }

      if (v178 != v181)
      {
        free(v178);
      }
    }

    if (!v16)
    {
      goto LABEL_128;
    }
  }

  if ((sub_1000A3554(&v135, (a1 + 248)) & 1) == 0)
  {
    goto LABEL_128;
  }

  *&v166 = 6;
  v24 = *(a1 + 248);
  if (v24 < 7)
  {
    if (v24 <= 1)
    {
      *(a1 + 16) = 0;
    }
  }

  else
  {
    mlir::emitError(v138, &v143);
    if (v143)
    {
      sub_1000A81FC(&v143 + 8, "bytecode version ", (a1 + 248), " is newer than the current version ", &v166);
    }

    sub_10006BAFC(&v176, &v143);
    if (v143)
    {
      mlir::InFlightDiagnostic::report(&v143);
    }

    if (v164 == 1)
    {
      if (v162 != &v164)
      {
        free(v162);
      }

      v25 = __p;
      if (__p)
      {
        v26 = v161;
        v27 = __p;
        if (v161 != __p)
        {
          do
          {
            v26 = sub_10005BEF4(v26 - 1);
          }

          while (v26 != v25);
          v27 = __p;
        }

        v161 = v25;
        operator delete(v27);
      }

      v28 = v158;
      if (v158)
      {
        v29 = v159;
        v30 = v158;
        if (v159 != v158)
        {
          do
          {
            v31 = *--v29;
            *v29 = 0;
            if (v31)
            {
              operator delete[]();
            }
          }

          while (v29 != v28);
          v30 = v158;
        }

        *&v159 = v28;
        operator delete(v30);
      }

      if (v145 != &v147)
      {
        free(v145);
      }
    }

    v32 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v176);
    if (v176)
    {
      mlir::InFlightDiagnostic::report(&v176);
    }

    if (v187[0] == 1)
    {
      if (v186 != v187)
      {
        free(v186);
      }

      v33 = v184;
      if (v184)
      {
        v34 = v185;
        v35 = v184;
        if (v185 != v184)
        {
          do
          {
            v34 = sub_10005BEF4(v34 - 1);
          }

          while (v34 != v33);
          v35 = v184;
        }

        v185 = v33;
        operator delete(v35);
      }

      v36 = v182;
      if (v182)
      {
        v37 = v183;
        v38 = v182;
        if (v183 != v182)
        {
          do
          {
            v39 = *--v37;
            *v37 = 0;
            if (v39)
            {
              operator delete[]();
            }
          }

          while (v37 != v36);
          v38 = v182;
        }

        v183 = v36;
        operator delete(v38);
      }

      if (v178 != v181)
      {
        free(v178);
      }
    }

    if (!v32)
    {
      goto LABEL_128;
    }
  }

  if (!sub_1000A0338(&v135, (a1 + 256)))
  {
LABEL_128:
    result = 0;
    goto LABEL_129;
  }

  v134 = **a1;
  DiagEngine = mlir::MLIRContext::getDiagEngine(v134);
  *&v143 = a1;
  v145 = &off_1002E05D8 + 2;
  v133 = mlir::DiagnosticEngine::registerHandler(DiagEngine, &v143);
  v41 = v145;
  if (v145 >= 8)
  {
    if ((v145 & 4) != 0)
    {
      if ((v145 & 2) != 0)
      {
        v42 = &v143;
      }

      else
      {
        v42 = v143;
      }

      (*((v145 & 0xFFFFFFFFFFFFFFF8) + 16))(v42);
    }

    if ((v41 & 2) == 0)
    {
      llvm::deallocate_buffer(v143, *(&v143 + 1), v144);
    }
  }

  LOBYTE(v143) = 0;
  LOBYTE(v144) = 0;
  LOBYTE(v145) = 0;
  v147 = 0;
  LOBYTE(v148) = 0;
  v150 = 0;
  LOBYTE(v151) = 0;
  v153 = 0;
  LOBYTE(v154) = 0;
  v156 = 0;
  LOBYTE(v157) = 0;
  LOBYTE(v158) = 0;
  LOBYTE(v159) = 0;
  LOBYTE(__p) = 0;
  LOBYTE(v161) = 0;
  LOBYTE(v162) = 0;
  LOBYTE(v163) = 0;
  v165 = 0;
  if (v137 == v135 + v136)
  {
LABEL_130:
    v60 = 0;
LABEL_131:
    sub_1000A09C4(&v140, v60);
    mlir::emitError(v138, &v176);
    if (v176)
    {
      sub_1000AFECC(&v176 + 8, "missing data for top-level section: ", &v140);
    }

    sub_10006BAFC(&v166, &v176);
    if (v176)
    {
      mlir::InFlightDiagnostic::report(&v176);
    }

    if (v187[0] == 1)
    {
      if (v186 != v187)
      {
        free(v186);
      }

      v61 = v184;
      if (v184)
      {
        v62 = v185;
        v63 = v184;
        if (v185 != v184)
        {
          do
          {
            v62 = sub_10005BEF4(v62 - 1);
          }

          while (v62 != v61);
          v63 = v184;
        }

        v185 = v61;
        operator delete(v63);
      }

      v64 = v182;
      if (v182)
      {
        v65 = v183;
        v66 = v182;
        if (v183 != v182)
        {
          do
          {
            v67 = *--v65;
            *v65 = 0;
            if (v67)
            {
              operator delete[]();
            }
          }

          while (v65 != v64);
          v66 = v182;
        }

        v183 = v64;
        operator delete(v66);
      }

      if (v178 != v181)
      {
        free(v178);
      }
    }

    v76 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v166);
    if (v166)
    {
      mlir::InFlightDiagnostic::report(&v166);
    }

    if (v175 == 1)
    {
      if (v174 != &v175)
      {
        free(v174);
      }

      v77 = v172;
      if (v172)
      {
        v78 = v173;
        v79 = v172;
        if (v173 != v172)
        {
          do
          {
            v78 = sub_10005BEF4(v78 - 1);
          }

          while (v78 != v77);
          v79 = v172;
        }

        v173 = v77;
        operator delete(v79);
      }

      v80 = v170;
      if (v170)
      {
        v81 = v171;
        v82 = v170;
        if (v171 != v170)
        {
          do
          {
            v83 = *--v81;
            *v81 = 0;
            if (v83)
            {
              operator delete[]();
            }
          }

          while (v81 != v80);
          v82 = v170;
        }

        v171 = v80;
        operator delete(v82);
      }

      if (v168 != v169)
      {
        free(v168);
      }
    }

    if (SHIBYTE(v141) < 0)
    {
      operator delete(v140);
    }

    goto LABEL_222;
  }

  do
  {
    LOBYTE(v139) = 0;
    v132 = 0uLL;
    if ((sub_1000A0684(&v135, &v139, &v132) & 1) == 0)
    {
      v68 = 0;
LABEL_221:
      v76 = v68;
      goto LABEL_222;
    }

    v43 = &v143 + 24 * v139;
    if (v43[16] == 1)
    {
      sub_1000A09C4(&v140, v139);
      mlir::emitError(v138, &v176);
      if (v176)
      {
        sub_1000AFECC(&v176 + 8, "duplicate top-level section: ", &v140);
      }

      sub_10006BAFC(&v166, &v176);
      if (v176)
      {
        mlir::InFlightDiagnostic::report(&v176);
      }

      if (v187[0] == 1)
      {
        if (v186 != v187)
        {
          free(v186);
        }

        v69 = v184;
        if (v184)
        {
          v70 = v185;
          v71 = v184;
          if (v185 != v184)
          {
            do
            {
              v70 = sub_10005BEF4(v70 - 1);
            }

            while (v70 != v69);
            v71 = v184;
          }

          v185 = v69;
          operator delete(v71);
        }

        v72 = v182;
        if (v182)
        {
          v73 = v183;
          v74 = v182;
          if (v183 != v182)
          {
            do
            {
              v75 = *--v73;
              *v73 = 0;
              if (v75)
              {
                operator delete[]();
              }
            }

            while (v73 != v72);
            v74 = v182;
          }

          v183 = v72;
          operator delete(v74);
        }

        if (v178 != v181)
        {
          free(v178);
        }
      }

      v68 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v166);
      v84 = v68;
      if (v166)
      {
        mlir::InFlightDiagnostic::report(&v166);
        v68 = v84;
      }

      if (v175 == 1)
      {
        if (v174 != &v175)
        {
          free(v174);
          v68 = v84;
        }

        v85 = v172;
        if (v172)
        {
          v86 = v173;
          v87 = v172;
          if (v173 != v172)
          {
            do
            {
              v86 = sub_10005BEF4(v86 - 1);
            }

            while (v86 != v85);
            v87 = v172;
          }

          v173 = v85;
          operator delete(v87);
          v68 = v84;
        }

        v88 = v170;
        if (v170)
        {
          v89 = v171;
          v90 = v170;
          if (v171 != v170)
          {
            do
            {
              v91 = *--v89;
              *v89 = 0;
              if (v91)
              {
                operator delete[]();
              }
            }

            while (v89 != v88);
            v90 = v170;
          }

          v171 = v88;
          operator delete(v90);
          v68 = v84;
        }

        if (v168 != v169)
        {
          free(v168);
          v68 = v84;
        }
      }

      if (SHIBYTE(v141) < 0)
      {
        operator delete(v140);
        v68 = v84;
      }

      goto LABEL_221;
    }

    *v43 = v132;
    v43[16] = 1;
  }

  while (v137 != v135 + v136);
  if ((v144 & 1) == 0)
  {
    goto LABEL_130;
  }

  if (v147 != 1)
  {
    v60 = 1;
    goto LABEL_131;
  }

  if (v150 != 1)
  {
    v60 = 2;
    goto LABEL_131;
  }

  if (v153 != 1)
  {
    v60 = 3;
    goto LABEL_131;
  }

  if (v156 != 1)
  {
    v60 = 4;
    goto LABEL_131;
  }

  v44 = v165;
  if ((v165 & 1) == 0 && *(a1 + 248) > 4)
  {
    v60 = 8;
    goto LABEL_131;
  }

  v45 = *(a1 + 8);
  v46 = v143;
  v140 = v143;
  v141 = v143;
  v142 = v45;
  *&v132 = 0;
  if ((sub_1000A3554(&v140, &v132) & 1) == 0)
  {
    goto LABEL_326;
  }

  v47 = (a1 + 536);
  v48 = v132;
  v49 = *(a1 + 544);
  if (v132 != v49)
  {
    if (v132 >= v49)
    {
      v50 = v44;
      if (v132 > *(a1 + 548))
      {
        v51 = v132;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 536, (a1 + 552), v132, 16);
        v48 = v51;
        v49 = *(a1 + 544);
      }

      v44 = v50;
      if (v48 != v49)
      {
        v52 = v48;
        bzero((*v47 + 16 * v49), 16 * (v48 - v49));
        LODWORD(v48) = v52;
      }
    }

    LODWORD(v49) = v48;
    *(a1 + 544) = v48;
    v48 = v48;
  }

  if (!v49)
  {
    v56 = *(&v46 + 1);
LABEL_228:
    if (*(&v46 + 1) - (v140 + *(&v140 + 1)) + v141 == v56)
    {
      if (!v44)
      {
        goto LABEL_322;
      }
    }

    else
    {
      mlir::emitError(v142, &v176);
      if (v176)
      {
        LODWORD(v166) = 3;
        *(&v166 + 1) = "unexpected trailing data between the offsets for strings and their data";
        v167 = 71;
        v92 = &v166;
        v93 = v178;
        if (v179 >= v180)
        {
          if (v178 <= &v166 && v178 + 24 * v179 > &v166)
          {
            v130 = &v166 - v178;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v178, v181, v179 + 1, 24);
            v93 = v178;
            v92 = (v178 + v130);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v178, v181, v179 + 1, 24);
            v92 = &v166;
            v93 = v178;
          }
        }

        v94 = &v93[24 * v179];
        v95 = *v92;
        *(v94 + 2) = *(v92 + 2);
        *v94 = v95;
        ++v179;
      }

      sub_10006BAFC(&v166, &v176);
      if (v176)
      {
        mlir::InFlightDiagnostic::report(&v176);
      }

      if (v187[0] == 1)
      {
        if (v186 != v187)
        {
          free(v186);
        }

        v96 = v184;
        if (v184)
        {
          v97 = v185;
          v98 = v184;
          if (v185 != v184)
          {
            do
            {
              v97 = sub_10005BEF4(v97 - 1);
            }

            while (v97 != v96);
            v98 = v184;
          }

          v185 = v96;
          operator delete(v98);
        }

        v99 = v182;
        if (v182)
        {
          v100 = v183;
          v101 = v182;
          if (v183 != v182)
          {
            do
            {
              v102 = *--v100;
              *v100 = 0;
              if (v102)
              {
                operator delete[]();
              }
            }

            while (v100 != v99);
            v101 = v182;
          }

          v183 = v99;
          operator delete(v101);
        }

        if (v178 != v181)
        {
          free(v178);
        }
      }

      v114 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v166);
      if (v166)
      {
        mlir::InFlightDiagnostic::report(&v166);
      }

      if (v175 == 1)
      {
        if (v174 != &v175)
        {
          free(v174);
        }

        v115 = v172;
        if (v172)
        {
          v116 = v173;
          v117 = v172;
          if (v173 != v172)
          {
            do
            {
              v116 = sub_10005BEF4(v116 - 1);
            }

            while (v116 != v115);
            v117 = v172;
          }

          v173 = v115;
          operator delete(v117);
        }

        v118 = v170;
        if (v170)
        {
          v119 = v171;
          v120 = v170;
          if (v171 != v170)
          {
            do
            {
              v121 = *--v119;
              *v119 = 0;
              if (v121)
              {
                operator delete[]();
              }
            }

            while (v119 != v118);
            v120 = v170;
          }

          v171 = v118;
          operator delete(v120);
        }

        if (v168 != v169)
        {
          free(v168);
        }
      }

      if (!v114)
      {
        goto LABEL_326;
      }

LABEL_320:
      if ((v165 & 1) == 0)
      {
LABEL_322:
        if (mlir::BytecodeReader::Impl::parseDialectSection(a1, v145, v146))
        {
          v176 = v157;
          v177 = v158;
          v166 = v159;
          v167 = __p;
          if (sub_1000A15B0(a1, &v135, &v176, &v166) && sub_1000A285C(a1 + 88, *(a1 + 272), *(a1 + 280), v148, v149, v151, v152))
          {
            mlir::BytecodeReader::Impl::parseIRSection(a1, v154, v155, a2);
          }
        }

        goto LABEL_326;
      }
    }

    if (!sub_1000A0BF8((a1 + 600), *(a1 + 8), v163, v164))
    {
      goto LABEL_326;
    }

    goto LABEL_322;
  }

  v53 = 16 * v48;
  v54 = (v53 + *v47 - 8);
  v55 = -v53;
  v56 = *(&v46 + 1);
  while (1)
  {
    v139 = 0;
    if ((sub_1000A3554(&v140, &v139) & 1) == 0)
    {
      break;
    }

    v57 = v56 >= v139;
    v56 -= v139;
    if (!v57)
    {
      mlir::emitError(v142, &v176);
      if (v176)
      {
        LODWORD(v166) = 3;
        *(&v166 + 1) = "string size exceeds the available data size";
        v167 = 43;
        v103 = &v166;
        v104 = v178;
        if (v179 >= v180)
        {
          if (v178 <= &v166 && v178 + 24 * v179 > &v166)
          {
            v131 = &v166 - v178;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v178, v181, v179 + 1, 24);
            v104 = v178;
            v103 = (v178 + v131);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v178, v181, v179 + 1, 24);
            v103 = &v166;
            v104 = v178;
          }
        }

        v105 = &v104[24 * v179];
        v106 = *v103;
        *(v105 + 2) = *(v103 + 2);
        *v105 = v106;
        ++v179;
      }

      sub_10006BAFC(&v166, &v176);
      if (v176)
      {
        mlir::InFlightDiagnostic::report(&v176);
      }

      if (v187[0] == 1)
      {
        if (v186 != v187)
        {
          free(v186);
        }

        v107 = v184;
        if (v184)
        {
          v108 = v185;
          v109 = v184;
          if (v185 != v184)
          {
            do
            {
              v108 = sub_10005BEF4(v108 - 1);
            }

            while (v108 != v107);
            v109 = v184;
          }

          v185 = v107;
          operator delete(v109);
        }

        v110 = v182;
        if (v182)
        {
          v111 = v183;
          v112 = v182;
          if (v183 != v182)
          {
            do
            {
              v113 = *--v111;
              *v111 = 0;
              if (v113)
              {
                operator delete[]();
              }
            }

            while (v111 != v110);
            v112 = v182;
          }

          v183 = v110;
          operator delete(v112);
        }

        if (v178 != v181)
        {
          free(v178);
        }
      }

      v122 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v166);
      if (v166)
      {
        mlir::InFlightDiagnostic::report(&v166);
      }

      if (v175 == 1)
      {
        if (v174 != &v175)
        {
          free(v174);
        }

        v123 = v172;
        if (v172)
        {
          v124 = v173;
          v125 = v172;
          if (v173 != v172)
          {
            do
            {
              v124 = sub_10005BEF4(v124 - 1);
            }

            while (v124 != v123);
            v125 = v172;
          }

          v173 = v123;
          operator delete(v125);
        }

        v126 = v170;
        if (v170)
        {
          v127 = v171;
          v128 = v170;
          if (v171 != v170)
          {
            do
            {
              v129 = *--v127;
              *v127 = 0;
              if (v129)
              {
                operator delete[]();
              }
            }

            while (v127 != v126);
            v128 = v170;
          }

          v171 = v126;
          operator delete(v128);
        }

        if (v168 != v169)
        {
          free(v168);
        }
      }

      if (!v122)
      {
        break;
      }

      goto LABEL_320;
    }

    v58 = v139 - 1;
    *(v54 - 1) = v46 + v56;
    *v54 = v58;
    v54 -= 2;
    v55 += 16;
    if (!v55)
    {
      goto LABEL_228;
    }
  }

LABEL_326:
  v76 = 0;
LABEL_222:
  mlir::ScopedDiagnosticHandler::~ScopedDiagnosticHandler(&v133);
  result = v76;
LABEL_129:
  *(a1 + 72) = 0;
  return result;
}

BOOL sub_1000A0338(void *a1, void *a2)
{
  v4 = a1[2];
  v5 = memchr(v4, 0, *a1 + a1[1] - v4);
  if (v5)
  {
    *a2 = v4;
    a2[1] = v5 - v4;
    a1[2] = v5 + 1;
    return 1;
  }

  else
  {
    mlir::emitError(a1[3], v36);
    if (v36[0])
    {
      LODWORD(v27[0]) = 3;
      v27[1] = "malformed null-terminated string, no null character found";
      v27[2] = 57;
      v7 = v27;
      v8 = v37;
      if (v38 >= v39)
      {
        if (v37 <= v27 && v37 + 24 * v38 > v27)
        {
          v26 = v27 - v37;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
          v8 = v37;
          v7 = v37 + v26;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
          v7 = v27;
          v8 = v37;
        }
      }

      v9 = &v8[24 * v38];
      v10 = *v7;
      *(v9 + 2) = *(v7 + 2);
      *v9 = v10;
      ++v38;
    }

    sub_10006BAFC(v27, v36);
    if (v36[0])
    {
      mlir::InFlightDiagnostic::report(v36);
    }

    if (v46 == 1)
    {
      if (v45 != &v46)
      {
        free(v45);
      }

      v11 = __p;
      if (__p)
      {
        v12 = v44;
        v13 = __p;
        if (v44 != __p)
        {
          do
          {
            v12 = sub_10005BEF4(v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v44 = v11;
        operator delete(v13);
      }

      v14 = v41;
      if (v41)
      {
        v15 = v42;
        v16 = v41;
        if (v42 != v41)
        {
          do
          {
            v17 = *--v15;
            *v15 = 0;
            if (v17)
            {
              operator delete[]();
            }
          }

          while (v15 != v14);
          v16 = v41;
        }

        v42 = v14;
        operator delete(v16);
      }

      if (v37 != v40)
      {
        free(v37);
      }
    }

    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
    }

    if (v35 == 1)
    {
      if (v34 != &v35)
      {
        free(v34);
      }

      v18 = v32;
      if (v32)
      {
        v19 = v33;
        v20 = v32;
        if (v33 != v32)
        {
          do
          {
            v19 = sub_10005BEF4(v19 - 1);
          }

          while (v19 != v18);
          v20 = v32;
        }

        v33 = v18;
        operator delete(v20);
      }

      v21 = v30;
      if (v30)
      {
        v22 = v31;
        v23 = v30;
        if (v31 != v30)
        {
          do
          {
            v24 = *--v22;
            *v22 = 0;
            if (v24)
            {
              operator delete[]();
            }
          }

          while (v22 != v21);
          v23 = v30;
        }

        v31 = v21;
        operator delete(v23);
      }

      if (v28 != &v29)
      {
        free(v28);
      }
    }
  }

  return v6;
}

uint64_t sub_1000A0684(void *a1, _BYTE *a2, void *a3)
{
  v27 = 0;
  if (!sub_1000A7258(a1, &v27))
  {
    return 0;
  }

  v26 = 0;
  if ((sub_1000A3554(a1, &v26) & 1) == 0)
  {
    return 0;
  }

  v6 = v27;
  v7 = v27 & 0x7F;
  *a2 = v27 & 0x7F;
  if (v7 >= 9)
  {
    v25 = v7;
    mlir::emitError(a1[3], &v37);
    if (v37)
    {
      sub_1000A7CBC(&v38, "invalid section ID: ", &v25);
    }

    sub_10006BAFC(v28, &v37);
    if (v37)
    {
      mlir::InFlightDiagnostic::report(&v37);
    }

    if (v46 == 1)
    {
      if (v45 != &v46)
      {
        free(v45);
      }

      v8 = v43;
      if (v43)
      {
        v9 = v44;
        v10 = v43;
        if (v44 != v43)
        {
          do
          {
            v9 = sub_10005BEF4(v9 - 1);
          }

          while (v9 != v8);
          v10 = v43;
        }

        v44 = v8;
        operator delete(v10);
      }

      v11 = v41;
      if (v41)
      {
        v12 = v42;
        v13 = v41;
        if (v42 != v41)
        {
          do
          {
            v14 = *--v12;
            *v12 = 0;
            if (v14)
            {
              operator delete[]();
            }
          }

          while (v12 != v11);
          v13 = v41;
        }

        v42 = v11;
        operator delete(v13);
      }

      if (v39 != &v40)
      {
        free(v39);
      }
    }

    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
    v17 = result;
    if (v28[0])
    {
      mlir::InFlightDiagnostic::report(v28);
      result = v17;
    }

    if (v36 == 1)
    {
      if (v35 != &v36)
      {
        free(v35);
        result = v17;
      }

      v18 = v33;
      if (v33)
      {
        v19 = v34;
        v20 = v33;
        if (v34 != v33)
        {
          do
          {
            v19 = sub_10005BEF4(v19 - 1);
          }

          while (v19 != v18);
          v20 = v33;
        }

        v34 = v18;
        operator delete(v20);
        result = v17;
      }

      v21 = v31;
      if (v31)
      {
        v22 = v32;
        v23 = v31;
        if (v32 != v31)
        {
          do
          {
            v24 = *--v22;
            *v22 = 0;
            if (v24)
            {
              operator delete[]();
            }
          }

          while (v22 != v21);
          v23 = v31;
        }

        v32 = v21;
        operator delete(v23);
        result = v17;
      }

      if (v29 != &v30)
      {
        free(v29);
        return v17;
      }
    }

    return result;
  }

  if (v6 < 0)
  {
    v37 = 0;
    if ((sub_1000A3554(a1, &v37) & 1) == 0 || !sub_1000A73E4(a1, v37))
    {
      return 0;
    }
  }

  v15 = v26;

  return sub_1000A7B24(a1, v15, a3);
}

void sub_1000A09C4(char *a1, int a2)
{
  if (a2 <= 3)
  {
    if (a2 <= 1)
    {
      if (!a2)
      {
        a1[23] = 10;
        strcpy(a1, "String (0)");
        return;
      }

      if (a2 == 1)
      {
        a1[23] = 11;
        strcpy(a1, "Dialect (1)");
        return;
      }

LABEL_20:
      v8 = v2;
      v9 = v3;
      v4[0] = "Unknown (";
      v4[2] = a2;
      v5 = 2307;
      v6[0] = v4;
      v6[2] = ")";
      v7 = 770;
      llvm::Twine::str(a1, v6);
      return;
    }

    if (a2 == 2)
    {
      a1[23] = 12;
      strcpy(a1, "AttrType (2)");
    }

    else
    {
      a1[23] = 18;
      strcpy(a1, "AttrTypeOffset (3)");
    }
  }

  else
  {
    if (a2 > 5)
    {
      switch(a2)
      {
        case 6:
          a1[23] = 18;
          strcpy(a1, "ResourceOffset (6)");
          return;
        case 7:
          a1[23] = 19;
          strcpy(a1, "DialectVersions (7)");
          return;
        case 8:
          a1[23] = 14;
          strcpy(a1, "Properties (8)");
          return;
      }

      goto LABEL_20;
    }

    if (a2 == 4)
    {
      a1[23] = 6;
      strcpy(a1, "IR (4)");
    }

    else
    {
      a1[23] = 12;
      strcpy(a1, "Resource (5)");
    }
  }
}

BOOL sub_1000A0BF8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 1;
  }

  v27 = a3;
  v28 = a4;
  v29 = a3;
  v30 = a2;
  v26 = 0;
  if ((sub_1000A3554(&v27, &v26) & 1) == 0 || !sub_1000A7B24(&v27, (v27 + v28 - v29), a1))
  {
    return 0;
  }

  v6 = *a1;
  v7 = a1[1];
  v22 = v6;
  v23 = v7;
  v24 = v6;
  v25 = a2;
  v8 = v26;
  if (v26 > *(a1 + 7))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((a1 + 2), a1 + 4, v26, 8);
    goto LABEL_7;
  }

  if (v26)
  {
    while (1)
    {
LABEL_7:
      v9 = a1[1];
      v10 = v22;
      v11 = v23;
      v12 = v24;
      v13 = *(a1 + 6);
      if (v13 >= *(a1 + 7))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod((a1 + 2), a1 + 4, v13 + 1, 8);
        v13 = *(a1 + 6);
      }

      *(a1[2] + 8 * v13) = v9 - (v10 + v11) + v12;
      ++*(a1 + 6);
      v31[0] = 0;
      if ((sub_1000A3554(&v22, v31) & 1) == 0 || !sub_1000A7B24(&v22, v31[0], &v32))
      {
        return 0;
      }

      if (!--v8)
      {
        if (v24 == v22 + v23)
        {
          return 1;
        }

        goto LABEL_15;
      }
    }
  }

  if (v6 == v6 + v7)
  {
    return 1;
  }

LABEL_15:
  mlir::emitError(v25, &v32);
  if (v32)
  {
    LODWORD(v31[0]) = 3;
    v31[1] = "Broken properties section: didn't exhaust the offsets table";
    v31[2] = 59;
    v15 = v31;
    v16 = v34;
    if (v35 >= v36)
    {
      if (v34 <= v31 && v34 + 24 * v35 > v31)
      {
        v21 = v31 - v34;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
        v16 = v34;
        v15 = &v21[v34];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
        v15 = v31;
        v16 = v34;
      }
    }

    v17 = v16 + 24 * v35;
    v18 = *v15;
    *(v17 + 16) = v15[2];
    *v17 = v18;
    ++v35;
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v32);
  if (v32)
  {
    v19 = result;
    mlir::InFlightDiagnostic::report(&v32);
    result = v19;
  }

  if (v37[160] == 1)
  {
    v20 = result;
    sub_10005BE10(&v33);
    return v20;
  }

  return result;
}

uint64_t mlir::BytecodeReader::Impl::parseDialectSection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v40 = a2;
  v41 = a3;
  v42 = a2;
  v43 = v4;
  v39 = 0;
  if ((sub_1000A3554(&v40, &v39) & 1) == 0)
  {
    return 0;
  }

  v5 = v39;
  v6 = *(a1 + 280);
  if (v39 != v6)
  {
    if (v39 < v6)
    {
      v7 = 8 * v6;
      v8 = 8 * v39 - v7;
      v9 = (v7 + *(a1 + 272) - 8);
      do
      {
        v10 = *v9;
        *v9 = 0;
        if (v10)
        {
          v11 = *(v10 + 56);
          *(v10 + 56) = 0;
          if (v11)
          {
            (*(*v11 + 8))(v11);
          }

          operator delete();
        }

        --v9;
        v8 += 8;
      }

      while (v8);
      goto LABEL_34;
    }

    if (v39 <= *(a1 + 284))
    {
      v12 = *(a1 + 272);
      v19 = v39 - v6;
      if (v39 == v6)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v38[0] = 0;
    v12 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1 + 272, (a1 + 288), v39, 8, v38);
    v13 = *(a1 + 272);
    v14 = *(a1 + 280);
    if (!v14)
    {
LABEL_30:
      v32 = v38[0];
      if (v13 != (a1 + 288))
      {
        free(v13);
      }

      *(a1 + 272) = v12;
      *(a1 + 284) = v32;
      v6 = *(a1 + 280);
      v19 = v5 - v6;
      if (v5 == v6)
      {
        goto LABEL_34;
      }

LABEL_33:
      bzero(&v12[8 * v6], 8 * v19);
LABEL_34:
      *(a1 + 280) = v5;
      goto LABEL_35;
    }

    v15 = (v14 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v16 = 8 * v14;
    if (v15 >= 0xB)
    {
      if (v13 >= &v12[v16] || (v17 = v12, v18 = *(a1 + 272), v12 >= &v13[v16]))
      {
        v20 = v15 + 1;
        v21 = 8 * (v20 & 0x3FFFFFFFFFFFFFFCLL);
        v17 = &v12[v21];
        v18 = &v13[v21];
        v22 = (v13 + 16);
        v23 = v12 + 16;
        v24 = v20 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v25 = *(v22 - 1);
          v26 = *v22;
          *(v22 - 1) = 0uLL;
          *v22 = 0uLL;
          *(v23 - 1) = v25;
          *v23 = v26;
          v22 += 2;
          v23 += 2;
          v24 -= 4;
        }

        while (v24);
        if (v20 == (v20 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_23:
          v29 = v13 - 8;
          do
          {
            v30 = *&v29[v16];
            *&v29[v16] = 0;
            if (v30)
            {
              v31 = *(v30 + 56);
              *(v30 + 56) = 0;
              if (v31)
              {
                (*(*v31 + 8))(v31);
              }

              operator delete();
            }

            v16 -= 8;
          }

          while (v16);
          v13 = *(a1 + 272);
          goto LABEL_30;
        }
      }
    }

    else
    {
      v17 = v12;
      v18 = *(a1 + 272);
    }

    v27 = &v13[8 * v14];
    do
    {
      v28 = *v18;
      *v18 = 0;
      v18 += 8;
      *v17 = v28;
      v17 += 8;
    }

    while (v18 != v27);
    goto LABEL_23;
  }

LABEL_35:
  if (v5)
  {
    operator new();
  }

  v37[0] = a1;
  v37[1] = &v40;
  if (*(a1 + 248) >= 4uLL)
  {
    v38[0] = 0;
    if ((sub_1000A3554(&v40, v38) & 1) == 0)
    {
      return 0;
    }

    if (v38[0] > *(a1 + 372))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 360, (a1 + 376), v38[0], 48);
    }
  }

  if (v42 == v40 + v41)
  {
    return 1;
  }

  while (1)
  {
    v33 = *(a1 + 280);
    v38[0] = *(a1 + 272);
    v38[1] = v33;
    v45 = 0;
    if (!sub_1000A8C10(&v40, v38, &v45, "dialect", 7))
    {
      return 0;
    }

    v44 = 0;
    if ((sub_1000A3554(&v40, &v44) & 1) == 0)
    {
      return 0;
    }

    v34 = v44;
    if (v44)
    {
      v35 = v45;
      while ((sub_1000AFFD4(v37, *v35) & 1) != 0)
      {
        if (!--v34)
        {
          goto LABEL_43;
        }
      }

      return 0;
    }

LABEL_43:
    if (v42 == v40 + v41)
    {
      return 1;
    }
  }
}

BOOL sub_1000A15B0(uint64_t *a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  if (*(a3 + 16) == *(a4 + 16))
  {
    if (*(a3 + 16))
    {
      v132[0] = off_1002D5F88;
      v132[1] = a1 + 11;
      v14 = a1 + 53;
      v132[2] = a1 + 67;
      v132[3] = a1 + 53;
      v132[4] = a1 + 42;
      v132[5] = a2;
      v132[6] = a1 + 31;
      v16 = *a1;
      v15 = a1[1];
      v17 = a1[34];
      v18 = a1[151];
      v145[1] = *(a1 + 70);
      v146 = v15;
      v144 = v15;
      v145[0] = v17;
      v142 = *a3;
      v143 = v142;
      v139 = *a4;
      v140 = v139;
      v141 = v15;
      v138 = 0;
      if ((sub_1000A3554(&v139, &v138) & 1) == 0)
      {
        return 0;
      }

      v131 = v18;
      if (v138)
      {
        for (i = 0; i < v138; ++i)
        {
          v156 = 0uLL;
          *&v161 = 0;
          if ((sub_1000A3554(&v139, &v161) & 1) == 0 || !sub_1000A87D4(v141, a1[67], *(a1 + 136), v161, &v156, "string", 6))
          {
            return 0;
          }

          v20 = v156;
          v161 = v156;
          v21 = sub_100087CD0((v16 + 16), &v161);
          if (!v21 || v21 == *(v16 + 16) + 24 * *(v16 + 32))
          {
            v24 = *(v16 + 40);
            if (v24)
            {
              ParserFor = mlir::FallbackAsmResourceMap::getParserFor(v24, v161, *(&v161 + 1));
              v23 = 0;
              goto LABEL_59;
            }
          }

          else
          {
            ParserFor = *(v21 + 16);
            if (ParserFor)
            {
              v23 = 0;
              goto LABEL_59;
            }
          }

          mlir::emitWarning(v146, &v161);
          if (v161)
          {
            LODWORD(v147) = 3;
            *(&v147 + 1) = "ignoring unknown external resources for '";
            v148 = 41;
            v25 = v162;
            if (v163 >= v164)
            {
              if (v162 <= &v147 && v162 + 24 * v163 > &v147)
              {
                v60 = &v147 - v162;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v162, v165, v163 + 1, 24);
                v25 = v162;
                v26 = v162 + v60;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v162, v165, v163 + 1, 24);
                v26 = &v147;
                v25 = v162;
              }
            }

            else
            {
              v26 = &v147;
            }

            v27 = &v25[24 * v163];
            v28 = *v26;
            *(v27 + 2) = *(v26 + 2);
            *v27 = v28;
            ++v163;
            if (v161)
            {
              LOWORD(v150) = 261;
              v147 = v20;
              mlir::Diagnostic::operator<<(&v161 + 8, &v147);
              if (v161)
              {
                LODWORD(v147) = 3;
                *(&v147 + 1) = "'";
                v148 = 1;
                v29 = v162;
                if (v163 >= v164)
                {
                  if (v162 <= &v147 && v162 + 24 * v163 > &v147)
                  {
                    v61 = &v147 - v162;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v162, v165, v163 + 1, 24);
                    v29 = v162;
                    v30 = v162 + v61;
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v162, v165, v163 + 1, 24);
                    v30 = &v147;
                    v29 = v162;
                  }
                }

                else
                {
                  v30 = &v147;
                }

                v31 = &v29[24 * v163];
                v32 = *v30;
                *(v31 + 2) = *(v30 + 2);
                *v31 = v32;
                ++v163;
                if (v161)
                {
                  mlir::InFlightDiagnostic::report(&v161);
                }
              }
            }
          }

          if (v171 == 1)
          {
            if (v170 != &v171)
            {
              free(v170);
            }

            v33 = __p;
            if (__p)
            {
              v34 = v169;
              v35 = __p;
              if (v169 != __p)
              {
                do
                {
                  v34 = sub_10005BEF4(v34 - 1);
                }

                while (v34 != v33);
                v35 = __p;
              }

              v169 = v33;
              operator delete(v35);
            }

            v36 = v166;
            if (v166)
            {
              v37 = v167;
              v38 = v166;
              if (v167 != v166)
              {
                do
                {
                  v39 = *--v37;
                  *v37 = 0;
                  if (v39)
                  {
                    operator delete[]();
                  }
                }

                while (v37 != v36);
                v38 = v166;
              }

              v167 = v36;
              operator delete(v38);
            }

            if (v162 != v165)
            {
              free(v162);
            }
          }

          ParserFor = 0;
          v23 = 1;
LABEL_59:
          v40 = v146;
          v160 = 0;
          if ((sub_1000A3554(&v139, &v160) & 1) == 0)
          {
            return 0;
          }

          v41 = v160;
          if (v160)
          {
            if (v23)
            {
              while (1)
              {
                v133 = 0uLL;
                v157 = 0;
                *&v161 = 0;
                if ((sub_1000A3554(&v139, &v161) & 1) == 0 || !sub_1000A87D4(v141, a1[67], *(a1 + 136), v161, &v133, "string", 6) || (sub_1000A3554(&v139, &v157) & 1) == 0 || !sub_1000AB85C(&v139, &v137) || !sub_1000A7B24(&v142, v157, &v159))
                {
                  break;
                }

                if (!--v41)
                {
                  goto LABEL_85;
                }
              }
            }

            else
            {
              while (1)
              {
                v133 = 0uLL;
                LODWORD(v137) = 0;
                v157 = 0;
                v159 = 0uLL;
                *&v161 = 0;
                if ((sub_1000A3554(&v139, &v161) & 1) == 0 || !sub_1000A87D4(v141, a1[67], *(a1 + 136), v161, &v133, "string", 6) || (sub_1000A3554(&v139, &v157) & 1) == 0 || !sub_1000AB85C(&v139, &v137) || !sub_1000A7B24(&v142, v157, &v159))
                {
                  break;
                }

                v43 = *(&v133 + 1);
                v42 = v133;
                v153 = v159;
                v154 = v159;
                v155 = v40;
                v44 = llvm::StringMapImpl::hash(v133, *(&v133 + 1));
                Key = llvm::StringMapImpl::FindKey(a1 + 61, v42, v43, v44);
                if (Key != -1 && Key != *(a1 + 124))
                {
                  v46 = *(a1[61] + 8 * Key);
                  v49 = *(v46 + 8);
                  v47 = v46 + 8;
                  v48 = v49;
                  v50 = *(v47 + 23);
                  if (v50 >= 0)
                  {
                    v42 = v47;
                  }

                  else
                  {
                    v42 = v48;
                  }

                  v51 = *(v47 + 8);
                  if (v50 >= 0)
                  {
                    v43 = v50;
                  }

                  else
                  {
                    v43 = v51;
                  }
                }

                *&v133 = v42;
                *(&v133 + 1) = v43;
                *&v147 = &off_1002D6020;
                *(&v147 + 1) = v42;
                v148 = v43;
                v149 = v137;
                v150 = &v153;
                v151 = a1 + 67;
                v152 = v131;
                if (((*(*ParserFor + 16))(ParserFor, &v147) & 1) == 0)
                {
LABEL_188:
                  mlir::AsmParsedResourceEntry::~AsmParsedResourceEntry(&v147);
                  return 0;
                }

                if (v154 != v153 + *(&v153 + 1))
                {
                  sub_1000AB9E8(&v161, v155, &v133);
                  v52 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v161);
                  if (v161)
                  {
                    mlir::InFlightDiagnostic::report(&v161);
                  }

                  if (v171)
                  {
                    if (v170 != &v171)
                    {
                      free(v170);
                    }

                    v53 = __p;
                    if (__p)
                    {
                      v54 = v169;
                      v55 = __p;
                      if (v169 != __p)
                      {
                        do
                        {
                          v54 = sub_10005BEF4(v54 - 1);
                        }

                        while (v54 != v53);
                        v55 = __p;
                      }

                      v169 = v53;
                      operator delete(v55);
                    }

                    v56 = v166;
                    if (v166)
                    {
                      v57 = v167;
                      v58 = v166;
                      if (v167 != v166)
                      {
                        do
                        {
                          v59 = *--v57;
                          *v57 = 0;
                          if (v59)
                          {
                            operator delete[]();
                          }
                        }

                        while (v57 != v56);
                        v58 = v166;
                      }

                      v167 = v56;
                      operator delete(v58);
                    }

                    if (v162 != v165)
                    {
                      free(v162);
                    }
                  }

                  mlir::AsmParsedResourceEntry::~AsmParsedResourceEntry(&v147);
                  if (v52)
                  {
                    goto LABEL_85;
                  }

                  return 0;
                }

                mlir::AsmParsedResourceEntry::~AsmParsedResourceEntry(&v147);
                if (!--v41)
                {
                  goto LABEL_85;
                }
              }
            }

            return 0;
          }

LABEL_85:
          v14 = a1 + 53;
        }
      }

      Context = mlir::Attribute::getContext(&v146);
      if (v140 != v139 + *(&v139 + 1))
      {
        v69 = Context;
        v70 = "dialect";
        while (1)
        {
          v137 = 0;
          if (!sub_1000A8C10(&v139, v145, &v137, v70, 7) || (sub_1000A98B8(*v137, v132, v69) & 1) == 0)
          {
            return 0;
          }

          v71 = **v137;
          if (!v71)
          {
            mlir::emitError(v144, &v161);
            if (v161)
            {
              LODWORD(v147) = 3;
              *(&v147 + 1) = "dialect '";
              v148 = 9;
              v94 = &v147;
              v95 = v162;
              if (v163 >= v164)
              {
                if (v162 <= &v147 && v162 + 24 * v163 > &v147)
                {
                  v127 = &v147 - v162;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v162, v165, v163 + 1, 24);
                  v95 = v162;
                  v94 = v162 + v127;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v162, v165, v163 + 1, 24);
                  v94 = &v147;
                  v95 = v162;
                }
              }

              v96 = &v95[24 * v163];
              v97 = *v94;
              *(v96 + 2) = *(v94 + 2);
              *v96 = v97;
              ++v163;
              if (v161)
              {
                v98 = *v137;
                LOWORD(v150) = 261;
                v100 = *(v98 + 24);
                v99 = *(v98 + 32);
                *&v147 = v100;
                *(&v147 + 1) = v99;
                mlir::Diagnostic::operator<<(&v161 + 8, &v147);
                if (v161)
                {
                  LODWORD(v147) = 3;
                  *(&v147 + 1) = "' is unknown";
                  v148 = 12;
                  v101 = &v147;
                  v102 = v162;
                  if (v163 >= v164)
                  {
                    if (v162 <= &v147 && v162 + 24 * v163 > &v147)
                    {
                      v129 = &v147 - v162;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v162, v165, v163 + 1, 24);
                      v102 = v162;
                      v101 = v162 + v129;
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v162, v165, v163 + 1, 24);
                      v101 = &v147;
                      v102 = v162;
                    }
                  }

                  v103 = &v102[24 * v163];
                  v104 = *v101;
                  *(v103 + 2) = *(v101 + 2);
                  *v103 = v104;
                  ++v163;
                }
              }
            }

            v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v161);
            if (v161)
            {
              mlir::InFlightDiagnostic::report(&v161);
            }

            if (v171 != 1)
            {
              return v6;
            }

            if (v170 != &v171)
            {
              free(v170);
            }

            v105 = __p;
            if (__p)
            {
              v106 = v169;
              v107 = __p;
              if (v169 != __p)
              {
                do
                {
                  v106 = sub_10005BEF4(v106 - 1);
                }

                while (v106 != v105);
                v107 = __p;
              }

              v169 = v105;
              operator delete(v107);
            }

            v10 = v166;
            if (!v166)
            {
              goto LABEL_236;
            }

            v108 = v167;
            v12 = v166;
            if (v167 == v166)
            {
              goto LABEL_235;
            }

            do
            {
              v109 = *--v108;
              *v108 = 0;
              if (v109)
              {
                operator delete[]();
              }
            }

            while (v108 != v10);
            goto LABEL_234;
          }

          if (!sub_10006E654(**v137))
          {
            v136 = 0;
            mlir::emitError(v144, &v161);
            if (v161)
            {
              LODWORD(v147) = 3;
              *(&v147 + 1) = "unexpected resources for dialect '";
              v148 = 34;
              v110 = &v147;
              v111 = v162;
              if (v163 >= v164)
              {
                if (v162 <= &v147 && v162 + 24 * v163 > &v147)
                {
                  v128 = &v147 - v162;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v162, v165, v163 + 1, 24);
                  v111 = v162;
                  v110 = v162 + v128;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v162, v165, v163 + 1, 24);
                  v110 = &v147;
                  v111 = v162;
                }
              }

              v112 = &v111[24 * v163];
              v113 = *v110;
              *(v112 + 2) = *(v110 + 2);
              *v112 = v113;
              ++v163;
              if (v161)
              {
                v114 = *v137;
                LOWORD(v150) = 261;
                v116 = *(v114 + 24);
                v115 = *(v114 + 32);
                *&v147 = v116;
                *(&v147 + 1) = v115;
                mlir::Diagnostic::operator<<(&v161 + 8, &v147);
                if (v161)
                {
                  LODWORD(v147) = 3;
                  *(&v147 + 1) = "'";
                  v148 = 1;
                  v117 = &v147;
                  v118 = v162;
                  if (v163 >= v164)
                  {
                    if (v162 <= &v147 && v162 + 24 * v163 > &v147)
                    {
                      v130 = &v147 - v162;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v162, v165, v163 + 1, 24);
                      v118 = v162;
                      v117 = v162 + v130;
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v162, v165, v163 + 1, 24);
                      v117 = &v147;
                      v118 = v162;
                    }
                  }

                  v119 = &v118[24 * v163];
                  v120 = *v117;
                  *(v119 + 2) = *(v117 + 2);
                  *v119 = v120;
                  ++v163;
                }
              }
            }

            v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v161);
            if (v161)
            {
              mlir::InFlightDiagnostic::report(&v161);
            }

            if (v171 != 1)
            {
              return v6;
            }

            if (v170 != &v171)
            {
              free(v170);
            }

            v121 = __p;
            if (__p)
            {
              v122 = v169;
              v123 = __p;
              if (v169 != __p)
              {
                do
                {
                  v122 = sub_10005BEF4(v122 - 1);
                }

                while (v122 != v121);
                v123 = __p;
              }

              v169 = v121;
              operator delete(v123);
            }

            v10 = v166;
            if (!v166)
            {
              goto LABEL_236;
            }

            v124 = v167;
            v12 = v166;
            if (v167 == v166)
            {
              goto LABEL_235;
            }

            do
            {
              v125 = *--v124;
              *v124 = 0;
              if (v125)
              {
                operator delete[]();
              }
            }

            while (v124 != v10);
            goto LABEL_234;
          }

          v72 = v70;
          v73 = sub_10006E654(v71);
          v135 = v14;
          v136 = v73;
          *&v133 = &v136;
          *(&v133 + 1) = &v142;
          v134 = &v137;
          v74 = v146;
          v160 = 0;
          if ((sub_1000A3554(&v139, &v160) & 1) == 0)
          {
            return 0;
          }

          v75 = v160;
          if (v160)
          {
            do
            {
              v159 = 0uLL;
              v158 = 0;
              v157 = 0;
              v156 = 0uLL;
              *&v161 = 0;
              if ((sub_1000A3554(&v139, &v161) & 1) == 0 || !sub_1000A87D4(v141, a1[67], *(a1 + 136), v161, &v159, "string", 6) || (sub_1000A3554(&v139, &v157) & 1) == 0 || !sub_1000AB85C(&v139, &v158) || !sub_1000A7B24(&v142, v157, &v156) || !sub_1000ACA08(&v133, v159, *(&v159 + 1)))
              {
                return 0;
              }

              if (*(&v156 + 1))
              {
                v153 = v156;
                v154 = v156;
                v155 = v74;
                v77 = *(&v159 + 1);
                v76 = v159;
                v78 = llvm::StringMapImpl::hash(v159, *(&v159 + 1));
                v79 = llvm::StringMapImpl::FindKey(a1 + 61, v76, v77, v78);
                if (v79 != -1 && v79 != *(a1 + 124))
                {
                  v80 = *(a1[61] + 8 * v79);
                  v83 = *(v80 + 8);
                  v81 = v80 + 8;
                  v82 = v83;
                  v84 = *(v81 + 23);
                  if (v84 >= 0)
                  {
                    v76 = v81;
                  }

                  else
                  {
                    v76 = v82;
                  }

                  v85 = *(v81 + 8);
                  if (v84 >= 0)
                  {
                    v77 = v84;
                  }

                  else
                  {
                    v77 = v85;
                  }
                }

                *&v159 = v76;
                *(&v159 + 1) = v77;
                *&v147 = &off_1002D6020;
                *(&v147 + 1) = v76;
                v148 = v77;
                v149 = v158;
                v150 = &v153;
                v151 = a1 + 67;
                v152 = v131;
                if (((*(*v73 + 48))(v73, &v147) & 1) == 0)
                {
                  goto LABEL_188;
                }

                if (v154 != v153 + *(&v153 + 1))
                {
                  sub_1000AB9E8(&v161, v155, &v159);
                  v86 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v161);
                  if (v161)
                  {
                    mlir::InFlightDiagnostic::report(&v161);
                  }

                  v14 = a1 + 53;
                  if (v171)
                  {
                    if (v170 != &v171)
                    {
                      free(v170);
                    }

                    v87 = __p;
                    if (__p)
                    {
                      v88 = v169;
                      v89 = __p;
                      if (v169 != __p)
                      {
                        do
                        {
                          v88 = sub_10005BEF4(v88 - 1);
                        }

                        while (v88 != v87);
                        v89 = __p;
                      }

                      v169 = v87;
                      operator delete(v89);
                    }

                    v90 = v166;
                    if (v166)
                    {
                      v91 = v167;
                      v92 = v166;
                      if (v167 != v166)
                      {
                        do
                        {
                          v93 = *--v91;
                          *v91 = 0;
                          if (v93)
                          {
                            operator delete[]();
                          }
                        }

                        while (v91 != v90);
                        v92 = v166;
                      }

                      v167 = v90;
                      operator delete(v92);
                      v14 = a1 + 53;
                    }

                    if (v162 != v165)
                    {
                      free(v162);
                    }

                    mlir::AsmParsedResourceEntry::~AsmParsedResourceEntry(&v147);
                    v70 = v72;
                  }

                  else
                  {
                    v70 = v72;
                    mlir::AsmParsedResourceEntry::~AsmParsedResourceEntry(&v147);
                  }

                  if (v86)
                  {
                    goto LABEL_142;
                  }

                  return 0;
                }

                mlir::AsmParsedResourceEntry::~AsmParsedResourceEntry(&v147);
              }
            }

            while (--v75);
          }

          v14 = a1 + 53;
          v70 = v72;
LABEL_142:
          v6 = 1;
          if (v140 == v139 + *(&v139 + 1))
          {
            return v6;
          }
        }
      }
    }

    return 1;
  }

  if (*(a4 + 16))
  {
    v5 = a1[1];
    *&v147 = "unexpected resource offset section when resource section is not present";
    LOWORD(v150) = 259;
    mlir::emitError(v5, &v147, &v161);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v161);
    if (v161)
    {
      mlir::InFlightDiagnostic::report(&v161);
    }

    if (v171 == 1)
    {
      if (v170 != &v171)
      {
        free(v170);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v169;
        v9 = __p;
        if (v169 != __p)
        {
          do
          {
            v8 = sub_10005BEF4(v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v169 = v7;
        operator delete(v9);
      }

      v10 = v166;
      if (!v166)
      {
        goto LABEL_236;
      }

      v11 = v167;
      v12 = v166;
      if (v167 == v166)
      {
LABEL_235:
        v167 = v10;
        operator delete(v12);
LABEL_236:
        if (v162 != v165)
        {
          free(v162);
        }

        return v6;
      }

      do
      {
        v13 = *--v11;
        *v11 = 0;
        if (v13)
        {
          operator delete[]();
        }
      }

      while (v11 != v10);
LABEL_234:
      v12 = v166;
      goto LABEL_235;
    }
  }

  else
  {
    v62 = a1[1];
    *&v147 = "expected resource offset section when resource section is present";
    LOWORD(v150) = 259;
    mlir::emitError(v62, &v147, &v161);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v161);
    if (v161)
    {
      mlir::InFlightDiagnostic::report(&v161);
    }

    if (v171 == 1)
    {
      if (v170 != &v171)
      {
        free(v170);
      }

      v63 = __p;
      if (__p)
      {
        v64 = v169;
        v65 = __p;
        if (v169 != __p)
        {
          do
          {
            v64 = sub_10005BEF4(v64 - 1);
          }

          while (v64 != v63);
          v65 = __p;
        }

        v169 = v63;
        operator delete(v65);
      }

      v10 = v166;
      if (!v166)
      {
        goto LABEL_236;
      }

      v66 = v167;
      v12 = v166;
      if (v167 == v166)
      {
        goto LABEL_235;
      }

      do
      {
        v67 = *--v66;
        *v66 = 0;
        if (v67)
        {
          operator delete[]();
        }
      }

      while (v66 != v10);
      goto LABEL_234;
    }
  }

  return v6;
}

BOOL sub_1000A285C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32[0] = a4;
  v32[1] = a5;
  v10 = *(a1 + 136);
  v28 = a6;
  v29 = a7;
  v30 = a6;
  v31 = v10;
  v27 = 0;
  if ((sub_1000A3554(&v28, &v27) & 1) == 0)
  {
    return 0;
  }

  v26 = 0;
  if ((sub_1000A3554(&v28, &v26) & 1) == 0)
  {
    return 0;
  }

  v11 = v27;
  v12 = *(a1 + 32);
  if (v27 != v12)
  {
    if (v27 >= v12)
    {
      if (v27 > *(a1 + 36))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, (a1 + 40), v27, 40);
        v12 = *(a1 + 32);
      }

      if (v11 != v12)
      {
        bzero((*(a1 + 24) + 40 * v12), 40 * ((40 * (v11 - v12) - 40) / 0x28) + 40);
      }
    }

    *(a1 + 32) = v11;
    LODWORD(v12) = v11;
  }

  v13 = (a1 + 80);
  v14 = v26;
  v15 = *(a1 + 88);
  if (v26 != v15)
  {
    if (v26 >= v15)
    {
      if (v26 > *(a1 + 92))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 80, (a1 + 96), v26, 40);
        v15 = *(a1 + 88);
      }

      if (v14 != v15)
      {
        bzero((*v13 + 40 * v15), 40 * ((40 * (v14 - v15) - 40) / 0x28) + 40);
      }
    }

    *(a1 + 88) = v14;
    LODWORD(v12) = *(a1 + 32);
    LODWORD(v15) = v14;
  }

  v25 = 0;
  v33 = 0;
  v38 = (a1 + 24);
  v39 = &v33;
  v40 = &v28;
  v41 = &v25;
  v42 = v32;
  if (v12)
  {
    v16 = v12;
    while (1)
    {
      v36 = a2;
      v37 = a3;
      v35 = 0;
      if (!sub_1000A8C10(&v28, &v36, &v35, "dialect", 7))
      {
        return 0;
      }

      v34 = 0;
      if ((sub_1000A3554(&v28, &v34) & 1) == 0)
      {
        return 0;
      }

      v17 = v34;
      if (v34)
      {
        v18 = v35;
        while (sub_1000A8010(&v38, *v18))
        {
          if (!--v17)
          {
            goto LABEL_19;
          }
        }

        return 0;
      }

LABEL_19:
      if (v33 == v16)
      {
        LODWORD(v15) = *(a1 + 88);
        v13 = (a1 + 80);
        break;
      }
    }
  }

  v33 = 0;
  v38 = v13;
  v39 = &v33;
  v40 = &v28;
  v41 = &v25;
  v42 = v32;
  if (v15)
  {
    v19 = v15;
    do
    {
      v36 = a2;
      v37 = a3;
      v35 = 0;
      if (!sub_1000A8C10(&v28, &v36, &v35, "dialect", 7))
      {
        return 0;
      }

      v34 = 0;
      if ((sub_1000A3554(&v28, &v34) & 1) == 0)
      {
        return 0;
      }

      v20 = v34;
      if (v34)
      {
        v21 = v35;
        while (sub_1000A8010(&v38, *v21))
        {
          if (!--v20)
          {
            goto LABEL_30;
          }
        }

        return 0;
      }

LABEL_30:
      ;
    }

    while (v33 != v19);
  }

  if (v30 == v28 + v29)
  {
    return 1;
  }

  sub_1000A65B8(&v38, v31, "unexpected trailing data in the Attribute/Type offset section");
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v38);
  if (v38)
  {
    v23 = result;
    mlir::InFlightDiagnostic::report(&v38);
    result = v23;
  }

  if (v43 == 1)
  {
    v24 = result;
    sub_10005BE10(&v39);
    return v24;
  }

  return result;
}

void mlir::BytecodeReader::Impl::parseIRSection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  LOBYTE(v5) = 0;
  v6 = 0;
  mlir::ModuleOp::create(v4, &v5);
}

uint64_t sub_1000A3554(void *a1, unint64_t *a2)
{
  v4 = a1[2];
  if (v4 == (*a1 + a1[1]))
  {
    sub_1000A65B8(__dst, a1[3], "attempting to parse a byte at the end of the bytecode");
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(__dst);
    if (__dst[0])
    {
      mlir::InFlightDiagnostic::report(__dst);
    }

    if (v24 == 1)
    {
      if (v23 != &v24)
      {
        free(v23);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v22;
        v11 = __p;
        if (v22 != __p)
        {
          do
          {
            v10 = sub_10005BEF4(v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v22 = v9;
        operator delete(v11);
      }

      v12 = v19;
      if (v19)
      {
        v13 = v20;
        v14 = v19;
        if (v20 != v19)
        {
          do
          {
            v15 = *--v13;
            *v13 = 0;
            if (v15)
            {
              operator delete[]();
            }
          }

          while (v13 != v12);
          v14 = v19;
        }

        v20 = v12;
        operator delete(v14);
      }

      if (v17 != &v18)
      {
        free(v17);
      }
    }

    if (!v8)
    {
      return 0;
    }

    v5 = *a2;
    if (*a2)
    {
      goto LABEL_3;
    }

LABEL_28:
    if (v5)
    {
      return sub_1000A8740(a1, a2);
    }

    if (sub_1000A8598(a1, 8uLL, __dst))
    {
      v6 = __dst[0];
      goto LABEL_4;
    }

    return 0;
  }

  a1[2] = v4 + 1;
  v5 = *v4;
  *a2 = v5;
  if ((v5 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_3:
  v6 = v5 >> 1;
LABEL_4:
  *a2 = v6;
  return 1;
}

uint64_t mlir::BytecodeReader::Impl::sortUseListOrder(uint64_t a1, void ***a2)
{
  v101 = a2;
  v3 = *a2;
  if (!*a2 || !*v3)
  {
    return 1;
  }

  v5 = *(a1 + 528);
  if (v5)
  {
    v6 = *(a1 + 512);
    v7 = v5 - 1;
    v8 = v7 & ((a2 >> 4) ^ (a2 >> 9));
    v9 = *(v6 + 48 * v8);
    if (v9 == a2)
    {
      v10 = 0;
    }

    else
    {
      v96 = 1;
      do
      {
        v10 = v9 == -4096;
        if (v9 == -4096)
        {
          break;
        }

        v10 = 0;
        v97 = v8 + v96++;
        v8 = v97 & v7;
        v9 = *(v6 + 48 * v8);
      }

      while (v9 != a2);
    }
  }

  else
  {
    v10 = 1;
  }

  v12 = *(a1 + 704);
  v13 = *(a1 + 720);
  if (!v13)
  {
LABEL_14:
    v15 = *(a1 + 720);
    goto LABEL_15;
  }

  v14 = *(v3 + 2);
  v15 = ((v14 >> 4) ^ (v14 >> 9)) & (v13 - 1);
  v16 = *(v12 + 16 * v15);
  if (v16 != v14)
  {
    v17 = 1;
    while (v16 != -4096)
    {
      v18 = v15 + v17++;
      v15 = v18 & (v13 - 1);
      v16 = *(v12 + 16 * v15);
      if (v16 == v14)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_14;
  }

LABEL_15:
  v19 = *(v12 + 16 * v15 + 8);
  v20 = mlir::OpOperand::getOperandNumber(v3) | (v19 << 32);
  v117 = &v119;
  v119 = 0;
  v120 = v20;
  v118 = 0x300000001;
  v21 = **a2;
  if (!v21)
  {
    if (v10)
    {
      goto LABEL_85;
    }

LABEL_38:
    v46 = *(a1 + 512);
    v47 = *(a1 + 528);
    if (v47)
    {
      v48 = ((v101 >> 4) ^ (v101 >> 9)) & (v47 - 1);
      v49 = v46 + 48 * v48;
      v50 = *v49;
      if (*v49 == v101)
      {
        goto LABEL_45;
      }

      v51 = 1;
      while (v50 != -4096)
      {
        v52 = v48 + v51++;
        v48 = v52 & (v47 - 1);
        v49 = v46 + 48 * v48;
        v50 = *v49;
        if (*v49 == v101)
        {
          goto LABEL_45;
        }
      }
    }

    v49 = v46 + 48 * v47;
LABEL_45:
    __dst = v109;
    v108 = 0x400000000;
    v53 = *(v49 + 16);
    if (&__dst == (v49 + 8) || v53 == 0)
    {
      LODWORD(v53) = 0;
      v110 = *(v49 + 40);
      v104 = v106;
      v105 = 0x400000000;
      v55 = *v101;
      if (!*v101)
      {
        goto LABEL_64;
      }

      goto LABEL_51;
    }

    v62 = v109;
    v63 = *(v49 + 16);
    if (v53 >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v109, *(v49 + 16), 4);
      v63 = *(v49 + 16);
      if (!v63)
      {
        goto LABEL_62;
      }

      v62 = __dst;
    }

    memcpy(v62, *(v49 + 8), 4 * v63);
LABEL_62:
    LODWORD(v108) = v53;
    v110 = *(v49 + 40);
    v104 = v106;
    v105 = 0x400000000;
    if (__dst == v109)
    {
      v85 = v53;
      if (v53 < 5 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&v104, v106, v53, 4), (v85 = v108) != 0))
      {
        memcpy(v104, __dst, 4 * v85);
      }

      LODWORD(v105) = v53;
      LODWORD(v108) = 0;
      v55 = *v101;
      if (!*v101)
      {
LABEL_64:
        v56 = 0;
        if (v110 != 1)
        {
          goto LABEL_65;
        }

        goto LABEL_54;
      }
    }

    else
    {
      v104 = __dst;
      v105 = __PAIR64__(HIDWORD(v108), v53);
      __dst = v109;
      v108 = 0;
      v55 = *v101;
      if (!*v101)
      {
        goto LABEL_64;
      }
    }

LABEL_51:
    v56 = 0;
    do
    {
      ++v56;
      v55 = *v55;
    }

    while (v55);
    if (v110 != 1)
    {
LABEL_65:
      v98 = 0;
      v99 = 0;
      v100 = 0;
      if (v53)
      {
        goto LABEL_66;
      }

      goto LABEL_103;
    }

LABEL_54:
    if (v53)
    {
      v11 = 0;
LABEL_110:
      if (v104 != v106)
      {
        free(v104);
      }

      if (__dst != v109)
      {
        free(__dst);
      }

      goto LABEL_114;
    }

    sub_1000A3F38(&v111, v56);
    v57 = v111;
    v58 = v112;
    if (v112)
    {
      v59 = (v112 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v59 < 7)
      {
        LODWORD(v60) = 0;
        v61 = v111;
LABEL_95:
        v92 = &v57[v58];
        do
        {
          *v61++ = v60;
          LODWORD(v60) = v60 + 1;
        }

        while (v61 != v92);
        goto LABEL_97;
      }

      v86 = v59 + 1;
      v60 = (v59 + 1) & 0x7FFFFFFFFFFFFFF8;
      v61 = v111 + 4 * v60;
      v87 = xmmword_1002B0DB0;
      v88 = (v111 + 16);
      v89.i64[0] = 0x400000004;
      v89.i64[1] = 0x400000004;
      v90.i64[0] = 0x800000008;
      v90.i64[1] = 0x800000008;
      v91 = v60;
      do
      {
        v88[-1] = v87;
        *v88 = vaddq_s32(v87, v89);
        v87 = vaddq_s32(v87, v90);
        v88 += 2;
        v91 -= 8;
      }

      while (v91);
      if (v86 != v60)
      {
        goto LABEL_95;
      }
    }

LABEL_97:
    if (v105)
    {
      v93 = 0;
      v94 = v104;
      do
      {
        v57[v94[v93]] = v94[v93 + 1];
        v93 += 2;
      }

      while (v93 < v105);
    }

    sub_100094D2C(&v104, &v111);
    if (v111 != v113)
    {
      free(v111);
    }

    LODWORD(v53) = v105;
    v98 = 0;
    v99 = 0;
    v100 = 0;
    if (v105)
    {
LABEL_66:
      v64 = 0;
      v65 = v104;
      v66 = 4 * v53;
      while (1)
      {
        sub_1000B0224(&v98, v65, &v111);
        if (v113[0] != 1)
        {
          goto LABEL_108;
        }

        v67 = *v65++;
        v64 += v67;
        v66 -= 4;
        if (!v66)
        {
          if (v56 == v105)
          {
            goto LABEL_104;
          }

          goto LABEL_108;
        }
      }
    }

LABEL_103:
    v64 = 0;
    if (!v56)
    {
LABEL_104:
      if (v64 == ((v56 - 1) * v56) >> 1)
      {
        v111 = v117;
        v112 = &v104;
        v113[0] = 1;
        v114 = &v117[16 * v118];
        v115 = &v104;
        v116 = 1;
        sub_1000A3FC8(v102, &v111);
        sub_100094D2C(&v104, v102);
        if (v102[0] != &v103)
        {
          free(v102[0]);
        }

        mlir::Value::shuffleUseList(&v101, v104, v105);
        v11 = 1;
        goto LABEL_109;
      }
    }

LABEL_108:
    v11 = 0;
LABEL_109:
    llvm::deallocate_buffer(v98, (4 * v100), 4uLL);
    goto LABEL_110;
  }

  v22 = 1;
  v23 = 1;
  do
  {
    v24 = *(a1 + 704);
    v25 = *(a1 + 720);
    if (v25)
    {
      v26 = *(v21 + 2);
      v27 = ((v26 >> 4) ^ (v26 >> 9)) & (v25 - 1);
      v28 = *(v24 + 16 * v27);
      if (v28 == v26)
      {
        goto LABEL_24;
      }

      v29 = 1;
      while (v28 != -4096)
      {
        v30 = v27 + v29++;
        v27 = v30 & (v25 - 1);
        v28 = *(v24 + 16 * v27);
        if (v28 == v26)
        {
          goto LABEL_24;
        }
      }
    }

    v27 = *(a1 + 720);
LABEL_24:
    v31 = *(v24 + 16 * v27 + 8);
    v32 = mlir::OpOperand::getOperandNumber(v21) | (v31 << 32);
    v33 = v20 > v32;
    v34 = v118;
    if (v118 >= HIDWORD(v118))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v117, &v119, v118 + 1, 16);
      v34 = v118;
    }

    v22 &= v33;
    v35 = &v117[16 * v34];
    *v35 = v23;
    *(v35 + 1) = v32;
    v36 = (v118 + 1);
    LODWORD(v118) = v118 + 1;
    ++v23;
    v21 = *v21;
    v20 = v32;
  }

  while (v21);
  if (v10 & v22)
  {
    goto LABEL_85;
  }

  if ((v22 & 1) == 0)
  {
    v37 = 126 - 2 * __clz(v36);
    if (v36)
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    sub_100093748(v117, &v117[16 * v36], v38, 1);
  }

  if (!v10)
  {
    goto LABEL_38;
  }

  v39 = v117;
  v40 = v118;
  v111 = v113;
  v112 = 0xC00000000;
  if (v118 >= 0xD)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v113, v118, 4);
    v41 = v112;
    v42 = v111;
    v43 = v111 + 4 * v112;
    v44 = (v40 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v44 < 0x18)
    {
      goto LABEL_36;
    }

LABEL_74:
    if (v43 >= &v39[16 * v44 + 8] || (v68 = &v42[v41 + 1 + v44], v45 = v39, v39 >= v68))
    {
      v69 = v44 + 1;
      v70 = (v44 + 1) & 7;
      if (!v70)
      {
        v70 = 8;
      }

      v71 = v69 - v70;
      v72 = &v43[4 * v71];
      v45 = &v39[16 * v71];
      v73 = (v39 + 64);
      v74 = (v43 + 16);
      do
      {
        v75 = v73 - 8;
        v76 = vld2q_f64(v75);
        v77 = v73 - 4;
        v78 = vld2q_f64(v77);
        v79 = v73 + 16;
        v81 = vld2q_f64(v73);
        v80 = v73 + 4;
        v82 = vld2q_f64(v80);
        v74[-1] = vuzp1q_s32(v76, v78);
        *v74 = vuzp1q_s32(v81, v82);
        v74 += 2;
        v73 = v79;
        v71 -= 8;
      }

      while (v71);
      v43 = v72;
    }

    goto LABEL_81;
  }

  if (v118)
  {
    v41 = 0;
    v42 = v113;
    v43 = v113;
    v44 = (v118 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v44 >= 0x18)
    {
      goto LABEL_74;
    }

LABEL_36:
    v45 = v39;
    do
    {
LABEL_81:
      v83 = *v45;
      v45 += 16;
      *v43 = v83;
      v43 += 4;
    }

    while (v45 != &v39[16 * v40]);
    v84 = v112;
  }

  else
  {
    v84 = 0;
    v42 = v113;
  }

  LODWORD(v112) = v84 + v40;
  mlir::Value::shuffleUseList(&v101, v42, (v84 + v40));
  if (v111 != v113)
  {
    free(v111);
  }

LABEL_85:
  v11 = 1;
LABEL_114:
  if (v117 != &v119)
  {
    free(v117);
  }

  return v11;
}

void *sub_1000A3F38(void *result, unint64_t a2)
{
  *result = result + 2;
  result[1] = 0x400000000;
  if (a2)
  {
    if (a2 < 5)
    {
      v4 = 0;
      v5 = a2;
    }

    else
    {
      v3 = result;
      llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 2, a2, 4);
      result = v3;
      v4 = *(v3 + 2);
      v5 = a2 - v4;
      if (a2 == v4)
      {
        goto LABEL_7;
      }
    }

    v6 = result;
    bzero((*result + 4 * v4), 4 * v5);
    result = v6;
LABEL_7:
    *(result + 2) = a2;
  }

  return result;
}

void *sub_1000A3FC8(void *result, unsigned int **a2)
{
  *result = result + 2;
  result[1] = 0x400000000;
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  v5 = v4 - *a2;
  if ((v5 >> 4) < 5)
  {
    v7 = 0;
    if (v2 == v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = result;
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 2, v5 >> 4, 4);
    result = v6;
    v7 = *(v6 + 2);
    if (v2 == v4)
    {
      goto LABEL_8;
    }
  }

  v8 = (*result + 4 * v7);
  v9 = *v3;
  do
  {
    v10 = *v2;
    v2 += 4;
    *v8++ = *(v9 + 4 * v10);
  }

  while (v2 != v4);
  v7 = *(result + 2);
LABEL_8:
  *(result + 2) = v7 + (v5 >> 4);
  return result;
}

uint64_t sub_1000A4080(uint64_t a1, void *a2, uint64_t a3)
{
  if ((sub_1000A3554(a2, (a3 + 112)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 112);
  *(a3 + 112) = v6 >> 1;
  if ((v6 & 1) == 0)
  {
    return 1;
  }

  v7 = *(a3 + 104);
  v8 = v7 ? (v7 - 8) : 0;
  v59 = 0;
  if ((sub_1000A3554(a2, &v59) & 1) == 0)
  {
    return 0;
  }

  v65 = &v67;
  v66 = 0x600000000;
  v62 = v64;
  v63 = 0x600000000;
  v10 = v59;
  if (v59 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, &v67, v59, 8);
    if (v10 > HIDWORD(v63))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v64, v10, 8);
    }
  }

  v11 = mlir::UnknownLoc::get(**a1, v9);
  if (!v10)
  {
LABEL_28:
    mlir::TypeRange::TypeRange(&v60, v65, v66);
    mlir::Block::addArguments(v8, v60, v61, v62, v63);
    mlir::ValueRange::ValueRange(&v60, v8[6], (v8[7] - v8[6]) >> 3);
    v21 = !sub_1000AD8F4(a1, a2[3], v60, v61);
    v22 = v62;
    if (v62 == v64)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v12 = v11;
  while (1)
  {
    v58 = v12;
    if (*(a1 + 248) < 4uLL)
    {
      break;
    }

    v60 = 0;
    if ((sub_1000A3554(a2, &v60) & 1) == 0)
    {
      goto LABEL_37;
    }

    v13 = v60;
    v14 = sub_1000AAE24((a1 + 88), v60 >> 1);
    if (!v14)
    {
      goto LABEL_37;
    }

    v15 = v14;
    if (v13)
    {
      goto LABEL_20;
    }

LABEL_21:
    v17 = v66;
    if (v66 >= HIDWORD(v66))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, &v67, v66 + 1, 8);
      v17 = v66;
    }

    *(v65 + v17) = v15;
    LODWORD(v66) = v66 + 1;
    v18 = v58;
    v19 = v63;
    if (v63 >= HIDWORD(v63))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v64, v63 + 1, 8);
      v19 = v63;
    }

    *(v62 + v19) = v18;
    LODWORD(v63) = v63 + 1;
    if (!--v10)
    {
      goto LABEL_28;
    }
  }

  v60 = 0;
  if (sub_1000A3554(a2, &v60))
  {
    v16 = sub_1000AAE24((a1 + 88), v60);
    if (v16)
    {
      v15 = v16;
LABEL_20:
      if ((sub_1000AD1F0(a1, a2, &v58) & 1) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_21;
    }
  }

LABEL_37:
  v21 = 1;
  v22 = v62;
  if (v62 != v64)
  {
LABEL_29:
    free(v22);
  }

LABEL_30:
  if (v65 != &v67)
  {
    free(v65);
  }

  if (v21)
  {
    return 0;
  }

  if (*(a1 + 248) < 3uLL)
  {
    return 1;
  }

  LOBYTE(v60) = 0;
  v23 = sub_1000A7258(a2, &v60);
  result = 0;
  if (!v23)
  {
    return result;
  }

  if (!v60)
  {
    return 1;
  }

  v24 = *(a3 + 104);
  if (v24)
  {
    v25 = v24 - 8;
  }

  else
  {
    v25 = 0;
  }

  sub_1000AD3EC(&v65, a2, ((*(v25 + 56) - *(v25 + 48)) >> 3));
  result = 0;
  v26 = v68;
  if (v68 != 1 || !v66)
  {
LABEL_81:
    if (v26)
    {
      goto LABEL_84;
    }

    return result;
  }

  v28 = *(v25 + 48);
  v27 = *(v25 + 56);
  if (((v27 - v28) & 0x7FFFFFFF8) == 0)
  {
    v26 = 1;
    result = 1;
    goto LABEL_81;
  }

  if (!v67)
  {
    result = 1;
    goto LABEL_84;
  }

  v29 = 0;
  while (2)
  {
    if (v67)
    {
      v35 = v67 - 1;
      v36 = (v67 - 1) & (37 * v29);
      v37 = v65 + 48 * v36;
      v38 = *v37;
      if (*v37 == v29)
      {
        v39 = *(v28 + 8 * v29);
        v62 = v39;
LABEL_54:
        v40 = *(a1 + 528);
        if (!v40)
        {
          v41 = 0;
          goto LABEL_56;
        }

        v30 = *(a1 + 512);
        v31 = v40 - 1;
        v32 = v31 & ((v39 >> 4) ^ (v39 >> 9));
        v33 = (v30 + 48 * v32);
        v34 = *v33;
        if (v39 != *v33)
        {
          v48 = 0;
          v49 = 1;
          while (v34 != -4096)
          {
            if (v48)
            {
              v50 = 0;
            }

            else
            {
              v50 = v34 == -8192;
            }

            if (v50)
            {
              v48 = v33;
            }

            v51 = v32 + v49++;
            v32 = v51 & v31;
            v33 = (v30 + 48 * v32);
            v34 = *v33;
            if (v39 == *v33)
            {
              goto LABEL_50;
            }
          }

          if (v48)
          {
            v41 = v48;
          }

          else
          {
            v41 = v33;
          }

LABEL_56:
          sub_1000AEC4C((a1 + 512), v41, &v62, (v37 + 8));
          v28 = *(v25 + 48);
          v27 = *(v25 + 56);
        }
      }

      else
      {
        v42 = 1;
        v43 = *v37;
        v44 = v35 & (37 * v29);
        while (v43 != -1)
        {
          v45 = v44 + v42++;
          v44 = v45 & v35;
          v43 = *(v65 + 12 * v44);
          if (v43 == v29)
          {
            v39 = *(v28 + 8 * v29);
            v62 = v39;
            if (v38 != v29)
            {
              v46 = 1;
              while (v38 != -1)
              {
                v47 = v36 + v46++;
                v36 = v47 & v35;
                v37 = v65 + 48 * (v47 & v35);
                v38 = *v37;
                if (*v37 == v29)
                {
                  goto LABEL_54;
                }
              }

              v37 = v65 + 48 * v67;
            }

            goto LABEL_54;
          }
        }
      }
    }

LABEL_50:
    if (++v29 < ((v27 - v28) >> 3))
    {
      continue;
    }

    break;
  }

  result = 1;
  if ((v68 & 1) == 0)
  {
    return result;
  }

LABEL_84:
  v52 = v65;
  v53 = result;
  if (v67)
  {
    v54 = 48 * v67;
    v55 = v65 + 24;
    v56 = v54;
    do
    {
      if (*(v55 - 6) <= 0xFFFFFFFD)
      {
        v57 = *(v55 - 2);
        if (v55 != v57)
        {
          free(v57);
        }
      }

      v55 += 48;
      v56 -= 48;
    }

    while (v56);
  }

  else
  {
    v54 = 0;
  }

  llvm::deallocate_buffer(v52, v54, 8uLL);
  return v53;
}

BOOL mlir::BytecodeReader::Impl::parseRegions(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = a2;
  if (*a3 == a3[1])
  {
LABEL_409:
    if (*(a3 + 120) == 1)
    {
      v202 = a1[86];
      v203 = (v202 - 56);
      v204 = *(v202 - 32);
      if (v204 != (v202 - 16))
      {
        free(v204);
      }

      v205 = *v203;
      if (*v203)
      {
        *(v202 - 48) = v205;
        operator delete(v205);
      }

      a1[86] = v203;
    }

    v206 = v5[1];
    v207 = *(v206 - 88);
    if (v207 != (v206 - 72))
    {
      free(v207);
    }

    v208 = *(v206 - 104);
    *(v206 - 104) = 0;
    if (v208)
    {
      operator delete();
    }

    v5[1] = v206 - 128;
    return 1;
  }

  v7 = (a1 + 11);
  v241 = a1 + 53;
  v242 = a1 + 67;
  v240 = a1 + 42;
  v243 = a1 + 31;
  v244 = a1 + 11;
  while (!a3[13])
  {
    if ((mlir::BytecodeReader::Impl::parseRegion(a1, a3) & 1) == 0)
    {
      return 0;
    }

    v8 = *a3;
    if (**a3 != *a3)
    {
      break;
    }

LABEL_408:
    v201 = v8 + 24;
    *a3 = v201;
    if (v201 == a3[1])
    {
      goto LABEL_409;
    }
  }

  v9 = a3[2];
  while (1)
  {
    v10 = a3[14];
    a3[14] = v10 - 1;
    v11 = v3;
    if (v10)
    {
      break;
    }

LABEL_400:
    v195 = *(a3[13] + 8);
    a3[13] = v195;
    v8 = *a3;
    if (v195 == *a3)
    {
      a3[13] = 0;
      v196 = a1[86];
      v197 = *(v196 - 56);
      v198 = (*(v196 - 48) - v197) >> 3;
      v199 = *(a3 + 8);
      v200 = v198 - v199;
      if (v198 >= v199)
      {
        if (v198 > v200)
        {
          *(v196 - 48) = v197 + 8 * v200;
        }
      }

      else
      {
        sub_1000AD09C(v196 - 56, -v199);
        v8 = *a3;
      }

      --*(v196 - 24);
      v3 = v11;
      goto LABEL_408;
    }

    v3 = v11;
    v179 = 0;
    if ((sub_1000A4080(a1, v9, a3) & 1) == 0)
    {
      return v179;
    }
  }

  while (1)
  {
    v246 = 0;
    if ((sub_1000A3554(v9, &v246) & 1) == 0)
    {
      return 0;
    }

    v12 = v9[3];
    v13 = a1[45];
    v14 = *(a1 + 92);
    *__src = "operation name";
    *&__src[8] = 14;
    *v254 = v246;
    if (v246 < v14)
    {
      v15 = v13 + 48 * v246;
      v16 = *(v15 + 40);
      if (*(v15 + 8))
      {
        goto LABEL_47;
      }

LABEL_34:
      if (*(v15 + 32))
      {
        v263[0] = off_1002D5F88;
        v263[1] = v7;
        v264 = v242;
        v265 = v241;
        v266 = v240;
        v267[0] = v9;
        v267[1] = v243;
        if ((sub_1000A98B8(*(v15 + 16), v263, **a1) & 1) == 0)
        {
          return 0;
        }

        v25 = *(v15 + 16);
        WORD4(v255) = 773;
        v27 = *(v25 + 24);
        v26 = *(v25 + 32);
        *v254 = v27;
        *&v254[8] = v26;
        *&v254[16] = ".";
        v28 = *(v15 + 24);
        v29 = *(v15 + 32);
        *__src = v254;
        *&__src[16] = v28;
        *&v288 = v29;
        WORD4(v288) = 1282;
        llvm::Twine::str(&v246, __src);
        v30 = **a1;
        if (*(v15 + 8) == 1)
        {
          *(v15 + 8) = 0;
        }

        if (SHIBYTE(v247[1]) >= 0)
        {
          v31 = &v246;
        }

        else
        {
          v31 = v246;
        }

        if (SHIBYTE(v247[1]) >= 0)
        {
          v32 = SHIBYTE(v247[1]);
        }

        else
        {
          v32 = v247[0];
        }

        mlir::OperationName::OperationName(v15, v31, v32, v30);
        *(v15 + 8) = 1;
        if (SHIBYTE(v247[1]) < 0)
        {
          operator delete(v246);
        }
      }

      else
      {
        mlir::OperationName::OperationName(v15, *(*(v15 + 16) + 24), *(*(v15 + 16) + 32), **a1);
        *(v15 + 8) = 1;
      }

      goto LABEL_47;
    }

    sub_1000A895C(v263, v12, __src, v254);
    v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v263);
    if (v263[0])
    {
      mlir::InFlightDiagnostic::report(v263);
    }

    if (v281 == 1)
    {
      if (v279 != &v281)
      {
        free(v279);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v278;
        v20 = __p;
        if (v278 != __p)
        {
          do
          {
            v19 = sub_10005BEF4(v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v278 = v18;
        operator delete(v20);
      }

      v21 = v275;
      if (v275)
      {
        v22 = v276;
        v23 = v275;
        if (v276 != v275)
        {
          do
          {
            v24 = *--v22;
            *v22 = 0;
            if (v24)
            {
              operator delete[]();
            }
          }

          while (v22 != v21);
          v23 = v275;
        }

        v276 = v21;
        operator delete(v23);
      }

      if (v265 != v267)
      {
        free(v265);
      }
    }

    if (!v17)
    {
      return 0;
    }

    v15 = 0;
    v16 = MEMORY[0x28];
    if ((MEMORY[8] & 1) == 0)
    {
      goto LABEL_34;
    }

LABEL_47:
    v33 = *v15;
    v34 = v9[2];
    v239 = v11;
    if (v34 == (*v9 + v9[1]))
    {
      sub_1000A65B8(v263, v9[3], "attempting to parse a byte at the end of the bytecode");
      v36 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v263);
      if (v263[0])
      {
        mlir::InFlightDiagnostic::report(v263);
      }

      if (v281 == 1)
      {
        if (v279 != &v281)
        {
          free(v279);
        }

        v37 = __p;
        if (__p)
        {
          v38 = v278;
          v39 = __p;
          if (v278 != __p)
          {
            do
            {
              v38 = sub_10005BEF4(v38 - 1);
            }

            while (v38 != v37);
            v39 = __p;
          }

          v278 = v37;
          operator delete(v39);
        }

        v40 = v275;
        if (v275)
        {
          v41 = v276;
          v42 = v275;
          if (v276 != v275)
          {
            do
            {
              v43 = *--v41;
              *v41 = 0;
              if (v43)
              {
                operator delete[]();
              }
            }

            while (v41 != v40);
            v42 = v275;
          }

          v276 = v40;
          operator delete(v42);
        }

        if (v265 != v267)
        {
          free(v265);
        }
      }

      if (!v36)
      {
        return 0;
      }

      v35 = 0;
      v251 = 0;
      if ((sub_1000AD1F0(a1, v9, &v251) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v9[2] = v34 + 1;
      v35 = *v34;
      v251 = 0;
      if ((sub_1000AD1F0(a1, v9, &v251) & 1) == 0)
      {
        return 0;
      }
    }

    mlir::OperationState::OperationState(v263, v251, v33);
    if (v35)
    {
      *__src = 0;
      if ((sub_1000A3554(v9, __src) & 1) == 0)
      {
        goto LABEL_461;
      }

      v44 = sub_1000A9ED4(v7, *__src);
      v246 = v44;
      if (!v44)
      {
        goto LABEL_461;
      }

      v45 = *(*v44 + 136);
      if (v45 == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
      {
        v46 = v44;
      }

      else
      {
        v46 = 0;
      }

      if (v45 == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
      {
        v46 = v44;
      }

      else
      {
        {
          sub_100299D0C();
        }

        *v254 = llvm::getTypeName<mlir::DictionaryAttr>(void)::Name;
        sub_1000ADC68(__src, v9[3], v254, &v246);
        v47 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(__src);
        if (*__src)
        {
          mlir::InFlightDiagnostic::report(__src);
        }

        if (v300 == 1)
        {
          if (v299 != &v300)
          {
            free(v299);
          }

          v48 = v297;
          if (v297)
          {
            v49 = v298;
            v50 = v297;
            if (v298 != v297)
            {
              do
              {
                v49 = sub_10005BEF4(v49 - 1);
              }

              while (v49 != v48);
              v50 = v297;
            }

            v298 = v48;
            operator delete(v50);
          }

          v51 = v295;
          if (v295)
          {
            v52 = v296;
            v53 = v295;
            if (v296 != v295)
            {
              do
              {
                v54 = *--v52;
                *v52 = 0;
                if (v54)
                {
                  operator delete[]();
                }
              }

              while (v52 != v51);
              v53 = v295;
            }

            v296 = v51;
            operator delete(v53);
          }

          if (v288 != &v289)
          {
            free(v288);
          }
        }

        if (!v47)
        {
          goto LABEL_461;
        }
      }

      mlir::NamedAttrList::NamedAttrList(__src, v46);
      v55 = *__src;
      if (*__src != &__src[16])
      {
        if (__dst != &v274)
        {
          free(__dst);
          v55 = *__src;
        }

        __dst = v55;
        v273 = *&__src[8];
        *__src = &__src[16];
        *&__src[8] = 0;
        v280 = v292;
        goto LABEL_108;
      }

      v78 = *&__src[8];
      v79 = v273;
      if (v273 >= *&__src[8])
      {
        if (*&__src[8])
        {
          memmove(__dst, *__src, 16 * *&__src[8]);
        }

        goto LABEL_170;
      }

      if (HIDWORD(v273) >= *&__src[8])
      {
        if (v273)
        {
          memmove(__dst, *__src, 16 * v273);
          goto LABEL_168;
        }
      }

      else
      {
        LODWORD(v273) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, &v274, *&__src[8], 16);
      }

      v79 = 0;
LABEL_168:
      if (*&__src[8] != v79)
      {
        memcpy(__dst + 16 * v79, (*__src + 16 * v79), 16 * (*&__src[8] - v79));
      }

LABEL_170:
      LODWORD(v273) = v78;
      *&__src[8] = 0;
      v280 = v292;
      if (*__src != &__src[16])
      {
        free(*__src);
      }
    }

LABEL_108:
    if ((v35 & 0x40) == 0)
    {
      goto LABEL_199;
    }

    if ((v16 & 0x100) == 0)
    {
      v216 = a1[1];
      WORD4(v255) = 259;
      mlir::emitError(v216, v254, __src);
      if (*__src)
      {
        v217 = *v243;
        LODWORD(v246) = 5;
        v247[0] = v217;
        v218 = &v246;
        v219 = v288;
        if (DWORD2(v288) >= HIDWORD(v288))
        {
          if (v288 <= &v246 && v288 + 24 * DWORD2(v288) > &v246)
          {
            v235 = &v247[-1] - v288;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v288, &v289, DWORD2(v288) + 1, 24);
            v219 = v288;
            v218 = &v235[v288];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v288, &v289, DWORD2(v288) + 1, 24);
            v218 = &v246;
            v219 = v288;
          }
        }

        v220 = v219 + 24 * DWORD2(v288);
        v221 = *v218;
        *(v220 + 16) = v218[2];
        *v220 = v221;
        v222 = ++DWORD2(v288);
        if (*__src)
        {
          LODWORD(v246) = 3;
          v247[0] = " with properties.";
          v247[1] = 17;
          v223 = &v246;
          v224 = v288;
          if (v222 >= HIDWORD(v288))
          {
            if (v288 <= &v246 && v288 + 24 * v222 > &v246)
            {
              v236 = &v247[-1] - v288;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v288, &v289, v222 + 1, 24);
              v224 = v288;
              v223 = &v236[v288];
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v288, &v289, v222 + 1, 24);
              v223 = &v246;
              v224 = v288;
            }
          }

          v225 = v224 + 24 * DWORD2(v288);
          v226 = *v223;
          *(v225 + 16) = v223[2];
          *v225 = v226;
          ++DWORD2(v288);
          if (*__src)
          {
            mlir::InFlightDiagnostic::report(__src);
          }
        }
      }

      if (v300 == 1)
      {
        if (v299 != &v300)
        {
          free(v299);
        }

        v227 = v297;
        if (v297)
        {
          v228 = v298;
          v229 = v297;
          if (v298 != v297)
          {
            do
            {
              v228 = sub_10005BEF4(v228 - 1);
            }

            while (v228 != v227);
            v229 = v297;
          }

          v298 = v227;
          operator delete(v229);
        }

        v230 = v295;
        if (v295)
        {
          v231 = v296;
          v232 = v295;
          if (v296 != v295)
          {
            do
            {
              v233 = *--v231;
              *v231 = 0;
              if (v233)
              {
                operator delete[]();
              }
            }

            while (v231 != v230);
            v232 = v295;
          }

          v296 = v230;
          operator delete(v232);
        }

        if (v288 != &v289)
        {
          free(v288);
        }
      }

LABEL_461:
      mlir::OperationState::~OperationState(v263);
      return 0;
    }

    v246 = off_1002D5F88;
    v247[0] = v244;
    v247[1] = v242;
    *&v248 = v241;
    *(&v248 + 1) = v240;
    v249 = v9;
    v250 = v243;
    v56 = a1[1];
    v259 = 0;
    if ((sub_1000A3554(v9, &v259) & 1) == 0)
    {
      goto LABEL_461;
    }

    if (v259 >= *(a1 + 156))
    {
      v260 = "Properties idx out-of-bound for ";
      v262 = 259;
      (*(v246 + 16))(__src, &v246, &v260);
      *v254 = *(v33 + 8);
      Value = mlir::StringAttr::getValue(v254);
      if (*__src)
      {
        WORD4(v255) = 261;
        *v254 = Value;
        *&v254[8] = v69;
        mlir::Diagnostic::operator<<(&__src[8], v254);
      }

      v70 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(__src);
      if (*__src)
      {
        mlir::InFlightDiagnostic::report(__src);
      }

      if (v300 == 1)
      {
        if (v299 != &v300)
        {
          free(v299);
        }

        v71 = v297;
        if (v297)
        {
          v72 = v298;
          v73 = v297;
          if (v298 != v297)
          {
            do
            {
              v72 = sub_10005BEF4(v72 - 1);
            }

            while (v72 != v71);
            v73 = v297;
          }

          v298 = v71;
          operator delete(v73);
        }

        v74 = v295;
        if (v295)
        {
          v75 = v296;
          v76 = v295;
          if (v296 == v295)
          {
            goto LABEL_195;
          }

          do
          {
            v77 = *--v75;
            *v75 = 0;
            if (v77)
            {
              operator delete[]();
            }
          }

          while (v75 != v74);
LABEL_194:
          v76 = v295;
          goto LABEL_195;
        }

LABEL_196:
        if (v288 != &v289)
        {
          free(v288);
        }
      }

LABEL_198:
      if (!v70)
      {
        goto LABEL_461;
      }

      goto LABEL_199;
    }

    v57 = a1[76];
    if (v259 >= v57)
    {
      v260 = "Properties offset out-of-bound for ";
      v262 = 259;
      (*(v246 + 16))(__src, &v246, &v260);
      *v254 = *(v33 + 8);
      v80 = mlir::StringAttr::getValue(v254);
      if (*__src)
      {
        WORD4(v255) = 261;
        *v254 = v80;
        *&v254[8] = v81;
        mlir::Diagnostic::operator<<(&__src[8], v254);
      }

      v70 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(__src);
      if (*__src)
      {
        mlir::InFlightDiagnostic::report(__src);
      }

      if (v300 != 1)
      {
        goto LABEL_198;
      }

      if (v299 != &v300)
      {
        free(v299);
      }

      v82 = v297;
      if (v297)
      {
        v83 = v298;
        v84 = v297;
        if (v298 != v297)
        {
          do
          {
            v83 = sub_10005BEF4(v83 - 1);
          }

          while (v83 != v82);
          v84 = v297;
        }

        v298 = v82;
        operator delete(v84);
      }

      v74 = v295;
      if (!v295)
      {
        goto LABEL_196;
      }

      v85 = v296;
      v76 = v295;
      if (v296 != v295)
      {
        do
        {
          v86 = *--v85;
          *v85 = 0;
          if (v86)
          {
            operator delete[]();
          }
        }

        while (v85 != v74);
        goto LABEL_194;
      }

LABEL_195:
      v296 = v74;
      operator delete(v76);
      goto LABEL_196;
    }

    v58 = *(a1[77] + 8 * v259);
    *v254 = a1[75] + v58;
    *&v254[8] = v57 - v58;
    *&v254[16] = *v254;
    *&v255 = v56;
    *&__src[8] = *v247;
    v288 = v248;
    *__src = off_1002D5F88;
    v289 = v254;
    v290 = v250;
    v252[0] = 0;
    v260 = 0;
    v261 = 0;
    if ((sub_1000A3554(v254, v252) & 1) == 0 || !sub_1000A7B24(v289, v252[0], &v260))
    {
      goto LABEL_461;
    }

    v258[0] = v260;
    v258[1] = v261;
    v258[2] = v260;
    v258[3] = v56;
    *&v254[8] = *v247;
    v255 = v248;
    *v254 = off_1002D5F88;
    v256 = v258;
    v257 = v250;
    {
      v59 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id;
      v60 = *(v33 + 32);
      v61 = *(v33 + 40);
      if (!v61)
      {
        goto LABEL_175;
      }
    }

    else
    {
      sub_100299BD0();
      v59 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id;
      v60 = *(v33 + 32);
      v61 = *(v33 + 40);
      if (!v61)
      {
        goto LABEL_175;
      }
    }

    v62 = v60;
    v63 = v61;
    do
    {
      v64 = v63 >> 1;
      v65 = &v62[2 * (v63 >> 1)];
      v67 = *v65;
      v66 = (v65 + 2);
      v63 += ~(v63 >> 1);
      if (v67 < v59)
      {
        v62 = v66;
      }

      else
      {
        v63 = v64;
      }
    }

    while (v63);
    if (v62 != &v60[2 * v61] && *v62 == v59)
    {
      v188 = v62[1];
      if (v188)
      {
        if (((*v188)(v254, v263) & 1) == 0)
        {
          goto LABEL_461;
        }

        goto LABEL_199;
      }
    }

LABEL_175:
    if (*(v33 + 16) != &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v252[0] = "has properties but missing BytecodeOpInterface for ";
      v253 = 259;
      sub_1000A8DDC(v254, v252, __src);
      v260 = *(v33 + 8);
      v87 = mlir::StringAttr::getValue(&v260);
      if (*__src)
      {
        v262 = 261;
        v260 = v87;
        v261 = v88;
        mlir::Diagnostic::operator<<(&__src[8], &v260);
      }

      v70 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(__src);
      if (*__src)
      {
        mlir::InFlightDiagnostic::report(__src);
      }

      if (v300 != 1)
      {
        goto LABEL_198;
      }

      if (v299 != &v300)
      {
        free(v299);
      }

      v89 = v297;
      if (v297)
      {
        v90 = v298;
        v91 = v297;
        if (v298 != v297)
        {
          do
          {
            v90 = sub_10005BEF4(v90 - 1);
          }

          while (v90 != v89);
          v91 = v297;
        }

        v298 = v89;
        operator delete(v91);
      }

      v74 = v295;
      if (!v295)
      {
        goto LABEL_196;
      }

      v92 = v296;
      v76 = v295;
      if (v296 != v295)
      {
        do
        {
          v93 = *--v92;
          *v92 = 0;
          if (v93)
          {
            operator delete[]();
          }
        }

        while (v92 != v74);
        goto LABEL_194;
      }

      goto LABEL_195;
    }

    v171 = *&v254[8];
    *__src = 0;
    if ((sub_1000A3554(v256, __src) & 1) == 0)
    {
      goto LABEL_461;
    }

    if (!sub_1000A9ED4(v171, *__src))
    {
      goto LABEL_461;
    }

LABEL_199:
    if ((v35 & 2) != 0)
    {
      *v254 = 0;
      if ((sub_1000A3554(v9, v254) & 1) == 0)
      {
        goto LABEL_461;
      }

      v121 = *v254;
      v122 = v269;
      if (*v254 == v269)
      {
        v123 = v244;
        if (*v254 >= 1)
        {
          goto LABEL_274;
        }
      }

      else
      {
        v123 = v244;
        if (*v254 >= v269)
        {
          if (*v254 > v270)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v268, &v271, *v254, 8);
            v122 = v269;
          }

          if (v121 != v122)
          {
            bzero((v268 + 8 * v122), 8 * (v121 - v122));
          }
        }

        v269 = v121;
        if (v121 >= 1)
        {
LABEL_274:
          v127 = 0;
          v128 = v121 & 0x7FFFFFFF;
          do
          {
            v129 = v268;
            *__src = 0;
            if ((sub_1000A3554(v9, __src) & 1) == 0)
            {
              goto LABEL_461;
            }

            v130 = sub_1000AAE24(v123, *__src);
            *(v129 + 8 * v127) = v130;
            if (!v130)
            {
              goto LABEL_461;
            }
          }

          while (v128 != ++v127);
        }
      }
    }

    v7 = v244;
    if ((v35 & 4) != 0)
    {
      v252[0] = 0;
      if ((sub_1000A3554(v9, v252) & 1) == 0)
      {
        goto LABEL_461;
      }

      v94 = v252[0];
      v95 = v265;
      if (v252[0] != v265)
      {
        if (v252[0] >= v265)
        {
          if (v252[0] > HIDWORD(v265))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v264, &v266, v252[0], 8);
            v95 = v265;
          }

          if (v94 != v95)
          {
            bzero(&v264[v95], 8 * &v94[-v95]);
          }
        }

        LODWORD(v265) = v94;
      }

      if (v94 >= 1)
      {
        v96 = 0;
        v97 = v94 & 0x7FFFFFFF;
        while (1)
        {
          v98 = a1[86];
          v260 = 0;
          if ((sub_1000A3554(v9, &v260) & 1) == 0)
          {
            goto LABEL_460;
          }

          v99 = v260;
          v100 = v9[3];
          v102 = *(v98 - 56);
          v101 = *(v98 - 48);
          *v254 = "value";
          *&v254[8] = 5;
          v246 = v260;
          if (v260 >= (v101 - v102) >> 3)
          {
            break;
          }

          v103 = *(v102 + 8 * v260);
          if (v103)
          {
            v264[v96] = v103;
          }

          else
          {
            ForwardRef = mlir::BytecodeReader::Impl::createForwardRef(a1, v100);
            *(v102 + 8 * v99) = ForwardRef;
            v264[v96] = ForwardRef;
            if (!ForwardRef)
            {
              goto LABEL_461;
            }
          }

          if (v97 == ++v96)
          {
            goto LABEL_218;
          }
        }

        sub_1000A895C(__src, v100, v254, &v246);
        mlir::InFlightDiagnostic::operator llvm::LogicalResult(__src);
        if (*__src)
        {
          mlir::InFlightDiagnostic::report(__src);
        }

        if (v300 == 1)
        {
          if (v299 != &v300)
          {
            free(v299);
          }

          v209 = v297;
          if (v297)
          {
            v210 = v298;
            v211 = v297;
            if (v298 != v297)
            {
              do
              {
                v210 = sub_10005BEF4(v210 - 1);
              }

              while (v210 != v209);
              v211 = v297;
            }

            v298 = v209;
            operator delete(v211);
          }

          v212 = v295;
          if (v295)
          {
            v213 = v296;
            v214 = v295;
            if (v296 != v295)
            {
              do
              {
                v215 = *--v213;
                *v213 = 0;
                if (v215)
                {
                  operator delete[]();
                }
              }

              while (v213 != v212);
              v214 = v295;
            }

            v296 = v212;
            operator delete(v214);
          }

          if (v288 != &v289)
          {
            free(v288);
          }
        }

LABEL_460:
        v264[v96] = 0;
        goto LABEL_461;
      }
    }

LABEL_218:
    if ((v35 & 8) != 0)
    {
      v252[0] = 0;
      if ((sub_1000A3554(v9, v252) & 1) == 0)
      {
        goto LABEL_461;
      }

      v105 = v252[0];
      v106 = v282;
      if (v252[0] != v282)
      {
        if (v252[0] >= v282)
        {
          if (v252[0] > v283)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v281, &v284, v252[0], 8);
            v106 = v282;
          }

          if (v105 != v106)
          {
            bzero((v281 + 8 * v106), 8 * &v105[-v106]);
          }
        }

        v282 = v105;
      }

      if (v105 >= 1)
      {
        v107 = 0;
        v108 = v105 & 0x7FFFFFFF;
        do
        {
          v109 = v281;
          v260 = 0;
          if ((sub_1000A3554(v9, &v260) & 1) == 0)
          {
            goto LABEL_461;
          }

          v110 = v9[3];
          v111 = a3[5];
          v112 = *(a3 + 12);
          *v254 = "successor";
          *&v254[8] = 9;
          v246 = v260;
          if (v260 < v112)
          {
            *(v109 + 8 * v107) = *(v111 + 8 * v260);
          }

          else
          {
            sub_1000A895C(__src, v110, v254, &v246);
            v113 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(__src);
            if (*__src)
            {
              mlir::InFlightDiagnostic::report(__src);
            }

            if (v300 == 1)
            {
              if (v299 != &v300)
              {
                free(v299);
              }

              v114 = v297;
              if (v297)
              {
                v115 = v298;
                v116 = v297;
                if (v298 != v297)
                {
                  do
                  {
                    v115 = sub_10005BEF4(v115 - 1);
                  }

                  while (v115 != v114);
                  v116 = v297;
                }

                v298 = v114;
                operator delete(v116);
              }

              v117 = v295;
              if (v295)
              {
                v118 = v296;
                v119 = v295;
                if (v296 != v295)
                {
                  do
                  {
                    v120 = *--v118;
                    *v118 = 0;
                    if (v120)
                    {
                      operator delete[]();
                    }
                  }

                  while (v118 != v117);
                  v119 = v295;
                }

                v296 = v117;
                operator delete(v119);
              }

              if (v288 != &v289)
              {
                free(v288);
              }
            }

            if (!v113)
            {
              goto LABEL_461;
            }
          }
        }

        while (++v107 != v108);
      }
    }

    v124 = *v243 > 2 && (v35 >> 5) & 1;
    if (v124)
    {
      sub_1000AD3EC(__src, v9, v269);
      if ((v288 & 1) == 0)
      {
        goto LABEL_461;
      }

      v245 = *__src;
      v237 = *&__src[16];
      llvm::deallocate_buffer(0, 0, 8uLL);
      if ((v35 & 0x10) == 0)
      {
LABEL_280:
        v125 = 0;
        v11 = v239;
        goto LABEL_281;
      }
    }

    else
    {
      v245 &= 0xFFFFFFFFFFFFFF00;
      if ((v35 & 0x10) == 0)
      {
        goto LABEL_280;
      }
    }

    *__src = 0;
    if ((sub_1000A3554(v9, __src) & 1) == 0)
    {
      v125 = 0;
      v131 = 0;
      v162 = 0;
      v11 = v239;
      if (!v124)
      {
        goto LABEL_341;
      }

      goto LABEL_323;
    }

    v125 = __src[0];
    v126 = *__src >> 1;
    sub_1000AD78C(&v285, *__src >> 1);
    v11 = v239;
    if (v126 >= 1)
    {
      operator new();
    }

LABEL_281:
    v131 = mlir::Operation::create(v263);
    v132 = a3[13];
    if (v132)
    {
      v133 = v132 - 8;
    }

    else
    {
      v133 = 0;
    }

    llvm::ilist_traits<mlir::Operation>::addNodeToList(v133 + 32, v131);
    llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr();
    v134 = *(v133 + 32);
    *v135 = v134;
    v135[1] = v133 + 32;
    *(v134 + 8) = v135;
    *(v133 + 32) = v135;
    llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr();
    if (*(a3 + 8))
    {
      v136 = v131[9];
      if (v136)
      {
        mlir::ValueRange::ValueRange(__src, (v131 - 4), v136);
        if (!sub_1000AD8F4(a1, v9[3], *__src, *&__src[8]))
        {
          v131 = 0;
          v162 = 0;
          if (!v124)
          {
            goto LABEL_341;
          }

LABEL_323:
          v163 = v237;
          if (!v237)
          {
LABEL_335:
            v237 = 0;
            v170 = 0;
LABEL_340:
            llvm::deallocate_buffer(v245, v170, 8uLL);
            goto LABEL_341;
          }

LABEL_324:
          v164 = v125;
          v165 = v11;
          v166 = v163;
          v167 = 48 * v163;
          v168 = (v245 + 24);
          do
          {
            if (*(v168 - 6) <= 0xFFFFFFFD)
            {
              v169 = *(v168 - 2);
              if (v168 != v169)
              {
                free(v169);
              }
            }

            v168 += 48;
            v167 -= 48;
          }

          while (v167);
          v170 = 48 * v166;
          v11 = v165;
          v125 = v164;
          v7 = v244;
          goto LABEL_340;
        }
      }
    }

    if (!v124)
    {
      mlir::OperationState::~OperationState(v263);
      goto LABEL_342;
    }

    v137 = v131[9];
    if (!v137)
    {
      v162 = 1;
      v163 = v237;
      if (!v237)
      {
        goto LABEL_335;
      }

      goto LABEL_324;
    }

    if (!v237)
    {
      v237 = 0;
      v170 = 0;
      v162 = 1;
      goto LABEL_340;
    }

    v138 = v11;
    v139 = 0;
    v140 = v237 - 1;
    do
    {
      v146 = (37 * v139) & v140;
      v147 = (v245 + 48 * v146);
      v148 = *v147;
      if (*v147 == v139)
      {
LABEL_294:
        v149 = &v131[-6 * (v139 - 5) - 24];
        if (v139 <= 5)
        {
          v149 = &v131[4 * ~v139];
        }

        *__src = v149;
        if (v148 != v139)
        {
          v156 = 1;
          while (v148 != -1)
          {
            v157 = v146 + v156++;
            v146 = v157 & v140;
            v147 = (v245 + 48 * (v157 & v140));
            v148 = *v147;
            if (*v147 == v139)
            {
              goto LABEL_297;
            }
          }

          v147 = (v245 + 48 * v237);
        }

LABEL_297:
        v150 = *(a1 + 132);
        if (v150)
        {
          v141 = a1[64];
          v142 = v150 - 1;
          v143 = v142 & ((v149 >> 4) ^ (v149 >> 9));
          v144 = (v141 + 48 * v143);
          v145 = *v144;
          if (v149 == *v144)
          {
            goto LABEL_292;
          }

          v158 = 0;
          v159 = 1;
          while (v145 != -4096)
          {
            if (v158)
            {
              v160 = 0;
            }

            else
            {
              v160 = v145 == -8192;
            }

            if (v160)
            {
              v158 = v144;
            }

            v161 = v143 + v159++;
            v143 = v161 & v142;
            v144 = (v141 + 48 * v143);
            v145 = *v144;
            if (v149 == *v144)
            {
              goto LABEL_292;
            }
          }

          if (v158)
          {
            v151 = v158;
          }

          else
          {
            v151 = v144;
          }
        }

        else
        {
          v151 = 0;
        }

        sub_1000AEC4C(a1 + 64, v151, __src, (v147 + 2));
        v137 = v131[9];
      }

      else
      {
        v152 = 1;
        v153 = *v147;
        v154 = (37 * v139) & v140;
        while (v153 != -1)
        {
          v155 = v154 + v152++;
          v154 = v155 & v140;
          v153 = *(v245 + 48 * v154);
          if (v153 == v139)
          {
            goto LABEL_294;
          }
        }
      }

LABEL_292:
      ++v139;
    }

    while (v139 < v137);
    v162 = 1;
    v7 = v244;
    v11 = v138;
    if (v124)
    {
      goto LABEL_323;
    }

LABEL_341:
    mlir::OperationState::~OperationState(v263);
    if (!v162)
    {
      return 0;
    }

LABEL_342:
    v172 = v131[11];
    if ((v172 & 0x7FFFFF) != 0)
    {
      break;
    }

    v5 = a2;
    v194 = a3[14];
    a3[14] = v194 - 1;
    if (!v194)
    {
      goto LABEL_400;
    }
  }

  *__src = ((&v131[4 * ((v172 >> 23) & 1) + 17] + ((v172 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v131[10];
  *&__src[8] = *__src + 24 * (v172 & 0x7FFFFF);
  *&__src[16] = v9;
  *&v288 = 0;
  DWORD2(v288) = 0;
  v289 = v291;
  v290 = 0x600000000;
  v293 = 0uLL;
  v294 = v125 & 1;
  if (*v243 < 2 || (v125 & 1) == 0)
  {
    v173 = a2[1];
    if (v173 >= a2[2])
    {
      a2[1] = sub_1000AF92C(a2, __src);
      if (v125)
      {
LABEL_383:
        v191 = a1[86];
        if (v191 >= a1[87])
        {
          v192 = sub_1000AF688(a1 + 85);
        }

        else
        {
          *(v191 + 16) = 0u;
          *(v191 + 32) = 0u;
          *(v191 + 48) = 0;
          *v191 = 0u;
          *(v191 + 24) = v191 + 40;
          v192 = v191 + 56;
          *(v191 + 36) = 4;
        }

        a1[86] = v192;
      }

LABEL_387:
      v179 = 1;
      goto LABEL_388;
    }

    v174 = *__src;
    *(v173 + 16) = *&__src[16];
    *v173 = v174;
    v175 = v288;
    *&v288 = 0;
    *(v173 + 24) = v175;
    *(v173 + 32) = DWORD2(v288);
    v176 = (v173 + 56);
    *(v173 + 40) = v173 + 56;
    *(v173 + 48) = 0x600000000;
    if (v173 == __src || (v177 = v290) == 0)
    {
LABEL_382:
      v190 = v293;
      *(v173 + 120) = v294;
      *(v173 + 104) = v190;
      a2[1] = v173 + 128;
      if (v125)
      {
        goto LABEL_383;
      }

      goto LABEL_387;
    }

    v178 = v289;
    if (v289 != v291)
    {
      *(v173 + 40) = v289;
      *(v173 + 48) = v177;
      *(v173 + 52) = HIDWORD(v290);
      v289 = v291;
      HIDWORD(v290) = 0;
LABEL_381:
      LODWORD(v290) = 0;
      goto LABEL_382;
    }

    if (v290 < 7)
    {
      v189 = v290;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v173 + 40, (v173 + 56), v290, 8);
      v189 = v290;
      if (!v290)
      {
LABEL_380:
        *(v173 + 48) = v177;
        goto LABEL_381;
      }

      v178 = v289;
      v176 = *(v173 + 40);
    }

    memcpy(v176, v178, 8 * v189);
    goto LABEL_380;
  }

  LOBYTE(v260) = 0;
  v246 = 0;
  v247[0] = 0;
  if (sub_1000A0684(v9, &v260, &v246))
  {
    if (v260 == 4)
    {
      operator new();
    }

    v180 = a1[1];
    *v254 = "expected IR section for region";
    WORD4(v255) = 259;
    mlir::emitError(v180, v254, v263);
    v179 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v263);
    if (v263[0])
    {
      mlir::InFlightDiagnostic::report(v263);
    }

    if (v281 == 1)
    {
      if (v279 != &v281)
      {
        free(v279);
      }

      v181 = __p;
      if (__p)
      {
        v182 = v278;
        v183 = __p;
        if (v278 != __p)
        {
          do
          {
            v182 = sub_10005BEF4(v182 - 1);
          }

          while (v182 != v181);
          v183 = __p;
        }

        v278 = v181;
        operator delete(v183);
      }

      v184 = v275;
      if (v275)
      {
        v185 = v276;
        v186 = v275;
        if (v276 != v275)
        {
          do
          {
            v187 = *--v185;
            *v185 = 0;
            if (v187)
            {
              operator delete[]();
            }
          }

          while (v185 != v184);
          v186 = v275;
        }

        v276 = v184;
        operator delete(v186);
      }

      if (v265 != v267)
      {
        free(v265);
      }
    }
  }

  else
  {
    v179 = 0;
  }

LABEL_388:
  if (v289 != v291)
  {
    free(v289);
  }

  v193 = v288;
  *&v288 = 0;
  if (v193)
  {
    operator delete();
  }

  return v179;
}