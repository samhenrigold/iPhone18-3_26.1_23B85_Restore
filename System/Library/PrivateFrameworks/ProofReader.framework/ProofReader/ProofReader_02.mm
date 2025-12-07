uint64_t ICcmprmc(uint64_t a1, uint64_t a2, int a3)
{
  v42[1] = *MEMORY[0x1E69E9840];
  v3 = 11;
  if (a3 < a2)
  {
    return v3;
  }

  v4 = a3;
  if (a3 > 63)
  {
    return v3;
  }

  v5 = a2;
  v6 = *(a1 + 3184);
  v7 = *(v6[31] + 56);
  v42[0] = 0;
  v8 = v6[33];
  v39 = v6[35];
  v9 = a3 - a2 + 1;
  v10 = *(v8 + 88);
  v38 = *(v8 + 92);
  v36 = v9;
  v37 = *(v8 + 96);
  v11 = a1 + 1547;
  v12 = v9;
  v35 = a2;
  __strncpy_chk();
  __s[v12] = 0;
  v14 = v11;
  v15 = v10;
  v16 = v5;
  __strlcpy_chk();
  if (v15 >= 3)
  {
    SLrecap(v41, *(a1 + 1612), v15, v8 + 92, v15, v7);
    *(v8 + 88) = SLcap(v41, v5, (v4 + 1), (v8 + 92), v7);
  }

  v17 = ICverify(__s, v36, a1);
  if (v17 == 2)
  {
    *(v8 + 102) = 0;
    **(a1 + 3184) &= ~4u;
    SFlstini((v8 + 40), (v8 + 44), *(v8 + 48), *(v8 + 64));
    v24 = 0;
    v18 = v39;
    v19 = v38;
    goto LABEL_37;
  }

  v18 = v39;
  v19 = v38;
  if (v17 != 10 || (v20 = *(v8 + 102), v20 < 1))
  {
    v24 = 0;
LABEL_37:
    v31 = 0;
    *(v8 + 88) = v15;
    v3 = 11;
    LOWORD(v21) = v24;
    *(v8 + 92) = v19;
    *(v8 + 96) = v37;
    goto LABEL_38;
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = v35 - 1;
  do
  {
    v26 = *(*(v8 + 3520) + 2 * v21);
    if ((v26 & 0x10) != 0)
    {
      v27 = (*(v39 + 1524) >> 12) & 1;
      if ((*(*(v8 + 3520) + 2 * v21) & 0x400) != 0)
      {
LABEL_11:
        if (v16 < 1)
        {
          v23 = 1;
          v24 = v21;
          v22 = 1;
        }

        else
        {
          v23 = 1;
          v24 = v21;
          v22 = 1;
          if (*(v14 + v25) == 45)
          {
            goto LABEL_27;
          }
        }

        goto LABEL_25;
      }
    }

    else
    {
      v27 = 0;
      if ((*(*(v8 + 3520) + 2 * v21) & 0x400) != 0)
      {
        goto LABEL_11;
      }
    }

    if ((v26 & 0xA) != 0)
    {
      v28 = 1;
    }

    else
    {
      v28 = v27;
    }

    if (v28)
    {
      v24 = v21;
      v23 = 0;
      v22 = 1;
    }

    if (v16 >= 1 && v28)
    {
      v23 = 0;
      if (*(v14 + v25) != 45)
      {
        goto LABEL_27;
      }

      v22 = 1;
      v24 = v21;
    }

LABEL_25:
    ++v21;
  }

  while (v20 != v21);
  LOWORD(v21) = v24;
  if (!v22)
  {
    goto LABEL_37;
  }

LABEL_27:
  *(v39 + 1592) = *(*(v8 + 72) + v21);
  if (*(a1 + 8) == 6 && (*(*(v8 + 3520) + 2 * v21) & 8) != 0)
  {
    *(v39 + 1592) = 1;
    *(v39 + 1504) = 1;
    *(v39 + 1508) |= 0x80000000;
  }

  *(v39 + 1596) = *(v8 + 3480);
  *(v8 + 3480) = 0;
  *(v39 + 1502) = v16;
  if (*(a1 + 1308) && *(*(*(a1 + 3184) + 216) + 747))
  {
    __strcpy_chk();
    *(v39 + 1600) = *(a1 + 3156);
  }

  v29 = *(*(v8 + 3520) + 2 * v21);
  *(v39 + 1606) = *(*(v8 + 3496) + v21);
  *(v39 + 1604) = v29;
  *(v8 + 88) = v15;
  *(v8 + 92) = v38;
  *(v8 + 96) = v37;
  if (v23)
  {
    v30 = *(v39 + 1504);
    v3 = 2;
    goto LABEL_39;
  }

  v31 = 1;
  v3 = 10;
LABEL_38:
  v30 = *(v18 + 1504);
  if ((v30 & 0xFE) == 2 || (v32 = *(v18 + 1502), v32 >= 1) && *(v14 + (v32 - 1)) == 45 && *(v18 + 1592) - 1 <= 2)
  {
LABEL_39:
    v42[0] = *(*(v8 + 80) + 8 * v21);
    if ((v30 | 4) == 4)
    {
      v30 = ICEndToken(a1);
      if (v30 == 1)
      {
        *(v18 + 1504) = 1;
        *(v18 + 1508) |= 0x80000000;
        if ((v19 & 0x80000000) == 0)
        {
          *(a1 + 1322) |= 0x800u;
          v30 = 1;
        }
      }

      else
      {
        v30 = *(v18 + 1504);
      }
    }

    **(v8 + 72) = ICcomcap(v30, (v18 + 1508), v16, *(v18 + 1592), v42, *(v8 + 80), 0);
    goto LABEL_51;
  }

  if (v31)
  {
    v33 = *(v18 + 1592);
    **(v8 + 72) = v33;
    if (v33 == 1)
    {
      **(v8 + 80) |= 0x80000000;
    }

LABEL_51:
    *(v8 + 102) = 1;
  }

  return v3;
}

uint64_t ICcmpsmh(char *__src, char *__dst, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a6 + 3184);
  v12 = *(v11 + 264);
  v13 = *(*(v11 + 248) + 56);
  strcpy(__dst, __src);
  if (a5 >= 2)
  {
    v49 = __dst - 1;
    v50 = __dst - 2;
    v54 = a5 - 1;
    v51 = (a5 + 1);
    v52 = (a5 - 1);
    v14 = 1;
    do
    {
      v15 = *(a6 + 8);
      if (a4)
      {
        if (v15 == 6)
        {
          v31 = &__dst[v14];
          if (*v31 == 107 && *(v31 - 1) == 107)
          {
            *(v31 - 1) = 99;
            v19 = *(v12 + 102);
            result = ICverify(__dst, a5, a6);
            if (result == 10)
            {
              return result;
            }

            *(v31 - 1) = 107;
          }

          else
          {
LABEL_35:
            if (v54 <= v14)
            {
              goto LABEL_66;
            }

            v33 = &__dst[v14];
            v34 = *v33;
            if (v34 != *(v33 - 1) || v34 != v33[1])
            {
              goto LABEL_66;
            }

            v35 = v14;
            do
            {
              v36 = &__dst[v35];
              v37 = v36[2];
              v36[1] = v37;
              ++v35;
            }

            while (v37);
            v19 = *(v12 + 102);
            v20 = __dst;
            v21 = v52;
LABEL_57:
            result = ICverify(v20, v21, a6);
            if (result == 10)
            {
              return result;
            }

            strcpy(__dst, __src);
          }

          *(v12 + 102) = v19;
          goto LABEL_66;
        }

        if (v15 != 11)
        {
          goto LABEL_35;
        }

        if ((*(a3 + 4 * (v14 >> 5)) >> ~v14))
        {
          v16 = &__dst[v14];
          v17 = v16[1];
          if ((*(v13 + 4 * v17) & 0x10000000) != 0)
          {
            HIDWORD(v46) = v17 - 97;
            LODWORD(v46) = v17 - 97;
            v45 = v46 >> 1;
            if (v45 <= 0xA && ((0x495u >> v45) & 1) != 0)
            {
              v16[1] = byte_1D2BF7B10[v45];
            }

            v19 = *(v12 + 102);
            v20 = __dst;
            v21 = a5;
            goto LABEL_57;
          }

          if ((*(v13 + 4 * *v16) & 0x10000000) != 0)
          {
            if (a5 >= v14)
            {
              LOWORD(v18) = a5;
              do
              {
                __dst[v18 + 1] = __dst[v18];
                v18 = (v18 - 1);
              }

              while (v18 >= v14);
            }

            v19 = *(v12 + 102);
            v20 = __dst;
            v21 = v51;
            goto LABEL_57;
          }
        }
      }

      else
      {
        if (v15 == 11)
        {
          if ((*(v13 + 4 * __dst[v14]) & 0x40000) != 0)
          {
            *(*(*(a6 + 3184) + 280) + 1502) = v14;
            ICremacc(__dst, 2, a6);
            *(*(*(a6 + 3184) + 280) + 1502) = 0;
            v22 = *(v12 + 102);
            v23 = *(v12 + 3480);
            if (ICverify(__dst, a5, a6) == 10)
            {
              if ((*(v12 + 18) & 0x40) != 0)
              {
                return 2;
              }

              *(v12 + 3480) = v23;
            }

            strcpy(__dst, __src);
            *(v12 + 102) = v22;
          }

          if (v14 >= 2)
          {
            v24 = v14 - 1;
            v25 = __dst[v14 - 1];
            if ((*(v13 + 4 * v25) & 0x10000000) != 0 && v25 == v50[v14] && (*(v13 + 4 * v50[v14]) & 0x10000000) != 0)
            {
              if (v49[(v14 - 1)] == 101)
              {
                v49[(v14 - 1)] = -23;
              }

              do
              {
                v27 = &__dst[v24];
                v28 = v27[1];
                *v27 = v28;
                ++v24;
              }

              while (v28);
              v29 = *(v12 + 102);
              v30 = *(v12 + 3480);
              if (ICverify(__dst, v52, a6) == 10)
              {
                if ((*(v12 + 18) & 0x40) != 0)
                {
                  return 2;
                }

                *(v12 + 3480) = v30;
              }

              goto LABEL_64;
            }
          }

          goto LABEL_65;
        }

        if ((**(a6 + 3184) & 8) != 0)
        {
          goto LABEL_65;
        }

        if (v15 == 6)
        {
          v38 = &__dst[v14];
          if (*v38 == 107 && *(v38 - 1) == 99)
          {
            v48 = a3;
            *(v38 - 1) = 107;
            v39 = *(v12 + 102);
            if (ICverify(__dst, a5, a6) == 10)
            {
              return 2;
            }

            *(v38 - 1) = 99;
            *(v12 + 102) = v39;
            a3 = v48;
          }
        }

        v40 = __dst[v14];
        if (v40 != __dst[v14 - 1])
        {
          goto LABEL_65;
        }

        if (v54 <= v14 || v40 != __dst[v14 + 1])
        {
          if (a5 >= v14)
          {
            LOWORD(v47) = a5;
            do
            {
              __dst[v47 + 1] = __dst[v47];
              v47 = (v47 - 1);
            }

            while (v47 >= v14);
          }

          v29 = *(v12 + 102);
          if (ICverify(__dst, v51, a6) == 10)
          {
            return 2;
          }

LABEL_64:
          strcpy(__dst, __src);
          *(v12 + 102) = v29;
LABEL_65:
          if ((**(a6 + 3184) & 8) != 0)
          {
            return 11;
          }

          goto LABEL_66;
        }

        v41 = v14;
        do
        {
          v14 = v41;
          v42 = &__dst[v41];
          v43 = *v42;
          v44 = v42[1];
          v41 = v14 + 1;
        }

        while (v43 == v44);
      }

LABEL_66:
      v14 = (v14 + 1);
    }

    while (v14 < a5);
  }

  return 11;
}

uint64_t ICcmpspc(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v72 = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 3184);
  v7 = *(v6 + 264);
  if (*(v7 + 88) == 2)
  {
    v65 = *(*(v6 + 248) + 56);
    v66 = *(v6 + 280);
    v8 = *(a3 + 1612);
    __strcpy_chk();
    if (v4)
    {
      LOBYTE(v9) = 0;
      v10 = v4;
      while (1)
      {
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = v10;
        v15 = v9;
        v16 = 1;
        v9 = 0;
LABEL_5:
        v17 = v13;
        do
        {
          v18 = __src[v17];
          if (v18 == 115 && __src[v11 + 1] == 115)
          {
            v19 = !v9 && v17 > v15;
            v20 = v19;
            if (v16 & v20)
            {
              v16 = 0;
              a1[v12] = -33;
              *(v7 + 3492) |= 0x40u;
              ++v12;
              v13 = v17 + 2;
              v11 = (v17 + 2);
              v9 = v17;
              if (v14 > (v17 + 2))
              {
                goto LABEL_5;
              }

              v21 = v12;
              a1[v12] = 0;
              v9 = v17;
              goto LABEL_20;
            }
          }

          a1[v12++] = v18;
          v11 = ++v17;
        }

        while (v17 < v14);
        v21 = v12;
        a1[v12] = 0;
        if (v16)
        {
          goto LABEL_30;
        }

LABEL_20:
        v22 = v12;
        if (ICverify(a1, v12, a3) == 10)
        {
          v31 = (v7 + 3480);
          if (*(v7 + 3480) && v22 > v9 && (*(v7 + 3492) & 0x40) != 0)
          {
            v32 = v9;
            do
            {
              v33 = v31[v32 >> 5];
              v34 = 1 << ~v32;
              if ((v34 & v33) != 0)
              {
                v31[v32 >> 5] = v33 & ~v34;
                v35 = ((v32 + 1) >> 3) & 0x3CLL;
                *(v31 + v35) |= 1 << ~++v32;
              }

              ++v32;
            }

            while (v22 > v32);
          }

          strcpy(a1, __src);
          *(a3 + 1612) = v8;
          if ((*(a3 + 1322) & 0x40) != 0)
          {
            v71 = 0;
            v69 = 0u;
            v70 = 0u;
            *__src = 0u;
            v68 = 0u;
            if (v9)
            {
              v36 = v9;
              memcpy(__src, (a3 + 3090), v9);
            }

            else
            {
              v36 = 0;
            }

            __src[v36] = 115;
            __src[(v9 + 1)] = 115;
            __strcat_chk();
            __strcpy_chk();
            if (*(a3 + 3156))
            {
              v57 = strlen((a3 + 3090));
              v58 = v9 - 1;
              if (v57 > (v9 - 1))
              {
                v59 = a3 + 3156;
                v60 = v9 - 1;
                do
                {
                  v61 = *(v59 + 4 * (v58 >> 5));
                  v62 = 1 << ~v60;
                  if ((v62 & v61) != 0)
                  {
                    *(v59 + 4 * (v58 >> 5)) = v61 & ~v62;
                    v63 = ((v58 + 1) >> 3) & 0x3CLL;
                    *(v59 + v63) |= 1 << ~(v60 + 1);
                    ++v58;
                  }

                  v60 = ++v58;
                }

                while (v57 > v58);
              }
            }
          }

          if (*(a3 + 1308))
          {
            v64 = *(v7 + 3472);
            if (v64)
            {
              if (v64 != *v31)
              {
                *(a3 + 1328) |= 8uLL;
              }
            }
          }

          return 10;
        }

        v23 = *(v7 + 3520);
        if ((*v23 & 0x20) != 0 || *(v7 + 102) >= 2 && (v23[1] & 0x20) != 0)
        {
          *(a3 + 1612) = v8;
          v26 = Split(__src, v22, a3);
          goto LABEL_83;
        }

        *(a3 + 1612) = v22;
        v24 = ICcmp(a3);
        if (v24 != 11)
        {
          v26 = v24;
          v27 = v66;
          if (v24 != 10)
          {
            goto LABEL_53;
          }

          goto LABEL_35;
        }

        if (*(a3 + 1672) || *(a3 + 1676))
        {
          v25 = ICcmphhy(a3);
          if (v25 != 11)
          {
            break;
          }
        }

        strcpy(a1, __src);
        *(a3 + 1612) = v8;
        __strcpy_chk();
        v10 = v8;
        if (!v8)
        {
          goto LABEL_29;
        }
      }

      v26 = v25;
      if (v25 != 10)
      {
        v27 = v66;
        goto LABEL_53;
      }

      **(v7 + 72) = 0;
      v27 = v66;
LABEL_35:
      if (*(v7 + 88) == 2 && (v28 = *(v27 + 1502), v28 >= 1) && a1[(v28 - 1)] == 223 && a1[v28] == 115)
      {
        *(a3 + 1328) |= 0x200uLL;
        v29 = v27 + 1672;
        __strncpy_chk();
        *(v29 + *(v27 + 1502)) = 45;
        *(*(v27 + 1502) + v29 + 1) = 0;
        v30 = *(v27 + 1502);
        *(v27 + 1738) = v30;
        *(v27 + 1740) = v30 + 1;
        __strcat_chk();
        *(v21 + v29 + 1) = 0;
        v26 = 2;
      }

      else
      {
        v26 = 10;
      }

LABEL_53:
      *v6 |= 8u;
      strcpy(a1, __src);
      if (*(a3 + 1612) < v8)
      {
        *(a3 + 1612) = v8;
      }

      if (v26 == 2)
      {
        v37 = (v27 + 1672);
        if (strlen((v27 + 1672)))
        {
          v38 = 0;
          v39 = 0;
          do
          {
            v40 = v37[v38];
            v41 = v39 + 1;
            v42 = v39;
            if (v40 == 223)
            {
              v39 += 2;
              LOBYTE(v40) = 115;
              __src[v41] = 115;
            }

            else
            {
              ++v39;
            }

            __src[v42] = v40;
            ++v38;
          }

          while (v38 < strlen(v37));
        }

        else
        {
          v39 = 0;
        }

        __src[v39] = 0;
        __strcpy_chk();
        SLrecap(v37, v39, *(v7 + 88), v7 + 92, *(v7 + 88), v65);
        if ((*(a3 + 1329) & 2) != 0)
        {
          SFadd(v37, v39, (v7 + 40), (v7 + 44), *(v7 + 42), *(v7 + 56), *(v7 + 48), *(v7 + 64));
        }

        v27 = v66;
        v43 = *(v66 + 1738);
        if (v43 > v9)
        {
          *(v66 + 1738) = v43 + 1;
          ++*(v66 + 1740);
        }
      }

      if ((*(v7 + 3492) & 0x40) != 0)
      {
        v44 = *(v27 + 1500);
        v45 = *(v27 + 1502);
        if (v44 <= v9)
        {
          if (v9 >= v45)
          {
            if (*(v27 + 1596))
            {
              v50 = *(a3 + 1612);
              if (v50 > v9)
              {
                v51 = v27 + 1596;
                do
                {
                  v52 = *(v51 + 4 * (v9 >> 5));
                  v53 = 1 << ~v9;
                  if ((v53 & v52) != 0)
                  {
                    *(v51 + 4 * (v9 >> 5)) = v52 & ~v53;
                    v54 = ((v9 + 1) >> 3) & 0x3CLL;
                    *(v51 + v54) |= 1 << ~++v9;
                  }

                  ++v9;
                }

                while (v50 > v9);
              }
            }
          }
        }

        else
        {
          *(v27 + 1502) = v45 + 1;
          if (*(v27 + 1516))
          {
            v46 = v27 + 1516;
            do
            {
              v47 = *(v46 + 4 * (v9 >> 5));
              v48 = 1 << ~v9;
              if ((v48 & v47) != 0)
              {
                *(v46 + 4 * (v9 >> 5)) = v47 & ~v48;
                v49 = ((v9 + 1) >> 3) & 0x3CLL;
                *(v46 + v49) |= 1 << ~++v9;
              }

              ++v9;
            }

            while (v44 > v9);
          }
        }
      }

LABEL_83:
      if (v26 != 11)
      {
        return v26;
      }
    }

    else
    {
LABEL_29:
      *a1 = 0;
LABEL_30:
      strcpy(a1, __src);
      *(a3 + 1612) = v8;
    }
  }

  v55 = *(v7 + 3520);
  if ((*v55 & 0x20) != 0 || *(v7 + 102) >= 2 && (v55[1] & 0x20) != 0)
  {
    return Split(a1, v4, a3);
  }

  else
  {
    return 11;
  }
}

uint64_t Split(const char *a1, int a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 3184);
  v7 = *(v6 + 264);
  v8 = *(*(v6 + 248) + 56);
  __s[0] = 0;
  v9 = *(v7 + 3520);
  if ((*v9 & 0x20) == 0 && (*(v7 + 102) < 2 || (*(v9 + 2) & 0x20) == 0))
  {
    result = 11;
LABEL_35:
    *(v7 + 3480) = 0;
    return result;
  }

  if (!*(v7 + 3480))
  {
    goto LABEL_34;
  }

  v21 = 0;
  v11 = *(v7 + 88);
  if (!*(v7 + 88) || v11 == 3 && (*(v7 + 92) & 0x80000000) == 0 || *(v7 + 102) == 1)
  {
    __strcpy_chk();
    *__s = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    if (a2)
    {
      v12 = 0;
      while (((*(v7 + 3480 + 4 * (v12 >> 5)) >> ~v12) & 1) == 0)
      {
        __s[v12] = v26[v12];
        if (a2 == ++v12)
        {
          goto LABEL_16;
        }
      }

      v13 = v26[v12];
      v14 = &__s[v12];
      *v14 = v13;
      v14[1] = 32;
      __strcat_chk();
    }

LABEL_16:
    *(v7 + 44) = 0;
    *(v7 + 40) = 0;
    if (v11 != 1)
    {
      if (v11 == 2)
      {
        v21 = *(v7 + 92);
        v15 = 2;
LABEL_23:
        v16 = strlen(__s);
        SLrecap(__s, (v16 + 1), v15, &v21, v15, v8);
        SFadd(__s, a2 + 1, (v7 + 40), (v7 + 44), *(v7 + 42), *(v7 + 56), *(v7 + 48), *(v7 + 64));
        if (v11 == 3)
        {
          *(a3 + 1328) |= 0x400uLL;
        }

        if (*(v7 + 102) <= 1)
        {
          v17 = __s[0];
        }

        else if (!v11 || (v17 = __s[0], v11 == 3) && __s[0])
        {
          v18 = v26[0];
          if ((*(v8 + 4 * v26[0]) & 0x20000000) != 0)
          {
            v18 = v26[0] - 32;
          }

          v26[0] = v18;
          SFadd(v26, a2, (v7 + 40), (v7 + 44), *(v7 + 42), *(v7 + 56), *(v7 + 48), *(v7 + 64));
          goto LABEL_34;
        }

        if (v17)
        {
LABEL_34:
          *(a3 + 1322) |= 1u;
          *v6 |= 4u;
          result = 2;
          goto LABEL_35;
        }

        goto LABEL_36;
      }

      if (v11 != 3 || (*(v7 + 92) & 0x80000000) == 0)
      {
        v15 = 0;
        goto LABEL_23;
      }
    }

    LODWORD(v21) = 0x80000000;
    v15 = 1;
    goto LABEL_23;
  }

LABEL_36:
  *(a3 + 1322) &= ~1u;
  *(v7 + 18) &= ~0x20u;
  *(v7 + 3480) = 0;
  if (*(a3 + 1308))
  {
    v19 = *(*(a3 + 3184) + 216);
    *v19 = 1;
    IHhyp(a1, v19);
    v20 = *(*(a3 + 3184) + 216);
    *(v7 + 3480) = *(v20 + 8);
    *(v7 + 3484) = *(v20 + 12);
  }

  return 10;
}

uint64_t ICcmpsup(uint64_t a1, int a2, __int16 a3)
{
  switch(a2)
  {
    case 1:
      v3 = -1;
      v4 = 31;
      goto LABEL_7;
    case 4:
      v3 = -3;
      v4 = 29;
      goto LABEL_7;
    case 2:
      v3 = -2;
      v4 = 30;
LABEL_7:
      *(a1 + 4 * ((v3 + a3) >> 5)) |= 1 << ~(v4 + a3);
      break;
  }

  return 0;
}

uint64_t ICcmpver(uint64_t a1)
{
  v69 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 3184);
  v3 = *(v2 + 35);
  v4 = *(v2 + 33);
  bzero(v3, 0x6D0uLL);
  v5 = *(a1 + 8);
  if (*(a1 + 1413))
  {
    v6 = ICcmp(a1);
    if (v6 == 11)
    {
      *(v4 + 42) = 100;
      LODWORD(v7) = ICverify((a1 + 1547), *(a1 + 1612), a1);
      if (v7 == 10)
      {
        if ((*(v3 + 1742) & 1) == 0 && (*(v4 + 18) & 4) != 0)
        {
          goto LABEL_46;
        }

        if (*(v4 + 102) < 1)
        {
          if (*(v4 + 102))
          {
            goto LABEL_46;
          }
        }

        else
        {
          v11 = 0;
          while (*(*(v4 + 72) + v11) != 2)
          {
            if (*(v4 + 102) == ++v11)
            {
              goto LABEL_86;
            }
          }

          if (*(v4 + 102) != v11 && (!v11 || *(v4 + 88) == 2))
          {
LABEL_46:
            if ((*v2 & 8) != 0)
            {
              LODWORD(v7) = 10;
            }

            else
            {
              v7 = 10;
              if (*(a1 + 1308))
              {
                return v7;
              }
            }

            goto LABEL_126;
          }
        }

        goto LABEL_86;
      }
    }

    else
    {
      LODWORD(v7) = v6;
      if (v6 == 10)
      {
        if ((*(v3 + 1742) & 0x7200) != 0 && *(a1 + 1413))
        {
          *(a1 + 1328) |= 0x40uLL;
        }

        *v2 |= 8u;
        goto LABEL_46;
      }

      if (v6 == 2 && *(a1 + 8) == 7)
      {
        if ((*(v3 + 1742) & 0x100) != 0 && !SLstrcmp((a1 + 1547), (v3 + 1672)))
        {
          *(v3 + 1742) = *(v3 + 1742) & 0xFCFF | 0x200;
          *(a1 + 1690) = 0;
          if (!*(a1 + 1413))
          {
            goto LABEL_46;
          }

LABEL_86:
          *(a1 + 1328) |= 0x40uLL;
          LODWORD(v7) = 3;
          goto LABEL_126;
        }

        goto LABEL_89;
      }
    }

LABEL_44:
    if (v7 == 11)
    {
      **(v4 + 3520) = 0;
      *(v4 + 102) = 0;
      *(v4 + 18) = 0;
      *(v3 + 1742) = 0;
      if ((*(a1 + 1672) || *(a1 + 1676)) && (v22 = ICcmphhy(a1), v22 != 11))
      {
        LODWORD(v7) = v22;
        if (*(a1 + 1413))
        {
          *v2 |= 8u;
        }

        if ((*(v3 + 1742) & 0x100) != 0)
        {
          return 2;
        }

        v25 = *v2;
        v26 = (*(v3 + 1742) & 0x3000) != 0 || (*v2 & 8) == 0;
        if (v26)
        {
          if (*(a1 + 1308))
          {
            if (*(v3 + 1526) && *(v3 + 1500))
            {
              ICcmpsup(v3 + 1516, *(v3 + 1526), *(v3 + 1500));
              v25 = *v2;
            }

            if ((v25 & 4) != 0)
            {
              v27 = 1690;
            }

            else
            {
              v27 = 3090;
              if ((*(v3 + 1742) & 0x1000) == 0)
              {
                v27 = 1547;
              }
            }

            ICcmphyp((a1 + v27), a1);
          }

          goto LABEL_229;
        }
      }

      else
      {
        v23 = a1 + 1547;
        v24 = ICcmpnum((a1 + 1547), *(a1 + 1612), a1);
        v7 = v24;
        if (v24 == 11 && v5 == 6)
        {
          LODWORD(v7) = ICcmpspc((a1 + 1547), *(a1 + 1612), a1);
        }

        else
        {
          if (v24 == 11 && v5 == 11)
          {
            v28 = strlen((a1 + 1547));
            if (v28 >= 0x40)
            {
              v29 = 64;
            }

            else
            {
              v29 = v28;
            }

            if (v28)
            {
              __strncpy_chk();
            }

            __s[v29] = 0;
            ICremacc(__s, 3, a1);
            if ((*(v4 + 3492) & 0x10) == 0)
            {
              LODWORD(v7) = 11;
              goto LABEL_126;
            }

            v44 = strlen((a1 + 1547));
            if (v44 >= 0x40)
            {
              v45 = 64;
            }

            else
            {
              v45 = v44;
            }

            if (v44)
            {
              __strncpy_chk();
            }

            __src[v45] = 0;
            v46 = strlen(__s);
            if (v46 >= 0x40)
            {
              v47 = 64;
            }

            else
            {
              v47 = v46;
            }

            if (v46)
            {
              strncpy((a1 + 1547), __s, v47);
            }

            *(v23 + v47) = 0;
            v7 = ICcmp(a1);
            v48 = strlen(__src);
            if (v48 >= 0x40)
            {
              v49 = 64;
            }

            else
            {
              v49 = v48;
            }

            if (v48)
            {
              strncpy((a1 + 1547), __src, v49);
            }

            *(v23 + v49) = 0;
            if (v7 == 11)
            {
              *(v4 + 3492) &= ~0x10u;
              return v7;
            }

            *v2 |= 0xCu;
            *(v4 + 3492) |= 2u;
            if (*(v3 + 1672))
            {
              checked_strcpy(__s, (v3 + 1672));
            }

            v64 = strlen(__s);
            SFadd(__s, v64, (v4 + 40), (v4 + 44), *(v4 + 42), *(v4 + 56), *(v4 + 48), *(v4 + 64));
            goto LABEL_89;
          }

          if (v24 == 11)
          {
            return v7;
          }
        }
      }
    }

    else if (v7 == 10)
    {
      goto LABEL_46;
    }

    if (v7 != 2)
    {
LABEL_126:
      if ((*v2 & 8) != 0 || (*(a1 + 1329) & 2) != 0)
      {
        v39 = ICcmpfnd(a1);
      }

      else if (*(a1 + 8) != 6 || (*(a1 + 20) & 0x20) != 0)
      {
        v39 = 11;
        if (v7 != 11 && (*(v4 + 18) & 0x240) != 0 && !*(a1 + 1308))
        {
          v39 = ICcmpmnd(a1);
        }
      }

      else
      {
        v39 = 11;
      }

      if (v39 != 11 && v7 != 3)
      {
        LODWORD(v7) = v39;
      }

      if (v7 != 11)
      {
        if (*(a1 + 1308))
        {
          if (*(v3 + 1742) < 0)
          {
            *(v3 + 1596) = 0;
            *(v3 + 1516) = 0;
            *(a1 + 1322) |= 2u;
          }

          v41 = 1690;
          if ((*v2 & 4) == 0)
          {
            v41 = 1547;
          }

          ICcmphyp((a1 + v41), a1);
          if ((*v2 & 8) != 0 && *(v3 + 1742) < 0)
          {
            v42 = 1690;
            if ((*v2 & 4) == 0)
            {
              v42 = 1547;
            }

            ICcmphyp((a1 + v42), a1);
            *(a1 + 1322) |= 2u;
          }
        }

        else if (*(v4 + 3480) && (*(a1 + 1322) & 0x41) != 0x40)
        {
          *(v4 + 3480) = 0;
        }
      }

      if ((*(a1 + 1329) & 2) != 0)
      {
        return 2;
      }

      else
      {
        return v7;
      }
    }

LABEL_89:
    if ((*(a1 + 1329) & 2) != 0)
    {
      goto LABEL_125;
    }

    if (!*(v3 + 1672))
    {
LABEL_106:
      v33 = *v2 | 8;
      *v2 = v33;
      if ((*(v3 + 1742) & 0x100) == 0)
      {
        if (!*(a1 + 1308))
        {
          goto LABEL_124;
        }

        if (*(v3 + 1526) && *(v3 + 1500))
        {
          ICcmpsup(v3 + 1516, *(v3 + 1526), *(v3 + 1500));
          v33 = *v2;
        }

        v34 = (v33 & 4) == 0;
        if ((v33 & 4) != 0)
        {
          v35 = (a1 + 1322);
        }

        else
        {
          v35 = (v3 + 1742);
        }

        if (v34)
        {
          v36 = 4096;
        }

        else
        {
          v36 = 2;
        }

        v37 = 1690;
        if (v34)
        {
          v37 = 1547;
        }

        v26 = (*v35 & v36) == 0;
        v38 = 3090;
        if (v26)
        {
          v38 = v37;
        }

        ICcmphyp((a1 + v38), a1);
        if (!*(a1 + 1308) || (*(a1 + 1329) & 2) != 0)
        {
LABEL_124:
          if ((*(v3 + 1524) & 0x40) != 0 || (*(v3 + 1604) & 0x40) != 0)
          {
LABEL_125:
            v7 = 2;
            if ((*(v3 + 1742) & 0x100) != 0)
            {
              return v7;
            }

            goto LABEL_126;
          }
        }

LABEL_229:
        if ((*v2 & 4) != 0)
        {
          return 2;
        }

        else
        {
          return 10;
        }
      }

      return 2;
    }

    if (*(a1 + 8) == 6 && (*(a1 + 20) & 0x20) == 0)
    {
      v30 = *(v3 + 1742);
      goto LABEL_99;
    }

    v30 = *(v3 + 1742);
    if ((v30 & 0x2000) != 0)
    {
      v31 = *(a1 + 1322) | 2;
    }

    else
    {
      if ((*(v3 + 1742) & 0x1000) == 0)
      {
        goto LABEL_99;
      }

      v31 = *(a1 + 1322) | 4;
    }

    *(a1 + 1322) = v31;
LABEL_99:
    if (v30 < 0)
    {
      __strcpy_chk();
      *(a1 + 1322) |= 0x40u;
    }

    else
    {
      v32 = strlen((v3 + 1672));
      SFadd((v3 + 1672), v32, (v4 + 40), (v4 + 44), *(v4 + 42), *(v4 + 56), *(v4 + 48), *(v4 + 64));
      *(a1 + 1612) = strlen((v3 + 1672));
      *(a1 + 1328) |= 0x200uLL;
      *v2 |= 4u;
    }

    if (*(a1 + 1413))
    {
      if (*(v3 + 1502))
      {
        *(a1 + 1328) |= 0x40uLL;
      }

      else
      {
        *(v3 + 1742) |= 0x400u;
      }
    }

    goto LABEL_106;
  }

  if (!*(a1 + 1415))
  {
    v12 = *(v4 + 88);
    if (v5 == 6 && *(a1 + 1414))
    {
      *(v4 + 88) = 1;
    }

    *(v4 + 42) = 100;
    v13 = (a1 + 1547);
    v7 = ICverify((a1 + 1547), *(a1 + 1612), a1);
    v14 = **(v4 + 80);
    v65 = **(v4 + 72);
    v66 = *(v4 + 18);
    v15 = *(a1 + 1322);
    v16 = *(v4 + 3480);
    v17 = strlen((a1 + 3090));
    if (v17 >= 0x40)
    {
      v18 = 64;
    }

    else
    {
      v18 = v17;
    }

    v19 = *(a1 + 1322);
    if (v17)
    {
      __strncpy_chk();
      v19 = *(a1 + 1322);
    }

    __src[v18] = 0;
    *(v4 + 88) = v12;
    if ((v19 & 0x220) != 0)
    {
      return v7;
    }

    if (v7 != 11 && (*(v4 + 18) & 1) == 0)
    {
      goto LABEL_182;
    }

    if (*(a1 + 1412))
    {
      v20 = *(a1 + 1612);
      if (v20 <= 5)
      {
        v13[v20] = 46;
        v21 = *(a1 + 1612) + 1;
        *(a1 + 1612) = v21;
        v13[v21] = 0;
        ++v2[2];
        ICadjpost((a1 + 1482));
        v7 = ICverify((a1 + 1547), *(a1 + 1612), a1);
        if (v7 == 10)
        {
          *(a1 + 1412) = 0;
          return v7;
        }

        ICreadjpo((a1 + 1482));
        v50 = *(a1 + 1612) - 1;
        *(a1 + 1612) = v50;
        --v2[2];
        v13[v50] = 0;
      }
    }

    if (v7 == 11)
    {
      v51 = *(v4 + 3520);
      if ((*v51 & 0x20) != 0 || *(v4 + 102) >= 2 && (v51[1] & 0x20) != 0)
      {
        return ICcmpspc((a1 + 1547), *(a1 + 1612), a1);
      }

      LODWORD(v7) = 11;
      v52 = 1;
    }

    else
    {
LABEL_182:
      v52 = 0;
    }

    if (*(a1 + 8) == 6)
    {
      if ((v52 & ((*(a1 + 20) & 0x20) >> 5) & 1) == 0)
      {
LABEL_185:
        if (v7 != 11 && (*(*(a1 + 3184) + 304) != 11 || (*(v4 + 18) & 0x100) == 0))
        {
          goto LABEL_44;
        }

        goto LABEL_203;
      }
    }

    else if (!v52)
    {
      goto LABEL_185;
    }

    if (*(a1 + 1672) || *(a1 + 1676))
    {
      v53 = *(a1 + 1612);
      if (v53 < 1)
      {
        v54 = 0;
      }

      else
      {
        v54 = 0;
        do
        {
          v56 = *v13++;
          v55 = v56;
          if (v56 != 45 && v54 <= 63)
          {
            v57 = v54++;
            __src[v57] = v55;
          }

          --v53;
        }

        while (v53);
      }

      __src[v54] = 0;
      v59 = v54;
      if (ICverify(__src, v54, a1) != 11 && ((*(v4 + 18) & 0x40) == 0 || *(a1 + 1308)))
      {
        SFadd(__src, v59, (v4 + 40), (v4 + 44), *(v4 + 42), *(v4 + 56), *(v4 + 48), *(v4 + 64));
        **(a1 + 3184) |= 4u;
        *(a1 + 1328) |= 0x800000uLL;
        return 2;
      }
    }

LABEL_203:
    v60 = ICcmp(a1);
    LODWORD(v7) = v60;
    if (v60 == 10)
    {
      *v2 |= 8u;
      if (v5 == 11)
      {
        *(v4 + 3492) &= ~0x10u;
      }
    }

    if (*(*(a1 + 3184) + 304) != 11 || (v66 & 0x100) == 0)
    {
      if (*(a1 + 1414))
      {
        v62 = *(v4 + 80);
        v63 = *v62;
        *v62 &= ~0x80000000;
        if ((*(a1 + 20) & 0x10) != 0 && (*(v4 + 92) & 0x80000000) != 0)
        {
          *v62 = v63 | 0x80000000;
        }
      }

      goto LABEL_44;
    }

    if (v60 != 11)
    {
      *v2 |= 8u;
    }

    checked_strcpy(a1 + 3090, __src);
    **(v4 + 72) = v65;
    **(v4 + 80) = v14;
    *(v4 + 18) = v66;
    *(a1 + 1322) = v15;
    *(v4 + 3480) = v16;
    **(a1 + 3184) &= ~4u;
    if ((v66 & 0x40) == 0 || *(a1 + 1308))
    {
      *(v4 + 102) = 1;
      return 10;
    }

    return ICcmpmnd(a1);
  }

  *(v4 + 42) = 100;
  v8 = a1 + 1547;
  v9 = ICverify((a1 + 1547), *(a1 + 1612), a1);
  if (v9 != 11)
  {
    LODWORD(v7) = v9;
    *(a1 + 1415) = 0;
    goto LABEL_44;
  }

  *(v8 + v2[2]) = 0;
  v10 = *(a1 + 1612) - 1;
  *(a1 + 1612) = v10;
  v7 = ICverify((a1 + 1547), v10, a1);
  if (v7 == 11)
  {
    *(v8 + v2[2]) = 39;
    ++*(a1 + 1612);
  }

  if ((*(a1 + 1322) & 0x20) == 0)
  {
    goto LABEL_44;
  }

  return v7;
}

unint64_t checked_strcpy(unint64_t result, char *__s)
{
  if (result && __s)
  {
    v3 = result;
    result = strlen(__s);
    if (result >= 0x40)
    {
      v4 = 64;
    }

    else
    {
      v4 = result;
    }

    if (result)
    {
      result = strncpy(v3, __s, v4);
    }

    v3[v4] = 0;
  }

  return result;
}

uint64_t ICcmpvow(uint64_t a1, int a2, int a3, int a4)
{
  v54 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 3184);
  v8 = v7[35];
  v52 = v7[33];
  v9 = *(v7[31] + 56);
  v10 = v8 + 100 * a2;
  v11 = *(v10 + 68);
  if (v11 == 2 || a4 && v11 == 8 || *(v8 + 1592))
  {
    v12 = *(v10 + 66) + 1;
  }

  else
  {
    v12 = *(v10 + 66);
  }

  v13 = (a1 + 1547);
  v14 = strlen((a1 + 1547));
  v15 = v12;
  v16 = &v13[v12];
  v17 = *v16;
  if (a3)
  {
    if (v17 == 45)
    {
LABEL_8:
      *(v8 + 1742) |= 0x200u;
      return 10;
    }

    v27 = v12 - 1;
    v28 = *(v8 + 1502);
    if (v27 != v28)
    {
      v29 = v13[v27];
      if ((*(v9 + 4 * v29) & 0x10000000) == 0)
      {
        goto LABEL_8;
      }

      v30 = v13[*(v8 + 1502)];
      if ((*(v9 + 4 * v30) & 0x10000000) == 0)
      {
        goto LABEL_8;
      }

      if (!isdiphthong(v13[v27], v13[*(v8 + 1502)]))
      {
        v31 = isdiphthong(v30, v13[v28 + 1]);
        if (v29 != v30 && v31 == 0)
        {
          return 10;
        }
      }

      *(v8 + 1742) |= 0x8000u;
      if (v12 < 1)
      {
        v36 = 0;
      }

      else
      {
        v33 = (v8 + 1672);
        v34 = v12;
        do
        {
          v35 = *v13++;
          *v33++ = v35;
          --v34;
        }

        while (v34);
        v36 = v12;
      }

      v50 = v36 + 1;
      *(v8 + 1672 + v36) = 45;
      strcpy((v8 + 1672 + (v36 + 1)), v16);
      *(v8 + 1740) = v50;
      *(v8 + 1742) |= 0x80u;
      *(a1 + 1322) |= 2u;
      v51 = v52 + 4 * ((v12 - 1) >> 5);
      *(v51 + 3480) |= 1 << ~v27;
      return 2;
    }

    return 11;
  }

  if (v17 != 45)
  {
    if ((*(v9 + 4 * v13[v12 - 1]) & 0x10000000) == 0 || (*(v9 + 4 * v17) & 0x40000) == 0)
    {
      return 11;
    }

    __strcpy_chk();
    *(v8 + 1502) = v12;
    ICremacc((a1 + 1547), 2, a1);
    if (ICcmprmc(a1, v12, (*(a1 + 1612) - 1)) == 10)
    {
      v37 = v13[v12 - 1];
      v38 = *v16;
      if (!isdiphthong(v37, v38) && ((v39 = isdiphthong(v38, v13[v12 + 1]), v37 != v38) ? (v40 = v39 == 0) : (v40 = 0), v40))
      {
        __strcpy_chk();
        __strcpy_chk();
        *(v8 + 1740) = *(v8 + 1502);
      }

      else
      {
        if (v12 < 1)
        {
          v12 = 0;
        }

        else
        {
          v41 = (v8 + 1672);
          v42 = v12;
          v43 = v13;
          do
          {
            v44 = *v43++;
            *v41++ = v44;
            --v42;
          }

          while (v42);
        }

        *(v8 + 1672 + v12) = 45;
        strcpy((v8 + 1672 + (v12 + 1)), v16);
        *(v8 + 1740) = v12 + 1;
        __strcpy_chk();
      }

      return 2;
    }

    goto LABEL_60;
  }

  v19 = v14;
  v20 = v14;
  v21 = v12 + 1;
  if (ICcmprmc(a1, (v15 + 1), (*(a1 + 1612) - 1)) == 10)
  {
    if ((*(v9 + 4 * v13[v15 - 1]) & 0x10000000) != 0 && (*(v9 + 4 * v13[v21]) & 0x10000000) != 0)
    {
      goto LABEL_8;
    }

    if (!a4 && (strlen((a1 + 1547)) - 19 < 0xFFFFFFEE || (*(v8 + 1524) & 0x80) != 0 || (*(v8 + 1604) & 0x80) != 0))
    {
      return 10;
    }

    if (v20 < 1)
    {
      v26 = 0;
    }

    else
    {
      v22 = 0;
      v23 = 0;
      do
      {
        v24 = v13[v22];
        if (v24 == 45)
        {
          *(v8 + 1740) = v22;
        }

        else
        {
          v25 = v23++;
          *(v8 + 1672 + v25) = v24;
        }

        ++v22;
      }

      while ((v19 & 0x7FFF) != v22);
      v26 = v23;
    }

    *(v8 + v26 + 1672) = 0;
    **(a1 + 3184) = 4;
    *(v8 + 1742) |= 0x10u;
    if (a4)
    {
      return 2;
    }

    goto LABEL_68;
  }

  if ((*(v9 + 4 * v13[v21]) & 0x40000) == 0)
  {
    return 11;
  }

  __strcpy_chk();
  *(v8 + 1502) = v21;
  ICremacc((a1 + 1547), 2, a1);
  if (ICcmprmc(a1, (v15 + 1), (*(a1 + 1612) - 1)) != 10)
  {
LABEL_60:
    __strcpy_chk();
    *(v52 + 3492) &= ~0x10u;
    return 11;
  }

  v45 = v8 + 1672;
  __strcpy_chk();
  __strcpy_chk();
  *(v8 + 1740) = *(v8 + 1502);
  if ((*(v9 + 4 * v53[v15 - 1]) & 0x10000000) != 0 || strlen((a1 + 1547)) - 19 < 0xFFFFFFEE || (*(v8 + 1524) & 0x80) != 0 || (*(v8 + 1604) & 0x80) != 0)
  {
    return 2;
  }

  __strcpy_chk();
  if (v20 < 1)
  {
    v49 = 0;
  }

  else
  {
    v46 = 0;
    v47 = 0;
    do
    {
      if (v13[v46] == 45)
      {
        *(v8 + 1740) = v46;
      }

      else
      {
        v48 = v47++;
        *(v45 + v48) = v53[v46];
      }

      ++v46;
    }

    while ((v19 & 0x7FFF) != v46);
    v49 = v47;
  }

  *(v45 + v49) = 0;
  **(a1 + 3184) = 4;
  *(v8 + 1742) |= 0x10u;
LABEL_68:
  *(v8 + 1526) = 0;
  return 2;
}

uint64_t isdiphthong(int a1, int a2)
{
  result = 0;
  v13 = 5;
  v12 = 5;
  v11 = 8;
  v10 = 9;
  v9 = 4;
  HIDWORD(v5) = a1 - 97;
  LODWORD(v5) = a1 - 97;
  v4 = v5 >> 1;
  if (v4 <= 3)
  {
    if (v4)
    {
      if (v4 != 2)
      {
        return result;
      }

      v6 = &v12;
    }

    else
    {
      v6 = &v13;
    }
  }

  else
  {
    switch(v4)
    {
      case 4:
        v6 = &v11;
        break;
      case 7:
        v6 = &v10;
        break;
      case 10:
        v6 = &v9;
        break;
      default:
        return result;
    }
  }

  HIDWORD(v8) = a2 - 97;
  LODWORD(v8) = a2 - 97;
  v7 = v8 >> 1;
  if (v7 <= 0xA && ((0x495u >> v7) & 1) != 0)
  {
    return (*v6 >> asc_1D2BFF988[v7]) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t ICcomcap(unsigned int a1, uint64_t *a2, int a3, unsigned int a4, uint64_t *a5, uint64_t a6, int a7)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v15 = *a5;
  if (a1 == 5)
  {
    v8 = a4;
  }

  else
  {
    v8 = 3;
  }

  if (a4 == 5)
  {
    v8 = a1;
  }

  if (a4 & 0xFFFFFFFB | a1)
  {
    if (a1 != 4 || (a4 & 0xFB) != 0)
    {
      if (a1 != 1 || a4)
      {
        if (a4 == 2 && a1 == 2)
        {
          result = 2;
        }

        else
        {
          result = v8;
        }
      }

      else
      {
        result = 1;
      }
    }

    else
    {
      result = 4;
    }
  }

  else
  {
    result = 0;
  }

  v16[0] = v7;
  if (a3 <= 61)
  {
    v11 = 0;
    v12 = a3;
    do
    {
      v13 = 1 << ~v12;
      if ((*(&v16[-1] + (v11 >> 5)) >> ~v11))
      {
        v14 = *(v16 + (v12 >> 5)) | v13;
      }

      else
      {
        v14 = *(v16 + (v12 >> 5)) & ~v13;
      }

      *(v16 + (v12++ >> 5)) = v14;
      ++v11;
    }

    while (v12 != 62);
    v7 = v16[0];
  }

  *(a6 + 8 * a7) = v7;
  return result;
}

uint64_t ICcorspl(const char *a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = *(*(*(a3 + 3184) + 248) + 56);
  v23 = strlen(a1);
  if ((v23 - 64) < 0xFFFFFFC3)
  {
    return 11;
  }

  __strcpy_chk();
  v6 = 0;
  v7 = 0;
  v8 = a2 + 92;
  v9 = *(a2 + 92);
  v10 = *(a2 + 88);
  do
  {
    v11 = v7;
    *(&v25 + v6 + 1) = v24[v7++];
    v6 = v7;
  }

  while (v23 > v7);
  *(&v25 + (v11 + 2)) = 0;
  v25 = v26;
  if ((*(v5 + 4 * v24[0]) & 0x8000000) != 0)
  {
    v12 = v23 - 1;
    v13 = 1;
  }

  else
  {
    v12 = v23 - 2;
    v26 = v27;
    v13 = 3;
  }

  v14 = v12;
  if (v12 <= v13)
  {
    return 11;
  }

  v15 = v13;
  do
  {
    *(&v25 + v15 - 1) = *(&v25 + v13);
    *(&v25 + v13) = 32;
    if (v10 && (v23 - 1) >= v13)
    {
      LOWORD(v16) = v23 - 1;
      v17 = v23;
      do
      {
        v18 = v16;
        v19 = *(v8 + 4 * (v16 >> 5));
        v20 = 1 << ~v16;
        if ((v19 & v20) != 0)
        {
          *(v8 + 4 * (v16 >> 5)) = v19 & ~v20;
          *(v8 + 4 * (v17 >> 5)) |= 1 << ~(v16 + 1);
        }

        v16 = (v16 - 1);
        v17 = v18;
      }

      while (v16 >= v13);
    }

    result = ICcorucf(&v25, a3);
    *(a2 + 92) = v9;
    *(a2 + 88) = v10;
    if (result == 11)
    {
      v22 = *(a3 + 1686);
      if (*(a2 + 40) < v22)
      {
        *(a2 + 40) = v22;
        *(a2 + 44) = *(a3 + 1688);
      }
    }

    LOWORD(v13) = v13 + 1;
    v15 = v13;
  }

  while (v14 > v13);
  return result;
}

uint64_t ICcorucf(const char *a1, uint64_t a2)
{
  v2 = a2;
  v141 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 3184);
  v5 = *(v4 + 264);
  v101 = *(v4 + 248);
  v6 = *(v101 + 56);
  v140 = 0;
  memset(v139, 0, sizeof(v139));
  memset(__src, 0, 512);
  v138 = *(v5 + 92);
  v7 = (a2 + 1614);
  v102 = *(v5 + 88);
  v8 = strlen((a2 + 1614));
  memcpy(__dst, (v2 + 1690), sizeof(__dst));
  v9 = *(v2 + 3018);
  v128 = *(v2 + 3034);
  v10 = *(v2 + 3066);
  v129 = *(v2 + 3050);
  v130 = v10;
  v11 = *(v2 + 2954);
  v124 = *(v2 + 2970);
  v12 = *(v2 + 3002);
  v125 = *(v2 + 2986);
  v126 = v12;
  v127 = v9;
  v13 = *(v2 + 2890);
  v120 = *(v2 + 2906);
  v14 = *(v2 + 2938);
  v121 = *(v2 + 2922);
  v122 = v14;
  v123 = v11;
  v131 = *(v2 + 3082);
  v16 = (v5 + 40);
  v15 = *(v5 + 40);
  v119 = v13;
  v133 = v15;
  v99 = *(v5 + 44);
  v132 = v99;
  v111 = (v5 + 44);
  v106 = v2 + 2890;
  SFlstini((v5 + 40), (v5 + 44), (v2 + 1690), (v2 + 2890));
  v17 = strlen(a1);
  v108 = v17 << 16;
  if (v17 << 16 < 0)
  {
    v61 = 0;
    v62 = 0;
    v54 = 0;
    __s[0] = 0;
    goto LABEL_93;
  }

  v97 = v8;
  v98 = v15;
  v105 = (v5 + 40);
  v18 = 0;
  v19 = 0;
  v107 = v8;
  v110 = v17;
  v103 = a1;
  v20 = 1;
  v104 = 0;
  v100 = 0;
  v21 = -v8;
  v113 = v5;
  do
  {
    v22 = v19;
    v23 = v20;
    v24 = malloc_type_calloc(1uLL, 0x54uLL, 0x1000040B41CA856uLL);
    *(v139 + v22) = v24;
    if (!v24)
    {
      return 8;
    }

    v25 = v24;
    v24[38] = v18;
    if (v110 < v18)
    {
      v26 = 0;
      goto LABEL_15;
    }

    v26 = 0;
    v27 = *(v2 + 1338);
    while (1)
    {
      v28 = v103[v18];
      if (v28 != v27)
      {
        break;
      }

LABEL_14:
      if (v110 < ++v18)
      {
        goto LABEL_15;
      }
    }

    v29 = v28 > 0x2F || ((1 << v28) & 0xA00100000000) == 0;
    if (v29)
    {
      v30 = v26++;
      __s[v30] = v28;
      goto LABEL_14;
    }

    v24[40] = v28;
LABEL_15:
    __s[v26] = 0;
    v24[39] = v18;
    if (!__s[0] && v22 && !**(&v138 + v22) || !__s[0] && *v2 == 102)
    {
      goto LABEL_98;
    }

    v112 = v23;
    __strcpy_chk();
    v31 = (*(v25 + 76) + v107);
    v32 = *(v25 + 78) + v107;
    if (v31 < v32)
    {
      v33 = 0;
      do
      {
        if ((*(&v138 + (v31 >> 5)) >> ~v31))
        {
          *(v25 + 68 + 4 * ((v21 + v31 - *(v25 + 76)) >> 5)) |= 1 << ~(v21 + v31 - *(v25 + 76));
          v34 = *(v25 + v33);
          if ((*(v6 + 4 * v34) & 0x20000000) != 0)
          {
            LOBYTE(v34) = v34 - 32;
          }

          *(v25 + v33) = v34;
        }

        ++v31;
        ++v33;
      }

      while (v32 != v31);
    }

    v35 = strlen(v25);
    v36 = v35;
    v37 = SLcap(v25, 0, v36, (v25 + 68), v6);
    *(v25 + 65) = v37;
    *(v5 + 88) = v37;
    v38 = icisint(*(v2 + 8), __s, v6);
    v39 = v2;
    if (!v38)
    {
      v45 = v2;
      v46 = *(v2 + 8);
      if (v46 > 9 || ((1 << v46) & 0x228) == 0)
      {
        v53 = icisupperletter(v25, v6);
        v39 = v45;
        if (v53)
        {
          goto LABEL_28;
        }

        if (!v46)
        {
          goto LABEL_46;
        }
      }

      if ((0x20008uLL >> (v46 - 1)))
      {
LABEL_46:
        *v45 = 3;
      }

      v47 = ICverify(__s, v36, v45);
      *(v113 + 88) = v102;
      if ((**(v113 + 3520) & 0x40) == 0 && (*(v113 + 18) & 0x4000) == 0)
      {
        v48 = *(v45 + 8);
        if ((v48 == 8 || v48 == 5) && (*(v45 + 24) & 0x40) != 0 && v36 >= 1)
        {
          v49 = v35 & 0x7FFF;
          v50 = v25;
          while (1)
          {
            v51 = *v50++;
            v52 = *(v6 + 4 * v51);
            if ((v52 & 0x40000000) != 0 && (v52 & 0x4064000) != 0)
            {
              break;
            }

            if (!--v49)
            {
              goto LABEL_57;
            }
          }

          v43 = 11;
          v39 = v45;
        }

        else
        {
LABEL_57:
          v43 = v47;
          v39 = v45;
          if (v47 == 10)
          {
            goto LABEL_28;
          }
        }

        v2 = v39;
        if (*v39 != 102)
        {
          if ((v104 + 1) < 2u)
          {
            ++v104;
            __strcpy_chk();
            v100 = v22;
            v40 = v112;
            v5 = v113;
            goto LABEL_68;
          }

          cleanup(v22, v39, __dst, v139, 1);
          return 21;
        }

LABEL_98:
        cleanup(v22, v2, __dst, v139, 1);
      }

      return 11;
    }

LABEL_28:
    v5 = v113;
    *(v113 + 88) = *(v25 + 65);
    *(v113 + 92) = *(v25 + 68);
    *(v113 + 96) = *(v25 + 72);
    *(v39 + 4) = 11;
    *(v39 + 1339) = 69;
    v2 = v39;
    if (*v39 == 102)
    {
      v40 = v112;
      if (*(v39 + 8) == 16 && (**(v113 + 3496) & 0x20) != 0 || !*(v113 + 88) && **(v113 + 72) - 1 < 3)
      {
        goto LABEL_98;
      }

      *v113 = 102;
      if (strlen(v25) >= 1)
      {
        v41 = 0;
        do
        {
          *(v25 + v41) += (*(v6 + 4 * *(v25 + v41)) >> 25) & 0x20;
          ++v41;
        }

        while (strlen(v25) > v41);
      }

      if (ICcapcod(v25, v2) == 2)
      {
        __strcpy_chk();
        SFlstini(v105, v111, (v2 + 1690), v106);
      }

      v42 = strlen(v25);
      v43 = SFchkwrd(*(*(v2 + 3184) + 248), v113, v25, v42, **(v113 + 72), *(v113 + 80));
      __strcpy_chk();
      SFlstini(v105, v111, (v2 + 1690), v106);
      if (v43 == 11)
      {
        goto LABEL_98;
      }
    }

    else
    {
      v44 = ICcapcod(__s, v39);
      v40 = v112;
      if (v44 == 11)
      {
        ++v104;
      }

      else if (v44 == 2)
      {
        __strcpy_chk();
        SFlstini(v105, v111, (v2 + 1690), v106);
        *(v2 + 1328) = 0;
      }

      v43 = 10;
    }

LABEL_68:
    ++v18;
    v19 = v22 + 1;
    if ((v18 << 16) + 0x10000 > v108)
    {
      break;
    }

    v20 = v40 + 1;
  }

  while (v22 < 6);
  v54 = (v22 + 1);
  v55 = v104;
  if (v104 == 1)
  {
    v16 = v105;
    v15 = v98;
    if (v22 <= 5)
    {
      *v5 = 100;
      *(v5 + 2156) = -1;
      if (!*(v2 + 8) || ((0x20008uLL >> (*(v2 + 8) - 1)) & 1) != 0)
      {
        *v2 = 100;
      }

      v56 = v2;
      SFlstini(v105, v111, *(v113 + 48), *(v113 + 64));
      *(*(v113 + 112) + 34) = 0;
      *(*(v113 + 112) + 44) = 0;
      v57 = *(v139 + v100);
      *(v113 + 88) = *(v57 + 65);
      *(v113 + 92) = *(v57 + 68);
      *(v113 + 96) = *(v57 + 72);
      while (1)
      {
        v58 = *(v2 + 8) && ((0x20008uLL >> (*(v2 + 8) - 1)) & 1) == 0 ? SFcorrec(v137, 0, v101, v113) : IChu(v2, v137);
        v59 = v58 ? 20 : 21;
        v60 = *v105 <= 19 ? v59 : 22;
        if (v60 != 20)
        {
          break;
        }

        if (!*(v2 + 8) || ((0x20008uLL >> (*(v2 + 8) - 1)) & 1) != 0)
        {
          *v2 = 101;
        }

        *v113 = 101;
      }

      v134 = 0;
      v135 = 0;
      v15 = v98;
      if (*v7)
      {
        if (v107 >= 1)
        {
          v74 = 0;
          do
          {
            if ((*(&v138 + (v74 >> 5)) >> ~v74))
            {
              v75 = v7[v74];
              if ((*(v6 + 4 * v75) & 0x20000000) != 0)
              {
                LOBYTE(v75) = v75 - 32;
              }

              v7[v74] = v75;
            }

            ++v74;
          }

          while ((v97 & 0x7FFF) != v74);
        }

        __strcpy_chk();
      }

      v109 = v60;
      if (v100 >= 1)
      {
        v76 = v100;
        v77 = v139;
        do
        {
          v77 = (v77 + 8);
          __strcat_chk();
          __strcat_chk();
          --v76;
        }

        while (v76);
      }

      if ((v100 + 1) < v54)
      {
        v78 = v139 + 8 * (v100 + 1);
        v79 = (v100 + 1) + 1;
        do
        {
          __strcat_chk();
          v78 += 8;
          __strcat_chk();
          v29 = v54 == v79++;
        }

        while (!v29);
      }

      *v117 = 0;
      if (*(v113 + 40) >= 1)
      {
        v80 = 0;
        v81 = *(v113 + 42);
        v82 = *(v113 + 56);
        while (1)
        {
          __s[0] = 0;
          __strcpy_chk();
          __strcat_chk();
          __strcat_chk();
          v83 = strlen(__s);
          if (SFadd(__s, v83, &v117[1], v117, v81, v82, __src, v115) == 8)
          {
            break;
          }

          if (++v80 >= *v105)
          {
            goto LABEL_125;
          }
        }

        *(&__src[75] + v80) = 0;
        v84 = v117[1];
        *(v56 + 1686) = v117[1];
        *v105 = v84;
      }

LABEL_125:
      v2 = v56;
      memcpy((v56 + 1690), __src, 0x4B0uLL);
      v85 = v115[9];
      v86 = v115[11];
      *(v106 + 160) = v115[10];
      *(v106 + 176) = v86;
      *(v106 + 192) = v116;
      v87 = v115[5];
      v88 = v115[7];
      *(v106 + 96) = v115[6];
      *(v106 + 112) = v88;
      *(v106 + 128) = v115[8];
      *(v106 + 144) = v85;
      v89 = v115[1];
      v90 = v115[3];
      *(v106 + 32) = v115[2];
      *(v106 + 48) = v90;
      *(v106 + 64) = v115[4];
      *(v106 + 80) = v87;
      *v106 = v115[0];
      *(v106 + 16) = v89;
      v5 = v113;
      *v113 = 104;
      if (!*(v2 + 8) || ((0x20008uLL >> (*(v2 + 8) - 1)) & 1) != 0)
      {
        *v2 = 104;
      }

      v55 = v104;
      v43 = v109;
    }
  }

  else
  {
    v16 = v105;
    v15 = v98;
  }

  if (v55)
  {
    v62 = v104 == 1;
    goto LABEL_131;
  }

  v61 = v43;
  __s[0] = 0;
  v95 = v139;
  v96 = v112;
  do
  {
    v95 = (v95 + 8);
    __strcat_chk();
    __strcat_chk();
    --v96;
  }

  while (v96);
  v62 = v104 == 1;
LABEL_93:
  __s[strlen(__s)] = 0;
  SFlstini(v16, v111, *(v5 + 48), *(v5 + 64));
  if (v15 >= 1)
  {
    v63 = v15;
    v64 = v2;
    v65 = *(*(v2 + 3184) + 264);
    memcpy((v64 + 1690), __dst, 0x4B0uLL);
    v66 = v122;
    *(v106 + 32) = v121;
    *(v106 + 48) = v66;
    v67 = v126;
    *(v106 + 96) = v125;
    *(v106 + 112) = v67;
    v68 = v124;
    *(v106 + 64) = v123;
    *(v106 + 80) = v68;
    *(v106 + 192) = v131;
    v69 = v130;
    *(v106 + 160) = v129;
    *(v106 + 176) = v69;
    v70 = v128;
    *(v106 + 128) = v127;
    *(v106 + 144) = v70;
    v71 = v120;
    *v106 = v119;
    *(v106 + 16) = v71;
    *(v65 + 40) = v63;
    *(v65 + 44) = v99;
    v2 = v64;
    *(v64 + 1686) = v63;
  }

  v72 = strlen(__s);
  SFadd(__s, v72, v16, v111, *(v5 + 42), *(v5 + 56), *(v5 + 48), *(v5 + 64));
  *(v2 + 1686) = *(v5 + 40);
  *v5 = 104;
  if (*(v2 + 8) && ((1 << (*(v2 + 8) - 1)) & 0x20008) == 0)
  {
    v43 = v61;
LABEL_131:
    if (*v2 == 102)
    {
      *v5 = 102;
    }
  }

  else
  {
    *v2 = 104;
    v43 = v61;
  }

  if (v54 >= 1)
  {
    v91 = v54;
    v92 = v139;
    do
    {
      v93 = *v92++;
      free(v93);
      --v91;
    }

    while (v91);
  }

  if (v62)
  {
    v94 = v43;
  }

  else
  {
    v94 = 21;
  }

  if (v54 <= 6)
  {
    return v94;
  }

  else
  {
    return 21;
  }
}

void cleanup(unsigned int a1, uint64_t a2, __int16 *__src, void **a4, int a5)
{
  v9 = *(*(a2 + 3184) + 264);
  if (__src[701] >= 1)
  {
    memcpy((a2 + 1690), __src, 0x4B0uLL);
    *(a2 + 2890) = *(__src + 75);
    v11 = *(__src + 76);
    v12 = *(__src + 77);
    v13 = *(__src + 79);
    *(a2 + 2938) = *(__src + 78);
    *(a2 + 2954) = v13;
    *(a2 + 2906) = v11;
    *(a2 + 2922) = v12;
    v14 = *(__src + 80);
    v15 = *(__src + 81);
    v16 = *(__src + 83);
    *(a2 + 3002) = *(__src + 82);
    *(a2 + 3018) = v16;
    *(a2 + 2970) = v14;
    *(a2 + 2986) = v15;
    v17 = *(__src + 84);
    v18 = *(__src + 85);
    v19 = *(__src + 86);
    *(a2 + 3082) = *(__src + 174);
    *(a2 + 3050) = v18;
    *(a2 + 3066) = v19;
    *(a2 + 3034) = v17;
    v20 = __src[701];
    v9[20] = v20;
    v9[22] = __src[700];
    *(a2 + 1686) = v20;
  }

  if (a5)
  {
    if (a1 <= 0x7FFE)
    {
      v21 = (a1 + 1);
      do
      {
        v22 = *a4++;
        free(v22);
        --v21;
      }

      while (v21);
    }

    if (*a2 == 102)
    {
      *v9 = 102;
    }
  }
}

uint64_t icisint(int a1, char *__s, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = strlen(__s);
  __strcpy_chk();
  v8 = ((1 << (a1 - 1)) & 0x11660) != 0 || a1 == 0;
  if (a1 != 11 && v8 && __s[v6 - 1] == 46)
  {
    v10[v6 - 1] = 0;
  }

  return SLisint(v10, a3);
}

BOOL icisupperletter(const char *a1, uint64_t a2)
{
  v4 = strlen(a1);
  if (v4 == 2)
  {
    if (a1[1] != 46)
    {
      return 0;
    }
  }

  else if (v4 != 1)
  {
    return 0;
  }

  return (*(a2 + 4 * *a1) & 0x40000000) != 0;
}

uint64_t ICdblchk(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 3184);
  buildfullword(__dst, a1, 0x41uLL);
  if (!*(a1 + 1417) && !*(*(v2 + 80) + 65) && !SLstrcmp((a1 + 1339), __dst))
  {
    *(a1 + 1328) |= 0x8000uLL;
    v3 = *(v2 + 72);
    if (v3 && icwrdlist(__dst, v3))
    {
      *(a1 + 1328) &= ~0x8000uLL;
    }

    if (*(a1 + 8) == 6 && *(*(v2 + 80) + 130) != *(*(*(a1 + 3184) + 264) + 88))
    {
      *(a1 + 1328) &= ~0x8000uLL;
    }
  }

  v4 = (*(v2 + 80) + 65);
  if (*(a1 + 1482))
  {
    strncpy(v4, (a1 + 1482), 0x40uLL);
    v4 = (*(v2 + 80) + 129);
  }

  *v4 = 0;
  buildfullword((a1 + 1339), a1, 0x41uLL);
  v5 = *(v2 + 80);
  v6 = strlen((a1 + 1339));
  if (v6 >= 0x40)
  {
    v7 = 64;
  }

  else
  {
    v7 = v6;
  }

  if (v6)
  {
    strncpy(v5, (a1 + 1339), v7);
  }

  v5[v7] = 0;
  v8 = *(v2 + 80);
  v9 = *(*(a1 + 3184) + 264);
  *(v8 + 132) = *(v9 + 18);
  *(v8 + 130) = *(v9 + 88);
  return 0;
}

size_t buildfullword(char *__dst, uint64_t a2, size_t __size)
{
  v5 = __dst;
  v6 = *(a2 + 3184);
  v7 = *(*(v6 + 248) + 56);
  v8 = *(*(v6 + 264) + 112);
  v10 = *(v8 + 34);
  v9 = (v8 + 34);
  if (v10)
  {
    goto LABEL_2;
  }

  if (*(a2 + 8) == 1 && *(a2 + 1614))
  {
    v9 = (a2 + 1614);
LABEL_2:
    strlcpy(__dst, v9, __size);
    result = strlcat(v5, (a2 + 1547), __size);
    goto LABEL_7;
  }

  result = strlcpy(__dst, (a2 + 1547), __size);
LABEL_7:
  v12 = *(*(*(a2 + 3184) + 264) + 112);
  v14 = *(v12 + 44);
  v13 = (v12 + 44);
  if (!v14)
  {
    if (*(a2 + 8) != 1 || !*(a2 + 1624))
    {
      goto LABEL_12;
    }

    v13 = (a2 + 1624);
  }

  result = strlcat(v5, v13, __size);
  do
  {
LABEL_12:
    v15 = ((*(v7 + 4 * *v5) >> 25) & 0x20) + *v5;
    *v5 += (*(v7 + 4 * *v5) >> 25) & 0x20;
    ++v5;
  }

  while (v15);
  return result;
}

uint64_t icwrdlist(_BYTE *a1, _BYTE *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    while (1)
    {
      v4 = *a2;
      if (!*a2)
      {
        break;
      }

      v5 = 0;
      while (v4 > 0x20 || ((1 << v4) & 0x100002401) == 0)
      {
        v8[v5] = v4;
        v6 = *++a2;
        v4 = v6;
        ++v5;
      }

      v8[v5] = 0;
      if (*a2)
      {
        ++a2;
      }

      if (!SLstrcmp(a1, v8))
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t ICdblver(const char *a1, uint64_t a2)
{
  v111 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 3184);
  v106 = *(*(v4 + 248) + 56);
  v108 = 0;
  memset(v107, 0, sizeof(v107));
  v99 = v4;
  v5 = *(v4 + 264);
  SFlstini((v5 + 40), (v5 + 44), *(v5 + 48), *(v5 + 64));
  v101 = (v5 + 92);
  v96 = *(v5 + 92);
  v95 = *(v5 + 88);
  v6 = strlen(a1);
  v7 = 0;
  v8 = 0;
  *(a2 + 3090) = 0;
  v9 = v6;
  v104 = (v5 + 3480);
  v97 = (a2 + 3156);
  v10 = 1;
  v98 = v6;
  do
  {
    v11 = v7;
    v12 = v10;
    v13 = malloc_type_calloc(1uLL, 0xFCuLL, 0x1000040D823820EuLL);
    v105 = v11;
    *(v107 + v11) = v13;
    if (!v13)
    {
      return 8;
    }

    v14 = v13;
    *(v13 + 236) = 0u;
    v13[13] = 0u;
    v13[14] = 0u;
    v13[11] = 0u;
    v13[12] = 0u;
    v13[9] = 0u;
    v13[10] = 0u;
    v13[7] = 0u;
    v13[8] = 0u;
    v13[5] = 0u;
    v13[6] = 0u;
    v13[3] = 0u;
    v13[4] = 0u;
    v13[1] = 0u;
    v13[2] = 0u;
    v15 = v8;
    *v13 = 0u;
    *(v13 + 17) = 11;
    v16 = 0;
    if (v9 > v8)
    {
      v17 = *(a2 + 1338);
      v18 = v8;
      v19 = v106;
      while (1)
      {
        v20 = a1[v8];
        if (v20 == v17)
        {
          ++v8;
        }

        else
        {
          if ((v20 | 2) == 0x2F)
          {
            *(v13 + 125) = v20;
            goto LABEL_13;
          }

          __s[v16++] = ((*(v106 + 4 * a1[v8]) >> 25) & 0x20) + a1[v8];
        }

        v18 = ++v8;
        if (v9 <= v8)
        {
          goto LABEL_13;
        }
      }
    }

    v18 = v8;
    v19 = v106;
LABEL_13:
    __s[v16] = 0;
    v21 = SLcap(a1, v15, v8, v101, v19);
    *(v5 + 88) = v21;
    *(v14 + 213) = v21;
    *(v14 + 54) = *(v5 + 92);
    *(v14 + 55) = *(v5 + 96);
    *(v5 + 42) = 100;
    if (!__s[0] && v105 && **(v107 + (v105 - 1)))
    {
      v22 = 10;
    }

    else
    {
      v22 = 11;
    }

    v23 = v106;
    if (v16 != 1)
    {
      if (v16 != 2 || __s[1] != 46)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    if ((*(v106 + 4 * __s[0]) & 0x60000040) != 0)
    {
      *(v5 + 102) = 1;
      **(v5 + 72) = v21;
      v24 = *(v5 + 80);
      *v24 = *(v5 + 92);
      v24[1] = *(v5 + 96);
      if (*(a2 + 8) == 16)
      {
        v25 = __s[0] - 97;
        if (v25 > 0x19)
        {
          goto LABEL_119;
        }

        v26 = 1 << v25;
        if ((v26 & 0x379864E) == 0)
        {
          if ((v26 & 0x8639B1) != 0)
          {
            v27 = 1;
LABEL_22:
            **(v5 + 3496) |= v27;
            goto LABEL_23;
          }

LABEL_119:
          v27 = 2;
          goto LABEL_22;
        }
      }

LABEL_23:
      v22 = 10;
    }

    if (v9 != v18 || !*(a2 + 1412))
    {
      goto LABEL_30;
    }

LABEL_29:
    if ((*v101 & 0x80000000) != 0)
    {
      **(v5 + 72) = 0;
      *(v5 + 102) = 1;
      **(v5 + 80) = 0;
      *(v5 + 18) |= 0x800u;
LABEL_42:
      v28 = 10;
LABEL_43:
      LOBYTE(v31) = *(a2 + 8);
      if (v31)
      {
        goto LABEL_44;
      }

      goto LABEL_45;
    }

LABEL_30:
    if (v22 != 11)
    {
      goto LABEL_42;
    }

    if (*(a2 + 8) == 3)
    {
      period_to_puntvolat(a2, __s);
    }

    v28 = ICverify(__s, v16, a2);
    v23 = v106;
    if (v28 != 11)
    {
      goto LABEL_43;
    }

    if ((*(v106 + 4 * __s[0]) & 0x8000000) != 0)
    {
      v29 = v16 - 1;
      if (v16 >= 1 && __s[v29] == 46)
      {
        __s[v29] = 0;
        v30 = 1;
      }

      else
      {
        v30 = 0;
      }

      v57 = SLisint(__s, v106);
      v23 = v106;
      if (v57)
      {
        *(v5 + 102) = 1;
        **(v5 + 72) = 0;
        **(v5 + 80) = 0;
        if (*(a2 + 8) != 16)
        {
LABEL_104:
          if (!v30)
          {
            goto LABEL_42;
          }

          v59 = *(a2 + 8);
          if (*(a2 + 8))
          {
            if (((1 << (v59 - 1)) & 0x1260) != 0)
            {
              v59 = 0;
            }

            else
            {
              *(v5 + 102) = 0;
              v59 = 1;
            }
          }

          if (v16 >= 1)
          {
            __s[v16 - 1] = 46;
            __s[v16] = 0;
          }

          if (!v59)
          {
            goto LABEL_42;
          }

          goto LABEL_115;
        }

        if ((*(v106 + 4 * __s[2]) & 0x8000000) != 0)
        {
          v58 = 2;
        }

        else
        {
          if (__s[0] != 56)
          {
            if (!SLstrncmp(__s, "11", 2))
            {
              v58 = 1;
              v23 = v106;
              goto LABEL_103;
            }

            v60 = SLstrncmp(__s, "18", 2);
            v23 = v106;
            if (v60)
            {
              goto LABEL_104;
            }
          }

          v58 = 1;
        }

LABEL_103:
        **(v5 + 3496) |= v58;
        goto LABEL_104;
      }
    }

LABEL_115:
    v31 = *(a2 + 8);
    if (v31 == 6)
    {
      v61 = ICcmpspc(__s, v16, a2);
      v23 = v106;
      v28 = v61;
      goto LABEL_43;
    }

    v28 = 11;
    if (*(a2 + 8))
    {
LABEL_44:
      if (((0x11660uLL >> (v31 - 1)) & 1) == 0)
      {
        goto LABEL_51;
      }
    }

LABEL_45:
    v32 = **(v5 + 3520);
    if ((v32 & 0x200) != 0)
    {
      *(a2 + 1322) |= 4u;
    }

    else if ((v32 & 0x40) != 0)
    {
      v33 = *(a2 + 1612);
      *(a2 + 1322) |= 2u;
      if (v28 != 11 && !*(a2 + 1308))
      {
        __strcpy_chk();
        __strcpy_chk();
        *(a2 + 1612) = strlen(__s);
        ICcmpmnd(a2);
        __strcpy_chk();
        v23 = v106;
        *(a2 + 1612) = v33;
      }
    }

LABEL_51:
    if ((*(a2 + 1328) & 0x10) != 0 || (*(v5 + 18) & 1) != 0 || (*(v5 + 18) & 0x4000) != 0 && v105 && SLisint(*(v107 + (v105 - 1)), v23) || v28 == 11)
    {
      *(v5 + 88) = v95;
      *(v5 + 92) = v96;
      v62 = v107;
      do
      {
        if (*v62)
        {
          free(*v62);
        }

        ++v62;
        --v12;
      }

      while (v12);
      return 11;
    }

    if (*(a2 + 3090))
    {
      __strcpy_chk();
      *(v14 + 35) = *(a2 + 3156);
      *(v14 + 36) = *(a2 + 3160);
      *(a2 + 3090) = 0;
      *v97 = 0;
    }

    if (!*(a2 + 8))
    {
      if (*(a2 + 1308))
      {
        goto LABEL_65;
      }

      goto LABEL_68;
    }

    v34 = 1 << (*(a2 + 8) - 1);
    v35 = *(a2 + 1308);
    if ((v34 & 0x31668) != 0)
    {
      if (v35 && (v34 & 0x20008) != 0)
      {
LABEL_65:
        *a2 = 7;
        if (IChu(a2, __s) == 8)
        {
          *(a2 + 1308) = 0;
        }

        *a2 = 3;
      }

LABEL_68:
      *(v14 + 60) = *v104;
      v36 = (v5 + 3484);
LABEL_69:
      *(v14 + 61) = *v36;
      goto LABEL_70;
    }

    if (v35)
    {
      v55 = *(v99 + 216);
      *v55 = 1;
      IHhyp(__s, v55);
      v56 = *(v99 + 216);
      *(v14 + 60) = *(v56 + 8);
      v36 = (v56 + 12);
      goto LABEL_69;
    }

LABEL_70:
    *v104 = 0;
    __strcpy_chk();
    if (v28 == 2)
    {
      strncpy(__s, *(v5 + 48), 0x41uLL);
    }

    v37 = *(v5 + 102);
    if (v37 >= 1)
    {
      v38 = 0;
      do
      {
        v39 = *(v5 + 72);
        if (*(v39 + v38) == 4)
        {
          *(v39 + v38) = 0;
          LOWORD(v37) = *(v5 + 102);
        }

        ++v38;
      }

      while (v38 < v37);
    }

    v40 = ICcapcod(__s, a2);
    v41 = *(v5 + 48);
    if (*v41)
    {
      strncpy(v14 + 148, v41, 0x41uLL);
    }

    v42 = a1;
    if (v40 == 10)
    {
      v43 = *(v14 + 213);
      *(v14 + 228) = *(v14 + 27);
      v44 = v106;
    }

    else
    {
      v44 = v106;
      v43 = SLcap(v14 + 148, 0, v16, (v14 + 228), v106);
    }

    *(v14 + 226) = v43;
    if ((*(v44 + 4 * __s[0]) & 0x8000000) != 0)
    {
      v45 = 5;
    }

    else
    {
      v45 = v43;
    }

    *(v14 + 226) = v45;
    if (v40 >= v28)
    {
      v40 = v28;
    }

    *(v14 + 124) = v16;
    v46 = *(v5 + 102);
    *(v14 + 112) = v46;
    if (v46 >= 1)
    {
      v47 = *(v5 + 3520);
      v48 = *(v5 + 3496);
      v49 = *(v14 + 118);
      v50 = *(v14 + 238);
      do
      {
        v51 = *v47++;
        v49 |= v51;
        *(v14 + 118) = v49;
        v52 = *v48++;
        v50 |= v52;
        *(v14 + 238) = v50;
        --v46;
      }

      while (v46);
    }

    *(v14 + 17) = v40;
    SFlstini((v5 + 40), (v5 + 44), *(v5 + 48), *(v5 + 64));
    *(*(v99 + 80) + 65) = 0;
    __strcpy_chk();
    *(*(v99 + 80) + 132) = *(v14 + 118);
    v53 = v40 == 11;
    v54 = v105;
    a1 = v42;
    v9 = v98;
    if (v53)
    {
      break;
    }

    if (v98 < (v8 + 2))
    {
      break;
    }

    v7 = v105 + 1;
    ++v8;
    v10 = v12 + 1;
  }

  while (v105 < 6);
  if (v105 >= 6)
  {
    for (i = 0; i != 40; i += 8)
    {
      v64 = *(v107 + i);
      if (v64)
      {
        free(v64);
      }
    }

    return 11;
  }

  *(a2 + 1322) |= 0x100u;
  v66 = *&v107[0];
  **(v5 + 3496) = *(*&v107[0] + 238);
  **(v5 + 72) = *(v66 + 226);
  v67 = *(v5 + 80);
  *v67 = *(v66 + 228);
  v103 = v67;
  v67[1] = *(v66 + 232);
  if (*(a2 + 1308) || !*(a2 + 8) || ((0x11668uLL >> (*(a2 + 8) - 1)) & 1) != 0)
  {
    *v104 = *(v66 + 240);
    *(v5 + 3484) = *(v66 + 244);
    v102 = v5 + 3480;
  }

  else
  {
    v102 = 0;
    *v104 = 0;
  }

  if ((*(a2 + 1322) & 0x46) != 0)
  {
    *(a2 + 3156) = *(v66 + 140);
    *(a2 + 3160) = *(v66 + 144);
    v100 = a2 + 3156;
  }

  else
  {
    v100 = 0;
  }

  v65 = *(v66 + 68);
  if (v105)
  {
    LOWORD(v68) = 0;
    v69 = *(v66 + 248);
    v70 = v107;
    do
    {
      v71 = v70[1];
      v72 = *(v71 + 17);
      if (v72 >= v65)
      {
        v65 = v65;
      }

      else
      {
        v65 = v72;
      }

      *(v71 + 228) = vshr_n_u32(*(v71 + 228), 1uLL);
      **(v5 + 72) = ICcomcap(**(v5 + 72), *(v5 + 80), v69, v71[226], (v71 + 228), v103, 0);
      *(v5 + 102) = 1;
      if (*(a2 + 1308) || !*(a2 + 8) || ((0x11668uLL >> (*(a2 + 8) - 1)) & 1) != 0)
      {
        v73 = (v71 + 240);
        v74 = vshr_n_u32(*(v71 + 240), 1uLL);
        *(v71 + 30) = v74;
        if (*(a2 + 1308))
        {
          v75 = *(*(*v70 + 248) + *v70 - 1);
          if (v75 != 46 && ((*(v106 + 4 * v75) & 0x8000000) == 0 || (*(v106 + 4 * *v71) & 0x8000000) == 0))
          {
            *v73 = v74.i32[0] | 0x80000000;
          }
        }

        ICcomcap(3u, v104, v69, 3u, v73, v102, 0);
      }

      v76 = *(a2 + 1322);
      if ((v76 & 0x46) != 0)
      {
        *(v71 + 140) = vshr_n_u32(*(v71 + 140), 1uLL);
        if ((v76 & 6) != 0)
        {
          if (*(*v70 + 72))
          {
            v77 = strlen((*v70 + 72));
          }

          else
          {
            v77 = *(*v70 + 248);
          }

          v68 = (v77 + v68);
          ICcomcap(3u, v97, v68, 3u, (v71 + 140), v100, 0);
        }
      }

      v69 += *(v71 + 124) + 1;
      ++v70;
      --v54;
    }

    while (v54);
  }

  v78 = *(v5 + 112);
  v80 = *(v78 + 34);
  v79 = (v78 + 34);
  if (v80)
  {
    *v104 = vshl_u32(*v104, vneg_s32(vdup_n_s32(strlen(v79))));
  }

  v110[0] = 0;
  if (v65 == 2)
  {
    v81 = 0;
    do
    {
      v82 = *(v107 + v81);
      if (v82[148] && (v83 = strlen(v110), strlen(v82 + 148) + v83 < 0x41) || (v84 = strlen(v110), strlen(v82) + v84 <= 0x40))
      {
        __strcat_chk();
      }

      if (v81 < v105)
      {
        v85 = strlen(v110);
        if (strlen(v82 + 250) + v85 <= 0x40)
        {
          __strcat_chk();
        }
      }

      ++v81;
    }

    while (v12 != v81);
    v86 = strlen(v110);
    SFadd(v110, v86, (v5 + 40), (v5 + 44), *(v5 + 42), *(v5 + 56), *(v5 + 48), *(v5 + 64));
  }

  if ((*(a2 + 1322) & 0x46) != 0)
  {
    v87 = 0;
    do
    {
      v88 = *(v107 + v87);
      if (v88[72] && (v89 = strlen((a2 + 3090)), strlen(v88 + 72) + v89 < 0x41) || (v90 = strlen((a2 + 3090)), strlen(v88) + v90 <= 0x40))
      {
        __strcat_chk();
      }

      if (v87 < v105)
      {
        v91 = strlen((a2 + 3090));
        if (strlen(v88 + 250) + v91 <= 0x40)
        {
          __strcat_chk();
        }
      }

      ++v87;
    }

    while (v12 != v87);
  }

  v92 = 0;
  *(v5 + 88) = v95;
  *(v5 + 92) = v96;
  do
  {
    v93 = *(v107 + v92);
    if (v93)
    {
      free(v93);
    }

    ++v92;
  }

  while (v12 != v92);
  return v65;
}

uint64_t ICfndchk(uint64_t a1)
{
  v68[1] = *MEMORY[0x1E69E9840];
  v68[0] = 0;
  v2 = *(a1 + 3184);
  v3 = *(v2 + 33);
  v4 = *(v2 + 31);
  v5 = *(v3 + 102);
  if (v5 < 2)
  {
LABEL_5:
    v6 = 0;
  }

  else
  {
    v6 = 0;
    while (*(*(v3 + 72) + v6) != *(v3 + 88))
    {
      if (v5 == ++v6)
      {
        goto LABEL_5;
      }
    }
  }

  v7 = *(v4 + 56);
  v8 = *(v2 + 35);
  v9 = **(v3 + 112);
  v10 = *(v4 + 88);
  v11 = *(a1 + 8);
  if (v11 == 15)
  {
    v13 = ICgreek(a1, 1);
    goto LABEL_19;
  }

  if (v11 == 16 && *(a1 + 1339) == 97)
  {
    if (*(a1 + 1340) == 110)
    {
      if (*(a1 + 1341) || *(*(v3 + 3496) + v6))
      {
        goto LABEL_18;
      }

      *(a1 + 1328) = 0x10000000;
      v12 = 30;
    }

    else
    {
      if (*(a1 + 1340) || (*(*(v3 + 3496) + v6) & 1) == 0)
      {
        goto LABEL_18;
      }

      *(a1 + 1328) = 0x10000000;
      v12 = 29;
    }

    *(a1 + 1404) = v12;
  }

LABEL_18:
  v13 = 10;
LABEL_19:
  if (!*(a1 + 1308))
  {
    goto LABEL_33;
  }

  if (*(a1 + 8) && ((1 << (*(a1 + 8) - 1)) & 0x11660) == 0 && (*(v3 + 18) & 0xC00) == 0 && ((*(a1 + 1322) & 0x20) == 0 || !*(v3 + 3480) && !*(v3 + 3484)))
  {
    v66[0] = 0;
    __strcpy_chk();
    v27 = *(v3 + 112);
    v65 = strlen((v27 + 34));
    if ((*v2 & 4) != 0)
    {
      v62 = strlen((v27 + 44));
      __s[strlen(__s) - v62] = 0;
    }

    v63 = strlen(__s);
    __strcpy_chk();
    if (*(a1 + 8) == 3 && *(v3 + 3472) && *(v3 + 3480))
    {
      v61 = v63;
      if (v63 < 3)
      {
        v64 = 0;
        v28 = 1;
      }

      else
      {
        v28 = 1;
        v29 = 1;
        while (((*(v3 + 3480 + 4 * (v29 >> 5)) >> ~v28) & 1) == 0 || __s[v29] != 108 || __s[v28 + 1] != 108)
        {
          v28 = ++v29;
          if (v63 - 1 <= v29)
          {
            v64 = 0;
            goto LABEL_173;
          }
        }

        v64 = v29 + v65;
      }

LABEL_173:
      __strncat_chk();
      if (!v64)
      {
        v45 = 0;
        goto LABEL_153;
      }

      if (v61 == v28)
      {
        v45 = 1;
        goto LABEL_153;
      }

      *&v66[v64 + 1] = 183;
      v45 = 1;
    }

    else
    {
      v45 = 0;
    }

    __strcat_chk();
LABEL_153:
    __strcat_chk();
    if ((*(a1 + 1322) & 0x100) == 0)
    {
      if (*(a1 + 8) && ((1 << (*(a1 + 8) - 1)) & 0x20008) == 0)
      {
        **(v2 + 27) = 1;
        period_to_puntvolat(a1, v66);
        IHhyp(v66, *(v2 + 27));
        v48 = *(v2 + 27);
        *(v3 + 3480) = *(v48 + 8);
        *(v3 + 3484) = *(v48 + 12);
      }

      else
      {
        *a1 = 7;
        v46 = IChu(a1, v66);
        *a1 = 3;
        if (v46 == 8)
        {
          *(a1 + 1308) = 0;
        }
      }
    }

    v49 = *(a1 + 8);
    if (v49 == 3)
    {
      v50 = v45;
    }

    else
    {
      v50 = 1;
    }

    if ((v50 & 1) == 0)
    {
      period_to_puntvolat(a1, (a1 + 1547));
      period_to_puntvolat(a1, v66);
      v51 = strlen(v66);
      if (v51 >= 2)
      {
        v52 = v3 + 3480;
        v53 = 1;
        v54 = 1;
        while (1)
        {
          v55 = v54;
          if (v66[v54] == 183)
          {
            v56 = *(v52 + 4 * ((v54 - 1) >> 5));
            v57 = 1 << -v53;
            if ((v56 & v57) != 0)
            {
              break;
            }
          }

          ++v54;
          v53 = v55 + 1;
          if (v51 <= (v55 + 1))
          {
            goto LABEL_177;
          }
        }

        *(v52 + 4 * ((v54 - 1) >> 5)) = v56 & ~v57;
        v68[0] = 0;
        *(v68 + ((v54 - 1) >> 5)) |= v57;
        v58 = *(v2 + 27);
        *(v58 + 16) = v68[0];
        *(v58 + 747) = 1;
        __strncpy_chk();
        __strcat_chk();
      }

LABEL_177:
      v49 = *(a1 + 8);
    }

    if (!v49 || v49 == 14 || ((1 << (v49 - 1)) & 0x20008) != 0 || !*(*(v2 + 27) + 747))
    {
      if ((*(v3 + 18) & 0x40) != 0)
      {
        *(a1 + 1322) |= 2u;
      }
    }

    else
    {
      if ((*(v3 + 18) & 0x40) != 0)
      {
        v59 = 2;
      }

      else
      {
        v59 = 4;
      }

      *(a1 + 1322) |= v59 | 0x40;
      __strcpy_chk();
      v60 = *(v2 + 27);
      *(a1 + 3156) = *(v60 + 16);
      *(a1 + 3160) = *(v60 + 20);
    }
  }

  v14 = *(v3 + 3472);
  if (v14 && (*(a1 + 1322) & 0x10) == 0)
  {
    if ((v14 & 0x80000000) == 0)
    {
      v15 = 1;
      while (1)
      {
        v16 = 1 << ~v15;
        if ((*(v3 + 3472 + 4 * (v15 >> 5)) & v16) != 0 && (*(v3 + 3480 + 4 * (v15 >> 5)) & v16) == 0)
        {
          break;
        }

        if (v15++ >= 0x3F)
        {
          goto LABEL_33;
        }
      }
    }

    *(a1 + 1328) |= 8uLL;
  }

LABEL_33:
  v18 = *(a1 + 8);
  if (v18 != 3 || (puntvolat_to_dot(a1, (a1 + 1547)), puntvolat_to_dot(a1, (a1 + 1690)), v18 = *(a1 + 8), v18 != 3))
  {
    if ((*(a1 + 1322) & 0x12) == 2 && *(v3 + 3472) != *(v3 + 3480))
    {
      *(a1 + 1328) |= 8uLL;
    }

    if (v18 == 16)
    {
      goto LABEL_117;
    }
  }

  if ((*(*(v3 + 112) + 62) & 0x80) != 0 && (*(v3 + 3492) & 0x100) != 0)
  {
    *(a1 + 1328) |= 0x80uLL;
  }

  if (*(v3 + 18))
  {
    v19 = *v2;
    if ((*v2 & 8) == 0 && (*(v3 + 3492) & 0x180) == 0)
    {
      *(a1 + 1328) |= 0x10uLL;
      *v2 = v19 | 2;
      if ((v19 & 4) != 0)
      {
        v13 = 2;
      }

      else
      {
        v13 = 3;
      }
    }
  }

  if (*(a1 + 1414))
  {
    if (!v10)
    {
      *(a1 + 1328) |= 0x80uLL;
      if (*(a1 + 1413))
      {
        goto LABEL_96;
      }

      v13 = 3;
      goto LABEL_105;
    }

    v20 = *v2;
    if ((*v2 & 8) == 0)
    {
      v21 = *(v3 + 3520);
      if ((*v21 & 0xA) == 0 && (*(v3 + 102) < 1 || (v21[1] & 0xA) == 0))
      {
        v25 = *(a1 + 1328) | 0x80;
        *(a1 + 1328) = v25;
        v22 = *(v3 + 88);
        v13 = 3;
LABEL_86:
        if (v22 == 2)
        {
          *(a1 + 1328) = v25 & 0xFFFFFFFFFFFFFF7FLL;
          v13 = 10;
        }

        goto LABEL_88;
      }
    }

    v22 = *(v3 + 88);
    if (v22 == 3)
    {
      if (**(v3 + 72) != 3)
      {
LABEL_56:
        *(a1 + 1328) |= 0x400uLL;
        if ((v20 & 4) != 0)
        {
          return 2;
        }

        v23 = strlen((a1 + 1547));
        SFadd((a1 + 1547), v23, (v3 + 40), (v3 + 44), *(v3 + 42), *(v3 + 56), *(v3 + 48), *(v3 + 64));
LABEL_58:
        *v2 |= 4u;
        return 2;
      }
    }

    else if (v22 == 1 && (v18 != 6 || (*(a1 + 20) & 0x20) != 0))
    {
      goto LABEL_56;
    }

    v25 = *(a1 + 1328);
    if ((v25 & 0x80) == 0)
    {
      v25 &= 0xFFFFFFFFFFFFFF6FLL;
      *(a1 + 1328) = v25;
      if (v18 != 6 || !*(a1 + 1672) || (*(a1 + 20) & 0x20) != 0)
      {
        v26 = *(v3 + 72);
        if (*v26 == 1)
        {
          *v26 = 0;
          **(v3 + 80) = 0;
        }

        return ICcapcod((a1 + 1547), a1);
      }
    }

    goto LABEL_86;
  }

LABEL_88:
  if (*(a1 + 1413))
  {
    if (v10)
    {
      v30 = *v2;
      if ((*v2 & 8) != 0 && !v9)
      {
        v31 = *(a1 + 1328);
        if ((v30 & 4) != 0 && (v31 & 0x200) != 0 && *(v8 + 1502) >= 1)
        {
          v31 |= 0x40uLL;
          *(a1 + 1328) = v31;
        }

        else if ((v31 & 0x40) != 0 && (v30 & 4) == 0)
        {
          v13 = 3;
        }

        goto LABEL_103;
      }
    }

LABEL_96:
    v31 = *(a1 + 1328);
    if (v9 || v18 == 2)
    {
      v31 |= 0x40uLL;
      *(a1 + 1328) = v31;
      v32 = 3;
    }

    else
    {
      v32 = 10;
    }

    if ((*v2 & 4) != 0)
    {
      v13 = 2;
    }

    else
    {
      v13 = v32;
    }

LABEL_103:
    if ((v31 & 0x40) == 0)
    {
      *(a1 + 1328) = v31 & 0xFFFFFFFFFFFFFFAFLL;
    }
  }

LABEL_105:
  if (v18 != 6)
  {
LABEL_110:
    if (v18 == 11 && *(a1 + 1547) == 105 && *(a1 + 1548) == 106)
    {
      v34 = *(v3 + 88);
      if (v34 == 2 || (v35 = *(v3 + 72), v34 == *v35) || (v36 = *(v3 + 80), v37 = *v36 | 0xC0000000, *v36 = v37, *(v3 + 92) == v37))
      {
        SLrecap((a1 + 1547), *(a1 + 1612), v34, v3 + 92, v34, v7);
        return 10;
      }

      if (v34 == 1)
      {
        *v35 = 3;
      }

      v47 = strlen((a1 + 1547));
      SFadd((a1 + 1547), v47, (v3 + 40), (v3 + 44), *(v3 + 42), *(v3 + 56), *(v3 + 48), *(v3 + 64));
      SLrecap((a1 + 1690), *(a1 + 1612), **(v3 + 72), *(v3 + 80), **(v3 + 72), v7);
      *(a1 + 1328) |= 0x400uLL;
      goto LABEL_58;
    }

    goto LABEL_117;
  }

  if (*(a1 + 1672) && (*(v8 + 1742) & 0x200) != 0 && *(v8 + 1592) == 1)
  {
    v33 = *(v3 + 72);
    *(*(v3 + 80) + ((*(v8 + 1502) >> 3) & 0x1FFC)) |= 1 << ~*(v8 + 1502);
    *v33 = 3;
    *(v3 + 102) = 1;
    v18 = *(a1 + 8);
    goto LABEL_110;
  }

LABEL_117:
  v38 = *(v3 + 112);
  if ((*(v38 + 34) || *(v38 + 44)) && (*(a1 + 1328) & 0x10) == 0)
  {
    v39 = ICcltcap(a1);
  }

  else
  {
    if ((*v2 & 4) != 0)
    {
      v40 = (a1 + 1690);
    }

    else
    {
      v40 = (a1 + 1547);
    }

    v39 = ICcapcod(v40, a1);
  }

  v41 = v39;
  if (*(a1 + 8) == 5 && (v13 & 0xFFFFFFF7) == 2 && (**(v3 + 3496) & 0x30) != 0)
  {
    if (*(v3 + 40))
    {
      v13 = ligature(a1 + 1690, a1, v13);
      if (strlen((a1 + 1690)) >= 1)
      {
        v42 = 0;
        do
        {
          *(a1 + 1690 + v42) += (*(v7 + 4 * *(a1 + 1690 + v42)) >> 25) & 0x20;
          ++v42;
        }

        while (strlen((a1 + 1690)) > v42);
      }

      if (*(*(v3 + 112) + 34))
      {
        ICcltcap(a1);
      }

      else
      {
        ICcapcod((a1 + 1690), a1);
      }
    }

    else
    {
      v13 = ligature(a1 + 1547, a1, v13);
      if (v13 == 2)
      {
        if (*(a1 + 1612) >= 1)
        {
          v43 = 0;
          do
          {
            *(a1 + 1547 + v43) += (*(v7 + 4 * *(a1 + 1547 + v43)) >> 25) & 0x20;
            ++v43;
          }

          while (v43 < *(a1 + 1612));
        }

        ICcapcod((a1 + 1547), a1);
        v44 = strlen((a1 + 1547));
        SFadd((a1 + 1547), v44, (v3 + 40), (v3 + 44), *(v3 + 42), *(v3 + 56), *(v3 + 48), *(v3 + 64));
        v13 = 2;
      }
    }
  }

  if (v41 == 10)
  {
    return v13;
  }

  else
  {
    return v41;
  }
}

size_t puntvolat_to_dot(uint64_t a1, char *__s)
{
  result = strlen(__s);
  if (result >= 2)
  {
    v5 = 1;
    do
    {
      if (*(a1 + 24) == 64)
      {
        v6 = &__s[v5];
        if (*(v6 - 1) == 108 && v6[1] == 108 && *v6 == 183)
        {
          *v6 = 46;
        }
      }

      ++v5;
      result = strlen(__s);
    }

    while (result > v5);
  }

  return result;
}

uint64_t ligature(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v41[1] = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 3184);
  v7 = *(v6 + 264);
  v8 = *(a2 + 1612);
  v9 = *(*(v6 + 248) + 56);
  v10 = *(a2 + 24);
  if ((v10 & 0x10) != 0 && (**(v7 + 3496) & 0x10) != 0)
  {
    return a3;
  }

  if ((v10 & 0x20) != 0 && (**(v7 + 3496) & 0x20) != 0)
  {
    return a3;
  }

  v40 = 0;
  v11 = lig_pos((a2 + 1547), &v40, a2);
  v12 = v40;
  if (!(v40 | v11))
  {
    return a3;
  }

  v13 = v11;
  v15 = *(v7 + 92);
  v14 = *(v7 + 96);
  v41[0] = __PAIR64__(v14, v15);
  v39 = v7;
  v16 = *(v7 + 112);
  v17 = strlen((v16 + 34));
  if (*(v16 + 34))
  {
    v41[0].i32[0] = v15 << v17;
    v41[0].i32[1] = v14 << v17;
  }

  *(a2 + 1328) |= 0x1000000uLL;
  if (!v12)
  {
    v19 = v39;
    goto LABEL_26;
  }

  v18 = *(a1 + (v12 - 1));
  v19 = v39;
  if (v18 > 0x60)
  {
    if (v18 == 97)
    {
      v20 = -26;
      goto LABEL_19;
    }

    if (v18 == 111)
    {
      v20 = -9;
      goto LABEL_19;
    }
  }

  else
  {
    if (v18 == 65)
    {
      v20 = -58;
      goto LABEL_19;
    }

    if (v18 == 79)
    {
      v20 = -41;
LABEL_19:
      *(a1 + (v12 - 1)) = v20;
    }
  }

  if (v8 > (v12 + 1))
  {
    v21 = (v12 + 1);
    do
    {
      v22 = *(a1 + v21);
      v23 = 1 << -v21;
      v24 = v41[0].i32[(v21 - 1) >> 5];
      v41[0].i32[(v21 - 1) >> 5] = v24 & ~v23;
      *(a1 - 1 + v21) = v22;
      if ((v41[0].i32[v21 >> 5] >> ~v21))
      {
        v41[0].i32[(v21 - 1) >> 5] = v24 | v23;
      }

      ++v21;
    }

    while (v8 != v21);
  }

  *(a1 + v8 - 1) = 0;
  LOWORD(v8) = v8 - 1;
  v6 = *(a2 + 3184);
  --*(v6 + 4);
LABEL_26:
  if (v13)
  {
    v25 = v8 + 1;
    ++*(v6 + 4);
    *(a1 + (v8 + 1)) = 0;
    if (v8 > v13)
    {
      v26 = v8;
      do
      {
        *(a1 + v26) = *(a1 + (v26 - 1));
        v27 = 1 << ~v26;
        v28 = v26 >> 5;
        v29 = v41[0].i32[v28];
        v41[0].i32[v28] = v29 & ~v27;
        if ((v41[0].i32[(v26 - 1) >> 5] >> -v26))
        {
          v41[0].i32[v28] = v29 | v27;
        }

        --v26;
      }

      while (v13 < v26);
    }

    v30 = v13 - 1;
    v31 = *(a1 + v30);
    if (v31 > 0xE5)
    {
      if (v31 == 230)
      {
        v32 = 101;
        v33 = 97;
        goto LABEL_42;
      }

      if (v31 == 247)
      {
        v32 = 101;
        v33 = 111;
        goto LABEL_42;
      }
    }

    else
    {
      if (v31 == 198)
      {
        v32 = 69;
        v33 = 65;
        goto LABEL_42;
      }

      if (v31 == 215)
      {
        v32 = 69;
        v33 = 79;
LABEL_42:
        *(a1 + v30) = v33;
        *(a1 + v13) = v32;
      }
    }
  }

  else
  {
    v25 = v8;
  }

  v34 = v17;
  *(a2 + 1612) = v25;
  if (v25)
  {
    v35 = 0;
    do
    {
      v36 = ((*(v9 + 4 * *(a1 + v35)) >> 25) & 0x20) + *(a1 + v35);
      *(a1 + v35) += (*(v9 + 4 * *(a1 + v35)) >> 25) & 0x20;
      if ((v41[0].i32[v35 >> 5] >> ~v35))
      {
        if ((*(v9 + 4 * v36) & 0x20000000) != 0)
        {
          LOBYTE(v36) = v36 - 32;
        }

        *(a1 + v35) = v36;
      }

      ++v35;
    }

    while (v25 != v35);
  }

  *(v19 + 88) = SLcap(a1, 0, v25, v41, v9);
  if (*(*(v19 + 112) + 34))
  {
    v37 = v34;
  }

  else
  {
    v37 = 0;
  }

  *(v19 + 92) = vshl_u32(v41[0], vneg_s32(vdup_n_s32(v37)));
  return 2;
}

uint64_t lig_pos(const char *a1, _WORD *a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 3184) + 248) + 56);
  v6 = strlen(a1);
  *a2 = 0;
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = a1[v7];
      if ((v9 - 198) <= 0x31 && ((1 << (v9 + 58)) & 0x2000100020001) != 0)
      {
        v8 = v7 + 1;
      }

      v11 = v7 + 1;
      if (v6 - 1 != v7 && (((*(v5 + 4 * a1[v7 + 1]) >> 25) & 0x20) + a1[v7 + 1]) == 101)
      {
        v12 = (((*(v5 + 4 * v9) >> 25) & 0x20) + v9);
        if (v12 == 111 || v12 == 97)
        {
          *a2 = v11;
        }
      }

      v7 = v11;
    }

    while (v6 != v11);
  }

  else
  {
    return 0;
  }

  return v8;
}

uint64_t ICfoldio(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v13 = *MEMORY[0x1E69E9840];
  v5 = *(*(a3 + 3184) + 264);
  v6 = v12;
  __strcpy_chk();
  v7 = 0;
  v8 = 0;
  v9 = 0;
  while (*v6 == 161)
  {
    *v6 = -27;
    ++v8;
    v7 = v9;
LABEL_6:
    ++v9;
    ++v6;
  }

  if (*v6)
  {
    goto LABEL_6;
  }

  if (!v8)
  {
    return 11;
  }

  result = ICget(v12, v4, a3);
  if (result != 10)
  {
    return result;
  }

  if (*(a3 + 24) != 128)
  {
    v11 = **(v5 + 3496);
    if (v8 == 1 && v11 == (v4 - v7))
    {
      return 10;
    }

    if (**(v5 + 3496))
    {
      v12[v4 - v11] = -95;
    }
  }

  SFadd(v12, v4, (v5 + 40), (v5 + 44), *(v5 + 42), *(v5 + 56), *(v5 + 48), *(v5 + 64));
  *(a3 + 1328) |= 0x1000000uLL;
  return 2;
}

uint64_t io_countrep(_BYTE *a1, _BYTE *a2)
{
  v2 = 0;
  v3 = 0;
  *a2 = 0;
  while (*a1 == 161)
  {
    *a2 = v3;
    *a1 = -27;
    ++v2;
LABEL_6:
    ++v3;
    ++a1;
  }

  if (*a1)
  {
    goto LABEL_6;
  }

  return v2;
}

uint64_t ICget(const char *a1, int a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v29 = 0;
  v5 = *(a3 + 3184);
  v6 = v5[31];
  v7 = *(v6 + 56);
  if (a1)
  {
    v8 = strlen(a1);
    if (v8 >= 0x40)
    {
      v9 = 64;
    }

    else
    {
      v9 = v8;
    }

    if (v8)
    {
      __strncpy_chk();
      v6 = v5[31];
    }

    v30[v9] = 0;
  }

  if (*(v6 + 68) < a2)
  {
    return 11;
  }

  v10 = v5[33];
  *(v10 + 18) = 0;
  *(v10 + 102) = 0;
  *v10 = 3;
  v11 = SFbisrch(v30, 0, (a2 - 1), &v29, v6);
  if (SFdecode(v30, a2, v11, v29, v5[31], v10) != 10)
  {
    return 11;
  }

  v12 = *(v10 + 102);
  if (v12 < 1)
  {
    LOWORD(v13) = 0;
  }

  else
  {
    v13 = 0;
    v14 = *(v10 + 88);
    do
    {
      v15 = *(*(v10 + 72) + v13);
      v17 = v15 == 4 && v14 == 0;
      if (v15 == v14 || v17)
      {
        *(v10 + 18) = *(*(v10 + 3520) + 2 * v13);
        goto LABEL_27;
      }

      ++v13;
    }

    while (v12 != v13);
    LOWORD(v13) = *(v10 + 102);
  }

LABEL_27:
  v20 = *(a3 + 8);
  if ((!*(a3 + 8) || ((1 << (v20 - 1)) & 0x11660) != 0) && *(a3 + 1308))
  {
    v21 = *(v10 + 18);
    if ((v21 & 0xC00) != 0)
    {
      v22 = v5[27];
      *(v22 + 8) = 0;
      *(v10 + 3480) = 0;
      *(v22 + 12) = 0;
      *(v10 + 3484) = 0;
    }

    else if (v20 != 6 || (v21 & 0x20) == 0 || v12 >= 2 && *(v10 + 88) - 1 <= 1)
    {
      v30[a2] = 0;
      v23 = v5[27];
      *v23 = 1;
      v24 = v13;
      if (*(*(v10 + 72) + v13) == 1 && *(v10 + 88) == 1)
      {
        v25 = v30[0];
        if ((*(v7 + 4 * v30[0]) & 0x20000000) != 0)
        {
          v25 = v30[0] - 32;
        }

        v30[0] = v25;
      }

      IHhyp(v30, v23);
      if (*(*(v10 + 72) + v24) == 1 && *(v10 + 88) == 1)
      {
        v30[0] += (*(v7 + 4 * v30[0]) >> 25) & 0x20;
        *(v5[27] + 680) += (*(v7 + 4 * *(v5[27] + 680)) >> 25) & 0x20;
      }

      v26 = v5[27];
      *(v10 + 3480) = *(v26 + 8);
      *(v10 + 3484) = *(v26 + 12);
      if (*(v26 + 747))
      {
        if ((*(v10 + 18) & 0x40) != 0)
        {
          v27 = 2;
        }

        else
        {
          v27 = 4;
        }

        *(a3 + 1322) |= v27 | 0x40;
        checked_strcpy(a3 + 3090, (v26 + 680));
        v28 = v5[27];
        *(a3 + 3156) = *(v28 + 16);
        *(a3 + 3160) = *(v28 + 20);
      }
    }
  }

  return 10;
}

uint64_t ICint(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  *v47 = 0;
  v2 = malloc_type_malloc(0x178uLL, 0x10B004067FBAE49uLL);
  if (!v2)
  {
    goto LABEL_35;
  }

  v3 = v2;
  v2[46] = 0;
  *(v2 + 21) = 0u;
  *(v2 + 22) = 0u;
  *(v2 + 19) = 0u;
  *(v2 + 20) = 0u;
  *(v2 + 17) = 0u;
  *(v2 + 18) = 0u;
  *(v2 + 15) = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 13) = 0u;
  *(v2 + 14) = 0u;
  *(v2 + 11) = 0u;
  *(v2 + 12) = 0u;
  *(v2 + 9) = 0u;
  *(v2 + 10) = 0u;
  *(v2 + 7) = 0u;
  *(v2 + 8) = 0u;
  *(v2 + 5) = 0u;
  *(v2 + 6) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *v2 = 0u;
  if (!*(a1 + 8) || ((1 << (*(a1 + 8) - 1)) & 0x20008) != 0)
  {
    v4 = malloc_type_malloc(0x30uLL, 0x10A0040625B7065uLL);
    v3[28] = v4;
    if (!v4)
    {
      goto LABEL_35;
    }
  }

  v5 = malloc_type_calloc(1uLL, 0x4B0uLL, 0x10900403E69C754uLL);
  if (!v5)
  {
    goto LABEL_35;
  }

  v6 = v5;
  v3[31] = v5;
  v7 = malloc_type_calloc(1uLL, 0xDE0uLL, 0x10B00401F3C9068uLL);
  if (!v7)
  {
    goto LABEL_35;
  }

  v8 = v7;
  v3[32] = 0;
  v3[33] = v7;
  v3[34] = 0;
  *v6 = 0;
  v9 = malloc_type_calloc(1uLL, 0x60uLL, 0x1010040370E3D57uLL);
  *(v8 + 14) = v9;
  if (!v9)
  {
    goto LABEL_35;
  }

  v10 = malloc_type_malloc(0x6D0uLL, 0x1000040CFF03AD1uLL);
  v3[35] = v10;
  if (!v10)
  {
    goto LABEL_35;
  }

  bzero(v10, 0x6D0uLL);
  v11 = malloc_type_malloc(0x86uLL, 0x1000040CE674580uLL);
  v3[10] = v11;
  if (!v11)
  {
    goto LABEL_35;
  }

  *(v11 + 126) = 0;
  *(v11 + 6) = 0u;
  *(v11 + 7) = 0u;
  *(v11 + 4) = 0u;
  *(v11 + 5) = 0u;
  *(v11 + 2) = 0u;
  *(v11 + 3) = 0u;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v6[35] = 6;
  v12 = malloc_type_malloc(0x30uLL, 0x100004000313F17uLL);
  *(v8 + 10) = v12;
  if (!v12)
  {
    goto LABEL_35;
  }

  v13 = malloc_type_malloc(6uLL, 0x100004077774924uLL);
  *(v8 + 9) = v13;
  if (!v13)
  {
    goto LABEL_35;
  }

  v14 = malloc_type_malloc(0xCuLL, 0x1000040BDFB0063uLL);
  *(v8 + 440) = v14;
  if (!v14)
  {
    goto LABEL_35;
  }

  v15 = malloc_type_malloc(6uLL, 0x100004077774924uLL);
  *(v8 + 438) = v15;
  if (!v15)
  {
    goto LABEL_35;
  }

  v16 = malloc_type_malloc(6uLL, 0x100004077774924uLL);
  *(v8 + 441) = v16;
  if (!v16)
  {
    goto LABEL_35;
  }

  v17 = malloc_type_malloc(6uLL, 0x100004077774924uLL);
  *(v8 + 442) = v17;
  if (!v17)
  {
    goto LABEL_35;
  }

  v18 = malloc_type_malloc(6uLL, 0x100004077774924uLL);
  *(v8 + 437) = v18;
  if (!v18)
  {
    goto LABEL_35;
  }

  v19 = malloc_type_malloc(0xCuLL, 0x1000040BDFB0063uLL);
  *(v8 + 3) = v19;
  if (!v19)
  {
    goto LABEL_35;
  }

  *(v6 + 3) = 1024;
  if (!SFmemory(v8 + 4, 65, 1))
  {
    SFmemory(v8 + 4, 64, 0);
    goto LABEL_35;
  }

  v20 = malloc_type_malloc(0x28uLL, 0x1000040BDFB0063uLL);
  *(v8 + 397) = v20;
  if (!v20)
  {
    goto LABEL_35;
  }

  *(v8 + 1) = 0;
  *(v8 + 1744) = *(a1 + 20);
  *(v6 + 55) = *(a1 + 8);
  bzero((a1 + 1690), 0x4B0uLL);
  *(a1 + 2986) = 0;
  *(a1 + 2954) = 0u;
  *(a1 + 2970) = 0u;
  *(a1 + 2922) = 0u;
  *(a1 + 2938) = 0u;
  *(a1 + 2890) = 0u;
  *(a1 + 2906) = 0u;
  *(v8 + 8) = a1 + 2890;
  *(v8 + 28) = 1200;
  *(v8 + 6) = a1 + 1690;
  v21 = malloc_type_calloc(1uLL, 0x98uLL, 0x10B00408E6C3DC5uLL);
  v3[29] = v21;
  if (!v21)
  {
    goto LABEL_35;
  }

  v22 = malloc_type_calloc(0x41uLL, 1uLL, 0x100004077774924uLL);
  v23 = v3[29];
  *(v23 + 8) = v22;
  if (!v22)
  {
    goto LABEL_35;
  }

  *(v23 + 48) = 100;
  v24 = malloc_type_calloc(0x64uLL, 8uLL, 0x10040436913F5uLL);
  *(v3[29] + 104) = v24;
  if (!v24)
  {
    goto LABEL_35;
  }

  for (i = 0; i != 800; i += 8)
  {
    v26 = malloc_type_calloc(1uLL, 0x74uLL, 0x10000404AB42077uLL);
    *(*(v3[29] + 104) + i) = v26;
    if (!v26)
    {
      goto LABEL_35;
    }
  }

  v27 = malloc_type_calloc(1uLL, 0x40uLL, 0x1090040D37A3AC8uLL);
  v3[30] = v27;
  if (!v27)
  {
    goto LABEL_35;
  }

  v28 = malloc_type_calloc(0x41uLL, 1uLL, 0x100004077774924uLL);
  *(v3[30] + 8) = v28;
  if (!v28)
  {
    goto LABEL_35;
  }

  v29 = v3[33];
  *(v29 + 3192) = v3[29];
  *(v29 + 3184) = 1;
  *v6 = 1;
  *(a1 + 1320) |= 0x80u;
  v30 = malloc_type_malloc(0x5CuLL, 0x10000407E945382uLL);
  v3[36] = v30;
  if (!v30)
  {
    goto LABEL_35;
  }

  *(a1 + 3184) = v3;
  v31 = *(a1 + 8);
  if (v31 != 18 && v31 != 4)
  {
    v33 = v3[31];
    v34 = v3[33];
    result = SLOpen(a1 + 28, a1 + 539, &v47[1], 0);
    if (result == 8)
    {
      v35 = *(a1 + 1320) | 4;
      goto LABEL_39;
    }

    if (SLRead(v47[1], 1024, __dst, v47) == 8)
    {
      v36 = *(a1 + 1320) | 0x20;
LABEL_52:
      *(a1 + 1320) = v36;
LABEL_53:
      SLClose(v47[1]);
      return 8;
    }

    if (__dst[0] != 67 || __rev16(v49) != 6 || __rev16(v51) <= 4)
    {
      v36 = *(a1 + 1320) | 0x10;
      goto LABEL_52;
    }

    v37 = v50;
    if (v50)
    {
      v38 = v50;
    }

    else
    {
      v38 = 19;
    }

    if (*(a1 + 8))
    {
      if (v38 != *(a1 + 8))
      {
        v36 = *(a1 + 1320) | 1;
        goto LABEL_52;
      }
    }

    else
    {
      *(a1 + 8) = v38;
      *(v33 + 55) = v38;
    }

    if (!*(a1 + 1308))
    {
      v3[27] = 0;
      goto LABEL_61;
    }

    v39 = malloc_type_calloc(1uLL, 0x300uLL, 0x1030040B89FAF2CuLL);
    v3[27] = v39;
    if (v39)
    {
      *v39 = 0;
      v39[745] = v38;
      *(v39 + 95) = 0;
      memcpy(v39 + 40, (a1 + 668), 0x1FFuLL);
      __strcpy_chk();
      v40 = IHhyp("", v3[27]);
      v41 = *(a1 + 1320);
      if (v40)
      {
        *(a1 + 1320) = v41 | 0x2000;
        free(v3[27]);
        v3[27] = 0;
        *(a1 + 1308) = 0;
      }

      else
      {
        *(a1 + 1320) = v41 | 0x100;
      }

LABEL_61:
      v42 = v47[1];
      *(v33 + 64) = v47[1];
      *(v33 + 6) = bswap32(v51) >> 16;
      v43 = ICintget(v42, __dst, a1);
      *(a1 + 4) = v43;
      if (v43 == 8)
      {
        goto LABEL_53;
      }

      *(a1 + 12) = __rev16(v55);
      if (v37 <= 0xF)
      {
        if (((1 << v37) & 0x810C) != 0)
        {
          v44 = 192;
LABEL_65:
          *(a1 + 16) = v44;
          *(a1 + 1338) = 61;
          if (v52 == 69 && v53 == 78)
          {
            if (v54 == 77)
            {
              v45 = *(a1 + 1336) | 1;
              goto LABEL_73;
            }

            if (v54 == 67)
            {
              v45 = *(a1 + 1336);
LABEL_73:
              *(a1 + 1336) = v45 | 6;
            }
          }

          if (!*(v33 + 2) || (v46 = malloc_type_malloc(*(v33 + 2), 0x100004077774924uLL), (*(v34 + 8) = v46) != 0))
          {
            *(v34 + 16) = -1;
            if (!*(a1 + 1308))
            {
              return 0;
            }

            result = 0;
            v35 = *(a1 + 1320) | 0x100;
LABEL_39:
            *(a1 + 1320) = v35;
            return result;
          }

          goto LABEL_35;
        }

        if (v37 == 5)
        {
          v44 = 240;
          goto LABEL_65;
        }
      }

      v44 = 128;
      goto LABEL_65;
    }

LABEL_35:
    *(a1 + 1320) |= 8u;
    return 8;
  }

  return IChu(a1, (a1 + 1547));
}

uint64_t ICintget(unsigned int a1, uint64_t a2, uint64_t a3)
{
  *&v128[1023] = *MEMORY[0x1E69E9840];
  v126 = 0;
  v4 = *(a3 + 3184);
  v5 = *(v4 + 248);
  v6 = *(v4 + 264);
  v7 = *(v6 + 112);
  *v7 = bswap32(*(a2 + 494)) >> 16;
  v8 = *(a2 + 714);
  v9 = bswap32(v8);
  *(v4 + 88) = __rev16(v8);
  v10 = __rev16(*(a2 + 712));
  if (v10 <= HIWORD(v9))
  {
    LOWORD(v10) = 64;
  }

  *(v4 + 90) = v10;
  *(v5 + 88) = bswap32(*(a2 + 496)) >> 16;
  v11 = *(a2 + 498);
  v12 = *(a2 + 508);
  *(v4 + 92) = bswap32(*(a2 + 506)) >> 16;
  v13 = __rev16(*(a2 + 700));
  *(v4 + 12) = v13;
  if (v13 <= 0x131)
  {
    *(a3 + 1320) |= 0x4000u;
    *(a3 + 1328) |= 0x800uLL;
    return 8;
  }

  *(v5 + 2) = bswap32(*(a2 + 392)) >> 16;
  v14 = __rev16(*(a2 + 490));
  *(v5 + 54) = *(a2 + 501);
  v15 = (*(a2 + 502) << 8) | *(a2 + 503);
  *(v5 + 48) = _byteswap_ushort(*(a2 + 502));
  v115 = *(a2 + 394);
  *(v5 + 68) = bswap32(*(a2 + 504)) >> 16;
  *(v5 + 4) = bswap32(*(a2 + 512)) >> 16;
  *(v5 + 50) = bswap32(*(a2 + 524)) >> 16;
  *(v5 + 104) = bswap32(*(a2 + 510)) >> 16;
  *(v5 + 138) = bswap32(*(a2 + 514)) >> 16;
  *(v5 + 120) = bswap32(*(a2 + 516)) >> 16;
  v16 = *(a2 + 518);
  v121 = *(a2 + 520);
  v117 = *(a2 + 488);
  v119 = *(a2 + 522);
  *(v5 + 74) = bswap32(*(a2 + 492)) >> 16;
  *(v4 + 16) = bswap32(*(a2 + 526));
  v17 = *(a3 + 3168);
  v125 = v6;
  if (v17 >= 2)
  {
    if ((v17 & 1) != 0 || (v17 >= 0x20000 ? (v18 = 0x20000) : (v18 = *(a3 + 3168)), (v17 & (v17 - 1)) != 0))
    {
      v18 = 0x2000;
    }
  }

  else
  {
    v18 = 0;
  }

  *(a3 + 3168) = v18;
  *(v4 + 24) = v18 >> 2;
  if (v14)
  {
    v19 = malloc_type_calloc(1uLL, v14, 0xEC15B40CuLL);
    *(v4 + 120) = v19;
    if (!v19)
    {
      goto LABEL_138;
    }
  }

  if (*v7)
  {
    v20 = malloc_type_calloc(1uLL, *v7, 0xFD93B3FBuLL);
    *(v4 + 208) = v20;
    if (!v20)
    {
      goto LABEL_138;
    }
  }

  if (*(v5 + 88))
  {
    v21 = malloc_type_calloc(1uLL, *(v5 + 88), 0x2B404271uLL);
    *(v4 + 152) = v21;
    if (!v21)
    {
      goto LABEL_138;
    }
  }

  v22 = __rev16(v11);
  if (v22)
  {
    v23 = malloc_type_calloc(1uLL, v22, 0x5C439DA6uLL);
    *(v4 + 96) = v23;
    if (!v23)
    {
      goto LABEL_138;
    }
  }

  v114 = v22;
  v24 = __rev16(v12);
  if (v24)
  {
    v25 = malloc_type_calloc(1uLL, v24, 0x7BAB47B0uLL);
    *(v4 + 104) = v25;
    if (!v25)
    {
      goto LABEL_138;
    }
  }

  if (*(v4 + 92))
  {
    v26 = malloc_type_calloc(1uLL, *(v4 + 92), 0x9CE0410EuLL);
    *(v4 + 112) = v26;
    if (!v26)
    {
      goto LABEL_138;
    }
  }

  v113 = v24;
  v27 = *(a3 + 3168);
  if (v27)
  {
    if (v27 >= 0x8000)
    {
      v29 = 0;
      while (1)
      {
        v30 = malloc_type_calloc(1uLL, 0x8000uLL, 0xD9F22C34uLL);
        *(v4 + 32 + 8 * v29) = v30;
        if (!v30)
        {
          goto LABEL_138;
        }

        if (++v29 >= *(a3 + 3168) >> 15)
        {
          goto LABEL_32;
        }
      }
    }

    v28 = malloc_type_calloc(1uLL, v27, 0x39A4A4EAuLL);
    *(v4 + 32) = v28;
    if (!v28)
    {
LABEL_138:
      v71 = *(a3 + 1320) | 8;
LABEL_139:
      *(a3 + 1320) = v71;
      return 8;
    }
  }

LABEL_32:
  if (*(v5 + 104))
  {
    v31 = malloc_type_calloc(1uLL, *(v5 + 104), 0xC0FBD00EuLL);
    *(v4 + 168) = v31;
    if (!v31)
    {
      goto LABEL_138;
    }

    v32 = *(v5 + 104);
    v125[1085] = v32 >> 3;
    v33 = malloc_type_calloc(1uLL, v32 & 0xFFF8, 0x10040436913F5uLL);
    *(v4 + 192) = v33;
    if (!v33)
    {
      goto LABEL_138;
    }

    v34 = malloc_type_calloc(1uLL, 8 * v125[1085], 0x10040436913F5uLL);
    *(v4 + 184) = v34;
    if (!v34)
    {
      goto LABEL_138;
    }
  }

  if (*(v5 + 138))
  {
    v35 = malloc_type_calloc(1uLL, *(v5 + 138), 0xE0A5C044uLL);
    *(v4 + 176) = v35;
    if (!v35)
    {
      goto LABEL_138;
    }
  }

  if (*(v5 + 120))
  {
    v36 = malloc_type_calloc(1uLL, *(v5 + 120), 0x49C517BDuLL);
    *(v4 + 160) = v36;
    if (!v36)
    {
      goto LABEL_138;
    }
  }

  if (*(v5 + 4))
  {
    v37 = malloc_type_calloc(1uLL, *(v5 + 4), 0x79262119uLL);
    *(v4 + 200) = v37;
    if (!v37)
    {
      goto LABEL_138;
    }
  }

  v38 = __rev16(v16);
  if (v38)
  {
    v39 = malloc_type_calloc(1uLL, v38, 0xE81FAB28uLL);
    *(v4 + 128) = v39;
    if (!v39)
    {
      goto LABEL_138;
    }
  }

  v40 = __rev16(v121);
  if (v40)
  {
    v41 = malloc_type_calloc(1uLL, v40, 0x3CF6B96DuLL);
    *(v4 + 136) = v41;
    if (!v41)
    {
      goto LABEL_138;
    }
  }

  v42 = __rev16(v119);
  if (v42)
  {
    v43 = malloc_type_calloc(1uLL, v42, 0x76630F81uLL);
    *(v4 + 144) = v43;
    if (!v43)
    {
      goto LABEL_138;
    }
  }

  v112 = v38;
  v44 = __rev16(v117);
  if (v44)
  {
    v45 = malloc_type_calloc(1uLL, v44 + 1, 0x3EA446FEuLL);
    *(v4 + 72) = v45;
    if (!v45)
    {
      goto LABEL_138;
    }
  }

  if (*(v5 + 74))
  {
    v46 = malloc_type_calloc(1uLL, *(v5 + 74), 0x9ED0C26CuLL);
    *(v4 + 296) = v46;
    if (!v46)
    {
      goto LABEL_138;
    }
  }

  result = SLSeek(a1, (v15 + (bswap32(v115) >> 16)) * *(v5 + 2), 0);
  if (result == 8)
  {
LABEL_53:
    *(a3 + 1320) |= 0x40u;
    return result;
  }

  *v109 = v44;
  v110 = v40;
  v48 = *(a3 + 3168);
  v111 = v42;
  if (v48)
  {
    v49 = (v4 + 32);
    if (v48 >= 0x8000)
    {
      v51 = 0;
      do
      {
        bzero(v49[v51++], 0x8000uLL);
        v50 = *(a3 + 3168);
      }

      while (v51 < v50 >> 15);
    }

    else
    {
      bzero(*v49, v48);
      v50 = *(a3 + 3168);
    }
  }

  else
  {
    v50 = 0;
  }

  *(v4 + 20) = 10;
  v52 = *(v4 + 24);
  if (v50 <= *(v4 + 16))
  {
    v53 = 6 * v52;
  }

  else
  {
    v53 = *(v4 + 16);
  }

  if (v53 >= 65532)
  {
    v54 = -4;
  }

  else
  {
    v54 = v53;
  }

  v122 = v54;
  v55 = malloc_type_malloc(v54, 0x100004077774924uLL);
  v56 = v55;
  v57 = *(v4 + 16);
  if (v53 >= 1 && v57 != 0)
  {
    v72 = 0;
    v73 = 0;
    v74 = v52 >> 1;
    v75 = v4 + 32;
    v76 = v122;
    v118 = v53;
    v116 = v55;
    while (1)
    {
      v120 = v73;
      v123 = v76;
      v77 = v76;
      if (SLFRead(a1, v76, v56, &v126) == 8 || v126 != v77)
      {
        goto LABEL_179;
      }

      if (v77)
      {
        v78 = 0;
        v56 = v116;
        v79 = v118;
        do
        {
          v80 = 0;
          v81 = &v116[6 * v78];
          v82 = *v81;
          v83 = v81[1];
          v84 = v81[2];
          v85 = v81[3];
          v86 = v81[4];
          v87 = v81[5];
          v88 = v85 & 7;
          v89 = (v85 >> 4) | (v83 << 12) | (16 * v84);
          v90 = v83 >> 3;
          v91 = v90 | (32 * v82);
          v92 = *(v4 + 24) - 1;
          v93 = 3 - v87;
          while (v72 <= v74 || *(v4 + 20) >= v80)
          {
            v94 = v89 & v92;
            v95 = (v89 & v92) >> 13;
            v96 = 4 * (v89 & v92 & 0x1FFFLL);
            v97 = *(v75 + 8 * v95);
            if (!*(v97 + v96) && !*(v97 + (v96 | 1)))
            {
              v98 = v96 | 2;
              if ((*(v97 + v98) & 0xF) == 0)
              {
                if (*(v4 + 20) < v80)
                {
                  *(v4 + 20) = v80;
                }

                v100 = (v94 << 16) >> 29;
                *(v97 + v96) = v91 >> 4;
                *(*(v75 + 8 * v100) + (v96 | 1)) = v88 | (16 * v90);
                *(*(v75 + 8 * v100) + v98) = v86;
                *(*(v75 + 8 * v100) + v96 + 3) = v87;
                ++v72;
                break;
              }
            }

            v93 += 2 * v87;
            v89 = v94 + v93;
            if (v80++ >= 9)
            {
              break;
            }
          }

          ++v78;
        }

        while (v78 != (v123 - 1) / 6u + 1);
        v101 = v126;
      }

      else
      {
        v101 = 0;
        v56 = v116;
        v79 = v118;
      }

      v73 = v101 + v120;
      v102 = (v79 - (v101 + v120));
      if (v79 == v101 + v120)
      {
        v57 = *(v4 + 16);
        goto LABEL_72;
      }

      if (v102 > 0xFFFB)
      {
        v76 = -4;
      }

      else
      {
        v76 = v102 - (v79 - v73) % 6u;
      }

      v57 = *(v4 + 16);
      if (v79 <= v73 || !v57)
      {
        goto LABEL_72;
      }
    }
  }

  v73 = 0;
LABEL_72:
  if (v57 > v73)
  {
    v59 = v56;
    result = SLSeek(a1, v57 - v73, 1u);
    v56 = v59;
    if (result == 8)
    {
      goto LABEL_53;
    }
  }

  free(v56);
  if (v112 && (SLFRead(a1, v112, *(v4 + 128), &v126) == 8 || v126 != v112))
  {
    goto LABEL_179;
  }

  if (v110)
  {
    if (SLFRead(a1, v110, *(v4 + 136), &v126) == 8 || v126 != v110)
    {
      goto LABEL_179;
    }

    *(v5 + 52) = ~(-1 << *(v5 + 50)) - _byteswap_ushort(**(v4 + 136));
  }

  if (v111 && (SLFRead(a1, v111, *(v4 + 144), &v126) == 8 || v126 != v111) || v14 && (SLFRead(a1, v14, *(v4 + 120), &v126) == 8 || v126 != v14))
  {
    goto LABEL_179;
  }

  if (*(v5 + 4))
  {
    if (SLFRead(a1, *(v5 + 4), *(v4 + 200), &v126) == 8 || v126 != *(v5 + 4))
    {
      goto LABEL_179;
    }

    v60 = *(v4 + 200);
    v61 = (bswap32(*v60) >> 16) - 1;
    v125[1069] = v61;
    v62 = bswap32(v60[1]) >> 16;
    v125[1067] = v62;
    v125[1068] = v61 + 2 * v62;
    v125[1070] = (bswap32(v60[2]) >> 16) - 1;
  }

  if (*(v5 + 74) && (SLFRead(a1, *(v5 + 74), *(v4 + 296), &v126) == 8 || v126 != *(v5 + 74)) || *v7 && (SLFRead(a1, *v7, *(v4 + 208), &v126) == 8 || v126 != *v7) || *(v5 + 88) && (SLFRead(a1, *(v5 + 88), *(v4 + 152), &v126) == 8 || v126 != *(v5 + 88)) || v114 && (SLFRead(a1, v114, *(v4 + 96), &v126) == 8 || v126 != v114) || v113 && (SLFRead(a1, v113, *(v4 + 104), &v126) == 8 || v126 != v113) || *(v4 + 92) && (SLFRead(a1, *(v4 + 92), *(v4 + 112), &v126) == 8 || v126 != *(v4 + 92)))
  {
    goto LABEL_179;
  }

  if (*(v5 + 104))
  {
    if (SLFRead(a1, *(v5 + 104), *(v4 + 168), &v126) == 8 || v126 != *(v5 + 104))
    {
      goto LABEL_179;
    }

    v63 = malloc_type_calloc(1uLL, 2 * v125[1085], 0x1000040BDFB0063uLL);
    *(v5 + 168) = v63;
    if (!v63)
    {
      goto LABEL_138;
    }

    v64 = malloc_type_calloc(1uLL, 2 * v125[1085], 0x1000040BDFB0063uLL);
    *(v5 + 176) = v64;
    if (!v64)
    {
      goto LABEL_138;
    }

    if (v125[1085] >= 1)
    {
      v65 = 0;
      v66 = 0;
      do
      {
        *(*(v4 + 184) + 8 * v66) = *(v4 + 168) + 8 * v66;
        *(*(v4 + 192) + 8 * v66) = *(v4 + 168) + 8 * v66 + 4;
        *(*(v5 + 168) + v66) = 0;
        *(*(v5 + 176) + v66) = 0;
        v67 = 4;
        v68 = v65;
        do
        {
          if (*(*(v4 + 168) + v68) == 32)
          {
            break;
          }

          ++*(*(v5 + 176) + v66);
          ++v68;
          --v67;
        }

        while (v67);
        for (i = 4; i != 8; ++i)
        {
          if (*(*(v4 + 168) + v65 + i) == 32)
          {
            break;
          }

          ++*(*(v5 + 168) + v66);
        }

        ++v66;
        v65 += 8;
      }

      while (v66 < v125[1085]);
    }
  }

  if (*(v5 + 138) && (SLFRead(a1, *(v5 + 138), *(v4 + 176), &v126) == 8 || v126 != *(v5 + 138)))
  {
LABEL_179:
    v71 = *(a3 + 1320) | 0x20;
    goto LABEL_139;
  }

  if (*(v5 + 120))
  {
    if (SLFRead(a1, *(v5 + 120), *(v4 + 160), &v126) == 8 || v126 != *(v5 + 120))
    {
      goto LABEL_179;
    }

    *(v5 + 136) = *(v5 + 120) / 0xDu;
  }

  if (v109[0])
  {
    if (SLFRead(a1, v109[0], *(v4 + 72), &v126) == 8 || v126 != v109[0])
    {
      goto LABEL_179;
    }

    *(*(v4 + 72) + *v109) = 0;
  }

  if (v13 < 0x134)
  {
    v103 = SLLngToA(*(a3 + 8));
    *(v5 + 56) = v103;
    if (!v103)
    {
      v71 = *(a3 + 1320) | 0x4000;
      goto LABEL_139;
    }
  }

  else
  {
    v70 = malloc_type_calloc(4uLL, 0x100uLL, 0x100004052888210uLL);
    *(v5 + 56) = v70;
    if (!v70)
    {
      goto LABEL_138;
    }

    if (SLFRead(a1, 1024, &__dst, &v126) == 8)
    {
      *(a3 + 1320) |= 0x20u;
      SLClose(a1);
      return 8;
    }

    v104 = 0;
    v105 = *(v5 + 56);
    v106 = v128;
    do
    {
      *(v105 + 4 * v104++) = bswap32(*(v106 - 1));
      v106 += 4;
    }

    while (v104 != 256);
  }

  v107 = v125[1085];
  if (v13 != 306)
  {
    if (SLFRead(a1, v107 - 1, (v5 + 184), &v126) != 8 && v126 == v125[1085] - 1)
    {
      return 0;
    }

    goto LABEL_179;
  }

  if (v107 == 1)
  {
    return 0;
  }

  v108 = 0;
  do
  {
    result = 0;
    *(v5 + 184 + v108++) = 7;
  }

  while (v108 < (v125[1085] - 1));
  return result;
}

uint64_t ICpd(uint64_t a1, unsigned __int8 *a2)
{
  v73 = *MEMORY[0x1E69E9840];
  v70 = 0;
  v4 = SLLngToA(a2[2058]);
  v5 = a2[2059];
  if (!v5)
  {
    v5 = 61;
    a2[2059] = 61;
  }

  v6 = *a2;
  if (v6 > 0xA || ((1 << v6) & 0x5F6) == 0)
  {
    v10 = 0;
    v9 = 0;
    v11 = 0;
  }

  else
  {
    v8 = *(a1 + 3184);
    v9 = v8[33];
    *(v9 + 3204) = *(a2 + 1);
    v10 = v8[29];
    v11 = v8[30];
  }

  result = 0;
  if (v6 > 9)
  {
    if ((v6 - 10) < 5)
    {
      v17 = malloc_type_calloc(1uLL, 0x850uLL, 0x1090040FF1BFF1AuLL);
      if (!v17)
      {
        return 8;
      }

      v18 = v17;
      v17[1032] = *(a2 + 1);
      __strcpy_chk();
      __strcpy_chk();
      __strcpy_chk();
      __strcpy_chk();
      __strcpy_chk();
      *(v18 + 784) = *(a2 + 387);
      *(v18 + 2076) = *(a2 + 514);
      *(v18 + 2074) = *(a2 + 2);
      *(v18 + 772) = 0;
      if (*a2 - 10 >= 5)
      {
        v19 = 0;
      }

      else
      {
        v19 = 0x403060502uLL >> (8 * (*a2 - 10));
      }

      *(v18 + 776) = 0;
      *(v18 + 2069) = 0;
      *(v18 + 2066) = 0;
      v20 = PDdb(v18, v19 & 7);
      v21 = *(v18 + 2120);
      v22 = *(v18 + 2104);
      *(a2 + 134) = *(v18 + 2088);
      *(a2 + 135) = v22;
      *(a2 + 272) = v21;
      if (v20 != 8)
      {
        v23 = *a2;
        if (v23 == 10)
        {
          *(a2 + 2) = *(v18 + 2074);
          *(v9 + 3206) = PDchknegs();
        }

        else if (v23 == 13)
        {
          *(a2 + 2) = 0;
        }

        *(a2 + 387) = *(v18 + 784);
        *(a2 + 1029) = *(v18 + 2078);
        goto LABEL_63;
      }

LABEL_58:
      v41 = v18;
LABEL_59:
      free(v41);
      return 8;
    }

    if (v6 == 16)
    {
      v38 = malloc_type_calloc(1uLL, 0x30uLL, 0x109004046003039uLL);
      if (v38)
      {
        v18 = v38;
        v38[1] = *(a2 + 1);
        if (PDapp(v38, 2) != 8)
        {
          goto LABEL_63;
        }

        goto LABEL_57;
      }
    }

    else
    {
      if (v6 != 15)
      {
        return result;
      }

      v26 = malloc_type_calloc(1uLL, 0x30uLL, 0x109004046003039uLL);
      if (v26)
      {
        v18 = v26;
        if (PDapp(v26, 1) != 8)
        {
          *(a2 + 1) = *(v18 + 2);
LABEL_63:
          v42 = v18;
          goto LABEL_64;
        }

LABEL_57:
        v39 = *(v18 + 8);
        v40 = *(v18 + 24);
        *(a2 + 272) = *(v18 + 40);
        *(a2 + 135) = v40;
        *(a2 + 134) = v39;
        goto LABEL_58;
      }
    }

    result = 8;
    v54 = MEMORY[8];
    v55 = MEMORY[0x18];
    *(a2 + 272) = MEMORY[0x28];
    *(a2 + 135) = v55;
    *(a2 + 134) = v54;
    return result;
  }

  if (v6 <= 5)
  {
    if ((v6 - 1) >= 2)
    {
      if ((v6 - 4) >= 2)
      {
        return result;
      }

      if (v6 == 5)
      {
        v13 = 11;
      }

      else
      {
        v13 = 0;
      }

      if (v6 == 4)
      {
        v14 = 8;
      }

      else
      {
        v14 = v13;
      }

      *(v10 + 48) = a2[2138];
      *v10 = *(a2 + 2);
      *(v10 + 2) = *(v9 + 3204);
      *(v10 + 42) = 0;
      *(v10 + 36) = 0xFFFF;
      v15 = v10;
      v16 = 1;
      goto LABEL_33;
    }

    v27 = malloc_type_calloc(1uLL, 0x68uLL, 0x109004069F7AFFDuLL);
    if (!v27)
    {
      return 8;
    }

    v28 = v27;
    *(v27 + 1) = malloc_type_calloc(0x41uLL, 1uLL, 0x100004077774924uLL);
    *(v28 + 1) = *(v9 + 3204);
    v29 = a2 + 2060;
    v30 = a2[2059];
    v28[16] = v30;
    if (*(a1 + 1408))
    {
      if (SLpar(a2 + 2060, (*(a1 + 3184) + 2), (*(a1 + 3184) + 4), &v70, v4) == 8)
      {
        return 4;
      }

      v47 = *(a1 + 3184);
      v48 = *(v47 + 2);
      v49 = *(v47 + 2);
      v50 = *(v47 + 4);
      if (v48 <= v50)
      {
        v51 = v48;
        do
        {
          __s[v48 - v49] = v29[v51++];
          v48 = v51;
        }

        while (v51 <= v50);
      }

      __s[v48 - v49] = 0;
      HypStrip(__s, v28 + 28, v28[16]);
      v52 = strlen(__s);
      v28[18] = SLcap(__s, 0, (v52 - 1), v28 + 20, v4);
      v53 = strlen(__s);
      if (v53 >= 1)
      {
        for (i = 0; i < v53; ++i)
        {
          __src[i] = ((*(v4 + 4 * __s[i]) >> 25) & 0x20) + __s[i];
        }

        goto LABEL_81;
      }
    }

    else
    {
      HypStrip(a2 + 2060, v28 + 28, v30);
      v43 = strlen(a2 + 2060);
      v28[18] = SLcap((a2 + 2060), 0, (v43 - 1), v28 + 20, v4);
      v44 = strlen(a2 + 2060);
      if (v44 >= 1)
      {
        v45 = 0;
        do
        {
          __src[v45] = ((*(v4 + 4 * v29[v45]) >> 25) & 0x20) + v29[v45];
          i = ++v45;
        }

        while (v44 > v45);
        goto LABEL_81;
      }
    }

    i = 0;
LABEL_81:
    __src[i] = 0;
    strcpy(*(v28 + 1), __src);
    v56 = *(a2 + 2);
    *v28 = v56;
    v28[17] = a2[2125];
    v57 = *(a2 + 1068);
    if (v57)
    {
      *(v28 + 5) = *(a2 + 266);
      *(v28 + 24) = v57;
    }

    v58 = *a2;
    if (v58 == 2)
    {
      v65 = 3;
    }

    else if (v58 == 1)
    {
      *(v10 + 48) = 100;
      *v10 = v56;
      *(v10 + 2) = *(v9 + 3204);
      *(v10 + 42) = 0;
      *(v10 + 16) = a2[2059];
      *(v10 + 28) = *(v28 + 7);
      *(v10 + 32) = *(v28 + 8);
      *(v10 + 17) = v28[18];
      *(v10 + 20) = *(v28 + 5);
      *(v10 + 24) = *(v28 + 6);
      strcpy(*(v10 + 8), *(v28 + 1));
      *(v10 + 36) = 0xFFFF;
      v59 = PDword(v10, 1u, 1);
      v60 = *(v10 + 144);
      v61 = *(v10 + 128);
      *(a2 + 134) = *(v10 + 112);
      *(a2 + 135) = v61;
      *(a2 + 272) = v60;
      if (v59 == 8)
      {
        return 8;
      }

      if (*(v10 + 50))
      {
        v62 = 0;
        v63 = *(v10 + 17);
        do
        {
          if (v63 == 3)
          {
            v64 = *(*(v10 + 104) + v62);
            if (*(v10 + 20) == *(v64 + 80) && *(v10 + 24) == *(v64 + 84))
            {
LABEL_100:
              if (!*(a2 + 1074) || *(a2 + 536) <= 7)
              {
                result = 8;
                *(a2 + 536) = 8;
                *(a2 + 1074) = 5151;
                return result;
              }

              return 8;
            }
          }

          else if (v63 == *(*(*(v10 + 104) + v62) + 71))
          {
            goto LABEL_100;
          }

          v62 += 8;
        }

        while (8 * *(v10 + 50) != v62);
      }

      v65 = 2;
    }

    else
    {
      v65 = 0;
    }

    if (PDedit(v28, v65) == 8)
    {
      v66 = *(v28 + 4);
      v67 = *(v28 + 5);
      *(a2 + 272) = *(v28 + 12);
      *(a2 + 135) = v67;
      *(a2 + 134) = v66;
      v41 = v28;
      goto LABEL_59;
    }

    *(v9 + 3206) = PDchknegs();
    v68 = *(v28 + 12);
    v69 = *(v28 + 5);
    *(a2 + 134) = *(v28 + 4);
    *(a2 + 272) = v68;
    *(a2 + 135) = v69;
    free(*(v28 + 1));
    v42 = v28;
LABEL_64:
    free(v42);
    return 0;
  }

  if ((v6 - 7) < 2)
  {
    *v10 = *(a2 + 2);
    *(v10 + 2) = *(v9 + 3204);
    if (v6 == 7)
    {
      v14 = 8;
    }

    else
    {
      v14 = 11;
    }

    v15 = v10;
    v16 = 2;
LABEL_33:
    if (PDword(v15, v14, v16) == 8)
    {
LABEL_34:
      v24 = *(v10 + 112);
      v25 = *(v10 + 128);
      *(a2 + 272) = *(v10 + 144);
      *(a2 + 135) = v25;
      *(a2 + 134) = v24;
      return 8;
    }

    return 0;
  }

  if (v6 == 6)
  {
    *(v10 + 16) = v5;
    if (PDword(v10, 8u, 5) != 8)
    {
      *(v9 + 40) = *(a1 + 1686);
      *(v9 + 42) = 100;
      *(v9 + 88) = 0;
      *(v9 + 48) = a1 + 1690;
      *(v9 + 64) = a1 + 2890;
      *(v9 + 44) = *(a1 + 1688);
      SFlstini((v9 + 40), (v9 + 44), (a1 + 1690), (a1 + 2890));
      LOWORD(v31) = *(v10 + 50);
      if (v31)
      {
        v32 = 0;
        do
        {
          v33 = *(*(v10 + 104) + 8 * v32);
          v34 = strlen(v33);
          SLrecap(v33, v34, *(v33 + 71), v33 + 80, *(v9 + 88), v4);
          __strcpy_chk();
          v35 = *(*(v10 + 104) + 8 * v32);
          v36 = *(*(a2 + 274) + 8 * v32);
          *(v36 + 66) = *(v35 + 66);
          *(v36 + 68) = *(v35 + 70);
          *(v36 + 72) = *(v35 + 88);
          *(v36 + 76) = *(v35 + 92);
          v37 = *(v35 + 100);
          if (v37)
          {
            *v11 = *v10;
            *(v11 + 4) = *(v35 + 96);
            *(v11 + 16) = v37;
            if (PDalt(v11) == 8)
            {
              return 8;
            }

            strncpy((*(*(a2 + 274) + 8 * v32) + 80), *(v11 + 8), *(v11 + 16));
            *(*(*(a2 + 274) + 8 * v32) + *(v11 + 16) + 80) = 0;
          }

          else
          {
            *(v36 + 80) = 0;
          }

          ++v32;
          v31 = *(v10 + 50);
        }

        while (v32 < v31);
      }

      result = 0;
      *(a2 + 1092) = v31;
      *(a1 + 1686) = *(v9 + 40);
      *(a1 + 1688) = *(v9 + 44);
      return result;
    }

    goto LABEL_34;
  }

  return result;
}

_BYTE *HypStrip(_BYTE *result, void *a2, int a3)
{
  *a2 = 0;
  v3 = *result;
  if (*result)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0x80000000;
    do
    {
      if (v3 == a3)
      {
        if (v6 == 32)
        {
          *a2 |= 1u;
          v6 = 32;
        }

        else
        {
          *(a2 + v5) |= 2 * v7;
        }
      }

      else
      {
        v8 = v6++;
        result[v8] = v3;
        v7 >>= 1;
        if (v6 == 32)
        {
          ++v5;
          v7 = 0x80000000;
        }
      }

      if (v4 > 0x3E)
      {
        break;
      }

      v3 = result[++v4];
    }

    while (v3);
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  result[v9] = 0;
  return result;
}

uint64_t ICpre(char *a1, uint64_t a2)
{
  v4 = 0;
  v83 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 3184);
  v6 = *(v5 + 264);
  v81 = 0;
  v80 = 0;
  v75 = *(v6 + 112);
  v7 = *(*(v5 + 248) + 56);
  __src[0] = 0;
  *(a2 + 1547) = 0;
  v8 = a2 + 1417;
  *(a2 + 1417) = 0;
  v9 = a2 + 1482;
  *(a2 + 1482) = 0;
  *(a2 + 1322) = 0;
  *(v6 + 3492) = 0;
  *(v6 + 3512) = 0;
  do
  {
    *(*(v6 + 3520) + 2 * v4) = 0;
    *(*(v6 + 24) + 2 * v4) = 0;
    *(*(v6 + 3496) + v4) = 0;
    *(*(v6 + 3504) + v4++) = 0;
  }

  while (v4 != 6);
  v10 = *(a2 + 8);
  v79 = a2 + 1547;
  if (!*(a2 + 1408))
  {
    v15 = 0;
    *(v5 + 2) = 0;
    *(v5 + 4) = *(a2 + 1612) - 1;
    v11 = 11;
    goto LABEL_38;
  }

  LOWORD(v80) = 0;
  *(a2 + 1413) = 0;
  v11 = SLpar(a1, (v5 + 2), (v5 + 4), &v80, v7);
  if (v11 != 8)
  {
    goto LABEL_16;
  }

  if (v10 == 16)
  {
    if (a1[*(v5 + 2)] != 105 || (v80 & 0x200) != 0)
    {
LABEL_17:
      v14 = 8;
      goto LABEL_18;
    }

    v15 = 1;
    if (*(v5 + 2) != *(v5 + 4))
    {
      v11 = 8;
      goto LABEL_24;
    }

    *(a2 + 1328) |= 0x400uLL;
    *(a2 + 1547) = 105;
    strcpy(__src, "I");
    SFadd(__src, 1, (v6 + 40), (v6 + 44), 100, *(v6 + 56), *(v6 + 48), *(v6 + 64));
    *(v6 + 40) = 1;
    v11 = 4;
LABEL_16:
    v15 = 0;
    goto LABEL_24;
  }

  if (v10 != 17)
  {
    goto LABEL_17;
  }

  v12 = *(v5 + 2);
  v13 = a1[v12];
  if (v13 != 84 && v13 != 78)
  {
    goto LABEL_17;
  }

  if ((v80 & 0x2000) == 0)
  {
    goto LABEL_17;
  }

  *(a2 + 1328) |= 0x400uLL;
  *(a2 + 1547) = a1[v12];
  *(a2 + 1612) = 1;
  __strcpy_chk();
  __src[0] = ((*(v7 + 4 * *(a2 + 1547)) >> 25) & 0x20) + *(a2 + 1547);
  SFadd(__src, 1, (v6 + 40), (v6 + 44), 100, *(v6 + 56), *(v6 + 48), *(v6 + 64));
  *(v6 + 40) = 1;
  v14 = 4;
LABEL_18:
  v15 = 0;
  if ((v80 & 0x200) != 0 || v80 == 0)
  {
    v11 = 4;
  }

  else
  {
    v11 = v14;
  }

LABEL_24:
  v17 = v80;
  if (!v80)
  {
    *(a2 + 1416) = 0;
    *(a2 + 1412) = 0;
    goto LABEL_38;
  }

  *(a2 + 1412) = (v80 & 0x200) != 0;
  if ((v17 & 0x100) != 0)
  {
    *(a2 + 1328) |= 0x40000uLL;
  }

  if ((v17 & 0x400) != 0)
  {
    *(a2 + 1413) = 1;
    if ((v17 & 0x800) == 0)
    {
      goto LABEL_33;
    }
  }

  else
  {
    *(a2 + 1413) = 0;
    if ((v17 & 0x1000) == 0)
    {
      *(a2 + 1415) = 0;
      if ((v17 & 0x800) != 0)
      {
        goto LABEL_36;
      }

LABEL_33:
      *(a2 + 1414) = 0;
      *(a2 + 1416) = (v17 & 0x2000) != 0;
      goto LABEL_38;
    }

    *(a2 + 1415) = 1;
    if ((v17 & 0x800) == 0)
    {
      goto LABEL_33;
    }
  }

LABEL_36:
  *(a2 + 1414) = 1;
LABEL_38:
  if (v11 == 4)
  {
    v18 = 4;
  }

  else
  {
    v18 = 11;
  }

  if (*(a2 + 1416))
  {
    if (*(a2 + 1415))
    {
      *(a2 + 1415) = 0;
    }

    else if (*(a2 + 8) && ((1 << (*(a2 + 8) - 1)) & 0xC420) == 0)
    {
      *(a2 + 1416) = 0;
    }
  }

  else if (*(a2 + 1415) && (v10 - 15) >= 2)
  {
    if ((v10 - 5) < 2 || v10 == 9)
    {
      LOWORD(v19) = *(v5 + 4);
    }

    else if (v10 == 8 || !*(*(v5 + 248) + 88) || ((v19 = *(v5 + 4), v20 = (((*(v7 + 4 * a1[v19]) >> 25) & 0x20) + a1[v19]) - 115, v21 = v20 > 7, v22 = (1 << v20) & 0xA1, !v21) ? (v23 = v22 == 0) : (v23 = 1), v23))
    {
      *(a2 + 1415) = 0;
      goto LABEL_61;
    }

    *(v5 + 4) = v19 + 1;
  }

LABEL_61:
  v76 = v11;
  v77 = v15;
  __strcpy_chk();
  v24 = *(v5 + 2);
  v25 = &a1[v24];
  v26 = a1[v24];
  v27 = *(a2 + 1338);
  if (v26 == v27)
  {
    if (v24 < *(a2 + 1612))
    {
      v28 = *(a2 + 1612) - v24;
      do
      {
        v29 = *v25++;
        if (v29 != v26)
        {
          break;
        }

        LODWORD(v24) = v24 + 1;
        *(v5 + 2) = v24;
        --v28;
      }

      while (v28);
    }

    if (*(a2 + 1308))
    {
      *(a2 + 1328) |= 8uLL;
    }
  }

  v30 = *(v5 + 4);
  if ((v30 & 0x80000000) == 0)
  {
    do
    {
      if (a1[v30] != v27)
      {
        break;
      }

      v31 = v30;
      LOWORD(v30) = v30 - 1;
      *(v5 + 4) = v30;
    }

    while (v31 > 0);
  }

  v78 = v18;
  __strncpy_chk();
  v32 = *(v5 + 2);
  v33 = *(a2 + 1612);
  if (v32 >= v33)
  {
    v34 = 0;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v36 = *(a2 + 1338);
    v37 = *(v5 + 2);
    do
    {
      v38 = a1[v37];
      if (v38 == v36 && v37 <= *(v5 + 4))
      {
        *(v6 + 3472 + 4 * ((v35 - 1) >> 5)) |= 1 << -v35;
        ++v34;
      }

      else
      {
        __src[v32++] = v38;
        ++v35;
      }

      ++v37;
    }

    while (v33 != v37);
  }

  __src[v32] = 0;
  strcpy(a1, __src);
  __strcpy_chk();
  if (*(v5 + 2) < 1)
  {
    v39 = 0;
  }

  else
  {
    v39 = 0;
    do
    {
      v40 = v39;
      *(v8 + v39) = __src[v39];
      ++v39;
    }

    while (v40 <= 0x3E && v39 < *(v5 + 2));
  }

  *(v8 + v39) = 0;
  if (*(v5 + 4) + 1 >= *(a2 + 1612))
  {
    v44 = 0;
  }

  else
  {
    v41 = 0;
    v42 = &__src[*(v5 + 4) + 1];
    v43 = *(v5 + 4) + 2;
    do
    {
      *(v9 + v41) = v42[v41];
      v44 = v41 + 1;
      if ((v43 + v41) >= *(a2 + 1612))
      {
        break;
      }
    }

    while (v41++ < 0x3F);
  }

  *(v9 + v44) = 0;
  v46 = *(v5 + 4) - v34;
  *(v5 + 4) = v46;
  *(v6 + 88) = SLcap(a1, *(v5 + 2), v46, (v6 + 92), v7);
  if (*(v5 + 2) <= *(v5 + 4))
  {
    v47 = 0;
    v50 = 0;
    v52 = 0;
    v53 = 0;
    v54 = *(v5 + 2) - 1;
    v55 = a1 + 1;
    v56 = v79;
    v51 = v78;
    do
    {
      v57 = v55[v54];
      v58 = *(v7 + 4 * v57);
      if ((v58 & 0x60000040) != 0)
      {
        ++v53;
      }

      else if (v57 == 63 || v57 == 42)
      {
        ++v52;
      }

      *v56 = ((v58 >> 25) & 0x20) + v57;
      v59 = v55[v54];
      if (v59 == 39)
      {
        *(v6 + 3492) |= 0x400u;
        v59 = v55[v54];
      }

      v60 = *(v7 + 4 * v59);
      v61 = (v60 & 0x4064000) == 0 || (~v60 & 0x50000000) != 0;
      if (v61)
      {
        v62 = v50;
      }

      else
      {
        v62 = 1;
      }

      if (v61 || v10 != 8)
      {
        if (v10 != 3 || (a1[v54] | 0x20) != 0x6C || (v55[v54 + 1] | 0x20) != 0x6C)
        {
          goto LABEL_125;
        }

        v64 = *(a2 + 24);
        if (v59 == 46 && (v64 & 0x80) != 0)
        {
          goto LABEL_157;
        }

        if (v59 == 183)
        {
          v50 = v62;
          if ((v64 & 0x40) != 0)
          {
            goto LABEL_157;
          }
        }

        else
        {
LABEL_125:
          v50 = v62;
        }
      }

      else if ((*(a2 + 24) & 0x40) == 0 || (*&v60 & 0x40000) == 0)
      {
        v50 = 1;
      }

      ++v54;
      ++v47;
      ++v56;
    }

    while (v54 < *(v5 + 4));
    v49 = v52 != 0;
    v48 = v53 > 1;
  }

  else
  {
    v47 = 0;
    v48 = 0;
    v49 = 0;
    LOBYTE(v50) = 0;
    v51 = v78;
  }

  *(v79 + v47) = 0;
  if (v10 == 11)
  {
    v65 = *(v5 + 4);
    if (*(v5 + 2) > v65)
    {
      goto LABEL_148;
    }

    v66 = *(v5 + 2);
    v67 = a2 + 1549;
    do
    {
      if (*(v79 + v66) == 255)
      {
        v69 = v65;
        v70 = v65 + 2;
        v68 = v66 + 1;
        if (v66 + 1 < v70)
        {
          v71 = (v67 + v69);
          v72 = (v67 + v69);
          do
          {
            --v70;
            v73 = *--v72;
            *v71 = v73;
            v71 = v72;
          }

          while (v70 > v68);
        }

        *(v79 + v66) = 105;
        *(v79 + v68) = 106;
        LOWORD(v47) = v47 + 1;
        if ((*(v6 + 88) | 2) == 3)
        {
          *(v6 + 92) |= 0x40000000u;
          *(v6 + 88) = 3;
        }
      }

      else
      {
        v68 = v66 + 1;
      }

      LOWORD(v65) = *(v5 + 4);
      v21 = v66 < v65;
      v66 = v68;
    }

    while (v21);
  }

  if (v10 == 15)
  {
    if (v50 && (*(v6 + 88) == 2 || (*(a2 + 24) & 0x40) != 0 && (*(v6 + 92) & 0x80000000) != 0))
    {
      goto LABEL_157;
    }
  }

  else if (v10 == 8 && (*(a2 + 24) & 0x40) != 0 && v50)
  {
    goto LABEL_157;
  }

LABEL_148:
  *(a2 + 1612) = v47;
  ICchkprepos(a2);
  SLmap(v79, 0, *(a2 + 1612), (a2 + 1672), (a2 + 1664), (a2 + 1648), (a2 + 1656));
  if (*a2 == 5 && v49)
  {
    return 9;
  }

  if (!((v77 | v48 | v49) & 1 | (v76 == 4)) && (!*v75 || SFcltchk(v79, 0, (*(a2 + 1612) - 1), &v81, &v80 + 1, *v75, *(v75 + 1)) != 10))
  {
    v51 = 4;
  }

  if (v10 == 5 && (*(a2 + 24) & 0x40) != 0 && v50)
  {
LABEL_157:
    *(a2 + 1328) |= 0x1000000uLL;
    return 11;
  }

  return v51;
}

uint64_t ICprever(char *__src, size_t a2)
{
  v3 = __src;
  v141 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 3184);
  v5 = *(v4 + 264);
  v6 = *(v4 + 248);
  v132 = *(v6 + 56);
  v133 = *(a2 + 8);
  strncpy(__dst, __src, 0x40uLL);
  __dst[64] = 0;
  v7 = strlen(v3);
  v8 = *(v4 + 2);
  v9 = v7;
  if (v7 <= v8)
  {
    v9 = *(v4 + 2);
  }

  else
  {
    v10 = *(a2 + 1338);
    v11 = &v3[*(v4 + 2)];
    v12 = v7 - *(v4 + 2);
    do
    {
      v14 = *v11++;
      v13 = v14;
      if (v14 != v10)
      {
        __dst[v8++] = v13;
      }

      --v12;
    }

    while (v12);
  }

  __dst[v8] = 0;
  v15 = *(v5 + 112);
  if (!*v15)
  {
    *(v5 + 18) = 0;
    *v4 = 0;
    **(v5 + 3520) = 0;
    *(v5 + 102) = 0;
    *(*(v5 + 3496) + 1) = 0;
    **(v5 + 3496) = 0;
  }

  *(v5 + 42) = 100;
  if (v133 == 1)
  {
    v16 = a2 + 1547;
    if (*(a2 + 1547) == 110 && *(a2 + 1548) == 101 && (v17 = *(a2 + 1612), v17 >= 3))
    {
      *(a2 + 1612) = v17 - 2;
      v18 = strlen((a2 + 1549));
      memmove((a2 + 1547), (a2 + 1549), v18 + 1);
      *(v5 + 3512) = 1;
    }

    else
    {
      *(v5 + 3512) = 0;
      *(a2 + 1614) = 0;
    }

    v19 = *(a2 + 1612);
    v20 = v19 - 3;
    if (*(v16 + v19 - 3) == 45 && (v21 = v19 + v16, *(v21 - 2) == 108) && *(v21 - 1) == 105)
    {
      *(a2 + 1612) = v20;
      *(a2 + 1624) = 27693;
      *(a2 + 1626) = 105;
      *(v16 + v20) = 0;
    }

    else
    {
      *(a2 + 1624) = 0;
    }
  }

  if (!*(v6 + 88))
  {
    if (!*v15)
    {
      v22 = ICverify((a2 + 1547), *(a2 + 1612), a2);
      goto LABEL_79;
    }

    if (v133 == 8 || v133 == 3) && (*(a2 + 1331))
    {
      return 11;
    }

    v23 = *(v4 + 2);
    v24 = *(v4 + 4);
    *(v4 + 2) = 0;
    *(v4 + 4) = *(a2 + 1612) - 1;
    v25 = a2 + 1547;
    v22 = ICclt((a2 + 1547), a2);
    if (v22 == 3)
    {
      *v4 |= 2u;
    }

    __s = v3;
    if (*(v4 + 2) <= *(v4 + 4))
    {
      v26 = 0;
      v27 = *(v4 + 2);
      do
      {
        v28 = v27;
        *(v25 + v26++) = *(v25 + v27++);
      }

      while (v28 < *(v4 + 4));
      v130 = v27;
    }

    else
    {
      v130 = *(v4 + 2);
      LODWORD(v26) = 0;
    }

    *(v25 + v26) = 0;
    *(a2 + 1612) = v26;
    v29 = (v15 + 34);
    if (*(v15 + 34))
    {
      if ((*(a2 + 1328) & 0x10) != 0)
      {
        if (!v23)
        {
LABEL_44:
          if (*(a2 + 1414) && (*(a2 + 1328) & 0x10) != 0)
          {
            *(v4 + 2) = v23 - 1;
          }

          v31 = (v15 + 44);
          if (!*(v15 + 44) || (v32 = *(a2 + 1328), (v32 & 0x10) != 0))
          {
            if (*(a2 + 1415))
            {
              goto LABEL_55;
            }
          }

          else
          {
            if ((v32 & 0x80000) != 0)
            {
              v33 = (v15 + 18);
            }

            else
            {
              v33 = (v15 + 44);
            }

            v24 = v24 - (*(a2 + 1415) != 0) - strlen(v33);
          }

          *(v4 + 4) = v24;
LABEL_55:
          v34 = *(a2 + 1328);
          if ((v34 & 0x10) != 0)
          {
            *(v5 + 102) = 1;
          }

          if ((v34 & 0x2000) != 0)
          {
            *(a2 + 1612) = v26 + 1;
          }

          if (v22 == 10 && *(a2 + 1308))
          {
            if (!*v29)
            {
LABEL_66:
              v35 = *(v4 + 4);
              if (*v31)
              {
                v36 = v15;
                v37 = v35 + 1;
                v38 = strlen(__s);
                v39 = v37;
                v15 = v36;
                *(v36 + 17) = SLcap(__dst, v39, v38, (v36 + 80), v132);
                v35 = *(v4 + 4);
              }

              v40 = SLcap(__dst, *(v4 + 2), v35, (v15 + 80), v132);
              *(v15 + 76) = v40;
              if (v40 == 2)
              {
                *(v15 + 80) = -1;
                if (*v29 && *(v15 + 16) == 1 && strlen(v29) == 2)
                {
                  *(v15 + 16) = 2;
                }

                v3 = __s;
                if (*v31 && *(v15 + 17) == 1 && strlen(v31) == 2)
                {
                  *(v15 + 17) = 2;
                }
              }

              else
              {
                v3 = __s;
              }

              v9 = v130;
              goto LABEL_79;
            }

            if (__s[*(v4 + 2)] == *(a2 + 1338))
            {
              *(a2 + 1328) = v34 | 8;
            }
          }

          if (*v29)
          {
            *(v15 + 16) = SLcap(__dst, 0, (*(v4 + 2) - 1), (v15 + 80), v132);
          }

          goto LABEL_66;
        }

        v30 = *(v4 + 2) + v23;
      }

      else
      {
        v30 = v23 + strlen((v15 + 34));
      }
    }

    else
    {
      v30 = v23;
    }

    *(v4 + 2) = v30;
    goto LABEL_44;
  }

  *(*(v4 + 280) + 1742) = 0;
  v22 = ICcmpver(a2);
  if ((*v4 & 8) != 0 && (*(a2 + 1328) & 0x20) != 0)
  {
    return 11;
  }

LABEL_79:
  if (*(v5 + 3472))
  {
    *(a2 + 1322) |= 8u;
  }

  if (v133 == 5)
  {
    if (*(a2 + 1331))
    {
      return 11;
    }
  }

  else if (v133 == 1 && *(v5 + 3512))
  {
    v42 = *(a2 + 1612);
    if ((v42 & 0x8000000000000000) == 0)
    {
      v43 = v42 + 1;
      v44 = (v42 + a2 + 1549);
      do
      {
        *v44 = *(v44 - 2);
        --v44;
        --v43;
      }

      while (v43);
      LOWORD(v42) = *(a2 + 1612);
    }

    *(a2 + 1547) = 25966;
    *(a2 + 1612) = v42 + 2;
    *(v5 + 3512) = 0;
    if (v22 != 11)
    {
      if (v22 != 10)
      {
        goto LABEL_103;
      }

      if (**(v5 + 3496))
      {
        v22 = 10;
        goto LABEL_103;
      }
    }

    v22 = ICverify((a2 + 1547), (v42 + 2), a2);
  }

  if (v22 == 11)
  {
    v131 = v9;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v41 = 11;
    v51 = 1;
    goto LABEL_97;
  }

LABEL_103:
  v59 = ICfndchk(a2);
  v41 = v59;
  v60 = v59 != 11;
  v61 = *(a2 + 1328);
  if ((v61 & 0x401) != 0 && *(a2 + 1412) && !*(a2 + 1624) && (*(a2 + 1322) & 1) == 0)
  {
    __sb = v59 != 11;
    v131 = v9;
    v51 = 0;
    v50 = *(v5 + 18);
    v47 = 1;
    v62 = -1026;
    v125 = *(a2 + 1328);
LABEL_129:
    strncpy(v136, (a2 + 1690), 0x40uLL);
    v137 = 0;
    SFlstini((v5 + 40), (v5 + 44), *(v5 + 48), *(v5 + 64));
    v48 = 0;
    *(a2 + 1328) &= v62;
    *v4 &= ~4u;
    v45 = v51;
    v46 = __sb;
    v49 = v125;
    goto LABEL_97;
  }

  if (v133 != 6 || (v61 & 0x10) == 0 || !*(a2 + 1412))
  {
    if ((v61 & 0x400) == 0 || !*(a2 + 1416) || v133 && ((1 << (v133 - 1)) & 0xC420) == 0)
    {
      if (v22 == 2 || v59 == 2)
      {
        goto LABEL_123;
      }

      if (v59 == 10)
      {
        *(a2 + 4) = v22;
        return v22;
      }

      goto LABEL_124;
    }

    if (*(a2 + 1322))
    {
      if (v59 >= v22)
      {
        v41 = v22;
      }

      else
      {
        v41 = v59;
      }

      goto LABEL_124;
    }

    __sb = v59 != 11;
    v131 = v9;
    v47 = 0;
    LODWORD(v125) = 0;
    v50 = 0;
    v51 = 1;
    v62 = -1025;
    goto LABEL_129;
  }

  v63 = (a2 + 1547);
  strncpy(v136, (a2 + 1547), 0x40uLL);
  v137 = 0;
  v131 = v9;
  if (!*(v5 + 88))
  {
    v49 = 0;
    v47 = 0;
    v124 = 0;
    v48 = 1;
    v51 = 1;
    v46 = v60;
    v50 = 0;
    goto LABEL_131;
  }

  v46 = v60;
  do
  {
    v64 = ((*(v132 + 4 * *v63) >> 25) & 0x20) + *v63;
    *v63 += (*(v132 + 4 * *v63) >> 25) & 0x20;
    ++v63;
  }

  while (v64);
  v45 = 0;
  v47 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 1;
  v48 = 1;
LABEL_97:
  v124 = v45;
  if (v41 == 11 && v133 == 16)
  {
    v122 = v48;
    __sa = v51;
    v52 = v15;
    v53 = v47;
    v54 = v49;
    v55 = v50;
    v56 = v46;
    v136[0] = 0;
    if (SLord(v3, v136, *(v4 + 2), *(v4 + 4), v132))
    {
      *(v5 + 3492) |= 1u;
      if (!v136[0])
      {
        v41 = 10;
        goto LABEL_124;
      }

      v57 = strlen(v136);
      SFadd(v136, v57, (v5 + 40), (v5 + 44), *(v5 + 42), *(v5 + 56), *(v5 + 48), *(v5 + 64));
      v58 = *(a2 + 1328) | 0x4000;
      goto LABEL_102;
    }

    v41 = 11;
    v46 = v56;
    v50 = v55;
    v49 = v54;
    v47 = v53;
    v15 = v52;
    v51 = __sa;
    v48 = v122;
  }

LABEL_131:
  if (!*(a2 + 1412) || *(a2 + 1624))
  {
    v121 = 0;
    goto LABEL_134;
  }

  v70 = *(a2 + 1328);
  __sc = v46;
  if ((v70 & 0x200) != 0)
  {
    *(a2 + 1328) = v70 & 0xFFFFFFFFFFFFFDFFLL;
    v121 = 1;
  }

  else
  {
    v121 = 0;
  }

  v123 = v48;
  v108 = *(a2 + 1612);
  if (v108 <= 63)
  {
    v109 = a2 + 1547;
    *(v109 + v108) = 46;
    v110 = *(a2 + 1612) + 1;
    *(a2 + 1612) = v110;
    *(v109 + v110) = 0;
  }

  ++*(v4 + 4);
  ICadjpost((a2 + 1482));
  v120 = (a2 + 1547);
  v111 = ICverify((a2 + 1547), *(a2 + 1612), a2);
  if (v111 != 11)
  {
    v113 = v111;
    if (!*(a2 + 8) || ((1 << (*(a2 + 8) - 1)) & 0x20008) != 0 || (*v4 & 0x10) != 0)
    {
      *(v5 + 18) |= 0x800u;
      *(v5 + 3480) = 0;
    }

    v114 = ICfndchk(a2);
    v41 = v114;
    v115 = *(a2 + 1328);
    if ((v115 & 0x400) != 0 && *(a2 + 1412))
    {
      if (__sc && v114 == 10)
      {
        *(a2 + 1328) = v115 & 0xFFFFFFFFFFFFFBFFLL;
        *v4 &= ~4u;
        SFlstini((v5 + 40), (v5 + 44), *(v5 + 48), *(v5 + 64));
        SLrecap(v120, *(a2 + 1612), *(*(v5 + 72) + v131), v5 + 92, *(v5 + 88), v132);
      }

      goto LABEL_124;
    }

    if (v114 == 10)
    {
      if (*(a2 + 1482))
      {
        ICadjpost((a2 + 1482));
      }

      v41 = v113;
      *(a2 + 4) = v113;
      return v41;
    }

LABEL_124:
    *(a2 + 4) = v41;
    return v41;
  }

  if ((v70 & 0x200) != 0)
  {
    *(a2 + 1328) |= 0x200uLL;
    *v4 |= 4u;
  }

  ICreadjpo((a2 + 1482));
  v112 = *(a2 + 1612) - 1;
  *(a2 + 1612) = v112;
  --*(v4 + 4);
  v120[v112] = 0;
  if ((v123 | v47) == 1)
  {
    if (v51)
    {
      strncpy(v120, v136, 0x40uLL);
      *(a2 + 1611) = 0;
      v41 = 10;
    }

    else
    {
      v119 = strlen(v136);
      SFadd(v136, v119, (v5 + 40), (v5 + 44), *(v5 + 42), *(v5 + 56), *(v5 + 48), *(v5 + 64));
      *(a2 + 1328) = v49;
      *(v5 + 18) = v50;
      if ((v49 & 0x400) != 0)
      {
        *v4 |= 4u;
        v41 = 2;
      }

      else
      {
        v41 = 3;
      }
    }
  }

  else
  {
    v41 = 11;
  }

LABEL_134:
  if (v133 && ((1 << (v133 - 1)) & 0xC420) == 0 || !*(a2 + 1416))
  {
    goto LABEL_151;
  }

  strcpy(__srca, "'");
  strlen(__srca);
  __strncat_chk();
  v65 = strncpy((a2 + 1547), __srca, 0x40uLL);
  *(a2 + 1611) = 0;
  v66 = *(a2 + 1612) + 1;
  *(a2 + 1612) = v66;
  *(a2 + 1547 + v66) = 0;
  v67 = ICverify(v65, *(a2 + 1612), a2);
  v68 = v67;
  if (v67 != 10)
  {
    v71 = v124 ^ 1;
    if (v67 != 11)
    {
      v71 = 1;
    }

    if ((v71 & 1) == 0)
    {
      v72 = strlen((a2 + 1548));
      memmove((a2 + 1547), (a2 + 1548), v72 + 1);
      --*(a2 + 1612);
      v73 = strlen(v136);
      SFadd(v136, v73, (v5 + 40), (v5 + 44), *(v5 + 42), *(v5 + 56), *(v5 + 48), *(v5 + 64));
      v74 = *(a2 + 1328);
      *(a2 + 1328) = v74 | 0x400;
      *v4 |= 4u;
      if (v121)
      {
        *(a2 + 1328) = v74 | 0x600;
      }

      v41 = 2;
      goto LABEL_151;
    }

    goto LABEL_148;
  }

  if (!*(a2 + 1408))
  {
LABEL_148:
    v75 = strlen((a2 + 1548));
    memmove((a2 + 1547), (a2 + 1548), v75 + 1);
    --*(a2 + 1612);
    if (v41 == 11)
    {
      v41 = v68;
    }

    else
    {
      v41 = v41;
    }

    goto LABEL_151;
  }

  *(a2 + 1328) &= ~0x400uLL;
  *v4 &= ~4u;
  SFlstini((v5 + 40), (v5 + 44), *(v5 + 48), *(v5 + 64));
  *(a2 + 1416) = 0;
  v69 = *(v4 + 2) - 1;
  *(v4 + 2) = v69;
  *(v5 + 88) = SLcap(v3, v69, *(v4 + 4), (v5 + 92), v132);
  v41 = ICfndchk(a2);
  *(strlen((a2 + 1417)) + a2 + 1417 - 1) = 0;
LABEL_151:
  if ((v133 - 15) > 1 || !*(a2 + 1415))
  {
LABEL_167:
    if (v41 != 11)
    {
      return v41;
    }

    if (*(a2 + 1412) && !*(a2 + 1624))
    {
      v88 = *(a2 + 1612);
      if (v88 <= 63)
      {
        v89 = a2 + 1547;
        *(v89 + v88) = 46;
        v90 = *(a2 + 1612) + 1;
        *(a2 + 1612) = v90;
        *(v89 + v90) = 0;
      }

      ++*(v4 + 4);
      ICadjpost((a2 + 1482));
    }

    v91 = v15;
    v92 = a2 + 1547;
    v93 = ICacrnym(a2 + 1547, *(a2 + 1612), (v5 + 92), a2);
    if (v93 == 11)
    {
      if (*(a2 + 1412) && !*(a2 + 1624))
      {
        ICreadjpo((a2 + 1482));
        v94 = *(a2 + 1612) - 1;
        *(a2 + 1612) = v94;
        --*(v4 + 4);
        *(v92 + v94) = 0;
      }

      if (v133 != 15 || (v93 = ICgreek(a2, 0), v93 == 11))
      {
        if (!*(a2 + 1672) && !*(a2 + 1664) || v133 == 12 && *(v91 + 44) || (v93 = ichhchk(__dst, a2), v93 == 11))
        {
          if ((*(a2 + 1328) & 3) == 0)
          {
            if (ICpar(v140, v139, a2) || strlen((a2 + 1547)) > 0x40 || !SLstrcmp(v140, (a2 + 1547)))
            {
              *(a2 + 4) = 11;
            }

            else
            {
              __strcpy_chk();
              __strcpy_chk();
              v95 = strlen((a2 + 1547));
              *(a2 + 1612) = v95;
              v96 = ICverify((a2 + 1547), v95, a2);
              if (v96 == 10)
              {
                if (strlen(v138) >= 1)
                {
                  v97 = 0;
                  v98 = 0;
                  v99 = 0;
                  do
                  {
                    if (v138[v98] != v140[v99])
                    {
                      v100 = *(v5 + 80);
                      if (v98 <= 0x1F)
                      {
                        v103 = *v100;
                        HIDWORD(v104) = *v100;
                        LODWORD(v104) = v100[1];
                        v100[1] = v104 >> 1;
                        v102 = 32;
                        v101 = v98;
                      }

                      else
                      {
                        v101 = v98 - 32;
                        v102 = 64;
                        v103 = v100[1];
                        ++v100;
                      }

                      --v99;
                      v105 = v103 & (0xFFFFFFFF >> v101);
                      v106 = (-1 << (v97 + v102)) & v103;
                      if (!v101)
                      {
                        v106 = 0;
                      }

                      *v100 = v106 | (v105 >> 1);
                      if (*(a2 + 1308))
                      {
                        v107 = *(a2 + 8);
                        if ((v107 | 0x10) != 0x10 && ((1 << (v107 - 1)) & 0x994) == 0)
                        {
                          ICaddbit((v5 + 3480), v98, 0);
                        }
                      }
                    }

                    ++v99;
                    ++v98;
                    --v97;
                  }

                  while (v98 < strlen(v138));
                }

                __strcpy_chk();
                *(a2 + 1612) = strlen((a2 + 1547));
                v41 = ICfndchk(a2);
                if (SLstrcmp(v139, v138))
                {
                  SFadd((a2 + 1547), *(a2 + 1612), (v5 + 40), (v5 + 44), *(v5 + 42), *(v5 + 56), *(v5 + 48), *(v5 + 64));
                  v58 = *(a2 + 1328) | 0x20000000;
LABEL_102:
                  *(a2 + 1328) = v58;
                  *v4 |= 4u;
LABEL_123:
                  v41 = 2;
                  goto LABEL_124;
                }

                *(a2 + 4) = 10;
              }

              else
              {
                v41 = v96;
                *(a2 + 4) = 11;
                __strcpy_chk();
                *(a2 + 1612) = strlen((a2 + 1547));
              }

              if (v41 != 11)
              {
                return v41;
              }
            }
          }

          v116 = *(a2 + 1612);
          if (v116 < 1)
          {
            LODWORD(v117) = 0;
          }

          else
          {
            v117 = 0;
            while ((*(v132 + 4 * *(v92 + v117)) & 0x80) != 0)
            {
              if (v116 == ++v117)
              {
                goto LABEL_238;
              }
            }
          }

          if (v117 != v116)
          {
            return 11;
          }

LABEL_238:
          *(v5 + 102) = 1;
          **(v5 + 72) = 0;
          **(v5 + 80) = 0;
          return ICfndchk(a2);
        }
      }
    }

    return v93;
  }

  v76 = *(a2 + 1612);
  if (v76 <= 63)
  {
    v77 = a2 + 1547;
    *(v77 + v76) = 39;
    v78 = *(a2 + 1612) + 1;
    *(a2 + 1612) = v78;
    *(v77 + v78) = 0;
    LOWORD(v76) = *(a2 + 1612);
  }

  v79 = a2 + 1547;
  v80 = ICverify((a2 + 1547), v76, a2);
  if (v80 == 10)
  {
    if (*(a2 + 1408))
    {
      *(a2 + 1328) &= ~0x400uLL;
      *v4 &= ~4u;
      SFlstini((v5 + 40), (v5 + 44), *(v5 + 48), *(v5 + 64));
      *(a2 + 1415) = 0;
      v81 = *(v4 + 4) + 1;
      *(v4 + 4) = v81;
      *(v5 + 88) = SLcap(v3, *(v4 + 2), v81, (v5 + 92), v132);
      v41 = ICfndchk(a2);
      v82 = strlen((a2 + 1483));
      memmove((a2 + 1482), (a2 + 1483), v82 + 1);
      goto LABEL_167;
    }

    goto LABEL_164;
  }

  v83 = v124 ^ 1;
  if (v80 != 11)
  {
    v83 = 1;
  }

  if (v83)
  {
LABEL_164:
    v87 = *(a2 + 1612) - 1;
    *(a2 + 1612) = v87;
    *(v79 + v87) = 0;
    if (v41 == 11)
    {
      v41 = v80;
    }

    else
    {
      v41 = v41;
    }

    goto LABEL_167;
  }

  v84 = *(a2 + 1612) - 1;
  *(a2 + 1612) = v84;
  *(v79 + v84) = 0;
  v85 = strlen(v136);
  SFadd(v136, v85, (v5 + 40), (v5 + 44), *(v5 + 42), *(v5 + 56), *(v5 + 48), *(v5 + 64));
  v86 = *(a2 + 1328);
  *(a2 + 1328) = v86 | 0x400;
  *v4 |= 4u;
  if (v121)
  {
    *(a2 + 1328) = v86 | 0x600;
  }

  return 2;
}

uint64_t ICadjpost(char *a1)
{
  v2 = strlen(a1);
  if (((v2 - 1) & 0x8000) == 0)
  {
    v3 = (v2 - 1);
    strncpy(a1, a1 + 1, (v2 - 1));
    a1[v3] = 0;
  }

  return 0;
}

uint64_t ICreadjpo(char *a1)
{
  v2 = strlen(a1);
  if (v2)
  {
    v3 = v2 + 0xFFFFFFFFLL;
    v4 = &a1[v2];
    v5 = v2 - 1;
    do
    {
      *v4-- = a1[v3--];
    }

    while (v5--);
  }

  *a1 = 46;
  a1[v2 + 1] = 0;
  return 0;
}

uint64_t ICacrnym(uint64_t a1, __int16 a2, int *a3, uint64_t a4)
{
  v63 = *MEMORY[0x1E69E9840];
  v4 = (a2 - 1);
  if (v4 > 32)
  {
    return 11;
  }

  v8 = *(a4 + 3184);
  v9 = *(v8 + 264);
  v57 = v8;
  v10 = *(v8 + 248);
  v11 = *(v9 + 112);
  v12 = v4 > 0 && *(a1 + (a2 - 1)) == 115;
  v13 = v12;
  v60 = v13;
  if (v12)
  {
    v61 = (a2 - 2) != 0 && *(a1 + (a2 - 2)) == 39;
    if (v61)
    {
      LOWORD(v4) = a2 - 3;
    }

    else
    {
      LOWORD(v4) = a2 - 2;
    }
  }

  else
  {
    v61 = 0;
  }

  v56 = *(v10 + 56);
  v16 = *(v11 + 34);
  v14 = (v11 + 34);
  v15 = v16;
  v17 = v16 == 0;
  v18 = *a3;
  if (v16)
  {
    v19 = strlen(v14);
    v20 = a3[2];
    v21 = v18 << v19;
    *a3 = v18 << v19;
    v59 = v20;
    a3[2] = v20 << v19;
  }

  else
  {
    v59 = 0;
    v21 = *a3;
    v18 = 0;
  }

  v22 = v4;
  do
  {
    v23 = v22 - 2;
    if (v22 < 1)
    {
      break;
    }

    v24 = *(a1 + v22);
    v22 -= 2;
  }

  while (v24 == 46);
  v25 = (v21 ^ 0xAAAAAAAA) >> (32 - v4);
  v27 = v4 > 0 && v25 != 0;
  if (v23 != -3 || v27)
  {
    if (v15)
    {
      *a3 = v18;
      a3[2] = v59;
    }

    return 11;
  }

  if ((v4 & 0x8000) != 0)
  {
    v30 = 0;
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    LODWORD(v31) = (v4 + 1);
    if (v31 <= 1)
    {
      v31 = 1;
    }

    else
    {
      v31 = v31;
    }

    do
    {
      v32 = *(a1 + v28);
      if (v32 == 46)
      {
        a3[v28 >> 5] &= ~(1 << ~v29);
        v33 = a3[v30 >> 5];
        v34 = 1 << ~v30;
        a3[v30 >> 5] = v33 & ~v34;
        v35 = ++v28 >> 5;
        v36 = a3[v35];
        v37 = 1 << ~(v29 + 1);
        if ((v36 & v37) != 0)
        {
          a3[v30 >> 5] = v33 | v34;
          v36 = a3[v35];
        }

        a3[v35] = v36 & ~v37;
      }

      else
      {
        v38 = v30++;
        __src[v38] = v32;
        ++v28;
      }

      v29 = v28;
    }

    while (v28 != v31);
  }

  v39 = v60 & *&v61 & (*(a4 + 20) >> 7) ^ 1;
  v58 = v18;
  v40 = v30;
  do
  {
    while (1)
    {
      if (v61 && v39 != 0)
      {
        v41 = v40 + 1;
        __src[v40] = 39;
        v42 = 2;
      }

      else
      {
        if (!v60)
        {
          goto LABEL_47;
        }

        v42 = 1;
        v41 = v40;
      }

      v40 += v42;
      __src[v41] = 115;
LABEL_47:
      v43 = v40;
      __src[v40] = 0;
      v44 = v40;
      v45 = ICverify(__src, v40--, a4);
      if (v61 && v39 != 0)
      {
        v46 = v40;
      }

      else
      {
        v46 = v43;
      }

      if (v45 == 10 && (!*(a4 + 8) || ((1 << (*(a4 + 8) - 1)) & 0x20008) != 0 || (*v57 & 0x10) != 0))
      {
        *(v9 + 3480) = 0;
      }

      if (!v17)
      {
        *a3 = v58;
        a3[2] = v59;
      }

      v47 = *(v9 + 102);
      if (v47 < 1)
      {
        v49 = 0;
        v50 = 0;
      }

      else
      {
        v48 = *(v9 + 72);
        if (*v48 == 2)
        {
          v49 = 1;
          v50 = 1;
        }

        else
        {
          v51 = 1;
          while (1)
          {
            v52 = v51;
            if (v47 == v51)
            {
              break;
            }

            v53 = v48[v51++];
            if (v53 == 2)
            {
              v50 = 1;
              goto LABEL_66;
            }
          }

          v50 = 0;
LABEL_66:
          v49 = v52 < v47;
        }
      }

      if (v45 != 10)
      {
        break;
      }

      v12 = ~**(v9 + 80) >> -(v46 + ((v60 << 15) >> 15)) == 0;
      v54 = !v49;
      if (v12)
      {
        v54 = 0;
      }

      if (!v54)
      {
        strncpy((a4 + 3090), __src, 0x40uLL);
        *(a4 + 3154) = 0;
        SLrecap(__src, v44, *(*(v9 + 72) + v50), *(v9 + 80) + 8 * v50, *(v9 + 88), v56);
        SFadd(__src, v44, (v9 + 40), (v9 + 44), *(v9 + 42), *(v9 + 56), *(v9 + 48), *(v9 + 64));
        strncpy(__src, (a4 + 3090), 0x40uLL);
        __src[64] = 0;
        *(a4 + 3090) = 0;
        *v57 |= 4u;
        *(a4 + 1322) |= 0x80u;
        *(a4 + 1328) &= ~0x400uLL;
        v45 = 2;
        break;
      }

      v17 = 1;
      v12 = v39 == 0;
      LOWORD(v39) = 1;
      if (!v12)
      {
        return 11;
      }
    }

    v17 = 1;
    v12 = v39 == 0;
    LOWORD(v39) = 1;
  }

  while (v12);
  if (v45 == 2)
  {
    ICfndchk(a4);
    return 2;
  }

  return 11;
}

uint64_t ichhchk(uint64_t a1, size_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = *(*(a2 + 3184) + 264);
  v5 = *(v4 + 112);
  v6 = *(a2 + 1612);
  if (v6 < 1)
  {
    v9 = 0;
    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(a2 + 1547 + v7);
      if ((v10 | 2) == 0x2F)
      {
        v9 = v7;
      }

      else
      {
        v11 = v8++;
        __s[v11] = v10;
      }

      ++v7;
    }

    while (v6 != v7);
  }

  __s[v8] = 0;
  v12 = v8;
  v13 = ICverify(__s, v8, a2);
  if (*(v5 + 44) || *(v5 + 34))
  {
    goto LABEL_11;
  }

  if (v13 == 10)
  {
    SFadd(__s, v12, (v4 + 40), (v4 + 44), *(v4 + 42), *(v4 + 56), *(v4 + 48), *(v4 + 64));
  }

  else
  {
    if (v13 != 2)
    {
LABEL_11:
      v14 = *(a2 + 3184);
      v15 = *(v14 + 2);
      if (*(v14 + 4) >= v15)
      {
        v17 = 0;
        do
        {
          __s[v17] = *(a1 + v15);
          LOWORD(v15) = v15 + 1;
          ++v17;
        }

        while (*(v14 + 4) >= v15);
        v16 = v17;
      }

      else
      {
        v16 = 0;
      }

      __s[v16] = 0;
      result = ICdblver(__s, a2);
      if (result != 11)
      {
        return ICfndchk(a2);
      }

      return result;
    }

    if ((*(a2 + 1322) & 0x200) != 0)
    {
      *(a2 + 1322) &= ~0x200u;
      *(a2 + 1328) &= ~0x20uLL;
      goto LABEL_11;
    }
  }

  **(a2 + 3184) |= 4u;
  *(a2 + 1328) |= 0x800000uLL;
  if (*(a2 + 8) == 3)
  {
    puntvolat_to_period_list(a2);
  }

  if (*(v4 + 88) == 3)
  {
    v19 = *(v4 + 72);
    if (*v19 == 3 || *(v4 + 102) >= 2 && v19[1] == 3)
    {
      v20 = *(a2 + 1612);
      if (v20 > v9)
      {
        v21 = v4 + 92;
        v22 = v9;
        do
        {
          v23 = 1 << ~v22;
          if ((*(v21 + 4 * (v22 >> 5)) & v23) != 0)
          {
            *(v21 + 4 * ((v22 - 1) >> 5)) |= 1 << -v22;
            *(v21 + 4 * (v22 >> 5)) &= ~v23;
          }

          ++v22;
        }

        while (v20 != v22);
      }
    }
  }

  ICfndchk(a2);
  return 2;
}

unsigned int *ICaddbit(unsigned int *result, unsigned int a2, int a3)
{
  if (a2 <= 0x1F)
  {
    v6 = *result;
    HIDWORD(v7) = *result;
    LODWORD(v7) = result[1];
    result[1] = v7 >> 1;
    v4 = 31;
    v5 = 32;
    v3 = a2;
  }

  else
  {
    v3 = a2 - 32;
    v4 = 63;
    v5 = 64;
    v6 = result[1];
    ++result;
  }

  v8 = v6 & (0xFFFFFFFF >> v3);
  v9 = v6 & (-1 << (v5 - a2));
  if (v3)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  *result = v10 | (a3 << (v4 - a2)) | (v8 >> 1);
  return result;
}

uint64_t ICremacc(char *__s, int a2, uint64_t a3)
{
  v3 = __s;
  v4 = *(a3 + 3184);
  v5 = *(*(v4 + 248) + 56);
  if (a2 == 2)
  {
    v10 = *(*(v4 + 280) + 1502);
    v11 = __s[v10];
    if ((*(v5 + 4 * v11) & 0x40000) == 0)
    {
      return 0;
    }

    result = 0;
    if ((*(v5 + 4 * v11) & 0x20000000) != 0)
    {
      LOBYTE(v11) = v11 - 32;
    }

    v3[v10] = v11;
    v13 = chkaccent[v11 - 192];
    v3[v10] = v13;
    v3[v10] = ((*(v5 + 4 * v13) >> 25) & 0x20) + v13;
  }

  else
  {
    if (a2 == 3)
    {
      for (i = strlen(__s); i; --i)
      {
        v8 = *v3;
        if ((*(v5 + 4 * v8) & 0x4020000) != 0)
        {
          if ((*(v5 + 4 * v8) & 0x20000000) != 0)
          {
            LOBYTE(v8) = v8 - 32;
          }

          *v3 = v8;
          v9 = chkaccent[v8 - 192];
          *v3 = v9;
          *v3 = ((*(v5 + 4 * v9) >> 25) & 0x20) + v9;
          *(*(*(a3 + 3184) + 264) + 3492) |= 0x10u;
        }

        ++v3;
      }

      return 0;
    }

    return 8;
  }

  return result;
}

uint64_t ICspl(char *__s, size_t a2)
{
  v107 = *MEMORY[0x1E69E9840];
  v105 = 0;
  *(a2 + 1328) = 0;
  *(a2 + 1404) = 0;
  *(a2 + 1336) = 0;
  v3 = *a2;
  if (*a2 == 1)
  {
    *(a2 + 1320) = 0;
    v4 = ICint(a2);
    if (v4 == 8)
    {
      ICtrm(a2);
    }

    goto LABEL_7;
  }

  if ((*(a2 + 1320) & 0x80) == 0)
  {
    *(a2 + 1328) = 2048;
LABEL_6:
    v4 = 8;
    goto LABEL_7;
  }

  v7 = *(a2 + 8);
  if (v3 <= 0x16 && ((1 << v3) & 0x600004) != 0)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_14;
  }

  v15 = *(a2 + 24);
  v11 = *(a2 + 3184);
  v9 = *(v11 + 264);
  v10 = *(v11 + 248);
  *v9 = v3;
  *(v9 + 48) = a2 + 1690;
  *(v9 + 64) = a2 + 2890;
  v16 = *(a2 + 20);
  v17 = (v9 + 3488);
  if (v16 == 16)
  {
    *(v9 + 3488) = 255;
    v16 = 16;
  }

  else
  {
    *(v9 + 3488) = v16;
    if (v7 == 6 && (v16 & 0x30) == 0)
    {
      if ((*(a2 + 12) & 0x10) != 0)
      {
        v26 = 16;
      }

      else
      {
        v26 = 32;
      }

      v16 |= v26;
      *(a2 + 20) = v16;
      *v17 = v16;
    }
  }

  *(v9 + 3490) = v15;
  v12 = *(v10 + 56);
  *(v10 + 40) = *(v11 + 120);
  *(v10 + 16) = *(v11 + 128);
  v27 = *(v11 + 152);
  *(v10 + 32) = *(v11 + 144);
  *(v10 + 80) = *(v11 + 296);
  *(v10 + 96) = v27;
  v28 = *(v11 + 168);
  *(v10 + 128) = *(v11 + 160);
  *(v10 + 112) = v28;
  *(v10 + 144) = *(v11 + 176);
  *(v10 + 152) = vextq_s8(*(v11 + 184), *(v11 + 184), 8uLL);
  v29 = *(v11 + 208);
  *(v10 + 1184) = *(v11 + 200);
  *(*(v9 + 112) + 8) = v29;
  if (v15 << 16 && v15 != *(v11 + 6))
  {
    if (v7 == 5)
    {
      if ((*(a2 + 16) & v15) != 0 && (v15 & 0xC0) != 0xC0 && (v15 & 0x30) != 0x30)
      {
        goto LABEL_63;
      }
    }

    else if ((v15 & (v15 - 1)) == 0 && (*(a2 + 16) & v15) != 0)
    {
      goto LABEL_63;
    }

    *(a2 + 1336) = 32;
    goto LABEL_6;
  }

LABEL_63:
  v30 = *(a2 + 12);
  if (v30 == 128)
  {
    *(a2 + 20) = 128;
    *v17 = 128;
  }

  else
  {
    if ((v30 & v16 & 0xFFF0) == 0)
    {
      v4 = 8;
      *(a2 + 1336) = 8;
      goto LABEL_7;
    }

    if ((~v16 & 0x30) == 0 || (v16 & 0xC0) == 0xC0)
    {
      *(a2 + 1336) = 16;
    }
  }

  if (*__s)
  {
    v31 = strlen(__s);
    *(a2 + 1612) = v31;
    if (v31 >= 65)
    {
      goto LABEL_6;
    }
  }

  else
  {
    *(a2 + 1612) = strlen((a2 + 1547));
  }

LABEL_14:
  v4 = 8;
  if (v3 <= 10)
  {
    if (v3 <= 5)
    {
      if (v3 == 2)
      {
        v14 = ICtrm(a2);
        goto LABEL_100;
      }

      if (v3 != 3)
      {
        if (v3 != 5)
        {
          goto LABEL_7;
        }

        if (v7 && ((1 << (v7 - 1)) & 0x20008) == 0)
        {
          ICsplini(__s, a2, &v105);
          SLwldpro((a2 + 1547), (v9 + 3466), (v9 + 3468), 64);
          *(v9 + 42) = 100;
          v13 = strlen((a2 + 1547));
          v14 = SFwild((a2 + 1547), v13, v10, v9);
          goto LABEL_100;
        }

LABEL_130:
        v4 = 11;
        goto LABEL_7;
      }

      if (!*__s)
      {
        goto LABEL_7;
      }

      v14 = ICsplini(__s, a2, &v105);
      if (v105)
      {
LABEL_100:
        v4 = v14;
        goto LABEL_7;
      }

      v81 = ICprever(__s, a2);
      v4 = v81;
      v82 = *(a2 + 3184);
      if (*(v82 + 304) != 11 || v81 == 11)
      {
        goto LABEL_204;
      }

      v83 = *(v82 + 288);
      *(v83 + 12) = *(*(v9 + 112) + 62);
      *(v83 + 14) = *(v9 + 18) & 0xC;
      if ((*v82 & 8) != 0)
      {
        v84 = *(v11 + 280);
        *(v83 + 16) = v84[1500];
        *(v83 + 17) = v84[1504];
        *(v83 + 18) = v84[1502];
      }

      checked_strcpy(v83 + 19, (a2 + 1547));
      v85 = *(v9 + 102);
      *(v83 + 90) = *(v9 + 102);
      if (v85 < 1)
      {
LABEL_204:
        if (strlen((a2 + 1547)) <= 0x40)
        {
          ICdblchk(a2);
        }

        goto LABEL_7;
      }

      v86 = 0;
      while (1)
      {
        *(v83 + v86 + 84) = *(*(v9 + 72) + v86);
        v87 = *(v9 + 3496);
        v88 = *(v87 + v86);
        *(v83 + 2 * v86) = v88 << 8;
        v89 = *(v9 + 3520);
        v90 = (4 * *(v89 + 2 * v86)) & 0x4000 | (v88 << 8);
        *(v83 + 2 * v86) = v90;
        v91 = v90 | (*(v89 + 2 * v86) >> 13 << 15);
        *(v83 + 2 * v86) = v91;
        v92 = (*(v89 + 2 * v86) >> 4) & 0x80 | v91;
        *(v83 + 2 * v86) = v92;
        if (!*(a2 + 8) || ((1 << (*(a2 + 8) - 1)) & 0x994) != 0)
        {
          break;
        }

        if (v7 == 16)
        {
          v93 = *(v87 + v86) & 3;
          goto LABEL_196;
        }

        if (v7 != 6)
        {
          goto LABEL_198;
        }

        v94 = (*(v89 + 2 * v86) >> 4) | v92;
LABEL_197:
        *(v83 + 2 * v86) = v94;
LABEL_198:
        if (++v86 >= *(v9 + 102))
        {
          goto LABEL_204;
        }
      }

      v93 = (8 * *(*(v9 + 3504) + v86)) & 0xF0;
LABEL_196:
      v94 = v92 | v93;
      goto LABEL_197;
    }

    if (v3 == 6)
    {
      if (v7 && ((1 << (v7 - 1)) & 0x20008) == 0)
      {
        ICsplini(__s, a2, &v105);
        *(v9 + 3464) = *(a2 + 1684);
        *(v9 + 42) = 20;
        v14 = SFanagrm((a2 + 1547), *(a2 + 1612), v9, v10);
        goto LABEL_100;
      }

      goto LABEL_130;
    }

    if (v3 == 7)
    {
      if (!*(a2 + 1308))
      {
        goto LABEL_130;
      }

      ICsplini(__s, a2, &v105);
      v45 = *(v11 + 232);
      v46 = *(v45 + 8);
      if (v46)
      {
        v47 = strlen((a2 + 1547));
        if (v47 >= 0x40)
        {
          v48 = 64;
        }

        else
        {
          v48 = v47;
        }

        if (v47)
        {
          strncpy(v46, (a2 + 1547), v48);
        }

        v46[v48] = 0;
        v45 = *(v11 + 232);
      }

      v49 = *(v9 + 92);
      *(v45 + 17) = *(v9 + 88);
      *(v45 + 20) = v49;
      *(v45 + 24) = *(v9 + 96);
      *(v45 + 2) = *(v9 + 3204);
      *v45 = 0;
      if (*(a2 + 8))
      {
        v50 = 1 << (*(a2 + 8) - 1);
      }

      else
      {
        v50 = -1;
      }

      *(v45 + 36) = v50;
      *(v45 + 42) = 0;
      *(v45 + 50) = 0;
      PDword(v45, 1u, 1);
      v51 = *(v11 + 232);
      v52 = *(v51 + 50);
      if (*(v51 + 50))
      {
        *(v9 + 102) = v52;
        if (v52 < 1)
        {
          goto LABEL_217;
        }

        v53 = 0;
        while (1)
        {
          v54 = *(*(v51 + 104) + 8 * v53);
          if (*(v54 + 80) == *(v51 + 20) && *(v54 + 84) == *(v51 + 24))
          {
            break;
          }

          if (++v53 == v52)
          {
            goto LABEL_217;
          }
        }

        *(*(v9 + 72) + v53) = *(v54 + 71);
        v51 = *(v11 + 232);
        v95 = *(*(v51 + 104) + 8 * v53);
        v96 = (*(v9 + 80) + 8 * v53);
        *v96 = *(v95 + 80);
        v96[1] = *(v95 + 84);
        LODWORD(v96) = *(v95 + 88);
        *(v9 + 3480) = v96;
        *(a2 + 1640) = v96;
        LODWORD(v96) = *(v95 + 92);
        *(v9 + 3484) = v96;
        *(a2 + 1644) = v96;
        *v51 = *(v95 + 66);
        v97 = *(v9 + 102) == 1 && **(v9 + 72) == 3 && *(v9 + 88) != 3;
        if (!*(v95 + 70) && !v97)
        {
LABEL_217:
          if (*(v9 + 3480) || *(v9 + 3484))
          {
            *(a2 + 1322) |= 0x20u;
            *(a2 + 3176) = *v51;
            return 10;
          }
        }
      }

      if (!*(a2 + 8) || ((1 << (*(a2 + 8) - 1)) & 0x20008) != 0)
      {
        *a2 = 7;
        v98 = IChu(a2, (a2 + 1547));
        SLrecap((a2 + 1547), *(a2 + 1612), *(v9 + 88), v9 + 92, *(v9 + 88), v12);
        if (*(a2 + 3090))
        {
          v99 = strlen((a2 + 3090));
          SLrecap((a2 + 3090), v99, *(v9 + 88), v9 + 92, *(v9 + 88), v12);
        }

        if (v98 == 8)
        {
          v4 = 8;
        }

        else
        {
          v4 = 10;
        }

        goto LABEL_7;
      }

      SLrecap((a2 + 1547), *(a2 + 1612), *(v9 + 88), v9 + 92, *(v9 + 88), v12);
      v100 = *(v11 + 216);
      *v100 = 1;
      if (IHhyp((a2 + 1547), v100) == 8)
      {
        goto LABEL_6;
      }

      v101 = *(v11 + 216);
      *(v9 + 3480) = *(v101 + 8);
      *(v9 + 3484) = *(v101 + 12);
      if (*(v101 + 747))
      {
        if ((*(v9 + 18) & 0x40) != 0)
        {
          v102 = 2;
        }

        else
        {
          v102 = 4;
        }

        *(a2 + 1322) |= v102 | 0x40;
        checked_strcpy(a2 + 3090, (v101 + 680));
        v103 = *(v11 + 216);
        *(a2 + 3156) = *(v103 + 16);
        *(a2 + 3160) = *(v103 + 20);
        v104 = strlen((a2 + 3090));
        SLrecap((a2 + 3090), v104, *(v9 + 88), v9 + 92, *(v9 + 88), v12);
      }

      goto LABEL_91;
    }

    if (v3 != 10)
    {
      goto LABEL_7;
    }

    ICsplini(__s, a2, &v105);
    SFlstini((v9 + 40), (v9 + 44), *(v9 + 48), *(v9 + 64));
    v18 = *(v11 + 232);
    *(v18 + 2) = *(v9 + 3204);
    *v18 = 0;
    *(v18 + 48) = 100;
    *(v18 + 17) = *(v9 + 88);
    *(v18 + 20) = *(v9 + 92);
    *(v18 + 24) = *(v9 + 96);
    v19 = *(v18 + 8);
    if (v19)
    {
      v20 = strlen((a2 + 1547));
      if (v20 >= 0x40)
      {
        v21 = 64;
      }

      else
      {
        v21 = v20;
      }

      if (v20)
      {
        strncpy(v19, (a2 + 1547), v21);
      }

      v19[v21] = 0;
      v18 = *(v11 + 232);
    }

    *(v18 + 80) = *(v10 + 104);
    *(v18 + 88) = *(v10 + 128);
    *(v18 + 96) = *(v10 + 120);
    *(a2 + 1322) |= 0x20u;
    v22 = *(a2 + 8);
    v23 = *(v10 + 112);
    *(v18 + 42) = 0;
    if (v22)
    {
      v24 = 1 << (v22 - 1);
    }

    else
    {
      v24 = -1;
    }

    *(v18 + 36) = v24;
    v25 = *(v9 + 112);
    *(v18 + 64) = v25;
    *(v18 + 72) = v23;
    *(v18 + 56) = *v25;
    PDword(v18, 4u, 1);
    *(v9 + 42) = 100;
LABEL_89:
    if (!*(*(v11 + 232) + 50))
    {
      goto LABEL_130;
    }

    ICPDadd(a2, 1);
LABEL_91:
    v4 = 10;
    goto LABEL_7;
  }

  if (v3 <= 101)
  {
    if (v3 == 11)
    {
      ICsplini(__s, a2, &v105);
      *(v9 + 40) = 0;
      *(a2 + 1686) = 0;
      *(v9 + 44) = 0;
      v32 = *(v11 + 232);
      *(v32 + 2) = *(v9 + 3204);
      *v32 = 0;
      *(v32 + 48) = 100;
      *(v32 + 17) = *(v9 + 88);
      *(v32 + 20) = *(v9 + 92);
      *(v32 + 24) = *(v9 + 96);
      v33 = *(v32 + 8);
      if (v33)
      {
        v34 = strlen((a2 + 1547));
        if (v34 >= 0x40)
        {
          v35 = 64;
        }

        else
        {
          v35 = v34;
        }

        if (v34)
        {
          strncpy(v33, (a2 + 1547), v35);
        }

        v33[v35] = 0;
        v32 = *(v11 + 232);
      }

      *(v32 + 98) = *(a2 + 1684);
      *(v32 + 80) = *(v10 + 104);
      *(v32 + 88) = *(v10 + 128);
      *(v32 + 96) = *(v10 + 120);
      *(a2 + 1322) |= 0x20u;
      v36 = *(a2 + 8);
      v37 = *(v10 + 112);
      *(v32 + 42) = 0;
      if (v36)
      {
        v38 = 1 << (v36 - 1);
      }

      else
      {
        v38 = -1;
      }

      *(v32 + 36) = v38;
      v39 = *(v9 + 112);
      *(v32 + 64) = v39;
      *(v32 + 72) = v37;
      *(v32 + 56) = *v39;
      PDword(v32, 6u, 1);
      *(v9 + 42) = 20;
      goto LABEL_89;
    }

    if (v3 != 100)
    {
      if (v3 != 101)
      {
        goto LABEL_7;
      }

LABEL_154:
      *(v9 + 42) = 20;
      if (*(v10 + 55) == 3 && *(v9 + 3490) == 64)
      {
        period_to_puntvolat(a2, (v11 + 307));
      }

      if (*(v11 + 306) == 103)
      {
        v64 = *(v11 + 232);
        *(v64 + 2) = *(v9 + 3204);
        *v64 = 0;
        *(v64 + 48) = 20 - *(v9 + 40);
        *(v64 + 17) = *(v9 + 88);
        *(v64 + 20) = *(v9 + 92);
        *(v64 + 24) = *(v9 + 96);
        v65 = *(v64 + 8);
        if (v65)
        {
          v66 = strlen((v11 + 307));
          if (v66 >= 0x40)
          {
            v67 = 64;
          }

          else
          {
            v67 = v66;
          }

          if (v66)
          {
            strncpy(v65, (v11 + 307), v67);
          }

          v65[v67] = 0;
          v64 = *(v11 + 232);
        }

        v68 = *(v10 + 112);
        *(v64 + 80) = *(v10 + 104);
        *(v64 + 88) = *(v10 + 128);
        *(v64 + 96) = *(v10 + 120);
        v69 = *(v9 + 112);
        *(v64 + 64) = v69;
        *(v64 + 72) = v68;
        *(v64 + 56) = *v69;
        *(v64 + 42) = 0;
        if (*(a2 + 8))
        {
          v70 = 1 << (*(a2 + 8) - 1);
        }

        else
        {
          v70 = -1;
        }

        *(v64 + 36) = v70;
        PDword(v64, 0xAu, 5);
        v71 = *(v11 + 232);
        v72 = *(v71 + 116) != 5159;
        if (*(v71 + 50))
        {
          *(a2 + 1322) |= 0x20u;
          if (ICPDadd(a2, 1) == 8)
          {
            goto LABEL_237;
          }
        }

        goto LABEL_175;
      }

      if (!*(a2 + 8) || ((1 << (*(a2 + 8) - 1)) & 0x20008) != 0)
      {
        v73 = IChu(a2, (v11 + 307));
LABEL_174:
        v72 = v73;
LABEL_175:
        if (v72)
        {
          v74 = 20;
          goto LABEL_238;
        }

LABEL_237:
        v74 = 21;
LABEL_238:
        if (*(v9 + 40) <= 19)
        {
          v4 = v74;
        }

        else
        {
          v4 = 22;
        }

        if (*(v10 + 55) == 3)
        {
          puntvolat_to_period_list(a2);
        }

        goto LABEL_7;
      }

      v75 = *(a2 + 1682);
      v76 = *(a2 + 1680);
      v77 = strlen((v11 + 307));
      v78 = JumpOver((v11 + 307), v77);
      if (v75)
      {
        if (v76)
        {
          if (!v78)
          {
            v79 = (v11 + 307);
            v80 = 3;
LABEL_244:
            v73 = SFcorrec(v79, v80, v10, v9);
            goto LABEL_174;
          }
        }

        else if (!v78)
        {
          v79 = (v11 + 307);
          v80 = 1;
          goto LABEL_244;
        }
      }

      else if (v76)
      {
        if (!v78)
        {
          v79 = (v11 + 307);
          v80 = 2;
          goto LABEL_244;
        }
      }

      else if (!v78)
      {
        v79 = (v11 + 307);
        v80 = 0;
        goto LABEL_244;
      }

      *(v9 + 40) = 0;
      *(a2 + 4) = 11;
      goto LABEL_237;
    }

    v40 = *(v10 + 55);
    if (v40 == 3)
    {
      if (*(v9 + 3490) != 64)
      {
        goto LABEL_152;
      }

      period_to_puntvolat(a2, __s);
      v40 = *(v10 + 55);
    }

    if (v40 == 2 && *(v9 + 3490) == 64)
    {
      strncpy(__dst, __s, 0x41uLL);
      v41 = *(a2 + 1612);
      if (v41 >= 1)
      {
        v42 = __dst;
        do
        {
          v43 = *v42;
          if ((v43 & 0xFFFFFFDF) == 0x81)
          {
            *v42 = v43 | 0x44;
          }

          ++v42;
          --v41;
        }

        while (v41);
      }

      v44 = __dst;
      goto LABEL_153;
    }

LABEL_152:
    v44 = __s;
LABEL_153:
    ICsplini(v44, a2, &v105);
    *(v9 + 2156) = -1;
    goto LABEL_154;
  }

  switch(v3)
  {
    case 'f':
      ICsplini(__s, a2, &v105);
      *(v9 + 42) = 20;
      if (*(a2 + 1612) > 5 || (*(v12 + 4 * *(a2 + 1547)) & 0x8000000) != 0)
      {
        v4 = 21;
        if (v7 <= 0x10 && ((1 << v7) & 0x1932E) != 0)
        {
          ICcorspl((v11 + 307), v9, a2);
        }

        break;
      }

      goto LABEL_97;
    case 'g':
      ICsplini(__s, a2, &v105);
      v55 = *(v11 + 232);
      *(v55 + 2) = *(v9 + 3204);
      *v55 = 0;
      *(v55 + 48) = 20 - *(v9 + 40);
      *(v55 + 17) = *(v9 + 88);
      *(v55 + 20) = *(v9 + 92);
      *(v55 + 24) = *(v9 + 96);
      *(v9 + 42) = 20;
      v56 = *(v55 + 8);
      if (v56)
      {
        v57 = strlen((v11 + 307));
        if (v57 >= 0x40)
        {
          v58 = 64;
        }

        else
        {
          v58 = v57;
        }

        if (v57)
        {
          strncpy(v56, (v11 + 307), v58);
        }

        v56[v58] = 0;
        v55 = *(v11 + 232);
      }

      *(v55 + 80) = *(v10 + 104);
      *(v55 + 88) = *(v10 + 128);
      v59 = *(v10 + 112);
      *(v55 + 96) = *(v10 + 120);
      v60 = *(v9 + 112);
      *(v55 + 64) = v60;
      *(v55 + 72) = v59;
      *(v55 + 56) = *v60;
      *(v55 + 42) = 0;
      if (*(a2 + 8))
      {
        v61 = 1 << (*(a2 + 8) - 1);
      }

      else
      {
        v61 = -1;
      }

      *(v55 + 36) = v61;
      if (*(a2 + 1682))
      {
        v62 = 10;
      }

      else
      {
        v62 = 5;
      }

      PDword(v55, v62, 1);
      v63 = *(v11 + 232);
      if (*(v63 + 116) == 5159)
      {
        v4 = 21;
      }

      else
      {
        v4 = 20;
      }

      if (*(v63 + 50))
      {
        *(a2 + 1322) |= 0x20u;
        if (ICPDadd(a2, 1) == 8)
        {
          v4 = 22;
        }

        else
        {
          v4 = v4;
        }
      }

      break;
    case 'h':
      if (*(v10 + 55) == 3 && *(v9 + 3490) == 64)
      {
        period_to_puntvolat(a2, __s);
      }

      ICsplini(__s, a2, &v105);
      *(v9 + 42) = 20;
      if ((*(a2 + 1672) || *(a2 + 1664)) && !*(a2 + 1624))
      {
        ICcorucf((a2 + 1547), a2);
      }

      if (*(v10 + 55) == 3)
      {
        puntvolat_to_period_list(a2);
      }

LABEL_97:
      v4 = 21;
      break;
  }

LABEL_7:
  *(a2 + 4) = v4;
  ICfree(a2);
  return v4;
}

char *ICfree(char *result)
{
  if (result)
  {
    v1 = result;
    if ((*result - 1) >= 2)
    {
      v2 = *(result + 398);
      if (v2)
      {
        v3 = v2[33];
        if (v3)
        {
          if (!v2[32] && !v2[34])
          {
            *result = *v3;
            *(result + 410) = *(v3 + 870);
            *(result + 411) = *(v3 + 871);
            *(result + 843) = v3[20];
            *(result + 844) = v3[22];
            v4 = *(v3 + 14);
            if (v4)
            {
              if (*v4)
              {
                checked_strncpy(result + 1614, (v4 + 34), 9uLL);
                v5 = (*(*(*(v1 + 398) + 264) + 112) + 44);

                return checked_strncpy(v1 + 1624, v5, 0xCuLL);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t ICsplini(char *__s, uint64_t a2, _BYTE *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 3184);
  v6 = *(v5 + 264);
  v7 = *(v6 + 112);
  *a3 = 1;
  if (*(v5 + 304) == 11)
  {
    v8 = *(v5 + 288);
    *(v8 + 76) = 0u;
    v8[3] = 0u;
    v8[4] = 0u;
    v8[1] = 0u;
    v8[2] = 0u;
    *v8 = 0u;
    v9 = *(v5 + 288);
    *(v9 + 16) = 0;
    *(v9 + 18) = 0;
    *v9 = 0;
    *(v9 + 6) = 0;
    *(v9 + 19) = 0u;
    *(v9 + 35) = 0u;
    *(v9 + 51) = 0u;
    *(v9 + 67) = 0u;
    *(v9 + 83) = 0;
  }

  if (__s)
  {
    v10 = strlen(__s);
    if (v10 >= 0x40)
    {
      v11 = 64;
    }

    else
    {
      v11 = v10;
    }

    if (v10)
    {
      __strncpy_chk();
    }

    v34[v11] = 0;
  }

  SFlstini((v6 + 40), (v6 + 44), *(v6 + 48), *(v6 + 64));
  *(a2 + 1686) = 0;
  *(v6 + 102) = 0;
  *(*(v6 + 72) + 1) = 0;
  **(v6 + 72) = 0;
  **(v6 + 80) = 0u;
  *(v6 + 3472) = 0u;
  *(a2 + 1640) = 0;
  *(a2 + 3156) = 0;
  *v5 = 0;
  if (*(v5 + 64) && *(v6 + 3488) != *(v5 + 64) || *(v5 + 6) && *(v6 + 3490) != *(v5 + 6))
  {
    v12 = *(a2 + 3168);
    if (v12)
    {
      v13 = (v5 + 32);
      if (v12 >= 0x8000)
      {
        v14 = 0;
        v15 = 1;
        do
        {
          bzero(v13[v14], 0x8000uLL);
          v14 = v15++;
        }

        while (v14 < *(a2 + 3168) >> 15);
      }

      else
      {
        bzero(*v13, v12);
      }
    }
  }

  *(v5 + 64) = *(v6 + 3488);
  v16 = *(v5 + 280);
  *(v16 + 1742) = 0;
  *(v16 + 1526) = 0;
  if (v34[0])
  {
    *(a2 + 4) = 11;
    *(v7 + 16) = 0;
    *(v7 + 76) = 0;
    *(v7 + 80) = 0;
    *(v7 + 58) = 0;
    *(v7 + 34) = 0;
    *(v7 + 44) = 0;
    *(v7 + 92) = 0;
    *(v5 + 6) = *(v6 + 3490);
    v17 = ICpre(v34, a2);
    v18 = v17;
    if (*v6 == 3)
    {
      if (v17 != 2)
      {
        if (v17 == 9)
        {
          return 11;
        }

        if (v17 == 4)
        {
          if (strlen((a2 + 1547)) <= 0x40)
          {
            ICdblchk(a2);
          }

          if ((*(a2 + 1329) & 4) != 0)
          {
            return 2;
          }

          else
          {
            return 4;
          }
        }

        goto LABEL_64;
      }
    }

    else if (v17 != 2)
    {
LABEL_64:
      *a3 = 0;
      if (v17 == 11)
      {
        SFlstini((v6 + 40), (v6 + 44), *(v6 + 48), *(v6 + 64));
      }

      goto LABEL_33;
    }

    v18 = 2;
    if (*(v6 + 3492))
    {
      return v18;
    }
  }

  else
  {
    v18 = 8;
  }

  *a3 = 0;
LABEL_33:
  *(a2 + 3154) = 0;
  *(a2 + 3122) = 0u;
  *(a2 + 3138) = 0u;
  *(a2 + 3090) = 0u;
  *(a2 + 3106) = 0u;
  if ((*a2 - 100) <= 3 && *a2 != 101)
  {
    *(v5 + 306) = *a2;
    v19 = *(v6 + 112);
    v20 = *(a2 + 8);
    if ((v20 - 8) >= 2)
    {
      if (v20 == 12 && *(v19 + 18))
      {
        v21 = strlen((v19 + 18));
        if (v21 >= 0xC)
        {
          v22 = 12;
        }

        else
        {
          v22 = v21;
        }

        if (v21)
        {
          strncpy((v19 + 44), (v19 + 18), v22);
        }

        *(v19 + 44 + v22) = 0;
        *(v19 + 90) = *(v19 + 32);
      }
    }

    else
    {
      __strcat_chk();
      *(a2 + 1612) = strlen((a2 + 1547));
      *(v5 + 4) += strlen((v19 + 44));
      *(v19 + 44) = 0;
    }

    if (*(a2 + 1414) && *(a2 + 1413) && !*v19)
    {
      *(a2 + 1328) |= 0xC0uLL;
    }

    if (*(a2 + 4) == 11 || !*(v6 + 88))
    {
      v29 = strlen((a2 + 1547));
      if (v29 >= 0x40)
      {
        v30 = 64;
      }

      else
      {
        v30 = v29;
      }

      if (v29)
      {
        strncpy((v5 + 307), (a2 + 1547), v30);
      }

      *(v5 + 307 + v30) = 0;
    }

    else
    {
      v23 = *(*(v5 + 248) + 56);
      v24 = ((*(v23 + 4 * *(a2 + 1547)) >> 25) & 0x20) + *(a2 + 1547);
      *(v5 + 307) = ((*(v23 + 4 * *(a2 + 1547)) >> 25) & 0x20) + *(a2 + 1547);
      if (v24)
      {
        v25 = (v5 + 308);
        v26 = (a2 + 1548);
        do
        {
          v27 = *v26++;
          v28 = (*(v23 + 4 * v27) >> 25) & 0x20;
          *v25++ = ((*(v23 + 4 * v27) >> 25) & 0x20) + v27;
        }

        while (v28 + v27);
      }
    }

    if (*(a2 + 1412))
    {
      v31 = v5 + 307;
      v32 = strlen((v5 + 307));
      *(v31 + v32) = 46;
      *(v31 + (((v32 << 48) + 0x1000000000000) >> 48)) = 0;
    }
  }

  return v18;
}

uint64_t ICPDadd(uint64_t a1, int a2)
{
  v2 = *(a1 + 3184);
  v3 = v2[29];
  v4 = *(v3 + 50);
  if (v4)
  {
    v7 = 0;
    v8 = *(v2[31] + 56);
    v9 = *(v3 + 104);
    v10 = v2[33];
    do
    {
      v11 = v7;
      v12 = *(v9 + 8 * v7);
      if (!a2 || !*(v12 + 70))
      {
        v13 = strlen(v12);
        SLrecap(v12, v13, *(v12 + 71), v12 + 80, *(v10 + 88), v8);
        result = SFadd(*(v9 + 8 * v11), v13, (v10 + 40), (v10 + 44), *(v10 + 42), *(v10 + 56), *(v10 + 48), *(v10 + 64));
        if (result == 8)
        {
          return result;
        }

        v12 = *(v9 + 8 * v11);
        v4 = *(v3 + 50);
      }

      *(a1 + 3176) = *(v12 + 66);
      v7 = v11 + 1;
    }

    while (v4 > (v11 + 1));
  }

  return 0;
}

size_t period_to_puntvolat(uint64_t a1, char *__s)
{
  result = strlen(__s);
  if (result >= 2)
  {
    v5 = 1;
    do
    {
      v6 = &__s[v5];
      if ((*(v6 - 1) | 0x20) == 0x6C && (v6[1] | 0x20) == 0x6C && *v6 == 46 && *(a1 + 24) == 64)
      {
        *v6 = -73;
      }

      ++v5;
      result = strlen(__s);
    }

    while (result > v5);
  }

  return result;
}