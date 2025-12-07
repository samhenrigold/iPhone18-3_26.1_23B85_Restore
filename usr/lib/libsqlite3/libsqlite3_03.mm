uint64_t sub_1818AEE70(void *a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (!a1[2])
  {
    return 0;
  }

  v3 = a2;
  while (1)
  {
    v4 = (a1[2])(a1, v3);
    if (v4)
    {
      return v4 & 2;
    }

    if (sub_1818B1410(a1, v3))
    {
      return 2;
    }

    v5 = v3[5];
    if (v5 && *v5 >= 1)
    {
      v6 = v5 + 12;
      v7 = *v5 + 1;
      do
      {
        v8 = *(v6 - 15);
        if ((v8 & 4) != 0)
        {
          if (sub_1818AEE70(a1, **(v6 + 3)))
          {
            return 2;
          }

          v8 = *(v6 - 15);
        }

        if ((v8 & 8) != 0 && sub_181959CE8(a1, *v6))
        {
          return 2;
        }

        v6 += 18;
      }

      while (--v7 > 1);
    }

    v9 = a1[3];
    if (v9)
    {
      v9(a1, v3);
    }

    v3 = v3[10];
    if (!v3)
    {
      return 0;
    }
  }
}

uint64_t sub_1818AEF70(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(a2 + 4);
  *(a2 + 4) = v4 | 0x40;
  if (*(v3 + 103))
  {
    return 2;
  }

  if ((v4 & 0x40) != 0)
  {
    return 1;
  }

  if (*(a1 + 36))
  {
    v7 = *(v2 + 31) + 1;
    *(v2 + 31) = v7;
    *(a2 + 16) = v7;
  }

  v371 = *(a2 + 40);
  v348 = *(a2 + 32);
  v8 = *(a2 + 104);
  if (v2[50])
  {
    v9 = (v4 & 0x200000) == 0;
  }

  else
  {
    v9 = 1;
  }

  v374 = v4;
  if (v9)
  {
    if (v8 && !*(v2 + 13))
    {
LABEL_147:
      v8[1] = v2[50];
      v2[50] = v8;
    }
  }

  else
  {
    if (!v8)
    {
      v8 = sub_181929E8C(v3, 0x40uLL, 0x1070040AB0F4D3FLL);
      if (!v8)
      {
        *(a2 + 104) = 0;
        return 2;
      }

      *(v8 + 2) = 0u;
      *(v8 + 3) = 0u;
      *v8 = 0u;
      *(v8 + 1) = 0u;
      *(a2 + 104) = v8;
    }

    *(v8 + 1) = 1;
    if (!*(v2 + 13))
    {
      goto LABEL_147;
    }
  }

  v389 = v2;
  sub_1818EC1FC(v2, v371);
  v384 = v3;
  if (*v371 >= 1)
  {
    v10 = 0;
    v11 = (v371 + 2);
    while (1)
    {
      if (*(v11 + 16))
      {
        goto LABEL_16;
      }

      v12 = *v11;
      if (!*v11)
      {
        if (sub_1818AEE70(a1, **(v11 + 64)))
        {
          return 2;
        }

        v15 = **(v11 + 64);
        if (*v389)
        {
          v16 = sub_181929E8C(*v389, 0x78uLL, 0x10B2040A26A9E65);
          if (!v16)
          {
            goto LABEL_389;
          }
        }

        else
        {
          v16 = sub_181902484(120, 0x10B2040A26A9E65);
          if (!v16)
          {
LABEL_389:
            *(v11 + 16) = 0;
            return 2;
          }
        }

        *(v16 + 112) = 0;
        *(v16 + 80) = 0u;
        *(v16 + 96) = 0u;
        *(v16 + 48) = 0u;
        *(v16 + 64) = 0u;
        *(v16 + 16) = 0u;
        *(v16 + 32) = 0u;
        *v16 = 0u;
        *(v11 + 16) = v16;
        *(v16 + 44) = 1;
        v28 = *(v11 + 8);
        v29 = *v389;
        if (v28)
        {
          v30 = strlen(*(v11 + 8));
          v31 = v30;
          if (v29)
          {
            v32 = sub_181929E8C(v29, v30 + 1, 354097263);
            if (!v32)
            {
              goto LABEL_79;
            }

LABEL_78:
            memcpy(v32, v28, v31 + 1);
          }

          else
          {
            v32 = sub_181902484(v30 + 1, 354097263);
            if (v32)
            {
              goto LABEL_78;
            }
          }
        }

        else
        {
          v32 = sub_1818A8BAC(v29, "%!S", v11);
        }

LABEL_79:
        *v16 = v32;
        do
        {
          v40 = v15;
          v15 = *(v15 + 80);
        }

        while (v15);
        sub_1819605E4(v389, *(v40 + 32), (v16 + 54), (v16 + 8));
        *(v16 + 52) = -1;
        result = 2;
        *(v16 + 63) = 2;
        *(v16 + 58) = 200;
        *(v16 + 48) |= 0x4200u;
        v3 = v384;
        if (*(v389 + 13))
        {
          return result;
        }

LABEL_82:
        if ((*(v11 + 25) & 2) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_83;
      }

      v13 = v389[50];
      if (v13 && !*(v389 + 13) && ((*(v11 + 27) & 1) != 0 || !*(v11 + 64)))
      {
        v23 = *(v11 + 25);
        if ((v23 & 0x400) == 0)
        {
          while (1)
          {
            v24 = *v13;
            if (v24 >= 1)
            {
              break;
            }

LABEL_43:
            if (!v13[1])
            {
              v13 = *(v13 + 1);
              if (v13)
              {
                continue;
              }
            }

            goto LABEL_21;
          }

          v25 = 0;
LABEL_36:
          v26 = 0;
          v27 = &v13[12 * v25 + 4];
          while (1)
          {
            if (v12[v26] == *(*v27 + v26))
            {
              if (!v12[v26])
              {
                v44 = *(v27 + 24);
                if (v44)
                {
                  v346 = *v27;
                  goto LABEL_653;
                }

                if ((v23 & 8) == 0)
                {
                  v45 = *v389;
                  v46 = sub_18190C56C(*v389, 0x78uLL, 0x10B2040A26A9E65);
                  if (!v46)
                  {
                    return 2;
                  }

                  v47 = v46;
                  v48 = *(v27 + 32);
                  v385 = v27;
                  if (!v48)
                  {
                    v49 = sub_18190C56C(v45, 0x14uLL, 0x1000040CC583DEELL);
                    *(v27 + 32) = v49;
                    if (!v49 || (v48 = v49, !sub_18195B158(v389, sub_1818BB760, v49)))
                    {
                      sub_181929C84(v45, v47);
                      return 2;
                    }

                    v48[18] = *(v27 + 40);
                  }

                  *(v11 + 16) = v47;
                  v47[11] = 1;
                  *v47 = sub_1818C9A34(v45, *v27);
                  *(v47 + 26) = -1;
                  *(v47 + 29) = 200;
                  v47[12] |= 0x4200u;
                  sub_181960508(v389, v11, *(v27 + 16), 1);
                  if (*(v45 + 103))
                  {
                    return 2;
                  }

                  v50 = **(v11 + 64);
                  *(v50 + 1) |= 0x4000000u;
                  v51 = *(v11 + 25);
                  if ((v51 & 2) != 0)
                  {
                    v346 = *(v11 + 40);
                    v44 = "no such index: %s";
                    goto LABEL_653;
                  }

                  *(v11 + 25) = v51 | 0x200;
                  *(v11 + 48) = v48;
                  ++*v48;
                  v52 = *v50 - 135;
                  v53 = v50;
                  if (v52 > 1)
                  {
                    goto LABEL_122;
                  }

                  v54 = -1;
                  v53 = v50;
LABEL_103:
                  v55 = *(v53 + 5);
                  v56 = *v55;
                  if (*v55 < 1)
                  {
                    goto LABEL_120;
                  }

                  v57 = 0;
LABEL_107:
                  v58 = &v55[18 * v57 + 2];
                  v59 = *v58;
                  if (!*v58 || (*(v58 + 27) & 2) != 0 || (*(v58 + 25) & 4) != 0 || (*(v58 + 27) & 1) == 0 && *(v58 + 64))
                  {
                    goto LABEL_106;
                  }

                  for (i = *v27; ; ++i)
                  {
                    if (*v59 == *i)
                    {
                      if (!*v59)
                      {
                        *(v58 + 16) = v47;
                        ++v47[11];
                        *(v58 + 25) |= 0x80u;
                        v61 = *(v53 + 1);
                        if ((v61 & 0x2000) == 0)
                        {
                          *(v53 + 1) = v61 | 0x2000;
                          if (v54 < 0)
                          {
                            v54 = *(v389 + 14);
                            *(v389 + 14) = v54 + 1;
                          }

                          *(v58 + 28) = v54;
                          v56 = *v55;
LABEL_106:
                          if (++v57 < v56)
                          {
                            goto LABEL_107;
                          }

LABEL_120:
                          if ((v53[5] & 0x20) == 0 || (v53 = *(v53 + 10), *v53 != *v50))
                          {
LABEL_122:
                            v380 = v52;
                            *(v27 + 24) = "circular reference: %s";
                            v62 = v389[50];
                            v389[50] = v13;
                            if ((v50[5] & 0x20) != 0)
                            {
                              *(v53 + 13) = *(v50 + 13);
                              v63 = sub_1818AEE70(a1, v53);
                              *(v53 + 13) = 0;
                            }

                            else
                            {
                              v63 = sub_1818AEE70(a1, v50);
                            }

                            v3 = v384;
                            if (v63)
                            {
                              v389[50] = v62;
                              return 2;
                            }

                            v389[50] = v13;
                            v64 = v50;
                            do
                            {
                              v65 = v64;
                              v64 = *(v64 + 10);
                            }

                            while (v64);
                            v66 = *(v65 + 4);
                            v67 = *(v385 + 8);
                            if (v67)
                            {
                              if (v66)
                              {
                                v68 = *v66;
                                if (v68 != *v67)
                                {
                                  sub_181910730(v389, "table %s has %d values for %d columns", *v385, v68, *v67);
                                  v389[50] = v62;
                                  return 2;
                                }
                              }
                            }

                            else
                            {
                              v67 = v66;
                            }

                            sub_1819605E4(v389, v67, v47 + 27, v47 + 1);
                            if (v380 <= 1)
                            {
                              v69 = "multiple recursive references: %s";
                              if ((*(v50 + 1) & 0x2000) == 0)
                              {
                                v69 = "recursive reference in a subquery: %s";
                              }

                              *(v385 + 24) = v69;
                              sub_1818AEE70(a1, v50);
                            }

                            *(v385 + 24) = 0;
                            v389[50] = v62;
                            if ((*(v11 + 25) & 2) != 0)
                            {
                              goto LABEL_83;
                            }

                            goto LABEL_16;
                          }

                          goto LABEL_103;
                        }

                        v346 = *v27;
                        v44 = "multiple references to recursive table: %s";
LABEL_653:
                        sub_181910730(v389, v44, v346);
                        return 2;
                      }
                    }

                    else if (byte_181A20298[*v59] != byte_181A20298[*i])
                    {
                      goto LABEL_106;
                    }

                    ++v59;
                  }
                }

                v346 = *v11;
LABEL_647:
                v44 = "'%s' is not a function";
                goto LABEL_653;
              }
            }

            else if (byte_181A20298[v12[v26]] != byte_181A20298[*(*v27 + v26)])
            {
              if (++v25 == v24)
              {
                goto LABEL_43;
              }

              goto LABEL_36;
            }

            ++v26;
          }
        }
      }

LABEL_21:
      if (*(v11 + 27))
      {
        v17 = *(v11 + 64);
        v18 = *(*v389 + 32);
        if (v17)
        {
          v19 = (v18 + 24);
          v20 = 0xFFFFFFFF00000000;
          do
          {
            v21 = *v19;
            v19 += 4;
            v20 += 0x100000000;
          }

          while (v21 != v17);
          v22 = v20 >> 32;
        }

        else
        {
          v22 = -32768;
        }

        v14 = (v18 + 32 * v22);
      }

      else
      {
        v14 = (v11 + 64);
      }

      v33 = sub_1818CA520(v389, 0, v12, *v14);
      *(v11 + 16) = v33;
      if (!v33)
      {
        return 2;
      }

      v34 = v33;
      v35 = *(v33 + 11);
      if (v35 >= 0xFFFF)
      {
        sub_181910730(v389, "too many references to %s: max 65535", *v33);
        goto LABEL_389;
      }

      *(v33 + 11) = v35 + 1;
      v36 = *(v33 + 63);
      if (v36 == 1)
      {
        break;
      }

      if ((*(v11 + 25) & 8) != 0)
      {
        v346 = *v11;
        goto LABEL_647;
      }

      if (!*(v33 + 63))
      {
        goto LABEL_82;
      }

      v37 = *(a1 + 36);
      if (*(v33 + 27) <= 0)
      {
        goto LABEL_58;
      }

LABEL_63:
      if (v36 == 1)
      {
        if ((*(v11 + 25) & 0x100) != 0)
        {
          v38 = v34[10];
          if (v38)
          {
            if (((*(v3 + 48) >> 7) & 1u) < *(v38 + 30))
            {
              sub_181910730(v389, "unsafe use of virtual table %s", *v34);
            }
          }
        }
      }

      else if (v36 == 2)
      {
        if ((*(v3 + 51) & 0x80) == 0 && v34[12] != *(*(v3 + 32) + 56))
        {
          sub_181910730(v389, "access to view %s prohibited", *v34);
        }

        sub_181960508(v389, v11, v34[8], 1);
      }

      v39 = *(v34 + 27);
      *(v34 + 27) = -1;
      *(a1 + 36) = 1;
      if ((*(v11 + 25) & 4) != 0)
      {
        sub_1818AEE70(a1, **(v11 + 64));
      }

      *(a1 + 36) = v37;
      *(v34 + 27) = v39;
      if ((*(v11 + 25) & 2) != 0)
      {
LABEL_83:
        v41 = *(*(v11 + 16) + 16);
        if (!v41)
        {
LABEL_386:
          sub_181910730(v389, "no such index: %s", *(v11 + 40));
          *(v389 + 43) |= 8u;
          return 2;
        }

LABEL_84:
        v42 = *v41;
        for (j = *(v11 + 40); ; ++j)
        {
          if (*v42 == *j)
          {
            if (!*v42)
            {
              *(v11 + 48) = v41;
              break;
            }
          }

          else if (byte_181A20298[*v42] != byte_181A20298[*j])
          {
            v41 = *(v41 + 40);
            if (!v41)
            {
              goto LABEL_386;
            }

            goto LABEL_84;
          }

          ++v42;
        }
      }

LABEL_16:
      ++v10;
      v11 += 72;
      if (v10 >= *v371)
      {
        goto LABEL_140;
      }
    }

    v37 = *(a1 + 36);
LABEL_58:
    if (sub_181960D84(v389, v33))
    {
      return 2;
    }

    v36 = *(v34 + 63);
    goto LABEL_63;
  }

LABEL_140:
  if (*(v389 + 13))
  {
    return 2;
  }

  v70 = *(a2 + 40);
  v71 = v70 + 2;
  if (*v70 <= 1)
  {
LABEL_378:
    v204 = v348;
    v205 = *v348;
    if (v205 < 1)
    {
      v206 = 0;
      v209 = v389;
      v210 = a2;
      v211 = v384;
      v214 = *(a2 + 32);
      if (!v214)
      {
        return 0;
      }

LABEL_640:
      if (*v214 > *(v211 + 144))
      {
        sub_181910730(v209, "too many columns in result set", v345);
        return 2;
      }

      if ((v206 & 0x400008) == 0)
      {
        return 0;
      }

      result = 0;
      *(v210 + 4) |= 0x40000u;
      return result;
    }

    v206 = 0;
    v207 = v348 + 2;
    v208 = 2;
    v209 = v389;
    v210 = a2;
    v211 = v384;
    while (1)
    {
      v212 = *&v348[v208];
      v213 = *v212;
      if (v213 == 142)
      {
        v213 = **(v212 + 3);
      }

      if (v213 == 180)
      {
        break;
      }

      v206 |= *(v212 + 1);
      v208 += 6;
      if (!--v205)
      {
        v214 = *(a2 + 32);
        goto LABEL_640;
      }
    }

    v214 = 0;
    v363 = *(*v389 + 48) & 0x44;
    v215 = 0;
    while (1)
    {
      v350 = v215;
      v219 = &v207[6 * v215];
      v349 = *(*v219 + 4);
      v358 = *v219;
      v220 = **v219;
      if (v220 == 180)
      {
        v222 = 0;
        v221 = *v219;
LABEL_405:
        v225 = *v371;
        if (*v371 < 1)
        {
          v209 = v389;
          if (v222)
          {
            goto LABEL_633;
          }
        }

        else
        {
          v347 = v206;
          v226 = 0;
          v227 = 0;
          v360 = *(v221 + 14);
          v228 = v371 + 2;
          v229 = v374;
          v379 = v222;
          do
          {
            v231 = *(v228 + 2);
            v373 = *(v228 + 1);
            if (!v373)
            {
              v373 = *v231;
            }

            if (*(v211 + 103))
            {
              break;
            }

            if ((*(v228 + 25) & 0x4000) != 0)
            {
              __sa = 0;
              v376 = *(**(v228 + 8) + 32);
            }

            else
            {
              if (v222)
              {
                v232 = v222;
                for (k = v373; ; ++k)
                {
                  if (*v232 == *k)
                  {
                    if (!*v232)
                    {
                      break;
                    }
                  }

                  else if (byte_181A20298[*v232] != byte_181A20298[*k])
                  {
                    v230 = v226 + 1;
                    goto LABEL_409;
                  }

                  ++v232;
                }
              }

              v234 = *(v231 + 96);
              if (v234)
              {
                v235 = *(v211 + 32);
                v236 = (v235 + 24);
                v237 = -1;
                do
                {
                  v238 = *v236;
                  v236 += 4;
                  ++v237;
                }

                while (v238 != v234);
                v376 = 0;
                v239 = *(v235 + 32 * v237);
              }

              else
              {
                v376 = 0;
                v239 = "*";
              }

              __sa = v239;
            }

            v230 = v226 + 1;
            if (v226 + 1 >= v225)
            {
              v240 = 0;
            }

            else
            {
              v240 = 0;
              if ((*(v228 + 97) & 0x800) != 0 && (v229 & 0x800) != 0)
              {
                v240 = *(v228 + 16);
                if (*v240 >= 1)
                {
                  v387 = v226;
                  v353 = v226 + 1;
                  v382 = v228;
                  v241 = 1;
                  while (1)
                  {
                    v247 = v240;
                    v248 = *&v240[2 * v241];
                    if (v248)
                    {
                      v249 = strlen(*&v240[2 * v241]) & 0x3FFFFFFF;
                    }

                    else
                    {
                      v249 = 0;
                    }

                    v250 = sub_181929E8C(v211, v249 + 81, 0x1032040B79D87BDLL);
                    v251 = v250;
                    if (!v250)
                    {
                      goto LABEL_444;
                    }

                    v252 = v227;
                    *(v250 + 3) = 0u;
                    *(v250 + 4) = 0u;
                    *(v250 + 1) = 0u;
                    *(v250 + 2) = 0u;
                    *v250 = 0u;
                    *v250 = 60;
                    *(v250 + 26) = -1;
                    v253 = v250 + 10;
                    v250[1] = v250 + 10;
                    if (v249)
                    {
                      memcpy(v250 + 10, v248, v249);
                    }

                    *(v253 + v249) = 0;
                    *(v251 + 10) = 1;
                    v227 = v252;
                    if ((*(v251 + 4) & 3) == 0)
                    {
                      *(v251 + 14) = v360;
                      if (!v214)
                      {
LABEL_448:
                        v255 = sub_18197FD9C(*v389, v251);
LABEL_449:
                        v214 = v255;
                        v211 = v384;
                        if (!v255)
                        {
                          goto LABEL_435;
                        }

                        goto LABEL_434;
                      }
                    }

                    else
                    {
LABEL_444:
                      if (!v214)
                      {
                        goto LABEL_448;
                      }
                    }

                    v254 = *v214;
                    if (v214[1] <= *v214)
                    {
                      v255 = sub_18197FE14(*v389, v214, v251);
                      goto LABEL_449;
                    }

                    *v214 = v254 + 1;
                    v242 = &v214[6 * v254];
                    *(v242 + 2) = 0;
                    *(v242 + 3) = 0;
                    *(v242 + 1) = v251;
                    v211 = v384;
LABEL_434:
                    v243 = *v214;
                    v244 = sub_1818A8BAC(v211, "..%s", v248);
                    v245 = &v214[6 * v243];
                    *(v245 - 1) = v244;
                    *(v245 + 1) = *(v245 + 1) & 0xFF7C | 0x82;
LABEL_435:
                    v240 = v247;
                    v246 = v241++ < *v247;
                    if (!v246)
                    {
                      v222 = v379;
                      v228 = v382;
                      v230 = v353;
                      v229 = v374;
                      v226 = v387;
                      break;
                    }
                  }
                }
              }
            }

            v256 = (v229 >> 11) & 1;
            if ((*(v231 + 49) & 2) != 0)
            {
              v256 = 0;
            }

            v388 = (v256 + *(v231 + 54));
            if (v388 < 1)
            {
              goto LABEL_409;
            }

            v354 = v230;
            v383 = v228;
            v257 = 0;
            v370 = v376 + 8;
            v260 = (v229 & 0x800) == 0 && v222 == 0 && v226 != 0;
            v368 = v260;
            v362 = ~v226;
            v351 = v240 + 2;
            v261 = v389;
            v356 = v240;
            while (1)
            {
              LODWORD(v262) = *(v231 + 54);
              v263 = *(v231 + 8);
              if (v257 == v262)
              {
                break;
              }

              v265 = *(v263 + 16 * v257);
              if (v376)
              {
                v279 = *(v370 + 24 * v257 + 17) & 3;
                if (v279 == 3)
                {
                  goto LABEL_467;
                }

                if (v379)
                {
                  if (v279 != 2)
                  {
                    goto LABEL_467;
                  }

                  v280 = (*(v370 + 24 * v257 + 8) + 1);
                  v281 = **(v370 + 24 * v257 + 8);
                  if (**(v370 + 24 * v257 + 8))
                  {
                    do
                    {
                      if (v281 == 46)
                      {
                        break;
                      }

                      v281 = *v280++;
                    }

                    while (*(v280 - 1));
                  }

                  v282 = 0;
                  v283 = 1;
                  v284 = *v280;
                  if (*v280)
                  {
                    do
                    {
                      if (v284 == 46)
                      {
                        break;
                      }

                      ++v282;
                      ++v283;
                      v284 = v280[v282];
                    }

                    while (v280[v282]);
                  }

                  if (v282)
                  {
                    v285 = 0;
                    while (1)
                    {
                      v286 = v280[v285];
                      if (!v280[v285])
                      {
                        break;
                      }

                      LODWORD(v286) = byte_181A20298[v286];
                      v287 = byte_181A20298[v379[v285]];
                      if (v286 != v287)
                      {
                        goto LABEL_511;
                      }

                      --v283;
                      ++v285;
                      if (v283 <= 1)
                      {
                        goto LABEL_512;
                      }
                    }

                    v287 = byte_181A20298[v379[v285]];
LABEL_511:
                    if (v286 != v287)
                    {
                      goto LABEL_467;
                    }
                  }

LABEL_512:
                  if (v379[v282])
                  {
                    goto LABEL_467;
                  }
                }
              }

              v288 = *(v263 + 16 * v257 + 14);
              if (((*(a2 + 6) & 2) != 0 || (v288 & 2) == 0) && ((v288 & 0x400) == 0 || v379 || (v374 & 0x800) != 0))
              {
                goto LABEL_518;
              }

LABEL_467:
              if (++v257 == v388)
              {
                goto LABEL_408;
              }
            }

            v264 = 0;
            LODWORD(v262) = v262;
            if (v262 <= 1)
            {
              v262 = 1;
            }

            else
            {
              v262 = v262;
            }

LABEL_473:
            v265 = off_1E6A27A80[v264];
            v266 = *v265;
            if (*v265)
            {
              v267 = 0;
              v268 = (v265 + 1);
              v269 = *v265;
              do
              {
                v267 += byte_181A20298[v269];
                v270 = *v268++;
                v269 = v270;
              }

              while (v270);
            }

            else
            {
              v267 = 0;
            }

            v271 = (v263 + 16 * *(v231 + 104 + (v267 & 0xF)));
            if (*(v271 + 11) == v267)
            {
              v272 = *v271;
              for (m = (v265 + 1); ; ++m)
              {
                if (*v272 == v266)
                {
                  if (!v266)
                  {
LABEL_472:
                    if (++v264 == 3)
                    {
                      goto LABEL_467;
                    }

                    goto LABEL_473;
                  }
                }

                else if (byte_181A20298[*v272] != byte_181A20298[v266])
                {
                  break;
                }

                ++v272;
                v274 = *m;
                v266 = v274;
              }
            }

            v275 = 0;
            do
            {
              v276 = v263 + 16 * v275;
              if (*(v276 + 11) == v267)
              {
                v277 = *v276;
                for (n = off_1E6A27A80[v264]; ; ++n)
                {
                  if (*v277 == *n)
                  {
                    if (!*v277)
                    {
                      goto LABEL_472;
                    }
                  }

                  else if (byte_181A20298[*v277] != byte_181A20298[*n])
                  {
                    break;
                  }

                  ++v277;
                }
              }

              ++v275;
            }

            while (v275 != v262);
LABEL_518:
            if (!v368)
            {
              goto LABEL_529;
            }

            if ((*(v383 + 25) & 0x800) == 0)
            {
              goto LABEL_529;
            }

            v289 = *(v383 + 7);
            v290 = *v289;
            if (v290 < 1)
            {
              goto LABEL_529;
            }

            v291 = 0;
            v292 = v289 + 2;
            while (2)
            {
              v293 = *&v292[2 * v291];
              v294 = v265;
              while (2)
              {
                if (*v293 == *v294)
                {
                  if (!*v293)
                  {
                    v227 = 1;
                    goto LABEL_467;
                  }

                  goto LABEL_524;
                }

                if (byte_181A20298[*v293] == byte_181A20298[*v294])
                {
LABEL_524:
                  ++v293;
                  ++v294;
                  continue;
                }

                break;
              }

              if (++v291 != v290)
              {
                continue;
              }

              break;
            }

LABEL_529:
            if (v265)
            {
              v295 = strlen(v265) & 0x3FFFFFFF;
            }

            else
            {
              v295 = 0;
            }

            v296 = sub_181929E8C(v211, v295 + 81, 0x1032040B79D87BDLL);
            v297 = v296;
            if (v296)
            {
              *(v296 + 3) = 0u;
              *(v296 + 4) = 0u;
              *(v296 + 1) = 0u;
              *(v296 + 2) = 0u;
              *v296 = 0u;
              *v296 = 60;
              *(v296 + 26) = -1;
              v298 = v296 + 10;
              v296[1] = v296 + 10;
              if (v295)
              {
                memcpy(v296 + 10, v265, v295);
              }

              *(v298 + v295) = 0;
              *(v297 + 10) = 1;
            }

            if (*v371 >= 2)
            {
              if ((v383[6] & 0x40) != 0 && (v374 & 0x800) == 0)
              {
                v299 = *v371 + v362;
                if (v299 >= 1)
                {
                  v300 = v383;
                  while (1)
                  {
                    if ((*(v300 + 97) & 0x800) != 0)
                    {
                      v301 = *(v300 + 16);
                      if (v301)
                      {
                        v302 = *v301;
                        if (v302 >= 1)
                        {
                          break;
                        }
                      }
                    }

LABEL_541:
                    v300 += 18;
                    v246 = v299-- <= 1;
                    if (v246)
                    {
                      goto LABEL_555;
                    }
                  }

                  v303 = 0;
                  v304 = v301 + 2;
LABEL_546:
                  v305 = *&v304[2 * v303];
                  for (ii = v265; ; ++ii)
                  {
                    if (*v305 == *ii)
                    {
                      if (!*v305)
                      {
                        goto LABEL_554;
                      }
                    }

                    else if (byte_181A20298[*v305] != byte_181A20298[*ii])
                    {
                      if (++v303 == v302)
                      {
                        goto LABEL_541;
                      }

                      goto LABEL_546;
                    }

                    ++v305;
                  }
                }
              }

LABEL_555:
              if (v373)
              {
                v307 = strlen(v373) & 0x3FFFFFFF;
              }

              else
              {
                v307 = 0;
              }

              v308 = sub_181929E8C(v384, v307 + 81, 0x1032040B79D87BDLL);
              v309 = v308;
              if (v308)
              {
                *(v308 + 3) = 0u;
                *(v308 + 4) = 0u;
                *(v308 + 1) = 0u;
                *(v308 + 2) = 0u;
                *v308 = 0u;
                *v308 = 60;
                *(v308 + 26) = -1;
                v310 = v308 + 10;
                v308[1] = v308 + 10;
                if (v307)
                {
                  memcpy(v308 + 10, v373, v307);
                }

                *(v310 + v307) = 0;
                *(v309 + 40) = 1;
                v261 = v389;
              }

              v297 = sub_18194F098(v261, 142, v309, v297);
              if (*(v261 + 302) >= 2u && (v311 = *(v358 + 2)) != 0 && (v312 = v261[51]) != 0)
              {
                while (*v312 != v311)
                {
                  v312 = v312[3];
                  if (!v312)
                  {
                    goto LABEL_567;
                  }
                }

                *v312 = v309;
                v313 = __sa;
                if (!__sa)
                {
                  goto LABEL_573;
                }
              }

              else
              {
LABEL_567:
                v313 = __sa;
                if (!__sa)
                {
                  goto LABEL_573;
                }
              }

              v314 = strlen(v313) & 0x3FFFFFFF;
              v315 = sub_181929E8C(v384, v314 + 81, 0x1032040B79D87BDLL);
              v316 = v315;
              if (v315)
              {
                *(v315 + 3) = 0u;
                *(v315 + 4) = 0u;
                *(v315 + 1) = 0u;
                *(v315 + 2) = 0u;
                *v315 = 0u;
                *v315 = 60;
                *(v315 + 26) = -1;
                v317 = v315 + 10;
                v315[1] = v315 + 10;
                if (v314)
                {
                  memcpy(v315 + 10, __sa, v314);
                }

                *(v317 + v314) = 0;
                *(v316 + 40) = 1;
                v261 = v389;
              }

              v297 = sub_18194F098(v261, 142, v316, v297);
              goto LABEL_573;
            }

LABEL_554:
            if (*(v261 + 302) >= 2u)
            {
              goto LABEL_555;
            }

LABEL_573:
            if (v297 && (*(v297 + 4) & 3) == 0)
            {
              *(v297 + 14) = v360;
              if (!v214)
              {
                goto LABEL_580;
              }

LABEL_576:
              v318 = *v214;
              if (v214[1] <= *v214)
              {
                v320 = sub_18197FE14(*v261, v214, v297);
                goto LABEL_581;
              }

              *v214 = v318 + 1;
              v319 = &v214[6 * v318];
              *(v319 + 2) = 0;
              *(v319 + 3) = 0;
              *(v319 + 1) = v297;
              v211 = v384;
LABEL_582:
              v321 = &v214[6 * *v214 - 4];
              if ((v374 & 0x800) == 0 || *(v389 + 302) > 1u)
              {
                if (v363 != 4)
                {
                  if (!v265)
                  {
                    v324 = 0;
                    goto LABEL_598;
                  }

                  v322 = strlen(v265);
                  v323 = v322;
                  if (v211)
                  {
                    v324 = sub_181929E8C(v211, v322 + 1, 354097263);
                    if (!v324)
                    {
LABEL_598:
                      *(v321 + 8) = v324;
                      goto LABEL_466;
                    }
                  }

                  else
                  {
                    v324 = sub_181902484(v322 + 1, 354097263);
                    if (!v324)
                    {
                      goto LABEL_598;
                    }
                  }

                  memcpy(v324, v265, v323 + 1);
                  goto LABEL_598;
                }

                *(v321 + 8) = sub_1818A8BAC(v211, "%s.%s", v373, v265);
LABEL_466:
                *(v321 + 17) &= 0xFFFCu;
                v227 = 1;
                v261 = v389;
                goto LABEL_467;
              }

              if (!v376)
              {
                v329 = sub_1818A8BAC(v211, "%s.%s.%s", __sa, v373, v265);
                goto LABEL_604;
              }

              v325 = v370 + 24 * v257;
              v326 = *(v325 + 8);
              if (!v326)
              {
                v329 = 0;
                goto LABEL_604;
              }

              v327 = strlen(*(v325 + 8));
              v328 = v327;
              if (v211)
              {
                v329 = sub_181929E8C(v211, v327 + 1, 354097263);
                if (!v329)
                {
LABEL_604:
                  *(v321 + 8) = v329;
                  if (v257 == *(v231 + 54))
                  {
                    v332 = 3;
                  }

                  else
                  {
                    v332 = 2;
                  }

                  v333 = v332 | *(v321 + 17) & 0xFFFC;
                  *(v321 + 17) = v333;
                  if ((*(v383 + 25) & 0x800) == 0 || (v334 = *(v383 + 7), v335 = *v334, v335 < 1))
                  {
LABEL_617:
                    if (!v356 || (v340 = *v356, v340 < 1))
                    {
LABEL_627:
                      if (v257 < *(v231 + 54) && (*(*(v231 + 8) + 16 * v257 + 14) & 0x400) != 0)
                      {
LABEL_629:
                        *(v321 + 17) = v333 | 0x100;
                      }

                      v227 = 1;
                      v261 = v389;
                      goto LABEL_467;
                    }

                    v341 = 0;
LABEL_620:
                    v342 = *&v351[2 * v341];
                    for (jj = v265; ; ++jj)
                    {
                      if (*v342 == *jj)
                      {
                        if (!*v342)
                        {
                          goto LABEL_629;
                        }
                      }

                      else if (byte_181A20298[*v342] != byte_181A20298[*jj])
                      {
                        if (++v341 == v340)
                        {
                          goto LABEL_627;
                        }

                        goto LABEL_620;
                      }

                      ++v342;
                    }
                  }

                  v336 = 0;
                  v337 = v334 + 2;
LABEL_610:
                  v338 = *&v337[2 * v336];
                  for (kk = v265; ; ++kk)
                  {
                    if (*v338 == *kk)
                    {
                      if (!*v338)
                      {
                        goto LABEL_629;
                      }
                    }

                    else if (byte_181A20298[*v338] != byte_181A20298[*kk])
                    {
                      if (++v336 == v335)
                      {
                        goto LABEL_617;
                      }

                      goto LABEL_610;
                    }

                    ++v338;
                  }
                }
              }

              else
              {
                v329 = sub_181902484(v327 + 1, 354097263);
                if (!v329)
                {
                  goto LABEL_604;
                }
              }

              v330 = v328 + 1;
              v331 = v329;
              memcpy(v329, v326, v330);
              v329 = v331;
              goto LABEL_604;
            }

            if (v214)
            {
              goto LABEL_576;
            }

LABEL_580:
            v320 = sub_18197FD9C(*v261, v297);
LABEL_581:
            v214 = v320;
            v211 = v384;
            if (v320)
            {
              goto LABEL_582;
            }

            v227 = 1;
LABEL_408:
            v229 = v374;
            v222 = v379;
            v228 = v383;
            v230 = v354;
LABEL_409:
            v228 += 18;
            v225 = *v371;
            v226 = v230;
          }

          while (v230 < *v371);
          v209 = v389;
          v210 = a2;
          v204 = v348;
          v344 = v227;
          v206 = v347;
          v207 = v348 + 2;
          v218 = v350;
          if (v344)
          {
            goto LABEL_395;
          }

          if (v222)
          {
LABEL_633:
            sub_181910730(v209, "no such table: %s");
LABEL_636:
            v218 = v350;
            goto LABEL_395;
          }
        }

        sub_181910730(v209, "no tables specified");
        goto LABEL_636;
      }

      if (v220 == 142)
      {
        v221 = *(v358 + 3);
        if (*v221 == 180)
        {
          v222 = *(*(v358 + 2) + 8);
          goto LABEL_405;
        }
      }

      if (!v214)
      {
        break;
      }

      v223 = *v214;
      if (v214[1] <= *v214)
      {
        v224 = sub_18197FE14(*v209, v214, v358);
        goto LABEL_638;
      }

      *v214 = v223 + 1;
      v216 = &v214[6 * v223];
      *(v216 + 2) = 0;
      *(v216 + 3) = 0;
      *(v216 + 1) = v358;
LABEL_393:
      v217 = &v214[6 * *v214];
      *(v217 - 1) = *(v219 + 1);
      *(v217 + 1) = *(v217 + 1) & 0xFFFC | *(v219 + 17) & 3;
      *(v219 + 1) = 0;
LABEL_394:
      v218 = v350;
      *v219 = 0;
LABEL_395:
      v206 |= v349;
      v215 = v218 + 1;
      if (v215 >= *v204)
      {
        sub_18194E5B8(v211, v204);
        *(v210 + 32) = v214;
        goto LABEL_640;
      }
    }

    v224 = sub_18197FD9C(*v209, v358);
LABEL_638:
    v214 = v224;
    if (!v224)
    {
      goto LABEL_394;
    }

    goto LABEL_393;
  }

  v72 = 0;
  v73 = v70 + 20;
  v74 = v70 + 2;
  v381 = *(a2 + 40);
  while (1)
  {
    v76 = *(v73 + 2);
    if (*(v74 + 2))
    {
      v77 = v76 == 0;
    }

    else
    {
      v77 = 1;
    }

    if (v77)
    {
      goto LABEL_148;
    }

    v78 = (v73[6] & 0x20) != 0 ? 1 : 2;
    v375 = v78;
    v386 = *(v73 + 2);
    if ((v73[6] & 4) != 0)
    {
      break;
    }

LABEL_206:
    v106 = *(v73 + 7);
    if ((*(v73 + 25) & 0x800) == 0)
    {
      if (v106)
      {
        sub_181961AFC(v106, v73[7], v375);
        *(a2 + 48) = sub_181951CA4(v389, *(a2 + 48), *(v73 + 7));
        *(v73 + 7) = 0;
        *(v73 + 25) |= 0x1000u;
      }

      goto LABEL_148;
    }

    if (*v106 < 1)
    {
      goto LABEL_148;
    }

    v107 = 0;
    v372 = *v389;
    v108 = v106 + 8;
    v109 = v76 + 104;
    v369 = &v71[18 * v72 + 18];
    v378 = v74;
    v359 = v106 + 8;
    v361 = *(v73 + 7);
    v357 = v76 + 104;
    do
    {
      v110 = *&v108[8 * v107];
      if (v110 && (v111 = *v110, *v110))
      {
        v112 = 0;
        v113 = (v110 + 1);
        do
        {
          v112 += byte_181A20298[v111];
          v114 = *v113++;
          v111 = v114;
        }

        while (v114);
      }

      else
      {
        v112 = 0;
      }

      v115 = *(v76 + 8);
      v116 = *(v76 + 54);
      v117 = *(v109 + (v112 & 0xF));
      v118 = v115 + 16 * v117;
      if (*(v118 + 11) == v112)
      {
        v119 = *v118;
        for (mm = *&v108[8 * v107]; ; ++mm)
        {
          if (*v119 == *mm)
          {
            if (!*v119)
            {
              goto LABEL_235;
            }
          }

          else if (byte_181A20298[*v119] != byte_181A20298[*mm])
          {
            break;
          }

          ++v119;
        }
      }

      v121 = 0;
      if (v116 <= 1)
      {
        v122 = 1;
      }

      else
      {
        v122 = v116;
      }

      while (1)
      {
        v123 = v115 + 16 * v121;
        if (*(v123 + 11) == v112)
        {
          break;
        }

LABEL_227:
        if (++v121 == v122)
        {
LABEL_385:
          v346 = *&v108[8 * v107];
          v44 = "cannot join using column %s - column not present in both tables";
          goto LABEL_653;
        }
      }

      v124 = *v123;
      for (nn = *&v108[8 * v107]; *v124 != *nn; ++nn)
      {
        if (byte_181A20298[*v124] != byte_181A20298[*nn])
        {
          goto LABEL_227;
        }

LABEL_231:
        ++v124;
      }

      if (*v124)
      {
        goto LABEL_231;
      }

      LODWORD(v117) = v121;
LABEL_235:
      v126 = 0;
      while (1)
      {
        if (v110 && (v127 = *v110, *v110))
        {
          v128 = 0;
          v129 = (v110 + 1);
          do
          {
            v128 += byte_181A20298[v127];
            v130 = *v129++;
            v127 = v130;
          }

          while (v130);
        }

        else
        {
          v128 = 0;
        }

        v131 = &v71[18 * v126];
        v132 = *(v131 + 2);
        v133 = *(v132 + 8);
        v134 = *(v132 + 54);
        v135 = *(v132 + (v128 & 0xF) + 104);
        v136 = v133 + 16 * v135;
        if (*(v136 + 11) == v128)
        {
          break;
        }

LABEL_249:
        v135 = 0;
        if (v134 <= 1)
        {
          v139 = 1;
        }

        else
        {
          v139 = v134;
        }

        do
        {
          v140 = v133 + 16 * v135;
          if (*(v140 + 11) == v128)
          {
            v141 = *v140;
            for (i1 = *&v108[8 * v107]; ; ++i1)
            {
              if (*v141 == *i1)
              {
                if (!*v141)
                {
                  goto LABEL_259;
                }
              }

              else if (byte_181A20298[*v141] != byte_181A20298[*i1])
              {
                break;
              }

              ++v141;
            }
          }

          ++v135;
        }

        while (v135 != v139);
LABEL_261:
        v9 = v126++ == v72;
        if (v9)
        {
          goto LABEL_385;
        }
      }

      v137 = *v136;
      v138 = *&v108[8 * v107];
      while (2)
      {
        if (*v137 != *v138)
        {
          if (byte_181A20298[*v137] != byte_181A20298[*v138])
          {
            goto LABEL_249;
          }

LABEL_245:
          ++v137;
          ++v138;
          continue;
        }

        break;
      }

      if (*v137)
      {
        goto LABEL_245;
      }

LABEL_259:
      if ((*(v73 + 25) & 0x2000) != 0 && (*(v133 + 16 * v135 + 14) & 2) != 0)
      {
        goto LABEL_261;
      }

      __s = v117;
      v367 = v107;
      if ((*(v131 + 25) & 0x4000) != 0)
      {
        v143 = *(**(v131 + 8) + 32) + 24 * v135;
        *(v143 + 25) |= 0x40u;
      }

      v144 = sub_181929E8C(v372, 0x50uLL, 0x1032040B79D87BDLL);
      v145 = v144;
      if (v144)
      {
        *(v144 + 2) = 0u;
        *(v144 + 3) = 0u;
        *(v144 + 4) = 0u;
        *v144 = 0u;
        *(v144 + 1) = 0u;
        *v144 = -88;
        *(v144 + 26) = -1;
        v146 = &v71[18 * v126];
        v147 = *(v146 + 2);
        *(v144 + 9) = v147;
        v148 = v146[7];
        *(v144 + 10) = 1;
        *(v144 + 11) = v148;
        v149 = v72 + 1;
        if (v135 == *(v147 + 52))
        {
          *(v144 + 12) = -1;
        }

        else
        {
          *(v144 + 12) = v135;
          if ((*(v147 + 48) & 0x60) != 0 && (*(*(v147 + 8) + 16 * v135 + 14) & 0x60) != 0)
          {
            v150 = *(v147 + 54);
            if (v150 <= 63)
            {
              v151 = ~(-1 << v150);
            }

            else
            {
              v151 = -1;
            }
          }

          else
          {
            if (v135 >= 63)
            {
              v152 = 63;
            }

            else
            {
              v152 = v135;
            }

            v151 = *(v146 + 4) | (1 << v152);
          }

          *(v146 + 4) = v151;
        }
      }

      else
      {
        v149 = v72 + 1;
      }

      v153 = &v71[18 * v126];
      if ((*(v153 + 25) & 0x4000) != 0)
      {
        v154 = *(**(v153 + 8) + 32) + 24 * v135;
        *(v154 + 25) |= 0x40u;
      }

      if ((*(v381 + 32) & 0x40) == 0 || *(v389 + 13))
      {
        if ((v369[6] & 8) != 0 && !*(v389 + 13))
        {
          *(v144 + 1) |= 0x200000u;
        }

        goto LABEL_359;
      }

      *(v144 + 1) |= 0x200000u;
      if (v72 <= v126)
      {
        goto LABEL_359;
      }

      v155 = 0;
      while (2)
      {
        v126 = v126 + 1;
        while (1)
        {
          if (v110 && (v156 = *v110, *v110))
          {
            v157 = 0;
            v158 = (v110 + 1);
            do
            {
              v157 += byte_181A20298[v156];
              v159 = *v158++;
              v156 = v159;
            }

            while (v159);
          }

          else
          {
            v157 = 0;
          }

          v160 = &v71[18 * v126];
          v161 = *(v160 + 2);
          v162 = *(v161 + 8);
          v163 = *(v161 + 54);
          v164 = *(v161 + (v157 & 0xF) + 104);
          v165 = v162 + 16 * v164;
          if (*(v165 + 11) == v157)
          {
            break;
          }

LABEL_304:
          v164 = 0;
          if (v163 <= 1)
          {
            v168 = 1;
          }

          else
          {
            v168 = v163;
          }

          do
          {
            v169 = v162 + 16 * v164;
            if (*(v169 + 11) == v157)
            {
              v170 = *v169;
              for (i2 = v110; ; ++i2)
              {
                if (*v170 == *i2)
                {
                  if (!*v170)
                  {
                    goto LABEL_314;
                  }
                }

                else if (byte_181A20298[*v170] != byte_181A20298[*i2])
                {
                  break;
                }

                ++v170;
              }
            }

            ++v164;
          }

          while (v164 != v168);
LABEL_316:
          if (v149 == ++v126)
          {
            goto LABEL_353;
          }
        }

        v166 = *v165;
        v167 = v110;
        while (2)
        {
          if (*v166 != *v167)
          {
            if (byte_181A20298[*v166] != byte_181A20298[*v167])
            {
              goto LABEL_304;
            }

LABEL_300:
            ++v166;
            ++v167;
            continue;
          }

          break;
        }

        if (*v166)
        {
          goto LABEL_300;
        }

LABEL_314:
        if ((*(v73 + 25) & 0x2000) != 0 && (*(v162 + 16 * v164 + 14) & 2) != 0)
        {
          goto LABEL_316;
        }

        if ((*(v160 + 25) & 0x4000) != 0)
        {
          v172 = *(**(v160 + 8) + 32) + 24 * v164;
          *(v172 + 25) |= 0x40u;
        }

        v173 = &v71[18 * v126];
        if ((*(v173 + 25) & 0x800) != 0)
        {
          v174 = *(v173 + 7);
          v175 = *v174;
          if (v175 >= 1)
          {
            v176 = 0;
            v177 = v174 + 2;
LABEL_323:
            v178 = *&v177[2 * v176];
            v179 = v110;
LABEL_326:
            if (*v178 == *v179)
            {
              if (!*v178)
              {
                v352 = &v71[18 * v126];
                if (v155)
                {
                  v180 = *v155;
                  if (v155[1] > *v155)
                  {
                    *v155 = v180 + 1;
                    v355 = v155;
                    v181 = &v155[6 * v180];
                    v181[2] = 0;
                    v181[3] = 0;
                    v181[1] = v145;
LABEL_337:
                    v183 = sub_181929E8C(v372, 0x50uLL, 0x1032040B79D87BDLL);
                    v145 = v183;
                    v149 = v72 + 1;
                    if (v183)
                    {
                      *(v183 + 2) = 0u;
                      *(v183 + 3) = 0u;
                      *(v183 + 4) = 0u;
                      *v183 = 0u;
                      *(v183 + 1) = 0u;
                      *v183 = -88;
                      *(v183 + 26) = -1;
                      v184 = *(v352 + 2);
                      *(v183 + 9) = v184;
                      v185 = v352[7];
                      *(v183 + 10) = 1;
                      *(v183 + 11) = v185;
                      if (v164 == *(v184 + 52))
                      {
                        *(v183 + 12) = -1;
                      }

                      else
                      {
                        *(v183 + 12) = v164;
                        if ((*(v184 + 48) & 0x60) != 0 && (*(*(v184 + 8) + 16 * v164 + 14) & 0x60) != 0)
                        {
                          v186 = *(v184 + 54);
                          if (v186 <= 63)
                          {
                            v187 = ~(-1 << v186);
                          }

                          else
                          {
                            v187 = -1;
                          }
                        }

                        else
                        {
                          if (v164 >= 63)
                          {
                            v188 = 63;
                          }

                          else
                          {
                            v188 = v164;
                          }

                          v187 = *(v352 + 4) | (1 << v188);
                        }

                        *(v352 + 4) = v187;
                      }
                    }

                    if ((*(v352 + 25) & 0x4000) != 0)
                    {
                      v189 = *(**(v352 + 8) + 32) + 24 * v164;
                      *(v189 + 25) |= 0x40u;
                    }

                    v155 = v355;
                    if (v72 <= v126)
                    {
                      goto LABEL_353;
                    }

                    continue;
                  }

                  v182 = sub_18197FE14(*v389, v155, v145);
                }

                else
                {
                  v182 = sub_18197FD9C(*v389, v145);
                }

                v355 = v182;
                goto LABEL_337;
              }
            }

            else if (byte_181A20298[*v178] != byte_181A20298[*v179])
            {
              if (++v176 != v175)
              {
                goto LABEL_323;
              }

              break;
            }

            ++v178;
            ++v179;
            goto LABEL_326;
          }
        }

        break;
      }

      v190 = v155;
      sub_181910730(v389, "ambiguous reference to %s in USING()", v110);
      v155 = v190;
LABEL_353:
      if (v155)
      {
        v191 = *v155;
        if (v155[1] <= *v155)
        {
          v193 = v389;
          v155 = sub_18197FE14(*v389, v155, v145);
        }

        else
        {
          *v155 = v191 + 1;
          v192 = &v155[6 * v191];
          v192[2] = 0;
          v192[3] = 0;
          v192[1] = v145;
          v193 = v389;
        }

        v194 = sub_1818CAFD4(v193, v155, &off_1E6A27A70, 0);
        v145 = v194;
        if (v194)
        {
          *(v194 + 1) = 88;
        }
      }

LABEL_359:
      v195 = sub_181929E8C(v372, 0x50uLL, 0x1032040B79D87BDLL);
      v196 = v195;
      if (v195)
      {
        *(v195 + 2) = 0u;
        *(v195 + 3) = 0u;
        *(v195 + 4) = 0u;
        *v195 = 0u;
        *(v195 + 1) = 0u;
        *v195 = -88;
        *(v195 + 26) = -1;
        v197 = *(v369 + 2);
        v195[9] = v197;
        v198 = v369[7];
        *(v195 + 10) = 1;
        *(v195 + 11) = v198;
        if (__s == *(v197 + 52))
        {
          *(v195 + 12) = -1;
        }

        else
        {
          *(v195 + 12) = __s;
          if ((*(v197 + 48) & 0x60) != 0 && (*(*(v197 + 8) + 16 * __s + 14) & 0x60) != 0)
          {
            v199 = *(v197 + 54);
            if (v199 <= 63)
            {
              v200 = ~(-1 << v199);
            }

            else
            {
              v200 = -1;
            }

            *(v369 + 4) = v200;
          }

          else
          {
            if (__s >= 63)
            {
              v201 = 63;
            }

            else
            {
              v201 = __s;
            }

            *(v369 + 4) |= 1 << v201;
          }
        }
      }

      if ((*(v73 + 25) & 0x4000) != 0)
      {
        v202 = *(**(v73 + 8) + 32) + 24 * __s;
        *(v202 + 25) |= 0x40u;
      }

      v203 = sub_18194F098(v389, 54, v145, v195);
      if (v203)
      {
        *(v203 + 1) |= v375;
        *(v203 + 14) = *(v196 + 11);
      }

      *(a2 + 48) = sub_181951CA4(v389, *(a2 + 48), v203);
      v107 = v367 + 1;
      v108 = v359;
      v74 = v378;
      v70 = v381;
      v76 = v386;
      v109 = v357;
    }

    while (v367 + 1 < *v361);
LABEL_148:
    ++v72;
    v73 += 18;
    v74 += 18;
    if (v72 >= *v70 - 1)
    {
      goto LABEL_378;
    }
  }

  if ((*(v73 + 25) & 0x800) != 0 || *(v73 + 7))
  {
    v346 = 0;
    v44 = "a NATURAL join may not have an ON or USING clause";
    goto LABEL_653;
  }

  v377 = v74;
  v79 = *(v76 + 54);
  if (v79 < 1)
  {
    goto LABEL_205;
  }

  v80 = 0;
  v81 = 0;
LABEL_164:
  while (2)
  {
    v83 = *(v76 + 8) + 16 * v80;
    if ((*(v83 + 14) & 2) != 0)
    {
      goto LABEL_163;
    }

    v84 = 0;
    v85 = *v83;
    v86 = *v83 + 1;
    while (1)
    {
      if (v85 && (v87 = *v85, *v85))
      {
        v88 = 0;
        v89 = v86;
        do
        {
          v88 += byte_181A20298[v87];
          v90 = *v89++;
          v87 = v90;
        }

        while (v90);
      }

      else
      {
        v88 = 0;
      }

      v91 = *&v71[18 * v84 + 4];
      v92 = *(v91 + 8);
      v93 = *(v91 + 54);
      v94 = *(v91 + (v88 & 0xF) + 104);
      v95 = v92 + 16 * v94;
      if (*(v95 + 11) == v88)
      {
        break;
      }

LABEL_179:
      v94 = 0;
      if (v93 <= 1)
      {
        v98 = 1;
      }

      else
      {
        v98 = v93;
      }

      do
      {
        v99 = v92 + 16 * v94;
        if (*(v99 + 11) == v88)
        {
          v100 = *v99;
          for (i3 = v85; ; ++i3)
          {
            if (*v100 == *i3)
            {
              if (!*v100)
              {
                goto LABEL_189;
              }
            }

            else if (byte_181A20298[*v100] != byte_181A20298[*i3])
            {
              break;
            }

            ++v100;
          }
        }

        ++v94;
      }

      while (v94 != v98);
LABEL_190:
      v9 = v84++ == v72;
      if (v9)
      {
LABEL_163:
        if (++v80 >= v79)
        {
          if (v81)
          {
            *(v73 + 25) |= 0x2800u;
            *(v73 + 7) = v81;
          }

          goto LABEL_205;
        }

        goto LABEL_164;
      }
    }

    v96 = *v95;
    v97 = v85;
    while (2)
    {
      if (*v96 != *v97)
      {
        if (byte_181A20298[*v96] != byte_181A20298[*v97])
        {
          goto LABEL_179;
        }

        goto LABEL_175;
      }

      if (*v96)
      {
LABEL_175:
        ++v96;
        ++v97;
        continue;
      }

      break;
    }

LABEL_189:
    if ((*(v92 + 16 * v94 + 14) & 2) != 0)
    {
      goto LABEL_190;
    }

    sub_181951848(v389, v81, 0);
    v81 = v102;
    if (v102)
    {
      if (v85)
      {
        v103 = strlen(v85);
        v104 = v103;
        if (*v389)
        {
          v105 = sub_181929E8C(*v389, v103 + 1, 354097263);
        }

        else
        {
          v105 = sub_181902484(v103 + 1, 354097263);
        }

        v82 = v105;
        if (v105)
        {
          memcpy(v105, v85, v104 + 1);
        }

        v76 = v386;
      }

      else
      {
        v82 = 0;
      }

      v81[*v81] = v82;
      LOWORD(v79) = *(v76 + 54);
      goto LABEL_163;
    }

    ++v80;
    LOWORD(v79) = *(v76 + 54);
    if (v80 < v79)
    {
      continue;
    }

    break;
  }

LABEL_205:
  v74 = v377;
  v70 = v381;
  if (!*(v389 + 13))
  {
    goto LABEL_206;
  }

  return 2;
}

uint64_t sub_1818B1410(void *a1, void *a2)
{
  v4 = a2[4];
  if (v4 && *v4 >= 1)
  {
    v5 = (v4 + 2);
    v6 = *v4 + 1;
    while (!sub_1818B1590(a1, *v5))
    {
      v5 += 3;
      if (--v6 <= 1)
      {
        goto LABEL_6;
      }
    }

    return 2;
  }

LABEL_6:
  v7 = a2[6];
  if (v7 && sub_181959BA0(a1, v7))
  {
    return 2;
  }

  v8 = a2[7];
  if (v8 && *v8 >= 1)
  {
    v9 = (v8 + 2);
    v10 = *v8 + 1;
    while (!sub_1818B1590(a1, *v9))
    {
      v9 += 3;
      if (--v10 <= 1)
      {
        goto LABEL_13;
      }
    }

    return 2;
  }

LABEL_13:
  v11 = a2[8];
  if (v11)
  {
    if (sub_181959BA0(a1, v11))
    {
      return 2;
    }
  }

  if (sub_181959CE8(a1, a2[9]))
  {
    return 2;
  }

  v13 = a2[12];
  if (v13)
  {
    if (sub_181959BA0(a1, v13))
    {
      return 2;
    }
  }

  v14 = a2[15];
  if (!v14)
  {
    return 0;
  }

  v15 = a1[3];
  if (v15 != nullsub_8)
  {
    if (*a1)
    {
      if (v15 != sub_181959F6C && *(*a1 + 302) <= 1u)
      {
        return 0;
      }
    }

    else if (v15 != sub_181959F6C)
    {
      return 0;
    }
  }

  return sub_181959D68(a1, v14, 0);
}

uint64_t sub_1818B1590(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return sub_181959BA0(a1, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1818B15A0(void *a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if ((v2 & 4) != 0)
  {
    return 1;
  }

  v43 = 0;
  memset(v42, 0, sizeof(v42));
  v4 = a1[5];
  v5 = *a1;
  if ((v2 & 0x40) != 0)
  {
    v7 = 0;
    v39 = *(a2 + 80);
    v40 = *v5;
    v8 = a2;
    while (1)
    {
      *(v8 + 4) |= 4u;
      memset(v42 + 8, 0, 40);
      *&v42[0] = v5;
      v43 = v8;
      if (sub_18195ECC4(v42, *(v8 + 96)))
      {
        return 2;
      }

      if (*(v8 + 6))
      {
        *(**(*(v8 + 40) + 72) + 72) = *(v8 + 72);
        *(v8 + 72) = 0;
      }

      if (v4)
      {
        ++*(v4 + 44);
      }

      v41 = v7;
      v9 = *(v8 + 40);
      if (*v9 >= 1)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          v12 = &v9[v10];
          if ((*(&v9[v10 + 8] + 1) & 4) != 0)
          {
            v13 = **(v12 + 9);
            if ((*(v13 + 4) & 4) == 0)
            {
              if (v4)
              {
                v14 = *(v4 + 32);
              }

              else
              {
                v14 = 0;
              }

              v15 = *(v5 + 46);
              v16 = *(v12 + 1);
              if (v16)
              {
                *(v5 + 46) = v16;
                v13 = **(v12 + 9);
              }

              v44 = v5;
              v45 = sub_1818B1AF8;
              v47 = 0;
              v48 = 0;
              v46 = sub_1818B15A0;
              v49 = v4;
              sub_1818AEE70(&v44, v13);
              *(v5 + 46) = v15;
              if (*(v5 + 13))
              {
                return 2;
              }

              if (v4)
              {
                *(v12 + 33) = *(v12 + 33) & 0xFFEF | (16 * (*(v4 + 32) > v14));
              }
            }
          }

          ++v11;
          v9 = *(v8 + 40);
          v10 += 18;
        }

        while (v11 < *v9);
      }

      if (v4)
      {
        v17 = *(v4 + 44);
        if (v17)
        {
          *(v4 + 44) = v17 - 1;
        }
      }

      DWORD2(v42[2]) = 16385;
      *(&v42[0] + 1) = v9;
      *(&v42[1] + 1) = v4;
      if (sub_18195EDEC(v42, *(v8 + 32)))
      {
        return 2;
      }

      v18 = *(v8 + 56);
      if (v18 || (BYTE8(v42[2]) & 0x10) != 0)
      {
        v19 = DWORD2(v42[2]) & 0xFFFFBFFF;
        *(v8 + 4) |= DWORD2(v42[2]) & 0x8001000 | 8;
      }

      else
      {
        v19 = DWORD2(v42[2]) & 0xFFFFBFEE;
      }

      *&v42[1] = *(v8 + 32);
      v20 = v19 | 0x80;
      DWORD2(v42[2]) = v19 | 0x80;
      v21 = *(v8 + 64);
      if (v21)
      {
        if ((*(v8 + 4) & 8) == 0)
        {
          sub_181910730(v5, "HAVING clause on a non-aggregate query");
          return 2;
        }

        DWORD2(v42[2]) = v19 & 0xF7FF2F6F | 0x80;
        v22 = *&v42[0];
        v44 = *&v42[0];
        v45 = sub_1818B1AF8;
        if ((v19 & 0x80000) != 0)
        {
          v23 = 0;
        }

        else
        {
          v23 = sub_1818B15A0;
        }

        v46 = v23;
        v47 = 0;
        v48 = 0;
        v49 = v42;
        v24 = *(*&v42[0] + 308) + *(v21 + 40);
        *(*&v42[0] + 308) = v24;
        if (*(*v22 + 148) < v24)
        {
          sub_181910730(v22, "Expression tree is too large (maximum depth %d)");
          return 2;
        }

        sub_181959BA0(&v44, v21);
        v25 = v44;
        v44[77] -= *(v21 + 40);
        v26 = DWORD2(v42[2]);
        *(v21 + 4) |= WORD4(v42[2]) & 0x8010;
        if (SDWORD1(v42[2]) >= 1 || v25[13] > 0)
        {
          return 2;
        }

        v20 = v26 | v19 & 0x8009010;
      }

      DWORD2(v42[2]) = v20 | 0x100000;
      if (sub_18195ECC4(v42, *(v8 + 48)))
      {
        return 2;
      }

      DWORD2(v42[2]) &= ~0x100000u;
      v27 = *(v8 + 40);
      v28 = *v27;
      if (*v27 >= 1)
      {
        v29 = 0;
        for (i = 0; i < v28; ++i)
        {
          if ((*(&v27[v29 + 8] + 1) & 8) != 0)
          {
            if (sub_18195EDEC(v42, *&v27[v29 + 12]))
            {
              return 2;
            }

            v27 = *(v8 + 40);
            v28 = *v27;
          }

          v29 += 18;
        }
      }

      if (v5[302] >= 2u)
      {
        v31 = *(v8 + 120);
        if (v31)
        {
          while (!sub_18195EDEC(v42, *(v31 + 24)) && !sub_18195EDEC(v42, *(v31 + 16)))
          {
            v31 = *(v31 + 64);
            if (!v31)
            {
              goto LABEL_56;
            }
          }

          return 2;
        }
      }

LABEL_56:
      *(&v42[1] + 1) = 0;
      DWORD2(v42[2]) |= 0x4001u;
      if (*(v8 + 6))
      {
        v32 = **(*(v8 + 40) + 72);
        *(v8 + 72) = *(v32 + 72);
        *(v32 + 72) = 0;
      }

      v33 = *(v8 + 72);
      if (v39)
      {
        v34 = v41 == 0;
      }

      else
      {
        v34 = 0;
      }

      v35 = v34;
      if (v33 && (v35 & 1) == 0 && sub_1818B43B4(v42, v8, v33, "ORDER") || *(v40 + 103))
      {
        return 2;
      }

      DWORD2(v42[2]) &= ~0x4000u;
      if (v18)
      {
        if (sub_1818B43B4(v42, v8, v18, "GROUP") || *(v40 + 103))
        {
          return 2;
        }

        v36 = *v18;
        if (*v18 >= 1)
        {
          v37 = v18 + 2;
          while ((*(*v37 + 4) & 0x10) == 0)
          {
            v37 += 6;
            if (!--v36)
            {
              goto LABEL_75;
            }
          }

          sub_181910730(v5, "aggregate functions are not allowed in the GROUP BY clause");
          return 2;
        }
      }

LABEL_75:
      v38 = *(v8 + 88);
      if (v38 && **(v8 + 32) != **(v38 + 32))
      {
        sub_18195FD00(v5, v38);
        return 2;
      }

      v8 = *(v8 + 80);
      v7 = v41 + 1;
      if (!v8)
      {
        if (!v39 || !sub_18195FD7C(v5, a2))
        {
          return 1;
        }

        return 2;
      }
    }
  }

  else
  {
    sub_18195FBC4(*a1, a2, v4);
    if (*(v5 + 13))
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }
}

uint64_t sub_1818B1AF8(void *a1, unsigned __int8 *a2)
{
  v8 = a2;
  v10 = a1[5];
  v11 = *v10;
  v12 = *a2;
  v363 = *v10;
  if (v12 <= 0x34)
  {
    if (*a2 <= 0x30u)
    {
      if (v12 - 45 >= 2)
      {
        if (v12 != 20)
        {
          return 2 * (*(v11 + 13) != 0);
        }

LABEL_44:
        if ((a2[5] & 0x10) != 0)
        {
          v29 = *(v10 + 32);
          v30 = *(v10 + 40);
          if ((v30 & 0x2E) != 0)
          {
            v31 = "CHECK constraints";
            v32 = "generated columns";
            if ((v30 & 8) == 0)
            {
              v32 = "partial index WHERE clauses";
            }

            if ((v30 & 4) == 0)
            {
              v31 = v32;
            }

            if ((v30 & 0x20) != 0)
            {
              v33 = "index expressions";
            }

            else
            {
              v33 = v31;
            }

            sub_181910730(v11, "%s prohibited in %s", "subqueries", v33);
            *v8 = 122;
            v34 = v8;
            while (1)
            {
              v35 = *(v34 + 1);
              if ((v35 & 3) == 0)
              {
                v36 = *(v34 + 14);
                if (v36 > 0)
                {
                  break;
                }
              }

              v34 = *(v34 + 2);
              if (!v34)
              {
                goto LABEL_106;
              }
            }

            if ((v35 & 0x40000000) == 0)
            {
              *(*v11 + 21) = v36;
            }
          }

          else
          {
            sub_1818AEE70(a1, *(a2 + 4));
          }

LABEL_106:
          if (v29 != *(v10 + 32))
          {
            *(v8 + 1) |= 0x40u;
            *(*(v8 + 4) + 4) |= 0x20000000u;
          }

          *(v10 + 40) |= 0x40u;
        }

        return 2 * (*(v11 + 13) != 0);
      }

      v16 = *(a2 + 3);
      if (v16)
      {
        while (1)
        {
          v17 = *(v16 + 1);
          if ((v17 & 0x82000) == 0)
          {
            break;
          }

          if ((v17 & 0x80000) != 0)
          {
            v16 = *(*(v16 + 4) + 8);
            if (!v16)
            {
              goto LABEL_4;
            }
          }

          else
          {
            v18 = *v16;
            if (v18 != 114)
            {
              goto LABEL_127;
            }

            v16 = *(v16 + 2);
            if (!v16)
            {
              goto LABEL_4;
            }
          }
        }

        v18 = *v16;
LABEL_127:
        if (v18 == 171 || v18 == 60)
        {
          result = sub_1818B1AF8(a1, v16);
          if (result == 2)
          {
            return result;
          }

          if (*v16 == 171)
          {
            result = 0;
            v8[2] = *v8;
            *v8 = -81;
            return result;
          }
        }
      }
    }

    else
    {
      if (v12 - 51 < 2)
      {
        v22 = *(v10 + 24);
        if (v22)
        {
          v2 = *(v22 + 32);
          v23 = *(v22 + 24);
          if (v23)
          {
            v7 = *(v23 + 32);
            v24 = *(v23 + 24);
            if (v24)
            {
              v5 = *(v24 + 32);
              v25 = *(v24 + 24);
              if (v25)
              {
                v6 = *(v25 + 32);
                v26 = *(v25 + 24);
                if (v26)
                {
                  v4 = *(v26 + 32);
                  v27 = *(v26 + 24);
                  if (v27)
                  {
                    v3 = *(v27 + 32);
                    v28 = *(v27 + 24);
                    if (v28)
                    {
                      __src = *(v28 + 32);
                    }
                  }
                }
              }
            }
          }
        }

        v232 = *(v10 + 32);
        v233 = *(a2 + 2);
        if (v233)
        {
          sub_181959BA0(a1, v233);
        }

        if (*(v363 + 302) <= 1u)
        {
          v234 = *(v8 + 2);
          for (i = v234; ; i = *(i + 2))
          {
            v236 = *i;
            if ((v236 - 173) >= 2)
            {
              break;
            }
          }

          if (v236 == 176)
          {
            v236 = i[2];
          }

          if ((v236 - 154) < 3 || v236 == 118 || v236 == 168 && (i[6] & 0x20) == 0 && (v237 = *(i + 9)) != 0 && ((v238 = *(i + 12), (v238 & 0x80000000) != 0) || (v239 = *(v237 + 8)) == 0 || v238 >= *(v237 + 54) || (*(v239 + 16 * v238 + 8) & 0xF) != 0))
          {
            v240 = v10;
            while ((*(v240 + 42) & 0x10) != 0)
            {
              v240 = *(v240 + 24);
              if (!v240)
              {
                v241 = *v8 == 52;
                *(v8 + 1) |= 0x800u;
                *(v8 + 2) = v241;
                *v8 = -100;
                *(v10 + 32) = v232;
                v242 = *(v10 + 24);
                if (v242)
                {
                  *(v242 + 32) = v2;
                  v243 = *(v242 + 24);
                  if (v243)
                  {
                    *(v243 + 32) = v7;
                    v244 = *(v243 + 24);
                    if (v244)
                    {
                      *(v244 + 32) = v5;
                      v245 = *(v244 + 24);
                      if (v245)
                      {
                        *(v245 + 32) = v6;
                        v246 = *(v245 + 24);
                        if (v246)
                        {
                          *(v246 + 32) = v4;
                          v247 = *(v246 + 24);
                          if (v247)
                          {
                            *(v247 + 32) = v3;
                            v248 = *(v247 + 24);
                            if (v248)
                            {
                              *(v248 + 32) = __src;
                            }
                          }
                        }
                      }
                    }
                  }
                }

                if (v234)
                {
                  sub_1819439E0(*v363, v234);
                }

                *(v8 + 2) = 0;
                return 1;
              }
            }
          }
        }

        return 1;
      }

      if (v12 != 49)
      {
        if (v12 != 50)
        {
          return 2 * (*(v11 + 13) != 0);
        }

        goto LABEL_44;
      }
    }

LABEL_4:
    if (!*(*v11 + 103))
    {
      v13 = *(v8 + 2);
      v14 = *v13;
      if (v14 == 176)
      {
        v14 = v13[2];
      }

      if (v14 != 177)
      {
        if (v14 != 139)
        {
          v15 = 1;
LABEL_60:
          if (*v8 != 49)
          {
            v41 = *(v8 + 3);
            v42 = *v41;
            if (v42 == 176)
            {
              v42 = v41[2];
            }

            if (v42 == 177)
            {
              goto LABEL_116;
            }

            if (v42 != 139)
            {
              goto LABEL_114;
            }

            goto LABEL_115;
          }

          v37 = *(v8 + 4);
          v38 = *(v37 + 8);
          v39 = *v38;
          if (v39 == 176)
          {
            v39 = v38[2];
          }

          if (v39 != 177)
          {
            if (v39 != 139)
            {
              v40 = 1;
              if (v15 != 1)
              {
LABEL_117:
                if (v15 == v40)
                {
                  return 2 * (*(v11 + 13) != 0);
                }

                sub_181910730(v11, "row value misused");
                v49 = *v11;
                while (1)
                {
                  v50 = *(v8 + 1);
                  if ((v50 & 3) == 0)
                  {
                    v51 = *(v8 + 14);
                    if (v51 > 0)
                    {
                      break;
                    }
                  }

                  v8 = *(v8 + 2);
                  if (!v8)
                  {
                    return 2 * (*(v11 + 13) != 0);
                  }
                }

LABEL_124:
                if ((v50 & 0x40000000) == 0)
                {
                  *(v49 + 84) = v51;
                }

                return 2 * (*(v11 + 13) != 0);
              }

LABEL_110:
              v41 = *(v37 + 32);
              v65 = *v41;
              if (v65 == 176)
              {
                v65 = v41[2];
              }

              if (v65 != 139)
              {
                if (v65 != 177)
                {
LABEL_114:
                  v40 = 1;
                  goto LABEL_117;
                }

LABEL_116:
                v40 = **(v41 + 4);
                goto LABEL_117;
              }

LABEL_115:
              v41 = *(v41 + 4);
              goto LABEL_116;
            }

            v38 = *(v38 + 4);
          }

          v40 = **(v38 + 4);
          if (v40 != v15)
          {
            goto LABEL_117;
          }

          goto LABEL_110;
        }

        v13 = *(v13 + 4);
      }

      v15 = **(v13 + 4);
      goto LABEL_60;
    }

    return 2 * (*(v11 + 13) != 0);
  }

  if (*a2 <= 0x3Bu)
  {
    if (v12 - 53 >= 6)
    {
      return 2 * (*(v11 + 13) != 0);
    }

    goto LABEL_4;
  }

  if (*a2 <= 0x8Du)
  {
    if (v12 == 60)
    {
      v351 = a1[5];
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v357 = *v11;
      *(a2 + 11) = -1;
      v353 = a2 + 44;
      v55 = *(a2 + 1);
      v349 = v8;
      goto LABEL_239;
    }

    if (v12 == 76)
    {
      v43 = *(v10 + 8);
      *a2 = 17576;
      *(a2 + 9) = *(v43 + 24);
      v44 = *(a2 + 12) - 1;
      *(a2 + 11) = *(v43 + 36);
      *(a2 + 12) = v44;
      return 2 * (*(v11 + 13) != 0);
    }

    if (v12 != 139)
    {
      return 2 * (*(v11 + 13) != 0);
    }

    goto LABEL_44;
  }

  if (v12 != 142)
  {
    if (v12 == 157)
    {
      v45 = *(v10 + 40);
      if ((v45 & 0x2E) != 0)
      {
        v46 = "CHECK constraints";
        v47 = "generated columns";
        if ((v45 & 8) == 0)
        {
          v47 = "partial index WHERE clauses";
        }

        if ((v45 & 4) == 0)
        {
          v46 = v47;
        }

        if ((v45 & 0x20) != 0)
        {
          v48 = "index expressions";
        }

        else
        {
          v48 = v46;
        }

        sub_181910730(v11, "%s prohibited in %s", "parameters", v48);
        *v8 = 122;
        v49 = *v11;
        while (1)
        {
          v50 = *(v8 + 1);
          if ((v50 & 3) == 0)
          {
            v51 = *(v8 + 14);
            if (v51 > 0)
            {
              break;
            }
          }

          v8 = *(v8 + 2);
          if (!v8)
          {
            return 2 * (*(v11 + 13) != 0);
          }
        }

        goto LABEL_124;
      }

      return 2 * (*(v11 + 13) != 0);
    }

    if (v12 != 172)
    {
      return 2 * (*(v11 + 13) != 0);
    }

    v19 = *v11;
    v20 = *(*v11 + 100);
    if (a2[7])
    {
      if (*(*(a2 + 9) + 32) == 167)
      {
        v21 = 0;
      }

      else
      {
        v21 = *(a2 + 9);
      }
    }

    else
    {
      v21 = 0;
    }

    v69 = *(a2 + 4);
    if (v69)
    {
      v70 = *v69;
    }

    else
    {
      v70 = 0;
    }

    v71 = v10;
    __srca = *(v10 + 40);
    v72 = *(a2 + 1);
    v73 = sub_181893B48(v19, v72, v70, v20, 0);
    if (!v73)
    {
      v78 = v72;
      v11 = v363;
      v74 = sub_181893B48(*v363, v78, -2, v20, 0);
      v76 = 0;
      v79 = v74 == 0;
      v80 = v74 != 0;
      goto LABEL_190;
    }

    v74 = v73;
    v75 = *(v73 + 32);
    v76 = v75 != 0;
    v11 = v363;
    if ((*(v73 + 5) & 4) != 0)
    {
      *(v8 + 1) |= 0x80000u;
      if (v70 == 2)
      {
        v77 = sub_18195F02C(*(v69 + 32));
        *(v8 + 11) = v77;
        if ((v77 & 0x80000000) != 0)
        {
          sub_181910730(v363, "second argument to %#T() must be a constant between 0.0 and 1.0", v8);
          ++*(v71 + 36);
        }
      }

      else
      {
        if (**(v73 + 56) == 117)
        {
          v81 = 0x800000;
        }

        else
        {
          v81 = 125829120;
        }

        *(v8 + 11) = v81;
      }
    }

    v82 = *v363;
    v83 = (*v363)[66];
    if (!v83 || *(v82 + 197) || *(v363 + 302))
    {
LABEL_166:
      v84 = *(v74 + 4);
      if ((v84 & 0x100000) != 0)
      {
        if (v70 < 1)
        {
LABEL_173:
          if ((v84 & 0x2800) != 0)
          {
            *(v8 + 1) |= 0x100000u;
          }

          v88 = *(v71 + 40);
          if ((v84 & 0x800) != 0)
          {
            v8[2] = v88 & 0x2E;
          }

          else if ((v88 & 0x2A) != 0)
          {
            sub_18195EF68(v363, v71, "non-deterministic functions", 0, v8);
            v84 = *(v74 + 4);
          }

          if ((v84 & 0x40000) != 0 && !*(v363 + 30) && (*(*v363 + 44) & 0x20) == 0)
          {
            v74 = 0;
            v76 = v75 != 0;
            v89 = v363 + 302;
            if (*(v363 + 302) < 2u)
            {
              v76 = 0;
              v79 = 1;
              goto LABEL_558;
            }

            goto LABEL_195;
          }

          if ((v84 & 0x280000) != 0 && *(v363 + 302) <= 1u)
          {
            if ((*(v71 + 42) & 4) != 0)
            {
              *(v8 + 1) |= 0x40000000u;
            }

            sub_1819587F0(v363, v8, v74);
          }

          v80 = 1;
          v79 = 1;
LABEL_190:
          v89 = v11 + 302;
          if (*(v11 + 302) < 2u)
          {
            if (v74 && v21 && !*(v74 + 40))
            {
              sub_181910730(v11, "%#T() may not be used as a window function", v8);
              goto LABEL_679;
            }

            if (v76)
            {
              v90 = *(v71 + 40);
              v91 = *(v74 + 4);
              if ((v90 & 1) == 0 || !v21 && (v91 & 0x10000) != 0 || v21 && (v90 & 0x4000) == 0)
              {
                v92 = HIWORD(v91) & 1;
                if (v21)
                {
                  v92 = 1;
                }

                if (v92)
                {
                  v93 = "window";
                }

                else
                {
                  v93 = "aggregate";
                }

                sub_181910730(v11, "misuse of %s function %#T()", v93, v8);
LABEL_210:
                v76 = 0;
                ++*(v71 + 36);
                if (!v69)
                {
                  goto LABEL_693;
                }

                goto LABEL_683;
              }

              v76 = 1;
              if (v80)
              {
LABEL_673:
                if (v79)
                {
                  if (v76)
                  {
LABEL_680:
                    *(v71 + 40) &= (v21 == 0) ^ 0xFFFFBFFF;
                    goto LABEL_681;
                  }

                  goto LABEL_675;
                }

                goto LABEL_678;
              }
            }

            else
            {
              if (v80)
              {
                if (v79)
                {
LABEL_675:
                  if (v8[7])
                  {
                    sub_181910730(v11, "FILTER may not be used with non-aggregate %#T()", v8);
                  }

                  else
                  {
                    if (!*(v8 + 2))
                    {
                      v76 = 0;
                      if (!v69)
                      {
                        goto LABEL_693;
                      }

                      goto LABEL_683;
                    }

                    sub_181910730(v11, "ORDER BY may not be used with non-aggregate %#T()", v8);
                  }

                  goto LABEL_210;
                }

                v76 = 0;
LABEL_678:
                sub_181910730(v11, "wrong number of arguments to function %#T()", v8);
LABEL_679:
                ++*(v71 + 36);
                if (!v76)
                {
                  goto LABEL_682;
                }

                goto LABEL_680;
              }

              v76 = 0;
            }

LABEL_558:
            if (!*(*v11 + 197) && !*(v11 + 301))
            {
              sub_181910730(v11, "no such function: %#T", v8);
              goto LABEL_679;
            }

            goto LABEL_673;
          }

LABEL_195:
          if ((v8[7] & 1) == 0 && !*(v8 + 2))
          {
LABEL_682:
            if (!v69)
            {
              goto LABEL_693;
            }

LABEL_683:
            v280 = *v69;
            if (*v69 >= 1)
            {
              for (j = (v69 + 8); ; j += 3)
              {
                if (*j)
                {
                  if (sub_181959BA0(a1, *j))
                  {
                    v282 = 1;
                  }

                  else
                  {
                    v282 = v280 <= 1;
                  }

                  if (v282)
                  {
                    break;
                  }
                }

                else if (v280 < 2)
                {
                  break;
                }

                --v280;
              }
            }

LABEL_693:
            if (v76)
            {
              v283 = *(v8 + 2);
              if (v283)
              {
                sub_181959CE8(a1, *(v283 + 32));
              }

              if (v21 && !*(v11 + 13))
              {
                v297 = *(v71 + 48);
                if (*v89 <= 1u)
                {
                  v298 = v297 ? *(v297 + 120) : 0;
                  sub_18195F0AC(v11, v298, v21, v74);
                  if (*(*v11 + 103))
                  {
                    return 2 * (*(v11 + 13) != 0);
                  }
                }

                sub_181959CE8(a1, *(v21 + 16));
                sub_181959CE8(a1, *(v21 + 24));
                v299 = *(v21 + 72);
                if (v299)
                {
                  sub_181959BA0(a1, v299);
                }

                sub_18195CA70(v297, v21);
                *(v71 + 40) |= 0x8000u;
              }

              else
              {
                *v8 = -87;
                v8[2] = 0;
                if (v8[7])
                {
                  v284 = *(*(v8 + 9) + 72);
                  if (v284)
                  {
                    sub_181959BA0(a1, v284);
                  }
                }

                if (v71)
                {
                  v285 = v71;
                  while (1)
                  {
                    v286 = *(v285 + 8);
                    v373[0] = 0;
                    v371[2] = 0;
                    v372 = 0;
                    v373[1] = sub_18195FA04;
                    v373[2] = sub_18195FA90;
                    v373[3] = sub_18195FBA4;
                    v374 = 0;
                    v375 = v371;
                    v371[0] = *v11;
                    v371[1] = v286;
                    v287 = *(v8 + 4);
                    if (v287)
                    {
                      v288 = *v287;
                      if (*v287 >= 1)
                      {
                        for (k = (v287 + 2); ; k += 3)
                        {
                          if (*k)
                          {
                            if (sub_181959BA0(v373, *k))
                            {
                              v290 = 1;
                            }

                            else
                            {
                              v290 = v288 <= 1;
                            }

                            if (v290)
                            {
                              break;
                            }
                          }

                          else if (v288 < 2)
                          {
                            break;
                          }

                          --v288;
                        }
                      }
                    }

                    v291 = *(v8 + 2);
                    if (v291)
                    {
                      v292 = *(v291 + 32);
                      if (v292)
                      {
                        v293 = *v292;
                        if (*v292 >= 1)
                        {
                          for (m = (v292 + 2); ; m += 3)
                          {
                            if (*m)
                            {
                              if (sub_181959BA0(v373, *m))
                              {
                                v295 = 1;
                              }

                              else
                              {
                                v295 = v293 <= 1;
                              }

                              if (v295)
                              {
                                break;
                              }
                            }

                            else if (v293 < 2)
                            {
                              break;
                            }

                            --v293;
                          }
                        }
                      }
                    }

                    if (v8[7])
                    {
                      v296 = *(*(v8 + 9) + 72);
                      if (v296)
                      {
                        sub_181959BA0(v373, v296);
                      }
                    }

                    if (v372)
                    {
                      sub_181939EC8(*v11, v372);
                    }

                    if (!WORD2(v374) || (v374 & 0x100000000) != 0)
                    {
                      break;
                    }

                    v8[2] += *(v285 + 44) + 1;
                    v285 = *(v285 + 24);
                    if (!v285)
                    {
                      goto LABEL_747;
                    }
                  }

                  if (v74)
                  {
                    v8[2] += *(v285 + 44);
                    *(v285 + 40) |= *(v74 + 4) & 0x8001000 ^ 0x8000010;
                  }
                }
              }

LABEL_747:
              *(v71 + 40) |= __srca & 0x4001;
              return 1;
            }

            return 1;
          }

LABEL_681:
          v76 = 1;
          goto LABEL_682;
        }
      }

      else if ((*(v8 + 1) & 0x80000000) == 0 || v70 <= 0)
      {
        goto LABEL_173;
      }

      v85 = (v69 + 8);
      v86 = v70;
      do
      {
        v87 = *v85;
        v85 += 3;
        *(v87 + 4) |= 0x80000000;
        --v86;
      }

      while (v86);
      goto LABEL_173;
    }

    v250 = v83(*(v82 + 536), 31, 0, *(v74 + 56), 0, v363[46]);
    if (v250 == 1)
    {
      v251 = 23;
      sub_181910730(v363, "not authorized");
    }

    else
    {
      if ((v250 & 0xFFFFFFFD) == 0)
      {
        if (!v250)
        {
          goto LABEL_166;
        }

LABEL_649:
        *v8 = 122;
        return 1;
      }

      v251 = 1;
      sub_181910730(v363, "authorizer malfunction");
    }

    *(v363 + 6) = v251;
    sub_181910730(v363, "not authorized to use function: %#T", v8);
    ++*(v71 + 36);
    goto LABEL_649;
  }

  v56 = *(a2 + 2);
  v57 = *(v10 + 40);
  if ((v57 & 0x28) != 0)
  {
    v58 = "CHECK constraints";
    v59 = "generated columns";
    if ((v57 & 8) == 0)
    {
      v59 = "partial index WHERE clauses";
    }

    if ((v57 & 4) == 0)
    {
      v58 = v59;
    }

    if ((v57 & 0x20) != 0)
    {
      v60 = "index expressions";
    }

    else
    {
      v60 = v58;
    }

    sub_181910730(v11, "%s prohibited in %s", "the . operator", v60);
    v61 = v8;
    while (1)
    {
      v62 = *(v61 + 1);
      if ((v62 & 3) == 0)
      {
        v63 = *(v61 + 14);
        if (v63 > 0)
        {
          break;
        }
      }

      v61 = *(v61 + 2);
      if (!v61)
      {
        goto LABEL_102;
      }
    }

    if ((v62 & 0x40000000) == 0)
    {
      *(*v11 + 21) = v63;
    }
  }

LABEL_102:
  v64 = *(v8 + 3);
  if (*v64 == 60)
  {
    v54 = 0;
  }

  else
  {
    v54 = *(v56 + 8);
    v56 = *(v64 + 16);
    v64 = *(v64 + 24);
  }

  v52 = *(v56 + 8);
  if (*(v11 + 302) >= 2u)
  {
    v67 = v11[51];
    if (v67)
    {
      v68 = v11[51];
      while (*v68 != v64)
      {
        v68 = v68[3];
        if (!v68)
        {
          goto LABEL_155;
        }
      }

      *v68 = v8;
      v67 = v11[51];
LABEL_155:
      if (v67)
      {
        while (*v67 != v56)
        {
          v67 = v67[3];
          if (!v67)
          {
            goto LABEL_217;
          }
        }

        *v67 = v8 + 72;
      }
    }
  }

LABEL_217:
  v94 = *v11;
  v55 = *(v64 + 8);
  *(v8 + 11) = -1;
  v353 = v8 + 44;
  v351 = v10;
  v357 = v94;
  v349 = v64;
  if (!v54)
  {
    v53 = 0;
    goto LABEL_239;
  }

  if ((*(v10 + 40) & 6) != 0)
  {
    v53 = 0;
    v54 = 0;
    goto LABEL_239;
  }

  v95 = *(v94 + 40);
  if (v95 >= 1)
  {
    v96 = 0;
    v97 = *(v94 + 32);
    while (1)
    {
      v98 = *(v97 + 32 * v96);
      for (n = v54; *v98 == *n; ++n)
      {
        if (!*v98)
        {
          v53 = *(v97 + 32 * v96 + 24);
          goto LABEL_232;
        }

LABEL_225:
        ++v98;
      }

      if (byte_181A20298[*v98] == byte_181A20298[*n])
      {
        goto LABEL_225;
      }

      if (++v96 == v95)
      {
        v53 = 0;
        goto LABEL_233;
      }
    }
  }

  LODWORD(v96) = 0;
  v53 = 0;
LABEL_232:
  if (v96 != v95)
  {
    goto LABEL_239;
  }

LABEL_233:
  for (ii = 0; aMain[ii] != v54[ii]; ++ii)
  {
    if (byte_181A20298[aMain[ii]] != byte_181A20298[v54[ii]])
    {
      goto LABEL_239;
    }

LABEL_235:
    ;
  }

  if (aMain[ii])
  {
    goto LABEL_235;
  }

  v101 = *(v94 + 32);
  v53 = *(v101 + 24);
  v54 = *v101;
LABEL_239:
  v364 = 0;
  v355 = 0;
  v102 = 0;
  v365 = 0;
  v366 = v52;
  v350 = v52 == 0;
  v360 = v8 + 72;
  v103 = (v11 + 20);
  v356 = (v55 + 1);
  v104 = v351;
  v367 = v54;
  __srcb = v55;
  v352 = (v11 + 20);
  while (2)
  {
    v105 = *(v104 + 8);
    if (v105)
    {
      v354 = v104;
      if (*v105 >= 1)
      {
        v106 = 0;
        v107 = 0;
        v108 = v105 + 2;
        v358 = v53;
        v359 = v105;
        while (1)
        {
          v109 = *(v108 + 2);
          if ((*(v108 + 25) & 0x4000) == 0)
          {
            if (!v52)
            {
              goto LABEL_313;
            }

            goto LABEL_290;
          }

          v110 = *(**(v108 + 8) + 32);
          if (*v110 < 1)
          {
            v126 = 0;
            v105 = v359;
            if (!v52)
            {
              goto LABEL_244;
            }

            goto LABEL_289;
          }

          v361 = *(v108 + 2);
          v111 = 0;
          v112 = 0;
          while (2)
          {
            LODWORD(v373[0]) = 0;
            v113 = &v110[6 * v111 + 2];
            if (!sub_18195F3C4(v113, v55, v366, v367, v373))
            {
              goto LABEL_250;
            }

            if (LODWORD(v373[0]))
            {
              if (v107 < 1)
              {
                v55 = __srcb;
                goto LABEL_284;
              }

LABEL_250:
              v55 = __srcb;
              goto LABEL_251;
            }

            if (v107 < 1)
            {
              goto LABEL_282;
            }

            v55 = __srcb;
            if ((*(v108 + 25) & 0x800) == 0 || (v114 = *(v108 + 7), v115 = *v114, v115 < 1))
            {
LABEL_267:
              if (v364)
              {
                sub_18194E5B8(v357, v364);
                v55 = __srcb;
              }

              v364 = 0;
              goto LABEL_283;
            }

            v116 = 0;
            v117 = v114 + 2;
LABEL_260:
            v118 = *&v117[2 * v116];
            for (jj = __srcb; *v118 != *jj; ++jj)
            {
              if (byte_181A20298[*v118] != byte_181A20298[*jj])
              {
                if (++v116 != v115)
                {
                  goto LABEL_260;
                }

                goto LABEL_267;
              }

LABEL_262:
              ++v118;
            }

            if (*v118)
            {
              goto LABEL_262;
            }

            if ((v108[6] & 0x10) == 0)
            {
              goto LABEL_250;
            }

            if ((v108[6] & 8) == 0)
            {
              v55 = __srcb;
              if (v364)
              {
                sub_18194E5B8(v357, v364);
                v55 = __srcb;
              }

              v364 = 0;
              v107 = 0;
              goto LABEL_283;
            }

            v120 = *(v8 + 12);
            v121 = sub_181929E8C(*v363, 0x50uLL, 0x1032040B79D87BDLL);
            if (!v121)
            {
              goto LABEL_282;
            }

            *(v121 + 2) = 0u;
            *(v121 + 3) = 0u;
            *(v121 + 4) = 0u;
            *v121 = 0u;
            *(v121 + 1) = 0u;
            *v121 = -88;
            *(v121 + 26) = -1;
            *(v121 + 10) = 1;
            *(v121 + 11) = v365[7];
            *(v121 + 12) = v120;
            v121[9] = *(v365 + 2);
            *(v121 + 1) |= 0x200000u;
            if (v364)
            {
              v122 = *v364;
              if (v364[1] > *v364)
              {
                *v364 = v122 + 1;
                v123 = &v364[6 * v122];
                v123[2] = 0;
                v123[3] = 0;
                v123[1] = v121;
                goto LABEL_282;
              }

              v124 = sub_18197FE14(*v363, v364, v121);
            }

            else
            {
              v124 = sub_18197FD9C(*v363, v121);
            }

            v364 = v124;
LABEL_282:
            v55 = __srcb;
LABEL_283:
            ++v107;
            v112 = 1;
LABEL_284:
            ++v102;
            *(v8 + 12) = v111;
            v125 = *(v113 + 17);
            *(v113 + 17) = v125 | 0x40;
            v365 = v108;
            if ((v125 & 0x80) != 0)
            {
              v365 = v108;
              break;
            }

LABEL_251:
            if (++v111 < *v110)
            {
              continue;
            }

            break;
          }

          v126 = v112 != 0;
          v109 = v361;
          v11 = v363;
          v53 = v358;
          v52 = v366;
          v54 = v367;
          v105 = v359;
          if (!v366)
          {
            goto LABEL_244;
          }

LABEL_289:
          if (v126)
          {
            goto LABEL_244;
          }

LABEL_290:
          if (v54 && (*(v109 + 96) != v53 || !v53 && (*v54 != 42 || v54[1])))
          {
            goto LABEL_244;
          }

          v127 = *(v108 + 1);
          if (v127)
          {
            v128 = v52;
            for (kk = *(v108 + 1); ; ++kk)
            {
              if (*v128 == *kk)
              {
                if (!*v128)
                {
                  goto LABEL_308;
                }
              }

              else if (byte_181A20298[*v128] != byte_181A20298[*kk])
              {
                goto LABEL_244;
              }

              ++v128;
            }
          }

          v130 = 0;
          while (2)
          {
            if (*(v52 + v130) == *(*v109 + v130))
            {
              if (!*(v52 + v130))
              {
                goto LABEL_308;
              }

              goto LABEL_302;
            }

            if (byte_181A20298[*(v52 + v130)] == byte_181A20298[*(*v109 + v130)])
            {
LABEL_302:
              ++v130;
              continue;
            }

            break;
          }

          if (*(v109 + 40) != 1)
          {
            goto LABEL_244;
          }

          v131 = v11;
          v132 = v109;
          v133 = sub_18195F638(v52, v109, v54);
          v109 = v132;
          v11 = v131;
          v53 = v358;
          v54 = v367;
          v55 = __srcb;
          if (!v133)
          {
            goto LABEL_244;
          }

LABEL_308:
          if (*(v11 + 302) >= 2u && v127 != 0)
          {
            v155 = v11[51];
            if (v155)
            {
              while (*v155 != v360)
              {
                v155 = v155[3];
                if (!v155)
                {
                  goto LABEL_313;
                }
              }

              *v155 = 0;
            }
          }

LABEL_313:
          if (v55 && (v135 = *v55, *v55))
          {
            v136 = 0;
            v137 = v356;
            do
            {
              v136 += byte_181A20298[v135];
              v138 = *v137++;
              v135 = v138;
            }

            while (v138);
          }

          else
          {
            LOBYTE(v136) = 0;
          }

          v139 = *(v109 + 8);
          LOWORD(v140) = *(v109 + 54);
          v141 = *(v109 + (v136 & 0xF) + 104);
          v142 = v139 + 16 * v141;
          if (*(v142 + 11) != v136)
          {
LABEL_327:
            v141 = 0;
            LODWORD(v140) = v140;
            if (v140 <= 1)
            {
              v140 = 1;
            }

            else
            {
              v140 = v140;
            }

            while (1)
            {
              v145 = v139 + 16 * v141;
              if (*(v145 + 11) == v136)
              {
                break;
              }

LABEL_330:
              if (++v141 == v140)
              {
                goto LABEL_378;
              }
            }

            v146 = *v145;
            for (mm = v55; ; ++mm)
            {
              if (*v146 == *mm)
              {
                if (!*v146)
                {
                  if (v107 < 1)
                  {
                    goto LABEL_372;
                  }

                  goto LABEL_338;
                }
              }

              else if (byte_181A20298[*v146] != byte_181A20298[*mm])
              {
                goto LABEL_330;
              }

              ++v146;
            }
          }

          v143 = *v142;
          v144 = v55;
          while (2)
          {
            if (*v143 != *v144)
            {
              if (byte_181A20298[*v143] != byte_181A20298[*v144])
              {
                goto LABEL_327;
              }

LABEL_322:
              ++v143;
              ++v144;
              continue;
            }

            break;
          }

          if (*v143)
          {
            goto LABEL_322;
          }

          if (v107 < 1)
          {
            goto LABEL_372;
          }

LABEL_338:
          if ((*(v108 + 25) & 0x800) == 0 || (v148 = *(v108 + 7), v149 = *v148, v149 < 1))
          {
LABEL_348:
            if (v364)
            {
              v156 = v52;
              v157 = v53;
              v158 = v11;
              v159 = v109;
              sub_18194E5B8(v357, v364);
              v109 = v159;
              v11 = v158;
              v53 = v157;
              v52 = v156;
              v105 = v359;
              v54 = v367;
              v55 = __srcb;
            }

            v364 = 0;
            goto LABEL_372;
          }

          v150 = 0;
          v151 = v148 + 2;
          while (2)
          {
            v152 = *&v151[2 * v150];
            v153 = v55;
LABEL_344:
            if (*v152 != *v153)
            {
              if (byte_181A20298[*v152] != byte_181A20298[*v153])
              {
                if (++v150 != v149)
                {
                  continue;
                }

                goto LABEL_348;
              }

LABEL_343:
              ++v152;
              ++v153;
              goto LABEL_344;
            }

            break;
          }

          if (*v152)
          {
            goto LABEL_343;
          }

          if ((v108[6] & 0x10) == 0)
          {
            goto LABEL_244;
          }

          if ((v108[6] & 8) != 0)
          {
            v362 = v109;
            v160 = v53;
            v161 = *(v8 + 12);
            v162 = sub_181929E8C(*v11, 0x50uLL, 0x1032040B79D87BDLL);
            if (v162)
            {
              *(v162 + 2) = 0u;
              *(v162 + 3) = 0u;
              *(v162 + 4) = 0u;
              *v162 = 0u;
              *(v162 + 1) = 0u;
              *v162 = -88;
              *(v162 + 26) = -1;
              *(v162 + 10) = 1;
              *(v162 + 11) = v365[7];
              *(v162 + 12) = v161;
              v162[9] = *(v365 + 2);
              *(v162 + 1) |= 0x200000u;
              if (v364)
              {
                v163 = *v364;
                v53 = v160;
                if (v364[1] <= *v364)
                {
                  v364 = sub_18197FE14(*v11, v364, v162);
                }

                else
                {
                  *v364 = v163 + 1;
                  v164 = &v364[6 * v163];
                  v164[2] = 0;
                  v164[3] = 0;
                  v164[1] = v162;
                }
              }

              else
              {
                v364 = sub_18197FD9C(*v11, v162);
                v53 = v160;
              }
            }

            else
            {
              v53 = v160;
            }

            v52 = v366;
            v54 = v367;
            v55 = __srcb;
            v109 = v362;
          }

          else
          {
            if (v364)
            {
              v154 = v109;
              sub_18194E5B8(v357, v364);
              v109 = v154;
              v54 = v367;
              v55 = __srcb;
            }

            v364 = 0;
            v107 = 0;
          }

LABEL_372:
          ++v107;
          if (v141 == *(v109 + 52))
          {
            v165 = -1;
          }

          else
          {
            v165 = v141;
          }

          *(v8 + 12) = v165;
          if ((*(v108 + 25) & 0x4000) != 0)
          {
            v166 = *(**(v108 + 8) + 32) + 24 * v141;
            *(v166 + 25) |= 0x40u;
          }

          v365 = v108;
LABEL_378:
          if (!v107)
          {
            v102 += ((*(v109 + 48) & 0x200u) >> 9) ^ 1;
            v167 = v365;
            if ((*(v109 + 48) & 0x200) == 0)
            {
              v167 = v108;
            }

            v365 = v167;
          }

LABEL_244:
          ++v106;
          v108 += 18;
          if (v106 >= *v105)
          {
            goto LABEL_384;
          }
        }
      }

      v107 = 0;
LABEL_384:
      if (v365)
      {
        v103 = v352;
        *v353 = v365[7];
        v168 = *(v365 + 2);
        *v360 = v168;
        v104 = v354;
        if ((v365[6] & 0x48) != 0)
        {
          *(v8 + 1) |= 0x200000u;
        }

        v53 = *(v168 + 96);
        if (v107)
        {
          goto LABEL_459;
        }
      }

      else
      {
        v365 = 0;
        v103 = v352;
        v104 = v354;
        if (v107)
        {
          goto LABEL_459;
        }
      }
    }

    else
    {
      v107 = 0;
    }

    if (v54)
    {
      goto LABEL_459;
    }

    v169 = *v103;
    if (!*v103)
    {
      goto LABEL_394;
    }

    v170 = *(v11 + 39);
    if (!*(v11 + 40))
    {
      if (v52 && v170 != 129)
      {
        v172 = "new";
        for (nn = v52; ; ++nn)
        {
          if (*v172 == *nn)
          {
            if (!*v172)
            {
              v174 = 1;
              goto LABEL_420;
            }
          }

          else if (byte_181A20298[*v172] != byte_181A20298[*nn])
          {
            break;
          }

          ++v172;
        }
      }

      v171 = 0;
      if (!v52 || v170 == 128)
      {
        goto LABEL_421;
      }

      v176 = "old";
      for (i1 = v52; ; ++i1)
      {
        if (*v176 == *i1)
        {
          if (!*v176)
          {
            v174 = 0;
            goto LABEL_420;
          }
        }

        else if (byte_181A20298[*v176] != byte_181A20298[*i1])
        {
          goto LABEL_394;
        }

        ++v176;
      }
    }

    if ((*(v104 + 41) & 4) == 0)
    {
LABEL_394:
      v171 = 0;
      goto LABEL_421;
    }

    if (!v52)
    {
      goto LABEL_419;
    }

    v175 = 0;
    while (2)
    {
      if (*(v52 + v175) == *(*v169 + v175))
      {
        if (!*(v52 + v175))
        {
          goto LABEL_419;
        }

        goto LABEL_406;
      }

      if (byte_181A20298[*(v52 + v175)] == byte_181A20298[*(*v169 + v175)])
      {
LABEL_406:
        ++v175;
        continue;
      }

      break;
    }

    v178 = sub_18195F638(v52, *v103, 0);
    v54 = v367;
    v55 = __srcb;
    if (!v178)
    {
      goto LABEL_394;
    }

LABEL_419:
    v174 = v170 != 129;
LABEL_420:
    *v353 = v174;
    v171 = v169;
LABEL_421:
    if (v52)
    {
      if ((*(v104 + 40) & 0x200) != 0)
      {
        v179 = *(v104 + 16);
        if (v179)
        {
          v180 = "excluded";
          for (i2 = v52; ; ++i2)
          {
            if (*v180 == *i2)
            {
              if (!*v180)
              {
                v171 = *(*(v179 + 64) + 24);
                *v353 = 2;
                break;
              }
            }

            else if (byte_181A20298[*v180] != byte_181A20298[*i2])
            {
              break;
            }

            ++v180;
          }
        }
      }
    }

    if (!v171)
    {
      goto LABEL_458;
    }

    if (v55 && (v182 = *v55, *v55))
    {
      v183 = 0;
      v184 = v356;
      do
      {
        v183 += byte_181A20298[v182];
        v185 = *v184++;
        v182 = v185;
      }

      while (v185);
    }

    else
    {
      LOBYTE(v183) = 0;
    }

    v53 = v171[12];
    ++v102;
    v186 = v171[1];
    v187 = *(v171 + 27);
    v188 = *(v171 + (v183 & 0xF) + 104);
    v189 = v186 + 16 * v188;
    if (*(v189 + 11) == v183)
    {
      v190 = *v189;
      for (i3 = v55; ; ++i3)
      {
        if (*v190 == *i3)
        {
          if (!*v190)
          {
LABEL_454:
            if (v188 == *(v171 + 26))
            {
              v196 = -1;
            }

            else
            {
              v196 = v188;
            }

            if (v196 >= v187)
            {
              goto LABEL_458;
            }

LABEL_518:
            v217 = *v353;
            if (*v353 == 2)
            {
              v218 = v8;
              v219 = v351;
              if (*(v11 + 302) >= 2u)
              {
                v220 = v104;
                v365 = 0;
                *(v8 + 12) = v196;
                *(v8 + 9) = v171;
                v107 = 1;
                v221 = -88;
                goto LABEL_622;
              }

              if ((v196 & 0x80000000) == 0 && (v171[6] & 0x20) != 0)
              {
                if (v196)
                {
                  if (v196 < 5)
                  {
                    v300 = 0;
                    v301 = 0;
                    goto LABEL_822;
                  }

                  if (v196 < 0x11)
                  {
                    v301 = 0;
                    v300 = 0;
                    goto LABEL_817;
                  }

                  v330 = 16;
                  if ((v196 & 0xF) != 0)
                  {
                    v330 = v196 & 0xF;
                  }

                  v300 = v196 - v330;
                  v331 = (v186 + 142);
                  v332 = 0uLL;
                  v333.i64[0] = 0x1000100010001;
                  v333.i64[1] = 0x1000100010001;
                  v334 = v196;
                  v335 = 0uLL;
                  do
                  {
                    v336.i16[0] = *(v331 - 64);
                    v336.i16[1] = *(v331 - 56);
                    v336.i16[2] = *(v331 - 48);
                    v336.i16[3] = *(v331 - 40);
                    v336.i16[4] = *(v331 - 32);
                    v336.i16[5] = *(v331 - 24);
                    v336.i16[6] = *(v331 - 16);
                    v336.i16[7] = *(v331 - 8);
                    v337.i16[0] = *v331;
                    v337.i16[1] = v331[8];
                    v337.i16[2] = v331[16];
                    v337.i16[3] = v331[24];
                    v337.i16[4] = v331[32];
                    v337.i16[5] = v331[40];
                    v337.i16[6] = v331[48];
                    v337.i16[7] = v331[56];
                    v332 = vaddq_s16(vbicq_s8(v333, vshrq_n_u16(v336, 5uLL)), v332);
                    v335 = vaddq_s16(vbicq_s8(v333, vshrq_n_u16(v337, 5uLL)), v335);
                    v334 -= 16;
                    v331 += 128;
                  }

                  while (v330 != v334);
                  v301 = vaddvq_s16(vaddq_s16(v335, v332));
                  v219 = v351;
                  v53 = v171[12];
                  if (v330 >= 5)
                  {
LABEL_817:
                    v338 = v196 & 3;
                    if ((v196 & 3) == 0)
                    {
                      v338 = 4;
                    }

                    v339 = v186 + 16 * v300;
                    v340 = v338 + v300;
                    v300 = v196 - v338;
                    v341 = v301;
                    v342 = (v339 + 46);
                    v343 = v340 - v196;
                    do
                    {
                      v344.i16[0] = *(v342 - 16);
                      v344.i16[1] = *(v342 - 8);
                      v344.i16[2] = *v342;
                      v344.i16[3] = v342[8];
                      v341 = vadd_s16(vbic_s8(0x1000100010001, vshr_n_u16(v344, 5uLL)), v341);
                      v342 += 32;
                      v343 += 4;
                    }

                    while (v343);
                    v301 = vaddv_s16(v341);
                  }

LABEL_822:
                  v345 = v196 - v300;
                  v346 = (v186 + 16 * v300 + 14);
                  do
                  {
                    v347 = *v346;
                    v346 += 8;
                    v301 += ((v347 >> 5) & 1) == 0;
                    --v345;
                  }

                  while (v345);
                }

                else
                {
                  v301 = 0;
                }

                if ((*(v186 + 16 * v196 + 14) & 0x20) != 0)
                {
                  LOWORD(v196) = v196 - v301 + *(v171 + 28);
                }

                else
                {
                  LOWORD(v196) = v301;
                }
              }

              v220 = v104;
              v365 = 0;
              v329 = *(*(v104 + 16) + 72) + v196;
LABEL_828:
              *v353 = v329;
              v107 = 1;
              v221 = -80;
              goto LABEL_622;
            }

            *v360 = v171;
            v218 = v8;
            v219 = v351;
            if (!*(v11 + 40))
            {
              *(v8 + 12) = v196;
              v220 = v104;
              if ((v196 & 0x80000000) != 0)
              {
                v365 = 0;
                v8[1] = 68;
              }

              else
              {
                v306 = 1 << v196;
                if (v196 > 0x1F)
                {
                  v306 = -1;
                }

                v365 = 0;
                if (v217)
                {
                  *(v11 + 61) |= v306;
                }

                else
                {
                  *(v11 + 60) |= v306;
                }
              }

              v107 = 1;
              v221 = 78;
              goto LABEL_622;
            }

            v8[2] = -88;
            *(v8 + 12) = v196;
            v257 = v217 + v217 * *(v171 + 27);
            if ((v196 & 0x80000000) == 0 && (v171[6] & 0x20) != 0)
            {
              v258 = v171[1];
              if (v196)
              {
                if (v196 < 5)
                {
                  v259 = 0;
                  v260 = 0;
                  goto LABEL_806;
                }

                if (v196 < 0x11)
                {
                  v260 = 0;
                  v259 = 0;
                  goto LABEL_801;
                }

                v311 = 16;
                if ((v196 & 0xF) != 0)
                {
                  v311 = v196 & 0xF;
                }

                v259 = v196 - v311;
                v312 = (v258 + 142);
                v313 = 0uLL;
                v314.i64[0] = 0x1000100010001;
                v314.i64[1] = 0x1000100010001;
                v315 = v196;
                v316 = 0uLL;
                do
                {
                  v317.i16[0] = *(v312 - 64);
                  v317.i16[1] = *(v312 - 56);
                  v317.i16[2] = *(v312 - 48);
                  v317.i16[3] = *(v312 - 40);
                  v317.i16[4] = *(v312 - 32);
                  v317.i16[5] = *(v312 - 24);
                  v317.i16[6] = *(v312 - 16);
                  v317.i16[7] = *(v312 - 8);
                  v318.i16[0] = *v312;
                  v318.i16[1] = v312[8];
                  v318.i16[2] = v312[16];
                  v318.i16[3] = v312[24];
                  v318.i16[4] = v312[32];
                  v318.i16[5] = v312[40];
                  v318.i16[6] = v312[48];
                  v318.i16[7] = v312[56];
                  v313 = vaddq_s16(vbicq_s8(v314, vshrq_n_u16(v317, 5uLL)), v313);
                  v316 = vaddq_s16(vbicq_s8(v314, vshrq_n_u16(v318, 5uLL)), v316);
                  v315 -= 16;
                  v312 += 128;
                }

                while (v311 != v315);
                v260 = vaddvq_s16(vaddq_s16(v316, v313));
                if (v311 >= 5)
                {
LABEL_801:
                  v319 = v196 & 3;
                  if ((v196 & 3) == 0)
                  {
                    v319 = 4;
                  }

                  v320 = v258 + 16 * v259;
                  v321 = v319 + v259;
                  v259 = v196 - v319;
                  v322 = v260;
                  v323 = (v320 + 46);
                  v324 = v321 - v196;
                  do
                  {
                    v325.i16[0] = *(v323 - 16);
                    v325.i16[1] = *(v323 - 8);
                    v325.i16[2] = *v323;
                    v325.i16[3] = v323[8];
                    v322 = vadd_s16(vbic_s8(0x1000100010001, vshr_n_u16(v325, 5uLL)), v322);
                    v323 += 32;
                    v324 += 4;
                  }

                  while (v324);
                  v260 = vaddv_s16(v322);
                }

LABEL_806:
                v326 = v196 - v259;
                v327 = (v258 + 16 * v259 + 14);
                do
                {
                  v328 = *v327;
                  v327 += 8;
                  v260 += ((v328 >> 5) & 1) == 0;
                  --v326;
                }

                while (v326);
              }

              else
              {
                v260 = 0;
              }

              if ((*(v258 + 16 * v196 + 14) & 0x20) != 0)
              {
                LOWORD(v196) = v196 - v260 + *(v171 + 28);
              }

              else
              {
                LOWORD(v196) = v260;
              }
            }

            v220 = v104;
            v365 = 0;
            v329 = *(v104 + 16) + v257 + v196 + 1;
            goto LABEL_828;
          }
        }

        else if (byte_181A20298[*v190] != byte_181A20298[*i3])
        {
          break;
        }

        ++v190;
      }
    }

    v188 = 0;
    if (v187 <= 1)
    {
      v192 = 1;
    }

    else
    {
      v192 = v187;
    }

    do
    {
      v193 = v186 + 16 * v188;
      if (*(v193 + 11) == v183)
      {
        v194 = *v193;
        for (i4 = v55; ; ++i4)
        {
          if (*v194 == *i4)
          {
            if (!*v194)
            {
              goto LABEL_454;
            }
          }

          else if (byte_181A20298[*v194] != byte_181A20298[*i4])
          {
            break;
          }

          ++v194;
        }
      }

      ++v188;
    }

    while (v188 != v192);
    v211 = v55;
    v212 = "_ROWID_";
    while (2)
    {
      if (*v211 != *v212)
      {
        if (byte_181A20298[*v211] != byte_181A20298[*v212])
        {
          v213 = v55;
          for (i5 = "ROWID"; ; ++i5)
          {
            if (*v213 == *i5)
            {
              if (!*v213)
              {
                goto LABEL_516;
              }
            }

            else if (byte_181A20298[*v213] != byte_181A20298[*i5])
            {
              v215 = v55;
              for (i6 = "OID"; ; ++i6)
              {
                if (*v215 == *i6)
                {
                  if (!*v215)
                  {
                    goto LABEL_516;
                  }
                }

                else if (byte_181A20298[*v215] != byte_181A20298[*i6])
                {
                  goto LABEL_458;
                }

                ++v215;
              }
            }

            ++v213;
          }
        }

        goto LABEL_502;
      }

      if (*v211)
      {
LABEL_502:
        ++v211;
        ++v212;
        continue;
      }

      break;
    }

LABEL_516:
    if ((*(v171 + 49) & 2) == 0)
    {
      v196 = -1;
      if (v187 > -1)
      {
        goto LABEL_518;
      }
    }

LABEL_458:
    v107 = 0;
LABEL_459:
    if (v107 || v102 < 1 || !v365)
    {
      goto LABEL_483;
    }

    v197 = *(v104 + 40);
    if ((v197 & 0x28) != 0)
    {
      goto LABEL_485;
    }

    v198 = v55;
    v199 = "_ROWID_";
    while (2)
    {
      if (*v198 != *v199)
      {
        if (byte_181A20298[*v198] != byte_181A20298[*v199])
        {
          v200 = v55;
          for (i7 = "ROWID"; ; ++i7)
          {
            if (*v200 == *i7)
            {
              if (!*v200)
              {
                goto LABEL_478;
              }
            }

            else if (byte_181A20298[*v200] != byte_181A20298[*i7])
            {
              v202 = v55;
              for (i8 = "OID"; ; ++i8)
              {
                if (*v202 == *i8)
                {
                  if (!*v202)
                  {
                    goto LABEL_478;
                  }
                }

                else if (byte_181A20298[*v202] != byte_181A20298[*i8])
                {
                  goto LABEL_485;
                }

                ++v202;
              }
            }

            ++v200;
          }
        }

        goto LABEL_465;
      }

      if (*v198)
      {
LABEL_465:
        ++v198;
        ++v199;
        continue;
      }

      break;
    }

LABEL_478:
    if ((*(*(v365 + 2) + 49) & 2) == 0 || (*(v365 + 25) & 0x4000) != 0)
    {
      if ((*(v365 + 25) & 0x4000) == 0)
      {
        *(v8 + 12) = -1;
      }

      v8[1] = 68;
      v107 = v102;
LABEL_483:
      if (!v107)
      {
        v197 = *(v104 + 40);
        goto LABEL_485;
      }

      v220 = v104;
      if (v107 == 1)
      {
        v221 = -88;
        v218 = v8;
        v219 = v351;
        goto LABEL_622;
      }

      v227 = 0;
      v218 = v8;
      v219 = v351;
      v226 = v350;
      v228 = v364;
      if (v364)
      {
LABEL_547:
        if (*v228 == v107 - 1)
        {
          v229 = *(v218 + 1);
          if ((v229 & 0x800000) != 0)
          {
            *(v218 + 1) = v229 & 0xFF7FFFFF;
            v104 = v220;
          }

          else
          {
            v230 = *(v218 + 2);
            v104 = v220;
            if (v230)
            {
              sub_1819439E0(v357, v230);
            }

            *(v218 + 2) = 0;
            v231 = *(v218 + 3);
            if (v231)
            {
              sub_1819439E0(v357, v231);
            }

            *(v218 + 3) = 0;
          }

          v252 = *(v218 + 12);
          v253 = sub_181929E8C(*v11, 0x50uLL, 0x1032040B79D87BDLL);
          if (v253)
          {
            *(v253 + 2) = 0u;
            *(v253 + 3) = 0u;
            *(v253 + 4) = 0u;
            *v253 = 0u;
            *(v253 + 1) = 0u;
            *v253 = -88;
            *(v253 + 26) = -1;
            *(v253 + 10) = 1;
            *(v253 + 11) = v365[7];
            *(v253 + 12) = v252;
            v253[9] = *(v365 + 2);
            *(v253 + 1) |= 0x200000u;
            v254 = v364;
            v255 = *v364;
            if (v364[1] <= *v364)
            {
              v254 = sub_18197FE14(*v11, v364, v253);
            }

            else
            {
              *v364 = v255 + 1;
              v256 = &v364[6 * v255];
              v256[2] = 0;
              v256[3] = 0;
              v256[1] = v253;
            }
          }

          else
          {
            v254 = v364;
          }

          *v218 = -84;
          *(v218 + 1) = "coalesce";
          *(v218 + 4) = v254;
          goto LABEL_652;
        }

        sub_18194E5B8(v357, v228);
        v54 = v367;
      }

LABEL_555:
      if (v54)
      {
        sub_181910730(v11, "%s: %s.%s.%s");
      }

      else if (v226)
      {
        if (v227 && (v349[4] & 0x80) != 0)
        {
          sub_181910730(v11, "%s: %s - should this be a string literal in single-quotes?");
        }

        else
        {
          sub_181910730(v11, "%s: %s");
        }
      }

      else
      {
        sub_181910730(v11, "%s: %s.%s");
      }

      if (v218)
      {
        v261 = v218;
        while (1)
        {
          v262 = *(v261 + 1);
          if ((v262 & 3) == 0)
          {
            v263 = *(v261 + 14);
            if (v263 > 0)
            {
              break;
            }
          }

          v261 = *(v261 + 2);
          if (!v261)
          {
            goto LABEL_621;
          }
        }

        if ((v262 & 0x40000000) == 0)
        {
          *(*v11 + 21) = v263;
        }
      }

LABEL_621:
      *(v11 + 43) |= 8u;
      ++*(v219 + 36);
      v107 = v107 == 1;
      v221 = 122;
LABEL_622:
      if ((v218[6] & 0x81) == 0)
      {
        v264 = *(v218 + 2);
        if (v264)
        {
          sub_1819439E0(v357, v264);
        }

        *(v218 + 2) = 0;
        v265 = *(v218 + 3);
        if (v265)
        {
          sub_1819439E0(v357, v265);
        }

        *(v218 + 3) = 0;
        *(v218 + 1) |= 0x800000u;
      }

      if (v365)
      {
        v266 = *(v218 + 12);
        if ((v266 & 0x80000000) != 0)
        {
          *(v365 + 25) |= 0x8000u;
        }

        else
        {
          v267 = *v360;
          if ((*(*v360 + 48) & 0x60) != 0 && (*(*(v267 + 8) + 16 * v266 + 14) & 0x60) != 0)
          {
            v268 = *(v267 + 54);
            if (v268 <= 63)
            {
              v269 = ~(-1 << v268);
            }

            else
            {
              v269 = -1;
            }
          }

          else
          {
            if (v266 >= 0x3F)
            {
              LOBYTE(v266) = 63;
            }

            v269 = 1 << v266;
          }

          *(v365 + 4) |= v269;
        }
      }

      *v218 = v221;
      v104 = v220;
      if (!v107)
      {
        return 2;
      }

      goto LABEL_652;
    }

LABEL_485:
    v204 = v55;
    if (!v52 && (v197 & 0x80) != 0)
    {
      v205 = *(v104 + 16);
      v206 = *v205;
      if (v206 >= 1)
      {
        for (i9 = 0; i9 != v206; ++i9)
        {
          v208 = &v205[6 * i9 + 2];
          if ((*(v208 + 17) & 3) == 0)
          {
            if (*(v208 + 8))
            {
              if (v204)
              {
                v209 = *(v208 + 8);
                for (i10 = v204; ; ++i10)
                {
                  if (*v209 == *i10)
                  {
                    if (!*v209)
                    {
                      goto LABEL_521;
                    }
                  }

                  else if (byte_181A20298[*v209] != byte_181A20298[*i10])
                  {
                    break;
                  }

                  ++v209;
                }
              }
            }

            else if (!v204)
            {
LABEL_521:
              v222 = *v208;
              v223 = *(*v208 + 4);
              if ((v197 & 1) == 0 && (v223 & 0x10) != 0)
              {
                sub_181910730(v11, "misuse of aliased aggregate %s");
                return 2;
              }

              v219 = v351;
              if ((v223 & 0x8000) != 0 && (v104 != v351 || (v197 & 0x4000) == 0))
              {
                sub_181910730(v11, "misuse of aliased window function %s");
                return 2;
              }

              v224 = *v222;
              if (v224 == 176)
              {
                v224 = v222[2];
              }

              v218 = v8;
              if (v224 == 177)
              {
LABEL_533:
                if (**(v222 + 4) != 1)
                {
                  sub_181910730(v11, "row value misused", v348);
                  return 2;
                }
              }

              else if (v224 == 139)
              {
                v222 = *(v222 + 4);
                goto LABEL_533;
              }

              sub_1818EC294(v11, v205, i9, v8, v355);
              if (*(v11 + 302) >= 2u)
              {
                v225 = v11[51];
                if (v225)
                {
                  while (*v225 != v8)
                  {
                    v225 = v225[3];
                    if (!v225)
                    {
                      goto LABEL_652;
                    }
                  }

                  *v225 = 0;
                }
              }

LABEL_652:
              if ((*v11)[66])
              {
                v271 = *v218;
                if (v271 == 168 || v271 == 78)
                {
                  if (v53)
                  {
                    v272 = *(v104 + 8);
                    v273 = ((*v11)[4] + 24);
                    v274 = -1;
                    do
                    {
                      v275 = *v273;
                      v273 += 4;
                      ++v274;
                    }

                    while (v275 != v53);
                    if (v271 == 78)
                    {
                      goto LABEL_659;
                    }

                    v279 = *v272;
                    if (v279 >= 1)
                    {
                      v103 = v272 + 6;
                      while (*v353 != v103[3])
                      {
                        v103 += 18;
                        if (!--v279)
                        {
                          goto LABEL_669;
                        }
                      }

LABEL_659:
                      v276 = *v103;
                      if (*v103)
                      {
                        v277 = *(v218 + 12);
                        if ((v277 & 0x80000000) != 0 && (v277 = *(v276 + 52), v277 < 0))
                        {
                          v278 = "ROWID";
                        }

                        else
                        {
                          v278 = *(*(v276 + 8) + 16 * v277);
                        }

                        if (sub_1818DEFEC(v11, *v276, v278, v274) == 2)
                        {
                          *v218 = 122;
                        }
                      }
                    }
                  }
                }
              }

LABEL_669:
              ++*(v219 + 32);
              for (result = 1; v219 != v104; ++*(v219 + 32))
              {
                v219 = *(v219 + 24);
              }

              return result;
            }
          }
        }
      }
    }

    v104 = *(v104 + 24);
    ++v355;
    v55 = v204;
    if (v104)
    {
      continue;
    }

    break;
  }

  if (v52)
  {
    v220 = 0;
    v107 = 0;
    v226 = 0;
    v227 = 1;
    v218 = v8;
    v219 = v351;
    v228 = v364;
    if (v364)
    {
      goto LABEL_547;
    }

    goto LABEL_555;
  }

  v249 = *(v8 + 1);
  if ((v249 & 0x80) != 0)
  {
    if (*(v357 + 197))
    {
      goto LABEL_780;
    }

    if (*(v351 + 42))
    {
      if ((*(v357 + 48) & 0x50000001) == 0x40000001)
      {
        goto LABEL_780;
      }

      v270 = 29;
    }

    else
    {
      v270 = 30;
    }

    if (((*(v357 + 48) >> v270) & 1) == 0)
    {
      goto LABEL_597;
    }

LABEL_780:
    v308 = v11[2];
    if (v308)
    {
      v309 = v204 ? strlen(v204) & 0x3FFFFFFF : 0;
      v310 = sub_181929E8C(v357, (v309 + 9), 4199080675);
      if (v310)
      {
        *v310 = v308[42];
        v308[42] = v310;
        memcpy(v310 + 1, __srcb, (v309 + 1));
      }
    }

    *v8 = 118;
    *(v8 + 9) = 0;
    return 1;
  }

LABEL_597:
  v219 = v351;
  if ((v249 & 0x4000800) != 0)
  {
LABEL_598:
    v220 = 0;
    v107 = 0;
    v227 = 1;
    v226 = 1;
    v218 = v8;
    v228 = v364;
    if (v364)
    {
      goto LABEL_547;
    }

    goto LABEL_555;
  }

  v302 = *(v8 + 1);
  v303 = "true";
  v304 = v302;
  while (2)
  {
    if (*v304 == *v303)
    {
      if (!*v304)
      {
        v305 = 0x10000000;
        goto LABEL_776;
      }

      goto LABEL_755;
    }

    if (byte_181A20298[*v304] == byte_181A20298[*v303])
    {
LABEL_755:
      ++v304;
      ++v303;
      continue;
    }

    break;
  }

  v307 = "false";
  while (2)
  {
    if (*v302 != *v307)
    {
      if (byte_181A20298[*v302] != byte_181A20298[*v307])
      {
        goto LABEL_598;
      }

      goto LABEL_772;
    }

    if (*v302)
    {
LABEL_772:
      ++v302;
      ++v307;
      continue;
    }

    break;
  }

  v305 = 0x20000000;
LABEL_776:
  *v8 = -85;
  *(v8 + 1) = v305 | v249;
  return 1;
}

uint64_t sub_1818B43B4(unsigned __int8 **a1, uint64_t a2, int *a3, _BYTE *a4)
{
  v30 = 0;
  v28 = *a1;
  if (*a3 < 1)
  {
    return sub_181961BC4(v28, a2, a3, a4);
  }

  v7 = 0;
  v27 = **(a2 + 32);
  for (i = a3 + 2; ; i += 6)
  {
    v10 = *i;
    if (*i)
    {
      break;
    }

LABEL_7:
    if (++v7 >= *a3)
    {
      return sub_181961BC4(v28, a2, a3, a4);
    }
  }

  v11 = *i;
  while (1)
  {
    v12 = *(v11 + 1);
    if ((v12 & 0x82000) == 0)
    {
      break;
    }

    if ((v12 & 0x80000) != 0)
    {
      v11 = *(*(v11 + 4) + 8);
      if (!v11)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (*v11 != 114)
      {
        break;
      }

      v11 = *(v11 + 2);
      if (!v11)
      {
        goto LABEL_7;
      }
    }
  }

  if (*a4 == 71)
  {
    goto LABEL_4;
  }

  if (*v11 != 60 || (v13 = *(a2 + 32), v14 = *v13, v14 < 1))
  {
LABEL_3:
    v30 = 0;
    goto LABEL_4;
  }

  v15 = 0;
  v16 = *(v11 + 1);
  v17 = v13 + 2;
  while (1)
  {
    v21 = &v17[6 * v15];
    if ((*(v21 + 17) & 3) == 0)
    {
      v22 = *(v21 + 1);
      if (v22)
      {
        if (v16)
        {
          for (j = *(v11 + 1); ; ++j)
          {
            if (*v22 == *j)
            {
              if (!*v22)
              {
                goto LABEL_38;
              }
            }

            else if (byte_181A20298[*v22] != byte_181A20298[*j])
            {
              goto LABEL_29;
            }

            ++v22;
          }
        }

        goto LABEL_29;
      }

      if (!v16)
      {
        break;
      }
    }

LABEL_29:
    if (++v15 == v14)
    {
      goto LABEL_3;
    }
  }

LABEL_38:
  v9 = v15 + 1;
  v30 = v15 + 1;
  if ((v15 & 0x80000000) == 0)
  {
LABEL_6:
    *(i + 10) = v9;
    goto LABEL_7;
  }

LABEL_4:
  if (!sub_18195A9F8(v11, &v30, 0))
  {
    *(i + 10) = 0;
    if (sub_18195ECC4(a1, v10))
    {
      return 1;
    }

    v18 = *(a2 + 32);
    if (*v18 >= 1)
    {
      v19 = 0;
      v20 = 2;
      do
      {
        if (!sub_181959260(0, v10, *&v18[v20], 0xFFFFFFFFLL))
        {
          if (*(a2 + 112))
          {
            v33 = 0;
            v34 = a2;
            v31[0] = 0;
            v32 = 0u;
            v31[1] = sub_181961CD4;
            sub_181959BA0(v31, v10);
          }

          *(i + 10) = v19 + 1;
        }

        ++v19;
        v18 = *(a2 + 32);
        v20 += 6;
      }

      while (v19 < *v18);
    }

    goto LABEL_7;
  }

  v9 = v30;
  if ((v30 - 0x10000) > 0xFFFF0000)
  {
    goto LABEL_6;
  }

  sub_181910730(v28, "%r %s BY term out of range - should be between 1 and %d", (v7 + 1), a4, v27);
  while (1)
  {
    v25 = *(v11 + 1);
    if ((v25 & 3) == 0)
    {
      v26 = *(v11 + 14);
      if (v26 > 0)
      {
        break;
      }
    }

    v11 = *(v11 + 2);
    if (!v11)
    {
      return 1;
    }
  }

  if ((v25 & 0x40000000) == 0)
  {
    *(*v28 + 84) = v26;
  }

  return 1;
}

uint64_t *sub_1818B4688(uint64_t *result, uint64_t a2)
{
  v2 = *(a2 + 4);
  if ((v2 & 0x80) == 0)
  {
    *(a2 + 4) = v2 | 0x80;
    v3 = *(a2 + 40);
    v4 = *v3;
    if (*v3 >= 1)
    {
      v5 = 0;
      v6 = *result;
      v7 = (v3 + 18);
      do
      {
        v8 = *(v7 - 6);
        if ((*(v8 + 49) & 0x40) != 0 && (*(v7 - 39) & 4) != 0)
        {
          result = sub_181961164(v6, v8, **v7, 64);
          v4 = *v3;
        }

        ++v5;
        v7 += 9;
      }

      while (v5 < v4);
    }
  }

  return result;
}

char **sub_1818B4720(void *a1, unsigned __int8 *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *a1;
  while (1)
  {
    v5 = *a2;
    if (v5 == 176)
    {
      v5 = a2[2];
    }

    if (v5 > 171)
    {
      switch(v5)
      {
        case 172:
          if (a2[1] != 88)
          {
            goto LABEL_24;
          }

LABEL_19:
          v3 = (*(a2 + 4) + 8);
          break;
        case 173:
LABEL_4:
          v3 = (a2 + 16);
          break;
        case 177:
          goto LABEL_19;
        default:
          goto LABEL_24;
      }

      v4 = *v3;
      goto LABEL_6;
    }

    if (v5 <= 113)
    {
      if (v5 == 36)
      {
        goto LABEL_4;
      }

      if (v5 == 78)
      {
        break;
      }

      goto LABEL_24;
    }

    if (v5 == 170)
    {
      if (*(a2 + 9))
      {
        break;
      }

      goto LABEL_24;
    }

    if (v5 == 114)
    {
      v14 = a1;
      result = sub_18194E6B8(a1, *(v2 + 100), 0, *(a2 + 1));
      if (!result)
      {
        return result;
      }

      goto LABEL_65;
    }

    if (v5 == 168)
    {
      break;
    }

LABEL_24:
    v6 = *(a2 + 1);
    if ((v6 & 0x200) == 0)
    {
      return 0;
    }

    v4 = *(a2 + 2);
    if (!v4 || (v4[5] & 2) == 0)
    {
      v4 = *(a2 + 3);
      if ((v6 & 0x1000) == 0)
      {
        v7 = *(a2 + 4);
        if (v7)
        {
          if (!*(v2 + 103))
          {
            v10 = *v7;
            v8 = (v7 + 2);
            v9 = v10;
            if (v10 >= 1)
            {
              while (((*v8)[5] & 2) == 0)
              {
                v8 += 3;
                if (!--v9)
                {
                  goto LABEL_6;
                }
              }

              v4 = *v8;
            }
          }
        }
      }
    }

LABEL_6:
    a2 = v4;
    if (!v4)
    {
      return 0;
    }
  }

  v11 = *(a2 + 12);
  if ((v11 & 0x80000000) != 0)
  {
    return 0;
  }

  v12 = *(*(a2 + 9) + 8) + 16 * v11;
  v13 = *(v12 + 14);
  if ((v13 & 0x200) == 0)
  {
    v14 = a1;
    result = *(v2 + 16);
    if (!result)
    {
      return result;
    }

    goto LABEL_65;
  }

  v16 = *v12 - 1;
    ;
  }

  if ((v13 & 4) != 0)
  {
      ;
    }
  }

  v19 = (v16 + 1);
  v20 = *(v16 + 1);
  if (v20)
  {
    v21 = 0;
    v22 = (v16 + 2);
    do
    {
      v21 = -1640531535 * (v21 + (v20 & 0xDF));
      v23 = *v22++;
      v20 = v23;
    }

    while (v23);
  }

  else
  {
    v21 = 0;
  }

  v24 = (v2 + 640);
  v25 = *(v2 + 656);
  if (v25)
  {
    v24 = (v25 + 16 * (v21 % *v24));
    v26 = *v24;
    if (*v24)
    {
      goto LABEL_52;
    }

LABEL_62:
    v27 = &qword_1EA831A30;
LABEL_63:
    v30 = v27[2];
    if (!v30)
    {
      return 0;
    }
  }

  else
  {
    v26 = *(v2 + 644);
    if (!v26)
    {
      goto LABEL_62;
    }

LABEL_52:
    v27 = (v24 + 2);
    do
    {
      v27 = *v27;
      if (v21 == *(v27 + 8))
      {
        v28 = v27[3];
        for (i = v19; ; ++i)
        {
          if (*v28 == *i)
          {
            if (!*v28)
            {
              goto LABEL_63;
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
      return 0;
    }
  }

  v14 = a1;
  v31 = v30 + 40 * *(v2 + 100);
  result = (v31 - 40);
  if (v31 == 40)
  {
    return result;
  }

LABEL_65:
  if (result[3])
  {
    return result;
  }

  v32 = v14;
  v33 = *(*v14 + 100);
  v34 = result;
  v35 = sub_18194E6B8(v32, v33, result, *result);
  result = v34;
  if (v35)
  {
    return result;
  }

  return 0;
}

uint64_t *sub_1818B49F8(uint64_t *result, int a2, uint64_t a3, uint64_t a4)
{
  if (*(*result + 103))
  {
    if (a4 != -11)
    {
      return sub_1818A3B68(*result, a4, a3, a4);
    }
  }

  else
  {
    if (a2 < 0)
    {
      a2 = *(result + 36) - 1;
    }

    v4 = result[17] + 40 * a2;
    if ((a4 & 0x80000000) != 0 && !*(v4 + 1))
    {
      if (a4 == -3)
      {
        *(v4 + 16) = a3;
        *(v4 + 1) = -3;
      }

      else if (a3)
      {
        *(v4 + 16) = a3;
        *(v4 + 1) = a4;
        if (a4 == -11)
        {
          ++*(a3 + 24);
        }
      }
    }

    else
    {
      return sub_18194CB90(result, v4, a3, a4);
    }
  }

  return result;
}

uint64_t sub_1818B4A80(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 96);
  if (*(a2 + 8))
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    return result;
  }

  v5 = a3;
  v7 = result;
  v52 = 0;
  v8 = (*(result + 60) + 1);
  *(result + 60) = v8;
  *(a2 + 8) = v8;
  v9 = sub_1818E7DFC(result);
  result = sub_18195A9F8(*(v3 + 16), &v52, v7);
  if (!result)
  {
    if (*(v7 + 16))
    {
      v14 = *(v3 + 16);
      result = sub_1818B8080(v7, v14, v8);
      if (result != v8)
      {
        v15 = result;
        if (!v14)
        {
          goto LABEL_53;
        }

        while (1)
        {
          v16 = *(v14 + 1);
          if ((v16 & 0x82000) == 0)
          {
            break;
          }

          if ((v16 & 0x80000) != 0)
          {
            v14 = *(*(v14 + 4) + 8);
            if (!v14)
            {
              goto LABEL_53;
            }
          }

          else
          {
            if (*v14 != 114)
            {
              break;
            }

            v14 = *(v14 + 2);
            if (!v14)
            {
              goto LABEL_53;
            }
          }
        }

        if ((v16 & 0x400000) != 0 || *v14 == 176)
        {
          v32 = 80;
        }

        else
        {
LABEL_53:
          v32 = 81;
        }

        result = *(v7 + 16);
        v33 = *(result + 144);
        if (*(result + 148) <= v33)
        {
          result = sub_18194C8AC(result, v32, v15, v8, 0);
        }

        else
        {
          *(result + 144) = v33 + 1;
          v34 = *(result + 136) + 40 * v33;
          *v34 = v32;
          *(v34 + 2) = 0;
          *(v34 + 4) = v15;
          *(v34 + 8) = v8;
          *(v34 + 1) = 0;
          *(v34 + 12) = 0;
          *(v34 + 28) = 0;
          *(v34 + 20) = 0;
          *(v34 + 36) = 0;
        }
      }
    }

    v35 = *(v9 + 144);
    if (*(v9 + 148) <= v35)
    {
      result = sub_18194C8AC(v9, 13, v8, 0, 0);
    }

    else
    {
      *(v9 + 144) = v35 + 1;
      v36 = *(v9 + 136) + 40 * v35;
      *v36 = 13;
      *(v36 + 4) = v8;
      *(v36 + 8) = 0u;
      *(v36 + 24) = 0u;
    }

    v37 = *(v9 + 144);
    if (*(v9 + 148) > v37)
    {
      *(v9 + 144) = v37 + 1;
      v18 = *(v9 + 136) + 40 * v37;
      *v18 = 17;
      *(v18 + 4) = v8;
LABEL_62:
      *(v18 + 8) = v5;
      *(v18 + 12) = 0;
      *(v18 + 28) = 0;
      *(v18 + 20) = 0;
      *(v18 + 36) = 0;
      v38 = *(v3 + 24);
      if (!v38)
      {
        return result;
      }

      goto LABEL_67;
    }

    v23 = v9;
    v24 = 17;
    v25 = v8;
LABEL_65:
    result = sub_18194C8AC(v23, v24, v25, v5, 0);
    goto LABEL_66;
  }

  v10 = v52;
  v11 = *(v9 + 144);
  if (*(v9 + 148) > v11)
  {
    *(v9 + 144) = v11 + 1;
    v12 = *(v9 + 136) + 40 * v11;
    *v12 = 71;
    *(v12 + 4) = v10;
    *(v12 + 8) = v8;
    *(v12 + 12) = 0;
    *(v12 + 28) = 0;
    *(v12 + 20) = 0;
    *(v12 + 36) = 0;
    if (v10)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

  result = sub_18194C8AC(v9, 71, v52, v8, 0);
  if (!v10)
  {
LABEL_24:
    v17 = *(v9 + 144);
    if (*(v9 + 148) > v17)
    {
      *(v9 + 144) = v17 + 1;
      v18 = *(v9 + 136) + 40 * v17;
      *v18 = 9;
      goto LABEL_62;
    }

    v23 = v9;
    v24 = 9;
    v25 = 0;
    goto LABEL_65;
  }

LABEL_8:
  if ((v10 & 0x80000000) != 0)
  {
    goto LABEL_66;
  }

  v13 = *(a2 + 2);
  if (v10 >= 8)
  {
    v19 = 40;
    if (v10 < 0x100)
    {
      v21 = v10;
      if (v10 < 0x10)
      {
LABEL_39:
        LOBYTE(v27) = v21;
        goto LABEL_40;
      }
    }

    else
    {
      v20 = v10;
      do
      {
        v19 += 40;
        v21 = v20 >> 4;
        v22 = v20 > 0xFFF;
        v20 >>= 4;
      }

      while (v22);
      if (v21 < 0x10)
      {
        goto LABEL_39;
      }
    }

    do
    {
      v19 += 10;
      v27 = v21 >> 1;
      v22 = v21 > 0x1F;
      v21 >>= 1;
    }

    while (v22);
    goto LABEL_40;
  }

  if (v10 == 1)
  {
    if (v13 <= 0)
    {
LABEL_66:
      v38 = *(v3 + 24);
      if (!v38)
      {
        return result;
      }

      goto LABEL_67;
    }

    v29 = 0;
    goto LABEL_97;
  }

  v19 = 40;
  v26 = v10;
  do
  {
    v19 -= 10;
    LOBYTE(v27) = 2 * v26;
    v28 = v26 >= 4;
    v26 *= 2;
  }

  while (!v28);
LABEL_40:
  if (v13 <= (v19 + word_181A27AA2[v27 & 7] - 10))
  {
    goto LABEL_66;
  }

  if (v10 >= 8)
  {
    v51 = 40;
    if (v10 >= 0x100)
    {
      v30 = v10;
      do
      {
        v51 += 40;
        v10 = v30 >> 4;
        v22 = v30 > 0xFFF;
        v30 >>= 4;
      }

      while (v22);
    }

    if (v10 < 0x10)
    {
      LOBYTE(v31) = v10;
    }

    else
    {
      do
      {
        v51 += 10;
        v31 = v10 >> 1;
        v22 = v10 > 0x1F;
        v10 >>= 1;
      }

      while (v22);
    }
  }

  else
  {
    v51 = 40;
    do
    {
      v51 -= 10;
      LOBYTE(v31) = 2 * v10;
      v28 = v10 >= 4;
      v10 *= 2;
    }

    while (!v28);
  }

  v29 = v51 + word_181A27AA2[v31 & 7] - 10;
LABEL_97:
  *(a2 + 2) = v29;
  *(a2 + 4) |= 0x4000u;
  v38 = *(v3 + 24);
  if (!v38)
  {
    return result;
  }

LABEL_67:
  v39 = *(v7 + 60);
  v40 = (v39 + 1);
  *(a2 + 12) = v40;
  v41 = v39 + 2;
  *(v7 + 60) = v39 + 2;
  if (*(v7 + 16))
  {
    result = sub_1818B8080(v7, v38, v40);
    if (result != v40)
    {
      v42 = result;
      while (1)
      {
        v43 = *(v38 + 1);
        if ((v43 & 0x82000) == 0)
        {
          break;
        }

        if ((v43 & 0x80000) != 0)
        {
          v38 = *(*(v38 + 4) + 8);
          if (!v38)
          {
            goto LABEL_79;
          }
        }

        else
        {
          if (*v38 != 114)
          {
            break;
          }

          v38 = *(v38 + 2);
          if (!v38)
          {
            goto LABEL_79;
          }
        }
      }

      if ((v43 & 0x400000) != 0 || *v38 == 176)
      {
        v44 = 80;
        goto LABEL_80;
      }

LABEL_79:
      v44 = 81;
LABEL_80:
      result = *(v7 + 16);
      v45 = *(result + 144);
      if (*(result + 148) <= v45)
      {
        result = sub_18194C8AC(result, v44, v42, v40, 0);
      }

      else
      {
        *(result + 144) = v45 + 1;
        v46 = *(result + 136) + 40 * v45;
        *v46 = v44;
        *(v46 + 2) = 0;
        *(v46 + 4) = v42;
        *(v46 + 8) = v40;
        *(v46 + 1) = 0;
        *(v46 + 12) = 0;
        *(v46 + 28) = 0;
        *(v46 + 20) = 0;
        *(v46 + 36) = 0;
      }
    }
  }

  v47 = *(v9 + 144);
  if (*(v9 + 148) <= v47)
  {
    result = sub_18194C8AC(v9, 13, v40, 0, 0);
  }

  else
  {
    *(v9 + 144) = v47 + 1;
    v48 = *(v9 + 136) + 40 * v47;
    *v48 = 13;
    *(v48 + 4) = v40;
    *(v48 + 8) = 0u;
    *(v48 + 24) = 0u;
  }

  v49 = *(v9 + 144);
  if (*(v9 + 148) <= v49)
  {

    return sub_18194C8AC(v9, 160, v8, v41, v40);
  }

  else
  {
    *(v9 + 144) = v49 + 1;
    v50 = *(v9 + 136) + 40 * v49;
    *v50 = 160;
    *(v50 + 4) = v8;
    *(v50 + 8) = v41;
    *(v50 + 12) = v40;
    *(v50 + 24) = 0;
    *(v50 + 32) = 0;
    *(v50 + 16) = 0;
  }

  return result;
}

uint64_t sub_1818B507C(int32x2_t *a1, unsigned int *a2, unsigned __int8 *a3, int *a4, unsigned int *a5, uint64_t a6, int a7, unsigned int a8)
{
  v9 = a7;
  v10 = a2;
  v11 = a1[2];
  v12 = *a1;
  v251 = 0;
  v252 = 0;
  if (a4)
  {
    if (*a4 >= 64)
    {
      v9 = a7 & 0x5EFF | 0x2000;
    }

    else
    {
      v9 = a7;
    }

    if (*a4 >= 64)
    {
      v13 = 0;
    }

    else
    {
      v13 = a4;
    }
  }

  else
  {
    v13 = 0;
  }

  if (*a2 > 64)
  {
    sub_181910730(a1, "at most %d tables in a join", 64);
    return 0;
  }

  v231 = v13;
  if ((v9 & 0x20) != 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = *a2;
  }

  v16 = ((0x7800000000 * v15 + 0x35F00000000) >> 32) & 0xFFFFFFFFFFFFFFF8;
  v17 = sub_181929E8C(v12, v16 + 104, 0x10B204050C585DFLL);
  v18 = v17;
  if (*(v12 + 103))
  {
    if (v17)
    {
      sub_181929C84(v12, v17);
    }

    return 0;
  }

  *v17 = a1;
  v17[1] = v10;
  v17[2] = v231;
  v17[3] = a5;
  v17[5] = -1;
  *(v17 + 64) = v15;
  v19 = a1[9].i32[0] - 1;
  a1[9].i32[0] = v19;
  *(v17 + 12) = v19;
  *(v17 + 13) = v19;
  *(v17 + 30) = v9;
  *(v17 + 31) = a8;
  *(v17 + 14) = a1[3].i16[2];
  v17[4] = a6;
  *(v17 + 65) = 0u;
  *(v17 + 81) = 0u;
  v17[12] = 0;
  v222 = v17 + 107;
  bzero(v17 + 107, 120 * v15 + 104);
  v245 = v18 + 149;
  v248 = v18;
  *(v18 + 596) = 0xFFFFFF9D00000000;
  v20 = v18 + v16;
  v249 = (v18 + 13);
  v250 = v20;
  *(v20 + 8) = v18 + v16 + 80;
  *(v20 + 26) = 0;
  *(v20 + 28) = 3;
  *(v20 + 12) = 0;
  *(v18 + 121) = 0;
  v18[13] = v18;
  v18[14] = 0;
  *(v18 + 33) = 0;
  *(v18 + 124) = 0x800000000;
  v18[17] = v18 + 18;
  v235 = (v18 + 13);
  sub_18196A914((v18 + 13), a3, 44);
  v226 = v12;
  v227 = v15;
  v223 = v11;
  v232 = v10;
  v229 = v18;
  v224 = a8;
  v225 = v9;
  if (v15)
  {
    v21 = 0;
    v240 = v10 + 2;
    v242 = v18 + 75;
    v22 = a1;
    do
    {
      v23 = &v240[18 * v21];
      v24 = v23[7];
      v25 = *v245;
      *v245 = v25 + 1;
      *(v242 + v25) = v24;
      if ((*(v23 + 25) & 8) != 0)
      {
        v26 = *(v23 + 5);
        if (v26)
        {
          if (*v26 >= 1)
          {
            v27 = 0;
            v28 = 0;
            v29 = *(v23 + 2);
            while (v28 < *(v29 + 54))
            {
              v30 = v28 << 32;
              v31 = *(v29 + 54) - v28;
              v32 = (*(v29 + 8) + 16 * v28 + 14);
              while (1)
              {
                v33 = *v32;
                v32 += 8;
                if ((v33 & 2) != 0)
                {
                  break;
                }

                v30 += 0x100000000;
                LODWORD(v28) = v28 + 1;
                if (!--v31)
                {
                  goto LABEL_19;
                }
              }

              v237 = v29;
              v34 = sub_181929E8C(*v22, 0x50uLL, 0x1032040B79D87BDLL);
              if (v34)
              {
                v35 = v34;
                *(v34 + 2) = 0u;
                *(v34 + 3) = 0u;
                *(v34 + 4) = 0u;
                *v34 = 0u;
                *(v34 + 1) = 0u;
                *v34 = -88;
                *(v34 + 26) = -1;
                *(v34 + 10) = 1;
                *(v34 + 11) = v23[7];
                *(v34 + 12) = v28;
                v34[9] = v237;
                if ((*(v237 + 48) & 0x60) != 0 && (*(*(v237 + 8) + (v30 >> 28) + 14) & 0x60) != 0)
                {
                  v36 = *(v237 + 54);
                  v37 = v36 <= 63 ? ~(-1 << v36) : -1;
                }

                else
                {
                  v38 = v28 >= 63 ? 63 : v28;
                  v37 = 1 << v38;
                }

                *(v23 + 4) |= v37;
                v39 = *&v26[6 * v27 + 2];
                if (v39)
                {
                  v40 = sub_1818C7FEC(*v22, v39, 0, 0);
                  v41 = v22;
                  v42 = v40;
                }

                else
                {
                  v41 = v22;
                  v42 = 0;
                }

                v43 = sub_181929E8C(*v41, 0x50uLL, 0x1032040B79D87BDLL);
                v44 = v43;
                if (v43)
                {
                  *(v43 + 2) = 0u;
                  *(v43 + 3) = 0u;
                  *(v43 + 4) = 0u;
                  *v43 = 0u;
                  *(v43 + 1) = 0u;
                  *v43 = -83;
                  *(v43 + 26) = -1;
                  v45 = 1;
                  *(v43 + 10) = 1;
                  if (v42)
                  {
                    v43[2] = v42;
                    *(v43 + 1) |= v42[1] & 0x400208;
                    v46 = v42[10];
                    if (v46 < 1)
                    {
                      v45 = 1;
                    }

                    else
                    {
                      v45 = v46 + 1;
                      *(v43 + 10) = v45;
                    }
                  }

                  v47 = a1;
                  if (*(*a1 + 148) < v45)
                  {
                    sub_181910730(a1, "Expression tree is too large (maximum depth %d)", *(*a1 + 148));
                  }
                }

                else
                {
                  v47 = a1;
                  if (v42)
                  {
                    sub_1819439E0(*a1, v42);
                  }
                }

                v28 = (v28 + 1);
                v48 = sub_18194F098(v47, 54, v35, v44);
                v49 = v48;
                v50 = (v23[6] & 0x18) != 0 ? 1 : 2;
                sub_181961AFC(v48, v23[7], v50);
                sub_1818CE2C0(v235, v49, 1);
                ++v27;
                v22 = v47;
                v10 = v232;
                v29 = v237;
                if (v27 < *v26)
                {
                  continue;
                }
              }

              goto LABEL_20;
            }

LABEL_19:
            sub_181910730(v22, "too many arguments on %s() - max %d", *v29, v27);
          }
        }
      }

LABEL_20:
      ++v21;
    }

    while (v21 < *v10);
  }

  else
  {
    if (v231)
    {
      *(v18 + 65) = *v231;
    }

    v22 = a1;
    if ((v9 & 0x100) != 0 && (*(v12 + 96) & 0x10) == 0)
    {
      *(v18 + 67) = 1;
    }

    v51 = v18[4];
    if (v51 && (*(v51 + 5) & 4) == 0)
    {
      sub_18195AD8C(a1, 0, "SCAN CONSTANT ROW");
    }
  }

  v52 = v229;
  v53 = *(v229 + 124);
  if (v53 >= 1)
  {
    v54 = v53 + 1;
    do
    {
      sub_1818CE4CC(v10, v235, v54 - 2);
      --v54;
    }

    while (v54 > 1);
  }

  v55 = v226;
  if (a6 && *(a6 + 96))
  {
    sub_18196A9E4(v235, a6);
  }

  if (v22[6].i32[1])
  {
    goto LABEL_173;
  }

  if (*(v229 + 132) >= 1)
  {
    v56 = 0;
    v57 = 0;
    v58 = v235;
    do
    {
      v59 = &v58[4][v56];
      if ((*(v59 + 9) & 2) == 0 && !v59[6])
      {
        v60 = *v59;
        if (!v227 || (*(&v255 + 1) = 0, *v256 = 0u, v253 = 0, *&v256[4] = 1, v254 = sub_181972F24, *&v255 = sub_18195A49C, !v60) || (sub_181959BA0(&v253, v60), *&v256[4]))
        {
          if ((v60[4] & 2) == 0 || (v10[8] & 0x40) == 0)
          {
            sub_1818DD640(a1, v60, *(v229 + 52), 16);
            *(v59 + 9) |= 4u;
          }
        }
      }

      ++v57;
      v58 = v249;
      v56 += 7;
    }

    while (v57 < *(v249 + 7));
  }

  if ((v225 & 0x100) != 0)
  {
    v61 = v227;
    if ((*(v226 + 96) & 0x10) != 0)
    {
      v225 &= 0x7EFFu;
      *(v229 + 60) &= ~0x100u;
    }

    else if (sub_18196AB54(a1, v10, v235, a5))
    {
      *(v229 + 67) = 1;
    }

    else if (!v231)
    {
      *(v229 + 60) |= 0x80u;
      *(v229 + 16) = a5;
    }
  }

  else
  {
    v61 = v227;
  }

  v62 = v248;
  if (v61 != 1 || (*(v248 + 30) & 0x20) != 0)
  {
    goto LABEL_95;
  }

  v63 = v248[1];
  v64 = *(v63 + 24);
  if (*(v64 + 63) != 1 && (*(v63 + 33) & 3) == 0)
  {
    v258 = 0;
    v257 = 0u;
    memset(&v256[8], 0, 48);
    v111 = *(v63 + 36);
    v112 = v250;
    *(v250 + 48) = 0;
    *(v112 + 54) = 0;
    v253 = v62 + 13;
    v254 = (v62 + 13);
    v255 = 0uLL;
    *v256 = 0x8200000000;
    *&v256[12] = v111;
    *&v256[9] = 257;
    LOWORD(v257) = -1;
    while (1)
    {
      v113 = sub_181972F4C(&v253);
      if (!v113)
      {
        break;
      }

      if (!*(v113 + 5))
      {
        *(v112 + 48) = 4353;
        **(v112 + 64) = v113;
        *(v112 + 52) = 1;
        *(v112 + 24) = 1;
        v114 = 33;
        goto LABEL_190;
      }
    }

    v115 = *(v64 + 16);
    if (!v115)
    {
LABEL_217:
      if (*(v112 + 48))
      {
        *(v112 + 22) = 1;
        v62[119] = v112;
        *(v112 + 8) = 1;
        *(v62 + 215) = v111;
        *(v62 + 35) = 1;
        v121 = v62[2];
        v110 = a1;
        v55 = v226;
        v52 = v229;
        if (v121)
        {
          *(v62 + 65) = *v121;
        }

        if ((*(v62 + 30) & 0x100) != 0)
        {
          *(v62 + 67) = 1;
        }

        if (v256[9] >= 2u)
        {
          *(v112 + 48) |= 0x200000u;
        }

        goto LABEL_224;
      }

      v62 = v248;
      v55 = v226;
      v52 = v229;
      goto LABEL_95;
    }

    while (1)
    {
      if (*(v115 + 98) && !*(v115 + 72) && *(v115 + 94) <= 3u)
      {
        if ((*(v115 + 99) & 8) != 0)
        {
          v117 = 130;
        }

        else
        {
          v117 = 2;
        }

        if (*(v115 + 94))
        {
          v116 = 0;
          while (1)
          {
            v253 = v62 + 13;
            v254 = (v62 + 13);
            v256[8] = 0;
            v255 = 0uLL;
            *v256 = 0;
            *&v256[4] = v117;
            *&v256[12] = v111;
            *&v256[9] = 257;
            v118 = *(*(v115 + 8) + 2 * v116);
            v119 = *(v115 + 24);
            if (*(v119 + 52) == *(*(v115 + 8) + 2 * v116))
            {
              LOWORD(v118) = -1;
            }

            else if (v118 < 0)
            {
              if (v118 == -2)
              {
                *(&v255 + 1) = *(*(v115 + 80) + 24 * v116 + 8);
                *&v255 = *(*(v115 + 64) + 8 * v116);
                LOWORD(v257) = -2;
                v120 = sub_1819732DC(&v253);
                goto LABEL_211;
              }
            }

            else
            {
              v256[8] = *(*(v119 + 8) + 16 * *(*(v115 + 8) + 2 * v116) + 9);
              *&v255 = *(*(v115 + 64) + 8 * v116);
            }

            LOWORD(v257) = v118;
            v120 = sub_181972F4C(&v253);
LABEL_211:
            if (v120)
            {
              while (*(v120 + 5))
              {
                v120 = sub_181972F4C(&v253);
                if (!v120)
                {
                  goto LABEL_194;
                }
              }

              *(*(v112 + 64) + 8 * v116++) = v120;
              if (v116 < *(v115 + 94))
              {
                continue;
              }
            }

            goto LABEL_194;
          }
        }

        LODWORD(v116) = 0;
LABEL_194:
        if (v116 == *(v115 + 94))
        {
          *(v112 + 48) = 4609;
          if ((*(v115 + 99) & 0x20) != 0 || (*(v115 + 104) & *(v63 + 40)) == 0)
          {
            *(v112 + 48) = 4673;
          }

          *(v112 + 52) = v116;
          *(v112 + 24) = v116;
          v114 = 39;
          *(v112 + 32) = v115;
LABEL_190:
          *(v112 + 20) = v114;
          goto LABEL_217;
        }
      }

      v115 = *(v115 + 40);
      if (!v115)
      {
        goto LABEL_217;
      }
    }
  }

  v55 = v226;
LABEL_95:
  v65 = *(v62 + 64);
  v66 = v62[1];
  v67 = **v62;
  v68 = v250;
  HIDWORD(v252) = 20000;
  if (!v65)
  {
    v100 = 1;
    goto LABEL_152;
  }

  v243 = v67;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v74 = v66 + 72 * v65 + 8;
  v75 = v66 + 8;
  v76 = v62 + 151;
  while (1)
  {
    *(v68 + 16) = v73;
    HIDWORD(v252) += 1000;
    v77 = *(v75 + 28);
    v78 = *(v62 + 150);
    if (v78 == v77)
    {
      v79 = 1;
    }

    else
    {
      v80 = *(v62 + 149);
      if (v80 < 2)
      {
LABEL_105:
        v79 = 0;
      }

      else
      {
        v81 = v76;
        v82 = 1;
        while (1)
        {
          v83 = *v81++;
          if (v83 == v77)
          {
            break;
          }

          if (v80 == ++v82)
          {
            goto LABEL_105;
          }
        }

        v79 = 1 << v82;
      }
    }

    *(v68 + 8) = v79;
    v84 = v70 | *(v75 + 24) & 0x62;
    v85 = *(v75 + 24);
    v86 = v69 ? v71 : 0;
    v87 = (v85 & 0x40) != 0 ? 1 : v69;
    v88 = (v85 >> 4) & 1;
    v71 = v84 ? v72 | v71 : v86;
    v70 = v84 ? v88 : 0;
    v69 = v84 ? v87 : v69 != 0;
    if (*(*(v75 + 16) + 63) == 1)
    {
      v89 = v75 + 72;
      if (v75 + 72 >= v74)
      {
        v90 = 0;
      }

      else
      {
        v90 = 0;
        v91 = v75;
        do
        {
          v93 = v89;
          if (v90 || (*(v91 + 96) & 0x22) != 0)
          {
            v94 = *(v91 + 100);
            if (v78 == v94)
            {
              v92 = 1;
            }

            else
            {
              v95 = *(v62 + 149);
              if (v95 < 2)
              {
LABEL_135:
                v92 = 0;
              }

              else
              {
                v96 = v76;
                v97 = 1;
                while (1)
                {
                  v98 = *v96++;
                  if (v98 == v94)
                  {
                    break;
                  }

                  if (v95 == ++v97)
                  {
                    goto LABEL_135;
                  }
                }

                v92 = 1 << v97;
              }
            }

            v90 |= v92;
          }

          else
          {
            v90 = 0;
          }

          v89 = v93 + 72;
          v91 = v93;
        }

        while (v93 + 72 < v74);
      }

      v99 = sub_181973540(&v248, v71, v90);
      if (v99)
      {
        goto LABEL_144;
      }
    }

    else
    {
      v99 = sub_181974208(&v248, v71);
      v90 = 0;
      if (v99)
      {
        goto LABEL_144;
      }
    }

    if (!*(v249 + 17))
    {
      v72 |= *(v68 + 8);
      goto LABEL_148;
    }

    v99 = sub_181974BB4(&v248, v71, v90);
LABEL_144:
    v72 |= *(v68 + 8);
    if (v99 != 101)
    {
      break;
    }

    sqlite3_log(28, "abbreviated query algorithm search");
LABEL_98:
    ++v73;
    v75 += 72;
    v76 = v62 + 151;
    if (v75 >= v74)
    {
      goto LABEL_149;
    }
  }

  if (v99)
  {
    goto LABEL_150;
  }

LABEL_148:
  if (!*(v243 + 103))
  {
    goto LABEL_98;
  }

LABEL_149:
  v99 = 0;
LABEL_150:
  v100 = v99 == 0;
  v55 = v226;
  v52 = v229;
  v67 = v243;
LABEL_152:
  v101 = *(v68 + 64);
  if (v101 != (v68 + 80))
  {
    sub_181929C84(v67, v101);
    *(v68 + 64) = v68 + 80;
    *(v68 + 56) = 3;
  }

  v102 = *(v68 + 48);
  if ((v102 & 0x4400) == 0)
  {
    goto LABEL_171;
  }

  if (v102 & 0x400) != 0 && (*(v68 + 28))
  {
    v104 = (v68 + 32);
    v105 = *(v68 + 32);
    if (v105)
    {
      v106 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v105);
        --qword_1ED456A90;
        off_1ED452EB0(v105);
        v105 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_169;
        }

        v106 = &xmmword_1ED452F28;
      }

      (*v106)(v105);
    }

LABEL_169:
    *(v68 + 28) &= ~1u;
    goto LABEL_170;
  }

  if ((v102 & 0x4000) != 0)
  {
    v104 = (v68 + 32);
    v103 = *(v68 + 32);
    if (v103)
    {
      if (*(v103 + 32))
      {
        sub_181929C84(v67, *(v103 + 32));
        v103 = *v104;
      }

      sub_181929C84(v67, v103);
LABEL_170:
      *v104 = 0;
    }
  }

LABEL_171:
  *(v68 + 52) = 0;
  *(v68 + 48) = 0;
  if (!v100 || (sub_18196AF24(v52, 0), *(v55 + 103)))
  {
LABEL_173:
    if (v52)
    {
      goto LABEL_174;
    }

    return v52;
  }

  if (*(v52 + 16))
  {
    sub_18196BC60(v52);
    v108 = *(v52 + 70);
    v109 = v108 >= 0 ? v108 + 1 : 1;
    sub_18196AF24(v52, v109);
    if (*(v55 + 103))
    {
      goto LABEL_174;
    }
  }

  v110 = a1;
  if ((*(v52 + 60) & 0x100) != 0)
  {
    *(v52 + 70) -= 30;
  }

LABEL_224:
  if (!*(v52 + 16) && (*(v55 + 49) & 0x10) != 0)
  {
    sub_18196BCEC(v52);
  }

  if (v110[6].i32[1])
  {
    goto LABEL_174;
  }

  v122 = *(v52 + 64);
  v238 = -1;
  if (a5)
  {
    v123 = v223;
    v124 = v232;
    v125 = v227;
    if (v122 >= 2 && (v225 & 0x2400) == 0)
    {
      v126 = *(v55 + 96);
      if ((v126 & 0x100) == 0)
      {
        v238 = sub_18196BD5C(v52);
        v122 = *(v52 + 64);
        v125 = *(v52 + 64);
        goto LABEL_236;
      }

      v238 = -1;
LABEL_238:
      if ((v126 & 0x80000) == 0)
      {
        sub_18196C0F4(v52);
      }

      goto LABEL_240;
    }
  }

  else
  {
    v123 = v223;
    v124 = v232;
    v125 = v227;
  }

LABEL_236:
  if (v122 >= 2)
  {
    v126 = *(v55 + 96);
    goto LABEL_238;
  }

LABEL_240:
  *(*v52 + 28) += *(v52 + 70);
  if ((v225 & 4) != 0)
  {
    v218 = *(v52 + 952);
    v219 = *(v218 + 48);
    if ((v219 & 0x1000) != 0)
    {
      v220 = 1;
    }

    else
    {
      if ((v225 & 8) == 0 || *(*(v124 + 24) + 63) == 1 || (v225 & 0x10) == 0 && (v219 & 0x2000) != 0 || (*(v55 + 99) & 8) != 0)
      {
        goto LABEL_241;
      }

      v220 = 2;
    }

    v234 = 0;
    *(v52 + 66) = v220;
    if ((v219 & 0x40) != 0 && (*(*(v124 + 24) + 48) & 0x80) == 0)
    {
      v234 = v225 & 8;
      *(v218 + 48) = v219 & 0xFFFFFFBF;
    }
  }

  else
  {
LABEL_241:
    v234 = 0;
  }

  if (v125 < 1)
  {
    v221 = *(v123 + 144);
    *(v52 + 72) = v221;
    if (*(v55 + 103))
    {
      goto LABEL_174;
    }

LABEL_403:
    *(v52 + 76) = v221;
    return v52;
  }

  v127 = 0;
  v128 = v124 + 8;
  v129 = v224 == 0;
  v241 = v225 & 0x20;
  if ((v225 & 0x20) == 0)
  {
    v129 = 1;
  }

  v236 = v129;
  v228 = v125;
  v130 = v222;
  v244 = v128;
  while (2)
  {
    v131 = v128 + 72 * *(v130 + 64);
    v132 = *(v131 + 16);
    v133 = *(v132 + 96);
    if (v133)
    {
      v134 = (*(v55 + 32) + 24);
      LODWORD(v135) = -1;
      do
      {
        v136 = *v134;
        v134 += 4;
        v135 = (v135 + 1);
      }

      while (v136 != v133);
    }

    else
    {
      v135 = 4294934528;
    }

    v137 = v130[12];
    if ((*(v132 + 49) & 0x40) == 0)
    {
      v138 = *(v132 + 63);
      if (v138 != 2)
      {
        if ((*(v137 + 48) & 0x400) == 0)
        {
          if (v138 == 1)
          {
            goto LABEL_288;
          }

          if (!(*(v137 + 48) & 0x40 | v241) || (*(v131 + 24) & 0x50) != 0)
          {
            v139 = *(v131 + 28);
            v140 = v128 + 72 * *(v130 + 64);
            if (*(v229 + 66))
            {
              *(v229 + 40) = v139;
              v141 = 113;
            }

            else
            {
              v141 = 102;
            }

            sub_1818B69D8(a1, v139, v135, v132, v141);
            if (!*(v229 + 66) && *(v132 + 54) <= 63 && (*(v132 + 48) & 0xE0) == 0 && (*(v137 + 49) & 0x4040) == 0)
            {
              v152 = *(v140 + 32);
              v153 = 64 - __clz(v152);
              if (v152)
              {
                v154 = v153;
              }

              else
              {
                v154 = 0;
              }

              sub_1818B49F8(v123, -1, v154, 4294967293);
            }

            v155 = *(v123 + 144);
            v131 = v140;
            v125 = v228;
            if (v155 >= 1)
            {
              *(*(v123 + 136) + 40 * v155 - 38) = v234;
            }

            goto LABEL_288;
          }

          v150 = v125;
          v151 = v128 + 72 * *(v130 + 64);
          sub_181957014(a1, v135, *(v132 + 40), 0, *v132);
LABEL_287:
          v131 = v151;
          v125 = v150;
          goto LABEL_288;
        }

        for (i = *(v132 + 80); i; i = *(i + 40))
        {
          if (*i == v55)
          {
            break;
          }
        }

        v143 = *(v131 + 28);
        v144 = *(v123 + 144);
        if (*(v123 + 148) <= v144)
        {
          v146 = v125;
          v147 = v131;
          v144 = sub_18194C8AC(v123, 173, v143, 0, 0);
          v131 = v147;
          v125 = v146;
          v128 = v244;
        }

        else
        {
          *(v123 + 144) = v144 + 1;
          v145 = *(v123 + 136) + 40 * v144;
          *v145 = 173;
          *(v145 + 4) = v143;
          *(v145 + 8) = 0u;
          *(v145 + 24) = 0u;
        }

        if (!*(*v123 + 103))
        {
          if (v144 < 0)
          {
            v144 = *(v123 + 144) - 1;
          }

          v148 = *(v123 + 136) + 40 * v144;
          if (*(v148 + 1))
          {
            v149 = i;
            v150 = v125;
            v151 = v131;
            sub_18194CB90(v123, v148, v149, 4294967285);
            goto LABEL_287;
          }

          if (i)
          {
            *(v148 + 16) = i;
            *(v148 + 1) = -11;
            ++*(i + 24);
          }
        }
      }
    }

LABEL_288:
    if ((*(v137 + 49) & 2) != 0)
    {
      v168 = *(v137 + 32);
      if ((*(v132 + 48) & 0x80) != 0 && (v225 & 0x20) != 0 && (*(v168 + 99) & 3) == 2)
      {
        *(v130 + 2) = *(v130 + 1);
      }

      else
      {
        v247 = v137;
        if (*(v229 + 66))
        {
          v169 = v131;
          v170 = *(*(v131 + 16) + 16);
          if (v170)
          {
            v171 = v170 == v168;
          }

          else
          {
            v171 = 1;
          }

          v172 = v224;
          if (!v171)
          {
            v172 = v224;
            do
            {
              ++v172;
              v170 = *(v170 + 40);
              if (v170)
              {
                v173 = v170 == v168;
              }

              else
              {
                v173 = 1;
              }
            }

            while (!v173);
          }

          *(v229 + 44) = v172;
          v174 = 113;
        }

        else if (v236)
        {
          v172 = a1[7].i32[0];
          a1[7].i32[0] = v172 + 1;
          if ((*(v168 + 99) & 0x800) != 0 && (*(v55 + 99) & 1) == 0)
          {
            v187 = v131;
            sub_18196C1C4(a1, v168, v172, v131);
            v131 = v187;
          }

          v188 = *(v168 + 72);
          if (!v188 || (*(v131 + 24) & 0x10) != 0)
          {
            v169 = v131;
          }

          else
          {
            v169 = v131;
            sub_18196C3E0(a1, v168, v188, 0, v172, v131);
          }

          v174 = 102;
        }

        else
        {
          v169 = v131;
          v174 = 101;
          v172 = v224;
        }

        *(v130 + 2) = v172;
        v195 = *(v168 + 88);
        v196 = *(v123 + 144);
        v197 = v130;
        if (*(v123 + 148) <= v196)
        {
          sub_18194C8AC(v123, v174, v172, v195, v135);
        }

        else
        {
          *(v123 + 144) = v196 + 1;
          v198 = *(v123 + 136) + 40 * v196;
          *v198 = v174;
          *(v198 + 2) = 0;
          *(v198 + 4) = v172;
          *(v198 + 8) = v195;
          *(v198 + 12) = v135;
          *(v198 + 1) = 0;
          *(v198 + 24) = 0;
          *(v198 + 32) = 0;
          *(v198 + 16) = 0;
        }

        v199 = a1[2];
        v200 = sub_1819572CC(a1, v168);
        v137 = v247;
        v131 = v169;
        if (v200)
        {
          if (*(**&v199 + 103))
          {
            if (!*(**&v199 + 824))
            {
              v171 = (*v200)-- == 1;
              if (v171)
              {
                sub_181939EC8(v200[2], v200);
                v131 = v169;
              }
            }
          }

          else
          {
            v201 = *(*&v199 + 136) + 40 * *(*&v199 + 144);
            *(v201 - 39) = -8;
            *(v201 - 24) = v200;
          }
        }

        v202 = *(v247 + 48);
        v130 = v197;
        v128 = v244;
        v125 = v228;
        if ((v202 & 0xF) != 0 && (v202 & 0x188002) == 0 && (*(v229 + 60) & 1) == 0 && *(v229 + 67) != 2)
        {
          v203 = *(v123 + 144);
          if (v203 >= 1)
          {
            *(*(v123 + 136) + 40 * v203 - 38) = 2;
          }
        }
      }
    }

    if ((v135 & 0x80000000) == 0)
    {
      v156 = *&a1[19] ? *&a1[19] : a1;
      v157 = v156[14].i32[1];
      if ((v157 & (1 << v135)) == 0)
      {
        v156[14].i32[1] = v157 | (1 << v135);
        if (v135 == 1)
        {
          v158 = v128;
          v159 = v125;
          v160 = v131;
          sub_1819108F4(v156);
          v131 = v160;
          v125 = v159;
          v128 = v158;
        }
      }
    }

    v52 = v229;
    if ((*(v131 + 24) & 0x10) != 0)
    {
      v161 = sub_181929E8C(**v229, 0x24uLL, 0x1020040EDED9539);
      if (v161)
      {
        v246 = v137;
        *v161 = *(v229 + 88);
        v161[1] = 20;
        *(v229 + 88) = v161;
        v162 = vadd_s32(a1[7], 0x100000001);
        v163 = v130;
        *(v161 + 4) = a1[7];
        v164 = (v161 + 2);
        v165 = v163;
        v163[7] = v161 + 2;
        a1[7] = v162;
        *(v161 + 5) = v162.i32[1];
        v166 = *(v123 + 144);
        if (*(v123 + 148) <= v166)
        {
          v175 = v161;
          sub_18194C8AC(v123, 77, 0x10000, v162.i32[1], 0);
          v161 = v175;
          v125 = v228;
        }

        else
        {
          *(v123 + 144) = v166 + 1;
          v167 = *(v123 + 136) + 40 * v166;
          *v167 = 0x100000000004DLL;
          *(v167 + 8) = v162.i32[1];
          *(v167 + 12) = 0;
          *(v167 + 28) = 0;
          *(v167 + 20) = 0;
          *(v167 + 36) = 0;
        }

        v176 = a1[7].i32[1] + 1;
        a1[7].i32[1] = v176;
        *(v161 + 6) = v176;
        v177 = *(v123 + 144);
        if (*(v123 + 148) <= v177)
        {
          sub_18194C8AC(v123, 75, 0, v176, 0);
        }

        else
        {
          *(v123 + 144) = v177 + 1;
          v178 = *(v123 + 136) + 40 * v177;
          *v178 = 75;
          *(v178 + 8) = v176;
          *(v178 + 12) = 0;
          *(v178 + 28) = 0;
          *(v178 + 20) = 0;
          *(v178 + 36) = 0;
        }

        if ((*(v132 + 48) & 0x80) == 0)
        {
          v179 = *v164;
          v180 = *(v123 + 144);
          if (*(v123 + 148) <= v180)
          {
            sub_18194C8AC(v123, 117, v179, 1, 0);
          }

          else
          {
            *(v123 + 144) = v180 + 1;
            v181 = *(v123 + 136) + 40 * v180;
            *v181 = 117;
            *(v181 + 4) = v179;
            *(v181 + 8) = 1;
            *(v181 + 12) = 0;
            *(v181 + 28) = 0;
            *(v181 + 20) = 0;
            *(v181 + 36) = 0;
          }

          v189 = *a1;
          v190 = sub_181929E8C(*a1, 0x29uLL, 0x2004093837F09);
          if (!v190)
          {
            sub_18190BD38(v189);
            goto LABEL_247;
          }

          v191 = v190;
          v192 = *(v189 + 100);
          *(v190 + 40) = 0;
          *(v190 + 6) = 65537;
          *(v190 + 4) = v192;
          v190[2] = v189;
          v190[3] = v190 + 5;
          *v190 = 1;
          v190[4] = 0;
          if (*(*v123 + 103))
          {
            if (!*(*v123 + 824))
            {
              *v190 = 0;
              sub_181939EC8(v189, v190);
            }

            goto LABEL_247;
          }

          v204 = *(v123 + 136);
          v205 = *(v123 + 144);
LABEL_369:
          v206 = v204 + 40 * v205;
          *(v206 - 39) = -8;
          *(v206 - 24) = v191;
          goto LABEL_247;
        }

        for (j = *(v132 + 16); j; j = *(j + 40))
        {
          if ((*(j + 99) & 3) == 2)
          {
            break;
          }
        }

        v183 = *v164;
        v184 = *(j + 94);
        v185 = *(v123 + 144);
        if (*(v123 + 148) <= v185)
        {
          sub_18194C8AC(v123, 117, v183, v184, 0);
        }

        else
        {
          *(v123 + 144) = v185 + 1;
          v186 = *(v123 + 136) + 40 * v185;
          *v186 = 117;
          *(v186 + 4) = v183;
          *(v186 + 8) = v184;
          *(v186 + 12) = 0;
          *(v186 + 28) = 0;
          *(v186 + 20) = 0;
          *(v186 + 36) = 0;
        }

        v193 = a1[2];
        v194 = sub_1819572CC(a1, j);
        if (v194)
        {
          v191 = v194;
          if (!*(**&v193 + 103))
          {
            v204 = *(*&v193 + 136);
            v205 = *(*&v193 + 144);
            goto LABEL_369;
          }

          if (!*(**&v193 + 824))
          {
            v171 = (*v194)-- == 1;
            if (v171)
            {
              sub_181939EC8(v194[2], v194);
            }
          }
        }

LABEL_247:
        *(v246 + 48) &= ~0x40u;
        *(v229 + 65) = 0;
        *(v229 + 67) = 3;
        v130 = v165;
      }

      else
      {
        v130[7] = 0;
      }
    }

    ++v127;
    v130 += 15;
    if (v127 != v125)
    {
      continue;
    }

    break;
  }

  *(v229 + 72) = *(v123 + 144);
  if (!*(v55 + 103))
  {
    v207 = 0;
    v208 = 0;
    while (!a1[6].i32[1])
    {
      v209 = v52 + v207;
      v210 = *(*(v52 + v207 + 952) + 48);
      v211 = v244 + 72 * *(v52 + v207 + 920);
      v212 = *(v211 + 25);
      if ((v212 & 0x20) != 0)
      {
        v213 = *(v211 + 64);
        if ((v212 & 0x10) != 0)
        {
          v215 = 0;
          v214 = v223;
        }

        else
        {
          v214 = v223;
          v215 = sub_1818A2964(v223, 15, 0, 0, 0);
        }

        sub_1818A2964(v214, 10, *(v213 + 12), *(v213 + 8), 0);
        v55 = v226;
        v52 = v229;
        if (v215)
        {
          v216 = &byte_1EA831A58;
          if (!*(*v223 + 103))
          {
            v216 = (*(v223 + 136) + 40 * v215);
          }

          *(v216 + 2) = *(v223 + 144);
        }
      }

      if ((v210 & 0x404000) != 0)
      {
        if ((v210 & 0x4000) != 0)
        {
          sub_18196C654(a1, v235, v238, v209 + 856);
        }

        else
        {
          sub_18196DBF8(v52, v208, (v209 + 856), v238);
        }

        if (*(v55 + 103))
        {
          break;
        }
      }

      v217 = sub_18196E388(a1, v232, v209 + 856, v225);
      *(v229 + v207 + 888) = *(v223 + 144);
      v52 = v229;
      v238 = sub_18196E47C(a1, v223, v229, v208, v209 + 856, v238);
      *(v229 + 48) = *(v229 + v207 + 880);
      if (!(v210 & 0x2000 | v241))
      {
        sub_1819710AC(v223, v232, v209 + 856, v217);
      }

      v208 = (v208 + 1);
      v207 += 120;
      v55 = v226;
      if (120 * v228 == v207)
      {
        v221 = *(v223 + 144);
        goto LABEL_403;
      }
    }
  }

LABEL_174:
  a1[3].i16[2] = *(v52 + 56);
  sub_1818BADCC(v55, v52);
  return 0;
}

void *sub_1818B69D8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3;
  v6 = a2;
  v7 = result[2];
  if (!*(*result + 111) && a3 != 1 && *(*(*(*result + 32) + 32 * a3 + 8) + 17))
  {
    v8 = result;
    v9 = a4;
    v10 = a5;
    sub_1819570CC(result, a3, *(a4 + 40), a5 == 113, *a4);
    a4 = v9;
    result = v8;
    LOBYTE(a5) = v10;
  }

  if ((*(a4 + 48) & 0x80) != 0)
  {
    for (i = *(a4 + 16); i; i = *(i + 40))
    {
      if ((*(i + 99) & 3) == 2)
      {
        break;
      }
    }

    v16 = *(i + 88);
    v17 = *(v7 + 144);
    if (*(v7 + 148) <= v17)
    {
      v20 = result;
      sub_18194C8AC(v7, a5, v6, v16, v5);
      result = v20;
    }

    else
    {
      *(v7 + 144) = v17 + 1;
      v18 = *(v7 + 136) + 40 * v17;
      *v18 = a5;
      *(v18 + 2) = 0;
      *(v18 + 4) = v6;
      *(v18 + 8) = v16;
      *(v18 + 12) = v5;
      *(v18 + 1) = 0;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0;
      *(v18 + 16) = 0;
    }

    v21 = result[2];
    result = sub_1819572CC(result, i);
    if (result)
    {
      v22 = result;
      if (*(*v21 + 103))
      {
        if (!*(*v21 + 824) && (*result)-- == 1)
        {
          v24 = result[2];

          return sub_181939EC8(v24, v22);
        }
      }

      else
      {
        v25 = *(v21 + 136) + 40 * *(v21 + 144);
        *(v25 - 39) = -8;
        *(v25 - 24) = result;
      }
    }
  }

  else
  {
    v11 = *(a4 + 40);
    v12 = *(a4 + 56);
    v13 = *(v7 + 144);
    if (*(v7 + 148) <= v13)
    {
      v19 = *(a4 + 40);

      return sub_18194CAFC(v7, a5, v6, v19, v5, v12);
    }

    else
    {
      *(v7 + 144) = v13 + 1;
      v14 = *(v7 + 136) + 40 * v13;
      *v14 = a5;
      *(v14 + 2) = 0;
      *(v14 + 4) = v6;
      *(v14 + 8) = v11;
      *(v14 + 12) = v5;
      *(v14 + 16) = v12;
      *(v14 + 1) = -3;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0;
    }
  }

  return result;
}

void *sub_1818B6C00(uint64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!*(result + 103))
  {
    v6 = a1[17] + 40 * a2;
    result = sub_1818A3B68(result, *(v6 + 1), *(v6 + 16), a4);
    *(v6 + 16) = 0;
    *v6 = 187;
  }

  return result;
}

void sub_1818B6C58(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unsigned __int8 *a6, int a7, int a8)
{
  v8 = a6;
  v9 = a3;
  v10 = a2;
  v12 = *(result + 16);
  v13 = *a6;
  v14 = *(a6 + 1);
  v181 = 0;
  if (a5)
  {
    v15 = *(a5 + 1);
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = 0;
    if (a4)
    {
LABEL_3:
      if (*a4)
      {
        v16 = a4;
      }

      else
      {
        v16 = 0;
      }

      if (v16)
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }
  }

  v16 = 0;
LABEL_10:
  if (!v15)
  {
    v17 = *(a2 + 12);
    if (v17 >= 1)
    {
      v18 = *(v12 + 36);
      if (*(v12 + 37) <= v18)
      {
        v20 = a5;
        sub_18194C8AC(v12, 50, v17, a7, 1);
        a5 = v20;
      }

      else
      {
        *(v12 + 36) = v18 + 1;
        v19 = &v12[17][5 * v18];
        *v19 = 50;
        *(v19 + 4) = v17;
        *(v19 + 8) = a7;
        *(v19 + 12) = 1;
        *(v19 + 24) = 0;
        *(v19 + 32) = 0;
        *(v19 + 16) = 0;
      }
    }
  }

LABEL_15:
  v179 = v15;
  v172 = a5;
  v21 = *(v10 + 32);
  v22 = *v21;
  v23 = *(v8 + 3);
  if (!v23)
  {
    if (v16)
    {
      v24 = **v16 + ((*(v16 + 36) & 1) == 0);
      v25 = v24 + *(result + 60);
    }

    else
    {
      v24 = 0;
      v25 = *(result + 60);
    }

    v26 = (result + 60);
    v23 = (v25 + 1);
    *(v8 + 3) = v23;
    goto LABEL_22;
  }

  v24 = 0;
  v26 = (result + 60);
  v25 = *(result + 60);
  if (v23 + v22 > v25)
  {
LABEL_22:
    *v26 = v25 + v22;
  }

  v174 = v24;
  *(v8 + 4) = v22;
  v178 = v8;
  if (v9 < 0)
  {
    v32 = 1;
    if ((v13 - 9) >= 2 && v13 != 13)
    {
      if (v13 == 3)
      {
        goto LABEL_34;
      }

      v32 = 0;
    }

    if (!v16 || v179 || (v13 & 0xFFFFFFFD) == 0xC)
    {
      goto LABEL_48;
    }

    v32 |= 0xCu;
    v33 = *(v16 + 2);
    v34 = *v16;
    v35 = **v16;
    if (v33 < v35)
    {
      do
      {
        while (1)
        {
          v36 = LOWORD(v34[6 * v33 + 7]);
          if (LOWORD(v34[6 * v33 + 7]))
          {
            break;
          }

          if (++v33 >= v35)
          {
            goto LABEL_44;
          }
        }

        *(*(v10 + 32) + 24 * (v36 - 1) + 28) = ++v33 - *(v16 + 2);
        v34 = *v16;
        v35 = **v16;
      }

      while (v33 < v35);
LABEL_44:
      v21 = *(v10 + 32);
    }

    v37 = *v21;
    if (v37 < 1)
    {
LABEL_48:
      v31 = v23;
      goto LABEL_69;
    }

    if (v37 < 4)
    {
      v38 = 0;
      LODWORD(v31) = v23;
      goto LABEL_64;
    }

    if (v37 >= 0x10)
    {
      v38 = v37 & 0x7FFFFFF0;
      v39 = 0uLL;
      v40 = v22;
      v41 = 0;
      v42 = v21 + 49;
      v43 = v38;
      v44 = 0uLL;
      v45 = 0uLL;
      v46 = 0;
      do
      {
        a4 = v42 + 24;
        v47.i16[0] = *(v42 - 84);
        v47.i16[1] = *(v42 - 72);
        v47.i16[2] = *(v42 - 60);
        v47.i16[3] = *(v42 - 48);
        v47.i16[4] = *(v42 - 36);
        v47.i16[5] = *(v42 - 24);
        v47.i16[6] = *(v42 - 12);
        v47.i16[7] = *v42;
        v48.i16[0] = *(v42 + 12);
        v48.i16[1] = *(v42 + 24);
        v48.i16[2] = *(v42 + 36);
        v48.i16[3] = *(v42 + 48);
        v48.i16[4] = *(v42 + 60);
        v48.i16[5] = *(v42 + 72);
        v48.i16[6] = *(v42 + 84);
        v48.i16[7] = *(v42 + 96);
        v49 = vtstq_s16(v47, v47);
        v50 = vtstq_s16(v48, v48);
        v41 = vorr_s8(v41, vmovn_s16(v49));
        v46 = vorr_s8(v46, vmovn_s16(v50));
        v39 = vaddw_high_s16(v39, v49);
        v40 = vaddw_s16(v40, *v49.i8);
        v45 = vaddw_high_s16(v45, v50);
        v44 = vaddw_s16(v44, *v50.i8);
        v42 += 96;
        v43 -= 16;
      }

      while (v43);
      v22 = vaddvq_s32(vaddq_s32(vaddq_s32(v44, v40), vaddq_s32(v45, v39)));
      if (vaddv_s8(vand_s8(vcltz_s8(vshl_n_s8(vorr_s8(v46, v41), 7uLL)), 0x8040201008040201)))
      {
        v31 = 0;
      }

      else
      {
        v31 = v23;
      }

      if (v38 == v37)
      {
        goto LABEL_69;
      }

      if ((v37 & 0xC) == 0)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v38 = 0;
      LODWORD(v31) = v23;
    }

    v51 = v38;
    v38 = v37 & 0x7FFFFFFC;
    v52 = v22;
    v53 = vdup_n_s16(v31 != v23);
    v54 = v51 - v38;
    v55 = &v21[6 * v51 + 13];
    do
    {
      v56.i16[0] = *(v55 - 12);
      v56.i16[1] = *v55;
      v56.i16[2] = v55[12];
      v56.i16[3] = v55[24];
      v53 = vorn_s8(v53, vceqz_s16(v56));
      v52 = vaddw_s16(v52, vtst_s16(v56, v56));
      v55 += 48;
      v54 += 4;
    }

    while (v54);
    v22 = vaddvq_s32(v52);
    if ((vaddv_s16(vand_s8(vcltz_s16(vshl_n_s16(v53, 0xFuLL)), 0x8000400020001)) & 0xF) != 0)
    {
      v31 = 0;
    }

    else
    {
      v31 = v23;
    }

    if (v38 != v37)
    {
LABEL_64:
      v57 = 24 * v38 + 28;
      v58 = v37 - v38;
      do
      {
        if (*(v21 + v57))
        {
          v31 = 0;
        }

        else
        {
          v31 = v31;
        }

        v22 = v22 - (*(v21 + v57) != 0);
        v57 += 24;
        --v58;
      }

      while (v58);
    }

LABEL_69:
    LODWORD(v181) = v23;
    BYTE4(v181) = v32;
    if (*(v10 + 8) && (v32 & 8) != 0 && v174 >= 1)
    {
      v31 = 0;
      v16[5] = &v181;
    }

    else
    {
      sub_1819588AC(result, v21, v23, 0, v32);
    }

    goto LABEL_74;
  }

  if (v22 < 1)
  {
LABEL_34:
    v31 = v23;
    goto LABEL_74;
  }

  v27 = 0;
  do
  {
    v29 = v23 + v27;
    v30 = *(v12 + 36);
    if (*(v12 + 37) > v30)
    {
      *(v12 + 36) = v30 + 1;
      v28 = &v12[17][5 * v30];
      *v28 = 94;
      *(v28 + 4) = v9;
      *(v28 + 8) = v27;
      *(v28 + 12) = v29;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0;
      *(v28 + 16) = 0;
    }

    else
    {
      sub_18194C8AC(v12, 94, v9, v27, v29);
    }

    ++v27;
  }

  while (v22 != v27);
  v31 = v23;
  v8 = v178;
LABEL_74:
  if (v179)
  {
    v59 = *(v172 + 1);
    v60 = sub_18197EE48(result, v59, *(v172 + 4), a7, *(v10 + 32), v23);
    v61 = v59;
    v8 = v178;
    sub_181968590(result, v61, v60, *(v172 + 8));
    if (!v16)
    {
      v65 = *(v10 + 12);
      if (v65 >= 1)
      {
        v66 = *(v12 + 36);
        if (*(v12 + 37) <= v66)
        {
          sub_18194C8AC(v12, 50, v65, a7, 1);
        }

        else
        {
          *(v12 + 36) = v66 + 1;
          v67 = &v12[17][5 * v66];
          *v67 = 50;
          *(v67 + 4) = v65;
          *(v67 + 8) = a7;
          *(v67 + 12) = 1;
          *(v67 + 24) = 0;
          *(v67 + 32) = 0;
          *(v67 + 16) = 0;
        }
      }
    }
  }

  switch(v13)
  {
    case 1:
      if (*(result + 31))
      {
        v79 = *(result + 31) - 1;
        *(result + 31) = v79;
        v64 = *(result + 4 * v79 + 184);
      }

      else
      {
        v64 = *(result + 60) + 1;
        *(result + 60) = v64;
      }

      v137 = *(v12 + 36);
      if (*(v12 + 37) <= v137)
      {
        sub_18194C8AC(v12, 97, v23, v22, v64);
      }

      else
      {
        *(v12 + 36) = v137 + 1;
        v138 = &v12[17][5 * v137];
        *v138 = 97;
        *(v138 + 4) = v23;
        *(v138 + 8) = v22;
        *(v138 + 12) = v64;
        *(v138 + 24) = 0;
        *(v138 + 32) = 0;
        *(v138 + 16) = 0;
      }

      v139 = *(v12 + 36);
      if (*(v12 + 37) <= v139)
      {
        sub_18194CAFC(v12, 138, v14, v64, v23, v22);
      }

      else
      {
        *(v12 + 36) = v139 + 1;
        v140 = &v12[17][5 * v139];
        *v140 = 64906;
        *(v140 + 4) = v14;
        *(v140 + 8) = v64;
        *(v140 + 12) = v23;
        *(v140 + 16) = v22;
        *(v140 + 24) = 0;
        *(v140 + 32) = 0;
      }

      goto LABEL_196;
    case 2:
      v85 = *(v12 + 36);
      if (*(v12 + 37) <= v85)
      {
        sub_18194C8AC(v12, 140, v14, v23, v22);
      }

      else
      {
        *(v12 + 36) = v85 + 1;
        v86 = &v12[17][5 * v85];
        *v86 = 140;
        *(v86 + 4) = v14;
        *(v86 + 8) = v23;
        *(v86 + 12) = v22;
        *(v86 + 24) = 0;
        *(v86 + 32) = 0;
        *(v86 + 16) = 0;
      }

      goto LABEL_199;
    case 3:
      v83 = *(v12 + 36);
      if (*(v12 + 37) <= v83)
      {
        sub_18194C8AC(v12, 71, 1, v14, 0);
      }

      else
      {
        *(v12 + 36) = v83 + 1;
        v84 = &v12[17][5 * v83];
        *v84 = 0x100000047;
        *(v84 + 8) = v14;
        *(v84 + 12) = 0;
        *(v84 + 28) = 0;
        *(v84 + 20) = 0;
        *(v84 + 36) = 0;
      }

      goto LABEL_199;
    case 5:
    case 8:
    case 12:
    case 14:
      v62 = v174 + 1;
      v167 = v10;
      if (v174)
      {
        v63 = *(result + 44);
        if (v63 <= v174)
        {
          v78 = *(result + 60);
          v64 = v78 + 1;
          *(result + 60) = v78 + v62;
        }

        else
        {
          v64 = *(result + 48);
          *(result + 44) = v63 - v62;
          *(result + 48) = v64 + v62;
        }
      }

      else if (*(result + 31))
      {
        v77 = *(result + 31) - 1;
        *(result + 31) = v77;
        v64 = *(result + 4 * v77 + 184);
      }

      else
      {
        v64 = *(result + 60) + 1;
        *(result + 60) = v64;
      }

      v91 = (v64 + v174);
      v92 = *(v12 + 36);
      if (*(v12 + 37) <= v92)
      {
        sub_18194C8AC(v12, 97, v23, v22, v64 + v174);
        if (v13 != 5)
        {
LABEL_117:
          if (v16)
          {
LABEL_118:
            sub_1818E4598(result, v16, v167, v91, v31, 1, v174);
            v94 = v174;
            goto LABEL_119;
          }

LABEL_132:
          if (*(result + 31))
          {
            v102 = *(result + 31) - 1;
            *(result + 31) = v102;
            v103 = *(result + 4 * v102 + 184);
          }

          else
          {
            v103 = *(result + 60) + 1;
            *(result + 60) = v103;
          }

          v104 = *(v12 + 36);
          if (*(v12 + 37) <= v104)
          {
            sub_18194C8AC(v12, 127, v14, v103, 0);
          }

          else
          {
            *(v12 + 36) = v104 + 1;
            v105 = &v12[17][5 * v104];
            *v105 = 127;
            *(v105 + 4) = v14;
            *(v105 + 8) = v103;
            *(v105 + 12) = 0;
            *(v105 + 28) = 0;
            *(v105 + 20) = 0;
            *(v105 + 36) = 0;
          }

          v106 = *(v12 + 36);
          if (*(v12 + 37) <= v106)
          {
            sub_18194C8AC(v12, 128, v14, v64, v103);
          }

          else
          {
            *(v12 + 36) = v106 + 1;
            v107 = &v12[17][5 * v106];
            *v107 = 128;
            *(v107 + 4) = v14;
            *(v107 + 8) = v64;
            *(v107 + 12) = v103;
            *(v107 + 24) = 0;
            *(v107 + 32) = 0;
            *(v107 + 16) = 0;
          }

          v94 = v174;
          v108 = *(v12 + 36);
          if (v108 >= 1)
          {
            *(&v12[17][5 * v108 - 4] - 3) = 8;
          }

          if (v103)
          {
            v109 = *(result + 31);
            if (v109 <= 7)
            {
              *(result + 31) = v109 + 1;
              *(result + 4 * v109 + 184) = v103;
            }
          }

LABEL_119:
          if (v94)
          {
            v10 = v167;
            if (*(result + 44) > v94)
            {
              goto LABEL_199;
            }

            *(result + 44) = v174 + 1;
LABEL_188:
            *(result + 48) = v64;
            goto LABEL_199;
          }

          v10 = v167;
          if (!v64)
          {
            goto LABEL_199;
          }

LABEL_197:
          v141 = *(result + 31);
          if (v141 <= 7)
          {
            *(result + 31) = v141 + 1;
            *(result + 4 * v141 + 184) = v64;
          }

          goto LABEL_199;
        }
      }

      else
      {
        *(v12 + 36) = v92 + 1;
        v93 = &v12[17][5 * v92];
        *v93 = 97;
        *(v93 + 4) = v23;
        *(v93 + 8) = v22;
        *(v93 + 12) = v91;
        *(v93 + 24) = 0;
        *(v93 + 32) = 0;
        *(v93 + 16) = 0;
        if (v13 != 5)
        {
          goto LABEL_117;
        }
      }

      v171 = v16;
      v95 = *(v12 + 36);
      v96 = v95 + 4;
      v97 = v14;
      v98 = v14 + 1;
      if (*(v12 + 37) <= v95)
      {
        sub_18194CAFC(v12, 29, v98, v96, v64, 0);
      }

      else
      {
        *(v12 + 36) = v95 + 1;
        v99 = &v12[17][5 * v95];
        *v99 = 64797;
        *(v99 + 4) = v98;
        *(v99 + 8) = v96;
        *(v99 + 12) = v64;
        *(v99 + 16) = 0;
        *(v99 + 24) = 0;
        *(v99 + 32) = 0;
      }

      v100 = *(v12 + 36);
      if (*(v12 + 37) <= v100)
      {
        sub_18194CAFC(v12, 138, v98, v64, v23, v22);
      }

      else
      {
        *(v12 + 36) = v100 + 1;
        v101 = &v12[17][5 * v100];
        *v101 = 64906;
        *(v101 + 4) = v98;
        *(v101 + 8) = v64;
        *(v101 + 12) = v23;
        *(v101 + 16) = v22;
        *(v101 + 24) = 0;
        *(v101 + 32) = 0;
      }

      LODWORD(v14) = v97;
      v16 = v171;
      if (v171)
      {
        goto LABEL_118;
      }

      goto LABEL_132;
    case 6:
    case 7:
      v170 = v16;
      v68 = **(v8 + 4);
      v69 = *(result + 31);
      v166 = *(v8 + 4);
      if (v69)
      {
        *(result + 31) = v69 - 1;
        v70 = *(result + 184 + 4 * (v69 - 1));
        v71 = v68 + 2;
        if (v68 == -1)
        {
          if (v69 != 1)
          {
            v173 = *(result + 184 + 4 * (v69 - 1));
            v72 = v69 - 2;
            *(result + 31) = v72;
            v73 = *(result + 184 + 4 * v72);
LABEL_110:
            v168 = 1;
            v71 = 1;
            goto LABEL_148;
          }

LABEL_109:
          v173 = v70;
          v73 = *(result + 60) + 1;
          *(result + 60) = v73;
          goto LABEL_110;
        }
      }

      else
      {
        v70 = *(result + 60) + 1;
        *(result + 60) = v70;
        v71 = v68 + 2;
        if (v68 == -1)
        {
          goto LABEL_109;
        }
      }

      v173 = v70;
      v87 = *(result + 44);
      v88 = __OFSUB__(v87, v71);
      v89 = v87 - v71;
      v168 = 0;
      if (v89 < 0 != v88)
      {
        v90 = *(result + 60);
        v73 = v90 + 1;
        *(result + 60) = v90 + v71;
      }

      else
      {
        v73 = *(result + 48);
        *(result + 44) = v89;
        *(result + 48) = v73 + v71;
      }

LABEL_148:
      v180 = v73;
      v110 = v73 + v68 + 1;
      v175 = v73 + v68;
      if (v13 == 6)
      {
        v111 = v14 + 1;
        v112 = *(v12 + 36);
        if (*(v12 + 37) <= v112)
        {
          v112 = sub_18194CAFC(v12, 29, v111, 0, v23, v22);
        }

        else
        {
          *(v12 + 36) = v112 + 1;
          v113 = &v12[17][5 * v112];
          *v113 = 64797;
          *(v113 + 4) = v111;
          *(v113 + 8) = 0;
          *(v113 + 12) = v23;
          *(v113 + 16) = v22;
          *(v113 + 24) = 0;
          *(v113 + 32) = 0;
        }
      }

      else
      {
        v112 = 0;
      }

      v114 = *(v12 + 36);
      v177 = v112;
      if (*(v12 + 37) <= v114)
      {
        sub_18194C8AC(v12, 97, v23, v22, v110);
        if (v13 != 6)
        {
          goto LABEL_162;
        }
      }

      else
      {
        *(v12 + 36) = v114 + 1;
        v115 = &v12[17][5 * v114];
        *v115 = 97;
        *(v115 + 4) = v23;
        *(v115 + 8) = v22;
        *(v115 + 12) = v110;
        *(v115 + 24) = 0;
        *(v115 + 32) = 0;
        *(v115 + 16) = 0;
        if (v13 != 6)
        {
          goto LABEL_162;
        }
      }

      v116 = v14 + 1;
      v117 = *(v12 + 36);
      if (*(v12 + 37) <= v117)
      {
        sub_18194C8AC(v12, 138, v116, v110, 0);
      }

      else
      {
        *(v12 + 36) = v117 + 1;
        v118 = &v12[17][5 * v117];
        *v118 = 138;
        *(v118 + 4) = v116;
        *(v118 + 8) = v110;
        *(v118 + 12) = 0;
        *(v118 + 28) = 0;
        *(v118 + 20) = 0;
        *(v118 + 36) = 0;
      }

      v119 = *(v12 + 36);
      if (v119 >= 1)
      {
        *(&v12[17][5 * v119 - 4] - 3) = 16;
      }

LABEL_162:
      if (v68 >= 1)
      {
        v120 = (v166 + 28);
        v121 = v180;
        do
        {
          v123 = *v120;
          v120 += 12;
          v124 = v23 - 1 + v123;
          v125 = *(v12 + 36);
          if (*(v12 + 37) > v125)
          {
            *(v12 + 36) = v125 + 1;
            v122 = &v12[17][5 * v125];
            *v122 = 81;
            *(v122 + 4) = v124;
            *(v122 + 8) = v121;
            *(v122 + 12) = 0;
            *(v122 + 28) = 0;
            *(v122 + 20) = 0;
            *(v122 + 36) = 0;
          }

          else
          {
            sub_18194C8AC(v12, 81, v124, v121, 0);
          }

          ++v121;
          --v68;
        }

        while (v68);
      }

      v126 = *(v12 + 36);
      if (*(v12 + 37) <= v126)
      {
        v128 = v14;
        sub_18194C8AC(v12, 126, v14, v175, 0);
      }

      else
      {
        *(v12 + 36) = v126 + 1;
        v127 = &v12[17][5 * v126];
        *v127 = 126;
        *(v127 + 4) = v14;
        v128 = v14;
        *(v127 + 8) = v175;
        *(v127 + 12) = 0;
        *(v127 + 28) = 0;
        *(v127 + 20) = 0;
        *(v127 + 36) = 0;
      }

      v16 = v170;
      v129 = *(v12 + 36);
      if (*(v12 + 37) <= v129)
      {
        sub_18194C8AC(v12, 97, v180, v71, v173);
      }

      else
      {
        *(v12 + 36) = v129 + 1;
        v130 = &v12[17][5 * v129];
        *v130 = 97;
        *(v130 + 4) = v180;
        *(v130 + 8) = v71;
        *(v130 + 12) = v173;
        *(v130 + 24) = 0;
        *(v130 + 32) = 0;
        *(v130 + 16) = 0;
      }

      v131 = *(v12 + 36);
      if (*(v12 + 37) <= v131)
      {
        v134 = v128;
        v64 = v180;
        sub_18194CAFC(v12, 138, v134, v173, v180, v71);
        v133 = v177;
        if (!v177)
        {
          goto LABEL_182;
        }
      }

      else
      {
        *(v12 + 36) = v131 + 1;
        v132 = &v12[17][5 * v131];
        *v132 = 64906;
        *(v132 + 4) = v128;
        v64 = v180;
        *(v132 + 8) = v173;
        *(v132 + 12) = v180;
        *(v132 + 16) = v71;
        *(v132 + 24) = 0;
        *(v132 + 32) = 0;
        v133 = v177;
        if (!v177)
        {
          goto LABEL_182;
        }
      }

      if (*(*v12 + 103))
      {
        v135 = &byte_1EA831A58;
      }

      else
      {
        v135 = &v12[17][5 * v133];
      }

      *(v135 + 2) = *(v12 + 36);
LABEL_182:
      if (v173)
      {
        v136 = *(result + 31);
        if (v136 <= 7)
        {
          *(result + 31) = v136 + 1;
          *(result + 4 * v136 + 184) = v173;
        }
      }

      if (!v168)
      {
        if (*(result + 44) >= v71)
        {
          goto LABEL_199;
        }

        *(result + 44) = v71;
        goto LABEL_188;
      }

LABEL_196:
      if (v64)
      {
        goto LABEL_197;
      }

LABEL_199:
      if (!v16)
      {
LABEL_200:
        v142 = *(v10 + 8);
        if (v142)
        {
          v143 = *(v12 + 36);
          if (*(v12 + 37) <= v143)
          {
            sub_18194C8AC(v12, 61, v142, a8, 0);
          }

          else
          {
            *(v12 + 36) = v143 + 1;
            v144 = &v12[17][5 * v143];
            *v144 = 61;
            *(v144 + 4) = v142;
            *(v144 + 8) = a8;
            *(v144 + 12) = 0;
            *(v144 + 28) = 0;
            *(v144 + 20) = 0;
            *(v144 + 36) = 0;
          }
        }
      }

      return;
    case 9:
    case 13:
      if (v16)
      {
        goto LABEL_107;
      }

      v74 = v23;
      if (v13 == 13)
      {
        v74 = *(v8 + 1);
        v75 = *(v12 + 36);
        if (*(v12 + 37) > v75)
        {
          *(v12 + 36) = v75 + 1;
          v76 = &v12[17][5 * v75];
          *v76 = 12;
          *(v76 + 4) = v74;
          *(v76 + 8) = 0u;
          *(v76 + 24) = 0u;
          goto LABEL_200;
        }

        v149 = v12;
        v150 = 12;
        v151 = 0;
      }

      else
      {
        v147 = *(v12 + 36);
        if (*(v12 + 37) > v147)
        {
          *(v12 + 36) = v147 + 1;
          v148 = &v12[17][5 * v147];
          *v148 = 84;
          *(v148 + 4) = v23;
          *(v148 + 8) = v22;
          *(v148 + 12) = 0;
          *(v148 + 28) = 0;
          *(v148 + 20) = 0;
          *(v148 + 36) = 0;
          goto LABEL_200;
        }

        v149 = v12;
        v150 = 84;
        v151 = v22;
      }

      sub_18194C8AC(v149, v150, v74, v151, 0);
      goto LABEL_200;
    case 10:
      if (v16)
      {
        goto LABEL_107;
      }

      goto LABEL_200;
    case 11:
      if (v16)
      {
        sub_1818E4598(result, v16, v10, v23, v31, v22, v174);
        *(v8 + 2) = 0;
        return;
      }

      if (*(result + 31))
      {
        v145 = *(result + 31) - 1;
        *(result + 31) = v145;
        v146 = *(result + 4 * v145 + 184);
      }

      else
      {
        v146 = *(result + 60) + 1;
        *(result + 60) = v146;
      }

      v158 = *(v178 + 3);
      v159 = *(v12 + 36);
      if (*(v12 + 37) <= v159)
      {
        v159 = sub_18194C8AC(v12, 97, v23, v22, v146);
      }

      else
      {
        *(v12 + 36) = v159 + 1;
        v160 = &v12[17][5 * v159];
        *v160 = 97;
        *(v160 + 4) = v23;
        *(v160 + 8) = v22;
        *(v160 + 12) = v146;
        *(v160 + 24) = 0;
        *(v160 + 32) = 0;
        *(v160 + 16) = 0;
      }

      if (*(*v12 + 103))
      {
        if (v22 != -11)
        {
          sub_1818A3B68(*v12, v22, v158, a4);
        }
      }

      else
      {
        if (v159 < 0)
        {
          v159 = *(v12 + 36) - 1;
        }

        v161 = &v12[17][5 * v159];
        if ((v22 & 0x80000000) != 0 && !*(v161 + 1))
        {
          if (v22 == -3)
          {
            *(v161 + 16) = v158;
            *(v161 + 1) = -3;
          }

          else if (v158)
          {
            *(v161 + 16) = v158;
            *(v161 + 1) = v22;
            if (v22 == -11)
            {
              ++*(v158 + 24);
            }
          }
        }

        else
        {
          sub_18194CB90(v12, v161, v158, v22);
        }
      }

      v162 = *(v12 + 36);
      if (*(v12 + 37) <= v162)
      {
        sub_18194CAFC(v12, 138, v14, v146, v23, v22);
      }

      else
      {
        *(v12 + 36) = v162 + 1;
        v163 = &v12[17][5 * v162];
        *v163 = 64906;
        *(v163 + 4) = v14;
        *(v163 + 8) = v146;
        *(v163 + 12) = v23;
        *(v163 + 16) = v22;
        *(v163 + 24) = 0;
        *(v163 + 32) = 0;
      }

      v164 = *(v178 + 2);
      if (v164)
      {
        sub_181910A18(v12, 183, v164, 0, v23, v22);
        sub_18195AD8C(result, 0, "CREATE BLOOM FILTER");
      }

      if (v146)
      {
        v165 = *(result + 31);
        if (v165 <= 7)
        {
          *(result + 31) = v165 + 1;
          *(result + 4 * v165 + 184) = v146;
        }
      }

      goto LABEL_200;
    case 15:
      if (v16)
      {
LABEL_107:
        sub_1818E4598(result, v16, v10, v23, v31, v22, v174);
        return;
      }

      v80 = *(v8 + 2);
      if (*(result + 31))
      {
        v81 = *(result + 31) - 1;
        *(result + 31) = v81;
        v82 = *(result + 4 * v81 + 184);
      }

      else
      {
        v82 = (*(result + 60) + 1);
        *(result + 60) = v82;
      }

      v152 = *(v12 + 36);
      if (*(v12 + 37) <= v152)
      {
        sub_18194C8AC(v12, 51, v23, a8, 0);
      }

      else
      {
        *(v12 + 36) = v152 + 1;
        v153 = &v12[17][5 * v152];
        *v153 = 51;
        *(v153 + 4) = v23;
        *(v153 + 8) = a8;
        *(v153 + 12) = 0;
        *(v153 + 28) = 0;
        *(v153 + 20) = 0;
        *(v153 + 36) = 0;
      }

      v154 = (v80 >> 31) + v23;
      v155 = v22 - (v80 >> 31);
      v156 = *(v12 + 36);
      if (*(v12 + 37) <= v156)
      {
        sub_18194C8AC(v12, 97, v154, v155, v82);
      }

      else
      {
        *(v12 + 36) = v156 + 1;
        v157 = &v12[17][5 * v156];
        *v157 = 97;
        *(v157 + 4) = v154;
        *(v157 + 8) = v155;
        *(v157 + 12) = v82;
        *(v157 + 24) = 0;
        *(v157 + 32) = 0;
        *(v157 + 16) = 0;
      }

      if ((v80 & 0x80000000) != 0)
      {
        sub_1818A2964(v12, 128, v14, v82, v23);
      }

      else
      {
        sub_181910A18(v12, 138, v14, v82, v23, v80);
      }

      goto LABEL_200;
    default:
      goto LABEL_199;
  }
}