uint64_t sub_1818DBA90(unsigned __int8 *a1, char **a2, int a3, unsigned int a4)
{
  LODWORD(v5) = a3;
  v97 = a4;
  v98 = 0;
  v8 = *(a1 + 1);
  v9 = a1[1];
  if ((v9 & 0x20) != 0)
  {
    v10 = *(*(v8 + 8) + 16);
    if (v10)
    {
      v11 = *(a1 + 20);
      while (v10 == a1 || v11 && *(v10 + 80) != v11)
      {
        v10 = *(v10 + 40);
        if (!v10)
        {
          if (!a1)
          {
            goto LABEL_13;
          }

          goto LABEL_12;
        }
      }

      result = sub_18193880C(v10, v11, a1);
      v98 = result;
      if (result)
      {
        return result;
      }

      if (a4)
      {
        goto LABEL_14;
      }
    }

    else
    {
LABEL_12:
      a1[1] = v9 & 0xDF;
LABEL_13:
      v98 = 0;
      if (a4)
      {
LABEL_14:
        if (a1[84] < 0)
        {

          return sub_18190EDA8(88635);
        }
      }
    }
  }

  if (*a1 >= 3u)
  {
    result = sub_1818C6AC0(a1);
    v98 = result;
    if ((result & 0xFFFFFFEF) != 0)
    {
      return result;
    }
  }

  v13 = *(a1 + 16);
  if (v13)
  {
    if (v5 & 2 | a4)
    {
      if (a4)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v21 = *(a2 + 16);
      if (v21)
      {
        *&v96 = 0;
        v22 = a2[3];
        *&v94 = v13;
        *(&v94 + 1) = v22;
        v95 = 0uLL;
        WORD6(v95) = v21;
        result = sub_18193F674(a1, &v94, &v97);
        v98 = result;
        if (result)
        {
          return result;
        }
      }

      else
      {
        result = sub_1818DC828(a1, *a2, a2[1], (v5 >> 3) & 1, &v97);
        v98 = result;
        if (result)
        {
          return result;
        }
      }

      if (v97)
      {
        goto LABEL_50;
      }
    }

    sub_181938B20(a1);
    v14 = *(a1 + 6);
    if (v14 == a2[1])
    {
      v95 = 0u;
      v96 = 0u;
      v94 = 0u;
      *&v95 = *a2;
      DWORD1(v96) = v14;
      v15 = *(a1 + 17);
      v16 = *(a1 + 7);
      v17 = *(a1 + 34);
      if (v16 + v17 > *(v15 + 88) || v16 < *(v15 + 80) + *(v15 + 18))
      {
        return sub_18193596C(88554, v15);
      }

      if (v14 == v17)
      {
        return sub_1819455D0(*(a1 + 17), *(a1 + 7), &v94, 0, v14);
      }

      return sub_181945778(a1, &v94);
    }
  }

  else
  {
    if (*(v8 + 19))
    {
      v18 = *(a1 + 20);
      v19 = a2[1];
      *(v8 + 19) = 0;
      for (i = *(*(v8 + 8) + 16); i; i = *(i + 40))
      {
        if ((*(i + 1) & 0x10) != 0)
        {
          *(v8 + 19) = 1;
          if (*(i + 80) == v18 && *(i + 48) == v19)
          {
            *i = 1;
          }
        }
      }
    }

    if ((a1[1] & 2) != 0 && a2[1] == *(a1 + 6))
    {
      if (*(a1 + 35) && *(a1 + 16) == *(a2 + 10) + *(a2 + 9))
      {

        return sub_18194545C(a1, a2);
      }
    }

    else if (!a4)
    {
      result = sub_18193F3D4(a1, a2[1], (v5 & 8) != 0, &v97);
      v98 = result;
      if (result)
      {
        return result;
      }
    }
  }

LABEL_50:
  v23 = *(a1 + 17);
  if ((*(v23 + 20) & 0x80000000) != 0)
  {
    if (*a1 >= 2u)
    {
      v32 = 88758;
      return sub_18193596C(v32, v23);
    }

    result = sub_1819454C4(*(a1 + 17));
    v98 = result;
    if (result)
    {
      return result;
    }
  }

  v24 = *(v8 + 8);
  v25 = *(v24 + 136);
  if ((v5 & 0x80) != 0)
  {
    v98 = 0;
    v33 = *(v24 + 144);
    if (v33 <= 3)
    {
      v25[3] = 0;
      v24 = *(v8 + 8);
      v33 = 4;
    }

    if (*(v24 + 33))
    {
      if (v33 > *(v23 + 14))
      {
        v94 = 0uLL;
        *&v95 = 0;
        (*(v23 + 128))(v23, v25, &v94);
        if (v95 != WORD2(v95))
        {
          sub_1818EF720(*(v8 + 8), bswap32(*&v25[v33 - 4]), 3, *(v23 + 4), &v98);
          result = v98;
          if (v98)
          {
            return result;
          }
        }
      }
    }

LABEL_135:
    v63 = *(a1 + 43);
    *(a1 + 35) = 0;
    if (v97)
    {
      if ((v97 & 0x80000000) != 0 && *(v23 + 24))
      {
        *(a1 + 43) = v63 + 1;
        LODWORD(v63) = (v63 + 1);
        a1[1] &= 0xF9u;
      }

      goto LABEL_139;
    }

    v94 = 0uLL;
    *&v95 = 0;
    if (v63 >= *(v23 + 24))
    {
      v32 = 88800;
      return sub_18193596C(v32, v23);
    }

    v65 = *(v23 + 112);
    v66 = *(v65 + 40);
    if ((*(v65 + 52) & 4) != 0 && v66[8] >= *(v65 + 48))
    {
      if (!v66[32])
      {
LABEL_172:
        v78 = (*(v23 + 80) + ((*(*(v23 + 96) + 2 * v63 + 1) | (*(*(v23 + 96) + 2 * v63) << 8)) & *(v23 + 26)));
        if (!*(v23 + 8))
        {
          *v25 = *v78;
        }

        (*(v23 + 128))(v23, v78, &v94);
        if (v95 == WORD2(v95))
        {
          v79 = 0;
        }

        else
        {
          v79 = sub_181943DF0(v23, v78, &v94);
        }

        v98 = v79;
        a1[1] &= ~4u;
        if (v33 != WORD3(v95) || v95 != WORD2(v95) || *(*(v8 + 8) + 33) && v33 >= *(v23 + 16))
        {
          sub_1818D927C(v23, v63, WORD3(v95), &v98);
          result = v98;
          if (v98)
          {
            return result;
          }

LABEL_139:
          v100 = 0;
          if (v33 + 2 > *(v23 + 20))
          {
            result = 0;
            v64 = *(v23 + 12);
            *(v23 + 12) = v64 + 1;
            *(v23 + 8 * v64 + 40) = v25;
            *(v23 + 2 * v64 + 28) = v63;
            if (!*(v23 + 12))
            {
              return result;
            }

            goto LABEL_187;
          }

          v68 = *(v23 + 112);
          v69 = *(v68 + 40);
          if ((*(v68 + 52) & 4) != 0 && v69[8] >= *(v68 + 48))
          {
            if (!v69[32])
            {
LABEL_161:
              v71 = *(v23 + 80);
              result = sub_181945C04(v23, v33, &v100);
              if (!result)
              {
                *(v23 + 20) -= (v33 + 2);
                v72 = v100;
                memcpy((v71 + v100), v25, v33);
                v73 = v23;
                v74 = (*(v23 + 96) + 2 * v63);
                memmove(v74 + 1, v74, 2 * (*(v73 + 24) - v63));
                *v74 = bswap32(v72) >> 16;
                v23 = v73;
                ++*(v73 + 24);
                v75 = v71 + *(v73 + 9);
                v76 = (*(v75 + 4))++ + 1;
                if ((v76 & 0x100) != 0)
                {
                  ++*(v71 + *(v73 + 9) + 3);
                }

                if (*(*(v73 + 72) + 33))
                {
                  v99 = 0;
                  v94 = 0uLL;
                  *&v95 = 0;
                  (*(v73 + 128))(v73, v25, &v94);
                  if (v95 > WORD2(v95))
                  {
                    v77 = *(v73 + 88);
                    if (v77 <= v25 || &v25[WORD2(v95)] <= v77)
                    {
                      sub_1818EF720(*(v73 + 72), bswap32(*&v25[WORD3(v95) - 4]), 3, *(v73 + 4), &v99);
                      result = v99;
                      if (!*(v73 + 12))
                      {
                        return result;
                      }
                    }

                    else
                    {
                      result = sub_18190EDA8(80846);
                      if (!*(v73 + 12))
                      {
                        return result;
                      }
                    }

LABEL_187:
                    a1[1] &= 0xF9u;
                    result = sub_1818D93BC(a1);
                    *(*(a1 + 17) + 12) = 0;
                    *a1 = 1;
                    if ((v5 & 2) == 0 || result)
                    {
                      return result;
                    }

                    sub_1819388DC(a1);
                    if (*(a1 + 16))
                    {
                      v80 = sub_181902484(a2[1], 42528782);
                      *(a1 + 3) = v80;
                      if (!v80)
                      {
                        result = 7;
                        goto LABEL_194;
                      }

                      memcpy(v80, *a2, a2[1]);
                    }

                    result = 0;
LABEL_194:
                    *a1 = 3;
                    *(a1 + 9) = a2[1];
                    return result;
                  }
                }

                result = 0;
              }

LABEL_186:
              if (!*(v23 + 12))
              {
                return result;
              }

              goto LABEL_187;
            }

            result = sub_1819360C0(*(v23 + 112));
          }

          else
          {
            result = v69[12];
            if (result)
            {
              goto LABEL_186;
            }

            v70 = *(v23 + 112);
            if (v69[46] <= v69[50])
            {
              result = sub_1818D8DD8(v70);
            }

            else
            {
              result = sub_181936438(v70);
            }
          }

          if (result)
          {
            goto LABEL_186;
          }

          goto LABEL_161;
        }

        if (v78 >= *(v23 + 80) + *(v23 + 9) + 10)
        {
          if (v78 + v33 <= *(v23 + 88))
          {
            memcpy(v78, v25, v33);
            return 0;
          }

          v32 = 88830;
        }

        else
        {
          v32 = 88827;
        }

        return sub_18193596C(v32, v23);
      }

      result = sub_1819360C0(*(v23 + 112));
    }

    else
    {
      result = v66[12];
      if (result)
      {
        return result;
      }

      v67 = *(v23 + 112);
      if (v66[46] <= v66[50])
      {
        result = sub_1818D8DD8(v67);
      }

      else
      {
        result = sub_181936438(v67);
      }
    }

    if (result)
    {
      return result;
    }

    goto LABEL_172;
  }

  v100 = 0;
  v26 = *(v23 + 10);
  v92 = v5;
  if (*(v23 + 1))
  {
    v28 = *(a2 + 9);
    v27 = *(a2 + 10);
    v29 = &v28[v27];
    v30 = a2[2];
    if ((v27 + v28) > 0x7F)
    {
      v35 = &v25[v26];
      if (v29 >> 14)
      {
        v31 = sub_1819436D0(v35, v29);
      }

      else
      {
        v35->i8[0] = (v29 >> 7) | 0x80;
        v35->i8[1] = v29 & 0x7F;
        v31 = 2;
      }
    }

    else
    {
      v25[v26] = v29;
      v31 = 1;
    }

    v37 = (v31 + v26);
    v38 = &v25[v37];
    v39 = a2[1];
    if (v39 > 0x7F)
    {
      if (v39 >> 14)
      {
        v40 = sub_1819436D0(v38, v39);
      }

      else
      {
        v38->i8[0] = (v39 >> 7) | 0x80;
        v38->i8[1] = v39 & 0x7F;
        v40 = 2;
      }
    }

    else
    {
      v38->i8[0] = v39;
      v40 = 1;
    }

    v41 = v40 + v37;
  }

  else
  {
    v30 = *a2;
    v28 = a2[1];
    if (v28 > 0x7F)
    {
      v36 = &v25[v26];
      if (v28 > 0x7F)
      {
        if (v28 >> 14)
        {
          v34 = sub_1819436D0(v36, v28);
        }

        else
        {
          v36->i8[0] = (v28 >> 7) | 0x80;
          v36->i8[1] = v28 & 0x7F;
          v34 = 2;
        }
      }

      else
      {
        v36->i8[0] = v28;
        v34 = 1;
      }
    }

    else
    {
      v25[*(v23 + 10)] = v28;
      v34 = 1;
    }

    v41 = v34 + v26;
    LODWORD(v29) = v28;
  }

  v5 = &v25[v41];
  v42 = *(v23 + 14);
  v93 = a2;
  if (v29 <= v42)
  {
    v60 = (v29 + v41);
    if (v60 <= 3)
    {
      *(v5 + v29) = 0;
      v60 = 4;
    }

    memcpy(v5, v30, v28);
    bzero((v5 + v28), v29 - v28);
    LOBYTE(v5) = v92;
    v33 = v60;
    a2 = v93;
    goto LABEL_135;
  }

  v43 = *(v23 + 16);
  v88 = v25;
  v89 = v23;
  v44 = *(v23 + 72);
  if (((v29 - v43) % (*(v44 + 56) - 4) + v43) <= v42)
  {
    v45 = (v29 - v43) % (*(v44 + 56) - 4) + v43;
  }

  else
  {
    v45 = *(v23 + 16);
  }

  v46 = v41 + v45;
  v87 = (v46 + 4);
  v90 = &v25[v46];
  v91 = 0;
  v99 = 0;
  while (1)
  {
    do
    {
      if (v29 >= v45)
      {
        v47 = v45;
      }

      else
      {
        v47 = v29;
      }

      if (v28 >= v47)
      {
        memcpy(v5, v30, v47);
      }

      else if (v28 < 1)
      {
        bzero(v5, v47);
      }

      else
      {
        memcpy(v5, v30, v28);
        v47 = v28;
      }

      LODWORD(v29) = v29 - v47;
      if (v29 < 1)
      {
        if (v91)
        {
          v61 = *(v91 + 112);
          a2 = v93;
          LOBYTE(v5) = v92;
          v25 = v88;
          v23 = v89;
          v33 = v87;
          if ((*(v61 + 52) & 0x20) != 0)
          {
            v62 = *(v61 + 40);
            --*(v62 + 152);
            *(v61 + 32) = *(v62 + 168);
            *(v62 + 168) = v61;
            (*(**(v62 + 72) + 144))(*(v62 + 72), *(v62 + 200) * (*(v61 + 48) - 1), *(v61 + 8));
          }

          else
          {
            sub_181932B68(v61);
          }
        }

        else
        {
          a2 = v93;
          LOBYTE(v5) = v92;
          v25 = v88;
          v23 = v89;
          v33 = v87;
        }

        goto LABEL_135;
      }

      v5 += v47;
      v30 += v47;
      LODWORD(v28) = v28 - v47;
      v45 -= v47;
    }

    while (v45);
    *&v94 = 0;
    v48 = v99;
    v49 = v99;
    if (*(v44 + 33))
    {
      v50 = v99;
      while (1)
      {
        while (1)
        {
          v51 = v50++;
          if (v50 < 2)
          {
            break;
          }

          v52 = (v51 - 1) / (*(v44 + 56) / 5u + 1) * (*(v44 + 56) / 5u + 1);
          if (v52 + 1 == dword_1EA8315A8 / *(v44 + 52))
          {
            v53 = 3;
          }

          else
          {
            v53 = 2;
          }

          if (v50 != v53 + v52)
          {
            goto LABEL_103;
          }
        }

        if (v50)
        {
LABEL_103:
          if (v51 != dword_1EA8315A8 / *(v44 + 52))
          {
            v49 = v51 + 1;
            v99 = v51 + 1;
            break;
          }
        }
      }
    }

    result = sub_1818E21FC(v44, &v94, &v99, v49, 0);
    v100 = result;
    if (*(v44 + 33))
    {
      if (!result)
      {
        break;
      }
    }

    v56 = v91;
    if (result)
    {
      goto LABEL_206;
    }

    v54 = v99;
LABEL_122:
    *v90 = bswap32(v54);
    if (v56)
    {
      v57 = *(v56 + 112);
      if ((*(v57 + 52) & 0x20) != 0)
      {
        v58 = *(v57 + 40);
        --*(v58 + 152);
        *(v57 + 32) = *(v58 + 168);
        *(v58 + 168) = v57;
        (*(**(v58 + 72) + 144))(*(v58 + 72), *(v58 + 200) * (*(v57 + 48) - 1), *(v57 + 8));
      }

      else
      {
        sub_181932B68(v57);
      }
    }

    v59 = v94;
    v90 = *(v94 + 80);
    v91 = v94;
    *v90 = 0;
    v5 = *(v59 + 80) + 4;
    v45 = *(v44 + 56) - 4;
  }

  v54 = v99;
  if (v48)
  {
    v55 = 4;
  }

  else
  {
    v55 = 3;
  }

  sub_1818EF720(v44, v99, v55, v48, &v100);
  result = v100;
  v56 = v91;
  if (!v100)
  {
    goto LABEL_122;
  }

  if (v94)
  {
    v81 = v100;
    v82 = *(v94 + 112);
    if ((*(v82 + 52) & 0x20) != 0)
    {
      v83 = *(v82 + 40);
      --*(v83 + 152);
      *(v82 + 32) = *(v83 + 168);
      *(v83 + 168) = v82;
      (*(**(v83 + 72) + 144))(*(v83 + 72), *(v83 + 200) * (*(v82 + 48) - 1), *(v82 + 8));
    }

    else
    {
      sub_181932B68(v82);
    }

    result = v81;
  }

LABEL_206:
  if (v56)
  {
    v84 = result;
    v85 = *(v56 + 112);
    if ((*(v85 + 52) & 0x20) != 0)
    {
      v86 = *(v85 + 40);
      --*(v86 + 152);
      *(v85 + 32) = *(v86 + 168);
      *(v86 + 168) = v85;
      (*(**(v86 + 72) + 144))(*(v86 + 72), *(v86 + 200) * (*(v85 + 48) - 1), *(v85 + 8));
    }

    else
    {
      sub_181932B68(v85);
    }

    return v84;
  }

  return result;
}

uint64_t sub_1818DC828(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, int *a5)
{
  if (a2)
  {
    v9 = *(a1 + 128);
    v10 = *(v9 + 6) << 6;
    v11 = *(v9 + 16);
    if (v11)
    {
      v12 = sub_181929E8C(v11, v10 + 104, 0x1032040E2E69B38);
      if (v12)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v12 = sub_181902484(v10 + 104, 0x1032040E2E69B38);
      if (v12)
      {
LABEL_4:
        *v12 = v9;
        *(v12 + 8) = v12 + 40;
        *(v12 + 28) = *(v9 + 6) + 1;
        sub_1818DC95C(a3, a2, v12);
        if (*(v12 + 28) && *(v12 + 28) <= *(v9 + 8))
        {
          v13 = sub_18193F674(a1, v12, a5);
        }

        else
        {
          v13 = sub_18190EDA8(80132);
        }

        v15 = v13;
        sub_181929C84(*(*(a1 + 128) + 16), v12);
        return v15;
      }
    }

    return 7;
  }

  return sub_18193F3D4(a1, a3, a4, a5);
}

void sub_1818DC95C(uint64_t result, char *a2, uint64_t *a3)
{
  v19 = result;
  v6 = *a3;
  v5 = a3[1];
  *(a3 + 30) = 0;
  v7 = *a2;
  if ((v7 & 0x80000000) != 0)
  {
    v9 = a2[1];
    if (a2[1] < 0)
    {
      v10 = a2[2];
      if (v10 < 0)
      {
        v20 = 0;
        v8 = sub_1818C7200(a2, &v20);
        if (HIDWORD(v20))
        {
          v7 = -1;
        }

        else
        {
          v7 = v20;
        }
      }

      else
      {
        v7 = ((v7 & 0x7F) << 14) | ((v9 & 0x7F) << 7) | v10;
        v8 = 3;
      }
    }

    else
    {
      v7 = v9 | ((v7 & 0x7F) << 7);
      v8 = 2;
    }
  }

  else
  {
    v8 = 1;
  }

  v11 = 0;
  v12 = v7;
  do
  {
    if (v8 >= v7 || v12 > v19)
    {
      break;
    }

    v14 = &a2[v8];
    v15 = *v14;
    if ((v15 & 0x80000000) != 0)
    {
      v17 = v14[1];
      if (v14[1] < 0)
      {
        v18 = v14[2];
        if (v18 < 0)
        {
          v20 = 0;
          v16 = sub_1818C7200(v14, &v20);
          v15 = HIDWORD(v20) ? -1 : v20;
        }

        else
        {
          v15 = ((v15 & 0x7F) << 14) | ((v17 & 0x7F) << 7) | v18;
          v16 = 3;
        }
      }

      else
      {
        v15 = v17 | ((v15 & 0x7F) << 7);
        v16 = 2;
      }
    }

    else
    {
      v16 = 1;
    }

    *(v5 + 22) = *(v6 + 4);
    *(v5 + 24) = *(v6 + 16);
    *(v5 + 32) = 0;
    *(v5 + 8) = 0;
    sub_1818C7394(&a2[v12], v15, v5);
    v13 = v15 < 0x80 ? byte_181A20DA4[v15] : (v15 - 12) >> 1;
    v8 += v16;
    v12 += v13;
    v5 += 64;
    ++v11;
  }

  while (v11 < *(a3 + 14));
  if (v11 && v12 > v19)
  {
    if ((*(v5 - 44) & 0x9000) != 0)
    {
      sub_18193CA54((v5 - 64));
    }

    else
    {
      *(v5 - 44) = 1;
    }
  }

  *(a3 + 14) = v11;
}

uint64_t sub_1818DCB50(uint64_t a1, int a2, char *__src, uint64_t a4, char *__dst, unsigned int a6)
{
  v7 = __dst;
  v26 = 0;
  if (*(a1 + 12) || (v11 = a4 + 2, a4 + 2 > *(a1 + 20)))
  {
    if (__dst)
    {
      memcpy(__dst, __src, a4);
    }

    else
    {
      v7 = __src;
    }

    result = 0;
    *v7 = bswap32(a6);
    v13 = *(a1 + 12);
    *(a1 + 12) = v13 + 1;
    *(a1 + 8 * v13 + 40) = v7;
    *(a1 + 2 * v13 + 28) = a2;
    return result;
  }

  v14 = *(a1 + 112);
  v15 = *(v14 + 40);
  if ((*(v14 + 52) & 4) == 0 || v15[8] < *(v14 + 48))
  {
    result = v15[12];
    if (result)
    {
      return result;
    }

    v16 = __src;
    v17 = *(a1 + 112);
    if (v15[46] <= v15[50])
    {
      result = sub_1818D8DD8(v17);
    }

    else
    {
      result = sub_181936438(v17);
    }

LABEL_16:
    __src = v16;
    if (result)
    {
      return result;
    }

    goto LABEL_17;
  }

  if (v15[32])
  {
    v16 = __src;
    result = sub_1819360C0(*(a1 + 112));
    goto LABEL_16;
  }

LABEL_17:
  v18 = *(a1 + 80);
  v19 = __src;
  result = sub_181945C04(a1, a4, &v26);
  if (!result)
  {
    *(a1 + 20) -= v11;
    v20 = v26;
    v21 = (v18 + v26);
    memcpy(v21 + 1, v19 + 4, a4 - 4);
    *v21 = bswap32(a6);
    v22 = (*(a1 + 96) + 2 * a2);
    memmove(v22 + 1, v22, 2 * (*(a1 + 24) - a2));
    *v22 = bswap32(v20) >> 16;
    ++*(a1 + 24);
    v23 = v18 + *(a1 + 9);
    v24 = (*(v23 + 4))++ + 1;
    if ((v24 & 0x100) != 0)
    {
      ++*(v18 + *(a1 + 9) + 3);
    }

    if (*(*(a1 + 72) + 33))
    {
      v25 = 0;
      sub_181939A3C(a1, a1, v19, &v25);
      return v25;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1818DCD58(uint64_t a1, _BYTE *a2, int a3)
{
  result = *(a1 + 48);
  if (!result)
  {
    if (off_1ED453038)
    {
      v5 = a2;
      v6 = a3;
      v7 = off_1ED453038(400);
      a3 = v6;
      a2 = v5;
      if (v7)
      {
        return 10;
      }
    }

    if (*(a1 + 21) < 3u)
    {
      return 0;
    }

    if (*(a1 + 16))
    {
      if (!**(a1 + 72))
      {
        goto LABEL_18;
      }

      v8 = *(a1 + 336);
      LODWORD(v9) = *(v8 + 8);
      if ((v9 & 0x80000000) != 0)
      {
        v9 = -1024 * v9 / (*(v8 + 11) + *(v8 + 10));
        if (v9 >= 1000000000)
        {
          LODWORD(v9) = 1000000000;
        }
      }

      v10 = *v8;
      if (*v8)
      {
        v11 = 0;
        do
        {
          v10 = *(v10 + 64);
          v11 += 100;
        }

        while (v10);
        if (!v9)
        {
LABEL_18:
          for (i = *(a1 + 112); i; i = *(i + 64))
          {
            *(i + 24) = 1;
          }

LABEL_41:
          if (!*(a1 + 344))
          {
            result = 0;
            *(a1 + 21) = 5;
            return result;
          }

          return 0;
        }
      }

      else
      {
        v11 = 0;
        if (!v9)
        {
          goto LABEL_18;
        }
      }

      if ((v11 / v9) <= 24)
      {
        goto LABEL_18;
      }
    }

    if (*(a1 + 344))
    {
      v28 = 0;
      v13 = sub_181936ED4(*(a1 + 336));
      if (!v13)
      {
        (*(a1 + 288))(a1, 1, &v28, 0);
        v13 = v28;
        *(v28 + 32) = 0;
      }

      result = sub_18193714C(a1, v13, *(a1 + 32), 1);
      v14 = v28;
      v15 = result;
      if (v28)
      {
        if ((*(v28 + 52) & 0x20) != 0)
        {
          v22 = *(v28 + 40);
          --*(v22 + 152);
          *(v14 + 32) = *(v22 + 168);
          *(v22 + 168) = v14;
          (*(**(v22 + 72) + 144))(*(v22 + 72), *(v22 + 200) * (*(v14 + 48) - 1), *(v14 + 8));
        }

        else
        {
          sub_181932B68(v28);
        }

        result = v15;
      }

      if (!result)
      {
        v23 = *(a1 + 336);
        for (j = *v23; *v23; j = *v23)
        {
          v25 = *(j + 24);
          v26 = *(j + 72);
          if (*(v25 + 16) == j)
          {
            *(v25 + 16) = v26;
            v27 = *(j + 64);
            if (v27)
            {
LABEL_50:
              *(v27 + 72) = v26;
              if (!v26)
              {
                *v25 = v27;
                goto LABEL_55;
              }

LABEL_54:
              *(v26 + 64) = v27;
              goto LABEL_55;
            }
          }

          else
          {
            v27 = *(j + 64);
            if (v27)
            {
              goto LABEL_50;
            }
          }

          *(v25 + 8) = v26;
          if (v26)
          {
            goto LABEL_54;
          }

          *v25 = 0;
          *(v25 + 49) = 2;
LABEL_55:
          *(j + 52) = *(j + 52) & 0xFFF0 | 1;
          if (!*(j + 56) && *(v25 + 48))
          {
            xmmword_1ED452F80(*(v25 + 72), *j, 0);
            result = v15;
          }
        }
      }

LABEL_40:
      if (result)
      {
        return result;
      }

      goto LABEL_41;
    }

    v16 = a3;
    v17 = a2;
    result = sub_181937C38(a1);
    if (!result)
    {
      result = sub_181937DB0(a1, v17);
      if (!result)
      {
        result = sub_1818E73DC(a1, 0);
        if (!result)
        {
          v18 = sub_181936ED4(*(a1 + 336));
          result = sub_1818E7670(a1, v18);
          if (!result)
          {
            v19 = *(a1 + 336);
            for (k = *v19; *v19; k = *v19)
            {
              sub_181934A54(k);
            }

            v21 = *(a1 + 32);
            if (v21 <= *(a1 + 40) || (result = sub_1818F8F88(a1, v21 - (v21 == *(a1 + 192))), !result))
            {
              if (v16)
              {
                goto LABEL_41;
              }

              result = sub_181909364(a1, v17);
              goto LABEL_40;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1818DD090(uint64_t result, int a2, int a3, unsigned int *a4, uint64_t a5)
{
  *a5 = HIBYTE(a2);
  *(a5 + 1) = BYTE2(a2);
  *(a5 + 2) = BYTE1(a2);
  *(a5 + 3) = a2;
  *(a5 + 4) = HIBYTE(a3);
  *(a5 + 5) = BYTE2(a3);
  *(a5 + 6) = BYTE1(a3);
  *(a5 + 7) = a3;
  if (*(result + 124))
  {
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
  }

  else
  {
    *(a5 + 8) = *(result + 104);
    v6 = *(result + 85) == 0;
    v7 = *(result + 100);
    v8 = *a5;
    if (*(result + 85))
    {
      v8 = bswap32(v8);
      v9 = bswap32(*(a5 + 4));
    }

    else
    {
      v9 = *(a5 + 4);
    }

    v10 = *(result + 96) + v7 + v8;
    *(result + 96) = v10;
    *(result + 100) = v9 + v7 + v10;
    v11 = result;
    result = sub_181937F98(v6, a4, *(result + 56), (result + 96), (result + 96));
    *(a5 + 16) = bswap32(*(v11 + 96));
    *(a5 + 20) = bswap32(*(v11 + 100));
  }

  return result;
}

uint64_t sub_1818DD178(uint64_t a1, char *__buf, uint64_t a3, off_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(a1 + 168) || (v6 = a4, LODWORD(v7) = a3, v8 = __buf, (v9 = *(a1 + 64)) != 0) && *(*v9 + 168))
  {
    sqlite3_log(27, "denying write to invalidated fd %d", *(a1 + 24));
    return 6922;
  }

  else
  {
    v10 = sub_18192B21C(a1, a4, __buf, a3);
    v11 = v10 < v7;
    if (v10 < v7 && v10 >= 1)
    {
      do
      {
        v7 = (v7 - v10);
        v6 += v10;
        v8 += v10;
        v10 = sub_18192B21C(a1, v6, v8, v7);
        v11 = v10 < v7;
      }

      while (v10 < v7 && v10 > 0);
    }

    if (v11)
    {
      if (*(a1 + 32) == 28)
      {
        v13 = *(a1 + 56);
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        *__strerrbuf = 0u;
        strerror_r(28, __strerrbuf, 0x4FuLL);
        v14 = &byte_181A2878D;
        if (v13)
        {
          v14 = v13;
        }

        sqlite3_log(13, "os_unix.c:%d: (%d) %s(%s) - %s", 45931, 28, "unixWrite", v14, __strerrbuf);
        return 13;
      }

      else
      {
        return 778;
      }
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1818DD300(uint64_t a1, char a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(a1 + 168) || (v3 = *(a1 + 64)) != 0 && *(*v3 + 168))
  {
    sqlite3_log(27, "denying sync of invalidated fd %d", *(a1 + 24));
    return 6922;
  }

  else
  {
    if ((a2 & 0xF) == 3)
    {
      v4 = 85;
    }

    else
    {
      v4 = 0;
    }

    if ((*(a1 + 128) & 2) != 0)
    {
      v5 = 51;
    }

    else
    {
      v5 = v4;
    }

    v7 = *(a1 + 24);
    if ((!v5 || fcntl(v7, v5, 0)) && fsync(v7))
    {
      *(a1 + 32) = *__error();
      v8 = *(a1 + 56);
      v9 = *__error();
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      *__strerrbuf = 0u;
      strerror_r(v9, __strerrbuf, 0x4FuLL);
      v10 = &byte_181A2878D;
      if (v8)
      {
        v10 = v8;
      }

      sqlite3_log(1034, "os_unix.c:%d: (%d) %s(%s) - %s", 46186, v9, "full_fsync", v10, __strerrbuf);
      return 1034;
    }

    else if ((*(a1 + 30) & 8) != 0)
    {
      v14 = 0;
      if (!off_1EE341C60(*(a1 + 56), &v14))
      {
        fsync(v14);
        if ((v14 & 0x80000000) == 0)
        {
          if (off_1EE341AE0(v14))
          {
            v11 = *(a1 + 56);
            v12 = *__error();
            v18 = 0u;
            v19 = 0u;
            v16 = 0u;
            v17 = 0u;
            *__strerrbuf = 0u;
            strerror_r(v12, __strerrbuf, 0x4FuLL);
            v13 = &byte_181A2878D;
            if (v11)
            {
              v13 = v11;
            }

            sqlite3_log(4106, "os_unix.c:%d: (%d) %s(%s) - %s", 46206, v12, "close", v13, __strerrbuf);
          }
        }
      }

      result = 0;
      *(a1 + 30) &= ~8u;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_1818DD520(void *result, unsigned int a2)
{
  if (*(result + 30) >= a2)
  {
    v11[5] = v2;
    v11[6] = v3;
    v5 = result;
    v6 = *(result + 8);
    if (v6)
    {
      for (i = 0; i < v6; ++i)
      {
        v8 = *(*(v5 + 40) + 8 * i);
        v11[0] = v8;
        if (v8)
        {
          do
          {
            v9 = *(v8 + 16);
            v8 = *(v8 + 24);
            if (v9 >= a2)
            {
              result = sub_1819A8D0C(v5, v11);
            }

            v11[0] = v8;
          }

          while (v8);
          v6 = *(v5 + 32);
        }
      }
    }

    v10 = a2 - 1;
    if (!a2)
    {
      v10 = 0;
    }

    *(v5 + 120) = v10;
  }

  return result;
}

uint64_t sub_1818DD5CC(uint64_t a1, sqlite3 *db, char *zDb, int a4)
{
  if (a1 <= a4)
  {
    if (off_1EA831A10)
    {
      v4 = zDb;
      v5 = db;
      off_1EA831A10(a1);
      db = v5;
      zDb = v4;
    }

    v6 = sqlite3_wal_checkpoint_v2(db, zDb, 0, 0, 0);
    if (off_1EA831A18)
    {
      off_1EA831A18(v6);
    }
  }

  return 0;
}

void sub_1818DD640(uint64_t a1, unsigned __int8 **a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v51 = 0;
  if (!a2 || !v4)
  {
    return;
  }

  v6 = *a2;
  if (v6 <= 0x32)
  {
    if (*a2 > 0x2Cu)
    {
      if (v6 - 45 >= 2)
      {
        if (v6 == 49)
        {
          sub_181958D08(a1, a2, a3, sub_1818DD640, a4);
          goto LABEL_67;
        }

        if (v6 == 50)
        {
          if (a4)
          {
            sub_1818DFA70(a1, a2, a3, a3);
          }

          else
          {
            v44 = *(a1 + 72) - 1;
            *(a1 + 72) = v44;
            sub_1818DFA70(a1, a2, a3, v44);
            sub_181958CD8(v4, v44);
          }

          goto LABEL_67;
        }

        goto LABEL_39;
      }

      if (v6 == 45)
      {
        v7 = 53;
      }

      else
      {
        v7 = 54;
      }

      LODWORD(a4) = 128;
      goto LABEL_22;
    }

    if (v6 - 43 < 2)
    {
      v12 = a4;
      v15 = sub_18195CE30(a2);
      if (v15 == a2)
      {
        v37 = v6 == 44;
        v38 = v12;
        if (v37)
        {
          sub_1818DD640(a1, a2[2], a3, v12);
          sub_1818DD640(a1, a2[3], a3, v12);
        }

        else
        {
          v45 = (*(a1 + 72) - 1);
          *(a1 + 72) = v45;
          sub_1818ECA90(a1, a2[2], v45, v38 ^ 0x10);
          sub_1818DD640(a1, a2[3], a3, v38);
          sub_181958CD8(v4, v45);
        }
      }

      else
      {
        sub_1818DD640(a1, v15, a3, v12);
      }

      goto LABEL_67;
    }

    if (v6 != 19)
    {
      goto LABEL_39;
    }

    v24 = a2[2];
LABEL_53:
    sub_1818ECA90(a1, v24, a3, a4);
    goto LABEL_67;
  }

  v7 = ((v6 + 1) ^ 1) - 1;
  if (v6 - 53 >= 6)
  {
    if (v6 - 51 < 2)
    {
      v8 = a3;
      v9 = sub_181957E00(a1, a2[2], &v51 + 1);
      v10 = v9;
      if (HIDWORD(v51))
      {
        v11 = *(*v4 + 103) ? &byte_1EA831A58 : (*(v4 + 136) + 40 * *(v4 + 144) - 40);
        if (*(v11 + 3) == v9 && *v11 == 94)
        {
          *(v11 + 1) |= 0x80u;
        }
      }

      v46 = *(v4 + 144);
      if (*(v4 + 148) > v46)
      {
        *(v4 + 144) = v46 + 1;
        v30 = *(v4 + 136) + 40 * v46;
        *v30 = ((v6 + 1) ^ 1) - 1;
        *(v30 + 2) = 0;
        *(v30 + 4) = v9;
        *(v30 + 8) = v8;
        *(v30 + 1) = 0;
        goto LABEL_63;
      }

      v39 = v4;
      v40 = ((v6 + 1) ^ 1) - 1;
      v41 = v8;
      goto LABEL_65;
    }

    if (v6 != 175)
    {
      goto LABEL_39;
    }

    v25 = *(a2 + 2);
    v26 = a2[3];
    while (1)
    {
      v27 = *(v26 + 1);
      if ((v27 & 0x82000) == 0)
      {
        break;
      }

      if ((v27 & 0x80000) != 0)
      {
        v26 = *(*(v26 + 4) + 8);
      }

      else
      {
        if (*v26 != 114)
        {
          break;
        }

        v26 = *(v26 + 2);
      }
    }

    v37 = v25 == 46;
    v42 = v25 != 46;
    v43 = v37;
    v24 = a2[2];
    a4 = (16 * v42);
    if (((v43 ^ (*(*(v26 + 1) + 4) != 0)) & 1) == 0)
    {
      sub_1818DD640(a1, v24, a3, a4);
      goto LABEL_67;
    }

    goto LABEL_53;
  }

LABEL_22:
  v16 = a2[2];
  v17 = *v16;
  if (v17 == 176)
  {
    v17 = v16[2];
  }

  v18 = a2[2];
  if (v17 != 177)
  {
    if (v17 != 139)
    {
LABEL_28:
      v21 = a4;
      v22 = sub_181957E00(a1, a2[2], &v51 + 1);
      v23 = sub_181957E00(a1, a2[3], &v51);
      sub_1818DDB44(a1, a2[2], a2[3], v7, v22, v23, a3, v21, (*(a2 + 1) >> 10) & 1);
      goto LABEL_67;
    }

    v18 = *(v16 + 4);
  }

  if (**(v18 + 4) <= 1)
  {
    goto LABEL_28;
  }

LABEL_39:
  v28 = *(a2 + 1);
  if ((v28 & 0x20000001) != 0x20000000)
  {
    if ((v28 & 0x10000001) == 0x10000000)
    {
      goto LABEL_67;
    }

    v31 = a3;
    v32 = a4;
    v33 = sub_181957E00(a1, a2, &v51 + 1);
    v10 = v33;
    v34 = v32 != 0;
    v35 = *(v4 + 144);
    if (*(v4 + 148) > v35)
    {
      *(v4 + 144) = v35 + 1;
      v36 = *(v4 + 136) + 40 * v35;
      *v36 = 17;
      *(v36 + 4) = v33;
      *(v36 + 8) = v31;
      *(v36 + 12) = v34;
      *(v36 + 24) = 0;
      *(v36 + 32) = 0;
      *(v36 + 16) = 0;
      goto LABEL_67;
    }

    v39 = v4;
    v40 = 17;
    v41 = v31;
    goto LABEL_66;
  }

  v29 = *(v4 + 144);
  if (*(v4 + 148) > v29)
  {
    *(v4 + 144) = v29 + 1;
    v30 = *(v4 + 136) + 40 * v29;
    *v30 = 9;
    *(v30 + 8) = a3;
LABEL_63:
    *(v30 + 12) = 0;
    *(v30 + 28) = 0;
    *(v30 + 20) = 0;
    *(v30 + 36) = 0;
    goto LABEL_67;
  }

  v39 = v4;
  v40 = 9;
  v41 = a3;
  v10 = 0;
LABEL_65:
  v34 = 0;
LABEL_66:
  sub_18194C8AC(v39, v40, v10, v41, v34);
LABEL_67:
  v47 = HIDWORD(v51);
  if (HIDWORD(v51))
  {
    v48 = *(a1 + 31);
    if (v48 <= 7)
    {
      *(a1 + 31) = v48 + 1;
      *(a1 + 4 * v48 + 184) = v47;
    }
  }

  v49 = v51;
  if (v51)
  {
    v50 = *(a1 + 31);
    if (v50 <= 7)
    {
      *(a1 + 31) = v50 + 1;
      *(a1 + 4 * v50 + 184) = v49;
    }
  }
}

void sub_1818DDB44(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, int a9)
{
  if (!*(a1 + 52))
  {
    v10 = a7;
    v11 = a6;
    v12 = a4;
    v13 = a3;
    v14 = a2;
    v16 = a5;
    if (a9)
    {
      a2 = a3;
      a3 = v14;
    }

    v17 = sub_18194E64C(a1, a2, a3);
    v18 = sub_1818D0A24(v13);
    v19 = sub_1818D0A24(v14);
    if (v18 < 65 || v19 < 65)
    {
      if (v19 >= 65)
      {
        v22 = v19;
      }

      else
      {
        v22 = v18;
      }

      v21 = v22 | 0x40;
    }

    else if (v19 > 0x42 || v18 > 0x42)
    {
      v21 = 67;
    }

    else
    {
      v21 = 65;
    }

    v23 = *(a1 + 16);
    v24 = *(v23 + 144);
    if (*(v23 + 148) <= v24)
    {
      v24 = sub_18194C8AC(*(a1 + 16), v12, v11, v10, v16);
    }

    else
    {
      *(v23 + 144) = v24 + 1;
      v25 = *(v23 + 136) + 40 * v24;
      *v25 = v12;
      *(v25 + 2) = 0;
      *(v25 + 4) = v11;
      *(v25 + 8) = v10;
      *(v25 + 12) = v16;
      *(v25 + 1) = 0;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0;
      *(v25 + 16) = 0;
    }

    if (!*(*v23 + 103))
    {
      if (v24 < 0)
      {
        v24 = *(v23 + 144) - 1;
      }

      v26 = *(v23 + 136) + 40 * v24;
      if (*(v26 + 1))
      {
        sub_18194CB90(v23, v26, v17, 4294967294);
      }

      else if (v17)
      {
        *(v26 + 16) = v17;
        *(v26 + 1) = -2;
      }
    }

    v27 = *(a1 + 16);
    v28 = *(v27 + 144);
    if (v28 >= 1)
    {
      *(*(v27 + 136) + 40 * v28 - 38) = (v21 | a8);
    }
  }
}

const unsigned __int8 *__cdecl sqlite3_column_text(sqlite3_stmt *a1, int iCol)
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
  if ((~v10 & 0x202) != 0 || *(v8 + 22) != 1)
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
      v11 = sub_18193CB70(v8, 1, v2, v3);
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

sqlite3_int64 sqlite3_column_int64(sqlite3_stmt *a1, int iCol)
{
  if (a1)
  {
    v4 = *(*a1 + 24);
    if (v4)
    {
      xmmword_1ED452F18(v4);
    }

    v5 = *(a1 + 20);
    if (v5 && *(a1 + 130) > iCol)
    {
      v6 = (v5 + (iCol << 6));
      goto LABEL_9;
    }

    v7 = *a1;
    *(v7 + 80) = 25;
    sub_181932D5C(v7, 25);
  }

  v6 = &qword_181A20ED0;
LABEL_9:
  v8 = *(v6 + 10);
  if ((v8 & 0x24) != 0)
  {
    v9 = *v6;
  }

  else if ((v8 & 8) != 0)
  {
    v15 = *v6;
    if (*v6 >= -9.22337204e18)
    {
      if (v15 <= 9.22337204e18)
      {
        v9 = v15;
      }

      else
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v9 = 0x8000000000000000;
    }
  }

  else if ((v8 & 0x12) != 0 && v6[1])
  {
    v9 = sub_18193CFCC(v6);
  }

  else
  {
    v9 = 0;
  }

  if (a1)
  {
    v10 = *a1;
    v11 = *(a1 + 13);
    if (v11 || (v12 = *(v10 + 103), *(v10 + 103)))
    {
      v12 = sub_18193C988(v10, v11);
      v10 = *a1;
    }

    *(a1 + 13) = v12;
    v13 = *(v10 + 24);
    if (v13)
    {
      xmmword_1ED452F28(v13);
    }
  }

  return v9;
}

int sqlite3_reset(sqlite3_stmt *pStmt)
{
  if (pStmt)
  {
    v1 = pStmt;
    v2 = *pStmt;
    v3 = *(*pStmt + 24);
    if (v3)
    {
      xmmword_1ED452F18(v3);
    }

    sub_181909F28(v2, v1);
    LODWORD(pStmt) = sub_1818A32FC(v1, v4, v5, v6);
    *(v1 + 267) = 1;
    *(v1 + 6) = 0xFFFFFFFFLL;
    *(v1 + 132) = -254;
    *(v1 + 7) = 0;
    *(v1 + 11) = 1;
    *(v1 + 16) = 0;
    *(v1 + 10) = 0;
    if (pStmt || *(v2 + 103))
    {
      LODWORD(pStmt) = sub_18193C988(v2, pStmt);
    }

    v7 = *(v2 + 24);
    if (v7)
    {
      v8 = pStmt;
      xmmword_1ED452F28(v7);
      LODWORD(pStmt) = v8;
    }
  }

  return pStmt;
}

int sqlite3_clear_bindings(sqlite3_stmt *a1)
{
  if (a1)
  {
    v2 = *(*a1 + 24);
    if (v2)
    {
      xmmword_1ED452F18(*(*a1 + 24));
    }

    v3 = *(a1 + 8);
    if (v3 >= 1)
    {
      v4 = 0;
      v5 = 0;
      v6 = *(a1 + 16);
      do
      {
        v7 = (v6 + v4);
        if ((*(v6 + v4 + 20) & 0x9000) != 0 || v7[8])
        {
          sub_18193CA00(v7);
          v6 = *(a1 + 16);
          v3 = *(a1 + 8);
        }

        *(v6 + v4 + 20) = 1;
        ++v5;
        v4 += 64;
      }

      while (v5 < v3);
    }

    if (*(a1 + 93))
    {
      *(a1 + 134) = *(a1 + 134) & 0xFFFC | 1;
    }

    if (v2)
    {
      xmmword_1ED452F28(v2);
    }
  }

  return 0;
}

int sqlite3_extended_result_codes(sqlite3 *a1, int onoff)
{
  if (!a1)
  {
    v3 = "NULL";
    goto LABEL_14;
  }

  v2 = *(a1 + 113);
  if (v2 == 186)
  {
LABEL_5:
    v3 = "unopened";
LABEL_14:
    sqlite3_log(21, "API call with %s database connection pointer", v3);

    return sub_1819012D0(196159);
  }

  if (v2 != 118)
  {
    if (v2 != 109)
    {
      v3 = "invalid";
      goto LABEL_14;
    }

    goto LABEL_5;
  }

  if (*(a1 + 3))
  {
    xmmword_1ED452F18(*(a1 + 3));
    v6 = *(a1 + 3);
    if (onoff)
    {
      v7 = -1;
    }

    else
    {
      v7 = 255;
    }

    *(a1 + 22) = v7;
    if (v6)
    {
      xmmword_1ED452F28(v6);
    }
  }

  else
  {
    if (onoff)
    {
      v9 = -1;
    }

    else
    {
      v9 = 255;
    }

    *(a1 + 22) = v9;
  }

  return 0;
}

int sqlite3_busy_timeout(sqlite3 *a1, int ms)
{
  if (!a1)
  {
    v3 = "NULL";
    goto LABEL_12;
  }

  v2 = *(a1 + 113);
  if (v2 == 186)
  {
LABEL_5:
    v3 = "unopened";
LABEL_12:
    sqlite3_log(21, "API call with %s database connection pointer", v3);

    return sub_1819012D0(193634);
  }

  if (v2 != 118)
  {
    if (v2 != 109)
    {
      v3 = "invalid";
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  v4 = *(a1 + 3);
  if (ms < 1)
  {
    if (v4)
    {
      v9 = a1;
      xmmword_1ED452F18(*(a1 + 3));
      a1 = v9;
      v10 = *(v9 + 3);
      *(v9 + 664) = 0u;
      *(v9 + 85) = v9;
      *(v9 + 172) = 0;
      *(v9 + 197) = 0;
      if (v10)
      {
        xmmword_1ED452F28(v10);
        a1 = v9;
      }
    }

    else
    {
      *(a1 + 664) = 0u;
      *(a1 + 85) = a1;
      *(a1 + 172) = 0;
      *(a1 + 197) = 0;
    }

    *(a1 + 193) = 0;
  }

  else
  {
    if (v4)
    {
      v6 = a1;
      xmmword_1ED452F18(*(a1 + 3));
      a1 = v6;
      v7 = *(v6 + 3);
      *(v6 + 83) = sub_181915228;
      *(v6 + 84) = v6;
      *(v6 + 85) = v6;
      *(v6 + 172) = 0;
      *(v6 + 197) = 0;
      if (v7)
      {
        xmmword_1ED452F28(v7);
        a1 = v6;
      }
    }

    else
    {
      *(a1 + 83) = sub_181915228;
      *(a1 + 84) = a1;
      *(a1 + 85) = a1;
      *(a1 + 172) = 0;
    }

    *(a1 + 193) = ms;
    *(a1 + 197) = ms;
  }

  return 0;
}

int sqlite3_changes(sqlite3 *a1)
{
  if (a1)
  {
    v1 = *(a1 + 113);
    switch(v1)
    {
      case 186:
        goto LABEL_5;
      case 118:
        return *(a1 + 30);
      case 109:
LABEL_5:
        v2 = "unopened";
        break;
      default:
        v2 = "invalid";
        break;
    }
  }

  else
  {
    v2 = "NULL";
  }

  sqlite3_log(21, "API call with %s database connection pointer", v2);
  sub_1819012D0(192814);
  return 0;
}

int sqlite3_set_authorizer(sqlite3 *a1, int (__cdecl *xAuth)(void *, int, const char *, const char *, const char *, const char *), void *pUserData)
{
  if (!a1)
  {
    v4 = "NULL";
    goto LABEL_16;
  }

  v3 = *(a1 + 113);
  if (v3 == 186)
  {
LABEL_5:
    v4 = "unopened";
LABEL_16:
    sqlite3_log(21, "API call with %s database connection pointer", v4);

    return sub_1819012D0(131339);
  }

  if (v3 != 118)
  {
    if (v3 != 109)
    {
      v4 = "invalid";
      goto LABEL_16;
    }

    goto LABEL_5;
  }

  if (*(a1 + 3))
  {
    v5 = a1;
    v6 = xAuth;
    v7 = pUserData;
    xmmword_1ED452F18(*(a1 + 3));
    pUserData = v7;
    xAuth = v6;
    a1 = v5;
  }

  *(a1 + 66) = xAuth;
  *(a1 + 67) = pUserData;
  if (xAuth)
  {
    for (i = *(a1 + 1); i; i = *(i + 16))
    {
      *(i + 268) = *(i + 268) & 0xFFFC | 2;
    }
  }

  v9 = *(a1 + 3);
  if (v9)
  {
    xmmword_1ED452F28(v9);
  }

  return 0;
}

void *sub_1818DE534(uint64_t a1, int a2, char *a3)
{
  v3 = *(a1 + 144);
  v4 = *(a1 + 148);
  if (v3 + a2 > v4)
  {
    v5 = *(a1 + 24);
    v6 = 2 * v4;
    v7 = v4 == 0;
    v8 = 25;
    if (!v7)
    {
      v8 = v6;
    }

    v9 = *v5;
    if (v8 > *(*v5 + 156))
    {
      if (!*(v9 + 103) && !*(v9 + 104))
      {
        *(v9 + 103) = 1;
        if (*(v9 + 220) >= 1)
        {
          *(v9 + 424) = 1;
        }

        ++*(v9 + 432);
        *(v9 + 436) = 0;
        v10 = *(v9 + 344);
        if (v10)
        {
          sub_181910730(v10, "out of memory", a3);
          v11 = *(v9 + 344);
          *(v11 + 24) = 7;
          v12 = *(v11 + 216);
          if (v12)
          {
            v13 = 0;
            do
            {
              ++*(v12 + 52);
              *(v12 + 24) = 7;
              v12 = *(v12 + 216);
            }

            while (v12);
            return v13;
          }
        }
      }

      return 0;
    }

    v14 = *(a1 + 136);
    v15 = 40 * v8;
    if (v14)
    {
      if (*(v9 + 512) > v14)
      {
        if (*(v9 + 496) <= v14)
        {
          if (v15 < 0x81)
          {
LABEL_20:
            v16 = a3;
            v17 = a2;
            v18 = a1;
LABEL_26:
            if (*(v9 + 520) > v14)
            {
              if (*(v9 + 496) <= v14)
              {
                v19 = 128;
                goto LABEL_30;
              }

              if (*(v9 + 504) <= v14)
              {
                v19 = *(v9 + 438);
                goto LABEL_30;
              }
            }

LABEL_29:
            v19 = xmmword_1ED452EC0(v14);
LABEL_30:
            a1 = v18;
            a2 = v17;
            a3 = v16;
            *(v5 + 16) = v19;
            *(v18 + 148) = v19 / 0x28uLL;
            *(v18 + 136) = v14;
            v3 = *(v18 + 144);
            goto LABEL_31;
          }
        }

        else if (*(v9 + 504) <= v14 && v15 <= *(v9 + 438))
        {
          goto LABEL_20;
        }
      }

      v16 = a3;
      v17 = a2;
      v18 = a1;
      v14 = sub_181929F38(*v5, v14, v15, 0x10B204047B31FBCLL);
      if (!v14)
      {
        return 0;
      }
    }

    else
    {
      v16 = a3;
      v17 = a2;
      v18 = a1;
      v14 = sub_181929E8C(*v5, v15, 0x10B204047B31FBCLL);
      if (!v14)
      {
        return 0;
      }
    }

    v9 = *v5;
    if (!*v5)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  v14 = *(a1 + 136);
LABEL_31:
  v13 = &v14[5 * v3];
  if (a2 >= 1)
  {
    v20 = &v14[5 * v3 + 1];
    v21 = a2;
    do
    {
      v22 = *a3;
      *(v20 - 8) = v22;
      v23 = a3[2];
      *(v20 - 4) = a3[1];
      *v20 = v23;
      if ((byte_181A203EA[v22] & 1) != 0 && v23 >= 1)
      {
        *v20 = *(a1 + 144) + v23;
      }

      *(v20 + 4) = a3[3];
      *(v20 - 7) = 0;
      *(v20 + 8) = 0;
      *(v20 - 6) = 0;
      a3 += 4;
      v20 += 40;
      --v21;
    }

    while (v21);
    v3 = *(a1 + 144);
  }

  *(a1 + 144) = v3 + a2;
  return v13;
}

int sqlite3_column_count(sqlite3_stmt *pStmt)
{
  if (pStmt)
  {
    v1 = pStmt;
    v2 = *(*pStmt + 24);
    if (v2)
    {
      xmmword_1ED452F18(v2);
      v3 = *(*v1 + 24);
      LODWORD(pStmt) = v1[130];
      if (v3)
      {
        v4 = v1[130];
        xmmword_1ED452F28(v3);
        LODWORD(pStmt) = v4;
      }
    }

    else
    {
      LODWORD(pStmt) = v1[130];
    }
  }

  return pStmt;
}

int sqlite3_column_int(sqlite3_stmt *a1, int iCol)
{
  if (a1)
  {
    v4 = *(*a1 + 24);
    if (v4)
    {
      xmmword_1ED452F18(v4);
    }

    v5 = *(a1 + 20);
    if (v5 && *(a1 + 130) > iCol)
    {
      v6 = (v5 + (iCol << 6));
      goto LABEL_9;
    }

    v7 = *a1;
    *(v7 + 80) = 25;
    sub_181932D5C(v7, 25);
  }

  v6 = &qword_181A20ED0;
LABEL_9:
  v8 = *(v6 + 10);
  if ((v8 & 0x24) != 0)
  {
    v9 = *v6;
  }

  else if ((v8 & 8) != 0)
  {
    v15 = *v6;
    if (*v6 >= -9.22337204e18)
    {
      if (v15 <= 9.22337204e18)
      {
        *&v9 = v15;
      }

      else
      {
        LODWORD(v9) = -1;
      }
    }

    else
    {
      LODWORD(v9) = 0;
    }
  }

  else if ((v8 & 0x12) != 0 && v6[1])
  {
    LODWORD(v9) = sub_18193CFCC(v6);
  }

  else
  {
    LODWORD(v9) = 0;
  }

  if (a1)
  {
    v10 = *a1;
    v11 = *(a1 + 13);
    if (v11 || (v12 = *(v10 + 103), *(v10 + 103)))
    {
      v12 = sub_18193C988(v10, v11);
      v10 = *a1;
    }

    *(a1 + 13) = v12;
    v13 = *(v10 + 24);
    if (v13)
    {
      xmmword_1ED452F28(v13);
    }
  }

  return LODWORD(v9);
}

uint64_t sub_1818DE99C(uint64_t a1)
{
  if (*(a1 + 112))
  {
    return *(a1 + 116);
  }

  v2 = *(a1 + 116) | (*(a1 + 30) << 8) & 0x1000 | 0x8000u;
  *(a1 + 112) = 4096;
  *(a1 + 116) = v2;
  return v2;
}

uint64_t *sub_1818DE9E4(uint64_t *result, int *a2, uint64_t a3, _DWORD *a4, __int16 a5)
{
  v5 = a4;
  v6 = a2;
  v7 = *result;
  v8 = result[43];
  if (!v8)
  {
    goto LABEL_3;
  }

  v9 = result;
  if (*(result + 302) == 1)
  {
    goto LABEL_3;
  }

  if (a2)
  {
    v11 = *a2;
    if (!a4)
    {
      v18 = 0;
      v56 = *a2;
      v13 = v11;
      v55 = (a3 + 8);
      v14 = *(a3 + 8) + 16 * v11 + 65;
      v19 = a5;
      if (!v7)
      {
        goto LABEL_32;
      }

      goto LABEL_29;
    }

    if (*a4 != v11)
    {
      sub_181910730(result, "number of columns in foreign key does not match the number of columns in the referenced table");
LABEL_4:
      result = sub_18194E5B8(v7, v6);
      goto LABEL_5;
    }

LABEL_18:
    v13 = v11;
    v55 = (a3 + 8);
    v56 = v11;
    v14 = *(a3 + 8) + 16 * v11 + 65;
    v15 = *a4;
    if (v15 < 1)
    {
      v18 = 1;
      v19 = a5;
      if (!v7)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v16 = (a4 + 4);
      do
      {
        if (*v16)
        {
          v17 = (strlen(*v16) & 0x3FFFFFFF) + 1;
        }

        else
        {
          v17 = 1;
        }

        v14 += v17;
        v16 += 3;
        --v15;
      }

      while (v15);
      v18 = 1;
      v19 = a5;
      if (!v7)
      {
LABEL_32:
        result = sub_181902484(v14, 1394572155);
        if (!result)
        {
          goto LABEL_3;
        }

LABEL_33:
        v52 = v7;
        v54 = v5;
        v20 = v18;
        v21 = result;
        bzero(result, v14);
        *v21 = v8;
        v22 = v21 + 8;
        v23 = &v21[2 * v13 + 8];
        v21[1] = *(v8 + 72);
        v21[2] = v23;
        v24 = *(v9 + 302);
        if (v24 > 3 || v24 == 2)
        {
          v50 = *v9 ? sub_181929E8C(*v9, 0x20uLL, 0x10F00409A20EBA4) : sub_181902484(32, 0x10F00409A20EBA4);
          if (v50)
          {
            *v50 = 0u;
            *(v50 + 1) = 0u;
            *v50 = v23;
            *(v50 + 1) = *a3;
            v50[3] = v9[51];
            v9[51] = v50;
          }
        }

        memcpy(v23, *a3, *(a3 + 8));
        v23[*(a3 + 8)] = 0;
        v25 = *v23;
        if (byte_181A204C8[*v23] < 0)
        {
          v26 = 0;
          if (v25 == 91)
          {
            v25 = 93;
          }

          for (i = 1; ; ++i)
          {
            v28 = i;
            v29 = v23[i];
            if (v29 == v25)
            {
              ++i;
              LOBYTE(v29) = v25;
              if (v23[v28 + 1] != v25)
              {
                break;
              }
            }

            v23[v26++] = v29;
          }

          v23[v26] = 0;
        }

        v30 = *v55;
        *(v21 + 10) = v56;
        v53 = v6;
        if (v6)
        {
          if (v56 >= 1)
          {
            v31 = 0;
            v32 = *(v8 + 54);
            v33 = v6 + 2;
            while (1)
            {
              if (v32 < 1)
              {
                v51 = 0;
LABEL_95:
                sub_181910730(v9, "unknown column %s in foreign key definition", *&v33[6 * v51 + 2]);
                v5 = v54;
                v7 = v52;
LABEL_96:
                result = sub_181929C84(v7, v21);
                goto LABEL_3;
              }

              v34 = 0;
              v35 = *&v33[6 * v31 + 2];
LABEL_50:
              for (j = 0; ; ++j)
              {
                v37 = *(*(v8 + 8) + 16 * v34);
                if (*(v37 + j) == *(v35 + j))
                {
                  break;
                }

                if (byte_181A20298[*(v37 + j)] != byte_181A20298[*(v35 + j)])
                {
                  if (++v34 != v32)
                  {
                    goto LABEL_50;
                  }

                  v51 = v31;
                  goto LABEL_95;
                }

LABEL_52:
                ;
              }

              if (*(v37 + j))
              {
                goto LABEL_52;
              }

              v38 = &v22[4 * v31];
              *v38 = v34;
              if (*(v9 + 302) >= 2u)
              {
                v39 = v9[51];
                if (v39)
                {
                  while (*v39 != v35)
                  {
                    v39 = v39[3];
                    if (!v39)
                    {
                      goto LABEL_47;
                    }
                  }

                  *v39 = v38;
                }
              }

LABEL_47:
              if (++v31 == v56)
              {
                goto LABEL_64;
              }
            }
          }
        }

        else
        {
          *v22 = *(v8 + 54) - 1;
LABEL_64:
          if (v56 > 0)
          {
            v40 = v20;
          }

          else
          {
            v40 = 0;
          }

          if (v40 == 1)
          {
            v41 = 0;
            v42 = &v23[v30 + 1];
            do
            {
              v44 = &v54[3 * v41 + 1];
              v45 = *(v44 + 8);
              if (v45)
              {
                v46 = strlen(*(v44 + 8)) & 0x3FFFFFFF;
              }

              else
              {
                v46 = 0;
              }

              *&v22[4 * v41 + 2] = v42;
              if (*(v9 + 302) >= 2u)
              {
                v47 = v9[51];
                if (v47)
                {
                  while (*v47 != v45)
                  {
                    v47 = v47[3];
                    if (!v47)
                    {
                      goto LABEL_70;
                    }
                  }

                  *v47 = v42;
                }
              }

LABEL_70:
              memcpy(v42, v45, v46);
              v43 = &v42[v46];
              *v43 = 0;
              v42 = v43 + 1;
              ++v41;
            }

            while (v41 != v56);
          }
        }

        *(v21 + 44) = 0;
        *(v21 + 45) = v19;
        result = sub_18188FAF0(*(v8 + 96) + 80, v21[2], v21);
        if (result == v21)
        {
          v7 = v52;
          v6 = v53;
          v5 = v54;
          if (!*(v52 + 103) && !*(v52 + 104))
          {
            *(v52 + 103) = 1;
            if (*(v52 + 55) >= 1)
            {
              *(v52 + 106) = 1;
            }

            ++*(v52 + 108);
            *(v52 + 218) = 0;
            v48 = v52[43];
            if (v48)
            {
              sub_181910730(v48, "out of memory");
              for (k = v52[43]; ; ++*(k + 52))
              {
                *(k + 24) = 7;
                k = *(k + 216);
                if (!k)
                {
                  break;
                }
              }
            }
          }

          goto LABEL_96;
        }

        v5 = v54;
        v7 = v52;
        if (result)
        {
          v21[3] = result;
          result[4] = v21;
        }

        *(v8 + 72) = v21;
        v6 = v53;
LABEL_3:
        if (v6)
        {
          goto LABEL_4;
        }

LABEL_5:
        if (!v5)
        {
          return result;
        }

        goto LABEL_6;
      }
    }

LABEL_29:
    result = sub_181929E8C(v7, v14, 1394572155);
    if (!result)
    {
      goto LABEL_3;
    }

    goto LABEL_33;
  }

  v12 = *(v8 + 54);
  if (v12 < 1)
  {
    goto LABEL_5;
  }

  if (!a4)
  {
    v18 = 0;
    v14 = *(a3 + 8) + 81;
    v13 = 1;
    v55 = (a3 + 8);
    v56 = 1;
    v19 = a5;
    if (!v7)
    {
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  if (*a4 == 1)
  {
    v11 = 1;
    goto LABEL_18;
  }

  sub_181910730(result, "foreign key on %s should reference only one column of table %T", *(*(v8 + 8) + 16 * (v12 - 1)), a3);
LABEL_6:

  return sub_18194E5B8(v7, v5);
}

uint64_t sub_1818DEFEC(uint64_t *a1, const char *a2, const char *a3, int a4)
{
  v4 = *a1;
  if (*(*a1 + 197))
  {
    return 0;
  }

  v10 = *(*(v4 + 32) + 32 * a4);
  result = (*(v4 + 528))(*(v4 + 536), 20, a2, a3, v10, a1[46]);
  if (result == 1)
  {
    v11 = sqlite3_mprintf("%s.%s", a2, a3);
    if (a4 || *(v4 + 40) >= 3)
    {
      v11 = sqlite3_mprintf("%s.%z", v10, v11);
    }

    sub_181910730(a1, "access to %z is prohibited", v11);
    result = 1;
    v12 = 23;
  }

  else
  {
    if ((result & 0xFFFFFFFD) == 0)
    {
      return result;
    }

    v13 = result;
    sub_181910730(a1, "authorizer malfunction");
    result = v13;
    v12 = 1;
  }

  *(a1 + 6) = v12;
  return result;
}

double sqlite3_column_double(sqlite3_stmt *a1, int iCol)
{
  if (!a1)
  {
    goto LABEL_10;
  }

  v4 = *(*a1 + 24);
  if (v4)
  {
    xmmword_1ED452F18(v4);
  }

  v5 = *(a1 + 20);
  if (!v5 || *(a1 + 130) <= iCol)
  {
    v9 = *a1;
    *(v9 + 80) = 25;
    sub_181932D5C(v9, 25);
LABEL_10:
    v6 = &qword_181A20ED0;
    LOBYTE(v7) = 1;
    goto LABEL_11;
  }

  v6 = (v5 + (iCol << 6));
  v7 = *(v6 + 10);
  if ((v7 & 8) != 0)
  {
    v8 = *v6;
    if (!a1)
    {
      return v8;
    }

    goto LABEL_18;
  }

LABEL_11:
  if ((v7 & 0x24) != 0)
  {
    v8 = *v6;
    if (!a1)
    {
      return v8;
    }
  }

  else if ((v7 & 0x12) != 0)
  {
    v8 = sub_18193CF90(v6);
    if (!a1)
    {
      return v8;
    }
  }

  else
  {
    v8 = 0.0;
    if (!a1)
    {
      return v8;
    }
  }

LABEL_18:
  v10 = *a1;
  v11 = *(a1 + 13);
  if (v11 || (v12 = *(v10 + 103), *(v10 + 103)))
  {
    v12 = sub_18193C988(v10, v11);
    v10 = *a1;
  }

  *(a1 + 13) = v12;
  v13 = *(v10 + 24);
  if (v13)
  {
    xmmword_1ED452F28(v13);
  }

  return v8;
}

void sub_1818DF214(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = a2;
    v5 = *result;
    v6 = *(a2 + 8);
    v7 = *(v6 + 1);
    if (!*(v6 + 1))
    {
      v11 = *result;
      LODWORD(v9) = *(result + 296) + 1;
      *(result + 296) = v9;
LABEL_46:
      *(v3 + 48) = v9;
      if (v9 <= *(v11 + 172))
      {
        return;
      }

      sub_181910730(result, "too many SQL variables", a3);
      v17 = *result;
      while (1)
      {
        v18 = *(v3 + 4);
        if ((v18 & 3) == 0)
        {
          v19 = *(v3 + 56);
          if (v19 > 0)
          {
            break;
          }
        }

        v3 = *(v3 + 16);
        if (!v3)
        {
          return;
        }
      }

      goto LABEL_51;
    }

    v8 = a3;
    if (*v6 != 63)
    {
      v33 = a3;
      v11 = *result;
      v12 = *(result + 320);
      if (v12)
      {
        v13 = v12[1];
        v14 = 2;
        while (1)
        {
          v15 = &v12[v14];
          if (!strncmp(v15 + 8, v6, v33) && !*(v15 + v33 + 8))
          {
            break;
          }

          v14 += v15[1];
          if (v14 >= v13)
          {
            goto LABEL_13;
          }
        }

        LODWORD(v9) = *v15;
        if (*v15)
        {
          goto LABEL_46;
        }
      }

LABEL_13:
      LODWORD(v9) = *(result + 296) + 1;
      *(result + 296) = v9;
      v5 = v11;
      v8 = v33;
      goto LABEL_31;
    }

    v34 = 0;
    if (a3 == 2)
    {
      v9 = v7 - 48;
      v10 = *(v5 + 172);
    }

    else
    {
      v16 = sub_18193D008((v6 + 1), &v34, a3 - 1, 1) != 0;
      v9 = v34;
      v10 = *(v5 + 172);
      if (v16)
      {
        goto LABEL_19;
      }
    }

    if (v9 >= 1 && v9 <= v10)
    {
      if (*(result + 296) < v9)
      {
        *(result + 296) = v9;
        v12 = *(result + 320);
        goto LABEL_31;
      }

      v12 = *(result + 320);
      if (v12)
      {
        v20 = 2;
        while (1)
        {
          v21 = &v12[v20];
          if (*v21 == v9)
          {
            break;
          }

          v20 += v21[1];
          if (v20 >= v12[1])
          {
            goto LABEL_31;
          }
        }

        if (v21 != -8)
        {
          v11 = v5;
          goto LABEL_46;
        }
      }

LABEL_31:
      v22 = v8 / 4;
      v23 = v8 / 4 + 3;
      if (v12)
      {
        v24 = v12[1];
        v25 = *v12;
        v26 = v24 + v23;
        if (v24 + v23 <= v25)
        {
LABEL_44:
          v31 = &v12[v24];
          *v31 = v9;
          v31[1] = v23;
          v32 = v31 + 2;
          v12[1] = v26;
          memcpy(v31 + 2, v6, v8);
          *(v32 + v8) = 0;
          goto LABEL_45;
        }

        v27 = 2 * v25 + v23;
        v28 = 4 * v27;
        if (*(v5 + 512) > v12)
        {
          if (*(v5 + 496) <= v12)
          {
            if (v28 < 0x81)
            {
LABEL_37:
              *v12 = v27;
              goto LABEL_44;
            }
          }

          else if (*(v5 + 504) <= v12 && v28 <= *(v5 + 438))
          {
            goto LABEL_37;
          }
        }

        v30 = sub_181929F38(v5, v12, v28, 0x100004052888210);
        if (v30)
        {
          v24 = v30[1];
          v12 = v30;
          goto LABEL_43;
        }
      }

      else
      {
        LODWORD(v27) = v22 + 13;
        v29 = sub_181929E8C(v5, 4 * (v22 + 13), 0x100004052888210);
        v12 = v29;
        if (v29)
        {
          v24 = 2;
          v29[1] = 2;
LABEL_43:
          *v12 = v27;
          v26 = v24 + v23;
          goto LABEL_44;
        }
      }

LABEL_45:
      v11 = v5;
      *(result + 320) = v12;
      goto LABEL_46;
    }

LABEL_19:
    sub_181910730(result, "variable number must be between ?1 and ?%d", v10);
    v17 = *result;
    while (1)
    {
      v18 = *(v3 + 4);
      if ((v18 & 3) == 0)
      {
        v19 = *(v3 + 56);
        if (v19 > 0)
        {
          break;
        }
      }

      v3 = *(v3 + 16);
      if (!v3)
      {
        return;
      }
    }

LABEL_51:
    if ((v18 & 0x40000000) == 0)
    {
      *(v17 + 84) = v19;
    }
  }
}

uint64_t sub_1818DF574(uint64_t *a1, unsigned int a2, char *a3, uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  if (a2 <= 0)
  {
    if (a1)
    {
      v17 = *a1;
      if (*a1)
      {
        *(v17 + 80) = 25;
        sub_181932D5C(v17, 25);
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
    goto LABEL_14;
  }

  result = sub_1818DF6EC(a1, a2 - 1);
  if (result)
  {
LABEL_14:
    if (a5 + 1 < 2)
    {
      return result;
    }

    v18 = result;
    a5(a3);
    return v18;
  }

  if (!a3)
  {
LABEL_17:
    result = 0;
    goto LABEL_21;
  }

  v13 = a1[16] + (a2 << 6);
  result = sub_1818900D0(v13 - 64, a3, a4, a6, a5);
  if (!a6 || result)
  {
LABEL_19:
    if (result)
    {
      v19 = *a1;
      *(v19 + 80) = result;
      v20 = result;
      sub_181932D5C(v19, result);
      result = sub_18193C988(*a1, v20);
    }

    goto LABEL_21;
  }

  v16 = *(*a1 + 100);
  if ((*(v13 - 44) & 2) != 0)
  {
    if (*(v13 - 42) == v16)
    {
      goto LABEL_17;
    }

    result = sub_1818F1820((v13 - 64), v16, v14, v15);
    goto LABEL_19;
  }

  result = 0;
  *(v13 - 42) = v16;
LABEL_21:
  v21 = *(*a1 + 24);
  if (!v21)
  {
    return result;
  }

  v18 = result;
  xmmword_1ED452F28(v21);
  return v18;
}

uint64_t sub_1818DF6EC(uint64_t *a1, unsigned int a2)
{
  if (!a1)
  {
    sqlite3_log(21, "API called with NULL prepared statement");
LABEL_17:
    v10 = 101313;
    goto LABEL_21;
  }

  if (!*a1)
  {
    sqlite3_log(21, "API called with finalized prepared statement");
    goto LABEL_17;
  }

  v3 = *(*a1 + 24);
  if (v3)
  {
    v4 = a2;
    xmmword_1ED452F18(v3);
    a2 = v4;
  }

  if (*(a1 + 267) == 1)
  {
    if (*(a1 + 8) <= a2)
    {
      v14 = *a1;
      *(v14 + 80) = 25;
      sub_181932D5C(v14, 25);
      v15 = *(*a1 + 24);
      if (v15)
      {
        xmmword_1ED452F28(v15);
      }

      return 25;
    }

    else
    {
      v5 = a1[16] + (a2 << 6);
      if ((*(v5 + 20) & 0x9000) != 0 || *(v5 + 32))
      {
        v6 = a2;
        sub_18193CA00((a1[16] + (a2 << 6)));
        a2 = v6;
      }

      *(v5 + 20) = 1;
      *(*a1 + 80) = 0;
      v7 = *(a1 + 93);
      if (!v7)
      {
        return 0;
      }

      v8 = 1 << a2;
      if (a2 > 0x1E)
      {
        v8 = 0x80000000;
      }

      if ((v7 & v8) != 0)
      {
        result = 0;
        *(a1 + 134) = *(a1 + 134) & 0xFFFC | 1;
      }

      else
      {
        return 0;
      }
    }

    return result;
  }

  v11 = *a1;
  v12 = sub_1819012D0(101317);
  *(v11 + 80) = v12;
  sub_181932D5C(v11, v12);
  v13 = *(*a1 + 24);
  if (v13)
  {
    xmmword_1ED452F28(v13);
  }

  sqlite3_log(21, "bind on a busy prepared statement: [%s]", a1[40]);
  v10 = 101321;
LABEL_21:

  return sub_1819012D0(v10);
}

int sqlite3_expired(sqlite3_stmt *a1)
{
  if (!a1)
  {
    return 1;
  }

  v2 = *(*a1 + 24);
  if (!v2)
  {
    return (*(a1 + 134) & 3) != 0;
  }

  xmmword_1ED452F18(v2);
  v3 = *(*a1 + 24);
  result = (*(a1 + 134) & 3) != 0;
  if (v3)
  {
    v5 = (*(a1 + 134) & 3) != 0;
    xmmword_1ED452F28(v3);
    return v5;
  }

  return result;
}

void sqlite3_progress_handler(sqlite3 *a1, int a2, int (__cdecl *a3)(void *), void *a4)
{
  if (!a1)
  {
    v5 = "NULL";
    goto LABEL_20;
  }

  v4 = *(a1 + 113);
  if (v4 == 186)
  {
LABEL_5:
    v5 = "unopened";
LABEL_20:
    sqlite3_log(21, "API call with %s database connection pointer", v5);

    sub_1819012D0(193609);
    return;
  }

  if (v4 != 118)
  {
    if (v4 != 109)
    {
      v5 = "invalid";
      goto LABEL_20;
    }

    goto LABEL_5;
  }

  if (*(a1 + 3))
  {
    v6 = a1;
    v7 = a4;
    v8 = a2;
    v9 = a3;
    xmmword_1ED452F18(*(a1 + 3));
    a3 = v9;
    a2 = v8;
    a4 = v7;
    a1 = v6;
  }

  if (a2 <= 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = a3;
  }

  if (a2 <= 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = a4;
  }

  *(a1 + 68) = v10;
  *(a1 + 140) = a2 & ~(a2 >> 31);
  *(a1 + 69) = v11;
  if (*(a1 + 3))
  {
    v12 = xmmword_1ED452F28;

    v12();
  }
}

void sub_1818DFA70(void *a1, uint64_t a2, unsigned int a3, int a4)
{
  v157 = 0;
  v155 = 0;
  v8 = *(a1 + 43);
  v9 = *(a2 + 16);
  if (sub_18195B27C(a1, a2))
  {
    return;
  }

  v10 = sub_18195B378(a1, a2);
  v11 = *(a2 + 16);
  v12 = *v11;
  if (v12 == 176)
  {
    v12 = v11[2];
  }

  if (v12 == 177)
  {
    goto LABEL_7;
  }

  if (v12 == 139)
  {
    v11 = *(v11 + 4);
LABEL_7:
    v13 = **(v11 + 4);
    goto LABEL_9;
  }

  v13 = 1;
LABEL_9:
  v153 = a3;
  v151 = a4;
  v150 = v10;
  if (*a1)
  {
    v14 = sub_181929E8C(*a1, 4 * v13, 0x100004052888210);
  }

  else
  {
    v14 = sub_181902484(4 * v13, 0x100004052888210);
  }

  v15 = v14;
  v143 = v13;
  if (v14)
  {
    bzero(v14, 4 * v13);
  }

  v142 = v15;
  if (*(*a1 + 103))
  {
    goto LABEL_15;
  }

  v16 = a1[2];
  v17 = v153;
  v18 = v151;
  if (v153 == v151)
  {
    v19 = 0;
  }

  else
  {
    v19 = &v157;
  }

  v147 = sub_1818E0B5C(a1, a2, 3, v19, v15, &v155);
  *(a1 + 43) &= ~4u;
  v21 = *v9;
  v22 = v21;
  if (v21 == 176)
  {
    v22 = v9[2];
  }

  v23 = v8 & 4;
  v156 = 0;
  v24 = v9;
  if (v22 != 177)
  {
    if (v22 != 139)
    {
LABEL_29:
      v26 = sub_181957E00(a1, v9, &v156);
LABEL_30:
      v27 = v26;
      goto LABEL_31;
    }

    v24 = *(v9 + 4);
  }

  v25 = **(v24 + 4);
  if (v25 == 1)
  {
    goto LABEL_29;
  }

  if (v21 == 139)
  {
    v26 = sub_1818E1564(a1, v9);
    goto LABEL_30;
  }

  v35 = *(a1 + 15);
  v27 = (v35 + 1);
  *(a1 + 15) = v35 + v25;
  if (v25 >= 1)
  {
    v36 = 8;
    v141 = v35 + 1;
    do
    {
      sub_18195CD44(a1, *(*(v9 + 4) + v36), v27);
      v27 = (v27 + 1);
      v36 += 24;
      --v25;
    }

    while (v25);
    v17 = v153;
    v18 = v151;
    v27 = v141;
  }

LABEL_31:
  *(a1 + 43) = *(a1 + 43) & 0xFB | v23;
  v140 = v27;
  if (v143 < 1)
  {
    LODWORD(v28) = 0;
  }

  else
  {
    v28 = 0;
    while (v28 == *(v142 + v28))
    {
      if (v143 == ++v28)
      {
        v29 = v27;
        goto LABEL_59;
      }
    }
  }

  v29 = v27;
  if (v28 != v143)
  {
    if (v143 == 1)
    {
      if (*(a1 + 31))
      {
        v30 = *(a1 + 31) - 1;
        *(a1 + 31) = v30;
        v29 = *(a1 + v30 + 46);
      }

      else
      {
        v29 = (*(a1 + 15) + 1);
        *(a1 + 15) = v29;
      }
    }

    else
    {
      v31 = *(a1 + 11);
      v32 = __OFSUB__(v31, v143);
      v33 = v31 - v143;
      if (v33 < 0 != v32)
      {
        v34 = *(a1 + 15);
        v29 = (v34 + 1);
        *(a1 + 15) = v34 + v143;
      }

      else
      {
        v29 = *(a1 + 12);
        *(a1 + 11) = v33;
        *(a1 + 12) = v29 + v143;
      }

      if (v143 < 1)
      {
        goto LABEL_59;
      }
    }

    v37 = v142;
    v38 = v27;
    v39 = v143;
    do
    {
      v41 = *v37;
      v37 = (v37 + 4);
      v20 = (v41 + v29);
      v42 = *(v16 + 36);
      if (*(v16 + 37) > v42)
      {
        *(v16 + 36) = v42 + 1;
        v40 = &v16[17][5 * v42];
        *v40 = 80;
        *(v40 + 4) = v38;
        *(v40 + 8) = v20;
        *(v40 + 12) = 0;
        *(v40 + 28) = 0;
        *(v40 + 20) = 0;
        *(v40 + 36) = 0;
      }

      else
      {
        v43 = v29;
        sub_18194C8AC(v16, 80, v38, v20, 0);
        v29 = v43;
      }

      ++v38;
      --v39;
    }

    while (v39);
    v17 = v153;
    v18 = v151;
    LODWORD(v27) = v140;
  }

LABEL_59:
  v152 = v29;
  if (v147 != 5)
  {
    if (v17 == v18)
    {
      __sa = 0;
      v47 = v17;
    }

    else
    {
      v47 = *(a1 + 18) - 1;
      *(a1 + 18) = v47;
      __sa = v47;
    }

    if (v143 >= 1)
    {
      v48 = 0;
      v49 = v29;
      while (1)
      {
        v51 = *(a2 + 16);
        v52 = *v51;
        v53 = v52;
        if (v52 == 176)
        {
          v53 = v51[2];
        }

        v54 = *(a2 + 16);
        if (v53 == 177)
        {
          goto LABEL_75;
        }

        if (v53 == 139)
        {
          break;
        }

LABEL_80:
        if (*(a1 + 13))
        {
          goto LABEL_15;
        }

        while (1)
        {
          v55 = *v51;
          if ((v55 - 173) >= 2)
          {
            break;
          }

          v51 = *(v51 + 2);
        }

        if (v55 == 176)
        {
          v55 = v51[2];
        }

        if ((v55 - 154) >= 3 && v55 != 118)
        {
          if (v55 != 168 || (v51[6] & 0x20) != 0 || (v56 = *(v51 + 9)) == 0 || (v57 = *(v51 + 12), (v57 & 0x80000000) == 0) && (v58 = *(v56 + 8)) != 0 && v57 < *(v56 + 54) && (*(v58 + 16 * v57 + 8) & 0xF) == 0)
          {
            v59 = v48 + v49;
            v60 = *(v16 + 36);
            if (*(v16 + 37) > v60)
            {
              *(v16 + 36) = v60 + 1;
              v50 = &v16[17][5 * v60];
              *v50 = 51;
              *(v50 + 4) = v59;
              *(v50 + 8) = v47;
              *(v50 + 12) = 0;
              *(v50 + 28) = 0;
              *(v50 + 20) = 0;
              *(v50 + 36) = 0;
            }

            else
            {
              sub_18194C8AC(v16, 51, v59, v47, 0);
              v29 = v152;
            }
          }
        }

        if (++v48 == v143)
        {
          goto LABEL_97;
        }
      }

      v54 = *(v51 + 4);
LABEL_75:
      if (**(v54 + 32) >= 2)
      {
        if (v52 == 139 || v51[2] == 139)
        {
          v51 = *(v51 + 4);
        }

        v51 = *(*(v51 + 4) + 24 * v48 + 8);
      }

      goto LABEL_80;
    }

LABEL_97:
    if (v147 == 1)
    {
      v61 = v155;
      v62 = *(v16 + 36);
      v63 = v153;
      v64 = v143;
      if (*(v16 + 37) <= v62)
      {
        sub_18194C8AC(v16, 30, v155, v153, v29);
      }

      else
      {
        *(v16 + 36) = v62 + 1;
        v65 = &v16[17][5 * v62];
        *v65 = 30;
        *(v65 + 4) = v61;
        *(v65 + 8) = v153;
        *(v65 + 12) = v29;
        *(v65 + 24) = 0;
        *(v65 + 32) = 0;
        *(v65 + 16) = 0;
      }

      v101 = v27;
      v103 = v151;
      v104 = *(v16 + 36);
      if (*(v16 + 37) > v104)
      {
        *(v16 + 36) = v104 + 1;
        v105 = &v16[17][5 * v104];
        *v105 = 9;
        *(v105 + 1) = 0u;
        *(v105 + 17) = 0u;
        *(v105 + 32) = 0;
        goto LABEL_197;
      }

      v106 = sub_18194C8AC(v16, 9, 0, 0, 0);
LABEL_196:
      v104 = v106;
LABEL_197:
      if (v64 == 1 && v157)
      {
        sub_1818A2964(v16, 52, v157, v63, 0);
      }

      if (v63 == v103)
      {
        sub_1818A2964(v16, 9, 0, v63, 0);
      }

      if (__sa)
      {
        v108 = v16[3];
        v109 = ~__sa;
        if (*(v108 + 72) + *(v108 + 76) < 0)
        {
          sub_18195CB84(v108, v16, v109);
        }

        else
        {
          *(*(v108 + 80) + 4 * v109) = *(v16 + 36);
        }
      }

      v111 = *(v16 + 36);
      if (*(v16 + 37) <= v111)
      {
        v111 = sub_18194C8AC(v16, 36, v61, v63, 0);
      }

      else
      {
        *(v16 + 36) = v111 + 1;
        v112 = &v16[17][5 * v111];
        *v112 = 36;
        *(v112 + 4) = v61;
        *(v112 + 8) = v63;
        *(v112 + 12) = 0;
        *(v112 + 28) = 0;
        *(v112 + 20) = 0;
        *(v112 + 36) = 0;
      }

      v113 = v152;
      if (v64 <= 1)
      {
        v149 = v63;
        if (v64 < 1)
        {
          goto LABEL_247;
        }
      }

      else
      {
        v149 = *(a1 + 18) - 1;
        *(a1 + 18) = v149;
      }

      v137 = v111;
      v139 = v104;
      v114 = 0;
      __sb = (a1 + 23);
      v115 = v64;
      v116 = 8;
      v117 = v115;
      while (1)
      {
        if (*(a1 + 31))
        {
          v118 = *(a1 + 31) - 1;
          *(a1 + 31) = v118;
          v119 = *&__sb[4 * v118];
        }

        else
        {
          v119 = *(a1 + 15) + 1;
          *(a1 + 15) = v119;
        }

        v120 = *v9;
        v121 = v120;
        if (v120 == 176)
        {
          v121 = v9[2];
        }

        v122 = v9;
        if (v121 == 177)
        {
          goto LABEL_225;
        }

        v123 = v9;
        if (v121 == 139)
        {
          break;
        }

LABEL_230:
        v125 = sub_1818B4720(a1, v123);
        v126 = *(v16 + 36);
        if (*(v16 + 37) <= v126)
        {
          sub_18194C8AC(v16, 94, v61, v114, v119);
        }

        else
        {
          *(v16 + 36) = v126 + 1;
          v127 = &v16[17][5 * v126];
          *v127 = 94;
          *(v127 + 4) = v61;
          *(v127 + 8) = v114;
          *(v127 + 12) = v119;
          *(v127 + 24) = 0;
          *(v127 + 32) = 0;
          *(v127 + 16) = 0;
        }

        v128 = *(v16 + 36);
        if (*(v16 + 37) <= v128)
        {
          v128 = sub_18194C8AC(v16, 53, v113, v149, v119);
        }

        else
        {
          *(v16 + 36) = v128 + 1;
          v129 = &v16[17][5 * v128];
          *v129 = 53;
          *(v129 + 4) = v113;
          *(v129 + 8) = v149;
          *(v129 + 12) = v119;
          *(v129 + 24) = 0;
          *(v129 + 32) = 0;
          *(v129 + 16) = 0;
        }

        if (!*(*v16 + 103))
        {
          if (v128 < 0)
          {
            v128 = *(v16 + 36) - 1;
          }

          v130 = &v16[17][5 * v128];
          if (*(v130 + 1))
          {
            sub_18194CB90(v16, v130, v125, 4294967294);
          }

          else if (v125)
          {
            *(v130 + 16) = v125;
            *(v130 + 1) = -2;
          }
        }

        if (v119)
        {
          v131 = *(a1 + 31);
          if (v131 <= 7)
          {
            *(a1 + 31) = v131 + 1;
            *&__sb[4 * v131] = v119;
          }
        }

        ++v114;
        ++v113;
        v116 += 24;
        if (v117 == v114)
        {
          v63 = v153;
          v101 = v140;
          v64 = v143;
          v111 = v137;
          v104 = v139;
LABEL_247:
          v132 = *(v16 + 36);
          if (*(v16 + 37) <= v132)
          {
            sub_18194C8AC(v16, 9, 0, v151, 0);
          }

          else
          {
            *(v16 + 36) = v132 + 1;
            v133 = &v16[17][5 * v132];
            *v133 = 9;
            *(v133 + 8) = v151;
            *(v133 + 12) = 0;
            *(v133 + 28) = 0;
            *(v133 + 20) = 0;
            *(v133 + 36) = 0;
          }

          if (v64 >= 2)
          {
            sub_181958CD8(v16, v149);
            sub_1818A2964(v16, 39, v61, (v111 + 1), 0);
            sub_1818A2964(v16, 9, 0, v63, 0);
          }

          v94 = v152;
          if (*(*v16 + 103))
          {
            v134 = &byte_1EA831A58;
          }

          else
          {
            v134 = &v16[17][5 * v104];
          }

          *(v134 + 2) = *(v16 + 36);
LABEL_256:
          if (v94 != v101)
          {
            goto LABEL_257;
          }

          goto LABEL_15;
        }
      }

      v122 = *(v9 + 4);
LABEL_225:
      v123 = v9;
      if (**(v122 + 4) >= 2)
      {
        if (v120 == 139 || (v124 = v9, v9[2] == 139))
        {
          v124 = *(v9 + 4);
        }

        v123 = *(*(v124 + 4) + v116);
      }

      goto LABEL_230;
    }

    v66 = *(v16 + 36);
    v63 = v153;
    v64 = v143;
    if (*(v16 + 37) <= v66)
    {
      v66 = sub_18194C8AC(v16, 96, v29, v143, 0);
      v29 = v152;
    }

    else
    {
      *(v16 + 36) = v66 + 1;
      v67 = &v16[17][5 * v66];
      *v67 = 96;
      *(v67 + 4) = v29;
      *(v67 + 8) = v143;
      *(v67 + 12) = 0;
      *(v67 + 28) = 0;
      *(v67 + 20) = 0;
      *(v67 + 36) = 0;
    }

    v101 = v27;
    v103 = v151;
    if (*(*v16 + 103))
    {
      if (v143 == -11)
      {
LABEL_194:
        if (v153 == v151)
        {
          if ((*(a2 + 7) & 2) != 0)
          {
            v110 = *(*v16 + 103) ? &byte_1EA831A58 : &v16[17][5 * *(a2 + 72)];
            if (*v110 == 15)
            {
              v136 = *(v110 + 3);
              if (v136 >= 1)
              {
                sub_181910A18(v16, 64, v136, v153, v152, v143);
              }
            }
          }

          sub_181910A18(v16, 28, v155, v153, v152, v143);
          v94 = v152;
          if (v152 != v27)
          {
            goto LABEL_257;
          }

          goto LABEL_15;
        }

        v61 = v155;
        v106 = sub_181910A18(v16, 29, v155, 0, v29, v143);
        goto LABEL_196;
      }

      sub_1818A3B68(*v16, v143, v150, v20);
    }

    else
    {
      if (v66 < 0)
      {
        v66 = *(v16 + 36) - 1;
      }

      v107 = &v16[17][5 * v66];
      if ((v143 & 0x80000000) != 0 && !*(v107 + 1))
      {
        if (v143 == -3)
        {
          *(v107 + 16) = v150;
          *(v107 + 1) = -3;
        }

        else if (v150)
        {
          *(v107 + 16) = v150;
          *(v107 + 1) = v143;
          if (v143 == -11)
          {
            ++*(v150 + 6);
          }
        }

        goto LABEL_194;
      }

      sub_18194CB90(v16, v107, v150, v143);
    }

    v29 = v152;
    goto LABEL_194;
  }

  v138 = *(a1 + 18);
  v148 = v138 - 1;
  *(a1 + 18) = v138 - 1;
  v154 = 0;
  v44 = *(a2 + 32);
  __s = sub_1818B4720(a1, *(a2 + 16));
  v45 = 0;
  if (v17 != v18)
  {
    if (*(a1 + 31))
    {
      v46 = *(a1 + 31) - 1;
      *(a1 + 31) = v46;
      v45 = *(a1 + v46 + 46);
    }

    else
    {
      v45 = *(a1 + 15) + 1;
      *(a1 + 15) = v45;
    }

    v68 = *(v16 + 36);
    if (*(v16 + 37) <= v68)
    {
      sub_18194C8AC(v16, 103, v152, v152, v45);
    }

    else
    {
      *(v16 + 36) = v68 + 1;
      v69 = &v16[17][5 * v68];
      *v69 = 103;
      *(v69 + 4) = v152;
      *(v69 + 8) = v152;
      *(v69 + 12) = v45;
      *(v69 + 24) = 0;
      *(v69 + 32) = 0;
      *(v69 + 16) = 0;
    }
  }

  if (*v44 >= 1)
  {
    v70 = 0;
    while (1)
    {
      v72 = &v44[6 * v70 + 2];
      v73 = sub_181957E00(a1, *v72, &v154);
      v74 = v73;
      v75 = v152;
      if (!v45)
      {
        goto LABEL_128;
      }

      while (1)
      {
        v76 = *v72;
        v77 = **v72;
        if ((v77 - 173) >= 2)
        {
          break;
        }

        v72 = (v76 + 16);
      }

      if (v77 == 176)
      {
        v77 = v76[2];
      }

      if ((v77 - 154) < 3)
      {
        goto LABEL_128;
      }

      if (v77 == 118)
      {
        goto LABEL_128;
      }

      if (v77 == 168 && (v76[6] & 0x20) == 0)
      {
        v78 = *(v76 + 9);
        if (v78)
        {
          v79 = *(v76 + 12);
          if ((v79 & 0x80000000) != 0)
          {
            goto LABEL_128;
          }

          v80 = *(v78 + 8);
          if (!v80 || v79 >= *(v78 + 54) || (*(v80 + 16 * v79 + 8) & 0xF) != 0)
          {
            goto LABEL_128;
          }
        }
      }

      v81 = *(v16 + 36);
      if (*(v16 + 37) > v81)
      {
        break;
      }

      sub_18194C8AC(v16, 103, v45, v73, v45);
      v75 = v152;
      v83 = v154;
      if (!v154)
      {
        goto LABEL_131;
      }

LABEL_129:
      v84 = *(a1 + 31);
      if (v84 <= 7)
      {
        *(a1 + 31) = v84 + 1;
        *(a1 + v84 + 46) = v83;
      }

LABEL_131:
      v85 = *(v16 + 36);
      v86 = *(v16 + 37);
      v18 = v151;
      if (v153 == v151 && v70 >= *v44 - 1)
      {
        if (v75 == v74)
        {
          v87 = 51;
        }

        else
        {
          v87 = 53;
        }

        if (v86 <= v85)
        {
          v85 = sub_18194C8AC(v16, v87, v75, v153, v74);
        }

        else
        {
          *(v16 + 36) = v85 + 1;
          v88 = &v16[17][5 * v85];
          *v88 = v87;
          *(v88 + 2) = 0;
          *(v88 + 4) = v75;
          *(v88 + 8) = v153;
          *(v88 + 12) = v74;
          *(v88 + 1) = 0;
          *(v88 + 24) = 0;
          *(v88 + 32) = 0;
          *(v88 + 16) = 0;
        }

        if (!*(*v16 + 103))
        {
          if (v85 < 0)
          {
            v85 = *(v16 + 36) - 1;
          }

          v92 = &v16[17][5 * v85];
          if (*(v92 + 1))
          {
            sub_18194CB90(v16, v92, __s, 4294967294);
          }

          else if (__s)
          {
            *(v92 + 16) = __s;
            *(v92 + 1) = -2;
          }
        }

        v93 = *(v16 + 36);
        if (v93 < 1)
        {
          goto LABEL_110;
        }

        v71 = *v150 | 0x10;
      }

      else
      {
        if (v75 == v74)
        {
          v89 = 52;
        }

        else
        {
          v89 = 54;
        }

        if (v86 <= v85)
        {
          v85 = sub_18194C8AC(v16, v89, v75, v148, v74);
        }

        else
        {
          *(v16 + 36) = v85 + 1;
          v90 = &v16[17][5 * v85];
          *v90 = v89;
          *(v90 + 2) = 0;
          *(v90 + 4) = v75;
          *(v90 + 8) = v148;
          *(v90 + 12) = v74;
          *(v90 + 1) = 0;
          *(v90 + 24) = 0;
          *(v90 + 32) = 0;
          *(v90 + 16) = 0;
        }

        if (!*(*v16 + 103))
        {
          if (v85 < 0)
          {
            v85 = *(v16 + 36) - 1;
          }

          v91 = &v16[17][5 * v85];
          if (*(v91 + 1))
          {
            sub_18194CB90(v16, v91, __s, 4294967294);
          }

          else if (__s)
          {
            *(v91 + 16) = __s;
            *(v91 + 1) = -2;
          }
        }

        v93 = *(v16 + 36);
        if (v93 < 1)
        {
          goto LABEL_110;
        }

        v71 = *v150;
      }

      *(&v16[17][5 * v93 - 4] - 3) = v71;
LABEL_110:
      if (++v70 >= *v44)
      {
        goto LABEL_165;
      }
    }

    *(v16 + 36) = v81 + 1;
    v82 = &v16[17][5 * v81];
    *v82 = 103;
    *(v82 + 4) = v45;
    *(v82 + 8) = v73;
    *(v82 + 12) = v45;
    *(v82 + 24) = 0;
    *(v82 + 32) = 0;
    *(v82 + 16) = 0;
LABEL_128:
    v83 = v154;
    if (!v154)
    {
      goto LABEL_131;
    }

    goto LABEL_129;
  }

LABEL_165:
  v94 = v152;
  if (v45)
  {
    v95 = *(v16 + 36);
    if (*(v16 + 37) <= v95)
    {
      sub_18194C8AC(v16, 51, v45, v18, 0);
    }

    else
    {
      *(v16 + 36) = v95 + 1;
      v96 = &v16[17][5 * v95];
      *v96 = 51;
      *(v96 + 4) = v45;
      *(v96 + 8) = v18;
      *(v96 + 12) = 0;
      *(v96 + 28) = 0;
      *(v96 + 20) = 0;
      *(v96 + 36) = 0;
    }

    v97 = *(v16 + 36);
    if (*(v16 + 37) <= v97)
    {
      sub_18194C8AC(v16, 9, 0, v153, 0);
    }

    else
    {
      *(v16 + 36) = v97 + 1;
      v98 = &v16[17][5 * v97];
      *v98 = 9;
      *(v98 + 8) = v153;
      *(v98 + 12) = 0;
      *(v98 + 28) = 0;
      *(v98 + 20) = 0;
      *(v98 + 36) = 0;
    }

    v94 = v152;
  }

  v99 = v16[3];
  v100 = -v138;
  v101 = v140;
  if (*(v99 + 72) + *(v99 + 76) < 0)
  {
    sub_18195CB84(v99, v16, v100);
    v94 = v152;
    if (!v45)
    {
      goto LABEL_256;
    }
  }

  else
  {
    *(*(v99 + 80) + 4 * v100) = *(v16 + 36);
    if (!v45)
    {
      goto LABEL_256;
    }
  }

  v102 = *(a1 + 31);
  if (v102 > 7)
  {
    goto LABEL_256;
  }

  *(a1 + 31) = v102 + 1;
  *(a1 + v102 + 46) = v45;
  if (v94 != v140)
  {
LABEL_257:
    if (v94)
    {
      v135 = *(a1 + 31);
      if (v135 <= 7)
      {
        *(a1 + 31) = v135 + 1;
        *(a1 + v135 + 46) = v94;
      }
    }
  }

LABEL_15:
  if (v142)
  {
    sub_181929C84(*a1, v142);
  }

  if (v150)
  {
    sub_181929C84(*a1, v150);
  }
}

uint64_t sub_1818E0B5C(uint64_t a1, uint64_t a2, char a3, int *a4, int32x4_t *a5, _DWORD *a6)
{
  v12 = sub_1818E7DFC(a1);
  v13 = *(a1 + 56);
  *(a1 + 56) = v13 + 1;
  if (a4 && (*(a2 + 5) & 0x10) != 0)
  {
    v14 = *(*(a2 + 32) + 32);
    v15 = *v14;
    if (v15 < 1)
    {
      LODWORD(v16) = 0;
    }

    else
    {
      v16 = 0;
      v17 = v14 + 2;
      while (1)
      {
        for (i = &v17[6 * v16]; ; i = (v19 + 16))
        {
          v19 = *i;
          v20 = *v19;
          if ((v20 - 173) >= 2)
          {
            break;
          }
        }

        if (v20 == 176)
        {
          v20 = v19[2];
        }

        if ((v20 - 154) >= 3 && v20 != 118)
        {
          if (v20 != 168)
          {
            break;
          }

          if ((v19[6] & 0x20) != 0)
          {
            break;
          }

          v21 = *(v19 + 9);
          if (!v21)
          {
            break;
          }

          v22 = *(v19 + 12);
          if ((v22 & 0x80000000) == 0)
          {
            v23 = *(v21 + 8);
            if (v23)
            {
              if (v22 < *(v21 + 54) && (*(v23 + 16 * v22 + 8) & 0xF) == 0)
              {
                break;
              }
            }
          }
        }

        if (++v16 == v15)
        {
          LODWORD(v16) = v15;
          break;
        }
      }
    }

    if (v16 == v15)
    {
      a4 = 0;
    }
  }

  if (*(a1 + 52))
  {
    goto LABEL_34;
  }

  if ((*(a2 + 4) & 0x1040) != 0x1000)
  {
    goto LABEL_34;
  }

  v24 = *(a2 + 32);
  if (*(v24 + 80))
  {
    goto LABEL_34;
  }

  if ((*(v24 + 4) & 9) != 0)
  {
    goto LABEL_34;
  }

  if (*(v24 + 96))
  {
    goto LABEL_34;
  }

  if (*(v24 + 48))
  {
    goto LABEL_34;
  }

  v25 = *(v24 + 40);
  if (*v25 != 1)
  {
    goto LABEL_34;
  }

  if ((*(v25 + 33) & 4) != 0)
  {
    goto LABEL_34;
  }

  v26 = *(v25 + 24);
  if (*(v26 + 63) == 1)
  {
    goto LABEL_34;
  }

  v102 = *(v24 + 32);
  v44 = *v102;
  v98 = v102 + 2;
  if (v44 >= 1)
  {
    v45 = (v102 + 2);
    v46 = *v102;
    do
    {
      if (**v45 != 168)
      {
        goto LABEL_34;
      }

      v45 += 3;
      --v46;
    }

    while (v46);
    if (!v24)
    {
LABEL_34:
      if ((a3 & 1) != 0 && (*(a2 + 5) & 0x10) == 0)
      {
        v27 = *(a2 + 16);
        *(a2 + 16) = 0;
        v110 = 0x100000000;
        v111 = 0;
        v109[0] = a1;
        v109[1] = sub_1818C7E14;
        v109[2] = sub_18195A49C;
        v109[3] = 0;
        sub_181959BA0(v109, a2);
        v28 = WORD2(v110);
        *(a2 + 16) = v27;
        if (!v28 || **(a2 + 32) <= 2)
        {
          --*(a1 + 56);
          result = 5;
          LODWORD(v13) = -1;
          goto LABEL_46;
        }
      }

      v30 = *(a1 + 28);
      if ((a3 & 4) != 0)
      {
        *(a1 + 28) = 0;
      }

      else if (a4)
      {
        v31 = *(a1 + 60);
        v32 = v31 + 1;
        v33 = v31 == -1;
        *(a1 + 60) = v31 + 1;
        *a4 = v31 + 1;
        sub_18195B754(a1, a2, v13);
        if (!v33)
        {
          sub_18195B5D8(v12, v13, v32);
        }

        goto LABEL_45;
      }

      sub_18195B754(a1, a2, v13);
LABEL_45:
      *(a1 + 28) = v30;
      result = 2;
      goto LABEL_46;
    }
  }

  v47 = v26[12];
  if (v47)
  {
    v48 = (*(*a1 + 32) + 24);
    LODWORD(v49) = -1;
    do
    {
      v50 = *v48;
      v48 += 4;
      v49 = (v49 + 1);
    }

    while (v50 != v47);
  }

  else
  {
    v49 = 4294934528;
  }

  if (*(a1 + 152))
  {
    v51 = *(a1 + 152);
  }

  else
  {
    v51 = a1;
  }

  v52 = *(v51 + 116);
  v100 = v26;
  if ((v52 & (1 << v49)) != 0)
  {
    if (v49 == 1)
    {
      goto LABEL_84;
    }
  }

  else
  {
    *(v51 + 116) = v52 | (1 << v49);
    if (v49 == 1)
    {
      sub_1819108F4(v51);
LABEL_83:
      v26 = v100;
      goto LABEL_84;
    }
  }

  if (*(*(*(*a1 + 32) + 32 * v49 + 8) + 17))
  {
    sub_1819570CC(a1, v49, *(v26 + 10), 0, *v26);
    goto LABEL_83;
  }

LABEL_84:
  v97 = v49;
  v104 = v44;
  if (v44 == 1)
  {
    if ((*(*v98 + 48) & 0x80000000) != 0)
    {
      v53 = *(v12 + 144);
      if (*(v12 + 148) <= v53)
      {
        v53 = sub_18194C8AC(v12, 15, 0, 0, 0);
      }

      else
      {
        *(v12 + 144) = v53 + 1;
        v54 = *(v12 + 136) + 40 * v53;
        *v54 = 15;
        *(v54 + 1) = 0u;
        *(v54 + 17) = 0u;
        *(v54 + 32) = 0;
      }

      sub_1818B69D8(a1, v13, v49, v100, 102);
      sub_18195AD8C(a1, 0, "USING ROWID SEARCH ON TABLE %s FOR IN-OPERATOR", *v100);
      if (*(*v12 + 103))
      {
        v86 = &byte_1EA831A58;
      }

      else
      {
        v86 = (*(v12 + 136) + 40 * v53);
      }

      *(v86 + 2) = *(v12 + 144);
      result = 1;
      goto LABEL_46;
    }
  }

  else if (v44 < 1)
  {
    goto LABEL_128;
  }

  v55 = *(a2 + 16);
  v56 = 2;
  v105 = *v55;
  v57 = 1;
  v99 = v55;
  do
  {
    v107 = v57;
    v63 = v105;
    if (v105 == 176)
    {
      v63 = v55[2];
    }

    v64 = v55;
    if (v63 != 177)
    {
      v65 = v55;
      if (v63 != 139)
      {
        goto LABEL_114;
      }

      v64 = *(v55 + 4);
    }

    v65 = v55;
    if (**(v64 + 4) >= 2)
    {
      if (v105 == 139 || (v66 = v55, v55[2] == 139))
      {
        v66 = *(v55 + 4);
      }

      v65 = *(*(v66 + 4) + v56 * 4);
    }

LABEL_114:
    v67 = *(*&v102[v56] + 48);
    if ((v67 & 0x80000000) != 0 || v67 >= *(v26 + 27))
    {
      v68 = 68;
    }

    else
    {
      v68 = v26[1][16 * v67 + 9];
    }

    v69 = sub_1818D0A24(v65);
    if (v68 < 65 || v69 < 65)
    {
      if (v69 >= 65)
      {
        v58 = v69;
      }

      else
      {
        v58 = v68;
      }

      v59 = v58 | 0x40;
      v55 = v99;
    }

    else
    {
      if (v69 > 0x42 || v68 > 0x42)
      {
        v59 = 67;
      }

      else
      {
        v59 = 65;
      }

      v55 = v99;
    }

    v61 = (v59 - 65) < 2u || v68 > 66;
    v56 += 6;
    LODWORD(v44) = v104;
    v62 = !v61 || v107 >= v104;
    v57 = v107 + 1;
    v26 = v100;
  }

  while (!v62);
  if (!v61)
  {
    goto LABEL_34;
  }

LABEL_128:
  v71 = v26[2];
  if (!v71)
  {
    goto LABEL_34;
  }

  v101 = -1 << v44;
  while (1)
  {
    v73 = *(v71 + 96);
    if (v44 <= v73)
    {
      v74 = v73 <= 0x3E && *(v71 + 72) == 0;
      if (v74 && ((a3 & 4) == 0 || v44 >= *(v71 + 94) && (v44 >= v73 || *(v71 + 98))))
      {
        break;
      }
    }

LABEL_132:
    v71 = *(v71 + 40);
    if (!v71)
    {
      goto LABEL_34;
    }
  }

  v103 = v71;
  if (v44 >= 1)
  {
    v75 = 0;
    v72 = 0;
    while (1)
    {
      v108 = v72;
      v76 = *(a2 + 16);
      v77 = *v76;
      v78 = v77;
      if (v77 == 176)
      {
        v78 = v76[2];
      }

      v79 = *(a2 + 16);
      if (v78 != 177)
      {
        if (v78 != 139)
        {
          goto LABEL_153;
        }

        v79 = *(v76 + 4);
      }

      if (**(v79 + 32) >= 2)
      {
        if (v77 == 139 || v76[2] == 139)
        {
          v76 = *(v76 + 4);
        }

        v76 = *(*(v76 + 4) + 24 * v75 + 8);
      }

LABEL_153:
      v44 = *&v98[6 * v75];
      v106 = v75;
      if ((v76[5] & 2) != 0)
      {
        v81 = a1;
        goto LABEL_159;
      }

      if (v44 && (v44[5] & 2) != 0 || (v80 = sub_1818B4720(a1, v76)) == 0)
      {
        v81 = a1;
        v76 = v44;
LABEL_159:
        v80 = sub_1818B4720(v81, v76);
      }

      v82 = 0;
      v71 = v103;
      v83 = *(v44 + 12);
      LODWORD(v44) = v104;
      while (v83 != *(*(v103 + 8) + 2 * v82))
      {
LABEL_161:
        if (++v82 == v104)
        {
          goto LABEL_130;
        }
      }

      if (v80)
      {
        v84 = *v80;
        for (j = *(*(v103 + 64) + 8 * v82); ; ++j)
        {
          if (*v84 == *j)
          {
            if (!*v84)
            {
              break;
            }
          }

          else if (byte_181A20298[*v84] != byte_181A20298[*j])
          {
            goto LABEL_161;
          }

          ++v84;
        }
      }

      if (v104 == v82)
      {
LABEL_130:
        v72 = v108;
        goto LABEL_131;
      }

      v72 = v108;
      if (((1 << v82) & v108) == 0)
      {
        if (a5)
        {
          a5->i32[v106] = v82;
        }

        v72 = (1 << v82) | v108;
        v75 = v106 + 1;
        if ((v106 + 1) != v104)
        {
          continue;
        }
      }

      goto LABEL_131;
    }
  }

  v72 = 0;
LABEL_131:
  if ((v72 ^ v101) != 0xFFFFFFFFFFFFFFFFLL)
  {
    goto LABEL_132;
  }

  v87 = *(v12 + 144);
  if (*(v12 + 148) <= v87)
  {
    v87 = sub_18194C8AC(v12, 15, 0, 0, 0);
  }

  else
  {
    *(v12 + 144) = v87 + 1;
    v88 = *(v12 + 136) + 40 * v87;
    *v88 = 15;
    *(v88 + 1) = 0u;
    *(v88 + 17) = 0u;
    *(v88 + 32) = 0;
  }

  sub_18195AD8C(a1, 0, "USING INDEX %s FOR IN-OPERATOR", *v103);
  v89 = *(v103 + 88);
  v90 = *(v12 + 144);
  if (*(v12 + 148) <= v90)
  {
    sub_18194C8AC(v12, 102, v13, v89, v97);
  }

  else
  {
    *(v12 + 144) = v90 + 1;
    v91 = *(v12 + 136) + 40 * v90;
    *v91 = 102;
    *(v91 + 4) = v13;
    *(v91 + 8) = v89;
    *(v91 + 12) = v97;
    *(v91 + 24) = 0;
    *(v91 + 32) = 0;
    *(v91 + 16) = 0;
  }

  v92 = *(a1 + 16);
  v93 = sub_1819572CC(a1, v103);
  if (v93)
  {
    if (*(*v92 + 103))
    {
      if (!*(*v92 + 824))
      {
        v74 = (*v93)-- == 1;
        if (v74)
        {
          sub_181939EC8(v93[2], v93);
        }
      }
    }

    else
    {
      v94 = *(v92 + 136) + 40 * *(v92 + 144);
      *(v94 - 39) = -8;
      *(v94 - 24) = v93;
    }
  }

  v95 = **(v103 + 56);
  if (a4)
  {
    v96 = *(a1 + 60) + 1;
    *(a1 + 60) = v96;
    *a4 = v96;
    if (v104 == 1)
    {
      sub_18195B5D8(v12, v13, v96);
    }
  }

  result = (v95 + 3);
  if (*(*v12 + 103))
  {
    dword_1EA831A60 = *(v12 + 144);
  }

  else
  {
    *(*(v12 + 136) + 40 * v87 + 8) = *(v12 + 144);
  }

LABEL_46:
  if (a5 && (result - 5) <= 0xFFFFFFFD)
  {
    v34 = *(a2 + 16);
    v35 = *v34;
    if (v35 == 176)
    {
      v35 = v34[2];
    }

    if (v35 == 177)
    {
LABEL_53:
      v36 = **(v34 + 4);
      if (v36 >= 1)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if (v35 == 139)
      {
        v34 = *(v34 + 4);
        goto LABEL_53;
      }

      v36 = 1;
LABEL_56:
      v37 = v36;
      if (v36 < 8)
      {
        v38 = 0;
        goto LABEL_61;
      }

      v38 = v36 & 0x7FFFFFF8;
      v39 = xmmword_181A1FFE0;
      v40 = a5 + 1;
      v41.i64[0] = 0x400000004;
      v41.i64[1] = 0x400000004;
      v42.i64[0] = 0x800000008;
      v42.i64[1] = 0x800000008;
      v43 = v37 & 0x7FFFFFF8;
      do
      {
        v40[-1] = v39;
        *v40 = vaddq_s32(v39, v41);
        v39 = vaddq_s32(v39, v42);
        v40 += 2;
        v43 -= 8;
      }

      while (v43);
      for (; v37 != v38; ++v38)
      {
LABEL_61:
        a5->i32[v38] = v38;
      }
    }
  }

  *a6 = v13;
  return result;
}

uint64_t sub_1818E1564(void *a1, unsigned __int8 *a2)
{
  if (*(a1 + 13))
  {
    return 0;
  }

  v72 = v2;
  v73 = v3;
  v7 = a1[2];
  v69 = 0;
  v67 = 0u;
  v68 = 0u;
  v8 = *(a2 + 4);
  v9 = *(a2 + 1);
  if ((v9 & 0x2000000) != 0)
  {
    sub_18195AD8C(a1, 0, "REUSE SUBQUERY %d", *(v8 + 16));
    v15 = *(a2 + 18);
    v14 = *(a2 + 19);
    v16 = *(v7 + 144);
    if (*(v7 + 148) <= v16)
    {
      sub_18194C8AC(v7, 10, v14, v15, 0);
    }

    else
    {
      *(v7 + 144) = v16 + 1;
      v17 = *(v7 + 136) + 40 * v16;
      *v17 = 10;
      *(v17 + 4) = v14;
      *(v17 + 8) = v15;
      *(v17 + 12) = 0;
      *(v17 + 28) = 0;
      *(v17 + 20) = 0;
      *(v17 + 36) = 0;
    }

    return *(a2 + 11);
  }

  *(a2 + 1) = v9 | 0x2000000;
  v10 = *(a1 + 15) + 1;
  *(a1 + 15) = v10;
  *(a2 + 19) = v10;
  v11 = *(v7 + 144);
  if (*(v7 + 148) <= v11)
  {
    v12 = sub_18194C8AC(v7, 74, 0, v10, 0) + 1;
  }

  else
  {
    v12 = v11 + 1;
    *(v7 + 144) = v11 + 1;
    v13 = *(v7 + 136) + 40 * v11;
    *v13 = 74;
    *(v13 + 8) = v10;
    *(v13 + 12) = 0;
    *(v13 + 28) = 0;
    *(v13 + 20) = 0;
    *(v13 + 36) = 0;
  }

  *(a2 + 18) = v12;
  if ((a2[4] & 0x40) != 0)
  {
    v18 = 0;
  }

  else
  {
    v18 = *(v7 + 144);
    if (*(v7 + 148) <= v18)
    {
      v18 = sub_18194C8AC(v7, 15, 0, 0, 0);
    }

    else
    {
      *(v7 + 144) = v18 + 1;
      v19 = *(v7 + 136) + 40 * v18;
      *v19 = 15;
      *(v19 + 1) = 0u;
      *(v19 + 17) = 0u;
      *(v19 + 32) = 0;
    }
  }

  v20 = &byte_181A2878D;
  if (!v18)
  {
    v20 = "CORRELATED ";
  }

  v21 = sub_18195AD8C(a1, 1, "%sSCALAR SUBQUERY %d", v20, *(v8 + 16));
  v22 = v21;
  if ((*(*v7 + 49) & 4) != 0)
  {
    v23 = *(v7 + 392);
    v24 = 56 * v23;
    v25 = v23 + 1;
    while (--v25 >= 1)
    {
      v26 = v24 - 56;
      v27 = *(v7 + 400);
      v28 = *(v27 + v24 - 56);
      v24 -= 56;
      if (v28 == v21)
      {
        if (v21 >= 1)
        {
          *(v27 + v26 + 28) = v21;
        }

        break;
      }
    }
  }

  v29 = *a2;
  if (v29 == 139)
  {
    v30 = **(v8 + 32);
  }

  else
  {
    v30 = 1;
  }

  v31 = *(a1 + 15);
  v32 = v31 + 1;
  *(&v68 + 1) = 0;
  DWORD1(v67) = v31 + 1;
  *(&v67 + 1) = 0;
  LODWORD(v68) = 0;
  v33 = v31 + v30;
  *(a1 + 15) = v31 + v30;
  if (v29 == 139)
  {
    LOBYTE(v67) = 10;
    HIDWORD(v67) = v31 + 1;
    LODWORD(v68) = v30;
    v34 = *(v7 + 144);
    if (*(v7 + 148) > v34)
    {
      *(v7 + 144) = v34 + 1;
      v35 = *(v7 + 136) + 40 * v34;
      *v35 = 75;
      *(v35 + 8) = v32;
      *(v35 + 12) = v33;
      *(v35 + 24) = 0;
      *(v35 + 32) = 0;
      *(v35 + 16) = 0;
      goto LABEL_35;
    }

    v38 = v7;
    v39 = 75;
  }

  else
  {
    LOBYTE(v67) = 3;
    v36 = *(v7 + 144);
    if (*(v7 + 148) > v36)
    {
      *(v7 + 144) = v36 + 1;
      v37 = *(v7 + 136) + 40 * v36;
      *v37 = 71;
      *(v37 + 8) = v32;
      *(v37 + 12) = 0;
      *(v37 + 28) = 0;
      *(v37 + 20) = 0;
      *(v37 + 36) = 0;
      goto LABEL_35;
    }

    v38 = v7;
    v39 = 71;
    v33 = 0;
  }

  sub_18194C8AC(v38, v39, 0, v32, v33);
LABEL_35:
  v40 = *a1;
  if (*(v8 + 96))
  {
    v70 = "0";
    v71 = 1;
    v41 = sub_1818A8CF0(v40, 156, &v70, 0);
    if (v41)
    {
      v42 = v41;
      *(v41 + 1) = 67;
      v43 = *(*(v8 + 96) + 16);
      if (v43)
      {
        v44 = sub_1818C7FEC(v40, v43, 0, 0);
      }

      else
      {
        v44 = 0;
      }

      v50 = sub_18194F098(a1, 53, v44, v42);
    }

    else
    {
      v50 = 0;
    }

    sub_18195B158(a1, sub_18195B270, *(*(v8 + 96) + 16));
    *(*(v8 + 96) + 16) = v50;
  }

  else
  {
    v45 = 1;
    v70 = "1";
    v71 = 1;
    v46 = sub_1818A8CF0(v40, 156, &v70, 0);
    v47 = sub_181929E8C(*a1, 0x50uLL, 0x1032040B79D87BDLL);
    v48 = v47;
    if (v47)
    {
      *(v47 + 2) = 0u;
      *(v47 + 3) = 0u;
      *(v47 + 4) = 0u;
      *v47 = 0u;
      *(v47 + 1) = 0u;
      *v47 = -107;
      *(v47 + 26) = -1;
      *(v47 + 10) = 1;
      if (v46)
      {
        v47[2] = v46;
        *(v47 + 1) |= *(v46 + 1) & 0x400208;
        v49 = *(v46 + 10);
        if (v49 < 1)
        {
          v45 = 1;
        }

        else
        {
          v45 = v49 + 1;
          *(v47 + 10) = v49 + 1;
        }
      }

      if (*(*a1 + 148) < v45)
      {
        sub_181910730(a1, "Expression tree is too large (maximum depth %d)", *(*a1 + 148));
      }
    }

    else if (v46)
    {
      sub_1819439E0(*a1, v46);
    }

    *(v8 + 96) = v48;
  }

  *(v8 + 8) = 0;
  if (sub_1818A9A10(a1, v8, &v67))
  {
    result = 0;
    a2[2] = *a2;
    *a2 = -74;
  }

  else
  {
    result = DWORD1(v67);
    *(a2 + 11) = DWORD1(v67);
    v51 = *v7;
    if (v18)
    {
      if (*(v51 + 103))
      {
        v52 = &byte_1EA831A58;
      }

      else
      {
        v52 = (*(v7 + 136) + 40 * v18);
      }

      *(v52 + 2) = *(v7 + 144);
    }

    if ((*(v51 + 49) & 4) != 0)
    {
      v53 = *(v7 + 392);
      v54 = 56 * v53;
      v55 = v53 + 1;
      while (--v55 >= 1)
      {
        v56 = v54 - 56;
        v57 = *(v7 + 400);
        v58 = *(v57 + v54 - 56);
        v54 -= 56;
        if (v58 == v22)
        {
          v59 = *(v7 + 144);
          if (*(v57 + v56 + 4))
          {
            if (*(v57 + v56 + 12))
            {
              if (*(v57 + v56 + 20))
              {
                break;
              }

              v60 = 4;
            }

            else
            {
              v60 = 2;
            }
          }

          else
          {
            v60 = 0;
          }

          v61 = v57 + 4 * v60 + v56;
          *(v61 + 4) = v22;
          *(v61 + 8) = v59 - 1;
          break;
        }
      }
    }

    v63 = *(a2 + 18);
    v62 = *(a2 + 19);
    v64 = *(v7 + 144);
    if (*(v7 + 148) <= v64)
    {
      v66 = result;
      sub_18194C8AC(v7, 67, v62, v63, 1);
      result = v66;
    }

    else
    {
      *(v7 + 144) = v64 + 1;
      v65 = *(v7 + 136) + 40 * v64;
      *v65 = 67;
      *(v65 + 4) = v62;
      *(v65 + 8) = v63;
      *(v65 + 12) = 1;
      *(v65 + 24) = 0;
      *(v65 + 32) = 0;
      *(v65 + 16) = 0;
    }

    *(a1 + 31) = 0;
    *(a1 + 11) = 0;
  }

  return result;
}

void sub_1818E1BB8(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = a1[2];
  if ((*(a2 + 5) & 8) != 0)
  {
    if (a3)
    {
      v18 = -*(a2 + 8);
    }

    else
    {
      v18 = *(a2 + 8);
    }

    v19 = *(v5 + 144);
    if (*(v5 + 148) <= v19)
    {
      v21 = a1[2];

      sub_18194C8AC(v21, 71, v18, a4, 0);
    }

    else
    {
      *(v5 + 144) = v19 + 1;
      v20 = *(v5 + 136) + 40 * v19;
      *v20 = 71;
      *(v20 + 4) = v18;
      *(v20 + 8) = a4;
      *(v20 + 12) = 0;
      *(v20 + 28) = 0;
      *(v20 + 20) = 0;
      *(v20 + 36) = 0;
    }

    return;
  }

  v7 = a4;
  v35 = 0;
  v9 = *(a2 + 8);
  v10 = sub_18191A360(v9, &v35);
  if (a3)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10 == 3;
  }

  v12 = !v11;
  v13 = v10 == 2 || v12 == 0;
  if (v13 || a3 && v35 == 0x8000000000000000)
  {
    if (!v9)
    {
      return;
    }

    v14 = *v9;
    v15 = "0x";
    if (*v9)
    {
      v16 = a1;
      v17 = a2;
      if (v14 != 48)
      {
LABEL_20:
        v14 = byte_181A20298[v14];
        goto LABEL_46;
      }

      v14 = v9[1];
      if (v9[1])
      {
        if ((v14 & 0xFFFFFFDF) == 0x58)
        {
LABEL_47:
          v29 = &byte_181A2878D;
          if (a3)
          {
            v29 = "-";
          }

          sub_181910730(v16, "hex literal too big: %s%#T", v29, v17);
          return;
        }

        v15 = "x";
        goto LABEL_20;
      }

      v15 = "x";
    }

    else
    {
      v16 = a1;
      v17 = a2;
    }

LABEL_46:
    if (v14 == byte_181A20298[*v15])
    {
      goto LABEL_47;
    }

    v36 = 0.0;
    v30 = strlen(v9);
    sub_1818E6334(v9, &v36, v30 & 0x3FFFFFFF, 1);
    if (a3)
    {
      v36 = -v36;
    }

    v31 = sub_181929E8C(*v5, 8uLL, 2029538362);
    v24 = v31;
    if (v31)
    {
      *v31 = v36;
    }

    v32 = *(v5 + 144);
    if (*(v5 + 148) <= v32)
    {
      v32 = sub_18194C8AC(v5, 154, 0, v7, 0);
    }

    else
    {
      *(v5 + 144) = v32 + 1;
      v33 = *(v5 + 136) + 40 * v32;
      *v33 = 154;
      *(v33 + 8) = v7;
      *(v33 + 12) = 0;
      *(v33 + 28) = 0;
      *(v33 + 20) = 0;
      *(v33 + 36) = 0;
    }

    v27 = *v5;
    if (*(*v5 + 103))
    {
      goto LABEL_58;
    }

    if (v32 < 0)
    {
      v32 = *(v5 + 144) - 1;
    }

    v28 = *(v5 + 136) + 40 * v32;
    if (*(v28 + 1))
    {
      sub_18194CB90(v5, v28, v24, 4294967284);
      return;
    }

    if (v24)
    {
      *(v28 + 16) = v24;
      v34 = -12;
      goto LABEL_68;
    }

    return;
  }

  if (a3)
  {
    if (v10 == 3)
    {
      v22 = 0x8000000000000000;
    }

    else
    {
      v22 = -v35;
    }

    v35 = v22;
  }

  v23 = sub_181929E8C(*v5, 8uLL, 2029538362);
  v24 = v23;
  if (v23)
  {
    *v23 = v35;
  }

  v25 = *(v5 + 144);
  if (*(v5 + 148) <= v25)
  {
    v25 = sub_18194C8AC(v5, 72, 0, v7, 0);
  }

  else
  {
    *(v5 + 144) = v25 + 1;
    v26 = *(v5 + 136) + 40 * v25;
    *v26 = 72;
    *(v26 + 8) = v7;
    *(v26 + 12) = 0;
    *(v26 + 28) = 0;
    *(v26 + 20) = 0;
    *(v26 + 36) = 0;
  }

  v27 = *v5;
  if (*(*v5 + 103))
  {
LABEL_58:
    if (v24)
    {
      sub_181939EC8(v27, v24);
    }

    return;
  }

  if (v25 < 0)
  {
    v25 = *(v5 + 144) - 1;
  }

  v28 = *(v5 + 136) + 40 * v25;
  if (*(v28 + 1))
  {
    sub_18194CB90(v5, v28, v24, 4294967283);
    return;
  }

  if (v24)
  {
    *(v28 + 16) = v24;
    v34 = -13;
LABEL_68:
    *(v28 + 1) = v34;
  }
}

int *sub_1818E1F5C(int *result, uint64_t a2)
{
  v2 = *(a2 + 18);
  if ((v2 & 4) == 0)
  {
    v3 = *result;
    if (!*result || (*(*a2 + 4) & 1) != 0)
    {
      v4 = *(result + 13);
      if ((*(a2 + 48) & v4) == 0)
      {
        *(a2 + 18) = v2 | 4;
        v5 = *(a2 + 24);
        if ((v5 & 0x80000000) == 0)
        {
          v6 = *(*(a2 + 8) + 32) + 56 * v5;
          v7 = *(v6 + 22) - 1;
          *(v6 + 22) = v7;
          if (!v7)
          {
            v8 = (v6 + 18);
            for (i = *(v6 + 18); (i & 4) == 0; i = *(v6 + 18))
            {
              if (v3 && (*(*v6 + 4) & 1) == 0)
              {
                break;
              }

              if ((*(v6 + 48) & v4) != 0)
              {
                break;
              }

              v10 = (i & 0x400) != 0 ? 512 : 4;
              *v8 = v10 | i;
              v11 = *(v6 + 24);
              if ((v11 & 0x80000000) != 0)
              {
                break;
              }

              v6 = *(*(v6 + 8) + 32) + 56 * v11;
              v12 = *(v6 + 22) - 1;
              *(v6 + 22) = v12;
              if (v12)
              {
                break;
              }

              v8 = (v6 + 18);
            }
          }
        }
      }
    }
  }

  return result;
}

int sqlite3_bind_int64(sqlite3_stmt *a1, int a2, sqlite3_int64 a3)
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
        sqlite3_log(21, "API called with finalized prepared statement", a3);
      }
    }

    else
    {
      sqlite3_log(21, "API called with NULL prepared statement", a3);
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
      if ((*(v7 + 20) & 0x9000) != 0)
      {
        sub_18193D288(v7, a3);
      }

      else
      {
        *v7 = a3;
        *(v7 + 20) = 4;
      }

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

uint64_t sub_1818E2114(uint64_t a1, int a2)
{
  v4 = *(a1 + 72);
  v3 = *(a1 + 80);
  v5 = *(a1 + 9);
  if ((*(v4 + 40) & 0xC) != 0)
  {
    v6 = a2;
    bzero((v3 + v5), (*(v4 + 56) - v5));
    a2 = v6;
  }

  v7 = v3 + v5;
  *(v3 + v5) = a2;
  if ((a2 & 8) != 0)
  {
    v8 = 8;
  }

  else
  {
    v8 = 12;
  }

  v9 = (v8 + v5);
  *(v7 + 1) = 0;
  *(v7 + 7) = 0;
  *(v7 + 5) = BYTE1(*(v4 + 56));
  *(v7 + 6) = *(v4 + 56);
  *(a1 + 20) = (*(v4 + 56) - v9);
  result = sub_181935454(a1, a2);
  *(a1 + 18) = v9;
  v11 = *(v4 + 52);
  *(a1 + 88) = v3 + v11;
  *(a1 + 96) = v3 + v9;
  *(a1 + 104) = v3 + *(a1 + 10);
  *(a1 + 12) = 0;
  *(a1 + 26) = v11 - 1;
  *(a1 + 24) = 0;
  *a1 = 1;
  return result;
}

uint64_t sub_1818E21FC(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, int a5)
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 64);
  v7 = bswap32(*(*(v5 + 80) + 36));
  if (v7 >= v6)
  {

    return sub_18190EDA8(85731);
  }

  if (!v7)
  {
    v12 = *(v5 + 112);
    v13 = *(v12 + 40);
    if ((*(v12 + 52) & 4) != 0 && v13[8] >= *(v12 + 48))
    {
      if (!v13[32])
      {
        goto LABEL_201;
      }

      v14 = a3;
      result = sub_1819360C0(*(v5 + 112));
    }

    else
    {
      result = v13[12];
      if (result)
      {
        return result;
      }

      v14 = a3;
      v15 = *(v5 + 112);
      if (v13[46] <= v13[50])
      {
        result = sub_1818D8DD8(v15);
      }

      else
      {
        result = sub_181936438(v15);
      }
    }

    if (result)
    {
      return result;
    }

    a3 = v14;
    v6 = *(a1 + 64);
LABEL_201:
    v93 = v6 + 1;
    *(a1 + 64) = v6 + 1;
    v94 = dword_1EA8315A8 / *(a1 + 52);
    if (v6 == v94)
    {
      v93 = v6 + 2;
      *(a1 + 64) = v6 + 2;
    }

    if (*(a1 + 33))
    {
      if (v93 >= 2)
      {
        v96 = (v93 - 2) / (*(a1 + 56) / 5u + 1) * (*(a1 + 56) / 5u + 1);
        v97 = v96 + 1 == v94 ? 3 : 2;
        v95 = v97 + v96;
      }

      else
      {
        v95 = 0;
      }

      if (v95 == v93)
      {
        v98 = a3;
        v130 = 0;
        result = (*(*a1 + 288))();
        if (result)
        {
          return result;
        }

        v99 = a2;
        v100 = v130;
        v101 = *(v130 + 16);
        if (*(v101 + 4) == v93)
        {
          v100 = *(v101 + 112);
        }

        else
        {
          v104 = *(v130 + 8);
          *(v101 + 112) = v130;
          *(v101 + 72) = a1;
          *(v101 + 80) = v104;
          *(v101 + 4) = v93;
          *(v101 + 9) = 0;
        }

        if (*(v100 + 56) >= 2)
        {
          sub_181932B18(v100);
          return sub_18190EDA8(81715);
        }

        *v101 = 0;
        v105 = sub_1818D8D88(v100);
        sub_181932B18(*(v101 + 112));
        if (v105)
        {
          return v105;
        }

        v106 = *(a1 + 64);
        v93 = v106 + 1;
        *(a1 + 64) = v106 + 1;
        a2 = v99;
        a3 = v98;
        if (v106 == dword_1EA8315A8 / *(a1 + 52))
        {
          v93 = v106 + 2;
          *(a1 + 64) = v106 + 2;
        }
      }
    }

    *(*(*(a1 + 24) + 80) + 28) = bswap32(v93);
    v107 = *(a1 + 64);
    *a3 = v107;
    v130 = 0;
    result = (*(*a1 + 288))();
    if (!result)
    {
      v108 = *(v130 + 16);
      if (*(v108 + 4) != v107)
      {
        v109 = *(v130 + 8);
        *(v108 + 112) = v130;
        *(v108 + 72) = a1;
        *(v108 + 80) = v109;
        *(v108 + 4) = v107;
        if (v107 == 1)
        {
          v110 = 100;
        }

        else
        {
          v110 = 0;
        }

        *(v108 + 9) = v110;
      }

      *a2 = v108;
      v111 = *(v108 + 112);
      if (*(v111 + 56) >= 2)
      {
        sub_181932B18(v111);
        *a2 = 0;
        return sub_18190EDA8(81715);
      }

      *v108 = 0;
      result = sub_1818D8D88(v111);
      if (!result)
      {
        return result;
      }

      if (*a2)
      {
        v112 = result;
        sub_181932B18(*(*a2 + 112));
        result = v112;
      }
    }

    *a2 = 0;
    return result;
  }

  if (a5 == 2)
  {
    v10 = 1;
  }

  else if (a5 == 1 && v6 >= a4)
  {
    v22 = a5;
    v23 = a3;
    LOBYTE(v130) = 0;
    v24 = a4;
    result = sub_181938B74(a1, a4, &v130, 0);
    v10 = v130 == 2;
    if (result)
    {
      return result;
    }

    a3 = v23;
    a5 = v22;
    LODWORD(a4) = v24;
  }

  else
  {
    v10 = 0;
  }

  v16 = *(v5 + 112);
  v17 = *(v16 + 40);
  if ((*(v16 + 52) & 4) == 0 || v17[8] < *(v16 + 48))
  {
    result = v17[12];
    if (result)
    {
      return result;
    }

    v18 = a4;
    v19 = a5;
    v20 = a3;
    v21 = *(v5 + 112);
    if (v17[46] <= v17[50])
    {
      result = sub_1818D8DD8(v21);
    }

    else
    {
      result = sub_181936438(v21);
    }

LABEL_28:
    a3 = v20;
    a5 = v19;
    LODWORD(a4) = v18;
    if (result)
    {
      return result;
    }

    goto LABEL_29;
  }

  if (v17[32])
  {
    v18 = a4;
    v19 = a5;
    v20 = a3;
    result = sub_1819360C0(*(v5 + 112));
    goto LABEL_28;
  }

LABEL_29:
  v128 = a4;
  v125 = a5;
  v126 = a3;
  v25 = 0;
  v26 = 0;
  *(*(v5 + 80) + 36) = bswap32(v7 - 1);
  while (1)
  {
    v129 = v25;
    if (v25)
    {
      v27 = *(v25 + 80);
      v28 = (*v27 << 24) | (v27[1] << 16) | (v27[2] << 8);
      v29 = v27 + 3;
    }

    else
    {
      v30 = *(v5 + 80);
      v28 = (v30[32] << 24) | (v30[33] << 16) | (v30[34] << 8);
      v29 = v30 + 35;
    }

    v31 = v28 | *v29;
    if (v31 > v6 || v26 > v7)
    {
      result = sub_18190EDA8(85787);
      goto LABEL_255;
    }

    v130 = 0;
    result = (*(*a1 + 288))();
    if (result)
    {
      goto LABEL_255;
    }

    v33 = v130;
    v25 = *(v130 + 16);
    if (*(v25 + 4) == v31)
    {
      v33 = *(v25 + 112);
    }

    else
    {
      v34 = *(v130 + 8);
      *(v25 + 112) = v130;
      *(v25 + 72) = a1;
      *(v25 + 80) = v34;
      *(v25 + 4) = v31;
      v35 = v31 == 1 ? 100 : 0;
      *(v25 + 9) = v35;
    }

    if (*(v33 + 56) >= 2)
    {
      break;
    }

    v127 = v26;
    *v25 = 0;
    v36 = *(v25 + 80);
    v37 = bswap32(v36[1]);
    if (!v10 && !v37)
    {
      v38 = *(v33 + 40);
      if ((*(v33 + 52) & 4) == 0 || v38[8] < *(v33 + 48))
      {
        result = v38[12];
        if (result)
        {
          goto LABEL_251;
        }

        if (v38[46] <= v38[50])
        {
          result = sub_1818D8DD8(v33);
          if (result)
          {
            goto LABEL_251;
          }
        }

        else
        {
          result = sub_181936438(v33);
          if (result)
          {
            goto LABEL_251;
          }
        }

        goto LABEL_77;
      }

      if (v38[32])
      {
        result = sub_1819360C0(v33);
        if (result)
        {
          goto LABEL_251;
        }

LABEL_77:
        v36 = *(v25 + 80);
      }

      v10 = 0;
      result = 0;
      *v126 = v31;
      *(*(v5 + 80) + 32) = *v36;
      *a2 = v25;
      v25 = 0;
LABEL_102:
      v53 = v127;
      goto LABEL_103;
    }

    if (v37 > (*(a1 + 56) >> 2) - 2)
    {
      v103 = 20280;
      goto LABEL_222;
    }

    if (v10)
    {
      v39 = v125 == 2;
      if (v31 >= v128)
      {
        v39 = 0;
      }

      v40 = v31 != v128 && !v39;
      if (!v40)
      {
        *v126 = v31;
        *a2 = v25;
        v41 = *(v25 + 112);
        v42 = *(v41 + 40);
        if ((*(v41 + 52) & 4) == 0 || v42[8] < *(v41 + 48))
        {
          result = v42[12];
          if (result)
          {
            goto LABEL_251;
          }

          v43 = *(v25 + 112);
          if (v42[46] <= v42[50])
          {
            result = sub_1818D8DD8(v43);
          }

          else
          {
            result = sub_181936438(v43);
          }

          goto LABEL_114;
        }

        if (v42[32])
        {
          result = sub_1819360C0(*(v25 + 112));
LABEL_114:
          if (result)
          {
            goto LABEL_251;
          }
        }

        if (v37)
        {
          v59 = *(v25 + 80);
          v60 = v59[8];
          v61 = v59[11];
          v62 = (v60 << 24) | (v59[9] << 16) | (v59[10] << 8) | v61;
          if (v62 > v6)
          {
            result = sub_18190EDA8(85850);
            goto LABEL_251;
          }

          v122 = v59[10];
          v123 = v59[9];
          v130 = 0;
          result = (*(*a1 + 288))();
          if (result)
          {
            goto LABEL_251;
          }

          v121 = v61;
          v63 = v130;
          v64 = *(v130 + 16);
          if (*(v64 + 4) == v62)
          {
            v63 = *(v64 + 112);
          }

          else
          {
            v68 = *(v130 + 8);
            *(v64 + 112) = v130;
            *(v64 + 72) = a1;
            *(v64 + 80) = v68;
            *(v64 + 4) = v62;
            if (v62 == 1)
            {
              v69 = 100;
            }

            else
            {
              v69 = 0;
            }

            *(v64 + 9) = v69;
          }

          if (*(v63 + 56) >= 2)
          {
            sub_181932B18(v63);
            v103 = 16179;
LABEL_222:
            result = sub_18190EDA8(v103 | 0x10000u);
LABEL_251:
            v115 = result;
            v116 = *(v25 + 112);
            if ((*(v116 + 52) & 0x20) != 0)
            {
              v117 = *(v116 + 40);
              --*(v117 + 152);
              *(v116 + 32) = *(v117 + 168);
              *(v117 + 168) = v116;
              (*(**(v117 + 72) + 144))(*(v117 + 72), *(v117 + 200) * (*(v116 + 48) - 1), *(v116 + 8));
            }

            else
            {
              sub_181932B68(v116);
            }

            result = v115;
            goto LABEL_255;
          }

          *v64 = 0;
          v70 = *(v63 + 40);
          if ((*(v63 + 52) & 4) != 0 && v70[8] >= *(v63 + 48))
          {
            if (v70[32])
            {
              v71 = sub_1819360C0(v63);
              goto LABEL_176;
            }
          }

          else
          {
            if (v70[12])
            {
              v114 = v70[12];
              goto LABEL_250;
            }

            if (v70[46] <= v70[50])
            {
              v71 = sub_1818D8DD8(v63);
            }

            else
            {
              v71 = sub_181936438(v63);
            }

LABEL_176:
            if (v71)
            {
              v114 = v71;
              v63 = *(v64 + 112);
LABEL_250:
              sub_181932B18(v63);
              result = v114;
              goto LABEL_251;
            }
          }

          **(v64 + 80) = **(v25 + 80);
          *(*(v64 + 80) + 4) = bswap32(v37 - 1);
          memcpy((*(v64 + 80) + 8), (*(v25 + 80) + 12), (4 * (v37 - 1)));
          sub_181932B18(*(v64 + 112));
          if (!v129)
          {
            result = 0;
            v113 = *(v5 + 80);
            v113[32] = v60;
            v113[33] = v123;
            v113[34] = v122;
            v113[35] = v121;
            return result;
          }

          result = sub_1818D8D88(*(v129 + 112));
          if (result)
          {
            goto LABEL_251;
          }

          v10 = 0;
          v25 = 0;
          v87 = *(v129 + 80);
          *v87 = v60;
          v87[1] = v123;
          v87[2] = v122;
          v87[3] = v121;
          v54 = v129;
          v53 = v127;
LABEL_104:
          v55 = a2;
          v56 = result;
          v57 = *(v54 + 112);
          if ((*(v57 + 52) & 0x20) != 0)
          {
            v58 = *(v57 + 40);
            --*(v58 + 152);
            *(v57 + 32) = *(v58 + 168);
            *(v58 + 168) = v57;
            (*(**(v58 + 72) + 144))(*(v58 + 72), *(v58 + 200) * (*(v57 + 48) - 1), *(v57 + 8));
          }

          else
          {
            sub_181932B68(v57);
          }

          result = v56;
          a2 = v55;
          goto LABEL_108;
        }

        if (!v129)
        {
          result = 0;
          *(*(v5 + 80) + 32) = **(v25 + 80);
          return result;
        }

        v65 = *(v129 + 112);
        v66 = *(v65 + 40);
        if ((*(v65 + 52) & 4) == 0 || v66[8] < *(v65 + 48))
        {
          result = v66[12];
          v53 = v127;
          if (result)
          {
            goto LABEL_251;
          }

          v67 = *(v129 + 112);
          if (v66[46] <= v66[50])
          {
            result = sub_1818D8DD8(v67);
          }

          else
          {
            result = sub_181936438(v67);
          }

          goto LABEL_187;
        }

        v53 = v127;
        if (v66[32])
        {
          result = sub_1819360C0(*(v129 + 112));
LABEL_187:
          if (result)
          {
            goto LABEL_251;
          }
        }

        result = 0;
        v10 = 0;
        **(v129 + 80) = **(v25 + 80);
        v54 = v129;
        v25 = 0;
        goto LABEL_104;
      }
    }

    if (!v37)
    {
      result = 0;
      goto LABEL_102;
    }

    v124 = a2;
    if (!v128)
    {
LABEL_81:
      LODWORD(v44) = 0;
      goto LABEL_82;
    }

    if (v125 == 2)
    {
      v44 = 0;
      v45 = 8;
      while (bswap32(*(v36 + (v45 & 0xFFFFFFFC))) > v128)
      {
        ++v44;
        v45 += 4;
        if (v37 == v44)
        {
          goto LABEL_81;
        }
      }
    }

    else
    {
      if (v37 == 1)
      {
        goto LABEL_81;
      }

      LODWORD(v44) = 0;
      v72 = bswap32(v36[2]) - v128;
      if (v72 == 0x80000000)
      {
        v73 = 0x7FFFFFFF;
      }

      else
      {
        v73 = -v72;
      }

      if (v72 < 0)
      {
        v72 = v73;
      }

      v74 = 12;
      for (i = 1; i != v37; ++i)
      {
        v76 = bswap32(*(v36 + (v74 & 0xFFFFFFFC))) - v128;
        if (v76 == 0x80000000)
        {
          v77 = 0x7FFFFFFF;
        }

        else
        {
          v77 = -v76;
        }

        if (v76 < 0)
        {
          v76 = v77;
        }

        if (v76 < v72)
        {
          LODWORD(v44) = i;
          v72 = v76;
        }

        v74 += 4;
      }
    }

LABEL_82:
    v46 = 4 * v44 + 8;
    v47 = bswap32(*(v36 + v46));
    if (v47 > v6 || v47 <= 1)
    {
      result = sub_18190EDA8(85915);
LABEL_228:
      if (!v25)
      {
        goto LABEL_255;
      }

      goto LABEL_251;
    }

    v49 = v125 != 2;
    if (v47 >= v128)
    {
      v49 = 1;
    }

    if (v47 != v128 && v49 && v10)
    {
      result = 0;
      v10 = 1;
      a2 = v124;
      goto LABEL_102;
    }

    *v126 = v47;
    v52 = *(v33 + 40);
    if ((*(v33 + 52) & 4) != 0 && v52[8] >= *(v33 + 48))
    {
      if (!v52[32])
      {
        goto LABEL_156;
      }

      result = sub_1819360C0(v33);
    }

    else
    {
      result = v52[12];
      if (result)
      {
        goto LABEL_228;
      }

      if (v52[46] <= v52[50])
      {
        result = sub_1818D8DD8(v33);
      }

      else
      {
        result = sub_181936438(v33);
      }
    }

    if (result)
    {
      goto LABEL_228;
    }

LABEL_156:
    if (v44 < v37 - 1)
    {
      *(v36 + v46) = *(v36 + (4 * v37 + 4));
    }

    v36[1] = bswap32(v37 - 1);
    v78 = *v126;
    v79 = *(a1 + 96);
    if (v79)
    {
      a2 = v124;
      v53 = v127;
      if (*v79 >= v78)
      {
        v80 = v78 - 1;
        if (v78 - 1 < *v79)
        {
          while (1)
          {
            v81 = v79[2];
            if (!v81)
            {
              break;
            }

            v82 = v80 / v81;
            v80 %= v81;
            v79 = *&v79[2 * v82 + 4];
            if (!v79)
            {
              goto LABEL_165;
            }
          }

          if (*v79 > 0xF80)
          {
            v89 = v80 % 0x7C;
            v90 = v79 + 4;
            v91 = v90[v80 % 0x7C];
            if (v91)
            {
              v92 = v80 + 1;
              do
              {
                if (v91 == v92)
                {
                  break;
                }

                if (v89 == 123)
                {
                  v89 = 0;
                }

                else
                {
                  ++v89;
                }

                v91 = v90[v89];
              }

              while (v91);
            }
          }
        }
      }
    }

    else
    {
      a2 = v124;
      v53 = v127;
    }

LABEL_165:
    v130 = 0;
    result = (*(*a1 + 288))();
    if (result)
    {
      goto LABEL_166;
    }

    v83 = *(v130 + 16);
    if (*(v83 + 4) != v78)
    {
      v84 = *(v130 + 8);
      *(v83 + 112) = v130;
      *(v83 + 72) = a1;
      *(v83 + 80) = v84;
      *(v83 + 4) = v78;
      if (v78 == 1)
      {
        v85 = 100;
      }

      else
      {
        v85 = 0;
      }

      *(v83 + 9) = v85;
    }

    *a2 = v83;
    v86 = *(v83 + 112);
    if (*(v86 + 56) < 2)
    {
      *v83 = 0;
      result = sub_1818D8D88(v86);
      if (result)
      {
        if (*a2)
        {
          v88 = result;
          sub_181932B18(*(*a2 + 112));
          result = v88;
        }

LABEL_166:
        v10 = 0;
        *a2 = 0;
        goto LABEL_103;
      }
    }

    else
    {
      sub_181932B18(v86);
      *a2 = 0;
      result = sub_18190EDA8(81715);
    }

    v10 = 0;
LABEL_103:
    v54 = v129;
    if (v129)
    {
      goto LABEL_104;
    }

LABEL_108:
    v26 = v53 + 1;
    v40 = !v10;
    v10 = 1;
    if (v40)
    {
      v129 = 0;
      if (!v25)
      {
        goto LABEL_255;
      }

      goto LABEL_251;
    }
  }

  if ((*(v33 + 52) & 0x20) != 0)
  {
    v102 = *(v33 + 40);
    --*(v102 + 152);
    *(v33 + 32) = *(v102 + 168);
    *(v102 + 168) = v33;
    (*(**(v102 + 72) + 144))(*(v102 + 72), *(v102 + 200) * (*(v33 + 48) - 1), *(v33 + 8));
  }

  else
  {
    sub_181932B68(v33);
  }

  result = sub_18190EDA8(81715);
LABEL_255:
  if (v129)
  {
    v118 = result;
    v119 = *(v129 + 112);
    if ((*(v119 + 52) & 0x20) != 0)
    {
      v120 = *(v119 + 40);
      --*(v120 + 152);
      *(v119 + 32) = *(v120 + 168);
      *(v120 + 168) = v119;
      (*(**(v120 + 72) + 144))(*(v120 + 72), *(v120 + 200) * (*(v119 + 48) - 1), *(v119 + 8));
    }

    else
    {
      sub_181932B68(v119);
    }

    return v118;
  }

  return result;
}

uint64_t sub_1818E3028(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  if (*(a1 + 17))
  {
    ++*(a1 + 20);
    if (!*(a1 + 18))
    {
      sub_181932DEC(a1);
    }
  }

  sub_1818E334C(v1, 0, 0);
  if (!*(v1 + 17))
  {
    goto LABEL_23;
  }

  v4 = *(v1 + 20) - 1;
  *(v1 + 20) = v4;
  if (!v4)
  {
    sub_181932ECC(v1);
    if (!*(v1 + 17))
    {
      goto LABEL_23;
    }
  }

  if (word_1ED452E84)
  {
    v5 = qword_1ED452F08(2);
    v6 = v5;
    if (v5)
    {
      v3.n128_f64[0] = xmmword_1ED452F18(v5);
      v7 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = 1;
LABEL_12:
  v8 = *(v2 + 104);
  *(v2 + 104) = v8 - 1;
  if (v8 <= 1)
  {
    v9 = &qword_1EA831A20;
    v10 = qword_1EA831A20;
    if (qword_1EA831A20 == v2)
    {
LABEL_17:
      *v9 = *(v2 + 112);
    }

    else
    {
      while (v10)
      {
        v11 = v10;
        v10 = *(v10 + 112);
        if (v10 == v2)
        {
          v9 = (v11 + 112);
          goto LABEL_17;
        }
      }
    }

    if (*(v2 + 88))
    {
      off_1ED452F10(v3);
    }
  }

  if ((v7 & 1) == 0)
  {
    xmmword_1ED452F28(v6);
  }

  if (v8 > 1)
  {
    goto LABEL_41;
  }

LABEL_23:
  sub_1818E35FC(*v2, *v1);
  v12 = *(v2 + 80);
  if (v12 && *(v2 + 72))
  {
    v12();
  }

  v13 = *(v2 + 72);
  if (!v13)
  {
    goto LABEL_33;
  }

  v14 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v13);
    --qword_1ED456A90;
    off_1ED452EB0(v13);
    v13 = xmmword_1ED456AF0;
    if (!xmmword_1ED456AF0)
    {
      goto LABEL_33;
    }

    v14 = &xmmword_1ED452F28;
  }

  (*v14)(v13);
LABEL_33:
  v15 = *(v2 + 136);
  if (v15)
  {
    *(v2 + 136) = v15 - 4;
    sub_181935120((v15 - 4));
    *(v2 + 136) = 0;
  }

  v16 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_40;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v2);
  --qword_1ED456A90;
  off_1ED452EB0(v2);
  v2 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v16 = &xmmword_1ED452F28;
LABEL_40:
    (*v16)(v2);
  }

LABEL_41:
  v18 = *(v1 + 32);
  v17 = *(v1 + 40);
  if (v17)
  {
    *(v17 + 32) = v18;
  }

  if (v18)
  {
    *(v18 + 40) = v17;
  }

  v19 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_50;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v1);
  --qword_1ED456A90;
  result = off_1ED452EB0(v1);
  v1 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v19 = &xmmword_1ED452F28;
LABEL_50:
    v21 = *v19;

    return v21(v1);
  }

  return result;
}

uint64_t *sub_1818E334C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (*(a1 + 17) && (++*(a1 + 20), !*(a1 + 18)))
  {
    v7 = a2;
    v8 = a3;
    sub_181932DEC(a1);
    LODWORD(a3) = v8;
    LODWORD(a2) = v7;
    if (v7)
    {
      goto LABEL_4;
    }
  }

  else if (a2)
  {
LABEL_4:
    sub_181939BFC(a1, a2, a3);
    goto LABEL_5;
  }

  v9 = *(v4 + 16);
  if (v9)
  {
    v10 = sub_18193880C(v9, 0, 0);
    if (v10)
    {
      LODWORD(a2) = v10;
      LODWORD(a3) = 0;
      goto LABEL_4;
    }
  }

LABEL_5:
  if (*(a1 + 16) == 2)
  {
    sub_1818E34C8(*v4);
    if (!(*(*v4 + 288))())
    {
      v5 = MEMORY[0x10];
      if (*(MEMORY[0x10] + 4) == 1)
      {
        v6 = *(MEMORY[0x10] + 80);
      }

      else
      {
        v6 = MEMORY[8];
        *(MEMORY[0x10] + 112) = 0;
        *(v5 + 72) = v4;
        *(v5 + 80) = v6;
        *(v5 + 4) = 1;
        *(v5 + 9) = 100;
      }

      v11 = bswap32(*(v6 + 28));
      if (!v11)
      {
        v11 = *(*v4 + 32);
      }

      *(v4 + 64) = v11;
      v12 = *(v5 + 112);
      v13 = *(v12 + 40);
      sub_181932B68(v12);
      if (!*(*(v13 + 336) + 24))
      {
        sub_181934964(v13);
      }
    }

    *(v4 + 36) = 1;
    sub_1818EFAC4(*(v4 + 96));
    *(v4 + 96) = 0;
  }

  result = sub_1818CCF18(a1);
  if (*(a1 + 17))
  {
    v15 = *(a1 + 20) - 1;
    *(a1 + 20) = v15;
    if (!v15)
    {
      return sub_181932ECC(a1);
    }
  }

  return result;
}

uint64_t sub_1818E34C8(uint64_t a1)
{
  v1 = *(a1 + 21);
  if (v1 == 6)
  {
    return *(a1 + 48);
  }

  if (v1 < 2)
  {
    return 0;
  }

  if (*(a1 + 344))
  {
    v4 = sub_18193C13C(a1, 2, -1);
    v5 = a1;
    LODWORD(result) = sub_1818CD128(a1, *(a1 + 24), 0);
    if (v4)
    {
      result = v4;
    }

    else
    {
      result = result;
    }
  }

  else
  {
    v5 = a1;
    if (v1 == 2 || **(a1 + 80) == 0)
    {
      result = sub_1818CD128(a1, 0, 0);
      if (v1 != 2 && !*(v5 + 19))
      {
        *(v5 + 48) = 4;
        *(v5 + 21) = 6;
        v7 = sub_181933ECC;
LABEL_26:
        *(v5 + 288) = v7;
        return result;
      }
    }

    else
    {
      result = sub_1818F84EC(a1, 0);
    }
  }

  if (result == 13 || result == 10)
  {
    *(v5 + 48) = result;
    *(v5 + 21) = 6;
    v7 = sub_181933ECC;
    if (!result)
    {
      if (!*(v5 + 27) || (v7 = sub_181933ED8, *(v5 + 296)))
      {
        v7 = sub_18193417C;
      }
    }

    goto LABEL_26;
  }

  return result;
}

uint64_t sub_1818E35FC(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 328);
  if (off_1EA831A10)
  {
    off_1EA831A10(a1);
  }

  v5 = *(v3 + 168);
  if (v5)
  {
    do
    {
      v7 = *(v5 + 32);
      v8 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
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
          goto LABEL_9;
        }

        v8 = &xmmword_1ED452F28;
      }

      (*v8)(v5);
LABEL_9:
      v5 = v7;
    }

    while (v7);
  }

  *(v3 + 8) = 0;
  if (!a2 || (*(a2 + 49) & 8) != 0 || !*(v3 + 16) && *(v3 + 32) && (v9 = **(v3 + 72)) != 0 && (v10 = (*(v9 + 80))(), v10 != 12) && v10)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  sub_1818E3900(*(v3 + 344), a2, *(v3 + 15), *(v3 + 200), v6);
  *(v3 + 344) = 0;
  sub_181934D80(v3);
  if (*(v3 + 19))
  {
    v11 = sub_1818CD8F0(v3);
    goto LABEL_37;
  }

  v12 = **(v3 + 80);
  if (v12)
  {
    if (!*(v3 + 11))
    {
      v13 = (*(v12 + 40))();
      if (v13)
      {
LABEL_26:
        if (v13 == 13 || v13 == 10)
        {
          *(v3 + 48) = v13;
          *(v3 + 21) = 6;
          v15 = sub_181933ECC;
          if (!v13)
          {
            if (!*(v3 + 27) || (v15 = sub_181933ED8, *(v3 + 296)))
            {
              v15 = sub_18193417C;
            }
          }

          *(v3 + 288) = v15;
        }

        goto LABEL_36;
      }

      v12 = **(v3 + 80);
    }

    v13 = (*(v12 + 48))();
    goto LABEL_26;
  }

LABEL_36:
  v11 = sub_181934964(v3);
LABEL_37:
  if (off_1EA831A18)
  {
    off_1EA831A18(v11);
  }

  v16 = *(v3 + 80);
  if (*v16)
  {
    (*(*v16 + 8))(*(v3 + 80));
    *v16 = 0;
  }

  v17 = *(v3 + 72);
  if (*v17)
  {
    (*(*v17 + 8))(*(v3 + 72));
    *v17 = 0;
  }

  sub_181935120(v4);
  (*(&xmmword_1ED452F90 + 1))(*(*(v3 + 336) + 72));
  v18 = *(v3 + 312);
  if (v18)
  {
    v18(*(v3 + 320));
  }

  v19 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    return (*v19)(v3);
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v3);
  --qword_1ED456A90;
  result = off_1ED452EB0(v3);
  v3 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v19 = &xmmword_1ED452F28;
    return (*v19)(v3);
  }

  return result;
}

uint64_t sub_1818E3900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    return 0;
  }

  v6 = a4;
  v7 = a3;
  v9 = a1;
  v10 = *(a1 + 8);
  if (*v10)
  {
    (*(*v10 + 80))(v10, 106, 0);
  }

  v11 = *(v9 + 16);
  if (*v11)
  {
    v11 = (*(*v11 + 80))(v11, 106, 0);
  }

  if (a5)
  {
    v11 = (*(**(v9 + 8) + 56))(*(v9 + 8), 4);
    if (v11)
    {
      goto LABEL_11;
    }

    if (!*(v9 + 63))
    {
      *(v9 + 63) = 1;
    }

    v11 = sub_1818EFBBC(v9, a2, 0, 0, 0, v7, v6, a5, 0, 0);
    if (v11)
    {
LABEL_11:
      v12 = v11;
      a5 = 0;
      goto LABEL_20;
    }

    v24 = -1;
    v11 = *(v9 + 8);
    if (*v11 && (v11 = (*(*v11 + 80))(v11, 10, &v24), v24 == 1))
    {
      if ((*(v9 + 32) & 0x8000000000000000) == 0)
      {
        sub_18193822C(v9, 0);
      }

      a5 = 0;
    }

    else
    {
      a5 = 1;
    }
  }

  v12 = 0;
LABEL_20:
  v13 = *(v9 + 63);
  if (v13 != 2 && !*(v9 + 70))
  {
    goto LABEL_34;
  }

  if (*(v9 + 40) < 1)
  {
    goto LABEL_33;
  }

  v14 = 0;
  do
  {
    v15 = *(*(v9 + 48) + 8 * v14);
    if (v15)
    {
      v16 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_24;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v15);
      --qword_1ED456A90;
      v11 = off_1ED452EB0(v15);
      v15 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v16 = &xmmword_1ED452F28;
LABEL_24:
        v11 = (*v16)(v15);
      }
    }

    *(*(v9 + 48) + 8 * v14++) = 0;
  }

  while (v14 < *(v9 + 40));
  v13 = *(v9 + 63);
LABEL_33:
  if (v13 != 2)
  {
LABEL_34:
    v11 = (*(**(v9 + 8) + 128))(*(v9 + 8), a5);
  }

  v17 = *(v9 + 16);
  if (*v17)
  {
    v11 = (*(*v17 + 8))(*(v9 + 16));
    *v17 = 0;
  }

  if (a5)
  {
    if (off_1EA831A10)
    {
      off_1EA831A10(v11);
    }

    v18 = *v9;
    v19 = *(*v9 + 48);
    if (v19)
    {
      v18 = v19();
    }

    if (off_1EA831A18)
    {
      off_1EA831A18(v18);
    }
  }

  v20 = *(v9 + 48);
  if (v20)
  {
    v21 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_50;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v20);
    --qword_1ED456A90;
    off_1ED452EB0(v20);
    v20 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v21 = &xmmword_1ED452F28;
LABEL_50:
      (*v21)(v20);
    }
  }

  v22 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v9);
    --qword_1ED456A90;
    off_1ED452EB0(v9);
    v9 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v22 = &xmmword_1ED452F28;
      goto LABEL_56;
    }
  }

  else
  {
LABEL_56:
    (*v22)(v9);
  }

  return v12;
}

uint64_t sub_1818E3C78(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 32);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(v1 + 40) + 8 * i);
      v48 = v4;
      if (v4)
      {
        do
        {
          v4 = *(v4 + 24);
          sub_1819A8D0C(v1, &v48);
          v48 = v4;
        }

        while (v4);
        v2 = *(v1 + 32);
      }
    }
  }

  v6 = (v1 + 144);
  v5 = *(v1 + 144);
  *(v1 + 120) = 0;
  if (v5)
  {
    v7 = (v1 + 160);
    v8 = (v1 + 176);
    do
    {
      v9 = *(v1 + 136);
      if (*(v9 + 34))
      {
        v10 = *(v1 + 124);
        if (v10 >= 1)
        {
          for (j = 0; j < v10; ++j)
          {
            v48 = *(v9[2] + 8 * j);
            if (v48)
            {
              sub_1819A8D0C(v1, &v48);
              v10 = *(v1 + 124);
            }
          }
        }
      }

      v12 = *(v9 + 32);
      if (v12 == 2)
      {
        v19 = *v9;
        if (*v9 || *v6 == v9)
        {
          v14 = v9 + 1;
          v20 = v9[1];
          if (v20)
          {
            *v20 = v19;
            v19 = *v9;
          }

          if (v19)
          {
            *(v19 + 8) = v20;
          }

          if (*(v1 + 136) == v9)
          {
            *(v1 + 136) = v19;
          }

          if (*v6 == v9)
          {
            v16 = (v1 + 144);
LABEL_47:
            *v16 = *v14;
          }

LABEL_48:
          *v9 = 0;
          v9[1] = 0;
        }
      }

      else if (v12 == 1)
      {
        v17 = *v9;
        if (*v9 || *v7 == v9)
        {
          v14 = v9 + 1;
          v18 = v9[1];
          if (v18)
          {
            *v18 = v17;
            v17 = *v9;
          }

          if (v17)
          {
            *(v17 + 8) = v18;
          }

          if (*(v1 + 152) == v9)
          {
            *(v1 + 152) = v17;
          }

          if (*v7 == v9)
          {
            v16 = (v1 + 160);
            goto LABEL_47;
          }

          goto LABEL_48;
        }
      }

      else if (!*(v9 + 32))
      {
        v13 = *v9;
        if (*v9 || *v8 == v9)
        {
          v14 = v9 + 1;
          v15 = v9[1];
          if (v15)
          {
            *v15 = v13;
            v13 = *v9;
          }

          if (v13)
          {
            *(v13 + 8) = v15;
          }

          if (*(v1 + 168) == v9)
          {
            *(v1 + 168) = v13;
          }

          if (*v8 == v9)
          {
            v16 = (v1 + 176);
            goto LABEL_47;
          }

          goto LABEL_48;
        }
      }

      --*(v1 + 132);
      v21 = v9[2];
      if (!v21)
      {
        goto LABEL_56;
      }

      v22 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_55;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v21);
      --qword_1ED456A90;
      off_1ED452EB0(v21);
      v21 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v22 = &xmmword_1ED452F28;
LABEL_55:
        (*v22)(v21);
      }

LABEL_56:
      v23 = v9[3];
      if (v23)
      {
        MEMORY[0x1865D86F0](*MEMORY[0x1E69E9A60], v23, *(v1 + 8));
      }

      v24 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v9);
        --qword_1ED456A90;
        off_1ED452EB0(v9);
        v9 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          continue;
        }

        v24 = &xmmword_1ED452F28;
      }

      (*v24)(v9);
    }

    while (*v6);
  }

  v25 = (v1 + 160);
  if (*(v1 + 160))
  {
    v26 = (v1 + 176);
    do
    {
      v27 = *(v1 + 152);
      if (*(v27 + 34))
      {
        v28 = *(v1 + 124);
        if (v28 >= 1)
        {
          for (k = 0; k < v28; ++k)
          {
            v48 = *(v27[2] + 8 * k);
            if (v48)
            {
              sub_1819A8D0C(v1, &v48);
              v28 = *(v1 + 124);
            }
          }
        }
      }

      v30 = *(v27 + 32);
      if (v30 == 2)
      {
        v37 = *v27;
        if (*v27 || *v6 == v27)
        {
          v32 = v27 + 1;
          v38 = v27[1];
          if (v38)
          {
            *v38 = v37;
            v37 = *v27;
          }

          if (v37)
          {
            *(v37 + 8) = v38;
          }

          if (*(v1 + 136) == v27)
          {
            *(v1 + 136) = v37;
          }

          if (*v6 == v27)
          {
            v34 = (v1 + 144);
LABEL_109:
            *v34 = *v32;
          }

LABEL_110:
          *v27 = 0;
          v27[1] = 0;
        }
      }

      else if (v30 == 1)
      {
        v35 = *v27;
        if (*v27 || *v25 == v27)
        {
          v32 = v27 + 1;
          v36 = v27[1];
          if (v36)
          {
            *v36 = v35;
            v35 = *v27;
          }

          if (v35)
          {
            *(v35 + 8) = v36;
          }

          if (*(v1 + 152) == v27)
          {
            *(v1 + 152) = v35;
          }

          if (*v25 == v27)
          {
            v34 = (v1 + 160);
            goto LABEL_109;
          }

          goto LABEL_110;
        }
      }

      else if (!*(v27 + 32))
      {
        v31 = *v27;
        if (*v27 || *v26 == v27)
        {
          v32 = v27 + 1;
          v33 = v27[1];
          if (v33)
          {
            *v33 = v31;
            v31 = *v27;
          }

          if (v31)
          {
            *(v31 + 8) = v33;
          }

          if (*(v1 + 168) == v27)
          {
            *(v1 + 168) = v31;
          }

          if (*v26 == v27)
          {
            v34 = (v1 + 176);
            goto LABEL_109;
          }

          goto LABEL_110;
        }
      }

      --*(v1 + 132);
      v39 = v27[2];
      if (!v39)
      {
        goto LABEL_118;
      }

      v40 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_117;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v39);
      --qword_1ED456A90;
      off_1ED452EB0(v39);
      v39 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v40 = &xmmword_1ED452F28;
LABEL_117:
        (*v40)(v39);
      }

LABEL_118:
      v41 = v27[3];
      if (v41)
      {
        MEMORY[0x1865D86F0](*MEMORY[0x1E69E9A60], v41, *(v1 + 8));
      }

      v42 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v27);
        --qword_1ED456A90;
        off_1ED452EB0(v27);
        v27 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          continue;
        }

        v42 = &xmmword_1ED452F28;
      }

      (*v42)(v27);
    }

    while (*v25);
  }

  v43 = *(v1 + 40);
  if (v43)
  {
    v44 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_137:
      (*v44)(v43);
      goto LABEL_138;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v43);
    --qword_1ED456A90;
    off_1ED452EB0(v43);
    v43 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v44 = &xmmword_1ED452F28;
      goto LABEL_137;
    }
  }

LABEL_138:
  v45 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_143:
    v47 = *v45;

    return v47(v1);
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v1);
  --qword_1ED456A90;
  result = off_1ED452EB0(v1);
  v1 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v45 = &xmmword_1ED452F28;
    goto LABEL_143;
  }

  return result;
}

const void *__cdecl sqlite3_column_blob(sqlite3_stmt *a1, int iCol)
{
  if (a1)
  {
    v5 = *(*a1 + 24);
    if (v5)
    {
      xmmword_1ED452F18(v5);
    }

    v6 = *(a1 + 20);
    if (v6 && *(a1 + 130) > iCol)
    {
      v7 = (v6 + (iCol << 6));
    }

    else
    {
      v8 = *a1;
      *(v8 + 80) = 25;
      sub_181932D5C(v8, 25);
      v7 = &qword_181A20ED0;
    }

    v9 = sqlite3_value_blob(v7);
    v10 = *a1;
    v11 = *(a1 + 13);
    if (v11 || (v12 = *(v10 + 103), *(v10 + 103)))
    {
      v12 = sub_18193C988(v10, v11);
      v10 = *a1;
    }

    *(a1 + 13) = v12;
    v13 = *(v10 + 24);
    if (v13)
    {
      xmmword_1ED452F28(v13);
    }

    return v9;
  }

  else
  {

    return sqlite3_value_blob(&qword_181A20ED0);
  }
}

int sqlite3_column_type(sqlite3_stmt *a1, int iCol)
{
  if (!a1)
  {
    return 5;
  }

  v4 = *(*a1 + 24);
  if (v4)
  {
    xmmword_1ED452F18(v4);
  }

  v5 = *(a1 + 20);
  if (v5 && *(a1 + 130) > iCol)
  {
    v6 = (v5 + (iCol << 6));
  }

  else
  {
    v7 = *a1;
    *(v7 + 80) = 25;
    sub_181932D5C(v7, 25);
    v6 = &qword_181A20ED0;
  }

  v8 = byte_181A203AA[*(v6 + 10) & 0x3F];
  v9 = *a1;
  v10 = *(a1 + 13);
  if (v10 || (v11 = *(v9 + 103), *(v9 + 103)))
  {
    v11 = sub_18193C988(v9, v10);
    v9 = *a1;
  }

  *(a1 + 13) = v11;
  v12 = *(v9 + 24);
  if (v12)
  {
    xmmword_1ED452F28(v12);
  }

  return v8;
}

char **sub_1818E450C(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a2 + 80);
  if (!v6 || (result = sub_1818E450C(a1, v6, a3)) == 0)
  {
    v8 = *(a2 + 32);
    if (*v8 <= v3)
    {
      return 0;
    }

    else
    {
      v9 = *&v8[6 * v3 + 2];

      return sub_1818B4720(a1, v9);
    }
  }

  return result;
}

void sub_1818E4598(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v13 = *(a1 + 16);
  v14 = *(a2 + 36) & 1;
  v15 = !(*(a2 + 36) & 1);
  v16 = *a2;
  v17 = *v16;
  v109 = *(a2 + 2);
  *(a2 + 12) = *(v13 + 144);
  v107 = v15 + a6 + v17;
  if (a7)
  {
    v18 = a4 - a7;
  }

  else
  {
    v19 = *(a1 + 60);
    v18 = v19 + 1;
    *(a1 + 60) = v19 + v15 + a6 + v17;
  }

  v20 = *(a3 + 12);
  if (v20)
  {
    v21 = v20 + 1;
  }

  else
  {
    v21 = *(a3 + 8);
  }

  v106 = v21;
  v22 = *(a1 + 72) - 1;
  *(a1 + 72) = v22;
  *(a2 + 7) = v22;
  if (a5)
  {
    v23 = 5;
  }

  else
  {
    v23 = 1;
  }

  sub_1819588AC(a1, v16, v18, v9, v23);
  if (!v14)
  {
    v24 = *(a2 + 3);
    v25 = v18 + v17;
    v26 = *(v13 + 144);
    if (*(v13 + 148) <= v26)
    {
      sub_18194C8AC(v13, 126, v24, v25, 0);
      if (v8 < 1)
      {
        goto LABEL_20;
      }

      goto LABEL_14;
    }

    *(v13 + 144) = v26 + 1;
    v27 = *(v13 + 136) + 40 * v26;
    *v27 = 126;
    *(v27 + 4) = v24;
    *(v27 + 8) = v25;
    *(v27 + 12) = 0;
    *(v27 + 28) = 0;
    *(v27 + 20) = 0;
    *(v27 + 36) = 0;
  }

  if (v8 < 1)
  {
    goto LABEL_20;
  }

LABEL_14:
  if (!a7)
  {
    v28 = v17 + v15 + v18;
    v29 = *(a1 + 16);
    v30 = *(v29 + 144);
    if (*(v29 + 148) <= v30)
    {
      sub_18194C8AC(v29, 79, v10, v28, v8);
    }

    else
    {
      *(v29 + 144) = v30 + 1;
      v31 = *(v29 + 136) + 40 * v30;
      *v31 = 79;
      *(v31 + 4) = v10;
      *(v31 + 8) = v28;
      *(v31 + 12) = v8;
      *(v31 + 24) = 0;
      *(v31 + 32) = 0;
      *(v31 + 16) = 0;
    }
  }

LABEL_20:
  v32 = a3;
  if (v109 < 1)
  {
    v35 = 0;
    v41 = v106;
    if (!v106)
    {
      goto LABEL_87;
    }

    goto LABEL_26;
  }

  v33 = *(a2 + 2);
  v34 = *(a1 + 16);
  v35 = *(a1 + 60) + 1;
  *(a1 + 60) = v35;
  v36 = a2[5];
  if (v36)
  {
    sub_1819588AC(a1, *(a3 + 32), *v36, 0, *(v36 + 4));
  }

  v37 = v33 + v18;
  v38 = v107 - v33;
  v39 = *(v34 + 144);
  if (*(v34 + 148) <= v39)
  {
    sub_18194C8AC(v34, 97, v37, v38, v35);
  }

  else
  {
    *(v34 + 144) = v39 + 1;
    v40 = *(v34 + 136) + 40 * v39;
    *v40 = 97;
    *(v40 + 4) = v37;
    *(v40 + 8) = v38;
    *(v40 + 12) = v35;
    *(v40 + 24) = 0;
    *(v40 + 32) = 0;
    *(v40 + 16) = 0;
  }

  v46 = *(a1 + 60);
  v47 = v46 + 1;
  v48 = *(a2 + 2);
  *(a1 + 60) = v48 + v46;
  if (v14)
  {
    v49 = *(a2 + 3);
    v50 = *(v13 + 144);
    if (*(v13 + 148) > v50)
    {
      *(v13 + 144) = v50 + 1;
      v52 = *(v13 + 136) + 40 * v50;
      *v52 = 120;
      *(v52 + 4) = v49;
      *(v52 + 8) = 0u;
      *(v52 + 24) = 0u;
      goto LABEL_49;
    }

    v62 = v13;
    v63 = 120;
  }

  else
  {
    v49 = v18 + v17;
    v50 = *(v13 + 144);
    if (*(v13 + 148) > v50)
    {
      *(v13 + 144) = v50 + 1;
      v51 = *(v13 + 136) + 40 * v50;
      *v51 = 17;
      *(v51 + 4) = v49;
      *(v51 + 8) = 0u;
      *(v51 + 24) = 0u;
      goto LABEL_49;
    }

    v62 = v13;
    v63 = 17;
  }

  v50 = sub_18194C8AC(v62, v63, v49, 0, 0);
LABEL_49:
  v64 = *(a2 + 2);
  v65 = *(v13 + 144);
  if (*(v13 + 148) <= v65)
  {
    sub_18194C8AC(v13, 90, v47, v18, v64);
  }

  else
  {
    *(v13 + 144) = v65 + 1;
    v66 = *(v13 + 136) + 40 * v65;
    *v66 = 90;
    *(v66 + 4) = v47;
    *(v66 + 8) = v18;
    *(v66 + 12) = v64;
    *(v66 + 24) = 0;
    *(v66 + 32) = 0;
    *(v66 + 16) = 0;
  }

  v67 = v47;
  if (*(*v13 + 103))
  {
    v68 = &byte_1EA831A58;
  }

  else
  {
    v68 = (*(v13 + 136) + 40 * *(a2 + 6));
  }

  if (!*(*a1 + 103))
  {
    *(v68 + 2) = v107 - v48;
    v69 = *(v68 + 2);
    bzero(*(v69 + 24), *(v69 + 6));
    if (*(*v13 + 103))
    {
      if (!*(*v13 + 824) && (*v69)-- == 1)
      {
        sub_181939EC8(*(v69 + 16), v69);
      }
    }

    else
    {
      v71 = *(v13 + 136) + 40 * *(v13 + 144);
      if (*(v71 - 39))
      {
        sub_18194CB90(v13, v71 - 40, v69, 4294967288);
      }

      else
      {
        *(v71 - 24) = v69;
        *(v71 - 39) = -8;
      }
    }

    *(v68 + 2) = sub_181965648(a1, *a2, v109, ~*(v69 + 6) + *(v69 + 8));
    v72 = *(v13 + 144);
    v73 = v72 + 1;
    if (*(v13 + 148) <= v72)
    {
      sub_18194C8AC(v13, 14, v73, 0, v72 + 1);
    }

    else
    {
      *(v13 + 144) = v73;
      v74 = *(v13 + 136) + 40 * v72;
      *v74 = 14;
      *(v74 + 4) = v73;
      *(v74 + 8) = 0;
      *(v74 + 12) = v73;
      *(v74 + 24) = 0;
      *(v74 + 32) = 0;
      *(v74 + 16) = 0;
    }

    v41 = v106;
    v75 = *(a1 + 72) - 1;
    *(a1 + 72) = v75;
    v76 = *(a1 + 60) + 1;
    *(a1 + 60) = v76;
    *(a2 + 4) = v76;
    *(a2 + 5) = v75;
    v77 = *(v13 + 144);
    if (*(v13 + 148) <= v77)
    {
      sub_18194C8AC(v13, 10, v76, v75, 0);
    }

    else
    {
      *(v13 + 144) = v77 + 1;
      v78 = *(v13 + 136) + 40 * v77;
      *v78 = 10;
      *(v78 + 4) = v76;
      *(v78 + 8) = v75;
      *(v78 + 12) = 0;
      *(v78 + 28) = 0;
      *(v78 + 20) = 0;
      *(v78 + 36) = 0;
    }

    v79 = *(a2 + 3);
    v80 = *(v13 + 144);
    if (*(v13 + 148) <= v80)
    {
      sub_18194C8AC(v13, 146, v79, 0, 0);
      if (!v106)
      {
        goto LABEL_77;
      }
    }

    else
    {
      *(v13 + 144) = v80 + 1;
      v81 = *(v13 + 136) + 40 * v80;
      *v81 = 146;
      *(v81 + 4) = v79;
      *(v81 + 8) = 0u;
      *(v81 + 24) = 0u;
      if (!v106)
      {
LABEL_77:
        if (*(*v13 + 103))
        {
          v85 = &byte_1EA831A58;
        }

        else
        {
          v85 = (*(v13 + 136) + 40 * v50);
        }

        *(v85 + 2) = *(v13 + 144);
        v86 = *(a2 + 2);
        v87 = *(a1 + 16);
        v88 = *(v87 + 144);
        if (*(v87 + 148) <= v88)
        {
          sub_18194C8AC(v87, 79, v18, v67, v86);
        }

        else
        {
          *(v87 + 144) = v88 + 1;
          v89 = *(v87 + 136) + 40 * v88;
          *v89 = 79;
          *(v89 + 4) = v18;
          *(v89 + 8) = v67;
          *(v89 + 12) = v86;
          *(v89 + 24) = 0;
          *(v89 + 32) = 0;
          *(v89 + 16) = 0;
        }

        v32 = a3;
        if (*(*v13 + 103))
        {
          v90 = &byte_1EA831A58;
        }

        else
        {
          v90 = (*(v13 + 136) + 40 * v72);
        }

        *(v90 + 2) = *(v13 + 144);
        if (!v106)
        {
LABEL_87:
          v57 = 0;
          v59 = v107;
          if (v35)
          {
            goto LABEL_93;
          }

LABEL_88:
          v91 = *(a2 + 2);
          v92 = *(a1 + 16);
          v35 = *(a1 + 60) + 1;
          *(a1 + 60) = v35;
          v93 = a2[5];
          if (v93)
          {
            sub_1819588AC(a1, *(v32 + 32), *v93, 0, *(v93 + 4));
          }

          v94 = v91 + v18;
          v95 = v59 - v91;
          v96 = *(v92 + 144);
          if (*(v92 + 148) <= v96)
          {
            sub_18194C8AC(v92, 97, v94, v95, v35);
          }

          else
          {
            *(v92 + 144) = v96 + 1;
            v97 = *(v92 + 136) + 40 * v96;
            *v97 = 97;
            *(v97 + 4) = v94;
            *(v97 + 8) = v95;
            *(v97 + 12) = v35;
            *(v97 + 24) = 0;
            *(v97 + 32) = 0;
            *(v97 + 16) = 0;
          }

LABEL_93:
          if (*(a2 + 36))
          {
            v98 = -117;
          }

          else
          {
            v98 = -118;
          }

          v99 = *(a2 + 3);
          v100 = v18 + v109;
          v101 = v59 - v109;
          v102 = *(v13 + 144);
          if (*(v13 + 148) <= v102)
          {
            sub_18194CAFC(v13, v98, v99, v35, v100, v101);
            if (!v57)
            {
LABEL_106:
              *(a2 + 13) = *(v13 + 144) - 1;
              return;
            }
          }

          else
          {
            *(v13 + 144) = v102 + 1;
            v103 = *(v13 + 136) + 40 * v102;
            *v103 = v98;
            *(v103 + 2) = 0;
            *(v103 + 4) = v99;
            *(v103 + 8) = v35;
            *(v103 + 12) = v100;
            *(v103 + 16) = v101;
            *(v103 + 1) = -3;
            *(v103 + 24) = 0;
            *(v103 + 32) = 0;
            if (!v57)
            {
              goto LABEL_106;
            }
          }

          v104 = *(a2 + 8);
          if (!v104)
          {
            v104 = *(v13 + 144);
          }

          if (*(*v13 + 103))
          {
            v105 = &byte_1EA831A58;
          }

          else
          {
            v105 = (*(v13 + 136) + 40 * v57);
          }

          *(v105 + 2) = v104;
          goto LABEL_106;
        }

LABEL_26:
        v42 = *(a2 + 3);
        v43 = *(v13 + 144);
        v44 = v43 + 4;
        if (*(v13 + 148) <= v43)
        {
          sub_18194C8AC(v13, 60, v41, v44, 0);
        }

        else
        {
          *(v13 + 144) = v43 + 1;
          v45 = *(v13 + 136) + 40 * v43;
          *v45 = 60;
          *(v45 + 4) = v41;
          *(v45 + 8) = v44;
          *(v45 + 12) = 0;
          *(v45 + 28) = 0;
          *(v45 + 20) = 0;
          *(v45 + 36) = 0;
        }

        v53 = *(v13 + 144);
        if (*(v13 + 148) <= v53)
        {
          sub_18194C8AC(v13, 32, v42, 0, 0);
        }

        else
        {
          *(v13 + 144) = v53 + 1;
          v54 = *(v13 + 136) + 40 * v53;
          *v54 = 32;
          *(v54 + 4) = v42;
          *(v54 + 8) = 0u;
          *(v54 + 24) = 0u;
        }

        v55 = v18 + v109;
        v56 = v17 - v109;
        v57 = *(v13 + 144);
        if (*(v13 + 148) <= v57)
        {
          v57 = sub_18194CAFC(v13, 40, v42, 0, v55, v56);
        }

        else
        {
          *(v13 + 144) = v57 + 1;
          v58 = *(v13 + 136) + 40 * v57;
          *v58 = 64808;
          *(v58 + 4) = v42;
          *(v58 + 8) = 0;
          *(v58 + 12) = v55;
          *(v58 + 16) = v56;
          *(v58 + 24) = 0;
          *(v58 + 32) = 0;
        }

        v59 = v107;
        v60 = *(v13 + 144);
        if (*(v13 + 148) <= v60)
        {
          sub_18194C8AC(v13, 130, v42, 0, 0);
        }

        else
        {
          *(v13 + 144) = v60 + 1;
          v61 = *(v13 + 136) + 40 * v60;
          *v61 = 130;
          *(v61 + 4) = v42;
          *(v61 + 8) = 0u;
          *(v61 + 24) = 0u;
        }

        v32 = a3;
        if (v35)
        {
          goto LABEL_93;
        }

        goto LABEL_88;
      }
    }

    v82 = *(a2 + 7);
    v83 = *(v13 + 144);
    if (*(v13 + 148) <= v83)
    {
      sub_18194C8AC(v13, 17, v106, v82, 0);
    }

    else
    {
      *(v13 + 144) = v83 + 1;
      v84 = *(v13 + 136) + 40 * v83;
      *v84 = 17;
      *(v84 + 4) = v106;
      *(v84 + 8) = v82;
      *(v84 + 12) = 0;
      *(v84 + 28) = 0;
      *(v84 + 20) = 0;
      *(v84 + 36) = 0;
    }

    goto LABEL_77;
  }
}

_DWORD *sub_1818E4EE4(int32x2_t *a1, uint64_t a2, uint64_t a3, signed int a4, unsigned __int8 *a5)
{
  v8 = a1[2];
  v9 = *(a3 + 28);
  v10 = a1[9].i32[0];
  a1[9].i32[0] = v10 - 1;
  v11 = *a5;
  v181 = *(a5 + 1);
  v182 = *(a2 + 32);
  v12 = *(a3 + 8);
  v13 = **a3 - v12;
  if (!v12 || v13 == 1)
  {
    v14 = sub_18195AD8C(a1, 0, "USE TEMP B-TREE FOR %sORDER BY");
  }

  else
  {
    v14 = sub_18195AD8C(a1, 0, "USE TEMP B-TREE FOR LAST %d TERMS OF ORDER BY");
  }

  v15 = v14;
  if ((*(*v8 + 49) & 4) != 0)
  {
    v16 = *(a3 + 48);
    v17 = *(a3 + 52);
    v18 = *(v8 + 98);
    v19 = 7 * v18;
    v20 = v18 + 1;
    while (--v20 >= 1)
    {
      v21 = v19 * 8 - 56;
      v22 = v8[50];
      v23 = v22[v19 - 7];
      v19 -= 7;
      if (v23 == v14)
      {
        if (v17 < 0)
        {
          v17 = *(v8 + 36) - 1;
        }

        if (*(v22 + v21 + 4))
        {
          if (*(v22 + v21 + 12))
          {
            if (*(v22 + v21 + 20))
            {
              break;
            }

            v24 = 2;
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v24 = 0;
        }

        v25 = &v22[v24] + v21;
        *(v25 + 1) = v16;
        *(v25 + 2) = v17;
        v16 = *(a3 + 48);
        v18 = *(v8 + 98);
        break;
      }
    }

    v26 = 7 * v18;
    v27 = v18 + 1;
    while (--v27 >= 1)
    {
      v28 = v26 * 8 - 56;
      v29 = v8[50];
      v30 = v29[v26 - 7];
      v26 -= 7;
      if (v30 == v14)
      {
        if (v14 >= 1)
        {
          *(v29 + v28 + 28) = v14;
        }

        if (v16 >= 1)
        {
          *(v29 + v28 + 32) = v16;
        }

        break;
      }
    }
  }

  v31 = *(a3 + 20);
  if (v31)
  {
    v32 = *(a3 + 16);
    v33 = *(v8 + 36);
    if (*(v8 + 37) <= v33)
    {
      sub_18194C8AC(v8, 10, v32, v31, 0);
    }

    else
    {
      *(v8 + 36) = v33 + 1;
      v34 = &v8[17][5 * v33];
      *v34 = 10;
      *(v34 + 4) = v32;
      *(v34 + 8) = v31;
      *(v34 + 12) = 0;
      *(v34 + 28) = 0;
      *(v34 + 20) = 0;
      *(v34 + 36) = 0;
    }

    v35 = *(v8 + 36);
    if (*(v8 + 37) <= v35)
    {
      sub_18194C8AC(v8, 9, 0, v9, 0);
    }

    else
    {
      *(v8 + 36) = v35 + 1;
      v36 = &v8[17][5 * v35];
      *v36 = 9;
      *(v36 + 8) = v9;
      *(v36 + 12) = 0;
      *(v36 + 28) = 0;
      *(v36 + 20) = 0;
      *(v36 + 36) = 0;
    }

    v37 = v8[3];
    v38 = ~*(a3 + 20);
    if (*(v37 + 72) + *(v37 + 76) < 0)
    {
      sub_18195CB84(v37, v8, v38);
    }

    else
    {
      *(*(v37 + 80) + 4 * v38) = *(v8 + 36);
    }
  }

  v193 = *(a3 + 12);
  if (v11 == 9 || v11 == 13)
  {
    goto LABEL_48;
  }

  if (v11 == 10)
  {
    if (*(a2 + 12))
    {
      v31 = *(a5 + 3);
      v39 = *(v8 + 36);
      if (*(v8 + 37) <= v39)
      {
        sub_18194C8AC(v8, 75, 0, v31, 0);
      }

      else
      {
        *(v8 + 36) = v39 + 1;
        v40 = &v8[17][5 * v39];
        *v40 = 75;
        *(v40 + 8) = v31;
        *(v40 + 12) = 0;
        *(v40 + 28) = 0;
        *(v40 + 20) = 0;
        *(v40 + 36) = 0;
      }
    }

LABEL_48:
    v185 = 0;
    v44 = *(a5 + 3);
    goto LABEL_49;
  }

  v41 = a1[3].i8[7];
  if (v41)
  {
    v42 = a1 + 23;
    a1[3].i8[7] = v41 - 1;
    v185 = a1[23].i32[(v41 - 1)];
    if ((v11 & 0xFFFFFFFD) == 0xC)
    {
      if (v41 != 1)
      {
        a4 = 0;
        v43 = v41 - 2;
        a1[3].i8[7] = v43;
        v44 = v42->i32[v43];
LABEL_49:
        v192 = v44;
        goto LABEL_50;
      }

      goto LABEL_46;
    }

    if (a4 == 1)
    {
      if (v41 != 1)
      {
        v110 = v41 - 2;
        a1[3].i8[7] = v110;
        v192 = v42->i32[v110];
LABEL_221:
        a4 = 1;
        goto LABEL_50;
      }

LABEL_220:
      v192 = a1[7].i32[1] + 1;
      a1[7].i32[1] = v192;
      goto LABEL_221;
    }

    v175 = a4;
  }

  else
  {
    v185 = a1[7].i32[1] + 1;
    a1[7].i32[1] = v185;
    if ((v11 & 0xFFFFFFFD) == 0xC)
    {
LABEL_46:
      a4 = 0;
      v45 = a1[7].i32[1] + 1;
      v192 = v45;
      goto LABEL_229;
    }

    v175 = a4;
    if (a4 == 1)
    {
      goto LABEL_220;
    }
  }

  v176 = a1[5].i32[1];
  v177 = __OFSUB__(v176, v175);
  v178 = v176 - v175;
  if (v178 < 0 == v177)
  {
    v192 = a1[6].i32[0];
    a1[5].i32[1] = v178;
    a1[6].i32[0] = v192 + v175;
    goto LABEL_50;
  }

  v179 = a1[7].i32[1];
  v192 = v179 + 1;
  v45 = v179 + v175;
LABEL_229:
  a1[7].i32[1] = v45;
LABEL_50:
  v189 = v9;
  v188 = v10;
  v187 = a1;
  v186 = v11;
  if (*(a3 + 36))
  {
    v49 = a1[7];
    v50 = vadd_s32(v49, 0x100000001);
    a1[7] = v50;
    v183 = v49;
    v180 = v50;
    if (*(a3 + 20))
    {
      v51 = *(v8 + 36);
      v52 = a4;
      if (*(v8 + 37) <= v51)
      {
        v57 = sub_18194C8AC(v8, 15, 0, 0, 0);
        v50.i32[1] = v180.i32[1];
        v49.i32[0] = v183.i32[0];
        v51 = v57;
      }

      else
      {
        *(v8 + 36) = v51 + 1;
        v53 = &v8[17][5 * v51];
        *v53 = 15;
        *(v53 + 1) = 0u;
        *(v53 + 17) = 0u;
        *(v53 + 32) = 0;
      }
    }

    else
    {
      v51 = 0;
      v52 = a4;
    }

    v58 = v13 + v52 + 1;
    v59 = *(v8 + 36);
    if (*(v8 + 37) <= v59)
    {
      sub_18194C8AC(v8, 121, v49.i32[0], v50.i32[1], v58);
      v61 = *(v8 + 36);
      if (!v51)
      {
LABEL_74:
        if (*(v8 + 37) <= v61)
        {
          v61 = sub_18194C8AC(v8, 34, v193, v9, 0);
        }

        else
        {
          *(v8 + 36) = v61 + 1;
          v66 = &v8[17][5 * v61];
          *v66 = 34;
          *(v66 + 4) = v193;
          *(v66 + 8) = v9;
          *(v66 + 12) = 0;
          *(v66 + 28) = 0;
          *(v66 + 20) = 0;
          *(v66 + 36) = 0;
        }

        v191 = v61;
        v67 = *(v8 + 36);
        if (*(v8 + 37) <= v67)
        {
          v70 = v183.i32[0];
          sub_18194C8AC(v8, 133, v193, v180.i32[1], v183.i32[0]);
          v68 = 0;
        }

        else
        {
          v68 = 0;
          v69 = &v8[17][5 * v67];
          *(v8 + 36) = v67 + 1;
          v69->i32[0] = 133;
          v69->i32[1] = v193;
          v69[1] = vext_s8(v180, v183, 4uLL);
          v70 = v183.i32[0];
          v69[3] = 0;
          v69[4] = 0;
          v69[2] = 0;
        }

        goto LABEL_82;
      }
    }

    else
    {
      *(v8 + 36) = v59 + 1;
      v60 = &v8[17][5 * v59];
      *v60 = 121;
      *(v60 + 4) = __PAIR64__(v50.u32[1], v49.u32[0]);
      *(v60 + 12) = v58;
      *(v60 + 24) = 0;
      *(v60 + 32) = 0;
      *(v60 + 16) = 0;
      v61 = *(v8 + 36);
      if (!v51)
      {
        goto LABEL_74;
      }
    }

    if (*(*v8 + 103))
    {
      v62 = &byte_1EA831A58;
    }

    else
    {
      v62 = &v8[17][5 * v51];
    }

    *(v62 + 2) = v61;
    goto LABEL_74;
  }

  v46 = *(v8 + 36);
  if (*(v8 + 37) <= v46)
  {
    v48 = sub_18194C8AC(v8, 35, v193, v9, 0);
  }

  else
  {
    *(v8 + 36) = v46 + 1;
    v47 = &v8[17][5 * v46];
    *v47 = 35;
    *(v47 + 4) = v193;
    *(v47 + 8) = v9;
    *(v47 + 12) = 0;
    *(v47 + 28) = 0;
    *(v47 + 20) = 0;
    *(v47 + 36) = 0;
    v48 = v46;
  }

  v54 = *(a2 + 12);
  v191 = v48;
  if (v54 >= 1)
  {
    v55 = *(v8 + 36);
    if (*(v8 + 37) <= v55)
    {
      sub_18194C8AC(v8, 50, v54, v10 - 1, 1);
    }

    else
    {
      *(v8 + 36) = v55 + 1;
      v56 = &v8[17][5 * v55];
      *v56 = 50;
      *(v56 + 4) = v54;
      *(v56 + 8) = v10 - 1;
      *(v56 + 12) = 1;
      *(v56 + 24) = 0;
      *(v56 + 32) = 0;
      *(v56 + 16) = 0;
    }

    if (*(a2 + 12) >= 1)
    {
      v63 = *(a2 + 8);
      v64 = *(v8 + 36);
      if (*(v8 + 37) <= v64)
      {
        sub_18194C8AC(v8, 86, v63, -1, 0);
      }

      else
      {
        *(v8 + 36) = v64 + 1;
        v65 = &v8[17][5 * v64];
        *v65 = 86;
        *(v65 + 4) = v63;
        *(v65 + 8) = -1;
        *(v65 + 12) = 0;
        *(v65 + 28) = 0;
        *(v65 + 20) = 0;
        *(v65 + 36) = 0;
      }
    }
  }

  v68 = 1;
  v70 = v193;
  v52 = a4;
LABEL_82:
  v184 = v68 + v13;
  if (v52 < 1)
  {
    goto LABEL_106;
  }

  v71 = v184 - 1;
  v72 = a4;
  if (a4 < 4)
  {
    v73 = 0;
    v74 = v182;
    goto LABEL_94;
  }

  v74 = v182;
  if (a4 >= 0x10)
  {
    v73 = a4 & 0x7FFFFFF0;
    v75 = (v184 - 1);
    v76 = 0uLL;
    v77 = (v182 + 196);
    v78.i64[0] = 0x100000001;
    v78.i64[1] = 0x100000001;
    v79 = v73;
    v80 = 0uLL;
    v81 = 0uLL;
    do
    {
      v82.i16[0] = *(v77 - 84);
      v82.i16[1] = *(v77 - 72);
      v82.i16[2] = *(v77 - 60);
      v82.i16[3] = *(v77 - 48);
      v82.i16[4] = *(v77 - 36);
      v82.i16[5] = *(v77 - 24);
      v82.i16[6] = *(v77 - 12);
      v82.i16[7] = *v77;
      v83.i16[0] = v77[12];
      v83.i16[1] = v77[24];
      v83.i16[2] = v77[36];
      v83.i16[3] = v77[48];
      v83.i16[4] = v77[60];
      v83.i16[5] = v77[72];
      v83.i16[6] = v77[84];
      v83.i16[7] = v77[96];
      v84 = vceqzq_s16(v82);
      v85 = vceqzq_s16(v83);
      v76 = vaddq_s32(v76, vandq_s8(vmovl_high_u16(v84), v78));
      v75 = vaddq_s32(v75, vandq_s8(vmovl_u16(*v84.i8), v78));
      v81 = vaddq_s32(v81, vandq_s8(vmovl_high_u16(v85), v78));
      v80 = vaddq_s32(v80, vandq_s8(vmovl_u16(*v85.i8), v78));
      v77 += 192;
      v79 -= 16;
    }

    while (v79);
    v71 = vaddvq_s32(vaddq_s32(vaddq_s32(v80, v75), vaddq_s32(v81, v76)));
    if (v73 == a4)
    {
      goto LABEL_98;
    }

    if ((a4 & 0xC) == 0)
    {
      goto LABEL_94;
    }
  }

  else
  {
    v73 = 0;
  }

  v86 = v73;
  v87 = v71;
  v73 = a4 & 0x7FFFFFFC;
  v88 = v86 - v73;
  v89 = (v182 + 24 * v86 + 52);
  v90.i64[0] = 0x100000001;
  v90.i64[1] = 0x100000001;
  do
  {
    v91.i16[0] = *(v89 - 12);
    v91.i16[1] = *v89;
    v91.i16[2] = v89[12];
    v91.i16[3] = v89[24];
    v87 = vaddq_s32(v87, vandq_s8(vmovl_u16(vceqz_s16(v91)), v90));
    v89 += 48;
    v88 += 4;
  }

  while (v88);
  v71 = vaddvq_s32(v87);
  if (v73 != a4)
  {
LABEL_94:
    v92 = (v74 + 24 * v73 + 28);
    v93 = a4 - v73;
    do
    {
      v94 = *v92;
      v92 += 12;
      if (!v94)
      {
        ++v71;
      }

      --v93;
    }

    while (v93);
  }

LABEL_98:
  v95 = (v74 + 24 * a4 + 4);
  v96 = v192 - 1;
  do
  {
    v98 = *v95;
    v95 -= 12;
    v99 = v98 - 1;
    v100 = v98 == 0;
    if (v98)
    {
      v31 = v99;
    }

    else
    {
      v31 = v71;
    }

    v101 = *(v8 + 36);
    if (*(v8 + 37) > v101)
    {
      *(v8 + 36) = v101 + 1;
      v97 = &v8[17][5 * v101];
      *v97 = 94;
      *(v97 + 4) = v70;
      *(v97 + 8) = v31;
      *(v97 + 12) = v96 + v72;
      *(v97 + 24) = 0;
      *(v97 + 32) = 0;
      *(v97 + 16) = 0;
    }

    else
    {
      sub_18194C8AC(v8, 94, v70, v31, v96 + v72);
    }

    --v72;
    v71 -= v100;
  }

  while ((v72 + 1) > 1);
LABEL_106:
  if ((*(*v8 + 49) & 4) != 0)
  {
    v102 = *(v8 + 98);
    v103 = 7 * v102;
    v104 = v102 + 1;
    while (--v104 >= 1)
    {
      v105 = v103 * 8 - 56;
      v106 = v8[50];
      v107 = v106[v103 - 7];
      v103 -= 7;
      if (v107 == v15)
      {
        v108 = *(v8 + 36);
        if (*(v106 + v105 + 4))
        {
          if (*(v106 + v105 + 12))
          {
            if (*(v106 + v105 + 20))
            {
              break;
            }

            v109 = 2;
          }

          else
          {
            v109 = 1;
          }
        }

        else
        {
          v109 = 0;
        }

        v111 = &v106[v109] + v105;
        *(v111 + 1) = v15;
        *(v111 + 2) = v108 - 1;
        break;
      }
    }
  }

  if (v186 > 11)
  {
    v112 = v189;
    v113 = v191;
    switch(v186)
    {
      case 12:
        goto LABEL_129;
      case 15:
        v129 = *(a5 + 2);
        if (v187[3].i8[7])
        {
          v130 = v187[3].i8[7] - 1;
          v187[3].i8[7] = v130;
          v131 = v187[23].i32[v130];
        }

        else
        {
          v131 = v187[7].i32[1] + 1;
          v187[7].i32[1] = v131;
        }

        v144 = (v129 >> 31) + v192;
        v145 = a4 - (v129 >> 31);
        v146 = *(v8 + 36);
        if (*(v8 + 37) <= v146)
        {
          sub_18194C8AC(v8, 97, v144, v145, v131);
        }

        else
        {
          *(v8 + 36) = v146 + 1;
          v147 = &v8[17][5 * v146];
          *v147 = 97;
          *(v147 + 4) = v144;
          *(v147 + 8) = v145;
          *(v147 + 12) = v131;
          *(v147 + 24) = 0;
          *(v147 + 32) = 0;
          *(v147 + 16) = 0;
        }

        v148 = *(v8 + 37);
        v149 = *(v8 + 36);
        if ((v129 & 0x80000000) == 0)
        {
          if (v148 > v149)
          {
            *(v8 + 36) = v149 + 1;
            v138 = &v8[17][5 * v149];
            *v138 = 64906;
            *(v138 + 4) = v181;
            *(v138 + 8) = v131;
            *(v138 + 12) = v192;
            *(v138 + 16) = v129;
            goto LABEL_173;
          }

          v139 = v8;
          v140 = v181;
          v141 = v131;
          v142 = v192;
          v143 = v129;
LABEL_223:
          sub_18194CAFC(v139, 138, v140, v141, v142, v143);
          v113 = v191;
          if (!v185)
          {
            goto LABEL_185;
          }

          goto LABEL_176;
        }

        if (v148 > v149)
        {
          *(v8 + 36) = v149 + 1;
          v138 = &v8[17][5 * v149];
          *v138 = 128;
          *(v138 + 4) = v181;
          *(v138 + 8) = v131;
          *(v138 + 12) = v192;
          *(v138 + 32) = 0;
          *(v138 + 16) = 0;
          goto LABEL_174;
        }

        v132 = v8;
        v133 = 0x80;
        v119 = v181;
        v134 = v131;
        v135 = v192;
LABEL_152:
        sub_18194C8AC(v132, v133, v119, v134, v135);
        v113 = v191;
        if (!v185)
        {
          goto LABEL_185;
        }

        goto LABEL_176;
      case 14:
LABEL_129:
        v117 = *(v8 + 36);
        if (*(v8 + 37) <= v117)
        {
          sub_18194C8AC(v8, 94, v70, v184, v192);
        }

        else
        {
          *(v8 + 36) = v117 + 1;
          v118 = &v8[17][5 * v117];
          *v118 = 94;
          *(v118 + 4) = v70;
          *(v118 + 8) = v184;
          *(v118 + 12) = v192;
          *(v118 + 24) = 0;
          *(v118 + 32) = 0;
          *(v118 + 16) = 0;
        }

        v124 = *(v8 + 36);
        if (*(v8 + 37) <= v124)
        {
          sub_18194C8AC(v8, 127, v181, v185, 0);
        }

        else
        {
          *(v8 + 36) = v124 + 1;
          v125 = &v8[17][5 * v124];
          *v125 = 127;
          *(v125 + 4) = v181;
          *(v125 + 8) = v185;
          *(v125 + 12) = 0;
          *(v125 + 28) = 0;
          *(v125 + 20) = 0;
          *(v125 + 36) = 0;
        }

        v126 = *(v8 + 36);
        if (*(v8 + 37) <= v126)
        {
          sub_18194C8AC(v8, 128, v181, v192, v185);
        }

        else
        {
          *(v8 + 36) = v126 + 1;
          v127 = &v8[17][5 * v126];
          *v127 = 128;
          *(v127 + 4) = v181;
          *(v127 + 8) = v192;
          *(v127 + 12) = v185;
          *(v127 + 24) = 0;
          *(v127 + 32) = 0;
          *(v127 + 16) = 0;
        }

        v113 = v191;
        v128 = *(v8 + 36);
        if (v128 >= 1)
        {
          *(&v8[17][5 * v128 - 4] - 3) = 8;
          if (!v185)
          {
            goto LABEL_185;
          }

          goto LABEL_176;
        }

        goto LABEL_175;
    }

    goto LABEL_134;
  }

  v112 = v189;
  v113 = v191;
  if (v186 == 9)
  {
    v119 = *(a5 + 3);
    v120 = *(v8 + 36);
    if (*(v8 + 37) > v120)
    {
      *(v8 + 36) = v120 + 1;
      v121 = &v8[17][5 * v120];
      *v121 = 84;
      *(v121 + 4) = v119;
      *(v121 + 8) = a4;
      *(v121 + 12) = 0;
      *(v121 + 28) = 0;
      *(v121 + 20) = 0;
      *(v121 + 36) = 0;
      if (!v185)
      {
        goto LABEL_185;
      }

      goto LABEL_176;
    }

    v132 = v8;
    v133 = 84;
    v134 = a4;
    goto LABEL_151;
  }

  if (v186 == 10)
  {
    goto LABEL_175;
  }

  if (v186 != 11)
  {
LABEL_134:
    v119 = *(a5 + 1);
    v122 = *(v8 + 36);
    if (*(v8 + 37) > v122)
    {
      *(v8 + 36) = v122 + 1;
      v123 = &v8[17][5 * v122];
      *v123 = 12;
      *(v123 + 4) = v119;
      *(v123 + 8) = 0u;
      *(v123 + 24) = 0u;
      if (!v185)
      {
        goto LABEL_185;
      }

      goto LABEL_176;
    }

    v132 = v8;
    v133 = 12;
    v134 = 0;
LABEL_151:
    v135 = 0;
    goto LABEL_152;
  }

  v114 = *(a5 + 3);
  v115 = *(v8 + 36);
  if (*(v8 + 37) <= v115)
  {
    v115 = sub_18194C8AC(v8, 97, v192, a4, v185);
  }

  else
  {
    *(v8 + 36) = v115 + 1;
    v116 = &v8[17][5 * v115];
    *v116 = 97;
    *(v116 + 4) = v192;
    *(v116 + 8) = a4;
    *(v116 + 12) = v185;
    *(v116 + 24) = 0;
    *(v116 + 32) = 0;
    *(v116 + 16) = 0;
  }

  if (*(*v8 + 103))
  {
    if (a4 != -11)
    {
      sub_1818A3B68(*v8, a4, v114, v31);
    }
  }

  else
  {
    if (v115 < 0)
    {
      v115 = *(v8 + 36) - 1;
    }

    v136 = &v8[17][5 * v115];
    if (a4 < 0 && !*(v136 + 1))
    {
      if (a4 == -3)
      {
        *(v136 + 16) = v114;
        *(v136 + 1) = -3;
      }

      else if (v114)
      {
        *(v136 + 16) = v114;
        *(v136 + 1) = a4;
        if (a4 == -11)
        {
          ++*(v114 + 24);
        }
      }
    }

    else
    {
      sub_18194CB90(v8, v136, v114, a4);
    }
  }

  v137 = *(v8 + 36);
  if (*(v8 + 37) <= v137)
  {
    v139 = v8;
    v140 = v181;
    v141 = v185;
    v142 = v192;
    v143 = a4;
    goto LABEL_223;
  }

  *(v8 + 36) = v137 + 1;
  v138 = &v8[17][5 * v137];
  *v138 = 64906;
  *(v138 + 4) = v181;
  *(v138 + 8) = v185;
  *(v138 + 12) = v192;
  *(v138 + 16) = a4;
LABEL_173:
  *(v138 + 32) = 0;
LABEL_174:
  *(v138 + 24) = 0;
  v113 = v191;
LABEL_175:
  if (!v185)
  {
    goto LABEL_185;
  }

LABEL_176:
  if (v186 == 11 && a4 != 1)
  {
    if (v187[5].i32[1] < a4)
    {
      v187[5].i32[1] = a4;
      v187[6].i32[0] = v192;
    }
  }

  else if (v192)
  {
    v150 = v187[3].u8[7];
    if (v150 <= 7)
    {
      v187[3].i8[7] = v150 + 1;
      v187[23].i32[v150] = v192;
    }
  }

  v151 = v187[3].u8[7];
  if (v151 <= 7)
  {
    v187[3].i8[7] = v151 + 1;
    v187[23].i32[v151] = v185;
  }

LABEL_185:
  v152 = v113 + 1;
  v153 = v8[3];
  v154 = -v188;
  if (*(v153 + 72) + *(v153 + 76) < 0)
  {
    sub_18195CB84(v153, v8, v154);
  }

  else
  {
    *(*(v153 + 80) + 4 * v154) = *(v8 + 36);
  }

  v155 = *(v8 + 37);
  v156 = *(v8 + 36);
  if (*(a3 + 36))
  {
    if (v155 > v156)
    {
      *(v8 + 36) = v156 + 1;
      v157 = &v8[17][5 * v156];
      v158 = 37;
      goto LABEL_193;
    }

    v159 = v8;
    v160 = 37;
  }

  else
  {
    if (v155 > v156)
    {
      *(v8 + 36) = v156 + 1;
      v157 = &v8[17][5 * v156];
      v158 = 39;
LABEL_193:
      *v157 = v158;
      *(v157 + 4) = v193;
      *(v157 + 8) = v152;
      *(v157 + 12) = 0;
      *(v157 + 28) = 0;
      *(v157 + 20) = 0;
      *(v157 + 36) = 0;
      goto LABEL_197;
    }

    v159 = v8;
    v160 = 39;
  }

  sub_18194C8AC(v159, v160, v193, v152, 0);
LABEL_197:
  if ((*(*v8 + 49) & 4) != 0)
  {
    v161 = *(v8 + 36) - 1;
    v162 = *(v8 + 98);
    v163 = 7 * v162;
    v164 = v162 + 1;
    while (--v164 >= 1)
    {
      v165 = v163 * 8 - 56;
      v166 = v8[50];
      v167 = v166[v163 - 7];
      v163 -= 7;
      if (v167 == v15)
      {
        if (*(v166 + v165 + 4))
        {
          if (*(v166 + v165 + 12))
          {
            if (*(v166 + v165 + 20))
            {
              break;
            }

            v168 = 2;
          }

          else
          {
            v168 = 1;
          }
        }

        else
        {
          v168 = 0;
        }

        v169 = &v166[v168] + v165;
        *(v169 + 1) = v161;
        *(v169 + 2) = v161;
        break;
      }
    }
  }

  v170 = *(a3 + 16);
  if (v170)
  {
    v171 = *(v8 + 36);
    if (*(v8 + 37) <= v171)
    {
      sub_18194C8AC(v8, 67, v170, 0, 0);
    }

    else
    {
      *(v8 + 36) = v171 + 1;
      v172 = &v8[17][5 * v171];
      *v172 = 67;
      *(v172 + 4) = v170;
      *(v172 + 8) = 0u;
      *(v172 + 24) = 0u;
    }
  }

  result = v8[3];
  v174 = ~v112;
  if (result[18] + result[19] < 0)
  {

    return sub_18195CB84(result, v8, v174);
  }

  else
  {
    *(*(result + 10) + 4 * v174) = *(v8 + 36);
  }

  return result;
}