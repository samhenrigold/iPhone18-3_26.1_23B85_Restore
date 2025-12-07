sqlite3_backup *__cdecl sqlite3_backup_init(sqlite3 *pDest, const char *zDestName, sqlite3 *pSource, const char *zSourceName)
{
  if (!pSource)
  {
    goto LABEL_11;
  }

  v4 = *(pSource + 113);
  if (v4 == 186)
  {
LABEL_5:
    v5 = "unopened";
LABEL_12:
    sqlite3_log(21, "API call with %s database connection pointer", v5);
    sub_1819012D0(90924);
    return 0;
  }

  if (v4 != 118)
  {
    if (v4 == 109)
    {
      goto LABEL_5;
    }

LABEL_10:
    v5 = "invalid";
    goto LABEL_12;
  }

  if (!pDest)
  {
LABEL_11:
    v5 = "NULL";
    goto LABEL_12;
  }

  v6 = *(pDest + 113);
  if (v6 == 186)
  {
    goto LABEL_5;
  }

  if (v6 != 118)
  {
    if (v6 == 109)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v8 = pSource;
  v9 = pDest;
  if (*(pSource + 3))
  {
    xmmword_1ED452F18(*(pSource + 3));
    pDest = v9;
    pSource = v8;
  }

  if (*(pDest + 3))
  {
    xmmword_1ED452F18(*(pDest + 3));
    pDest = v9;
    pSource = v8;
  }

  if (pSource == pDest)
  {
    sub_181907EC4(v9, 1, "source and destination must be distinct");
    v13 = v9;
LABEL_33:
    result = 0;
    v15 = v8;
    goto LABEL_34;
  }

  v12 = sub_181902484(72, 0x1020040CCA17C91);
  if (!v12)
  {
    v13 = v9;
    *(v9 + 20) = 7;
    sub_181932D5C(v9, 7);
    goto LABEL_33;
  }

  *(v12 + 64) = 0;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  v13 = v9;
  v14 = v12;
  v15 = v8;
  *(v12 + 40) = sub_18190812C(v9, v8, zSourceName);
  v16 = sub_18190812C(v9, v9, zDestName);
  result = v14;
  *v14 = v9;
  *(v14 + 8) = v16;
  *(v14 + 32) = v8;
  *(v14 + 24) = 1;
  *(v14 + 60) = 0;
  v17 = *(v14 + 40);
  if (v17 && v16)
  {
    if (!*(v16 + 16))
    {
      ++*(v17 + 24);
      goto LABEL_34;
    }

    sub_181907EC4(v9, 1, "destination database is in use");
    result = v14;
  }

  v18 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
      result = v14;
    }

    v19 = result;
    qword_1ED456A48[0] -= xmmword_1ED452EC0(result);
    --qword_1ED456A90;
    off_1ED452EB0(v19);
    result = xmmword_1ED456AF0;
    if (!xmmword_1ED456AF0)
    {
      goto LABEL_30;
    }

    v18 = &xmmword_1ED452F28;
  }

  (*v18)(result);
  result = 0;
LABEL_30:
  v15 = v8;
  v13 = v9;
LABEL_34:
  if (*(v13 + 3))
  {
    v20 = result;
    xmmword_1ED452F28(*(v13 + 3));
    result = v20;
    v15 = v8;
  }

  if (*(v15 + 3))
  {
    v21 = result;
    xmmword_1ED452F28(*(v15 + 3));
    return v21;
  }

  return result;
}

void sub_181907EC4(uint64_t result, uint64_t a2, char *zFormat, ...)
{
  va_start(va, zFormat);
  v21 = *MEMORY[0x1E69E9840];
  *(result + 80) = a2;
  if (a2 != 3082 && (a2 & 0xFB) == 0xA)
  {
    v5 = *(*result + 128);
    if (v5)
    {
      v6 = a2;
      v7 = v5();
      LODWORD(a2) = v6;
    }

    else
    {
      v7 = 0;
    }

    *(result + 92) = v7;
  }

  if (zFormat)
  {
    if (!*(result + 416))
    {
      v8 = sub_181929E8C(result, 0x40uLL, 0x10F2040695A4BFELL);
      if (!v8)
      {
        *(result + 416) = 0;
        return;
      }

      *(v8 + 2) = 0u;
      *(v8 + 3) = 0u;
      *v8 = 0u;
      *(v8 + 1) = 0u;
      *(v8 + 10) = 1;
      v8[3] = result;
      *(result + 416) = v8;
    }

    v15 = result;
    v19 = 0x10000000000;
    v9 = *(result + 136);
    __s = &v20;
    v17 = 512;
    v18 = v9;
    sqlite3_str_vappendf(&v15, zFormat, va);
    if (__s && (__s[v19] = 0, v18) && (v19 & 0x40000000000) == 0)
    {
      v10 = sub_18192A12C(&v15);
    }

    else
    {
      v10 = __s;
    }

    if (BYTE4(v19) == 7 && !*(result + 103) && !*(result + 104))
    {
      *(result + 103) = 1;
      if (*(result + 220) >= 1)
      {
        *(result + 424) = 1;
      }

      ++*(result + 432);
      *(result + 436) = 0;
      v12 = *(result + 344);
      if (v12)
      {
        v13 = v10;
        sub_181910730(v12, "out of memory", va);
        v10 = v13;
        for (i = *(result + 344); ; ++*(i + 52))
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

    v11 = *(result + 416);
    if (v11)
    {
      sub_1818900D0(v11, v10, -1, 1, sub_181916CE4);
    }
  }

  else
  {
    *(result + 80) = a2;
    if (a2 || *(result + 416))
    {

      sub_181932D5C(result, a2);
    }

    else
    {
      *(result + 84) = -1;
    }
  }
}

uint64_t sub_18190812C(void *a1, uint64_t a2, const char *a3)
{
  if (!a3)
  {
    goto LABEL_29;
  }

  v3 = *(a2 + 40);
  v4 = (v3 - 1);
  if (v3 < 1)
  {
    goto LABEL_29;
  }

  v5 = *(a2 + 32);
  v6 = (v5 + 32 * v4);
  while (1)
  {
    v7 = *v6;
    if (*v6)
    {
      break;
    }

LABEL_11:
    if (!v4)
    {
      v10 = "main";
      for (i = a3; ; ++i)
      {
        if (*v10 == *i)
        {
          if (!*v10)
          {
            LODWORD(v4) = 0;
            return *(v5 + 32 * v4 + 8);
          }
        }

        else if (byte_181A20298[*v10] != byte_181A20298[*i])
        {
          break;
        }

        ++v10;
      }
    }

    v6 -= 4;
    v9 = v4 <= 0;
    LODWORD(v4) = v4 - 1;
    if (v9)
    {
      goto LABEL_29;
    }
  }

  for (j = a3; *v7 != *j; ++j)
  {
    if (byte_181A20298[*v7] != byte_181A20298[*j])
    {
      goto LABEL_11;
    }

LABEL_7:
    ++v7;
  }

  if (*v7)
  {
    goto LABEL_7;
  }

  if (v4 != 1)
  {
    if ((v4 & 0x80000000) == 0)
    {
      return *(v5 + 32 * v4 + 8);
    }

LABEL_29:
    sub_181907EC4(a1, 1, "unknown database %s", a3);
    return 0;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  *v18 = 0u;
  v17 = 0u;
  v13 = *(a2 + 344);
  v42 = 0;
  *&v30 = v13;
  *(a2 + 344) = &v16;
  v16 = a2;
  if (*(a2 + 103))
  {
    sub_181910730(&v16, "out of memory");
  }

  if (!sub_1819108F4(&v16))
  {
    if (v17)
    {
      sub_181929C84(a1, v17);
    }

    sub_181910CA0(&v16);
    v5 = *(a2 + 32);
    LODWORD(v4) = 1;
    return *(v5 + 32 * v4 + 8);
  }

  sub_181907EC4(a1, v18[0], "%s", v17);
  if (v17)
  {
    sub_181929C84(a1, v17);
  }

  sub_181910CA0(&v16);
  return 0;
}

int sqlite3_backup_step(sqlite3_backup *p, int nPage)
{
  if (p)
  {
    v5 = *(*(p + 4) + 24);
    if (v5)
    {
      xmmword_1ED452F18(v5);
    }

    v6 = *(p + 5);
    if (*(v6 + 17))
    {
      ++*(v6 + 20);
      if (!*(v6 + 18))
      {
        sub_181932DEC(v6);
      }
    }

    if (*p)
    {
      v7 = *(*p + 24);
      if (v7)
      {
        xmmword_1ED452F18(v7);
      }
    }

    v8 = *(p + 12);
    if (v8 > 6 || ((1 << v8) & 0x61) == 0)
    {
      goto LABEL_135;
    }

    v9 = *(p + 5);
    v10 = *(v9 + 8);
    v11 = *v10;
    v12 = **(*(p + 1) + 8);
    if (*p && *(v10 + 36) == 2)
    {
      v13 = 5;
      v63 = 1;
      goto LABEL_35;
    }

    v15 = *(v9 + 16) != 0;
    if (*(v9 + 16))
    {
      v13 = 0;
    }

    else
    {
      v13 = sub_181932F08(v9, 0, 0);
    }

    v16 = *(p + 5);
    v63 = v15;
    if (v16 | v13)
    {
      if (v13)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v13 = sub_1818F7260(*(p + 1), *(*(*(p + 5) + 8) + 52), 0, 0);
      if (v13 == 7)
      {
        goto LABEL_35;
      }

      v16 = *(p + 5);
    }

    if (v16)
    {
      v13 = 0;
      goto LABEL_35;
    }

    v17 = *(p + 1);
    if (*(v17 + 17) || *(v17 + 16) <= 1u)
    {
      v13 = sub_181932F08(v17, 2, p + 4);
      if (v13)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v18 = *(v17 + 8);
      *(p + 4) = bswap32(*(*(v18[3] + 80) + 40));
      v19 = *v18;
      v20 = *(*v17 + 796);
      if (*(v19 + 128) < v20)
      {
        if (*(v19 + 10))
        {
          v13 = sub_181935F24(v19, v20);
          if (v13)
          {
LABEL_35:
            v21 = *(*(p + 5) + 8);
            v22 = *(v21 + 52);
            v23 = *(*(p + 1) + 8);
            v24 = v23[13];
            v25 = *(*v23 + 9);
            if (v13)
            {
              goto LABEL_44;
            }

            if (v25 == 5)
            {
              if (v22 == v24)
              {
                v13 = 0;
                goto LABEL_44;
              }
            }

            else
            {
              if (*(v12 + 16))
              {
                v13 = 0;
              }

              else
              {
                v13 = 0;
                if (!*(v12 + 20))
                {
                  goto LABEL_44;
                }
              }

              if (v22 == v24)
              {
LABEL_44:
                v62 = v23[13];
                v26 = *(v21 + 64);
                if (nPage)
                {
                  v27 = *(p + 6);
                  v28 = 1;
                  while (v27 <= v26 && !v13)
                  {
                    v29 = v28;
                    if (v27 == dword_1EA8315A8 / *(*(*(p + 5) + 8) + 52) + 1)
                    {
                      v13 = 0;
                    }

                    else
                    {
                      v64 = 0;
                      v13 = (*(v11 + 288))(v11, v27, &v64, 2);
                      if (!v13)
                      {
                        v13 = sub_181908B38(p, v27, *(v64 + 8), 0);
                        v30 = v64;
                        if (v64)
                        {
                          v31 = v13;
                          if ((*(v64 + 52) & 0x20) != 0)
                          {
                            v32 = *(v64 + 40);
                            --*(v32 + 152);
                            *(v30 + 32) = *(v32 + 168);
                            *(v32 + 168) = v30;
                            (*(**(v32 + 72) + 144))(*(v32 + 72), *(v32 + 200) * (*(v30 + 48) - 1), *(v30 + 8));
                          }

                          else
                          {
                            sub_181932B68(v64);
                          }

                          v13 = v31;
                        }
                      }

                      LODWORD(v27) = *(p + 6);
                    }

                    v27 = (v27 + 1);
                    *(p + 6) = v27;
                    v28 = v29 + 1;
                    if ((nPage & 0x80000000) == 0 && v29 >= nPage)
                    {
                      break;
                    }
                  }
                }

                v33 = v12;
                if (v13 != 101)
                {
                  if (v13)
                  {
                    goto LABEL_129;
                  }

                  v34 = *(p + 6);
                  *(p + 13) = v26 - v34 + 1;
                  *(p + 14) = v26;
                  if (v26 >= v34)
                  {
                    v13 = 0;
                    if (!*(p + 15))
                    {
                      v56 = **(*(p + 5) + 8);
                      *(p + 8) = *(v56 + 112);
                      *(v56 + 112) = p;
                      *(p + 15) = 1;
                    }

                    goto LABEL_129;
                  }
                }

                if (!v26)
                {
                  v35 = *(p + 1);
                  if (*(v35 + 17))
                  {
                    ++*(v35 + 20);
                    if (!*(v35 + 18))
                    {
                      sub_181932DEC(v35);
                    }
                  }

                  v36 = *(v35 + 8);
                  *(v36 + 64) = 0;
                  v13 = sub_1818D1728(v36);
                  if (*(v35 + 17))
                  {
                    v37 = *(v35 + 20) - 1;
                    *(v35 + 20) = v37;
                    if (!v37)
                    {
                      v38 = v13;
                      sub_181932ECC(v35);
                      v13 = v38;
                    }
                  }

                  if (v13 != 101 && v13 != 0)
                  {
                    goto LABEL_129;
                  }

                  v26 = 1;
                }

                v13 = sub_181908E4C(*(p + 1), 1, *(p + 4) + 1);
                if (!v13)
                {
                  if (*p)
                  {
                    sub_181908F74(*p);
                  }

                  if (v25 != 5 || (v13 = sub_181909188(*(p + 1), 2)) == 0)
                  {
                    if (v22 >= v62)
                    {
                      *(v12 + 32) = v22 / v62 * v26;
                      v13 = sub_1818DCD58(v12, 0, 0);
                    }

                    else
                    {
                      v40 = (v26 + v62 / v22 - 1) / (v62 / v22);
                      v41 = v40 - (v40 == dword_1EA8315A8 / *(*(*(p + 1) + 8) + 52) + 1);
                      v42 = v22 * v26;
                      v43 = *(v33 + 72);
                      v44 = *(v33 + 32);
                      if (v41 > v44)
                      {
                        goto LABEL_102;
                      }

                      do
                      {
                        if (v41 == dword_1EA8315A8 / *(*(*(p + 1) + 8) + 52) + 1)
                        {
                          v13 = 0;
                        }

                        else
                        {
                          v64 = 0;
                          v13 = (*(v33 + 288))(v33, v41, &v64, 0);
                          if (!v13)
                          {
                            v45 = *(v64 + 40);
                            if ((*(v64 + 52) & 4) != 0 && v45[8] >= *(v64 + 48))
                            {
                              if (v45[32])
                              {
                                v13 = sub_1819360C0(v64);
                              }

                              else
                              {
                                v13 = 0;
                              }
                            }

                            else
                            {
                              v13 = v45[12];
                              if (!v13)
                              {
                                if (v45[46] <= v45[50])
                                {
                                  v13 = sub_1818D8DD8(v64);
                                }

                                else
                                {
                                  v13 = sub_181936438(v64);
                                }
                              }
                            }

                            v46 = v64;
                            if (v64)
                            {
                              v47 = v13;
                              if ((*(v64 + 52) & 0x20) != 0)
                              {
                                v48 = *(v64 + 40);
                                --*(v48 + 152);
                                *(v46 + 32) = *(v48 + 168);
                                *(v48 + 168) = v46;
                                (*(**(v48 + 72) + 144))(*(v48 + 72), *(v48 + 200) * (*(v46 + 48) - 1), *(v46 + 8));
                              }

                              else
                              {
                                sub_181932B68(v64);
                              }

                              v13 = v47;
                            }
                          }
                        }

                        if (v13)
                        {
                          break;
                        }

                        v41 = (v41 + 1);
                      }

                      while (v41 <= v44);
                      if (!v13)
                      {
LABEL_102:
                        v13 = sub_1818DCD58(v33, 0, 1);
                      }

                      if (v42 >= dword_1EA8315A8 + v62)
                      {
                        v49 = dword_1EA8315A8 + v62;
                      }

                      else
                      {
                        v49 = v42;
                      }

                      v50 = v13 == 0;
                      if (!v13)
                      {
                        v51 = dword_1EA8315A8 + v22;
                        if (v49 > v51)
                        {
                          do
                          {
                            v64 = 0;
                            v13 = (*(v11 + 288))(v11, (v51 / v22) + 1, &v64, 0);
                            if (!v13)
                            {
                              v13 = (*(*v43 + 24))(v43, *(v64 + 8), v22, v51);
                            }

                            v53 = v64;
                            if (v64)
                            {
                              v54 = v13;
                              if ((*(v64 + 52) & 0x20) != 0)
                              {
                                v55 = *(v64 + 40);
                                --*(v55 + 152);
                                *(v53 + 32) = *(v55 + 168);
                                *(v55 + 168) = v53;
                                (*(**(v55 + 72) + 144))(*(v55 + 72), *(v55 + 200) * (*(v53 + 48) - 1), *(v53 + 8));
                              }

                              else
                              {
                                sub_181932B68(v64);
                              }

                              v13 = v54;
                            }

                            v51 += v22;
                            v50 = v13 == 0;
                            if (v13)
                            {
                              v52 = 0;
                            }

                            else
                            {
                              v52 = v51 < v49;
                            }
                          }

                          while (v52);
                        }
                      }

                      if (!v50)
                      {
                        goto LABEL_129;
                      }

                      v13 = sub_1819092F8(v43, v42);
                      if (v13)
                      {
                        goto LABEL_129;
                      }

                      v13 = sub_181909364(v33, 0);
                    }

                    if (!v13)
                    {
                      v13 = sub_1818CCD6C(*(p + 1), 0);
                      if (!v13)
                      {
                        v13 = 101;
                      }
                    }
                  }
                }

LABEL_129:
                if ((v63 & 1) == 0)
                {
                  v57 = v13;
                  sub_1818CC964(*(p + 5), 0);
                  sub_1818CCD6C(*(p + 5), 0);
                  v13 = v57;
                }

                if (v13 == 3082)
                {
                  v8 = 7;
                }

                else
                {
                  v8 = v13;
                }

                *(p + 12) = v8;
LABEL_135:
                if (*p)
                {
                  v58 = *(*p + 24);
                  if (v58)
                  {
                    xmmword_1ED452F28(v58);
                  }
                }

                v59 = *(p + 5);
                if (*(v59 + 17))
                {
                  v60 = *(v59 + 20) - 1;
                  *(v59 + 20) = v60;
                  if (!v60)
                  {
                    sub_181932ECC(v59);
                  }
                }

                v61 = *(*(p + 4) + 24);
                if (v61)
                {
                  xmmword_1ED452F28(v61);
                }

                return v8;
              }
            }

            v13 = 8;
            goto LABEL_44;
          }
        }
      }
    }

    v13 = 0;
    *(p + 5) = 1;
    goto LABEL_35;
  }

  return sub_1819012D0(91122);
}

uint64_t sub_181908B38(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  v5 = *(a1 + 8);
  v6 = *(v5 + 8);
  v7 = *v6;
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v6 + 52);
  v10 = *(v8 + 52);
  v11 = *(v8 + 56);
  if (v10 >= v9)
  {
    v12 = *(v6 + 52);
  }

  else
  {
    v12 = *(v8 + 52);
  }

  if (!*(v5 + 17))
  {
    v14 = *(v6 + 38);
    v15 = *(v6 + 56);
    v16 = *(v6 + 52);
    goto LABEL_12;
  }

  v13 = *(v5 + 20);
  *(v5 + 20) = v13 + 1;
  if (*(v5 + 18))
  {
    v14 = *(v6 + 38);
    v15 = *(v6 + 56);
    v16 = v9;
    *(v5 + 20) = v13;
    if (v13)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  sub_181932DEC(v5);
  v17 = *(v5 + 8);
  v14 = *(v17 + 38);
  v16 = *(v17 + 52);
  v15 = *(v17 + 56);
  if (*(v5 + 17))
  {
    v18 = *(v5 + 20);
    *(v5 + 20) = v18 - 1;
    if (v18 == 1)
    {
LABEL_11:
      sub_181932ECC(v5);
    }
  }

LABEL_12:
  v19 = v10 - v11;
  v20 = v16 - v15;
  if (v16 - v15 <= v14)
  {
    v20 = v14;
  }

  if (v10 == v9)
  {
    v21 = 0;
    if (v19 == v20)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v21 = 8 * (*(v7 + 320) != 0);
    if (v19 == v20)
    {
      goto LABEL_21;
    }
  }

  v37 = v10;
  v22 = sub_1818933F0(v7, &v37, v19);
  if (v22)
  {
    v21 = v22;
  }

  else
  {
    v21 = 8 * (v37 != v10);
  }

LABEL_21:
  if (!v21 && v10 >= 1)
  {
    v23 = v10 * a2;
    v24 = v23 - v10;
    v25 = v12;
    do
    {
      v36 = 0;
      v26 = v24 / v9;
      if (dword_1EA8315A8 / *(*(*(a1 + 8) + 8) + 52) == v26)
      {
        v21 = 0;
        goto LABEL_45;
      }

      v21 = (*(v7 + 288))(v7, (v26 + 1), &v36, 0);
      if (!v21)
      {
        v27 = v36;
        v28 = *(v36 + 40);
        if ((*(v36 + 52) & 4) != 0 && v28[8] >= *(v36 + 48))
        {
          if (!v28[32])
          {
            goto LABEL_38;
          }

          v21 = sub_1819360C0(v36);
          if (!v21)
          {
LABEL_37:
            v27 = v36;
LABEL_38:
            v29 = *(v27 + 8) - v9 * v26;
            memcpy((v29 + v24), (a3 + v24 % v10), v25);
            v21 = 0;
            **(v36 + 16) = 0;
            if (!a4 && !v24)
            {
              v21 = 0;
              *(v29 + 28) = bswap32(*(*(*(a1 + 40) + 8) + 64));
            }
          }
        }

        else
        {
          v21 = v28[12];
          if (!v21)
          {
            if (v28[46] <= v28[50])
            {
              v21 = sub_1818D8DD8(v36);
              if (!v21)
              {
                goto LABEL_37;
              }
            }

            else
            {
              v21 = sub_181936438(v36);
              if (!v21)
              {
                goto LABEL_37;
              }
            }
          }
        }
      }

      v30 = v36;
      if (!v36)
      {
        goto LABEL_44;
      }

      if ((*(v36 + 52) & 0x20) == 0)
      {
        sub_181932B68(v36);
LABEL_44:
        if (v21)
        {
          return v21;
        }

        goto LABEL_45;
      }

      v31 = *(v36 + 40);
      --*(v31 + 152);
      *(v30 + 32) = *(v31 + 168);
      *(v31 + 168) = v30;
      (*(**(v31 + 72) + 144))(*(v31 + 72), *(v31 + 200) * (*(v30 + 48) - 1), *(v30 + 8));
      if (v21)
      {
        return v21;
      }

LABEL_45:
      v24 += v9;
    }

    while (v24 < v23);
  }

  return v21;
}

uint64_t sub_181908E4C(uint64_t a1, int a2, unsigned int a3)
{
  v6 = *(a1 + 8);
  if (*(a1 + 17))
  {
    ++*(a1 + 20);
    if (!*(a1 + 18))
    {
      sub_181932DEC(a1);
    }
  }

  v7 = *(v6 + 24);
  v8 = *(v7 + 80);
  v9 = *(v7 + 112);
  v10 = *(v9 + 40);
  if ((*(v9 + 52) & 4) != 0 && v10[8] >= *(v9 + 48))
  {
    if (v10[32])
    {
      result = sub_1819360C0(v9);
      if (result)
      {
LABEL_16:
        if (!*(a1 + 17))
        {
          return result;
        }

        goto LABEL_17;
      }
    }
  }

  else
  {
    result = v10[12];
    if (result)
    {
      goto LABEL_16;
    }

    if (v10[46] <= v10[50])
    {
      result = sub_1818D8DD8(v9);
      if (result)
      {
        goto LABEL_16;
      }
    }

    else
    {
      result = sub_181936438(v9);
      if (result)
      {
        goto LABEL_16;
      }
    }
  }

  *(v8 + 4 * a2 + 36) = bswap32(a3);
  if (a2 == 7)
  {
    result = 0;
    *(v6 + 34) = a3;
    goto LABEL_16;
  }

  result = 0;
  if (!*(a1 + 17))
  {
    return result;
  }

LABEL_17:
  v12 = *(a1 + 20) - 1;
  *(a1 + 20) = v12;
  if (!v12)
  {
    v13 = result;
    sub_181932ECC(a1);
    return v13;
  }

  return result;
}

void sub_181908F74(uint64_t result)
{
  if (!*(result + 111))
  {
    sub_181932C40(result);
  }

  v2 = *(result + 40);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = 24;
    do
    {
      v5 = *(*(result + 32) + v4);
      if (v5)
      {
        if (*(result + 72))
        {
          *(v5 + 114) |= 8u;
        }

        else
        {
          sub_18194116C(v5);
          v2 = *(result + 40);
        }
      }

      ++v3;
      v4 += 32;
    }

    while (v3 < v2);
  }

  *(result + 44) &= 0xFFFFFFEE;
  v6 = *(result + 608);
  if (v6)
  {
    *(result + 608) = 0;
    do
    {
      v7 = *(v6 + 40);
      v8 = *v6;
      v9 = *(v6 + 24) - 1;
      *(v6 + 24) = v9;
      if (!v9)
      {
        v10 = *(v6 + 16);
        v11 = v8;
        if (v10)
        {
          (*(*v10 + 32))(v10);
          v11 = *v6;
        }

        v12 = *(v6 + 8);
        v13 = *(v12 + 16) - 1;
        *(v12 + 16) = v13;
        if (!v13)
        {
          v14 = *(v12 + 32);
          if (v14)
          {
            v14(*(v12 + 24));
          }

          sub_181929C84(v11, v12);
        }

        sub_181929C84(v8, v6);
      }

      v6 = v7;
    }

    while (v7);
  }

  if (*(result + 111))
  {
    if (*(result + 72))
    {
      return;
    }
  }

  else
  {
    sub_181932CD8(result);
    if (*(result + 72))
    {
      return;
    }
  }

  if (*(result + 40) <= 2)
  {
    *(result + 40) = 2;
LABEL_37:
    v23 = *(result + 32);
    v24 = (result + 696);
    if (v23 != (result + 696))
    {
      v25 = *v23;
      v26 = v23[1];
      v27 = v23[3];
      *(result + 728) = v23[2];
      *(result + 744) = v27;
      *v24 = v25;
      *(result + 712) = v26;
      if (v23)
      {
        sub_181929C84(result, v23);
      }

      *(result + 32) = v24;
    }

    return;
  }

  v15 = 0;
  v16 = 2;
  v17 = 2;
  do
  {
    v18 = *(result + 32);
    v19 = v18 + v15;
    if (*(v18 + v15 + 72))
    {
      if (v16 > v17)
      {
        v20 = *(v19 + 80);
        v21 = (v18 + 32 * v17);
        *v21 = *(v19 + 64);
        v21[1] = v20;
      }

      ++v17;
    }

    else
    {
      v22 = *(v19 + 64);
      if (v22)
      {
        sub_181929C84(result, v22);
      }

      *(v19 + 64) = 0;
    }

    ++v16;
    v15 += 32;
  }

  while (v16 < *(result + 40));
  *(result + 40) = v17;
  if (v17 <= 2)
  {
    goto LABEL_37;
  }
}

uint64_t sub_181909188(uint64_t a1, int a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  *(v4 + 40) = *(v4 + 40) & 0xFFDF | (32 * (a2 == 1));
  if (!*(a1 + 17) && *(a1 + 16) || (result = sub_181932F08(a1, 0, 0), !result))
  {
    v6 = *(v4 + 24);
    v7 = *(v6 + 80);
    v8 = *(v7 + 18);
    if (v8 == v2 && *(v7 + 19) == v8)
    {
      result = 0;
      goto LABEL_26;
    }

    if (*(a1 + 17) || *(a1 + 16) <= 1u)
    {
      result = sub_181932F08(a1, 2, 0);
      if (result)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v9 = **(a1 + 8);
      v10 = *(*a1 + 796);
      if (*(v9 + 128) >= v10 || !*(v9 + 10))
      {
LABEL_16:
        v11 = *(v6 + 112);
        v12 = *(v11 + 40);
        if ((*(v11 + 52) & 4) != 0 && v12[8] >= *(v11 + 48))
        {
          if (!v12[32])
          {
            goto LABEL_25;
          }

          result = sub_1819360C0(v11);
        }

        else
        {
          result = v12[12];
          if (result)
          {
            goto LABEL_26;
          }

          if (v12[46] <= v12[50])
          {
            result = sub_1818D8DD8(v11);
          }

          else
          {
            result = sub_181936438(v11);
          }
        }

        if (result)
        {
          goto LABEL_26;
        }

LABEL_25:
        result = 0;
        *(v7 + 18) = v2;
        *(v7 + 19) = v2;
        goto LABEL_26;
      }

      result = sub_181935F24(v9, v10);
      if (result)
      {
        goto LABEL_26;
      }
    }

    v6 = *(v4 + 24);
    goto LABEL_16;
  }

LABEL_26:
  *(v4 + 40) &= ~0x20u;
  return result;
}

uint64_t sub_1819092F8(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  result = (*(*a1 + 48))(a1, &v5);
  if (!result)
  {
    if (v5 <= a2)
    {
      return 0;
    }

    else
    {
      return (*(*a1 + 32))(a1, a2);
    }
  }

  return result;
}

uint64_t sub_181909364(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 72);
  if (!*v3 || ((result = (*(*v3 + 80))(v3, 21, a2), result != 12) ? (v5 = result == 0) : (v5 = 1), v5))
  {
    if (*(a1 + 11) || !*(a1 + 14))
    {
      return 0;
    }

    else
    {
      v6 = *(**(a1 + 72) + 40);

      return v6();
    }
  }

  return result;
}

int sqlite3_backup_finish(sqlite3_backup *p)
{
  if (!p)
  {
    return 0;
  }

  v1 = p;
  v2 = *(p + 4);
  v3 = *(v2 + 24);
  if (v3)
  {
    xmmword_1ED452F18(v3);
  }

  v4 = *(v1 + 5);
  if (*(v4 + 17))
  {
    ++*(v4 + 20);
    if (!*(v4 + 18))
    {
      sub_181932DEC(v4);
    }
  }

  if (*v1)
  {
    v5 = *(*v1 + 24);
    if (!v5 || (xmmword_1ED452F18(v5), *v1))
    {
      --*(*(v1 + 5) + 24);
    }
  }

  if (*(v1 + 15))
  {
    v6 = (**(*(v1 + 5) + 8) + 112);
    do
    {
      v7 = v6;
      v8 = *v6;
      v6 = (*v6 + 64);
    }

    while (v8 != v1);
    *v7 = *(v1 + 8);
  }

  sub_1818E334C(*(v1 + 1), 0, 0);
  if (*(v1 + 12) == 101)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v1 + 12);
  }

  v13 = *v1;
  if (*v1)
  {
    *(v13 + 80) = v12;
    if (v12 || *(v13 + 416))
    {
      sub_181932D5C(v13, v12);
      v13 = *v1;
    }

    else
    {
      *(v13 + 84) = -1;
    }

    sub_1819095C4(v13, v9, v10, v11);
  }

  v14 = *(v1 + 5);
  if (*(v14 + 17))
  {
    v15 = *(v14 + 20) - 1;
    *(v14 + 20) = v15;
    if (!v15)
    {
      sub_181932ECC(v14);
    }
  }

  if (*v1)
  {
    v16 = &off_1ED452EB0;
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
        goto LABEL_33;
      }

      v16 = &xmmword_1ED452F28;
    }

    (*v16)(v1);
  }

LABEL_33:
  sub_1819095C4(v2, v9, v10, v11);
  return v12;
}

uint64_t sub_1819095C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = result;
  if (*(result + 113) != 167 || *(result + 8))
  {
LABEL_3:
    v4 = *(result + 24);
    if (!v4)
    {
      return result;
    }

    v5 = &xmmword_1ED452F28;
    goto LABEL_5;
  }

  v7 = *(result + 40);
  if (v7 >= 1)
  {
    v8 = *(result + 32) + 8;
    while (!*v8 || !*(*v8 + 24))
    {
      v8 += 32;
      if (!--v7)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_3;
  }

LABEL_14:
  sub_1818F8274(result, 0, a3, a4);
  for (i = *(v4 + 760); i; i = *(v4 + 760))
  {
    *(v4 + 760) = i[3];
    sub_181929C84(v4, i);
  }

  *(v4 + 796) = 0;
  *(v4 + 109) = 0;
  if (*(v4 + 40) >= 1)
  {
    v12 = *(v4 + 32);
    v13 = *(v12 + 8);
    if (v13)
    {
      sub_1818E3028(v13);
      *(v12 + 8) = 0;
      *(v12 + 24) = 0;
    }

    if (*(v4 + 40) >= 2)
    {
      v14 = *(v4 + 32);
      v15 = *(v14 + 40);
      if (v15)
      {
        sub_1818E3028(v15);
        *(v14 + 40) = 0;
      }

      if (*(v4 + 40) >= 3)
      {
        v16 = 0;
        v17 = 2;
        do
        {
          v18 = *(v4 + 32) + v16;
          v19 = *(v18 + 72);
          if (v19)
          {
            sub_1818E3028(v19);
            *(v18 + 72) = 0;
            *(v18 + 88) = 0;
          }

          ++v17;
          v16 += 32;
        }

        while (v17 < *(v4 + 40));
      }
    }
  }

  v20 = *(*(v4 + 32) + 56);
  if (v20)
  {
    sub_18194116C(v20);
  }

  v21 = *(v4 + 608);
  if (v21)
  {
    *(v4 + 608) = 0;
    do
    {
      v22 = *(v21 + 40);
      v23 = *v21;
      v24 = *(v21 + 24) - 1;
      *(v21 + 24) = v24;
      if (!v24)
      {
        v25 = *(v21 + 16);
        v26 = v23;
        if (v25)
        {
          (*(*v25 + 32))(v25);
          v26 = *v21;
        }

        v27 = *(v21 + 8);
        v28 = *(v27 + 16) - 1;
        *(v27 + 16) = v28;
        if (!v28)
        {
          v29 = *(v27 + 32);
          if (v29)
          {
            v29(*(v27 + 24));
          }

          sub_181929C84(v26, v27);
        }

        sub_181929C84(v23, v21);
      }

      v21 = v22;
    }

    while (v22);
  }

  if (*(v4 + 40) < 3)
  {
    *(v4 + 40) = 2;
LABEL_52:
    v38 = *(v4 + 32);
    v39 = (v4 + 696);
    if (v38 != (v4 + 696))
    {
      v40 = *v38;
      v41 = v38[1];
      v42 = v38[3];
      *(v4 + 728) = v38[2];
      *(v4 + 744) = v42;
      *v39 = v40;
      *(v4 + 712) = v41;
      if (v38)
      {
        sub_181929C84(v4, v38);
      }

      *(v4 + 32) = v39;
    }

    goto LABEL_56;
  }

  v30 = 0;
  v31 = 2;
  v32 = 2;
  do
  {
    v33 = *(v4 + 32);
    v34 = v33 + v30;
    if (*(v33 + v30 + 72))
    {
      if (v31 > v32)
      {
        v35 = *(v34 + 80);
        v36 = (v33 + 32 * v32);
        *v36 = *(v34 + 64);
        v36[1] = v35;
      }

      ++v32;
    }

    else
    {
      v37 = *(v34 + 64);
      if (v37)
      {
        sub_181929C84(v4, v37);
      }

      *(v34 + 64) = 0;
    }

    ++v31;
    v30 += 32;
  }

  while (v31 < *(v4 + 40));
  *(v4 + 40) = v32;
  if (v32 <= 2)
  {
    goto LABEL_52;
  }

LABEL_56:
  v43 = *(v4 + 624);
  if (v43)
  {
    do
    {
      v45 = v43[2];
      do
      {
        v47 = v45[8];
        if (v47)
        {
          if ((*v47)-- == 1)
          {
            v49 = v45;
            (*(v47 + 8))(*(v47 + 16));
            sub_181929C84(v4, v47);
            v45 = v49;
          }
        }

        v46 = v45[2];
        sub_181929C84(v4, v45);
        v45 = v46;
      }

      while (v46);
      v43 = *v43;
    }

    while (v43);
    v44 = *(v4 + 624);
  }

  else
  {
    v44 = 0;
  }

  *(v4 + 624) = 0;
  v50 = *(v4 + 632);
  if (v50)
  {
    v51 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_72:
      (*v51)(v50);
      goto LABEL_73;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v50);
    --qword_1ED456A90;
    off_1ED452EB0(v50);
    v50 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v51 = &xmmword_1ED452F28;
      goto LABEL_72;
    }
  }

LABEL_73:
  *(v4 + 632) = 0;
  *(v4 + 616) = 0;
  if (v44)
  {
    do
    {
      v52 = *v44;
      v53 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v44);
        --qword_1ED456A90;
        off_1ED452EB0(v44);
        v44 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_76;
        }

        v53 = &xmmword_1ED452F28;
      }

      (*v53)(v44);
LABEL_76:
      v44 = v52;
    }

    while (v52);
  }

  *(v4 + 620) = 0;
  v54 = *(v4 + 648);
  if (v54)
  {
    do
    {
      v56 = v54[2];
      v57 = v56[4];
      if (v57)
      {
        v57(v56[2]);
      }

      v58 = v56[9];
      if (v58)
      {
        v58(v56[7]);
      }

      v59 = v56[14];
      if (v59)
      {
        v59(v56[12]);
      }

      sub_181929C84(v4, v56);
      v54 = *v54;
    }

    while (v54);
    v55 = *(v4 + 648);
  }

  else
  {
    v55 = 0;
  }

  *(v4 + 648) = 0;
  v60 = *(v4 + 656);
  if (v60)
  {
    v61 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_98:
      (*v61)(v60);
      goto LABEL_99;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v60);
    --qword_1ED456A90;
    off_1ED452EB0(v60);
    v60 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v61 = &xmmword_1ED452F28;
      goto LABEL_98;
    }
  }

LABEL_99:
  *(v4 + 656) = 0;
  *(v4 + 640) = 0;
  if (v55)
  {
    do
    {
      v62 = *v55;
      v63 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v55);
        --qword_1ED456A90;
        off_1ED452EB0(v55);
        v55 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_102;
        }

        v63 = &xmmword_1ED452F28;
      }

      (*v63)(v55);
LABEL_102:
      v55 = v62;
    }

    while (v62);
  }

  *(v4 + 644) = 0;
  v64 = *(v4 + 576);
  if (v64)
  {
    do
    {
      v66 = v64[2];
      v67 = *(v66 + 40);
      if (v67)
      {
        *(v67 + 48) |= 0x4000u;
        if (*(v4 + 824) || (v68 = *(v67 + 44) - 1, (*(v67 + 44) = v68) == 0))
        {
          sub_18194E094(v4, v67, v9, v10);
        }

        *(v66 + 40) = 0;
      }

      v69 = *(v66 + 16) - 1;
      *(v66 + 16) = v69;
      if (!v69)
      {
        v70 = *(v66 + 32);
        if (v70)
        {
          v70(*(v66 + 24));
        }

        sub_181929C84(v4, v66);
      }

      v64 = *v64;
    }

    while (v64);
    v65 = *(v4 + 576);
  }

  else
  {
    v65 = 0;
  }

  *(v4 + 576) = 0;
  v71 = *(v4 + 584);
  if (v71)
  {
    v72 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_127:
      (*v72)(v71);
      goto LABEL_128;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v71);
    --qword_1ED456A90;
    off_1ED452EB0(v71);
    v71 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v72 = &xmmword_1ED452F28;
      goto LABEL_127;
    }
  }

LABEL_128:
  *(v4 + 584) = 0;
  *(v4 + 568) = 0;
  if (v65)
  {
    do
    {
      v73 = *v65;
      v74 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v65);
        --qword_1ED456A90;
        off_1ED452EB0(v65);
        v65 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_131;
        }

        v74 = &xmmword_1ED452F28;
      }

      (*v74)(v65);
LABEL_131:
      v65 = v73;
    }

    while (v73);
  }

  *(v4 + 572) = 0;
  *(v4 + 80) = 0;
  if (*(v4 + 416))
  {
    sub_181932D5C(v4, 0);
    v75 = *(v4 + 416);
    if (v75)
    {
      if ((*(v75 + 20) & 0x9000) != 0 || *(v75 + 32))
      {
        sub_18193CA00(*(v4 + 416));
      }

      sub_181929C84(*(v75 + 24), v75);
    }
  }

  else
  {
    *(v4 + 84) = -1;
  }

  *(v4 + 113) = -43;
  v76 = *(*(v4 + 32) + 56);
  if (v76)
  {
    sub_181929C84(v4, v76);
  }

  v77 = *(v4 + 328);
  if (v77)
  {
    v77(*(v4 + 320));
  }

  v78 = *(v4 + 24);
  if (!v78)
  {
    *(v4 + 113) = -50;
    if (!*(v4 + 440))
    {
      goto LABEL_161;
    }

LABEL_154:
    v81 = *(v4 + 504);
    if (!v81)
    {
      goto LABEL_161;
    }

    v82 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v81);
      --qword_1ED456A90;
      off_1ED452EB0(v81);
      v81 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_161;
      }

      v82 = &xmmword_1ED452F28;
    }

    (*v82)(v81);
    goto LABEL_161;
  }

  xmmword_1ED452F28(v78);
  v80 = *(v4 + 24);
  *(v4 + 113) = -50;
  if (v80)
  {
    off_1ED452F10(v79);
  }

  if (*(v4 + 440))
  {
    goto LABEL_154;
  }

LABEL_161:
  v5 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_5:
    v6 = *v5;

    return v6(v4);
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v4);
  --qword_1ED456A90;
  result = off_1ED452EB0(v4);
  v4 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v5 = &xmmword_1ED452F28;
    goto LABEL_5;
  }

  return result;
}

int sqlite3_backup_remaining(sqlite3_backup *p)
{
  if (p)
  {
    return *(p + 13);
  }

  sub_1819012D0(91429);
  return 0;
}

int sqlite3_backup_pagecount(sqlite3_backup *p)
{
  if (p)
  {
    return *(p + 14);
  }

  sub_1819012D0(91443);
  return 0;
}

void sub_181909F28(uint64_t a1, uint64_t a2)
{
  v94 = *MEMORY[0x1E69E9840];
  if (*(a2 + 192))
  {
    if (qword_1ED456C38 != -1)
    {
      sub_181A1EA60();
    }

    v4 = qword_1ED456C20;
    v5 = qword_1ED456C18;
    v6 = *(a2 + 320);
    v72 = 0;
    v7 = *(a2 + 224);
    v9 = *(a2 + 204);
    v8 = *(a2 + 208);
    v10 = *(a2 + 236);
    v11 = *(a2 + 216);
    v71 = *(a2 + 212);
    if (qword_1ED456C78 != -1)
    {
      v60 = *(a2 + 224);
      sub_181A1EA74();
      v7 = v60;
    }

    if (dword_1ED45305C)
    {
      v12 = *(a1 + 40);
      v69 = v9;
      v66 = v8;
      if (v12 <= 0)
      {
        v23 = 0;
        v25 = -*(a2 + 240);
        v26 = -*(a2 + 244);
        v27 = -*(a2 + 248);
      }

      else
      {
        v13 = 0;
        v14 = *(a1 + 32);
        v15 = v14 + 8;
        v16 = *(a1 + 40);
        do
        {
          if (*v15)
          {
            v13 += *(**(*v15 + 8) + 248);
          }

          v15 += 32;
          --v16;
        }

        while (v16);
        v17 = 0;
        v18 = v14 + 8;
        v19 = *(a1 + 40);
        do
        {
          if (*v18)
          {
            v17 += *(**(*v18 + 8) + 252);
          }

          v18 += 32;
          --v19;
        }

        while (v19);
        v20 = 0;
        v21 = v14 + 8;
        v22 = *(a1 + 40);
        do
        {
          if (*v21)
          {
            v20 += *(**(*v21 + 8) + 256);
          }

          v21 += 32;
          --v22;
        }

        while (v22);
        v23 = 0;
        v24 = v14 + 8;
        do
        {
          if (*v24)
          {
            v23 += *(**(*v24 + 8) + 260);
          }

          v24 += 32;
          --v12;
        }

        while (v12);
        v25 = v13 - *(a2 + 240);
        v26 = v17 - *(a2 + 244);
        v27 = v20 - *(a2 + 248);
      }

      v28 = *(a2 + 252);
      v68 = v11;
      if (v10 < 1)
      {
        v29 = 0;
      }

      else
      {
        v29 = (v26 + v25) / v10;
      }

      v67 = v23 - v28;
      v30 = *(a2 + 268);
      v64 = v25;
      v65 = v7;
      v62 = v27;
      v63 = v26;
      v61 = v29;
      if ((v30 & 0x40) != 0)
      {
        v31 = qword_1ED456C70 < v29 || v69 > 100 && v69 > 4 * v10;
        v70 = v31;
      }

      else
      {
        v70 = 0;
      }

      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_67;
      }

      if (v10 < 1 || (v30 & 0x40) == 0 || *(a2 + 52))
      {
        goto LABEL_66;
      }

      if (v69 > 4 * v10 && !strstr(v6, "/*scan*/") && v69 >= 101)
      {
        v6 = sub_18193A2B0(v6, &v72, v70);
        if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_66;
        }

        *buf = 67109634;
        *v74 = v69;
        *&v74[4] = 1024;
        *&v74[6] = v10;
        *&v74[10] = 2080;
        *&v74[12] = v6;
        v33 = "%d scan steps for %d row steps in [%s]";
        v34 = v4;
        v35 = 24;
        goto LABEL_65;
      }

      if (v71 < 101)
      {
        if (v66 >= 101 && !strstr(v6, "/*sort*/") && !strstr(v6, "/*scan*/"))
        {
          v6 = sub_18193A2B0(v6, &v72, v70);
          if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *v74 = v6;
            v33 = "sort without index in [%s]";
            v34 = v4;
            v35 = 12;
LABEL_65:
            _os_log_impl(&dword_18188D000, v34, OS_LOG_TYPE_DEFAULT, v33, buf, v35);
          }
        }
      }

      else
      {
        if (v70)
        {
          if (_os_feature_enabled_impl())
          {
            v36 = 4096;
          }

          else
          {
            v36 = 128;
          }
        }

        else
        {
          v36 = 128;
        }

        if (strlen(v6) > v36)
        {
          v37 = strndup(v6, v36);
          if (v37)
          {
            v38 = &v37[v36];
            *(v38 - 3) = 11822;
            *(v38 - 1) = 46;
            v72 = v37;
            v6 = v37;
          }
        }

        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109378;
          *v74 = v71;
          *&v74[4] = 2080;
          *&v74[6] = v6;
          v33 = "%d automatic index rows in [%s]";
          v34 = v4;
          v35 = 18;
          goto LABEL_65;
        }
      }

LABEL_66:
      if (v23 == v28)
      {
LABEL_67:
        v39 = v6;
        goto LABEL_68;
      }

      if (v70)
      {
        if (_os_feature_enabled_impl())
        {
          v49 = 4096;
        }

        else
        {
          v49 = 128;
        }

        v39 = v72;
        if (!v72)
        {
LABEL_108:
          if (strlen(v6) <= v49)
          {
            v39 = v6;
          }

          else
          {
            v52 = strndup(v6, v49);
            v39 = v6;
            if (v52)
            {
              v53 = &v52[v49];
              *(v53 - 3) = 11822;
              *(v53 - 1) = 46;
              v72 = v52;
              v39 = v52;
            }
          }
        }
      }

      else
      {
        v49 = 128;
        v39 = v72;
        if (!v72)
        {
          goto LABEL_108;
        }
      }

      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        *v74 = v67;
        *&v74[4] = 2080;
        *&v74[6] = v39;
        _os_log_impl(&dword_18188D000, v4, OS_LOG_TYPE_DEFAULT, "spilled %d pages during execution of [%s]", buf, 0x12u);
      }

LABEL_68:
      if ((dword_1ED45305C & 0x20) != 0)
      {
        v41 = *(a2 + 52);
        if (v41 == 11 || v41 == 26 || (v42 = *(a2 + 256)) != 0)
        {
          if (qword_1ED456C38 != -1)
          {
            sub_181A1E95C();
          }

          v5 = qword_1ED456C28;
          v42 = 1;
        }

        if (v10 <= 1)
        {
          v43 = 1;
        }

        else
        {
          v43 = v10;
        }

        if (qword_1ED456C68)
        {
          v44 = 0;
        }

        else
        {
          v44 = *&qword_1ED456C60 <= 0.0;
        }

        if (!v44)
        {
          v45 = ((qword_1ED456C68 / v43) + v43 * *&qword_1ED456C60);
          if (v68 > v45)
          {
            if (qword_1ED456C38 != -1)
            {
              sub_181A1E95C();
            }

            v5 = qword_1ED456C28;
            if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109890;
              *v74 = v10;
              *&v74[4] = 1024;
              *&v74[6] = v45;
              *&v74[10] = 1024;
              *&v74[12] = v68;
              *&v74[16] = 2080;
              *&v74[18] = v39;
              _os_log_impl(&dword_18188D000, v4, OS_LOG_TYPE_DEFAULT, "flagged inefficient query yielding %d results (expected vdbe steps ≤ %d, actual: %d) [%s]", buf, 0x1Eu);
            }

            v42 = 1;
          }
        }

        v40 = v42 == 0;
      }

      else
      {
        v40 = 1;
      }

      if (!os_signpost_enabled(v5))
      {
        goto LABEL_114;
      }

      v46 = os_signpost_id_make_with_pointer(v5, a2);
      if (v70)
      {
        if (_os_feature_enabled_impl())
        {
          v47 = 4096;
        }

        else
        {
          v47 = 128;
        }

        v48 = v72;
        if (!v72)
        {
LABEL_104:
          if (strlen(v39) <= v47)
          {
            v48 = v39;
          }

          else
          {
            v50 = strndup(v39, v47);
            v48 = v39;
            if (v50)
            {
              v51 = &v50[v47];
              *(v51 - 3) = 11822;
              *(v51 - 1) = 46;
              v72 = v50;
              v48 = v50;
            }
          }
        }
      }

      else
      {
        v47 = 128;
        v48 = v72;
        if (!v72)
        {
          goto LABEL_104;
        }
      }

      if (v46 + 1 >= 2)
      {
        if (os_signpost_enabled(v5))
        {
          v54 = *(a2 + 192);
          *buf = 134218498;
          *v74 = v54;
          *&v74[8] = 2050;
          *&v74[10] = a1;
          *&v74[18] = 2082;
          *&v74[20] = v48;
          _os_signpost_emit_with_name_impl(&dword_18188D000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v46, "execute", "startTime=%{signpost.description:begin_time}llu db=%{public}p query=%{public,signpost.telemetry:string1,name=query}s", buf, 0x20u);
        }

        if (os_signpost_enabled(v5))
        {
          if (v40)
          {
            v55 = "NO";
          }

          else
          {
            v55 = "YES";
          }

          v56 = *(a2 + 52);
          v57 = *(a2 + 168);
          if (!v57)
          {
            v57 = sqlite3_errstr(*(a2 + 52));
          }

          *buf = 136318466;
          *v74 = v55;
          *&v74[8] = 1026;
          *&v74[10] = v56;
          *&v74[14] = 1026;
          *&v74[16] = v65;
          *&v74[20] = 1026;
          *&v74[22] = v69;
          *&v74[26] = 1026;
          v75 = v71;
          v76 = 1026;
          v77 = v66;
          v78 = 1026;
          v79 = v67;
          v80 = 1026;
          v81 = v10;
          v82 = 2082;
          v83 = v57;
          v84 = 1026;
          v85 = v68;
          v86 = 1026;
          v87 = v64;
          v88 = 1026;
          v89 = v63;
          v90 = 1026;
          v91 = v62;
          v92 = 1026;
          v93 = v61;
          _os_signpost_emit_with_name_impl(&dword_18188D000, v5, OS_SIGNPOST_INTERVAL_END, v46, "execute", "enableTelemetry=%s rc=%{public,signpost.telemetry:number1,name=rc}d runCount=%{public}d nScan=%{public}d nAutoindex=%{public}d nSort=%{public}d nSpill=%{public}d nStep=%{public}d errMsg=%{public}s nVmStep=%{public,signpost.telemetry:number2,name=nVmStep}d hits=%{public}d misses=%{public}d writes=%{public}d bytesPerRow=%{public}d", buf, 0x5Eu);
        }

        if ((dword_1ED45305C & 0x20) != 0 && v67 >= 1)
        {
          if (os_signpost_enabled(v5))
          {
            v58 = *(a2 + 192);
            *buf = 134218498;
            *v74 = v58;
            *&v74[8] = 2050;
            *&v74[10] = a1;
            *&v74[18] = 2082;
            *&v74[20] = v48;
            _os_signpost_emit_with_name_impl(&dword_18188D000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v46, "cache_spill", "startTime=%{signpost.description:begin_time}llu db=%{public}p query=%{public,signpost.telemetry:string1,name=query}s", buf, 0x20u);
          }

          if (os_signpost_enabled(v5))
          {
            v59 = "YES";
            *buf = 136315650;
            if (v40)
            {
              v59 = "NO";
            }

            *v74 = v59;
            *&v74[8] = 1026;
            *&v74[10] = v67;
            *&v74[14] = 1026;
            *&v74[16] = v10;
            _os_signpost_emit_with_name_impl(&dword_18188D000, v5, OS_SIGNPOST_INTERVAL_END, v46, "cache_spill", "enableTelemetry=%s nSpill=%{public,signpost.telemetry:number1,name=rc}d writes=%{public,public,signpost.telemetry:number2}d", buf, 0x18u);
          }
        }
      }

      *(a2 + 192) = 0;
LABEL_114:
      if (v72)
      {
        free(v72);
      }
    }
  }

  if (*(a2 + 184))
  {
    sub_18193A154(a1, a2);
  }
}

const void *__cdecl sqlite3_value_blob(sqlite3_value *a1)
{
  if (!a1)
  {
    sub_1819012D0(99731);
    return 0;
  }

  v3 = *(a1 + 10);
  if ((v3 & 0x12) != 0)
  {
    v4 = *(a1 + 4);
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    v5 = *a1 + v4;
    if ((v5 < 0) ^ __OFADD__(*a1, v4) | (v5 == 0))
    {
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      v5 = 1;
    }

    v6 = a1;
    if (!sub_1818BB128(a1, v5, 1, v2))
    {
      bzero((*(v6 + 1) + *(v6 + 4)), *v6);
      a1 = v6;
      v4 = *(v6 + 4) + *v6;
      *(v6 + 4) = v4;
      LOWORD(v3) = *(v6 + 10) & 0xF9FF;
LABEL_10:
      *(a1 + 10) = v3 | 0x10;
      if (!v4)
      {
        return 0;
      }

      return *(a1 + 1);
    }

    return 0;
  }

  if ((~v3 & 0x202) == 0 && *(a1 + 22) == 1)
  {
    return *(a1 + 1);
  }

  if (v3)
  {
    return 0;
  }

  return sub_18193CB70(a1, 1, v1, v2);
}

int sqlite3_value_bytes(sqlite3_value *a1)
{
  if (!a1)
  {
    sub_1819012D0(93690);
    return 0;
  }

  v4 = *(a1 + 10);
  if ((v4 & 2) != 0 && *(a1 + 22) == 1)
  {
    return *(a1 + 4);
  }

  if ((v4 & 0x10) != 0)
  {
    v6 = *(a1 + 4);
    if ((*(a1 + 10) & 0x400) != 0)
    {
      return *a1 + v6;
    }

    return v6;
  }

  if (v4)
  {
    return 0;
  }

  return sub_18193CB44(a1, 1, v1, v2);
}

int sqlite3_value_bytes16(sqlite3_value *a1)
{
  if (!a1)
  {
    sub_1819012D0(93690);
    return 0;
  }

  v4 = *(a1 + 10);
  if ((v4 & 2) != 0 && *(a1 + 22) != 1)
  {
    return *(a1 + 4);
  }

  if ((v4 & 0x10) != 0)
  {
    v6 = *(a1 + 4);
    if ((*(a1 + 10) & 0x400) != 0)
    {
      return *a1 + v6;
    }

    return v6;
  }

  if (v4)
  {
    return 0;
  }

  return sub_18193CB44(a1, 2, v1, v2);
}

double sqlite3_value_double(sqlite3_value *a1)
{
  if (a1)
  {
    v2 = *(a1 + 10);
    if ((v2 & 8) != 0)
    {
      return *a1;
    }

    else if ((v2 & 0x24) != 0)
    {
      return *a1;
    }

    else if ((v2 & 0x12) != 0)
    {

      return sub_18193CF90(a1);
    }

    else
    {
      return 0.0;
    }
  }

  else
  {
    sub_1819012D0(92272);
    return 0.0;
  }
}

double sub_18190ABB0(_WORD *a1)
{
  if (a1)
  {
    v2 = a1[10];
    if ((v2 & 8) != 0)
    {
      return *a1;
    }

    else if ((v2 & 0x24) != 0)
    {
      return *a1;
    }

    else if ((v2 & 0x12) != 0)
    {

      return sub_18193CF90(a1);
    }

    else
    {
      return 0.0;
    }
  }

  else
  {
    sub_1819012D0(92272);
    return 0.0;
  }
}

sqlite3_int64 sqlite3_value_int64(sqlite3_value *a1)
{
  if (a1)
  {
    v2 = *(a1 + 10);
    if ((v2 & 0x24) != 0)
    {
      return *a1;
    }

    else if ((v2 & 8) != 0)
    {
      v4 = *a1;
      if (*a1 >= -9.22337204e18)
      {
        if (v4 <= 9.22337204e18)
        {
          return v4;
        }

        else
        {
          return 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      else
      {
        return 0x8000000000000000;
      }
    }

    else if ((v2 & 0x12) != 0 && *(a1 + 1))
    {

      return sub_18193CFCC(a1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1819012D0(92237);
    return 0;
  }
}

unsigned int sqlite3_value_subtype(sqlite3_value *a1)
{
  if (a1)
  {
    if ((*(a1 + 10) & 0x800) != 0)
    {
      return *(a1 + 23);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1819012D0(99765);
    return 0;
  }
}

void *__cdecl sqlite3_value_pointer(sqlite3_value *a1, const char *a2)
{
  if (!a1)
  {
    sub_1819012D0(99775);
    return 0;
  }

  result = 0;
  if (a2 && (*(a1 + 10) & 0xFBF) == 0xA01)
  {
    if (*(a1 + 23) == 112)
    {
      v4 = a1;
      if (!strcmp(*a1, a2))
      {
        return *(v4 + 1);
      }
    }

    return 0;
  }

  return result;
}

const void *__cdecl sqlite3_value_text16(const void *result)
{
  if (result)
  {
    v3 = *(result + 10);
    if ((~v3 & 0x202) != 0 || *(result + 22) != 2)
    {
      if (v3)
      {
        return 0;
      }

      else
      {
        return sub_18193CB70(result, 2, v1, v2);
      }
    }

    else
    {
      return *(result + 1);
    }
  }

  return result;
}

const void *__cdecl sqlite3_value_text16be(const void *result)
{
  if (result)
  {
    v3 = *(result + 10);
    if ((~v3 & 0x202) != 0 || *(result + 22) != 3)
    {
      if (v3)
      {
        return 0;
      }

      else
      {
        return sub_18193CB70(result, 3, v1, v2);
      }
    }

    else
    {
      return *(result + 1);
    }
  }

  return result;
}

const void *__cdecl sqlite3_value_text16le(const void *result)
{
  if (result)
  {
    v3 = *(result + 10);
    if ((~v3 & 0x202) != 0 || *(result + 22) != 2)
    {
      if (v3)
      {
        return 0;
      }

      else
      {
        return sub_18193CB70(result, 2, v1, v2);
      }
    }

    else
    {
      return *(result + 1);
    }
  }

  return result;
}

int sqlite3_value_type(sqlite3_value *a1)
{
  if (a1)
  {
    return byte_181A203AA[*(a1 + 10) & 0x3F];
  }

  sub_1819012D0(99877);
  return 0;
}

uint64_t sqlite3_value_encoding(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 22);
  }

  sub_1819012D0(99901);
  return 0;
}

int sqlite3_value_nochange(sqlite3_value *a1)
{
  if (a1)
  {
    return (~*(a1 + 10) & 0x401) == 0;
  }

  sub_1819012D0(99912);
  return 0;
}

int sqlite3_value_frombind(sqlite3_value *a1)
{
  if (a1)
  {
    return (*(a1 + 10) >> 6) & 1;
  }

  sub_1819012D0(99923);
  return 0;
}

sqlite3_value *__cdecl sqlite3_value_dup(sqlite3_value *result)
{
  if (result)
  {
    v1 = result;
    if (sqlite3_initialize())
    {
      return 0;
    }

    result = sub_181902484(64, 0x10F2040695A4BFELL);
    if (result)
    {
      *(result + 2) = 0u;
      *(result + 3) = 0u;
      *result = 0u;
      *(result + 1) = 0u;
      v5 = *(v1 + 2);
      *result = *v1;
      *(result + 2) = v5;
      *(result + 3) = 0;
      *(result + 10) = WORD2(v5) & 0xEFFF;
      if ((v5 & 0x1200000000) != 0)
      {
        *(result + 10) = WORD2(v5) & 0x8FFF | 0x4000;
        v6 = result;
        if (!sub_18190B020(result, v2, v3, v4))
        {
          return v6;
        }

        if ((*(v6 + 10) & 0x9000) != 0 || (v7 = v6, *(v6 + 8)))
        {
          sub_18193CA00(v6);
          v7 = v6;
        }

        sub_181929C84(*(v7 + 3), v7);
        return 0;
      }

      if ((v5 & 0x100000000) != 0)
      {
        *(result + 10) = WORD2(v5) & 0xE5ED;
      }
    }
  }

  return result;
}

uint64_t sub_18190B020(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 10);
  if ((v5 & 0x12) == 0)
  {
    goto LABEL_14;
  }

  if ((a1[5] & 0x400) != 0)
  {
    v6 = a1[4];
    a2 = (*a1 + v6);
    if ((*a1 + v6 < 0) ^ __OFADD__(*a1, v6) | (*a1 + v6 == 0))
    {
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      LODWORD(a2) = 1;
    }

    if (sub_1818BB128(a1, a2, 1, a4))
    {
      return 7;
    }

    bzero((*(a1 + 1) + a1[4]), *a1);
    a1[4] += *a1;
    v5 = a1[5] & 0xF9FF;
    *(a1 + 10) = v5;
  }

LABEL_10:
  if (!a1[8] || *(a1 + 1) != *(a1 + 5))
  {
    result = sub_18193CD7C(a1, a2, a3, a4);
    if (result)
    {
      return result;
    }

    v5 = *(a1 + 10);
  }

LABEL_14:
  result = 0;
  *(a1 + 10) = v5 & 0xBFFF;
  return result;
}

void *sub_18190B0E8(void *result)
{
  if (result)
  {
    v1 = result;
    if ((*(result + 10) & 0x9000) != 0 || *(result + 8))
    {
      sub_18193CA00(result);
    }

    v2 = v1[3];

    return sub_181929C84(v2, v1);
  }

  return result;
}

void sqlite3_value_free(sqlite3_value *a1)
{
  if (a1)
  {
    if ((*(a1 + 10) & 0x9000) != 0 || *(a1 + 8))
    {
      sub_18193CA00(a1);
    }

    v2 = *(a1 + 3);

    sub_181929C84(v2, a1);
  }
}

void sqlite3_result_blob(sqlite3_context *a1, const void *a2, int a3, void (__cdecl *a4)(void *))
{
  if (!a1 || a3 < 0)
  {
    if (a4 + 1 >= 2)
    {
      v6 = a1;
      (a4)(a2);
      a1 = v6;
      if (!v6)
      {
        return;
      }
    }

    else if (!a1)
    {
      return;
    }

    *(a1 + 9) = 18;
    v5 = *a1;

    sub_1818900D0(v5, "string or blob too big", -1, 1, 0);
  }

  else
  {

    sub_18190B23C(a1, a2, a3, 0, a4);
  }
}

void sub_18190B23C(uint64_t a1, char *a2, int a3, uint64_t a4, uint64_t (*a5)(uint64_t result))
{
  v6 = *a1;
  v7 = sub_1818900D0(*a1, a2, a3, a4, a5);
  if (v7)
  {
    if (v7 != 18)
    {

      sqlite3_result_error_nomem(a1);
      return;
    }

    goto LABEL_14;
  }

  v10 = *(a1 + 40);
  v11 = *(v6 + 20);
  if ((v11 & 2) != 0)
  {
    if (*(v6 + 22) != v10)
    {
      sub_1818F1820(v6, v10, v8, v9);
      v11 = *(v6 + 20);
    }
  }

  else
  {
    *(v6 + 22) = v10;
  }

  if ((v11 & 0x12) != 0)
  {
    v12 = *(v6 + 16);
    if ((v11 & 0x400) != 0)
    {
      v12 += *v6;
    }

    if (v12 > *(*(v6 + 24) + 136))
    {
LABEL_14:
      *(a1 + 36) = 18;
      v13 = *a1;

      sub_1818900D0(v13, "string or blob too big", -1, 1, 0);
    }
  }
}

void sqlite3_result_blob64(sqlite3_context *a1, const void *a2, sqlite3_uint64 a3, void (__cdecl *a4)(void *))
{
  if (a1)
  {
    if (a3 >> 31)
    {
      if (a4 + 1 >= 2)
      {
        v5 = a1;
        (a4)(a2);
        a1 = v5;
      }

      *(a1 + 9) = 18;
      v6 = *a1;

      sub_1818900D0(v6, "string or blob too big", -1, 1, 0);
    }

    else
    {

      sub_18190B23C(a1, a2, a3, 0, a4);
    }
  }

  else
  {

    sub_1819012D0(100045);
  }
}

void sqlite3_result_double(sqlite3_context *a1, double a2)
{
  if (a1)
  {
    v4 = *a1;
    if ((*(*a1 + 20) & 0x9000) != 0)
    {
      sub_18193CA54(*a1);
    }

    else
    {
      *(v4 + 10) = 1;
    }

    *v4 = a2;
    *(v4 + 10) = 8;
  }

  else
  {

    sub_1819012D0(100067);
  }
}

void sqlite3_result_error(sqlite3_context *a1, const char *a2, int a3)
{
  if (a1)
  {
    *(a1 + 9) = 1;
    sub_1818900D0(*a1, a2, a3, 1, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void sqlite3_result_error16(sqlite3_context *a1, const void *a2, int a3)
{
  if (a1)
  {
    *(a1 + 9) = 1;
    sub_1818900D0(*a1, a2, a3, 2, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void sqlite3_result_int64(sqlite3_context *a1, sqlite3_int64 a2)
{
  if (a1)
  {
    v2 = *a1;
    if ((*(v2 + 20) & 0x9000) != 0)
    {
      sub_18193D288(v2, a2);
    }

    else
    {
      *v2 = a2;
      *(v2 + 20) = 4;
    }
  }
}

void sqlite3_result_null(sqlite3_context *a1)
{
  if (a1)
  {
    v1 = *a1;
    if ((*(v1 + 20) & 0x9000) != 0)
    {
      sub_18193CA54(v1);
    }

    else
    {
      *(v1 + 20) = 1;
    }
  }
}

void sqlite3_result_pointer(sqlite3_context *a1, void *a2, const char *a3, void (__cdecl *a4)(void *))
{
  if (a1)
  {
    v6 = *a1;
    if ((*(*a1 + 20) & 0x9000) != 0 || v6[8])
    {
      sub_18193CA00(*a1);
    }

    *(v6 + 10) = 1;
    sub_18193CA00(v6);
    v7 = &byte_181A2878D;
    if (a3)
    {
      v7 = a3;
    }

    *v6 = v7;
    *(v6 + 1) = a2;
    *(v6 + 10) = 6657;
    *(v6 + 23) = 112;
    *(v6 + 56) = 0;
    if (a4)
    {
      v8 = a4;
    }

    else
    {
      v8 = nullsub_7;
    }

    *(v6 + 6) = v8;
  }

  else if (a4 + 1 >= 2)
  {

    (a4)(a2);
  }
}

void sqlite3_result_subtype(sqlite3_context *a1, unsigned int a2)
{
  if (a1)
  {
    v2 = *a1;
    *(v2 + 23) = a2;
    *(v2 + 20) |= 0x800u;
  }
}

void sqlite3_result_text(sqlite3_context *a1, const char *a2, int a3, void (__cdecl *a4)(void *))
{
  if (a1)
  {
    sub_18190B23C(a1, a2, a3, 1, a4);
  }

  else if (a4 + 1 >= 2)
  {
    (a4)(a2);
  }
}

void sqlite3_result_text64(sqlite3_context *a1, const char *a2, sqlite3_uint64 a3, void (__cdecl *a4)(void *), unsigned __int8 encoding)
{
  if (a1)
  {
    if (encoding != 1)
    {
      a3 &= ~1uLL;
    }

    if (a3 >> 31)
    {
      if (a4 + 1 >= 2)
      {
        v5 = a1;
        (a4)(a2);
        a1 = v5;
      }

      *(a1 + 9) = 18;
      v6 = *a1;

      sub_1818900D0(v6, "string or blob too big", -1, 1, 0);
      return;
    }

    if (encoding == 4)
    {
      v7 = 2;
    }

    else
    {
      v7 = encoding;
    }

    v8 = a1;
    sub_18190B23C(a1, a2, a3, v7, a4);
    v9 = *v8;
    if ((*(v9 + 20) & 0x6202) != 2 || *(v9 + 22) != 1)
    {
      return;
    }

    if ((*(v9 + 20) & 0x1000) == 0)
    {
      LODWORD(v10) = *(v9 + 16);
      if (*(v9 + 32) <= v10)
      {
        return;
      }

      v11 = (v9 + 8);
      goto LABEL_30;
    }

    v12 = *(v9 + 48);
    if (v12 == sqlite3_free)
    {
      v11 = (v9 + 8);
      v13 = *(v9 + 8);
      if (v13)
      {
        v14 = xmmword_1ED452EC0(v13);
      }

      else
      {
        v14 = 0;
      }

      v10 = *(v9 + 16);
      if (v14 >= v10 + 1)
      {
LABEL_30:
        *(*v11 + v10) = 0;
LABEL_31:
        *(v9 + 20) |= 0x200u;
        return;
      }

      v12 = *(v9 + 48);
    }

    if (v12 != sub_18193AB78)
    {
      return;
    }

    goto LABEL_31;
  }

  if (a4 + 1 >= 2)
  {

    (a4)(a2);
  }
}

void sqlite3_result_text16(sqlite3_context *a1, const void *a2, int a3, void (__cdecl *a4)(void *))
{
  if (a1)
  {
    sub_18190B23C(a1, a2, a3 & 0xFFFFFFFE, 2, a4);
  }

  else
  {
    sub_1819012D0(100204);
  }
}

void sqlite3_result_text16be(sqlite3_context *a1, const void *a2, int a3, void (__cdecl *a4)(void *))
{
  if (a1)
  {
    sub_18190B23C(a1, a2, a3 & 0xFFFFFFFE, 3, a4);
  }

  else
  {
    sub_1819012D0(100219);
  }
}

void sqlite3_result_text16le(sqlite3_context *a1, const void *a2, int a3, void (__cdecl *a4)(void *))
{
  if (a1)
  {
    sub_18190B23C(a1, a2, a3 & 0xFFFFFFFE, 2, a4);
  }

  else
  {
    sub_1819012D0(100234);
  }
}

void sqlite3_result_value(sqlite3_context *a1, sqlite3_value *a2)
{
  if (a1)
  {
    v5 = *a1;
    if (a2)
    {
      if ((*(*a1 + 20) & 0x9000) != 0)
      {
        v6 = a2;
        sub_18193CA54(*a1);
        a2 = v6;
      }

      v7 = *a2;
      v8 = *(a2 + 2);
      *(v5 + 2) = v8;
      *v5 = v7;
      LOWORD(v8) = WORD2(v8) & 0xEFFF;
      *(v5 + 10) = WORD2(v8) & 0xEFFF;
      if ((v8 & 0x1200000000) != 0 && (*(a2 + 10) & 0x2000) == 0)
      {
        *(v5 + 10) = WORD2(v8) & 0xAFFF | 0x4000;
        sub_18190B020(v5, a2, v2, v3);
        LOWORD(v8) = *(v5 + 10);
      }

      v9 = *(a1 + 40);
      if ((v8 & 2) != 0)
      {
        if (*(v5 + 22) != v9)
        {
          sub_1818F1820(v5, v9, v2, v3);
          LOWORD(v8) = *(v5 + 10);
        }
      }

      else
      {
        *(v5 + 22) = v9;
      }

      if ((v8 & 0x12) != 0)
      {
        v11 = v5[4];
        if ((v8 & 0x400) != 0)
        {
          v11 += *v5;
        }

        if (v11 > *(*(v5 + 3) + 136))
        {
          *(a1 + 9) = 18;
          v12 = *a1;

          sub_1818900D0(v12, "string or blob too big", -1, 1, 0);
        }
      }
    }

    else if ((*(*a1 + 20) & 0x9000) != 0)
    {
      v10 = *a1;

      sub_18193CA54(v10);
    }

    else
    {
      *(v5 + 10) = 1;
    }
  }
}

uint64_t sub_18190B970(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((*(a1 + 20) & 0x9000) != 0)
  {
    sub_18193CA54(a1);
  }

  v6 = *a2;
  v7 = *(a2 + 2);
  *(a1 + 16) = v7;
  *a1 = v6;
  *(a1 + 20) = WORD2(v7) & 0xEFFF;
  if ((v7 & 0x1200000000) == 0 || (*(a2 + 10) & 0x2000) != 0)
  {
    return 0;
  }

  *(a1 + 20) = WORD2(v7) & 0xAFFF | 0x4000;

  return sub_18190B020(a1, a2, a3, a4);
}

void sqlite3_result_error_toobig(sqlite3_context *a1)
{
  if (a1)
  {
    *(a1 + 9) = 18;
    sub_1818900D0(*a1, "string or blob too big", -1, 1, 0);
  }
}

void sqlite3_result_zeroblob(sqlite3_context *a1, int n)
{
  if (a1)
  {
    v2 = n & ~(n >> 31);
    v3 = *a1;
    if (*(*(*a1 + 24) + 136) >= v2)
    {
      if ((v3[5] & 0x9000) != 0 || v3[8])
      {
        sub_18193CA00(*a1);
      }

      *(v3 + 10) = 1040;
      v3[4] = 0;
      *v3 = v2;
      *(v3 + 22) = 1;
      *(v3 + 1) = 0;
    }

    else
    {
      *(a1 + 9) = 18;

      sub_1818900D0(v3, "string or blob too big", -1, 1, 0);
    }
  }

  else
  {

    sub_1819012D0(100267);
  }
}

int sqlite3_result_zeroblob64(sqlite3_context *a1, sqlite3_uint64 n)
{
  if (a1)
  {
    v3 = *a1;
    if (*(*(*a1 + 24) + 136) >= n)
    {
      if ((v3[5] & 0x9000) != 0 || v3[8])
      {
        v6 = n;
        sub_18193CA00(*a1);
        LODWORD(n) = v6;
      }

      v4 = 0;
      *(v3 + 10) = 1040;
      v3[4] = 0;
      *v3 = n & ~(n >> 31);
      *(v3 + 22) = 1;
      *(v3 + 1) = 0;
    }

    else
    {
      v4 = 18;
      *(a1 + 9) = 18;
      sub_1818900D0(v3, "string or blob too big", -1, 1, 0);
    }

    return v4;
  }

  else
  {

    return sub_1819012D0(100267);
  }
}

void sqlite3_result_error_code(sqlite3_context *a1, int a2)
{
  if (a1)
  {
    v2 = a2 ? a2 : -1;
    *(a1 + 9) = v2;
    if (*(*a1 + 20))
    {
      switch(a2)
      {
        case 516:
          v3 = "abort due to ROLLBACK";
          break;
        case 101:
          v3 = "no more rows available";
          break;
        case 100:
          v3 = "another row available";
          break;
        default:
          if (a2 > 0x1Cu || ((0x1410004uLL >> a2) & 1) != 0)
          {
            v3 = "unknown error";
          }

          else
          {
            v3 = off_1E6A27DD8[a2];
          }

          break;
      }

      sub_18190B23C(a1, v3, -1, 1, 0);
    }
  }
}

void sqlite3_result_error_nomem(sqlite3_context *a1)
{
  if (a1)
  {
    v2 = *a1;
    if ((*(v2 + 20) & 0x9000) != 0)
    {
      sub_18193CA54(v2);
      v2 = *a1;
    }

    else
    {
      *(v2 + 20) = 1;
    }

    *(a1 + 9) = 7;
    v3 = *(v2 + 24);
    if (!*(v3 + 103) && !*(v3 + 104))
    {
      *(v3 + 103) = 1;
      if (*(v3 + 220) >= 1)
      {
        *(v3 + 424) = 1;
      }

      ++*(v3 + 432);
      *(v3 + 436) = 0;
      v4 = *(v3 + 344);
      if (v4)
      {
        sub_181910730(v4, "out of memory");
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
  }
}

void sub_18190BD38(uint64_t result)
{
  if (!*(result + 103) && !*(result + 104))
  {
    *(result + 103) = 1;
    if (*(result + 220) >= 1)
    {
      *(result + 424) = 1;
    }

    ++*(result + 432);
    *(result + 436) = 0;
    v1 = *(result + 344);
    if (v1)
    {
      sub_181910730(v1, "out of memory");
      for (i = *(result + 344); ; ++*(i + 52))
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
}

uint64_t sub_18190BDD4(uint64_t a1)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (v3)
  {
    xmmword_1ED452F18(v3);
    v2 = *a1;
    v4 = *(*a1 + 24);
    v5 = *(a1 + 320);
    if (v4)
    {
      xmmword_1ED452F28(v4);
      v2 = *a1;
    }
  }

  else
  {
    v5 = *(a1 + 320);
  }

  __src = 0;
  result = sub_1818954B4(v2, v5, 0xFFFFFFFFLL, *(a1 + 266), a1, &__src, 0);
  if (result)
  {
    if (result == 7)
    {
      if (*(v2 + 103) || *(v2 + 104))
      {
        return 7;
      }

      else
      {
        *(v2 + 103) = 1;
        if (*(v2 + 220) >= 1)
        {
          *(v2 + 424) = 1;
        }

        ++*(v2 + 432);
        *(v2 + 436) = 0;
        result = 7;
        if (*(v2 + 344))
        {
          sub_181910730(*(v2 + 344), "out of memory");
          result = 7;
          for (i = *(v2 + 344); ; ++*(i + 52))
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
    }
  }

  else
  {
    v7 = __src;
    memcpy(__dst, __src, sizeof(__dst));
    memcpy(__src, a1, 0x198uLL);
    memcpy(a1, __dst, 0x198uLL);
    v11 = *(v7 + 8);
    *(v7 + 8) = *(a1 + 8);
    *(a1 + 8) = v11;
    v12 = v7[20];
    v7[20] = *(a1 + 320);
    *(a1 + 320) = v12;
    *(a1 + 372) = *(v7 + 93);
    *(a1 + 266) = *(v7 + 266);
    v14 = *(v7 + 280);
    v13 = *(v7 + 296);
    *(a1 + 312) = *(v7 + 78);
    *(a1 + 280) = v14;
    *(a1 + 296) = v13;
    ++*(a1 + 300);
    v15 = *(v7 + 200);
    v16 = *(v7 + 216);
    *(a1 + 232) = *(v7 + 29);
    *(a1 + 216) = v16;
    *(a1 + 200) = v15;
    ++*(a1 + 220);
    v17 = *(*a1 + 24);
    if (v17)
    {
      xmmword_1ED452F18(v17);
    }

    if (*(v7 + 8) >= 1)
    {
      v18 = 0;
      v19 = 0;
      do
      {
        v24 = *(a1 + 128) + v18;
        v25 = *(v7 + 16);
        if ((*(v24 + 20) & 0x9000) != 0 || *(v24 + 32))
        {
          sub_18193CA00((*(a1 + 128) + v18));
        }

        v20 = *(v25 + v18);
        v21 = *(v25 + v18 + 16);
        v22 = *(v25 + v18 + 48);
        *(v24 + 32) = *(v25 + v18 + 32);
        *(v24 + 48) = v22;
        *v24 = v20;
        *(v24 + 16) = v21;
        v23 = v25 + v18;
        *(v23 + 20) = 1;
        *(v23 + 32) = 0;
        ++v19;
        v18 += 64;
      }

      while (v19 < *(v7 + 8));
    }

    v26 = *(*a1 + 24);
    if (v26)
    {
      xmmword_1ED452F28(v26);
    }

    v27 = __src;
    *(__src + 13) = 0;
    if (*(v27 + 267))
    {
      sub_1818A32FC(v27, v8, v9, v10);
    }

    sub_181901AB4(v27, v8, v9, v10);
    return 0;
  }

  return result;
}

sqlite3 *__cdecl sqlite3_context_db_handle(sqlite3 *result)
{
  if (result)
  {
    return *(*result + 24);
  }

  return result;
}

int sqlite3_vtab_nochange(sqlite3_context *a1)
{
  if (a1)
  {
    if (*a1)
    {
      LODWORD(a1) = (~*(*a1 + 20) & 0x401) == 0;
    }

    else
    {
      sub_1819012D0(99912);
      LODWORD(a1) = 0;
    }
  }

  return a1;
}

uint64_t sub_18190C0EC(uint64_t a1, uint64_t *a2, int a3)
{
  if (!a2)
  {
    v6 = 100659;

    return sub_1819012D0(v6);
  }

  *a2 = 0;
  if (!a1)
  {
    v6 = 100662;

    return sub_1819012D0(v6);
  }

  if ((*(a1 + 20) & 0x1000) == 0 || *(a1 + 48) != sub_181943068)
  {
    return 1;
  }

  v26 = v3;
  v27 = v4;
  v8 = *(a1 + 8);
  v9 = *v8;
  if (a3)
  {
    result = sub_1818C85D8(*v8);
    goto LABEL_14;
  }

  result = sub_1818C6AC0(*v8);
  if (result != 16)
  {
    if (result)
    {
      goto LABEL_24;
    }

    while (1)
    {
      v16 = *(v9 + 136);
      if (*(v16 + 8))
      {
        break;
      }

      result = sub_1818C6EF4(v9, bswap32(*(*(v16 + 80) + (_byteswap_ushort(*(*(v16 + 96) + 2 * *(v9 + 86))) & *(v16 + 26)))));
      if (result)
      {
        goto LABEL_24;
      }
    }
  }

  result = 0;
LABEL_24:
  if (**v8)
  {
    return 101;
  }

LABEL_14:
  if (!result)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = *v8;
    sub_181938B20(*v8);
    result = sub_18193E044(*v8, *(v10 + 64), &v22, v11);
    if (!result)
    {
      v12 = *(&v22 + 1);
      v21 = 0;
      v13 = v8[1];
      v14 = *(*(&v22 + 1) + 1);
      if (v14 < 0)
      {
        v15 = (sub_18193DFAC(*(&v22 + 1) + 1, &v21) + 1);
        v14 = v21;
      }

      else
      {
        v15 = 2;
      }

      sub_1818C7394((v12 + v15), v14, v13);
      *(v13 + 22) = *(*(v13 + 24) + 100);
      if ((*(v13 + 21) & 0x40) != 0 && sub_18190B020(v13, v17, v18, v19))
      {
        result = 7;
      }

      else
      {
        result = 0;
        *a2 = v13;
      }
    }

    if (WORD2(v23) & 0x9000 | v24)
    {
      v20 = result;
      sub_18193CA00(&v22);
      return v20;
    }
  }

  return result;
}

uint64_t sub_18190C2E0(uint64_t a1, signed int a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (a2 <= 0)
  {
    if ((*(v4 + 20) & 0x9000) != 0)
    {
      sub_18193CA54(*(a1 + 16));
    }

    else
    {
      *(v4 + 20) = 1;
    }

    result = 0;
    *(v4 + 8) = 0;
  }

  else
  {
    if (*(v4 + 32) >= a2)
    {
      v7 = *(v4 + 40);
      *(v4 + 8) = v7;
    }

    else
    {
      v6 = a1;
      sub_1818BB128(*(a1 + 16), a2, 0, a4);
      a1 = v6;
      v7 = *(v4 + 8);
    }

    *(v4 + 20) = 0x8000;
    *v4 = *(a1 + 8);
    if (v7)
    {
      bzero(v7, a2);
      return *(v4 + 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *__cdecl sqlite3_get_auxdata(sqlite3_context *a1, int N)
{
  if (!a1)
  {
    sub_1819012D0(100800);
    return 0;
  }

  v2 = *(*(a1 + 3) + 384);
  if (!v2)
  {
    return 0;
  }

  while (*(v2 + 4) != N || (N & 0x80000000) == 0 && *v2 != *(a1 + 8))
  {
    v2 = *(v2 + 24);
    if (!v2)
    {
      return 0;
    }
  }

  return *(v2 + 8);
}

void sqlite3_set_auxdata(sqlite3_context *a1, int N, void *a3, void (__cdecl *a4)(void *))
{
  if (a1)
  {
    v7 = *(a1 + 3);
    v8 = v7[48];
    v11 = a4;
    if (v8)
    {
      while (*(v8 + 4) != N || (N & 0x80000000) == 0 && *v8 != *(a1 + 8))
      {
        v8 = *(v8 + 24);
        if (!v8)
        {
          goto LABEL_3;
        }
      }

      v9 = *(v8 + 16);
      if (v9)
      {
        v10 = v8;
        v9(*(v8 + 8));
        a4 = v11;
        v8 = v10;
      }

      goto LABEL_13;
    }

LABEL_3:
    if (*v7)
    {
      v8 = sub_181929E8C(*v7, 0x20uLL, 0x10A00406CFD8D67);
      a4 = v11;
      if (v8)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v8 = sub_181902484(32, 0x10A00406CFD8D67);
      a4 = v11;
      if (v8)
      {
LABEL_5:
        *v8 = 0u;
        *(v8 + 16) = 0u;
        *v8 = *(a1 + 8);
        *(v8 + 4) = N;
        *(v8 + 24) = v7[48];
        v7[48] = v8;
        if (!*(a1 + 9))
        {
          *(a1 + 9) = -1;
        }

LABEL_13:
        *(v8 + 8) = a3;
        *(v8 + 16) = a4;
        return;
      }
    }

    if (a4)
    {

      (a4)(a3);
    }
  }

  else
  {

    sub_1819012D0(100842);
  }
}

void *sub_18190C56C(uint64_t a1, size_t a2, uint64_t a3)
{
  if (a1)
  {
    result = sub_181929E8C(a1, a2, a3);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = sub_181902484(a2, a3);
    if (!result)
    {
      return result;
    }
  }

  v5 = result;
  bzero(result, a2);
  return v5;
}

int sqlite3_aggregate_count(sqlite3_context *a1)
{
  if (a1)
  {
    v1 = *(a1 + 2);
    if (v1)
    {
      v2 = *(a1 + 1);
      if (v2)
      {
        if (*(v2 + 32))
        {
          return *(v1 + 16);
        }
      }
    }
  }

  sub_1819012D0(100899);
  return 0;
}

int sqlite3_column_bytes16(sqlite3_stmt *a1, int iCol)
{
  if (!a1)
  {
    goto LABEL_9;
  }

  v6 = *(*a1 + 24);
  if (v6)
  {
    xmmword_1ED452F18(v6);
  }

  v7 = *(a1 + 20);
  if (!v7 || *(a1 + 130) <= iCol)
  {
    v10 = *a1;
    *(v10 + 80) = 25;
    sub_181932D5C(v10, 25);
LABEL_9:
    v8 = &qword_181A20ED0;
    v9 = 1;
    goto LABEL_13;
  }

  v8 = (v7 + (iCol << 6));
  v9 = *(v8 + 10);
  if ((v9 & 2) != 0 && *(v8 + 22) != 1)
  {
    v11 = *(v8 + 4);
    if (!a1)
    {
      return v11;
    }

    goto LABEL_20;
  }

LABEL_13:
  if ((v9 & 0x10) == 0)
  {
    if (v9)
    {
      v11 = 0;
      if (!a1)
      {
        return v11;
      }
    }

    else
    {
      v11 = sub_18193CB44(v8, 2, v2, v3);
      if (!a1)
      {
        return v11;
      }
    }

    goto LABEL_20;
  }

  v11 = *(v8 + 4);
  if ((v9 & 0x400) != 0)
  {
    v11 += *v8;
  }

  if (a1)
  {
LABEL_20:
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
  }

  return v11;
}

sqlite3_value *__cdecl sqlite3_column_value(sqlite3_stmt *a1, int iCol)
{
  if (!a1)
  {
    goto LABEL_9;
  }

  v4 = *(*a1 + 24);
  if (v4)
  {
    xmmword_1ED452F18(v4);
  }

  v5 = *(a1 + 20);
  if (!v5 || *(a1 + 130) <= iCol)
  {
    v7 = *a1;
    *(v7 + 80) = 25;
    sub_181932D5C(v7, 25);
LABEL_9:
    v6 = &qword_181A20ED0;
    goto LABEL_11;
  }

  v6 = (v5 + (iCol << 6));
  if ((*(v6 + 10) & 0x2000) != 0)
  {
    *(v6 + 10) = *(v6 + 10) & 0x9FFF | 0x4000;
  }

LABEL_11:
  if (a1)
  {
    v8 = *a1;
    v9 = *(a1 + 13);
    if (v9 || (v10 = *(v8 + 103), *(v8 + 103)))
    {
      v10 = sub_18193C988(v8, v9);
      v8 = *a1;
    }

    *(a1 + 13) = v10;
    v11 = *(v8 + 24);
    if (v11)
    {
      xmmword_1ED452F28(v11);
    }
  }

  return v6;
}

char *sub_18190C804(uint64_t *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    sub_1819012D0(101154);
    return 0;
  }

  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = *a1;
  if (*(*a1 + 24))
  {
    v5 = a1;
    v6 = a3;
    v7 = a2;
    v8 = a4;
    xmmword_1ED452F18(*(*a1 + 24));
    a1 = v5;
    a4 = v8;
    a2 = v7;
    a3 = v6;
  }

  v9 = (*(a1 + 134) >> 2) & 3;
  if (v9)
  {
    if (a4 <= 0)
    {
      v10 = v9 == 1 ? 8 : 4;
      if (v10 > a2)
      {
        v11 = a2 + 8 * v9 - 8;
        if (a3)
        {
          result = &unk_181A20E52 + 2 * byte_181A20E46[v11];
          v13 = *(v4 + 24);
          if (!v13)
          {
            return result;
          }
        }

        else
        {
          result = off_1E6A27050[v11];
          v13 = *(v4 + 24);
          if (!v13)
          {
            return result;
          }
        }

        goto LABEL_37;
      }
    }

    goto LABEL_35;
  }

  v14 = *(a1 + 130);
  if (v14 <= a2)
  {
LABEL_35:
    result = 0;
LABEL_36:
    v13 = *(v4 + 24);
    if (!v13)
    {
      return result;
    }

    goto LABEL_37;
  }

  v15 = *(v4 + 103);
  v16 = a2 + v14 * a4;
  v17 = a1[19];
  v18 = v17 + (v16 << 6);
  if (a3)
  {
    if (!v17)
    {
      goto LABEL_32;
    }

    v19 = *(v18 + 20);
    if ((~v19 & 0x202) != 0 || *(v18 + 22) != 2)
    {
      if ((v19 & 1) == 0)
      {
        v20 = 2;
LABEL_31:
        result = sub_18193CB70(v18, v20, a3, a4);
        goto LABEL_33;
      }

      goto LABEL_32;
    }

LABEL_26:
    result = *(v18 + 8);
    goto LABEL_33;
  }

  if (!v17)
  {
    goto LABEL_32;
  }

  v21 = *(v18 + 20);
  if ((~v21 & 0x202) == 0 && *(v18 + 22) == 1)
  {
    goto LABEL_26;
  }

  if ((v21 & 1) == 0)
  {
    v20 = 1;
    goto LABEL_31;
  }

LABEL_32:
  result = 0;
LABEL_33:
  if (*(v4 + 103) <= v15)
  {
    goto LABEL_36;
  }

  v22 = *(v4 + 220);
  if (v22)
  {
    goto LABEL_35;
  }

  *(v4 + 103) = 0;
  *(v4 + 424) = 0;
  v24 = *(v4 + 432) - 1;
  *(v4 + 432) = v24;
  if (!v24)
  {
    LOWORD(v22) = *(v4 + 438);
  }

  result = 0;
  *(v4 + 436) = v22;
  v13 = *(v4 + 24);
  if (v13)
  {
LABEL_37:
    v23 = result;
    xmmword_1ED452F28(v13);
    return v23;
  }

  return result;
}

int sqlite3_bind_pointer(sqlite3_stmt *a1, int a2, void *a3, const char *a4, void (__cdecl *a5)(void *))
{
  if (a2 <= 0)
  {
    if (a1)
    {
      v12 = *a1;
      if (*a1)
      {
        *(v12 + 80) = 25;
        sub_181932D5C(v12, 25);
      }

      else
      {
        sqlite3_log(21, "API called with finalized prepared statement", a3, a4, a5);
      }
    }

    else
    {
      sqlite3_log(21, "API called with NULL prepared statement", a3, a4, a5);
    }

    LODWORD(v10) = 25;
  }

  else
  {
    v9 = (a2 - 1);
    LODWORD(v10) = sub_1818DF6EC(a1, a2 - 1);
    if (v10)
    {
      if (a5)
      {
        v11 = v10;
        (a5)(a3);
        LODWORD(v10) = v11;
      }
    }

    else
    {
      v13 = *(a1 + 16) + (v9 << 6);
      sub_18193CA00(v13);
      v14 = &byte_181A2878D;
      if (a4)
      {
        v14 = a4;
      }

      *v13 = v14;
      *(v13 + 8) = a3;
      *(v13 + 20) = 6657;
      *(v13 + 23) = 112;
      *(v13 + 56) = 0;
      if (a5)
      {
        v15 = a5;
      }

      else
      {
        v15 = nullsub_7;
      }

      *(v13 + 48) = v15;
      v10 = *(*a1 + 24);
      if (v10)
      {
        xmmword_1ED452F28(v10);
        LODWORD(v10) = 0;
      }
    }
  }

  return v10;
}

int sqlite3_bind_text64(sqlite3_stmt *a1, int a2, const char *a3, sqlite3_uint64 a4, void (__cdecl *a5)(void *), unsigned __int8 encoding)
{
  if (encoding == 4)
  {
    v6 = 2;
  }

  else
  {
    v6 = encoding;
  }

  if (encoding != 1)
  {
    a4 &= ~1uLL;
  }

  return sub_1818DF574(a1, a2, a3, a4, a5, v6);
}

int sqlite3_bind_value(sqlite3_stmt *a1, int a2, const sqlite3_value *a3)
{
  if (!a3)
  {
    v7 = a2;
    sub_1819012D0(99877);
    a2 = v7;
    goto LABEL_8;
  }

  v4 = *(a3 + 10);
  v5 = byte_181A203AA[v4 & 0x3F];
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v9 = *(a3 + 4);
      v11 = *(a3 + 22);
      v10 = *(a3 + 1);
      goto LABEL_24;
    }

    if (v5 == 4)
    {
      if ((*(a3 + 10) & 0x400) != 0)
      {
        v14 = *a3;

        LODWORD(v8) = sqlite3_bind_zeroblob(a1, a2, v14);
        return v8;
      }

      v9 = *(a3 + 4);
      if ((v9 & 0x80000000) != 0)
      {

        LODWORD(v8) = sub_1819012D0(101409);
        return v8;
      }

      v10 = *(a3 + 1);
      v11 = 0;
LABEL_24:

      LODWORD(v8) = sub_1818DF574(a1, a2, v10, v9, 0xFFFFFFFFFFFFFFFFLL, v11);
      return v8;
    }

LABEL_8:
    if (a2 <= 0)
    {
      if (a1)
      {
        v12 = *a1;
        if (*a1)
        {
          *(v12 + 80) = 25;
          sub_181932D5C(v12, 25);
        }

        else
        {
          sqlite3_log(21, "API called with finalized prepared statement");
        }
      }

      else
      {
        sqlite3_log(21, "API called with NULL prepared statement");
      }

      LODWORD(v8) = 25;
    }

    else
    {
      LODWORD(v8) = sub_1818DF6EC(a1, a2 - 1);
      if (!v8)
      {
        v8 = *(*a1 + 24);
        if (v8)
        {
          xmmword_1ED452F28(v8);
          LODWORD(v8) = 0;
        }
      }
    }

    return v8;
  }

  if (v5 != 1)
  {
    if (v5 == 2)
    {
      if ((v4 & 8) != 0)
      {
        v6 = *a3;
      }

      else
      {
        v6 = *a3;
      }

      LODWORD(v8) = sqlite3_bind_double(a1, a2, v6);
      return v8;
    }

    goto LABEL_8;
  }

  v13 = *a3;

  LODWORD(v8) = sqlite3_bind_int64(a1, a2, v13);
  return v8;
}

int sqlite3_bind_zeroblob(sqlite3_stmt *a1, int a2, int n)
{
  if (a2 <= 0)
  {
    if (a1)
    {
      v8 = *a1;
      if (*a1)
      {
        *(v8 + 80) = 25;
        sub_181932D5C(v8, 25);
      }

      else
      {
        sqlite3_log(21, "API called with finalized prepared statement", *&n);
      }
    }

    else
    {
      sqlite3_log(21, "API called with NULL prepared statement", *&n);
    }

    LODWORD(v6) = 25;
  }

  else
  {
    v5 = (a2 - 1);
    LODWORD(v6) = sub_1818DF6EC(a1, a2 - 1);
    if (!v6)
    {
      v7 = *(a1 + 16) + (v5 << 6);
      if ((*(v7 + 20) & 0x9000) != 0 || *(v7 + 32))
      {
        sub_18193CA00(v7);
      }

      *(v7 + 20) = 1040;
      *(v7 + 16) = 0;
      *v7 = n & ~(n >> 31);
      *(v7 + 22) = 1;
      *(v7 + 8) = 0;
      v6 = *(*a1 + 24);
      if (v6)
      {
        xmmword_1ED452F28(v6);
        LODWORD(v6) = 0;
      }
    }
  }

  return v6;
}

int sqlite3_bind_zeroblob64(sqlite3_stmt *a1, int a2, sqlite3_uint64 a3)
{
  if (a1)
  {
    v6 = *a1;
    if (*(v6 + 24))
    {
      v7 = a2;
      xmmword_1ED452F18(*(v6 + 24));
      a2 = v7;
      v6 = *a1;
    }

    if (*(v6 + 136) >= a3)
    {
      v8 = sqlite3_bind_zeroblob(a1, a2, a3);
      v6 = *a1;
      if (!v8 && !*(v6 + 103))
      {
        v9 = 0;
        v10 = *(v6 + 24);
        if (!v10)
        {
          return v9;
        }

        goto LABEL_7;
      }
    }

    else
    {
      v8 = 18;
    }

    v9 = sub_18193C988(v6, v8);
    v10 = *(*a1 + 24);
    if (!v10)
    {
      return v9;
    }

LABEL_7:
    xmmword_1ED452F28(v10);
    return v9;
  }

  return sub_1819012D0(101629);
}

int sqlite3_bind_parameter_count(sqlite3_stmt *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = *(*a1 + 24);
    if (v2)
    {
      xmmword_1ED452F18(v2);
      v3 = *(*v1 + 24);
      LODWORD(a1) = *(v1 + 8);
      if (v3)
      {
        v4 = *(v1 + 8);
        xmmword_1ED452F28(v3);
        LODWORD(a1) = v4;
      }
    }

    else
    {
      LODWORD(a1) = *(v1 + 8);
    }
  }

  return a1;
}

int sqlite3_transfer_bindings(sqlite3_stmt *a1, sqlite3_stmt *a2)
{
  if (a1 && a2)
  {
    if (*(a1 + 8) == *(a2 + 8))
    {
      if (*(a2 + 93))
      {
        *(a2 + 134) = *(a2 + 134) & 0xFFFC | 1;
      }

      if (*(a1 + 93))
      {
        *(a1 + 134) = *(a1 + 134) & 0xFFFC | 1;
      }

      v4 = *(*a2 + 24);
      if (v4)
      {
        xmmword_1ED452F18(v4);
      }

      if (*(a1 + 8) >= 1)
      {
        v5 = 0;
        v6 = 0;
        do
        {
          v11 = *(a2 + 16) + v5;
          v12 = *(a1 + 16);
          if ((*(v11 + 20) & 0x9000) != 0 || *(v11 + 32))
          {
            sub_18193CA00((*(a2 + 16) + v5));
          }

          v7 = *(v12 + v5);
          v8 = *(v12 + v5 + 16);
          v9 = *(v12 + v5 + 48);
          *(v11 + 32) = *(v12 + v5 + 32);
          *(v11 + 48) = v9;
          *v11 = v7;
          *(v11 + 16) = v8;
          v10 = v12 + v5;
          *(v10 + 20) = 1;
          *(v10 + 32) = 0;
          ++v6;
          v5 += 64;
        }

        while (v6 < *(a1 + 8));
      }

      v13 = *(*a2 + 24);
      if (v13)
      {
        xmmword_1ED452F28(v13);
        LODWORD(v13) = 0;
      }
    }

    else
    {
      LODWORD(v13) = 1;
    }
  }

  else
  {

    LODWORD(v13) = sub_1819012D0(101723);
  }

  return v13;
}

sqlite3 *__cdecl sqlite3_db_handle(sqlite3 *result)
{
  if (result)
  {
    v1 = result;
    result = *result;
    if (*(result + 3))
    {
      xmmword_1ED452F18(*(result + 3));
      result = *v1;
      v2 = *(*v1 + 3);
      if (v2)
      {
        v3 = *v1;
        xmmword_1ED452F28(v2);
        return v3;
      }
    }
  }

  return result;
}

int sqlite3_stmt_readonly(sqlite3_stmt *pStmt)
{
  if (!pStmt)
  {
    return 1;
  }

  v2 = *(*pStmt + 24);
  if (!v2)
  {
    return (*(pStmt + 134) >> 6) & 1;
  }

  xmmword_1ED452F18(v2);
  v3 = *(*pStmt + 24);
  result = (*(pStmt + 134) >> 6) & 1;
  if (v3)
  {
    v5 = (*(pStmt + 134) >> 6) & 1;
    xmmword_1ED452F28(v3);
    return v5;
  }

  return result;
}

int sqlite3_stmt_isexplain(sqlite3_stmt *pStmt)
{
  if (pStmt)
  {
    v1 = pStmt;
    v2 = *(*pStmt + 24);
    if (v2)
    {
      xmmword_1ED452F18(v2);
      v3 = *(*v1 + 24);
      LODWORD(pStmt) = (v1[134] >> 2) & 3;
      if (v3)
      {
        v4 = (v1[134] >> 2) & 3;
        xmmword_1ED452F28(v3);
        LODWORD(pStmt) = v4;
      }
    }

    else
    {
      LODWORD(pStmt) = (v1[134] >> 2) & 3;
    }
  }

  return pStmt;
}

uint64_t sqlite3_stmt_explain(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    v5 = *(*a1 + 24);
    if (v5)
    {
      xmmword_1ED452F18(v5);
    }

    v6 = *(a1 + 268);
    if (((v6 >> 2) & 3) == a2)
    {
      v7 = 0;
      v8 = (v6 >> 2) & 3;
      if (v8)
      {
LABEL_6:
        v9 = (4 * v8) ^ 0xC;
LABEL_14:
        *(a1 + 260) = v9;
        v11 = *(*a1 + 24);
        if (v11)
        {
          xmmword_1ED452F28(v11);
        }

        return v7;
      }
    }

    else if (a2 <= 2 && *(a1 + 266) < 0)
    {
      if (*(a1 + 267) == 1)
      {
        if (*(a1 + 36) >= 10 && (a2 != 2 || (v6 & 0x100) != 0))
        {
          v7 = 0;
          v12 = v6 & 0xFFFFFFF3 | (4 * a2);
        }

        else
        {
          *(a1 + 268) = v6 & 0xFFF3 | (4 * a2);
          v7 = sub_18190BDD4(a1);
          v12 = *(a1 + 268) & 0xFEFF | ((a2 == 2) << 8);
        }

        *(a1 + 268) = v12;
        v8 = (v12 >> 2) & 3;
        if (v8)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v7 = 5;
        v8 = (v6 >> 2) & 3;
        if (v8)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      v7 = 1;
      v8 = (v6 >> 2) & 3;
      if (v8)
      {
        goto LABEL_6;
      }
    }

    v9 = *(a1 + 262);
    goto LABEL_14;
  }

  return sub_1819012D0(101785);
}

int sqlite3_stmt_busy(sqlite3_stmt *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = *(*a1 + 24);
    if (v2)
    {
      xmmword_1ED452F18(v2);
      v3 = *(*v1 + 24);
      LODWORD(a1) = v1[267] == 2;
      if (v3)
      {
        v4 = v1[267] == 2;
        xmmword_1ED452F28(v3);
        LODWORD(a1) = v4;
      }
    }

    else
    {
      LODWORD(a1) = v1[267] == 2;
    }
  }

  return a1;
}

int sqlite3_stmt_status(sqlite3_stmt *a1, int op, int resetFlg)
{
  if (!a1 || op != 99 && op >= 9)
  {
    sub_1819012D0(101866);
    return 0;
  }

  v5 = *a1;
  v6 = *(*a1 + 24);
  if (op == 99)
  {
    if (v6)
    {
      v7 = a1;
      xmmword_1ED452F18(*(*a1 + 24));
      a1 = v7;
    }

    v12 = 0;
    v5[103] = &v12;
    v5[64] = v5[63];
    sub_181901AB4(a1, *&op, *&resetFlg, v3);
    v5[103] = 0;
    v5[64] = v5[65];
    v8 = v5[3];
    if (!v8)
    {
      return v12;
    }
  }

  else
  {
    if (v6)
    {
      v9 = a1;
      v10 = op;
      v11 = resetFlg;
      xmmword_1ED452F18(*(*a1 + 24));
      resetFlg = v11;
      op = v10;
      a1 = v9;
    }

    v12 = *(a1 + op + 70);
    if (resetFlg)
    {
      *(a1 + op + 70) = 0;
    }

    v8 = *(*a1 + 24);
    if (!v8)
    {
      return v12;
    }
  }

  xmmword_1ED452F28(v8);
  return v12;
}

const char *__cdecl sqlite3_sql(const char *pStmt)
{
  if (pStmt)
  {
    v1 = pStmt;
    v2 = *(*pStmt + 24);
    if (v2)
    {
      xmmword_1ED452F18(v2);
      v3 = *(*v1 + 3);
      pStmt = v1[40];
      if (v3)
      {
        v4 = v1[40];
        xmmword_1ED452F28(v3);
        return v4;
      }
    }

    else
    {
      return v1[40];
    }
  }

  return pStmt;
}

char *__cdecl sqlite3_expanded_sql(sqlite3_stmt *pStmt)
{
  if (!pStmt)
  {
    return 0;
  }

  v4 = *pStmt;
  v5 = *(*pStmt + 24);
  if (v5 && (xmmword_1ED452F18(v5), v4 = *pStmt, (v6 = *(*pStmt + 24)) != 0))
  {
    xmmword_1ED452F18(v6);
    v4 = *pStmt;
    v7 = *(*pStmt + 24);
    v8 = *(pStmt + 40);
    if (v7)
    {
      xmmword_1ED452F28(v7);
      v4 = *pStmt;
    }
  }

  else
  {
    v8 = *(pStmt + 40);
  }

  if (v8)
  {
    v9 = *(v4 + 24);
    if (v9)
    {
      xmmword_1ED452F18(v9);
    }

    v8 = sub_18190D6A8(pStmt, v8, v1, v2);
    v4 = *pStmt;
    v10 = *(*pStmt + 24);
    if (v10)
    {
      xmmword_1ED452F28(v10);
      v4 = *pStmt;
    }
  }

  v11 = *(v4 + 24);
  if (v11)
  {
    xmmword_1ED452F28(v11);
  }

  return v8;
}

void *sub_18190D6A8(void *a1, char *__s, uint64_t a3, uint64_t a4)
{
  v4 = __s;
  v64 = 0;
  v63 = 0;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v5 = *a1;
  v6 = *(*a1 + 136);
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v62 = v6;
  if (*(v5 + 220) < 2)
  {
    if (!*(a1 + 8))
    {
      if (__s)
      {
        v50 = strlen(__s);
        if ((v50 & 0x3FFFFFFF) != 0)
        {
          sub_181906814(&v59, v4, v50 & 0x3FFFFFFF, v51);
        }
      }

      goto LABEL_97;
    }

    v53 = v5;
    if (!*__s)
    {
      goto LABEL_97;
    }

    v14 = "%02x";
    v15 = 1;
    while (1)
    {
      v16 = 0;
      v65 = 0;
      v17 = v4;
      while (1)
      {
        v18 = sub_1818966D0(v17, &v65);
        v20 = v18;
        if (v65 == 157)
        {
          break;
        }

        v16 = (v18 + v16);
        v17 += v18;
        if (!*v17)
        {
          v20 = 0;
          break;
        }
      }

      if (v16 <= 0)
      {
        if (v16)
        {
          sub_1819012D0(34353);
        }
      }

      else
      {
        v21 = v63;
        if (v63 + v16 >= v61)
        {
          sub_181906814(&v59, v4, v16, v19);
        }

        else
        {
          LODWORD(v63) = v63 + v16;
          memcpy(v60 + v21, v4, v16);
        }
      }

      if (!v20)
      {
        goto LABEL_97;
      }

      v22 = &v4[v16];
      if (*v22 == 63)
      {
        if (v20 < 2)
        {
          v64 = v15;
          v23 = v15;
        }

        else
        {
          sub_181949B34(v22 + 1, &v64);
          v23 = v64;
        }
      }

      else
      {
        v24 = *(*a1 + 24);
        if (v24)
        {
          xmmword_1ED452F18(v24);
        }

        v25 = a1[22];
        if (v25)
        {
          v54 = v15;
          v26 = v14;
          v27 = *(v25 + 4);
          v28 = 2;
          do
          {
            v29 = v25 + 4 * v28;
            if (!strncmp((v29 + 8), v22, v20) && !*(v29 + 8 + v20))
            {
              v23 = *v29;
              goto LABEL_45;
            }

            v28 += *(v29 + 4);
          }

          while (v28 < v27);
          v23 = 0;
LABEL_45:
          v14 = v26;
          v15 = v54;
        }

        else
        {
          v23 = 0;
        }

        v30 = *(*a1 + 24);
        if (v30)
        {
          xmmword_1ED452F28(v30);
        }

        v64 = v23;
      }

      if (v23 + 1 > v15)
      {
        v15 = v23 + 1;
      }

      v31 = a1[16] + (v23 << 6);
      v32 = *(v31 - 44);
      if (v32)
      {
        v34 = v63;
        if (v63 + 4 >= v61)
        {
          sub_181906814(&v59, "NULL", 4, v19);
        }

        else
        {
          LODWORD(v63) = v63 + 4;
          *(v60 + v34) = 1280070990;
        }
      }

      else
      {
        v33 = (v31 - 64);
        if ((v32 & 0x24) != 0)
        {
          sqlite3_str_appendf(&v59, "%lld");
        }

        else if ((v32 & 8) != 0)
        {
          sqlite3_str_appendf(&v59, "%!.15g", *v33);
        }

        else
        {
          if ((v32 & 2) != 0)
          {
            v36 = *(v53 + 100);
            if (v36 != 1)
            {
              v57 = 0u;
              v58 = 0u;
              v55 = 0u;
              *&v56 = 0;
              *(&v56 + 1) = v53;
              sub_1818900D0(&v55, *(v31 - 56), *(v31 - 48), v36, 0);
              if ((BYTE4(v56) & 2) == 0)
              {
                BYTE6(v56) = 1;
                goto LABEL_79;
              }

              if (BYTE6(v56) == 1)
              {
LABEL_79:
                v33 = &v55;
              }

              else
              {
                v33 = &v55;
                if (sub_1818F1820(&v55, 1, v37, v38) == 7)
                {
                  BYTE4(v63) = 7;
                  v61 = 0;
                  goto LABEL_79;
                }
              }
            }

            v43 = *(v33 + 4);
            v44 = *(v33 + 1);
            if (v43 <= 2048)
            {
LABEL_84:
              v46 = *(v33 + 4);
            }

            else
            {
              v45 = 2048;
              while ((*(v44 + v45) & 0xC0) == 0x80)
              {
                if (v43 == ++v45)
                {
                  goto LABEL_84;
                }
              }

              v46 = v45;
            }

            sqlite3_str_appendf(&v59, "'%.*q'", v46, v44);
            v47 = *(v33 + 4);
            v48 = __OFSUB__(v47, v46);
            v49 = v47 - v46;
            if (!((v49 < 0) ^ v48 | (v49 == 0)))
            {
              sqlite3_str_appendf(&v59, "/*+%d bytes*/", v49);
            }

            if (v36 != 1 && WORD2(v56) & 0x9000 | v57)
            {
              sub_18193CA00(&v55);
            }

            goto LABEL_20;
          }

          if ((*(v31 - 44) & 0x400) != 0)
          {
            sqlite3_str_appendf(&v59, "zeroblob(%d)");
          }

          else
          {
            v35 = v63;
            if (v63 + 2 >= v61)
            {
              sub_181906814(&v59, "x'", 2, v19);
            }

            else
            {
              LODWORD(v63) = v63 + 2;
              *(v60 + v35) = 10104;
            }

            v39 = *(v31 - 48);
            if (v39 >= 2048)
            {
              v40 = 2048;
            }

            else
            {
              v40 = v39;
            }

            if (v39 >= 1)
            {
              v41 = 0;
              do
              {
                sqlite3_str_appendf(&v59, v14, *(*(v31 - 56) + v41++));
              }

              while (v40 != v41);
            }

            v42 = v63;
            if (v63 + 1 >= v61)
            {
              sub_181906814(&v59, "'", 1, v19);
            }

            else
            {
              LODWORD(v63) = v63 + 1;
              *(v60 + v42) = 39;
            }

            if (*(v31 - 48) > v40)
            {
              sqlite3_str_appendf(&v59, "/*+%d bytes*/");
            }
          }
        }
      }

LABEL_20:
      v4 = &v22[v20];
      if (!*v4)
      {
        goto LABEL_97;
      }
    }
  }

  v7 = *__s;
  if (*__s)
  {
    do
    {
      v8 = 1;
      do
      {
        v9 = v8;
        if (v7 == 10)
        {
          break;
        }

        v7 = v4[v8++];
      }

      while (v4[v9]);
      v10 = v63;
      if (v63 + 3 >= v61)
      {
        sub_181906814(&v59, "-- ", 3, a4);
        if (v9 <= 0)
        {
LABEL_14:
          if (v9)
          {
            sub_1819012D0(34353);
          }

          goto LABEL_5;
        }
      }

      else
      {
        LODWORD(v63) = v63 + 3;
        v11 = v60 + v10;
        v11[2] = 32;
        *v11 = 11565;
        if (v9 <= 0)
        {
          goto LABEL_14;
        }
      }

      v12 = v63;
      if (v63 + v9 < v61)
      {
        LODWORD(v63) = v63 + v9;
        memcpy(v60 + v12, v4, v9 & 0x7FFFFFFF);
      }

      else
      {
        sub_181906814(&v59, v4, v9, a4);
      }

LABEL_5:
      v4 += v9;
      v7 = *v4;
    }

    while (*v4);
  }

LABEL_97:
  if (BYTE4(v63))
  {
    if ((v63 & 0x40000000000) != 0)
    {
      if (v60)
      {
        sub_181929C84(v59, v60);
      }
    }

    return 0;
  }

  if (!v60)
  {
    return v60;
  }

  *(v60 + v63) = 0;
  if (!v62 || (v63 & 0x40000000000) != 0)
  {
    return v60;
  }

  return sub_18192A12C(&v59);
}

const char *__cdecl sqlite3_normalized_sql(const char *pStmt)
{
  if (!pStmt)
  {
    return pStmt;
  }

  v1 = pStmt;
  pStmt = *(pStmt + 41);
  if (pStmt)
  {
    return pStmt;
  }

  v2 = *(v1 + 40);
  if (!v2)
  {
    return 0;
  }

  v3 = *v1;
  v4 = *(*v1 + 24);
  if (v4)
  {
    xmmword_1ED452F18(v4);
    v3 = *v1;
    v2 = *(v1 + 40);
  }

  v61 = -1;
  v6 = &unk_1EA831560;
  if (!sqlite3_initialize())
  {
    v7 = sub_181902484(32, 0x10300409A0FC5E0);
    if (v7)
    {
      v6 = v7;
      if (v3)
      {
        v8 = *(v3 + 136);
      }

      else
      {
        v8 = 2147483645;
      }

      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *(v7 + 20) = v8;
      *(v7 + 24) = 0;
      *(v7 + 28) = 0;
    }

    else
    {
      v6 = &unk_1EA831560;
    }
  }

  v9 = *v2;
  if (!*v2)
  {
LABEL_116:
    v52 = v6[6];
    if (v52 + 1 < v6[4])
    {
      v6[6] = v52 + 1;
      *(*(v6 + 1) + v52) = 59;
      goto LABEL_118;
    }

    sub_181906814(v6, ";", 1, v5);
    if (v6 == &unk_1EA831560)
    {
      goto LABEL_130;
    }

LABEL_119:
    v53 = *(v6 + 1);
    if (v53 && (*(v53 + v6[6]) = 0, v6[5]) && (*(v6 + 29) & 4) == 0)
    {
      v54 = sub_18192A12C(v6);
    }

    else
    {
      v54 = *(v6 + 1);
    }

    v55 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      v56 = v54;
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v6);
      --qword_1ED456A90;
      off_1ED452EB0(v6);
      v6 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_133;
      }

      v55 = &xmmword_1ED452F28;
    }

    else
    {
      v56 = v54;
    }

    (*v55)(v6);
LABEL_133:
    pStmt = v56;
    goto LABEL_134;
  }

  v57 = v3;
  v58 = v2;
  v59 = 0;
  v10 = 0;
  v11 = 0;
  LODWORD(v12) = 0;
  v13 = -1;
  v14 = v2;
  do
  {
    if (*(v6 + 28))
    {
      break;
    }

    if (v13 != 184)
    {
      v11 = v13;
    }

    v15 = sub_1818966D0(v14, &v61);
    v13 = v61;
    if (v15 < 1)
    {
      break;
    }

    v16 = v15;
    if (v61 > 138)
    {
      if ((v61 - 154) < 4)
      {
        goto LABEL_34;
      }

      if ((v61 - 184) < 2)
      {
        goto LABEL_19;
      }

      if (v61 == 139)
      {
        v10 = 0;
      }
    }

    else if (v61 <= 59)
    {
      if (v61 == 22)
      {
        v30 = v59;
        v31 = v6[6];
        if (v11 == 50)
        {
          v10 = v6[6];
          v30 = HIDWORD(v59) + 1;
        }

        LODWORD(v59) = v30;
        if (v31 + 1 >= v6[4])
        {
          sub_181906814(v6, "(", 1, v5);
        }

        else
        {
          v6[6] = v31 + 1;
          *(*(v6 + 1) + v31) = 40;
        }

        ++HIDWORD(v59);
        goto LABEL_19;
      }

      if (v61 == 23)
      {
        if (v10 < 1)
        {
          v24 = HIDWORD(v59);
        }

        else
        {
          v24 = HIDWORD(v59);
          if (HIDWORD(v59) == v59)
          {
            v25 = v10 + 1;
            v6[6] = v10 + 1;
            v26 = v10 + 6;
            if (v10 + 6 >= v6[4])
            {
              sub_181906814(v6, "?,?,?", 5, v5);
              v10 = 0;
            }

            else
            {
              v10 = 0;
              v6[6] = v26;
              v27 = *(v6 + 1) + v25;
              *(v27 + 4) = 63;
              *v27 = 742337599;
            }
          }
        }

        v19 = v6[6];
        HIDWORD(v59) = v24 - 1;
        if (v19 + 1 >= v6[4])
        {
          v28 = v6;
          v29 = ")";
          goto LABEL_52;
        }

        v6[6] = v19 + 1;
        v20 = *(v6 + 1);
        v21 = 41;
        goto LABEL_36;
      }
    }

    else
    {
      switch(v61)
      {
        case '<':
          v32 = v6[6];
          if (byte_181A204C8[v9] < 0)
          {
            v34 = sub_181929E8C(v57, v15 + 1, 1565185748);
            if (!v34)
            {
              v2 = v58;
              v10 = 0;
              goto LABEL_19;
            }

            v35 = v34;
            memcpy(v34, v14, v16);
            v35[v16] = 0;
            v60 = 0;
            v36 = *v35;
            if (byte_181A204C8[*v35] < 0)
            {
              v37 = 0;
              if (v36 == 91)
              {
                v36 = 93;
              }

              for (i = 1; ; ++i)
              {
                v39 = i;
                v40 = v35[i];
                if (v40 == v36)
                {
                  ++i;
                  LOBYTE(v40) = v36;
                  if (v35[v39 + 1] != v36)
                  {
                    break;
                  }
                }

                v35[v37++] = v40;
              }

              v35[v37] = 0;
            }

            if (*v14 == 34)
            {
              v41 = *(v1 + 42);
              if (v41)
              {
                while (strcmp(v35, v41 + 8))
                {
                  v41 = *v41;
                  if (!v41)
                  {
                    goto LABEL_77;
                  }
                }

                v50 = v6[6];
                if (v50 + 1 >= v6[4])
                {
                  sub_181906814(v6, "?", 1, v42);
                }

                else
                {
                  v6[6] = v50 + 1;
                  *(*(v6 + 1) + v50) = 63;
                }

                v2 = v58;
                sub_181929C84(v57, v35);
                v10 = 0;
                goto LABEL_19;
              }
            }

LABEL_77:
            v43 = strlen(v35);
            v44 = v43 & 0x3FFFFFFF;
            if (sub_1818966D0(v35, &v60) == v44 && v60 == 60)
            {
              v46 = v6[6];
              if (v46)
              {
                v47 = *(v6 + 1);
                if ((byte_181A204C8[*(v47 + (v46 - 1))] & 0x46) != 0)
                {
                  if (v46 + 1 >= v6[4])
                  {
                    sub_181906814(v6, " ", 1, v45);
                  }

                  else
                  {
                    v6[6] = v46 + 1;
                    *(v47 + v46) = 32;
                  }
                }
              }

              if (v44)
              {
                v51 = v6[6];
                if (v51 + v44 >= v6[4])
                {
                  sub_181906814(v6, v35, v44, v45);
                }

                else
                {
                  v6[6] = v51 + v44;
                  memcpy((*(v6 + 1) + v51), v35, v43 & 0x3FFFFFFF);
                }
              }
            }

            else
            {
              sqlite3_str_appendf(v6, "%w", v35);
            }

            sub_181929C84(v57, v35);
          }

          else
          {
            if (v32)
            {
              v33 = *(v6 + 1);
              if ((byte_181A204C8[*(v33 + (v32 - 1))] & 0x46) != 0)
              {
                if (v32 + 1 >= v6[4])
                {
                  sub_181906814(v6, " ", 1, v5);
                }

                else
                {
                  v6[6] = v32 + 1;
                  *(v33 + v32) = 32;
                }
              }
            }

            v49 = v6[6];
            if (v49 + v16 >= v6[4])
            {
              sub_181906814(v6, v14, v16, v5);
            }

            else
            {
              v6[6] = v49 + v16;
              memcpy((*(v6 + 1) + v49), v14, v16);
            }
          }

          if (v32 < v6[6])
          {
            do
            {
              *(*(v6 + 1) + v32) = byte_181A20298[*(*(v6 + 1) + v32)];
              ++v32;
            }

            while (v32 < v6[6]);
          }

          v10 = 0;
          goto LABEL_18;
        case 'v':
          goto LABEL_34;
        case 'z':
          if (v11 == 45 || v11 == 19)
          {
            v17 = v6[6];
            if (v17 + 5 >= v6[4])
            {
              sub_181906814(v6, " NULL", 5, v5);
            }

            else
            {
              v6[6] = v17 + 5;
              v18 = *(v6 + 1) + v17;
              *(v18 + 4) = 76;
              *v18 = 1280658976;
            }

            goto LABEL_19;
          }

LABEL_34:
          v19 = v6[6];
          if (v19 + 1 >= v6[4])
          {
            v28 = v6;
            v29 = "?";
LABEL_52:
            sub_181906814(v28, v29, 1, v5);
            goto LABEL_19;
          }

          v6[6] = v19 + 1;
          v20 = *(v6 + 1);
          v21 = 63;
LABEL_36:
          *(v20 + v19) = v21;
          goto LABEL_19;
      }
    }

    if ((byte_181A204C8[v9] & 0x46) != 0)
    {
      v22 = v6[6];
      if (v22)
      {
        v23 = *(v6 + 1);
        if ((byte_181A204C8[*(v23 + (v22 - 1))] & 0x46) != 0)
        {
          if (v22 + 1 >= v6[4])
          {
            sub_181906814(v6, " ", 1, v5);
          }

          else
          {
            v6[6] = v22 + 1;
            *(v23 + v22) = 32;
          }
        }
      }
    }

    v48 = v6[6];
    if (v48 + v16 >= v6[4])
    {
      sub_181906814(v6, v14, v16, v5);
    }

    else
    {
      v6[6] = v48 + v16;
      memcpy((*(v6 + 1) + v48), v14, v16);
    }

    if (v48 < v6[6])
    {
      do
      {
        *(*(v6 + 1) + v48) &= ~byte_181A204C8[*(*(v6 + 1) + v48)] | 0xDF;
        ++v48;
      }

      while (v48 < v6[6]);
    }

LABEL_18:
    v2 = v58;
LABEL_19:
    v12 = v16 + v12;
    v14 = &v2[v12];
    v9 = v2[v12];
  }

  while (v2[v12]);
  if (v13 != 1)
  {
    goto LABEL_116;
  }

LABEL_118:
  if (v6 != &unk_1EA831560)
  {
    goto LABEL_119;
  }

LABEL_130:
  pStmt = 0;
LABEL_134:
  *(v1 + 41) = pStmt;
  if (*(*v1 + 24))
  {
    xmmword_1ED452F28(*(*v1 + 24));
    return *(v1 + 41);
  }

  return pStmt;
}

uint64_t sqlite3_preupdate_old(uint64_t a1, int a2, double **a3)
{
  if (a1 && a3)
  {
    v4 = *(a1 + 368);
    if (!v4 || *(v4 + 16) == 18)
    {
      v5 = sub_1819012D0(101986);
      *(a1 + 80) = v5;
      goto LABEL_6;
    }

    v8 = *(v4 + 160);
    v9 = a2;
    if (v8)
    {
      v10 = *(v8 + 96);
      if (!*(v8 + 96))
      {
LABEL_17:
        v5 = 25;
        *(a1 + 80) = 25;
        goto LABEL_6;
      }

      v11 = 0;
      v12 = *(v8 + 8);
      while (a2 != *(v12 + 2 * v11))
      {
        if (v10 == ++v11)
        {
          goto LABEL_17;
        }
      }

LABEL_42:
      v5 = 25;
      if ((v11 & 0x80000000) == 0)
      {
        v35 = *(v4 + 8);
        if (v11 < *(v35 + 64))
        {
          if (*(*(v4 + 152) + 52) == a2)
          {
            *a3 = (v4 + 80);
            v36 = *(v4 + 64);
            if ((*(v4 + 100) & 0x9000) != 0)
            {
              sub_18193D288(v4 + 80, v36);
            }

            else
            {
              *(v4 + 80) = v36;
              *(v4 + 100) = 4;
            }

            goto LABEL_63;
          }

          v37 = *(v4 + 40);
          if (v37)
          {
            goto LABEL_48;
          }

          v41 = a3;
          v42 = *(v35 + 40);
          sub_181938B20(v42);
          v43 = *(v42 + 64);
          v44 = sub_18190ECE4(a1, v43, 2430653377);
          if (!v44)
          {
            goto LABEL_63;
          }

          v45 = v44;
          v5 = sub_1818EEE54(*(*(v4 + 8) + 40), 0, v43, v44, 0);
          if (!v5)
          {
            v37 = sub_18190ECF8(*(v4 + 32), v43, v45);
            *(v4 + 40) = v37;
            if (v37)
            {
              *(v4 + 24) = v45;
              a3 = v41;
LABEL_48:
              v38 = *(v37 + 8) + (v11 << 6);
              *a3 = v38;
              v39 = *(v4 + 152);
              v40 = *(v39 + 8);
              if (v11 >= *(*(v4 + 40) + 28))
              {
                v46 = v40 + 16 * a2;
                if (*(v46 + 12))
                {
                  v47 = a3;
                  v48 = *(v4 + 168);
                  if (v48 || (v48 = sub_18190C56C(a1, 8 * *(v39 + 54), 0x2004093837F09), (*(v4 + 168) = v48) != 0))
                  {
                    v49 = v48[a2];
                    if (!v49)
                    {
                      v54 = 0;
                      v50 = *(*(*(v4 + 152) + 80) + 24 * *(v46 + 12) - 16);
                      if (v50)
                      {
                        v5 = sub_18194BC5C(a1, v50, *(a1 + 100), *(v46 + 9), &v54);
                        v51 = v54;
                      }

                      else
                      {
                        v51 = 0;
                        v5 = 0;
                      }

                      v52 = v47;
                      if (!v5 && !v51)
                      {
                        v53 = sub_18190EDA8(102045);
                        v52 = v47;
                        v5 = v53;
                      }

                      *(*(v4 + 168) + 8 * a2) = v51;
                      *v52 = *(*(v4 + 168) + 8 * a2);
                      *(a1 + 80) = v5;
                      if (v5)
                      {
                        goto LABEL_6;
                      }

                      goto LABEL_64;
                    }

                    *v47 = v49;
                  }
                }

                else
                {
                  *a3 = &qword_181A20ED0;
                }
              }

              else if (*(v40 + 16 * a2 + 9) == 69 && (*(v38 + 20) & 0x24) != 0)
              {
                *v38 = sub_18190ABB0(v38);
                *(v38 + 20) = *(v38 + 20) & 0xF240 | 8;
              }

LABEL_63:
              *(a1 + 80) = 0;
LABEL_64:
              if (!*(a1 + 416))
              {
                v5 = 0;
                *(a1 + 84) = -1;
                goto LABEL_7;
              }

              v5 = 0;
LABEL_6:
              sub_181932D5C(a1, v5);
              if (v5)
              {
LABEL_67:

                return sub_18193C988(a1, v5);
              }

LABEL_7:
              if (!*(a1 + 103))
              {
                return 0;
              }

              goto LABEL_67;
            }

            v5 = 7;
          }

          sub_181929C84(a1, v45);
        }
      }

      *(a1 + 80) = v5;
      goto LABEL_6;
    }

    if ((a2 & 0x8000) != 0 || (v13 = *(v4 + 152), (*(v13 + 48) & 0x20) == 0))
    {
LABEL_41:
      LODWORD(v11) = v9;
      goto LABEL_42;
    }

    v14 = a2 & 0x7FFF;
    v15 = *(v13 + 8);
    if (!a2)
    {
      v9 = 0;
      goto LABEL_39;
    }

    if (v14 < 5)
    {
      v16 = 0;
      v9 = 0;
LABEL_37:
      v32 = v14 - v16;
      v33 = (v15 + 16 * v16 + 14);
      do
      {
        v34 = *v33;
        v33 += 8;
        v9 += ((v34 >> 5) & 1) == 0;
        --v32;
      }

      while (v32);
LABEL_39:
      if ((*(v15 + 16 * v14 + 14) & 0x20) != 0)
      {
        v9 = a2 - v9 + *(v13 + 56);
      }

      goto LABEL_41;
    }

    if (v14 >= 0x11)
    {
      if ((a2 & 0xF) != 0)
      {
        v17 = a2 & 0xF;
      }

      else
      {
        v17 = 16;
      }

      v16 = v14 - v17;
      v18 = (v15 + 142);
      v19 = 0uLL;
      v20.i64[0] = 0x1000100010001;
      v20.i64[1] = 0x1000100010001;
      v21 = a2 & 0x7FFF;
      v22 = 0uLL;
      do
      {
        v23.i16[0] = *(v18 - 64);
        v23.i16[1] = *(v18 - 56);
        v23.i16[2] = *(v18 - 48);
        v23.i16[3] = *(v18 - 40);
        v23.i16[4] = *(v18 - 32);
        v23.i16[5] = *(v18 - 24);
        v23.i16[6] = *(v18 - 16);
        v23.i16[7] = *(v18 - 8);
        v24.i16[0] = *v18;
        v24.i16[1] = v18[8];
        v24.i16[2] = v18[16];
        v24.i16[3] = v18[24];
        v24.i16[4] = v18[32];
        v24.i16[5] = v18[40];
        v24.i16[6] = v18[48];
        v24.i16[7] = v18[56];
        v19 = vaddq_s16(vbicq_s8(v20, vshrq_n_u16(v23, 5uLL)), v19);
        v22 = vaddq_s16(vbicq_s8(v20, vshrq_n_u16(v24, 5uLL)), v22);
        v21 -= 16;
        v18 += 128;
      }

      while (v17 != v21);
      v9 = vaddvq_s16(vaddq_s16(v22, v19));
      if (v17 < 5)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v9 = 0;
      v16 = 0;
    }

    v25 = a2 & 3;
    if (!v25)
    {
      v25 = 4;
    }

    v26 = v15 + 16 * v16;
    v27 = v25 + v16;
    v16 = v14 - v25;
    v28 = v9;
    v29 = (v26 + 46);
    v30 = v27 - v14;
    do
    {
      v31.i16[0] = *(v29 - 16);
      v31.i16[1] = *(v29 - 8);
      v31.i16[2] = *v29;
      v31.i16[3] = v29[8];
      v28 = vadd_s16(vbic_s8(0x1000100010001, vshr_n_u16(v31, 5uLL)), v28);
      v29 += 32;
      v30 += 4;
    }

    while (v30);
    v9 = vaddv_s16(v28);
    goto LABEL_37;
  }

  return sub_1819012D0(101979);
}

uint64_t sub_18190EAFC(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0 || (*(a1 + 48) & 0x20) == 0)
  {
    return a2;
  }

  v2 = *(a1 + 8);
  if (a2)
  {
    if (a2 >= 5)
    {
      if (a2 >= 0x11)
      {
        v5 = 16;
        if ((a2 & 0xF) != 0)
        {
          v5 = a2 & 0xF;
        }

        v3 = a2 - v5;
        v6 = (v2 + 142);
        v7 = 0uLL;
        v8.i64[0] = 0x1000100010001;
        v8.i64[1] = 0x1000100010001;
        v9 = a2;
        v10 = 0uLL;
        do
        {
          v11.i16[0] = *(v6 - 64);
          v11.i16[1] = *(v6 - 56);
          v11.i16[2] = *(v6 - 48);
          v11.i16[3] = *(v6 - 40);
          v11.i16[4] = *(v6 - 32);
          v11.i16[5] = *(v6 - 24);
          v11.i16[6] = *(v6 - 16);
          v11.i16[7] = *(v6 - 8);
          v12.i16[0] = *v6;
          v12.i16[1] = v6[8];
          v12.i16[2] = v6[16];
          v12.i16[3] = v6[24];
          v12.i16[4] = v6[32];
          v12.i16[5] = v6[40];
          v12.i16[6] = v6[48];
          v12.i16[7] = v6[56];
          v7 = vaddq_s16(vbicq_s8(v8, vshrq_n_u16(v11, 5uLL)), v7);
          v10 = vaddq_s16(vbicq_s8(v8, vshrq_n_u16(v12, 5uLL)), v10);
          v9 -= 16;
          v6 += 128;
        }

        while (v5 != v9);
        v4 = vaddvq_s16(vaddq_s16(v10, v7));
        if (v5 < 5)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v4 = 0;
        v3 = 0;
      }

      v13 = a2 & 3;
      if ((a2 & 3) == 0)
      {
        v13 = 4;
      }

      v14 = v2 + 16 * v3;
      v15 = v13 + v3;
      v3 = a2 - v13;
      v16 = v4;
      v17 = (v14 + 46);
      v18 = v15 - a2;
      do
      {
        v19.i16[0] = *(v17 - 16);
        v19.i16[1] = *(v17 - 8);
        v19.i16[2] = *v17;
        v19.i16[3] = v17[8];
        v16 = vadd_s16(vbic_s8(0x1000100010001, vshr_n_u16(v19, 5uLL)), v16);
        v17 += 32;
        v18 += 4;
      }

      while (v18);
      v4 = vaddv_s16(v16);
    }

    else
    {
      v3 = 0;
      v4 = 0;
    }

LABEL_19:
    v20 = (v2 + 16 * v3 + 14);
    v21 = a2 - v3;
    do
    {
      v22 = *v20;
      v20 += 8;
      v4 += ((v22 >> 5) & 1) == 0;
      --v21;
    }

    while (v21);
    goto LABEL_21;
  }

  v4 = 0;
LABEL_21:
  if ((*(v2 + 16 * a2 + 14) & 0x20) == 0)
  {
    return v4;
  }

  LOWORD(a2) = a2 - v4 + *(a1 + 56);
  return a2;
}

void *sub_18190ECE4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a1)
  {
    return sub_181929E8C(a1, a2, a3);
  }

  else
  {
    return sub_181902484(a2, a3);
  }
}

uint64_t sub_18190ECF8(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *(a1 + 6) << 6;
  v7 = *(a1 + 16);
  if (!v7)
  {
    v8 = sub_181902484(v6 + 104, 0x1032040E2E69B38);
    if (!v8)
    {
      return v8;
    }

    goto LABEL_3;
  }

  v8 = sub_181929E8C(v7, v6 + 104, 0x1032040E2E69B38);
  if (v8)
  {
LABEL_3:
    *v8 = a1;
    *(v8 + 8) = v8 + 40;
    *(v8 + 28) = *(a1 + 6) + 1;
    bzero((v8 + 40), (*(a1 + 6) << 6) + 64);
    sub_1818DC95C(a2, a3, v8);
  }

  return v8;
}

uint64_t sqlite3_preupdate_count(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 368);
    if (v1)
    {
      return *(*(v1 + 32) + 6);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sqlite3_preupdate_depth(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 368);
    if (v1)
    {
      return *(*v1 + 368);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sqlite3_preupdate_blobwrite(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 368)) != 0)
  {
    return *(v1 + 60);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sqlite3_preupdate_new(uint64_t a1, uint64_t a2, uint64_t **a3, __int16 *a4)
{
  if (a1 && a3)
  {
    v5 = *(a1 + 368);
    if (!v5 || (v6 = *(v5 + 16), v6 == 9))
    {
      v7 = sub_1819012D0(102141);
LABEL_6:
      v8 = v7;
LABEL_7:
      *(a1 + 80) = v8;
      goto LABEL_8;
    }

    v10 = *(v5 + 160);
    v11 = v6 == 23 || v10 == 0;
    v12 = a2;
    if (!v11)
    {
      v17 = *(v10 + 96);
      if (!*(v10 + 96))
      {
LABEL_28:
        v8 = 25;
        goto LABEL_7;
      }

      v18 = 0;
      v19 = *(v10 + 8);
      while (a2 != *(v19 + 2 * v18))
      {
        if (v17 == ++v18)
        {
          goto LABEL_28;
        }
      }

LABEL_48:
      v8 = 25;
      if ((v18 & 0x80000000) != 0 || v18 >= *(*(v5 + 8) + 64))
      {
        goto LABEL_7;
      }

      if (v6 == 18)
      {
        v38 = *(v5 + 48);
        if (v38)
        {
LABEL_56:
          v43 = (*(v38 + 8) + (v18 << 6));
          if (*(*(v5 + 152) + 52) == a2)
          {
            v44 = *(v5 + 72);
            if ((*(v43 + 10) & 0x9000) != 0)
            {
              v45 = a3;
              sub_18193D288(*(v38 + 8) + (v18 << 6), v44);
              a3 = v45;
              goto LABEL_72;
            }

            *v43 = v44;
            goto LABEL_71;
          }

          if (v18 >= *(v38 + 28))
          {
            v43 = &qword_181A20ED0;
          }

          goto LABEL_72;
        }

        v39 = a2;
        v40 = a3;
        v41 = *(v5 + 56);
        v42 = *(*v5 + 104) + (v41 << 6);
        if ((*(v42 + 20) & 0x400) != 0)
        {
          v7 = sub_1818E6124((*(*v5 + 104) + (v41 << 6)), a2, a3, a4);
          if (v7)
          {
            goto LABEL_6;
          }
        }

        v38 = sub_18190ECF8(*(v5 + 32), *(v42 + 16), *(v42 + 8));
        if (v38)
        {
          *(v5 + 48) = v38;
          a3 = v40;
          LODWORD(a2) = v39;
          goto LABEL_56;
        }
      }

      else
      {
        v46 = *(v5 + 144);
        if (v46 || (v47 = a2, v48 = a3, v46 = sub_18190C56C(a1, *(*(v5 + 8) + 64) << 6, 0x10F2040695A4BFELL), LODWORD(a2) = v47, a3 = v48, (*(v5 + 144) = v46) != 0))
        {
          v43 = &v46[64 * v18];
          if (*(v43 + 10))
          {
            goto LABEL_72;
          }

          if (*(*(v5 + 152) + 52) == a2)
          {
            *v43 = *(v5 + 72);
LABEL_71:
            *(v43 + 10) = 4;
            goto LABEL_72;
          }

          v49 = a3;
          v7 = sub_18190B970(&v46[64 * v18], (*(*v5 + 104) + ((v18 + *(v5 + 56) + 1) << 6)), a3, a4);
          a3 = v49;
          if (v7)
          {
            goto LABEL_6;
          }

LABEL_72:
          v8 = 0;
          *a3 = v43;
          *(a1 + 80) = 0;
          if (!*(a1 + 416))
          {
            v8 = 0;
            *(a1 + 84) = -1;
            goto LABEL_9;
          }

LABEL_8:
          sub_181932D5C(a1, v8);
          if (v8)
          {
LABEL_74:

            return sub_18193C988(a1, v8);
          }

LABEL_9:
          if (!*(a1 + 103))
          {
            return 0;
          }

          goto LABEL_74;
        }
      }

      v8 = 7;
      goto LABEL_7;
    }

    if ((a2 & 0x8000) != 0 || (v13 = *(v5 + 152), (*(v13 + 48) & 0x20) == 0))
    {
LABEL_47:
      LODWORD(v18) = v12;
      goto LABEL_48;
    }

    v14 = a2 & 0x7FFF;
    v15 = *(v13 + 8);
    if (!a2)
    {
      v12 = 0;
      goto LABEL_45;
    }

    if (v14 < 5)
    {
      v16 = 0;
      v12 = 0;
LABEL_43:
      v35 = v14 - v16;
      v36 = (v15 + 16 * v16 + 14);
      do
      {
        v37 = *v36;
        v36 += 8;
        v12 += ((v37 >> 5) & 1) == 0;
        --v35;
      }

      while (v35);
LABEL_45:
      if ((*(v15 + 16 * v14 + 14) & 0x20) != 0)
      {
        v12 = a2 - v12 + *(v13 + 56);
      }

      goto LABEL_47;
    }

    if (v14 >= 0x11)
    {
      if ((a2 & 0xF) != 0)
      {
        v20 = a2 & 0xF;
      }

      else
      {
        v20 = 16;
      }

      v16 = v14 - v20;
      v21 = (v15 + 142);
      v22 = 0uLL;
      v23.i64[0] = 0x1000100010001;
      v23.i64[1] = 0x1000100010001;
      v24 = a2 & 0x7FFF;
      v25 = 0uLL;
      do
      {
        a4 = v21 - 32;
        v26.i16[0] = *(v21 - 64);
        v26.i16[1] = *(v21 - 56);
        v26.i16[2] = *(v21 - 48);
        v26.i16[3] = *(v21 - 40);
        v26.i16[4] = *(v21 - 32);
        v26.i16[5] = *(v21 - 24);
        v26.i16[6] = *(v21 - 16);
        v26.i16[7] = *(v21 - 8);
        v27.i16[0] = *v21;
        v27.i16[1] = v21[8];
        v27.i16[2] = v21[16];
        v27.i16[3] = v21[24];
        v27.i16[4] = v21[32];
        v27.i16[5] = v21[40];
        v27.i16[6] = v21[48];
        v27.i16[7] = v21[56];
        v22 = vaddq_s16(vbicq_s8(v23, vshrq_n_u16(v26, 5uLL)), v22);
        v25 = vaddq_s16(vbicq_s8(v23, vshrq_n_u16(v27, 5uLL)), v25);
        v24 -= 16;
        v21 += 128;
      }

      while (v20 != v24);
      v12 = vaddvq_s16(vaddq_s16(v25, v22));
      if (v20 < 5)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v12 = 0;
      v16 = 0;
    }

    v28 = a2 & 3;
    if (!v28)
    {
      v28 = 4;
    }

    v29 = v15 + 16 * v16;
    v30 = v28 + v16;
    v16 = v14 - v28;
    v31 = v12;
    v32 = (v29 + 46);
    v33 = v30 - v14;
    do
    {
      v34.i16[0] = *(v32 - 16);
      v34.i16[1] = *(v32 - 8);
      v34.i16[2] = *v32;
      v34.i16[3] = v32[8];
      v31 = vadd_s16(vbic_s8(0x1000100010001, vshr_n_u16(v34, 5uLL)), v31);
      v32 += 32;
      v33 += 4;
    }

    while (v33);
    v12 = vaddv_s16(v31);
    goto LABEL_43;
  }

  return sub_1819012D0(102136);
}

uint64_t sqlite3_stmt_scanstatus_v2(uint64_t a1, int a2, int a3, char a4, double *a5, __n128 a6)
{
  v6 = 1;
  if (a1 && a5)
  {
    if (*(*a1 + 24))
    {
      v7 = a1;
      v8 = a5;
      v9 = a3;
      v10 = a2;
      v11 = a4;
      xmmword_1ED452F18(*(*a1 + 24));
      a4 = v11;
      a2 = v10;
      a3 = v9;
      a5 = v8;
      a1 = v7;
    }

    if (a3 > 7)
    {
      return 1;
    }

    v12 = *(a1 + 352);
    if (v12)
    {
      do
      {
        v13 = v12;
        v12 = *(v12 + 8);
      }

      while (v12);
      v14 = (v13 + 16);
      v15 = (v13 + 80);
    }

    else
    {
      v15 = (a1 + 144);
      v14 = (a1 + 136);
    }

    v16 = *v14;
    v17 = *v15;
    if ((a2 & 0x80000000) == 0)
    {
      v18 = *(a1 + 392);
      if (a4)
      {
        if (v18 <= a2)
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v18 < 1)
        {
          goto LABEL_30;
        }

        v19 = 0;
        v20 = (*(a1 + 400) + 48);
        while (1)
        {
          if (*v20)
          {
            v21 = __OFSUB__(a2--, 1);
            if (a2 < 0 != v21)
            {
              break;
            }
          }

          ++v19;
          v20 += 7;
          if (v18 == v19)
          {
            goto LABEL_30;
          }
        }

        a2 = v19;
        if (v19 >= v18)
        {
LABEL_30:
          v26 = *(*a1 + 24);
          v27 = 1;
          v6 = 1;
          if (!v26)
          {
            return v6;
          }

LABEL_31:
          xmmword_1ED452F28(v26);
          return v27;
        }
      }

      v24 = (*(a1 + 400) + 56 * a2);
      if (a3 <= 3)
      {
        if (a3 > 1)
        {
          if (a3 == 2)
          {
            v38 = *(v24 + 20);
            v39 = 1.0;
            v40 = a1;
            if (v38 > 99)
            {
              v41 = *(v24 + 20);
            }

            else
            {
              do
              {
                v41 = v38 + 10;
                v42 = v38;
                v39 = v39 * 0.5;
                v38 += 10;
              }

              while (v42 < 90);
            }

            *a5 = v39 * sub_18190F8CC(v41);
            a1 = v40;
          }

          else
          {
            *a5 = *(v24 + 6);
          }
        }

        else
        {
          if (a3)
          {
            v25 = v24[8];
          }

          else
          {
            v25 = v24[7];
          }

          if (v25 < 1)
          {
            *a5 = NAN;
          }

          else
          {
            *a5 = *&v16[40 * v25 + 24];
          }
        }

        goto LABEL_113;
      }

      if (a3 <= 5)
      {
        if (a3 == 4)
        {
          if (*v24)
          {
            *a5 = *&v16[40 * *v24 + 16];
          }

          else
          {
            *a5 = 0.0;
          }

          goto LABEL_113;
        }

        if (*v24)
        {
          *a5 = *&v16[40 * *v24 + 4];
          goto LABEL_113;
        }

        goto LABEL_63;
      }

      if (a3 == 6)
      {
        if (*v24)
        {
          *a5 = *&v16[40 * *v24 + 8];
LABEL_113:
          v27 = 0;
          v6 = 0;
LABEL_114:
          v26 = *(*a1 + 24);
          if (!v26)
          {
            return v6;
          }

          goto LABEL_31;
        }

LABEL_63:
        *a5 = -1;
        goto LABEL_113;
      }

      v43 = v24[1];
      if (!v43)
      {
        v45 = -1;
        goto LABEL_112;
      }

      v44 = v24[2];
      if (v43 <= 0)
      {
        if (v17 >= 1)
        {
          v45 = 0;
          v48 = v17;
          v49 = v16;
          do
          {
            if (*(v49 + 1) == v44 && (byte_181A203EA[*v49] & 0x40) != 0)
            {
              v45 += *(v49 + 4);
            }

            v49 += 40;
            --v48;
          }

          while (v48);
          goto LABEL_80;
        }
      }

      else if (v44 >= v43)
      {
        v45 = 0;
        v46 = (v44 - v43);
        if (v44 == v43)
        {
          v47 = v24[1];
LABEL_78:
          v57 = v47 - 1;
          v58 = &v16[40 * v47 + 32];
          do
          {
            v59 = *v58;
            v58 += 40;
            v45 += v59;
            ++v57;
          }

          while (v44 > v57);
          goto LABEL_80;
        }

        v50 = 0;
        v51 = v46 + 1;
        v52 = (v46 + 1) & 0x1FFFFFFFELL;
        v47 = v52 + v43;
        v53 = &v16[40 * v43 + 72];
        v54 = v52;
        do
        {
          v55 = *(v53 - 5);
          v56 = *v53;
          v53 += 80;
          v45 += v55;
          v50 += v56;
          v54 -= 2;
        }

        while (v54);
        v45 += v50;
        if (v51 != v52)
        {
          goto LABEL_78;
        }

LABEL_80:
        v60 = v24[3];
        if (!v60)
        {
          goto LABEL_112;
        }

        v61 = v24[4];
        if (v60 <= 0)
        {
          if (v17 >= 1)
          {
            v64 = v16;
            v65 = v17;
            do
            {
              if (*(v64 + 1) == v61 && (byte_181A203EA[*v64] & 0x40) != 0)
              {
                v45 += *(v64 + 4);
              }

              v64 += 40;
              --v65;
            }

            while (v65);
          }

          goto LABEL_96;
        }

        if (v61 >= v60)
        {
          v62 = (v61 - v60);
          if (v61 == v60)
          {
            v63 = v24[3];
          }

          else
          {
            v66 = 0;
            v67 = v62 + 1;
            v68 = (v62 + 1) & 0x1FFFFFFFELL;
            v63 = v68 + v60;
            v69 = &v16[40 * v60 + 72];
            v70 = v68;
            do
            {
              v71 = *(v69 - 5);
              v72 = *v69;
              v69 += 80;
              v45 += v71;
              v66 += v72;
              v70 -= 2;
            }

            while (v70);
            v45 += v66;
            if (v67 == v68)
            {
              goto LABEL_96;
            }
          }

          v73 = v63 - 1;
          v74 = &v16[40 * v63 + 32];
          do
          {
            v75 = *v74;
            v74 += 40;
            v45 += v75;
            ++v73;
          }

          while (v61 > v73);
        }

LABEL_96:
        v76 = v24[5];
        if (v76)
        {
          v77 = v24[6];
          if (v76 <= 0)
          {
            if (v17 >= 1)
            {
              do
              {
                if (*(v16 + 1) == v77 && (byte_181A203EA[*v16] & 0x40) != 0)
                {
                  v45 += *(v16 + 4);
                }

                v16 += 40;
                --v17;
              }

              while (v17);
            }

            goto LABEL_112;
          }

          if (v77 >= v76)
          {
            v78 = (v77 - v76);
            if (v77 == v76)
            {
              v79 = v76;
            }

            else
            {
              v80 = 0;
              v81 = v78 + 1;
              v82 = (v78 + 1) & 0x1FFFFFFFELL;
              v79 = v82 + v76;
              v83 = &v16[40 * v76 + 72];
              v84 = v82;
              do
              {
                v85 = *(v83 - 5);
                v86 = *v83;
                v83 += 80;
                v45 += v85;
                v80 += v86;
                v84 -= 2;
              }

              while (v84);
              v45 += v80;
              if (v81 == v82)
              {
                goto LABEL_112;
              }
            }

            v87 = v79 - 1;
            v88 = &v16[40 * v79 + 32];
            do
            {
              v89 = *v88;
              v88 += 40;
              v45 += v89;
              ++v87;
            }

            while (v77 > v87);
          }
        }

LABEL_112:
        *a5 = v45;
        goto LABEL_113;
      }

      v45 = 0;
      goto LABEL_80;
    }

    if (a3 != 7)
    {
      goto LABEL_30;
    }

    if (v17 < 1)
    {
      v23 = 0;
    }

    else
    {
      if (v17 == 1)
      {
        v22 = 0;
        v23 = 0;
      }

      else
      {
        v29 = 0;
        v30 = 0;
        v22 = v17 & 0x7FFFFFFE;
        v31 = (v16 + 72);
        v32 = v22;
        do
        {
          v33 = *(v31 - 5);
          v34 = *v31;
          v31 += 10;
          v29 += v33;
          v30 += v34;
          v32 -= 2;
        }

        while (v32);
        v23 = v30 + v29;
        if (v22 == v17)
        {
          goto LABEL_43;
        }
      }

      v35 = &v16[40 * v22 + 32];
      v36 = v17 - v22;
      do
      {
        v37 = *v35;
        v35 += 40;
        v23 += v37;
        --v36;
      }

      while (v36);
    }

LABEL_43:
    v27 = 0;
    v6 = 0;
    *a5 = v23;
    goto LABEL_114;
  }

  return v6;
}

unint64_t sub_18190F8CC(int a1)
{
  if (a1 > 609)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v2 = ((26215 * a1) >> 18) + ((26215 * a1) >> 31);
  v3 = a1 % 10;
  v4 = v3 - 2;
  v5 = v3 - 1;
  if (!(a1 % 10))
  {
    v5 = 0;
  }

  if ((a1 % 10) <= 4u)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6 + 8;
  if (a1 < 30)
  {
    return v7 >> (3 - v2);
  }

  else
  {
    return v7 << (v2 - 3);
  }
}

void sqlite3_stmt_scanstatus_reset(sqlite3_stmt *a1)
{
  if (a1)
  {
    v3 = *(*a1 + 24);
    if (v3)
    {
      xmmword_1ED452F18(v3);
    }

    v4 = *(a1 + 36);
    if (v4 >= 1)
    {
      v5 = (*(a1 + 17) + 24);
      do
      {
        *v5 = 0;
        v5[1] = 0;
        v5 += 5;
        --v4;
      }

      while (v4);
    }

    if (*(*a1 + 24))
    {
      v6 = xmmword_1ED452F28;

      v6();
    }
  }

  else
  {

    sub_1819012D0(102408);
  }
}

uint64_t sqlite3_bind_blob_b(uint64_t *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  if ((a4 & 0x80000000) != 0)
  {
    if ((a5 + 1) >= 2)
    {
      (*(a5 + 16))(a5, a3);
    }

    return sub_1819012D0(102513);
  }

  else
  {

    return sub_18190FA44(a1, a2, a3, a4, a5, 0);
  }
}

uint64_t sub_18190FA44(uint64_t *a1, unsigned int a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 <= 0)
  {
    if (a1)
    {
      v13 = *a1;
      if (*a1)
      {
        *(v13 + 80) = 25;
        sub_181932D5C(v13, 25);
      }

      else
      {
        sqlite3_log(21, "API called with finalized prepared statement", a3, a4, a5, a6);
      }
    }

    else
    {
      sqlite3_log(21, "API called with NULL prepared statement", a3, a4, a5, a6);
    }

    result = 25;
    goto LABEL_12;
  }

  v9 = a4;
  result = sub_1818DF6EC(a1, a2 - 1);
  if (result)
  {
LABEL_12:
    if ((a5 + 1) < 2)
    {
      return result;
    }

    v14 = result;
    (*(a5 + 16))(a5, a3);
    return v14;
  }

  if (a5 == sub_181916CE4 || (a5 + 1) <= 1)
  {
    result = sub_1819012D0(102476);
    goto LABEL_12;
  }

  if (!a3)
  {
    (*(a5 + 16))(a5, 0);
    goto LABEL_21;
  }

  v15 = a1[16];
  v16 = _Block_copy(a5);
  if (!v16)
  {
    v20 = 7;
    goto LABEL_23;
  }

  v17 = v15 + (a2 << 6);
  LODWORD(result) = sub_1818900D0(v17 - 64, a3, v9, a6, v16);
  *(v17 - 8) = 1;
  if (result)
  {
LABEL_19:
    v20 = result;
LABEL_23:
    v21 = *a1;
    *(v21 + 80) = v20;
    sub_181932D5C(v21, v20);
    result = sub_18193C988(*a1, v20);
    goto LABEL_24;
  }

  v23 = *(*a1 + 100);
  if ((*(v17 - 44) & 2) == 0)
  {
    result = 0;
    *(v17 - 42) = v23;
    goto LABEL_24;
  }

  if (*(v17 - 42) == v23)
  {
LABEL_21:
    result = 0;
    goto LABEL_24;
  }

  result = sub_1818F1820((v17 - 64), v23, v18, v19);
  if (result)
  {
    goto LABEL_19;
  }

LABEL_24:
  v22 = *(*a1 + 24);
  if (v22)
  {
    v14 = result;
    xmmword_1ED452F28(v22);
    return v14;
  }

  return result;
}

int sqlite3_value_numeric_type(sqlite3_value *a1)
{
  if (a1)
  {
    v1 = *(a1 + 10);
    if ((0x4000000040004uLL >> v1))
    {
      sub_18190FC94(a1, 0);
      v1 = *(a1 + 10);
    }

    return byte_181A203AA[v1 & 0x3F];
  }

  else
  {
    sub_1819012D0(99877);
    return 0;
  }
}

uint64_t sub_18190FC94(uint64_t a1, int a2)
{
  v16 = 0.0;
  v4 = *(a1 + 22);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  result = sub_1818E6334(v5, &v16, v6, v4);
  if (result >= 1)
  {
    v8 = v16;
    if (result == 1)
    {
      v9 = 0x8000000000000000;
      v10 = 0x7FFFFFFFFFFFFFFFLL;
      if (v16 <= 9.22337204e18)
      {
        v10 = v16;
      }

      if (v16 >= -9.22337204e18)
      {
        v9 = v10;
      }

      if (v16 == 0.0 || (v9 - 0x8000000000000) >> 52 == 4095 && *&v16 == COERCE__INT64(v9))
      {
        *a1 = v9;
        v11 = *(a1 + 20);
        goto LABEL_23;
      }

      result = sub_18193D008(v5, a1, v6, v4);
      if (!result)
      {
        v11 = *(a1 + 20);
        goto LABEL_23;
      }
    }

    *a1 = v8;
    v12 = *(a1 + 20);
    v13 = v12 | 8;
    if (!a2)
    {
LABEL_24:
      *(a1 + 20) = v13 & 0xFFFD;
      return result;
    }

    if ((v12 & 0x20) == 0)
    {
      if (fabs(v8) > 9.22337204e18 || v8 != v8 || (v8 + 0x7FFFFFFFFFFFFFFFLL) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_24;
      }

      *a1 = v8;
    }

    v11 = v12 & 0xF240;
LABEL_23:
    v13 = v11 | 4;
    goto LABEL_24;
  }

  return result;
}

int sqlite3_blob_open(sqlite3 *a1, const char *zDb, const char *zTable, const char *zColumn, sqlite3_int64 iRow, int flags, sqlite3_blob **ppBlob)
{
  v124 = 0;
  if (!ppBlob)
  {
    v10 = 112221;
LABEL_125:

    return sub_1819012D0(v10);
  }

  *ppBlob = 0;
  if (!a1)
  {
    v9 = "NULL";
    goto LABEL_123;
  }

  v8 = *(a1 + 113);
  if (v8 == 186)
  {
LABEL_6:
    v9 = "unopened";
LABEL_123:
    sqlite3_log(21, "API call with %s database connection pointer", v9);
LABEL_124:
    v10 = 112227;
    goto LABEL_125;
  }

  if (v8 != 118)
  {
    if (v8 != 109)
    {
      v9 = "invalid";
      goto LABEL_123;
    }

    goto LABEL_6;
  }

  v11 = zTable;
  if (!zTable)
  {
    goto LABEL_124;
  }

  v12 = zColumn;
  if (!zColumn)
  {
    goto LABEL_124;
  }

  v86 = flags != 0;
  v14 = *(a1 + 3);
  if (v14)
  {
    xmmword_1ED452F18(v14);
  }

  v15 = sub_181929E8C(a1, 0x38uLL, 0x1030040E4B984A0);
  v19 = v15;
  if (v15)
  {
    v15[6] = 0;
    *(v15 + 1) = 0u;
    *(v15 + 2) = 0u;
    *v15 = 0u;
  }

  v20 = 0;
  v21 = 0;
  v92 = v12 + 1;
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v88 = v12;
  v89 = v11;
  v90 = v15;
  v87 = iRow;
  while (2)
  {
    v108 = 0u;
    v107 = 0u;
    v106 = 0u;
    v105 = 0u;
    v104 = 0u;
    v103 = 0u;
    v102 = 0u;
    v101 = 0u;
    v100 = 0u;
    v99 = 0u;
    v98 = 0u;
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v123 = 0;
    v22 = *(a1 + 43);
    *(a1 + 43) = &v97;
    *&v111 = v22;
    v97 = a1;
    if (*(a1 + 103))
    {
      sub_181910730(&v97, "out of memory");
    }

    if (!v19)
    {
      goto LABEL_130;
    }

    if (v124)
    {
      sub_181929C84(a1, v124);
    }

    v96 = v20;
    v124 = 0;
    if (!*(a1 + 111))
    {
      sub_181932C40(a1);
    }

    v23 = sub_1818CA520(&v97, 0, v11, zDb);
    if (!v23)
    {
      goto LABEL_136;
    }

    v25 = v23;
    v26 = *(v23 + 63);
    if (v26 == 1)
    {
      sub_181910730(&v97, "cannot open virtual table: %s");
      goto LABEL_136;
    }

    v27 = *(v23 + 48);
    if ((v27 & 0x80) != 0)
    {
      sub_181910730(&v97, "cannot open table without rowid: %s");
      goto LABEL_136;
    }

    if ((v27 & 0x60) != 0)
    {
      sub_181910730(&v97, "cannot open table with generated columns: %s");
      goto LABEL_136;
    }

    if (v26 == 2)
    {
      sub_181910730(&v97, "cannot open view: %s");
      goto LABEL_136;
    }

    v28 = *(v23 + 96);
    v29 = *(a1 + 4);
    if (!v28)
    {
      v94 = 0;
      v30 = -32768;
      goto LABEL_35;
    }

    v30 = -1;
    v31 = 24;
    v32 = flags;
    do
    {
      v33 = *(v29 + v31);
      v31 += 32;
      ++v30;
    }

    while (v33 != v28);
    if (v31 != 88)
    {
      v94 = 0;
      goto LABEL_37;
    }

    if (sub_1819108F4(&v97))
    {
LABEL_136:
      if (v98)
      {
        v124 = v98;
        *&v98 = 0;
      }

      goto LABEL_141;
    }

    v29 = *(a1 + 4);
    v94 = 1;
    v30 = 1;
LABEL_35:
    v32 = flags;
LABEL_37:
    *(v19 + 40) = *(v29 + 32 * v30);
    *(v19 + 48) = v25;
    v34 = *v12;
    if (*v12)
    {
      v35 = 0;
      v36 = v92;
      v37 = *v12;
      do
      {
        v35 += byte_181A20298[v37];
        v38 = *v36++;
        v37 = v38;
      }

      while (v38);
    }

    else
    {
      v35 = 0;
    }

    v39 = *(v25 + 8);
    v40 = *(v25 + 54);
    v41 = *(v25 + (v35 & 0xF) + 104);
    v42 = (v39 + 16 * v41);
    if (*(v42 + 11) != v35)
    {
LABEL_50:
      v41 = 0;
      if (v40 <= 1)
      {
        v46 = 1;
      }

      else
      {
        v46 = v40;
      }

      do
      {
        v47 = v39 + 16 * v41;
        if (*(v47 + 11) == v35)
        {
          v48 = *v47;
          for (i = v12; ; ++i)
          {
            if (*v48 == *i)
            {
              if (!*v48)
              {
                if (v32)
                {
                  goto LABEL_61;
                }

                goto LABEL_74;
              }
            }

            else if (byte_181A20298[*v48] != byte_181A20298[*i])
            {
              break;
            }

            ++v48;
          }
        }

        ++v41;
      }

      while (v41 != v46);
      v80 = sub_1818A8BAC(a1, "no such column: %s");
      goto LABEL_140;
    }

    v43 = *v42;
    v44 = v92;
    while (*v43 != v34)
    {
      if (byte_181A20298[*v43] != byte_181A20298[v34])
      {
        goto LABEL_50;
      }

LABEL_45:
      ++v43;
      v45 = *v44++;
      v34 = v45;
    }

    if (v34)
    {
      goto LABEL_45;
    }

    if (!v32)
    {
      goto LABEL_74;
    }

LABEL_61:
    if ((*(a1 + 49) & 0x40) != 0 && (v50 = *(v25 + 72)) != 0)
    {
      v51 = 0;
      do
      {
        v52 = *(v50 + 40);
        if (v52 >= 1)
        {
          v53 = (v50 + 64);
          do
          {
            v54 = *v53;
            v53 += 4;
            if (v54 == v41)
            {
              v51 = "foreign key";
            }

            --v52;
          }

          while (v52);
        }

        v50 = *(v50 + 8);
      }

      while (v50);
    }

    else
    {
      v51 = 0;
    }

    for (j = *(v25 + 16); j; j = *(j + 40))
    {
      v57 = *(j + 94);
      if (*(j + 94))
      {
        v58 = *(j + 8);
        do
        {
          v60 = *v58++;
          v59 = v60;
          if (v41 == v60 || v59 == -2)
          {
            v51 = "indexed";
          }

          --v57;
        }

        while (v57);
      }
    }

    if (v51)
    {
      v80 = sub_1818A8BAC(a1, "cannot open %s column for writing");
LABEL_140:
      v124 = v80;
LABEL_141:
      if (!*(a1 + 111))
      {
        sub_181932CD8(a1);
      }

      v21 = 1;
LABEL_144:
      if (!v19)
      {
        goto LABEL_150;
      }

LABEL_145:
      v81 = *(v19 + 24);
      if (v81)
      {
        if (*(v81 + 267))
        {
          sub_1818A32FC(*(v19 + 24), v16, v17, v18);
        }

        sub_181901AB4(v81, v16, v17, v18);
      }

      sub_181929C84(a1, v19);
      goto LABEL_150;
    }

LABEL_74:
    v56 = v97;
    if (*(v97 + 218) > 0x197u)
    {
      v62 = *(v97 + 59);
      if (v62)
      {
        v63 = v97 + 472;
      }

      else
      {
        v62 = *(v97 + 58);
        if (!v62)
        {
          ++*(v97 + 114);
          goto LABEL_95;
        }

        v63 = v97 + 464;
      }

      *v63 = *v62;
      ++*(v56 + 112);
LABEL_96:
      v91 = v21;
      *(v62 + 17) = 0u;
      *(v62 + 31) = 0u;
      *(v62 + 29) = 0u;
      *(v62 + 27) = 0u;
      *(v62 + 25) = 0u;
      *(v62 + 23) = 0u;
      *(v62 + 21) = 0u;
      *(v62 + 19) = 0u;
      *(v62 + 47) = 0u;
      *(v62 + 49) = 0u;
      *(v62 + 43) = 0u;
      *(v62 + 45) = 0u;
      *(v62 + 39) = 0u;
      *(v62 + 41) = 0u;
      *(v62 + 35) = 0u;
      *(v62 + 37) = 0u;
      *(v62 + 33) = 0u;
      *v62 = v56;
      v66 = *(v56 + 1);
      v65 = (v56 + 8);
      v64 = v66;
      if (v66)
      {
        *(v64 + 8) = v62 + 2;
      }

      v62[1] = v65;
      v62[2] = v64;
      *v65 = v62;
      v62[3] = &v97;
      *(&v98 + 1) = v62;
      v67 = *(v62 + 36);
      if (*(v62 + 37) <= v67)
      {
        sub_18194C8AC(v62, 8, 0, 1, 0);
      }

      else
      {
        *(v62 + 36) = v67 + 1;
        v68 = v62[17] + 40 * v67;
        *v68 = 8;
        *(v68 + 4) = 0x100000000;
        *(v68 + 12) = 0;
        *(v68 + 28) = 0;
        *(v68 + 20) = 0;
        *(v68 + 36) = 0;
      }

      v19 = v90;
      v90[3] = v62;
      v69 = *(v25 + 96);
      v70 = *v69;
      v71 = v69[1];
      v72 = *(v62 + 36);
      if (*(v62 + 37) <= v72)
      {
        sub_18194CAFC(v62, 2, v30, v86, v70, v71);
      }

      else
      {
        *(v62 + 36) = v72 + 1;
        v73 = v62[17] + 40 * v72;
        *v73 = 64770;
        *(v73 + 4) = v30;
        *(v73 + 8) = v86;
        *(v73 + 12) = v70;
        *(v73 + 16) = v71;
        *(v73 + 24) = 0;
        *(v73 + 32) = 0;
      }

      v74 = *(v62 + 36);
      if (v74 >= 1)
      {
        *(v62[17] + 40 * v74 - 38) = 1;
      }

      v75 = sub_1818DE534(v62, 6, byte_181A204A8);
      *(v62 + 68) |= 1 << v30;
      if ((v94 & 1) == 0 && *(*(*(*v62 + 32) + 32 * v30 + 8) + 17))
      {
        *(v62 + 69) |= 1 << v30;
      }

      v21 = v21;
      if (!*(a1 + 103))
      {
        v76 = *(v25 + 40);
        *(v75 + 1) = v30;
        *(v75 + 2) = v76;
        *(v75 + 3) = v86;
        if (*(*v62 + 103) || (v77 = v75, sub_18194CB90(v62, v62[17] + 80, *v25, 0), v75 = v77, v21 = v91, !*(a1 + 103)))
        {
          if (flags)
          {
            *(v75 + 40) = 113;
          }

          *(v75 + 12) = *(v25 + 40);
          *(v75 + 13) = v30;
          *(v75 + 41) = -3;
          *(v75 + 14) = *(v25 + 54) + 1;
          *(v75 + 32) = *(v25 + 54);
          LODWORD(v116) = 0;
          *&v101 = 0x100000001;
          *v24.i64 = sub_1818A29B4(v62, &v97);
        }
      }
    }

    else
    {
      if (!*(v97 + 108))
      {
        ++*(v97 + 113);
        goto LABEL_95;
      }

      if (!*(v97 + 103))
      {
LABEL_95:
        v62 = sub_18192A080(v56, 408, 0x10B004000C32FD6);
        if (v62)
        {
          goto LABEL_96;
        }
      }

      v19 = v90;
      v90[3] = 0;
    }

    *(v19 + 8) = v41;
    *(v19 + 32) = a1;
    if (!*(a1 + 111))
    {
      sub_181932CD8(a1);
    }

    v12 = v88;
    v11 = v89;
    if (!*(a1 + 103))
    {
      v78 = sub_181910AB0(v19, v87, &v124, v18, v24);
      v21 = v78;
      if (v96 <= 0x30 && v78 == 17)
      {
        v20 = v96 + 1;
        sub_181910CA0(&v97);
        continue;
      }
    }

    break;
  }

  if (v21)
  {
    goto LABEL_145;
  }

LABEL_130:
  if (*(a1 + 103))
  {
    v21 = 0;
    goto LABEL_144;
  }

  v21 = 0;
  *ppBlob = v19;
LABEL_150:
  v82 = v124;
  if (v124)
  {
    sub_181907EC4(a1, v21, "%s");
  }

  else
  {
    sub_181907EC4(a1, v21, 0, 0);
  }

  if (v82)
  {
    sub_181929C84(a1, v82);
  }

  sub_181910CA0(&v97);
  if (v21 || *(a1 + 103))
  {
    v83 = sub_18193C988(a1, v21);
  }

  else
  {
    v83 = 0;
  }

  v84 = *(a1 + 3);
  if (v84)
  {
    xmmword_1ED452F28(v84);
  }

  return v83;
}

void sub_181910730(uint64_t *a1, const char *a2, ...)
{
  va_start(va, a2);
  v15 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  *(v3 + 84) = -2;
  v9 = v3;
  v13 = 0;
  v4 = *(v3 + 136);
  v10 = &v14;
  v11 = 512;
  v12 = v4;
  WORD2(v13) = 256;
  sqlite3_str_vappendf(&v9, a2, va);
  if (v10 && (v10[v13] = 0, v12) && (v13 & 0x40000000000) == 0)
  {
    v5 = sub_18192A12C(&v9);
  }

  else
  {
    v5 = v10;
  }

  if (BYTE4(v13) == 7 && !*(v3 + 103) && !*(v3 + 104))
  {
    *(v3 + 103) = 1;
    if (*(v3 + 220) >= 1)
    {
      *(v3 + 424) = 1;
    }

    ++*(v3 + 432);
    *(v3 + 436) = 0;
    v7 = *(v3 + 344);
    if (v7)
    {
      sub_181910730(v7, "out of memory", va);
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

  if (*(v3 + 84) <= -2)
  {
    *(v3 + 84) = -1;
  }

  if (*(v3 + 107))
  {
    if (v5)
    {
      sub_181929C84(v3, v5);
    }

    if (*(v3 + 103))
    {
      ++*(a1 + 13);
      *(a1 + 6) = 7;
    }
  }

  else
  {
    ++*(a1 + 13);
    v6 = a1[1];
    if (v6)
    {
      sub_181929C84(v3, v6);
    }

    a1[1] = v5;
    *(a1 + 6) = 1;
    a1[50] = 0;
  }
}

uint64_t sub_1819108F4(uint64_t *a1)
{
  v1 = *a1;
  if (*(*(*a1 + 32) + 40) || *(a1 + 301))
  {
    return 0;
  }

  v9 = 0;
  v4 = sub_18189049C(*v1, 0, v1, &v9, 0, 0x21Eu);
  if (v4)
  {
    v5 = v4;
    sub_181910730(a1, "unable to open a temporary database file for storing temporary tables");
    *(a1 + 6) = v5;
    return 1;
  }

  v6 = v9;
  *(*(v1 + 32) + 40) = v9;
  if (sub_1818F7260(v6, *(v1 + 116), 0, 0) == 7)
  {
    if (!*(v1 + 103) && !*(v1 + 104))
    {
      *(v1 + 103) = 1;
      if (*(v1 + 220) >= 1)
      {
        *(v1 + 424) = 1;
      }

      ++*(v1 + 432);
      *(v1 + 436) = 0;
      v7 = *(v1 + 344);
      if (v7)
      {
        sub_181910730(v7, "out of memory");
        for (i = *(v1 + 344); ; ++*(i + 52))
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

    return 1;
  }

  return 0;
}

uint64_t sub_181910A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = *(a1 + 144);
  if (*(a1 + 148) <= result)
  {
    return sub_18194CAFC(a1, a2, a3, a4, a5, a6);
  }

  *(a1 + 144) = result + 1;
  v8 = *(a1 + 136) + 40 * result;
  *v8 = a2;
  *(v8 + 2) = 0;
  *(v8 + 4) = a3;
  *(v8 + 8) = a4;
  *(v8 + 12) = a5;
  *(v8 + 16) = a6;
  *(v8 + 1) = -3;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  return result;
}

_DWORD *sub_181910A68(_DWORD *result, int a2)
{
  result[68] |= 1 << a2;
  if (a2 != 1)
  {
    if (*(*(*(*result + 32) + 32 * a2 + 8) + 17))
    {
      result[69] |= 1 << a2;
    }
  }

  return result;
}

uint64_t sub_181910AB0(uint64_t a1, uint64_t a2, void *a3, char *a4, int64x2_t a5)
{
  v8 = *(a1 + 24);
  v9 = *(v8 + 104);
  if ((*(v9 + 84) & 0x9000) != 0)
  {
    sub_18193D288(v9 + 64, a2);
  }

  else
  {
    *(v9 + 64) = a2;
    *(v9 + 84) = 4;
  }

  if (*(v8 + 48) < 5)
  {
    result = sqlite3_step(*(a1 + 24));
    if (result != 100)
    {
LABEL_6:
      if (*(a1 + 24))
      {
        v11 = sqlite3_finalize(*(a1 + 24));
        *(a1 + 24) = 0;
        v12 = *(a1 + 32);
        if (v11)
        {
          v13 = v11;
          v14 = sqlite3_errmsg(v12);
          v15 = sub_1818A8BAC(v12, "%s", v14);
          result = v13;
        }

        else
        {
          v15 = sub_1818A8BAC(v12, "no such rowid: %lld", a2);
          result = 1;
        }
      }

      else
      {
        v15 = 0;
      }

      goto LABEL_25;
    }
  }

  else
  {
    *(v8 + 48) = 4;
    result = sub_1818BC384(v8, a2, a3, a4, a5);
    if (result != 100)
    {
      goto LABEL_6;
    }
  }

  v16 = **(v8 + 120);
  v17 = *(a1 + 8);
  if (*(v16 + 66) <= v17)
  {
    v19 = *(a1 + 32);
LABEL_17:
    v20 = "null";
LABEL_18:
    v15 = sub_1818A8BAC(v19, "cannot open value of type %s", v20);
    sqlite3_finalize(*(a1 + 24));
    *(a1 + 24) = 0;
    result = 1;
    goto LABEL_25;
  }

  v18 = *(v16 + 112 + 4 * v17);
  if (v18 <= 0xB)
  {
    v19 = *(a1 + 32);
    v20 = "integer";
    if (v18 == 7)
    {
      v20 = "real";
    }

    if (v18)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  *(a1 + 4) = *(v16 + 112 + 4 * (*(v16 + 64) + v17));
  if (v18 < 0x80)
  {
    v21 = byte_181A20DA4[v18];
  }

  else
  {
    v21 = (v18 - 12) >> 1;
  }

  v15 = 0;
  result = 0;
  *a1 = v21;
  v22 = *(v16 + 40);
  *(a1 + 16) = v22;
  *(v22 + 1) |= 0x10u;
  *(*(v22 + 8) + 19) = 1;
LABEL_25:
  *a3 = v15;
  return result;
}

void *sub_181910CA0(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[17];
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = *result;
  while (1)
  {
    result = sub_181939EC8(v4, v3);
LABEL_5:
    v6 = v1[22];
    if (!v6)
    {
      break;
    }

    v5 = *(v6 + 8);
    v1[22] = *v6;
    (*(v6 + 16))(v2, v5);
    v4 = v2;
    v3 = v6;
  }

  v7 = v1[10];
  if (v7)
  {
    result = sub_181939EC8(v2, v7);
  }

  v8 = v1[11];
  if (v8)
  {
    result = sub_18194E5B8(v2, v8);
  }

  v9 = *(v2 + 432) - *(v1 + 35);
  *(v2 + 432) = v9;
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(v2 + 438);
  }

  *(v2 + 436) = v10;
  *(v2 + 344) = v1[27];
  return result;
}

int sqlite3_blob_close(sqlite3_blob *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = *(a1 + 3);
    v3 = *(a1 + 4);
    v4 = v3[3];
    if (v4)
    {
      xmmword_1ED452F18(v4);
    }

    sub_181929C84(v3, v1);
    v5 = v3[3];
    if (v5)
    {
      xmmword_1ED452F28(v5);
    }

    LODWORD(a1) = sqlite3_finalize(v2);
  }

  return a1;
}

uint64_t sub_181910DE0(int *a1, char *a2, uint64_t a3, unsigned int a4, uint64_t (*a5)(unsigned __int8 *a1, unsigned int a2, signed int a3, char *a4))
{
  if (a1)
  {
    v11 = *(a1 + 4);
    v12 = *(v11 + 24);
    if (v12)
    {
      xmmword_1ED452F18(v12);
    }

    v13 = 1;
    if (((a4 | a3) & 0x80000000) == 0 && a2 && (a4 + a3) <= *a1)
    {
      v14 = *(a1 + 3);
      if (v14)
      {
        v15 = *(*(a1 + 2) + 8);
        if (*(v15 + 17))
        {
          ++*(v15 + 20);
          if (!*(v15 + 18))
          {
            sub_181932DEC(v15);
          }
        }

        if (a5 == sub_18191100C && *(v11 + 360))
        {
          v16 = *(a1 + 2);
          sub_181938B20(v16);
          sub_18193FE00(v14, **(v14 + 120), 9, *(a1 + 5), *(a1 + 6), *(v16 + 48), -1, *(a1 + 4));
        }

        v13 = a5(*(a1 + 2), a1[1] + a4, a3, a2);
        v20 = *(*(a1 + 2) + 8);
        if (*(v20 + 17))
        {
          v21 = *(v20 + 20) - 1;
          *(v20 + 20) = v21;
          if (!v21)
          {
            sub_181932ECC(v20);
          }
        }

        if (v13 != 4)
        {
          *(v14 + 52) = v13;
          *(v11 + 80) = v13;
          if (!v13)
          {
            if (!*(v11 + 416))
            {
              v13 = 0;
              *(v11 + 84) = -1;
LABEL_24:
              if (!*(v11 + 103))
              {
                v22 = 0;
                v23 = *(v11 + 24);
                if (!v23)
                {
                  return v22;
                }

                goto LABEL_35;
              }

LABEL_34:
              v22 = sub_18193C988(v11, v13);
              v23 = *(v11 + 24);
              if (!v23)
              {
                return v22;
              }

LABEL_35:
              xmmword_1ED452F28(v23);
              return v22;
            }

            v13 = 0;
          }

LABEL_23:
          sub_181932D5C(v11, v13);
          if (v13)
          {
            goto LABEL_34;
          }

          goto LABEL_24;
        }

        if (*(v14 + 267))
        {
          sub_1818A32FC(v14, v17, v18, v19);
        }

        sub_181901AB4(v14, v17, v18, v19);
        *(a1 + 3) = 0;
      }

      v13 = 4;
    }

    *(v11 + 80) = v13;
    goto LABEL_23;
  }

  return sub_1819012D0(112473);
}

uint64_t sub_181910FE4(unsigned __int8 *a1, unsigned int a2, signed int a3, char *a4)
{
  if (*a1)
  {
    return sub_18194CE8C(a1, a2, a3, a4);
  }

  else
  {
    return sub_1818EEE54(a1, a2, a3, a4, 0);
  }
}

uint64_t sub_18191100C(unsigned __int8 *a1, unsigned int a2, signed int a3, char *a4)
{
  v5 = *a1;
  if (v5 < 3)
  {
    goto LABEL_23;
  }

  v19 = 0;
  if (v5 == 4)
  {
    v6 = *(a1 + 1);
    if (v6)
    {
      return v6;
    }

    else
    {
      return 4;
    }
  }

  v8 = a2;
  v9 = a3;
  v10 = a4;
  *a1 = 1;
  if (off_1ED453038 && off_1ED453038(410))
  {
    return 10;
  }

  result = sub_1818DC828(a1, *(a1 + 3), *(a1 + 9), 0, &v19);
  if (!result)
  {
    v11 = *(a1 + 3);
    if (v11)
    {
      v12 = &off_1ED452EB0;
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
          goto LABEL_17;
        }

        v12 = &xmmword_1ED452F28;
      }

      (*v12)(v11);
    }

LABEL_17:
    *(a1 + 3) = 0;
    if (v19)
    {
      *(a1 + 1) = v19;
      a4 = v10;
      a3 = v9;
      a2 = v8;
    }

    else
    {
      a4 = v10;
      a3 = v9;
      a2 = v8;
      if (!*(a1 + 1))
      {
        v5 = *a1;
        goto LABEL_23;
      }
    }

    v5 = *a1;
    if (!*a1)
    {
      v5 = 2;
      *a1 = 2;
    }

LABEL_23:
    if (v5)
    {
      return 4;
    }

    v13 = *(*(a1 + 4) + 16);
    if (v13)
    {
      v14 = *(a1 + 20);
      while (v13 == a1 || v14 && *(v13 + 80) != v14)
      {
        v13 = *(v13 + 40);
        if (!v13)
        {
          goto LABEL_35;
        }
      }

      v15 = a2;
      v16 = a3;
      v17 = a4;
      sub_18193880C(v13, *(a1 + 20), a1);
      a2 = v15;
      a3 = v16;
      a4 = v17;
      if (a1[1])
      {
        goto LABEL_32;
      }
    }

    else
    {
LABEL_35:
      v18 = a1[1] & 0xDF;
      a1[1] = v18;
      if (v18)
      {
LABEL_32:

        return sub_1818EEE54(a1, a2, a3, a4, 1);
      }
    }

    return 8;
  }

  return result;
}

int sqlite3_blob_bytes(sqlite3_blob *a1)
{
  if (a1)
  {
    if (*(a1 + 3))
    {
      LODWORD(a1) = *a1;
    }

    else
    {
      LODWORD(a1) = 0;
    }
  }

  return a1;
}

int sqlite3_blob_reopen(sqlite3_blob *a1, sqlite3_int64 a2)
{
  if (a1)
  {
    v5 = *(a1 + 4);
    if (*(v5 + 24))
    {
      v6 = a1;
      v7 = a2;
      *v4.i64 = xmmword_1ED452F18(*(v5 + 24));
      a1 = v6;
      a2 = v7;
    }

    v8 = *(a1 + 3);
    if (v8)
    {
      v15 = 0;
      *(v8 + 52) = 0;
      v9 = sub_181910AB0(a1, a2, &v15, v2, v4);
      v10 = v9;
      if (v9)
      {
        v11 = v15;
        if (v15)
        {
          sub_181907EC4(v5, v9, "%s");
        }

        else
        {
          sub_181907EC4(v5, v9, 0, 0);
        }

        if (v11)
        {
          sub_181929C84(v5, v11);
        }
      }

      else if (!*(v5 + 103))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v10 = 4;
    }

    LODWORD(v9) = sub_18193C988(v5, v10);
LABEL_17:
    v12 = *(v5 + 24);
    if (v12)
    {
      v13 = v9;
      xmmword_1ED452F28(v12);
      LODWORD(v9) = v13;
    }

    return v9;
  }

  LODWORD(v9) = sub_1819012D0(112573);
  return v9;
}

int sqlite3_strglob(const char *zGlob, const char *zStr)
{
  if (!zStr)
  {
    return zGlob != 0;
  }

  if (zGlob)
  {
    return sub_1818EDFDC(zGlob, zStr, byte_181A204C0, 91);
  }

  return 1;
}

int sqlite3_strlike(const char *zGlob, const char *zStr, unsigned int cEsc)
{
  if (!zStr)
  {
    return zGlob != 0;
  }

  if (zGlob)
  {
    return sub_1818EDFDC(zGlob, zStr, byte_181A204C4, cEsc);
  }

  return 1;
}

const char *__cdecl sqlite3_errmsg(sqlite3 *a1)
{
  if (!a1)
  {
    return "out of memory";
  }

  v3 = *(a1 + 113);
  if (v3 != 109 && v3 != 118 && v3 != 186)
  {
    sqlite3_log(21, "API call with %s database connection pointer", "invalid");
    return "bad parameter or other API misuse";
  }

  if (*(a1 + 3))
  {
    v4 = a1;
    xmmword_1ED452F18(*(a1 + 3));
    a1 = v4;
  }

  if (*(a1 + 103))
  {
    v5 = "out of memory";
    goto LABEL_9;
  }

  v7 = *(a1 + 20);
  if (!v7)
  {
    v11 = 0;
LABEL_20:
    if (((0x1410004uLL >> v11) & 1) == 0)
    {
      v5 = off_1E6A27DD8[v11];
      goto LABEL_9;
    }

    goto LABEL_33;
  }

  v8 = *(a1 + 52);
  if (v8)
  {
    v9 = *(v8 + 20);
    if ((~v9 & 0x202) != 0 || *(v8 + 22) != 1)
    {
      if (v9)
      {
        goto LABEL_26;
      }

      v12 = a1;
      v5 = sub_18193CB70(*(a1 + 52), 1, v1, v2);
      a1 = v12;
    }

    else
    {
      v5 = *(v8 + 8);
    }

    if (v5)
    {
      goto LABEL_9;
    }

    v7 = *(a1 + 20);
  }

LABEL_26:
  switch(v7)
  {
    case 516:
      v5 = "abort due to ROLLBACK";
      goto LABEL_9;
    case 101:
      v5 = "no more rows available";
      goto LABEL_9;
    case 100:
      v5 = "another row available";
      goto LABEL_9;
  }

  v11 = v7;
  if (v7 <= 0x1Cu)
  {
    goto LABEL_20;
  }

LABEL_33:
  v5 = "unknown error";
LABEL_9:
  v6 = *(a1 + 3);
  if (v6)
  {
    xmmword_1ED452F28(v6);
  }

  return v5;
}