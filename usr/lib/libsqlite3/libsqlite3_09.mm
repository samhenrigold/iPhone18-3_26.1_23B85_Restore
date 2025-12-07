uint64_t sub_1818F0C8C(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 168) || (v3 = a2, (v4 = *(a1 + 64)) != 0) && *(*v4 + 168))
  {
    sqlite3_log(27, "denying truncate of invalidated fd %d", *(a1 + 24));
    return 6922;
  }

  else
  {
    v5 = *(a1 + 72);
    if (v5 >= 1)
    {
      v3 = (a2 + v5 - 1) / v5 * v5;
    }

    v7 = *(a1 + 24);
    while (1)
    {
      v8 = off_1EE341B58(v7, v3);
      if ((v8 & 0x80000000) == 0)
      {
        break;
      }

      if (*__error() != 4)
      {
        goto LABEL_12;
      }
    }

    if (v8)
    {
LABEL_12:
      *(a1 + 32) = *__error();
      v9 = *(a1 + 56);
      v10 = *__error();
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      *__strerrbuf = 0u;
      strerror_r(v10, __strerrbuf, 0x4FuLL);
      v11 = &byte_181A2878D;
      if (v9)
      {
        v11 = v9;
      }

      sqlite3_log(1546, "os_unix.c:%d: (%d) %s(%s) - %s", 46245, v10, "ftruncate", v11, __strerrbuf);
      return 1546;
    }

    result = 0;
    if (v3 < *(a1 + 80))
    {
      *(a1 + 80) = v3;
    }
  }

  return result;
}

uint64_t sub_1818F0E10(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v51 = 0;
  if (a3 < 2 || a1[16] < a3)
  {

    return sub_18190EDA8(86042);
  }

  v4 = *(a1 + 3);
  if (!a2)
  {
    v6 = a1;
    v7 = *a1;
    v8 = a3;
    v9 = (*(&xmmword_1ED452F70 + 1))(*(*(*a1 + 336) + 72), a3, 0);
    if (v9)
    {
      v10 = v9;
      v11 = *(v7 + 336);
      v12 = v10[1];
      if (*v12)
      {
        ++*(v11 + 24);
        ++v12[7];
        LODWORD(a3) = v8;
        goto LABEL_14;
      }

      v13 = sub_181934878(v11, v8, v10);
      LODWORD(a3) = v8;
      v12 = v13;
      if (v13)
      {
LABEL_14:
        a2 = v12[2];
        a1 = v6;
        if (*(a2 + 4) != a3)
        {
          v14 = v12[1];
          *(a2 + 112) = v12;
          *(a2 + 72) = v6;
          *(a2 + 80) = v14;
          *(a2 + 4) = a3;
          *(a2 + 9) = 0;
        }

        goto LABEL_16;
      }

      a2 = 0;
    }

    else
    {
      a2 = 0;
      LODWORD(a3) = v8;
    }

    a1 = v6;
LABEL_16:
    v50 = a2;
    goto LABEL_17;
  }

  v50 = a2;
  v5 = *(a2 + 112);
  ++*(v5 + 56);
  ++*(*(v5 + 24) + 24);
LABEL_17:
  v15 = *(v4 + 112);
  v16 = *(v15 + 40);
  if ((*(v15 + 52) & 4) != 0 && v16[8] >= *(v15 + 48))
  {
    v19 = a3;
    if (!v16[32])
    {
      v49 = 0;
      goto LABEL_36;
    }

    v18 = a1;
    v20 = a2;
    v22 = sub_1819360C0(*(v4 + 112));
  }

  else
  {
    v17 = v16[12];
    if (v17)
    {
      goto LABEL_26;
    }

    v18 = a1;
    v19 = a3;
    v20 = a2;
    v21 = *(v4 + 112);
    if (v16[46] <= v16[50])
    {
      v22 = sub_1818D8DD8(v21);
    }

    else
    {
      v22 = sub_181936438(v21);
    }
  }

  v17 = v22;
  v49 = v22;
  a2 = v20;
  a1 = v18;
  if (v17)
  {
    goto LABEL_26;
  }

LABEL_36:
  v27 = *(v4 + 80);
  v28 = bswap32(*(v27 + 36));
  *(v27 + 36) = bswap32(v28 + 1);
  if ((a1[10] & 4) != 0)
  {
    if (!a2)
    {
      v38 = a1;
      v39 = sub_18193380C(a1, v19, &v50);
      a2 = v50;
      if (v39)
      {
LABEL_68:
        v17 = v39;
        if (!a2)
        {
          goto LABEL_30;
        }

LABEL_27:
        *a2 = 0;
        v23 = *(a2 + 112);
        if ((*(v23 + 52) & 0x20) != 0)
        {
          v24 = *(v23 + 40);
          --*(v24 + 152);
          *(v23 + 32) = *(v24 + 168);
          *(v24 + 168) = v23;
          (*(**(v24 + 72) + 144))(*(v24 + 72), *(v24 + 200) * (*(v23 + 48) - 1), *(v23 + 8));
        }

        else
        {
          sub_181932B68(v23);
        }

        goto LABEL_30;
      }

      a1 = v38;
    }

    v32 = *(a2 + 112);
    v33 = *(v32 + 40);
    if ((*(v32 + 52) & 4) != 0 && v33[8] >= *(v32 + 48))
    {
      v34 = a1;
      if (!v33[32])
      {
        v49 = 0;
LABEL_60:
        v44 = a2;
        bzero(*(a2 + 80), *(*(a2 + 72) + 52));
        a2 = v44;
        a1 = v34;
        goto LABEL_37;
      }

      v35 = a2;
      v37 = sub_1819360C0(*(a2 + 112));
    }

    else
    {
      v17 = v33[12];
      if (v17)
      {
        goto LABEL_27;
      }

      v34 = a1;
      v35 = a2;
      v36 = *(a2 + 112);
      if (v33[46] <= v33[50])
      {
        v37 = sub_1818D8DD8(v36);
      }

      else
      {
        v37 = sub_181936438(v36);
      }
    }

    v17 = v37;
    v49 = v37;
    a2 = v35;
    if (v37)
    {
      goto LABEL_27;
    }

    goto LABEL_60;
  }

LABEL_37:
  v29 = a2;
  if (!*(a1 + 33) || (v30 = a1, sub_1818EF720(a1, v19, 2, 0, &v49), a1 = v30, a2 = v29, (v17 = v49) == 0))
  {
    if (!v28)
    {
      goto LABEL_80;
    }

    v28 = bswap32(*(*(v4 + 80) + 32));
    if (v28 > a1[16])
    {
      v31 = sub_18190EDA8(86089);
LABEL_63:
      v17 = v31;
      a2 = v29;
      goto LABEL_26;
    }

    v40 = a1;
    v31 = sub_18193380C(a1, v28, &v51);
    if (v31)
    {
      goto LABEL_63;
    }

    v41 = v51;
    v42 = bswap32(*(*(v51 + 80) + 4));
    v43 = v40[14] >> 2;
    if (v42 > v43 - 2)
    {
      v31 = sub_18190EDA8(86100);
      goto LABEL_63;
    }

    a1 = v40;
    a2 = v29;
    if (v42 < v43 - 8)
    {
      v31 = sub_1818D8D88(*(v51 + 112));
      if (v31)
      {
        goto LABEL_63;
      }

      *(*(v41 + 80) + 4) = bswap32(v42 + 1);
      *(*(v41 + 80) + 4 * v42 + 8) = bswap32(v19);
      if (v29)
      {
        if ((v40[10] & 4) == 0)
        {
          v46 = *(v29 + 112);
          v47 = *(v46 + 40);
          if (!*(v47 + 16))
          {
            v48 = *(v46 + 52);
            if ((v48 & 2) != 0 && !*(v47 + 128))
            {
              *(v46 + 52) = v48 & 0xFFEB | 0x10;
            }
          }
        }
      }

      v39 = sub_181944248(v40, v19);
      a2 = v29;
    }

    else
    {
LABEL_80:
      if (a2 || (v39 = sub_18193380C(a1, v19, &v50), a2 = v50, !v39))
      {
        v45 = a2;
        v17 = sub_1818D8D88(*(a2 + 112));
        a2 = v45;
        if (!v17)
        {
          **(v45 + 80) = bswap32(v28);
          *(*(v45 + 80) + 4) = 0;
          *(*(v4 + 80) + 32) = bswap32(v19);
        }

        goto LABEL_27;
      }
    }

    goto LABEL_68;
  }

LABEL_26:
  if (a2)
  {
    goto LABEL_27;
  }

LABEL_30:
  if (v51)
  {
    v25 = *(v51 + 112);
    if ((*(v25 + 52) & 0x20) != 0)
    {
      v26 = *(v25 + 40);
      --*(v26 + 152);
      *(v25 + 32) = *(v26 + 168);
      *(v26 + 168) = v25;
      (*(**(v26 + 72) + 144))(*(v26 + 72), *(v26 + 200) * (*(v25 + 48) - 1), *(v25 + 8));
    }

    else
    {
      sub_181932B68(v25);
    }
  }

  return v17;
}

const char *__cdecl sqlite3_bind_parameter_name(sqlite3_stmt *a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = *(*a1 + 24);
  if (v4)
  {
    xmmword_1ED452F18(v4);
  }

  v5 = *(a1 + 22);
  if (v5)
  {
    v6 = 2;
    while (1)
    {
      v7 = (v5 + 4 * v6);
      if (*v7 == a2)
      {
        break;
      }

      v6 += v7[1];
      if (v6 >= *(v5 + 4))
      {
        goto LABEL_8;
      }
    }

    v8 = (v7 + 2);
  }

  else
  {
LABEL_8:
    v8 = 0;
  }

  v9 = *(*a1 + 24);
  if (v9)
  {
    xmmword_1ED452F28(v9);
  }

  return v8;
}

uint64_t sub_1818F1418(uint64_t a1, uint64_t a2, void *a3)
{
  result = sub_1818C6AC0(a2);
  if (result == 16)
  {
    result = 0;
    *a3 = 0;
  }

  else if (!result)
  {
    v7 = 0;
    while (1)
    {
      if (*(a1 + 424))
      {
        return 0;
      }

      v8 = *(a2 + 136);
      if (*(v8 + 8))
      {
        break;
      }

      v10 = *(v8 + 24);
      if (!*(v8 + 1))
      {
        v7 += v10;
      }

LABEL_16:
      v15 = *(a2 + 86);
      if (v15 == v10)
      {
        v16 = (*(v8 + 80) + *(v8 + 9));
        v17 = (v16[8] << 24) | (v16[9] << 16) | (v16[10] << 8);
        v18 = v16 + 11;
      }

      else
      {
        v19 = (*(v8 + 80) + ((*(*(v8 + 96) + 2 * v15 + 1) | (*(*(v8 + 96) + 2 * v15) << 8)) & *(v8 + 26)));
        v17 = (*v19 << 24) | (v19[1] << 16) | (v19[2] << 8);
        v18 = v19 + 3;
      }

      result = sub_1818C6EF4(a2, v17 | *v18);
      if (result)
      {
        return result;
      }
    }

    v7 += *(v8 + 24);
    while (1)
    {
      v11 = *(a2 + 84);
      if (!*(a2 + 84))
      {
        break;
      }

      *(a2 + 70) = 0;
      *(a2 + 1) &= 0xF9u;
      *(a2 + 86) = *(a2 + 88 + 2 * v11 - 2);
      v12 = v11 - 1;
      *(a2 + 84) = v12;
      *(a2 + 136) = *(a2 + 144 + 8 * v12);
      v13 = *(v8 + 112);
      if ((*(v13 + 52) & 0x20) != 0)
      {
        v14 = *(v13 + 40);
        --*(v14 + 152);
        *(v13 + 32) = *(v14 + 168);
        *(v14 + 168) = v13;
        (*(**(v14 + 72) + 144))(*(v14 + 72), *(v14 + 200) * (*(v13 + 48) - 1), *(v13 + 8));
      }

      else
      {
        sub_181932B68(v13);
      }

      v9 = *(a2 + 86);
      v8 = *(a2 + 136);
      LODWORD(v10) = *(v8 + 24);
      if (v9 < v10)
      {
        *(a2 + 86) = v9 + 1;
        goto LABEL_16;
      }
    }

    *a3 = v7;

    return sub_1818C6AC0(a2);
  }

  return result;
}

void *sub_1818F1620(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = result;
    v6 = a2[7];
    v7 = v6[5];
    if (v7)
    {
      sub_1819439E0(result, v7);
    }

    v8 = v6[6];
    if (v8)
    {
      sub_18194E5B8(v5, v8);
    }

    v9 = v6[2];
    if (v9)
    {
      sub_1818BB408(v5, v9, 1);
    }

    v10 = a2[3];
    if (v10)
    {
      sub_1819439E0(v5, v10);
    }

    return sub_181929C84(v5, a2);
  }

  return result;
}

int sqlite3_open16(const void *filename, sqlite3 **ppDb)
{
  if (ppDb)
  {
    *ppDb = 0;
    result = sqlite3_initialize();
    if (result)
    {
      return result;
    }

    v6 = sub_181902484(64, 0x10F2040695A4BFELL);
    if (!v6)
    {
      return 7;
    }

    v7 = v6;
    *(v6 + 32) = 0u;
    *(v6 + 48) = 0u;
    if (filename)
    {
      v8 = filename;
    }

    else
    {
      v8 = &unk_181A20C48;
    }

    *v6 = 0uLL;
    *(v6 + 16) = 0uLL;
    *(v6 + 20) = 1;
    *(v6 + 24) = 0;
    sub_1818900D0(v6, v8, -1, 2, 0);
    v11 = *(v7 + 20);
    if ((~v11 & 0x202) != 0 || *(v7 + 22) != 1)
    {
      if (v11)
      {
        goto LABEL_19;
      }

      v12 = sub_18193CB70(v7, 1, v9, v10);
      if (!v12)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v12 = *(v7 + 8);
      if (!v12)
      {
LABEL_19:
        v14 = 7;
LABEL_20:
        if ((*(v7 + 20) & 0x9000) != 0 || *(v7 + 32))
        {
          sub_18193CA00(v7);
        }

        sub_181929C84(*(v7 + 24), v7);
        return v14;
      }
    }

    v13 = sub_18188D94C(v12, ppDb, 6u, 0);
    v14 = v13;
    if (!v13)
    {
      v15 = *(*(*ppDb + 4) + 24);
      v14 = 0;
      if ((*(v15 + 114) & 1) == 0)
      {
        *(*ppDb + 100) = 2;
        *(v15 + 113) = 2;
      }
    }

    goto LABEL_20;
  }

  return sub_1819012D0(195703);
}

uint64_t sub_1818F1820(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  if (a2 == 1 || *(a1 + 22) == 1)
  {
    v16 = a1[4];
    v17 = v16;
    if (a2 == 1)
    {
      v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
      a1[4] = v17;
      v18 = (4 * (v17 >> 1)) | 1;
      v16 &= ~1u;
    }

    else
    {
      v18 = 2 * v16 + 2;
    }

    v19 = *(a1 + 1);
    v20 = *(a1 + 3);
    if (v20)
    {
      v21 = sub_181929E8C(v20, v18, 3816398634);
      if (!v21)
      {
        return 7;
      }
    }

    else
    {
      v21 = sub_181902484(v18, 3816398634);
      if (!v21)
      {
        return 7;
      }
    }

    v22 = &v19[v17];
    v23 = *(a1 + 22);
    if (v23 != 1)
    {
      if (v23 == 2)
      {
        v24 = v21;
        if (v16 >= 1)
        {
          v24 = v21;
          do
          {
            v29 = *v19;
            v30 = v19 + 2;
            v31 = v19[1];
            v32 = v29 | (v31 << 8);
            if ((v31 & 0xF8) != 0xD8 || v30 >= v22)
            {
              if (v32 > 0x7F)
              {
                v34 = v29 & 0x3F | 0x80;
                if (v31 > 7)
                {
                  *v24 = (v19[1] >> 4) | 0xE0;
                  v24[1] = (v32 >> 6) & 0x3F | 0x80;
                  v24[2] = v34;
                  v24 += 3;
                }

                else
                {
                  *v24 = (v32 >> 6) | 0xC0;
                  v24[1] = v34;
                  v24 += 2;
                }
              }

              else
              {
                *v24++ = v29;
              }
            }

            else
            {
              v25 = v19[2];
              v30 = v19 + 4;
              v26 = v25 & 0x3F | 0x80;
              v27 = v25 & 0xFFFC00FF | ((v19[3] & 3) << 8) & 0x3FF | (*v19 << 10);
              v28 = ((v32 << 10) & 0xF0000) + 0x10000;
              *v24 = (v28 >> 18) | 0xF0;
              v24[1] = ((v28 & 0xFFFF0000 | (v29 << 10)) >> 12) & 0x3F | 0x80;
              v24[2] = (v27 >> 6) & 0x3F | 0x80;
              v24[3] = v26;
              v24 += 4;
            }

            v19 = v30;
          }

          while (v30 < v22);
        }
      }

      else
      {
        v24 = v21;
        if (v16 >= 1)
        {
          v24 = v21;
          do
          {
            v51 = *v19;
            v52 = v19 + 2;
            v53 = v19[1];
            v54 = v53 | (v51 << 8);
            if ((v51 & 0xF8) != 0xD8 || v52 >= v22)
            {
              if (v54 > 0x7F)
              {
                if (v51 > 7)
                {
                  *v24 = (*v19 >> 4) | 0xE0;
                  v24[1] = (v54 >> 6) & 0x3F | 0x80;
                  v24[2] = v53 & 0x3F | 0x80;
                  v24 += 3;
                }

                else
                {
                  *v24 = (v54 >> 6) | 0xC0;
                  v24[1] = v53 & 0x3F | 0x80;
                  v24 += 2;
                }
              }

              else
              {
                *v24++ = v53;
              }
            }

            else
            {
              v52 = v19 + 4;
              v46 = v19[3];
              v47 = v53 << 10;
              v48 = v46 & 0x3F | 0x80;
              v49 = v46 & 0xFFFC00FF | ((v19[2] & 3) << 8) & 0x3FF | (v19[1] << 10);
              v50 = ((v54 << 10) & 0xF0000) + 0x10000;
              *v24 = (v50 >> 18) | 0xF0;
              v24[1] = ((v50 & 0xFFFF0000 | v47) >> 12) & 0x3F | 0x80;
              v24[2] = (v49 >> 6) & 0x3F | 0x80;
              v24[3] = v48;
              v24 += 4;
            }

            v19 = v52;
          }

          while (v52 < v22);
        }
      }

      a1[4] = v24 - v21;
LABEL_91:
      *v24 = 0;
      v67 = a1[5] & 0x83D | 0x202;
      if ((a1[5] & 0x9000) != 0 || a1[8])
      {
        v68 = v21;
        sub_18193CA00(a1);
        v21 = v68;
      }

      *(a1 + 10) = v67;
      *(a1 + 22) = v4;
      *(a1 + 1) = v21;
      *(a1 + 5) = v21;
      v69 = *(a1 + 3);
      if (v69 && *(v69 + 520) > v21)
      {
        if (*(v69 + 496) <= v21)
        {
          v70 = 128;
          goto LABEL_99;
        }

        if (*(v69 + 504) <= v21)
        {
          v70 = *(v69 + 438);
          goto LABEL_99;
        }
      }

      v70 = xmmword_1ED452EC0(v21);
LABEL_99:
      result = 0;
      a1[8] = v70;
      return result;
    }

    v36 = v21;
    if (v4 == 2)
    {
      if (v16 >= 1)
      {
        v37 = &v19[v17];
        v38 = &v19[v17 - 1];
        v36 = v21;
        v39 = v19;
        do
        {
          v41 = *v39++;
          v40 = v41;
          v42 = v41 - 192;
          if (v41 >= 0xC0)
          {
            v43 = byte_181A20D3A[v42];
            if (v39 < v22)
            {
              v44 = v38 - v19;
              while (1)
              {
                v45 = *v39;
                if ((*v39 & 0xC0) != 0x80)
                {
                  break;
                }

                ++v39;
                v43 = v45 & 0x3F | (v43 << 6);
                if (!--v44)
                {
                  v39 = v37;
                  break;
                }
              }
            }

            v40 = -3;
            if (v43 >> 1 != 0x7FFF && v43 >= 0x80 && (v43 & 0xFFFFF800) != 0xD800)
            {
              if (HIWORD(v43))
              {
                *v36 = ((v43 - 0x10000) >> 10) & 0xC0 | (v43 >> 10);
                v36[1] = ((v43 - 0x10000) >> 18) & 3 | 0xD8;
                v36[2] = v43;
                v36[3] = BYTE1(v43) & 3 | 0xDC;
                v36 += 4;
                goto LABEL_48;
              }

              v40 = v43;
            }
          }

          *v36 = v40;
          v36 += 2;
LABEL_48:
          v19 = v39;
        }

        while (v39 < v22);
      }

LABEL_90:
      a1[4] = v36 - v21;
      *v36 = 0;
      v24 = v36 + 1;
      goto LABEL_91;
    }

    if (v16 < 1)
    {
      goto LABEL_90;
    }

    v56 = &v19[v17];
    v57 = &v19[v17 - 1];
    v36 = v21;
    v58 = v19;
    while (1)
    {
      v63 = *v58++;
      v59 = v63;
      v64 = v63 - 192;
      if (v63 >= 0xC0)
      {
        v61 = byte_181A20D3A[v64];
        if (v58 < v22)
        {
          v65 = v57 - v19;
          while (1)
          {
            v66 = *v58;
            if ((*v58 & 0xC0) != 0x80)
            {
              break;
            }

            ++v58;
            v61 = v66 & 0x3F | (v61 << 6);
            if (!--v65)
            {
              v58 = v56;
              break;
            }
          }
        }

        v59 = -3;
        if (v61 >> 1 != 0x7FFF && v61 >= 0x80 && (v61 & 0xFFFFF800) != 0xD800)
        {
          if (HIWORD(v61))
          {
            *v36 = ((v61 - 0x10000) >> 18) & 3 | 0xD8;
            v36[1] = ((v61 - 0x10000) >> 10) & 0xC0 | (v61 >> 10);
            v60 = v36 + 3;
            v36[2] = BYTE1(v61) & 3 | 0xDC;
            v62 = 4;
            goto LABEL_78;
          }

          v59 = v61;
        }
      }

      *v36 = HIBYTE(v59);
      v60 = v36 + 1;
      LOBYTE(v61) = v59;
      v62 = 2;
LABEL_78:
      v36 += v62;
      *v60 = v61;
      v19 = v58;
      if (v58 >= v22)
      {
        goto LABEL_90;
      }
    }
  }

  v6 = *(a1 + 10);
  if ((v6 & 0x12) == 0)
  {
    goto LABEL_15;
  }

  if ((a1[5] & 0x400) != 0)
  {
    v7 = a1[4];
    a2 = (*a1 + v7);
    if ((*a1 + v7 < 0) ^ __OFADD__(*a1, v7) | (*a1 + v7 == 0))
    {
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      LODWORD(a2) = 1;
    }

    if (sub_1818BB128(a1, a2, 1, a4))
    {
      return 7;
    }

    bzero((*(a1 + 1) + a1[4]), *a1);
    a1[4] += *a1;
    v6 = a1[5] & 0xF9FF;
    *(a1 + 10) = v6;
  }

LABEL_11:
  if (!a1[8] || *(a1 + 1) != *(a1 + 5))
  {
    if (!sub_18193CD7C(a1, a2, a3, a4))
    {
      v6 = *(a1 + 10);
      goto LABEL_15;
    }

    return 7;
  }

LABEL_15:
  *(a1 + 10) = v6 & 0xBFFF;
  v8 = a1[4] & 0xFFFFFFFFFFFFFFFELL;
  if (v8 >= 1)
  {
    v9 = *(a1 + 1);
    v10 = v9 + v8;
    v11 = v9 + 2;
    if (v10 > v9 + 2)
    {
      v11 = v10;
    }

    v12 = v11 + ~v9;
    v13 = *(a1 + 1);
    if (v12 >= 0xE)
    {
      v14 = (v12 >> 1) + 1;
      if (v12 < 0x3E)
      {
        v15 = 0;
        goto LABEL_105;
      }

      v15 = v14 & 0xFFFFFFFFFFFFFFE0;
      v71 = (v9 + 32);
      v72 = v14 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v73 = v71 - 32;
        v81 = vld2q_s8(v73);
        v82 = vld2q_s8(v71);
        v74 = v81.val[0];
        v75 = v82.val[0];
        vst2q_s8(v73, *(&v81 + 16));
        vst2q_s8(v71, *(&v82 + 16));
        v71 += 64;
        v72 -= 32;
      }

      while (v72);
      if (v14 == v15)
      {
        goto LABEL_112;
      }

      if ((v14 & 0x18) != 0)
      {
LABEL_105:
        v13 = (v9 + 2 * (v14 & 0xFFFFFFFFFFFFFFF8));
        v76 = (v9 + 2 * v15);
        v77 = v15 - (v14 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v80 = vld2_s8(v76);
          v78 = v80.val[0];
          vst2_s8(v76, *(&v80 + 8));
          v76 += 16;
          v77 += 8;
        }

        while (v77);
        if (v14 == (v14 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_112;
        }

        goto LABEL_111;
      }

      v13 = (v9 + 2 * v15);
    }

    do
    {
LABEL_111:
      v79 = *v13;
      *v13 = v13[1];
      v13[1] = v79;
      v13 += 2;
    }

    while (v13 < v10);
  }

LABEL_112:
  result = 0;
  *(a1 + 22) = v4;
  return result;
}

uint64_t sub_1818F1F20(uint64_t a1, char *a2, int a3, uint64_t a4, void *a5, void *a6)
{
  v42 = 0;
  if (a6)
  {
    *a6 = 0;
  }

  if (!a5)
  {
    v8 = 153513;
LABEL_29:

    return sub_1819012D0(v8);
  }

  *a5 = 0;
  if (!a1)
  {
    v7 = "NULL";
    goto LABEL_27;
  }

  v6 = *(a1 + 113);
  if (v6 == 186)
  {
LABEL_8:
    v7 = "unopened";
LABEL_27:
    sqlite3_log(21, "API call with %s database connection pointer", v7);
    goto LABEL_28;
  }

  if (v6 != 118)
  {
    if (v6 != 109)
    {
      v7 = "invalid";
      goto LABEL_27;
    }

    goto LABEL_8;
  }

  if (!a2)
  {
LABEL_28:
    v8 = 153517;
    goto LABEL_29;
  }

  v9 = 0;
  if (a3 < 0)
  {
    while (a2[v9] || a2[v9 + 1])
    {
      v9 += 2;
    }
  }

  else if (a3)
  {
    do
    {
      if (!a2[v9] && !a2[v9 + 1])
      {
        break;
      }

      v9 += 2;
    }

    while (v9 < a3);
  }

  v13 = a1;
  if (*(a1 + 24))
  {
    v14 = a2;
    xmmword_1ED452F18(*(a1 + 24));
    a2 = v14;
    a1 = v13;
  }

  v46 = 0u;
  v47 = 0u;
  v43 = 0u;
  v44 = 0;
  v45 = a1;
  v15 = v9;
  v16 = a2;
  sub_1818900D0(&v43, a2, v9, 2, 0);
  if ((v44 & 0x200000000) != 0)
  {
    v19 = a4;
    if (BYTE6(v44) == 1)
    {
      goto LABEL_35;
    }

    sub_1818F1820(&v43, 1, v17, a4);
  }

  else
  {
    BYTE6(v44) = 1;
  }

  v19 = a4;
LABEL_35:
  v20 = v13;
  if (*(v13 + 103))
  {
    if (WORD2(v44) & 0x9000 | v46)
    {
      sub_18193CA00(&v43);
      v20 = v13;
    }

    goto LABEL_55;
  }

  v21 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
LABEL_55:
    v22 = 0;
    goto LABEL_70;
  }

  v22 = sub_1818954B4(v13, *(&v43 + 1), 0xFFFFFFFFLL, v19, 0, a5, &v42);
  if (a6 && v42)
  {
    if (v42 - v21 < 0)
    {
      v23 = -1;
    }

    else
    {
      v23 = v21 + (v42 - v21);
    }

    v24 = *v21;
    if (*v21 && v23 > v21)
    {
      v25 = 0;
      v26 = v21;
      v27 = v16;
      do
      {
        v30 = v25;
        if (v24 < 0xC0)
        {
          v28 = *(v26 + 1);
          v26 = (v26 + 1);
          v24 = v28;
        }

        else
        {
          do
          {
            v31 = *(v26 + 1);
            v26 = (v26 + 1);
            v24 = v31;
          }

          while ((v31 & 0xC0) == 0x80);
        }

        ++v25;
        if (v24)
        {
          v29 = v26 >= v23;
        }

        else
        {
          v29 = 1;
        }
      }

      while (!v29);
      v33 = &v16[v15 - 1];
      v34 = v16 + 1;
      if ((v16 + 1) <= v33)
      {
        v35 = 0;
        v32 = v16 + 1;
        do
        {
          v36 = *v32;
          v32 += 2;
          if ((v36 & 0xFC) == 0xD8 && v32 <= v33)
          {
            v38 = v34[2] & 0xFC;
            v39 = v34 + 4;
            if (v38 == 220)
            {
              v32 = v39;
            }
          }

          if (v35 >= v30)
          {
            break;
          }

          ++v35;
          v34 = v32;
        }

        while (v32 <= v33);
      }

      else
      {
        LODWORD(v32) = v16 + 1;
      }
    }

    else
    {
      v27 = v16;
      LODWORD(v32) = v16 + 1;
    }

    *a6 = &v27[v32 + ~v27];
  }

  sub_181929C84(v13, v21);
  v20 = v13;
  if (v22)
  {
    goto LABEL_72;
  }

LABEL_70:
  if (*(v20 + 103))
  {
LABEL_72:
    v40 = sub_18193C988(v13, v22);
    v20 = v13;
    goto LABEL_73;
  }

  v40 = 0;
LABEL_73:
  v41 = *(v20 + 24);
  if (v41)
  {
    xmmword_1ED452F28(v41);
  }

  return v40;
}

int sqlite3_data_count(sqlite3_stmt *pStmt)
{
  if (!pStmt)
  {
    return 0;
  }

  v2 = *(*pStmt + 24);
  if (v2)
  {
    xmmword_1ED452F18(v2);
  }

  if (*(pStmt + 20))
  {
    v3 = *(pStmt + 130);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(*pStmt + 24);
  if (v4)
  {
    xmmword_1ED452F28(v4);
  }

  return v3;
}

const void *__cdecl sqlite3_column_text16(sqlite3_stmt *a1, int iCol)
{
  if (!a1)
  {
    goto LABEL_8;
  }

  v6 = *(*a1 + 24);
  if (v6)
  {
    xmmword_1ED452F18(v6);
  }

  v7 = *(a1 + 20);
  if (!v7 || *(a1 + 130) <= iCol)
  {
    v9 = *a1;
    *(v9 + 80) = 25;
    sub_181932D5C(v9, 25);
LABEL_8:
    v8 = &qword_181A20ED0;
    goto LABEL_9;
  }

  v8 = (v7 + (iCol << 6));
LABEL_9:
  v10 = *(v8 + 10);
  if ((~v10 & 0x202) != 0 || *(v8 + 22) != 2)
  {
    if (v10)
    {
      v11 = 0;
      if (!a1)
      {
        return v11;
      }
    }

    else
    {
      v11 = sub_18193CB70(v8, 2, v2, v3);
      if (!a1)
      {
        return v11;
      }
    }
  }

  else
  {
    v11 = v8[1];
    if (!a1)
    {
      return v11;
    }
  }

  v12 = *a1;
  v13 = *(a1 + 13);
  if (v13 || (v14 = *(v12 + 103), *(v12 + 103)))
  {
    v14 = sub_18193C988(v12, v13);
    v12 = *a1;
  }

  *(a1 + 13) = v14;
  v15 = *(v12 + 24);
  if (v15)
  {
    xmmword_1ED452F28(v15);
  }

  return v11;
}

uint64_t sub_1818F2418(uint64_t *a1, char *__src, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v5 = __src;
  v7 = *(a1 + 3);
  if (v7 < 1 || a4 + a3 <= v7)
  {
    if (a4 < 1)
    {
      if (!a4)
      {
        v35 = a1[2];
        if (v35)
        {
          memcpy((v35 + 8), __src, a3);
          return 0;
        }
      }
    }

    else if (a1[3] != a4)
    {
      sub_1818F27BC(a1, a4);
    }

    if (v4 >= 1)
    {
      v20 = a1[3];
      while (1)
      {
        v22 = a1[4];
        v23 = *(a1 + 2);
        v24 = v20 % v23;
        v25 = v23 - v20 % v23;
        if (v4 >= v25)
        {
          v26 = v25;
        }

        else
        {
          v26 = v4;
        }

        if (!v24)
        {
          v27 = (v23 + 8);
          v28 = sqlite3_initialize();
          result = 3082;
          if (v27 < 1 || v28)
          {
            return result;
          }

          v29 = sub_181902484(v27, 0x1020040EDED9539);
          if (!v29)
          {
            return 3082;
          }

          *v29 = 0;
          if (v22)
          {
            v30 = v22;
          }

          else
          {
            v30 = a1 + 2;
          }

          *v30 = v29;
          a1[4] = v29;
          v22 = v29;
        }

        memcpy((v22 + v24 + 8), v5, v26);
        v5 += v26;
        v20 = a1[3] + v26;
        a1[3] = v20;
        v21 = __OFSUB__(v4, v26);
        LODWORD(v4) = v4 - v26;
        if ((v4 < 0) ^ v21 | (v4 == 0))
        {
          return 0;
        }
      }
    }

    return 0;
  }

  v9 = *a1;
  LODWORD(v10) = *(a1 + 2);
  v12 = a1[2];
  v11 = a1[3];
  v13 = *(a1 + 2);
  v43 = a1[6];
  v14 = a1[7];
  v15 = a1[8];
  v16 = a1[9];
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  v41 = v14;
  v42 = v13;
  result = (*(v15 + 40))(v15, v16, a1, v14 & 0x1787F7F, 0);
  if (result)
  {
    v18 = *a1;
    if (!*a1)
    {
LABEL_12:
      *a1 = v9;
      *(a1 + 2) = v10;
      *(a1 + 3) = v7;
      a1[2] = v12;
      a1[3] = v11;
      *(a1 + 2) = v42;
      a1[6] = v43;
      a1[7] = v41;
      a1[8] = v15;
      a1[9] = v16;
      return result;
    }

LABEL_11:
    v19 = result;
    (*(v18 + 8))(a1);
    result = v19;
    goto LABEL_12;
  }

  if (v12)
  {
    v37 = v16;
    v39 = v9;
    v31 = 0;
    v32 = v12;
    v38 = v10;
    do
    {
      if (v31 + v10 <= v11)
      {
        v10 = v10;
      }

      else
      {
        v10 = (v11 - v31);
      }

      result = (*(*a1 + 24))(a1, v32 + 1, v10, v31);
      if (result)
      {
        v9 = v39;
        LODWORD(v10) = v38;
        v16 = v37;
        v18 = *a1;
        if (!*a1)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      v31 += v10;
      v32 = *v32;
    }

    while (v32);
    do
    {
      v34 = *v12;
      v33 = &off_1ED452EB0;
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
          goto LABEL_38;
        }

        v33 = &xmmword_1ED452F28;
      }

      (*v33)(v12);
LABEL_38:
      v12 = v34;
    }

    while (v34);
  }

  v36 = *(*a1 + 24);

  return v36(a1, v5, v4, a4);
}

uint64_t sub_1818F27BC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) > a2)
  {
    if (a2)
    {
      v4 = (a1 + 16);
      v5 = *(a1 + 8);
      do
      {
        v4 = *v4;
        if (v4)
        {
          v6 = v5 < a2;
        }

        else
        {
          v6 = 0;
        }

        v5 += *(a1 + 8);
      }

      while (v6);
      if (!v4)
      {
        v10 = 0;
        goto LABEL_31;
      }

      v7 = *v4;
      if (*v4)
      {
        do
        {
          v8 = *v7;
          v9 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v7);
            --qword_1ED456A90;
            off_1ED452EB0(v7);
            v7 = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
              goto LABEL_12;
            }

            v9 = &xmmword_1ED452F28;
          }

          (*v9)(v7);
LABEL_12:
          v7 = v8;
        }

        while (v8);
      }

      v10 = v4;
LABEL_29:
      *v4 = 0;
LABEL_31:
      *(a1 + 24) = a2;
      *(a1 + 32) = v10;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      return 0;
    }

    v4 = (a1 + 16);
    v11 = *(a1 + 16);
    if (!v11)
    {
LABEL_28:
      v10 = 0;
      goto LABEL_29;
    }

    while (1)
    {
      v12 = *v11;
      v13 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v11);
        --qword_1ED456A90;
        off_1ED452EB0(v11);
        v11 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_22;
        }

        v13 = &xmmword_1ED452F28;
      }

      (*v13)(v11);
LABEL_22:
      v11 = v12;
      if (!v12)
      {
        goto LABEL_28;
      }
    }
  }

  return 0;
}

uint64_t sub_1818F29A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    do
    {
      v2 = *v1;
      v3 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v1);
        --qword_1ED456A90;
        off_1ED452EB0(v1);
        v1 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_4;
        }

        v3 = &xmmword_1ED452F28;
      }

      (*v3)(v1);
LABEL_4:
      v1 = v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t sub_1818F2A78(uint64_t a1, int a2, char *__s1)
{
  v200 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*a1)
    {
      if (*(*a1 + 16) == sub_181893698 && a2 != 106 && *(a1 + 128) <= 3u && (*(a1 + 168) || (v44 = *(a1 + 64)) != 0 && *(*v44 + 168)))
      {
        if (a2 != 101 || !__s1 || (*__s1 & 0x80) == 0)
        {
          sqlite3_log(27, "denying fcntl on invalidated fd %d", *(a1 + 24));
          return 6922;
        }

        v42 = *(a1 + 160);
        *(a1 + 160) = 0;
LABEL_98:
        v189 = v42;
        v43 = *__s1;
LABEL_99:
        *&v192.st_dev = 0;
        if (*a1 == &unk_1EEF8FD48)
        {
          v48 = *(a1 + 124) | 0x20;
        }

        else
        {
          v48 = *(a1 + 124);
        }

        if ((v43 & 0x7F) != 0)
        {
          v49 = sub_18192C3D8();
          if (!v49 || (v50 = v49, v51 = strlen(v49), v51 <= 0))
          {
            sqlite3_log(1, "Truncate database failed because TMPDIR is not set correctly\n");
            v4 = 3;
            goto LABEL_304;
          }
        }

        else
        {
          v50 = 0;
          v51 = 0;
        }

        v52 = v43 & 1;
        v187 = v48;
        v53 = sub_18192E914(a1, v48, &v192);
        if (!v53)
        {
          LODWORD(v55) = 0;
          v54 = 1;
          if ((v43 & 1) == 0 && *&v192.st_dev)
          {
            LODWORD(v55) = 0;
            v52 = *(*&v192.st_dev + 8);
            if ((v43 & 0x7F) == 0)
            {
              goto LABEL_251;
            }

            goto LABEL_169;
          }

          goto LABEL_168;
        }

        v4 = v53;
        v54 = v53 != 26 && v53 != 11;
        if (v53 == 26 || v53 == 11)
        {
          v55 = *(a1 + 28);
          if (v55 > 3 || (v56 = (*(*a1 + 56))(a1, 1), !v56))
          {
            v56 = (*(*a1 + 56))(a1, 4);
            if (!v56)
            {
LABEL_120:
              if ((v43 & 1) == 0)
              {
                if (!(*(*a1 + 16))(a1, __strerrbuf, 20, 0) && (*__strerrbuf == 0x66206574694C5153 ? (v57 = *&__strerrbuf[7] == 0x332074616D726F66) : (v57 = 0), v57))
                {
                  v52 = __strerrbuf[18] == 2 && __strerrbuf[19] == 2;
                  if ((v43 & 0x7F) == 0)
                  {
                    goto LABEL_251;
                  }
                }

                else
                {
                  v52 = 0;
                  if ((v43 & 0x7F) == 0)
                  {
                    goto LABEL_251;
                  }
                }

                goto LABEL_169;
              }

              v52 = 1;
LABEL_168:
              if ((v43 & 0x7F) == 0)
              {
LABEL_251:
                v73 = (*(*a1 + 32))(a1, *(a1 + 128) & 1);
                v74 = 0;
                goto LABEL_252;
              }

LABEL_169:
              v69 = malloc_type_calloc(1uLL, (v51 + 26), 0x100004077774924uLL);
              strlcpy(v69, v50, (v51 + 26));
              if (v69[v51 - 1] != 47)
              {
                strlcat(v69, "/", (v51 + 26));
              }

              strlcat(v69, "tmpsqlitetruncatedbXXXXXX", (v51 + 26));
              v70 = mkstemp(v69);
              if (v70 == -1)
              {
                *(a1 + 32) = *__error();
                v73 = 10;
                v74 = 1;
LABEL_195:
                free(v69);
LABEL_252:
                if ((v43 & 0x80) != 0 || (v4 = v73, !v73))
                {
                  sub_18192F13C(a1, 0);
                  v4 = 0;
                }

                (*(*a1 + 40))(a1, 3);
                if (v54)
                {
                  v99 = *&v192.st_dev;
                  if (!*&v192.st_dev)
                  {
                    goto LABEL_270;
                  }

                  if (*(*&v192.st_dev + 8))
                  {
                    *__strerrbuf = 0;
                    if (!sqlite3_file_control(**&v192.st_dev, "main", 7, __strerrbuf))
                    {
                      (*(**__strerrbuf + 112))(*__strerrbuf, 2, 1, 9);
                      (*(**__strerrbuf + 112))(*__strerrbuf, 3, 5, 9);
                    }
                  }

                  sub_181914B98(*v99, 0);
                  v100 = &off_1ED452EB0;
                  if (!dword_1ED452E80)
                  {
                    goto LABEL_265;
                  }

                  if (xmmword_1ED456AF0)
                  {
                    xmmword_1ED452F18(xmmword_1ED456AF0);
                  }

                  qword_1ED456A48[0] -= xmmword_1ED452EC0(v99);
                  --qword_1ED456A90;
                  off_1ED452EB0(v99);
                  v99 = xmmword_1ED456AF0;
                  if (xmmword_1ED456AF0)
                  {
                    v100 = &xmmword_1ED452F28;
LABEL_265:
                    (*v100)(v99);
                  }
                }

                else
                {
                  v101 = *(a1 + 28);
                  if (v55 < v101)
                  {
                    (*(*a1 + 64))(a1, 1);
                    v101 = *(a1 + 28);
                  }

                  if (v101 > v55)
                  {
                    (*(*a1 + 64))(a1, 0);
                  }
                }

LABEL_270:
                if (v73)
                {
                  v102 = 1;
                }

                else
                {
                  v102 = v74;
                }

                if ((v43 & 0x80) == 0 || !v102)
                {
LABEL_300:
                  if (v4)
                  {
                    v113 = *(a1 + 56);
                    if (!v113)
                    {
                      v113 = "<dst path null>";
                    }

                    sqlite3_log(1, "unixTruncateDatabase() failed with %d for replacing '%s' with flags %x\n", v4, v113, v187);
                  }

                  goto LABEL_304;
                }

                __strlcpy_chk();
                __strlcat_chk();
                __strlcpy_chk();
                __strlcat_chk();
                if (ftruncate(*(a1 + 24), 0) && (v103 = *__error()) != 0)
                {
                  *(a1 + 32) = v103;
                  v4 = 10;
                  v104 = 1;
                  v105 = 1;
                }

                else
                {
                  v104 = 0;
                  v105 = 0;
                  v4 = 0;
                }

                v106 = sub_18192ACE0(__strerrbuf, 2, 0, 0, 0);
                v107 = v106;
                if ((v106 & 0x80000000) != 0)
                {
                  if (*__error() != 2)
                  {
LABEL_281:
                    v108 = *__error();
                    if (v108)
                    {
                      v109 = v104;
                    }

                    else
                    {
                      v109 = 1;
                    }

                    if ((v109 & 1) == 0)
                    {
                      *(a1 + 32) = v108;
                      v4 = 10;
                    }

LABEL_288:
                    v110 = sub_18192ACE0(__buf, 2, 0, 0, 0);
                    v111 = v110;
                    if ((v110 & 0x80000000) != 0)
                    {
                      if (*__error() == 2)
                      {
LABEL_297:
                        if ((v107 & 0x80000000) == 0)
                        {
                          fsync(v107);
                          off_1EE341AE0(v107);
                        }

                        (*(*a1 + 40))(a1, 3);
                        goto LABEL_300;
                      }
                    }

                    else if (!ftruncate(v110, 0))
                    {
LABEL_296:
                      fsync(v111);
                      off_1EE341AE0(v111);
                      goto LABEL_297;
                    }

                    v112 = __error();
                    if (!(v108 | v105) && *v112)
                    {
                      *(a1 + 32) = 0;
                      v4 = 10;
                    }

                    if ((v111 & 0x80000000) != 0)
                    {
                      goto LABEL_297;
                    }

                    goto LABEL_296;
                  }
                }

                else if (ftruncate(v106, 0))
                {
                  goto LABEL_281;
                }

                v108 = 0;
                goto LABEL_288;
              }

              v71 = v70;
              __buf[0] = 0;
              v72 = sub_18188D94C(v69, __buf, 0x26u, 0);
              if (v72)
              {
                v73 = v72;
                errmsg = 0;
              }

              else
              {
                v78 = *(a1 + 176);
                if (v78 >= 1)
                {
                  sqlite3_key_v2(__buf[0], "main", *(a1 + 184), v78);
                }

                errmsg = 0;
                if ((v43 & 0x70) != 0 && (strcpy(&__strerrbuf[44], "pragma page_size=4096"), strcpy(&__strerrbuf[66], "pragma page_size=8192"), strcpy(__strerrbuf, "pragma page_size=1024"), strcpy(&__strerrbuf[22], "pragma page_size=2048"), v79 = sqlite3_exec(__buf[0], &__strerrbuf[22 * ((v43 & 0x70) >> 4) - 22], 0, 0, &errmsg), v79))
                {
                  v73 = v79;
                }

                else
                {
                  v83 = ((v43 & 0xC) >> 2) - 1;
                  strcpy(__strerrbuf, "pragma auto_vacuum=0");
                  strcpy(&__strerrbuf[21], "pragma auto_vacuum=1");
                  strcpy(&__strerrbuf[42], "pragma auto_vacuum=2");
                  if ((v43 & 0xC) == 0)
                  {
                    v83 = 2;
                  }

                  v73 = sqlite3_exec(__buf[0], &__strerrbuf[21 * v83], 0, 0, &errmsg);
                  if (!v73 && v52)
                  {
                    v73 = sqlite3_exec(__buf[0], "pragma journal_mode=wal", 0, 0, &errmsg);
                  }

                  if (!v73)
                  {
                    goto LABEL_188;
                  }
                }
              }

              if (__buf[0])
              {
                sqlite3_log(1, "failed to set '%s' on truncated database %s, %d: %s\n");
              }

              else
              {
                sqlite3_log(1, "failed to open temp database '%s' to reset truncated database %s with flags %x: %d\n");
              }

LABEL_188:
              if (__buf[0])
              {
                *__strerrbuf = 0;
                sqlite3_file_control(__buf[0], 0, 10, __strerrbuf);
                sub_181914B98(__buf[0], 0);
              }

              lseek(v71, 0, 0);
              lseek(*(a1 + 24), 0, 0);
              if (sub_18192EF28(v71, *(a1 + 24)))
              {
                v80 = *__error();
                if (v80 == 12)
                {
                  v73 = 7;
                }

                else
                {
                  *(a1 + 32) = v80;
                  v73 = 10;
                }
              }

              fsync(*(a1 + 24));
              close(v71);
              unlink(v69);
              v74 = v73 != 0;
              goto LABEL_195;
            }
          }

          v4 = v56;
          if (*(a1 + 28) > v55)
          {
            (*(*a1 + 64))(a1, v55);
          }
        }

        if ((v43 & 0x80) == 0)
        {
LABEL_304:
          if (v189)
          {
            *(a1 + 160) = v189;
          }

          return v4;
        }

        LODWORD(v55) = 0;
        goto LABEL_120;
      }
    }
  }

  v4 = 12;
  switch(a2)
  {
    case 1:
      v4 = 0;
      *__s1 = *(a1 + 28);
      return v4;
    case 2:
    case 3:
      v5 = *a1;
      if (a2 == 2)
      {
        if (v5 == &unk_1EEF8FD48)
        {
          v45 = *(a1 + 40);
          v46 = __s1;
          sub_18192C554(a1);
          __s1 = v46;
          v6 = *(v45 + 24);
          if (!v6)
          {
            v6 = ":auto: (not held)";
          }
        }

        else
        {
          v6 = 0;
        }

        v4 = 0;
        *__s1 = v6;
        return v4;
      }

      if (!__s1)
      {
        return v5 == &unk_1EEF8FD48;
      }

      if (v5 != &unk_1EEF8FD48)
      {

        return sub_18192CC6C(a1, __s1);
      }

      v61 = __s1;
      if (!strcmp(__s1, ":auto:"))
      {
        return 0;
      }

      v62 = *(a1 + 40);
      v63 = *(v62 + 24);
      if (v63)
      {
        if (!strncmp(*(v62 + 24), v61, 0x400uLL))
        {
          return 0;
        }
      }

      if (*(a1 + 28))
      {
        return 5;
      }

      if (!*v61 || !strcmp(v61, ":auto:") || v63 && !strncmp(v63, v61, 0x400uLL))
      {
        return 0;
      }

      v84 = *(v62 + 16);
      *(v62 + 16) = 0;
      *(v62 + 40) = 0;
      if (!v84)
      {
        goto LABEL_220;
      }

      v4 = (*(*v84 + 8))(v84);
      if (v4)
      {
        return v4;
      }

      v85 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_219;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v84);
      --qword_1ED456A90;
      off_1ED452EB0(v84);
      v84 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v85 = &xmmword_1ED452F28;
LABEL_219:
        (*v85)(v84);
      }

LABEL_220:
      v86 = v61;
      if (!v63)
      {
        goto LABEL_227;
      }

      v87 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_226;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v63);
      --qword_1ED456A90;
      off_1ED452EB0(v63);
      v63 = xmmword_1ED456AF0;
      v86 = v61;
      if (xmmword_1ED456AF0)
      {
        v87 = &xmmword_1ED452F28;
LABEL_226:
        (*v87)(v63);
        v86 = v61;
      }

LABEL_227:
      v88 = strlen(v86);
      v89 = sub_181902484(v88 + 1, 354097263);
      v90 = v89;
      if (v89)
      {
        memcpy(v89, v61, v88 + 1);
      }

      v4 = 0;
      *(v62 + 24) = v90;
      return v4;
    case 4:
      v4 = 0;
      *__s1 = *(a1 + 32);
      return v4;
    case 5:
      v28 = *__s1;
      *(a1 + 144) = *__s1;
      if (*(a1 + 72) < 1)
      {
        goto LABEL_162;
      }

      v199 = 0u;
      v198 = 0u;
      v197 = 0u;
      memset(__strerrbuf, 0, sizeof(__strerrbuf));
      if (off_1EE341B40(*(a1 + 24), __strerrbuf))
      {
        *(a1 + 32) = *__error();
        return 1802;
      }

      v64 = (v28 + *(a1 + 72) - 1) / *(a1 + 72) * *(a1 + 72);
      if (v64 <= v197)
      {
        goto LABEL_162;
      }

      v65 = v198;
      v66 = v197 + v198 + ~(v197 % v198);
      v67 = v64 - 1 + v198;
      if (v66 >= v67)
      {
        goto LABEL_162;
      }

      do
      {
        if (v66 >= v64)
        {
          v68 = v64 - 1;
        }

        else
        {
          v68 = v66;
        }

        if (sub_18192B21C(a1, v68, &byte_181A2878D, 1) != 1)
        {
          return 778;
        }

        v66 = v68 + v65;
      }

      while (v68 + v65 < v67);
LABEL_162:
      if (*(a1 + 96) < 1 || *(a1 + 80) >= v28)
      {
        return 0;
      }

      if (*(a1 + 72) > 0)
      {
        return sub_18192BCF4(a1, v28);
      }

      v81 = *(a1 + 24);
      while (1)
      {
        v82 = off_1EE341B58(v81, v28);
        if ((v82 & 0x80000000) == 0)
        {
          break;
        }

        if (*__error() != 4)
        {
          goto LABEL_233;
        }
      }

      if (!v82)
      {
        return sub_18192BCF4(a1, v28);
      }

LABEL_233:
      *(a1 + 32) = *__error();
      v91 = *(a1 + 56);
      v92 = *__error();
      memset(__strerrbuf, 0, 80);
      strerror_r(v92, __strerrbuf, 0x4FuLL);
      v93 = &byte_181A2878D;
      if (v91)
      {
        v93 = v91;
      }

      v4 = 1546;
      sqlite3_log(1546, "os_unix.c:%d: (%d) %s(%s) - %s", 46378, v92, "ftruncate", v93, __strerrbuf);
      return v4;
    case 6:
      v4 = 0;
      *(a1 + 72) = *__s1;
      return v4;
    case 10:
      if ((*__s1 & 0x80000000) != 0)
      {
        v4 = 0;
        *__s1 = (*(a1 + 30) >> 2) & 1;
      }

      else
      {
        v26 = *(a1 + 30);
        v4 = 0;
        if (*__s1)
        {
          v27 = v26 | 4;
        }

        else
        {
          v27 = v26 & 0xFFFB;
        }

        *(a1 + 30) = v27;
      }

      return v4;
    case 12:
      v4 = 0;
      *__s1 = sqlite3_mprintf("%s", *(*(a1 + 8) + 24));
      return v4;
    case 13:
      if ((*__s1 & 0x80000000) != 0)
      {
        v4 = 0;
        *__s1 = (*(a1 + 30) >> 4) & 1;
      }

      else
      {
        v33 = *(a1 + 30);
        v4 = 0;
        if (*__s1)
        {
          v34 = v33 | 0x10;
        }

        else
        {
          v34 = v33 & 0xFFEF;
        }

        *(a1 + 30) = v34;
      }

      return v4;
    case 16:
      v29 = __s1;
      v30 = *(*(a1 + 8) + 8);
      if (sqlite3_initialize())
      {
        return 0;
      }

      v31 = sub_181902484(v30, 2713181649);
      if (!v31)
      {
        return 0;
      }

      v32 = v31;
      sub_18192BBB0(*(*(a1 + 8) + 8), v31);
      v4 = 0;
      *v29 = v32;
      return v4;
    case 18:
      v4 = 0;
      v17 = *__s1;
      if (*__s1 >= qword_1ED452FC8)
      {
        v17 = qword_1ED452FC8;
      }

      v18 = *(a1 + 96);
      *__s1 = v18;
      if (v17 < 0 || v17 == v18)
      {
        return v4;
      }

      if (*(a1 + 76))
      {
        return 0;
      }

      v20 = (a1 + 80);
      v19 = *(a1 + 80);
      *(a1 + 96) = v17;
      if (v19 < 1)
      {
        return 0;
      }

      v21 = *(a1 + 104);
      if (v21)
      {
        off_1EE341CF0(v21, *(a1 + 88));
        *(a1 + 104) = 0;
        *v20 = 0;
        *(a1 + 88) = 0;
      }

      return sub_18192BCF4(a1, -1);
    case 20:
      v24 = *(a1 + 16);
      if (v24)
      {
        v25 = __s1;
        v199 = 0u;
        v198 = 0u;
        v197 = 0u;
        memset(__strerrbuf, 0, sizeof(__strerrbuf));
        if (off_1EE341B28(*(a1 + 56), __strerrbuf))
        {
          LODWORD(v24) = 1;
        }

        else
        {
          LODWORD(v24) = *&__strerrbuf[8] != *(*(a1 + 16) + 8);
        }

        __s1 = v25;
      }

      v4 = 0;
      *__s1 = v24;
      return v4;
    case 34:
      v4 = 0;
      v22 = *(a1 + 132);
      v23 = *__s1;
      if (*__s1 >= 0x7FFFFFFFu)
      {
        v23 = 0x7FFFFFFF;
      }

      *(a1 + 132) = v23;
      *__s1 = v22;
      return v4;
    case 40:
      *__s1 = 0;
      v11 = *(a1 + 64);
      if (!v11)
      {
        return 0;
      }

      v12 = __s1;
      v13 = *v11;
      *&__strerrbuf[16] = 0x300000000;
      *__strerrbuf = xmmword_181A1FE80;
      v14 = *(v13 + 8);
      if (v14)
      {
        xmmword_1ED452F18(v14);
      }

      v15 = *(v13 + 24);
      v16 = off_1EE341B70(v15, 92);
      if (v16 != -1)
      {
        goto LABEL_27;
      }

      if (*__error() != 45 && *__error() != 25)
      {
        goto LABEL_132;
      }

      v16 = off_1EE341B70(v15, 7);
LABEL_27:
      if ((v16 & 0x80000000) == 0)
      {
        v4 = 0;
        *v12 = *&__strerrbuf[20] != 2;
      }

      else
      {
LABEL_132:
        v4 = 3850;
      }

      v58 = *(v13 + 8);
      if (v58)
      {
        xmmword_1ED452F28(v58);
      }

      return v4;
    case 43:
      off_1EE341AE0(*(a1 + 24));
      v4 = 0;
      *(a1 + 24) = -1;
      return v4;
    case 44:
      v4 = 0;
      *(a1 + 136) = *__s1;
      return v4;
    case 101:
      v42 = 0;
      if (__s1)
      {
        goto LABEL_98;
      }

      v189 = 0;
      LOBYTE(v43) = 0;
      goto LABEL_99;
    case 102:
      if (!__s1)
      {
        v47 = "NULL";
LABEL_181:
        v4 = 21;
        sqlite3_log(21, "API call with %s database connection pointer", v47);
        return v4;
      }

      v35 = __s1;
      v36 = sub_181901A08(__s1);
      v37 = v35;
      if (!v36)
      {
        goto LABEL_142;
      }

      v38 = *(**(*(*(v35 + 4) + 8) + 8) + 320);
      if (v38 && (v40 = *v38, v38 += 2, (v39 = v40) != 0))
      {
        v41 = *(a1 + 176);
      }

      else
      {
        v41 = *(a1 + 176);
        if (v41 < 1)
        {
          goto LABEL_142;
        }

        v39 = 0;
      }

      if (v39 == v41)
      {
        v59 = memcmp(v38, *(a1 + 184), v41);
        v37 = v35;
        if (!v59)
        {
LABEL_142:
          v193 = 0;
          errmsg = 0;
          v60 = v37[113];
          if (v60 == 186)
          {
LABEL_145:
            v47 = "unopened";
            goto LABEL_181;
          }

          if (v60 != 118)
          {
            if (v60 != 109)
            {
              v47 = "invalid";
              goto LABEL_181;
            }

            goto LABEL_145;
          }

          memset(&v192, 0, sizeof(v192));
          v75 = *(*(v37 + 4) + 8);
          if (v75)
          {
            v76 = **(v75 + 8);
            if (*(v76 + 19) || *v76 == &unk_1ED453A78)
            {
              v77 = &unk_181A20D35;
            }

            else
            {
              v77 = *(v76 + 216);
            }
          }

          else
          {
            v77 = 0;
          }

          v94 = sub_18192C3D8();
          if (v94 && (v95 = v94, v96 = strlen(v94), v96 > 0))
          {
            if (stat(*(a1 + 56), &v192))
            {
              v97 = *__error() == 2;
            }

            else
            {
              v97 = v192.st_size == 0;
            }

            v114 = v97;
            if (*a1 == &unk_1EEF8FD48)
            {
              v115 = *(a1 + 124) | 0x20;
            }

            else
            {
              v115 = *(a1 + 124);
            }

            v116 = sub_18192E914(a1, v115, &errmsg);
            if (!v116)
            {
              LODWORD(v118) = 0;
              v120 = *(errmsg + 2) != 0;
              v188 = 1;
              goto LABEL_324;
            }

            v4 = v116;
            if (v116 == 26 || v116 == 11)
            {
              v118 = *(a1 + 28);
              if (v118 <= 3 && (v119 = (*(*a1 + 56))(a1, 1), v119) || (v119 = (*(*a1 + 56))(a1, 4), v119))
              {
                v4 = v119;
                if (*(a1 + 28) > v118)
                {
                  (*(*a1 + 64))(a1, v118);
                }

                return v4;
              }

              v188 = 0;
              v120 = -1;
LABEL_324:
              v121 = v35;
              v122 = *(v35 + 3);
              if (v122)
              {
                v117.n128_f64[0] = xmmword_1ED452F18(v122);
                v121 = v35;
              }

              v185 = v115;
              if (*(v121 + 10) < 1 || (v123 = *(*(v121 + 4) + 8)) == 0)
              {
                v131 = 0;
                v132 = 0;
                v133 = 0;
                v186 = 0;
                v190 = 0;
                v134 = 1;
LABEL_376:
                v4 = 2;
LABEL_377:
                v141 = -1;
                v142 = v193;
                if (!v193)
                {
                  goto LABEL_379;
                }

                goto LABEL_378;
              }

              v190 = *(*(v121 + 4) + 8);
              if (*(v123 + 17))
              {
                ++*(v123 + 20);
                if (!*(v123 + 18))
                {
                  sub_181932DEC(v123);
                  v123 = v190;
                }
              }

              v183 = v120;
              v124 = *(**(v123 + 8) + 72);
              if (!*v124)
              {
                v131 = 0;
                v132 = 0;
                v133 = 0;
                v186 = 0;
LABEL_375:
                v134 = 0;
                goto LABEL_376;
              }

              v125 = 1;
              if ((*(v124 + 120) & 2) != 0)
              {
                v126 = 2;
              }

              else
              {
                v126 = 1;
              }

              v127 = v126 | *(v124 + 124);
              if (*v124 == &unk_1EEF8FD48)
              {
                v128 = v127 | 0x20;
              }

              else
              {
                v128 = v127;
              }

              v184 = v124;
              v182 = v128;
              v129 = sub_18188D94C(*(v124 + 56), &v193, v128, 0);
              if (v129)
              {
                v4 = v129;
                LODWORD(v130) = 0;
                v186 = 0;
                v181 = -1;
LABEL_371:
                if ((*(v184 + 24) & 0x80000000) == 0)
                {
                  __fd = *(v184 + 24);
                  if (v4)
                  {
                    v131 = 0;
                    v132 = 0;
                    v133 = 0;
                    v134 = 0;
                    goto LABEL_377;
                  }

                  if (v125)
                  {
                    v176 = 0;
                    v177 = 0;
                    __dst = 0;
                    LODWORD(v4) = 0;
                    v150 = -1;
                    v178 = -1;
                    goto LABEL_435;
                  }

                  __buf[0] = 0;
                  v151 = malloc_type_calloc(1uLL, (v96 + 25), 0x100004077774924uLL);
                  strlcpy(v151, v95, (v96 + 25));
                  __dst = v151;
                  if (v151[(v96 & 0x7FFFFFFF) - 1] != 47)
                  {
                    strlcat(v151, "/", (v96 + 25));
                  }

                  strlcat(v151, "tmpsqlitereplacedbXXXXXX", (v96 + 25));
                  v150 = mkstemp(v151);
                  if (v150 == -1)
                  {
                    v176 = 0;
                    v177 = 0;
                    *(a1 + 32) = *__error();
                    v178 = -1;
                    LODWORD(v4) = 10;
                    goto LABEL_435;
                  }

                  v152 = (v96 + 30);
                  v153 = malloc_type_calloc(1uLL, v152, 0x100004077774924uLL);
                  strlcpy(v153, __dst, v152);
                  v177 = v153;
                  strlcat(v153, "-wal", v152);
                  v154 = malloc_type_calloc(1uLL, v152, 0x100004077774924uLL);
                  strlcpy(v154, __dst, v152);
                  v176 = v154;
                  strlcat(v154, "-shm", v152);
                  lseek(__fd, 0, 0);
                  lseek(v150, 0, 0);
                  if (fcopyfile(__fd, v150, 0, 8u))
                  {
                    v155 = *__error();
                    if (v155 == 12)
                    {
                      LODWORD(v4) = 7;
                    }

                    else
                    {
                      *(a1 + 32) = v155;
                      LODWORD(v4) = 10;
                    }

                    fsync(v150);
                    v178 = -1;
                    goto LABEL_433;
                  }

                  fsync(v150);
                  __strlcpy_chk();
                  __strlcat_chk();
                  v156 = sub_18192ACE0(__strerrbuf, 0, 0, 0, 0);
                  if ((v156 & 0x80000000) != 0)
                  {
                    if (*__error() == 2)
                    {
                      v178 = -1;
                      goto LABEL_475;
                    }

                    *(a1 + 32) = *__error();
                    v178 = -1;
                  }

                  else
                  {
                    v157 = v156;
                    v178 = sub_18192ACE0(v177, 1538, 0, 0, 0);
                    if ((v178 & 0x80000000) == 0)
                    {
                      lseek(v178, 0, 0);
                      lseek(v157, 0, 0);
                      v158 = sub_18192EF28(v157, v178);
                      if (v158)
                      {
                        v159 = *__error();
                        if (v159 == 12)
                        {
                          LODWORD(v4) = 7;
                        }

                        else
                        {
                          *(a1 + 32) = v159;
                          LODWORD(v4) = 10;
                        }
                      }

                      else
                      {
                        LODWORD(v4) = 0;
                      }

                      fsync(v178);
                      off_1EE341AE0(v157);
                      if (v158)
                      {
LABEL_433:
                        if (__buf[0])
                        {
                          sub_181914B98(__buf[0], 0);
                        }

                        goto LABEL_435;
                      }

LABEL_475:
                      v166 = sub_18188D94C(__dst, __buf, v182 & 0xFFFFFFFC | 2, 0);
                      if (v166)
                      {
                        LODWORD(v4) = v166;
                        goto LABEL_433;
                      }

                      pStmt = 0;
                      sqlite3_busy_timeout(__buf[0], *(v35 + 193));
                      if (!sub_1818954B4(v35, "PRAGMA main.cache_size", 0xFFFFFFFFLL, 0, 0, &pStmt, 0))
                      {
                        v174 = sqlite3_step(pStmt);
                        if (v174 == 100)
                        {
                          v167 = sqlite3_column_int(pStmt, 0);
                          sqlite3_finalize(pStmt);
                          if (v167 < 1)
                          {
                            goto LABEL_482;
                          }

                          goto LABEL_479;
                        }

                        sqlite3_finalize(pStmt);
                        if (!v174)
                        {
                          goto LABEL_482;
                        }
                      }

                      v167 = 256;
LABEL_479:
                      v168 = sqlite3_mprintf("PRAGMA cache_size=%d", v167);
                      sub_1818954B4(__buf[0], v168, 0xFFFFFFFFLL, 128, 0, &pStmt, 0);
                        ;
                      }

                      sqlite3_finalize(pStmt);
                      sqlite3_free(v168);
LABEL_482:
                      if (sub_1818954B4(v35, "PRAGMA main.cache_spill", 0xFFFFFFFFLL, 0, 0, &pStmt, 0))
                      {
LABEL_483:
                        v169 = 0;
                        goto LABEL_484;
                      }

                      v175 = sqlite3_step(pStmt);
                      if (v175 == 100)
                      {
                        v169 = sqlite3_column_int(pStmt, 0);
                        sqlite3_finalize(pStmt);
                        if ((v169 & 0x80000000) == 0)
                        {
LABEL_484:
                          v170 = sqlite3_mprintf("PRAGMA cache_spill=%d", v169);
                          sub_1818954B4(__buf[0], v170, 0xFFFFFFFFLL, 128, 0, &pStmt, 0);
                            ;
                          }

                          sqlite3_finalize(pStmt);
                          sqlite3_free(v170);
                        }
                      }

                      else
                      {
                        sqlite3_finalize(pStmt);
                        if (v175)
                        {
                          goto LABEL_483;
                        }
                      }

                      v171 = sqlite3_exec(__buf[0], "BEGIN DEFERRED; PRAGMA schema_version; COMMIT;", 0, 0, 0);
                      if (v181 == v183)
                      {
                        LODWORD(v4) = v171;
                        v172 = 1;
                      }

                      else
                      {
                        v172 = v183 != 0;
                        if (v183)
                        {
                          v173 = "PRAGMA journal_mode=WAL";
                        }

                        else
                        {
                          v173 = "PRAGMA journal_mode=DELETE";
                        }

                        LODWORD(v4) = sqlite3_exec(__buf[0], v173, 0, 0, 0);
                      }

                      if (v193)
                      {
                        sub_181914B98(__buf[0], 0);
                        __buf[0] = 0;
                      }

                      else
                      {
                        v193 = __buf[0];
                        sqlite3_exec(__buf[0], "BEGIN DEFERRED; PRAGMA schema_version;", 0, 0, 0);
                      }

                      if (!v172)
                      {
                        if ((v178 & 0x80000000) == 0)
                        {
                          off_1EE341AE0(v178);
                          v178 = -1;
                        }

                        unlink(v177);
                        free(v177);
                        unlink(v176);
                        free(v176);
                        v176 = 0;
                        v177 = 0;
                      }

                      if (!v4)
                      {
                        __fd = v150;
                      }

LABEL_435:
                      if (v193)
                      {
                        v4 = v4;
                      }

                      else
                      {
                        v4 = 2;
                      }

                      if (v4)
                      {
                        goto LABEL_465;
                      }

                      __strlcpy_chk();
                      __strlcat_chk();
                      if ((v178 & 0x80000000) != 0 && (v178 = sub_18192ACE0(__strerrbuf, 0, 0, 0, 0), (v178 & 0x80000000) != 0))
                      {
                        v161 = 0;
                      }

                      else
                      {
                        LODWORD(pStmt) = -1;
                        __strlcpy_chk();
                        __strlcat_chk();
                        v160 = sub_18192F4B0(__buf, *(a1 + 124), &pStmt);
                        if (v160)
                        {
                          v4 = v160;
                          off_1EE341AE0(v178);
                          v161 = 1;
                          goto LABEL_460;
                        }

                        lseek(v178, 0, 0);
                        v162 = pStmt;
                        lseek(pStmt, 0, 0);
                        v163 = sub_18192EF28(v178, v162);
                        if (v163)
                        {
                          v164 = *__error();
                          if (v164 == 12)
                          {
                            v4 = 7;
                          }

                          else
                          {
                            *(a1 + 32) = v164;
                            v4 = 10;
                          }
                        }

                        else
                        {
                          v4 = 0;
                        }

                        fsync(v162);
                        off_1EE341AE0(v162);
                        off_1EE341AE0(v178);
                        v161 = 1;
                        if (v163)
                        {
LABEL_460:
                          if (v186)
                          {
                            sub_18192F410(v184, v130);
                          }

                          else
                          {
                            sqlite3_exec(v193, "COMMIT", 0, 0, 0);
                          }

                          if (!v4)
                          {
                            sub_18192F13C(a1, v161);
                            (*(*a1 + 40))(a1, 3);
                          }

LABEL_465:
                          if ((v150 & 0x80000000) == 0)
                          {
                            close(v150);
                          }

                          v134 = 0;
                          v131 = __dst;
                          v133 = v176;
                          v132 = v177;
                          v141 = v178;
                          v142 = v193;
                          if (!v193)
                          {
LABEL_379:
                            if (v131)
                            {
                              unlink(v131);
                              free(v131);
                            }

                            if (v132)
                            {
                              unlink(v132);
                              free(v132);
                            }

                            if (v133)
                            {
                              unlink(v133);
                              free(v133);
                            }

                            if ((v134 & 1) == 0)
                            {
                              if (*(v190 + 17))
                              {
                                v143 = *(v190 + 20) - 1;
                                *(v190 + 20) = v143;
                                if (!v143)
                                {
                                  sub_181932ECC(v190);
                                }
                              }
                            }

                            v144 = *(v35 + 3);
                            if (v144)
                            {
                              v117.n128_f64[0] = xmmword_1ED452F28(v144);
                            }

                            if ((v188 & 1) == 0)
                            {
                              v147 = *(a1 + 28);
                              if (v118 < v147)
                              {
                                (*(*a1 + 64))(a1, 1, v117);
                                v147 = *(a1 + 28);
                              }

                              if (v147 > v118)
                              {
                                (*(*a1 + 64))(a1, 0);
                              }

                              goto LABEL_405;
                            }

                            v145 = errmsg;
                            if (*(errmsg + 2))
                            {
                              __buf[0] = 0;
                              if (!sqlite3_file_control(*errmsg, "main", 7, __buf))
                              {
                                (*(*__buf[0] + 112))(__buf[0], 2, 1, 9);
                                (*(*__buf[0] + 112))(__buf[0], 3, 5, 9);
                              }
                            }

                            sub_181914B98(*v145, 0);
                            v146 = &off_1ED452EB0;
                            if (dword_1ED452E80)
                            {
                              if (xmmword_1ED456AF0)
                              {
                                xmmword_1ED452F18(xmmword_1ED456AF0);
                              }

                              qword_1ED456A48[0] -= xmmword_1ED452EC0(v145);
                              --qword_1ED456A90;
                              off_1ED452EB0(v145);
                              v145 = xmmword_1ED456AF0;
                              if (!xmmword_1ED456AF0)
                              {
                                goto LABEL_405;
                              }

                              v146 = &xmmword_1ED452F28;
                            }

                            (*v146)(v145);
LABEL_405:
                            if (!(v186 | v4) && (v141 & 0x80000000) == 0)
                            {
                              __buf[0] = 0;
                              if (!sub_18188D94C(*(a1 + 56), __buf, v185 | 6u, 0))
                              {
                                sqlite3_busy_timeout(__buf[0], *(v35 + 193));
                                sqlite3_exec(__buf[0], "PRAGMA schema_version", 0, 0, 0);
                              }

                              if (__buf[0])
                              {
                                sub_181914B98(__buf[0], 0);
                              }
                            }

                            if (v4)
                            {
                              v148 = *(a1 + 56);
                              if (!v148)
                              {
                                v148 = "<dst path null>";
                              }

                              v149 = "<src path null>";
                              if (v77)
                              {
                                v149 = v77;
                              }

                              sqlite3_log(1, "unixReplaceDatabase() failed with error %d for replacing '%s' with '%s' \n", v4, v148, v149);
                            }

                            return v4;
                          }

LABEL_378:
                          sub_181914B98(v142, 0);
                          v193 = 0;
                          goto LABEL_379;
                        }
                      }

                      LODWORD(__buf[0]) = 0;
                      LODWORD(pStmt) = 0;
                      pread(__fd, __buf, 4uLL, 24);
                      pread(*(a1 + 24), &pStmt, 4uLL, 24);
                      lseek(__fd, 0, 0);
                      lseek(*(a1 + 24), 0, 0);
                      if (sub_18192EF28(__fd, *(a1 + 24)))
                      {
                        v165 = *__error();
                        if (v165 == 12)
                        {
                          v4 = 7;
                        }

                        else
                        {
                          *(a1 + 32) = v165;
                          v4 = 10;
                        }
                      }

                      else
                      {
                        v4 = 0;
                      }

                      if (LODWORD(__buf[0]) == pStmt)
                      {
                        LODWORD(pStmt) = LODWORD(__buf[0]) + 1;
                        off_1EE341BE8(*(a1 + 24), &pStmt, 4uLL, 24);
                      }

                      goto LABEL_460;
                    }

                    if (*__error() == 2)
                    {
                      off_1EE341AE0(v157);
                      goto LABEL_475;
                    }

                    *(a1 + 32) = *__error();
                    off_1EE341AE0(v157);
                  }

                  LODWORD(v4) = 10;
                  goto LABEL_433;
                }

                v131 = 0;
                v132 = 0;
                v133 = 0;
                goto LABEL_375;
              }

              __buf[0] = 0;
              v135 = sqlite3_file_control(v193, 0, 7, __buf);
              if (__buf[0])
              {
                v136 = v135 == 0;
              }

              else
              {
                v136 = 0;
              }

              if (v136)
              {
                v137 = __buf[0];
              }

              else
              {
                v137 = v184;
              }

              v138 = sub_18192EE6C(v137);
              v181 = v138 == 1;
              sqlite3_busy_timeout(v193, *(v35 + 193));
              v4 = sqlite3_exec(v193, "BEGIN DEFERRED; PRAGMA schema_version", 0, 0, 0);
              if (v4 == 14 && v138 == 1)
              {
                sub_181914B98(v193, 0);
                v193 = 0;
                v4 = sub_18188D94C(*(v184 + 56), &v193, v182 & 0xFFFFFFFC | 2, 0);
                if (!v4)
                {
                  sqlite3_busy_timeout(v193, *(v35 + 193));
                  v4 = sqlite3_exec(v193, "BEGIN DEFERRED; PRAGMA schema_version", 0, 0, 0);
                }
              }

              if (v138 == 1 && v4 == 14)
              {
                if (v193)
                {
                  sub_181914B98(v193, 0);
                  LODWORD(v130) = 0;
                  v186 = 0;
                  v4 = 0;
                  v193 = 0;
                }

                else
                {
                  LODWORD(v130) = 0;
                  v186 = 0;
                  v4 = 0;
                }

                v139 = 1;
                goto LABEL_370;
              }

              v140 = v188;
              if (v183 == v181)
              {
                v140 = 0;
              }

              v139 = (v114 ^ 1) & v140;
              if (v4 == 26 || v4 == 11)
              {
                v130 = *(v184 + 28);
                if (*(v184 + 28))
                {
                  v4 = 0;
                }

                else
                {
                  v186 = 1;
                  v4 = (*(*v184 + 56))(v184, 1);
                  if (!v4)
                  {
                    LODWORD(v130) = 0;
                    goto LABEL_370;
                  }

                  if (*(v184 + 28))
                  {
                    (*(*v184 + 64))(v184, v130);
                  }

                  LODWORD(v130) = 0;
                }

                v186 = 1;
              }

              else
              {
                LODWORD(v130) = 0;
                v186 = 0;
              }

LABEL_370:
              v125 = v139 ^ 1;
              goto LABEL_371;
            }
          }

          else
          {
            sqlite3_log(1, "Replace database failed because TMPDIR is not set correctly\n");
            return 3;
          }

          return v4;
        }
      }

      sqlite3_log(21, "Replacement SPI only supports encrypted databases when keys match");

      return sub_1819012D0(47534);
    case 103:
      if (!__s1)
      {
        return 21;
      }

      v9 = *__s1;
      v8 = (__s1 + 4);
      v7 = v9;

      return sub_18192BF40(a1, v7, v8);
    case 104:
      sub_18192C2A4();
      return 12;
    case 106:
      if (!a1 || !*a1 || *(*a1 + 16) != sub_181893698 || *(a1 + 128) > 3u)
      {
        return 1;
      }

      sub_18192A824((a1 + 160));
      return 0;
    case 107:
      v4 = 0;
      *(a1 + 176) = *__s1;
      return v4;
    case 108:
      v4 = 0;
      *(a1 + 184) = __s1;
      return v4;
    case 204:
      v4 = 0;
      *__s1 = HIBYTE(*(a1 + 30)) & 1;
      return v4;
    default:
      return v4;
  }
}

uint64_t sub_1818F50DC(void *a1, int a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a4 + 1) = 0u;
  *(a4 + 2) = 0u;
  *a4 = 0u;
  if (!a2)
  {
    if (!sub_18199C428(a1))
    {
      return 1;
    }

    v15 = a1[3];
    v18 = *(v15 + 72);
    v17 = (v15 + 72);
    v16 = v18;
    if (v18)
    {
      goto LABEL_9;
    }

    v36 = **(*a1 + 24);
    if (*v36 >= 2 && (v37 = *(v36 + 136)) != 0)
    {
      if (!v37())
      {
LABEL_48:
        v16 = *v17;
LABEL_9:
        *a4 = v16;
        result = 1;
        if (v16 >= 1)
        {
          *(a4 + 20) = 1;
          *(a4 + 44) = *(a4 + 44) & 0xE7 | 8;
          *(a4 + 42) = 0;
          *(a4 + 7) = 0;
          return 0;
        }

        return result;
      }
    }

    else
    {
      *v216 = 0;
      v38 = (*(v36 + 120))(v36, v216);
      *v17 = (*v216 * 86400000.0);
      if (!v38)
      {
        goto LABEL_48;
      }
    }

    *v17 = 0;
    goto LABEL_51;
  }

  v10 = a3;
  v12 = *a3;
  if (*a3)
  {
    v13 = *(v12 + 20);
    if (byte_181A203AA[v13 & 0x3F] - 1 <= 1)
    {
      if ((v13 & 8) != 0)
      {
        v14 = *v12;
      }

      else if ((v13 & 0x24) != 0)
      {
        v14 = *v12;
      }

      else if ((v13 & 0x12) != 0)
      {
        v14 = sub_18193CF90(v12);
      }

      else
      {
        v14 = 0.0;
      }

      v211 = a1;
      *(a4 + 4) = v14;
      *(a4 + 44) |= 1u;
      if (v14 >= 0.0 && v14 < 5373484.5)
      {
        *a4 = (v14 * 86400000.0 + 0.5);
        *(a4 + 40) = 1;
      }

      goto LABEL_100;
    }
  }

  else
  {
    sub_1819012D0(99877);
    v12 = *v10;
    if (!*v10)
    {
      return 1;
    }
  }

  v20 = *(v12 + 20);
  if ((~v20 & 0x202) != 0 || *(v12 + 22) != 1)
  {
    if (v20)
    {
      return 1;
    }

    v21 = sub_18193CB70(v12, 1, a3, a4);
    if (!v21)
    {
      return 1;
    }
  }

  else
  {
    v21 = *(v12 + 8);
    if (!v21)
    {
      return 1;
    }
  }

  *v216 = 0;
  v215 = 0;
  v22 = *v21;
  if (v22 == 45)
  {
    v23 = v21 + 1;
  }

  else
  {
    v23 = v21;
  }

  if (sub_18199C770(v23, "40f-21a-21d", a3, a4, a5, a6, a7, a8, v216) != 3)
  {
    goto LABEL_30;
  }

  v24 = &v21[(v22 == 45) + 9];
  do
  {
    v25 = *++v24;
    v26 = byte_181A204C8[v25] & 1;
  }

  while (v25 == 84 || v26 != 0);
  if (!sub_18199C570(v24, a4, a3, a4, a5, a6, a7, a8))
  {
LABEL_59:
    *(a4 + 20) = 256;
    v41 = HIDWORD(v215);
    if (v22 == 45)
    {
      v42 = -*v216;
    }

    else
    {
      v42 = *v216;
    }

    *(a4 + 2) = v42;
    *(a4 + 3) = v41;
    v43 = v215;
    *(a4 + 4) = v215;
    v44 = v43 - 29;
    if (v43 < 29 || ((1 << v41) & 0x15AA) != 0)
    {
      v44 = 0;
    }

    else if (v41 == 2)
    {
      if ((v42 & 3) != 0 || ((HIDWORD(v53) = -1030792151 * v42 + 85899344, LODWORD(v53) = HIDWORD(v53), (v53 >> 2) <= 0x28F5C28) ? (v54 = v42 % 400 == 0) : (v54 = 1), !v54))
      {
        v44 = v43 - 28;
      }
    }

    else
    {
      v44 = v43 == 31;
    }

    *(a4 + 43) = v44;
    if (*(a4 + 7))
    {
      sub_18199C28C(a4);
    }

    goto LABEL_99;
  }

  if (!*v24)
  {
    *(a4 + 42) = 0;
    goto LABEL_59;
  }

LABEL_30:
  if (!sub_18199C570(v21, a4, a3, a4, a5, a6, a7, a8))
  {
    goto LABEL_99;
  }

  for (i = 0; v21[i] != aNow[i]; ++i)
  {
    if (byte_181A20298[v21[i]] != byte_181A20298[aNow[i]])
    {
      goto LABEL_52;
    }

LABEL_33:
    ;
  }

  if (v21[i])
  {
    goto LABEL_33;
  }

  if (sub_18199C428(a1))
  {
    v29 = a1[3];
    v32 = *(v29 + 72);
    v31 = (v29 + 72);
    v30 = v32;
    if (v32)
    {
      goto LABEL_97;
    }

    v33 = **(*a1 + 24);
    if (*v33 >= 2 && (v34 = *(v33 + 136)) != 0)
    {
      v35 = v34();
    }

    else
    {
      *v216 = 0;
      v35 = (*(v33 + 120))(v33, v216);
      *v31 = (*v216 * 86400000.0);
    }

    if (!v35)
    {
      goto LABEL_96;
    }

    goto LABEL_92;
  }

LABEL_52:
  v217[0] = 0.0;
  v39 = strlen(v21);
  if (sub_1818E6334(v21, v217, v39 & 0x3FFFFFFF, 1) > 0)
  {
    v40 = v217[0];
    a4[4] = *&v217[0];
    *(a4 + 44) |= 1u;
    if (v40 >= 0.0 && v40 < 5373484.5)
    {
      *a4 = (v40 * 86400000.0 + 0.5);
      *(a4 + 40) = 1;
    }

    goto LABEL_99;
  }

  v45 = "subsec";
  v46 = v21;
  while (2)
  {
    if (*v46 != *v45)
    {
      if (byte_181A20298[*v46] != byte_181A20298[*v45])
      {
        for (j = "subsecond"; ; ++j)
        {
          if (*v21 == *j)
          {
            if (!*v21)
            {
              goto LABEL_77;
            }
          }

          else if (byte_181A20298[*v21] != byte_181A20298[*j])
          {
            return 1;
          }

          ++v21;
        }
      }

      goto LABEL_69;
    }

    if (*v46)
    {
LABEL_69:
      ++v46;
      ++v45;
      continue;
    }

    break;
  }

LABEL_77:
  if (!sub_18199C428(a1))
  {
    return 1;
  }

  *(a4 + 44) |= 4u;
  v48 = a1[3];
  v49 = *(v48 + 72);
  v31 = (v48 + 72);
  v30 = v49;
  if (!v49)
  {
    v50 = **(*a1 + 24);
    if (*v50 >= 2 && (v51 = *(v50 + 136)) != 0)
    {
      v52 = v51();
    }

    else
    {
      *v216 = 0;
      v52 = (*(v50 + 120))(v50, v216);
      *v31 = (*v216 * 86400000.0);
    }

    if (!v52)
    {
LABEL_96:
      v30 = *v31;
      goto LABEL_97;
    }

LABEL_92:
    *v31 = 0;
LABEL_51:
    *a4 = 0;
    return 1;
  }

LABEL_97:
  *a4 = v30;
  if (v30 < 1)
  {
    return 1;
  }

  *(a4 + 20) = 1;
  *(a4 + 44) = *(a4 + 44) & 0xE7 | 8;
  *(a4 + 42) = 0;
  *(a4 + 7) = 0;
LABEL_99:
  v211 = a1;
LABEL_100:
  v212 = a2;
  if (a2 < 2)
  {
LABEL_456:
    sub_18199C28C(a4);
    if ((*(a4 + 44) & 2) != 0 || *a4 > 0x1A6401072FDFFLL)
    {
      return 1;
    }

    if (v212 != 1 || !*(a4 + 41) || *(a4 + 4) < 29)
    {
      return 0;
    }

    result = 0;
    *(a4 + 41) = 0;
    return result;
  }

  v55 = 0x1000007D0;
  v56 = -122.1;
  v57 = -2.1086676e11;
  v58 = 2.53402301e11;
  v59 = 2.1086676e14;
  v60 = 4.64269061e14;
  v61 = 0.5;
  v62 = 1;
  v213 = v10;
LABEL_102:
  v63 = v10[v62];
  if (!v63)
  {
    v65 = 0;
    goto LABEL_113;
  }

  v64 = *(v63 + 20);
  if ((~v64 & 0x202) != 0 || *(v63 + 22) != 1)
  {
    if (v64)
    {
      v65 = 0;
      v66 = *(v63 + 20);
      if ((v66 & 2) != 0)
      {
        goto LABEL_115;
      }

LABEL_110:
      if ((v66 & 0x11) != 0)
      {
        goto LABEL_121;
      }

      goto LABEL_120;
    }

    v65 = sub_18193CB70(v63, 1, a3, a4);
    v63 = v10[v62];
    if (v63)
    {
      v66 = *(v63 + 20);
      if ((v66 & 2) != 0)
      {
        goto LABEL_115;
      }

      goto LABEL_110;
    }

LABEL_113:
    sub_1819012D0(93690);
    goto LABEL_121;
  }

  v65 = *(v63 + 8);
  v66 = *(v63 + 20);
  if ((v66 & 2) == 0)
  {
    goto LABEL_110;
  }

LABEL_115:
  v67 = v66 & 0x11;
  if (*(v63 + 22) != 1 && v67 == 0)
  {
LABEL_120:
    sub_18193CB44(v63, 1, a3, a4);
  }

LABEL_121:
  if (!v65)
  {
    return 1;
  }

  v217[0] = 0.0;
  v69 = *v65;
  v70 = byte_181A20298[*v65];
  if (v70 <= 0x60)
  {
    if (v70 - 48 >= 0xA && v70 != 43 && v70 != 45)
    {
      return 1;
    }

    v214 = 0;
    v215 = 0;
    for (k = 1; ; ++k)
    {
      v72 = v65[k];
      if (!v65[k] || v72 == 58 || (byte_181A204C8[v65[k]] & 1) != 0)
      {
        v73 = k;
        goto LABEL_136;
      }

      if (v72 == 45)
      {
        if (k == 6)
        {
          if (sub_18199C770(v65 + 1, "50f", a3, a4, a5, a6, a7, a8, &v215 + 4) == 1)
          {
            v73 = 6;
LABEL_136:
            v74 = 1;
            if (sub_1818E6334(v65, v217, v73, 1) >= 1)
            {
              if (v65[k] != 45)
              {
                v81 = v65;
                goto LABEL_174;
              }

              if (v69 == 45 || v69 == 43)
              {
                if (v73 == 5)
                {
                  v75 = sub_18199C770(v65 + 1, "40f-20a-20d", a3, a4, a5, a6, a7, a8, &v215 + 4);
                }

                else
                {
                  v75 = sub_18199C770(++v65, "50f-20a-20d", a3, a4, a5, a6, a7, a8, &v215 + 4);
                }

                if (v75 == 3)
                {
                  v103 = v215;
                  if (v215 <= 11)
                  {
                    v104 = HIDWORD(v214);
                    if (SHIDWORD(v214) <= 30)
                    {
                      if (*(a4 + 41))
                      {
                        goto LABEL_336;
                      }

                      if (*(a4 + 40))
                      {
                        if (*a4 > 0x1A6401072FDFFLL)
                        {
                          *(a4 + 1) = 0u;
                          *(a4 + 2) = 0u;
                          *a4 = 0u;
                          *(a4 + 44) |= 2u;
                          goto LABEL_336;
                        }

                        v143 = (*a4 + 43200000) / 0x5265C00uLL;
                        v144 = ((v143 + 32044.75) / 36524.25);
                        v145 = v144 + 48;
                        if (v144 < -48)
                        {
                          v145 = v144 + 51;
                        }

                        v146 = v143 + v144 - (v145 >> 2) + 1498;
                        v147 = ((v146 + v56) / 365.25);
                        v148 = v146 - 36525 * (v147 & 0x7FFFu) / 0x64;
                        v149 = (v148 / 30.6001);
                        v150 = v148 - (v149 * 30.6001);
                        if (v149 < 14)
                        {
                          v151 = -1;
                        }

                        else
                        {
                          v151 = -13;
                        }

                        v152 = v151 + v149;
                        *(a4 + 3) = v152;
                        *(a4 + 4) = v150;
                        if (v152 > 2)
                        {
                          v153 = -4716;
                        }

                        else
                        {
                          v153 = -4715;
                        }

                        v141 = v153 + v147;
                        v142 = 1;
                      }

                      else
                      {
                        a4[1] = v55;
                        v141 = 1;
                        v142 = 2;
                      }

                      LODWORD(a4[v142]) = v141;
                      *(a4 + 41) = 1;
LABEL_336:
                      if (!*(a4 + 42))
                      {
                        sub_18199C28C(a4);
                        v154 = (*a4 + 43200000) % 86400000;
                        *(a4 + 4) = (v154 % 60000) / 1000.0;
                        v155 = (34953 * (v154 / 60000)) >> 16;
                        *(a4 + 5) = v154 / 3600000;
                        *(a4 + 6) = (v154 / 60000 - 60 * ((v155 >> 5) + ((v155 & 0x8000) >> 15)));
                        *(a4 + 44) &= ~1u;
                        *(a4 + 42) = 1;
                      }

                      *(a4 + 40) = 0;
                      v157 = *(a4 + 2);
                      v156 = *(a4 + 3);
                      if (v69 == 45)
                      {
                        v158 = v157 - HIDWORD(v215);
                        v159 = v156 - v103;
                        v104 = -v104;
                        HIDWORD(v214) = v104;
                      }

                      else
                      {
                        v158 = v157 + HIDWORD(v215);
                        v159 = v156 + v103;
                      }

                      v160 = (v159 - 1) / 0xCu;
                      if (v159 < 1)
                      {
                        v160 = -((12 - v159) / 0xCu);
                      }

                      v161 = v160 + v158;
                      v162 = v159 - 12 * v160;
                      *(a4 + 2) = v161;
                      *(a4 + 3) = v162;
                      v163 = *(a4 + 4);
                      v164 = v163 - 29;
                      if (v163 < 29 || ((1 << v162) & 0x15AA) != 0)
                      {
                        v164 = 0;
                      }

                      else if (v162 == 2)
                      {
                        if ((v161 & 3) != 0 || (HIDWORD(v165) = -1030792151 * v161 + 85899344, LODWORD(v165) = HIDWORD(v165), (v165 >> 2) <= 0x28F5C28) && v161 % 400)
                        {
                          v164 = v163 - 28;
                        }
                      }

                      else
                      {
                        v164 = v163 == 31;
                      }

                      *(a4 + 43) = v164;
                      sub_18199C28C(a4);
                      *(a4 + 41) = 0;
                      *a4 += 86400000 * v104;
                      if (!v65[11])
                      {
                        v74 = 0;
                        goto LABEL_320;
                      }

                      if ((byte_181A204C8[v65[11]] & 1) == 0)
                      {
                        goto LABEL_320;
                      }

                      v81 = v65 + 12;
                      if (sub_18199C770(v65 + 12, "20c:20e", a3, a4, a5, a6, a7, a8, &v214) != 2)
                      {
                        goto LABEL_224;
                      }

                      v73 = 2;
LABEL_174:
                      if (v81[v73] == 58)
                      {
                        v82 = *v81 - 58;
                        memset(&v216[16], 0, 32);
                        if (v82 < 0xFFFFFFFFFFFFFFF6)
                        {
                          v83 = v81 + 1;
                        }

                        else
                        {
                          v83 = v81;
                        }

                        *v216 = 0uLL;
                        if (!sub_18199C570(v83, v216, a3, a4, a5, a6, a7, a8))
                        {
                          sub_18199C28C(v216);
                          if (v69 == 45)
                          {
                            v84 = -((*v216 - 43200000) % 86400000);
                          }

                          else
                          {
                            v84 = (*v216 - 43200000) % 86400000;
                          }

                          sub_18199C28C(a4);
                          v74 = 0;
                          *(a4 + 41) = 0;
                          *(a4 + 7) = 0;
                          *a4 += v84;
                          goto LABEL_320;
                        }

LABEL_224:
                        v74 = 1;
                        goto LABEL_320;
                      }

                      v100 = &v65[v73 - 1];
                      do
                      {
                        v101 = *++v100;
                      }

                      while ((byte_181A204C8[v101] & 1) != 0);
                      v102 = strlen(v100) & 0x3FFFFFFF;
                      if (v102 - 11 < 0xFFFFFFF8)
                      {
                        goto LABEL_224;
                      }

                      v119 = 0.5;
                      v210 = v60;
                      v120 = v59;
                      v121 = v55;
                      v122 = v56;
                      v123 = v57;
                      v124 = v58;
                      if ((v100[v102 - 1] & 0xDF) == 0x53)
                      {
                        v125 = v102 - 1;
                      }

                      else
                      {
                        v125 = v102;
                      }

                      sub_18199C28C(a4);
                      v126 = 0;
                      v127 = v217[0];
                      if (v217[0] < 0.0)
                      {
                        v119 = -0.5;
                      }

                      *(a4 + 43) = 0;
                      v128 = "second";
                      while (1)
                      {
                        v133 = (&unk_181A24A24 + 16 * v126);
                        if (v125 == *v133)
                        {
                          v134 = 0;
                          while (1)
                          {
                            v135 = v128[v134];
                            if (!v128[v134])
                            {
                              break;
                            }

                            LODWORD(v135) = byte_181A20298[v135];
                            v136 = byte_181A20298[v100[v134]];
                            if (v135 != v136)
                            {
                              goto LABEL_293;
                            }

                            if (v125 == ++v134)
                            {
                              goto LABEL_281;
                            }
                          }

                          v136 = byte_181A20298[v100[v134]];
LABEL_293:
                          if (v135 != v136)
                          {
                            goto LABEL_285;
                          }

LABEL_281:
                          v129 = v133[2];
                          v130 = -v129;
                          v131 = v129;
                          if (v127 > v130 && v127 < v131)
                          {
                            break;
                          }
                        }

LABEL_285:
                        ++v126;
                        v128 += 16;
                        if (v126 == 6)
                        {
                          v74 = 1;
                          goto LABEL_319;
                        }
                      }

                      if (v126 == 5)
                      {
                        v138 = v127;
                        sub_1818F6EC0(a4);
                        sub_18199CD54(a4);
                        *(a4 + 2) += v127;
                        goto LABEL_317;
                      }

                      if (v126 == 4)
                      {
                        sub_1818F6EC0(a4);
                        sub_18199CD54(a4);
                        v138 = v127;
                        v139 = *(a4 + 3) + v127;
                        if (v139 < 1)
                        {
                          v140 = -((12 - v139) / 0xCu);
                        }

                        else
                        {
                          v140 = (v139 - 1) / 0xCu;
                        }

                        *(a4 + 2) += v140;
                        *(a4 + 3) = v139 - 12 * v140;
LABEL_317:
                        sub_18199C860(a4);
                        *(a4 + 40) = 0;
                        v127 = v127 - v138;
                      }

                      sub_18199C28C(a4);
                      v74 = 0;
                      *a4 += (v119 + v127 * 1000.0 * v133[3]);
LABEL_319:
                      v58 = v124;
                      *(a4 + 41) = 0;
                      *(a4 + 7) = 0;
                      v57 = v123;
                      v56 = v122;
                      v55 = v121;
                      v59 = v120;
                      v60 = v210;
                      v61 = 0.5;
                    }
                  }
                }
              }
            }

LABEL_320:
            v10 = v213;
LABEL_321:
            if (v74)
            {
              return 1;
            }

LABEL_322:
            if (++v62 == v212)
            {
              goto LABEL_456;
            }

            goto LABEL_102;
          }
        }

        else if (k == 5 && sub_18199C770(v65 + 1, "40f", a3, a4, a5, a6, a7, a8, &v215 + 4) == 1)
        {
          v73 = 5;
          goto LABEL_136;
        }
      }
    }
  }

  if (byte_181A20298[*v65] <= 0x6Bu)
  {
    if (byte_181A20298[*v65] <= 0x65u)
    {
      if (v70 != 97)
      {
        if (v70 == 99)
        {
          v76 = v65 + 1;
          for (m = "ceiling"; ; ++m)
          {
            if (v69 == *m)
            {
              if (!v69)
              {
                sub_18199C28C(a4);
                *(a4 + 41) = 0;
                *(a4 + 7) = 0;
                *(a4 + 43) = 0;
                goto LABEL_322;
              }
            }

            else if (byte_181A20298[v69] != byte_181A20298[*m])
            {
              return 1;
            }

            v78 = *v76++;
            v69 = v78;
          }
        }

        return 1;
      }

      v105 = v65 + 1;
      for (n = "auto"; ; ++n)
      {
        if (v69 == *n)
        {
          if (!v69)
          {
            if (v62 <= 1)
            {
              v88 = *(a4 + 44);
              if ((v88 & 1) != 0 && !*(a4 + 40))
              {
                v108 = *(a4 + 4);
                if (v108 < v57 || v108 > v58)
                {
                  goto LABEL_322;
                }

                *(a4 + 42) = 0;
                *(a4 + 7) = 0;
                *a4 = (v59 + v108 * 1000.0 + v61);
                *(a4 + 20) = 1;
              }

LABEL_244:
              *(a4 + 44) = v88 & 0xFE;
              goto LABEL_322;
            }

            return 1;
          }
        }

        else if (byte_181A20298[v69] != byte_181A20298[*n])
        {
          return 1;
        }

        v107 = *v105++;
        v69 = v107;
      }
    }

    if (v70 != 102)
    {
      if (v70 != 106)
      {
        return 1;
      }

      v85 = v65 + 1;
      for (ii = "julianday"; ; ++ii)
      {
        if (v69 == *ii)
        {
          if (!v69)
          {
            if (v62 <= 1)
            {
              if (*(a4 + 40))
              {
                v88 = *(a4 + 44);
                if (v88)
                {
                  goto LABEL_244;
                }
              }
            }

            return 1;
          }
        }

        else if (byte_181A20298[v69] != byte_181A20298[*ii])
        {
          return 1;
        }

        v87 = *v85++;
        v69 = v87;
      }
    }

    v113 = v65 + 1;
    for (jj = "floor"; ; ++jj)
    {
      if (v69 == *jj)
      {
        if (!v69)
        {
          sub_18199C28C(a4);
          v116 = *a4 - 86400000 * *(a4 + 43);
LABEL_402:
          *a4 = v116;
          *(a4 + 41) = 0;
          *(a4 + 7) = 0;
          goto LABEL_322;
        }
      }

      else if (byte_181A20298[v69] != byte_181A20298[*jj])
      {
        return 1;
      }

      v115 = *v113++;
      v69 = v115;
    }
  }

  if (byte_181A20298[*v65] <= 0x74u)
  {
    if (v70 == 108)
    {
      v109 = v65 + 1;
      for (kk = "localtime"; ; ++kk)
      {
        if (v69 == *kk)
        {
          if (!v69)
          {
            if (sub_18199C428(v211))
            {
              v112 = *(a4 + 44);
              if ((v112 & 0x10) != 0)
              {
                v74 = 0;
              }

              else
              {
                v74 = sub_18199C910(a4, v211);
                v112 = *(a4 + 44);
              }

              *(a4 + 44) = v112 & 0xE7 | 0x10;
              goto LABEL_321;
            }

            return 1;
          }
        }

        else if (byte_181A20298[v69] != byte_181A20298[*kk])
        {
          return 1;
        }

        v111 = *v109++;
        v69 = v111;
      }
    }

    if (v70 != 115)
    {
      return 1;
    }

    if (!*v65)
    {
      LODWORD(v79) = 0;
      v80 = "start of ";
      goto LABEL_408;
    }

    v79 = v65[1];
    if (!v65[1])
    {
      v80 = "tart of ";
      goto LABEL_408;
    }

    if ((v79 & 0xFFFFFFDF) != 0x54)
    {
      v80 = "tart of ";
      LODWORD(v79) = byte_181A20298[v79];
      goto LABEL_408;
    }

    v79 = v65[2];
    if (!v65[2])
    {
      v80 = "art of ";
      goto LABEL_408;
    }

    if ((v79 & 0xFFFFFFDF) != 0x41)
    {
      v80 = "art of ";
      LODWORD(v79) = byte_181A20298[v79];
      goto LABEL_408;
    }

    v79 = v65[3];
    if (!v65[3])
    {
      v80 = "rt of ";
      goto LABEL_408;
    }

    if ((v79 & 0xFFFFFFDF) != 0x52)
    {
      v80 = "rt of ";
      LODWORD(v79) = byte_181A20298[v79];
      goto LABEL_408;
    }

    v79 = v65[4];
    if (!v65[4])
    {
      v80 = "t of ";
      goto LABEL_408;
    }

    if ((v79 & 0xFFFFFFDF) != 0x54)
    {
      v80 = "t of ";
      LODWORD(v79) = byte_181A20298[v79];
      goto LABEL_408;
    }

    v79 = v65[5];
    if (!v65[5])
    {
      v80 = " of ";
      goto LABEL_408;
    }

    if (v79 != 32)
    {
      v80 = " of ";
      LODWORD(v79) = byte_181A20298[v79];
      goto LABEL_408;
    }

    v79 = v65[6];
    if (v65[6])
    {
      if ((v79 & 0xFFFFFFDF) == 0x4F)
      {
        v79 = v65[7];
        if (!v65[7])
        {
          v80 = "f ";
          goto LABEL_407;
        }

        if ((v79 & 0xFFFFFFDF) == 0x46)
        {
          v79 = v65[8];
          if (v65[8])
          {
            v61 = 0.5;
            if (v79 != 32)
            {
              v80 = " ";
              LODWORD(v79) = byte_181A20298[v79];
LABEL_408:
              if (v79 != byte_181A20298[*v80])
              {
                v185 = v65 + 1;
                v186 = v65 + 1;
                v187 = *v65;
                for (mm = "subsec"; ; ++mm)
                {
                  if (v187 == *mm)
                  {
                    if (!v187)
                    {
LABEL_423:
                      *(a4 + 44) |= 4u;
                      goto LABEL_322;
                    }
                  }

                  else if (byte_181A20298[v187] != byte_181A20298[*mm])
                  {
                    for (nn = "subsecond"; ; ++nn)
                    {
                      if (v69 == *nn)
                      {
                        if (!v69)
                        {
                          goto LABEL_423;
                        }
                      }

                      else if (byte_181A20298[v69] != byte_181A20298[*nn])
                      {
                        return 1;
                      }

                      v191 = *v185++;
                      v69 = v191;
                    }
                  }

                  v189 = *v186++;
                  v187 = v189;
                }
              }
            }

            if (*(a4 + 40))
            {
              v184 = v65 + 9;
              if (*(a4 + 41))
              {
LABEL_438:
                *(a4 + 42) = 1;
                a4[3] = 0;
                a4[4] = 0;
                *(a4 + 5) = 0;
                *(a4 + 44) &= ~1u;
                *(a4 + 40) = 0;
                v205 = v184;
                for (i1 = "month"; ; ++i1)
                {
                  if (*v205 == *i1)
                  {
                    if (!*v205)
                    {
                      *(a4 + 4) = 1;
                      goto LABEL_322;
                    }
                  }

                  else if (byte_181A20298[*v205] != byte_181A20298[*i1])
                  {
                    v207 = v184;
                    for (i2 = "year"; ; ++i2)
                    {
                      if (*v207 == *i2)
                      {
                        if (!*v207)
                        {
                          *(a4 + 12) = 0x100000001;
                          goto LABEL_322;
                        }
                      }

                      else if (byte_181A20298[*v207] != byte_181A20298[*i2])
                      {
                        for (i3 = "day"; ; ++i3)
                        {
                          if (*v184 == *i3)
                          {
                            if (!*v184)
                            {
                              goto LABEL_322;
                            }
                          }

                          else if (byte_181A20298[*v184] != byte_181A20298[*i3])
                          {
                            return 1;
                          }

                          ++v184;
                        }
                      }

                      ++v207;
                    }
                  }

                  ++v205;
                }
              }

              if (*a4 > 0x1A6401072FDFFLL)
              {
                *(a4 + 1) = 0u;
                *(a4 + 2) = 0u;
                *a4 = 0u;
                *(a4 + 44) |= 2u;
                goto LABEL_438;
              }

              v194 = (*a4 + 43200000) / 0x5265C00uLL;
              v195 = ((v194 + 32044.75) / 36524.25);
              v196 = v195 + 48;
              if (v195 < -48)
              {
                v196 = v195 + 51;
              }

              v197 = v194 + v195 - (v196 >> 2) + 1498;
              v198 = ((v197 + v56) / 365.25);
              v199 = v197 - 36525 * (v198 & 0x7FFFu) / 0x64;
              v200 = (v199 / 30.6001);
              v201 = v199 - (v200 * 30.6001);
              if (v200 < 14)
              {
                v202 = -1;
              }

              else
              {
                v202 = -13;
              }

              v203 = v202 + v200;
              *(a4 + 3) = v203;
              *(a4 + 4) = v201;
              if (v203 > 2)
              {
                v204 = -4716;
              }

              else
              {
                v204 = -4715;
              }

              v192 = v204 + v198;
              v193 = 1;
            }

            else
            {
              if (*(a4 + 41))
              {
                v184 = v65 + 9;
                goto LABEL_438;
              }

              if (!*(a4 + 42))
              {
                return 1;
              }

              v184 = v65 + 9;
              a4[1] = v55;
              v192 = 1;
              v193 = 2;
            }

            LODWORD(a4[v193]) = v192;
            *(a4 + 41) = 1;
            goto LABEL_438;
          }

          v80 = " ";
LABEL_407:
          v61 = 0.5;
          goto LABEL_408;
        }

        v79 += byte_181A20298;
        v80 = "f ";
      }

      else
      {
        v79 += byte_181A20298;
        v80 = "of ";
      }

      v61 = 0.5;
      LODWORD(v79) = *v79;
      goto LABEL_408;
    }

    v80 = "of ";
    goto LABEL_407;
  }

  if (v70 == 119)
  {
    if (!*v65)
    {
      LODWORD(v117) = 0;
      v118 = "weekday ";
      goto LABEL_377;
    }

    v117 = v65[1];
    if (!v65[1])
    {
      v118 = "eekday ";
      goto LABEL_377;
    }

    if ((v117 & 0xFFFFFFDF) != 0x45)
    {
      v118 = "eekday ";
      LODWORD(v117) = byte_181A20298[v117];
      goto LABEL_377;
    }

    v117 = v65[2];
    if (!v65[2])
    {
      v118 = "ekday ";
      goto LABEL_377;
    }

    if ((v117 & 0xFFFFFFDF) != 0x45)
    {
      v118 = "ekday ";
      LODWORD(v117) = byte_181A20298[v117];
      goto LABEL_377;
    }

    v117 = v65[3];
    if (!v65[3])
    {
      v118 = "kday ";
      goto LABEL_377;
    }

    if ((v117 & 0xFFFFFFDF) != 0x4B)
    {
      v118 = "kday ";
      LODWORD(v117) = byte_181A20298[v117];
      goto LABEL_377;
    }

    v117 = v65[4];
    if (!v65[4])
    {
      v118 = "day ";
      goto LABEL_377;
    }

    if ((v117 & 0xFFFFFFDF) != 0x44)
    {
      v118 = "day ";
      LODWORD(v117) = byte_181A20298[v117];
      goto LABEL_377;
    }

    v117 = v65[5];
    if (!v65[5])
    {
      v118 = "ay ";
      goto LABEL_377;
    }

    if ((v117 & 0xFFFFFFDF) != 0x41)
    {
      v118 = "ay ";
      LODWORD(v117) = byte_181A20298[v117];
      goto LABEL_377;
    }

    v117 = v65[6];
    if (v65[6])
    {
      if ((v117 & 0xFFFFFFDF) != 0x59)
      {
        v118 = "y ";
        v61 = 0.5;
        LODWORD(v117) = byte_181A20298[v117];
        goto LABEL_377;
      }

      v117 = v65[7];
      if (v65[7])
      {
        v61 = 0.5;
        if (v117 == 32)
        {
          goto LABEL_378;
        }

        v118 = " ";
        LODWORD(v117) = byte_181A20298[v117];
LABEL_377:
        if (v117 != byte_181A20298[*v118])
        {
          return 1;
        }

LABEL_378:
        v166 = strlen(v65 + 8);
        if (sub_1818E6334(v65 + 8, v217, v166 & 0x3FFFFFFF, 1) < 1)
        {
          return 1;
        }

        if (v217[0] < 0.0)
        {
          return 1;
        }

        if (v217[0] >= 7.0)
        {
          return 1;
        }

        v167 = v217[0];
        if (v217[0] != v217[0])
        {
          return 1;
        }

        if (*(a4 + 41))
        {
          goto LABEL_397;
        }

        if (*(a4 + 40))
        {
          if (*a4 > 0x1A6401072FDFFLL)
          {
            *(a4 + 1) = 0u;
            *(a4 + 2) = 0u;
            *a4 = 0u;
            *(a4 + 44) |= 2u;
LABEL_397:
            if (!*(a4 + 42))
            {
              sub_18199C28C(a4);
              v181 = (*a4 + 43200000) % 86400000;
              *(a4 + 4) = (v181 % 60000) / 1000.0;
              v182 = (34953 * (v181 / 60000)) >> 16;
              *(a4 + 5) = v181 / 3600000;
              *(a4 + 6) = (v181 / 60000 - 60 * ((v182 >> 5) + ((v182 & 0x8000) >> 15)));
              *(a4 + 44) &= ~1u;
              *(a4 + 42) = 1;
            }

            *(a4 + 7) = 0;
            *(a4 + 40) = 0;
            sub_18199C28C(a4);
            v183 = (*a4 + 129600000) / 86400000 % 7;
            if (v183 > v167)
            {
              v183 -= 7;
            }

            v116 = *a4 + 86400000 * (v167 - v183);
            goto LABEL_402;
          }

          v170 = (*a4 + 43200000) / 0x5265C00uLL;
          v171 = ((v170 + 32044.75) / 36524.25);
          v172 = v171 + 48;
          if (v171 < -48)
          {
            v172 = v171 + 51;
          }

          v173 = v170 + v171 - (v172 >> 2) + 1498;
          v174 = ((v173 + v56) / 365.25);
          v175 = v173 - 36525 * (v174 & 0x7FFFu) / 0x64;
          v176 = (v175 / 30.6001);
          v177 = v175 - (v176 * 30.6001);
          if (v176 < 14)
          {
            v178 = -1;
          }

          else
          {
            v178 = -13;
          }

          v179 = v178 + v176;
          *(a4 + 3) = v179;
          *(a4 + 4) = v177;
          if (v179 > 2)
          {
            v180 = -4716;
          }

          else
          {
            v180 = -4715;
          }

          v168 = v180 + v174;
          v169 = 1;
        }

        else
        {
          a4[1] = v55;
          v168 = 1;
          v169 = 2;
        }

        LODWORD(a4[v169]) = v168;
        *(a4 + 41) = 1;
        goto LABEL_397;
      }

      v118 = " ";
    }

    else
    {
      v118 = "y ";
    }

    v61 = 0.5;
    goto LABEL_377;
  }

  if (v70 != 117)
  {
    return 1;
  }

  v89 = v65 + 1;
  v90 = v65 + 1;
  v91 = *v65;
  v92 = "unixepoch";
  while (2)
  {
    if (v91 != *v92)
    {
      if (byte_181A20298[v91] != byte_181A20298[*v92])
      {
        goto LABEL_205;
      }

      goto LABEL_201;
    }

    if (v91)
    {
LABEL_201:
      ++v92;
      v93 = *v90++;
      v91 = v93;
      continue;
    }

    break;
  }

  v94 = *(a4 + 44);
  if (v94)
  {
    if (v62 <= 1)
    {
      v137 = v59 + *(a4 + 4) * 1000.0;
      if (v137 >= 0.0 && v137 < v60)
      {
        *(a4 + 42) = 0;
        *(a4 + 7) = 0;
        *a4 = (v137 + v61);
        *(a4 + 20) = 1;
        *(a4 + 44) = v94 & 0xFE;
        goto LABEL_322;
      }
    }

    return 1;
  }

LABEL_205:
  v95 = "utc";
  while (2)
  {
    if (v69 != *v95)
    {
      if (byte_181A20298[v69] != byte_181A20298[*v95])
      {
        return 1;
      }

      goto LABEL_207;
    }

    if (v69)
    {
LABEL_207:
      ++v95;
      v96 = *v89++;
      v69 = v96;
      continue;
    }

    break;
  }

  if (sub_18199C428(v211))
  {
    if ((*(a4 + 44) & 8) != 0)
    {
      goto LABEL_322;
    }

    sub_18199C28C(a4);
    v97 = *a4;
    *&v216[40] = 1;
    memset(&v216[8], 0, 32);
    *v216 = v97;
    if (!sub_18199C910(v216, v211))
    {
      sub_18199C28C(v216);
      v98 = v97;
      v99 = v97 - *v216;
      if (v97 != *v216)
      {
        v98 = v99 + v97;
        *&v216[40] = 1;
        memset(&v216[8], 0, 32);
        *v216 = v99 + v97;
        if (sub_18199C910(v216, v211))
        {
          return 1;
        }

        sub_18199C28C(v216);
        if (v97 != *v216)
        {
          v98 += v97 - *v216;
          *&v216[40] = 1;
          memset(&v216[8], 0, 32);
          *v216 = v98;
          if (sub_18199C910(v216, v211))
          {
            return 1;
          }

          sub_18199C28C(v216);
          if (v97 != *v216)
          {
            v98 += v97 - *v216;
            *&v216[40] = 1;
            memset(&v216[8], 0, 32);
            *v216 = v98;
            if (sub_18199C910(v216, v211))
            {
              return 1;
            }

            sub_18199C28C(v216);
          }
        }
      }

      *(a4 + 1) = 0u;
      *(a4 + 2) = 0u;
      *a4 = 0u;
      *a4 = v98;
      *(a4 + 40) = 1;
      *(a4 + 44) = *(a4 + 44) & 0xE7 | 8;
      goto LABEL_322;
    }
  }

  return 1;
}

uint64_t sub_1818F6E44(uint64_t a1, void *a2)
{
  v4.tv_sec = 0;
  *&v4.tv_usec = 0;
  gettimeofday(&v4, 0);
  *a2 = 1000 * v4.tv_sec + v4.tv_usec / 1000 + 210866760000000;
  return 0;
}

uint64_t sub_1818F6EC0(uint64_t result)
{
  if (!*(result + 41))
  {
    if (*(result + 40))
    {
      if (*result >= 0x1A6401072FE00uLL)
      {
        *(result + 16) = 0u;
        *(result + 32) = 0u;
        *result = 0u;
        *(result + 44) |= 2u;
        return result;
      }

      v3 = (*result + 43200000) / 0x5265C00uLL;
      v4 = ((v3 + 32044.75) / 36524.25);
      v5 = v4 + 48;
      if (v4 < -48)
      {
        v5 = v4 + 51;
      }

      v6 = v3 + v4 - (v5 >> 2) + 1498;
      v7 = ((v6 + -122.1) / 365.25);
      v8 = v6 - 36525 * (v7 & 0x7FFFu) / 0x64;
      v9 = (v8 / 30.6001);
      v10 = v8 - (v9 * 30.6001);
      if (v9 < 14)
      {
        v11 = -1;
      }

      else
      {
        v11 = -13;
      }

      v12 = v11 + v9;
      *(result + 12) = v12;
      *(result + 16) = v10;
      if (v12 > 2)
      {
        v13 = -4716;
      }

      else
      {
        v13 = -4715;
      }

      v1 = v13 + v7;
      v2 = 8;
    }

    else
    {
      *(result + 8) = 0x1000007D0;
      v1 = 1;
      v2 = 16;
    }

    *(result + v2) = v1;
    *(result + 41) = 1;
  }

  return result;
}

void *sub_1818F7028(void *result, void *a2, char *__s, uint64_t a4)
{
  v5 = result;
  if (!__s)
  {
    v9 = 0;
    goto LABEL_8;
  }

  v7 = strlen(__s);
  v8 = v7;
  if (!a2)
  {
    result = sub_181902484(v7 + 1, 354097263);
    v9 = result;
    if (!result)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  result = sub_181929E8C(a2, v7 + 1, 354097263);
  v9 = result;
  if (result)
  {
LABEL_7:
    result = memcpy(v9, __s, v8 + 1);
  }

LABEL_8:
  if (*v5)
  {
    result = sub_181929C84(a2, *v5);
  }

  *v5 = v9;
  return result;
}

uint64_t sub_1818F70D8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  if (!*a3)
  {
    return 0;
  }

  if (!*(a3 + 16))
  {
    return 0;
  }

  v5 = sub_181917F20(*a1, *a3, a1[1]);
  if (!v5)
  {
    return 0;
  }

  v6 = a3;
  v7 = v5;
  v8 = *(v6 + 8);
  if (!v8)
  {
    goto LABEL_15;
  }

  v9 = *v6;
  if (!*v6)
  {
LABEL_16:
    v14 = v6;
    v11 = sub_1819495FC(*a1, v8, a1[1]);
    v13 = *(v14 + 16);
    if (v11)
    {
      v12 = *(v11 + 99);
      goto LABEL_18;
    }

    goto LABEL_20;
  }

  for (i = *(v6 + 8); *v9 != *i; ++i)
  {
    if (byte_181A20298[*v9] != byte_181A20298[*i])
    {
      goto LABEL_16;
    }

LABEL_9:
    ++v9;
  }

  if (*v9)
  {
    goto LABEL_9;
  }

  v11 = *(v5 + 16);
  if (v11)
  {
    while (1)
    {
      v12 = *(v11 + 99);
      if ((v12 & 3) == 2)
      {
        break;
      }

      v11 = *(v11 + 40);
      if (!v11)
      {
        goto LABEL_15;
      }
    }

    v13 = *(v6 + 16);
LABEL_18:
    v15 = *(v11 + 94);
    *(v11 + 99) = v12 & 0xFFFB;
    sub_181949870(v13, v15 + 1, *(v11 + 16), v11);
    *(v11 + 99) |= 0x80u;
    if (!*(v11 + 72))
    {
      *(v7 + 58) = **(v11 + 16);
      goto LABEL_21;
    }

    return 0;
  }

LABEL_15:
  v13 = *(v6 + 16);
LABEL_20:
  v18 = 0u;
  v19 = 0u;
  memset(v17, 0, sizeof(v17));
  WORD6(v18) = *(v7 + 60);
  sub_181949870(v13, 1u, v7 + 58, v17);
  *(v7 + 60) = WORD6(v18);
LABEL_21:
  *(v7 + 48) |= 0x10u;
  return 0;
}

uint64_t sub_1818F7260(uint64_t a1, int a2, int a3, int a4)
{
  v6 = *(a1 + 8);
  if (*(a1 + 17))
  {
    ++*(a1 + 20);
    if (!*(a1 + 18))
    {
      v7 = a2;
      v8 = a3;
      sub_181932DEC(a1);
      a3 = v8;
      a2 = v7;
    }
  }

  v9 = *(v6 + 52);
  *(v6 + 38) = a3;
  v10 = v9 - *(v6 + 56);
  if (v10 <= a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = v10;
  }

  if ((*(v6 + 40) & 2) != 0)
  {
    if (!*(a1 + 17))
    {
      return 8;
    }

    v16 = *(a1 + 20);
    result = 8;
    goto LABEL_24;
  }

  if ((a2 - 512) <= 0xFE00 && ((a2 + 0x1FFFF) & a2) == 0)
  {
    v12 = v11 > 32 && a2 == 512;
    v13 = v12 ? 1024 : a2;
    *(v6 + 52) = v13;
    v14 = *(v6 + 136);
    if (v14)
    {
      *(v6 + 136) = v14 - 4;
      sub_181935120((v14 - 4));
      *(v6 + 136) = 0;
    }
  }

  result = sub_1818933F0(*v6, (v6 + 52), v11);
  *(v6 + 56) = *(v6 + 52) - v11;
  if (a4)
  {
    *(v6 + 40) |= 2u;
  }

  if (*(a1 + 17))
  {
    v16 = *(a1 + 20);
LABEL_24:
    v17 = v16 - 1;
    *(a1 + 20) = v17;
    if (!v17)
    {
      v18 = result;
      sub_181932ECC(a1);
      return v18;
    }
  }

  return result;
}

void sub_1818F73B0(uint64_t *a1, const char *a2, ...)
{
  va_start(va, a2);
  v32 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 13) && !*(a1 + 302))
  {
    v3 = *a1;
    v4 = *(*a1 + 44);
    v18 = v3;
    v22 = 0x10000000000;
    v5 = *(v3 + 136);
    v19 = &v23;
    v20 = 512;
    v21 = v5;
    sqlite3_str_vappendf(&v18, a2, va);
    if (v19 && (*(v19 + v22) = 0, v21) && (v22 & 0x40000000000) == 0)
    {
      v6 = sub_18192A12C(&v18);
    }

    else
    {
      v6 = v19;
    }

    v7 = a1;
    if (BYTE4(v22) == 7 && !*(v3 + 103) && !*(v3 + 104))
    {
      *(v3 + 103) = 1;
      if (*(v3 + 220) >= 1)
      {
        *(v3 + 424) = 1;
      }

      ++*(v3 + 432);
      *(v3 + 436) = 0;
      v16 = *(v3 + 344);
      if (v16)
      {
        sub_181910730(v16, "out of memory");
        v7 = a1;
        for (i = *(v3 + 344); ; ++*(i + 52))
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

    if (v6)
    {
      ++*(v7 + 30);
      v31 = v7[51];
      v8 = *(v7 + 49);
      v29 = *(v7 + 47);
      v30 = v8;
      v9 = *(v7 + 41);
      v25 = *(v7 + 39);
      v26 = v9;
      v10 = *(v7 + 45);
      v27 = *(v7 + 43);
      v28 = v10;
      v11 = *(v7 + 37);
      v23 = *(v7 + 35);
      v24 = v11;
      v7[51] = 0;
      *(v7 + 47) = 0u;
      *(v7 + 49) = 0u;
      *(v7 + 43) = 0u;
      *(v7 + 45) = 0u;
      *(v7 + 39) = 0u;
      *(v7 + 41) = 0u;
      *(v7 + 35) = 0u;
      *(v7 + 37) = 0u;
      *(v3 + 44) |= 2u;
      sub_181895EE0(v7, v6);
      *(v3 + 44) = v4;
      sub_181929C84(v3, v6);
      v12 = v30;
      *(v7 + 47) = v29;
      *(v7 + 49) = v12;
      v7[51] = v31;
      v13 = v26;
      *(v7 + 39) = v25;
      *(v7 + 41) = v13;
      v14 = v28;
      *(v7 + 43) = v27;
      *(v7 + 45) = v14;
      v15 = v24;
      *(v7 + 35) = v23;
      *(v7 + 37) = v15;
      --*(v7 + 30);
    }

    else
    {
      if (!*(v3 + 103))
      {
        *(v7 + 6) = 18;
      }

      ++*(v7 + 13);
    }
  }
}

uint64_t sub_1818F75F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  if (*(a1 + 400) || *(a3 + 104) || *(a2 + 63) == 1)
  {
    return 0;
  }

  v6 = *a1;
  if (a4 == 11)
  {
    if (*(a2 + 52) < 0 || (LODWORD(a4) = *(a2 + 62), a4 == 11))
    {
      LODWORD(a4) = 2;
    }
  }

  v7 = *(a3 + 40);
  if (*v7 != 1)
  {
    return 0;
  }

  if ((*(v7 + 33) & 4) != 0)
  {
    return 0;
  }

  if (*(a3 + 48))
  {
    return 0;
  }

  if (*(a3 + 72))
  {
    return 0;
  }

  if (*(a3 + 56))
  {
    return 0;
  }

  if (*(a3 + 96))
  {
    return 0;
  }

  if (*(a3 + 80))
  {
    return 0;
  }

  if (*(a3 + 4))
  {
    return 0;
  }

  v8 = *(a3 + 32);
  if (*v8 != 1 || **(v8 + 8) != 180)
  {
    return 0;
  }

  v9 = a4;
  result = sub_1819604B0(a1, 0, v7 + 8);
  if (!result)
  {
    return result;
  }

  v10 = result;
  if (*(result + 40) == *(a2 + 40) && *(result + 96) == *(a2 + 96))
  {
    return 0;
  }

  v11 = *(a2 + 48);
  v12 = *(result + 48);
  if (((v12 ^ v11) & 0x80) != 0)
  {
    return 0;
  }

  if (*(result + 63))
  {
    return 0;
  }

  v13 = *(a2 + 54);
  if (v13 != *(result + 54) || *(a2 + 52) != *(result + 52) || (v11 & 0x10000) != 0 && (v12 & 0x10000) == 0)
  {
    return 0;
  }

  if (v13 >= 1)
  {
    v14 = 0;
    while (1)
    {
      v15 = *(a2 + 8) + 16 * v14;
      v16 = *(v10 + 8) + 16 * v14;
      if ((*(v15 + 14) & 0x60) != (*(v16 + 14) & 0x60))
      {
        return 0;
      }

      if ((*(v15 + 14) & 0x60) != 0)
      {
        break;
      }

LABEL_42:
      if (*(v15 + 9) != *(v16 + 9))
      {
        return 0;
      }

      v21 = *(v15 + 14);
      if ((v21 & 0x200) != 0)
      {
        v23 = *v15 - 1;
          ;
        }

        if ((v21 & 4) != 0)
        {
            ;
          }
        }

        v22 = (v23 + 1);
      }

      else
      {
        v22 = 0;
      }

      v26 = *(v16 + 14);
      if ((v26 & 0x200) != 0)
      {
        v28 = *v16 - 1;
          ;
        }

        if ((v26 & 4) != 0)
        {
            ;
          }
        }

        v27 = (v28 + 1);
      }

      else
      {
        v27 = 0;
      }

      if (sqlite3_stricmp(v22, v27) || (*(v15 + 8) & 0xF) != 0 && (*(v16 + 8) & 0xF) == 0)
      {
        return 0;
      }

      if (v14 && (v21 & 0x60) == 0)
      {
        v31 = *(v15 + 12);
        if (*(v15 + 12) && !*(a2 + 63) && (v38 = *(a2 + 80)) != 0 && *v38 >= v31)
        {
          v32 = *&v38[6 * (v31 - 1) + 2];
          v33 = *(v16 + 12);
          if (!*(v16 + 12))
          {
            goto LABEL_32;
          }
        }

        else
        {
          v32 = 0;
          v33 = *(v16 + 12);
          if (!*(v16 + 12))
          {
            goto LABEL_32;
          }
        }

        if (*(v10 + 63) || (v34 = *(v10 + 80)) == 0 || *v34 < v33)
        {
LABEL_32:
          if (v32)
          {
            return 0;
          }

          goto LABEL_33;
        }

        v35 = *&v34[6 * (v33 - 1) + 2];
        if ((v32 == 0) == (v35 != 0) || v32 && strcmp(*(v32 + 8), *(v35 + 8)))
        {
          return 0;
        }
      }

LABEL_33:
      if (++v14 >= *(a2 + 54))
      {
        goto LABEL_83;
      }
    }

    v17 = *(v16 + 12);
    if (*(v16 + 12) && !*(v10 + 63) && (v36 = *(v10 + 80)) != 0 && *v36 >= v17)
    {
      v18 = *&v36[6 * (v17 - 1) + 2];
      v19 = *(v15 + 12);
      if (!*(v15 + 12))
      {
        goto LABEL_40;
      }
    }

    else
    {
      v18 = 0;
      v19 = *(v15 + 12);
      if (!*(v15 + 12))
      {
        goto LABEL_40;
      }
    }

    if (!*(a2 + 63))
    {
      v37 = *(a2 + 80);
      if (v37)
      {
        if (*v37 >= v19)
        {
          v20 = *&v37[6 * (v19 - 1) + 2];
LABEL_41:
          if (sub_181959260(0, v18, v20, 0xFFFFFFFFLL))
          {
            return 0;
          }

          goto LABEL_42;
        }
      }
    }

LABEL_40:
    v20 = 0;
    goto LABEL_41;
  }

LABEL_83:
  v39 = *(a2 + 16);
  if (v39)
  {
    v40 = 0;
    while (1)
    {
      if (*(v39 + 98))
      {
        v40 = 1;
      }

      v41 = *(v10 + 16);
      if (!v41)
      {
        return 0;
      }

      while (1)
      {
        result = sub_181988040(v39, v41);
        if (result)
        {
          break;
        }

        v41 = *(v41 + 40);
        if (!v41)
        {
          return result;
        }
      }

      if (*(v41 + 88) == *(v39 + 88) && *(v10 + 96) == *(a2 + 96))
      {
        if (!off_1ED453038)
        {
          return 0;
        }

        result = off_1ED453038(411);
        if (!result)
        {
          return result;
        }
      }

      v39 = *(v39 + 40);
      if (!v39)
      {
        goto LABEL_98;
      }
    }
  }

  v40 = 0;
LABEL_98:
  v42 = *(a2 + 32);
  if (v42 && (v6[44] & 4) == 0 && sub_181959974(*(v10 + 32), v42, 0xFFFFFFFFLL))
  {
    return 0;
  }

  v43 = *(v6 + 6);
  if ((v43 & 0x4000) == 0)
  {
    if ((v43 & 0x100000000) == 0)
    {
LABEL_106:
      v44 = *(v10 + 96);
      if (v44)
      {
        v45 = (*(v6 + 4) + 24);
        LODWORD(v46) = -1;
        do
        {
          v47 = *v45;
          v45 += 4;
          v46 = (v46 + 1);
        }

        while (v47 != v44);
      }

      else
      {
        v46 = 4294934528;
      }

      v48 = sub_1818E7DFC(a1);
      if (*(a1 + 152))
      {
        v49 = *(a1 + 152);
      }

      else
      {
        v49 = a1;
      }

      v50 = *(v49 + 116);
      if ((v50 & (1 << v46)) == 0)
      {
        *(v49 + 116) = v50 | (1 << v46);
        if (v46 == 1)
        {
          sub_1819108F4(v49);
        }
      }

      v51 = *(a1 + 56);
      *(a1 + 56) = v51 + 2;
      v52 = sub_181987B00(a1, a5, a2);
      v53 = *(a1 + 31);
      if (v53)
      {
        v54 = v53 - 1;
        *(a1 + 31) = v54;
        v85 = *(a1 + 4 * v54 + 184);
      }

      else
      {
        v85 = *(a1 + 60) + 1;
        *(a1 + 60) = v85;
      }

      sub_1818A2964(v48, 75, 0, v85, 0);
      if (*(a1 + 31))
      {
        v55 = *(a1 + 31) - 1;
        *(a1 + 31) = v55;
        v84 = *(a1 + 4 * v55 + 184);
      }

      else
      {
        v84 = *(a1 + 60) + 1;
        *(a1 + 60) = v84;
      }

      sub_1818B69D8(a1, (v51 + 1), a5, a2, 113);
      if ((v6[44] & 4) == 0 && (*(a2 + 52) < 0 && *(a2 + 16) || v40 || (v9 - 3) <= 0xFFFFFFFD))
      {
        v56 = sub_1818A2964(v48, 36, (v51 + 1), 0, 0);
        v83 = sub_1818A2964(v48, 9, 0, 0, 0);
        if (*(*v48 + 103))
        {
          v57 = &byte_1EA831A58;
        }

        else
        {
          v57 = (*(v48 + 136) + 40 * v56);
        }

        *(v57 + 2) = *(v48 + 144);
      }

      else
      {
        v83 = 0;
      }

      if ((*(v10 + 48) & 0x80) != 0)
      {
        sub_181957014(a1, a5, *(a2 + 40), 1, *a2);
        sub_181957014(a1, v46, *(v10 + 40), 0, *v10);
        v82 = 0;
      }

      else
      {
        sub_1818B69D8(a1, v51, v46, v10, 102);
        v82 = sub_1818A2964(v48, 36, v51, 0, 0);
        if (*(a2 + 52) < 0)
        {
          if (*(a2 + 16) || (v6[44] & 8) != 0)
          {
            v62 = v48;
            v63 = 135;
            v61 = v51;
          }

          else
          {
            v61 = (v51 + 1);
            v62 = v48;
            v63 = 127;
          }

          v58 = sub_1818A2964(v62, v63, v61, v84, 0);
        }

        else
        {
          v58 = sub_1818A2964(v48, 135, v51, v84, 0);
          if ((v6[44] & 4) == 0)
          {
            v59 = sub_1818A2964(v48, 31, (v51 + 1), 0, v84);
            sub_1819872F0(a1, v9, a2);
            if (*(*v48 + 103))
            {
              v60 = &byte_1EA831A58;
            }

            else
            {
              v60 = (*(v48 + 136) + 40 * v59);
            }

            *(v60 + 2) = *(v48 + 144);
          }

          if (v52 >= 1)
          {
            sub_1818A2964(*(a1 + 16), 159, v52, v84, 0);
          }
        }

        v64 = *(v6 + 11);
        if ((v64 & 4) != 0)
        {
          sub_1818A2964(v48, 137, (v51 + 1), 0, 0);
          v64 = *(v6 + 11);
          v65 = 152;
        }

        else
        {
          v65 = 169;
        }

        if ((v64 & 4) != 0)
        {
          sub_1818A2964(v48, 129, (v51 + 1), v51, v84);
        }

        else
        {
          sub_1818A2964(v48, 134, v51, v85, 1);
          v65 &= 0x39u;
        }

        sub_1818A2964(v48, 128, (v51 + 1), v85, v84);
        if ((v6[44] & 4) == 0)
        {
          sub_1818B49F8(v48, -1, a2, 4294967291);
        }

        v66 = *(v48 + 144);
        if (v66 >= 1)
        {
          *(*(v48 + 136) + 40 * v66 - 38) = v65;
        }

        sub_1818A2964(v48, 39, v51, v58, 0);
        sub_1818A2964(v48, 122, v51, 0, 0);
        sub_1818A2964(v48, 122, (v51 + 1), 0, 0);
      }

      v67 = *(a2 + 16);
      if (!v67)
      {
LABEL_194:
        if (v82)
        {
          if (*(*v48 + 103))
          {
            v78 = &byte_1EA831A58;
          }

          else
          {
            v78 = (*(v48 + 136) + 40 * v82);
          }

          *(v78 + 2) = *(v48 + 144);
        }

        if (v84)
        {
          v79 = *(a1 + 31);
          if (v79 <= 7)
          {
            *(a1 + 31) = v79 + 1;
            *(a1 + 4 * v79 + 184) = v84;
          }
        }

        if (v85)
        {
          v80 = *(a1 + 31);
          if (v80 <= 7)
          {
            *(a1 + 31) = v80 + 1;
            *(a1 + 4 * v80 + 184) = v85;
          }
        }

        if (!v83)
        {
          return 1;
        }

        if (*(a1 + 144))
        {
          sub_18198590C(a1);
        }

        sub_1818A2964(v48, 70, 0, 0, 0);
        if (*(*v48 + 103))
        {
          v81 = &byte_1EA831A58;
        }

        else
        {
          v81 = (*(v48 + 136) + 40 * v83);
        }

        *(v81 + 2) = *(v48 + 144);
        sub_1818A2964(v48, 122, (v51 + 1), 0, 0);
        return 0;
      }

      while (1)
      {
        for (i = *(v10 + 16); i; i = *(i + 40))
        {
          if (sub_181988040(v67, i))
          {
            break;
          }
        }

        sub_1818A2964(v48, 102, v51, *(i + 88), v46);
        sub_181957040(a1, i);
        sub_1818A2964(v48, 113, (v51 + 1), *(v67 + 88), a5);
        sub_181957040(a1, v67);
        v69 = *(v48 + 144);
        if (v69 >= 1)
        {
          *(*(v48 + 136) + 40 * v69 - 38) = 1;
        }

        v70 = sub_1818A2964(v48, 36, v51, 0, 0);
        if ((v6[44] & 4) != 0)
        {
          break;
        }

        if ((*(v10 + 48) & 0x80) != 0)
        {
          if ((*(v67 + 99) & 3) == 2)
          {
            v71 = 9;
          }

          else
          {
            v71 = 8;
          }

          goto LABEL_186;
        }

LABEL_185:
        v71 = 8;
LABEL_186:
        sub_1818A2964(v48, 134, v51, v85, 1);
        if ((v6[44] & 4) == 0 && (*(a2 + 48) & 0x80) != 0 && (*(v67 + 99) & 3) == 2)
        {
          sub_18198795C(a1, a2, v51 + 1, v85);
        }

LABEL_190:
        sub_1818A2964(v48, 138, (v51 + 1), v85, 0);
        v76 = *(v48 + 144);
        if (v76 >= 1)
        {
          *(*(v48 + 136) + 40 * v76 - 38) = v71;
        }

        sub_1818A2964(v48, 39, v51, (v70 + 1), 0);
        v77 = &byte_1EA831A58;
        if (!*(*v48 + 103))
        {
          v77 = (*(v48 + 136) + 40 * v70);
        }

        *(v77 + 2) = *(v48 + 144);
        sub_1818A2964(v48, 122, v51, 0, 0);
        sub_1818A2964(v48, 122, (v51 + 1), 0, 0);
        v67 = *(v67 + 40);
        if (!v67)
        {
          goto LABEL_194;
        }
      }

      v72 = *(i + 96);
      if (!*(i + 96))
      {
        LODWORD(v73) = 0;
LABEL_183:
        if (v73 == v72)
        {
          goto LABEL_184;
        }

        goto LABEL_185;
      }

      v73 = 0;
LABEL_174:
      v74 = *(*(i + 64) + 8 * v73);
      if (!v74)
      {
        goto LABEL_183;
      }

      for (j = "BINARY"; ; ++j)
      {
        if (*j == *v74)
        {
          if (!*j)
          {
            if (++v73 == v72)
            {
LABEL_184:
              sub_1818A2964(v48, 137, (v51 + 1), 0, 0);
              sub_1818A2964(v48, 129, (v51 + 1), v51, 0);
              v71 = 152;
              goto LABEL_190;
            }

            goto LABEL_174;
          }
        }

        else if (byte_181A20298[*j] != byte_181A20298[*v74])
        {
          goto LABEL_183;
        }

        ++v74;
      }
    }

    return 0;
  }

  result = 0;
  if ((v43 & 0x100000000) == 0 && !*(a2 + 72))
  {
    goto LABEL_106;
  }

  return result;
}

void sub_1818F8274(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (off_1EA831A10)
  {
    result = off_1EA831A10(result);
  }

  if (*(v5 + 111))
  {
    if ((*(v5 + 44) & 1) == 0)
    {
LABEL_5:
      v6 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    sub_181932C40(v5);
    if ((*(v5 + 44) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v6 = *(v5 + 197) == 0;
LABEL_8:
  v7 = *(v5 + 10);
  if (v7 < 1)
  {
    v11 = 1;
    v12 = v5[75];
    if (!v12)
    {
      goto LABEL_33;
    }

    goto LABEL_18;
  }

  v8 = 0;
  v9 = 0;
  v10 = 8;
  do
  {
    result = *(v5[4] + v10);
    if (result)
    {
      if (*(result + 16) == 2)
      {
        v9 = 1;
      }

      result = sub_1818E334C(result, a2, !v6);
      v7 = *(v5 + 10);
    }

    ++v8;
    v10 += 32;
  }

  while (v8 < v7);
  v11 = v9 == 0;
  v12 = v5[75];
  if (v12)
  {
LABEL_18:
    v5[75] = 0;
    if (*(v5 + 141) >= 1)
    {
      v13 = 0;
      do
      {
        v14 = v12[v13];
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = *(*v15 + 136);
          if (v16)
          {
            v16();
          }
        }

        *(v14 + 32) = 0;
        v17 = *v14;
        v18 = *(v14 + 24) - 1;
        *(v14 + 24) = v18;
        if (!v18)
        {
          v19 = *(v14 + 16);
          v20 = v17;
          if (v19)
          {
            (*(*v19 + 32))(v19, a2, a3, a4);
            v20 = *v14;
          }

          v21 = *(v14 + 8);
          v22 = *(v21 + 16) - 1;
          *(v21 + 16) = v22;
          if (!v22)
          {
            v23 = *(v21 + 32);
            if (v23)
            {
              v23(*(v21 + 24), a2, a3, a4);
            }

            sub_181929C84(v20, v21);
          }

          sub_181929C84(v17, v14);
        }

        ++v13;
      }

      while (v13 < *(v5 + 141));
    }

    result = sub_181929C84(v5, v12);
    *(v5 + 141) = 0;
  }

LABEL_33:
  if (off_1EA831A18)
  {
    off_1EA831A18(result);
  }

  if (v6)
  {
    for (i = v5[1]; i; i = *(i + 16))
    {
      *(i + 268) = *(i + 268) & 0xFFFC | 1;
    }

    sub_181908F74(v5);
  }

  if (!*(v5 + 111))
  {
    sub_181932CD8(v5);
  }

  *(v5 + 101) = 0u;
  v5[6] &= 0xFFFFFFFDFFF7FFFFLL;
  v25 = v5[37];
  if (v25 && (!v11 || !*(v5 + 101)))
  {
    v26 = v5[36];

    v25(v26);
  }
}

uint64_t sub_1818F84EC(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  v50 = 0;
  v51 = 0;
  v48 = a1[25];
  v49 = 1;
  result = (*(*a1[10] + 48))(a1[10], &v51);
  if (result || (v6 = a1[41], result = sub_181934AE8(a1[10], v6, *(*a1 + 8) + 1), result))
  {
    LODWORD(v7) = 0;
LABEL_4:
    v8 = a1 + 2;
    *(a1 + 23) = *(a1 + 16);
    goto LABEL_5;
  }

  if (v6->i8[0])
  {
    result = (*(v4 + 56))(v4, v6, 0, &v49);
    LODWORD(v7) = 0;
    if (result)
    {
LABEL_50:
      if (!result)
      {
        goto LABEL_53;
      }

      goto LABEL_4;
    }
  }

  else
  {
    result = 0;
    LODWORD(v7) = 0;
  }

  if (!v49)
  {
    goto LABEL_50;
  }

  v14 = 0;
  a1[12] = 0;
  v15 = a1 + 12;
  v16 = v2;
LABEL_28:
  while (1)
  {
    v7 = v14;
    result = sub_1818F8D5C(a1, v2, v51, &v50 + 1, &v50);
    if (result)
    {
      break;
    }

    LODWORD(v17) = HIDWORD(v50);
    v18 = *(a1 + 46);
    if (HIDWORD(v50) == -1)
    {
      v17 = (v51 - v18) / (a1[25] + 8);
      HIDWORD(v50) = v17;
    }

    v19 = *v15;
    if (!(v17 | v2) && a1[13] + v18 == v19)
    {
      v17 = (v51 - v19) / (a1[25] + 8);
      HIDWORD(v50) = v17;
    }

    if (v19 == v18)
    {
      v20 = v50;
      result = sub_1818F8F88(a1, v50);
      if (result)
      {
        goto LABEL_4;
      }

      *(a1 + 8) = v20;
      if (*(a1 + 47) < v20)
      {
        *(a1 + 47) = v20;
      }
    }

    v14 = v7;
    if (v17)
    {
      if (v16)
      {
        sub_181934D80(a1);
      }

      result = sub_1818F90AC(a1, a1 + 12, 0, 1, 0);
      if (result)
      {
        goto LABEL_42;
      }

      v16 = 0;
      v14 = (v7 + v17);
      v21 = v17 - 1;
      if (v21)
      {
        v7 = (v7 + 1);
        while (1)
        {
          result = sub_1818F90AC(a1, a1 + 12, 0, 1, 0);
          if (result)
          {
            break;
          }

          v7 = (v7 + 1);
          if (!--v21)
          {
            v16 = 0;
            goto LABEL_28;
          }
        }

LABEL_42:
        if (result != 101)
        {
          if (result == 522)
          {
            goto LABEL_53;
          }

          goto LABEL_50;
        }

        v16 = 0;
        *v15 = v51;
        v14 = v7;
      }
    }
  }

  if (result != 101)
  {
    goto LABEL_4;
  }

LABEL_53:
  result = sub_1818933F0(a1, &v48, -1);
  v8 = a1 + 2;
  *(a1 + 23) = *(a1 + 16);
  if (!result)
  {
    v22 = a1[41];
    result = sub_181934AE8(a1[10], (v22 + 4), *(*a1 + 8) + 1);
    if (!result)
    {
      if (*(a1 + 21) - 4 > 0xFFFFFFFC || ((v23 = a1[9], !*v23) || ((result = (*(*v23 + 80))(v23, 21, 0), result != 12) ? (v24 = result == 0) : (v24 = 1), v24)) && (*(a1 + 11) || !*(a1 + 14) || (result = (*(*a1[9] + 40))(a1[9]), !result)))
      {
        result = sub_1818CD128(a1, *(v22 + 4) != 0, 0);
        if (!result && *(v22 + 4) && v49)
        {
          *a1[41] = 0;
          v25 = *a1;
          v53 = 0;
          v26 = 2 * *(v25 + 4);
          v27 = sub_181902484(v26, 0x6004044C4A2DFLL);
          if (v27)
          {
            v28 = v27;
            bzero(v27, v26);
            v29 = (*(v25 + 40))(v25, v22 + 4, v28, *(a1 + 45) & 0x1700000 | 0x4001u, 0);
            if (!v29)
            {
              v30 = *(v25 + 4);
              v29 = (*(*v28 + 48))(v28, &v53);
              if (!v29)
              {
                v45 = v22;
                v46 = *(v25 + 8) + 1;
                v31 = sub_181902484(v53 + v46 + 6, 4155660878);
                if (v31)
                {
                  v44 = v7;
                  v47 = v31;
                  *v31 = 0;
                  v32 = (v31 + 1);
                  v33 = v53;
                  v7 = (*(*v28 + 16))(v28, v31 + 1, v53, 0);
                  if (!v7)
                  {
                    v32[v53] = 0;
                    v32[v53 + 1] = 0;
                    if (v53 < 1)
                    {
LABEL_88:
                      if (*v28)
                      {
                        (*(*v28 + 8))(v28);
                        *v28 = 0;
                      }

                      v39 = *(v25 + 48);
                      if (v39)
                      {
                        v7 = v39(v25, v45 + 4, 0);
                      }

                      else
                      {
                        v7 = 0;
                      }
                    }

                    else
                    {
                      v34 = &v32[v33];
                      v35 = v32;
                      while (1)
                      {
                        v52 = 0;
                        v7 = (*(v25 + 56))(v25, v35, 0, &v52);
                        if (v7)
                        {
                          break;
                        }

                        if (v52)
                        {
                          v36 = (*(v25 + 40))(v25, v35, &v28[v30], *(a1 + 45) & 0x1700000 | 0x4001u, 0);
                          if (v36)
                          {
                            v37 = v36;
LABEL_94:
                            v7 = v37;
                            break;
                          }

                          v37 = sub_181934AE8(&v28[v30], (v34 + 2), v46);
                          v38 = *&v28[v30];
                          if (v38)
                          {
                            (*(v38 + 8))(&v28[v30]);
                            *&v28[v30] = 0;
                          }

                          if (v37)
                          {
                            goto LABEL_94;
                          }

                          if (v34[2] && !strcmp(v34 + 2, (v45 + 4)))
                          {
                            break;
                          }
                        }

                        v35 += (strlen(v35) & 0x3FFFFFFF) + 1;
                        if (v35 - v32 >= v53)
                        {
                          goto LABEL_88;
                        }
                      }
                    }
                  }

                  v40 = &off_1ED452EB0;
                  if (dword_1ED452E80)
                  {
                    if (xmmword_1ED456AF0)
                    {
                      xmmword_1ED452F18(xmmword_1ED456AF0);
                    }

                    qword_1ED456A48[0] -= xmmword_1ED452EC0(v47);
                    --qword_1ED456A90;
                    off_1ED452EB0(v47);
                    v47 = xmmword_1ED456AF0;
                    if (xmmword_1ED456AF0)
                    {
                      v40 = &xmmword_1ED452F28;
                      goto LABEL_100;
                    }
                  }

                  else
                  {
LABEL_100:
                    (*v40)(v47);
                  }

                  v29 = v7;
                  LODWORD(v7) = v44;
                  v8 = a1 + 2;
                }

                else
                {
                  v29 = 7;
                }
              }
            }

            if (*v28)
            {
              v41 = v29;
              (*(*v28 + 8))(v28);
              v29 = v41;
              *v28 = 0;
            }

            v42 = &off_1ED452EB0;
            if (dword_1ED452E80)
            {
              v43 = v29;
              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v28);
              --qword_1ED456A90;
              off_1ED452EB0(v28);
              v28 = xmmword_1ED456AF0;
              if (xmmword_1ED456AF0)
              {
                v42 = &xmmword_1ED452F28;
                goto LABEL_110;
              }
            }

            else
            {
              v43 = v29;
LABEL_110:
              (*v42)(v28);
            }

            result = v43;
          }

          else
          {
            result = 7;
          }
        }
      }
    }
  }

LABEL_5:
  if (v2 && v7)
  {
    v9 = result;
    sqlite3_log(539, "recovered %d pages from %s", v7, a1[28]);
    result = v9;
  }

  if (*v8)
  {
    v10 = 512;
  }

  else
  {
    v11 = result;
    if (((*(*a1[9] + 96))(a1[9]) & 0x1000) != 0)
    {
      v10 = 512;
    }

    else
    {
      v12 = *(*a1[9] + 88);
      if (v12)
      {
        v13 = v12();
        if (v13 >= 0x10000)
        {
          v10 = 0x10000;
        }

        else
        {
          v10 = v13;
        }

        if (v13 < 32)
        {
          v10 = 512;
        }
      }

      else
      {
        v10 = 4096;
      }
    }

    result = v11;
  }

  *(a1 + 46) = v10;
  return result;
}

uint64_t sub_1818F8C3C(uint64_t a1, char *__dst, int a3, uint64_t a4)
{
  v4 = a4 + a3;
  if (v4 > *(a1 + 24))
  {
    return 522;
  }

  if (a4 && *(a1 + 40) == a4)
  {
    v8 = *(a1 + 48);
  }

  else
  {
    v9 = 0;
    v8 = (a1 + 16);
    do
    {
      v8 = *v8;
      if (!v8)
      {
        break;
      }

      v9 += *(a1 + 8);
    }

    while (v9 <= a4);
  }

  v10 = *(a1 + 8);
  v11 = a4 % v10;
  v12 = v10 - a4 % v10;
  v13 = a3 - v12;
  if (a3 < v12)
  {
    v12 = a3;
  }

  v14 = v12;
  memcpy(__dst, v8 + v11 + 8, v12);
  if ((v13 & 0x80000000) == 0)
  {
    v8 = *v8;
    if (v13 && v8 != 0)
    {
      v16 = &__dst[v14];
      do
      {
        v17 = *(a1 + 8);
        v18 = v13 - v17;
        if (v13 < v17)
        {
          v17 = v13;
        }

        v19 = v17;
        memcpy(v16, v8 + 1, v17);
        if (v18 < 0)
        {
          break;
        }

        v16 += v19;
        v8 = *v8;
        v20 = !v18 || v8 == 0;
        v13 = v18;
      }

      while (!v20);
    }
  }

  result = 0;
  if (v8)
  {
    v21 = v4;
  }

  else
  {
    v21 = 0;
  }

  *(a1 + 40) = v21;
  *(a1 + 48) = v8;
  return result;
}

uint64_t sub_1818F8D5C(uint64_t a1, int a2, uint64_t a3, _DWORD *a4, _DWORD *a5)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 96);
  if (v6)
  {
    v7 = v6 - 1;
    v8 = *(a1 + 184);
    v9 = v8 + v8 * (v7 / v8);
  }

  else
  {
    v9 = 0;
    v8 = *(a1 + 184);
  }

  *(a1 + 96) = v9;
  if (v9 + v8 > a3)
  {
    return 101;
  }

  if (a2 || v9 != *(a1 + 104))
  {
    result = (*(**(a1 + 80) + 16))(*(a1 + 80), v17, 8, v9);
    if (result)
    {
      return result;
    }

    if (v17[0] != 0xD763A120F905D5D9)
    {
      return 101;
    }
  }

  result = (*(**(a1 + 80) + 16))(*(a1 + 80), &v16 + 4, 4, v9 + 8);
  if (!result)
  {
    *a4 = bswap32(HIDWORD(v16));
    result = (*(**(a1 + 80) + 16))(*(a1 + 80), &v16 + 4, 4, v9 + 12);
    if (!result)
    {
      *(a1 + 56) = bswap32(HIDWORD(v16));
      result = (*(**(a1 + 80) + 16))(*(a1 + 80), &v16 + 4, 4, v9 + 16);
      if (!result)
      {
        *a5 = bswap32(HIDWORD(v16));
        v13 = *(a1 + 96);
        if (v13)
        {
          result = 0;
          v14 = *(a1 + 184);
LABEL_15:
          *(a1 + 96) = v13 + v14;
          return result;
        }

        v16 = 0;
        result = sub_181934EEC(*(a1 + 80), v9 + 20, &v16);
        if (!result)
        {
          result = sub_181934EEC(*(a1 + 80), v9 + 24, &v16 + 1);
          if (!result)
          {
            v15 = HIDWORD(v16);
            if (!HIDWORD(v16))
            {
              v15 = *(a1 + 200);
              HIDWORD(v16) = v15;
            }

            result = 101;
            if ((v15 - 65537) >= 0xFFFF01FF)
            {
              v14 = v16;
              if ((v16 - 65537) >= 0xFFFF001F && ((v15 + 0x1FFFF) & v15) == 0 && ((v16 + 0x1FFFF) & v16) == 0)
              {
                result = sub_1818933F0(a1, &v16 + 1, -1);
                *(a1 + 184) = v14;
                v13 = *(a1 + 96);
                goto LABEL_15;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1818F8F88(uint64_t a1, unsigned int a2)
{
  v4 = **(a1 + 72);
  if (!v4 || *(a1 + 21) - 4 > 0xFFFFFFFC)
  {
    return 0;
  }

  v14 = v2;
  v15 = v3;
  v13 = 0;
  v6 = *(a1 + 200);
  result = (*(v4 + 48))();
  v9 = v6 * a2;
  v12 = v9;
  if (result)
  {
    return result;
  }

  if (v13 == v9)
  {
    return 0;
  }

  if (v13 > v9)
  {
    result = (*(**(a1 + 72) + 32))(*(a1 + 72));
    v10 = a2;
    if (result)
    {
      return result;
    }

    goto LABEL_12;
  }

  v10 = a2;
  if (v13 + v6 > v9 || (v11 = *(a1 + 328), bzero(v11, v6), (*(**(a1 + 72) + 80))(*(a1 + 72), 5, &v12), result = (*(**(a1 + 72) + 24))(*(a1 + 72), v11, v6, v12 - v6), v10 = a2, !result))
  {
LABEL_12:
    result = 0;
    *(a1 + 40) = v10;
  }

  return result;
}

uint64_t sub_1818F90AC(uint64_t a1, void *a2, _DWORD *a3, int a4, int a5)
{
  if (a4)
  {
    v10 = 1;
    v11 = 80;
  }

  else
  {
    v10 = *(a1 + 26) == 0;
    v11 = 88;
  }

  v12 = *(a1 + 328);
  v13 = *(a1 + v11);
  result = (*(*v13 + 16))(v13, &v167, 4, *a2);
  if (result)
  {
    return result;
  }

  v15 = v167;
  result = (*(*v13 + 16))(v13, v12, *(a1 + 200), *a2 + 4);
  if (result)
  {
    return result;
  }

  v16 = bswap32(v15);
  v17 = *(a1 + 200) + (4 * a4 + 4) + *a2;
  *a2 = v17;
  if (!v16 || v16 == *(a1 + 192))
  {
    return 101;
  }

  if (v16 > *(a1 + 32))
  {
    return 0;
  }

  if (a3)
  {
    v18 = v16 - 1;
    if ((v16 - 1) < *a3)
    {
      v19 = a3;
      while (1)
      {
        v20 = v19[2];
        if (!v20)
        {
          break;
        }

        v21 = v18 / v20;
        v18 %= v20;
        v19 = *&v19[2 * v21 + 4];
        if (!v19)
        {
          goto LABEL_17;
        }
      }

      if (*v19 >= 0xF81u)
      {
        v26 = v18 % 0x7C;
        v27 = v19 + 4;
        v28 = v27[v18 % 0x7C];
        if (v28)
        {
          v29 = v18 + 1;
          while (v28 != v29)
          {
            if (v26 == 123)
            {
              v26 = 0;
            }

            else
            {
              ++v26;
            }

            v28 = v27[v26];
            if (!v28)
            {
              goto LABEL_17;
            }
          }

          return 0;
        }
      }

      else if ((*(v19 + (v18 >> 3) + 16) >> (v18 & 7)))
      {
        return 0;
      }
    }
  }

LABEL_17:
  v166 = 0;
  if (a4)
  {
    result = sub_181934EEC(v13, v17 - 4, &v166);
    if (result)
    {
      return result;
    }

    if (!a5)
    {
      v22 = *(a1 + 56);
      v23 = (*(a1 + 200) - 200);
      if (v23 < 1)
      {
        goto LABEL_48;
      }

      v24 = v23 - 200;
      if (v23 < 0xC8)
      {
        v24 = 0;
      }

      if (v24 < 0xAF1)
      {
        v25 = (*(a1 + 200) - 200);
        goto LABEL_47;
      }

      v30 = (((v24 + 199) * 0x147AE147AE147AFuLL) >> 64) + 1;
      if (v24 >= 0x1771)
      {
        v165 = (((v24 + 199) * 0x147AE147AE147AFuLL) >> 64) + 1;
        v64 = v30 & 0x3FFFFE0;
        v65 = &v12[v23];
        v66 = *(a1 + 56);
        v67 = 0uLL;
        v68 = 0uLL;
        v69 = 0uLL;
        v70 = 0uLL;
        v71 = 0uLL;
        v72 = 0uLL;
        v73 = 0uLL;
        v164 = v64;
        do
        {
          _X26 = v65 - 13800;
          _X28 = v65 - 12800;
          __asm { PRFM            #0, [X28] }

          _X28 = v65 - 13000;
          __asm { PRFM            #0, [X28] }

          _X28 = v65 - 13200;
          v80.i8[0] = *v65;
          __asm { PRFM            #0, [X28] }

          v80.i8[1] = *(v65 - 200);
          _X28 = v65 - 13400;
          __asm { PRFM            #0, [X28] }

          v80.i8[2] = *(v65 - 400);
          _X28 = v65 - 13600;
          __asm { PRFM            #0, [X28] }

          v80.i8[3] = *(v65 - 600);
          __asm { PRFM            #0, [X26] }

          _X26 = v65 - 14000;
          v80.i8[4] = *(v65 - 800);
          __asm { PRFM            #0, [X26] }

          v80.i8[5] = *(v65 - 1000);
          _X26 = v65 - 14200;
          __asm { PRFM            #0, [X26] }

          v80.i8[6] = *(v65 - 1200);
          _X26 = v65 - 14800;
          _X28 = v65 - 14400;
          __asm { PRFM            #0, [X28] }

          v80.i8[7] = *(v65 - 1400);
          _X28 = v65 - 14600;
          __asm { PRFM            #0, [X28] }

          v96.i8[0] = *(v65 - 1600);
          __asm { PRFM            #0, [X26] }

          _X26 = v65 - 15000;
          v96.i8[1] = *(v65 - 1800);
          __asm { PRFM            #0, [X26] }

          v96.i8[2] = *(v65 - 2000);
          _X28 = v65 - 15200;
          __asm { PRFM            #0, [X28] }

          v96.i8[3] = *(v65 - 2200);
          _X28 = v65 - 15400;
          __asm { PRFM            #0, [X28] }

          v96.i8[4] = *(v65 - 2400);
          _X28 = v65 - 15600;
          __asm { PRFM            #0, [X28] }

          v96.i8[5] = *(v65 - 2600);
          _X28 = v65 - 15800;
          __asm { PRFM            #0, [X28] }

          v96.i8[6] = *(v65 - 2800);
          _X28 = v65 - 16000;
          __asm { PRFM            #0, [X28] }

          v96.i8[7] = *(v65 - 3000);
          _X28 = v65 - 16200;
          __asm { PRFM            #0, [X28] }

          _X28 = v65 - 16400;
          v113.i8[0] = *(v65 - 3200);
          __asm { PRFM            #0, [X28] }

          v113.i8[1] = *(v65 - 3400);
          _X28 = v65 - 16600;
          __asm { PRFM            #0, [X28] }

          v113.i8[2] = *(v65 - 3600);
          _X28 = v65 - 16800;
          __asm { PRFM            #0, [X28] }

          v113.i8[3] = *(v65 - 3800);
          _X28 = v65 - 17000;
          __asm { PRFM            #0, [X28] }

          v113.i8[4] = *(v65 - 4000);
          _X28 = v65 - 17200;
          __asm { PRFM            #0, [X28] }

          v113.i8[5] = *(v65 - 4200);
          _X28 = v65 - 17400;
          __asm { PRFM            #0, [X28] }

          v113.i8[6] = *(v65 - 4400);
          _X28 = v65 - 17600;
          __asm { PRFM            #0, [X28] }

          v113.i8[7] = *(v65 - 4600);
          _X28 = v65 - 17800;
          __asm { PRFM            #0, [X28] }

          _X28 = v65 - 18000;
          v130.i8[0] = *(v65 - 4800);
          __asm { PRFM            #0, [X28] }

          v130.i8[1] = *(v65 - 5000);
          _X28 = v65 - 18200;
          __asm { PRFM            #0, [X28] }

          v130.i8[2] = *(v65 - 5200);
          _X28 = v65 - 18400;
          __asm { PRFM            #0, [X28] }

          v130.i8[3] = *(v65 - 5400);
          _X28 = v65 - 18600;
          __asm { PRFM            #0, [X28] }

          v130.i8[4] = *(v65 - 5600);
          _X28 = v65 - 18800;
          __asm { PRFM            #0, [X28] }

          v130.i8[5] = *(v65 - 5800);
          _X28 = v65 - 19000;
          __asm { PRFM            #0, [X28] }

          v130.i8[6] = *(v65 - 6000);
          v130.i8[7] = *(v65 - 6200);
          v142 = vmovl_u8(v80);
          v143 = vmovl_u8(v96);
          v144 = vmovl_u8(v130);
          v145 = vmovl_u8(v113);
          v69 = vaddw_high_u16(v69, v143);
          v67 = vaddw_high_u16(v67, v142);
          v66 = vaddw_u16(v66, *v142.i8);
          v68 = vaddw_u16(v68, *v143.i8);
          v71 = vaddw_high_u16(v71, v145);
          v70 = vaddw_u16(v70, *v145.i8);
          v73 = vaddw_high_u16(v73, v144);
          v72 = vaddw_u16(v72, *v144.i8);
          v65 -= 6400;
          v64 -= 32;
        }

        while (v64);
        v22 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v70, v66), vaddq_s32(v72, v68)), vaddq_s32(vaddq_s32(v71, v67), vaddq_s32(v73, v69))));
        v31 = v30 & 0x3FFFFE0;
        v30 = (((v24 + 199) * 0x147AE147AE147AFuLL) >> 64) + 1;
        if (v165 == v164)
        {
          goto LABEL_48;
        }

        if ((v165 & 0x10) == 0)
        {
          v25 = v23 - 200 * v164;
          do
          {
LABEL_47:
            v22 += v12[v25];
            v146 = v25 > 0xC8;
            v25 -= 200;
          }

          while (v146);
          goto LABEL_48;
        }
      }

      else
      {
        v31 = 0;
      }

      v25 = v23 - 200 * (v30 & 0x3FFFFF0);
      v32 = 0uLL;
      v33 = v22;
      v34 = &v12[v23 - 200 * v31];
      _X9 = v34 - 12600;
      v36 = (v34 - 3000);
      v37 = v31 - (v30 & 0x3FFFFF0);
      v38 = 0uLL;
      v39 = 0uLL;
      do
      {
        __asm
        {
          PRFM            #0, [X9,#0xBB8]
          PRFM            #0, [X9,#0xAF0]
        }

        v46.i8[0] = v36[3000];
        __asm { PRFM            #0, [X9,#0xA28] }

        v46.i8[1] = v36[2800];
        __asm { PRFM            #0, [X9,#0x960] }

        v46.i8[2] = v36[2600];
        __asm { PRFM            #0, [X9,#0x898] }

        v46.i8[3] = v36[2400];
        __asm { PRFM            #0, [X9,#0x7D0] }

        v46.i8[4] = v36[2200];
        __asm { PRFM            #0, [X9,#0x708] }

        v46.i8[5] = v36[2000];
        __asm { PRFM            #0, [X9,#0x640] }

        v46.i8[6] = v36[1800];
        __asm { PRFM            #0, [X9,#0x578] }

        v46.i8[7] = v36[1600];
        __asm { PRFM            #0, [X9,#0x4B0] }

        v55.i8[0] = v36[1400];
        __asm { PRFM            #0, [X9,#0x3E8] }

        v55.i8[1] = v36[1200];
        __asm { PRFM            #0, [X9,#0x320] }

        v55.i8[2] = v36[1000];
        __asm { PRFM            #0, [X9,#0x258] }

        v55.i8[3] = v36[800];
        __asm { PRFM            #0, [X9,#0x190] }

        v55.i8[4] = v36[600];
        __asm { PRFM            #0, [X9,#0xC8] }

        v55.i8[5] = v36[400];
        __asm { PRFM            #0, [X9] }

        v55.i8[6] = v36[200];
        v55.i8[7] = *v36;
        v62 = vmovl_u8(v55);
        v63 = vmovl_u8(v46);
        v32 = vaddw_high_u16(v32, v63);
        v33 = vaddw_u16(v33, *v63.i8);
        v39 = vaddw_high_u16(v39, v62);
        v38 = vaddw_u16(v38, *v62.i8);
        _X9 -= 3200;
        v36 -= 3200;
        v37 += 16;
      }

      while (v37);
      v22 = vaddvq_s32(vaddq_s32(vaddq_s32(v33, v38), vaddq_s32(v32, v39)));
      if (v30 != (v30 & 0x3FFFFF0))
      {
        goto LABEL_47;
      }

LABEL_48:
      if (v22 != v166)
      {
        return 101;
      }
    }
  }

  if (a3)
  {
    result = sub_1818E70E0(a3, v16);
    if (result)
    {
      return result;
    }
  }

  if (v16 == 1)
  {
    v147 = v12[20];
    if (*(a1 + 178) != v147)
    {
      *(a1 + 178) = v147;
      v148 = *(a1 + 304);
      if (v148)
      {
        v148(*(a1 + 320), *(a1 + 200));
      }
    }
  }

  if (*(a1 + 344))
  {
    v149 = 0;
    v167 = 0;
    if (!a4)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v150 = sub_18193449C(a1, v16);
    v149 = v150;
    v167 = v150;
    if (!a4)
    {
      if (!v150)
      {
        goto LABEL_60;
      }

      v151 = (*(v150 + 26) & 8) == 0;
      goto LABEL_64;
    }
  }

  if (*(a1 + 11))
  {
LABEL_60:
    v151 = 1;
    goto LABEL_64;
  }

  v151 = *a2 <= *(a1 + 104);
LABEL_64:
  v152 = **(a1 + 72);
  if (!v152)
  {
LABEL_67:
    result = 0;
    if (!a4 && !v149)
    {
      *(a1 + 25) |= 2u;
      result = (*(a1 + 288))(a1, v16, &v167, 1);
      *(a1 + 25) &= ~2u;
      if (result)
      {
        return result;
      }

      sub_181934F3C(v167);
      result = 0;
    }

    goto LABEL_96;
  }

  v153 = *(a1 + 21);
  if (v153 <= 3)
  {
    if (v153 != 0 || !v151)
    {
      goto LABEL_67;
    }
  }

  else if (!v151)
  {
    goto LABEL_67;
  }

  if (v10)
  {
    result = (*(v152 + 24))();
  }

  else
  {
    v154 = *(a1 + 296);
    if (v154)
    {
      v12 = v154(*(a1 + 320), v12, v16, 7);
      v152 = **(a1 + 72);
    }

    result = (*(v152 + 24))();
    v155 = *(a1 + 296);
    if (v155)
    {
      v156 = result;
      if (v155(*(a1 + 320), v12, v16, 3))
      {
        result = v156;
      }

      else
      {
        result = 7;
      }
    }
  }

  if (v16 > *(a1 + 40))
  {
    *(a1 + 40) = v16;
  }

  v157 = *(a1 + 112);
  if (v157)
  {
    v158 = result;
    if (v10)
    {
      v159 = *(a1 + 296);
      if (!v159 || (v159(*(a1 + 320), v12, v16, 3) ? (v158 = v158) : (v158 = 7), (v157 = *(a1 + 112)) != 0))
      {
        sub_181934FA4(v157, v16, v12);
      }

      v160 = *(a1 + 296);
      if (v160)
      {
        v12 = v160(*(a1 + 320), v12, v16, 7);
        if (v12)
        {
          result = v158;
        }

        else
        {
          result = 7;
        }

        goto LABEL_96;
      }
    }

    else
    {
      sub_181934FA4(*(a1 + 112), v16, v12);
    }

    result = v158;
  }

LABEL_96:
  if (v167)
  {
    v161 = result;
    v162 = v167[1];
    memcpy(v162, v12, *(a1 + 200));
    (*(a1 + 280))(v167);
    if (v16 == 1)
    {
      *(a1 + 136) = *(v162 + 24);
    }

    if (v10)
    {
      v163 = *(a1 + 296);
      if (v163)
      {
        if (v163(*(a1 + 320), v162, *(v167 + 12), 3))
        {
          v161 = v161;
        }

        else
        {
          v161 = 7;
        }
      }
    }

    sub_181932B68(v167);
    return v161;
  }

  return result;
}

_BYTE *sub_1818F9A28(uint64_t a1)
{
  result = *(a1 + 16);
  if (*result)
  {
    *result = 0;
    if (*(a1 + 56) >= 2)
    {
      return sub_1818C6DCC(result);
    }
  }

  return result;
}

void *sub_1818F9A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  if (*(*a1 + 103))
  {
    goto LABEL_2;
  }

  v7 = a4;
  v8 = a3;
  if (!*(v5 + 197))
  {
    v17 = *(v5 + 44);
    v18 = *(*(v5 + 32) + 24);
    *(v5 + 100) = *(v18 + 113);
    if ((*(v18 + 114) & 1) != 0 || (v19 = sub_18189F330(v5, 0, (a1 + 8), 0)) == 0)
    {
      v20 = *(v5 + 40);
      if (v20 < 2)
      {
LABEL_22:
        if ((v17 & 1) == 0)
        {
          *(v5 + 44) &= ~1u;
        }

        if (*(v5 + 111))
        {
          *(v5 + 44) |= 0x10u;
        }

        goto LABEL_6;
      }

      v21 = 32 * v20 - 8;
      while (1)
      {
        if ((*(*(*(v5 + 32) + v21) + 114) & 1) == 0)
        {
          v19 = sub_18189F330(v5, (v20 - 1), (a1 + 8), 0);
          if (v19)
          {
            break;
          }
        }

        --v20;
        v21 -= 32;
        if ((v20 + 1) <= 2)
        {
          goto LABEL_22;
        }
      }
    }

    *(a1 + 24) = v19;
    ++*(a1 + 52);
    goto LABEL_2;
  }

LABEL_6:
  if (v7)
  {
    ++*(v5 + 107);
  }

  if (*(a2 + 35))
  {
    v11 = *(a2 + 72);
    v12 = *(*a1 + 32);
    if (v11)
    {
      v13 = (v12 + 24);
      v14 = 0xFFFFFFFF00000000;
      do
      {
        v15 = *v13;
        v13 += 4;
        v14 += 0x100000000;
      }

      while (v15 != v11);
      v16 = v14 >> 32;
    }

    else
    {
      v16 = -32768;
    }

    v10 = (v12 + 32 * v16);
  }

  else
  {
    v10 = (a2 + 72);
  }

  v22 = sub_1818CA520(a1, v8, *(a2 + 8), *v10);
  v23 = v22;
  if (v7)
  {
    --*(v5 + 107);
    if (!v22)
    {
      v24 = *a1;
      v25 = *(*a1 + 40);
      if (v25 >= 1)
      {
        v26 = 0;
        v27 = *(a2 + 72);
        do
        {
          v30 = *(v24 + 4) + 32 * v26;
          if (*(v30 + 8))
          {
            if (v27)
            {
              v31 = *v30;
              for (i = v27; ; ++i)
              {
                if (*i == *v31)
                {
                  if (!*i)
                  {
                    break;
                  }
                }

                else if (byte_181A20298[*i] != byte_181A20298[*v31])
                {
                  goto LABEL_36;
                }

                ++v31;
              }
            }

            if (*(a1 + 152))
            {
              v28 = *(a1 + 152);
            }

            else
            {
              v28 = a1;
            }

            v29 = *(v28 + 116);
            if ((v29 & (1 << v26)) == 0)
            {
              *(v28 + 116) = v29 | (1 << v26);
              if (v26 == 1)
              {
                sub_1819108F4(v28);
                v25 = *(v24 + 10);
              }
            }
          }

LABEL_36:
          ++v26;
        }

        while (v26 < v25);
      }

      v37 = *(a1 + 60) + 1;
      *(a1 + 60) = v37;
      v38 = sub_1818E7DFC(a1);
      if (v38)
      {
        v39 = *(v38 + 144);
        if (*(v38 + 148) <= v39)
        {
          v59 = v38;
          sub_18194C8AC(v38, 4, 0, v37, -1);
          v38 = v59;
        }

        else
        {
          *(v38 + 144) = v39 + 1;
          v40 = *(v38 + 136) + 40 * v39;
          *v40 = 4;
          *(v40 + 8) = v37;
          *(v40 + 12) = -1;
          *(v40 + 24) = 0;
          *(v40 + 32) = 0;
          *(v40 + 16) = 0;
        }

        *(v38 + 272) |= 1u;
        if (*(*(*(*v38 + 32) + 8) + 17))
        {
          *(v38 + 276) |= 1u;
        }
      }

      goto LABEL_2;
    }
  }

  else if (!v22)
  {
    goto LABEL_2;
  }

  v33 = *(v22 + 96);
  if (v33)
  {
    v34 = (*(v5 + 32) + 24);
    v35 = -1;
    do
    {
      v36 = *v34;
      v34 += 4;
      ++v35;
    }

    while (v36 != v33);
  }

  else
  {
    v35 = -32768;
  }

  if (*(v22 + 63) == 1 && sub_181960D84(a1, v22))
  {
    goto LABEL_2;
  }

  if (v35 == 1)
  {
    v41 = "sqlite_temp_master";
  }

  else
  {
    v41 = "sqlite_master";
  }

  v42 = *(*(v5 + 32) + 32 * v35);
  v43 = *a1;
  v44 = *(*a1 + 528);
  if (v44 && !v43[197] && !*(a1 + 302))
  {
    v60 = v44(*(v43 + 67), 9, v41, 0, *(*(v5 + 32) + 32 * v35), *(a1 + 368));
    if (v60 == 1)
    {
      goto LABEL_110;
    }

    if ((v60 & 0xFFFFFFFD) != 0)
    {
      goto LABEL_114;
    }

    if (v60)
    {
      goto LABEL_2;
    }
  }

  if (v8)
  {
    v45 = 0;
    v46 = v35 == 1;
    v47 = 17;
    v48 = 15;
    goto LABEL_71;
  }

  if (*(v23 + 63) != 1)
  {
    v45 = 0;
    v46 = v35 == 1;
    v47 = 11;
    v48 = 13;
LABEL_71:
    if (v46)
    {
      v53 = v48;
    }

    else
    {
      v53 = v47;
    }

    goto LABEL_74;
  }

  v49 = (v23 + 10);
  do
  {
    v50 = *v49;
    v51 = *v49;
    v52 = *v51;
    v49 = (v51 + 5);
  }

  while (v52 != v5);
  v45 = *(v50[1] + 8);
  v53 = 30;
LABEL_74:
  v54 = *v23;
  v55 = *a1;
  v56 = *(*a1 + 528);
  if (!v56)
  {
    goto LABEL_79;
  }

  if (!v55[197] && !*(a1 + 302))
  {
    v61 = v56(*(v55 + 67), v53, v54, v45, v42, *(a1 + 368));
    if (v61 != 1)
    {
      if ((v61 & 0xFFFFFFFD) != 0)
      {
        goto LABEL_114;
      }

      if (v61)
      {
        goto LABEL_2;
      }

      v54 = *v23;
      v55 = *a1;
      v56 = *(*a1 + 528);
      if (!v56)
      {
        goto LABEL_79;
      }

      goto LABEL_77;
    }

LABEL_110:
    v63 = 23;
    sub_181910730(a1, "not authorized");
LABEL_115:
    *(a1 + 24) = v63;
    goto LABEL_2;
  }

LABEL_77:
  if (v55[197] || *(a1 + 302))
  {
    goto LABEL_79;
  }

  v62 = v56(*(v55 + 67), 9, v54, 0, v42, *(a1 + 368));
  if (v62 == 1)
  {
    goto LABEL_110;
  }

  if ((v62 & 0xFFFFFFFD) != 0)
  {
LABEL_114:
    v63 = 1;
    sub_181910730(a1, "authorizer malfunction");
    goto LABEL_115;
  }

  if (v62)
  {
    goto LABEL_2;
  }

  v54 = *v23;
LABEL_79:
  if (!v54)
  {
LABEL_137:
    v72 = *(v23 + 12);
    if ((v72 & 0x1000) != 0 && (*(v5 + 51) & 0x10) != 0 && !*(v5 + 592) && !*(v5 + 220))
    {
      if (*(v5 + 564) >= 1 && (v72 & 0x8000) == 0 && !*(v5 + 600))
      {
        goto LABEL_196;
      }
    }

    else if ((v72 & 0x8000) == 0)
    {
      goto LABEL_196;
    }

    goto LABEL_199;
  }

  v57 = *v54;
  if (!*v54)
  {
    v58 = "sqlite_";
    goto LABEL_127;
  }

  if ((v57 & 0xFFFFFFDF) != 0x53)
  {
    v57 += byte_181A20298;
    v58 = "sqlite_";
LABEL_126:
    LODWORD(v57) = *v57;
    goto LABEL_127;
  }

  v57 = v54[1];
  if (!v54[1])
  {
    v58 = "qlite_";
    goto LABEL_127;
  }

  if ((v57 & 0xFFFFFFDF) != 0x51)
  {
    v57 += byte_181A20298;
    v58 = "qlite_";
    goto LABEL_126;
  }

  v57 = v54[2];
  if (!v54[2])
  {
    v58 = "lite_";
    goto LABEL_127;
  }

  if ((v57 & 0xFFFFFFDF) != 0x4C)
  {
    v57 += byte_181A20298;
    v58 = "lite_";
    goto LABEL_126;
  }

  v57 = v54[3];
  if (!v54[3])
  {
    v58 = "ite_";
    goto LABEL_127;
  }

  if ((v57 & 0xFFFFFFDF) != 0x49)
  {
    v57 += byte_181A20298;
    v58 = "ite_";
    goto LABEL_126;
  }

  v57 = v54[4];
  if (!v54[4])
  {
    v58 = "te_";
    goto LABEL_127;
  }

  if ((v57 & 0xFFFFFFDF) != 0x54)
  {
    v57 += byte_181A20298;
    v58 = "te_";
    goto LABEL_126;
  }

  v57 = v54[5];
  if (!v54[5])
  {
    v58 = "e_";
    goto LABEL_127;
  }

  if ((v57 & 0xFFFFFFDF) != 0x45)
  {
    v57 += byte_181A20298;
    v58 = "e_";
    goto LABEL_126;
  }

  v57 = v54[6];
  if (v54[6])
  {
    if (v57 == 95)
    {
      goto LABEL_128;
    }

    v57 += byte_181A20298;
    v58 = "_";
    goto LABEL_126;
  }

  v58 = "_";
LABEL_127:
  if (v57 != byte_181A20298[*v58])
  {
    goto LABEL_137;
  }

LABEL_128:
  v64 = v54[7];
  if (!v54[7])
  {
    LODWORD(v65) = 0;
    v73 = "parameters";
    goto LABEL_195;
  }

  v65 = &byte_181A20298[v64];
  v66 = v64 & 0xFFFFFFDF;
  if (v66 != 83)
  {
    v71 = "stat";
    v70 = v65;
LABEL_153:
    v74 = *v70;
    goto LABEL_154;
  }

  v67 = v54[8];
  if (!v54[8])
  {
    v74 = 0;
    v71 = "tat";
    goto LABEL_154;
  }

  if ((v67 & 0xFFFFFFDF) != 0x54)
  {
    v70 = &byte_181A20298[v67];
    v71 = "tat";
    goto LABEL_153;
  }

  v68 = v54[9];
  if (!v54[9])
  {
    v74 = 0;
    v71 = "at";
    goto LABEL_154;
  }

  if ((v68 & 0xFFFFFFDF) != 0x41)
  {
    v70 = &byte_181A20298[v68];
    v71 = "at";
    goto LABEL_153;
  }

  v69 = v54[10];
  if (v54[10])
  {
    if ((v69 & 0xFFFFFFDF) == 0x54)
    {
      goto LABEL_196;
    }

    v70 = &byte_181A20298[v69];
    v71 = "t";
    goto LABEL_153;
  }

  v74 = 0;
  v71 = "t";
LABEL_154:
  if (v74 != byte_181A20298[*v71])
  {
    if (v66 != 80)
    {
      v73 = "parameters";
      goto LABEL_194;
    }

    v65 = v54[8];
    if (!v54[8])
    {
      v73 = "arameters";
      goto LABEL_195;
    }

    if ((v65 & 0xFFFFFFDF) != 0x41)
    {
      v65 += byte_181A20298;
      v73 = "arameters";
      goto LABEL_194;
    }

    v65 = v54[9];
    if (!v54[9])
    {
      v73 = "rameters";
      goto LABEL_195;
    }

    if ((v65 & 0xFFFFFFDF) != 0x52)
    {
      v65 += byte_181A20298;
      v73 = "rameters";
      goto LABEL_194;
    }

    v65 = v54[10];
    if (!v54[10])
    {
      v73 = "ameters";
      goto LABEL_195;
    }

    if ((v65 & 0xFFFFFFDF) != 0x41)
    {
      v65 += byte_181A20298;
      v73 = "ameters";
      goto LABEL_194;
    }

    v65 = v54[11];
    if (!v54[11])
    {
      v73 = "meters";
      goto LABEL_195;
    }

    if ((v65 & 0xFFFFFFDF) != 0x4D)
    {
      v65 += byte_181A20298;
      v73 = "meters";
      goto LABEL_194;
    }

    v65 = v54[12];
    if (!v54[12])
    {
      v73 = "eters";
      goto LABEL_195;
    }

    if ((v65 & 0xFFFFFFDF) != 0x45)
    {
      v65 += byte_181A20298;
      v73 = "eters";
      goto LABEL_194;
    }

    v65 = v54[13];
    if (!v54[13])
    {
      v73 = "ters";
      goto LABEL_195;
    }

    if ((v65 & 0xFFFFFFDF) != 0x54)
    {
      v65 += byte_181A20298;
      v73 = "ters";
      goto LABEL_194;
    }

    v65 = v54[14];
    if (!v54[14])
    {
      v73 = "ers";
      goto LABEL_195;
    }

    if ((v65 & 0xFFFFFFDF) != 0x45)
    {
      v65 += byte_181A20298;
      v73 = "ers";
      goto LABEL_194;
    }

    v65 = v54[15];
    if (!v54[15])
    {
      v73 = "rs";
      goto LABEL_195;
    }

    if ((v65 & 0xFFFFFFDF) != 0x52)
    {
      v65 += byte_181A20298;
      v73 = "rs";
      goto LABEL_194;
    }

    v65 = v54[16];
    if (!v54[16])
    {
      v73 = "s";
LABEL_195:
      if (v65 == byte_181A20298[*v73])
      {
        goto LABEL_196;
      }

LABEL_199:
      sub_181910730(a1, "table %s may not be dropped");
      goto LABEL_2;
    }

    if ((v65 & 0xFFFFFFDF) != 0x53)
    {
      v65 += byte_181A20298;
      v73 = "s";
LABEL_194:
      LODWORD(v65) = *v65;
      goto LABEL_195;
    }
  }

LABEL_196:
  v75 = *(v23 + 63);
  if (v8)
  {
    if (v75 != 2)
    {
      sub_181910730(a1, "use DROP TABLE to delete table %s");
      goto LABEL_2;
    }
  }

  else if (v75 == 2)
  {
    sub_181910730(a1, "use DROP VIEW to delete view %s");
    goto LABEL_2;
  }

  if (sub_1818E7DFC(a1))
  {
    sub_18195D3A8(a1, 1, v35);
    if (!v8)
    {
      sub_18196375C(a1, v35, "tbl", *v23);
      sub_181963908(a1, a2, v23);
    }

    sub_181963CC0(a1, v23, v35, v8);
  }

LABEL_2:

  return sub_1818BB5B0(v5, a2, a3, a4);
}

uint64_t sub_1818FA480(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  if (*(a1 + 17))
  {
    ++*(a1 + 20);
    if (!*(a1 + 18))
    {
      sub_181932DEC(a1);
      v7 = *(v6 + 16);
      if (v7)
      {
        goto LABEL_4;
      }

LABEL_13:
      if (*(a1 + 19))
      {
        *(a1 + 19) = 0;
        for (i = *(*(a1 + 8) + 16); i; i = *(i + 40))
        {
          if ((*(i + 1) & 0x10) != 0)
          {
            *(a1 + 19) = 1;
            if (*(i + 80) == a2)
            {
              *i = 1;
            }
          }
        }
      }

      result = sub_1818FA5A4(v6, a2, 0, a3);
      goto LABEL_21;
    }
  }

  v7 = *(v6 + 16);
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_4:
  v8 = v7;
  while (a2)
  {
    if (*(v8 + 20) == a2)
    {
      v7 = v8;
      break;
    }

    v8 = *(v8 + 5);
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  result = sub_18193880C(v7, a2, 0);
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_21:
  if (*(a1 + 17))
  {
    v11 = *(a1 + 20) - 1;
    *(a1 + 20) = v11;
    if (!v11)
    {
      v12 = result;
      sub_181932ECC(a1);
      return v12;
    }
  }

  return result;
}

uint64_t sub_1818FA5A4(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  if (*(a1 + 64) < a2)
  {

    return sub_18190EDA8(89414);
  }

  v26[11] = v4;
  v26[12] = v5;
  v25 = 0;
  v26[0] = 0;
  v24[0] = 0;
  v24[1] = 0;
  v10 = a2;
  result = sub_181943894(a1, a2, v26);
  if (result)
  {
    return result;
  }

  v11 = v26[0];
  if ((*(a1 + 32) & 4) != 0 || (v10 != 1 ? (v12 = 1) : (v12 = 2), v12 == *(*(v26[0] + 112) + 56)))
  {
    v13 = *(v26[0] + 9);
    LODWORD(v14) = *(v26[0] + 24);
    if (*(v26[0] + 24))
    {
      v15 = 0;
      v16 = 0;
      do
      {
        v17 = *(v11 + 80);
        v18 = (*(*(v11 + 96) + v15 + 1) | (*(*(v11 + 96) + v15) << 8)) & *(v11 + 26);
        if (!*(v11 + 8))
        {
          v19 = sub_1818FA5A4(a1, bswap32(*(v17 + v18)), 1, a4);
          if (v19)
          {
            goto LABEL_31;
          }
        }

        (*(v11 + 128))(v11, v17 + v18, v24);
        if (v25 != WORD2(v25))
        {
          v19 = sub_181943DF0(v11, v17 + v18, v24);
          if (v19)
          {
            goto LABEL_31;
          }
        }

        ++v16;
        v14 = *(v11 + 24);
        v15 += 2;
      }

      while (v16 < v14);
    }

    if (*(v11 + 8))
    {
      v20 = a3;
      if (!a4)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    v19 = sub_1818FA5A4(a1, bswap32(*(*(v11 + 80) + v13 + 8)), 1, a4);
    if (!v19)
    {
      v20 = a3;
      if (!a4 || *(v11 + 1))
      {
LABEL_22:
        if (v20)
        {
          v19 = sub_1818F0E10(*(v11 + 72), v11, *(v11 + 4));
        }

        else
        {
          v19 = sub_1818D8D88(*(v11 + 112));
          if (!v19)
          {
            sub_1818E2114(v11, *(*(v11 + 80) + v13) | 8);
            v19 = 0;
          }
        }

        goto LABEL_31;
      }

      LODWORD(v14) = *(v11 + 24);
LABEL_21:
      *a4 += v14;
      goto LABEL_22;
    }
  }

  else
  {
    v19 = sub_18193596C(89421, v26[0]);
  }

LABEL_31:
  v21 = v19;
  v22 = *(v11 + 112);
  if ((*(v22 + 52) & 0x20) != 0)
  {
    v23 = *(v22 + 40);
    --*(v23 + 152);
    *(v22 + 32) = *(v23 + 168);
    *(v23 + 168) = v22;
    (*(**(v23 + 72) + 144))(*(v23 + 72), *(v23 + 200) * (*(v22 + 48) - 1), *(v22 + 8));
  }

  else
  {
    sub_181932B68(v22);
  }

  return v21;
}

uint64_t _sqlite3_apple_archive_type(const char *a1, int *a2, char **a3)
{
  v19 = *MEMORY[0x1E69E9840];
  *a2 = -1;
  v6 = open(a1, 0, 0);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = v6;
    if (pread(v6, __buf, 0x16uLL, 0) == 22)
    {
      if (*__buf != 1766609235 || *&__buf[3] != 543519849)
      {
        goto LABEL_7;
      }

      if (*__buf == 0x66206574694C5153 && *&__buf[7] == 0x332074616D726F66)
      {
        v9 = 0;
        v10 = 3;
        goto LABEL_8;
      }

      v14 = *__buf == 0x41206574694C5153 && *&__buf[8] == 0x415F455649484352;
      if (!v14 || *&__buf[14] != 0x315F454C5050415FLL)
      {
LABEL_7:
        v9 = 0;
        v10 = 1;
LABEL_8:
        *a2 = v10;
LABEL_31:
        close(v7);
        return v9;
      }

      memset(v17, 0, sizeof(v17));
      if (!sub_1818FBD10(v7, v17))
      {
        if (*(&v17[0] + 1) == 2)
        {
          v9 = 0;
          v10 = 5;
        }

        else
        {
          if (*(&v17[0] + 1) != 1)
          {
            v9 = 0;
            *a2 = 0;
            goto LABEL_31;
          }

          v9 = 0;
          v10 = 4;
        }

        goto LABEL_8;
      }

      if (a3)
      {
        v9 = *__error();
        v12 = sqlite3_mprintf("sql_read_archive_header('%s') failed with errno %d");
        goto LABEL_13;
      }
    }

    else if (a3)
    {
      v9 = *__error();
      v12 = sqlite3_mprintf("pread('%s') failed returning %ld bytes with errno %d");
LABEL_13:
      *a3 = v12;
      goto LABEL_31;
    }

    v9 = 0xFFFFFFFFLL;
    goto LABEL_31;
  }

  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = __error();
  v9 = *v11;
  *a3 = sqlite3_mprintf("open('%s') failed with errno %d", a1, *v11);
  return v9;
}

uint64_t sub_1818FBD10(int a1, uint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0x400uLL, 0x89782CC4uLL);
  if (read(a1, v4, 0x16uLL) == 22 && !strncmp("SQLite ARCHIVE_APPLE_1", v4, 0x16uLL))
  {
    v11 = 0;
    if (read(a1, &v11, 1uLL) >= 1)
    {
      v6 = 22;
      do
      {
        if (v11 == 10)
        {
          break;
        }

        v4[v6] = v11;
        if (read(a1, &v11, 1uLL) < 1)
        {
          break;
        }
      }

      while (v6++ < 0x3FF);
    }

    v10 = 0;
    v8 = strchr(v4, 44);
    if (v8)
    {
      *a2 = strtol(v8 + 1, &v10, 0);
      *(a2 + 4) = strtol(v10 + 1, &v10, 0);
      *(a2 + 8) = strtoll(v10 + 1, &v10, 0);
      *(a2 + 16) = strtoll(v10 + 1, &v10, 0);
      *(a2 + 24) = strtoll(v10 + 1, &v10, 0);
      *(a2 + 32) = strtoll(v10 + 1, &v10, 0);
      v9 = 0;
      *(a2 + 40) = strtoll(v10 + 1, &v10, 0);
    }

    else
    {
      v9 = 0xFFFFFFFFLL;
    }

    free(v4);
    return v9;
  }

  else
  {
    free(v4);
    return 0xFFFFFFFFLL;
  }
}

uint64_t _sqlite3_apple_archive(const char *a1, const char *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, char ***a7, char **a8)
{
  LODWORD(v10) = a5;
  v12 = a3;
  v204 = *MEMORY[0x1E69E9840];
  if (qword_1EA831850 != -1)
  {
    sub_181A1E948();
  }

  v175 = -1;
  result = _sqlite3_apple_archive_type(a1, &v175, a8);
  if (!result)
  {
    if (v175 == 3)
    {
      if (a4 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = a4;
      }

      v170 = a2;
      if (a4 != 3)
      {
        if (v10)
        {
          v10 = v10;
        }

        else
        {
          v10 = 2049;
        }

LABEL_17:
        v173 = malloc_type_calloc(1uLL, 0x20uLL, 0x10040436913F5uLL);
        if (v16 == 3)
        {
          v22 = sub_1818FD8C0(a1, a2, v12);
          v23 = v173;
          *v173 = strdup(a2);
          memset(&v174, 0, sizeof(v174));
          v24 = sqlite3_mprintf("%s-wal", a2);
          if (stat(v24, &v174) || v174.st_size < 1)
          {
            free(v24);
            v25 = 1;
          }

          else
          {
            *v173 = v24;
            v25 = 2;
          }

          memset(&v174, 0, sizeof(v174));
          v27 = sqlite3_mprintf("%s-journal", a2);
          if (stat(v27, &v174) || v174.st_size < 1)
          {
            free(v27);
          }

          else
          {
            ++v25;
            *v173 = v27;
          }

          v26 = v22;
          if (!v22)
          {
            goto LABEL_256;
          }

          goto LABEL_265;
        }

        if (v16 == 2)
        {
          v168 = v10;
          v20 = sub_1818FE71C();
          memset(&ppStmt, 0, sizeof(ppStmt));
          db[0] = 0;
          v21 = sqlite3_open_v2(a1, db, v12 | 1, 0);
          if (v21)
          {
            fprintf(*MEMORY[0x1E69E9848], "sqlite3_open_v2 open failed with %d", v21);
          }

          else
          {
            sqlite3_db_config(db[0], 1006, 1, 0);
            sqlite3_busy_timeout(db[0], 60000);
            sqlite3_extended_result_codes(db[0], 1);
          }

          v28 = mkstemp(v20);
          free(v20);
          if (v28 < 0)
          {
            v26 = 0xFFFFFFFFLL;
            v23 = v173;
            v38 = a2;
          }

          else
          {
            bzero(filename, 0x400uLL);
            fcntl(v28, 50, filename);
            *v186 = *"delete";
            *&v186[16] = unk_181A1FA80;
            sub_1818FE7F4(db[0], "pragma journal_mode", v186, 0x20u);
            v29 = *v186 == 24951 && v186[2] == 108;
            v30 = !v29;
            v198[0] = 0;
            v176[0] = 0;
            v176[1] = 0;
            *&v177 = 0;
            if (!sqlite3_open_v2(filename, v198, v12 | 6, 0))
            {
              sqlite3_busy_timeout(db[0], 60000);
              sqlite3_extended_result_codes(db[0], 1);
              if (!sqlite3_file_control(v198[0], 0, 102, db[0]))
              {
                v31 = malloc_type_calloc(1uLL, 0x800uLL, 0x10040436913F5uLL);
                v32 = malloc_type_calloc(1uLL, 0x800uLL, 0x10040436913F5uLL);
                v176[0] = v31;
                v176[1] = v32;
                DWORD1(v177) = 256;
                sqlite3_exec(v198[0], "select name,sql from sqlite_master where type = 'index' and rootpage != 0", sub_1818FEBDC, v176, 0);
                sqlite3_exec(v198[0], "BEGIN EXCLUSIVE", 0, 0, 0);
                v33 = v177;
                if (v177)
                {
                  v34 = 0;
                  v35 = MEMORY[0x1E69E9848];
                  do
                  {
                    if (*(v176[0] + v34) && *(v176[1] + v34))
                    {
                      v36 = sqlite3_mprintf("DROP INDEX IF EXISTS %w", *(v176[0] + v34));
                      *&errmsg.st_dev = 0;
                      v37 = sqlite3_exec(v198[0], v36, 0, 0, &errmsg);
                      if (v37 && v37 != 101)
                      {
                        fprintf(*v35, "while executing statement ('%s') it failed with error code %d and reason:'%s'\n", v36, v37, *&errmsg.st_dev);
                        *(v176[0] + v34) = 0;
                      }

                      if (*&errmsg.st_dev)
                      {
                        sqlite3_free(*&errmsg.st_dev);
                      }

                      sqlite3_free(v36);
                      v33 = v177;
                    }

                    ++v34;
                  }

                  while (v34 < v33);
                }

                sqlite3_exec(v198[0], "COMMIT", 0, 0, 0);
                sqlite3_exec(v198[0], "VACUUM", 0, 0, 0);
                if (!v30)
                {
                  sqlite3_exec(v198[0], "pragma journal_mode = wal", 0, 0, 0);
                  sqlite3_exec(v198[0], "BEGIN EXCLUSIVE", 0, 0, 0);
                  sqlite3_exec(v198[0], "COMMIT", 0, 0, 0);
                }
              }
            }

            if (v198[0])
            {
              sqlite3_close(v198[0]);
            }

            v23 = v173;
            v41 = v170;
            if (db[0])
            {
              sqlite3_close(db[0]);
            }

            v164 = v28;
            if (v177)
            {
              v42 = 0;
              v43 = 0;
              do
              {
                v45 = *(v176[1] + v42);
                if (v45 && *(v176[0] + v42))
                {
                  if (v43)
                  {
                    v44 = sqlite3_mprintf("%s;\n%s", v43, v45);
                    sqlite3_free(v43);
                    v43 = v44;
                  }

                  else
                  {
                    v43 = sqlite3_mprintf("%s", *(v176[1] + v42));
                  }
                }

                ++v42;
              }

              while (v42 < v177);
              if (v43)
              {
                v46 = sqlite3_mprintf("%s;\n", v43);
                sqlite3_free(v43);
                if (v46 && (v47 = strlen(v46)) != 0)
                {
                  v48 = v47;
                  memset(&errmsg, 0, 40);
                  v49 = off_1EA831858(&errmsg, 0, v168);
                  if (v49)
                  {
                    fprintf(*MEMORY[0x1E69E9848], "compression_stream_init failed for %d\n", v49);
                    v50 = 0;
                    v51 = 0;
                  }

                  else
                  {
                    v162 = a7;
                    v110 = v48 + 1;
                    v111 = malloc_type_valloc(0x80000uLL, 0x7ACE1A90uLL);
                    v50 = 0;
                    v51 = 0;
                    *&errmsg.st_uid = v46;
                    *&errmsg.st_rdev = v110;
                    do
                    {
                      *&errmsg.st_dev = v111;
                      errmsg.st_ino = 0x80000;
                      v113 = off_1EA831860(&errmsg, 1);
                      if (v113 >= 2)
                      {
                        fprintf(*MEMORY[0x1E69E9848], "compression_stream_process bravo failed for %d\n", v113);
                      }

                      v114 = 0x80000 - errmsg.st_ino;
                      if ((0x80000 - errmsg.st_ino) >= 1)
                      {
                        if (v51)
                        {
                          v112 = malloc_type_realloc(v51, v114 + v50, 0x17776F5CuLL);
                        }

                        else
                        {
                          v112 = malloc_type_malloc(v114 + v50, 0xC6D20904uLL);
                        }

                        v51 = v112;
                        memcpy(v112 + v50, v111, v114);
                        v50 += v114;
                      }

                      v23 = v173;
                    }

                    while (!v113);
                    off_1EA831868(&errmsg);
                    a7 = v162;
                    v28 = v164;
                  }

                  queue = v51;
                }

                else
                {
                  v50 = 0;
                  queue = 0;
                }
              }

              else
              {
                v46 = 0;
                v50 = 0;
                queue = 0;
              }

              sqlite3_free(v46);
              v41 = v170;
            }

            else
            {
              v50 = 0;
              queue = 0;
            }

            v172 = open(filename, 0, 0);
            memset(&ppStmt, 0, sizeof(ppStmt));
            if (stat(filename, &ppStmt) == -1)
            {
              v115 = *MEMORY[0x1E69E9848];
              v116 = __error();
              fprintf(v115, "stat failed for %d\n", *v116);
            }

            memset(&ppStmt, 0, sizeof(ppStmt));
            if (stat(a1, &ppStmt) == -1)
            {
              v117 = *MEMORY[0x1E69E9848];
              v118 = __error();
              fprintf(v117, "stat failed for %d\n", *v118);
            }

            v119 = open(v41, 1538, ppStmt.st_mode | 0x80u);
            if (v119 < 0)
            {
              v143 = *MEMORY[0x1E69E9848];
              v144 = __error();
              fprintf(v143, "open destination failed for %d\n", *v144);
              close(v172);
            }

            else
            {
              v120 = v119;
              *&errmsg.st_dev = 1;
              *&errmsg.st_ino = xmmword_181A1FA30;
              *&errmsg.st_rdev = v168;
              errmsg.st_atimespec = v50;
              sub_1818FE958(v119, &errmsg.st_dev);
              v163 = a7;
              if (v50)
              {
                write(v120, queue, v50);
                free(queue);
                queue = 0;
              }

              v121 = malloc_type_valloc(0x80000uLL, 0xDC0A4E6EuLL);
              v122 = malloc_type_valloc(0x80000uLL, 0xB6E94C83uLL);
              memset(v202, 0, 40);
              v123 = off_1EA831858(v202, 0, v168);
              if (v123)
              {
                fprintf(*MEMORY[0x1E69E9848], "compression_stream_init failed for %d\n", v123);
              }

              v124 = read(v172, v121, 0x80000uLL);
              v169 = v121;
              if (v124 >= 1)
              {
                v125 = MEMORY[0x1E69E9848];
                do
                {
                  *&v202[0] = v122;
                  *(&v202[0] + 1) = 0x80000;
                  *&v202[1] = v121;
                  *(&v202[1] + 1) = v124;
                  do
                  {
                    v126 = off_1EA831860(v202, 0);
                    if (v126 >= 2)
                    {
                      fprintf(*v125, "compression_stream_process bravo failed for %d\n", v126);
                    }

                    if (*(&v202[0] + 1) != 0x80000)
                    {
                      v127 = 0x80000 - *(&v202[0] + 1);
                      v128 = write(v120, v122, 0x80000 - *(&v202[0] + 1));
                      if (v128 != v127)
                      {
                        v129 = v128;
                        v130 = *v125;
                        v131 = __error();
                        fprintf(v130, "last write ended with return %ld expected %ld with errno %d\n", v129, v124, *v131);
                      }
                    }

                    if (v126 == 1)
                    {
                      break;
                    }
                  }

                  while (!v126 && *(&v202[1] + 1) != 0);
                  v121 = v169;
                  v124 = read(v172, v169, 0x80000uLL);
                }

                while (v124 > 0);
              }

              *&v202[0] = v122;
              *(&v202[0] + 1) = 0x80000;
              v202[1] = v121;
              v133 = MEMORY[0x1E69E9848];
              do
              {
                v134 = off_1EA831860(v202, 1);
                if (v134 >= 2)
                {
                  fprintf(*v133, "compression_stream_process bravo failed for %d\n", v134);
                }

                if (*(&v202[0] + 1) != 0x80000)
                {
                  v135 = 0x80000 - *(&v202[0] + 1);
                  v136 = write(v120, v122, 0x80000 - *(&v202[0] + 1));
                  if (v136 != v135)
                  {
                    v137 = v136;
                    v138 = *v133;
                    v139 = __error();
                    fprintf(v138, "last write ended with return %ld expected %ld with errno %d\n", v137, v124, *v139);
                  }
                }
              }

              while (!v134);
              off_1EA831868(v202);
              free(v169);
              free(v122);
              if (v124)
              {
                v140 = *v133;
                v141 = __error();
                fprintf(v140, "last read ended with return %ld with errno %d\n", v124, *v141);
              }

              close(v120);
              close(v172);
              a7 = v163;
              v23 = v173;
              v41 = v170;
              v28 = v164;
            }

            if (queue)
            {
              free(queue);
            }

            v145 = v176[0];
            if (v176[0])
            {
              if (v177)
              {
                v146 = 0;
                do
                {
                  free(*(v176[0] + v146++));
                }

                while (v146 < v177);
                v145 = v176[0];
              }

              free(v145);
              v176[0] = 0;
            }

            v147 = v176[1];
            if (v176[1])
            {
              if (v177)
              {
                v148 = 0;
                do
                {
                  free(*(v176[1] + v148++));
                }

                while (v148 < v177);
                v147 = v176[1];
              }

              free(v147);
              v176[1] = 0;
            }

            sub_1818FEA88(filename, v142);
            close(v28);
            v26 = 0;
            v38 = v41;
          }

LABEL_255:
          *v23 = strdup(v38);
          v25 = 1;
          if (!v26)
          {
LABEL_256:
            v149 = strlen(*v23);
            if (v25 == 1)
            {
              v150 = v149 + 9;
            }

            else
            {
              v150 = v149 + strlen(v23[1]) + 18;
              if (v25 != 2)
              {
                v150 += strlen(v23[2]) + 9;
              }
            }

            v151 = v150 + 8;
            v152 = sub_18190275C(v151, 1757928326);
            bzero(v152, v151);
            v153 = &v152[v25 + 1];
            v154 = strlen(*v23);
            *v152 = v153;
            strcpy(v153, *v23);
            if (v25 != 1)
            {
              v155 = &v153[v154 + 1];
              v156 = strlen(v23[1]);
              v152[1] = v155;
              strcpy(v155, v23[1]);
              if (v25 != 2)
              {
                v157 = &v155[v156 + 1];
                v152[2] = v157;
                strcpy(v157, v23[2]);
              }
            }

            v26 = 0;
            if (a7)
            {
              *a7 = v152;
            }
          }

LABEL_265:
          free(*v23);
          if (v25 != 1)
          {
            free(v23[1]);
            if (v25 != 2)
            {
              free(v23[2]);
            }
          }

LABEL_268:
          free(v23);
          return v26;
        }

        if (v16 != 1)
        {
          if (a8)
          {
            *a8 = sqlite3_mprintf("Unknown operation type %ld", a4);
          }

          v26 = 0xFFFFFFFFLL;
          v23 = v173;
          goto LABEL_268;
        }

        v167 = v10;
        memset(&errmsg, 0, sizeof(errmsg));
        v18 = sub_1818FE71C();
        ppDb = 0;
        v19 = sqlite3_open_v2(a1, &ppDb, v12 | 1, 0);
        if (v19)
        {
          fprintf(*MEMORY[0x1E69E9848], "sqlite3_open_v2 open failed with %d", v19);
        }

        else
        {
          sqlite3_db_config(ppDb, 1006, 1, 0);
          sqlite3_busy_timeout(ppDb, 60000);
          sqlite3_extended_result_codes(ppDb, 1);
        }

        v39 = mkstemp(v18);
        free(v18);
        if (v39 < 0)
        {
          v26 = 0xFFFFFFFFLL;
LABEL_191:
          v23 = v173;
          v38 = a2;
          goto LABEL_255;
        }

        bzero(filename, 0x400uLL);
        fcntl(v39, 50, filename);
        v183 = 0;
        if (sqlite3_open_v2(filename, &v183, v12 | 6, 0) || (sqlite3_busy_timeout(ppDb, 60000), sqlite3_extended_result_codes(ppDb, 1), sqlite3_file_control(v183, 0, 102, ppDb)))
        {
          v40 = v39;
          if (!v183)
          {
            goto LABEL_95;
          }

          sqlite3_close(v183);
        }

        else
        {
          if (ppDb)
          {
            sqlite3_close(ppDb);
          }

          v40 = v39;
          ppDb = v183;
        }

        v183 = 0;
LABEL_95:
        memset(&v202[6] + 5, 0, 27);
        *(&v202[5] + 5) = 0u;
        *(&v202[4] + 5) = 0u;
        *(&v202[3] + 5) = 0u;
        memset(v202 + 5, 0, 48);
        qmemcpy(v202, "UTF-8", 5);
        *db = xmmword_181A1FA50;
        v201 = unk_181A1FA60;
        *v198 = *"delete";
        v199 = unk_181A1FA80;
        v52 = ppDb;
        *&ppStmt.st_dev = 0;
        do
        {
          v53 = sqlite3_prepare(v52, "pragma legacy_file_format", -1, &ppStmt, 0);
        }

        while (v53 == 5);
        if (v53)
        {
          v55 = a7;
          v56 = 0;
        }

        else
        {
          do
          {
            v54 = sqlite3_step(*&ppStmt.st_dev);
          }

          while (v54 == 5);
          v55 = a7;
          if (v54 == 100)
          {
            v56 = sqlite3_column_int(*&ppStmt.st_dev, 0);
          }

          else
          {
            v56 = 0;
          }

          sqlite3_finalize(*&ppStmt.st_dev);
        }

        sub_1818FE7F4(ppDb, "pragma encoding", v202, 0x80u);
        v57 = ppDb;
        *&ppStmt.st_dev = 0;
        do
        {
          v58 = sqlite3_prepare(v57, "pragma page_size", -1, &ppStmt, 0);
        }

        while (v58 == 5);
        if (v58)
        {
          v60 = 4096;
        }

        else
        {
          do
          {
            v59 = sqlite3_step(*&ppStmt.st_dev);
          }

          while (v59 == 5);
          if (v59 == 100)
          {
            v60 = sqlite3_column_int(*&ppStmt.st_dev, 0);
          }

          else
          {
            v60 = 4096;
          }

          sqlite3_finalize(*&ppStmt.st_dev);
        }

        sub_1818FE7F4(ppDb, "pragma auto_vacuum", db, 0x20u);
        v61 = ppDb;
        *&ppStmt.st_dev = 0;
        do
        {
          v62 = sqlite3_prepare(v61, "pragma application_id", -1, &ppStmt, 0);
        }

        while (v62 == 5);
        if (v62)
        {
          v64 = 0;
        }

        else
        {
          do
          {
            v63 = sqlite3_step(*&ppStmt.st_dev);
          }

          while (v63 == 5);
          if (v63 == 100)
          {
            v64 = sqlite3_column_int(*&ppStmt.st_dev, 0);
          }

          else
          {
            v64 = 0;
          }

          sqlite3_finalize(*&ppStmt.st_dev);
        }

        v65 = ppDb;
        *&ppStmt.st_dev = 0;
        do
        {
          v66 = sqlite3_prepare(v65, "pragma user_version", -1, &ppStmt, 0);
        }

        while (v66 == 5);
        if (v66)
        {
          v69 = 0;
          v67 = v40;
        }

        else
        {
          v67 = v40;
          do
          {
            v68 = sqlite3_step(*&ppStmt.st_dev);
          }

          while (v68 == 5);
          if (v68 == 100)
          {
            v69 = sqlite3_column_int(*&ppStmt.st_dev, 0);
          }

          else
          {
            v69 = 0;
          }

          sqlite3_finalize(*&ppStmt.st_dev);
        }

        sub_1818FE7F4(ppDb, "pragma journal_mode", v198, 0x20u);
        v70 = malloc_type_calloc(1uLL, 0x400uLL, 0x81F78F7BuLL);
        if (v56)
        {
          v196 = 0u;
          v197 = 0u;
          v194 = 0u;
          v195 = 0u;
          v192 = 0u;
          v193 = 0u;
          v191 = 0u;
          memset(&ppStmt, 0, sizeof(ppStmt));
          __sprintf_chk(&ppStmt, 0, 0x100uLL, "pragma legacy_file_format = %d;\n", v56);
          __strlcat_chk();
        }

        if (LODWORD(v202[0]) != 759583829 || BYTE4(v202[0]) != 56)
        {
          v196 = 0u;
          v197 = 0u;
          v194 = 0u;
          v195 = 0u;
          v192 = 0u;
          v193 = 0u;
          v191 = 0u;
          memset(&ppStmt, 0, sizeof(ppStmt));
          __sprintf_chk(&ppStmt, 0, 0x100uLL, "pragma encoding = %s;\n", v202);
          __strlcat_chk();
        }

        a7 = v55;
        if (v60 != 4096)
        {
          v196 = 0u;
          v197 = 0u;
          v194 = 0u;
          v195 = 0u;
          v192 = 0u;
          v193 = 0u;
          v191 = 0u;
          memset(&ppStmt, 0, sizeof(ppStmt));
          __sprintf_chk(&ppStmt, 0, 0x100uLL, "pragma page_size = %d;\n", v60);
          __strlcat_chk();
        }

        v72 = MEMORY[0x1E69E9848];
        if (LOBYTE(db[0]) != 48)
        {
          v196 = 0u;
          v197 = 0u;
          v194 = 0u;
          v195 = 0u;
          v192 = 0u;
          v193 = 0u;
          v191 = 0u;
          memset(&ppStmt, 0, sizeof(ppStmt));
          __sprintf_chk(&ppStmt, 0, 0x100uLL, "pragma auto_vacuum = %s;\n", db);
          __strlcat_chk();
        }

        if (v64)
        {
          v196 = 0u;
          v197 = 0u;
          v194 = 0u;
          v195 = 0u;
          v192 = 0u;
          v193 = 0u;
          v191 = 0u;
          memset(&ppStmt, 0, sizeof(ppStmt));
          __sprintf_chk(&ppStmt, 0, 0x100uLL, "pragma application_id = %d;\n", v64);
          __strlcat_chk();
        }

        if (v69)
        {
          v196 = 0u;
          v197 = 0u;
          v194 = 0u;
          v195 = 0u;
          v192 = 0u;
          v193 = 0u;
          v191 = 0u;
          memset(&ppStmt, 0, sizeof(ppStmt));
          __sprintf_chk(&ppStmt, 0, 0x100uLL, "pragma user_version = %d;\n", v69);
          __strlcat_chk();
        }

        v73 = LODWORD(v198[0]) == 1701602660 && WORD2(v198[0]) == 25972;
        a2 = v170;
        if (!v73)
        {
          v196 = 0u;
          v197 = 0u;
          v194 = 0u;
          v195 = 0u;
          v192 = 0u;
          v193 = 0u;
          v191 = 0u;
          memset(&ppStmt, 0, sizeof(ppStmt));
          __sprintf_chk(&ppStmt, 0, 0x100uLL, "pragma journal_mode = %s;\n", v198);
          __strlcat_chk();
        }

        __strlcat_chk();
        v74 = dispatch_queue_create("sql dump", 0);
        *v189 = -1;
        if (pipe(v189))
        {
          v75 = *v72;
          v76 = __error();
          fprintf(v75, "pipe failed for %d\n", *v76);
        }

        else
        {
          v179 = 0;
          v180 = &v179;
          v181 = 0x2000000000;
          v182 = v189[1];
          fcntl(v189[0], 73, 1);
          fcntl(v189[1], 73, 1);
          *&ppStmt.st_dev = MEMORY[0x1E69E9820];
          ppStmt.st_ino = 0x40000000;
          *&ppStmt.st_uid = sub_1818FE8A4;
          *&ppStmt.st_rdev = &unk_1E6A26740;
          ppStmt.st_atimespec.tv_nsec = ppDb;
          ppStmt.st_atimespec.tv_sec = &v179;
          dispatch_async(v74, &ppStmt);
          memset(&errmsg, 0, sizeof(errmsg));
          if (stat(a1, &errmsg) == -1)
          {
            v78 = *MEMORY[0x1E69E9848];
            v79 = __error();
            fprintf(v78, "stat failed for %d\n", *v79);
          }

          v80 = open(v170, 1538, errmsg.st_mode | 0x80u);
          if (v80 < 0)
          {
            v107 = *MEMORY[0x1E69E9848];
            v108 = __error();
            fprintf(v107, "open destination failed for %d\n", *v108);
            close(v189[0]);
          }

          else
          {
            v81 = v80;
            queuea = v74;
            *v186 = 1;
            *&v186[8] = xmmword_181A1FA40;
            v188 = 0;
            *&v186[24] = v167;
            v187 = 0;
            sub_1818FE958(v80, v186);
            v82 = malloc_type_valloc(0x80000uLL, 0x7550F5C4uLL);
            v83 = malloc_type_valloc(0x80000uLL, 0xA0671EB2uLL);
            v178 = 0;
            *v176 = 0u;
            v177 = 0u;
            v84 = off_1EA831858(v176, 0, v167);
            v85 = MEMORY[0x1E69E9848];
            if (v84)
            {
              fprintf(*MEMORY[0x1E69E9848], "compression_stream_init failed for %d\n", v84);
            }

            v171 = v67;
            v176[0] = v83;
            v176[1] = 0x80000;
            *&v177 = v70;
            *(&v177 + 1) = strlen(v70);
            v86 = off_1EA831860(v176, 0);
            if (v86)
            {
              fprintf(*v85, "compression_stream_process failed for %d\n", v86);
            }

            if (v176[1] != 0x80000)
            {
              v87 = 0x80000 - v176[1];
              v88 = write(v81, v83, 0x80000 - v176[1]);
              if (v88 != v87)
              {
                v89 = v88;
                v90 = *MEMORY[0x1E69E9848];
                v158 = *__error();
                v91 = v90;
                v85 = MEMORY[0x1E69E9848];
                fprintf(v91, "last write ended with return %ld expected %ld with errno %d\n", v89, v87, v158);
              }
            }

            free(v70);
            v92 = read(v189[0], v82, 0x80000uLL);
            v161 = a7;
            if (v92 >= 1)
            {
              do
              {
                v176[0] = v83;
                v176[1] = 0x80000;
                *&v177 = v82;
                *(&v177 + 1) = v92;
                v93 = off_1EA831860(v176, 0);
                if (v93)
                {
                  fprintf(*v85, "compression_stream_process failed for %d\n", v93);
                }

                if (v176[1] != 0x80000)
                {
                  v94 = 0x80000 - v176[1];
                  v95 = write(v81, v83, 0x80000 - v176[1]);
                  if (v95 != v94)
                  {
                    v96 = v95;
                    v97 = *MEMORY[0x1E69E9848];
                    v159 = *__error();
                    v98 = v97;
                    v85 = MEMORY[0x1E69E9848];
                    fprintf(v98, "last write ended with return %ld expected %ld with errno %d\n", v96, v94, v159);
                  }
                }

                v92 = read(v189[0], v82, 0x80000uLL);
              }

              while (v92 > 0);
            }

            do
            {
              v176[0] = v83;
              v176[1] = 0x80000;
              v177 = v82;
              v99 = off_1EA831860(v176, 1);
              if (v99 >= 2)
              {
                fprintf(*v85, "compression_stream_process bravo failed for %d\n", v99);
              }

              if (v176[1] != 0x80000)
              {
                v100 = 0x80000 - v176[1];
                v101 = write(v81, v83, 0x80000 - v176[1]);
                v29 = v101 == v100;
                v85 = MEMORY[0x1E69E9848];
                if (!v29)
                {
                  v102 = v101;
                  v103 = *MEMORY[0x1E69E9848];
                  v160 = *__error();
                  v104 = v103;
                  v85 = MEMORY[0x1E69E9848];
                  fprintf(v104, "last write ended with return %ld expected %ld with errno %d\n", v102, v92, v160);
                }
              }
            }

            while (!v99);
            off_1EA831868(v176);
            free(v82);
            free(v83);
            if (v92)
            {
              v105 = *v85;
              v106 = __error();
              fprintf(v105, "last read ended with return %ld with errno %d\n", v92, *v106);
            }

            close(v81);
            close(v189[0]);
            v70 = 0;
            a7 = v161;
            a2 = v170;
            v67 = v171;
            v74 = queuea;
          }

          dispatch_sync(v74, &unk_1EEF8F830);
          dispatch_release(v74);
          v109 = *(v180 + 6);
          if (v109 != -1)
          {
            close(v109);
          }

          _Block_object_dispose(&v179, 8);
        }

        if (v70)
        {
          free(v70);
        }

        if (ppDb)
        {
          sqlite3_close(ppDb);
        }

        sub_1818FEA88(filename, v77);
        close(v67);
        v26 = 0;
        goto LABEL_191;
      }

      if ((v10 + 1) < 2)
      {
        v10 = 0xFFFFFFFFLL;
        goto LABEL_17;
      }

      if (a8)
      {
        v17 = sqlite3_mprintf("Compression method %ld not currently supported for operationType %ld");
        goto LABEL_13;
      }
    }

    else if (a8)
    {
      v17 = sqlite3_mprintf("Source file '%s' is not an SQLite database file, or is encrypted.  Type is %d");
LABEL_13:
      *a8 = v17;
      return 0xFFFFFFFFLL;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}