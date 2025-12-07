uint64_t sub_1819E0398(uint64_t result, uint64_t a2)
{
  if (!*(result + 60))
  {
    v13[3] = v2;
    v13[4] = v3;
    v4 = *(a2 + 32);
    if (*(*result + 116) == 1)
    {
      v5 = *(a2 + 68);
      v6 = *(a2 + 16);
      if (v5 >= *(v6 + 3))
      {
        v5 = *(v6 + 3);
      }

      *(a2 + 124) = 0;
      *(a2 + 120) = 1;
      if (v5 <= v4 || (v7 = *v6, *(*v6 + v4)))
      {
        LODWORD(v8) = v4;
      }

      else
      {
        *(a2 + 124) = 1;
        v8 = v4 + 1;
        if (v8 >= v5 || *(v7 + v8))
        {
          *(a2 + 120) = 0;
        }

        else
        {
          *(a2 + 120) = 1;
          LODWORD(v8) = v4 + 2;
        }
      }
    }

    else
    {
      result = **(a2 + 16) + v4;
      v9 = *result;
      if (*result < 0)
      {
        v10 = *(result + 1);
        if (*(result + 1) < 0)
        {
          v11 = *(result + 2);
          if (v11 < 0)
          {
            v13[0] = 0;
            v12 = a2;
            result = sub_1819DFFB0(result, v13);
            a2 = v12;
            v9 = v13[0] & 0x7FFFFFFF;
          }

          else
          {
            v9 = ((v9 & 0x7F) << 14) | ((v10 & 0x7F) << 7) | v11;
            result = 3;
          }
        }

        else
        {
          v9 = ((v9 & 0x7F) << 7) | v10;
          result = 2;
        }

        LODWORD(v8) = result + v4;
      }

      else
      {
        LODWORD(v8) = v4 + 1;
      }

      *(a2 + 124) = v9 & 1;
      *(a2 + 120) = v9 >> 1;
    }

    *(a2 + 32) = v8;
  }

  return result;
}

uint64_t sub_1819E04E8(uint64_t result, _DWORD *a2, int a3)
{
  v5 = result;
  v6 = a3;
  v7 = &a2[8 * a3];
  v8 = v7[4];
  if (v8 <= v7[6])
  {
    v7[5] = 1;
    goto LABEL_12;
  }

  v9 = **(v7 + 1);
  v7[4] = 0;
  sub_1819DFB20((v7 + 2));
  for (i = v7[4]; ; v7[4] = i)
  {
    v16 = 0;
    v11 = i;
    if (*(v9 + i))
    {
      v12 = 1;
    }

    else
    {
      v12 = 1;
      do
      {
        v13 = *(v9 + 1 + v11++);
        ++v12;
      }

      while (!v13);
      i = v11;
    }

    result = sub_1819DFFB0((v9 + v11), &v16);
    i += result;
    if (i >= v8)
    {
      break;
    }

    v7[7] += v12;
    *(v7 + 4) += v16;
  }

  if (v7[5])
  {
LABEL_12:
    if (a3 + 1 >= *a2)
    {
      return result;
    }

    result = sub_1819E04E8(v5, a2, a3 + 1);
    if (v7[13])
    {
      return result;
    }

    v14 = *(v7 + 1);
    if (!v14)
    {
      goto LABEL_21;
    }

    v15 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v14);
      --qword_1ED456A90;
      off_1ED452EB0(v14);
      v14 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_21;
      }

      v15 = &xmmword_1ED452F28;
    }

    (*v15)(v14);
LABEL_21:
    *(v7 + 6) = 0u;
    *(v7 + 2) = 0u;
    result = sub_1819DFC90(v5, (v6 << 31) + (a2[1] << 37) + 0x1000000000 + v7[15]);
    *(v7 + 1) = result;
    if (result)
    {
      do
      {
        result = sub_1819DFB20((v7 + 2));
      }

      while (!result);
      v7[5] = 0;
    }
  }

  return result;
}

uint64_t sub_1819E06E0(_DWORD *a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(*a1 + 116);
  v5 = *(a2 + 16);
  v6 = *(a2 + 32);
  v7 = *v5;
  if (*(v5 + 3) >= *(a2 + 68))
  {
    v8 = *(a2 + 68);
  }

  else
  {
    v8 = *(v5 + 3);
  }

  for (i = *(a2 + 32); ; *(a2 + 32) = i)
  {
    v24 = 0;
    if (v4 == 1)
    {
      if (i < v8 && !*(v7 + i))
      {
        v10 = i + 1;
        if (v10 >= v8)
        {
          LODWORD(i) = i + 1;
        }

        else if (*(v7 + v10))
        {
          LODWORD(i) = i + 1;
        }

        else
        {
          LODWORD(i) = i + 2;
        }
      }
    }

    else
    {
      v11 = (v7 + i);
      v12 = *v11;
      if (*v11 < 0)
      {
        v14 = v11[1];
        if (v11[1] < 0)
        {
          v15 = v11[2];
          if (v15 < 0)
          {
            v25 = 0;
            v13 = sub_1819DFFB0(v11, &v25);
            v12 = v25 & 0x7FFFFFFF;
          }

          else
          {
            v12 = ((v12 & 0x7F) << 14) | ((v14 & 0x7F) << 7) | v15;
            v13 = 3;
          }
        }

        else
        {
          v12 = ((v12 & 0x7F) << 7) | v14;
          v13 = 2;
        }
      }

      else
      {
        v13 = 1;
      }

      LODWORD(i) = v13 + i + (v12 >> 1);
    }

    if (i >= v8)
    {
      break;
    }

    v16 = sub_1819DFFB0((v7 + i), &v24);
    *(a2 + 112) += v24;
    v17 = *(a2 + 76);
    v18 = *(a2 + 80);
    if (v3 >= v17)
    {
      v19 = v17 + 8;
      v20 = sqlite3_initialize();
      if (!v19 || v20 || (v21 = sub_18190287C(v18, 4 * v19, 0x100004052888210)) == 0)
      {
        a1[15] = 7;
        break;
      }

      v18 = v21;
      *(a2 + 80) = v21;
      *(a2 + 76) = v19;
      v6 = *(a2 + 32);
    }

    *(v18 + 4 * v3) = v6;
    LODWORD(i) = i + v16;
    ++v3;
    LODWORD(v6) = i;
  }

  *(a2 + 72) = v3;

  return sub_1819E0398(a1, a2);
}

uint64_t *sub_1819E08CC(uint64_t *result, uint64_t *a2, uint64_t a3)
{
  if (*a2 <= a3)
  {
    v3 = a3 & 0x7FFFFFFF00000000;
    if ((a3 & 0x7FFFFFFF00000000) == (*a2 & 0x7FFFFFFF00000000))
    {
      v4 = *(result + 2);
      v3 = *a2;
    }

    else
    {
      v5 = *result;
      v6 = *(result + 2);
      *(result + 2) = v6 + 1;
      *(v5 + v6) = 1;
      v7 = (*result + *(result + 2));
      if ((a3 >> 32) > 0x7F)
      {
        if ((a3 >> 32) >> 14)
        {
          v9 = result;
          v10 = a2;
          v11 = a3;
          v12 = sub_1819436D0((*result + *(result + 2)), a3 >> 32);
          a2 = v10;
          a3 = v11;
          v8 = v12;
          result = v9;
        }

        else
        {
          *v7 = (HIDWORD(a3) >> 7) | 0x80;
          v7[1] = BYTE4(a3) & 0x7F;
          v8 = 2;
        }
      }

      else
      {
        *v7 = BYTE4(a3);
        v8 = 1;
      }

      v4 = *(result + 2) + v8;
      *(result + 2) = v4;
    }

    v13 = (*result + v4);
    v14 = a3 - v3 + 2;
    if (v14 > 0x7F)
    {
      if (v14 >> 14)
      {
        v16 = result;
        v17 = a2;
        v18 = a3;
        v19 = sub_1819436D0(v13, v14);
        a2 = v17;
        a3 = v18;
        v15 = v19;
        result = v16;
      }

      else
      {
        v13->i8[0] = (v14 >> 7) | 0x80;
        v13->i8[1] = v14 & 0x7F;
        v15 = 2;
      }
    }

    else
    {
      v13->i8[0] = v14;
      v15 = 1;
    }

    *(result + 2) += v15;
    *a2 = a3;
  }

  return result;
}

uint64_t sub_1819E0A34(uint64_t a1, int a2, int *a3, uint64_t *a4)
{
  v4 = *a3;
  if (v4 >= a2)
  {
LABEL_28:
    *a4 = -1;
    return 1;
  }

  v5 = *a4;
  v6 = a1 + v4;
  v7 = *(a1 + v4);
  if (*(a1 + v4) < 0)
  {
    v9 = *(v6 + 1);
    if (*(v6 + 1) < 0)
    {
      v10 = *(v6 + 2);
      if (v10 < 0)
      {
        v35 = 0;
        v11 = a1;
        v12 = a4;
        v13 = a3;
        v14 = sub_1819DFFB0((a1 + v4), &v35);
        a3 = v13;
        a4 = v12;
        v8 = v14;
        a1 = v11;
        v7 = v35 & 0x7FFFFFFF;
      }

      else
      {
        v7 = ((v7 & 0x7F) << 14) | ((v9 & 0x7F) << 7) | v10;
        v8 = 3;
      }
    }

    else
    {
      v7 = ((v7 & 0x7F) << 7) | v9;
      v8 = 2;
    }
  }

  else
  {
    v8 = 1;
  }

  v15 = v8 + v4;
  if (v7 > 1)
  {
    v19 = v5 & 0x7FFFFFFF00000000 | (v7 + v5 + 2147483646) & 0x7FFFFFFF;
LABEL_30:
    result = 0;
    *a4 = v19;
    goto LABEL_31;
  }

  if (v7)
  {
    v16 = (a1 + v15);
    v17 = *v16;
    if (*v16 < 0)
    {
      v21 = v16[1];
      if (v16[1] < 0)
      {
        v22 = v16[2];
        if ((v22 & 0x80000000) != 0)
        {
          v35 = 0;
          v23 = a1;
          v24 = a4;
          v25 = a3;
          v26 = sub_1819DFFB0((a1 + v15), &v35);
          a3 = v25;
          a4 = v24;
          v18 = v26;
          a1 = v23;
          v17 = v35 & 0x7FFFFFFF;
        }

        else
        {
          v17 = ((v17 & 0x7F) << 14) | ((v21 & 0x7F) << 7) | v22;
          v18 = 3;
        }
      }

      else
      {
        v17 = ((v17 & 0x7F) << 7) | v21;
        v18 = 2;
      }
    }

    else
    {
      v18 = 1;
    }

    v27 = v18 + v15;
    v28 = (a1 + v27);
    v29 = *v28;
    if (*v28 < 0)
    {
      v31 = v28[1];
      if (v28[1] < 0)
      {
        v32 = v28[2];
        if (v32 < 0)
        {
          v35 = 0;
          v33 = a4;
          v34 = a3;
          v30 = sub_1819DFFB0(v28, &v35);
          a3 = v34;
          a4 = v33;
          v29 = v35 & 0x7FFFFFFF;
        }

        else
        {
          v29 = ((v29 & 0x7F) << 14) | ((v31 & 0x7F) << 7) | v32;
          v30 = 3;
        }
      }

      else
      {
        v29 = ((v29 & 0x7F) << 7) | v31;
        v30 = 2;
      }
    }

    else
    {
      v30 = 1;
    }

    if (v29 <= 1)
    {
      goto LABEL_28;
    }

    v15 = v30 + v27;
    v19 = (v17 << 32) | (v29 + 2147483646) & 0x7FFFFFFF;
    goto LABEL_30;
  }

  result = 0;
LABEL_31:
  *a3 = v15;
  return result;
}

uint64_t sub_1819E0C64(uint64_t a1, uint64_t a2)
{
  v151 = *MEMORY[0x1E69E9840];
  v141 = *(a2 + 32);
  v3 = v141 + 24;
  v2 = *(v141 + 24);
  v4 = *(a1 + 24);
  if (*(v2 + 64))
  {
    v5 = 0;
    v6 = 0;
    v7 = v2 + 32;
    do
    {
      v8 = *(v7 + 24);
      if (!*(v8 + 20))
      {
        v9 = *v8;
        if (v6 && v4 == v9 < v5)
        {
          v6 = 1;
        }

        else
        {
          v6 = 1;
          v5 = v9;
        }
      }

      v7 = *(v7 + 32);
    }

    while (v7);
  }

  else
  {
    v5 = **(v2 + 56);
  }

  v10 = *(v141 + 16);
  do
  {
    if (v10 < 1)
    {
      break;
    }

    v11 = 0;
    v12 = 1;
    do
    {
      v13 = *(v3 + 8 * v11);
      if (*(v13 + 24) >= 1)
      {
        v143 = v11;
        v14 = 0;
        v15 = v13 + 32;
        while (1)
        {
          v17 = v15 + 40 * v14;
          if (!*(v17 + 32))
          {
            v35 = *(v17 + 24);
            v36 = *v35;
            if (*v35 != v5)
            {
              v37 = v4 != 0;
              if (v5 >= v36)
              {
                v37 = 0;
              }

              if ((v5 <= v36 || v4 != 0) && !v37)
              {
                v12 = 0;
                v5 = *v35;
              }

              else
              {
                if (*(v35 + 72))
                {
                  v40 = *(v35 + 32);
                  do
                  {
                    sub_1819DEB74(v40, v35, 1, v5);
                    if (*(v40 + 60))
                    {
                      break;
                    }

                    if (*(v35 + 20))
                    {
                      break;
                    }

                    v41 = *(v35 + 104 + (*(*(v35 + 96) + 4) << 7) + 112);
                    v42 = *(v35 + 76);
                    if (!v42 && v41 >= v5)
                    {
                      break;
                    }
                  }

                  while (!v42 || v41 > v5);
                }

                else
                {
                  sub_1819DEA54(*(v17 + 24), 1, v5);
                }

                v43 = *(v35 + 32);
                v16 = *(v43 + 60);
                *(v43 + 60) = 0;
                if (v16 || (v12 = *(v35 + 20), *(v35 + 20)))
                {
                  *(a2 + 4) = 1;
                  return v16;
                }

                v5 = *v35;
              }
            }

            goto LABEL_18;
          }

          v18 = 0;
          v19 = 0;
          v20 = v15 + 40 * v14;
          do
          {
            v21 = *(v20 + 24);
            if (!*(v21 + 20))
            {
              v22 = *v21;
              if (v19 && v4 == v22 < v18)
              {
                v19 = 1;
              }

              else
              {
                v19 = 1;
                v18 = v22;
              }
            }

            v20 = *(v20 + 32);
          }

          while (v20);
          if (v18 == v5)
          {
            goto LABEL_18;
          }

          v23 = v15 + 40 * v14;
          while (1)
          {
            v24 = *(v23 + 24);
            if (!*(v24 + 20))
            {
              v25 = v4 != 0;
              if (v5 >= *v24)
              {
                v25 = 0;
              }

              v26 = v5 > *v24 && v4 == 0;
              if (v26 || v25)
              {
                break;
              }
            }

            v16 = 0;
LABEL_30:
            v23 = *(v23 + 32);
            if (!v23)
            {
              goto LABEL_52;
            }
          }

          if (*(v24 + 72))
          {
            v28 = *(v24 + 32);
            do
            {
              sub_1819DEB74(v28, v24, 1, v5);
              if (*(v28 + 60))
              {
                break;
              }

              if (*(v24 + 20))
              {
                break;
              }

              v29 = *(v24 + 104 + (*(*(v24 + 96) + 4) << 7) + 112);
              v30 = *(v24 + 76);
              if (!v30 && v29 >= v5)
              {
                break;
              }
            }

            while (!v30 || v29 > v5);
          }

          else
          {
            sub_1819DEA54(*(v23 + 24), 1, v5);
          }

          v31 = *(v24 + 32);
          v16 = *(v31 + 60);
          *(v31 + 60) = 0;
          if (!v16)
          {
            goto LABEL_30;
          }

LABEL_52:
          if (v16)
          {
            goto LABEL_87;
          }

          v5 = 0;
          v32 = 0;
          do
          {
            v33 = *(v17 + 24);
            if (!*(v33 + 20))
            {
              v34 = *v33;
              if (v32 && v4 == v34 < v5)
              {
                v32 = 1;
              }

              else
              {
                v32 = 1;
                v5 = v34;
              }
            }

            v17 = *(v17 + 32);
          }

          while (v17);
          v16 = 0;
          v12 = 0;
          if (!v32)
          {
LABEL_87:
            *(a2 + 4) = 1;
            return v16;
          }

LABEL_18:
          if (++v14 >= *(v13 + 24))
          {
            v11 = v143;
            v10 = *(v141 + 16);
            v3 = v141 + 24;
            break;
          }
        }
      }

      ++v11;
    }

    while (v11 < v10);
  }

  while (!v12);
  *(a2 + 24) = v5;
  v44 = *(a2 + 32);
  if (*(*(a1 + 8) + 116))
  {
    v45 = 0;
    v46 = *(v44 + 3);
    *(v46 + 16) = 0;
    v47 = v46 + 32;
    do
    {
      v48 = *(v47 + 24);
      if (!*(v48 + 20) && *v48 == v5 && *(v48 + 16) >= 1)
      {
        v45 = 1;
        *(v46 + 16) = 1;
      }

      v47 = *(v47 + 32);
    }

    while (v47);
    v16 = 0;
    v50 = v45 == 0;
    goto LABEL_268;
  }

  v51 = 0;
  v142 = v44 + 6;
  v139 = *(a2 + 32);
  while (1)
  {
    if (v51 >= v44[4])
    {
      v16 = 0;
      goto LABEL_194;
    }

    v52 = *&v142[2 * v51];
    v53 = *(v52 + 24);
    v144 = v51;
    if (v53 > 1)
    {
      v149 = 0;
      v54 = *(v52 + 33);
      *(v52 + 16) = 0;
      if (v53 < 5)
      {
        v56 = v150;
      }

      else
      {
        if (sqlite3_initialize() || (v55 = sub_181902484(32 * v53, 0x105004075591D9DLL)) == 0)
        {
          v16 = 7;
          v44 = v139;
          LODWORD(v51) = v144;
          goto LABEL_194;
        }

        v56 = v55;
        LODWORD(v53) = *(v52 + 24);
      }

LABEL_108:
      bzero(v56, 32 * v53);
      LODWORD(v57) = *(v52 + 24);
      if (v57 >= 1)
      {
        v58 = 0;
        v59 = v52 + 32;
        v60 = v56;
        while (1)
        {
          v148 = 0;
          v147 = 0;
          if (*(v59 + 32))
          {
            v146[0] = 0;
            v146[1] = 0;
            v16 = sub_1819E1AA4(v59, *(a2 + 24), v146, &v147, &v148);
            v61 = v147;
            if (v16)
            {
              if (v147)
              {
                v80 = &off_1ED452EB0;
                if (!dword_1ED452E80)
                {
                  goto LABEL_156;
                }

                if (xmmword_1ED456AF0)
                {
                  v81 = v147;
                  xmmword_1ED452F18(xmmword_1ED456AF0);
                  v61 = v81;
                }

                v82 = v61;
                qword_1ED456A48[0] -= xmmword_1ED452EC0(v61);
                --qword_1ED456A90;
                off_1ED452EB0(v82);
                v61 = xmmword_1ED456AF0;
                if (xmmword_1ED456AF0)
                {
                  v80 = &xmmword_1ED452F28;
LABEL_156:
                  (*v80)(v61);
                }
              }

              goto LABEL_157;
            }

            v62 = v147 == v146[0];
            v63 = v148;
          }

          else
          {
            v62 = 0;
            v64 = *(v59 + 24);
            v61 = *(v64 + 8);
            v147 = v61;
            v63 = *(v64 + 16);
            v148 = v63;
          }

          *v60 = 0u;
          *(v60 + 1) = 0u;
          *v60 = v61;
          *(v60 + 2) = v63;
          if (sub_1819E0A34(v61, v63, v60 + 3, v60 + 3))
          {
            v16 = 0;
            *(v60 + 17) = 1;
            *(v60 + 16) = v62;
            goto LABEL_157;
          }

          v65 = *(v60 + 17);
          *(v60 + 16) = v62;
          if (v65)
          {
LABEL_147:
            v16 = 0;
            goto LABEL_157;
          }

          ++v58;
          v57 = *(v52 + 24);
          v60 += 4;
          v59 += 40;
          if (v58 >= v57)
          {
            goto LABEL_117;
          }
        }
      }

      do
      {
LABEL_117:
        v66 = *(v56 + 3);
        do
        {
          if (v57 < 1)
          {
            break;
          }

          v67 = 0;
          v68 = 1;
          do
          {
            v69 = &v56[32 * v67];
            v70 = v66 + v67;
            v71 = (v69 + 24);
            if (*(v69 + 3) != v66 + v67)
            {
              while (1)
              {
                v72 = *v71;
                if (*v71 >= v70)
                {
                  break;
                }

                if (sub_1819E0A34(*v69, *(v69 + 2), v69 + 3, v71))
                {
                  v16 = 0;
                  v69[17] = 1;
                  goto LABEL_157;
                }

                if (v69[17])
                {
                  goto LABEL_147;
                }
              }

              v68 = 0;
              if (v72 > v70)
              {
                v66 = v72 - v67;
              }

              LODWORD(v57) = *(v52 + 24);
            }

            ++v67;
          }

          while (v67 < v57);
        }

        while (!v68);
        if (!v54 || (v66 & 0x7FFFFFFF) == 0)
        {
          LODWORD(v73) = *(v52 + 20);
          v74 = (*(v52 + 16) + 15);
          if (v74 > v73)
          {
            if (!v73)
            {
              LODWORD(v73) = 64;
            }

            v73 = v73;
            do
            {
              v75 = v73;
              v73 *= 2;
            }

            while (v75 < v74);
            v76 = *(v52 + 8);
            if (sqlite3_initialize() || (v77 = sub_18190287C(v76, v75, 688041480)) == 0)
            {
              v16 = 7;
              goto LABEL_157;
            }

            *(v52 + 20) = v75;
            *(v52 + 8) = v77;
          }

          sub_1819E08CC((v52 + 8), &v149, v66);
          LODWORD(v57) = *(v52 + 24);
        }
      }

      while (v57 < 1);
      v78 = 0;
      v79 = v56 + 12;
      while (!sub_1819E0A34(*(v79 - 12), *(v79 - 1), v79, (v79 + 12)))
      {
        if (v79[5])
        {
          goto LABEL_147;
        }

        ++v78;
        v57 = *(v52 + 24);
        v79 += 32;
        if (v78 >= v57)
        {
          goto LABEL_117;
        }
      }

      v16 = 0;
      v79[5] = 1;
LABEL_157:
      v83 = *(v52 + 16);
      if (*(v52 + 24) >= 1)
      {
        v84 = 0;
        v85 = v56 + 16;
        do
        {
          if (*v85)
          {
            v86 = *(v85 - 2);
            if (v86)
            {
              v87 = &off_1ED452EB0;
              if (dword_1ED452E80)
              {
                if (xmmword_1ED456AF0)
                {
                  xmmword_1ED452F18(xmmword_1ED456AF0);
                }

                qword_1ED456A48[0] -= xmmword_1ED452EC0(v86);
                --qword_1ED456A90;
                off_1ED452EB0(v86);
                v86 = xmmword_1ED456AF0;
                if (!xmmword_1ED456AF0)
                {
                  goto LABEL_160;
                }

                v87 = &xmmword_1ED452F28;
              }

              (*v87)(v86);
            }
          }

LABEL_160:
          ++v84;
          v85 += 32;
        }

        while (v84 < *(v52 + 24));
      }

      if (v56 == v150)
      {
        goto LABEL_175;
      }

      v88 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v56);
        --qword_1ED456A90;
        off_1ED452EB0(v56);
        v56 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
LABEL_175:
          v44 = v139;
          v51 = v144;
          if (v83 < 1)
          {
            goto LABEL_194;
          }

          goto LABEL_176;
        }

        v88 = &xmmword_1ED452F28;
      }

      (*v88)(v56);
      goto LABEL_175;
    }

    if (*(v52 + 64) || *(v44 + 1) || *(v52 + 33))
    {
      v149 = 0;
      v54 = *(v52 + 33);
      v56 = v150;
      *(v52 + 16) = 0;
      goto LABEL_108;
    }

    v89 = *(v52 + 56);
    v90 = *(v89 + 16);
    v91 = *(v89 + 8);
    *(v52 + 16) = 0;
    if (v90)
    {
      break;
    }

    v16 = 0;
LABEL_176:
    ++v51;
    if (v16)
    {
      goto LABEL_194;
    }
  }

  LODWORD(v92) = *(v52 + 20);
  if (v92 >= v90)
  {
    v96 = 0;
    v95 = *(v52 + 8);
    goto LABEL_189;
  }

  if (!v92)
  {
    LODWORD(v92) = 64;
  }

  v92 = v92;
  do
  {
    v93 = v92;
    v92 *= 2;
  }

  while (v93 < v90);
  v94 = *(v52 + 8);
  if (!sqlite3_initialize())
  {
    v95 = sub_18190287C(v94, v93, 688041480);
    if (v95)
    {
      *(v52 + 20) = v93;
      *(v52 + 8) = v95;
      v96 = *(v52 + 16);
LABEL_189:
      memcpy((v95 + v96), v91, v90);
      v16 = 0;
      *(v52 + 16) += v90;
      goto LABEL_176;
    }
  }

  LODWORD(v51) = v51 + 1;
  v16 = 7;
LABEL_194:
  if (v51 != v44[4])
  {
    goto LABEL_267;
  }

  if (v51 == 1)
  {
    v50 = 0;
    goto LABEL_268;
  }

  if (v51 >= 5)
  {
    if (v16)
    {
      goto LABEL_267;
    }

    if (sqlite3_initialize() || (v104 = sub_181902484(48 * v51, 1913357809)) == 0)
    {
      v16 = 7;
      goto LABEL_267;
    }

    v97 = v104;
    bzero(v104, 48 * v51);
    if (v44[4] < 1)
    {
      goto LABEL_212;
    }

LABEL_203:
    v98 = 0;
    v99 = v97 + 3;
    do
    {
      v100 = *&v142[2 * v98];
      v101 = *(v100 + 8);
      v102 = *(v100 + 16);
      *(v99 - 3) = 0u;
      *(v99 - 1) = 0u;
      *(v99 - 3) = v101;
      *(v99 - 4) = v102;
      *(v99 - 1) = *v99;
      if (sub_1819E0A34(v101, v102, v99 - 3, v99))
      {
        v103 = 0x4000000000000000;
        *v99 = 0x4000000000000000;
      }

      else
      {
        v103 = *v99;
      }

      *(v99 - 1) = v103;
      if (sub_1819E0A34(*(v99 - 3), *(v99 - 4), v99 - 3, v99))
      {
        *v99 = 0x4000000000000000;
      }

      *(v100 + 16) = 0;
      v99[2] = v100 + 8;
      ++v98;
      v99 += 6;
    }

    while (v98 < v44[4]);
    goto LABEL_212;
  }

  memset(v150, 0, sizeof(v150));
  if (v16)
  {
    goto LABEL_267;
  }

  v97 = v150;
  if (v51 >= 1)
  {
    goto LABEL_203;
  }

LABEL_212:
  v105 = v97;
  v106 = v97 + 3;
  while (2)
  {
    v107 = v105;
    v108 = *(v105 + 2);
    v109 = v139;
    v110 = v139[4];
    do
    {
      if (v110 < 1)
      {
        goto LABEL_232;
      }

      v111 = 0;
      v112 = 1;
      do
      {
        v113 = &v107[3 * v111];
        v114 = v108 - *v109 - *(*&v142[2 * v111] + 24);
        v115 = *(v113 + 2);
        if (v115 > v108 || v115 < v114)
        {
          while (v115 < v114)
          {
            *(v113 + 2) = *(v113 + 3);
            if (sub_1819E0A34(*v113, *(v113 + 2), v113 + 3, v113 + 3))
            {
              *(v113 + 3) = 0x4000000000000000;
            }

            v115 = *(v113 + 2);
            if (v115 == 0x4000000000000000)
            {
              goto LABEL_257;
            }
          }

          v112 = 0;
          if (v115 > v108)
          {
            v108 = v115;
          }

          v109 = v139;
          v110 = v139[4];
        }

        else
        {
          v109 = v139;
        }

        ++v111;
        v107 = v105;
      }

      while (v111 < v110);
    }

    while (!v112);
    if (v110 < 1)
    {
LABEL_232:
      v118 = 0;
      v119 = v106;
      goto LABEL_233;
    }

    v117 = 0;
    while (2)
    {
      v123 = &v105[3 * v117];
      v145 = v123[2];
      v124 = v123[5];
      v125 = *(v124 + 8);
      if (!v125 || v145 != v123[4])
      {
        v126 = (v125 + 15);
        LODWORD(v127) = *(v124 + 12);
        if (v126 <= v127)
        {
          goto LABEL_238;
        }

        if (!v127)
        {
          LODWORD(v127) = 64;
        }

        v127 = v127;
        do
        {
          v128 = v127;
          v127 *= 2;
        }

        while (v128 < v126);
        v138 = *v124;
        if (!sqlite3_initialize())
        {
          v129 = sub_18190287C(v138, v128, 688041480);
          if (v129)
          {
            *(v124 + 12) = v128;
            *v124 = v129;
LABEL_238:
            sub_1819E08CC(v124, v123 + 4, v145);
          }
        }
      }

      ++v117;
      v122 = v139[4];
      if (v117 < v122)
      {
        continue;
      }

      break;
    }

    v120 = *v106;
    if (v122 < 1)
    {
      v118 = 0;
    }

    else
    {
      v130 = 0;
      v131 = 0;
      v132 = v106;
      do
      {
        v134 = *v132;
        v132 += 6;
        v133 = v134;
        if (v134 < v120)
        {
          v131 = v130;
          v120 = v133;
        }

        ++v130;
      }

      while (v122 != v130);
      v118 = v131;
      v119 = &v105[3 * v131 + 1] + 1;
LABEL_233:
      v120 = *v119;
    }

    v121 = &v105[3 * v118];
    *(v121 + 2) = v120;
    if (sub_1819E0A34(*v121, *(v121 + 2), v121 + 3, v121 + 3))
    {
      *(v121 + 3) = 0x4000000000000000;
    }

    if (*(v121 + 2) != 0x4000000000000000)
    {
      continue;
    }

    break;
  }

LABEL_257:
  v135 = *(*(v105 + 5) + 8);
  if (v105 != v150)
  {
    v136 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_263;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v105);
    --qword_1ED456A90;
    off_1ED452EB0(v105);
    v105 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v136 = &xmmword_1ED452F28;
LABEL_263:
      (*v136)(v105);
    }
  }

  if (v135 > 0)
  {
    v16 = 0;
    v50 = 0;
    goto LABEL_268;
  }

  v16 = 0;
LABEL_267:
  v50 = 1;
LABEL_268:
  if (v16)
  {
    v50 = 0;
  }

  *(a2 + 8) = v50;
  return v16;
}

uint64_t sub_1819E1AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, _DWORD *a5)
{
  v39 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v8 = 0;
    v11 = v38;
    goto LABEL_26;
  }

  v7 = a1;
  v8 = 0;
  v9 = 4;
  v10 = 0x1ED452000uLL;
  v11 = v38;
  do
  {
    v12 = *(v7 + 24);
    if (*(v12 + 20) || *v12 != a2 || !*(v12 + 16))
    {
      goto LABEL_4;
    }

    if (v8 == v9)
    {
      if (sqlite3_initialize() || (v13 = sub_181902484(v8 << 6, 0x105004075591D9DLL)) == 0)
      {
        v20 = 7;
        goto LABEL_54;
      }

      v14 = v13;
      v15 = v8;
      memcpy(v13, v11, 32 * v8);
      v9 = 2 * v8;
      if (v11 == v38 || !v11)
      {
        goto LABEL_20;
      }

      v16 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          (*(v10 + 3864))();
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v11);
        --qword_1ED456A90;
        off_1ED452EB0(v11);
        v11 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          v10 = 0x1ED452000;
          goto LABEL_20;
        }

        v16 = &xmmword_1ED452F28;
        v10 = 0x1ED452000;
      }

      (*v16)(v11);
    }

    else
    {
      v15 = v8;
      v14 = v11;
    }

LABEL_20:
    v17 = *(v12 + 8);
    v18 = *(v12 + 16);
    v19 = &v14[4 * v15];
    *v19 = 0u;
    *(v19 + 1) = 0u;
    *v19 = v17;
    *(v19 + 2) = v18;
    if (sub_1819E0A34(v17, v18, v19 + 3, v19 + 3))
    {
      *(v19 + 17) = 1;
    }

    ++v8;
    v11 = v14;
LABEL_4:
    v7 = *(v7 + 32);
  }

  while (v7);
  if (v8 == 1)
  {
    v20 = 0;
    *a4 = *v11;
    v21 = *(v11 + 2);
    goto LABEL_53;
  }

LABEL_26:
  v37 = 0;
  *(a3 + 8) = 0;
  if (v8 < 1)
  {
    v20 = 0;
    goto LABEL_51;
  }

  v20 = 0;
  v22 = -1;
  v23 = v8;
  while (2)
  {
    v25 = v22;
    v22 = 0x7FFFFFFFFFFFFFFFLL;
    v26 = v23;
    v27 = v11 + 3;
    while (2)
    {
      if (!*(v27 - 7))
      {
        v28 = *v27;
        if (*v27 == v25)
        {
          if (sub_1819E0A34(*(v27 - 3), *(v27 - 4), v27 - 3, v27))
          {
            *(v27 - 7) = 1;
            goto LABEL_34;
          }

          if (!*(v27 - 7))
          {
            v28 = *v27;
            goto LABEL_32;
          }
        }

        else
        {
LABEL_32:
          if (v28 < v22)
          {
            v22 = v28;
          }
        }
      }

LABEL_34:
      v27 += 4;
      if (--v26)
      {
        continue;
      }

      break;
    }

    if (!v20 && v22 != 0x7FFFFFFFFFFFFFFFLL)
    {
      LODWORD(v29) = *(a3 + 12);
      v30 = (*(a3 + 8) + 15);
      if (v30 > v29)
      {
        if (!v29)
        {
          LODWORD(v29) = 64;
        }

        v29 = v29;
        do
        {
          v31 = v29;
          v29 *= 2;
        }

        while (v31 < v30);
        v32 = *a3;
        if (sqlite3_initialize() || (v24 = sub_18190287C(v32, v31, 688041480)) == 0)
        {
          v20 = 7;
          continue;
        }

        *(a3 + 12) = v31;
        *a3 = v24;
      }

      sub_1819E08CC(a3, &v37, v22);
      v20 = 0;
      continue;
    }

    break;
  }

LABEL_51:
  if (!v20)
  {
    *a4 = *a3;
    v21 = *(a3 + 8);
LABEL_53:
    *a5 = v21;
  }

LABEL_54:
  if (v11 != v38 && v11)
  {
    v33 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_61;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v11);
    --qword_1ED456A90;
    off_1ED452EB0(v11);
    v11 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v33 = &xmmword_1ED452F28;
LABEL_61:
      (*v33)(v11);
    }
  }

  return v20;
}

uint64_t sub_1819E1EA4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  LODWORD(v5) = *(a2 + 40);
  while (2)
  {
    *(a2 + 8) = 0;
    if (v5 < 1)
    {
      goto LABEL_21;
    }

    v6 = 1;
    v7 = 6;
    v8 = v4;
    do
    {
      v10 = *(a2 + 8 * v7);
      v11 = *(v10 + 24);
      if (*(a1 + 24))
      {
        if (v8 >= v11)
        {
          goto LABEL_10;
        }
      }

      else if (v8 <= v11)
      {
        goto LABEL_10;
      }

      result = (*(v10 + 16))(a1, *(a2 + 8 * v7), 1, v8);
      if (result)
      {
        *(a2 + 8) = 0;
        return result;
      }

LABEL_10:
      if (*(v10 + 4))
      {
        sub_1819E1FC4(a2);
        v4 = v8;
        goto LABEL_18;
      }

      v4 = *(v10 + 24);
      if (v8 != v4)
      {
        v6 = 0;
      }

      if (*(v10 + 8))
      {
        *(a2 + 8) = 1;
      }

      v5 = *(a2 + 40);
      v9 = v7 - 5;
      ++v7;
      v8 = v4;
    }

    while (v9 < v5);
    if (!v6)
    {
      continue;
    }

    break;
  }

LABEL_18:
  if (*(a2 + 8))
  {
    if (*(a1 + 16) != a2)
    {
      sub_1819E2024(a2);
    }
  }

LABEL_21:
  result = 0;
  *(a2 + 24) = v4;
  return result;
}

uint64_t sub_1819E1FC4(uint64_t result)
{
  *(result + 4) = 1;
  if (*(result + 40) >= 1)
  {
    v1 = result;
    v2 = 0;
    v3 = result + 48;
    do
    {
      result = sub_1819E1FC4(*(v3 + 8 * v2++));
    }

    while (v2 < *(v1 + 40));
  }

  return result;
}

uint64_t sub_1819E2024(uint64_t result)
{
  v1 = result;
  if (*result == 4 || *result == 9)
  {
    v3 = *(result + 32);
    if (*(v3 + 16) >= 1)
    {
      v4 = 0;
      do
      {
        *(*(v3 + 24 + 8 * v4++) + 16) = 0;
      }

      while (v4 < *(v3 + 16));
    }
  }

  else if (*(result + 40) >= 1)
  {
    v5 = 0;
    do
    {
      result = sub_1819E2024(*(v1 + 48 + 8 * v5++));
    }

    while (v5 < *(v1 + 40));
  }

  return result;
}

uint64_t sub_1819E20BC(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 48);
  v4 = *(a2 + 56);
  while (1)
  {
    v6 = *(v5 + 4);
    if (v6)
    {
      goto LABEL_17;
    }

    if (*(v4 + 4))
    {
      goto LABEL_16;
    }

    v7 = *(v5 + 24);
    v8 = *(v4 + 24);
    if (!*(a1 + 24))
    {
      break;
    }

    if (v7 > v8)
    {
      goto LABEL_16;
    }

    if (v7 < v8)
    {
      goto LABEL_7;
    }

LABEL_13:
    result = 0;
    if (*(v4 + 8))
    {
      goto LABEL_18;
    }

LABEL_14:
    result = (*(v5 + 16))(a1, v5, 0, 0);
    if (result)
    {
      v6 = *(v5 + 4);
      goto LABEL_19;
    }
  }

  if (v7 < v8)
  {
LABEL_16:
    v6 = 0;
LABEL_17:
    result = 0;
    goto LABEL_19;
  }

  if (v7 <= v8)
  {
    goto LABEL_13;
  }

LABEL_7:
  result = (*(v4 + 16))(a1, v4, 1);
  v6 = *(v5 + 4);
  if (*(v4 + 4) | v6)
  {
    goto LABEL_19;
  }

  if (*(v5 + 24) == *(v4 + 24) && !*(v4 + 8))
  {
    goto LABEL_14;
  }

LABEL_18:
  v6 = 0;
LABEL_19:
  *(a2 + 4) = v6;
  *(a2 + 8) = *(v5 + 8);
  *(a2 + 24) = *(v5 + 24);
  if (*(v5 + 4))
  {
    v10 = result;
    sub_1819E2024(v4);
    return v10;
  }

  return result;
}

uint64_t sub_1819E21D0(uint64_t a1, char a2, char *__s, int a4)
{
  result = *(a1 + 16);
  if (!result)
  {
    v6 = *a1;
    if (a4 >= 0x8000)
    {
      v7 = 0x8000;
    }

    else
    {
      v7 = a4;
    }

    if (v6)
    {
      v8 = *(v6 + 24);
      if ((a2 & 1) != 0 && v8 >= 1)
      {
        v9 = __s;
        if (!sqlite3_initialize())
        {
          v10 = sub_181902484(v7 + 57, 0x1030040CA688EAFLL);
          if (v10)
          {
            v11 = v10;
            bzero(v10, v7 + 57);
            *(v11 + 1) = v11 + 56;
            *(v11 + 4) = v7;
            *(v11 + 5) = v7;
            if (*(*(a1 + 8) + 108))
            {
              *(v11 + 4) = strlen(v11 + 56);
            }

            memcpy(v11 + 56, v9, v7);
            result = 0;
            v12 = v6 + 40 * *(v6 + 24);
            *(v11 + 4) = *(v12 + 24);
            *(v12 + 24) = v11;
            goto LABEL_32;
          }
        }

LABEL_17:
        result = 7;
LABEL_32:
        *(a1 + 16) = result;
        return result;
      }

      if ((v8 & 7) != 0)
      {
        v13 = *a1;
        goto LABEL_22;
      }
    }

    else
    {
      v8 = 0;
    }

    v14 = a4;
    v15 = __s;
    if (sqlite3_initialize())
    {
      goto LABEL_17;
    }

    v13 = sub_18190287C(v6, 40 * (v8 + 9) + 32, 0x1030040CA688EAFLL);
    if (!v13)
    {
      goto LABEL_17;
    }

    if (!v6)
    {
      *(v13 + 64) = 0;
      *(v13 + 32) = 0u;
      *(v13 + 48) = 0u;
      *v13 = 0u;
      *(v13 + 16) = 0u;
    }

    *a1 = v13;
    *(v13 + 24) = v8;
    __s = v15;
    a4 = v14;
LABEL_22:
    v16 = __s;
    v17 = v13 + 40 * v8;
    *(v13 + 24) = v8 + 1;
    *(v17 + 32) = 0u;
    *(v17 + 48) = 0u;
    v18 = v17 + 32;
    *(v18 + 32) = 0;
    v19 = v7;
    if (a4 < 0)
    {
      v19 = strlen(__s);
    }

    v20 = sqlite3_initialize();
    v21 = 0;
    v22 = 0;
    result = 7;
    if ((v19 & 0x80000000) == 0 && !v20)
    {
      v23 = sub_181902484(v19 + 1, 0x100004077774924);
      v21 = v23;
      if (v23)
      {
        memcpy(v23, v16, v19);
        result = 0;
        v21[v19] = 0;
        v22 = 1;
      }

      else
      {
        v22 = 0;
        result = 7;
      }
    }

    *(v18 + 8) = v21;
    *(v18 + 16) = v7;
    *(v18 + 20) = v7;
    if (v22 && *(*(a1 + 8) + 108))
    {
      v24 = strlen(v21);
      result = 0;
      *(v18 + 16) = v24;
    }

    goto LABEL_32;
  }

  return result;
}

uint64_t sub_1819E240C(uint64_t result, uint64_t a2, int *a3, void *a4)
{
  if (*(result + 16))
  {
    return result;
  }

  v7 = result;
  if (*a2 != 4 && *a2 != 9)
  {
    if (*(a2 + 40) >= 1)
    {
      v18 = 0;
      do
      {
        result = sub_1819E240C(v7, *(a2 + 48 + 8 * v18++), a3, a4);
      }

      while (v18 < *(a2 + 40));
    }

    return result;
  }

  v9 = *(a2 + 32);
  v10 = *(v9 + 8);
  if (v10)
  {
    v11 = *v10;
    if (*v10 <= 0)
    {
      *v10 = 0;
LABEL_26:
      *a2 = 0;
      *(a2 + 16) = 0;
      return result;
    }

    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = v10 + 1;
    while (v14 < *a3)
    {
      v16 = v15[v12];
      v17 = a3[v14 + 1];
      if (v16 == v17)
      {
        v15[v13++] = v16;
        ++v14;
        ++v12;
        v11 = *v10;
        if (v12 >= *v10)
        {
          break;
        }
      }

      else
      {
        if (v16 <= v17)
        {
          ++v12;
        }

        else
        {
          ++v14;
        }

        if (v12 >= v11)
        {
          break;
        }
      }
    }

    *v10 = v13;
    if (!v13)
    {
      goto LABEL_26;
    }
  }

  else if (*a4)
  {
    *(v9 + 8) = a3;
    *a4 = 0;
  }

  else
  {
    if (a3)
    {
      v19 = *a3;
      result = sqlite3_initialize();
      if (result || (v21 = 8 * ((v19 + 2) / 2), (result = sub_181902484(v21, 1913357809)) == 0))
      {
        v20 = 0;
        if ((v19 & 0x80000000) == 0)
        {
          *(v7 + 16) = 7;
        }
      }

      else
      {
        v20 = result;
        bzero(result, v21);
        result = memcpy(v20, a3, v21);
      }
    }

    else
    {
      v20 = 0;
    }

    *(v9 + 8) = v20;
  }

  return result;
}

_DWORD *sub_1819E25BC(uint64_t a1)
{
  if (!*(a1 + 160))
  {
    *(a1 + 152) = sub_1819DA194(a1);
    if (!*(a1 + 60))
    {
      v3 = *a1;
      v4 = sub_1819DFC90(a1, 10);
      if (*(a1 + 60))
      {
        goto LABEL_37;
      }

      v5 = *v4 + *(v4 + 2);
      *v5 = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      v6 = *v4;
      v105 = *(v4 + 2);
      v7 = **v4;
      LODWORD(v5) = *(*v4 + 4);
      v102 = v5 != 16777471;
      if (v5 == 16777471)
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }

      v9 = &v6[v8];
      v10 = LOBYTE(v6[v8]);
      if (SLOBYTE(v6[v8]) < 0)
      {
        v12 = *(v9 + 1);
        if (*(v9 + 1) < 0)
        {
          v13 = *(v9 + 2);
          if (v13 < 0)
          {
            v106 = 0;
            v14 = v4;
            v11 = sub_1819DFFB0(&v6[v8], &v106);
            v4 = v14;
            v10 = v106 & 0x7FFFFFFF;
          }

          else
          {
            v10 = ((v10 & 0x7F) << 14) | ((v12 & 0x7F) << 7) | v13;
            v11 = 3;
          }
        }

        else
        {
          v10 = ((v10 & 0x7F) << 7) | v12;
          v11 = 2;
        }
      }

      else
      {
        v11 = 1;
      }

      v15 = v11 + (v8 * 4);
      v16 = v6 + v15;
      v17 = *(v6 + v15);
      if (*(v6 + v15) < 0)
      {
        v19 = v16[1];
        if (v16[1] < 0)
        {
          v20 = v16[2];
          if (v20 < 0)
          {
            v106 = 0;
            v21 = v4;
            v18 = sub_1819DFFB0(v6 + v15, &v106);
            v4 = v21;
            v17 = v106 & 0x7FFFFFFF;
          }

          else
          {
            v17 = ((v17 & 0x7F) << 14) | ((v19 & 0x7F) << 7) | v20;
            v18 = 3;
          }
        }

        else
        {
          v17 = ((v17 & 0x7F) << 7) | v19;
          v18 = 2;
        }
      }

      else
      {
        v18 = 1;
      }

      v22 = 0;
      v23 = 267;
      if (v10 > 0x7D0 || v17 > 0x7D0)
      {
LABEL_29:
        *(a1 + 60) = v23;
        v24 = &off_1ED452EB0;
        if (!dword_1ED452E80)
        {
          goto LABEL_34;
        }

        goto LABEL_30;
      }

      v103 = v17;
      v99 = v4;
      if (sqlite3_initialize())
      {
        v22 = 0;
LABEL_27:
        v23 = 7;
        goto LABEL_28;
      }

      v27 = sub_181902484(16 * v10 + 32, 1913357809);
      v22 = v27;
      if (!v27)
      {
        goto LABEL_27;
      }

      v28 = v18 + v15;
      bzero(v27, 16 * v10 + 32);
      v29 = 1;
      *v22 = 1;
      *(v22 + 6) = v103;
      *(v22 + 7) = v10;
      v30 = sub_1819DFFB0(v6 + v28, v22 + 1);
      if (!v10)
      {
        v49 = 0;
        v51 = 1;
        v33 = v103;
        goto LABEL_121;
      }

      v93 = v7;
      v31 = 0;
      v32 = v28 + v30;
      v97 = v22 + 32;
      v98 = 0;
      v96 = v10 - 1;
      v94 = v3;
      v95 = v10;
      v33 = v103;
      while (1)
      {
        if (v32 >= v105)
        {
          v51 = 0;
          v49 = 267;
          goto LABEL_120;
        }

        v34 = &v97[16 * v31];
        v35 = v32;
        v36 = v6 + v32;
        v37 = *v36;
        if (*v36 < 0)
        {
          v39 = v36[1];
          if (v36[1] < 0)
          {
            v40 = v36[2];
            if (v40 < 0)
            {
              v106 = 0;
              v41 = v33;
              v38 = sub_1819DFFB0(v36, &v106);
              v33 = v41;
              v37 = v106 & 0x7FFFFFFF;
              *v34 = v106 & 0x7FFFFFFF;
            }

            else
            {
              v37 = ((v37 & 0x7F) << 14) | ((v39 & 0x7F) << 7) | v40;
              *v34 = v37;
              v38 = 3;
            }
          }

          else
          {
            v37 = ((v37 & 0x7F) << 7) | v39;
            *v34 = v37;
            v38 = 2;
          }
        }

        else
        {
          *v34 = v37;
          v38 = 1;
        }

        v42 = v35 + v38;
        v43 = v6 + v42;
        v44 = *(v6 + v42);
        if (*(v6 + v42) < 0)
        {
          v46 = v43[1];
          if (v43[1] < 0)
          {
            v47 = v43[2];
            if (v47 < 0)
            {
              v106 = 0;
              v48 = v33;
              v45 = sub_1819DFFB0(v43, &v106);
              v33 = v48;
              v44 = v106 & 0x7FFFFFFF;
            }

            else
            {
              v44 = ((v44 & 0x7F) << 14) | ((v46 & 0x7F) << 7) | v47;
              v45 = 3;
            }
          }

          else
          {
            v44 = ((v44 & 0x7F) << 7) | v46;
            v45 = 2;
          }
        }

        else
        {
          v45 = 1;
        }

        if (v44 < v37)
        {
          v49 = 267;
          goto LABEL_119;
        }

        v104 = v33;
        v32 = v45 + v42;
        if (!sqlite3_initialize())
        {
          v52 = sub_181902484(56 * v44, 1913357809);
          if (v52)
          {
            v53 = v52;
            bzero(v52, 56 * v44);
            *(v34 + 1) = v53;
            *(v34 + 1) = v44;
            if (v44)
            {
              v54 = 0;
              v100 = 56 * v44;
              v101 = v44;
              v33 = v104;
              while (v32 < v105)
              {
                v55 = *(v34 + 1);
                v56 = v6 + v32;
                v57 = *v56;
                if (*v56 < 0)
                {
                  v59 = v56[1];
                  if (v56[1] < 0)
                  {
                    v60 = v56[2];
                    if (v60 < 0)
                    {
                      v106 = 0;
                      v58 = sub_1819DFFB0(v56, &v106);
                      v33 = v104;
                      *(v55 + v54) = v106 & 0x7FFFFFFF;
                    }

                    else
                    {
                      *(v55 + v54) = ((v57 & 0x7F) << 14) | ((v59 & 0x7F) << 7) | v60;
                      v58 = 3;
                    }
                  }

                  else
                  {
                    *(v55 + v54) = ((v57 & 0x7F) << 7) | v59;
                    v58 = 2;
                  }
                }

                else
                {
                  *(v55 + v54) = v57;
                  v58 = 1;
                }

                v61 = v32 + v58;
                v62 = v6 + v61;
                v63 = v55 + v54;
                v64 = *(v6 + v61);
                if (*(v6 + v61) < 0)
                {
                  v66 = v62[1];
                  if (v62[1] < 0)
                  {
                    v67 = v62[2];
                    if (v67 < 0)
                    {
                      v106 = 0;
                      v65 = sub_1819DFFB0(v62, &v106);
                      v33 = v104;
                      v64 = v106 & 0x7FFFFFFF;
                      *(v63 + 4) = v106 & 0x7FFFFFFF;
                    }

                    else
                    {
                      v64 = ((v64 & 0x7F) << 14) | ((v66 & 0x7F) << 7) | v67;
                      *(v63 + 4) = v64;
                      v65 = 3;
                    }
                  }

                  else
                  {
                    v64 = ((v64 & 0x7F) << 7) | v66;
                    *(v63 + 4) = v64;
                    v65 = 2;
                  }
                }

                else
                {
                  *(v63 + 4) = v64;
                  v65 = 1;
                }

                v68 = v65 + v61;
                v69 = v6 + v68;
                v70 = v55 + v54;
                v71 = *v69;
                if (*v69 < 0)
                {
                  v73 = v69[1];
                  if (v69[1] < 0)
                  {
                    v74 = v69[2];
                    if (v74 < 0)
                    {
                      v106 = 0;
                      v72 = sub_1819DFFB0(v69, &v106);
                      v33 = v104;
                      v71 = v106 & 0x7FFFFFFF;
                      *(v70 + 8) = v106 & 0x7FFFFFFF;
                    }

                    else
                    {
                      v71 = ((v71 & 0x7F) << 14) | ((v73 & 0x7F) << 7) | v74;
                      *(v70 + 8) = v71;
                      v72 = 3;
                    }
                  }

                  else
                  {
                    v71 = ((v71 & 0x7F) << 7) | v73;
                    *(v70 + 8) = v71;
                    v72 = 2;
                  }
                }

                else
                {
                  *(v70 + 8) = v71;
                  v72 = 1;
                }

                v32 = v72 + v68;
                if (!v102)
                {
                  v75 = v55 + v54;
                  v76 = v32 + sub_1819DFFB0(v6 + v32, (v55 + v54 + 16));
                  v77 = v76 + sub_1819DFFB0(v6 + v76, (v55 + v54 + 24));
                  v78 = v6 + v77;
                  v79 = *v78;
                  if ((v79 & 0x80) != 0)
                  {
                    v81 = v78[1];
                    if (v78[1] < 0)
                    {
                      v82 = v78[2];
                      if (v82 < 0)
                      {
                        v106 = 0;
                        v80 = sub_1819DFFB0(v78, &v106);
                        *(v75 + 32) = v106 & 0x7FFFFFFF;
                      }

                      else
                      {
                        *(v75 + 32) = ((v79 & 0x7F) << 14) | ((v81 & 0x7F) << 7) | v82;
                        v80 = 3;
                      }
                    }

                    else
                    {
                      *(v75 + 32) = ((v79 & 0x7F) << 7) | v81;
                      v80 = 2;
                    }
                  }

                  else
                  {
                    *(v75 + 32) = v79;
                    v80 = 1;
                  }

                  v83 = v55 + v54;
                  v84 = v80 + v77 + sub_1819DFFB0(v6 + v80 + v77, (v83 + 40));
                  v32 = v84 + sub_1819DFFB0(v6 + v84, (v83 + 48));
                  v85 = v98;
                  if (v98 <= *(v75 + 24))
                  {
                    v85 = *(v75 + 24);
                  }

                  v98 = v85;
                  v71 = *(v70 + 8);
                  v64 = *(v63 + 4);
                  v33 = v104;
                }

                v44 = v101;
                v34 = &v97[16 * v31];
                if (v71 < v64)
                {
                  break;
                }

                v54 += 56;
                if (v100 == v54)
                {
                  v49 = 0;
                  goto LABEL_62;
                }
              }

              v49 = 267;
            }

            else
            {
              v49 = 0;
              v33 = v104;
            }

            goto LABEL_62;
          }
        }

        v33 = v104;
        if (v44)
        {
          break;
        }

        v49 = 0;
        *(v34 + 1) = 0;
        *(v34 + 1) = 0;
LABEL_62:
        if (v31)
        {
          if (*(v34 - 4) && v44 == 0)
          {
            v49 = 267;
          }
        }

        if (v31 == v96 && *v34)
        {
          v49 = 267;
        }

        v33 -= v44;
        v51 = v49 == 0;
        if (!v49 && ++v31 < v95)
        {
          continue;
        }

        goto LABEL_120;
      }

      v49 = 7;
LABEL_119:
      v51 = 0;
      *(v34 + 1) = 0;
      v33 -= v44;
LABEL_120:
      v29 = v98 + 1;
      v3 = v94;
      v7 = v93;
LABEL_121:
      if (v33 != 0 && v51)
      {
        v23 = 267;
      }

      else
      {
        v23 = v49;
      }

      if (!v102)
      {
        *(v22 + 2) = v29;
      }

      if (!v23)
      {
        v91 = bswap32(v7);
        *(a1 + 60) = 0;
        if (*(v3 + 196) && *(v3 + 192) == v91)
        {
          v4 = v99;
          v24 = &off_1ED452EB0;
          if (!dword_1ED452E80)
          {
            goto LABEL_34;
          }

LABEL_30:
          if (xmmword_1ED456AF0)
          {
            v25 = v4;
            xmmword_1ED452F18(xmmword_1ED456AF0);
            v4 = v25;
          }

          v26 = v4;
          qword_1ED456A48[0] -= xmmword_1ED452EC0(v4);
          --qword_1ED456A90;
          off_1ED452EB0(v26);
          v4 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_35;
          }

          v24 = &xmmword_1ED452F28;
LABEL_34:
          (*v24)(v4);
LABEL_35:
          if (!*(a1 + 60))
          {
            goto LABEL_38;
          }

          sub_1819D8AE8(v22);
LABEL_37:
          v22 = 0;
LABEL_38:
          *(a1 + 160) = v22;
          if (*(a1 + 60))
          {
            return 0;
          }

          goto LABEL_39;
        }

        v23 = sub_1819D6494(v3, v91);
        goto LABEL_28;
      }

      if ((*v22)-- > 1)
      {
        v22 = 0;
        goto LABEL_28;
      }

      if (*(v22 + 7) >= 1)
      {
        v87 = 0;
        v88 = (v22 + 40);
        do
        {
          v90 = *v88;
          if (*v88)
          {
            v89 = &off_1ED452EB0;
            if (dword_1ED452E80)
            {
              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v90);
              --qword_1ED456A90;
              off_1ED452EB0(v90);
              v90 = xmmword_1ED456AF0;
              if (!xmmword_1ED456AF0)
              {
                goto LABEL_133;
              }

              v89 = &xmmword_1ED452F28;
            }

            (*v89)(v90);
          }

LABEL_133:
          ++v87;
          v88 += 2;
        }

        while (v87 < *(v22 + 7));
      }

      v92 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v22);
        --qword_1ED456A90;
        off_1ED452EB0(v22);
        v22 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_28;
        }

        v92 = &xmmword_1ED452F28;
      }

      (*v92)(v22);
      v22 = 0;
LABEL_28:
      v4 = v99;
      goto LABEL_29;
    }
  }

  if (*(a1 + 60))
  {
    return 0;
  }

LABEL_39:
  result = *(a1 + 160);
  ++*result;
  return result;
}

uint64_t sub_1819E2F50(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  *(a2 + 4) = 0;
  *(a2 + 8) = 0;
  v4 = *a2;
  if (*a2 != 9 && v4 != 4)
  {
    if (!*(a2 + 16))
    {
      result = 0;
      *(a2 + 4) = 1;
      return result;
    }

    LODWORD(v36) = *(a2 + 40);
    if (v36 < 1)
    {
      v37 = 0;
      result = 0;
    }

    else
    {
      v37 = 0;
      v38 = 6;
      do
      {
        v39 = *(v2 + 8 * v38);
        result = sub_1819E2F50(a1, v39);
        v37 += *(v39 + 4);
        v40 = v38 - 5;
        v36 = *(v2 + 40);
        ++v38;
      }

      while (v40 < v36 && result == 0);
      v4 = *v2;
    }

    v42 = *(v2 + 48);
    *(v2 + 24) = *(v42 + 24);
    if (v4 == 1)
    {
      if (v36 == v37)
      {
LABEL_73:
        v43 = result;
        sub_1819E1FC4(v2);
        result = v43;
      }
    }

    else
    {
      if (v4 != 2)
      {
        *(v2 + 4) = *(v42 + 4);
        if (result)
        {
          return result;
        }

        goto LABEL_79;
      }

      if (v37 >= 1)
      {
        goto LABEL_73;
      }
    }

    if (result)
    {
      return result;
    }

LABEL_79:
    if (*(v2 + 4))
    {
      return 0;
    }

LABEL_85:
    v44 = *v2;
    if (*v2 > 3)
    {
      if (v44 == 4)
      {
        v52 = *(*(v2 + 32) + 24);
        v53 = *(v52 + 56);
        v54 = *(v53 + 16);
        *(v52 + 16) = v54;
        if (!*(*(a1 + 8) + 116))
        {
          *(v52 + 8) = *(v53 + 8);
        }

        result = 0;
        *(v2 + 24) = *v53;
        *(v2 + 8) = v54 == 0;
        return result;
      }

      if (v44 == 9)
      {

        return sub_1819E0C64(a1, v2);
      }

LABEL_96:

      return sub_1819E20BC(a1, v2);
    }

    if (v44 != 1)
    {
      if (v44 == 2)
      {

        return sub_1819E1EA4(a1, v2);
      }

      goto LABEL_96;
    }

    v45 = *(v2 + 48);
    v46 = *(v2 + 40);
    if (v46 < 2)
    {
LABEL_116:
      result = 0;
      *(v2 + 24) = *(v45 + 24);
      *(v2 + 4) = *(v45 + 4);
      *(v2 + 8) = *(v45 + 8);
      return result;
    }

    v47 = v46 - 1;
    v48 = v2 + 56;
    while (1)
    {
      v49 = *v48;
      if (*(*v48 + 4))
      {
        goto LABEL_102;
      }

      if (!*(v45 + 4))
      {
        v50 = *(v45 + 24);
        v51 = *(v49 + 24);
        if (*(a1 + 24))
        {
          if (v50 > v51)
          {
            goto LABEL_102;
          }

          if (v50 < v51)
          {
            goto LABEL_101;
          }
        }

        else
        {
          if (v50 < v51)
          {
            goto LABEL_102;
          }

          if (v50 > v51)
          {
            goto LABEL_101;
          }
        }

        if (*(v49 + 8))
        {
          goto LABEL_102;
        }
      }

LABEL_101:
      v45 = *v48;
LABEL_102:
      v48 += 8;
      if (!--v47)
      {
        goto LABEL_116;
      }
    }
  }

  v6 = *(a2 + 32);
  v7 = *(v6 + 16);
  if (v7 < 1)
  {
    goto LABEL_59;
  }

  v8 = 0;
  v9 = v6 + 24;
LABEL_8:
  v10 = *(v9 + 8 * v8);
  v11 = *(v10 + 24);
  if (v11)
  {
    if (v11 < 1)
    {
      goto LABEL_58;
    }

    v55 = v9;
    v56 = v8;
    v12 = 0;
    v13 = v10 + 32;
    v59 = *(v9 + 8 * v8);
    v57 = v2;
    v58 = v10 + 32;
    while (1)
    {
      v14 = 0;
      v15 = v13 + 40 * v12;
      v60 = v12;
      v61 = v15;
      do
      {
        v16 = *(v15 + 24);
        if (!v16)
        {
          goto LABEL_51;
        }

        v17 = *(v16 + 24);
        v18 = *(v16 + 32);
        if (!v17)
        {
          goto LABEL_44;
        }

        v62 = *(v16 + 32);
        v19 = a1;
        v20 = v6;
        if (*(v17 + 32) >= 1)
        {
          v21 = 0;
          do
          {
            sub_1819DB2CC(*(v17 + 56 + 8 * v21++));
          }

          while (v21 < *(v17 + 32));
        }

        v22 = *(v17 + 16);
        if (v22)
        {
          v23 = &off_1ED452EB0;
          if (!dword_1ED452E80)
          {
            goto LABEL_23;
          }

          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v22);
          --qword_1ED456A90;
          off_1ED452EB0(v22);
          v22 = xmmword_1ED456AF0;
          if (xmmword_1ED456AF0)
          {
            v23 = &xmmword_1ED452F28;
LABEL_23:
            (*v23)(v22);
          }
        }

        *(v17 + 16) = 0;
        *(v17 + 24) = 0;
        v24 = *(v17 + 40);
        v6 = v20;
        a1 = v19;
        v18 = v62;
        if (!v24)
        {
          goto LABEL_31;
        }

        v25 = &off_1ED452EB0;
        if (!dword_1ED452E80)
        {
          goto LABEL_30;
        }

        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v24);
        --qword_1ED456A90;
        off_1ED452EB0(v24);
        v24 = xmmword_1ED456AF0;
        v18 = v62;
        if (xmmword_1ED456AF0)
        {
          v25 = &xmmword_1ED452F28;
LABEL_30:
          (*v25)(v24);
        }

LABEL_31:
        v26 = *(v17 + 8);
        if (v26)
        {
          v27 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v26);
            --qword_1ED456A90;
            off_1ED452EB0(v26);
            v26 = xmmword_1ED456AF0;
            v18 = v62;
            if (!xmmword_1ED456AF0)
            {
              goto LABEL_38;
            }

            v27 = &xmmword_1ED452F28;
          }

          (*v27)(v26);
        }

LABEL_38:
        v28 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v17);
          --qword_1ED456A90;
          off_1ED452EB0(v17);
          v17 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_44;
          }

          v28 = &xmmword_1ED452F28;
        }

        (*v28)(v17);
LABEL_44:
        sub_1819DB2CC(v16);
        v29 = *(v18 + 72);
        if (v29)
        {
          *(v18 + 72) = 0;
          v30 = v29[3];
          v31 = v29[4];
          v32 = v31[3];
          if (v32)
          {
            xmmword_1ED452F18(v32);
          }

          sub_181929C84(v31, v29);
          v33 = v31[3];
          if (v33)
          {
            xmmword_1ED452F28(v33);
          }

          sqlite3_finalize(v30);
        }

        *(v18 + 60) = 0;
        *(v15 + 24) = 0;
LABEL_51:
        result = sub_1819E3624(*a1, *(v15 + 8), *(v15 + 16), (*v61 != 0) | (2 * (*(a1 + 24) != 0)), *(v6 + 8), (v15 + 24));
        if (result)
        {
          return result;
        }

        v35 = *(v15 + 24);
        v15 = *(v15 + 32);
        if (!*(v35 + 20))
        {
          v14 = 1;
        }
      }

      while (v15);
      if (!v14)
      {
        v2 = v57;
        break;
      }

      v12 = v60 + 1;
      v13 = v58;
      if (v60 + 1 >= *(v59 + 24))
      {
        v7 = *(v6 + 16);
        v8 = v56;
        v2 = v57;
        v9 = v55;
LABEL_58:
        if (++v8 >= v7)
        {
LABEL_59:
          *(v2 + 4) = 0;
          goto LABEL_85;
        }

        goto LABEL_8;
      }
    }
  }

  *(v2 + 4) = 1;
  return 0;
}

uint64_t sub_1819E3624(int *a1, unsigned __int8 *a2, int a3, int a4, _DWORD *a5, uint64_t *a6)
{
  v9 = a1;
  v11 = a1 + 15;
  v10 = *a1;
  v299 = 0;
  v12 = a3 + 1;
  v290 = a1 + 15;
  if (a3 == -1)
  {
    v283 = a6;
    v17 = 0;
    v18 = *(v10 + 108);
    goto LABEL_7;
  }

  v14 = 64;
  do
  {
    v15 = v14;
    v14 *= 2;
  }

  while (v15 < v12);
  if (!sqlite3_initialize())
  {
    v283 = a6;
    v21 = sub_18190287C(0, v15, 688041480);
    if (v21)
    {
      v17 = v21;
      v18 = *(v10 + 108);
      if (a3 >= 1)
      {
        memcpy((v21 + 1), a2, a3);
        if ((a4 & 0x88) != 0)
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

        if ((a4 & 1) == 0)
        {
          if (!v22)
          {
LABEL_21:
            LOBYTE(v23) = 0;
            v24 = 0;
            if (*(v10 + 56) >= 0)
            {
LABEL_22:
              v25 = sub_1819E25BC(v9);
              *v17 = v23 + 48;
              if (!v25)
              {
                goto LABEL_554;
              }

              v26 = v25;
              sub_1819E5E40(v9, v25, a4 | 0x10u, a5, v17, v12, 0xFFFFFFFF, 0, &v299);
              if ((*v26)-- > 1)
              {
                goto LABEL_554;
              }

              if (v26[7] < 1)
              {
LABEL_317:
                sqlite3_free(v26);
                v9 = a1;
                goto LABEL_554;
              }

              v28 = 0;
              v29 = (v26 + 10);
              while (1)
              {
                v30 = *v29;
                if (*v29)
                {
                  v31 = &off_1ED452EB0;
                  if (dword_1ED452E80)
                  {
                    if (xmmword_1ED456AF0)
                    {
                      xmmword_1ED452F18(xmmword_1ED456AF0);
                    }

                    qword_1ED456A48[0] -= xmmword_1ED452EC0(v30);
                    --qword_1ED456A90;
                    off_1ED452EB0(v30);
                    v30 = xmmword_1ED456AF0;
                    if (!xmmword_1ED456AF0)
                    {
                      goto LABEL_28;
                    }

                    v31 = &xmmword_1ED452F28;
                  }

                  (*v31)(v30);
                }

LABEL_28:
                ++v28;
                v29 += 2;
                if (v28 >= v26[7])
                {
                  goto LABEL_317;
                }
              }
            }

LABEL_43:
            v301 = 0u;
            v302 = 0u;
            v303 = 0u;
            v304 = 0u;
            v305 = 0;
            v300[0] = 0;
            v300[1] = 0;
            DWORD2(v302) = 1;
            DWORD2(v303) = 32;
            v38 = *v9;
            if (!v24 && !*(v38 + 116) && *(v38 + 240))
            {
              v305 = v300;
              if (*v11)
              {
                v39 = 0;
              }

              else if (sqlite3_initialize() || (v39 = sub_181902484(160, 1913357809)) == 0)
              {
                v39 = 0;
                *v11 = 7;
              }

              else
              {
                v39[8] = 0u;
                v39[9] = 0u;
                v39[6] = 0u;
                v39[7] = 0u;
                v39[4] = 0u;
                v39[5] = 0u;
                v39[2] = 0u;
                v39[3] = 0u;
                *v39 = 0u;
                v39[1] = 0u;
              }

              v300[0] = v39;
              v38 = *v9;
            }

            if (*(v38 + 116) == 1)
            {
              v213 = sub_1819EED70;
              v214 = sub_1819EE9D8;
              v215 = DWORD2(v303);
            }

            else
            {
              v215 = 120;
              DWORD2(v302) = 15;
              DWORD2(v303) = 120;
              v213 = sub_1819EFC08;
              v214 = sub_1819EEE6C;
            }

            *&v301 = v214;
            *(&v301 + 1) = v213;
            v298 = a4;
            if (*v11)
            {
              goto LABEL_447;
            }

            if (sqlite3_initialize() || (v243 = sub_181902484(16 * v215, 1913357809)) == 0)
            {
              if (v215 < 1)
              {
LABEL_447:
                v216 = 0;
                goto LABEL_448;
              }

              v216 = 0;
              *v11 = 7;
            }

            else
            {
              v216 = v243;
              bzero(v243, 16 * v215);
            }

LABEL_448:
            *&v303 = v216;
            v217 = sub_1819E25BC(v9);
            v218 = v217;
            if (*(v9 + 60))
            {
              goto LABEL_449;
            }

            v296 = v217;
            if (v24)
            {
              *v17 = 48;
              sub_1819EFDD0(v9, a5, v17, v12, 0, sub_1819F02E0, &v301);
            }

            *v17 = v24 + 48;
            sub_1819EFDD0(v9, a5, v17, v12, 1, sub_1819F02E0, &v301);
            if (SDWORD2(v303) >= 1)
            {
              v228 = 0;
              v229 = DWORD2(v302);
              while (1)
              {
                if (*v290)
                {
                  if (v229 >= 1)
                  {
                    break;
                  }

                  goto LABEL_501;
                }

                (v301)(a1, &v304, v229, v303 + 16 * v228);
                v229 = DWORD2(v302);
                if (SDWORD2(v302) >= 1)
                {
                  break;
                }

LABEL_501:
                v228 += v229;
LABEL_488:
                if (v228 >= SDWORD2(v303))
                {
                  goto LABEL_502;
                }
              }

              v230 = v228;
              v231 = 16 * v228;
              while (1)
              {
                v232 = (v303 + v231);
                v233 = *(v303 + v231);
                if (v233)
                {
                  v234 = &off_1ED452EB0;
                  if (dword_1ED452E80)
                  {
                    if (xmmword_1ED456AF0)
                    {
                      xmmword_1ED452F18(xmmword_1ED456AF0);
                    }

                    qword_1ED456A48[0] -= xmmword_1ED452EC0(v233);
                    --qword_1ED456A90;
                    off_1ED452EB0(v233);
                    v233 = xmmword_1ED456AF0;
                    if (!xmmword_1ED456AF0)
                    {
                      goto LABEL_493;
                    }

                    v234 = &xmmword_1ED452F28;
                  }

                  (*v234)(v233);
                }

LABEL_493:
                *v232 = 0;
                v232[1] = 0;
                ++v230;
                v229 = DWORD2(v302);
                v231 += 16;
                if (v230 >= DWORD2(v302) + v228)
                {
                  v228 += DWORD2(v302);
                  goto LABEL_488;
                }
              }
            }

LABEL_502:
            v11 = v290;
            v9 = a1;
            v218 = v296;
            if (!*v290)
            {
              v244 = SDWORD2(v304);
              if (!sqlite3_initialize())
              {
                v247 = sub_181902484(v244 + 24, 1913357809);
                if (v247)
                {
                  v248 = v247;
                  bzero(v247, v244 + 24);
                  *v248 = v248 + 4;
                  v249 = SDWORD2(v304);
                  v248[2] = DWORD2(v304);
                  v248[3] = v249;
                  if (v249)
                  {
                    memcpy(v248 + 4, v304, v249);
                  }

                  if (!*v290)
                  {
                    if (sqlite3_initialize() || (v275 = sub_181902484(368, 1913357809)) == 0)
                    {
                      *v290 = 7;
                    }

                    else
                    {
                      v276 = v275;
                      *(v275 + 336) = 0u;
                      *(v275 + 352) = 0u;
                      *(v275 + 304) = 0u;
                      *(v275 + 320) = 0u;
                      *(v275 + 272) = 0u;
                      *(v275 + 288) = 0u;
                      *(v275 + 240) = 0u;
                      *(v275 + 256) = 0u;
                      *(v275 + 208) = 0u;
                      *(v275 + 224) = 0u;
                      *(v275 + 176) = 0u;
                      *(v275 + 192) = 0u;
                      *(v275 + 144) = 0u;
                      *(v275 + 160) = 0u;
                      *(v275 + 112) = 0u;
                      *(v275 + 128) = 0u;
                      *(v275 + 80) = 0u;
                      *(v275 + 96) = 0u;
                      *(v275 + 48) = 0u;
                      *(v275 + 64) = 0u;
                      *(v275 + 16) = 0u;
                      *(v275 + 32) = 0u;
                      *v275 = 0u;
                      *(v275 + 72) = 2;
                      *(v275 + 96) = v275 + 360;
                      *(v275 + 32) = a1;
                      *(v275 + 64) = nullsub_14;
                      *(v275 + 240) = 1;
                      if (v248[3] < 1)
                      {
                        *(v275 + 20) = 1;
                      }

                      else
                      {
                        *(v275 + 248) = v248;
                        *(v275 + 264) = sub_1819DFFB0(*v248, (v275 + 344));
                        *(v276 + 300) = v248[2];
                        *(*(v276 + 96) + 4) = 1;
                        if ((v298 & 2) != 0)
                        {
                          *(v276 + 76) = 1;
                          *(v276 + 240) |= 2u;
                          sub_1819E06E0(a1, v276 + 232);
                        }

                        else
                        {
                          sub_1819E0398(a1, v276 + 232);
                        }

                        v248 = 0;
                      }

                      if ((*(v276 + 240) & 2) != 0)
                      {
                        v277 = sub_1819EDAC4;
                      }

                      else if (*(*a1 + 116) == 1)
                      {
                        v277 = sub_1819EDB88;
                      }

                      else
                      {
                        v277 = sub_1819EDF3C;
                      }

                      *(v276 + 280) = v277;
                      v299 = v276;
                      if (!v248)
                      {
                        goto LABEL_503;
                      }
                    }
                  }

                  v250 = &off_1ED452EB0;
                  if (dword_1ED452E80)
                  {
                    if (xmmword_1ED456AF0)
                    {
                      xmmword_1ED452F18(xmmword_1ED456AF0);
                    }

                    qword_1ED456A48[0] -= xmmword_1ED452EC0(v248);
                    --qword_1ED456A90;
                    off_1ED452EB0(v248);
                    v248 = xmmword_1ED456AF0;
                    if (!xmmword_1ED456AF0)
                    {
                      goto LABEL_503;
                    }

                    v250 = &xmmword_1ED452F28;
                  }

                  (*v250)(v248);
                  goto LABEL_503;
                }
              }

              if (v244 >= -23)
              {
                *v290 = 7;
              }
            }

LABEL_503:
            if (!*v290 && v305)
            {
              sub_1819F0580(a1, v300[0]);
              *(v299 + 24) = v300[0];
              v300[0] = 0;
              goto LABEL_506;
            }

LABEL_449:
            v219 = v300[0];
            if (!v300[0])
            {
              goto LABEL_506;
            }

            if (*(v300[0] + 32) >= 1)
            {
              v220 = 0;
              do
              {
                sub_1819DB2CC(*(v219 + 56 + 8 * v220++));
              }

              while (v220 < *(v219 + 32));
            }

            v221 = *(v219 + 16);
            if (v221)
            {
              v222 = &off_1ED452EB0;
              if (!dword_1ED452E80)
              {
LABEL_459:
                (*v222)(v221);
                goto LABEL_460;
              }

              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v221);
              --qword_1ED456A90;
              off_1ED452EB0(v221);
              v221 = xmmword_1ED456AF0;
              if (xmmword_1ED456AF0)
              {
                v222 = &xmmword_1ED452F28;
                goto LABEL_459;
              }
            }

LABEL_460:
            *(v219 + 16) = 0;
            *(v219 + 24) = 0;
            v223 = *(v219 + 40);
            if (!v223)
            {
              goto LABEL_467;
            }

            v224 = &off_1ED452EB0;
            if (dword_1ED452E80)
            {
              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v223);
              --qword_1ED456A90;
              off_1ED452EB0(v223);
              v223 = xmmword_1ED456AF0;
              if (!xmmword_1ED456AF0)
              {
LABEL_467:
                v225 = *(v219 + 8);
                if (v225)
                {
                  v226 = &off_1ED452EB0;
                  if (dword_1ED452E80)
                  {
                    if (xmmword_1ED456AF0)
                    {
                      xmmword_1ED452F18(xmmword_1ED456AF0);
                    }

                    qword_1ED456A48[0] -= xmmword_1ED452EC0(v225);
                    --qword_1ED456A90;
                    off_1ED452EB0(v225);
                    v225 = xmmword_1ED456AF0;
                    if (!xmmword_1ED456AF0)
                    {
                      goto LABEL_474;
                    }

                    v226 = &xmmword_1ED452F28;
                  }

                  (*v226)(v225);
                }

LABEL_474:
                v227 = &off_1ED452EB0;
                if (!dword_1ED452E80)
                {
LABEL_479:
                  (*v227)(v219);
                  goto LABEL_506;
                }

                if (xmmword_1ED456AF0)
                {
                  xmmword_1ED452F18(xmmword_1ED456AF0);
                }

                qword_1ED456A48[0] -= xmmword_1ED452EC0(v219);
                --qword_1ED456A90;
                off_1ED452EB0(v219);
                v219 = xmmword_1ED456AF0;
                if (xmmword_1ED456AF0)
                {
                  v227 = &xmmword_1ED452F28;
                  goto LABEL_479;
                }

LABEL_506:
                v235 = v304;
                if (!v304)
                {
                  goto LABEL_513;
                }

                v236 = &off_1ED452EB0;
                if (dword_1ED452E80)
                {
                  if (xmmword_1ED456AF0)
                  {
                    xmmword_1ED452F18(xmmword_1ED456AF0);
                  }

                  qword_1ED456A48[0] -= xmmword_1ED452EC0(v235);
                  --qword_1ED456A90;
                  off_1ED452EB0(v235);
                  v235 = xmmword_1ED456AF0;
                  if (!xmmword_1ED456AF0)
                  {
LABEL_513:
                    v304 = 0uLL;
                    sub_1819D8AE8(v218);
                    v237 = v303;
                    if (!v303)
                    {
                      goto LABEL_520;
                    }

                    v238 = &off_1ED452EB0;
                    if (dword_1ED452E80)
                    {
                      if (xmmword_1ED456AF0)
                      {
                        xmmword_1ED452F18(xmmword_1ED456AF0);
                      }

                      qword_1ED456A48[0] -= xmmword_1ED452EC0(v237);
                      --qword_1ED456A90;
                      off_1ED452EB0(v237);
                      v237 = xmmword_1ED456AF0;
                      if (!xmmword_1ED456AF0)
                      {
LABEL_520:
                        v239 = v299;
                        if (!v299)
                        {
                          goto LABEL_554;
                        }

                        if (*v11)
                        {
                          goto LABEL_556;
                        }

                        v240 = **(v299 + 32);
                        v241 = *(v240 + 116);
                        if (v241 == 1)
                        {
                          v242 = sub_1819F09D4;
                        }

                        else
                        {
                          v245 = *(v299 + 56);
                          if (v245)
                          {
                            if (*v245)
                            {
                              if (v241)
                              {
                                v246 = *(v240 + 32);
                                if (v246 <= 100)
                                {
                                  *(v299 + 64) = sub_1819F0DAC;
                                  sub_1819D750C(v11, v239 + 40, v246);
LABEL_551:
                                  if (*v11)
                                  {
                                    goto LABEL_556;
                                  }

                                  v251 = v239 + (*(*(v239 + 96) + 4) << 7);
                                  if (*(v251 + 120))
                                  {
                                    (*(v239 + 64))(v239, v251 + 104);
                                  }

LABEL_554:
                                  v239 = v299;
                                  if (!*v11)
                                  {
                                    goto LABEL_602;
                                  }

                                  if (!v299)
                                  {
LABEL_594:
                                    v299 = 0;
                                    v268 = *(v9 + 72);
                                    if (!v268)
                                    {
                                      goto LABEL_600;
                                    }

                                    *(v9 + 72) = 0;
                                    v269 = v268[3];
                                    v270 = v268[4];
                                    v271 = v270[3];
                                    if (v271)
                                    {
                                      xmmword_1ED452F18(v271);
                                    }

                                    sub_181929C84(v270, v268);
                                    v272 = v270[3];
                                    if (v272)
                                    {
                                      xmmword_1ED452F28(v272);
                                    }

                                    v273 = sqlite3_finalize(v269);
                                    if (!*v11)
                                    {
                                      v239 = 0;
                                      *v11 = v273;
                                    }

                                    else
                                    {
LABEL_600:
                                      v239 = 0;
                                    }

LABEL_602:
                                    *v283 = v239;
                                    if (v17)
                                    {
                                      v274 = &off_1ED452EB0;
                                      if (dword_1ED452E80)
                                      {
                                        if (xmmword_1ED456AF0)
                                        {
                                          xmmword_1ED452F18(xmmword_1ED456AF0);
                                        }

                                        qword_1ED456A48[0] -= xmmword_1ED452EC0(v17);
                                        --qword_1ED456A90;
                                        off_1ED452EB0(v17);
                                        v17 = xmmword_1ED456AF0;
                                        if (!xmmword_1ED456AF0)
                                        {
                                          goto LABEL_609;
                                        }

                                        v274 = &xmmword_1ED452F28;
                                      }

                                      (*v274)(v17);
                                    }

LABEL_609:
                                    result = *v11;
                                    goto LABEL_610;
                                  }

LABEL_556:
                                  v253 = *(v239 + 24);
                                  v252 = *(v239 + 32);
                                  if (!v253)
                                  {
                                    goto LABEL_587;
                                  }

                                  if (*(v253 + 32) >= 1)
                                  {
                                    v254 = 0;
                                    do
                                    {
                                      sub_1819DB2CC(*(v253 + 56 + 8 * v254++));
                                    }

                                    while (v254 < *(v253 + 32));
                                  }

                                  v255 = *(v253 + 16);
                                  if (v255)
                                  {
                                    v256 = &off_1ED452EB0;
                                    if (!dword_1ED452E80)
                                    {
LABEL_566:
                                      (*v256)(v255);
                                      goto LABEL_567;
                                    }

                                    if (xmmword_1ED456AF0)
                                    {
                                      xmmword_1ED452F18(xmmword_1ED456AF0);
                                    }

                                    qword_1ED456A48[0] -= xmmword_1ED452EC0(v255);
                                    --qword_1ED456A90;
                                    off_1ED452EB0(v255);
                                    v255 = xmmword_1ED456AF0;
                                    if (xmmword_1ED456AF0)
                                    {
                                      v256 = &xmmword_1ED452F28;
                                      goto LABEL_566;
                                    }
                                  }

LABEL_567:
                                  *(v253 + 16) = 0;
                                  *(v253 + 24) = 0;
                                  v257 = *(v253 + 40);
                                  if (!v257)
                                  {
                                    goto LABEL_574;
                                  }

                                  v258 = &off_1ED452EB0;
                                  if (dword_1ED452E80)
                                  {
                                    if (xmmword_1ED456AF0)
                                    {
                                      xmmword_1ED452F18(xmmword_1ED456AF0);
                                    }

                                    qword_1ED456A48[0] -= xmmword_1ED452EC0(v257);
                                    --qword_1ED456A90;
                                    off_1ED452EB0(v257);
                                    v257 = xmmword_1ED456AF0;
                                    if (!xmmword_1ED456AF0)
                                    {
LABEL_574:
                                      v259 = *(v253 + 8);
                                      if (v259)
                                      {
                                        v260 = &off_1ED452EB0;
                                        if (dword_1ED452E80)
                                        {
                                          if (xmmword_1ED456AF0)
                                          {
                                            xmmword_1ED452F18(xmmword_1ED456AF0);
                                          }

                                          qword_1ED456A48[0] -= xmmword_1ED452EC0(v259);
                                          --qword_1ED456A90;
                                          off_1ED452EB0(v259);
                                          v259 = xmmword_1ED456AF0;
                                          if (!xmmword_1ED456AF0)
                                          {
                                            goto LABEL_581;
                                          }

                                          v260 = &xmmword_1ED452F28;
                                        }

                                        (*v260)(v259);
                                      }

LABEL_581:
                                      v261 = &off_1ED452EB0;
                                      if (dword_1ED452E80)
                                      {
                                        if (xmmword_1ED456AF0)
                                        {
                                          xmmword_1ED452F18(xmmword_1ED456AF0);
                                        }

                                        qword_1ED456A48[0] -= xmmword_1ED452EC0(v253);
                                        --qword_1ED456A90;
                                        off_1ED452EB0(v253);
                                        v253 = xmmword_1ED456AF0;
                                        v9 = a1;
                                        if (!xmmword_1ED456AF0)
                                        {
                                          goto LABEL_587;
                                        }

                                        v261 = &xmmword_1ED452F28;
                                      }

                                      (*v261)(v253);
                                      v9 = a1;
LABEL_587:
                                      sub_1819DB2CC(v239);
                                      v262 = *(v252 + 72);
                                      if (v262)
                                      {
                                        *(v252 + 72) = 0;
                                        v263 = v262[3];
                                        v264 = v262[4];
                                        v265 = v264[3];
                                        if (v265)
                                        {
                                          xmmword_1ED452F18(v265);
                                        }

                                        sub_181929C84(v264, v262);
                                        v266 = v264[3];
                                        if (v266)
                                        {
                                          xmmword_1ED452F28(v266);
                                        }

                                        v267 = sqlite3_finalize(v263);
                                        if (!*(v252 + 60))
                                        {
                                          *(v252 + 60) = v267;
                                        }
                                      }

                                      goto LABEL_594;
                                    }

                                    v258 = &xmmword_1ED452F28;
                                  }

                                  (*v258)(v257);
                                  goto LABEL_574;
                                }

                                v242 = sub_1819F0E9C;
                              }

                              else
                              {
                                v242 = sub_1819F0B0C;
                              }
                            }

                            else
                            {
                              v242 = sub_1819F0B04;
                            }
                          }

                          else
                          {
                            v242 = sub_1819F09E8;
                          }
                        }

                        *(v299 + 64) = v242;
                        goto LABEL_551;
                      }

                      v238 = &xmmword_1ED452F28;
                    }

                    (*v238)(v237);
                    goto LABEL_520;
                  }

                  v236 = &xmmword_1ED452F28;
                }

                (*v236)(v235);
                goto LABEL_513;
              }

              v224 = &xmmword_1ED452F28;
            }

            (*v224)(v223);
            goto LABEL_467;
          }

          goto LABEL_12;
        }

        v170 = 0;
        v32 = 0;
        do
        {
          LODWORD(v171) = v170 + 1;
          if (v170 + 1 < a3 && a2[v170] >= 0xC0u)
          {
            v171 = v171;
            while ((a2[v171] & 0xC0) == 0x80)
            {
              if (a3 == ++v171)
              {
                ++v32;
                goto LABEL_36;
              }
            }
          }

          ++v32;
          v170 = v171;
        }

        while (v171 < a3);
        goto LABEL_36;
      }

LABEL_7:
      if ((a4 & 0x88) != 0)
      {
        v19 = 0;
      }

      else
      {
        v19 = v18;
      }

      if ((a4 & 1) == 0)
      {
        if (!v19)
        {
          goto LABEL_21;
        }

LABEL_12:
        *v17 = 48;
        sub_1819E6520(v9);
        v20 = sub_1819E25BC(v9);
        if (*(v9 + 60))
        {
          sub_1819D8AE8(v20);
          v299 = 0;
          goto LABEL_554;
        }

        v279 = a5;
        __s2 = v17;
        v40 = 0;
        v41 = 0;
        v42 = 0;
        v297 = 0;
        v286 = v20;
        v287 = v12;
        v278 = v12;
        v285 = v20 + 8;
        while (1)
        {
          if (v42)
          {
            v282 = *&v42[2 * v42[8] + 12];
          }

          else
          {
            v282 = 0;
          }

          v43 = 2;
          do
          {
            v44 = v43;
            v43 *= 2;
          }

          while (v44 < v20[6]);
          if (sqlite3_initialize() || (v45 = sub_181902484(132 * v44 + 104, 1913357809)) == 0)
          {
            v289 = 0;
            if (132 * v44 + 104 >= 1)
            {
              *v11 = 7;
            }
          }

          else
          {
            v46 = v45;
            bzero(v45, 132 * v44 + 104);
            v46[18] = v44;
            *(v46 + 12) = &v46[32 * v44 + 26];
            *(v46 + 4) = v9;
            v289 = v46;
            *(v46 + 8) = nullsub_14;
          }

          v47 = v41;
          v284 = v42;
          if (!v297)
          {
            if (v287)
            {
              if (v41 < v287)
              {
                if (v41)
                {
                  LODWORD(v52) = v41;
                }

                else
                {
                  LODWORD(v52) = 64;
                }

                v52 = v52;
                do
                {
                  v41 = v52;
                  v52 *= 2;
                }

                while (v41 < v278);
                if (sqlite3_initialize() || (v53 = sub_18190287C(v40, v41, 688041480)) == 0)
                {
LABEL_332:
                  *v11 = 7;
LABEL_333:
                  if (!v289)
                  {
                    goto LABEL_372;
                  }

                  v174 = *(v289 + 24);
                  v173 = *(v289 + 32);
                  if (!v174)
                  {
                    goto LABEL_365;
                  }

                  if (*(v174 + 32) >= 1)
                  {
                    v176 = 0;
                    do
                    {
                      sub_1819DB2CC(*(v174 + 56 + 8 * v176++));
                    }

                    while (v176 < *(v174 + 32));
                  }

LABEL_338:
                  v177 = *(v174 + 16);
                  if (v177)
                  {
                    v178 = &off_1ED452EB0;
                    if (!dword_1ED452E80)
                    {
                      goto LABEL_344;
                    }

                    if (xmmword_1ED456AF0)
                    {
                      xmmword_1ED452F18(xmmword_1ED456AF0);
                    }

                    qword_1ED456A48[0] -= xmmword_1ED452EC0(v177);
                    --qword_1ED456A90;
                    off_1ED452EB0(v177);
                    v177 = xmmword_1ED456AF0;
                    if (xmmword_1ED456AF0)
                    {
                      v178 = &xmmword_1ED452F28;
LABEL_344:
                      (*v178)(v177);
                    }
                  }

                  *(v174 + 16) = 0;
                  *(v174 + 24) = 0;
                  v179 = *(v174 + 40);
                  v42 = v284;
                  if (v179)
                  {
                    v180 = &off_1ED452EB0;
                    if (!dword_1ED452E80)
                    {
                      goto LABEL_351;
                    }

                    if (xmmword_1ED456AF0)
                    {
                      xmmword_1ED452F18(xmmword_1ED456AF0);
                    }

                    qword_1ED456A48[0] -= xmmword_1ED452EC0(v179);
                    --qword_1ED456A90;
                    off_1ED452EB0(v179);
                    v179 = xmmword_1ED456AF0;
                    if (xmmword_1ED456AF0)
                    {
                      v180 = &xmmword_1ED452F28;
LABEL_351:
                      (*v180)(v179);
                    }
                  }

                  v181 = *(v174 + 8);
                  if (v181)
                  {
                    v182 = &off_1ED452EB0;
                    if (!dword_1ED452E80)
                    {
                      goto LABEL_358;
                    }

                    if (xmmword_1ED456AF0)
                    {
                      xmmword_1ED452F18(xmmword_1ED456AF0);
                    }

                    qword_1ED456A48[0] -= xmmword_1ED452EC0(v181);
                    --qword_1ED456A90;
                    off_1ED452EB0(v181);
                    v181 = xmmword_1ED456AF0;
                    if (xmmword_1ED456AF0)
                    {
                      v182 = &xmmword_1ED452F28;
LABEL_358:
                      (*v182)(v181);
                    }
                  }

                  v183 = &off_1ED452EB0;
                  if (dword_1ED452E80)
                  {
                    if (xmmword_1ED456AF0)
                    {
                      xmmword_1ED452F18(xmmword_1ED456AF0);
                    }

                    qword_1ED456A48[0] -= xmmword_1ED452EC0(v174);
                    --qword_1ED456A90;
                    off_1ED452EB0(v174);
                    v174 = xmmword_1ED456AF0;
                    if (!xmmword_1ED456AF0)
                    {
                      goto LABEL_365;
                    }

                    v183 = &xmmword_1ED452F28;
                  }

                  (*v183)(v174);
LABEL_365:
                  sub_1819DB2CC(v289);
                  v184 = *(v173 + 72);
                  if (v184)
                  {
                    *(v173 + 72) = 0;
                    v185 = v184[3];
                    v186 = v184[4];
                    v187 = v186[3];
                    if (v187)
                    {
                      xmmword_1ED452F18(v187);
                    }

                    sub_181929C84(v186, v184);
                    v188 = v186[3];
                    if (v188)
                    {
                      xmmword_1ED452F28(v188);
                    }

                    v189 = sqlite3_finalize(v185);
                    if (!*(v173 + 60))
                    {
                      *(v173 + 60) = v189;
                    }
                  }

                  goto LABEL_372;
                }

                v40 = v53;
              }

              memcpy(v40, v17, v278);
              LODWORD(v295) = v287;
              v47 = v41;
            }

            else
            {
              LODWORD(v295) = 0;
            }

            goto LABEL_98;
          }

          v48 = *(v297 + 8);
          if (v48)
          {
            break;
          }

LABEL_88:
          v295 = (v48 + 1);
          if (v295 > v47)
          {
            if (v47)
            {
              LODWORD(v55) = v47;
            }

            else
            {
              LODWORD(v55) = 64;
            }

            v55 = v55;
            do
            {
              v56 = v55;
              v55 *= 2;
            }

            while (v56 < v295);
            if (sqlite3_initialize())
            {
              goto LABEL_332;
            }

            v57 = sub_18190287C(v40, v56, 688041480);
            if (!v57)
            {
              goto LABEL_332;
            }

            v40 = v57;
            v47 = v56;
          }

          *(v40 + v48) = 0;
LABEL_98:
          if (*v11)
          {
            goto LABEL_333;
          }

          v281 = v47;
          __s = v40;
          if (v286[7] < 1)
          {
            goto LABEL_196;
          }

          v58 = 0;
          v59 = (v289 + 104);
          if (v282)
          {
            v60 = (v282 + 104);
          }

          else
          {
            v60 = 0;
          }

          while (2)
          {
            v291 = v58;
            v61 = &v285[4 * v58];
            v62 = v61[1];
            v63 = v62 + 1;
            v64 = 56 * v62 - 56;
            do
            {
              if (--v63 < 1)
              {
                break;
              }

              v65 = *(v61 + 1);
              v66 = (v65 + v64);
              if (v60)
              {
                v67 = *(v297 + 8);
                v68 = *(v60 + 26);
                if (v67 >= v68)
                {
                  v69 = v68;
                }

                else
                {
                  v69 = v67;
                }

                if (v69 < 1)
                {
                  if (v67 == v68)
                  {
                    goto LABEL_119;
                  }
                }

                else
                {
                  v70 = memcmp(*v297, *(v60 + 12), v69);
                  if (v67 == v68 && !v70)
                  {
LABEL_119:
                    if (*(v60 + 17) <= *(*(v60 + 2) + 12))
                    {
                      sub_1819E716C(v9, __s, v295, 264, v66, v59);
                    }

                    else
                    {
                      v71 = *(v9 + 120);
                      if (!v71)
                      {
                        v72 = sqlite3_mprintf("SELECT pgno FROM '%q'.'%q_idx' WHERE segid=? AND term>? ORDER BY term ASC LIMIT 1", *(*a1 + 16), *(*a1 + 24));
                        v73 = v72;
                        if (a1[15])
                        {
                          if (!v72)
                          {
                            goto LABEL_145;
                          }

LABEL_139:
                          v85 = &off_1ED452EB0;
                          if (!dword_1ED452E80)
                          {
LABEL_144:
                            (*v85)(v73);
                            goto LABEL_145;
                          }

                          if (xmmword_1ED456AF0)
                          {
                            xmmword_1ED452F18(xmmword_1ED456AF0);
                          }

                          qword_1ED456A48[0] -= xmmword_1ED452EC0(v73);
                          --qword_1ED456A90;
                          off_1ED452EB0(v73);
                          v73 = xmmword_1ED456AF0;
                          if (xmmword_1ED456AF0)
                          {
                            v85 = &xmmword_1ED452F28;
                            goto LABEL_144;
                          }
                        }

                        else
                        {
                          if (!v72)
                          {
                            *v11 = 7;
                            goto LABEL_145;
                          }

                          v83 = sub_1818954B4(**a1, v72, 0xFFFFFFFFLL, 133, 0, a1 + 15, 0);
                          if (v83 == 1)
                          {
                            v84 = 11;
                          }

                          else
                          {
                            v84 = v83;
                          }

                          *v11 = v84;
                          if (v73)
                          {
                            goto LABEL_139;
                          }
                        }

LABEL_145:
                        v71 = *(a1 + 15);
                        if (!v71)
                        {
                          v292 = 0;
                          LODWORD(v88) = -1;
                          v9 = a1;
                          goto LABEL_175;
                        }
                      }

                      v86 = *v66;
                      if (!sub_1818DF6EC(v71, 0))
                      {
                        v87 = v71[16];
                        if ((*(v87 + 20) & 0x9000) != 0)
                        {
                          sub_18193D288(v87, v86);
                        }

                        else
                        {
                          *v87 = v86;
                          *(v87 + 20) = 4;
                        }

                        v89 = *(*v71 + 24);
                        if (v89)
                        {
                          xmmword_1ED452F28(v89);
                        }
                      }

                      if (v295 <= 0)
                      {
                        sub_1819012D0(101409);
                      }

                      else if (!sub_1818DF6EC(v71, 1u))
                      {
                        if (__s)
                        {
                          v90 = sub_1818900D0(v71[16] + 64, __s, (v295 - 1), 0, 0);
                          if (v90)
                          {
                            v91 = v90;
                            v92 = *v71;
                            *(v92 + 80) = v91;
                            sub_181932D5C(v92, v91);
                            sub_18193C988(*v71, v91);
                          }
                        }

                        v93 = *(*v71 + 24);
                        if (v93)
                        {
                          xmmword_1ED452F28(v93);
                        }
                      }

                      if (sqlite3_step(v71) == 100)
                      {
                        v94 = sqlite3_column_int64(v71, 0);
                        v88 = v94 >> 1;
                        v292 = v94 & 1;
                      }

                      else
                      {
                        v292 = 0;
                        LODWORD(v88) = -1;
                      }

                      v95 = *v71;
                      v96 = *(*v71 + 24);
                      if (v96)
                      {
                        xmmword_1ED452F18(v96);
                      }

                      sub_181909F28(v95, v71);
                      v100 = sub_1818A32FC(v71, v97, v98, v99);
                      *(v71 + 267) = 1;
                      v71[6] = 0xFFFFFFFFLL;
                      *(v71 + 132) = -254;
                      v71[7] = 0;
                      *(v71 + 11) = 1;
                      *(v71 + 16) = 0;
                      v71[10] = 0;
                      if (v100 || (v101 = 0, *(v95 + 103)))
                      {
                        v101 = sub_18193C988(v95, v100);
                      }

                      v102 = *(v95 + 24);
                      if (v102)
                      {
                        xmmword_1ED452F28(v102);
                      }

                      *v290 = v101;
                      v11 = v290;
                      if (!sub_1818DF6EC(v71, 1u))
                      {
                        v103 = *(*v71 + 24);
                        if (v103)
                        {
                          xmmword_1ED452F28(v103);
                        }
                      }

                      v9 = a1;
                      if (!*v290)
                      {
LABEL_175:
                        *(v59 + 6) = 0u;
                        *(v59 + 7) = 0u;
                        *(v59 + 4) = 0u;
                        *(v59 + 5) = 0u;
                        *(v59 + 2) = 0u;
                        *(v59 + 3) = 0u;
                        *v59 = 0u;
                        *(v59 + 1) = 0u;
                        *v59 = v66;
                        *(v59 + 2) |= 1u;
                        if ((v88 & 0x80000000) == 0)
                        {
                          *(v59 + 3) = v88 - 1;
                          sub_1819E0144(v9, v59);
                          if ((v59[1] & 2) != 0)
                          {
                            v104 = sub_1819EDAC4;
                          }

                          else if (*(*v9 + 116) == 1)
                          {
                            v104 = sub_1819EDB88;
                          }

                          else
                          {
                            v104 = sub_1819EDF3C;
                          }

                          v59[6] = v104;
                        }

                        v105 = v59[2];
                        if (v105)
                        {
                          v106 = *v105;
                          v107 = v105[3];
                          *(v59 + 16) = v107;
                          v108 = v106 + v107;
                          v109 = *(v106 + v107);
                          if ((v109 & 0x80) != 0)
                          {
                            v112 = *(v108 + 1);
                            v111 = v292;
                            if (*(v108 + 1) < 0)
                            {
                              v113 = *(v108 + 2);
                              if (v113 < 0)
                              {
                                *&v301 = 0;
                                v110 = sub_1819DFFB0(v108, &v301);
                                v109 = v301 & 0x7FFFFFFF;
                              }

                              else
                              {
                                v109 = ((v109 & 0x7F) << 14) | ((v112 & 0x7F) << 7) | v113;
                                v110 = 3;
                              }
                            }

                            else
                            {
                              v109 = ((v109 & 0x7F) << 7) | v112;
                              v110 = 2;
                            }
                          }

                          else
                          {
                            v110 = 1;
                            v111 = v292;
                          }

                          *(v59 + 16) = v110 + v107;
                          v59[4] = v109;
                          sub_1819ED848(v9, v59, 0);
                          sub_1819E0398(v9, v59);
                          if (v111)
                          {
                            v114 = *(v59 + 14);
                            if (v114 != *(v59 + 3) || *(v59 + 17) >= v59[2][3])
                            {
                              v59[11] = sub_1819EE4E4(v9, v59[1] & 2, **v59, v114);
                            }
                          }
                        }
                      }
                    }

LABEL_194:
                    v115 = *(v60 + 5);
                    if (v115)
                    {
                      v59[5] = v115;
                      ++*v115;
                    }

                    goto LABEL_107;
                  }
                }

                v77 = *v60;
                v78 = v60[1];
                v79 = v60[3];
                *(v59 + 2) = v60[2];
                *(v59 + 3) = v79;
                *v59 = v77;
                *(v59 + 1) = v78;
                v80 = v60[4];
                v81 = v60[5];
                v82 = v60[7];
                *(v59 + 6) = v60[6];
                *(v59 + 7) = v82;
                *(v59 + 4) = v80;
                *(v59 + 5) = v81;
                v60[2] = 0u;
                v60[3] = 0u;
                v60[4] = 0u;
                v60[5] = 0u;
                v60[6] = 0u;
                v60[7] = 0u;
                *v60 = 0u;
                v60[1] = 0u;
                goto LABEL_194;
              }

              sub_1819E716C(v9, __s, v295, 264, (v65 + v64), v59);
              v74 = (*v59)[8];
              if (v74 >= 1)
              {
                if (*v11)
                {
                  goto LABEL_104;
                }

                if (sqlite3_initialize() || (v75 = sub_181902484(8 * v74 + 16, 1913357809)) == 0)
                {
                  *v11 = 7;
LABEL_104:
                  v60 = 0;
                  v59 += 16;
                  break;
                }

                v76 = v75;
                bzero(v75, 8 * v74 + 16);
                *v76 = 1;
                v76[1] = v74;
                v59[5] = v76;
              }

LABEL_107:
              v64 -= 56;
              v59 += 16;
              if (v60)
              {
                v60 += 8;
              }

              else
              {
                v60 = 0;
              }
            }

            while (!*v11);
            v58 = v291 + 1;
            if (v291 + 1 < v286[7])
            {
              continue;
            }

            break;
          }

LABEL_196:
          v42 = v284;
          if (v282)
          {
            if (!*(v282 + 120))
            {
              v120 = *(v282 + 32);
              v121 = *(v297 + 8);
              v122 = *v297;
              *(v282 + 208) = 0;
              if (v121)
              {
                LODWORD(v123) = *(v282 + 212);
                if (v123 >= v121)
                {
                  v130 = 0;
                  v131 = *(v282 + 200);
                  goto LABEL_221;
                }

                if (!v123)
                {
                  LODWORD(v123) = 64;
                }

                v123 = v123;
                do
                {
                  v124 = v123;
                  v123 *= 2;
                }

                while (v124 < v121);
                v125 = *(v282 + 200);
                if (sqlite3_initialize() || (v131 = sub_18190287C(v125, v124, 688041480)) == 0)
                {
                  *(v120 + 60) = 7;
                  v9 = a1;
                }

                else
                {
                  *(v282 + 212) = v124;
                  *(v282 + 200) = v131;
                  v130 = *(v282 + 208);
                  v9 = a1;
LABEL_221:
                  memcpy((v131 + v130), v122, v121);
                  *(v282 + 208) += v121;
                }
              }
            }
          }

          v116 = v289;
          *(v289 + 80) = 1;
          *(v289 + 56) = v279;
          v17 = __s2;
          if (!*v11)
          {
            v117 = **(v289 + 32);
            v118 = *(v117 + 116);
            if (v118 == 1)
            {
              v119 = sub_1819F09D4;
              goto LABEL_228;
            }

            if (v279)
            {
              if (*v279)
              {
                if (v118)
                {
                  v126 = *(v117 + 32);
                  if (v126 <= 100)
                  {
                    *(v289 + 64) = sub_1819F0DAC;
                    LODWORD(v127) = *(v289 + 52);
                    if (v127 < v126)
                    {
                      if (!v127)
                      {
                        LODWORD(v127) = 64;
                      }

                      v127 = v127;
                      do
                      {
                        v128 = v127;
                        v127 *= 2;
                      }

                      while (v128 < v126);
                      v129 = *(v289 + 40);
                      if (sqlite3_initialize() || (v169 = sub_18190287C(v129, v128, 688041480)) == 0)
                      {
                        *v11 = 7;
                      }

                      else
                      {
                        *(v289 + 52) = v128;
                        *(v289 + 40) = v169;
                      }
                    }

                    goto LABEL_229;
                  }

                  v119 = sub_1819F0E9C;
                }

                else
                {
                  v119 = sub_1819F0B0C;
                }
              }

              else
              {
                v119 = sub_1819F0B04;
              }
            }

            else
            {
              v119 = sub_1819F09E8;
            }

LABEL_228:
            *(v289 + 64) = v119;
          }

LABEL_229:
          if (*(v289 + 72) < 1)
          {
LABEL_327:
            v172 = v116;
            v173 = *(v116 + 32);
            v174 = *(v172 + 24);
            v40 = __s;
            if (v174)
            {
              if (*(v174 + 32) >= 1)
              {
                v175 = 0;
                do
                {
                  sub_1819DB2CC(*(v174 + 56 + 8 * v175++));
                }

                while (v175 < *(v174 + 32));
              }

              goto LABEL_338;
            }

            goto LABEL_365;
          }

          v132 = 0;
          v297 = 0;
          v133 = v289 + 120;
          do
          {
            v135 = (v133 + 80);
            v136 = *(v133 + 88);
            if (v136 <= a3 || (v137 = *v135, memcmp(*v135, __s2, v287)) || v136 != v287 && v137[v287])
            {
              v138 = *v133;
              if (*v133)
              {
                v139 = &off_1ED452EB0;
                if (!dword_1ED452E80)
                {
                  goto LABEL_241;
                }

                if (xmmword_1ED456AF0)
                {
                  xmmword_1ED452F18(xmmword_1ED456AF0);
                }

                qword_1ED456A48[0] -= xmmword_1ED452EC0(v138);
                --qword_1ED456A90;
                off_1ED452EB0(v138);
                v138 = xmmword_1ED456AF0;
                if (xmmword_1ED456AF0)
                {
                  v139 = &xmmword_1ED452F28;
LABEL_241:
                  (*v139)(v138);
                }
              }

              *v133 = 0;
            }

            if (*v133)
            {
              if (!v297)
              {
                goto LABEL_252;
              }

              v140 = *(v297 + 8);
              v141 = *(v133 + 88);
              v142 = v140 - v141;
              if (v140 >= v141)
              {
                v143 = v141;
              }

              else
              {
                v143 = v140;
              }

              if (v143 < 1 || (v144 = memcmp(*v297, *v135, v143)) == 0)
              {
                v144 = v142;
              }

              v134 = v297;
              if (v144 >= 1)
              {
LABEL_252:
                v134 = v133 + 80;
              }
            }

            else
            {
              v134 = v297;
            }

            v297 = v134;
            ++v132;
            v133 += 128;
          }

          while (v132 < *(v289 + 72));
          v42 = v284;
          v116 = v289;
          if (!v134)
          {
            goto LABEL_327;
          }

          if (*v11)
          {
            v40 = __s;
            goto LABEL_271;
          }

          v40 = __s;
          if (!v284)
          {
            v146 = 16;
            if (!sqlite3_initialize())
            {
              goto LABEL_264;
            }

LABEL_269:
            *v11 = 7;
            goto LABEL_270;
          }

          v145 = *(v284 + 32);
          if (v145 != *(v284 + 36))
          {
            v148 = v284;
            v168 = v286;
LABEL_313:
            v148[8] = v145 + 1;
            *&v148[2 * v145 + 14] = v116;
            v20 = v168;
            goto LABEL_310;
          }

          v146 = 2 * v145;
          if (sqlite3_initialize())
          {
            goto LABEL_269;
          }

LABEL_264:
          v147 = 104 * v146 + 160;
          v148 = sub_18190287C(v284, v147 & ~(v147 >> 31), 0x10300407B9A0612);
          if (!v148)
          {
            goto LABEL_269;
          }

          if (!v284)
          {
            v149 = v147;
            v150 = v148;
            bzero(v148, v149);
            v148 = v150;
          }

          v148[9] = v146;
          if (!*v11)
          {
            v145 = v148[8];
            v42 = v148;
            v168 = v286;
            v116 = v289;
            goto LABEL_313;
          }

          v42 = v148;
LABEL_270:
          v116 = v289;
LABEL_271:
          v151 = v116;
          v152 = *(v116 + 32);
          v153 = *(v151 + 24);
          if (v153)
          {
            if (*(v153 + 32) >= 1)
            {
              v154 = 0;
              do
              {
                sub_1819DB2CC(*(v153 + 56 + 8 * v154++));
              }

              while (v154 < *(v153 + 32));
            }

            v155 = *(v153 + 16);
            if (v155)
            {
              v156 = &off_1ED452EB0;
              if (!dword_1ED452E80)
              {
                goto LABEL_281;
              }

              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v155);
              --qword_1ED456A90;
              off_1ED452EB0(v155);
              v155 = xmmword_1ED456AF0;
              if (xmmword_1ED456AF0)
              {
                v156 = &xmmword_1ED452F28;
LABEL_281:
                (*v156)(v155);
              }
            }

            *(v153 + 16) = 0;
            *(v153 + 24) = 0;
            v157 = *(v153 + 40);
            if (v157)
            {
              v158 = &off_1ED452EB0;
              if (!dword_1ED452E80)
              {
                goto LABEL_288;
              }

              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v157);
              --qword_1ED456A90;
              off_1ED452EB0(v157);
              v157 = xmmword_1ED456AF0;
              if (xmmword_1ED456AF0)
              {
                v158 = &xmmword_1ED452F28;
LABEL_288:
                (*v158)(v157);
              }
            }

            v159 = *(v153 + 8);
            if (v159)
            {
              v160 = &off_1ED452EB0;
              if (!dword_1ED452E80)
              {
                goto LABEL_295;
              }

              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v159);
              --qword_1ED456A90;
              off_1ED452EB0(v159);
              v159 = xmmword_1ED456AF0;
              if (xmmword_1ED456AF0)
              {
                v160 = &xmmword_1ED452F28;
LABEL_295:
                (*v160)(v159);
              }
            }

            v161 = &off_1ED452EB0;
            if (dword_1ED452E80)
            {
              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v153);
              --qword_1ED456A90;
              off_1ED452EB0(v153);
              v153 = xmmword_1ED456AF0;
              if (xmmword_1ED456AF0)
              {
                v161 = &xmmword_1ED452F28;
                goto LABEL_301;
              }
            }

            else
            {
LABEL_301:
              (*v161)(v153);
            }
          }

          sub_1819DB2CC(v289);
          v162 = *(v152 + 72);
          if (v162)
          {
            *(v152 + 72) = 0;
            v163 = v162[3];
            v164 = v162[4];
            v165 = v164[3];
            if (v165)
            {
              xmmword_1ED452F18(v165);
            }

            sub_181929C84(v164, v162);
            v166 = v164[3];
            if (v166)
            {
              xmmword_1ED452F28(v166);
            }

            v167 = sqlite3_finalize(v163);
            if (!*(v152 + 60))
            {
              *(v152 + 60) = v167;
            }
          }

          v20 = v286;
LABEL_310:
          v41 = v281;
          if (*v11)
          {
LABEL_372:
            v190 = *v11;
            v191 = v42 != 0;
            if (!v42 || v190)
            {
LABEL_387:
              if (!v190)
              {
                goto LABEL_421;
              }

              if (!v42)
              {
                goto LABEL_423;
              }
            }

            else
            {
              if (v42[8] >= 1)
              {
                v192 = 0;
                while (1)
                {
                  v193 = *&v42[2 * v192 + 14];
                  v194 = *(v193 + 72);
                  if (v194 >= 1)
                  {
                    if (v194 == 1)
                    {
                      v195 = 0;
                    }

                    else
                    {
                      v195 = v194 & 0x7FFFFFFE;
                      v196 = (v193 + 240);
                      v197 = v195;
                      do
                      {
                        v198 = *v196 | 1;
                        *(v196 - 32) |= 1u;
                        *v196 = v198;
                        v196 += 64;
                        v197 -= 2;
                      }

                      while (v197);
                      if (v195 == v194)
                      {
                        goto LABEL_376;
                      }
                    }

                    v199 = v194 - v195;
                    v200 = (v193 + (v195 << 7) + 112);
                    do
                    {
                      *v200 |= 1u;
                      v200 += 32;
                      --v199;
                    }

                    while (v199);
                  }

LABEL_376:
                  sub_1819E80C0(v9, v193);
                  if (++v192 >= v42[8])
                  {
                    v190 = *v11;
                    v191 = 1;
                    goto LABEL_387;
                  }
                }
              }

              v191 = 1;
LABEL_421:
              if (!sqlite3_initialize())
              {
                v212 = sub_181902484(368, 1913357809);
                if (v212)
                {
                  v210 = v212;
                  *(v212 + 336) = 0u;
                  *(v212 + 352) = 0u;
                  *(v212 + 304) = 0u;
                  *(v212 + 320) = 0u;
                  *(v212 + 272) = 0u;
                  *(v212 + 288) = 0u;
                  *(v212 + 240) = 0u;
                  *(v212 + 256) = 0u;
                  *(v212 + 208) = 0u;
                  *(v212 + 224) = 0u;
                  *(v212 + 176) = 0u;
                  *(v212 + 192) = 0u;
                  *(v212 + 144) = 0u;
                  *(v212 + 160) = 0u;
                  *(v212 + 112) = 0u;
                  *(v212 + 128) = 0u;
                  *(v212 + 80) = 0u;
                  *(v212 + 96) = 0u;
                  *(v212 + 48) = 0u;
                  *(v212 + 64) = 0u;
                  *(v212 + 16) = 0u;
                  *(v212 + 32) = 0u;
                  *v212 = 0u;
                  *(v212 + 96) = v212 + 360;
                  *(v212 + 24) = v42;
                  *(v212 + 32) = v9;
                  *(v212 + 64) = nullsub_14;
                  *(v212 + 72) = 0;
                  if (v191)
                  {
                    sub_1819DF108(v212);
                  }

                  else
                  {
                    *(v212 + 20) = 1;
                  }

LABEL_424:
                  v205 = v286;
LABEL_425:
                  sub_1819D8AE8(v205);
                  if (v40)
                  {
                    if (dword_1ED452E80)
                    {
                      if (xmmword_1ED456AF0)
                      {
                        xmmword_1ED452F18(xmmword_1ED456AF0);
                      }

                      qword_1ED456A48[0] -= xmmword_1ED452EC0(v40);
                      --qword_1ED456A90;
                      off_1ED452EB0(v40);
                      v40 = xmmword_1ED456AF0;
                      if (xmmword_1ED456AF0)
                      {
                        v211 = &xmmword_1ED452F28;
                        goto LABEL_432;
                      }
                    }

                    else
                    {
                      v211 = &off_1ED452EB0;
LABEL_432:
                      (*v211)(v40);
                    }
                  }

                  v299 = v210;
                  goto LABEL_554;
                }
              }

              *v11 = 7;
              if (!v42)
              {
LABEL_423:
                v210 = 0;
                goto LABEL_424;
              }
            }

            if (v42[8] >= 1)
            {
              v201 = 0;
              do
              {
                sub_1819DB2CC(*&v42[2 * v201++ + 14]);
              }

              while (v201 < v42[8]);
            }

            v202 = *(v42 + 2);
            if (v202)
            {
              v203 = &off_1ED452EB0;
              if (!dword_1ED452E80)
              {
                goto LABEL_398;
              }

              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v202);
              --qword_1ED456A90;
              off_1ED452EB0(v202);
              v202 = xmmword_1ED456AF0;
              if (xmmword_1ED456AF0)
              {
                v203 = &xmmword_1ED452F28;
LABEL_398:
                (*v203)(v202);
              }
            }

            *(v42 + 2) = 0;
            *(v42 + 3) = 0;
            v204 = *(v42 + 5);
            v205 = v286;
            if (v204)
            {
              v206 = &off_1ED452EB0;
              if (!dword_1ED452E80)
              {
                goto LABEL_405;
              }

              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v204);
              --qword_1ED456A90;
              off_1ED452EB0(v204);
              v204 = xmmword_1ED456AF0;
              if (xmmword_1ED456AF0)
              {
                v206 = &xmmword_1ED452F28;
LABEL_405:
                (*v206)(v204);
              }
            }

            v207 = *(v42 + 1);
            if (v207)
            {
              v208 = &off_1ED452EB0;
              if (!dword_1ED452E80)
              {
                goto LABEL_412;
              }

              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v207);
              --qword_1ED456A90;
              off_1ED452EB0(v207);
              v207 = xmmword_1ED456AF0;
              if (xmmword_1ED456AF0)
              {
                v208 = &xmmword_1ED452F28;
LABEL_412:
                (*v208)(v207);
              }
            }

            v209 = &off_1ED452EB0;
            if (dword_1ED452E80)
            {
              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v42);
              --qword_1ED456A90;
              off_1ED452EB0(v42);
              v42 = xmmword_1ED456AF0;
              if (xmmword_1ED456AF0)
              {
                v209 = &xmmword_1ED452F28;
                goto LABEL_418;
              }
            }

            else
            {
LABEL_418:
              (*v209)(v42);
            }

            v210 = 0;
            goto LABEL_425;
          }
        }

        v49 = *v297;
        if (v41 < v48)
        {
          if (v41)
          {
            LODWORD(v50) = v41;
          }

          else
          {
            LODWORD(v50) = 64;
          }

          v50 = v50;
          do
          {
            v51 = v50;
            v50 *= 2;
          }

          while (v51 < v48);
          if (sqlite3_initialize() || (v54 = sub_18190287C(v40, v51, 688041480)) == 0)
          {
            LODWORD(v48) = 0;
            *v11 = 7;
LABEL_87:
            v47 = v41;
            goto LABEL_88;
          }

          v40 = v54;
          v41 = v51;
        }

        memcpy(v40, v49, v48);
        goto LABEL_87;
      }

      v32 = 0;
LABEL_36:
      v33 = *(v10 + 56);
      if (v33 < 1)
      {
        v24 = 0;
        goto LABEL_43;
      }

      v24 = 0;
      v34 = *(v10 + 64);
      v23 = v33 + 1;
      v35 = 1;
      do
      {
        v37 = *v34++;
        v36 = v37;
        if (v37 == v32)
        {
          LOBYTE(v23) = v35;
          if (v35 > v33)
          {
            goto LABEL_43;
          }

          goto LABEL_22;
        }

        if (v36 == v32 + 1)
        {
          v24 = v35;
        }

        ++v35;
      }

      while (v23 != v35);
      if (v23 > v33)
      {
        goto LABEL_43;
      }

      goto LABEL_22;
    }
  }

  result = 7;
LABEL_610:
  *v11 = 0;
  return result;
}

uint64_t sub_1819E5E40(uint64_t result, uint64_t a2, uint64_t a3, _DWORD *a4, char *a5, uint64_t a6, unsigned int a7, int a8, uint64_t *a9)
{
  v9 = a6;
  v11 = a3;
  v12 = result;
  v13 = a9;
  v15 = (result + 60);
  v14 = *(result + 60);
  if (v14)
  {
    v16 = 0;
  }

  else if ((a7 & 0x80000000) != 0)
  {
    v16 = *(a2 + 24);
    if ((a3 & 0x40) == 0 && *(result + 24) != 0)
    {
      ++v16;
    }
  }

  else
  {
    v16 = *(a2 + 16 * a7 + 36);
    if (v16 >= a8)
    {
      v16 = a8;
    }
  }

  v18 = v16;
  v19 = 2;
  do
  {
    v20 = v19;
    v19 *= 2;
  }

  while (v20 < v18);
  if (v14)
  {
    goto LABEL_17;
  }

  result = sqlite3_initialize();
  if (result || (result = sub_181902484(132 * v20 + 104, 1913357809)) == 0)
  {
    v13 = a9;
    if (132 * v20 + 104 >= 1)
    {
      *v15 = 7;
    }

LABEL_17:
    *v13 = 0;
    return result;
  }

  v71 = result;
  bzero(result, 132 * v20 + 104);
  v23 = v71;
  *(v71 + 72) = v20;
  v24 = v71 + 104;
  *(v71 + 96) = v71 + 104 + (v20 << 7);
  *(v71 + 32) = v12;
  *(v71 + 64) = nullsub_14;
  *a9 = v71;
  *(v71 + 76) = (v11 >> 1) & 1;
  *(v71 + 80) = (v11 & 0x10) != 0;
  *(v71 + 56) = a4;
  v25 = a2;
  v26 = a7;
  if ((v11 & 0x20) != 0)
  {
    goto LABEL_33;
  }

  if (*v15)
  {
LABEL_100:
    result = sub_1819DB2CC(v23);
    *a9 = 0;
    return result;
  }

  v27 = **(v71 + 32);
  v28 = *(v27 + 116);
  if (v28 == 1)
  {
    v29 = sub_1819F09D4;
  }

  else if (a4)
  {
    if (*a4)
    {
      if (v28)
      {
        v30 = *(v27 + 32);
        if (v30 <= 100)
        {
          *(v71 + 64) = sub_1819F0DAC;
          sub_1819D750C(v15, v71 + 40, v30);
          v23 = v71;
          v25 = a2;
          v26 = a7;
          goto LABEL_33;
        }

        v29 = sub_1819F0E9C;
      }

      else
      {
        v29 = sub_1819F0B0C;
      }
    }

    else
    {
      v29 = sub_1819F0B04;
    }
  }

  else
  {
    v29 = sub_1819F09E8;
  }

  *(v71 + 64) = v29;
LABEL_33:
  if (*v15)
  {
    goto LABEL_100;
  }

  if ((v26 & 0x80000000) == 0)
  {
    if (v18 >= 1)
    {
      v31 = v25 + 16 * v26;
      v32 = 56 * v18 - 56;
      do
      {
        sub_1819EE874(v12, *(v31 + 40) + v32, v24);
        v32 -= 56;
        v24 += 128;
      }

      while (v32 != -56);
    }

    goto LABEL_99;
  }

  v33 = 0;
  v70 = *(v25 + 28);
  if ((v11 & 0x40) == 0)
  {
    v34 = *(v12 + 24);
    if (v34)
    {
      if ((v11 & 8) != 0 || !a5)
      {
        *(v12 + 60) = sub_1819E87B0(*(v12 + 24), a5, v9);
        v38 = *(v12 + 24);
        v39 = *(v38 + 24);
        if (v39)
        {
          v40 = (v39 + 12);
          v41 = v39[7];
          sub_1819EB56C(v38, *(v38 + 24), 0);
          LODWORD(v39) = v39[6] - v41 - 48;
          if (*v15)
          {
            v42 = 0;
          }

          else if (sqlite3_initialize() || (v47 = sub_181902484(16, 1913357809)) == 0)
          {
            v42 = 0;
            *v15 = 7;
          }

          else
          {
            v42 = v47;
            *v47 = &v40[v41];
            v47[1] = 0;
          }
        }

        else
        {
          v40 = 0;
          LODWORD(v41) = 0;
          v42 = 0;
        }

        *(v12 + 48) = 0;
        v23 = v71;
        v25 = a2;
      }

      else
      {
        if (v9 < 1)
        {
          v36 = 13;
        }

        else
        {
          v35 = v9;
          v36 = 13;
          do
          {
            v36 ^= a5[v35 - 1] ^ (8 * v36);
          }

          while (v35-- > 1);
        }

        v43 = *(*(v34 + 32) + 8 * (v36 % *(v34 + 20)));
        if (v43)
        {
          while (1)
          {
            if (*(v43 + 28) == v9)
            {
              v44 = memcmp((v43 + 48), a5, v9);
              v25 = a2;
              if (!v44)
              {
                break;
              }
            }

            v43 = *v43;
            if (!v43)
            {
              v46 = 0;
              goto LABEL_60;
            }
          }

          v39 = v34;
          v45 = *(v43 + 24);
          if (sqlite3_initialize() || (v69 = v43, v62 = v45 - (v9 + 48), (v63 = sub_181902484(v62 + 26, 1698493578)) == 0))
          {
            v46 = 7;
            v25 = a2;
LABEL_60:
            v23 = v71;
            goto LABEL_62;
          }

          v42 = v63;
          v65 = v63 + 16;
          v67 = v63 + -32 - v9;
          memcpy((v63 + 16), (v69 + v9 + 48), v62);
          LODWORD(v39) = sub_1819EB56C(v39, v69, v67) + v62;
          *v15 = 0;
          *v42 = v65;
          v23 = v71;
          v25 = a2;
        }

        else
        {
          v46 = 0;
LABEL_62:
          LODWORD(v39) = 0;
          v42 = 0;
          *v15 = v46;
        }

        *(v23 + 112) |= 1u;
        v40 = a5;
        LODWORD(v41) = v9;
      }

      if (!v42)
      {
        goto LABEL_84;
      }

      *(v23 + 208) = 0;
      if (v41)
      {
        LODWORD(v48) = *(v23 + 212);
        if (v48 >= v41)
        {
          v49 = v40;
          v50 = 0;
          v51 = v41;
          v52 = v23;
          v53 = *(v23 + 200);
          v54 = v51;
LABEL_79:
          memcpy((v53 + v50), v49, v54);
          *(v52 + 208) += v51;
          v23 = v52;
          goto LABEL_80;
        }

        v68 = v39;
        if (!v48)
        {
          LODWORD(v48) = 64;
        }

        v48 = v48;
        do
        {
          v39 = v48;
          v48 *= 2;
        }

        while (v39 < v41);
        v64 = v41;
        v66 = *(v23 + 200);
        if (!sqlite3_initialize())
        {
          v53 = sub_18190287C(v66, v39, 688041480);
          if (v53)
          {
            v49 = v40;
            v51 = v41;
            v52 = v71;
            *(v71 + 212) = v39;
            *(v71 + 200) = v53;
            v50 = *(v71 + 208);
            LODWORD(v39) = v68;
            v54 = v64;
            goto LABEL_79;
          }
        }

        *v15 = 7;
        v23 = v71;
        LODWORD(v39) = v68;
      }

LABEL_80:
      *(v42 + 2) = v39;
      *(v42 + 3) = v39;
      *(v23 + 120) = v42;
      *(v71 + 136) = sub_1819DFFB0(*v42, (v71 + 216));
      *(v71 + 172) = *(v42 + 2);
      if ((v11 & 2) != 0)
      {
        *(v71 + 112) |= 2u;
        sub_1819E06E0(v12, v24);
      }

      else
      {
        sub_1819E0398(v12, v24);
      }

      v23 = v71;
      v25 = a2;
LABEL_84:
      if ((*(v23 + 112) & 2) != 0)
      {
        v55 = sub_1819EDAC4;
      }

      else if (*(*v12 + 116) == 1)
      {
        v55 = sub_1819EDB88;
      }

      else
      {
        v55 = sub_1819EDF3C;
      }

      *(v23 + 152) = v55;
      v33 = 1;
    }
  }

  if (v70 >= 1)
  {
    v56 = v25 + 32;
    v73 = v25 + 32 + 16 * v70;
    do
    {
      v57 = *(v56 + 4);
      if (v57 >= 1)
      {
        v58 = (v71 + 104 + (v33 << 7));
        v59 = v57 + 1;
        v60 = 56 * v57 - 56;
        v33 += v57;
        do
        {
          v61 = *(v56 + 8);
          if (a5)
          {
            sub_1819E716C(v12, a5, v9, v11, (v61 + v60), v58);
          }

          else
          {
            sub_1819EE874(v12, v61 + v60, v58);
          }

          v58 += 16;
          --v59;
          v60 -= 56;
        }

        while (v59 > 1);
      }

      v56 += 16;
    }

    while (v56 < v73);
  }

LABEL_99:
  v23 = v71;
  if (*v15)
  {
    goto LABEL_100;
  }

  return sub_1819E80C0(v12, v71);
}

void sub_1819E6520(int *a1)
{
  v131 = *MEMORY[0x1E69E9840];
  v2 = a1[16];
  if (v2)
  {
    a1[15] = v2;
    return;
  }

  if (a1[8] || a1[13])
  {
    v3 = *(a1 + 3);
    v113 = 0;
    v4 = sub_1819E25BC(a1);
    v114 = v4;
    v5 = *(a1 + 20);
    if (!v5)
    {
      goto LABEL_26;
    }

    v60 = (*v5)-- <= 1;
    if (!v60)
    {
      goto LABEL_25;
    }

    v105 = v3;
    if (v5[7] < 1)
    {
LABEL_18:
      v10 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        v3 = v105;
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v5);
        --qword_1ED456A90;
        off_1ED452EB0(v5);
        v5 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_25;
        }

        v10 = &xmmword_1ED452F28;
      }

      else
      {
        v3 = v105;
      }

      (*v10)(v5);
LABEL_25:
      *(a1 + 20) = 0;
LABEL_26:
      if (!*(v3 + 16) || (v11 = a1 + 15, a1[15]))
      {
        v12 = 0;
        goto LABEL_29;
      }

      if (v4[6] >= 2000)
      {
        v12 = 0;
        *v11 = 13;
        goto LABEL_29;
      }

      v129 = 0u;
      memset(v130, 0, sizeof(v130));
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v116 = 0u;
      v24 = v4[7];
      if (v24 >= 1)
      {
        for (i = 0; i != v24; ++i)
        {
          v26 = &v4[4 * i + 8];
          v27 = *(v26 + 4);
          if (v27 >= 1)
          {
            v28 = *(v26 + 8);
            do
            {
              v29 = *v28;
              v28 += 14;
              v30 = v29 - 1;
              if ((v29 - 1) <= 0x7CF)
              {
                *(&v116 + (v30 >> 5)) |= 1 << v30;
              }

              --v27;
            }

            while (v27);
          }
        }
      }

      v31 = -32;
      v32 = &v116;
      do
      {
        v34 = *v32++;
        v33 = v34;
        v31 += 32;
      }

      while (v34 == -1);
      v35 = 0;
      do
      {
        v36 = v33 >> v35++;
        ++v31;
      }

      while ((v36 & 1) != 0);
      v37 = *(*a1 + 196);
      v38 = *(*a1 + 116);
      v39 = *(*a1 + 232);
      *&v123 = 0;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v116 = 0u;
      sub_1819E8474(a1, &v116, v31);
      if (a1[15] || (v40 = sub_1819E87B0(v3, 0, 0), (*v11 = v40) != 0) || (v98 = v39 == 0, (v53 = *(v3 + 24)) == 0))
      {
LABEL_62:
        sub_1819EAC00(a1, &v116, &v113);
        v12 = v113;
        if (v113 >= 1)
        {
          v41 = v114;
          if (!v114[7])
          {
            sub_1819EAFC8(v11, &v114);
            v41 = v114;
          }

          if (!*v11)
          {
            v42 = v11;
            v43 = v41[9];
            v44 = v43 + 1;
            v45 = v43 == -1;
            v46 = *(v41 + 5);
            v47 = sqlite3_initialize();
            if (v45 || v47 || (v48 = sub_18190287C(v46, 56 * v44, 211794990)) == 0)
            {
              *v42 = 7;
            }

            else
            {
              v49 = v48 + 56 * v41[9];
              *(v49 + 48) = 0;
              *(v49 + 16) = 0u;
              *(v49 + 32) = 0u;
              *v49 = 0u;
              *(v41 + 5) = v48;
              if (!*v42)
              {
                v50 = v41[9];
                v41[9] = v50 + 1;
                v51 = v48 + 56 * v50;
                *v51 = v31;
                *(v51 + 4) = 1;
                *(v51 + 8) = v12;
                v52 = *(v41 + 2);
                if (v52)
                {
                  *(v51 + 16) = v52;
                  *(v51 + 24) = *(v41 + 2);
                  *(v51 + 48) = a1[14];
                  ++*(v41 + 2);
                }

                ++v41[6];
              }
            }
          }

          sub_1819EB308(a1, 0, v41);
        }

LABEL_29:
        v13 = *a1;
        if (!a1[15])
        {
          v19 = *(v13 + 200);
          if (v19 >= 1)
          {
            v20 = v114;
            if (!v114)
            {
              v14 = 0;
LABEL_37:
              sub_1819D8134(a1, v14);
              sub_1819D8AE8(v14);
              v18 = a1[15];
              if (v18)
              {
                if (a1[8] || a1[13])
                {
                  a1[16] = v18;
                }
              }

              else
              {
                sub_1819D8C28(*(a1 + 3));
                a1[8] = 0;
                a1[13] = 0;
                a1[14] = 0;
              }

              return;
            }

            v21 = *(v114 + 1);
            v22 = v21 + a1[13] + v12;
            v23 = a1[4];
            *(v114 + 1) = v22;
            sub_1819EBB18(a1, &v114, v23 * (v22 / v23 - v21 / v23) * v20[7], v19);
            v13 = *a1;
          }
        }

        v14 = v114;
        v15 = *(v13 + 204);
        *&v116 = v114;
        if (v114 && v114[7] >= 1)
        {
          if (!a1[15])
          {
            v16 = 1;
            v17 = 9;
            do
            {
              if (v14[v17] < v15)
              {
                break;
              }

              sub_1819EBD74(a1, &v116, v16 - 1, 0);
              v14 = v116;
              sub_1819EB308(a1, v16++, v116);
              v17 += 4;
            }

            while (!a1[15]);
          }

          v114 = v14;
        }

        goto LABEL_37;
      }

      v99 = v39;
      v100 = v38;
      v106 = v3;
      while (1)
      {
        v54 = *(v53 + 28);
        sub_1819EB56C(v3, v53, 0);
        v55 = (v53 + 48);
        __src = (v53 + 48 + v54);
        v56 = v54;
        v57 = (*(v53 + 24) - v54 - 48);
        if (v39)
        {
          v58 = *v11;
        }

        else
        {
          v59 = (v53 + 48);
          sub_1819E8AD4(a1, &v116, v56, v55);
          if (a1[15])
          {
            goto LABEL_62;
          }

          if (v37 > DWORD2(v117) + DWORD2(v118) + v57)
          {
            memcpy((v117 + SDWORD2(v117)), __src, v57);
            DWORD2(v117) += v57;
            v58 = *v11;
            goto LABEL_188;
          }

          v58 = 0;
          v55 = v59;
        }

        if (v58)
        {
          v60 = 1;
        }

        else
        {
          v60 = v57 < 1;
        }

        if (!v60)
        {
          v108 = v57;
          v109 = 0;
          LODWORD(v57) = 0;
          v61 = 0;
          v104 = v98;
          v101 = v56;
          v102 = v55;
          while (1)
          {
            v112 = 0;
            v64 = v57 + sub_1819DFFB0(&__src[v57], &v112);
            v109 += v112;
            if (v39)
            {
              v65 = v108;
              if (v38 == 1)
              {
                if (v64 < v108 && !__src[v64] && !sub_1819E90AC(a1, v114, v102, v56, v109))
                {
                  v57 = v64 + 1;
                  if (v57 >= v108 || __src[v57])
                  {
                    goto LABEL_91;
                  }

                  v65 = 0;
                  LODWORD(v64) = v64 + 2;
                }
              }

              else if ((__src[v64] & 1) != 0 && !sub_1819E90AC(a1, v114, v102, v56, v109) && (*v11 || __src[v64] == 1))
              {
                LODWORD(v57) = v64 + 1;
                goto LABEL_91;
              }
            }

            else
            {
              v65 = v108;
            }

            if (!(*v11 | v104))
            {
              sub_1819E8AD4(a1, &v116, v56, v102);
              v104 = 1;
            }

            if (BYTE9(v120))
            {
              *v117 = bswap32(WORD4(v117)) >> 16;
              v66 = (v117 + SDWORD2(v117));
              v61 = v109;
              if (v109 > 0x7F)
              {
                if (v109 >> 14)
                {
                  v67 = sub_1819436D0(v66, v109);
                }

                else
                {
                  v66->i8[0] = (v109 >> 7) | 0x80;
                  v66->i8[1] = v109 & 0x7F;
                  v67 = 2;
                }
              }

              else
              {
                v66->i8[0] = v109;
                v67 = 1;
              }

              DWORD2(v117) += v67;
              BYTE9(v120) = 0;
              sub_1819EA344(a1, &v116, v109);
              if (*v11)
              {
                goto LABEL_62;
              }
            }

            else
            {
              v68 = v109 - v61;
              v61 = v109;
              v69 = (v117 + SDWORD2(v117));
              if (v68 > 0x7F)
              {
                if (v68 >> 14)
                {
                  v70 = sub_1819436D0(v69, v68);
                }

                else
                {
                  v69->i8[0] = (v68 >> 7) | 0x80;
                  v69->i8[1] = v68 & 0x7F;
                  v70 = 2;
                }
              }

              else
              {
                v69->i8[0] = v68;
                v70 = 1;
              }

              DWORD2(v117) += v70;
              if (*v11)
              {
                goto LABEL_62;
              }
            }

            v108 = v65;
            if (v38 != 1)
            {
              v71 = &__src[v64];
              v72 = *v71;
              if (*v71 < 0)
              {
                v74 = v71[1];
                if (v71[1] < 0)
                {
                  v77 = v71[2];
                  if (v77 < 0)
                  {
                    v115 = 0;
                    v73 = sub_1819DFFB0(v71, &v115);
                    v72 = v115 & 0x7FFFFFFF;
                  }

                  else
                  {
                    v72 = ((v72 & 0x7F) << 14) | ((v74 & 0x7F) << 7) | v77;
                    v73 = 3;
                  }
                }

                else
                {
                  v72 = ((v72 & 0x7F) << 7) | v74;
                  v73 = 2;
                }
              }

              else
              {
                v73 = 1;
              }

              v78 = v64;
              if (v39 && (v72 & 1) != 0)
              {
                v79 = DWORD2(v117);
                v80 = (DWORD2(v117) + 9);
                if (v80 <= HIDWORD(v117))
                {
                  v84 = v117;
                  goto LABEL_154;
                }

                if (HIDWORD(v117))
                {
                  LODWORD(v81) = HIDWORD(v117);
                }

                else
                {
                  LODWORD(v81) = 64;
                }

                v81 = v81;
                do
                {
                  v82 = v81;
                  v81 *= 2;
                }

                while (v82 < v80);
                v83 = v117;
                if (sqlite3_initialize() || (v84 = sub_18190287C(v83, v82, 688041480)) == 0)
                {
                  *v11 = 7;
                }

                else
                {
                  HIDWORD(v117) = v82;
                  *&v117 = v84;
                  v79 = DWORD2(v117);
LABEL_154:
                  v85 = (v84 + v79);
                  if (v72 > 0x7F)
                  {
                    if (v72 >> 14)
                    {
                      v86 = sub_1819436D0(v85, v72 & 0xFFFFFFFE);
                    }

                    else
                    {
                      v85->i8[0] = (v72 >> 7) | 0x80;
                      v85->i8[1] = v72 & 0x7E;
                      v86 = 2;
                    }
                  }

                  else
                  {
                    v85->i8[0] = v72 & 0xFE;
                    v86 = 1;
                  }

                  DWORD2(v117) += v86;
                }

                v78 = v73 + v64;
                v62 = v72 >> 1;
              }

              else
              {
                v62 = v73 + (v72 >> 1);
              }

              v103 = v78;
              v87 = &__src[v78];
              v110 = v62;
              if ((DWORD2(v117) + v62 + DWORD2(v118)) <= v37)
              {
                memcpy((v117 + SDWORD2(v117)), v87, v62);
                v62 = v110;
                DWORD2(v117) += v110;
              }

              else
              {
                v88 = 0;
                v111 = &__src[v78];
                do
                {
                  if (*v11)
                  {
                    break;
                  }

                  v89 = v11;
                  v90 = SDWORD2(v117);
                  v91 = v37;
                  v92 = v37 - (DWORD2(v117) + DWORD2(v118));
                  v93 = v62 - v88;
                  if ((v62 - v88) > v92)
                  {
                    v94 = &v87[v88];
                    if (*v94 < 0)
                    {
                      if (v94[1] < 0)
                      {
                        if (v94[2] < 0)
                        {
                          v95 = sub_1819DFFB0(v94, &v115);
                          v87 = v111;
                        }

                        else
                        {
                          v95 = 3;
                        }
                      }

                      else
                      {
                        v95 = 2;
                      }
                    }

                    else
                    {
                      v95 = 1;
                    }

                    if (v95 < v92)
                    {
                      do
                      {
                        v93 = v95;
                        v97 = &v94[v95];
                        if (*v97 < 0)
                        {
                          if (v97[1] < 0)
                          {
                            if (v97[2] < 0)
                            {
                              v96 = sub_1819DFFB0(v97, &v115);
                              v87 = v111;
                            }

                            else
                            {
                              v96 = 3;
                            }
                          }

                          else
                          {
                            v96 = 2;
                          }
                        }

                        else
                        {
                          v96 = 1;
                        }

                        v95 = v96 + v93;
                      }

                      while (v95 <= v92);
                    }

                    else
                    {
                      v93 = v95;
                    }
                  }

                  memcpy((v117 + v90), &v87[v88], v93);
                  DWORD2(v117) += v93;
                  v37 = v91;
                  if (DWORD2(v118) + DWORD2(v117) >= v91)
                  {
                    sub_1819EA9A4(a1, &v116);
                  }

                  v88 += v93;
                  v62 = v110;
                  v11 = v89;
                  v87 = v111;
                }

                while (v88 < v110);
              }

              LODWORD(v57) = v62 + v103;
              v61 = v109;
              v39 = v99;
              v38 = v100;
              v56 = v101;
              goto LABEL_91;
            }

            if (v64 >= v65 || __src[v64])
            {
              LODWORD(v57) = v64;
            }

            else
            {
              v75 = SDWORD2(v117);
              ++DWORD2(v117);
              *(v117 + v75) = 0;
              v57 = v64 + 1;
              if (v57 < v108 && !__src[v57])
              {
                v76 = SDWORD2(v117);
                ++DWORD2(v117);
                *(v117 + v76) = 0;
                LODWORD(v57) = v64 + 2;
              }
            }

            if (DWORD2(v118) + DWORD2(v117) >= v37)
            {
              sub_1819EA9A4(a1, &v116);
            }

LABEL_91:
            v58 = *v11;
            if (*v11)
            {
              v63 = 0;
            }

            else
            {
              v63 = v57 < v108;
            }

            if (!v63)
            {
              v3 = v106;
              break;
            }
          }
        }

LABEL_188:
        if (!v58)
        {
          v53 = *(*(v3 + 24) + 8);
          *(v3 + 24) = v53;
          if (v53)
          {
            continue;
          }
        }

        goto LABEL_62;
      }
    }

    v6 = 0;
    v7 = (v5 + 10);
    while (1)
    {
      v8 = *v7;
      if (*v7)
      {
        v9 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v8);
          --qword_1ED456A90;
          off_1ED452EB0(v8);
          v8 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_11;
          }

          v9 = &xmmword_1ED452F28;
        }

        (*v9)(v8);
      }

LABEL_11:
      ++v6;
      v7 += 2;
      if (v6 >= v5[7])
      {
        goto LABEL_18;
      }
    }
  }
}

void sub_1819E716C(uint64_t **a1, char *a2, unsigned int a3, __int16 a4, unsigned int *a5, unsigned int **a6)
{
  *(a6 + 6) = 0u;
  *(a6 + 7) = 0u;
  *(a6 + 4) = 0u;
  *(a6 + 5) = 0u;
  *(a6 + 2) = 0u;
  *(a6 + 3) = 0u;
  *a6 = 0u;
  *(a6 + 1) = 0u;
  *a6 = a5;
  v12 = a1 + 14;
  if (!a1[14])
  {
    v13 = sqlite3_mprintf("SELECT pgno FROM '%q'.'%q_idx' WHERE segid=? AND term<=? ORDER BY term DESC LIMIT 1", (*a1)[2], (*a1)[3]);
    v14 = v13;
    if (!*(a1 + 15))
    {
      if (v13)
      {
        v15 = sub_1818954B4(**a1, v13, 0xFFFFFFFFLL, 133, 0, v12, 0);
        if (v15 == 1)
        {
          v16 = 11;
        }

        else
        {
          v16 = v15;
        }
      }

      else
      {
        v16 = 7;
      }

      *(a1 + 15) = v16;
    }

    if (v14)
    {
      v17 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
LABEL_15:
        (*v17)(v14);
        goto LABEL_16;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v14);
      --qword_1ED456A90;
      off_1ED452EB0(v14);
      v14 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v17 = &xmmword_1ED452F28;
        goto LABEL_15;
      }
    }
  }

LABEL_16:
  if (*(a1 + 15))
  {
    return;
  }

  v18 = a1[14];
  v19 = *a5;
  if (!sub_1818DF6EC(v18, 0))
  {
    v20 = v18[16];
    if ((*(v20 + 20) & 0x9000) != 0)
    {
      sub_18193D288(v20, v19);
    }

    else
    {
      *v20 = v19;
      *(v20 + 20) = 4;
    }

    v21 = *(*v18 + 24);
    if (v21)
    {
      xmmword_1ED452F28(v21);
    }
  }

  if ((a3 & 0x80000000) != 0)
  {
    sub_1819012D0(101409);
  }

  else if (!sub_1818DF6EC(v18, 1u))
  {
    if (a2)
    {
      v22 = sub_1818900D0(v18[16] + 64, a2, a3, 0, 0);
      if (v22)
      {
        v23 = v22;
        v24 = *v18;
        *(v24 + 80) = v23;
        sub_181932D5C(v24, v23);
        sub_18193C988(*v18, v23);
      }
    }

    v25 = *(*v18 + 24);
    if (v25)
    {
      xmmword_1ED452F28(v25);
    }
  }

  if (sqlite3_step(v18) == 100)
  {
    v26 = sqlite3_column_int(v18, 0);
    v27 = v26 >> 1;
    v28 = (v26 & 1) == 0;
  }

  else
  {
    v28 = 1;
    v27 = 1;
  }

  *(a1 + 15) = sqlite3_reset(v18);
  if (!sub_1818DF6EC(v18, 1u))
  {
    v29 = *(*v18 + 24);
    if (v29)
    {
      xmmword_1ED452F28(v29);
    }
  }

  v30 = a5[1];
  if (v27 <= v30)
  {
    v31 = a5[1];
  }

  else
  {
    v31 = v27;
  }

  *(a6 + 3) = v31 - 1;
  sub_1819E0144(a1, a6);
  v32 = a6[2];
  if (v32)
  {
    v144 = a4;
    v146 = a3;
    v142 = v27;
    v33 = *v32;
    v34 = v32[2];
    v35 = v32[3];
    v36 = (*v32 + v35);
    v37 = *v36;
    if (*v36 < 0)
    {
      v39 = v36[1];
      if (v36[1] < 0)
      {
        v40 = v36[2];
        if (v40 < 0)
        {
          v150 = 0;
          v38 = sub_1819DFFB0(v36, &v150);
          v37 = v150 & 0x7FFFFFFF;
          if ((v150 & 0x7FFFFFFF) > v34)
          {
LABEL_117:
            *(a1 + 15) = 267;
            a4 = v144;
LABEL_118:
            v27 = v142;
            goto LABEL_119;
          }
        }

        else
        {
          v37 = ((v37 & 0x7F) << 14) | ((v39 & 0x7F) << 7) | v40;
          v38 = 3;
          if (v37 > v34)
          {
            goto LABEL_117;
          }
        }
      }

      else
      {
        v37 = ((v37 & 0x7F) << 7) | v39;
        v38 = 2;
        if (v37 > v34)
        {
          goto LABEL_117;
        }
      }
    }

    else
    {
      v38 = 1;
      if (v37 > v34)
      {
        goto LABEL_117;
      }
    }

    v138 = v32;
    v140 = v28;
    v141 = v30;
    v41 = 0;
    v42 = 0;
    v43 = v38 + v35;
    v44 = v37;
    while (1)
    {
      v46 = (v33 + v37);
      v47 = *v46;
      if (*v46 < 0)
      {
        v49 = v46[1];
        if (v46[1] < 0)
        {
          v51 = v46[2];
          if (v51 < 0)
          {
            v150 = 0;
            v50 = sub_1819DFFB0(v46, &v150);
            v47 = v150 & 0x7FFFFFFF;
          }

          else
          {
            v47 = ((v47 & 0x7F) << 14) | ((v49 & 0x7F) << 7) | v51;
            v50 = 3;
          }
        }

        else
        {
          v47 = ((v47 & 0x7F) << 7) | v49;
          v50 = 2;
        }

        v48 = v50 + v37;
      }

      else
      {
        v48 = v37 + 1;
      }

      if (v41 < v42)
      {
        goto LABEL_99;
      }

      if (v41 == v42)
      {
        LODWORD(v53) = v146 - v41;
        if (v47 >= v146 - v41)
        {
          v53 = v53;
        }

        else
        {
          v53 = v47;
        }

        if (v53)
        {
          v54 = 0;
          while (*(v33 + v48 + v54) == a2[v41 + v54])
          {
            if (v53 == ++v54)
            {
              goto LABEL_75;
            }
          }

          LODWORD(v53) = v54;
        }

LABEL_75:
        v42 = v53 + v41;
        if (v53 + v41 == v146)
        {
          if (v53 == v47)
          {
            v149 = v47;
            v30 = v141;
            goto LABEL_187;
          }

LABEL_99:
          v149 = v47;
          v30 = v141;
          if ((v144 & 8) == 0)
          {
LABEL_100:
            v66 = &off_1ED452EB0;
            if (dword_1ED452E80)
            {
              a4 = v144;
              v28 = v140;
              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v138);
              --qword_1ED456A90;
              off_1ED452EB0(v138);
              if (xmmword_1ED456AF0)
              {
                v66 = &xmmword_1ED452F28;
                goto LABEL_106;
              }
            }

            else
            {
              a4 = v144;
              v28 = v140;
LABEL_106:
              (*v66)();
            }

            a6[2] = 0;
            goto LABEL_118;
          }

LABEL_187:
          v104 = v48;
          v105 = v47;
          v106 = v48 + v47;
          if (v47)
          {
            v107 = v106 > v34;
          }

          else
          {
            v107 = 1;
          }

          if (v107)
          {
            *(a1 + 15) = 267;
            a4 = v144;
            v28 = v140;
            goto LABEL_118;
          }

          v108 = (v104 + v47);
          a6[4] = v108;
          *(a6 + 14) = *(a6 + 3);
          *(a6 + 15) = v108;
          *(a6 + 26) = 0;
          v148 = v104;
          if (v41)
          {
            v139 = v105;
            LODWORD(v109) = *(a6 + 27);
            if (v109 >= v41)
            {
              v113 = 0;
              v114 = a6[12];
              v110 = v41;
              goto LABEL_203;
            }

            if (!v109)
            {
              LODWORD(v109) = 64;
            }

            v109 = v109;
            v110 = v41;
            do
            {
              v111 = v109;
              v109 *= 2;
            }

            while (v111 < v41);
            v137 = a6[12];
            if (sqlite3_initialize() || (v114 = sub_18190287C(v137, v111, 688041480)) == 0)
            {
              *(a1 + 15) = 7;
              v112 = *(a6 + 26);
              v30 = v141;
            }

            else
            {
              *(a6 + 27) = v111;
              a6[12] = v114;
              v113 = *(a6 + 26);
              v30 = v141;
LABEL_203:
              memcpy(v114 + v113, a2, v110);
              v112 = *(a6 + 26) + v41;
              *(a6 + 26) = v112;
            }

            v105 = v139;
            v104 = v148;
          }

          else
          {
            v112 = 0;
          }

          v115 = (v112 + v105);
          v116 = *(a6 + 27);
          if (v115 > v116)
          {
            if (v116)
            {
              LODWORD(v117) = *(a6 + 27);
            }

            else
            {
              LODWORD(v117) = 64;
            }

            v117 = v117;
            do
            {
              v118 = v117;
              v117 *= 2;
            }

            while (v118 < v115);
            v119 = a6[12];
            if (sqlite3_initialize() || (v120 = sub_18190287C(v119, v118, 688041480)) == 0)
            {
              *(a1 + 15) = 7;
            }

            else
            {
              *(a6 + 27) = v118;
              a6[12] = v120;
              v112 = *(a6 + 26);
              v104 = v148;
LABEL_214:
              memcpy(v120 + v112, (v33 + v104), v105);
              *(a6 + 26) += v105;
            }

            if (v43 >= v34)
            {
              v124 = a6[2];
              *(a6 + 17) = v124[2] + 1;
              a4 = v144;
            }

            else
            {
              v121 = (v33 + v43);
              v122 = *v121;
              if (*v121 < 0)
              {
                v130 = v121[1];
                a4 = v144;
                if (v121[1] < 0)
                {
                  v134 = v121[2];
                  if (v134 < 0)
                  {
                    v150 = 0;
                    v123 = sub_1819DFFB0(v121, &v150);
                    v122 = v150 & 0x7FFFFFFF;
                  }

                  else
                  {
                    v122 = ((v122 & 0x7F) << 14) | ((v130 & 0x7F) << 7) | v134;
                    v123 = 3;
                  }
                }

                else
                {
                  v122 = ((v122 & 0x7F) << 7) | v130;
                  v123 = 2;
                }
              }

              else
              {
                v123 = 1;
                a4 = v144;
              }

              v43 += v123;
              *(a6 + 17) = v122 + v44;
              v124 = a6[2];
            }

            *(a6 + 16) = v43;
            v135 = a6[4];
            v28 = v140;
            if (v135 < v124[3])
            {
LABEL_254:
              a6[4] = (v135 + sub_1819DFFB0((*v124 + v135), a6 + 14));
            }

            else
            {
              v135 = 4;
              while (1)
              {
                sub_1819E0144(a1, a6);
                v124 = a6[2];
                if (!v124)
                {
                  break;
                }

                if (v124[3] > 4)
                {
                  goto LABEL_254;
                }
              }

              if (!*(a1 + 15))
              {
                *(a1 + 15) = 267;
              }
            }

            sub_1819E0398(a1, a6);
            goto LABEL_118;
          }

          v120 = a6[12];
          goto LABEL_214;
        }

        if (v53 < v47 && *(v33 + v53 + v48) > a2[v42])
        {
          goto LABEL_99;
        }
      }

      if (v43 >= v34)
      {
        break;
      }

      v55 = (v33 + v43);
      v56 = *v55;
      if (*v55 < 0)
      {
        v58 = v55[1];
        if (v55[1] < 0)
        {
          v59 = v55[2];
          if (v59 < 0)
          {
            v150 = 0;
            v57 = sub_1819DFFB0(v55, &v150);
            v56 = v150 & 0x7FFFFFFF;
          }

          else
          {
            v56 = ((v56 & 0x7F) << 14) | ((v58 & 0x7F) << 7) | v59;
            v57 = 3;
          }
        }

        else
        {
          v56 = ((v56 & 0x7F) << 7) | v58;
          v57 = 2;
        }
      }

      else
      {
        v57 = 1;
      }

      v44 += v56;
      if (v44 >= v34)
      {
        *(a1 + 15) = 267;
        a4 = v144;
        v28 = v140;
        v30 = v141;
        goto LABEL_118;
      }

      v43 += v57;
      v37 = v44 + 1;
      v60 = (v33 + v44);
      v41 = *v60;
      if (*v60 < 0)
      {
        v45 = v60[1];
        if (v60[1] < 0)
        {
          v52 = v60[2];
          if (v52 < 0)
          {
            v150 = 0;
            v61 = sub_1819DFFB0(v60, &v150);
            v41 = v150 & 0x7FFFFFFF;
            v37 = v61 + v44;
          }

          else
          {
            v41 = ((v41 & 0x7F) << 14) | ((v45 & 0x7F) << 7) | v52;
            v37 = v44 + 3;
          }
        }

        else
        {
          v41 = ((v41 & 0x7F) << 7) | v45;
          v37 = v44 + 2;
        }
      }
    }

    v149 = v47;
    v30 = v141;
    if ((v144 & 8) == 0)
    {
      goto LABEL_100;
    }

    a4 = v144;
    v28 = v140;
    while (1)
    {
      sub_1819E0144(a1, a6);
      v62 = a6[2];
      if (!v62)
      {
        goto LABEL_118;
      }

      v34 = v62[2];
      v63 = v62[3];
      if (v63 < v34)
      {
        v33 = *v62;
        v64 = (*v62 + v63);
        v44 = *v64;
        if (*v64 < 0)
        {
          v67 = v64[1];
          if (v64[1] < 0)
          {
            v68 = v64[2];
            if (v68 < 0)
            {
              v150 = 0;
              v65 = sub_1819DFFB0(v64, &v150);
              v44 = v150 & 0x7FFFFFFF;
            }

            else
            {
              v44 = ((v44 & 0x7F) << 14) | ((v67 & 0x7F) << 7) | v68;
              v65 = 3;
            }
          }

          else
          {
            v44 = ((v44 & 0x7F) << 7) | v67;
            v65 = 2;
          }
        }

        else
        {
          v65 = 1;
        }

        v69 = v44 >= 4 && v44 < v63;
        if (v69)
        {
          v43 = v65 + v63;
          v41 = 0;
          v48 = sub_1819DFF14((v33 + v44), &v149) + v44;
          v47 = v149;
          goto LABEL_187;
        }

        goto LABEL_117;
      }
    }
  }

LABEL_119:
  if ((a4 & 0x108) == 8)
  {
    goto LABEL_232;
  }

  if (*(a1 + 15))
  {
    goto LABEL_232;
  }

  v70 = *(a6 + 2);
  v71 = v70 | 1;
  *(a6 + 2) = v70 | 1;
  v72 = a6[2];
  if (!v72)
  {
    goto LABEL_232;
  }

  if ((a4 & 2) != 0)
  {
    v71 = v70 | 3;
    *(a6 + 2) = v70 | 3;
  }

  if (v27 >= v30 && !v28)
  {
    v73 = *(a6 + 14);
    if (v73 != *(a6 + 3) || *(a6 + 17) >= v72[3])
    {
      a6[11] = sub_1819EE4E4(a1, v71 & 2, **a6, v73);
    }
  }

  if ((a4 & 2) == 0)
  {
    goto LABEL_232;
  }

  v74 = a6[11];
  if (!v74 || *(*a1 + 47) != 4)
  {
    v80 = a6[2];
    v81 = *(a6 + 3);
    if (*(a6 + 14) == v81)
    {
      v82 = *(a6 + 15);
    }

    else
    {
      v82 = 4;
    }

    v83 = v82;
    v84 = v82 + 8;
    v85 = v82 << 32;
    do
    {
      v85 += 0x100000000;
      if ((*(*v80 + v83) & 0x80000000) == 0)
      {
        break;
      }

      v69 = v83++ < v84;
    }

    while (v69);
    a6[4] = (v85 >> 32);
    if (*(a6 + 17) < v80[3] || *(a1 + 15))
    {
      goto LABEL_231;
    }

    v145 = a4;
    v143 = 0;
    v147 = 0;
    v86 = *a6;
    v87 = v81 + 1;
    v88 = 0x1ED452000uLL;
    while (1)
    {
      if (v81 >= v86[2])
      {
LABEL_176:
        a4 = v145;
        LODWORD(v75) = v147;
        v77 = v143;
        if (v143)
        {
          goto LABEL_177;
        }

LABEL_231:
        sub_1819E06E0(a1, a6);
        goto LABEL_232;
      }

      v89 = sub_1819DFC90(a1, v81 + (*v86 << 37) + 1);
      if (v89)
      {
        v90 = *(v89 + 2);
        if (v90 >= 4)
        {
          v91 = *(v89 + 3);
          if (v91 <= v90)
          {
            v95 = __rev16(**v89);
            v96 = v95 == 0;
            v97 = v143;
            if (v95)
            {
              v98 = v143;
            }

            else
            {
              v98 = v89;
            }

            if (v95)
            {
              v99 = v87;
            }

            else
            {
              v99 = v147;
            }

            v147 = v99;
            if (!v96)
            {
              v97 = v89;
            }

            v143 = v97;
            if (v98)
            {
              v100 = &off_1ED452EB0;
              if (!dword_1ED452E80)
              {
                goto LABEL_174;
              }

              if (xmmword_1ED456AF0)
              {
                (*(v88 + 3864))();
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v98);
              --qword_1ED456A90;
              v88 = 0x1ED452000;
              off_1ED452EB0(v98);
              v98 = xmmword_1ED456AF0;
              if (xmmword_1ED456AF0)
              {
                v100 = &xmmword_1ED452F28;
LABEL_174:
                (*v100)(v98);
              }
            }

            if (v91 < v90)
            {
              goto LABEL_176;
            }

            goto LABEL_150;
          }
        }

        *(a1 + 15) = 267;
        v92 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            v93 = v89;
            (*(v88 + 3864))(xmmword_1ED456AF0);
            v89 = v93;
          }

          v94 = v89;
          qword_1ED456A48[0] -= xmmword_1ED452EC0(v89);
          --qword_1ED456A90;
          off_1ED452EB0(v94);
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_150;
          }

          v92 = &xmmword_1ED452F28;
        }

        (*v92)();
      }

LABEL_150:
      ++v87;
      ++v81;
      if (*(a1 + 15))
      {
        goto LABEL_176;
      }
    }
  }

  v75 = v74[7];
  v76 = sub_1819DFC90(a1, v75 + (**a6 << 37));
  if (!v76)
  {
    goto LABEL_231;
  }

  v77 = v76;
  v78 = *(v76 + 2);
  if (v78 < 4 || *(v76 + 3) > v78)
  {
    *(a1 + 15) = 267;
    v79 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v77);
      --qword_1ED456A90;
      off_1ED452EB0(v77);
      v77 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_231;
      }

      v79 = &xmmword_1ED452F28;
    }

    (*v79)(v77);
    goto LABEL_231;
  }

LABEL_177:
  v101 = a6[2];
  if (!v101)
  {
    goto LABEL_184;
  }

  v102 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v101);
    --qword_1ED456A90;
    off_1ED452EB0(v101);
    v101 = xmmword_1ED456AF0;
    if (!xmmword_1ED456AF0)
    {
      goto LABEL_184;
    }

    v102 = &xmmword_1ED452F28;
  }

  (*v102)(v101);
LABEL_184:
  a6[2] = v77;
  *(a6 + 3) = v75;
  v103 = __rev16(**v77);
  if (v77[3] >= v103)
  {
    a6[4] = (sub_1819DFFB0((*v77 + v103), a6 + 14) + v103);
    v125 = v77[2];
    v126 = v77[3];
    if (v126 >= v125)
    {
      v128 = v125 + 1;
    }

    else
    {
      v127 = (*v77 + v126);
      v128 = *v127;
      if (*v127 < 0)
      {
        v129 = v127[1];
        if (v127[1] < 0)
        {
          v136 = v127[2];
          if (v136 < 0)
          {
            v150 = 0;
            sub_1819DFFB0(v127, &v150);
            v128 = v150 & 0x7FFFFFFF;
          }

          else
          {
            v128 = ((v128 & 0x7F) << 14) | ((v129 & 0x7F) << 7) | v136;
          }
        }

        else
        {
          v128 = ((v128 & 0x7F) << 7) | v129;
        }
      }
    }

    *(a6 + 17) = v128;
    goto LABEL_231;
  }

  *(a1 + 15) = 267;
LABEL_232:
  if ((a6[1] & 2) != 0)
  {
    a6[6] = sub_1819EDAC4;
    if ((a4 & 0x100) != 0)
    {
      return;
    }
  }

  else if (*(*a1 + 29) == 1)
  {
    a6[6] = sub_1819EDB88;
    if ((a4 & 0x100) != 0)
    {
      return;
    }
  }

  else
  {
    a6[6] = sub_1819EDF3C;
    if ((a4 & 0x100) != 0)
    {
      return;
    }
  }

  v131 = (*a6)[8];
  if (v131 >= 1 && !*(a1 + 15))
  {
    if (sqlite3_initialize() || (v132 = sub_181902484(8 * v131 + 16, 1913357809)) == 0)
    {
      *(a1 + 15) = 7;
    }

    else
    {
      v133 = v132;
      bzero(v132, 8 * v131 + 16);
      *v133 = 1;
      v133[1] = v131;
      a6[5] = v133;
    }
  }
}

uint64_t sub_1819E80C0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a2 + 72);
  if (v3 >= 2)
  {
    v4 = a2 + 104;
    v5 = *(a2 + 72);
    v45 = a2 + 104;
    while (1)
    {
      v6 = v5--;
      v7 = *(v2 + 96);
      if (v6 <= v3 / 2)
      {
        v10 = (v7 + 8 * v5);
        v8 = *v10;
        v9 = v10[2];
      }

      else
      {
        v8 = 2 * (v5 - v3 / 2);
        v9 = v8 | 1;
      }

      v11 = v7 + 4 * v5;
      v12 = v4 + (v8 << 7);
      *(v11 + 2) = 0;
      if (!*(v12 + 16))
      {
        goto LABEL_25;
      }

      v13 = v4 + (v9 << 7);
      if (!*(v13 + 16))
      {
        break;
      }

      v14 = *(v12 + 104);
      v15 = *(v13 + 104);
      if (v14 >= v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = v14;
      }

      if (v16 >= 1)
      {
        v17 = v3;
        v18 = memcmp(*(v12 + 96), *(v13 + 96), v16);
        v3 = v17;
        v4 = v45;
        v2 = a2;
        if (v18)
        {
          goto LABEL_23;
        }
      }

      v18 = v14 - v15;
      if (v14 != v15)
      {
        goto LABEL_23;
      }

      *(v11 + 2) = 1;
      v19 = *(v12 + 112);
      v20 = *(v13 + 112);
      if (v19 != v20)
      {
        if (*(v2 + 76) == v19 > v20)
        {
          v18 = -1;
        }

        else
        {
          v18 = 1;
        }

LABEL_23:
        if (v18 < 0)
        {
          LOWORD(v9) = v8;
        }

LABEL_25:
        *v11 = v9;
        goto LABEL_26;
      }

      if (v9)
      {
        if (!*(a1 + 60))
        {
          (*(v13 + 48))(a1, v13, 0);
          v2 = a2;
          v3 = *(a2 + 72);
        }

        for (i = v3 + v9 + ((v3 + v9) >> 31); ; i = v24 + (v24 >> 31))
        {
LABEL_32:
          while (2)
          {
            v24 = i >> 1;
            if (v5 > i >> 1 || *(a1 + 60))
            {
              goto LABEL_26;
            }

            v25 = *(v2 + 96);
            v26 = v24 - v3 / 2;
            if (v24 >= v3 / 2)
            {
              v27 = 2 * v26;
              v23 = (2 * v26) | 1;
            }

            else
            {
              v27 = *(v25 + 8 * v24);
              v23 = *(v25 + 4 * ((2 * (v24 & 0x3FFFFFFF)) | 1));
            }

            v28 = v25 + 4 * v24;
            v29 = v4 + (v27 << 7);
            *(v28 + 2) = 0;
            if (!*(v29 + 16))
            {
              goto LABEL_31;
            }

            v30 = v4 + (v23 << 7);
            if (!*(v30 + 16))
            {
              *v28 = v27;
              i = v24 + (v24 >> 31);
              continue;
            }

            break;
          }

          v31 = *(v29 + 104);
          v32 = *(v30 + 104);
          if (v31 >= v32)
          {
            v33 = v32;
          }

          else
          {
            v33 = v31;
          }

          if (v33 >= 1)
          {
            v34 = v3;
            v43 = v27;
            v22 = memcmp(*(v29 + 96), *(v30 + 96), v33);
            LOWORD(v27) = v43;
            v3 = v34;
            v4 = v45;
            v2 = a2;
            if (v22)
            {
              goto LABEL_29;
            }
          }

          v22 = v31 - v32;
          if (v31 != v32)
          {
            goto LABEL_29;
          }

          *(v28 + 2) = 1;
          v35 = *(v29 + 112);
          v36 = *(v30 + 112);
          if (v35 != v36)
          {
            break;
          }

          if (v23)
          {
            (*(v30 + 48))(a1, v30, 0);
            v2 = a2;
            v3 = *(a2 + 72);
            v24 = v3 + v23;
          }
        }

        if (*(v2 + 76) == v35 > v36)
        {
          v22 = -1;
        }

        else
        {
          v22 = 1;
        }

LABEL_29:
        if (v22 < 0)
        {
          LOWORD(v23) = v27;
        }

LABEL_31:
        *v28 = v23;
        i = v24 + (v24 >> 31);
        goto LABEL_32;
      }

LABEL_26:
      if (v6 <= 2)
      {
        goto LABEL_53;
      }
    }

    LOWORD(v9) = v8;
    goto LABEL_25;
  }

LABEL_53:
  v37 = v2 + 104;
  v38 = v2 + 104 + (*(*(v2 + 96) + 4) << 7);
  v39 = *(v38 + 16);
  *(v2 + 20) = v39 == 0;
  *(v2 + 88) = *(v38 + 112);
  if (*(v2 + 80) && !*(a1 + 60) && v39 && !*(v38 + 120) || (result = sub_1819DF594(v2), v2 = a2, result))
  {

    return sub_1819DEB74(a1, v2, 0, 0);
  }

  else if (!*(a2 + 20))
  {
    v41 = v37 + (*(*(a2 + 96) + 4) << 7);
    v42 = *(a2 + 64);

    return v42(a2, v41);
  }

  return result;
}

void sub_1819E8474(uint64_t **a1, int *a2, int a3)
{
  v5 = (*(*a1 + 49) + 20);
  *(a2 + 14) = 0;
  *(a2 + 5) = 0u;
  *(a2 + 6) = 0u;
  *(a2 + 3) = 0u;
  *(a2 + 4) = 0u;
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  *a2 = a3;
  if (!*(a1 + 15) && a2[21] <= 1)
  {
    v6 = *(a2 + 11);
    if (sqlite3_initialize() || (v7 = sub_18190287C(v6, 0x20uLL, 0x1010040F09D962ALL)) == 0)
    {
      *(a1 + 15) = 7;
    }

    else
    {
      v8 = v7;
      bzero((v7 + 32 * a2[21]), 32 * (1 - a2[21]));
      *(a2 + 11) = v8;
      a2[21] = 1;
    }
  }

  a2[2] = 1;
  *(a2 + 74) = 1;
  a2[28] = 1;
  LODWORD(v9) = a2[11];
  if (v9 < v5)
  {
    if (!v9)
    {
      LODWORD(v9) = 64;
    }

    v9 = v9;
    do
    {
      v10 = v9;
      v9 *= 2;
    }

    while (v10 < v5);
    v11 = *(a2 + 4);
    if (sqlite3_initialize() || (v12 = sub_18190287C(v11, v10, 688041480)) == 0)
    {
      *(a1 + 15) = 7;
    }

    else
    {
      a2[11] = v10;
      *(a2 + 4) = v12;
    }
  }

  LODWORD(v13) = a2[7];
  if (v13 < v5)
  {
    if (!v13)
    {
      LODWORD(v13) = 64;
    }

    v13 = v13;
    do
    {
      v14 = v13;
      v13 *= 2;
    }

    while (v14 < v5);
    v15 = *(a2 + 2);
    if (sqlite3_initialize() || (v16 = sub_18190287C(v15, v14, 688041480)) == 0)
    {
      *(a1 + 15) = 7;
    }

    else
    {
      a2[7] = v14;
      *(a2 + 2) = v16;
    }
  }

  v17 = a1 + 12;
  if (!a1[12])
  {
    v18 = sqlite3_mprintf("INSERT INTO '%q'.'%q_idx'(segid,term,pgno) VALUES(?,?,?)", (*a1)[2], (*a1)[3]);
    v19 = v18;
    if (!*(a1 + 15))
    {
      if (v18)
      {
        v20 = sub_1818954B4(**a1, v18, 0xFFFFFFFFLL, 133, 0, a1 + 12, 0);
        if (v20 == 1)
        {
          v21 = 11;
        }

        else
        {
          v21 = v20;
        }
      }

      else
      {
        v21 = 7;
      }

      *(a1 + 15) = v21;
    }

    if (v19)
    {
      v22 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
LABEL_39:
        (*v22)(v19);
        goto LABEL_40;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v19);
      --qword_1ED456A90;
      off_1ED452EB0(v19);
      v19 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v22 = &xmmword_1ED452F28;
        goto LABEL_39;
      }
    }
  }

LABEL_40:
  if (!*(a1 + 15))
  {
    **(a2 + 2) = 0;
    a2[6] = 4;
    v23 = *v17;
    v24 = *a2;
    if (!sub_1818DF6EC(*v17, 0))
    {
      v25 = v23[16];
      if ((*(v25 + 20) & 0x9000) != 0)
      {
        sub_18193D288(v25, v24);
      }

      else
      {
        *v25 = v24;
        *(v25 + 20) = 4;
      }

      if (*(*v23 + 24))
      {
        v26 = xmmword_1ED452F28;

        v26();
      }
    }
  }
}

uint64_t sub_1819E87B0(uint64_t a1, const void *a2, int a3)
{
  v5 = a1;
  *(a1 + 24) = 0;
  if (sqlite3_initialize())
  {
    return 7;
  }

  v7 = sub_181902484(256, 0x2004093837F09);
  if (!v7)
  {
    return 7;
  }

  v8 = v7;
  v7[14] = 0u;
  v7[15] = 0u;
  v7[12] = 0u;
  v7[13] = 0u;
  v7[10] = 0u;
  v7[11] = 0u;
  v7[8] = 0u;
  v7[9] = 0u;
  v7[6] = 0u;
  v7[7] = 0u;
  v7[4] = 0u;
  v7[5] = 0u;
  v7[2] = 0u;
  v7[3] = 0u;
  *v7 = 0u;
  v7[1] = 0u;
  v33 = *(v5 + 20);
  if (v33 >= 1)
  {
    v9 = 0;
    v32 = v5;
    do
    {
      for (i = *(*(v5 + 32) + 8 * v9); i; i = *i)
      {
        if (!a2 || *(i + 7) >= a3 && !memcmp(i + 6, a2, a3))
        {
          i[1] = 0;
          v12 = *v8;
          v13 = i;
          v11 = v8;
          if (*v8)
          {
            v14 = 0;
            v13 = i;
            do
            {
              v34 = 0;
              v15 = &v34;
              do
              {
                if (v13)
                {
                  if (v12)
                  {
                    v16 = *(v13 + 28);
                    v17 = *(v12 + 28);
                    v18 = v16 - v17;
                    if (v16 >= v17)
                    {
                      v16 = *(v12 + 28);
                    }

                    v19 = memcmp((v13 + 48), (v12 + 48), v16);
                    if (v19)
                    {
                      v20 = v19;
                    }

                    else
                    {
                      v20 = v18;
                    }

                    if (v20 < 1)
                    {
                      *v15 = v13;
                      v15 = (v13 + 8);
                      v13 = *(v13 + 8);
                    }

                    else
                    {
                      *v15 = v12;
                      v15 = (v12 + 8);
                      v12 = *(v12 + 8);
                    }

                    *v15 = 0;
                  }

                  else
                  {
                    *v15 = v13;
                    v13 = 0;
                  }
                }

                else
                {
                  *v15 = v12;
                  v12 = 0;
                }
              }

              while (v13 | v12);
              v13 = v34;
              v8[v14++] = 0;
              v12 = v8[v14];
            }

            while (v12);
            v11 = &v8[v14];
          }

          *v11 = v13;
        }
      }

      ++v9;
      v5 = v32;
    }

    while (v9 != v33);
  }

  v21 = 0;
  v22 = 0;
  do
  {
    v23 = 0;
    v24 = v8[v21];
    v34 = 0;
    if (v22 | v24)
    {
      v25 = &v34;
      do
      {
        if (v22)
        {
          if (v24)
          {
            v26 = *(v22 + 28);
            v27 = *(v24 + 28);
            v28 = v26 - v27;
            if (v26 >= v27)
            {
              v26 = *(v24 + 28);
            }

            v29 = memcmp((v22 + 48), (v24 + 48), v26);
            if (v29)
            {
              v30 = v29;
            }

            else
            {
              v30 = v28;
            }

            if (v30 < 1)
            {
              *v25 = v22;
              v25 = (v22 + 8);
              v22 = *(v22 + 8);
            }

            else
            {
              *v25 = v24;
              v25 = (v24 + 8);
              v24 = *(v24 + 8);
            }

            *v25 = 0;
          }

          else
          {
            *v25 = v22;
            v22 = 0;
          }
        }

        else
        {
          *v25 = v24;
          v24 = 0;
        }
      }

      while (v22 | v24);
      v23 = v34;
    }

    ++v21;
    v22 = v23;
  }

  while (v21 != 32);
  v31 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v8);
    --qword_1ED456A90;
    off_1ED452EB0(v8);
    v8 = xmmword_1ED456AF0;
    if (!xmmword_1ED456AF0)
    {
      goto LABEL_58;
    }

    v31 = &xmmword_1ED452F28;
  }

  (*v31)(v8);
LABEL_58:
  result = 0;
  *(v5 + 24) = v23;
  return result;
}

void sub_1819E8AD4(_DWORD *a1, uint64_t a2, int a3, unsigned __int8 *a4)
{
  v8 = *(a2 + 56);
  if (v8 >= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(a2 + 24);
  if (a3 + v10 + *(a2 + 40) + 2 >= *(*a1 + 196))
  {
    if (v10 >= 5)
    {
      sub_1819EA9A4(a1, a2);
      if (a1[15])
      {
        return;
      }

      v10 = *(a2 + 24);
    }

    v11 = (a3 + v10 + 20);
    LODWORD(v12) = *(a2 + 28);
    if (v11 > v12)
    {
      if (!v12)
      {
        LODWORD(v12) = 64;
      }

      v12 = v12;
      do
      {
        v13 = v12;
        v12 *= 2;
      }

      while (v13 < v11);
      v14 = *(a2 + 16);
      if (sqlite3_initialize() || (v15 = sub_18190287C(v14, v13, 688041480)) == 0)
      {
        a1[15] = 7;
      }

      else
      {
        *(a2 + 28) = v13;
        *(a2 + 16) = v15;
      }
    }
  }

  v16 = (*(a2 + 32) + *(a2 + 40));
  v17 = *(a2 + 24);
  v18 = *(a2 + 12);
  v19 = v17 - v18;
  if ((v17 - v18) > 0x7F)
  {
    if (v19 >> 14)
    {
      v20 = sub_1819436D0(v16, v19);
    }

    else
    {
      v16->i8[0] = (v19 >> 7) | 0x80;
      v16->i8[1] = v19 & 0x7F;
      v20 = 2;
    }
  }

  else
  {
    v16->i8[0] = v19;
    v20 = 1;
  }

  *(a2 + 40) += v20;
  v21 = *(a2 + 24);
  *(a2 + 12) = v21;
  if (!*(a2 + 74))
  {
    if (v9 < 1)
    {
      LODWORD(v9) = 0;
    }

    else
    {
      v22 = 0;
      while (*(*(a2 + 48) + v22) == a4[v22])
      {
        if (v9 == ++v22)
        {
          goto LABEL_38;
        }
      }

      LODWORD(v9) = v22;
    }

LABEL_38:
    v25 = (v21 + 9);
    v26 = *(a2 + 28);
    if (v25 <= v26)
    {
      v30 = *(a2 + 16);
    }

    else
    {
      if (v26)
      {
        LODWORD(v27) = *(a2 + 28);
      }

      else
      {
        LODWORD(v27) = 64;
      }

      v27 = v27;
      do
      {
        v28 = v27;
        v27 *= 2;
      }

      while (v28 < v25);
      v29 = *(a2 + 16);
      if (sqlite3_initialize() || (v30 = sub_18190287C(v29, v28, 688041480)) == 0)
      {
        a1[15] = 7;
        goto LABEL_67;
      }

      *(a2 + 28) = v28;
      *(a2 + 16) = v30;
      v21 = *(a2 + 24);
    }

    v31 = (v30 + v21);
    if (v9 > 0x7F)
    {
      if (v9 >> 14)
      {
        v32 = sub_1819436D0(v31, v9);
      }

      else
      {
        v31->i8[0] = (v9 >> 7) | 0x80;
        v31->i8[1] = v9 & 0x7F;
        v32 = 2;
      }
    }

    else
    {
      v31->i8[0] = v9;
      v32 = 1;
    }

    *(a2 + 24) += v32;
LABEL_67:
    v37 = v9;
    v38 = *(a2 + 24);
    v39 = *(a2 + 28);
    v40 = (v38 + 9);
    if (v40 <= v39)
    {
      v45 = *(a2 + 16);
    }

    else
    {
      if (v39)
      {
        LODWORD(v41) = *(a2 + 28);
      }

      else
      {
        LODWORD(v41) = 64;
      }

      v41 = v41;
      do
      {
        v42 = v41;
        v41 *= 2;
      }

      while (v42 < v40);
      v43 = *(a2 + 16);
      if (sqlite3_initialize() || (v45 = sub_18190287C(v43, v42, 688041480)) == 0)
      {
        a1[15] = 7;
        v44 = (a3 - v9);
        if (a3 == v9)
        {
          goto LABEL_95;
        }

LABEL_85:
        v49 = *(a2 + 24);
        v50 = *(a2 + 28);
        v51 = (v49 + v44);
        if (v51 <= v50)
        {
          v55 = *(a2 + 16);
        }

        else
        {
          if (v50)
          {
            LODWORD(v52) = *(a2 + 28);
          }

          else
          {
            LODWORD(v52) = 64;
          }

          v52 = v52;
          do
          {
            v53 = v52;
            v52 *= 2;
          }

          while (v53 < v51);
          v54 = *(a2 + 16);
          if (sqlite3_initialize() || (v55 = sub_18190287C(v54, v53, 688041480)) == 0)
          {
            a1[15] = 7;
            goto LABEL_95;
          }

          *(a2 + 28) = v53;
          *(a2 + 16) = v55;
          v49 = *(a2 + 24);
        }

        memcpy((v55 + v49), &a4[v37], v44);
        *(a2 + 24) += v44;
LABEL_95:
        *(a2 + 56) = 0;
        if (a3)
        {
          LODWORD(v56) = *(a2 + 60);
          if (v56 >= a3)
          {
            v60 = 0;
            v61 = *(a2 + 48);
            v57 = a3;
LABEL_104:
            memcpy((v61 + v60), a4, v57);
            *(a2 + 56) += a3;
            goto LABEL_105;
          }

          if (!v56)
          {
            LODWORD(v56) = 64;
          }

          v56 = v56;
          v57 = a3;
          do
          {
            v58 = v56;
            v56 *= 2;
          }

          while (v58 < a3);
          v59 = *(a2 + 48);
          if (!sqlite3_initialize())
          {
            v61 = sub_18190287C(v59, v58, 688041480);
            if (v61)
            {
              *(a2 + 60) = v58;
              *(a2 + 48) = v61;
              v60 = *(a2 + 56);
              goto LABEL_104;
            }
          }

          a1[15] = 7;
        }

LABEL_105:
        *(a2 + 74) = 0;
        *(a2 + 72) = 1;
        **(a2 + 88) = *(a2 + 8);
        return;
      }

      *(a2 + 28) = v42;
      *(a2 + 16) = v45;
      v38 = *(a2 + 24);
    }

    v46 = a3 - v9;
    v47 = (v45 + v38);
    if (v46 > 0x7F)
    {
      if (v46 >> 14)
      {
        v48 = sub_1819436D0(v47, v46);
      }

      else
      {
        v47->i8[0] = (v46 >> 7) | 0x80;
        v47->i8[1] = v46 & 0x7F;
        v48 = 2;
      }
    }

    else
    {
      v47->i8[0] = v46;
      v48 = 1;
    }

    *(a2 + 24) += v48;
    v44 = (a3 - v9);
    if (a3 == v9)
    {
      goto LABEL_95;
    }

    goto LABEL_85;
  }

  if (*(a2 + 8) == 1)
  {
LABEL_24:
    LODWORD(v9) = 0;
    goto LABEL_67;
  }

  v23 = a3;
  if (*(a2 + 56))
  {
    if (v9 < 1)
    {
      LODWORD(v9) = 0;
    }

    else
    {
      v24 = 0;
      while (*(*(a2 + 48) + v24) == a4[v24])
      {
        if (v9 == ++v24)
        {
          goto LABEL_55;
        }
      }

      LODWORD(v9) = v24;
    }

LABEL_55:
    v23 = v9 + 1;
  }

  sub_1819EB6B8(a1, a2);
  if (!a1[15])
  {
    *(a2 + 104) = 0;
    if (v23)
    {
      LODWORD(v33) = *(a2 + 108);
      if (v33 >= v23)
      {
        v62 = 0;
        v63 = *(a2 + 96);
        v34 = v23;
      }

      else
      {
        if (!v33)
        {
          LODWORD(v33) = 64;
        }

        v33 = v33;
        v34 = v23;
        do
        {
          v35 = v33;
          v33 *= 2;
        }

        while (v35 < v23);
        v36 = *(a2 + 96);
        if (sqlite3_initialize() || (v63 = sub_18190287C(v36, v35, 688041480)) == 0)
        {
          a1[15] = 7;
          *(a2 + 112) = *(a2 + 8);
          return;
        }

        *(a2 + 108) = v35;
        *(a2 + 96) = v63;
        v62 = *(a2 + 104);
      }

      memcpy((v63 + v62), a4, v34);
      *(a2 + 104) += v23;
      v64 = a1[15];
      *(a2 + 112) = *(a2 + 8);
      if (!v64)
      {
        goto LABEL_24;
      }

      return;
    }

    LODWORD(v9) = 0;
    *(a2 + 112) = *(a2 + 8);
    goto LABEL_67;
  }
}

uint64_t sub_1819E90AC(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, unsigned int *a5)
{
  v184 = 0;
  v10 = *a1;
  if (*(*a1 + 188) != 5)
  {
    v188[0] = 0;
    v11 = sqlite3_mprintf("REPLACE INTO %Q.'%q_config' VALUES ('version', %d)", v10[2], v10[3], 5);
    v12 = v11;
    if (!*(a1 + 60))
    {
      if (v11)
      {
        v13 = sub_1818954B4(**a1, v11, 0xFFFFFFFFLL, 133, 0, v188, 0);
        if (v13 == 1)
        {
          v14 = 11;
        }

        else
        {
          v14 = v13;
        }
      }

      else
      {
        v14 = 7;
      }

      *(a1 + 60) = v14;
    }

    if (!v12)
    {
      goto LABEL_16;
    }

    v15 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v12);
      --qword_1ED456A90;
      off_1ED452EB0(v12);
      v12 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_16;
      }

      v15 = &xmmword_1ED452F28;
    }

    (*v15)(v12);
LABEL_16:
    if (!*(a1 + 60))
    {
      sqlite3_step(v188[0]);
      v16 = sqlite3_finalize(v188[0]);
      if (!*(a1 + 60))
      {
        *(a1 + 60) = v16;
      }

      v17 = *(v10 + 48) + 1;
      *(v10 + 47) = 5;
      *(v10 + 48) = v17;
    }
  }

  sub_1819E5E40(a1, a2, 64, 0, a3, a4, 0xFFFFFFFF, 0, &v184);
  if (*(a1 + 60))
  {
    goto LABEL_22;
  }

  v18 = v184;
  if (*(v184 + 20))
  {
    goto LABEL_22;
  }

  v20 = v184 + 104;
  if (*(v184 + 104 + (*(*(v184 + 96) + 4) << 7) + 112) < a5)
  {
    do
    {
      sub_1819DEB74(a1, v18, 1, a5);
      if (*(a1 + 60) || *(v18 + 20))
      {
        goto LABEL_22;
      }

      v21 = *(v20 + (*(*(v18 + 96) + 4) << 7) + 112);
      v22 = *(v18 + 76);
    }

    while ((v22 || v21 < a5) && (!v22 || v21 > a5));
  }

  v23 = (v20 + (*(*(v18 + 96) + 4) << 7));
  if (v23[14] != a5)
  {
    goto LABEL_22;
  }

  v24 = *(*a1 + 116);
  v25 = **v23;
  v26 = v23[2];
  v27 = *v26;
  v29 = v26[2];
  v28 = v26[3];
  v187 = 0;
  v30 = (v29 - v28);
  if (sqlite3_initialize() || (v32 = sub_181902484(v30 + 16, 1913357809)) == 0)
  {
    if (v30 >= -15)
    {
      *(a1 + 60) = 7;
      goto LABEL_22;
    }

    v31 = 0;
  }

  else
  {
    v31 = v32;
    bzero(v32, v30 + 16);
  }

  if (*(a1 + 60))
  {
    goto LABEL_22;
  }

  v172 = v25;
  memcpy(v31, &v27[v28], v30);
  v33 = *(v23 + 3);
  v179 = v28;
  v171 = v29;
  if (v33 == *(v23 + 14))
  {
    v34 = *(v23 + 15);
  }

  else
  {
    v34 = __rev16(*v27);
  }

  v35 = v34 + sub_1819DFFB0(&v27[v34], &v187);
  if (v24 == 1)
  {
    v36 = v23[4];
    for (i = v35; v36 > v35; i = v35)
    {
      if (v27[i])
      {
        v38 = v35;
      }

      else
      {
        v38 = v35 + 1;
      }

      if (v27[v38])
      {
        v34 = v38;
      }

      else
      {
        v34 = v38 + 1;
      }

      LODWORD(v35) = v34 + sub_1819DFFB0(&v27[v34], &v187);
    }

    v42 = *(v23 + 17);
    if (v35 < v42 && !v27[i])
    {
      LODWORD(v35) = v35 + 1;
    }

    if (v35 < v42 && !v27[v35])
    {
      LODWORD(v35) = v35 + 1;
    }
  }

  else
  {
    v39 = &v27[v35];
    v40 = v27[v35];
    if (v27[v35] < 0)
    {
      v43 = v39[1];
      if (v39[1] < 0)
      {
        v44 = v39[2];
        if (v44 < 0)
        {
          v188[0] = 0;
          v41 = sub_1819DFFB0(v39, v188);
          v40 = v188[0] & 0x7FFFFFFF;
        }

        else
        {
          v40 = ((v40 & 0x7F) << 14) | ((v43 & 0x7F) << 7) | v44;
          v41 = 3;
        }
      }

      else
      {
        v40 = ((v40 & 0x7F) << 7) | v43;
        v41 = 2;
      }
    }

    else
    {
      v41 = 1;
    }

    v45 = v41 + v35;
    v46 = v23[4];
    if (v46 > v41 + v35)
    {
      do
      {
        v34 = v45 + (v40 >> 1);
        v48 = v34 + sub_1819DFFB0(&v27[v34], &v187);
        v49 = &v27[v48];
        v40 = *v49;
        if ((v40 & 0x80) != 0)
        {
          v50 = v49[1];
          if (v49[1] < 0)
          {
            v51 = v49[2];
            if (v51 < 0)
            {
              v188[0] = 0;
              v47 = sub_1819DFFB0(v49, v188);
              v40 = v188[0] & 0x7FFFFFFF;
            }

            else
            {
              v40 = ((v40 & 0x7F) << 14) | ((v50 & 0x7F) << 7) | v51;
              v47 = 3;
            }
          }

          else
          {
            v40 = ((v40 & 0x7F) << 7) | v50;
            v47 = 2;
          }
        }

        else
        {
          v47 = 1;
        }

        v45 = v47 + v48;
      }

      while (v46 > v47 + v48);
      v28 = v179;
    }

    LODWORD(v35) = *(v23 + 30) + v46;
  }

  v181 = v23;
  v182 = v31;
  v183 = v30;
  if (v35 < v28)
  {
    v52 = 0;
    goto LABEL_147;
  }

  if (*(a1 + 60))
  {
    v52 = 1;
    goto LABEL_146;
  }

  v53 = *v23;
  v54 = v33 + 1;
  __src = *(*a1 + 116);
  while (1)
  {
    if (v54 > v53[2])
    {
LABEL_103:
      v52 = 1;
      v28 = v179;
      goto LABEL_146;
    }

    v55 = v54 + (*v53 << 37);
    v56 = sub_1819DFC90(a1, v55);
    if (!v56)
    {
      v52 = 1;
      v28 = v179;
      v23 = v181;
      goto LABEL_146;
    }

    v57 = v56;
    v58 = *v56;
    v59 = __rev16(**v56);
    if (v59)
    {
      v52 = 0;
      goto LABEL_107;
    }

    v60 = *(v56 + 3);
    if (v60 != *(v56 + 2))
    {
      v61 = &v58[v60];
      v62 = v58[v60];
      v59 = v62;
      if (v62 < 0)
      {
        v63 = v61[1];
        if (v61[1] < 0)
        {
          v64 = v61[2];
          if (v64 < 0)
          {
            v188[0] = 0;
            sub_1819DFFB0(v61, v188);
            v59 = v188[0] & 0x7FFFFFFF;
          }

          else
          {
            v59 = ((v59 & 0x7F) << 14) | ((v63 & 0x7F) << 7) | v64;
          }
        }

        else
        {
          v59 = ((v59 & 0x7F) << 7) | v63;
        }
      }

      if (v59)
      {
        break;
      }
    }

    LODWORD(v188[0]) = 0x4000000;
    if (__src != 1)
    {
      sub_1819D7E9C(a1, v55, v188, 4u);
    }

    v65 = &off_1ED452EB0;
    LODWORD(v30) = v183;
    if (dword_1ED452E80)
    {
      v23 = v181;
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v57);
      --qword_1ED456A90;
      off_1ED452EB0(v57);
      v57 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_84;
      }

      v65 = &xmmword_1ED452F28;
    }

    else
    {
      v23 = v181;
    }

    (*v65)(v57);
LABEL_84:
    ++v54;
    if (*(a1 + 60))
    {
      goto LABEL_103;
    }
  }

  v52 = 1;
LABEL_107:
  if (__src == 1)
  {
    goto LABEL_139;
  }

  v66 = *(v57 + 3);
  if (v59 >= v66 || ((v67 = *(v57 + 2), v59 >= 4) ? (v68 = v67 < v66) : (v68 = 1), v68))
  {
    *(a1 + 60) = 267;
    goto LABEL_139;
  }

  v169 = v59 - 4;
  __srca = *(v57 + 2);
  if (v67 <= v66)
  {
    v70 = 0;
    __srcb = 0;
    goto LABEL_119;
  }

  v69 = &v58[v66];
  v167 = v58[v66];
  if (v58[v66] < 0)
  {
    v74 = v69[1];
    if (v69[1] < 0)
    {
      v75 = v69[2];
      if (v75 < 0)
      {
        v188[0] = 0;
        v166 = sub_1819DFFB0(v69, v188);
        v167 = v188[0] & 0x7FFFFFFF;
      }

      else
      {
        v167 = ((v167 & 0x7F) << 14) | ((v74 & 0x7F) << 7) | v75;
        v166 = 3;
      }
    }

    else
    {
      v167 = ((v167 & 0x7F) << 7) | v74;
      v166 = 2;
    }
  }

  else
  {
    v166 = 1;
  }

  if (v167 >= v59)
  {
    if (*(a1 + 60))
    {
      goto LABEL_139;
    }

    v160 = __srca - v66;
    if (sqlite3_initialize() || (__srcb = sub_181902484(v160 + 2, 1913357809)) == 0)
    {
      v68 = v160 < -1;
      v31 = v182;
      if (!v68)
      {
        *(a1 + 60) = 7;
      }

      goto LABEL_139;
    }

    v161 = v166 + v66;
    bzero(__srcb, v160 + 2);
    v162 = (v167 - v169);
    if (v167 - v169 > 0x7F)
    {
      if (v162 >> 14)
      {
        v70 = sub_1819436D0(__srcb, v162);
      }

      else
      {
        __srcb->i8[0] = (v162 >> 7) | 0x80;
        __srcb->i8[1] = (v167 - v169) & 0x7F;
        v70 = 2;
      }
    }

    else
    {
      __srcb->i8[0] = v167 - v169;
      v70 = 1;
    }

    v163 = *(v57 + 2);
    v164 = __OFSUB__(v163, v161);
    v165 = v163 - v161;
    if (!((v165 < 0) ^ v164 | (v165 == 0)))
    {
      memcpy(__srcb + v70, &v58[v161], v165);
      v70 = v70 - v161 + *(v57 + 2);
    }

LABEL_119:
    v71 = *(v57 + 3) - v169;
    memmove(v58 + 4, &v58[v59], v71 - 4);
    v72 = v71;
    *(v58 + 1) = bswap32(v71) >> 16;
    if (__rev16(*v58))
    {
      *v58 = 1024;
    }

    if (v70 >= 1)
    {
      memcpy(&v58[v71], __srcb, v70);
      v72 = v71 + v70;
    }

    if (!__srcb)
    {
      goto LABEL_130;
    }

    v73 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(__srcb);
      --qword_1ED456A90;
      off_1ED452EB0(__srcb);
      __srcb = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_130;
      }

      v73 = &xmmword_1ED452F28;
    }

    (*v73)(__srcb);
LABEL_130:
    sub_1819D7E9C(a1, v55, v58, v72);
    goto LABEL_138;
  }

  *(a1 + 60) = 267;
LABEL_138:
  v31 = v182;
LABEL_139:
  if (dword_1ED452E80)
  {
    v28 = v179;
    v23 = v181;
    LODWORD(v30) = v183;
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v57);
    --qword_1ED456A90;
    off_1ED452EB0(v57);
    v57 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v76 = &xmmword_1ED452F28;
      goto LABEL_145;
    }
  }

  else
  {
    v28 = v179;
    v23 = v181;
    LODWORD(v30) = v183;
    v76 = &off_1ED452EB0;
LABEL_145:
    (*v76)(v57);
  }

LABEL_146:
  LODWORD(v35) = v28;
LABEL_147:
  if (*(v23 + 124))
  {
LABEL_148:
    v77 = &v27[v34];
    v78 = v187;
    if (v187 > 0x7F)
    {
      if (v187 >> 14)
      {
        v79 = sub_1819436D0(v77, v187);
      }

      else
      {
        v77->i8[0] = (v187 >> 7) | 0x80;
        v77->i8[1] = v78 & 0x7F;
        v79 = 2;
      }
    }

    else
    {
      v77->i8[0] = v187;
      v79 = 1;
    }

    v96 = 0;
    v97 = v34 + v79;
    v34 = v97 + 1;
    v27[v97] = 1;
    goto LABEL_187;
  }

  if (v35 != v28 && v30 >= 1)
  {
    v80 = 0;
    v81 = 0;
    do
    {
      v83 = &v31[v80];
      v84 = v31[v80];
      if (v31[v80] < 0)
      {
        v85 = v83[1];
        if (v83[1] < 0)
        {
          v86 = v83[2];
          if (v86 < 0)
          {
            v188[0] = 0;
            v82 = sub_1819DFFB0(v83, v188);
            v84 = v188[0] & 0x7FFFFFFF;
          }

          else
          {
            v84 = ((v84 & 0x7F) << 14) | ((v85 & 0x7F) << 7) | v86;
            v82 = 3;
          }
        }

        else
        {
          v84 = ((v84 & 0x7F) << 7) | v85;
          v82 = 2;
        }
      }

      else
      {
        v82 = 1;
      }

      v80 += v82;
      v81 += v84;
      if (v81 == v35)
      {
        v52 = 1;
      }
    }

    while (v80 < v30);
  }

  v28 = v179;
  if (v34 == bswap32(*v27) >> 16)
  {
    if (v35 == v179 || v52)
    {
      *v27 = 0;
      if (*(v23 + 124))
      {
        goto LABEL_148;
      }

      goto LABEL_167;
    }

LABEL_183:
    if (v35 == v179)
    {
      v96 = 0;
      LODWORD(v35) = v179;
    }

    else
    {
      v188[0] = 0;
      LODWORD(v35) = v35 + sub_1819DFFB0(&v27[v35], v188);
      v128 = &v27[v34];
      v129 = v188[0] + v187;
      if ((v188[0] + v187) > 0x7F)
      {
        if (v129 >> 14)
        {
          v130 = sub_1819436D0(v128, v129);
        }

        else
        {
          v128->i8[0] = (v129 >> 7) | 0x80;
          v128->i8[1] = v129 & 0x7F;
          v130 = 2;
        }
      }

      else
      {
        v128->i8[0] = v129;
        v130 = 1;
      }

      v96 = 0;
      v34 += v130;
    }

    goto LABEL_187;
  }

LABEL_167:
  if (!v52)
  {
    goto LABEL_183;
  }

  v87 = *(v23 + 3);
  if (__PAIR64__(v34, v87) == v23[7])
  {
    if (v30 < 1)
    {
      v146 = 0;
      v96 = 0;
    }

    else
    {
      v88 = 0;
      v89 = 0;
      v90 = 0;
      while (1)
      {
        v91 = &v31[v88];
        v92 = v31[v88];
        if (v31[v88] < 0)
        {
          v94 = v91[1];
          if (v91[1] < 0)
          {
            v95 = v91[2];
            if (v95 < 0)
            {
              v188[0] = 0;
              v93 = sub_1819DFFB0(v91, v188);
              v92 = v188[0] & 0x7FFFFFFF;
            }

            else
            {
              v92 = ((v92 & 0x7F) << 14) | ((v94 & 0x7F) << 7) | v95;
              v93 = 3;
            }
          }

          else
          {
            v92 = ((v92 & 0x7F) << 7) | v94;
            v93 = 2;
          }
        }

        else
        {
          v93 = 1;
        }

        v96 = v92 + v89;
        if (v92 + v89 > v34)
        {
          break;
        }

        v88 += v93;
        ++v90;
        v89 += v92;
        if (v88 >= v30)
        {
          goto LABEL_256;
        }
      }

      v96 = v89;
LABEL_256:
      v146 = v90 == 1;
      v28 = v179;
      v23 = v181;
    }

    if (v35 != v28)
    {
      LODWORD(v188[0]) = 0;
      v185 = 0;
      v147 = v35 + sub_1819DFF14(&v27[v35], &v185 + 1);
      v148 = sub_1819DFF14(&v27[v147], &v185);
      v149 = 0;
      v150 = v96;
      if (!v146)
      {
        v150 = sub_1819DFF14(&v27[v96], v188) + v96;
        v149 = v188[0];
      }

      v151 = v147 + v148;
      v152 = sub_1819DFF14(&v27[v150], &v186) + v150;
      v153 = HIDWORD(v185);
      v154 = v185;
      if (v149 >= SHIDWORD(v185))
      {
        v155 = HIDWORD(v185);
      }

      else
      {
        v155 = v149;
      }

      v156 = HIDWORD(v185) - v155 + v185;
      v157 = v151;
      if (v152 + v156 <= v179 && (v158 = v185 + v151, v158 <= v179))
      {
        v168 = HIDWORD(v185) - v155;
        v170 = v155;
        __srce = v157;
        if (!v146)
        {
          v96 += sub_18193E5FC(&v27[v96], v155);
        }

        v159 = v96 + sub_18193E5FC(&v27[v96], v156);
        if (v153 <= *(v181 + 26))
        {
          if (v149 < v153)
          {
            memcpy(&v27[v159], v181[12] + v170, v168);
            LODWORD(v159) = v159 + v168;
          }
        }

        else
        {
          *(a1 + 60) = 267;
        }

        memmove(&v27[v159], &v27[__srce], v154);
        v34 = v159 + v154;
        v96 = v35;
        LODWORD(v35) = v158;
        v31 = v182;
      }

      else
      {
        *(a1 + 60) = 267;
        v34 = v96;
        v96 = v35;
        LODWORD(v35) = v157;
        v31 = v182;
      }

      goto LABEL_270;
    }

    v34 = v96;
    LODWORD(v35) = v28;
    goto LABEL_187;
  }

  if (v34 != 4)
  {
    v96 = 0;
    goto LABEL_187;
  }

  v118 = (v87 << 32) - 0x100000000;
  v119 = v87 - 1;
  v120 = v87 - 1 + (v172 << 37);
  while (2)
  {
    v121 = v118;
    v122 = v120;
    if (v119 > *(v23 + 14))
    {
      v123 = sub_1819DFC90(a1, v120);
      if (v123)
      {
        v124 = *(v123 + 2);
        v125 = &off_1ED452EB0;
        if (!dword_1ED452E80)
        {
          goto LABEL_214;
        }

        if (xmmword_1ED456AF0)
        {
          v126 = v123;
          xmmword_1ED452F18(xmmword_1ED456AF0);
          v123 = v126;
        }

        v127 = v123;
        qword_1ED456A48[0] -= xmmword_1ED452EC0(v123);
        --qword_1ED456A90;
        off_1ED452EB0(v127);
        v23 = v181;
        if (xmmword_1ED456AF0)
        {
          v125 = &xmmword_1ED452F28;
LABEL_214:
          (*v125)();
        }

        v118 = v121 - 0x100000000;
        v120 = v122 - 1;
        --v119;
        if (v124 != 4)
        {
          break;
        }

        continue;
      }
    }

    break;
  }

  if (*(v23 + 14) == v122)
  {
    v132 = (v172 << 37) + (v121 >> 32);
    v133 = sub_1819DFC90(a1, v132);
    v31 = v182;
    if (v133)
    {
      v134 = *(v133 + 3);
      if (v134 == *(v181 + 15))
      {
        v135 = 0;
        v136 = 0;
        v137 = *v133;
        v138 = (*v133 + v134);
        __srcd = v133;
        v139 = *(v133 + 2) - v134;
        do
        {
          v141 = v135;
          v142 = &v138[v135];
          v143 = *v142;
          if (*v142 < 0)
          {
            v144 = v142[1];
            if (v142[1] < 0)
            {
              v145 = v142[2];
              if (v145 < 0)
              {
                v188[0] = 0;
                v140 = sub_1819DFFB0(v142, v188);
                v143 = v188[0] & 0x7FFFFFFF;
              }

              else
              {
                v143 = ((v143 & 0x7F) << 14) | ((v144 & 0x7F) << 7) | v145;
                v140 = 3;
              }
            }

            else
            {
              v143 = ((v143 & 0x7F) << 7) | v144;
              v140 = 2;
            }
          }

          else
          {
            v140 = 1;
          }

          v136 += v143;
          v135 = v140 + v141;
        }

        while (v140 + v141 < v139);
        memmove((v137 + v136), v138, v141);
        *(*__srcd + 1) = bswap32(v136) >> 16;
        sub_1819D7E9C(a1, v132, *__srcd, v136 + v141);
        v133 = __srcd;
        if (!v141)
        {
          sub_1819EB900(a1, v172, *(v181 + 14));
          v133 = __srcd;
        }
      }
    }

    sqlite3_free(v133);
    v96 = 0;
    v34 = 4;
LABEL_270:
    v23 = v181;
  }

  else
  {
    v96 = 0;
    v34 = 4;
    v31 = v182;
  }

  LODWORD(v30) = v183;
  v28 = v179;
LABEL_187:
  if (!*(a1 + 60))
  {
    v98 = v35 - v34;
    memmove(&v27[v34], &v27[v35], (v171 - v35));
    v99 = v28 - (v35 - v34);
    *(v27 + 1) = bswap32(v99) >> 16;
    if (v30 < 1)
    {
      goto LABEL_226;
    }

    v100 = v35 - v34;
    v101 = 0;
    v102 = 0;
    v103 = 0;
    __srcc = v99;
    v104 = v99;
    v180 = v98;
    do
    {
      v106 = &v31[v103];
      v107 = v31[v103];
      if (v31[v103] < 0)
      {
        v109 = v106[1];
        if (v106[1] < 0)
        {
          v110 = v106[2];
          if (v110 < 0)
          {
            v188[0] = 0;
            v111 = sub_1819DFFB0(v106, v188);
            v100 = v180;
            v108 = v111;
            v107 = v188[0] & 0x7FFFFFFF;
          }

          else
          {
            v107 = ((v107 & 0x7F) << 14) | ((v109 & 0x7F) << 7) | v110;
            v108 = 3;
          }
        }

        else
        {
          v107 = ((v107 & 0x7F) << 7) | v109;
          v108 = 2;
        }
      }

      else
      {
        v108 = 1;
      }

      v101 += v107;
      if (v101 != v96)
      {
        if (v101 <= v34)
        {
          v112 = 0;
        }

        else
        {
          v112 = v100;
        }

        v113 = v101 - v112;
        v114 = &v27[v104];
        v115 = v101 - v112 - v102;
        if ((v101 - v112 - v102) <= 0x7F)
        {
          v114->i8[0] = v101 - v112 - v102;
          v105 = 1;
        }

        else if (v115 >> 14)
        {
          v105 = sub_1819436D0(v114, v115);
          v100 = v180;
        }

        else
        {
          v114->i8[0] = (v115 >> 7) | 0x80;
          v114->i8[1] = (v101 - v112 - v102) & 0x7F;
          v105 = 2;
        }

        v104 += v105;
        v102 = v113;
      }

      v103 += v108;
      v31 = v182;
    }

    while (v103 < v183);
    v23 = v181;
    v116 = *(v181 + 3);
    if (__srcc == v104)
    {
      v117 = v172;
      if (v116 == 1)
      {
        v99 = __srcc;
        goto LABEL_228;
      }

      sub_1819EB900(a1, v172, v116);
      v99 = __srcc;
LABEL_226:
      v116 = *(v23 + 3);
    }

    else
    {
      v99 = v104;
    }

    v117 = v172;
LABEL_228:
    sub_1819D7E9C(a1, (v117 << 37) + v116, v27, v99);
  }

  if (v31)
  {
    v131 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_235;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v31);
    --qword_1ED456A90;
    off_1ED452EB0(v31);
    v31 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v131 = &xmmword_1ED452F28;
LABEL_235:
      (*v131)(v31);
    }
  }

LABEL_22:
  sub_1819DB2CC(v184);
  return *(a1 + 60);
}