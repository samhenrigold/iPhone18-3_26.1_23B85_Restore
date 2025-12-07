uint64_t sub_181974208(uint64_t **a1, uint64_t a2)
{
  v2 = a1;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v88 = 0u;
  v86 = -1;
  v4 = a1[1];
  v3 = a1[2];
  v5 = *a1;
  v6 = (*a1)[1] + 72 * *(v3 + 16);
  v7 = *(v6 + 24);
  v8 = *(v6 + 33);
  if ((v8 & 2) != 0)
  {
    v9 = *(v6 + 56);
  }

  else if ((*(v7 + 48) & 0x80) != 0)
  {
    v9 = *(v7 + 16);
  }

  else
  {
    v93 = 0uLL;
    v94 = 0uLL;
    *&v88 = 0;
    v91 = 0uLL;
    v92 = 0uLL;
    v90 = 0uLL;
    LOWORD(v94) = 1;
    *(&v88 + 1) = &v86;
    *&v89 = v87;
    BYTE2(v94) = 5;
    *(&v89 + 1) = v7;
    HIDWORD(v93) = 65539;
    *(&v94 + 3) = 3;
    v87[0] = *(v7 + 58);
    v87[1] = 0;
    if ((v8 & 1) == 0)
    {
      *(&v90 + 1) = *(v7 + 16);
    }

    v9 = &v88;
  }

  v79 = v6;
  v75 = v4;
  v81 = v7;
  if (a1[3] || (*(v5 + 30) & 0x1020) != 0)
  {
    goto LABEL_10;
  }

  result = 0;
  if ((*(**v5 + 49) & 0x80) != 0 && (v8 & 0x93) == 0)
  {
    if ((*(v6 + 32) & 0x10) != 0)
    {
LABEL_10:
      result = 0;
      goto LABEL_11;
    }

    v54 = v4;
    v55 = *(v7 + 58);
    v56 = *(v54 + 32);
    v57 = *(v54 + 20);
    if (v55 >= 11)
    {
      v58 = sub_181919E10(*(v7 + 58)) - 33;
    }

    else
    {
      LOWORD(v58) = 0;
    }

    if (v57 < 1)
    {
      result = 0;
      v4 = v75;
    }

    else
    {
      v59 = v56 + 56 * v57;
      v78 = v58 + v55 + 28;
      v84 = v58 + v55 - 25;
      if (v58 >= 93)
      {
        v60 = v58;
      }

      else
      {
        v60 = v58 + 1;
      }

      v73 = v60;
      v61 = v58 < -6;
      if (v58 < -6)
      {
        v62 = 43;
      }

      else
      {
        v62 = 44;
      }

      if ((v58 + 31) < 0x2B)
      {
        v61 = 1;
      }

      v69 = v61;
      v71 = v62;
      v4 = v75;
      do
      {
        if ((*(v3 + 8) & *(v56 + 40)) == 0 && (v63 = *(v56 + 28), v63 == *(v79 + 36)) && (*(v56 + 20) & 0x82) != 0 && ((*(v79 + 32) & 0x58) == 0 || (v64 = *(*v56 + 4), (v64 & 3) != 0) && *(*v56 + 56) == v63 && ((*(v79 + 32) & 0x18) == 0 || (v64 & 2) == 0)))
        {
          v65 = *(v56 + 32);
          if ((v65 & 0x80000000) != 0)
          {
            result = 0;
            v4 = v75;
          }

          else
          {
            v66 = *(v79 + 24);
            result = sub_181973454(*v56, *(*(v66 + 8) + 16 * v65 + 9));
            if (result && (result = sub_1819777E0(v66, v65), result))
            {
              *(v3 + 24) = 1;
              *(v3 + 32) = 0;
              *(v3 + 52) = 1;
              **(v3 + 64) = v56;
              v4 = v75;
              if (*(v81 + 63) == 2 || (v67 = v78, (*(v81 + 49) & 0x40) != 0))
              {
                v67 = v84;
              }

              *(v3 + 18) = v67 & ~(v67 >> 15);
              *(v3 + 22) = 43;
              if (v58 >= 43)
              {
                v68 = v73;
                if (v58 <= 74)
                {
                  v68 = v58 + byte_181A245A6[v58 - 43];
                }
              }

              else
              {
                v68 = v71;
                if (!v69)
                {
                  v68 = byte_181A245A6[43 - v58] + 43;
                }
              }

              *(v3 + 20) = v68;
              *(v3 + 48) = 0x4000;
              *v3 = *(v56 + 40) | a2;
              result = sub_181975CE8(v2, v3);
            }

            else
            {
              v4 = v75;
            }
          }
        }

        else
        {
          result = 0;
        }

        if (result)
        {
          break;
        }

        v56 += 56;
      }

      while (v56 < v59);
    }
  }

LABEL_11:
  if (!result)
  {
    v11 = v79;
    if (v9)
    {
      v12 = 1;
      v74 = v2;
      while (1)
      {
        v13 = *(v9 + 9);
        if (!v13 || (result = sub_181976498(*(v11 + 36), *(v11 + 32), v4, v13), result))
        {
          if ((*(v9 + 99) & 0x100) == 0)
          {
            v14 = **(v9 + 2);
            *(v3 + 24) = 0;
            *(v3 + 28) = 0;
            *(v3 + 52) = 0;
            *(v3 + 17) = 0;
            *(v3 + 18) = 0;
            *v3 = a2;
            *(v3 + 22) = v14;
            *(v3 + 32) = v9;
            *(v3 + 40) = 0;
            if ((*(v9 + 99) & 4) != 0 || (v15 = (*v2)[2]) == 0 || (v16 = *v15, *v15 < 1))
            {
              v19 = 1;
              goto LABEL_23;
            }

            v17 = 0;
            v18 = *(v11 + 36);
            v70 = (*v2)[2];
            v82 = v15 + 2;
            do
            {
              v40 = *&v82[6 * v17];
              if (v40)
              {
                while (1)
                {
                  v41 = *(v40 + 1);
                  if ((v41 & 0x82000) == 0)
                  {
                    break;
                  }

                  if ((v41 & 0x80000) != 0)
                  {
                    v40 = *(*(v40 + 4) + 8);
                    if (!v40)
                    {
                      goto LABEL_71;
                    }
                  }

                  else
                  {
                    v42 = *v40;
                    if (v42 != 114)
                    {
                      goto LABEL_81;
                    }

                    v40 = *(v40 + 2);
                    if (!v40)
                    {
                      goto LABEL_71;
                    }
                  }
                }

                v42 = *v40;
LABEL_81:
                if ((v42 | 2) == 0xAA && *(v40 + 11) == v18)
                {
                  v43 = *(v40 + 12);
                  if (v43 < 0)
                  {
                    goto LABEL_102;
                  }

                  v44 = *(v9 + 47);
                  if (*(v9 + 47))
                  {
                    v45 = *(v9 + 1);
                    while (1)
                    {
                      v46 = *v45++;
                      if (v43 == v46)
                      {
                        break;
                      }

                      if (!--v44)
                      {
                        goto LABEL_71;
                      }
                    }

LABEL_102:
                    v19 = 0;
                    goto LABEL_118;
                  }
                }

                else
                {
                  v47 = *(v9 + 10);
                  if (v47)
                  {
                    v48 = *(v9 + 47);
                    if (v48)
                    {
                      v77 = v14;
                      v72 = v5;
                      v49 = v2;
                      v50 = 0;
                      v51 = v47 + 8;
                      while (1)
                      {
                        if (*(*(v9 + 1) + 2 * v50) == -2)
                        {
                          v52 = *(v51 + 24 * v50);
                          v53 = v40;
                          do
                          {
                            if ((v53[5] & 0x20) == 0)
                            {
                              break;
                            }

                            v53 = *(v53 + 2);
                          }

                          while (v53);
                          for (; v52; v52 = *(v52 + 16))
                          {
                            if ((*(v52 + 5) & 0x20) == 0)
                            {
                              break;
                            }
                          }

                          if (!sub_181959260(0, v53, v52, v18))
                          {
                            v19 = 0;
                            v2 = v49;
                            v5 = v72;
                            v4 = v75;
                            v11 = v79;
                            v14 = v77;
                            goto LABEL_23;
                          }

                          v48 = *(v9 + 47);
                        }

                        if (++v50 >= v48)
                        {
                          v16 = *v70;
                          v2 = v49;
                          v5 = v72;
                          v11 = v79;
                          v14 = v77;
                          break;
                        }
                      }
                    }
                  }
                }
              }

LABEL_71:
              ++v17;
            }

            while (v17 < v16);
            v19 = 1;
LABEL_118:
            v4 = v75;
LABEL_23:
            v20 = v14;
            v21 = *(v9 + 99);
            if ((~v21 & 3) == 0)
            {
              *(v3 + 48) = 256;
              if (v19)
              {
                v22 = 0;
              }

              else
              {
                v22 = v12;
              }

              *(v3 + 17) = v22;
              *(v3 + 20) = v14 + 16;
              sub_1819765B0(v4, v3, v14);
              v23 = *(v11 + 33);
              if ((v23 & 4) != 0)
              {
                if ((v23 & 0x40) != 0)
                {
                  *(v3 + 48) |= 0x2000000u;
                }

                *(v3 + 40) = *(**(v11 + 72) + 72);
              }

              result = sub_181975CE8(v2, v3);
              *(v3 + 22) = v20;
              if (result)
              {
                return result;
              }

              goto LABEL_126;
            }

            v83 = v14;
            if ((v21 & 0x20) == 0)
            {
              v76 = v14;
              v24 = *(v9 + 13) & *(v11 + 40);
              v85 = v24;
              v25 = *(v9 + 9);
              if (v25)
              {
                sub_18196C3E0(*v5, v9, v25, &v85, 0, 0);
                v24 = v85;
              }

              *(v3 + 48) = 512;
              if (v24 == 0x8000000000000000 || (*(v9 + 99) & 0x800) != 0 && v24 && (*(v9 + 99) & 0x400) == 0)
              {
                v26 = sub_1819767F8(v5, v9, *(v11 + 36));
                v14 = v76;
                if (!v26)
                {
                  goto LABEL_42;
                }

                v85 = 0;
                v27 = *(v3 + 48) | v26;
              }

              else
              {
                v14 = v76;
                if (v24 || (*(v81 + 48) & 0x80) != 0 && !v5[4] && (!off_1ED453038 || (v39 = off_1ED453038(700), v14 = v76, !v39)))
                {
LABEL_42:
                  v28 = v12;
                  if (v19)
                  {
                    if ((*(v81 + 48) & 0x80) != 0 || *(v9 + 9) || (*(v11 + 33) & 2) != 0 || !v85 && (*(v9 + 99) & 4) == 0 && *(v9 + 46) < *(v81 + 60) && (*(v5 + 30) & 4) == 0 && byte_1ED452E87 && (*(**v5 + 96) & 0x20) == 0)
                    {
                      v28 = 0;
                      goto LABEL_53;
                    }
                  }

                  else
                  {
LABEL_53:
                    *(v3 + 17) = v28;
                    v29 = v14 + 15 * *(v9 + 46) / *(v81 + 60) + 1;
                    *(v3 + 20) = v14 + 15 * *(v9 + 46) / *(v81 + 60) + 1;
                    v30 = v20;
                    if (v85)
                    {
                      v31 = v83 + 16;
                      if (*(v5 + 31) >= 1)
                      {
                        v32 = 0;
                        v33 = 0;
                        v34 = *(v11 + 36);
                        while (1)
                        {
                          v35 = v5;
                          v36 = v5[17];
                          v37 = *(v36 + v32);
                          v96[0] = 0;
                          v97 = 0u;
                          v95[0] = v9;
                          v95[1] = v34;
                          v96[1] = sub_181977950;
                          v98 = 0;
                          v99 = v95;
                          if (v37)
                          {
                            sub_181959BA0(v96, v37);
                            if (WORD2(v98))
                            {
                              break;
                            }
                          }

                          v38 = *(v36 + v32 + 16);
                          if (v38 >= 1)
                          {
                            if ((*(v36 + v32 + 20) & 0x82) != 0)
                            {
                              LOWORD(v38) = -20;
                            }

                            else
                            {
                              LOWORD(v38) = -1;
                            }
                          }

                          v5 = v35;
                          v31 += v38;
                          ++v33;
                          v32 += 56;
                          if (v33 >= *(v35 + 31))
                          {
                            goto LABEL_104;
                          }
                        }

                        v5 = v35;
LABEL_104:
                        LOWORD(v29) = *(v3 + 20);
                        v2 = v74;
                        v4 = v75;
                        v11 = v79;
                        v30 = v83;
                      }

                      if (v29 >= v31)
                      {
                        if (v31 + 49 >= v29)
                        {
                          if (v31 + 31 >= v29)
                          {
                            LOWORD(v29) = v29 + byte_181A245A6[v29 - v31];
                          }

                          else
                          {
                            LOWORD(v29) = v29 + 1;
                          }
                        }
                      }

                      else if (v29 + 49 >= v31)
                      {
                        if (v29 + 31 >= v31)
                        {
                          LOWORD(v29) = v31 + byte_181A245A6[v31 - v29];
                        }

                        else
                        {
                          LOWORD(v29) = v31 + 1;
                        }
                      }

                      else
                      {
                        LOWORD(v29) = v31;
                      }

                      *(v3 + 20) = v29;
                    }

                    sub_1819765B0(v4, v3, v30);
                    if ((*(v11 + 32) & 0x10) != 0 && *(v9 + 10))
                    {
                      *(v3 + 22) = v30;
                    }

                    else
                    {
                      result = sub_181975CE8(v2, v3);
                      *(v3 + 22) = v30;
                      if (result)
                      {
                        return result;
                      }
                    }
                  }

LABEL_126:
                  *(v2 + 32) = 0;
                  result = sub_1819768C4(v2, v11 + 8, v9, 0);
                  if (*(v2 + 32) == 1)
                  {
                    *(v81 + 48) |= 0x100u;
                  }

                  goto LABEL_128;
                }

LABEL_40:
                v27 = 576;
              }

              *(v3 + 48) = v27;
              goto LABEL_42;
            }

            v85 = 0;
            goto LABEL_40;
          }

          result = 0;
        }

LABEL_128:
        if ((*(v11 + 33) & 2) == 0 && !result)
        {
          v9 = *(v9 + 5);
          ++v12;
          if (v9)
          {
            continue;
          }
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t sub_181974BB4(void *a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  v94 = 0;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  v58 = 0;
  memset(v57, 0, sizeof(v57));
  v6 = *a1;
  v5 = a1[1];
  v7 = *(v5 + 32);
  v47 = v5;
  v8 = *(v5 + 20);
  v9 = a1[2];
  v60 = 0;
  memset(v59, 0, sizeof(v59));
  v54 = v9;
  v51 = *(v6 + 8) + 72 * *(v9 + 16);
  if ((*(v51 + 32) & 0x10) == 0 && v8 >= 1)
  {
    v48 = v7 + 56 * v8;
    v49 = *(v51 + 36);
    v45 = a1;
    do
    {
      if ((*(v7 + 20) & 0x200) != 0 && (v10 = *(v7 + 32), (*(v54 + 8) & *(v10 + 488)) != 0))
      {
        v46 = v7;
        v11 = *(v10 + 32) + 56 * *(v10 + 20);
        v12 = a1[4];
        v13 = *(a1 + 1);
        v61 = *a1;
        *&v62 = v13;
        v63 = v12;
        *(&v62 + 1) = v57;
        v14 = *(v10 + 32);
        v53 = v11;
        if (v14 < v11)
        {
          result = 0;
          v15 = 1;
          while (1)
          {
            if ((*(v14 + 20) & 0x400) != 0)
            {
              v16 = *(v14 + 32);
            }

            else
            {
              if (*(v14 + 28) != v49)
              {
                goto LABEL_9;
              }

              *&v64 = *v47;
              *(&v64 + 1) = v47;
              LOBYTE(v65) = 44;
              DWORD1(v65) = 1;
              HIDWORD(v65) = 1;
              *&v66 = v14;
              v16 = &v64;
            }

            *(&v61 + 1) = v16;
            LOWORD(v57[0]) = 0;
            if (*(*(v51 + 24) + 63) == 1)
            {
              result = sub_181973540(&v61, a2, a3);
              if (!result)
              {
                goto LABEL_18;
              }
            }

            else
            {
              result = sub_181974208(&v61, a2);
              if (!result)
              {
LABEL_18:
                result = sub_181974BB4(&v61, a2, a3);
              }
            }

            v17 = LOWORD(v57[0]);
            if (!LOWORD(v57[0]))
            {
              LOWORD(v59[0]) = 0;
              goto LABEL_71;
            }

            v18 = result;
            if (v15)
            {
              LOWORD(v59[0]) = v57[0];
              __memcpy_chk();
              v15 = 0;
              result = v18;
            }

            else
            {
              v56 = 0;
              memset(v55, 0, sizeof(v55));
              v19 = LOWORD(v59[0]);
              __memcpy_chk();
              LOWORD(v59[0]) = 0;
              result = v18;
              if (v19)
              {
                v20 = 0;
                v21 = 0;
                do
                {
                  v22 = 0;
                  v23 = &v55[v20] + 8;
                  v24 = v21;
                  do
                  {
                    v25 = &v57[v22] + 8;
                    v26 = *(v23 + 4);
                    v27 = *(v25 + 4);
                    if (v26 >= v27)
                    {
                      v28 = *(v23 + 4);
                      if (v27 + 49 >= v26)
                      {
                        if (v27 + 31 >= v26)
                        {
                          v28 = v26 + byte_181A245A6[v26 - v27];
                        }

                        else
                        {
                          v28 = v26 + 1;
                        }
                      }
                    }

                    else
                    {
                      v28 = *(v25 + 4);
                      if (v26 + 49 >= v27)
                      {
                        if (v26 + 31 >= v27)
                        {
                          v28 = v27 + byte_181A245A6[v27 - v26];
                        }

                        else
                        {
                          v28 = v27 + 1;
                        }
                      }
                    }

                    v29 = *(v23 + 5);
                    v30 = *(v25 + 5);
                    if (v29 >= v30)
                    {
                      v31 = *(v23 + 5);
                      if (v30 + 49 >= v29)
                      {
                        if (v30 + 31 >= v29)
                        {
                          v31 = v29 + byte_181A245A6[v29 - v30];
                        }

                        else
                        {
                          v31 = v29 + 1;
                        }
                      }
                    }

                    else
                    {
                      v31 = *(v25 + 5);
                      if (v29 + 49 >= v30)
                      {
                        if (v29 + 31 >= v30)
                        {
                          v31 = v30 + byte_181A245A6[v30 - v29];
                        }

                        else
                        {
                          v31 = v30 + 1;
                        }
                      }
                    }

                    v32 = *v25 | *v23;
                    if (v24)
                    {
                      v33 = v59 + 8;
                      v34 = v24;
                      while (1)
                      {
                        v35 = *(v33 + 4);
                        if (v35 >= v28 && (v32 & ~*v33) == 0)
                        {
                          break;
                        }

                        if (v35 <= v28 && (*v33 & ~v32) == 0)
                        {
                          goto LABEL_25;
                        }

                        --v34;
                        v33 += 16;
                        if (!v34)
                        {
                          if (v24 < 3u)
                          {
                            goto LABEL_53;
                          }

                          v36 = v24 - 1;
                          v37 = &v59[1] + 8;
                          v33 = v59 + 8;
                          do
                          {
                            v38 = v33;
                            v39 = *(v33 + 4);
                            v40 = *(v37 + 4);
                            if (v39 > v40)
                            {
                              v33 = v37;
                            }

                            v37 += 16;
                            --v36;
                          }

                          while (v36);
                          v41 = &v59[v24];
                          if (v39 <= v40)
                          {
                            v41 = (v38 + 8);
                          }

                          if (*v41 <= v28)
                          {
                            goto LABEL_25;
                          }

                          break;
                        }
                      }
                    }

                    else
                    {
LABEL_53:
                      v21 = v24 + 1;
                      LOWORD(v59[0]) = v24 + 1;
                      v33 = &v59[v24] + 8;
                      *(v33 + 5) = v31;
                      ++v24;
                    }

                    *v33 = v32;
                    *(v33 + 4) = v28;
                    if (*(v33 + 5) > v31)
                    {
                      *(v33 + 5) = v31;
                    }

LABEL_25:
                    ++v22;
                  }

                  while (v22 != v17);
                  ++v20;
                }

                while (v20 != v19);
              }

              v15 = 0;
            }

LABEL_9:
            v14 += 56;
            if (v14 >= v53)
            {
              goto LABEL_71;
            }
          }
        }

        result = 0;
LABEL_71:
        *(v54 + 52) = 1;
        v7 = v46;
        **(v54 + 64) = v46;
        *(v54 + 48) = 0x2000;
        *(v54 + 18) = 0;
        *(v54 + 17) = 0;
        *(v54 + 32) = 0;
        *(v54 + 40) = 0;
        *(v54 + 24) = 0;
        if (result)
        {
          a1 = v45;
        }

        else
        {
          a1 = v45;
          if (LOWORD(v59[0]))
          {
            v42 = 1;
            v43 = &v59[1] + 1;
            do
            {
              *(v54 + 20) = *(v43 - 1) + 1;
              *(v54 + 22) = *v43;
              *v54 = *(v43 - 5);
              result = sub_181975CE8(v45, v54);
              if (result)
              {
                break;
              }

              v43 += 8;
            }

            while (v42++ < LOWORD(v59[0]));
          }
        }
      }

      else
      {
        result = 0;
      }

      v7 += 56;
    }

    while (v7 < v48 && !result);
  }

  return result;
}

uint64_t sub_181975134(void *a1, uint64_t a2, int a3)
{
  if (*(a2 + 56) >= a3)
  {
    return 0;
  }

  v4 = (a3 + 7) & 0xFFFFFFF8;
  v6 = sub_181929E8C(a1, 8 * v4, 0x2004093837F09);
  if (!v6)
  {
    return 7;
  }

  v7 = v6;
  memcpy(v6, *(a2 + 64), 8 * *(a2 + 56));
  v8 = *(a2 + 64);
  if (v8 != (a2 + 80))
  {
    sub_181929C84(a1, v8);
  }

  result = 0;
  *(a2 + 64) = v7;
  *(a2 + 56) = v4;
  return result;
}

uint64_t sub_1819751DC(uint64_t ***a1, uint64_t a2, uint64_t a3, unsigned __int16 a4, int *a5, unsigned int a6, _DWORD *a7, _DWORD *a8)
{
  v9 = *(a5 + 4);
  v11 = a1[1];
  v10 = a1[2];
  v12 = **a1;
  v13 = ((*a1)[1] + 1);
  v14 = *(v10 + 16);
  v15 = *a5;
  *a7 = 0;
  *v10 = a2;
  if (v15 >= 1)
  {
    v16 = 0;
    v17 = *(a5 + 1);
    do
    {
      if (v11)
      {
        v18 = *(v17 + 8);
        v19 = v11;
        while (1)
        {
          v20 = *(v19 + 20);
          v21 = __OFSUB__(v18, v20);
          v22 = v18 - v20;
          if (v22 < 0 != v21)
          {
            break;
          }

          v19 = *(v19 + 8);
          v18 = v22;
          if (!v19)
          {
            goto LABEL_12;
          }
        }

        v19 = *(v19 + 32) + 56 * v18;
      }

      else
      {
        v19 = 0;
      }

LABEL_12:
      *(v17 + 5) = 0;
      if ((*(v19 + 40) & ~a3) == 0 && (*(v19 + 20) & a4) == 0 && (a8 || *(v19 + 23) - 75 <= 0xFFFFFFFD))
      {
        *(v17 + 5) = 1;
      }

      ++v16;
      v17 += 12;
    }

    while (v16 != v15);
  }

  v101 = v9;
  bzero(v9, 8 * v15);
  *(a5 + 6) = 0;
  a5[10] = 0;
  a5[15] = 0;
  *(a5 + 8) = 0x546D42AEA2879F2ELL;
  *(a5 + 9) = 25;
  a5[20] = 0;
  a5[30] = 0;
  v23 = v13 + 72 * v14;
  v24 = *(v23 + 16);
  v100 = (v23 + 16);
  v25 = *v12;
  v26 = v24 + 80;
  v27 = (v24 + 80);
  do
  {
    v28 = *v27;
    v29 = *v27;
    v30 = *v29;
    v27 = (v29 + 5);
  }

  while (v30 != v25);
  v31 = v28[2];
  ++*(v25 + 72);
  v32 = (*(*v31 + 24))(v31, a5);
  v33 = v32;
  v34 = *v12;
  --*(*v12 + 72);
  if (v32)
  {
    v35 = v32 == 19;
  }

  else
  {
    v35 = 1;
  }

  if (!v35)
  {
    if (v32 == 7)
    {
      if (!*(v34 + 103) && !*(v34 + 104))
      {
        *(v34 + 103) = 1;
        if (*(v34 + 220) >= 1)
        {
          *(v34 + 424) = 1;
        }

        ++*(v34 + 432);
        *(v34 + 436) = 0;
        v36 = *(v34 + 344);
        if (v36)
        {
          sub_181910730(v36, "out of memory");
          for (i = *(v34 + 344); ; ++*(i + 52))
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

    else
    {
      v38 = v31[2];
      if (!v38)
      {
        switch(v32)
        {
          case 0x204:
            v38 = "abort due to ROLLBACK";
            break;
          case 0x65:
            v38 = "no more rows available";
            break;
          case 0x64:
            v38 = "another row available";
            break;
          default:
            if (v32 > 0x1Cu || ((0x1410004uLL >> v32) & 1) != 0)
            {
              v38 = "unknown error";
            }

            else
            {
              v38 = off_1E6A27DD8[v32];
            }

            break;
        }
      }

      sub_181910730(v12, "%s", v38);
    }
  }

  if (*(*v26 + 29))
  {
    v39 = *(*v12 + 40);
    if (v39 >= 1)
    {
      if (v12[19])
      {
        v40 = v12[19];
      }

      else
      {
        v40 = v12;
      }

      v41 = *(v40 + 29);
      if ((v41 & 1) == 0)
      {
        v41 |= 1u;
        *(v40 + 29) = v41;
      }

      if (v39 != 1)
      {
        if ((v41 & 2) == 0)
        {
          *(v40 + 29) = v41 | 2;
          sub_1819108F4(v40);
        }

        if (v39 != 2)
        {
          v50 = v12[19];
          if (!v50)
          {
            v50 = v12;
          }

          v51 = *(v50 + 29);
          for (j = 2; j != v39; ++j)
          {
            if (((1 << j) & v51) == 0)
            {
              v51 |= 1 << j;
              *(v50 + 29) = v51;
            }
          }
        }
      }

      if (*(v12 + 28))
      {
        if (v12[19])
        {
          v42 = v12[19];
        }

        else
        {
          v42 = v12;
        }

        v43 = *(v42 + 29);
        if ((v43 & 1) == 0)
        {
          v43 |= 1u;
          *(v42 + 29) = v43;
        }

        v44 = *(v42 + 28) | 1;
        *(v42 + 28) = v44;
        if (v39 != 1)
        {
          if ((v43 & 2) == 0)
          {
            *(v42 + 29) = v43 | 2;
            sub_1819108F4(v42);
            v44 = *(v42 + 28);
          }

          *(v42 + 28) = v44 | 2;
          if (v39 != 2)
          {
            v45 = v12[19];
            if (!v45)
            {
              v45 = v12;
            }

            v47 = *(v45 + 28);
            v46 = *(v45 + 29);
            for (k = 2; k != v39; ++k)
            {
              v49 = 1 << k;
              if (((1 << k) & v46) == 0)
              {
                v46 |= v49;
                *(v45 + 29) = v46;
              }

              v47 |= v49;
            }

            *(v45 + 28) = v47;
          }
        }
      }
    }
  }

  v53 = v31[2];
  if (v53)
  {
    v54 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_78:
      (*v54)(v53);
      goto LABEL_79;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v53);
    --qword_1ED456A90;
    off_1ED452EB0(v53);
    v53 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v54 = &xmmword_1ED452F28;
      goto LABEL_78;
    }
  }

LABEL_79:
  v31[2] = 0;
  if (v33)
  {
    if (v33 != 19)
    {
      return v33;
    }

    if (!a5[14])
    {
      return 0;
    }

    v55 = *(a5 + 6);
    if (v55)
    {
      v56 = &off_1ED452EB0;
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
          goto LABEL_89;
        }

        v56 = &xmmword_1ED452F28;
      }

      (*v56)(v55);
    }

LABEL_89:
    v33 = 0;
    *(a5 + 6) = 0;
    a5[14] = 0;
    return v33;
  }

  bzero(*(v10 + 64), 8 * v15);
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  if (v15 <= 0)
  {
    *(v10 + 52) = 0;
    goto LABEL_126;
  }

  v57 = 0;
  v58 = *(a5 + 1);
  v59 = -1;
  do
  {
    v60 = &v101[2 * v57];
    v61 = *v60 - 1;
    if (*v60 >= 1)
    {
      if (*v60 > v15)
      {
        goto LABEL_161;
      }

      v62 = *(v58 + 8);
      if (v62 < 0 || !v11)
      {
        goto LABEL_161;
      }

      v63 = v11;
      while (1)
      {
        v64 = *(v63 + 20);
        v21 = __OFSUB__(v62, v64);
        v65 = v62 - v64;
        if (v65 < 0 != v21)
        {
          break;
        }

        v63 = *(v63 + 8);
        v62 = v65;
        if (!v63)
        {
          goto LABEL_161;
        }
      }

      v66 = *(v63 + 32);
      if (!v66)
      {
        goto LABEL_161;
      }

      v67 = *(v10 + 64);
      if (*(v67 + 8 * v61) || !*(v58 + 5))
      {
        goto LABEL_161;
      }

      v68 = v66 + 56 * v62;
      *v10 |= *(v68 + 40);
      *(v67 + 8 * v61) = v68;
      if (v61 > v59)
      {
        v59 = v61;
      }

      if (*(v60 + 4))
      {
        if (v57 <= 0xF && ((a6 >> v57) & 1) == 0)
        {
          *(v10 + 30) |= 1 << v61;
        }

        if (*(v68 + 23) == 74)
        {
          *(v10 + 28) |= 2u;
        }
      }

      v69 = 1 << v57;
      if (v57 >= 0x20)
      {
        v69 = 0;
      }

      if ((a5[30] & v69) != 0)
      {
        *(v10 + 40) |= 1 << v61;
      }

      else if (*(v68 + 20))
      {
        a5[15] = 0;
        a5[20] &= ~1u;
        *a7 = 1;
      }

      if (*(v68 + 23) - 75 >= 0xFFFFFFFE)
      {
        if (*a7)
        {
          goto LABEL_134;
        }

        v70 = v101;
        v71 = v57;
        if (v57)
        {
          while (1)
          {
            v72 = *v70;
            v70 += 2;
            if (v72 <= 0)
            {
              break;
            }

            if (!--v71)
            {
              goto LABEL_92;
            }
          }

LABEL_134:
          if (!a5[14])
          {
LABEL_143:
            v33 = 0;
            *a8 = 1;
            return v33;
          }

          v77 = *(a5 + 6);
          if (v77)
          {
            v78 = &off_1ED452EB0;
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
                goto LABEL_142;
              }

              v78 = &xmmword_1ED452F28;
            }

            (*v78)(v77);
          }

LABEL_142:
          *(a5 + 6) = 0;
          a5[14] = 0;
          goto LABEL_143;
        }
      }
    }

LABEL_92:
    ++v57;
    v58 += 12;
  }

  while (v57 != v15);
  v83 = (v59 + 1);
  *(v10 + 52) = v59 + 1;
  if (v59 < 0)
  {
LABEL_126:
    *(v10 + 24) = a5[10];
    *(v10 + 28) = *(v10 + 28) & 0xFE | a5[14] & 1;
    a5[14] = 0;
    *(v10 + 32) = *(a5 + 6);
    v73 = a5[15];
    if (v73)
    {
      v73 = a5[4];
    }

    *(v10 + 29) = v73;
    *(v10 + 28) = (2 * *(a5 + 80)) & 4 | *(v10 + 28) & 0xFB;
    *(v10 + 18) = 0;
    v74 = *(a5 + 8);
    if (v74 <= 1.0)
    {
      goto LABEL_133;
    }

    if (v74 > 2000000000.0)
    {
      v75 = 10 * (*&v74 >> 52) - 10220;
      goto LABEL_177;
    }

    v76 = v74;
    if (v74 >= 8)
    {
      v79 = 40;
      if (v76 >= 0x100)
      {
        v80 = v74;
        do
        {
          v79 += 40;
          v76 = v80 >> 4;
          v81 = v80 > 0xFFF;
          v80 >>= 4;
        }

        while (v81);
      }

      if (v76 < 0x10)
      {
        LOBYTE(v82) = v76;
      }

      else
      {
        do
        {
          v79 += 10;
          v82 = v76 >> 1;
          v81 = v76 > 0x1F;
          v76 >>= 1;
        }

        while (v81);
      }
    }

    else
    {
      if (v76 < 2)
      {
LABEL_133:
        LOWORD(v75) = 0;
        goto LABEL_177;
      }

      v79 = 40;
      do
      {
        v79 -= 10;
        LOBYTE(v82) = 2 * v76;
        v87 = v76 >= 4;
        v76 *= 2;
      }

      while (!v87);
    }

    LOWORD(v75) = v79 + word_181A27AA2[v82 & 7] - 10;
LABEL_177:
    *(v10 + 20) = v75;
    v88 = *(a5 + 9);
    if (v88 >= 8)
    {
      v90 = 40;
      if (v88 >= 0x100)
      {
        v91 = *(a5 + 9);
        do
        {
          v90 += 40;
          v88 = v91 >> 4;
          v81 = v91 > 0xFFF;
          v91 >>= 4;
        }

        while (v81);
      }

      if (v88 < 0x10)
      {
        LOBYTE(v92) = v88;
      }

      else
      {
        do
        {
          v90 += 10;
          v92 = v88 >> 1;
          v81 = v88 > 0x1F;
          v88 >>= 1;
        }

        while (v81);
      }
    }

    else
    {
      if (v88 < 2)
      {
        v89 = 0;
        goto LABEL_192;
      }

      v90 = 40;
      do
      {
        v90 -= 10;
        LOBYTE(v92) = 2 * v88;
        v87 = v88 >= 4;
        v88 *= 2;
      }

      while (!v87);
    }

    v89 = v90 + word_181A27AA2[v92 & 7] - 10;
LABEL_192:
    *(v10 + 22) = v89;
    *(v10 + 48) = *(v10 + 48) & 0xFFFFEFFF | ((a5[20] & 1) << 12);
    v33 = sub_181975CE8(a1, v10);
    if ((*(v10 + 28) & 1) == 0)
    {
      return v33;
    }

    v93 = *(v10 + 32);
    if (v93)
    {
      v94 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v93);
        --qword_1ED456A90;
        off_1ED452EB0(v93);
        v93 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_200;
        }

        v94 = &xmmword_1ED452F28;
      }

      (*v94)(v93);
    }

LABEL_200:
    *(v10 + 28) &= ~1u;
    return v33;
  }

  v84 = *(v10 + 64);
  while (*v84)
  {
    ++v84;
    if (!--v83)
    {
      goto LABEL_126;
    }
  }

LABEL_161:
  sub_181910730(v12, "%s.xBestIndex malfunction", **v100);
  if (!a5[14])
  {
    return 1;
  }

  v85 = *(a5 + 6);
  if (v85)
  {
    v86 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_168;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v85);
    --qword_1ED456A90;
    off_1ED452EB0(v85);
    v85 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v86 = &xmmword_1ED452F28;
LABEL_168:
      (*v86)(v85);
    }
  }

  *(a5 + 6) = 0;
  a5[14] = 0;
  return 1;
}

uint64_t sub_181975CE8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 36);
  if (v3)
  {
    v5 = *a1;
    v6 = ***a1;
    *(a1 + 36) = v3 - 1;
    v9 = v5[10];
    v7 = (v5 + 10);
    v8 = v9;
    if (v9)
    {
      v10 = (a2[6] & 0x200) == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      v22 = *(a2 + 16);
      do
      {
        if (*(v8 + 16) != v22 || (*(v8 + 49) & 2) == 0)
        {
          goto LABEL_26;
        }

        if (sub_1819763B8(v8, a2))
        {
          v23 = *(v8 + 20);
          if (v23 >= *(a2 + 10))
          {
            LOWORD(v23) = *(a2 + 10);
          }

          *(a2 + 10) = v23;
          v24 = *(v8 + 22);
          if (v24 <= *(a2 + 11))
          {
            v25 = v24 - 1;
          }

          else
          {
            v25 = *(a2 + 11);
          }
        }

        else
        {
          if (!sub_1819763B8(a2, v8))
          {
            goto LABEL_26;
          }

          v26 = *(v8 + 20);
          if (v26 <= *(a2 + 10))
          {
            LOWORD(v26) = *(a2 + 10);
          }

          *(a2 + 10) = v26;
          v27 = *(v8 + 22);
          if (v27 >= *(a2 + 11))
          {
            v25 = v27 + 1;
          }

          else
          {
            v25 = *(a2 + 11);
          }
        }

        *(a2 + 11) = v25;
LABEL_26:
        v8 = *(v8 + 72);
      }

      while (v8);
    }

    v11 = *(a1 + 24);
    if (v11)
    {
      if (*(a2 + 26))
      {
        v12 = *a2;
        v13 = *(a2 + 10);
        v14 = *(a2 + 11);
        v15 = v11 + 4;
        v16 = *v11;
        if (!*v11)
        {
LABEL_42:
          *v11 = v16 + 1;
          v15 += 8 * v16;
          v15[5] = v14;
          goto LABEL_59;
        }

        v17 = v11 + 4;
        v18 = *v11;
        do
        {
          v19 = v17[4];
          if (v19 >= v13 && (v12 & ~*v17) == 0)
          {
            v15 = v17;
            goto LABEL_59;
          }

          if (v19 <= v13 && (*v17 & ~v12) == 0)
          {
            return 0;
          }

          --v18;
          v17 += 8;
        }

        while (v18);
        if (v16 < 3)
        {
          goto LABEL_42;
        }

        v35 = v16 - 1;
        v36 = v11 + 12;
        do
        {
          if (v15[4] > v36[4])
          {
            v15 = v36;
          }

          v36 += 8;
          --v35;
        }

        while (v35);
        if (v15[4] > v13)
        {
LABEL_59:
          *v15 = v12;
          v15[4] = v13;
          if (v15[5] > v14)
          {
            result = 0;
            v15[5] = v14;
            return result;
          }
        }
      }

      return 0;
    }

    result = sub_1819762D4(v7, a2);
    if (!result)
    {
      return result;
    }

    v28 = *result;
    if (*result)
    {
      v29 = v28 + 9;
      if (v28[9])
      {
        while (1)
        {
          v38 = sub_1819762D4(v29, a2);
          if (!v38)
          {
            goto LABEL_45;
          }

          v29 = v38;
          v39 = *v38;
          if (!*v38)
          {
            goto LABEL_45;
          }

          *v38 = *(v39 + 72);
          v40 = *(v39 + 64);
          if (v40 != (v39 + 80))
          {
            sub_181929C84(v6, v40);
            *(v39 + 64) = v39 + 80;
            *(v39 + 56) = 3;
          }

          v41 = *(v39 + 48);
          if ((v41 & 0x4400) != 0)
          {
            break;
          }

LABEL_67:
          *(v39 + 52) = 0;
          *(v39 + 48) = 0;
          sub_181939EC8(v6, v39);
          if (!*v29)
          {
            goto LABEL_45;
          }
        }

        if ((v41 & 0x400) == 0 || (*(v39 + 28) & 1) == 0)
        {
          if ((v41 & 0x4000) == 0)
          {
            goto LABEL_67;
          }

          v43 = (v39 + 32);
          v42 = *(v39 + 32);
          if (!v42)
          {
            goto LABEL_67;
          }

          if (*(v42 + 32))
          {
            sub_181929C84(v6, *(v42 + 32));
            v42 = *v43;
          }

          sub_181929C84(v6, v42);
          goto LABEL_66;
        }

        v43 = (v39 + 32);
        v44 = *(v39 + 32);
        if (v44)
        {
          v37 = &off_1ED452EB0;
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
              goto LABEL_65;
            }

            v37 = &xmmword_1ED452F28;
          }

          (*v37)(v44);
        }

LABEL_65:
        *(v39 + 28) &= ~1u;
LABEL_66:
        *v43 = 0;
        goto LABEL_67;
      }
    }

    else
    {
      v30 = result;
      v31 = sub_181929E8C(v6, 0x68uLL, 0x10B204050C585DFLL);
      *v30 = v31;
      if (!v31)
      {
        return 7;
      }

      v28 = v31;
      *(v31 + 26) = 0;
      *(v31 + 28) = 3;
      *(v31 + 12) = 0;
      v31[8] = v31 + 10;
      v31[9] = 0;
    }

LABEL_45:
    v32 = *(v28 + 12);
    if ((v32 & 0x4400) == 0)
    {
      goto LABEL_96;
    }

    if ((v32 & 0x400) == 0 || (*(v28 + 28) & 1) == 0)
    {
      if ((v32 & 0x4000) != 0)
      {
        v34 = v28 + 4;
        v33 = v28[4];
        if (v33)
        {
          if (*(v33 + 32))
          {
            sub_181929C84(v6, *(v33 + 32));
            v33 = *v34;
          }

          sub_181929C84(v6, v33);
          goto LABEL_95;
        }
      }

LABEL_96:
      v47 = *(a2 + 26);
      if (v47 > *(v28 + 28))
      {
        v48 = (v47 + 7) & 0x1FFF8;
        v49 = sub_181929E8C(v6, 8 * v48, 0x2004093837F09);
        if (!v49)
        {
          v28[6] = 0;
          *(v28 + 1) = 0u;
          *(v28 + 2) = 0u;
          *v28 = 0u;
          result = 7;
          if ((*(v28 + 49) & 4) != 0)
          {
            return result;
          }

          goto LABEL_107;
        }

        v50 = v49;
        memcpy(v49, v28[8], 8 * *(v28 + 28));
        v51 = v28[8];
        if (v51 != v28 + 10)
        {
          sub_181929C84(v6, v51);
        }

        v28[8] = v50;
        *(v28 + 28) = v48;
      }

      v52 = *a2;
      v53 = *(a2 + 1);
      v54 = *(a2 + 2);
      v55 = a2[6];
      v28[6] = v55;
      *(v28 + 1) = v53;
      *(v28 + 2) = v54;
      *v28 = v52;
      memcpy(v28[8], a2[8], 8 * WORD2(v55));
      v56 = *(a2 + 12);
      if ((v56 & 0x400) != 0)
      {
        result = 0;
        *(a2 + 28) &= ~1u;
      }

      else
      {
        result = 0;
        if ((v56 & 0x4000) != 0)
        {
          a2[4] = 0;
          if ((*(v28 + 49) & 4) != 0)
          {
            return result;
          }

          goto LABEL_107;
        }
      }

      if ((*(v28 + 49) & 4) != 0)
      {
        return result;
      }

LABEL_107:
      v57 = v28[4];
      if (v57 && (~*(v57 + 99) & 3) == 0)
      {
        v28[4] = 0;
      }

      return result;
    }

    v34 = v28 + 4;
    v45 = v28[4];
    if (v45)
    {
      v46 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v45);
        --qword_1ED456A90;
        off_1ED452EB0(v45);
        v45 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_94;
        }

        v46 = &xmmword_1ED452F28;
      }

      (*v46)(v45);
    }

LABEL_94:
    *(v28 + 28) &= ~1u;
LABEL_95:
    *v34 = 0;
    goto LABEL_96;
  }

  v20 = *(a1 + 24);
  if (v20)
  {
    *v20 = 0;
  }

  return 101;
}

uint64_t *sub_1819762D4(uint64_t *result, uint64_t a2)
{
  for (i = *result; i; i = *(i + 72))
  {
    if (*(i + 16) == *(a2 + 16) && *(i + 17) == *(a2 + 17))
    {
      if ((*(i + 49) & 0x40) != 0 && !*(a2 + 54) && (~*(a2 + 48) & 0x201) == 0 && (*a2 & ~*i) == 0)
      {
        return result;
      }

      v3 = *a2 & *i;
      if (v3 == *i && *(i + 18) <= *(a2 + 18) && *(i + 20) <= *(a2 + 20) && *(i + 22) <= *(a2 + 22))
      {
        return 0;
      }

      if (v3 == *a2 && *(i + 20) >= *(a2 + 20) && *(i + 22) >= *(a2 + 22))
      {
        return result;
      }
    }

    result = (i + 72);
  }

  return result;
}

uint64_t sub_1819763B8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20) > *(a2 + 20) && *(a1 + 22) > *(a2 + 22))
  {
    return 0;
  }

  if (*(a1 + 24) >= *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || *(a1 + 54) || *(a2 + 54))
  {
    v2 = *(a1 + 52);
    v3 = *(a1 + 54);
    v4 = *(a2 + 54);
    v5 = v4 <= v3 && (v2 - v3) < (*(a2 + 52) - v4);
    if (!v5)
    {
      return 0;
    }

    if (*(a1 + 52))
    {
      while (1)
      {
        v7 = *(*(a1 + 64) + 8 * (v2 - 1));
        if (v7)
        {
          break;
        }

LABEL_14:
        v5 = v2-- <= 1;
        if (v5)
        {
          goto LABEL_20;
        }
      }

      v8 = *(a2 + 52);
      while (v8 >= 1)
      {
        v9 = *(*(a2 + 64) + 8 * v8-- - 8);
        if (v9 == v7)
        {
          goto LABEL_14;
        }
      }

      return 0;
    }

LABEL_20:
    if ((*(a1 + 48) & 0x40) != 0 && (*(a2 + 48) & 0x40) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_181976498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 0x40) != 0)
  {
    return 0;
  }

  v8 = **a3;
  while (*a4 == 44)
  {
    result = sub_181976498(a1, a2, a3, *(a4 + 16));
    if (!result)
    {
      return result;
    }

    a4 = *(a4 + 24);
  }

  if (*(a3 + 20) >= 1)
  {
    v10 = 0;
    v11 = *(a3 + 32);
    do
    {
      v12 = *v11;
      if (*(*v11 + 4))
      {
        if (*(v12 + 56) != a1)
        {
          goto LABEL_9;
        }
      }

      else if ((a2 & 0x20) != 0)
      {
        goto LABEL_9;
      }

      if (sub_18195A590(v8, *v11, a4, a1) && !sub_18195A590(v8, v12, a4, 0xFFFFFFFFLL) && (*(v11 + 9) & 0x80) == 0)
      {
        return 1;
      }

LABEL_9:
      ++v10;
      v11 += 7;
    }

    while (v10 < *(a3 + 20));
  }

  return 0;
}

uint64_t sub_1819765B0(uint64_t result, uint64_t a2, int a3)
{
  v5 = *(result + 28);
  if (v5 >= 1)
  {
    v6 = result;
    v7 = 0;
    v8 = ~(*(a2 + 8) | *a2);
    v9 = *(result + 32);
    while (1)
    {
      v11 = *(v9 + 48);
      if ((v11 & v8) == 0)
      {
        v12 = *(a2 + 8);
        if ((v12 & v11) != 0 && (*(v9 + 18) & 2) == 0)
        {
          break;
        }
      }

LABEL_4:
      v9 += 56;
      v10 = __OFSUB__(v5--, 1);
      if ((v5 < 0) ^ v10 | (v5 == 0))
      {
        goto LABEL_39;
      }
    }

    if (*(a2 + 52))
    {
      v13 = 8 * *(a2 + 52);
      do
      {
        v14 = *(*(a2 + 64) - 8 + v13);
        if (v14)
        {
          if (v14 == v9)
          {
            goto LABEL_4;
          }

          v15 = *(v14 + 24);
          if ((v15 & 0x80000000) == 0 && *(v6 + 32) + 56 * v15 == v9)
          {
            goto LABEL_4;
          }
        }

        v13 -= 8;
      }

      while (v13);
    }

    v16 = **v6;
    v17 = *v16;
    if (*(*v16 + 424))
    {
      ++v16[13];
      v16[6] = 9;
    }

    v18 = *(v17 + 544);
    if (v18)
    {
      if (v16[6] != 9)
      {
        v19 = v16[32] + 1;
        v16[32] = v19;
        if (v19 < *(v17 + 560))
        {
          goto LABEL_24;
        }

        result = v18(*(v17 + 552));
        if (result)
        {
          ++v16[13];
          v16[6] = 9;
        }
      }

      v16[32] = 0;
      v12 = *(a2 + 8);
      v11 = *(v9 + 48);
    }

LABEL_24:
    if (v12 == v11 && ((*(v9 + 20) & 0x3F) != 0 || (*(*(*v6 + 8) + 72 * *(a2 + 16) + 32) & 0x48) == 0))
    {
      *(a2 + 48) |= 0x800000u;
    }

    v20 = *(v9 + 16);
    v21 = *(a2 + 22);
    if (v20 <= 0)
    {
      *(a2 + 22) = v21 + v20;
    }

    else
    {
      *(a2 + 22) = v21 - 1;
      if ((*(v9 + 20) & 0x82) != 0)
      {
        v22 = *(*v9 + 24);
        v25 = 0;
        result = sub_18195A9F8(v22, &v25, 0);
        v23 = (v25 + 1) >= 3 || result == 0;
        v24 = v23 ? 20 : 10;
        if (v24 > v7)
        {
          *(v9 + 18) |= 0x2000u;
          v7 = v24;
        }
      }
    }

    goto LABEL_4;
  }

  v7 = 0;
LABEL_39:
  if ((a3 - v7) < *(a2 + 22))
  {
    *(a2 + 22) = a3 - v7;
  }

  return result;
}

uint64_t sub_1819767F8(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 32);
  if (!v4)
  {
    return 0;
  }

  v12 = 0;
  if ((*(a2 + 99) & 0x800) == 0)
  {
    v5 = *(a2 + 96);
    if (!*(a2 + 96))
    {
      return 0;
    }

    v6 = *(a2 + 8);
    while (1)
    {
      v7 = *v6++;
      if (v7 >= 63)
      {
        break;
      }

      if (!--v5)
      {
        return 0;
      }
    }
  }

  v11 = a2;
  LODWORD(v12) = a3;
  WORD2(v12) = 0;
  v10[0] = 0;
  v10[3] = 0;
  v10[1] = sub_181977850;
  v10[2] = sub_181961BBC;
  v10[4] = 0;
  v10[5] = &v11;
  sub_1818AEE70(v10, v4);
  if (BYTE4(v12))
  {
    v9 = 0x4000000;
  }

  else
  {
    v9 = 64;
  }

  if (BYTE5(v12))
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_1819768C4(uint64_t **a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = **a1;
  if (*(v4 + 52))
  {
    return *(v4 + 24);
  }

  v7 = a2;
  v112 = *v4;
  v133 = 0;
  v132 = 0u;
  v131 = 0u;
  v130 = 0u;
  v129 = 0u;
  v9 = a1[1];
  v10 = a1[2];
  v122 = *(v10 + 48);
  if ((v122 & 0x20) != 0)
  {
    v11 = 24;
  }

  else
  {
    v11 = 447;
  }

  if ((*(a3 + 99) & 4) != 0)
  {
    v11 &= 0x183u;
  }

  v12 = *(v10 + 24);
  v120 = *(v10 + 28);
  v121 = *(v10 + 26);
  v13 = *(v10 + 54);
  v123 = *(v10 + 52);
  v124[0] = a1[1];
  v119 = *v10;
  v14 = *(v10 + 22);
  v15 = *(a2 + 28);
  v124[1] = v9;
  v125 = 0;
  v126 = 0;
  v127 = 0;
  v128 = v11;
  DWORD1(v129) = v15;
  *(&v129 + 1) = 257;
  v16 = *(*(a3 + 8) + 2 * v12);
  v17 = *(a3 + 24);
  v113 = v13;
  if (v16 == *(v17 + 52))
  {
    v18 = -1;
LABEL_14:
    LOWORD(v132) = v18;
    v20 = sub_181972F4C(v124);
    goto LABEL_15;
  }

  v18 = *(*(a3 + 8) + 2 * v12);
  if ((v16 & 0x80000000) == 0)
  {
    LOBYTE(v129) = *(*(v17 + 8) + 16 * v16 + 9);
    v125 = *(*(a3 + 64) + 8 * v12);
    goto LABEL_14;
  }

  if (v16 != -2)
  {
    goto LABEL_14;
  }

  v19 = *(*(a3 + 80) + 24 * v12 + 8);
  v125 = *(*(a3 + 64) + 8 * v12);
  v126 = v19;
  LOWORD(v132) = -2;
  v20 = sub_1819732DC(v124);
LABEL_15:
  v21 = v20;
  v118 = 0;
  *(v10 + 18) = 0;
  v22 = **(a3 + 16);
  if (v22 >= 11)
  {
    v23 = **(a3 + 16);
    v24 = 40;
    if (v22 >= 0x100)
    {
      v25 = **(a3 + 16);
      do
      {
        v24 += 40;
        v23 = v25 >> 4;
        v68 = v25 > 0xFFF;
        v25 >>= 4;
      }

      while (v68);
    }

    if (v23 < 0x10)
    {
      LOBYTE(v26) = v23;
    }

    else
    {
      do
      {
        v24 += 10;
        v26 = v23 >> 1;
        v68 = v23 > 0x1F;
        v23 >>= 1;
      }

      while (v68);
    }

    v118 = v24 + word_181A27AA2[v26 & 7] - 43;
  }

  if (!v20)
  {
    goto LABEL_258;
  }

  v109 = **(a3 + 16);
  v110 = 0;
  v115 = 0;
  v117 = v14;
  do
  {
    v27 = v21[10];
    if (v27 == 256 || (v21[9] & 0x80) != 0)
    {
      v28 = *(*(a3 + 8) + 2 * v12);
      if (v28 < 0)
      {
        if (v28 == -1)
        {
          goto LABEL_218;
        }
      }

      else if ((*(*(*(a3 + 24) + 8) + 16 * v28 + 8) & 0xF) != 0)
      {
        goto LABEL_218;
      }
    }

    v29 = *(v10 + 8);
    if ((v29 & *(v21 + 5)) != 0)
    {
      goto LABEL_218;
    }

    if (v27 == 16 && (v21[9] & 0x100) != 0)
    {
      goto LABEL_218;
    }

    if ((*(v7 + 24) & 0x58) != 0)
    {
      v31 = *(*v21 + 4);
      if ((v31 & 3) == 0 || *(*v21 + 56) != *(v7 + 28) || (*(v7 + 24) & 0x18) != 0 && (v31 & 2) != 0)
      {
        goto LABEL_218;
      }
    }

    if (*(a3 + 98) && *(a3 + 94) - 1 == v12)
    {
      v32 = 2;
    }

    else
    {
      v32 = 1;
    }

    *(a1 + 32) |= v32;
    *(v10 + 48) = v122;
    *(v10 + 24) = v12;
    *(v10 + 26) = v121;
    *(v10 + 28) = v120;
    *(v10 + 52) = v123;
    if (v123 >= *(v10 + 56))
    {
      v35 = sub_181929E8C(v112, 8 * ((v123 + 8) & 0x1FFF8), 0x2004093837F09);
      if (!v35)
      {
        v5 = 0;
        v14 = v117;
        break;
      }

      v33 = v35;
      memcpy(v35, *(v10 + 64), 8 * *(v10 + 56));
      v36 = *(v10 + 64);
      if (v36 != (v10 + 80))
      {
        sub_181929C84(v112, v36);
      }

      *(v10 + 64) = v33;
      *(v10 + 56) = (v123 + 8) & 0xFFF8;
      v34 = *(v10 + 52);
      v29 = *(v10 + 8);
    }

    else
    {
      v33 = *(v10 + 64);
      v34 = v123;
    }

    *(v10 + 52) = v34 + 1;
    v33[v34] = v21;
    *v10 = (*(v21 + 5) | v119) & ~v29;
    if (v27)
    {
      v43 = *v21;
      v14 = v117;
      if ((*(*v21 + 5) & 0x10) != 0)
      {
        if ((v34 + 1) < 2u)
        {
          LODWORD(v44) = 46;
        }

        else
        {
          v45 = 0;
          v46 = (v34 + 1) - 1;
          v47 = *(v10 + 64);
          LODWORD(v44) = 46;
          do
          {
            v48 = *v47;
            if (*v47)
            {
              if (*v48 == v43)
              {
                LODWORD(v44) = 0;
                if (*(v48 + 36) == *(v21 + 9))
                {
                  v45 = 1;
                }
              }
            }

            ++v47;
            --v46;
          }

          while (v46);
          if (v45)
          {
            v5 = 0;
            *(v10 + 52) = v34;
            goto LABEL_219;
          }
        }

        goto LABEL_184;
      }

      v44 = *(v43 + 32);
      if (v44)
      {
        v44 = *v44;
        if (v44)
        {
          if (v44 >= 8)
          {
            v57 = 40;
            if (v44 >= 0x100)
            {
              v58 = v44;
              do
              {
                v57 += 40;
                v44 = v58 >> 4;
                v68 = v58 > 0xFFF;
                v58 >>= 4;
              }

              while (v68);
            }

            LOBYTE(v59) = v44;
            if (v44 >= 0x10)
            {
              do
              {
                v57 += 10;
                v59 = v44 >> 1;
                v68 = v44 > 0x1F;
                v44 >>= 1;
              }

              while (v68);
            }
          }

          else
          {
            if (v44 == 1)
            {
              LODWORD(v44) = 0;
              goto LABEL_184;
            }

            v57 = 40;
            do
            {
              v57 -= 10;
              LOBYTE(v59) = 2 * v44;
              v81 = v44 >= 4;
              v44 *= 2;
            }

            while (!v81);
          }

          LODWORD(v44) = (v57 + word_181A27AA2[v59 & 7] - 10);
        }
      }

LABEL_184:
      if ((*(a3 + 99) & 0x80) != 0 && v118 >= 10)
      {
        if (v44 >= 11)
        {
          v83 = v44;
          v84 = 40;
          if (v44 >= 0x100u)
          {
            v85 = v44;
            do
            {
              v84 += 40;
              v83 = v85 >> 4;
              v68 = v85 > 0xFFF;
              v85 >>= 4;
            }

            while (v68);
          }

          if (v83 >= 0x10)
          {
            do
            {
              v84 += 10;
              v68 = v83 > 0x1F;
              v83 >>= 1;
            }

            while (v68);
          }

          v82 = (v84 + word_181A27AA2[v83 & 7] - 43);
        }

        else
        {
          v82 = 0;
        }

        if (((*(*(a3 + 16) + 2 * v12) - (v44 + v118) + v82 + 10) & 0x8000) != 0)
        {
          if (a4 > 1 || (*(v112 + 98) & 2) != 0)
          {
LABEL_218:
            v5 = 0;
            goto LABEL_219;
          }

          *(v10 + 48) |= 0x100000u;
        }
      }

      v39 = *(v10 + 48) | 4;
LABEL_196:
      *(v10 + 48) = v39;
      v40 = v115;
      if ((v39 & 2) != 0)
      {
        goto LABEL_91;
      }

      goto LABEL_197;
    }

    v14 = v117;
    if ((v27 & 0x82) != 0)
    {
      v37 = *(*(a3 + 8) + 2 * v12);
      v38 = *(v10 + 48);
      v39 = v38 | 1;
      *(v10 + 48) = v38 | 1;
      if (v37 == -1)
      {
        v42 = 4097;
        v40 = v115;
      }

      else
      {
        v40 = v115;
        if (a4 || v37 < 0 || (v41 = *(a3 + 94), v41 - 1 != v12))
        {
LABEL_89:
          if (BYTE1(v129) < 2u)
          {
            LOWORD(v44) = 0;
            if ((v39 & 2) != 0)
            {
              goto LABEL_91;
            }
          }

          else
          {
            LOWORD(v44) = 0;
            v39 |= 0x200000u;
            *(v10 + 48) = v39;
            if ((v39 & 2) != 0)
            {
              goto LABEL_91;
            }
          }

          goto LABEL_197;
        }

        if ((*(a3 + 99) & 8) != 0 || v41 == 1 && (v27 & 2) != 0 && *(a3 + 98))
        {
          v42 = 4097;
        }

        else
        {
          v42 = 65537;
        }
      }

      v39 = v38 | v42;
      *(v10 + 48) = v39;
      goto LABEL_89;
    }

    if ((v27 & 0x100) != 0)
    {
      LOWORD(v44) = 0;
      v39 = *(v10 + 48) | 8;
      goto LABEL_196;
    }

    v49 = *(*v21 + 16);
    v50 = *v49;
    if (v50 == 176)
    {
      v50 = v49[2];
    }

    if (v50 != 177)
    {
      if (v50 != 139)
      {
        v51 = 1;
        goto LABEL_125;
      }

      v49 = *(v49 + 4);
    }

    v51 = **(v49 + 4);
LABEL_125:
    v60 = *(a3 + 96) - v12;
    if (v51 >= v60)
    {
      v61 = v60;
    }

    else
    {
      v61 = v51;
    }

    if (v61 < 2)
    {
      v71 = 1;
      goto LABEL_170;
    }

    v107 = *(v7 + 28);
    v62 = 1;
    v106 = v7;
    v104 = v61;
    do
    {
      v63 = *(*v21 + 24);
      if ((*(v63 + 5) & 0x10) != 0)
      {
        v63 = *(v63 + 32);
      }

      v64 = *(*(*(*v21 + 16) + 32) + 24 * v62 + 8);
      if (*v64 != 168 || *(v64 + 11) != v107)
      {
LABEL_169:
        v71 = v62;
        break;
      }

      if (*(v64 + 12) != *(*(a3 + 8) + 2 * (v62 + v12)) || *(*(a3 + 56) + v62 + v12) != *(*(a3 + 56) + v12))
      {
        v71 = v62;
        v7 = v106;
        break;
      }

      v111 = *(v64 + 12);
      v108 = v62 + v12;
      v116 = v62;
      v65 = *(*(v63 + 32) + 24 * v62 + 8);
      v66 = sub_1818D0A24(v64);
      v105 = v65;
      v67 = sub_1818D0A24(v65);
      if (v66 < 65 || v67 < 65)
      {
        v70 = v67 >= 65 ? v67 : v66;
        v69 = v70 | 0x40;
      }

      else
      {
        v68 = v67 > 0x42 || v66 > 0x42;
        v69 = v68 ? 67 : 65;
      }

      v14 = v117;
      v71 = v116;
      if ((v111 & 0x80000000) != 0 || (v72 = *(a3 + 24), v111 >= *(v72 + 54)))
      {
        v73 = 68;
      }

      else
      {
        v73 = *(*(v72 + 8) + 16 * v111 + 9);
      }

      v7 = v106;
      if (v73 != v69)
      {
        break;
      }

      if ((v64[5] & 2) != 0)
      {
        v76 = v4;
        v74 = v64;
        goto LABEL_160;
      }

      v74 = v105;
      if (v105 && (v105[5] & 2) != 0)
      {
        v76 = v4;
LABEL_160:
        v75 = sub_1818B4720(v76, v74);
        if (!v75)
        {
          v71 = v116;
          break;
        }

        goto LABEL_161;
      }

      v75 = sub_1818B4720(v4, v64);
      if (!v75)
      {
        v76 = v4;
        v74 = v105;
        goto LABEL_160;
      }

LABEL_161:
      v77 = *v75;
      v78 = *(*(a3 + 64) + 8 * v108);
      LOWORD(v62) = v116;
      while (*v77 != *v78)
      {
        if (byte_181A20298[*v77] != byte_181A20298[*v78])
        {
          goto LABEL_169;
        }

LABEL_163:
        ++v77;
        ++v78;
      }

      if (*v77)
      {
        goto LABEL_163;
      }

      v62 = v116 + 1;
      v71 = v104;
    }

    while (v116 + 1 != v104);
LABEL_170:
    v79 = *(v10 + 48);
    if ((v27 & 0x24) == 0)
    {
      v39 = v79 | 0x12;
      *(v10 + 48) = v79 | 0x12;
      *(v10 + 28) = v71;
      if ((v79 & 0x20) == 0)
      {
        v40 = 0;
        LOWORD(v44) = 0;
        v52 = *(v10 + 22);
        LOWORD(v53) = v52;
        if (!v21)
        {
          goto LABEL_105;
        }

LABEL_102:
        v54 = v21[8];
        if (v54 > 0)
        {
          if ((v21[9] & 0x80) == 0)
          {
            LOWORD(v53) = v53 - 20;
          }

          goto LABEL_105;
        }

        LOWORD(v53) = v54 + v53;
        if (!v40)
        {
LABEL_112:
          v115 = v40;
          v55 = v52 - (v21 != 0) - (v40 != 0);
          v53 = v53;
          if (v53 <= 10)
          {
            v53 = 10;
          }

          if (v55 >= v53)
          {
            v56 = v53;
          }

          else
          {
            v56 = v55;
          }

          goto LABEL_203;
        }

LABEL_106:
        if (v21 && v40[8] >= 1 && v21[8] > 0)
        {
          LOWORD(v53) = v53 - 20;
        }

        goto LABEL_112;
      }

      LOWORD(v44) = 0;
      v40 = *(*(v10 + 64) + 8 * *(v10 + 52) - 16);
      v110 = v21;
      if ((v39 & 2) == 0)
      {
        goto LABEL_197;
      }

LABEL_91:
      v52 = *(v10 + 22);
      if (!v40)
      {
        v21 = v110;
        LOWORD(v53) = *(v10 + 22);
        if (!v110)
        {
          goto LABEL_105;
        }

        goto LABEL_102;
      }

      v53 = v40[8];
      if (v53 <= 0)
      {
        LOWORD(v53) = v53 + v52;
      }

      else if ((v40[9] & 0x80) != 0)
      {
        LOWORD(v53) = *(v10 + 22);
      }

      else
      {
        LOWORD(v53) = v52 - 20;
      }

      v21 = v110;
      if (v110)
      {
        goto LABEL_102;
      }

LABEL_105:
      if (!v40)
      {
        goto LABEL_112;
      }

      goto LABEL_106;
    }

    v39 = v79 | 0x22;
    *(v10 + 48) = v79 | 0x22;
    *(v10 + 26) = v71;
    if ((v21[9] & 0x100) != 0)
    {
      if (!sub_181975134(v112, v10, *(v10 + 52) + 1))
      {
        LOWORD(v44) = 0;
        v80 = *(v10 + 52);
        v110 = v21 + 28;
        *(*(v10 + 64) + 8 * v80) = v21 + 28;
        *(v10 + 52) = v80 + 1;
        v39 = *(v10 + 48) | 0x10;
        *(v10 + 48) = v39;
        *(v10 + 28) = 1;
        v40 = v21;
        if ((v39 & 2) == 0)
        {
          goto LABEL_197;
        }

        goto LABEL_91;
      }

LABEL_258:
      v5 = 0;
      break;
    }

    v110 = 0;
    LOWORD(v44) = 0;
    v40 = v21;
    if ((v39 & 2) != 0)
    {
      goto LABEL_91;
    }

LABEL_197:
    v115 = v40;
    v86 = *(v10 + 24) + 1;
    *(v10 + 24) = v86;
    v87 = v21[8];
    if (v87 > 0 || *(*(a3 + 8) + 2 * v12) < 0)
    {
      v88 = (*(a3 + 16) + 2 * v86);
      v56 = *v88 - *(v88 - 1) + *(v10 + 22);
      *(v10 + 22) = v56;
      if ((v27 & 0x100) != 0)
      {
        v56 += 10;
        goto LABEL_202;
      }
    }

    else
    {
      v56 = v87 - v44 + *(v10 + 22);
LABEL_202:
      v21 = v110;
LABEL_203:
      *(v10 + 22) = v56;
      v110 = v21;
    }

    if ((~*(a3 + 99) & 3) != 0)
    {
      v89 = 15 * *(a3 + 92) / *(*(v7 + 16) + 60) + v56 + 1;
    }

    else
    {
      LOWORD(v89) = v56 + 16;
    }

    if (v89 <= v118)
    {
      v90 = v118;
      if (v118 - 49 <= v89)
      {
        v90 = v118 + 1;
        if (v118 - 31 <= v89)
        {
          v90 = v118 + byte_181A245A6[v118 - v89];
        }
      }
    }

    else if (v118 + 49 >= v89)
    {
      if (v118 + 31 >= v89)
      {
        v90 = v89 + byte_181A245A6[v89 - v118];
      }

      else
      {
        v90 = v89 + 1;
      }
    }

    else
    {
      v90 = v89;
    }

    if ((v39 & 0x4000140) == 0)
    {
      v99 = (v56 + 16);
      if (v90 >= v99)
      {
        if (v99 + 49 >= v90)
        {
          if (v99 + 31 >= v90)
          {
            v90 += byte_181A245A6[v90 - (v56 + 16)];
          }

          else
          {
            ++v90;
          }
        }
      }

      else if (v90 + 49 >= v99)
      {
        if (v90 + 31 >= v99)
        {
          v90 = v56 + 16 + byte_181A245A6[(v56 + 16) - v90];
        }

        else
        {
          v90 = v56 + 17;
        }
      }

      else
      {
        v90 = v56 + 16;
      }
    }

    v92 = v44 + a4;
    *(v10 + 20) = v90 + v44 + a4;
    *(v10 + 22) = v56 + v44 + a4;
    sub_1819765B0(a1[1], v10, v109);
    v5 = sub_181975CE8(a1, v10);
    v93 = *(v10 + 48);
    if ((v93 & 2) != 0)
    {
      v94 = v117;
    }

    else
    {
      v94 = v56;
    }

    v14 = v117;
    *(v10 + 22) = v94;
    if ((v93 & 0x10) == 0)
    {
      v95 = *(v10 + 24);
      if (v95 < *(a3 + 96) && (v95 < *(a3 + 94) || (*(a3 + 99) & 3) != 2))
      {
        if (v95 >= 4)
        {
          v96 = *v4;
          if (*(*v4 + 424))
          {
            ++*(v4 + 52);
            *(v4 + 24) = 9;
          }

          v97 = *(v96 + 544);
          if (v97)
          {
            if (*(v4 + 24) == 9)
            {
              goto LABEL_239;
            }

            v98 = *(v4 + 128) + 1;
            *(v4 + 128) = v98;
            if (v98 >= *(v96 + 560))
            {
              if (v97(*(v96 + 552)))
              {
                ++*(v4 + 52);
                *(v4 + 24) = 9;
              }

LABEL_239:
              *(v4 + 128) = 0;
            }
          }
        }

        sub_1819768C4(a1, v7, a3, v92);
      }
    }

    *(v10 + 22) = v117;
LABEL_219:
    v91 = sub_181972F4C(v124);
    if (v5)
    {
      break;
    }

    v21 = v91;
  }

  while (v91);
  *v10 = v119;
  *(v10 + 24) = v12;
  *(v10 + 26) = v121;
  *(v10 + 28) = v120;
  *(v10 + 54) = v113;
  *(v10 + 48) = v122;
  *(v10 + 22) = v14;
  *(v10 + 52) = v123;
  if (v12 == v113)
  {
    v100 = v12 + 1;
    if (v12 + 1 < *(a3 + 94) && v12 == v123 && (*(a3 + 99) & 0xC0) == 0x80 && (*(v112 + 97) & 0x40) == 0 && *(*(a3 + 16) + 2 * v100) >= 42)
    {
      v5 = sub_181975134(v112, v10, v123 + 1);
      if (!v5)
      {
        ++*(v10 + 24);
        ++*(v10 + 54);
        v101 = *(v10 + 64);
        v102 = *(v10 + 52);
        *(v10 + 52) = v102 + 1;
        *(v101 + 8 * v102) = 0;
        *(v10 + 48) |= 0x8000u;
        LOWORD(v101) = *(*(a3 + 16) + 2 * v12) - *(*(a3 + 16) + 2 * v100);
        *(v10 + 22) -= v101;
        sub_1819768C4(a1, v7, a3, (a4 + v101 + 5));
        *(v10 + 22) = v14;
        *(v10 + 24) = v12;
        *(v10 + 54) = v12;
        *(v10 + 48) = v122;
      }
    }
  }

  return v5;
}

uint64_t sub_1819777E0(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  while (1)
  {
    if (*(v2 + 94))
    {
      v4 = 0;
      while (*(*(v2 + 8) + v4) != a2)
      {
        v4 += 2;
        if (2 * *(v2 + 94) == v4)
        {
          goto LABEL_3;
        }
      }

      if (!v4 || (*(v2 + 99) & 0x80) != 0 && *(*(v2 + 16) + v4 + 2) > 20)
      {
        return 0;
      }
    }

LABEL_3:
    v2 = *(v2 + 40);
    if (!v2)
    {
      return 1;
    }
  }
}

uint64_t sub_181977850(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 40);
  v4 = *v3;
  if ((*a2 | 2) == 0xAA)
  {
    if (*(a2 + 11) == *(v3 + 2))
    {
      v5 = *(v4 + 96);
      if (!*(v4 + 96))
      {
LABEL_7:
        *(v3 + 13) = 1;
        return 2;
      }

      v6 = *(v4 + 8);
      while (1)
      {
        v7 = *v6++;
        if (*(a2 + 12) == v7)
        {
          break;
        }

        if (!--v5)
        {
          goto LABEL_7;
        }
      }
    }

    return 0;
  }

  if ((*(v4 + 99) & 0x800) == 0)
  {
    return 0;
  }

  v9 = *(v4 + 96);
  if (!*(v4 + 96))
  {
    return 0;
  }

  v10 = 0;
  v11 = *(v3 + 2);
  v12 = 8;
  while (*(*(v4 + 8) + 2 * v10) != -2)
  {
LABEL_11:
    ++v10;
    v12 += 24;
    if (v10 >= v9)
    {
      return 0;
    }
  }

  if (sub_181959260(0, a2, *(*(v4 + 80) + v12), v11))
  {
    v9 = *(v4 + 96);
    goto LABEL_11;
  }

  result = 1;
  *(v3 + 12) = 1;
  return result;
}

uint64_t sub_181977950(uint64_t a1, unsigned __int8 *a2)
{
  if (*a2 == 168)
  {
    v2 = *(a1 + 40);
    if (*(a2 + 11) == v2[2])
    {
      v3 = *v2;
      v4 = *(*v2 + 96);
      if (!v4)
      {
LABEL_7:
        *(a1 + 36) = 1;
        return 2;
      }

      v5 = *(v3 + 8);
      while (1)
      {
        v6 = *v5++;
        if (*(a2 + 24) == v6)
        {
          break;
        }

        if (!--v4)
        {
          goto LABEL_7;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1819779B0(uint64_t **a1, int *a2, uint64_t a3, __int16 a4, unsigned int a5, uint64_t a6, void *a7)
{
  v7 = a1;
  if (a5 && (*(**a1 + 96) & 0x40) != 0)
  {
    goto LABEL_4;
  }

  v8 = *a2;
  if (v8 > 0x3F)
  {
    goto LABEL_4;
  }

  v97 = **a1;
  if ((a4 & 0x803) != 0)
  {
    v10 = 387;
  }

  else
  {
    v10 = 386;
  }

  v114 = v10;
  if (!*a2)
  {
    return v8;
  }

  v11 = 0;
  v12 = 0;
  v116 = 0;
  v13 = 0;
  v111 = ~(-1 << v8);
  v14 = a2 + 2;
  v112 = a1 + 13;
  v101 = a4 & 0xC0;
  v120 = a5;
  v121 = 0;
  v108 = a1 + 604;
  v124 = 1;
  v125 = a2 + 2;
  while (1)
  {
    if (v12)
    {
      v121 |= *(v13 + 8);
    }

    v13 = a6;
    if (v12 >= v120)
    {
      break;
    }

    v13 = *(*(a3 + 24) + 8 * v12);
    if ((a4 & 0x800) == 0)
    {
      break;
    }

LABEL_216:
    if (v124)
    {
      if (v11 < v111 && v12++ < v120)
      {
        continue;
      }
    }

    goto LABEL_225;
  }

  if ((*(v13 + 49) & 4) != 0)
  {
    if ((a4 & 0x280) != 0x80 && *(v13 + 29))
    {
      return v8;
    }

    goto LABEL_225;
  }

  v119 = v12;
  if ((a4 & 0x80) != 0)
  {
    *(v13 + 30) = 0;
  }

  v15 = 0;
  v122 = v13;
  v16 = HIDWORD(v7[1][9 * *(v13 + 16) + 4]);
  v118 = HIDWORD(v7[1][9 * *(v13 + 16) + 4]);
  do
  {
    if ((v11 & (1 << v15)) == 0)
    {
      v17 = &v14[12 * v15];
      v18 = *v17;
      if (*v17)
      {
        while (1)
        {
          v19 = *(v18 + 1);
          if ((v19 & 0x82000) == 0)
          {
            break;
          }

          if ((v19 & 0x80000) != 0)
          {
            v18 = *(*(v18 + 4) + 8);
            if (!v18)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v20 = *v18;
            if (v20 != 114)
            {
              goto LABEL_32;
            }

            v18 = *(v18 + 2);
            if (!v18)
            {
              goto LABEL_21;
            }
          }
        }

        v20 = *v18;
LABEL_32:
        if ((v20 | 2) == 0xAA && *(v18 + 11) == v16)
        {
          v21 = *(v18 + 12);
          v136 = 0;
          v135 = 0u;
          v134 = 0u;
          v133 = 0u;
          v132 = 0u;
          v127 = v112;
          v128 = v112;
          v129 = 0;
          v130 = 0;
          LODWORD(v131) = 0;
          HIDWORD(v131) = v114;
          DWORD1(v132) = v16;
          *(&v132 + 1) = 257;
          if (v21 == -2)
          {
            goto LABEL_20;
          }

          LOWORD(v135) = v21;
          v22 = sub_181972F4C(&v127);
          if (!v22)
          {
            goto LABEL_20;
          }

          v23 = v22;
          v24 = 0;
          do
          {
            v25 = *(v23 + 5);
            if ((v25 & ~v121) == 0)
            {
              if (!v25)
              {
                v26 = v23[10];
                if ((v26 & 0x82) != 0)
                {
                  goto LABEL_52;
                }
              }

              if (!v24)
              {
                v24 = v23;
              }
            }

            v23 = sub_181972F4C(&v127);
          }

          while (v23);
          if (!v24)
          {
LABEL_19:
            v14 = v125;
LABEL_20:
            v16 = v118;
            goto LABEL_21;
          }

          LODWORD(v26) = v24[10];
          if (v26 != 1)
          {
LABEL_51:
            v23 = v24;
LABEL_52:
            v14 = v125;
            if ((v26 & 0x82) == 0 || (*(v18 + 12) & 0x80000000) != 0)
            {
LABEL_73:
              v11 |= 1 << v15;
            }

            else
            {
              v29 = *v17;
              v30 = *a1;
              v31 = sub_1818B4720(*a1, v29);
              if (!v31)
              {
                v31 = *(*v30 + 16);
              }

              v32 = *v23;
              v33 = 24;
              if ((*(*v23 + 4) & 0x400) != 0)
              {
                v34 = 24;
              }

              else
              {
                v34 = 16;
              }

              if ((*(*v23 + 4) & 0x400) != 0)
              {
                v33 = 16;
              }

              v35 = *(v32 + v34);
              if ((v35[5] & 2) != 0)
              {
                v38 = v30;
              }

              else
              {
                v36 = *(v32 + v33);
                if (!v36 || (v36[5] & 2) == 0)
                {
                  v37 = sub_1818B4720(v30, v35);
                  if (v37)
                  {
LABEL_68:
                    v39 = *v31;
                    for (i = *v37; ; ++i)
                    {
                      if (*v39 == *i)
                      {
                        if (!*v39)
                        {
                          goto LABEL_73;
                        }
                      }

                      else if (byte_181A20298[*v39] != byte_181A20298[*i])
                      {
                        goto LABEL_20;
                      }

                      ++v39;
                    }
                  }
                }

                v38 = v30;
                v35 = v36;
              }

              v37 = sub_1818B4720(v38, v35);
              if (v37)
              {
                goto LABEL_68;
              }
            }

            goto LABEL_20;
          }

          v27 = *(v13 + 52);
          if (!*(v13 + 52))
          {
            goto LABEL_19;
          }

          v28 = *(v13 + 64);
          v16 = v118;
          do
          {
            if (v24 == *v28)
            {
              goto LABEL_51;
            }

            ++v28;
            --v27;
          }

          while (v27);
          v14 = v125;
        }
      }
    }

LABEL_21:
    ++v15;
  }

  while (v15 != v8);
  v41 = *(v13 + 48);
  v126 = v11;
  if ((v41 & 0x1000) != 0)
  {
    v7 = a1;
    v12 = v119;
    goto LABEL_187;
  }

  v7 = a1;
  v12 = v119;
  if ((v41 & 0x100) == 0)
  {
    v42 = *(v13 + 32);
    if (v42 && (*(v42 + 99) & 4) == 0)
    {
      v44 = (v41 & 0x8000) == 0 && *(v42 + 98) != 0;
      v124 = v44;
      v104 = *(v42 + 96);
      if (!*(v42 + 96))
      {
        goto LABEL_187;
      }

      v103 = *(v42 + 94);
      goto LABEL_91;
    }

LABEL_4:
    LOBYTE(v8) = 0;
    return v8;
  }

  if (*(v13 + 40) && (*(v97 + 99) & 0x10) == 0 && sub_181978500(a1, v13, v119, v16, a2, a7, &v126))
  {
    goto LABEL_224;
  }

  v42 = 0;
  v103 = 0;
  v104 = 1;
LABEL_91:
  v45 = 0;
  v46 = 0;
  v99 = 0;
  v100 = 0;
  v47 = 0;
  v48 = 8;
  v113 = v42;
  while (1)
  {
    v49 = *(v13 + 24);
    if (v46 >= v49 || v46 < *(v13 + 54))
    {
      v50 = 1;
      v51 = 1;
      v52 = v101;
      goto LABEL_95;
    }

    v57 = *(v13 + 64);
    v58 = *(v57 + 8 * v46);
    v59 = *(v58 + 10);
    if ((v114 & v59) == 0)
    {
      break;
    }

    v60 = v124;
    if ((v59 & 0x180) != 0)
    {
      v60 = 0;
    }

    v124 = v60;
LABEL_172:
    ++v46;
    --v45;
    v48 += 8;
    if (v46 == v104)
    {
      goto LABEL_185;
    }
  }

  v52 = v101;
  if (v59)
  {
    v78 = *v58;
    v79 = v45 + (v49 - 1);
    v80 = (v57 + v48);
    while (1)
    {
      v50 = v79 == 0;
      if (!v79)
      {
        break;
      }

      v51 = 0;
      v81 = *v80++;
      --v79;
      if (*v81 == v78)
      {
        goto LABEL_95;
      }
    }

    v51 = 1;
  }

  else
  {
    v50 = 1;
    v51 = 1;
  }

LABEL_95:
  v105 = v48;
  v106 = v45;
  v110 = v47;
  if (!v42)
  {
    v55 = -1;
    if (v124)
    {
      v102 = 0;
      if (!v50)
      {
        goto LABEL_179;
      }

      goto LABEL_117;
    }

    v102 = 0;
LABEL_116:
    v124 = 0;
    if (!v50)
    {
      goto LABEL_179;
    }

    goto LABEL_117;
  }

  v53 = *(*(v42 + 8) + 2 * v46);
  v102 = *(*(v42 + 56) + v46) & 1;
  v54 = *(v42 + 24);
  if (v53 == *(v54 + 52))
  {
    LOWORD(v53) = -1;
  }

  v55 = v53;
  if (!v124)
  {
    goto LABEL_116;
  }

  if (v53 < 0)
  {
    v56 = v53 == -2;
LABEL_110:
    v61 = v124;
    if (v56)
    {
      v61 = 0;
    }

    v124 = v61;
  }

  else if (v46 >= v49)
  {
    v56 = (*(*(v54 + 8) + 16 * v53 + 8) & 0xF) == 0;
    goto LABEL_110;
  }

  if (!v50)
  {
    goto LABEL_179;
  }

LABEL_117:
  v62 = 0;
  while (2)
  {
    if ((v126 >> v62))
    {
      goto LABEL_119;
    }

    v63 = &v14[12 * v62];
    v64 = *v63;
    if (!*v63)
    {
      goto LABEL_119;
    }

    while (1)
    {
      v65 = *(v64 + 1);
      if ((v65 & 0x82000) == 0)
      {
        break;
      }

      if ((v65 & 0x80000) != 0)
      {
        v64 = *(*(v64 + 4) + 8);
        if (!v64)
        {
          goto LABEL_119;
        }
      }

      else
      {
        if (*v64 != 114)
        {
          break;
        }

        v64 = *(v64 + 2);
        if (!v64)
        {
          goto LABEL_119;
        }
      }
    }

    if (!v52)
    {
      v51 = 0;
    }

    if (v55 >= -1)
    {
      if ((*v64 | 2) == 0xAA && *(v64 + 11) == v16 && *(v64 + 12) == v55)
      {
        break;
      }

      goto LABEL_119;
    }

    v66 = *(*(v42 + 80) + 24 * v46 + 8);
    do
    {
      if ((v64[5] & 0x20) == 0)
      {
        break;
      }

      v64 = *(v64 + 2);
    }

    while (v64);
    for (; v66; v66 = *(v66 + 16))
    {
      if ((*(v66 + 5) & 0x20) == 0)
      {
        break;
      }
    }

    v67 = sub_181959260(0, v64, v66, v16);
    v42 = v113;
    if (v67)
    {
LABEL_119:
      if (!v51)
      {
        goto LABEL_179;
      }

      if (++v62 >= v8)
      {
        goto LABEL_179;
      }

      continue;
    }

    break;
  }

  if (v55 != -1)
  {
    v107 = v55;
    v68 = v52;
    v69 = v16;
    v70 = *a1;
    v71 = sub_1818B4720(*a1, *v63);
    if (!v71)
    {
      v71 = *(*v70 + 16);
    }

    v72 = *v71;
    v42 = v113;
    v73 = *(*(v113 + 64) + 8 * v46);
    v16 = v69;
    v52 = v68;
    v55 = v107;
    while (1)
    {
      if (*v72 == *v73)
      {
        if (!*v72)
        {
          break;
        }
      }

      else if (byte_181A20298[*v72] != byte_181A20298[*v73])
      {
        goto LABEL_119;
      }

      ++v72;
      ++v73;
    }
  }

  if ((a4 & 0x80) != 0)
  {
    *(v122 + 30) = v46 + 1;
  }

  if ((a4 & 0x40) != 0)
  {
    v74 = v62;
    v76 = v14[12 * v62 + 8];
    v13 = v122;
    if ((v76 & 2) != 0)
    {
      goto LABEL_167;
    }

    goto LABEL_169;
  }

  if (!v100)
  {
    v74 = v62;
    v77 = v14[12 * v62 + 8];
    v99 = v77 & 1 ^ v102;
    if ((v77 & 1) != v102)
    {
      *a7 |= 1 << v119;
    }

    v100 = 1;
    v13 = v122;
    if ((v77 & 2) != 0)
    {
      goto LABEL_167;
    }

LABEL_169:
    v47 = v110;
    if (v55 == -1)
    {
      v47 = 1;
    }

    v126 |= 1 << v74;
    v12 = v119;
    v48 = v105;
    v45 = v106;
    goto LABEL_172;
  }

  v74 = v62;
  v75 = v14[12 * v62 + 8];
  if ((v102 ^ v99) == (v75 & 1))
  {
    v100 = 1;
    v13 = v122;
    if ((v75 & 2) == 0)
    {
      goto LABEL_169;
    }

LABEL_167:
    if (v46 == *(v13 + 24))
    {
      v13 = v122;
      *(v122 + 48) |= 0x80000u;
      goto LABEL_169;
    }
  }

LABEL_179:
  v82 = v103 > v46 || v46 == 0;
  v83 = v124;
  if (v82)
  {
    v83 = 0;
  }

  v124 = v83;
  v12 = v119;
  v13 = v122;
  LOBYTE(v47) = v110;
LABEL_185:
  v7 = a1;
  if (v47)
  {
    v124 = 1;
    goto LABEL_188;
  }

LABEL_187:
  if (v124)
  {
LABEL_188:
    v84 = 0;
    v11 = v126;
    v116 |= *(v13 + 8);
    while (2)
    {
      if ((v11 & (1 << v84)) != 0)
      {
        goto LABEL_194;
      }

      v87 = *&v14[12 * v84];
      if (!v87)
      {
        v85 = 0;
LABEL_190:
        if ((v85 & ~v116) != 0)
        {
          v86 = 0;
        }

        else
        {
          v86 = 1 << v84;
        }

        v11 |= v86;
        v14 = v125;
        goto LABEL_194;
      }

      if (*v87 == 168 && (*(v87 + 1) & 0x20) == 0)
      {
        v90 = *(v87 + 11);
        if (*(v7 + 150) == v90)
        {
          v85 = 1;
          goto LABEL_190;
        }

        v91 = *(v7 + 149);
        if (v91 >= 2)
        {
          v92 = v108;
          v93 = 1;
          while (1)
          {
            v94 = *v92++;
            if (v94 == v90)
            {
              break;
            }

            if (v91 == ++v93)
            {
              goto LABEL_210;
            }
          }

          v85 = 1 << v93;
          goto LABEL_190;
        }
      }

      else if ((*(v87 + 1) & 0x810000) == 0)
      {
        v89 = *&v14[12 * v84];
        v85 = sub_1819725E8(v7 + 148, v87);
        if (v85)
        {
          goto LABEL_190;
        }

        v131 = 0x100000000;
        *&v132 = 0;
        v130 = 0;
        v127 = 0;
        v87 = v89;
LABEL_211:
        v128 = sub_1818C7E14;
        v129 = sub_18195A49C;
        sub_181959BA0(&v127, v87);
        if (WORD2(v131))
        {
          v85 = 0;
          goto LABEL_190;
        }

        v14 = v125;
LABEL_194:
        if (++v84 == v8)
        {
          v126 = v11;
          goto LABEL_216;
        }

        continue;
      }

      break;
    }

LABEL_210:
    v131 = 0x100000000;
    *&v132 = 0;
    v130 = 0;
    v127 = 0;
    goto LABEL_211;
  }

LABEL_224:
  LOBYTE(v124) = 0;
  v11 = v126;
LABEL_225:
  if (v11 != v111)
  {
    if (!v124)
    {
      while (v8 >= 2)
      {
        if (((-1 << --v8) | v11) == 0xFFFFFFFFFFFFFFFFLL)
        {
          return v8;
        }
      }

      goto LABEL_4;
    }

    LOBYTE(v8) = -1;
  }

  return v8;
}

uint64_t sub_181978500(uint64_t a1, uint64_t a2, char a3, int a4, int *a5, void *a6, uint64_t *a7)
{
  v7 = 0;
  v8 = *(a2 + 40);
  v9 = *a7;
  v10 = a5 + 6;
  v11 = -1;
  do
  {
    v12 = 1 << v7++;
    v10 += 6;
    ++v11;
  }

  while ((v12 & v9) != 0);
  v13 = *v8;
  if (v13 < 1)
  {
    return 0;
  }

  v14 = *a5;
  v15 = v11;
  if (v14 > v11)
  {
    v15 = *a5;
  }

  if (v15 + 1 == v7)
  {
    return 0;
  }

  if (!*(v8 + 14))
  {
    return 0;
  }

  v16 = *(v10 - 5);
  if ((*v16 | 2) != 0xAA || *(v16 + 11) != a4 || *(v16 + 12) != *(v8 + 14) - 1)
  {
    return 0;
  }

  v17 = *(a1 + 60);
  if ((v17 & 0x40) == 0)
  {
    if (((*(v8 + 24) ^ *(v10 - 24)) & 2) == 0)
    {
      if (((*(v8 + 24) ^ *(v10 - 24)) & 1) == 0)
      {
        goto LABEL_14;
      }

      if ((*(a2 + 51) & 2) == 0)
      {
        *a6 |= 1 << a3;
        v9 = *a7;
        v18 = 1;
        goto LABEL_15;
      }
    }

    return 0;
  }

LABEL_14:
  v18 = 0;
LABEL_15:
  v19 = v9 | v12;
  *a7 = v19;
  if (v13 != 1)
  {
    if (v14 > v11)
    {
      v11 = v14;
    }

    v21 = (v11 - v7 + 1) - 1;
    v22 = v8 + 13;
    v23 = v13 - 1;
    while (v21)
    {
      if (!*v22)
      {
        break;
      }

      v24 = *(v10 - 2);
      if ((*v24 | 2) != 0xAA)
      {
        break;
      }

      if (*(v24 + 11) != a4)
      {
        break;
      }

      if (*(v24 + 12) != *v22 - 1)
      {
        break;
      }

      if ((v17 & 0x40) == 0)
      {
        v25 = *v10;
        v26 = *(v22 - 4);
        if (((v26 ^ v25) & 2) != 0 || (v26 & 1 ^ v18) != (v25 & 1))
        {
          break;
        }
      }

      result = 1;
      v19 |= 1 << v7;
      *a7 = v19;
      ++v7;
      --v21;
      v22 += 12;
      v10 += 6;
      if (!--v23)
      {
        return result;
      }
    }
  }

  return 1;
}

void *sub_1819786B0(void *result, uint64_t **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = result;
    do
    {
      *a2 = *(v2 + 24);
      if (*v2)
      {
        sub_1819439E0(v4, *v2);
      }

      result = sub_181929C84(v4, v2);
      v2 = *a2;
    }

    while (*a2);
  }

  return result;
}

uint64_t *sub_181978718(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_181902484(*(a2 + 96) + 1, 0x100004077774924);
  *(a2 + 32) = v5;
  if (v5)
  {
    if (*(a2 + 96))
    {
      v6 = 0;
      v7 = 8;
      do
      {
        v10 = *(*(a2 + 8) + 2 * v6);
        if (v10 < 0)
        {
          if (v10 == -1)
          {
            v8 = 68;
          }

          else
          {
            v8 = sub_1818D0A24(*(*(a2 + 80) + v7));
          }
        }

        else
        {
          v8 = *(*(v4 + 8) + 16 * v10 + 9);
        }

        v9 = v8;
        if (v8 <= 65)
        {
          v9 = 65;
        }

        if (v9 >= 67)
        {
          LOBYTE(v9) = 67;
        }

        *(*(a2 + 32) + v6++) = v9;
        v7 += 24;
      }

      while (v6 < *(a2 + 96));
      v5 = *(a2 + 32);
    }

    else
    {
      v6 = 0;
    }

    *(v5 + v6) = 0;
    return *(a2 + 32);
  }

  if (*(a1 + 103) || *(a1 + 104))
  {
    return 0;
  }

  *(a1 + 103) = 1;
  if (*(a1 + 220) >= 1)
  {
    *(a1 + 424) = 1;
  }

  ++*(a1 + 432);
  *(a1 + 436) = 0;
  result = *(a1 + 344);
  if (result)
  {
    sub_181910730(result, "out of memory");
    v12 = *(a1 + 344);
    *(v12 + 24) = 7;
    v13 = *(v12 + 216);
    if (v13)
    {
      result = 0;
      do
      {
        ++*(v13 + 52);
        *(v13 + 24) = 7;
        v13 = *(v13 + 216);
      }

      while (v13);
      return result;
    }

    return 0;
  }

  return result;
}

double sub_181978894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = (*(a2 + 8) + 72 * *(a3 + 64) + 8);
  v6 = *(a1 + 16);
  v7 = *a1;
  v35 = 0x10000000000;
  v32 = v7;
  v33 = &v36;
  v34 = 0x7FFFFFFD00000064;
  sqlite3_str_appendf(&v32, "BLOOM FILTER ON %S (", v5);
  v10 = *(a3 + 96);
  if (*(v10 + 49))
  {
    if ((*(v5[2] + 52) & 0x8000000000000000) != 0)
    {
      sqlite3_str_appendf(&v32, "rowid=?");
    }

    else
    {
      sqlite3_str_appendf(&v32, "%s=?");
    }
  }

  else
  {
    v11 = *(v10 + 54);
    if (v11 < *(v10 + 24))
    {
      do
      {
        v13 = *(v10 + 32);
        v14 = *(*(v13 + 8) + 2 * v11);
        if (v14 == 65534)
        {
          v15 = "<expr>";
        }

        else if (v14 == 0xFFFF)
        {
          v15 = "rowid";
        }

        else
        {
          v15 = *(*(*(v13 + 24) + 8) + 16 * v14);
        }

        if (v11 > *(v10 + 54))
        {
          v16 = v35;
          if (v35 + 5 < v34)
          {
            LODWORD(v35) = v35 + 5;
            v12 = &v33[v16];
            v12[4] = 32;
            *v12 = 1145979168;
          }

          else
          {
            sub_181906814(&v32, " AND ", 5, v8);
          }
        }

        sqlite3_str_appendf(&v32, "%s=?", v15);
        ++v11;
      }

      while (v11 < *(v10 + 24));
    }
  }

  v17 = v35;
  if (v35 + 1 >= v34)
  {
    sub_181906814(&v32, ")", 1, v8);
    v18 = v33;
    if (!v33)
    {
      goto LABEL_24;
    }
  }

  else
  {
    LODWORD(v35) = v35 + 1;
    v33[v17] = 41;
    v18 = v33;
    if (!v33)
    {
      goto LABEL_24;
    }
  }

  v18[v35] = 0;
  if (HIDWORD(v34) && (v35 & 0x40000000000) == 0)
  {
    v19 = sub_18192A12C(&v32);
    goto LABEL_25;
  }

LABEL_24:
  v19 = v33;
LABEL_25:
  v20 = *(a1 + 312);
  v21 = *(v6 + 144);
  if (*(v6 + 148) <= v21)
  {
    v21 = sub_18194C8AC(v6, 188, v21, v20, 0);
  }

  else
  {
    *(v6 + 144) = v21 + 1;
    v22 = *(v6 + 136) + 40 * v21;
    *v22 = 188;
    *(v22 + 4) = v21;
    *(v22 + 8) = v20;
    *(v22 + 12) = 0;
    *(v22 + 28) = 0;
    *(v22 + 20) = 0;
    *(v22 + 36) = 0;
  }

  if (*(*v6 + 103))
  {
    if (v19)
    {
      sub_181939EC8(*v6, v19);
    }
  }

  else
  {
    if (v21 < 0)
    {
      v21 = *(v6 + 144) - 1;
    }

    v23 = *(v6 + 136) + 40 * v21;
    if (*(v23 + 1))
    {
      sub_18194CB90(v6, v23, v19, 4294967290);
    }

    else if (v19)
    {
      *(v23 + 16) = v19;
      *(v23 + 1) = -6;
    }
  }

  v24 = *v6;
  if ((*(*v6 + 49) & 4) != 0)
  {
    v25 = *(v6 + 144);
    v26 = *(v6 + 392);
    v27 = 56 * v26;
    v28 = v27 + 56;
    v29 = *(v6 + 400);
    if (v29)
    {
      if (*(v24 + 512) > v29)
      {
        v30 = *(v6 + 392);
        if (*(v24 + 496) <= v29)
        {
          if (v28 < 0x81)
          {
LABEL_49:
            *(v6 + 392) = v26 + 1;
            v31 = &v29[7 * v30];
            result = 0.0;
            *(v31 + 1) = 0u;
            *(v31 + 2) = 0u;
            *v31 = 0u;
            v31[6] = 0;
            *v31 = v25 - 1;
            *(v31 + 7) = 0;
            *(v31 + 8) = 0;
            *(v31 + 20) = 0;
            *(v6 + 400) = v29;
            return result;
          }
        }

        else if (*(v24 + 504) <= v29 && v28 <= *(v24 + 438))
        {
          goto LABEL_49;
        }
      }

      v29 = sub_181929F38(v24, v29, v28, 0x1010040CEB2E6A9);
      if (!v29)
      {
        return result;
      }

LABEL_48:
      v26 = *(v6 + 392);
      v30 = v26;
      goto LABEL_49;
    }

    v29 = sub_181929E8C(v24, v27 + 56, 0x1010040CEB2E6A9);
    if (v29)
    {
      goto LABEL_48;
    }
  }

  return result;
}

void *sub_181978CA8(void *result, int a2, uint64_t a3, uint64_t a4, char a5)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = result[19];
  if (!v5)
  {
    v5 = result;
  }

  if (*(v5 + 301) == 2 || (*(*result + 49) & 4) != 0)
  {
    v6 = result[2];
    v7 = *(*v6 + 103) ? &byte_1EA831A58 : (v6[17] + 40 * a2);
    v8 = *(a4 + 64);
    v9 = *result;
    v35 = 0u;
    v36 = 0u;
    if (!*(v9 + 103))
    {
      v10 = a3 + 72 * v8 + 8;
      v11 = *(a4 + 96);
      v12 = *(v11 + 48);
      v13 = (v12 & 0x30) != 0 || (v12 & 0x400) == 0 && *(v11 + 24) || (a5 & 3) != 0;
      *&v35 = v9;
      *(&v35 + 1) = &v37;
      *&v36 = 0x7FFFFFFD00000064;
      DWORD2(v36) = 0;
      WORD6(v36) = 256;
      v14 = "SCAN";
      if (v13)
      {
        v14 = "SEARCH";
      }

      sqlite3_str_appendf(&v35, "%s %S", v14, v10);
      if ((v12 & 0x500) != 0)
      {
        if ((v12 & 0x100) != 0 && (v12 & 0xF) != 0)
        {
          sqlite3_str_appendf(&v35, " USING INTEGER PRIMARY KEY (%s", "rowid");
          if ((v12 & 5) == 0 && (v12 & 0x30) == 0x30)
          {
            sqlite3_str_appendf(&v35, ">? AND %s", "rowid");
          }

          sqlite3_str_appendf(&v35, "%c?)");
        }

        else if ((v12 & 0x400) != 0)
        {
          v18 = DWORD2(v36);
          if (DWORD2(v36) + 21 >= v36)
          {
            sub_181906814(&v35, " VIRTUAL TABLE INDEX ", 21, v15);
          }

          else
          {
            DWORD2(v36) += 21;
            qmemcpy((*(&v35 + 1) + v18), " VIRTUAL TABLE INDEX ", 21);
          }

          if ((*(v11 + 28) & 4) != 0)
          {
            v19 = "0x%x:%s";
          }

          else
          {
            v19 = "%d:%s";
          }

          sqlite3_str_appendf(&v35, v19, *(v11 + 24), *(v11 + 32));
        }

        goto LABEL_73;
      }

      v16 = *(v11 + 32);
      if ((*(*(v10 + 16) + 48) & 0x80) != 0 && (*(v16 + 99) & 3) == 2)
      {
        if (!v13)
        {
LABEL_73:
          if ((*(v10 + 24) & 8) != 0)
          {
            sqlite3_str_appendf(&v35, " LEFT-JOIN");
          }

          v33 = *(v7 + 2);
          if (v33)
          {
            sub_181929C84(v9, v33);
          }

          v7[1] = -6;
          if (*(&v35 + 1) && (*(*(&v35 + 1) + DWORD2(v36)) = 0, DWORD1(v36)) && (BYTE13(v36) & 4) == 0)
          {
            result = sub_18192A12C(&v35);
          }

          else
          {
            result = *(&v35 + 1);
          }

          *(v7 + 2) = result;
          return result;
        }

        v17 = "PRIMARY KEY";
      }

      else if ((v12 & 0x20000) != 0)
      {
        v17 = "AUTOMATIC PARTIAL COVERING INDEX";
      }

      else if ((v12 & 0x4000) != 0)
      {
        v17 = "AUTOMATIC COVERING INDEX";
      }

      else if ((v12 & 0x4000040) != 0)
      {
        v17 = "COVERING INDEX %s";
      }

      else
      {
        v17 = "INDEX %s";
      }

      v20 = DWORD2(v36);
      if (DWORD2(v36) + 7 >= v36)
      {
        sub_181906814(&v35, " USING ", 7, v15);
      }

      else
      {
        DWORD2(v36) += 7;
        v21 = (*(&v35 + 1) + v20);
        *(v21 + 3) = 541544009;
        *v21 = 1230198048;
      }

      sqlite3_str_appendf(&v35, v17, *v16);
      v23 = *(v11 + 32);
      v24 = *(v11 + 24);
      v25 = *(v11 + 54);
      if (*(v11 + 24) || (*(v11 + 48) & 0x30) != 0)
      {
        v26 = DWORD2(v36);
        if (DWORD2(v36) + 2 >= v36)
        {
          sub_181906814(&v35, " (", 2, v22);
        }

        else
        {
          DWORD2(v36) += 2;
          *(*(&v35 + 1) + v26) = 10272;
        }

        if (v24)
        {
          if (v25)
          {
            sqlite3_str_appendf(&v35, "ANY(%s)");
          }

          else
          {
            sqlite3_str_appendf(&v35, "%s=?");
          }

          if (v24 == 1)
          {
            v24 = 1;
          }

          else
          {
            v34 = v10;
            for (i = 1; i != v24; ++i)
            {
              v29 = DWORD2(v36);
              if (DWORD2(v36) + 5 < v36)
              {
                DWORD2(v36) += 5;
                v28 = *(&v35 + 1) + v29;
                *(v28 + 4) = 32;
                *v28 = 1145979168;
              }

              else
              {
                sub_181906814(&v35, " AND ", 5, v22);
              }

              if (i >= v25)
              {
                sqlite3_str_appendf(&v35, "%s=?");
              }

              else
              {
                sqlite3_str_appendf(&v35, "ANY(%s)");
              }
            }

            v10 = v34;
          }
        }

        v30 = *(v11 + 48);
        v31 = v24;
        if ((v30 & 0x20) != 0)
        {
          sub_181979280(&v35, v23, *(v11 + 26), v24, v24, ">");
          v30 = *(v11 + 48);
          v31 = 1;
        }

        if ((v30 & 0x10) != 0)
        {
          sub_181979280(&v35, v23, *(v11 + 28), v24, v31, "<");
        }

        v32 = DWORD2(v36);
        if (DWORD2(v36) + 1 >= v36)
        {
          sub_181906814(&v35, ")", 1, v22);
        }

        else
        {
          ++DWORD2(v36);
          *(*(&v35 + 1) + v32) = 41;
        }
      }

      goto LABEL_73;
    }
  }

  return result;
}

void sub_181979280(sqlite3_str *a1, uint64_t a2, int a3, uint64_t a4, int a5, _BYTE *a6)
{
  v6 = a4;
  if (a5)
  {
    if (!a1)
    {
      sub_1819012D0(34349);
      if (a3 <= 1)
      {
        goto LABEL_13;
      }

LABEL_19:
      sub_1819012D0(34349);
      v13 = 1;
      goto LABEL_23;
    }

    v10 = *(a1 + 6);
    if ((v10 + 5) >= *(a1 + 4))
    {
      sub_181906814(a1, " AND ", 5, a4);
      if (a3 <= 1)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    *(a1 + 6) = v10 + 5;
    v11 = *(a1 + 1) + v10;
    *(v11 + 4) = 32;
    *v11 = 1145979168;
  }

  if (a3 > 1)
  {
LABEL_10:
    if (a1)
    {
      v12 = *(a1 + 6);
      if ((v12 + 1) >= *(a1 + 4))
      {
        v13 = 1;
        sub_181906814(a1, "(", 1, a4);
      }

      else
      {
        *(a1 + 6) = v12 + 1;
        *(*(a1 + 1) + v12) = 40;
        v13 = 1;
      }

LABEL_23:
      v16 = *(*(a2 + 8) + 2 * v6);
      if (v16 == 65534)
      {
        v17 = "<expr>";
      }

      else if (v16 == 0xFFFF)
      {
        v17 = "rowid";
      }

      else
      {
        v17 = *(*(*(a2 + 24) + 8) + 16 * v16);
      }

      sqlite3_str_appendall(a1, v17);
      if (a3 != 1)
      {
        v19 = 2 * v6 + 2;
        v20 = a3 - 1;
        do
        {
          if (a1)
          {
            v22 = *(a1 + 6);
            if ((v22 + 1) >= *(a1 + 4))
            {
              sub_181906814(a1, ",", 1, a4);
            }

            else
            {
              *(a1 + 6) = v22 + 1;
              *(*(a1 + 1) + v22) = 44;
            }
          }

          else
          {
            sub_1819012D0(34349);
          }

          v23 = *(*(a2 + 8) + v19);
          if (v23 == 65534)
          {
            v21 = "<expr>";
          }

          else if (v23 == 0xFFFF)
          {
            v21 = "rowid";
          }

          else
          {
            v21 = *(*(*(a2 + 24) + 8) + 16 * v23);
          }

          sqlite3_str_appendall(a1, v21);
          v19 += 2;
          --v20;
        }

        while (v20);
      }

      if (v13)
      {
        if (a1)
        {
          v18 = *(a1 + 6);
          if ((v18 + 1) >= *(a1 + 4))
          {
            sub_181906814(a1, ")", 1, a4);
          }

          else
          {
            *(a1 + 6) = v18 + 1;
            *(*(a1 + 1) + v18) = 41;
          }

          if (a6)
          {
            v29 = *(a1 + 6);
            if ((v29 + 1) >= *(a1 + 4))
            {
              sub_181906814(a1, a6, 1, a4);
            }

            else
            {
              *(a1 + 6) = v29 + 1;
              *(*(a1 + 1) + v29) = *a6;
            }
          }

          else
          {
            sub_1819012D0(34353);
          }

          v30 = *(a1 + 6);
          if ((v30 + 1) >= *(a1 + 4))
          {
            v36 = 1;
            sub_181906814(a1, "(", 1, a4);
          }

          else
          {
            *(a1 + 6) = v30 + 1;
            *(*(a1 + 1) + v30) = 40;
            v36 = 1;
          }

          goto LABEL_62;
        }

        sub_1819012D0(34349);
        sub_1819012D0(34349);
        sub_1819012D0(34349);
        v36 = 1;
LABEL_49:
        v24 = (a1 + 24);
        v25 = (a1 + 16);
        v26 = (a1 + 8);
        sub_1819012D0(34349);
        v27 = 1;
        v28 = a3 - 1;
        if (a3 == 1)
        {
          goto LABEL_66;
        }

        goto LABEL_74;
      }

      v14 = 1;
      if (a1)
      {
        goto LABEL_15;
      }

LABEL_46:
      sub_1819012D0(34349);
      if ((v14 & 1) == 0)
      {
        return;
      }

      v36 = 0;
      goto LABEL_49;
    }

    goto LABEL_19;
  }

LABEL_13:
  v13 = 0;
  v14 = 0;
  if (a3 >= 1)
  {
    goto LABEL_23;
  }

  if (!a1)
  {
    goto LABEL_46;
  }

LABEL_15:
  if (a6)
  {
    v15 = *(a1 + 6);
    if ((v15 + 1) >= *(a1 + 4))
    {
      sub_181906814(a1, a6, 1, a4);
      if ((v14 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      *(a1 + 6) = v15 + 1;
      *(*(a1 + 1) + v15) = *a6;
      if ((v14 & 1) == 0)
      {
        return;
      }
    }
  }

  else
  {
    sub_1819012D0(34353);
    if ((v14 & 1) == 0)
    {
      return;
    }
  }

  v36 = 0;
LABEL_62:
  v24 = (a1 + 24);
  v31 = *(a1 + 6);
  v26 = (a1 + 8);
  v25 = (a1 + 16);
  if ((v31 + 1) >= *(a1 + 4))
  {
    sub_181906814(a1, "?", 1, a4);
    v27 = 0;
    v28 = a3 - 1;
    if (a3 == 1)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v27 = 0;
    *v24 = v31 + 1;
    *(*v26 + v31) = 63;
    v28 = a3 - 1;
    if (a3 == 1)
    {
      goto LABEL_66;
    }
  }

  do
  {
LABEL_74:
    if (v27)
    {
      sub_1819012D0(34349);
      sub_1819012D0(34349);
    }

    else
    {
      v33 = *v24;
      if ((v33 + 1) >= *v25)
      {
        sub_181906814(a1, ",", 1, a4);
      }

      else
      {
        *v24 = v33 + 1;
        *(*v26 + v33) = 44;
      }

      v34 = *v24;
      if ((v34 + 1) >= *v25)
      {
        sub_181906814(a1, "?", 1, a4);
      }

      else
      {
        *v24 = v34 + 1;
        *(*v26 + v34) = 63;
      }
    }

    --v28;
  }

  while (v28);
LABEL_66:
  if (v36)
  {
    if (a1)
    {
      v32 = *(a1 + 6);
      if ((v32 + 1) >= *(a1 + 4))
      {

        sub_181906814(a1, ")", 1, a4);
      }

      else
      {
        *(a1 + 6) = v32 + 1;
        *(*(a1 + 1) + v32) = 41;
      }
    }

    else
    {

      sub_1819012D0(34349);
    }
  }
}

uint64_t sub_181979840(uint64_t result, unsigned __int8 *a2, uint64_t a3, unsigned int a4)
{
  v4 = a3;
  v5 = a2;
  v6 = result;
  if (!a2)
  {
    goto LABEL_8;
  }

  v7 = *a2;
  if (v7 == 176)
  {
    v7 = a2[2];
  }

  v8 = a2;
  if (v7 != 177)
  {
    if (v7 != 139)
    {
      goto LABEL_8;
    }

    v8 = *(a2 + 4);
  }

  if (**(v8 + 4) < 2)
  {
LABEL_8:
    if (!*(result + 16))
    {
      return result;
    }

    result = sub_1818B8080(result, a2, a3);
    if (result == v4)
    {
      return result;
    }

    v9 = result;
    if (!v5)
    {
      goto LABEL_44;
    }

    while (1)
    {
      v10 = *(v5 + 1);
      if ((v10 & 0x82000) == 0)
      {
        break;
      }

      if ((v10 & 0x80000) != 0)
      {
        v5 = *(*(v5 + 4) + 8);
        if (!v5)
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (*v5 != 114)
        {
          break;
        }

        v5 = *(v5 + 2);
        if (!v5)
        {
          goto LABEL_44;
        }
      }
    }

    if ((v10 & 0x400000) != 0 || *v5 == 176)
    {
      v25 = 80;
    }

    else
    {
LABEL_44:
      v25 = 81;
    }

    result = *(v6 + 16);
    v26 = *(result + 144);
    if (*(result + 148) > v26)
    {
      *(result + 144) = v26 + 1;
      v27 = *(result + 136) + 40 * v26;
      *v27 = v25;
      *(v27 + 2) = 0;
      *(v27 + 4) = v9;
      *(v27 + 8) = v4;
      *(v27 + 1) = 0;
      *(v27 + 12) = 0;
      *(v27 + 28) = 0;
      *(v27 + 20) = 0;
      *(v27 + 36) = 0;
      return result;
    }

    v28 = v4;
    v22 = 0;
    goto LABEL_50;
  }

  if ((a2[5] & 0x10) != 0)
  {
    v20 = *(result + 16);
    result = sub_1818E1564(result, a2);
    v9 = result;
    v22 = a4 - 1;
    v23 = *(v20 + 144);
    if (*(v20 + 148) > v23)
    {
      *(v20 + 144) = v23 + 1;
      v24 = *(v20 + 136) + 40 * v23;
      *v24 = 80;
      *(v24 + 4) = result;
      *(v24 + 8) = v4;
      *(v24 + 12) = v22;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0;
      *(v24 + 16) = 0;
      return result;
    }

    result = v20;
    v25 = 80;
    v28 = v4;
LABEL_50:

    return sub_18194C8AC(result, v25, v9, v28, v22);
  }

  if (a4 >= 1)
  {
    v11 = 0;
    v12 = *(a2 + 4) + 8;
    v13 = a4;
    do
    {
      if (*(v6 + 16))
      {
        v15 = *(v12 + 24 * v11);
        result = sub_1818B8080(v6, v15, (v11 + v4));
        if (result != v11 + v4)
        {
          v16 = result;
          if (!v15)
          {
            goto LABEL_36;
          }

          while (1)
          {
            v17 = *(v15 + 1);
            if ((v17 & 0x82000) == 0)
            {
              break;
            }

            if ((v17 & 0x80000) != 0)
            {
              v15 = *(*(v15 + 4) + 8);
              if (!v15)
              {
                goto LABEL_36;
              }
            }

            else
            {
              if (*v15 != 114)
              {
                break;
              }

              v15 = *(v15 + 2);
              if (!v15)
              {
                goto LABEL_36;
              }
            }
          }

          if ((v17 & 0x400000) != 0 || *v15 == 176)
          {
            v18 = 80;
          }

          else
          {
LABEL_36:
            v18 = 81;
          }

          result = *(v6 + 16);
          v19 = *(result + 144);
          if (*(result + 148) > v19)
          {
            *(result + 144) = v19 + 1;
            v14 = *(result + 136) + 40 * v19;
            *v14 = v18;
            *(v14 + 2) = 0;
            *(v14 + 4) = v16;
            *(v14 + 8) = v11 + v4;
            *(v14 + 1) = 0;
            *(v14 + 12) = 0;
            *(v14 + 28) = 0;
            *(v14 + 20) = 0;
            *(v14 + 36) = 0;
          }

          else
          {
            result = sub_18194C8AC(result, v18, v16, v11 + v4, 0);
          }
        }
      }

      ++v11;
    }

    while (v11 != v13);
  }

  return result;
}

void *sub_181979B58(void *result, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v7 = *(a2 + 64);
  if (a3 + 1 < v7)
  {
    v31[11] = v5;
    v31[12] = v6;
    v11 = result;
    v12 = result + 23;
    v13 = a3 + 1;
    v14 = a2 + 120 * a3 + 976;
    do
    {
      if (!*(v14 + 52))
      {
        goto LABEL_6;
      }

      v16 = *(v14 + 96);
      if (*(v16 + 54) || (*v16 & a5) != 0)
      {
        goto LABEL_6;
      }

      *(v14 + 12) = a4;
      if (*(v16 + 49))
      {
        v22 = **(v16 + 64);
        if (*(v11 + 31))
        {
          v23 = *(v11 + 31) - 1;
          *(v11 + 31) = v23;
          v24 = *(v12 + v23);
        }

        else
        {
          v24 = (*(v11 + 15) + 1);
          *(v11 + 15) = v24;
        }

        v25 = sub_1818D0C40(v11, v22, v14, 0, 0, v24);
        v26 = v11[2];
        v27 = *(v26 + 144);
        if (*(v26 + 148) <= v27)
        {
          sub_18194C8AC(v26, 13, v25, a4, 0);
        }

        else
        {
          *(v26 + 144) = v27 + 1;
          v28 = *(v26 + 136) + 40 * v27;
          *v28 = 13;
          *(v28 + 4) = v25;
          *(v28 + 8) = a4;
          *(v28 + 12) = 0;
          *(v28 + 28) = 0;
          *(v28 + 20) = 0;
          *(v28 + 36) = 0;
        }

        result = v11[2];
        v29 = *(v14 + 52);
        v30 = *(result + 36);
        if (*(result + 37) <= v30)
        {
          result = sub_18194CAFC(result, 64, v29, a4, v25, 1);
          goto LABEL_5;
        }

        *(result + 36) = v30 + 1;
        v15 = result[17] + 40 * v30;
        *v15 = 64832;
        *(v15 + 4) = v29;
        *(v15 + 8) = a4;
        *(v15 + 12) = v25;
        *(v15 + 16) = 1;
      }

      else
      {
        v17 = *(v16 + 24);
        v31[0] = 0;
        v18 = sub_181979DC8(v11, v14, 0, 0, v31);
        v19 = v31[0];
        sub_18197A62C(v11, v18, v17, v31[0]);
        if (v19)
        {
          sub_181929C84(*v11, v19);
        }

        result = v11[2];
        v20 = *(v14 + 52);
        v21 = *(result + 36);
        if (*(result + 37) <= v21)
        {
          result = sub_18194CAFC(result, 64, v20, a4, v18, v17);
          goto LABEL_5;
        }

        *(result + 36) = v21 + 1;
        v15 = result[17] + 40 * v21;
        *v15 = 64832;
        *(v15 + 4) = v20;
        *(v15 + 8) = a4;
        *(v15 + 12) = v18;
        *(v15 + 16) = v17;
      }

      *(v15 + 24) = 0;
      *(v15 + 32) = 0;
LABEL_5:
      *(v14 + 52) = 0;
      *(v14 + 12) = 0;
      v7 = *(a2 + 64);
LABEL_6:
      ++v13;
      v14 += 120;
    }

    while (v13 < v7);
  }

  return result;
}

uint64_t sub_181979DC8(uint64_t a1, uint64_t a2, _BOOL4 a3, int a4, void *a5)
{
  v6 = *(a1 + 16);
  v7 = *(a2 + 96);
  v8 = *(v7 + 54);
  v9 = *(v7 + 54);
  v67 = v7;
  v68 = *(v7 + 24);
  v10 = *(v7 + 32);
  v11 = *(a1 + 60);
  v12 = (v11 + 1);
  v65 = v68 + a4;
  *(a1 + 60) = v11 + v68 + a4;
  v13 = *a1;
  v14 = *(v10 + 32);
  if (v14 || (v14 = sub_181978718(*a1, v10)) != 0)
  {
    v15 = strlen(v14);
    v16 = v15;
    if (v13)
    {
      v17 = sub_181929E8C(v13, v15 + 1, 354097263);
      if (v17)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v17 = sub_181902484(v15 + 1, 354097263);
      if (v17)
      {
LABEL_5:
        v66 = v17;
        memcpy(v17, v14, v16 + 1);
        if (!v9)
        {
          goto LABEL_35;
        }

        goto LABEL_9;
      }
    }
  }

  v66 = 0;
  if (!v9)
  {
    goto LABEL_35;
  }

LABEL_9:
  v18 = *(a2 + 8);
  v19 = v11 + v8;
  v20 = *(v6 + 144);
  if (*(v6 + 148) <= v20)
  {
    sub_18194C8AC(v6, 75, 0, v11 + 1, v19);
  }

  else
  {
    *(v6 + 144) = v20 + 1;
    v21 = *(v6 + 136) + 40 * v20;
    *v21 = 75;
    *(v21 + 8) = v12;
    *(v21 + 12) = v19;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0;
    *(v21 + 16) = 0;
  }

  if (a3)
  {
    v22 = 32;
  }

  else
  {
    v22 = 36;
  }

  v23 = *(v6 + 144);
  if (*(v6 + 148) <= v23)
  {
    sub_18194C8AC(v6, v22, v18, 0, 0);
  }

  else
  {
    *(v6 + 144) = v23 + 1;
    v24 = *(v6 + 136) + 40 * v23;
    *v24 = v22;
    *(v24 + 2) = 0;
    *(v24 + 4) = v18;
    *(v24 + 1) = 0;
    *(v24 + 8) = 0u;
    *(v24 + 24) = 0u;
  }

  v25 = *(v6 + 144);
  if (*(v6 + 148) <= v25)
  {
    v25 = sub_18194C8AC(v6, 9, 0, 0, 0);
  }

  else
  {
    *(v6 + 144) = v25 + 1;
    v26 = *(v6 + 136) + 40 * v25;
    *v26 = 9;
    *(v26 + 1) = 0u;
    *(v26 + 17) = 0u;
    *(v26 + 32) = 0;
  }

  if (a3)
  {
    v27 = 21;
  }

  else
  {
    v27 = 24;
  }

  v28 = *(v6 + 144);
  if (*(v6 + 148) <= v28)
  {
    v28 = sub_18194CAFC(v6, v27, v18, 0, v12, v9);
  }

  else
  {
    *(v6 + 144) = v28 + 1;
    v29 = *(v6 + 136) + 40 * v28;
    *v29 = v27;
    *(v29 + 2) = 0;
    *(v29 + 4) = v18;
    *(v29 + 8) = 0;
    *(v29 + 12) = v12;
    *(v29 + 16) = v9;
    *(v29 + 1) = -3;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0;
  }

  *(a2 + 20) = v28;
  if (*(*v6 + 103))
  {
    v30 = &byte_1EA831A58;
  }

  else
  {
    v30 = (*(v6 + 136) + 40 * v25);
  }

  v31 = 0;
  *(v30 + 2) = *(v6 + 144);
  v32 = v11 + 1;
  do
  {
    v34 = *(v6 + 144);
    if (*(v6 + 148) > v34)
    {
      *(v6 + 144) = v34 + 1;
      v33 = *(v6 + 136) + 40 * v34;
      *v33 = 94;
      *(v33 + 4) = v18;
      *(v33 + 8) = v31;
      *(v33 + 12) = v32;
      *(v33 + 24) = 0;
      *(v33 + 32) = 0;
      *(v33 + 16) = 0;
    }

    else
    {
      sub_18194C8AC(v6, 94, v18, v31, v32);
    }

    ++v31;
    ++v32;
    --v9;
  }

  while (v9);
LABEL_35:
  if (v8 < v68)
  {
    while (1)
    {
      v35 = *(*(v67 + 64) + 8 * v8);
      v36 = sub_1818D0C40(a1, v35, a2, v8, a3, (v12 + v8));
      if (v36 == v12 + v8)
      {
        goto LABEL_50;
      }

      if (v65 == 1)
      {
        break;
      }

      v39 = *(v6 + 144);
      if (*(v6 + 148) <= v39)
      {
        sub_18194C8AC(v6, 80, v36, v12 + v8, 0);
        v38 = *(v35 + 20);
        if (v38)
        {
LABEL_82:
          if (!v66 || (*(*v35 + 4) & 0x1000) == 0)
          {
            goto LABEL_39;
          }

          v51 = &v66[v8];
          goto LABEL_38;
        }
      }

      else
      {
        *(v6 + 144) = v39 + 1;
        v40 = *(v6 + 136) + 40 * v39;
        *v40 = 80;
        *(v40 + 4) = v36;
        *(v40 + 8) = v12 + v8;
        *(v40 + 12) = 0;
        *(v40 + 28) = 0;
        *(v40 + 20) = 0;
        *(v40 + 36) = 0;
        v38 = *(v35 + 20);
        if (v38)
        {
          goto LABEL_82;
        }
      }

LABEL_51:
      if ((v38 & 0x100) != 0)
      {
        goto LABEL_39;
      }

      v41 = *(*v35 + 24);
      if ((*(v35 + 18) & 0x800) == 0)
      {
        for (i = *(*v35 + 24); ; i = *(i + 2))
        {
          v43 = *i;
          if ((v43 - 173) >= 2)
          {
            break;
          }
        }

        if (v43 == 176)
        {
          v43 = i[2];
        }

        if ((v43 - 154) >= 3 && v43 != 118)
        {
          if (v43 != 168 || (i[6] & 0x20) != 0 || (v44 = *(i + 9)) == 0 || (v45 = *(i + 12), (v45 & 0x80000000) == 0) && (v46 = *(v44 + 8)) != 0 && v45 < *(v44 + 54) && (*(v46 + 16 * v45 + 8) & 0xF) == 0)
          {
            v47 = v12 + v8;
            v48 = *(a2 + 12);
            v49 = *(v6 + 144);
            if (*(v6 + 148) <= v49)
            {
              sub_18194C8AC(v6, 51, v47, v48, 0);
              if (*(a1 + 52))
              {
                goto LABEL_39;
              }

              goto LABEL_70;
            }

            *(v6 + 144) = v49 + 1;
            v50 = *(v6 + 136) + 40 * v49;
            *v50 = 51;
            *(v50 + 4) = v47;
            *(v50 + 8) = v48;
            *(v50 + 12) = 0;
            *(v50 + 28) = 0;
            *(v50 + 20) = 0;
            *(v50 + 36) = 0;
          }
        }
      }

      if (*(a1 + 52))
      {
        goto LABEL_39;
      }

LABEL_70:
      v51 = &v66[v8];
      v52 = v66[v8];
      v53 = sub_1818D0A24(v41);
      if (v52 < 65 || v53 < 65)
      {
        if (v53 >= 65)
        {
          v56 = v53;
        }

        else
        {
          v56 = v52;
        }

        if ((v56 & 0xFFFFFFBF) == 1 || v52 == 65)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v55 = v52 < 0x43 && v53 < 0x43;
        if (v52 == 65 || v55)
        {
          goto LABEL_38;
        }
      }

      v57 = 0;
      while (1)
      {
        v58 = *v41;
        if ((v58 - 173) >= 2)
        {
          break;
        }

        if (v58 == 174)
        {
          v57 = 1;
        }

        v41 = *(v41 + 2);
      }

      if (v58 == 176)
      {
        v58 = v41[2];
      }

      if (v58 <= 154)
      {
        if (v58 == 118)
        {
          if (v52 != 66 || v57 != 0)
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (v58 != 154)
          {
            goto LABEL_39;
          }

LABEL_104:
          if (v52 <= 66)
          {
            goto LABEL_39;
          }
        }

        goto LABEL_38;
      }

      if (v58 != 155)
      {
        if (v58 != 168)
        {
          if (v58 != 156)
          {
            goto LABEL_39;
          }

          goto LABEL_104;
        }

        if (v52 < 67 || *(v41 + 12) >= 0)
        {
          goto LABEL_39;
        }

LABEL_38:
        *v51 = 65;
        goto LABEL_39;
      }

      if (!v57)
      {
        goto LABEL_38;
      }

LABEL_39:
      if (++v8 == v68)
      {
        goto LABEL_119;
      }
    }

    if (v12)
    {
      v37 = *(a1 + 31);
      if (v37 <= 7)
      {
        *(a1 + 31) = v37 + 1;
        *(a1 + 184 + 4 * v37) = v12;
        v12 = v36;
        v38 = *(v35 + 20);
        if (v38)
        {
          goto LABEL_82;
        }

        goto LABEL_51;
      }
    }

    v12 = v36;
LABEL_50:
    v38 = *(v35 + 20);
    if (v38)
    {
      goto LABEL_82;
    }

    goto LABEL_51;
  }

LABEL_119:
  *a5 = v66;
  return v12;
}

unsigned __int8 *sub_18197A444(unsigned __int8 *result, unsigned int a2, uint64_t a3)
{
  if (a2 >= 1)
  {
    v4 = result;
    v5 = 0;
    v6 = a2;
    do
    {
      v7 = *v4;
      v8 = v7;
      if (v7 == 176)
      {
        v8 = v4[2];
      }

      v9 = v4;
      if (v8 != 177)
      {
        v10 = v4;
        if (v8 != 139)
        {
          goto LABEL_15;
        }

        v9 = *(v4 + 4);
      }

      v10 = v4;
      if (*v9[4] >= 2)
      {
        if (v7 == 139 || (v11 = v4, v4[2] == 139))
        {
          v11 = *(v4 + 4);
        }

        v10 = *(*(v11 + 4) + 24 * v5 + 8);
      }

LABEL_15:
      v12 = *(a3 + v5);
      result = sub_1818D0A24(v10);
      if (v12 < 65 || result < 65)
      {
        if (result >= 65)
        {
          v15 = result;
        }

        else
        {
          v15 = v12;
        }

        if ((v15 & 0xFFFFFFBF) == 1 || v12 == 65)
        {
          goto LABEL_3;
        }
      }

      else
      {
        v14 = v12 < 0x43 && result < 0x43;
        if (v12 == 65 || v14)
        {
          goto LABEL_3;
        }
      }

      v16 = 0;
      while (1)
      {
        v17 = *v10;
        if ((v17 - 173) >= 2)
        {
          break;
        }

        if (v17 == 174)
        {
          v16 = 1;
        }

        v10 = *(v10 + 2);
      }

      if (v17 == 176)
      {
        v17 = v10[2];
      }

      if (v17 <= 154)
      {
        if (v17 != 118)
        {
          if (v17 != 154)
          {
            goto LABEL_4;
          }

          goto LABEL_45;
        }

        if (v12 != 66 || v16 != 0)
        {
          goto LABEL_4;
        }
      }

      else
      {
        switch(v17)
        {
          case 155:
            if (v16)
            {
              goto LABEL_4;
            }

            break;
          case 168:
            if (v12 < 67 || *(v10 + 12) >= 0)
            {
              goto LABEL_4;
            }

            break;
          case 156:
LABEL_45:
            if (v12 <= 66)
            {
              goto LABEL_4;
            }

            break;
          default:
            goto LABEL_4;
        }
      }

LABEL_3:
      *(a3 + v5) = 65;
LABEL_4:
      ++v5;
    }

    while (v5 != v6);
  }

  return result;
}

uint64_t *sub_18197A62C(uint64_t *result, int a2, int a3, char *a4)
{
  if (a4)
  {
    LODWORD(v4) = a3;
    v5 = result[2];
    if (a3 >= 1)
    {
      v6 = &a4[a3];
      v7 = a3 + a2;
      while (*a4 <= 65)
      {
        ++a2;
        ++a4;
        v8 = __OFSUB__(v4, 1);
        LODWORD(v4) = v4 - 1;
        if ((v4 < 0) ^ v8 | (v4 == 0))
        {
          LODWORD(v4) = 0;
          goto LABEL_9;
        }
      }
    }

    v6 = a4;
    v7 = a2;
LABEL_9:
    v4 = v4;
    while (1)
    {
      v9 = v4;
      if (v4 < 2)
      {
        break;
      }

      --v4;
      if (v6[v9 - 1] >= 66)
      {
        goto LABEL_14;
      }
    }

    if (v4 != 1)
    {
      return result;
    }

LABEL_14:
    v10 = *(v5 + 144);
    if (*(v5 + 148) <= v10)
    {
      v10 = sub_18194C8AC(v5, 96, v7, v9, 0);
    }

    else
    {
      *(v5 + 144) = v10 + 1;
      v11 = *(v5 + 136) + 40 * v10;
      *v11 = 96;
      *(v11 + 4) = v7;
      *(v11 + 8) = v9;
      *(v11 + 12) = 0;
      *(v11 + 28) = 0;
      *(v11 + 20) = 0;
      *(v11 + 36) = 0;
    }

    if (*(*v5 + 103))
    {
      v12 = *v5;

      return sub_1818A3B68(v12, v9, v6, a4);
    }

    else
    {
      if (v10 < 0)
      {
        v10 = *(v5 + 144) - 1;
      }

      v13 = *(v5 + 136) + 40 * v10;

      return sub_18194CB90(v5, v13, v6, v9);
    }
  }

  return result;
}

uint64_t *sub_18197A798(uint64_t *result, uint64_t a2, int a3, int a4)
{
  v5 = result;
  v6 = *result;
  v7 = *(*result + 16);
  *(result + 68) |= 1u;
  v8 = *(v7 + 144);
  if (*(v7 + 148) <= v8)
  {
    result = sub_18194C8AC(v7, 141, a4, 0, a3);
  }

  else
  {
    *(v7 + 144) = v8 + 1;
    v9 = *(v7 + 136) + 40 * v8;
    *v9 = 141;
    *(v9 + 4) = a4;
    *(v9 + 8) = 0;
    *(v9 + 12) = a3;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    *(v9 + 16) = 0;
  }

  if ((*(v5 + 30) & 0x1020) != 0)
  {
    v10 = v6[19];
    if (!v10)
    {
      v10 = v6;
    }

    if (!*(v10 + 28))
    {
      v11 = *(a2 + 24);
      v12 = *v6;
      v13 = 4 * *(v11 + 54);
      if (v12)
      {
        result = sub_181929E8C(v12, v13 + 4, 0x100004052888210);
        v14 = result;
        if (!result)
        {
          return result;
        }
      }

      else
      {
        result = sub_181902484(v13 + 4, 0x100004052888210);
        v14 = result;
        if (!result)
        {
          return result;
        }
      }

      bzero(v14, v13 + 4);
      *v14 = *(v11 + 54);
      v15 = *(a2 + 96);
      if (v15 < 2)
      {
LABEL_42:
        result = *v7;
        if (*(*v7 + 103))
        {

          return sub_181939EC8(result, v14);
        }

        else
        {
          v42 = *(v7 + 136) + 40 * *(v7 + 144);
          if (*(v42 - 39))
          {

            return sub_18194CB90(v7, v42 - 40, v14, 4294967282);
          }

          else
          {
            *(v42 - 24) = v14;
            *(v42 - 39) = -14;
          }
        }

        return result;
      }

      v16 = 0;
      v17 = (v15 - 1);
      v18 = *(a2 + 8);
      v19.i64[0] = 0x1000100010001;
      v19.i64[1] = 0x1000100010001;
      while (1)
      {
        v20 = *(v18 + 2 * v16);
        v21 = *(v18 + 2 * v16);
        v22 = *(v18 + 2 * v16);
        if ((v20 & 0x8000000000000000) == 0)
        {
          v22 = *(v18 + 2 * v16);
          if ((*(v11 + 48) & 0x20) != 0)
          {
            break;
          }
        }

LABEL_15:
        if ((v21 & 0x8000) != 0)
        {
          if (++v16 == v17)
          {
            goto LABEL_42;
          }
        }

        else
        {
          *(v14 + v22 + 1) = ++v16;
          if (v16 == v17)
          {
            goto LABEL_42;
          }
        }
      }

      v23 = *(v11 + 8);
      if (!*(v18 + 2 * v16))
      {
        v20 = 0;
        v22 = 0;
        goto LABEL_40;
      }

      if (v21 < 5)
      {
        v24 = 0;
        v22 = 0;
LABEL_38:
        v39 = v20 - v24;
        v40 = (v23 + 16 * v24 + 14);
        do
        {
          v41 = *v40;
          v40 += 8;
          v22 += ((v41 >> 5) & 1) == 0;
          --v39;
        }

        while (v39);
LABEL_40:
        if ((*(v23 + 16 * v20 + 14) & 0x20) != 0)
        {
          v22 = v21 - v22 + *(v11 + 56);
        }

        goto LABEL_15;
      }

      if (v21 >= 0x11)
      {
        if ((v20 & 0xF) != 0)
        {
          v25 = v20 & 0xF;
        }

        else
        {
          v25 = 16;
        }

        v24 = v20 - v25;
        v26 = (v23 + 142);
        v27 = 0uLL;
        v28 = *(v18 + 2 * v16);
        v29 = 0uLL;
        do
        {
          v30.i16[0] = *(v26 - 64);
          v30.i16[1] = *(v26 - 56);
          v30.i16[2] = *(v26 - 48);
          v30.i16[3] = *(v26 - 40);
          v30.i16[4] = *(v26 - 32);
          v30.i16[5] = *(v26 - 24);
          v30.i16[6] = *(v26 - 16);
          v30.i16[7] = *(v26 - 8);
          v31.i16[0] = *v26;
          v31.i16[1] = v26[8];
          v31.i16[2] = v26[16];
          v31.i16[3] = v26[24];
          v31.i16[4] = v26[32];
          v31.i16[5] = v26[40];
          v31.i16[6] = v26[48];
          v31.i16[7] = v26[56];
          v27 = vaddq_s16(vbicq_s8(v19, vshrq_n_u16(v30, 5uLL)), v27);
          v29 = vaddq_s16(vbicq_s8(v19, vshrq_n_u16(v31, 5uLL)), v29);
          v28 -= 16;
          v26 += 128;
        }

        while (v25 != v28);
        v22 = vaddvq_s16(vaddq_s16(v29, v27));
        if (v25 < 5)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }

      v32 = v20 & 3;
      if ((v20 & 3) == 0)
      {
        v32 = 4;
      }

      v33 = v23 + 16 * v24;
      v34 = v32 + v24;
      v24 = v20 - v32;
      v35 = v22;
      v36 = (v33 + 46);
      v37 = v34 - v20;
      do
      {
        v38.i16[0] = *(v36 - 16);
        v38.i16[1] = *(v36 - 8);
        v38.i16[2] = *v36;
        v38.i16[3] = v36[8];
        v35 = vadd_s16(vbic_s8(0x1000100010001, vshr_n_u16(v38, 5uLL)), v35);
        v36 += 32;
        v37 += 4;
      }

      while (v37);
      v22 = vaddv_s16(v35);
      goto LABEL_38;
    }
  }

  return result;
}

uint64_t sub_18197AB8C(uint64_t result, uint64_t a2, uint64_t a3)
{
  for (i = result; *i == 44; i = *(i + 24))
  {
    result = sub_18197AB8C(*(i + 16), a2, a3);
  }

  if (*(a3 + 20) >= 1)
  {
    v6 = 0;
    v7 = (*(a3 + 32) + 18);
    do
    {
      if ((*v7 & 4) == 0)
      {
        result = sub_181959260(0, *(v7 - 9), i, a2);
        if (!result)
        {
          *v7 |= 4u;
        }
      }

      ++v6;
      v7 += 28;
    }

    while (v6 < *(a3 + 20));
  }

  return result;
}

uint64_t sub_18197AC50(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 98))
  {
    if (!*(a1 + 54))
    {
      v2 = *(a1 + 24);
      if (v2 == *(v1 + 94))
      {
        if (!*(a1 + 24))
        {
          return 1;
        }

        for (i = *(a1 + 64); (*(*i + 20) & 0x180) == 0; i += 8)
        {
          if (!--v2)
          {
            return 1;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_18197ACA8(uint64_t *a1, uint64_t *a2, uint64_t a3, int a4, _BOOL4 a5, int a6)
{
  v6 = a4;
  v7 = a3;
  v8 = *(a3 + 96);
  if ((*(v8 + 49) & 4) == 0)
  {
    v9 = *(v8 + 32);
    if (v9)
    {
      if (*(*(v9 + 56) + a4))
      {
        a5 = !a5;
      }
    }
  }

  v10 = *a2;
  if (a4 < 1)
  {
LABEL_13:
    v14 = *(v8 + 52);
    v131 = a1[2];
    v121 = a5;
    if (v14 <= a4)
    {
      v17 = 0;
    }

    else
    {
      v15 = *(v8 + 64);
      v16 = v14 - a4;
      if (v16 > 1)
      {
        v19 = 0;
        v20 = 0;
        v18 = (v16 & 0xFFFFFFFFFFFFFFFELL) + a4;
        v21 = (v15 + 8 * a4 + 8);
        v22 = v16 & 0xFFFFFFFFFFFFFFFELL;
        do
        {
          if (**(v21 - 1) == v10)
          {
            ++v19;
          }

          if (**v21 == v10)
          {
            ++v20;
          }

          v21 += 2;
          v22 -= 2;
        }

        while (v22);
        v17 = v20 + v19;
        if (v16 == (v16 & 0xFFFFFFFFFFFFFFFELL))
        {
          goto LABEL_28;
        }
      }

      else
      {
        v17 = 0;
        v18 = a4;
      }

      v23 = (v15 + 8 * v18);
      v24 = v14 - v18;
      do
      {
        v25 = *v23++;
        if (*v25 == v10)
        {
          ++v17;
        }

        --v24;
      }

      while (v24);
    }

LABEL_28:
    v135 = 0;
    if ((*(v10 + 5) & 0x10) == 0 || **(*(v10 + 32) + 32) == 1)
    {
      v26 = sub_1818E0B5C(a1, v10, 4, 0, 0, &v135);
      v132 = 0;
      goto LABEL_31;
    }

    v63 = *a1;
    v64 = sub_1818C7FEC(*a1, v10, 0, 0);
    v65 = v64;
    v123 = v63;
    if (*(v63 + 103))
    {
      goto LABEL_86;
    }

    v66 = *(v64 + 4);
    if (!v66)
    {
      goto LABEL_165;
    }

    v118 = v6;
    v119 = v64;
    v125 = v7;
    while (1)
    {
      if (v66 == *(v65 + 32))
      {
        v67 = *(*(v65 + 16) + 32);
      }

      else
      {
        v67 = 0;
      }

      v129 = v66;
      v133 = v67;
      v126 = *(v66 + 32);
      if (*(v8 + 52) > v6)
      {
        v68 = 0;
        v69 = 0;
        v70 = *(v66 + 32) + 8;
        v127 = v67 + 1;
        v71 = v118;
        while (1)
        {
          v73 = *(*(v8 + 64) + 8 * v71);
          if (*v73 != v10)
          {
            goto LABEL_99;
          }

          v74 = *(v73 + 36);
          v75 = (v70 + 24 * (v74 - 1));
          v76 = *v75;
          if (!*v75)
          {
            goto LABEL_99;
          }

          if (!v69)
          {
            break;
          }

          v77 = *v69;
          if (v69[1] <= *v69)
          {
            v79 = sub_18197FE14(*a1, v69, v76);
LABEL_107:
            v69 = v79;
            *v75 = 0;
            v67 = v133;
            if (!v79)
            {
              goto LABEL_109;
            }

            goto LABEL_108;
          }

          *v69 = v77 + 1;
          v78 = &v69[6 * v77];
          *(v78 + 2) = 0;
          *(v78 + 3) = 0;
          *(v78 + 1) = v76;
          *v75 = 0;
LABEL_108:
          LOWORD(v69[6 * *v69 + 1]) = v74;
LABEL_109:
          if (!v67)
          {
            goto LABEL_99;
          }

          v80 = &v127[3 * v74 - 3];
          v81 = *v80;
          if (v68)
          {
            v82 = *v68;
            if (v68[1] > *v68)
            {
              *v68 = v82 + 1;
              v83 = &v68[6 * v82];
              v83[2] = 0;
              v83[3] = 0;
              v83[1] = v81;
              goto LABEL_98;
            }

            v72 = sub_18197FE14(*a1, v68, v81);
          }

          else
          {
            v72 = sub_18197FD9C(*a1, *v80);
          }

          v67 = v133;
          v68 = v72;
LABEL_98:
          *v80 = 0;
LABEL_99:
          if (++v71 >= *(v8 + 52))
          {
            goto LABEL_115;
          }
        }

        v79 = sub_18197FD9C(*a1, *v75);
        goto LABEL_107;
      }

      v69 = 0;
      v68 = 0;
LABEL_115:
      v65 = v119;
      if (v126)
      {
        sub_18194E5B8(v123, v126);
        v67 = v133;
      }

      if (v67)
      {
        sub_18194E5B8(v123, v67);
        *(*(v119 + 2) + 32) = v68;
      }

      *(v129 + 32) = v69;
      v84 = *(a1 + 31) + 1;
      *(a1 + 31) = v84;
      *(v129 + 16) = v84;
      if (v68 && *v68 == 1)
      {
        v85 = *(v68 + 1);
        *(v68 + 1) = 0;
        v86 = *(v119 + 2);
        if (v86)
        {
          sub_1819439E0(v123, v86);
        }

        *(v119 + 2) = v85;
      }

      if (!v69)
      {
        goto LABEL_90;
      }

      v87 = *(v129 + 72);
      if (v87)
      {
        v88 = *v87;
        if (v88 >= 1)
        {
          v89 = 0;
          v90 = v87 + 2;
          do
          {
            v91 = &v90[6 * v89];
            v94 = *(v91 + 10);
            v92 = v91 + 5;
            v93 = v94;
            if (v94)
            {
              v95 = *v69;
              if (v95 < 1)
              {
                goto LABEL_128;
              }

              v96 = 0;
              v97 = 7;
              while (LOWORD(v69[v97]) != v93)
              {
                ++v96;
                v97 += 6;
                if (v95 == v96)
                {
                  goto LABEL_128;
                }
              }

              *v92 = v96 + 1;
              if (v96 >= *v69)
              {
LABEL_128:
                *v92 = 0;
              }
            }

            ++v89;
          }

          while (v89 != v88);
        }
      }

      v98 = *(v129 + 56);
      if (v98)
      {
        v99 = *v98;
        if (v99 >= 1)
        {
          v100 = 0;
          v101 = v98 + 2;
          do
          {
            v102 = &v101[6 * v100];
            v105 = *(v102 + 10);
            v103 = v102 + 5;
            v104 = v105;
            if (v105)
            {
              v106 = *v69;
              if (v106 < 1)
              {
                goto LABEL_142;
              }

              v107 = 0;
              v108 = 7;
              while (LOWORD(v69[v108]) != v104)
              {
                ++v107;
                v108 += 6;
                if (v106 == v107)
                {
                  goto LABEL_142;
                }
              }

              *v103 = v107 + 1;
              if (v107 >= *v69)
              {
LABEL_142:
                *v103 = 0;
              }
            }

            ++v100;
          }

          while (v100 != v99);
        }
      }

      v109 = *v69;
      if (v109 < 1)
      {
        goto LABEL_90;
      }

      if (v109 == 1)
      {
        v110 = 0;
      }

      else
      {
        v110 = v109 & 0x7FFFFFFE;
        v111 = v69 + 13;
        v112 = v110;
        do
        {
          *(v111 - 12) = 0;
          *v111 = 0;
          v111 += 24;
          v112 -= 2;
        }

        while (v112);
        if (v110 == v109)
        {
          goto LABEL_90;
        }
      }

      v113 = v109 - v110;
      v114 = &v69[6 * v110 + 7];
      do
      {
        *v114 = 0;
        v114 += 6;
        --v113;
      }

      while (v113);
LABEL_90:
      v66 = *(v129 + 80);
      v6 = a4;
      v7 = v125;
      if (!v66)
      {
        if (*(v123 + 103))
        {
LABEL_86:
          v26 = 5;
          v132 = 0;
          if (v65)
          {
            goto LABEL_168;
          }

          goto LABEL_31;
        }

LABEL_165:
        v115 = sub_181929E8C(v123, 4 * v17, 0x100004052888210);
        v116 = v115;
        v117 = v115;
        if (v115)
        {
          bzero(v115, 4 * v17);
          v116 = v117;
        }

        v26 = sub_1818E0B5C(a1, v65, 4, 0, v116, &v135);
        v132 = v117;
        if (v65)
        {
LABEL_168:
          sub_1819439E0(v123, v65);
        }

LABEL_31:
        if (v26 == 4)
        {
          v27 = !v121;
        }

        else
        {
          v27 = v121;
        }

        if (v27)
        {
          v28 = 32;
        }

        else
        {
          v28 = 36;
        }

        v29 = v135;
        v30 = *(v131 + 144);
        if (*(v131 + 148) <= v30)
        {
          sub_18194C8AC(v131, v28, v135, 0, 0);
        }

        else
        {
          *(v131 + 144) = v30 + 1;
          v31 = *(v131 + 136) + 40 * v30;
          *v31 = v28;
          *(v31 + 2) = 0;
          *(v31 + 4) = v29;
          *(v31 + 1) = 0;
          *(v31 + 8) = 0u;
          *(v31 + 24) = 0u;
        }

        v32 = *(v8 + 48);
        *(v8 + 48) = v32 | 0x800;
        if (!*(v7 + 80))
        {
          v33 = *(a1 + 18) - 1;
          *(a1 + 18) = v33;
          *(v7 + 16) = v33;
        }

        if (v6 >= 1 && (v32 & 0x100000) == 0)
        {
          *(v8 + 48) = v32 | 0x40800;
        }

        v34 = *(v7 + 80);
        v35 = v34 + v17;
        *(v7 + 80) = v35;
        v36 = a2[1];
        v37 = *v36;
        v38 = *(v7 + 88);
        v39 = 20 * v35;
        result = sub_181929E8C(***v36, 20 * v35 + 16, 0x1020040EDED9539);
        if (result)
        {
          v124 = v7;
          *result = v37[11];
          *(result + 8) = v39;
          v37[11] = result;
          v40 = result + 16;
          if (v38)
          {
            result = memcpy((result + 16), v38, *(v38 - 1));
          }

          *(v7 + 88) = v40;
          v41 = *(v8 + 52);
          v42 = v131;
          v43 = a6;
          if (v41 > a4)
          {
            v44 = 0;
            v45 = 0;
            v46 = v40 + 20 * v34;
            if (v27)
            {
              v47 = 38;
            }

            else
            {
              v47 = 39;
            }

            v128 = v47;
            v48 = a4;
            while (2)
            {
              if (**(*(v8 + 64) + 8 * v48) != v10)
              {
                goto LABEL_55;
              }

              if (v26 == 1)
              {
                result = *(v42 + 144);
                if (*(v42 + 148) > result)
                {
                  *(v42 + 144) = result + 1;
                  v49 = *(v42 + 136) + 40 * result;
                  *v49 = 135;
                  *(v49 + 4) = v29;
                  *(v49 + 8) = v43;
                  *(v49 + 12) = 0;
                  *(v49 + 28) = 0;
                  *(v49 + 20) = 0;
                  *(v49 + 36) = 0;
                  goto LABEL_68;
                }

                v51 = v42;
                v52 = -121;
                v53 = v29;
                v50 = v43;
                v54 = 0;
LABEL_67:
                result = sub_18194C8AC(v51, v52, v53, v50, v54);
                v42 = v131;
              }

              else
              {
                if (v132)
                {
                  v50 = *(v132 + v45++);
                }

                else
                {
                  v50 = 0;
                }

                result = *(v42 + 144);
                if (*(v42 + 148) <= result)
                {
                  v51 = v42;
                  v52 = 94;
                  v53 = v29;
                  v54 = v43;
                  goto LABEL_67;
                }

                *(v42 + 144) = result + 1;
                v55 = *(v42 + 136) + 40 * result;
                *v55 = 94;
                *(v55 + 4) = v29;
                *(v55 + 8) = v50;
                *(v55 + 12) = v43;
                *(v55 + 24) = 0;
                *(v55 + 32) = 0;
                *(v55 + 16) = 0;
              }

LABEL_68:
              *(v46 + 4) = result;
              v56 = *(v42 + 144);
              if (*(v42 + 148) <= v56)
              {
                result = sub_18194C8AC(v42, 51, v43, 0, 0);
                v42 = v131;
                if (v44)
                {
                  goto LABEL_53;
                }

LABEL_72:
                *v46 = v29;
                *(v46 + 16) = v128;
                if (a4 < 1)
                {
                  *(v46 + 12) = 0;
                }

                else
                {
                  *(v46 + 8) = a6 - a4;
                  *(v46 + 12) = a4;
                }
              }

              else
              {
                *(v42 + 144) = v56 + 1;
                v57 = *(v42 + 136) + 40 * v56;
                *v57 = 51;
                *(v57 + 4) = v43;
                *(v57 + 8) = 0u;
                *(v57 + 24) = 0u;
                if (!v44)
                {
                  goto LABEL_72;
                }

LABEL_53:
                *(v46 + 16) = -69;
              }

              v46 += 20;
              v41 = *(v8 + 52);
LABEL_55:
              ++v48;
              --v44;
              ++v43;
              if (v48 >= v41)
              {
                break;
              }

              continue;
            }
          }

          if (a4 >= 1 && (*(v8 + 49) & 0x1004) == 0)
          {
            v58 = *(v124 + 8);
            v59 = *(v42 + 144);
            if (*(v42 + 148) <= v59)
            {
              result = sub_18194C8AC(v42, 125, v58, 0, a4);
              v61 = v132;
              if (!v132)
              {
                return result;
              }
            }

            else
            {
              *(v42 + 144) = v59 + 1;
              v60 = *(v42 + 136) + 40 * v59;
              *v60 = 125;
              *(v60 + 4) = v58;
              *(v60 + 8) = 0;
              *(v60 + 12) = a4;
              *(v60 + 24) = 0;
              *(v60 + 32) = 0;
              *(v60 + 16) = 0;
              v61 = v132;
              if (!v132)
              {
                return result;
              }
            }

            goto LABEL_82;
          }
        }

        else
        {
          *(v7 + 88) = 0;
          *(v7 + 80) = 0;
        }

        v61 = v132;
        if (!v132)
        {
          return result;
        }

LABEL_82:
        v62 = *a1;

        return sub_181929C84(v62, v61);
      }
    }
  }

  v11 = *(v8 + 64);
  v12 = a4;
  while (!*v11 || **v11 != v10)
  {
    ++v11;
    if (!--v12)
    {
      goto LABEL_13;
    }
  }

  return sub_1818E1F5C(a3, a2);
}

void *sub_18197B6EC(void *result)
{
  v1 = *(result + 5);
  if (v1 >= 1)
  {
    v2 = ***result;
    v3 = result[4] + 18;
    v4 = 56 * v1;
    do
    {
      v5 = *v3;
      if (*v3)
      {
        v6 = *(v3 - 18);
        if (v6)
        {
          result = sub_1819439E0(v2, v6);
          v5 = *v3;
        }
      }

      if ((v5 & 0x30) != 0)
      {
        v7 = *(v3 + 14);
        result = sub_18197B6EC(v7);
        if (v7)
        {
          result = sub_181929C84(v2, v7);
        }
      }

      v3 += 56;
      v4 -= 56;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_18197B790(uint64_t a1, int a2, int a3)
{
  result = sub_1818E7DFC(a1);
  v7 = result;
  if (*(a1 + 31))
  {
    v8 = *(a1 + 31) - 1;
    *(a1 + 31) = v8;
    v9 = *(a1 + 4 * v8 + 184);
  }

  else
  {
    v9 = *(a1 + 60) + 1;
    *(a1 + 60) = v9;
  }

  v10 = *(result + 144);
  if (*(result + 148) <= v10)
  {
    result = sub_18194C8AC(result, 71, 0, v9, 0);
    if (a3 < 3)
    {
LABEL_6:
      v12 = *(v7 + 144);
      v13 = v12 + 2;
      if (*(v7 + 148) <= v12)
      {
        result = sub_18194C8AC(v7, 13, a2, v13, 0);
      }

      else
      {
        *(v7 + 144) = v12 + 1;
        v14 = *(v7 + 136) + 40 * v12;
        *v14 = 13;
        *(v14 + 4) = a2;
        *(v14 + 8) = v13;
        *(v14 + 12) = 0;
        *(v14 + 28) = 0;
        *(v14 + 20) = 0;
        *(v14 + 36) = 0;
      }

      goto LABEL_27;
    }
  }

  else
  {
    *(result + 144) = v10 + 1;
    v11 = *(result + 136) + 40 * v10;
    *v11 = 71;
    *(v11 + 8) = v9;
    *(v11 + 12) = 0;
    *(v11 + 28) = 0;
    *(v11 + 20) = 0;
    *(v11 + 36) = 0;
    if (a3 < 3)
    {
      goto LABEL_6;
    }
  }

  if (*(a1 + 31))
  {
    v15 = *(a1 + 31) - 1;
    *(a1 + 31) = v15;
    v16 = *(a1 + 4 * v15 + 184);
  }

  else
  {
    v16 = *(a1 + 60) + 1;
    *(a1 + 60) = v16;
  }

  result = *(v7 + 144);
  if (*(v7 + 148) <= result)
  {
    result = sub_18194C8AC(v7, 118, 0, v16, 0);
  }

  else
  {
    *(v7 + 144) = result + 1;
    v17 = *(v7 + 136) + 40 * result;
    *v17 = 118;
    *(v17 + 8) = v16;
    *(v17 + 12) = 0;
    *(v17 + 28) = 0;
    *(v17 + 20) = 0;
    *(v17 + 36) = 0;
  }

  if (!*(*v7 + 103))
  {
    if ((result & 0x80000000) != 0)
    {
      result = (*(v7 + 144) - 1);
    }

    v18 = *(v7 + 136) + 40 * result;
    if (*(v18 + 1))
    {
      result = sub_18194CB90(v7, v18, &byte_181A2878D, 0xFFFFFFFFLL);
    }

    else
    {
      *(v18 + 16) = &byte_181A2878D;
      *(v18 + 1) = -1;
    }
  }

  v19 = *(v7 + 144);
  v20 = v19 + 2;
  if (*(v7 + 148) <= v19)
  {
    result = sub_18194C8AC(v7, 58, v16, v20, a2);
  }

  else
  {
    *(v7 + 144) = v19 + 1;
    v21 = *(v7 + 136) + 40 * v19;
    *v21 = 58;
    *(v21 + 4) = v16;
    *(v21 + 8) = v20;
    *(v21 + 12) = a2;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0;
    *(v21 + 16) = 0;
  }

  v22 = *(v7 + 144);
  if (v22 >= 1)
  {
    *(*(v7 + 136) + 40 * v22 - 38) = 83;
  }

LABEL_27:
  v23 = *&asc_181A245E4[4 * a3 + 8];
  v24 = *(v7 + 144);
  v25 = v24 + 2;
  if (*(v7 + 148) <= v24)
  {
    result = sub_18194C8AC(v7, v23, v9, v25, a2);
  }

  else
  {
    *(v7 + 144) = v24 + 1;
    v26 = *(v7 + 136) + 40 * v24;
    *v26 = v23;
    *(v26 + 2) = 0;
    *(v26 + 4) = v9;
    *(v26 + 8) = v25;
    *(v26 + 12) = a2;
    *(v26 + 1) = 0;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0;
    *(v26 + 16) = 0;
  }

  v27 = *(v7 + 144);
  if (v27 >= 1)
  {
    *(*(v7 + 136) + 40 * v27 - 38) = 67;
  }

  v28 = *(a1 + 152);
  if (!v28)
  {
    v28 = a1;
  }

  *(v28 + 33) = 1;
  if (*(v7 + 148) <= v27)
  {
    result = sub_18194C8AC(v7, 70, 1, 2, 0);
  }

  else
  {
    *(v7 + 144) = v27 + 1;
    v29 = *(v7 + 136) + 40 * v27;
    *v29 = 70;
    *(v29 + 4) = 0x200000001;
    *(v29 + 12) = 0;
    *(v29 + 28) = 0;
    *(v29 + 20) = 0;
    *(v29 + 36) = 0;
  }

  if (!*(*v7 + 103))
  {
    v30 = off_1E6A27B08[a3];
    v31 = *(v7 + 136) + 40 * *(v7 + 144);
    *(v31 - 39) = -1;
    *(v31 - 24) = v30;
  }

  if (v9)
  {
    v32 = *(a1 + 31);
    if (v32 <= 7)
    {
      *(a1 + 31) = v32 + 1;
      *(a1 + 4 * v32 + 184) = v9;
    }
  }

  return result;
}

void *sub_18197BB58(uint64_t a1, int a2)
{
  v3 = *(a1 + 8);
  result = sub_1818E7DFC(*a1);
  if (v3)
  {
    v5 = result;
    v6 = v3;
    do
    {
      if (!*(v3 + 132) && (*(*(v6 + 80) + 5) & 0x10) != 0 && *(v6 + 33) != 91)
      {
        v16 = *(v6 + 96);
        v17 = *(v5 + 36);
        if (*(v5 + 37) <= v17)
        {
          result = sub_18194C8AC(v5, 75, 0, v16, 0);
        }

        else
        {
          *(v5 + 36) = v17 + 1;
          v18 = v5[17] + 40 * v17;
          *v18 = 75;
          *(v18 + 8) = v16;
          *(v18 + 12) = 0;
          *(v18 + 28) = 0;
          *(v18 + 20) = 0;
          *(v18 + 36) = 0;
        }

        v29 = *(v6 + 100);
        v30 = *(v5 + 36);
        if (*(v5 + 37) <= v30)
        {
          result = sub_18194C8AC(v5, 32, v29, 0, 0);
        }

        else
        {
          *(v5 + 36) = v30 + 1;
          v31 = v5[17] + 40 * v30;
          *v31 = 32;
          *(v31 + 4) = v29;
          *(v31 + 8) = 0u;
          *(v31 + 24) = 0u;
        }

        v33 = *(v6 + 96);
        v32 = *(v6 + 100);
        v34 = *(v5 + 36);
        if (*(v5 + 37) <= v34)
        {
          result = sub_18194C8AC(v5, 94, v32, 0, v33);
        }

        else
        {
          *(v5 + 36) = v34 + 1;
          v35 = v5[17] + 40 * v34;
          *v35 = 94;
          *(v35 + 4) = v32;
          *(v35 + 8) = 0;
          *(v35 + 12) = v33;
          *(v35 + 24) = 0;
          *(v35 + 32) = 0;
          *(v35 + 16) = 0;
        }

        v36 = *(v5 + 36);
        v37 = &byte_1EA831A58;
        if (!*(*v5 + 103))
        {
          v37 = (v5[17] + 40 * v36 - 80);
        }

        *(v37 + 2) = v36;
        goto LABEL_4;
      }

      if (!*(v6 + 104))
      {
        v7 = *(*(v6 + 112) + 32);
        if (v7)
        {
          v8 = *v7;
          v9 = *(v6 + 92);
          if (!a2)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v8 = 0;
          v9 = *(v6 + 92);
          if (!a2)
          {
LABEL_14:
            v12 = *(v6 + 96);
            v13 = *(v5 + 36);
            if (*(v5 + 37) <= v13)
            {
              sub_18194C8AC(v5, 164, v9, v8, v12);
            }

            else
            {
              *(v5 + 36) = v13 + 1;
              v14 = v5[17] + 40 * v13;
              *v14 = 164;
              *(v14 + 4) = v9;
              *(v14 + 8) = v8;
              *(v14 + 12) = v12;
              *(v14 + 24) = 0;
              *(v14 + 32) = 0;
              *(v14 + 16) = 0;
            }

            v27 = *(v6 + 80);
            result = *v5;
            if (*(*v5 + 103))
            {
              if ((*(v27 + 4) & 0x10) != 0)
              {
                result = sub_181939EC8(result, v27);
              }
            }

            else
            {
              v28 = v5[17] + 40 * *(v5 + 36);
              *(v28 - 39) = -7;
              *(v28 - 24) = v27;
            }

            goto LABEL_4;
          }
        }

        v10 = *(v5 + 36);
        if (*(v5 + 37) <= v10)
        {
          sub_18194C8AC(v5, 165, v9, v8, 0);
        }

        else
        {
          *(v5 + 36) = v10 + 1;
          v11 = v5[17] + 40 * v10;
          *v11 = 165;
          *(v11 + 4) = v9;
          *(v11 + 8) = v8;
          *(v11 + 12) = 0;
          *(v11 + 28) = 0;
          *(v11 + 20) = 0;
          *(v11 + 36) = 0;
        }

        v15 = *(v6 + 80);
        result = *v5;
        if (*(*v5 + 103))
        {
          if ((*(v15 + 4) & 0x10) != 0)
          {
            result = sub_181939EC8(result, v15);
          }
        }

        else
        {
          v19 = v5[17] + 40 * *(v5 + 36);
          *(v19 - 39) = -7;
          *(v19 - 24) = v15;
        }

        v20 = *(v6 + 92);
        v21 = *(v6 + 96);
        v22 = *(v5 + 36);
        if (*(v5 + 37) <= v22)
        {
          result = sub_18194C8AC(v5, 80, v20, v21, 0);
        }

        else
        {
          *(v5 + 36) = v22 + 1;
          v23 = v5[17] + 40 * v22;
          *v23 = 80;
          *(v23 + 4) = v20;
          *(v23 + 8) = v21;
          *(v23 + 12) = 0;
          *(v23 + 28) = 0;
          *(v23 + 20) = 0;
          *(v23 + 36) = 0;
        }

        v24 = *(v6 + 92);
        v25 = *(v5 + 36);
        if (*(v5 + 37) <= v25)
        {
          result = sub_18194C8AC(v5, 75, 0, v24, 0);
        }

        else
        {
          *(v5 + 36) = v25 + 1;
          v26 = v5[17] + 40 * v25;
          *v26 = 75;
          *(v26 + 8) = v24;
          *(v26 + 12) = 0;
          *(v26 + 28) = 0;
          *(v26 + 20) = 0;
          *(v26 + 36) = 0;
        }
      }

LABEL_4:
      v6 = *(v6 + 64);
    }

    while (v6);
  }

  return result;
}

uint64_t *sub_18197BEE0(uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *result;
  v175 = result;
  if (!*(v2 + 132))
  {
    v179 = v3 + 184;
    v7 = result[1];
    while (1)
    {
      v8 = *(v7 + 80);
      v9 = *(v8 + 56);
      v10 = v9 == "nth_value" || v9 == "first_value";
      if (!v10)
      {
        break;
      }

      v11 = *(v7 + 100);
      v12 = *(v3 + 72);
      *(v3 + 72) = v12 - 1;
      if (*(v3 + 31))
      {
        v13 = *(v3 + 31) - 1;
        *(v3 + 31) = v13;
        v14 = *(v179 + 4 * v13);
      }

      else
      {
        v14 = *(v3 + 60) + 1;
        *(v3 + 60) = v14;
      }

      v20 = *(v7 + 96);
      v21 = *(v1 + 144);
      if (*(v1 + 148) <= v21)
      {
        sub_18194C8AC(v1, 75, 0, v20, 0);
      }

      else
      {
        *(v1 + 144) = v21 + 1;
        v22 = *(v1 + 136) + 40 * v21;
        *v22 = 75;
        *(v22 + 8) = v20;
        *(v22 + 12) = 0;
        *(v22 + 28) = 0;
        *(v22 + 20) = 0;
        *(v22 + 36) = 0;
      }

      if (*(v8 + 56) == "nth_value")
      {
        v25 = *(v2 + 88);
        v26 = *(v7 + 124) + 1;
        v27 = *(v1 + 144);
        if (*(v1 + 148) <= v27)
        {
          sub_18194C8AC(v1, 94, v25, v26, v14);
        }

        else
        {
          *(v1 + 144) = v27 + 1;
          v28 = *(v1 + 136) + 40 * v27;
          *v28 = 94;
          *(v28 + 4) = v25;
          *(v28 + 8) = v26;
          *(v28 + 12) = v14;
          *(v28 + 24) = 0;
          *(v28 + 32) = 0;
          *(v28 + 16) = 0;
        }

        sub_18197B790(v3, v14, 2);
      }

      else
      {
        v23 = *(v1 + 144);
        if (*(v1 + 148) <= v23)
        {
          sub_18194C8AC(v1, 71, 1, v14, 0);
        }

        else
        {
          *(v1 + 144) = v23 + 1;
          v24 = *(v1 + 136) + 40 * v23;
          *v24 = 0x100000047;
          *(v24 + 8) = v14;
          *(v24 + 12) = 0;
          *(v24 + 28) = 0;
          *(v24 + 20) = 0;
          *(v24 + 36) = 0;
        }
      }

      v37 = *(v7 + 104);
      v38 = *(v1 + 144);
      if (*(v1 + 148) <= v38)
      {
        sub_18194C8AC(v1, 107, v14, v37, v14);
      }

      else
      {
        *(v1 + 144) = v38 + 1;
        v39 = *(v1 + 136) + 40 * v38;
        *v39 = 107;
        *(v39 + 4) = v14;
        *(v39 + 8) = v37;
        *(v39 + 12) = v14;
        *(v39 + 24) = 0;
        *(v39 + 32) = 0;
        *(v39 + 16) = 0;
      }

      v40 = *(v7 + 104) + 1;
      v41 = *(v1 + 144);
      if (*(v1 + 148) <= v41)
      {
        sub_18194C8AC(v1, 55, v40, v12 - 1, v14);
      }

      else
      {
        *(v1 + 144) = v41 + 1;
        v42 = *(v1 + 136) + 40 * v41;
        *v42 = 55;
        *(v42 + 4) = v40;
        *(v42 + 8) = v12 - 1;
        *(v42 + 12) = v14;
        *(v42 + 24) = 0;
        *(v42 + 32) = 0;
        *(v42 + 16) = 0;
      }

      v43 = *(v1 + 144);
      if (*(v1 + 148) <= v43)
      {
        sub_18194C8AC(v1, 30, v11, 0, v14);
      }

      else
      {
        *(v1 + 144) = v43 + 1;
        v44 = *(v1 + 136) + 40 * v43;
        *v44 = 30;
        *(v44 + 4) = v11;
        *(v44 + 8) = 0;
        *(v44 + 12) = v14;
        *(v44 + 24) = 0;
        *(v44 + 32) = 0;
        *(v44 + 16) = 0;
      }

      v45 = *(v7 + 124);
      v46 = *(v7 + 96);
      v47 = *(v1 + 144);
      if (*(v1 + 148) <= v47)
      {
        sub_18194C8AC(v1, 94, v11, v45, v46);
      }

      else
      {
        *(v1 + 144) = v47 + 1;
        v48 = *(v1 + 136) + 40 * v47;
        *v48 = 94;
        *(v48 + 4) = v11;
        *(v48 + 8) = v45;
        *(v48 + 12) = v46;
        *(v48 + 24) = 0;
        *(v48 + 32) = 0;
        *(v48 + 16) = 0;
      }

      result = *(v1 + 24);
      v49 = -v12;
      if (*(result + 18) + *(result + 19) < 0)
      {
        result = sub_18195CB84(result, v1, v49);
        if (!v14)
        {
          goto LABEL_6;
        }
      }

      else
      {
        *(result[10] + 4 * v49) = *(v1 + 144);
        if (!v14)
        {
          goto LABEL_6;
        }
      }

      v50 = *(v3 + 31);
      if (v50 >= 8)
      {
        goto LABEL_6;
      }

LABEL_5:
      *(v3 + 31) = v50 + 1;
      *(v179 + 4 * v50) = v14;
LABEL_6:
      v7 = *(v7 + 64);
      if (!v7)
      {
        goto LABEL_213;
      }
    }

    if (v9 != "lead" && v9 != "lag")
    {
      goto LABEL_6;
    }

    v16 = **(*(v7 + 112) + 32);
    v17 = *(v7 + 100);
    v177 = *(v3 + 72);
    v18 = v177 - 1;
    *(v3 + 72) = v177 - 1;
    if (*(v3 + 31))
    {
      v19 = *(v3 + 31) - 1;
      *(v3 + 31) = v19;
      v14 = *(v179 + 4 * v19);
    }

    else
    {
      v14 = *(v3 + 60) + 1;
      *(v3 + 60) = v14;
    }

    v29 = v2;
    v30 = *(v2 + 88);
    if (v16 > 2)
    {
      v31 = *(v7 + 124) + 2;
      v34 = *(v7 + 96);
      v35 = *(v1 + 144);
      if (*(v1 + 148) > v35)
      {
        *(v1 + 144) = v35 + 1;
        v36 = *(v1 + 136) + 40 * v35;
        *v36 = 94;
        *(v36 + 4) = v30;
        *(v36 + 8) = v31;
        *(v36 + 12) = v34;
        *(v36 + 24) = 0;
        *(v36 + 32) = 0;
        *(v36 + 16) = 0;
        goto LABEL_60;
      }

      v51 = v1;
      v52 = 94;
      v53 = v30;
    }

    else
    {
      v31 = *(v7 + 96);
      v32 = *(v1 + 144);
      if (*(v1 + 148) > v32)
      {
        *(v1 + 144) = v32 + 1;
        v33 = *(v1 + 136) + 40 * v32;
        *v33 = 75;
        *(v33 + 8) = v31;
        *(v33 + 12) = 0;
        *(v33 + 28) = 0;
        *(v33 + 20) = 0;
        *(v33 + 36) = 0;
LABEL_60:
        v54 = *(v1 + 144);
        if (*(v1 + 148) <= v54)
        {
          sub_18194C8AC(v1, 135, v30, v14, 0);
        }

        else
        {
          *(v1 + 144) = v54 + 1;
          v55 = *(v1 + 136) + 40 * v54;
          *v55 = 135;
          *(v55 + 4) = v30;
          *(v55 + 8) = v14;
          *(v55 + 12) = 0;
          *(v55 + 28) = 0;
          *(v55 + 20) = 0;
          *(v55 + 36) = 0;
        }

        v56 = *(v8 + 56);
        if (v16 > 1)
        {
          if (v56 == "lead")
          {
            v60 = 107;
          }

          else
          {
            v60 = 108;
          }

          if (*(v3 + 31))
          {
            v61 = *(v3 + 31) - 1;
            *(v3 + 31) = v61;
            v62 = *(v179 + 4 * v61);
          }

          else
          {
            v62 = *(v3 + 60) + 1;
            *(v3 + 60) = v62;
          }

          v63 = *(v7 + 124) + 1;
          v64 = *(v1 + 144);
          if (*(v1 + 148) <= v64)
          {
            sub_18194C8AC(v1, 94, v30, v63, v62);
          }

          else
          {
            *(v1 + 144) = v64 + 1;
            v65 = *(v1 + 136) + 40 * v64;
            *v65 = 94;
            *(v65 + 4) = v30;
            *(v65 + 8) = v63;
            *(v65 + 12) = v62;
            *(v65 + 24) = 0;
            *(v65 + 32) = 0;
            *(v65 + 16) = 0;
          }

          v66 = *(v1 + 144);
          v2 = v29;
          if (*(v1 + 148) <= v66)
          {
            sub_18194C8AC(v1, v60, v62, v14, v14);
          }

          else
          {
            *(v1 + 144) = v66 + 1;
            v67 = *(v1 + 136) + 40 * v66;
            *v67 = v60;
            *(v67 + 2) = 0;
            *(v67 + 4) = v62;
            *(v67 + 8) = v14;
            *(v67 + 12) = v14;
            *(v67 + 1) = 0;
            *(v67 + 24) = 0;
            *(v67 + 32) = 0;
            *(v67 + 16) = 0;
          }

          if (v62)
          {
            v68 = *(v3 + 31);
            if (v68 <= 7)
            {
              *(v3 + 31) = v68 + 1;
              *(v179 + 4 * v68) = v62;
            }
          }
        }

        else
        {
          if (v56 == "lead")
          {
            v57 = 1;
          }

          else
          {
            v57 = -1;
          }

          v58 = *(v1 + 144);
          if (*(v1 + 148) <= v58)
          {
            sub_18194C8AC(v1, 86, v14, v57, 0);
          }

          else
          {
            *(v1 + 144) = v58 + 1;
            v59 = *(v1 + 136) + 40 * v58;
            *v59 = 86;
            *(v59 + 4) = v14;
            *(v59 + 8) = v57;
            *(v59 + 12) = 0;
            *(v59 + 28) = 0;
            *(v59 + 20) = 0;
            *(v59 + 36) = 0;
          }

          v2 = v29;
        }

        v69 = *(v1 + 144);
        if (*(v1 + 148) <= v69)
        {
          sub_18194C8AC(v1, 30, v17, v18, v14);
        }

        else
        {
          *(v1 + 144) = v69 + 1;
          v70 = *(v1 + 136) + 40 * v69;
          *v70 = 30;
          *(v70 + 4) = v17;
          *(v70 + 8) = v18;
          *(v70 + 12) = v14;
          *(v70 + 24) = 0;
          *(v70 + 32) = 0;
          *(v70 + 16) = 0;
        }

        v71 = *(v7 + 124);
        v72 = *(v7 + 96);
        v73 = *(v1 + 144);
        if (*(v1 + 148) <= v73)
        {
          sub_18194C8AC(v1, 94, v17, v71, v72);
        }

        else
        {
          *(v1 + 144) = v73 + 1;
          v74 = *(v1 + 136) + 40 * v73;
          *v74 = 94;
          *(v74 + 4) = v17;
          *(v74 + 8) = v71;
          *(v74 + 12) = v72;
          *(v74 + 24) = 0;
          *(v74 + 32) = 0;
          *(v74 + 16) = 0;
        }

        result = *(v1 + 24);
        v75 = -v177;
        if (*(result + 18) + *(result + 19) < 0)
        {
          result = sub_18195CB84(result, v1, v75);
          if (!v14)
          {
            goto LABEL_6;
          }
        }

        else
        {
          *(result[10] + 4 * v75) = *(v1 + 144);
          if (!v14)
          {
            goto LABEL_6;
          }
        }

        v50 = *(v3 + 31);
        if (v50 > 7)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }

      v51 = v1;
      v52 = 75;
      v53 = 0;
      v34 = 0;
    }

    sub_18194C8AC(v51, v52, v53, v31, v34);
    goto LABEL_60;
  }

  v4 = result;
  v5 = *(v2 + 24);
  if (v5)
  {
    v6 = *v5;
  }

  else
  {
    v6 = 0;
  }

  v178 = *(v2 + 100);
  v171 = *(v3 + 72);
  v173 = v171 - 2;
  *(v3 + 72) = v171 - 2;
  v76 = *(v3 + 31);
  if (!v76)
  {
    v77 = *(v3 + 60) + 1;
    *(v3 + 60) = v77;
LABEL_104:
    v78 = 0;
    v172 = *(v3 + 60) + 1;
    *(v3 + 60) = v172;
    if (!v6)
    {
      goto LABEL_102;
    }

LABEL_105:
    if (v6 == 1)
    {
      if (v78)
      {
        *(v3 + 31) = v78 - 1;
        v180 = *(v3 + 184 + 4 * (v78 - 1));
        if (v78 != 1)
        {
          v79 = v78 - 2;
          *(v3 + 31) = v79;
          v176 = *(v3 + 184 + 4 * v79);
          goto LABEL_117;
        }
      }

      else
      {
        v180 = *(v3 + 60) + 1;
        *(v3 + 60) = v180;
      }

      v86 = *(v3 + 60) + 1;
      v176 = v86;
    }

    else
    {
      v80 = *(v3 + 44);
      v81 = v80 - v6;
      if (v80 >= v6)
      {
        v180 = *(v3 + 48);
        *(v3 + 44) = v81;
        *(v3 + 48) = v180 + v6;
        v83 = __OFSUB__(v81, v6);
        v84 = v81 - v6;
        if (v84 < 0 == v83)
        {
          v176 = *(v3 + 48);
          *(v3 + 44) = v84;
          *(v3 + 48) = v176 + v6;
          goto LABEL_117;
        }
      }

      else
      {
        v82 = *(v3 + 60);
        v180 = v82 + 1;
        *(v3 + 60) = v82 + v6;
      }

      v85 = *(v3 + 60);
      v176 = v85 + 1;
      v86 = v85 + v6;
    }

    *(v3 + 60) = v86;
    goto LABEL_117;
  }

  *(v3 + 31) = v76 - 1;
  v77 = *(v3 + 184 + 4 * (v76 - 1));
  if (v76 == 1)
  {
    goto LABEL_104;
  }

  v78 = v76 - 2;
  *(v3 + 31) = v78;
  v172 = *(v3 + 184 + 4 * v78);
  if (v6)
  {
    goto LABEL_105;
  }

LABEL_102:
  v180 = 0;
  v176 = 0;
LABEL_117:
  v87 = *(v2 + 88);
  v88 = *(v1 + 144);
  v170 = v77;
  v89 = v2;
  if (*(v1 + 148) <= v88)
  {
    sub_18194C8AC(v1, 135, v87, v77, 0);
  }

  else
  {
    *(v1 + 144) = v88 + 1;
    v90 = *(v1 + 136) + 40 * v88;
    *v90 = 135;
    *(v90 + 4) = v87;
    *(v90 + 8) = v77;
    *(v90 + 12) = 0;
    *(v90 + 28) = 0;
    *(v90 + 20) = 0;
    *(v90 + 36) = 0;
  }

  v91 = *(v4 + 8);
  v92 = *(v91 + 24);
  if (!v92)
  {
    goto LABEL_130;
  }

  v93 = *(v2 + 88);
  v94 = sub_1818E7DFC(*v4);
  v95 = *(v91 + 16);
  if (v95)
  {
    LODWORD(v95) = *v95;
  }

  if (*v92 < 1)
  {
    goto LABEL_130;
  }

  v96 = 0;
  v97 = v95 + *(v91 + 120);
  do
  {
    v99 = v97 + v96;
    v100 = v180 + v96;
    v101 = *(v94 + 144);
    if (*(v94 + 148) > v101)
    {
      *(v94 + 144) = v101 + 1;
      v98 = *(v94 + 136) + 40 * v101;
      *v98 = 94;
      *(v98 + 4) = v93;
      *(v98 + 8) = v99;
      *(v98 + 12) = v100;
      *(v98 + 24) = 0;
      *(v98 + 32) = 0;
      *(v98 + 16) = 0;
    }

    else
    {
      sub_18194C8AC(v94, 94, v93, v99, v100);
    }

    ++v96;
  }

  while (v96 < *v92);
  v4 = v175;
  if (v89)
  {
LABEL_130:
    v102 = v89;
    do
    {
      while (1)
      {
        v104 = *(v102 + 92);
        v105 = *(v1 + 144);
        if (*(v1 + 148) <= v105)
        {
          break;
        }

        *(v1 + 144) = v105 + 1;
        v103 = *(v1 + 136) + 40 * v105;
        *v103 = 75;
        *(v103 + 8) = v104;
        *(v103 + 12) = 0;
        *(v103 + 28) = 0;
        *(v103 + 20) = 0;
        *(v103 + 36) = 0;
        v102 = *(v102 + 64);
        if (!v102)
        {
          goto LABEL_134;
        }
      }

      sub_18194C8AC(v1, 75, 0, v104, 0);
      v102 = *(v102 + 64);
    }

    while (v102);
  }

LABEL_134:
  v106 = v89;
  v107 = *(v89 + 132);
  v108 = *(v1 + 144);
  if (*(v1 + 148) <= v108)
  {
    sub_18194C8AC(v1, 23, v178, v173, v107);
  }

  else
  {
    *(v1 + 144) = v108 + 1;
    v109 = *(v1 + 136) + 40 * v108;
    *v109 = 23;
    *(v109 + 4) = v178;
    *(v109 + 8) = v173;
    *(v109 + 12) = v107;
    *(v109 + 24) = 0;
    *(v109 + 32) = 0;
    *(v109 + 16) = 0;
  }

  v111 = v171;
  v110 = v172;
  v112 = *(v1 + 144);
  v113 = v112;
  if (*(v1 + 148) <= v112)
  {
    sub_18194C8AC(v1, 135, v178, v172, 0);
  }

  else
  {
    *(v1 + 144) = v112 + 1;
    v114 = *(v1 + 136) + 40 * v112;
    *v114 = 135;
    *(v114 + 4) = v178;
    *(v114 + 8) = v172;
    *(v114 + 12) = 0;
    *(v114 + 28) = 0;
    *(v114 + 20) = 0;
    *(v114 + 36) = 0;
  }

  v115 = v170;
  v116 = *(v106 + 136);
  v117 = *(v1 + 144);
  if (*(v1 + 148) <= v117)
  {
    sub_18194C8AC(v1, 55, v116, v173, v172);
  }

  else
  {
    *(v1 + 144) = v117 + 1;
    v118 = *(v1 + 136) + 40 * v117;
    *v118 = 55;
    *(v118 + 4) = v116;
    *(v118 + 8) = v173;
    *(v118 + 12) = v172;
    *(v118 + 24) = 0;
    *(v118 + 32) = 0;
    *(v118 + 16) = 0;
  }

  v119 = *(v106 + 36);
  if (v119 != 67)
  {
    v120 = v171 - 1;
    if (v119 == 86)
    {
      v121 = *(v1 + 144);
      if (*(v1 + 148) <= v121)
      {
        sub_18194C8AC(v1, 54, v170, v120, v172);
      }

      else
      {
        *(v1 + 144) = v121 + 1;
        v122 = *(v1 + 136) + 40 * v121;
        *v122 = 54;
        *(v122 + 4) = v170;
        *(v122 + 8) = v120;
        *(v122 + 12) = v172;
        *(v122 + 24) = 0;
        *(v122 + 32) = 0;
        *(v122 + 16) = 0;
      }

      goto LABEL_187;
    }

    v174 = v171 - 1;
    v123 = *(v106 + 24);
    if (v123)
    {
      v124 = sub_181965648(v3, v123, 0, 0);
      if (*(v106 + 36) == 95)
      {
LABEL_149:
        v125 = *(v1 + 144);
        if (*(v1 + 148) > v125)
        {
          *(v1 + 144) = v125 + 1;
          v126 = *(v1 + 136) + 40 * v125;
          *v126 = 54;
          *(v126 + 4) = v170;
          *(v126 + 8) = 0;
          *(v126 + 12) = v172;
          *(v126 + 24) = 0;
          *(v126 + 32) = 0;
          *(v126 + 16) = 0;
          if (!v124)
          {
            goto LABEL_173;
          }

LABEL_155:
          v166 = v124;
          v167 = v106;
          v168 = v125;
          v169 = v113;
          v127 = *(v4 + 8);
          v128 = *(v127 + 24);
          if (v128)
          {
            v129 = sub_1818E7DFC(*v175);
            v130 = *(v127 + 16);
            if (v130)
            {
              LODWORD(v130) = *v130;
            }

            if (*v128 >= 1)
            {
              v131 = 0;
              v132 = v130 + *(v127 + 120);
              do
              {
                v134 = v132 + v131;
                v135 = v176 + v131;
                v136 = *(v129 + 144);
                if (*(v129 + 148) > v136)
                {
                  *(v129 + 144) = v136 + 1;
                  v133 = *(v129 + 136) + 40 * v136;
                  *v133 = 94;
                  *(v133 + 4) = v178;
                  *(v133 + 8) = v134;
                  *(v133 + 12) = v135;
                  *(v133 + 24) = 0;
                  *(v133 + 32) = 0;
                  *(v133 + 16) = 0;
                }

                else
                {
                  sub_18194C8AC(v129, 94, v178, v134, v135);
                }

                ++v131;
              }

              while (v131 < *v128);
            }
          }

          v137 = *(v1 + 144);
          if (*(v1 + 148) <= v137)
          {
            sub_18194C8AC(v1, 90, v176, v180, v6);
          }

          else
          {
            *(v1 + 144) = v137 + 1;
            v138 = *(v1 + 136) + 40 * v137;
            *v138 = 90;
            *(v138 + 4) = v176;
            *(v138 + 8) = v180;
            *(v138 + 12) = v6;
            *(v138 + 24) = 0;
            *(v138 + 32) = 0;
            *(v138 + 16) = 0;
          }

          v115 = v170;
          v111 = v171;
          v106 = v167;
          v113 = v169;
          if (*(*v1 + 103))
          {
            v4 = v175;
            v110 = v172;
            if (!*(*v1 + 824))
            {
              v10 = (*v166)-- == 1;
              if (v10)
              {
                sub_181939EC8(v166[2], v166);
              }
            }
          }

          else
          {
            v143 = *(v1 + 136) + 40 * *(v1 + 144);
            *(v143 - 39) = -8;
            *(v143 - 24) = v166;
            v4 = v175;
            v110 = v172;
          }

          v144 = *(v1 + 144);
          v145 = v144 + 1;
          if (*(v1 + 148) > v144)
          {
            *(v1 + 144) = v145;
            v146 = *(v1 + 136) + 40 * v144;
            *v146 = 14;
            *(v146 + 4) = v145;
            *(v146 + 8) = v174;
            *(v146 + 12) = v145;
            *(v146 + 24) = 0;
            *(v146 + 32) = 0;
            *(v146 + 16) = 0;
LABEL_181:
            v125 = v168;
LABEL_182:
            if (v125)
            {
              if (*(*v1 + 103))
              {
                v151 = &byte_1EA831A58;
              }

              else
              {
                v151 = (*(v1 + 136) + 40 * v125);
              }

              *(v151 + 2) = *(v1 + 144);
            }

            goto LABEL_187;
          }

          v147 = v1;
          v148 = 14;
          v149 = v171 - 1;
          v150 = v144 + 1;
LABEL_180:
          sub_18194C8AC(v147, v148, v145, v149, v150);
          goto LABEL_181;
        }

        v139 = v124;
        v140 = sub_18194C8AC(v1, 54, v170, 0, v172);
        v124 = v139;
        v113 = v112;
        v125 = v140;
        if (v124)
        {
          goto LABEL_155;
        }

LABEL_173:
        v141 = *(v1 + 144);
        if (*(v1 + 148) > v141)
        {
          *(v1 + 144) = v141 + 1;
          v142 = *(v1 + 136) + 40 * v141;
          *v142 = 9;
          *(v142 + 8) = v174;
          *(v142 + 12) = 0;
          *(v142 + 28) = 0;
          *(v142 + 20) = 0;
          *(v142 + 36) = 0;
          goto LABEL_182;
        }

        v147 = v1;
        v148 = 9;
        v145 = 0;
        v168 = v125;
        v149 = v171 - 1;
        v150 = 0;
        goto LABEL_180;
      }
    }

    else
    {
      v124 = 0;
      if (v119 == 95)
      {
        goto LABEL_149;
      }
    }

    v125 = 0;
    if (v124)
    {
      goto LABEL_155;
    }

    goto LABEL_173;
  }

LABEL_187:
  sub_18197E414(v4, v106, v178, 0, *(v4 + 32));
  v152 = *(v1 + 24);
  v153 = -v111;
  if (*(v152 + 72) + *(v152 + 76) < 0)
  {
    sub_18195CB84(v152, v1, v153);
    v154 = *(v1 + 144);
  }

  else
  {
    v154 = *(v1 + 144);
    *(*(v152 + 80) + 4 * v153) = v154;
  }

  if (*(v1 + 148) <= v154)
  {
    sub_18194C8AC(v1, 39, v178, v112, 0);
  }

  else
  {
    *(v1 + 144) = v154 + 1;
    v155 = *(v1 + 136) + 40 * v154;
    *v155 = 39;
    *(v155 + 4) = v178;
    *(v155 + 8) = v112;
    *(v155 + 12) = 0;
    *(v155 + 28) = 0;
    *(v155 + 20) = 0;
    *(v155 + 36) = 0;
  }

  v156 = *(v1 + 144);
  if (!*(*v1 + 103))
  {
    v157 = *(v1 + 136) + 40 * v113;
    *(v157 - 32) = v156;
    *(v157 + 48) = v156;
    if (!v110)
    {
      goto LABEL_199;
    }

LABEL_197:
    v158 = *(v3 + 31);
    if (v158 <= 7)
    {
      *(v3 + 31) = v158 + 1;
      *(v3 + 4 * v158 + 184) = v110;
    }

    goto LABEL_199;
  }

  dword_1EA831A60 = *(v1 + 144);
  if (v110)
  {
    goto LABEL_197;
  }

LABEL_199:
  if (v115)
  {
    v159 = *(v3 + 31);
    if (v159 <= 7)
    {
      *(v3 + 31) = v159 + 1;
      *(v3 + 4 * v159 + 184) = v115;
    }
  }

  if (v6)
  {
    if (v6 == 1)
    {
      if (v176)
      {
        v160 = *(v3 + 31);
        if (v160 <= 7)
        {
          *(v3 + 31) = v160 + 1;
          *(v3 + 4 * v160 + 184) = v176;
        }
      }

      if (v180)
      {
        v161 = *(v3 + 31);
        if (v161 <= 7)
        {
          *(v3 + 31) = v161 + 1;
          *(v3 + 4 * v161 + 184) = v180;
        }
      }
    }

    else if (*(v3 + 44) < v6)
    {
      *(v3 + 44) = v6;
      *(v3 + 48) = v176;
    }
  }

  result = sub_18197BB58(v4, 1);
LABEL_213:
  v163 = v175[6];
  v162 = v175[7];
  v164 = *(v1 + 144);
  if (*(v1 + 148) <= v164)
  {

    return sub_18194C8AC(v1, 10, v162, v163, 0);
  }

  else
  {
    *(v1 + 144) = v164 + 1;
    v165 = *(v1 + 136) + 40 * v164;
    *v165 = 10;
    *(v165 + 4) = v162;
    *(v165 + 8) = v163;
    *(v165 + 12) = 0;
    *(v165 + 28) = 0;
    *(v165 + 20) = 0;
    *(v165 + 36) = 0;
  }

  return result;
}

uint64_t sub_18197D078(uint64_t *a1, int *a2, int a3, int a4, int a5)
{
  result = sub_1818E7DFC(a1);
  v11 = a2;
  v12 = result;
  if (v11)
  {
    v13 = *v11;
    result = sub_181965648(a1, v11, 0, 0);
    v14 = result;
    v15 = *(v12 + 144);
    if (*(v12 + 148) <= v15)
    {
      result = sub_18194C8AC(v12, 90, a4, a3, v13);
    }

    else
    {
      *(v12 + 144) = v15 + 1;
      v16 = *(v12 + 136) + 40 * v15;
      *v16 = 90;
      *(v16 + 4) = a4;
      *(v16 + 8) = a3;
      *(v16 + 12) = v13;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0;
      *(v16 + 16) = 0;
    }

    if (*(*v12 + 103))
    {
      if (v14)
      {
        if (!*(*v12 + 824) && (*v14)-- == 1)
        {
          result = sub_181939EC8(*(v14 + 16), v14);
        }
      }
    }

    else
    {
      v20 = *(v12 + 136) + 40 * *(v12 + 144);
      *(v20 - 39) = -8;
      *(v20 - 24) = v14;
    }

    v21 = *(v12 + 144);
    v22 = v21 + 1;
    if (*(v12 + 148) <= v21)
    {
      result = sub_18194C8AC(v12, 14, v22, a5, v21 + 1);
    }

    else
    {
      *(v12 + 144) = v22;
      v23 = *(v12 + 136) + 40 * v21;
      *v23 = 14;
      *(v23 + 4) = v22;
      *(v23 + 8) = a5;
      *(v23 + 12) = v22;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0;
      *(v23 + 16) = 0;
    }

    v24 = v13 - 1;
    v25 = *(v12 + 144);
    if (*(v12 + 148) > v25)
    {
      *(v12 + 144) = v25 + 1;
      v26 = *(v12 + 136) + 40 * v25;
      *v26 = 80;
      *(v26 + 4) = a3;
      *(v26 + 8) = a4;
      *(v26 + 12) = v24;
      *(v26 + 24) = 0;
      *(v26 + 32) = 0;
      *(v26 + 16) = 0;
      return result;
    }

    result = v12;
    v27 = 80;
    v28 = a3;
    v29 = a4;
  }

  else
  {
    v17 = *(result + 144);
    if (*(result + 148) > v17)
    {
      *(result + 144) = v17 + 1;
      v18 = *(result + 136) + 40 * v17;
      *v18 = 9;
      *(v18 + 8) = a5;
      *(v18 + 12) = 0;
      *(v18 + 28) = 0;
      *(v18 + 20) = 0;
      *(v18 + 36) = 0;
      return result;
    }

    v27 = 9;
    v28 = 0;
    v29 = a5;
    v24 = 0;
  }

  return sub_18194C8AC(result, v27, v28, v29, v24);
}

uint64_t sub_18197D2A4(uint64_t **a1, int a2, uint64_t a3, int a4)
{
  v5 = a3;
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v11 = *(v8 + 32);
  v12 = *(*a1 + 18);
  v13 = v12 - 1;
  *(*a1 + 18) = v12 - 1;
  if (a2 == 2 && *(v8 + 33) == 91)
  {
    return 0;
  }

  v88 = v8;
  if (a3 < 1)
  {
LABEL_14:
    v15 = 0;
    if (a2 != 1)
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v15 = *(v10 + 36);
  if (v11 != 90)
  {
    if (*(v10 + 37) <= v15)
    {
      sub_18194C8AC(v10, 50, a3, v12 - 1, 1);
      v8 = v88;
    }

    else
    {
      *(v10 + 36) = v15 + 1;
      v19 = v10[17] + 40 * v15;
      *v19 = 50;
      *(v19 + 4) = a3;
      *(v19 + 8) = v13;
      *(v19 + 12) = 1;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0;
      *(v19 + 16) = 0;
    }

    goto LABEL_14;
  }

  if (a2 == 2)
  {
    if (*(v8 + 33) == 87)
    {
      v16 = *(a1 + 13);
      v17 = *(a1 + 11);
      v18 = 56;
    }

    else
    {
      v16 = *(a1 + 11);
      v17 = *(a1 + 13);
      v18 = 58;
    }

    sub_18197DC1C(a1, v18, v16, v5, v17, v12 - 1);
    goto LABEL_19;
  }

  sub_18197DC1C(a1, 55, *(a1 + 15), a3, *(a1 + 13), v12 - 1);
  v8 = v88;
  if (a2 != 1)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (!*(v8 + 33))
  {
    sub_18197BB58(a1, 0);
LABEL_19:
    v8 = v88;
  }

LABEL_20:
  v87 = *(v10 + 36);
  if (!v5 || *(v8 + 33) != *(v8 + 34) || *(v8 + 32) != 90)
  {
    goto LABEL_54;
  }

  v85 = v15;
  v20 = *(v9 + 31);
  if (!v20)
  {
    v26 = v9[15] + 1;
    v21 = v26;
    goto LABEL_31;
  }

  *(v9 + 31) = v20 - 1;
  v21 = v9[(v20 - 1) + 46];
  if (v20 == 1)
  {
    v26 = v9[15];
LABEL_31:
    v23 = v26 + 1;
    v9[15] = v26 + 1;
    if (a2 != 2)
    {
      goto LABEL_26;
    }

    goto LABEL_32;
  }

  v22 = v20 - 2;
  *(v9 + 31) = v22;
  v23 = v9[v22 + 46];
  if (a2 != 2)
  {
LABEL_26:
    if (!*(a1 + 10))
    {
      goto LABEL_48;
    }

    v24 = *(a1 + 15);
    if (*(v10 + 37) <= v87)
    {
      sub_18194C8AC(v10, 135, v24, v21, 0);
    }

    else
    {
      *(v10 + 36) = v87 + 1;
      v25 = v10[17] + 40 * v87;
      *v25 = 135;
      *(v25 + 4) = v24;
      *(v25 + 8) = v21;
      *(v25 + 12) = 0;
      *(v25 + 28) = 0;
      *(v25 + 20) = 0;
      *(v25 + 36) = 0;
    }

    v35 = *(a1 + 10);
    v36 = *(v10 + 36);
    if (*(v10 + 37) > v36)
    {
      *(v10 + 36) = v36 + 1;
      v33 = v10[17] + 40 * v36;
      *v33 = 58;
      *(v33 + 4) = v35;
      goto LABEL_44;
    }

    v34 = v10;
LABEL_46:
    sub_18194C8AC(v34, 58, v35, v12 - 1, v21);
    goto LABEL_47;
  }

LABEL_32:
  v27 = *(a1 + 11);
  if (*(v10 + 37) <= v87)
  {
    sub_18194C8AC(v10, 135, v27, v21, 0);
  }

  else
  {
    *(v10 + 36) = v87 + 1;
    v28 = v10[17] + 40 * v87;
    *v28 = 135;
    *(v28 + 4) = v27;
    *(v28 + 8) = v21;
    *(v28 + 12) = 0;
    *(v28 + 28) = 0;
    *(v28 + 20) = 0;
    *(v28 + 36) = 0;
  }

  v29 = *(a1 + 15);
  v30 = *(v10 + 36);
  if (*(v10 + 37) <= v30)
  {
    sub_18194C8AC(v10, 135, v29, v23, 0);
  }

  else
  {
    *(v10 + 36) = v30 + 1;
    v31 = v10[17] + 40 * v30;
    *v31 = 135;
    *(v31 + 4) = v29;
    *(v31 + 8) = v23;
    *(v31 + 12) = 0;
    *(v31 + 28) = 0;
    *(v31 + 20) = 0;
    *(v31 + 36) = 0;
  }

  v32 = *(v10 + 36);
  if (*(v10 + 37) <= v32)
  {
    v34 = v10;
    v35 = v23;
    goto LABEL_46;
  }

  *(v10 + 36) = v32 + 1;
  v33 = v10[17] + 40 * v32;
  *v33 = 58;
  *(v33 + 4) = v23;
LABEL_44:
  *(v33 + 8) = v13;
  *(v33 + 12) = v21;
  *(v33 + 24) = 0;
  *(v33 + 32) = 0;
  *(v33 + 16) = 0;
LABEL_47:
  v8 = v88;
LABEL_48:
  if (v21)
  {
    v37 = *(v9 + 31);
    if (v37 <= 7)
    {
      *(v9 + 31) = v37 + 1;
      v9[v37 + 46] = v21;
    }
  }

  v15 = v85;
  if (v23)
  {
    v38 = *(v9 + 31);
    if (v38 <= 7)
    {
      *(v9 + 31) = v38 + 1;
      v9[v38 + 46] = v23;
    }
  }

LABEL_54:
  if (a2 == 2)
  {
    v39 = *(a1 + 44);
    v40 = *(v8 + 33);
    if (v40)
    {
      goto LABEL_61;
    }

    v41 = *(a1 + 8);
    v42 = *(a1 + 44);
    v43 = a1;
    v44 = 1;
LABEL_65:
    v89 = v39;
    sub_18197E414(v43, v8, v42, v44, v41);
    goto LABEL_66;
  }

  if (a2 == 1)
  {
    v89 = *(a1 + 52);
    sub_18197BEE0(a1);
LABEL_66:
    v39 = v89;
    goto LABEL_67;
  }

  v39 = *(a1 + 60);
  if (!*(v8 + 33))
  {
    v41 = *(a1 + 8);
    v42 = *(a1 + 60);
    v43 = a1;
    v44 = 0;
    goto LABEL_65;
  }

  v40 = *(v8 + 34);
LABEL_61:
  v45 = *(v10 + 36);
  if (*(v10 + 37) <= v45)
  {
    v89 = v39;
    sub_18194C8AC(v10, 86, v40, 1, 0);
    goto LABEL_66;
  }

  *(v10 + 36) = v45 + 1;
  v46 = v10[17] + 40 * v45;
  *v46 = 86;
  *(v46 + 4) = v40;
  *(v46 + 8) = 1;
  *(v46 + 12) = 0;
  *(v46 + 28) = 0;
  *(v46 + 20) = 0;
  *(v46 + 36) = 0;
LABEL_67:
  v47 = *(v10 + 36);
  v48 = v47;
  v90 = v39;
  if (*(a1 + 9) == a2)
  {
    if (*(v10 + 37) <= v47)
    {
      sub_18194C8AC(v10, 130, v39, 0, 0);
      LODWORD(v39) = v90;
    }

    else
    {
      *(v10 + 36) = v47 + 1;
      v49 = v10[17] + 40 * v47;
      *v49 = 130;
      *(v49 + 4) = v39;
      *(v49 + 8) = 0u;
      *(v49 + 24) = 0u;
    }

    v48 = *(v10 + 36);
    if (v48 >= 1)
    {
      *(v10[17] + 40 * v48 - 38) = 2;
    }
  }

  if (!a4)
  {
    v52 = v48 + 1 + (v11 != 77);
    if (*(v10 + 37) <= v48)
    {
      sub_18194C8AC(v10, 39, v39, v52, 0);
      if (v11 == 77)
      {
        goto LABEL_78;
      }
    }

    else
    {
      *(v10 + 36) = v48 + 1;
      v53 = v10[17] + 40 * v48;
      *v53 = 39;
      *(v53 + 4) = v39;
      *(v53 + 8) = v52;
      *(v53 + 12) = 0;
      *(v53 + 28) = 0;
      *(v53 + 20) = 0;
      *(v53 + 36) = 0;
      if (v11 == 77)
      {
LABEL_78:
        v14 = 0;
        goto LABEL_118;
      }
    }

    v57 = *(v10 + 36);
    if (*(v10 + 37) <= v57)
    {
      sub_18194C8AC(v10, 9, 0, v12 - 1, 0);
      v14 = 0;
    }

    else
    {
      v14 = 0;
      *(v10 + 36) = v57 + 1;
      v58 = v10[17] + 40 * v57;
      *v58 = 9;
      *(v58 + 8) = v13;
      *(v58 + 12) = 0;
      *(v58 + 28) = 0;
      *(v58 + 20) = 0;
      *(v58 + 36) = 0;
    }

    v55 = v88;
    v56 = HIDWORD(v90);
LABEL_90:
    v59 = v55[3];
    v83 = v12;
    v84 = v14;
    v86 = v15;
    if (v59)
    {
      v60 = *v59;
      if (*v59)
      {
        if (v60 == 1)
        {
          if (*(v9 + 31))
          {
            v61 = *(v9 + 31) - 1;
            *(v9 + 31) = v61;
            v62 = v9[v61 + 46];
          }

          else
          {
            v62 = v9[15] + 1;
            v9[15] = v62;
          }

          v60 = 1;
        }

        else
        {
          v63 = v9[11];
          v64 = __OFSUB__(v63, v60);
          v65 = v63 - v60;
          if (v65 < 0 != v64)
          {
            v66 = v9[15];
            v62 = v66 + 1;
            v9[15] = v66 + v60;
          }

          else
          {
            v62 = v9[12];
            v9[11] = v65;
            v9[12] = v62 + v60;
          }
        }
      }

      else
      {
        v62 = 0;
      }
    }

    else
    {
      v60 = 0;
      v62 = 0;
    }

    v67 = a1[1];
    v68 = v67[3];
    if (v68)
    {
      v69 = sub_1818E7DFC(*a1);
      v70 = v67[2];
      if (v70)
      {
        LODWORD(v70) = *v70;
      }

      v56 = HIDWORD(v90);
      if (*v68 >= 1)
      {
        v71 = 0;
        v72 = v70 + *(v67 + 30);
        do
        {
          v74 = v72 + v71;
          v75 = v62 + v71;
          v76 = *(v69 + 144);
          if (*(v69 + 148) > v76)
          {
            *(v69 + 144) = v76 + 1;
            v73 = *(v69 + 136) + 40 * v76;
            *v73 = 94;
            *(v73 + 4) = v90;
            *(v73 + 8) = v74;
            *(v73 + 12) = v75;
            *(v73 + 24) = 0;
            *(v73 + 32) = 0;
            *(v73 + 16) = 0;
          }

          else
          {
            sub_18194C8AC(v69, 94, v90, v74, v75);
            v56 = HIDWORD(v90);
          }

          ++v71;
        }

        while (v71 < *v68);
      }
    }

    sub_18197D078(v9, v88[3], v62, v56, v87);
    if (v60 == 1)
    {
      v12 = v83;
      v15 = v86;
      if (v62)
      {
        v77 = *(v9 + 31);
        if (v77 <= 7)
        {
          *(v9 + 31) = v77 + 1;
          v9[v77 + 46] = v62;
        }
      }
    }

    else
    {
      v12 = v83;
      v15 = v86;
      if (v9[11] < v60)
      {
        v9[11] = v60;
        v9[12] = v62;
      }
    }

    v14 = v84;
    goto LABEL_118;
  }

  v50 = v48 + 2;
  if (*(v10 + 37) <= v48)
  {
    sub_18194C8AC(v10, 39, v39, v50, 0);
  }

  else
  {
    *(v10 + 36) = v48 + 1;
    v51 = v10[17] + 40 * v48;
    *v51 = 39;
    *(v51 + 4) = v39;
    *(v51 + 8) = v50;
    *(v51 + 12) = 0;
    *(v51 + 28) = 0;
    *(v51 + 20) = 0;
    *(v51 + 36) = 0;
  }

  v14 = *(v10 + 36);
  if (*(v10 + 37) <= v14)
  {
    v14 = sub_18194C8AC(v10, 9, 0, 0, 0);
  }

  else
  {
    *(v10 + 36) = v14 + 1;
    v54 = v10[17] + 40 * v14;
    *v54 = 9;
    *(v54 + 1) = 0u;
    *(v54 + 17) = 0u;
    *(v54 + 32) = 0;
  }

  v55 = v88;
  v56 = HIDWORD(v90);
  if (v11 != 77)
  {
    goto LABEL_90;
  }

LABEL_118:
  if (v15)
  {
    v78 = *(v10 + 36);
    if (*(v10 + 37) <= v78)
    {
      sub_18194C8AC(v10, 9, 0, v15, 0);
    }

    else
    {
      *(v10 + 36) = v78 + 1;
      v79 = v10[17] + 40 * v78;
      *v79 = 9;
      *(v79 + 8) = v15;
      *(v79 + 12) = 0;
      *(v79 + 28) = 0;
      *(v79 + 20) = 0;
      *(v79 + 36) = 0;
    }
  }

  v80 = v10[3];
  v81 = -v12;
  if (*(v80 + 72) + *(v80 + 76) < 0)
  {
    sub_18195CB84(v80, v10, v81);
  }

  else
  {
    *(*(v80 + 80) + 4 * v81) = *(v10 + 36);
  }

  return v14;
}