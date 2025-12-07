unsigned __int8 *match_0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (!(*a1)--)
  {
    luaL_error(*(a1 + 32), "pattern too complex");
  }

  v7 = a1 + 48;
LABEL_4:
  v8 = a3;
  while (1)
  {
    v9 = *(a1 + 24);
    if (v8 == v9)
    {
      result = a2;
      goto LABEL_87;
    }

    v10 = *v8;
    if (v10 <= 0x24)
    {
      if (v10 == 36 && v8 + 1 == v9)
      {
        if (a2 == *(a1 + 16))
        {
          result = a2;
        }

        else
        {
          result = 0;
        }

        goto LABEL_87;
      }

      goto LABEL_20;
    }

    if (v10 != 37)
    {
      break;
    }

    v11 = v8[1];
    if (v11 == 102)
    {
      v17 = v8[2];
      v16 = v8 + 2;
      if (v17 != 91)
      {
        luaL_error(*(a1 + 32), "missing '[' after '%%f' in pattern");
      }

      v18 = classend(a1, v16);
      if (a2 == *(a1 + 8))
      {
        v19 = 0;
      }

      else
      {
        v19 = *(a2 - 1);
      }

      if (matchbracketclass(v19, v16, (v18 - 1)))
      {
        goto LABEL_72;
      }

      v20 = matchbracketclass(*a2, v16, (v18 - 1));
      v8 = v18;
      if (!v20)
      {
        goto LABEL_72;
      }
    }

    else
    {
      if (v11 - 48 < 0xA)
      {
        v21 = v11 - 49;
        if (v11 < 0x31 || v21 >= *(a1 + 40) || *(v7 + 16 * v21 + 8) == -1)
        {
          v21 = luaL_error(*(a1 + 32), "invalid capture index %%%d", v11 - 48);
        }

        v22 = v7 + 16 * v21;
        v23 = *(v22 + 8);
        if (*(a1 + 16) - a2 >= v23 && !memcmp(*v22, a2, *(v22 + 8)) && a2 != 0)
        {
          a2 += v23;
          a3 = v8 + 2;
          goto LABEL_4;
        }

        goto LABEL_72;
      }

      if (v11 == 98)
      {
        if (v9 - 1 <= v8 + 2)
        {
          luaL_error(*(a1 + 32), "malformed pattern (missing arguments to '%%b')");
        }

        v25 = *a2;
        if (v25 == v8[2])
        {
          v26 = *(a1 + 16);
          v27 = a2 + 1;
          if ((a2 + 1) < v26)
          {
            v28 = 1;
            while (1)
            {
              v29 = *v27;
              if (v29 == v8[3])
              {
                if (!--v28)
                {
                  a2 = v27 + 1;
                  a3 = v8 + 4;
                  goto LABEL_4;
                }
              }

              else if (v29 == v25)
              {
                ++v28;
              }

              result = 0;
              if (++v27 == v26)
              {
                goto LABEL_87;
              }
            }
          }
        }

        goto LABEL_72;
      }

LABEL_20:
      a3 = classend(a1, v8);
      v13 = singlematch(a1, a2, v8, a3);
      v14 = *a3;
      if (v13)
      {
        if (v14 != 63)
        {
          if (v14 != 42)
          {
            if (v14 != 43)
            {
              if (v14 != 45)
              {
                ++a2;
                goto LABEL_4;
              }

              while (1)
              {
                result = match_0(a1, a2, a3 + 1);
                if (result)
                {
                  goto LABEL_87;
                }

                if (!singlematch(a1, a2, v8, a3))
                {
                  goto LABEL_72;
                }

                ++a2;
              }
            }

            ++a2;
          }

          v30 = -1;
          do
          {
            v31 = singlematch(a1, a2++, v8, a3);
            ++v30;
          }

          while (v31);
          v32 = a2 - 1;
          while ((v30 & 0x8000000000000000) == 0)
          {
            result = match_0(a1, v32, a3 + 1);
            --v30;
            --v32;
            if (result)
            {
              goto LABEL_87;
            }
          }

LABEL_72:
          result = 0;
          goto LABEL_87;
        }

        v8 = a3 + 1;
        result = match_0(a1, a2 + 1, a3 + 1);
        if (result)
        {
          goto LABEL_87;
        }
      }

      else
      {
        result = 0;
        if (v14 > 0x3F || ((1 << v14) & 0x8000240000000000) == 0)
        {
          goto LABEL_87;
        }

        v8 = a3 + 1;
      }
    }
  }

  if (v10 != 41)
  {
    if (v10 == 40)
    {
      v33 = v8 + 1;
      if (v8[1] == 41)
      {
        v33 = v8 + 2;
        v34 = a1;
        v35 = a2;
        v36 = -2;
      }

      else
      {
        v34 = a1;
        v35 = a2;
        v36 = -1;
      }

      result = start_capture(v34, v35, v33, v36);
      goto LABEL_87;
    }

    goto LABEL_20;
  }

  v37 = *(a1 + 40);
  v38 = 16 * v37 + 40;
  while (1)
  {
    v39 = __OFSUB__(v37, 1);
    LODWORD(v37) = v37 - 1;
    if (v37 < 0 != v39)
    {
      break;
    }

    v40 = *(a1 + v38);
    v38 -= 16;
    if (v40 == -1)
    {
      goto LABEL_83;
    }
  }

  LODWORD(v37) = luaL_error(*(a1 + 32), "invalid pattern capture");
LABEL_83:
  v41 = (v7 + 16 * v37);
  v41[1] = &a2[-*v41];
  result = match_0(a1, a2, v8 + 1);
  if (!result)
  {
    v41[1] = -1;
  }

LABEL_87:
  ++*a1;
  return result;
}

char *match_1(uint64_t a1, char *a2, unsigned __int8 *a3)
{
  if (!(*a1)--)
  {
    luaL_error(*(a1 + 32), "pattern too complex");
  }

  if (*(a1 + 24) == a3)
  {
    goto LABEL_118;
  }

  v7 = a1 + 48;
  do
  {
    v61 = 0;
    utf8_safe_decode(*(a1 + 32), a3, &v61);
    if (v61 <= 36)
    {
      if (v61 == 36 && a3 + 1 == *(a1 + 24))
      {
        if (a2 == *(a1 + 16))
        {
          matched = a2;
        }

        else
        {
          matched = 0;
        }

        goto LABEL_117;
      }

      goto LABEL_23;
    }

    if (v61 != 37)
    {
      if (v61 == 41)
      {
        v47 = *(a1 + 40);
        v48 = 16 * v47 + 40;
        while (1)
        {
          v49 = __OFSUB__(v47, 1);
          LODWORD(v47) = v47 - 1;
          if (v47 < 0 != v49)
          {
            break;
          }

          v50 = *(a1 + v48);
          v48 -= 16;
          if (v50 == -1)
          {
            goto LABEL_112;
          }
        }

        LODWORD(v47) = luaL_error(*(a1 + 32), "invalid pattern capture");
LABEL_112:
        v56 = (v7 + 16 * v47);
        v56[1] = &a2[-*v56];
        matched = match_1(a1, a2, a3 + 1);
        if (!matched)
        {
          v56[1] = -1;
        }

        goto LABEL_117;
      }

      if (v61 == 40)
      {
        v43 = a3 + 1;
        if (a3[1] == 41)
        {
          v43 = a3 + 2;
          v44 = a1;
          v45 = a2;
          v46 = -2;
        }

        else
        {
          v44 = a1;
          v45 = a2;
          v46 = -1;
        }

        matched = start_capture_0(v44, v45, v43, v46);
        goto LABEL_117;
      }

LABEL_23:
      v9 = classend_0(a1, a3);
      if (!singlematch_0(a1, a2, a3, v9))
      {
        v25 = *v9;
        v26 = v25 > 0x3F;
        v27 = (1 << v25) & 0x8000240000000000;
        if (!v26 && v27 != 0)
        {
          ++v9;
          goto LABEL_49;
        }

        goto LABEL_116;
      }

      v14 = *(a1 + 16);
      v15 = a2 + 1;
      do
      {
        v16 = v15;
        v17 = v15 - 1;
        if ((v15 - 1) >= v14)
        {
          break;
        }

        ++v15;
      }

      while ((*v16 & 0xC0) == 0x80);
      if (v17 >= v14)
      {
        v18 = *(a1 + 16);
      }

      else
      {
        v18 = v16;
      }

      v19 = *v9;
      if (v19 > 0x3E)
      {
        if (v19 == 63)
        {
          v20 = *(a1 + 24);
          v21 = v9 + 1;
          do
          {
            v22 = v21;
            v23 = (v21 - 1);
            if ((v21 - 1) >= v20)
            {
              break;
            }

            ++v21;
          }

          while ((*v22 & 0xC0) == 0x80);
          if (v23 >= v20)
          {
            v9 = *(a1 + 24);
          }

          else
          {
            v9 = v22;
          }

          matched = match_1(a1, v18, v9);
          if (!matched)
          {
            goto LABEL_49;
          }

          goto LABEL_117;
        }

        goto LABEL_48;
      }

      if (v19 != 42)
      {
        if (v19 != 43)
        {
          if (v19 == 45)
          {
            while (1)
            {
              matched = match_1(a1, a2, v9 + 1);
              if (matched)
              {
                goto LABEL_117;
              }

              if (!singlematch_0(a1, a2, a3, v9))
              {
                goto LABEL_116;
              }

              v39 = *(a1 + 16);
              v40 = a2 + 1;
              do
              {
                v41 = v40;
                v42 = v40 - 1;
                if ((v40 - 1) >= v39)
                {
                  break;
                }

                ++v40;
              }

              while ((*v41 & 0xC0) == 0x80);
              if (v42 >= v39)
              {
                a2 = *(a1 + 16);
              }

              else
              {
                a2 = v41;
              }
            }
          }

LABEL_48:
          a2 = v18;
          goto LABEL_49;
        }

        a2 = v18;
      }

      v51 = a2;
      if (!singlematch_0(a1, a2, a3, v9))
      {
        goto LABEL_120;
      }

      v51 = a2;
      do
      {
        v52 = *(a1 + 16);
        v53 = v51 + 1;
        do
        {
          v54 = v53;
          v55 = (v53 - 1);
          if ((v53 - 1) >= v52)
          {
            break;
          }

          ++v53;
        }

        while ((*v54 & 0xC0) == 0x80);
        if (v55 >= v52)
        {
          v51 = *(a1 + 16);
        }

        else
        {
          v51 = v54;
        }
      }

      while (singlematch_0(a1, v51, a3, v9));
      while (1)
      {
        if (v51 < a2)
        {
          goto LABEL_116;
        }

LABEL_120:
        matched = match_1(a1, v51, v9 + 1);
        if (matched)
        {
          break;
        }

        if (v51 == a2)
        {
          goto LABEL_116;
        }

        v58 = v51 - 1;
        do
        {
          v59 = v58;
          v60 = (v58 + 1);
          if (v58 + 1 <= a2)
          {
            break;
          }

          --v58;
        }

        while ((*v59 & 0xC0) == 0x80);
        if (v60 <= a2)
        {
          v51 = a2;
        }

        else
        {
          v51 = v59;
        }
      }

LABEL_117:
      a2 = matched;
      break;
    }

    v8 = utf8_safe_decode(*(a1 + 32), a3 + 1, &v61);
    v9 = v8;
    if ((v61 - 48) < 0xA)
    {
      v10 = v61 - 49;
      if (v61 < 0x31 || v10 >= *(a1 + 40) || *(v7 + 16 * v10 + 8) == -1)
      {
        v10 = luaL_error(*(a1 + 32), "invalid capture index %%%d", (v61 - 48));
      }

      v11 = v7 + 16 * v10;
      v12 = *(v11 + 8);
      if (*(a1 + 16) - a2 >= v12 && !memcmp(*v11, a2, *(v11 + 8)) && a2 != 0)
      {
        a2 += v12;
        goto LABEL_49;
      }

LABEL_116:
      matched = 0;
      goto LABEL_117;
    }

    if (v61 == 102)
    {
      v63 = 0;
      if (*v8 != 91)
      {
        luaL_error(*(a1 + 32), "missing '[' after '%%f' in pattern");
      }

      v33 = classend_0(a1, v9);
      v34 = *(a1 + 8);
      if (a2 != v34)
      {
        v35 = a2 - 1;
        do
        {
          v36 = v35;
          v37 = v35 + 1;
          if (v35 + 1 <= v34)
          {
            break;
          }

          --v35;
        }

        while ((*v36 & 0xC0) == 0x80);
        if (v37 <= v34)
        {
          v38 = *(a1 + 8);
        }

        else
        {
          v38 = v36;
        }

        utf8_decode_0(v38, &v63 + 1, 0);
      }

      if (a2 != *(a1 + 16))
      {
        utf8_decode_0(a2, &v63, 0);
      }

      if (!matchbracketclass_0(a1, HIDWORD(v63), v9, (v33 - 1)) && matchbracketclass_0(a1, v63, v9, (v33 - 1)))
      {
        v9 = v33;
        goto LABEL_49;
      }

      goto LABEL_116;
    }

    if (v61 != 98)
    {
      goto LABEL_23;
    }

    v63 = 0;
    v62 = 0;
    v29 = utf8_safe_decode(*(a1 + 32), v8, &v63);
    if (v29 >= *(a1 + 24))
    {
      luaL_error(*(a1 + 32), "malformed pattern (missing arguments to '%%b')");
    }

    v9 = utf8_safe_decode(*(a1 + 32), v29, &v62);
    v30 = utf8_safe_decode(*(a1 + 32), a2, &v63 + 1);
    if (HIDWORD(v63) != v63)
    {
      goto LABEL_116;
    }

    a2 = v30;
    if (v30 >= *(a1 + 16))
    {
      goto LABEL_116;
    }

    v31 = 1;
    while (1)
    {
      v32 = utf8_safe_decode(*(a1 + 32), a2, &v63 + 1);
      a2 = v32;
      if (HIDWORD(v63) != v62)
      {
        if (HIDWORD(v63) == v63)
        {
          ++v31;
        }

        goto LABEL_63;
      }

      if (!--v31)
      {
        break;
      }

LABEL_63:
      if (v32 >= *(a1 + 16))
      {
        goto LABEL_116;
      }
    }

    if (!v32)
    {
      goto LABEL_116;
    }

LABEL_49:
    a3 = v9;
  }

  while (v9 != *(a1 + 24));
LABEL_118:
  ++*a1;
  return a2;
}

uint64_t match_2(uint64_t a1, uint64_t a2, uint64_t a3, int64x2_t *a4, uint64_t *a5, uint64_t (*a6)(__int128 *))
{
  __n = 0;
  v10 = 0;
  v11 = 0;
  __s2[1] = *MEMORY[0x1E69E9840];
  v12 = 99;
  v761 = 99;
  v760 = 0;
LABEL_2:
  switch(v12)
  {
    case 0:
      goto LABEL_251;
    case 1:
      v13 = v760;
      if (v11)
      {
        goto LABEL_216;
      }

      a4[7].i32[3] = *(v760 + 252);
      v97 = *(v13 + 16);
      v98 = __rev16(*(v97 + 1));
      *(v13 + 16) = v97 + v98;
      if (*(v97 + v98) == 65)
      {
        goto LABEL_131;
      }

      v205 = a4[1].i64[0];
      *(v205 + 4 * *(v13 + 244)) = *(v13 + 256);
      *(v205 + 4 * *(v13 + 244) + 4) = *(v13 + 260);
      *(v205 + 4 * (a4[1].i32[2] - *(v13 + 240))) = *(v13 + 264);
      goto LABEL_4;
    case 2:
      v13 = v760;
      if (v11)
      {
        goto LABEL_216;
      }

      v82 = *(v760 + 16);
      v83 = __rev16(*(v82 + 1));
      *(v760 + 16) = v82 + v83;
      if (*(v82 + v83) == 65)
      {
        goto LABEL_105;
      }

      goto LABEL_4;
    case 3:
    case 5:
      goto LABEL_215;
    case 4:
      v13 = v760;
      if (!v11)
      {
        *(v760 + 16) += __rev16(*(*(v760 + 16) + 1));
        goto LABEL_292;
      }

      if (v11 == 1)
      {
        v107 = (*(v760 + 16) + __rev16(*(*(v760 + 16) + 4)) + 3);
        *(v760 + 16) = v107;
        for (i = *v107; i == 65; i = *v107)
        {
          v107 += __rev16(*(v107 + 1));
          *(v13 + 16) = v107;
        }

LABEL_292:
        *&v756 = 0;
        Mem = pcre_getMem(a1, 5, &v756);
        v100 = v756;
        v101 = v760;
        if (v756 && (Mem & 0x80000000) == 0)
        {
          v102 = 0;
          v103 = *(v760 + 8);
          *(v756 + 8) = v103;
          v199 = *(v101 + 16);
LABEL_295:
          v127 = v199 + 3;
          goto LABEL_296;
        }

        goto LABEL_1202;
      }

      goto LABEL_216;
    case 6:
      v13 = v760;
      if (v11)
      {
        if (v11 == 1)
        {
          v110 = *(v760 + 16);
          v111 = *v110;
          goto LABEL_303;
        }

        goto LABEL_216;
      }

      v110 = (*(v760 + 16) + __rev16(*(*(v760 + 16) + 1)));
      *(v760 + 16) = v110;
      v111 = *v110;
      if (v111 != 65)
      {
LABEL_303:
        if (v111 != 66)
        {
          if ((*(v13 + 48) & 1) == 0)
          {
            do
            {
              v110 += __rev16(*(v110 + 1));
              *(v13 + 16) = v110;
            }

            while (*v110 == 65);
            *(v13 + 16) = v110 + 3;
            *(v13 + 24) = a4[7].i32[2];
            goto LABEL_329;
          }

LABEL_907:
          v760 = *v13;
          pcre_freeMem(a1, &v761);
          v172 = v760;
          v11 = 1;
          if (v760)
          {
            goto LABEL_1415;
          }

          return v11;
        }

        goto LABEL_4;
      }

LABEL_299:
      *&v756 = 0;
      v196 = a1;
      v197 = 6;
      goto LABEL_300;
    case 7:
      v13 = v760;
      if (v11)
      {
        if (v11 != 1)
        {
          goto LABEL_216;
        }

LABEL_4:
        v14 = *v13;
        goto LABEL_905;
      }

      v68 = (*(v760 + 16) + __rev16(*(*(v760 + 16) + 1)));
      *(v760 + 16) = v68;
      if (*v68 == 65)
      {
LABEL_290:
        *&v756 = 0;
        v196 = a1;
        v197 = 7;
LABEL_300:
        v200 = pcre_getMem(v196, v197, &v756);
        v100 = v756;
        v101 = v760;
        if (!v756 || v200 < 0)
        {
          goto LABEL_1202;
        }

        v173 = 0;
        v102 = 0;
        v103 = *(v760 + 8);
        *(v756 + 8) = v103;
        *(v100 + 16) = *(v101 + 16) + 3;
        *(v100 + 24) = *(v101 + 24);
        v174 = *(v101 + 32);
        *v100 = v101;
        *(v100 + 32) = v174;
        *(v100 + 40) = 0;
        goto LABEL_312;
      }

      if (*(v13 + 48))
      {
        goto LABEL_907;
      }

      goto LABEL_327;
    case 8:
      v13 = v760;
      if (v11)
      {
        if (v11 == 1)
        {
          a4[8].i64[1] = *(v760 + 112);
          v115 = *(v13 + 144);
          if (v115 != v13 + 268)
          {
            heap_Free(*(*a1 + 8), v115);
            v13 = v760;
          }

          goto LABEL_907;
        }

        goto LABEL_216;
      }

      a4[8].i64[1] = v760 + 112;
      memcpy(a4[1].i64[0], *(v13 + 144), 4 * *(v13 + 152));
      v13 = v760;
      v201 = *(v760 + 56);
      v202 = __rev16(*(v201 + 1));
      *(v760 + 56) = v201 + v202;
      if (*(v201 + v202) != 65)
      {
        a4[8].i64[1] = *(v13 + 112);
        v567 = *(v13 + 144);
        if (v567 != v13 + 268)
        {
          heap_Free(*(*a1 + 8), v567);
          v13 = v760;
        }

        goto LABEL_4;
      }

LABEL_308:
      *&v756 = 0;
      v203 = pcre_getMem(a1, 8, &v756);
      v100 = v756;
      v101 = v760;
      if (!v756 || v203 < 0)
      {
        goto LABEL_1202;
      }

      v102 = 0;
      v103 = *(v760 + 8);
      *(v756 + 8) = v103;
      v104 = *(v101 + 56);
      goto LABEL_311;
    case 9:
      v13 = v760;
      if (v11)
      {
        if (v11 != 1)
        {
LABEL_216:
          v150 = *v13;
          goto LABEL_248;
        }

        v68 = *(v760 + 16);
        v86 = *v68;
        goto LABEL_280;
      }

      v68 = (*(v760 + 16) + __rev16(*(*(v760 + 16) + 1)));
      *(v760 + 16) = v68;
      v86 = *v68;
      if (v86 != 65)
      {
LABEL_280:
        if (v86 != 74 && v86 != 65)
        {
          goto LABEL_4;
        }

        do
        {
          v68 += __rev16(*(v68 + 1));
          *(v13 + 16) = v68;
        }

        while (*v68 == 65);
        *(v13 + 24) = a4[7].i32[2];
        v194 = a4[7].i64[0];
        *(v13 + 8) = v194;
        v195 = *v68;
        if (v195 == 66 || v194 == *(v13 + 104))
        {
LABEL_327:
          v112 = (v68 + 3);
LABEL_328:
          *(v13 + 16) = v112;
          goto LABEL_329;
        }

        if (v68[3] == 18)
        {
          *(v13 + 32) = *(v13 + 32) & 0xFFFFFFFFFFFFFFF8 | v68[4];
          v195 = *v68;
        }

        if (v195 == 68)
        {
          *&v756 = 0;
          v105 = a1;
          v106 = 10;
          goto LABEL_255;
        }

        *&v756 = 0;
        v113 = a1;
        v114 = 12;
LABEL_175:
        v126 = pcre_getMem(v113, v114, &v756);
        v100 = v756;
        v101 = v760;
        if (!v756)
        {
          goto LABEL_1202;
        }

LABEL_176:
        if ((v126 & 0x80000000) == 0)
        {
          v102 = 0;
          v103 = *(v101 + 8);
          *(v100 + 8) = v103;
          v127 = *(v101 + 96);
LABEL_296:
          *(v100 + 16) = v127;
          *(v100 + 24) = *(v101 + 24);
          v174 = *(v101 + 32);
          *(v100 + 32) = v174;
          v173 = *(v101 + 40);
          *(v100 + 48) = 2;
          *(v100 + 40) = v173;
LABEL_297:
          *v100 = v101;
LABEL_313:
          v760 = v100;
          goto LABEL_1409;
        }

LABEL_1202:
        v587 = *v101;
        goto LABEL_1413;
      }

LABEL_279:
      *&v756 = 0;
      v84 = a1;
      v85 = 9;
      goto LABEL_132;
    case 10:
      if (v11)
      {
        goto LABEL_215;
      }

      *&v756 = 0;
      v113 = a1;
      v114 = 11;
      goto LABEL_175;
    case 11:
    case 13:
    case 17:
    case 19:
      v13 = v760;
      if (!v11)
      {
        goto LABEL_4;
      }

      goto LABEL_216;
    case 12:
      if (v11)
      {
        goto LABEL_215;
      }

      *&v756 = 0;
      v105 = a1;
      v106 = 13;
      goto LABEL_255;
    case 14:
      v13 = v760;
      if (v11)
      {
        goto LABEL_216;
      }

      v68 = *(v760 + 80);
      do
      {
        v68 += __rev16(*(v68 + 1));
        *(v13 + 80) = v68;
      }

      while (*v68 == 65);
      goto LABEL_327;
    case 15:
      v13 = v760;
      if (v11)
      {
        goto LABEL_216;
      }

      v112 = *(v760 + 16) + 1;
      goto LABEL_328;
    case 16:
      if (v11)
      {
        goto LABEL_215;
      }

      *&v756 = 0;
      v113 = a1;
      v114 = 17;
      goto LABEL_175;
    case 18:
      if (!v11)
      {
        *&v756 = 0;
        v105 = a1;
        v106 = 19;
LABEL_255:
        v175 = pcre_getMem(v105, v106, &v756);
        v100 = v756;
        v176 = v760;
        if (v756 && (v175 & 0x80000000) == 0)
        {
          goto LABEL_257;
        }

        goto LABEL_1031;
      }

LABEL_215:
      v13 = v760;
      goto LABEL_216;
    case 20:
      v118 = v760;
      if (v11)
      {
        goto LABEL_233;
      }

      v749 = a3;
      v750 = a5;
      v119 = *(v760 + 224);
      if (v119 >= *(v760 + 232))
      {
        goto LABEL_263;
      }

      v120 = *(v760 + 8);
      v121 = *(v760 + 228);
      if (!match_ref_0(*(v760 + 244), v120, v121, a4, *(v760 + 32)))
      {
        goto LABEL_263;
      }

      *(v118 + 8) = &v120[v121];
      *(v118 + 224) = v119 + 1;
      goto LABEL_168;
    case 21:
      v31 = v760;
      if (v11)
      {
        goto LABEL_247;
      }

      v124 = (*(v760 + 8) - *(v760 + 228));
      *(v760 + 8) = v124;
      v125 = *(v31 + 88);
      goto LABEL_171;
    case 22:
      v13 = v760;
      if (v11)
      {
        goto LABEL_216;
      }

      v139 = *(v760 + 224);
      if (v139 >= *(v760 + 232))
      {
        goto LABEL_4;
      }

      v140 = *(v760 + 8);
      if (v140 >= a4[6].i64[0])
      {
        goto LABEL_4;
      }

      *(v760 + 8) = v140 + 1;
      v141 = *v140;
      if ((~v141 & 0xC0) != 0)
      {
        goto LABEL_911;
      }

      v142 = utf8_table4[v141 & 0x3F];
      v143 = 6 * v142;
      v141 = (utf8_table3[utf8_table4[v141 & 0x3F]] & v141) << (6 * v142);
      v144 = v140 + 2;
      v145 = v142 + 1;
      v146 = v143 - 6;
      do
      {
        *(v13 + 8) = v144;
        v141 |= (*(v144++ - 1) & 0x3F) << v146;
        --v145;
        v146 -= 6;
      }

      while (v145 > 1);
      if (v141 < 256)
      {
LABEL_911:
        if (((*(*(v13 + 72) + v141 / 8) >> (v141 & 7)) & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (*(v13 + 248) == 59)
      {
        goto LABEL_4;
      }

      *(v13 + 224) = v139 + 1;
      goto LABEL_913;
    case 23:
      v13 = v760;
      if (v11)
      {
        goto LABEL_216;
      }

      v158 = *(v760 + 224);
      if (v158 >= *(v760 + 232))
      {
        goto LABEL_4;
      }

      v159 = *(v760 + 8);
      if (v159 >= a4[6].i64[0])
      {
        goto LABEL_4;
      }

      *(v760 + 8) = v159 + 1;
      if (((*(*(v13 + 72) + (*v159 >> 3)) >> (*v159 & 7)) & 1) == 0)
      {
        goto LABEL_4;
      }

      *(v13 + 224) = v158 + 1;
      goto LABEL_231;
    case 24:
      v31 = v760;
      if (v11)
      {
        goto LABEL_247;
      }

      v94 = *(v760 + 8);
      *(v760 + 8) = v94 - 1;
      if (v94 == *(v31 + 88))
      {
        goto LABEL_904;
      }

      if ((*(v94 - 1) & 0xC0) == 0x80)
      {
        v95 = (v94 - 2);
        do
        {
          *(v31 + 8) = v95;
          v96 = *v95--;
        }

        while ((v96 & 0xC0) == 0x80);
      }

      goto LABEL_128;
    case 25:
      v31 = v760;
      v92 = (*(v760 + 8) - 1);
      *(v760 + 8) = v92;
      if (v11)
      {
        goto LABEL_247;
      }

      v93 = *(v31 + 88);
      goto LABEL_121;
    case 26:
      v171 = v760;
      if (v11)
      {
        v150 = *v760;
        goto LABEL_248;
      }

      v181 = *(v760 + 224);
      if (v181 < *(v760 + 232))
      {
        v182 = *(v760 + 8);
        if (v182 < a4[6].i64[0])
        {
          *(v760 + 8) = v182 + 1;
          v183 = *v182;
          if ((~v183 & 0xC0) == 0)
          {
            v184 = utf8_table4[v183 & 0x3F];
            v185 = 6 * v184;
            v183 = (utf8_table3[utf8_table4[v183 & 0x3F]] & v183) << (6 * v184);
            v186 = v182 + 2;
            v187 = v184 + 1;
            v188 = v185 - 6;
            do
            {
              *(v171 + 8) = v186;
              v183 |= (*(v186++ - 1) & 0x3F) << v188;
              --v187;
              v188 -= 6;
            }

            while (v187 > 1);
          }

          if (match_xclass(v183, *(v171 + 72)))
          {
            *(v171 + 224) = v181 + 1;
            goto LABEL_272;
          }

          v760 = *v171;
          pcre_freeMem(a1, &v761);
          v172 = v760;
          if (v760)
          {
            goto LABEL_906;
          }

          return 0;
        }
      }

      v204 = *v760;
      goto LABEL_316;
    case 27:
      v13 = v760;
      if (v11)
      {
        goto LABEL_216;
      }

      v56 = *(v760 + 8);
      *(v760 + 8) = v56 - 1;
      if (v56 == *(v13 + 88))
      {
        goto LABEL_4;
      }

      if ((*(v56 - 1) & 0xC0) == 0x80)
      {
        v57 = (v56 - 2);
        do
        {
          *(v13 + 8) = v57;
          v58 = *v57--;
        }

        while ((v58 & 0xC0) == 0x80);
      }

      goto LABEL_64;
    case 28:
      v118 = v760;
      if (v11)
      {
LABEL_233:
        v760 = *v118;
        pcre_freeMem(a1, &v761);
        v160 = v760;
        if (!v760)
        {
          return v11;
        }

        *(v760 + 408) = v11;
LABEL_318:
        a4[9].i64[1] = v160;
        goto LABEL_1417;
      }

      v177 = *(v760 + 224);
      if (v177 >= *(v760 + 232) || (v178 = *(v760 + 8), v178 >= a4[6].i64[0]))
      {
        v204 = *v760;
LABEL_316:
        v760 = v204;
        pcre_freeMem(a1, &v761);
        v160 = v760;
        if (!v760)
        {
          return 0;
        }

        goto LABEL_317;
      }

      v749 = a3;
      v750 = a5;
      v179 = *(v760 + 228);
      if (!memcmp(v178, *(v760 + 64), v179))
      {
        v180 = __n;
      }

      else
      {
        v180 = __n;
        if (!__n)
        {
          v760 = *v118;
          pcre_freeMem(a1, &v761);
          v573 = v760;
          if (v760)
          {
            __n = 0;
            v11 = 0;
            *(v760 + 408) = 0;
            a4[9].i64[1] = v573;
            a3 = v749;
            a5 = v750;
            goto LABEL_1417;
          }

          return 0;
        }

        v179 = __n;
        if (memcmp(v178, __s2, __n))
        {
LABEL_263:
          v760 = *v118;
          pcre_freeMem(a1, &v761);
          v160 = v760;
          a3 = v749;
          a5 = v750;
          if (!v760)
          {
            return 0;
          }

LABEL_317:
          v11 = 0;
          *(v160 + 408) = 0;
          goto LABEL_318;
        }
      }

      *(v118 + 8) = &v178[v179];
      *(v118 + 224) = v177 + 1;
      goto LABEL_935;
    case 29:
      v31 = v760;
      if (v11)
      {
        goto LABEL_247;
      }

      v161 = (*(v760 + 8) - *(v760 + 228));
      *(v760 + 8) = v161;
      v162 = *(v31 + 88);
      goto LABEL_237;
    case 30:
      v13 = v760;
      if (v11)
      {
        goto LABEL_216;
      }

      v128 = *(v760 + 224);
      if (v128 >= *(v760 + 232))
      {
        goto LABEL_4;
      }

      v129 = *(v760 + 8);
      if (v129 >= a4[6].i64[0])
      {
        goto LABEL_4;
      }

      v130 = *(v760 + 220);
      v131 = a4[2].i64[0];
      *(v760 + 8) = v129 + 1;
      if (v130 != *(v131 + *v129))
      {
        goto LABEL_4;
      }

      *(v13 + 224) = v128 + 1;
      goto LABEL_183;
    case 31:
      v31 = v760;
      v109 = (*(v760 + 8) - 1);
      *(v760 + 8) = v109;
      if (v11)
      {
        goto LABEL_247;
      }

      v78 = *(v31 + 88);
      goto LABEL_147;
    case 32:
      v13 = v760;
      if (v11)
      {
        goto LABEL_216;
      }

      v132 = *(v760 + 224);
      if (v132 >= *(v760 + 232))
      {
        goto LABEL_4;
      }

      v133 = *(v760 + 8);
      if (v133 >= a4[6].i64[0])
      {
        goto LABEL_4;
      }

      v134 = *(v760 + 220);
      *(v760 + 8) = v133 + 1;
      if (v134 != *v133)
      {
        goto LABEL_4;
      }

      *(v13 + 224) = v132 + 1;
      goto LABEL_189;
    case 33:
      v31 = v760;
      v77 = (*(v760 + 8) - 1);
      *(v760 + 8) = v77;
      if (v11)
      {
        goto LABEL_247;
      }

      v78 = *(v31 + 88);
      goto LABEL_95;
    case 34:
      v13 = v760;
      if (v11)
      {
        goto LABEL_216;
      }

      v59 = *(v760 + 8);
      v60 = (v59 + 1);
      *(v760 + 8) = v59 + 1;
      v61 = *v59;
      if ((~v61 & 0xC0) != 0)
      {
        goto LABEL_70;
      }

      v62 = utf8_table4[v61 & 0x3F];
      v63 = 6 * v62;
      v61 = (utf8_table3[utf8_table4[v61 & 0x3F]] & v61) << (6 * v62);
      v64 = v62 + 1;
      v65 = v63 - 6;
      do
      {
        v66 = v60++;
        *(v13 + 8) = v60;
        v61 |= (*v66 & 0x3F) << v65;
        --v64;
        v65 -= 6;
      }

      while (v64 > 1);
      if (v61 <= 255)
      {
LABEL_70:
        v61 = *(a4[2].i64[0] + v61);
      }

      v67 = *(v13 + 224);
      if (v67 >= *(v13 + 232) || v60 >= a4[6].i64[0] || *(v13 + 220) == v61)
      {
        goto LABEL_4;
      }

      *(v13 + 224) = v67 + 1;
      goto LABEL_75;
    case 35:
      v13 = v760;
      if (v11)
      {
        goto LABEL_216;
      }

      v49 = *(v760 + 224);
      if (v49 >= *(v760 + 232))
      {
        goto LABEL_4;
      }

      v50 = *(v760 + 8);
      if (v50 >= a4[6].i64[0])
      {
        goto LABEL_4;
      }

      v51 = *(v760 + 220);
      v52 = a4[2].i64[0];
      *(v760 + 8) = v50 + 1;
      if (v51 == *(v52 + *v50))
      {
        goto LABEL_4;
      }

      *(v13 + 224) = v49 + 1;
      goto LABEL_52;
    case 36:
      v31 = v760;
      if (v11)
      {
        goto LABEL_247;
      }

      v53 = *(v760 + 8);
      *(v760 + 8) = v53 - 1;
      if (v53 == *(v31 + 88))
      {
        goto LABEL_904;
      }

      if ((*(v53 - 1) & 0xC0) == 0x80)
      {
        v54 = (v53 - 2);
        do
        {
          *(v31 + 8) = v54;
          v55 = *v54--;
        }

        while ((v55 & 0xC0) == 0x80);
      }

      goto LABEL_58;
    case 37:
      v31 = v760;
      if (v11)
      {
        goto LABEL_247;
      }

      v32 = (*(v760 + 8) - 1);
      *(v760 + 8) = v32;
      v33 = *(v31 + 88);
      goto LABEL_27;
    case 38:
      v13 = v760;
      if (v11)
      {
        goto LABEL_216;
      }

      v163 = *(v760 + 8);
      v164 = v163 + 1;
      *(v760 + 8) = v163 + 1;
      v165 = *v163;
      if ((~v165 & 0xC0) != 0)
      {
        v170 = v164;
      }

      else
      {
        v166 = utf8_table4[v165 & 0x3F];
        v167 = 6 * v166;
        v165 = (utf8_table3[utf8_table4[v165 & 0x3F]] & v165) << (6 * v166);
        v168 = v166 + 1;
        v169 = v167 - 6;
        do
        {
          v170 = (v164 + 1);
          *(v13 + 8) = v164 + 1;
          v165 |= (*v164 & 0x3F) << v169;
          --v168;
          v169 -= 6;
          ++v164;
        }

        while (v168 > 1);
      }

      v206 = *(v13 + 224);
      if (v206 >= *(v13 + 232) || v170 >= a4[6].i64[0] || *(v13 + 220) == v165)
      {
        goto LABEL_4;
      }

      *(v13 + 224) = v206 + 1;
      goto LABEL_325;
    case 39:
      v13 = v760;
      if (v11)
      {
        goto LABEL_216;
      }

      v147 = *(v760 + 224);
      if (v147 >= *(v760 + 232))
      {
        goto LABEL_4;
      }

      v148 = *(v760 + 8);
      if (v148 >= a4[6].i64[0])
      {
        goto LABEL_4;
      }

      v149 = *(v760 + 220);
      *(v760 + 8) = v148 + 1;
      if (v149 == *v148)
      {
        goto LABEL_4;
      }

      *(v13 + 224) = v147 + 1;
      goto LABEL_213;
    case 40:
      v31 = v760;
      if (v11)
      {
        goto LABEL_247;
      }

      v89 = *(v760 + 8);
      *(v760 + 8) = v89 - 1;
      if (v89 == *(v31 + 88))
      {
        goto LABEL_904;
      }

      if ((*(v89 - 1) & 0xC0) == 0x80)
      {
        v90 = (v89 - 2);
        do
        {
          *(v31 + 8) = v90;
          v91 = *v90--;
        }

        while ((v91 & 0xC0) == 0x80);
      }

      goto LABEL_118;
    case 41:
      v31 = v760;
      if (v11)
      {
        goto LABEL_247;
      }

      v116 = (*(v760 + 8) - 1);
      *(v760 + 8) = v116;
      v117 = *(v31 + 88);
      goto LABEL_162;
    case 42:
      v13 = v760;
      if (v11)
      {
        goto LABEL_216;
      }

      if (*(v760 + 224) >= *(v760 + 232))
      {
        goto LABEL_4;
      }

      v151 = *(v760 + 8);
      if (v151 >= a4[6].i64[0])
      {
        goto LABEL_4;
      }

      *(v760 + 8) = v151 + 1;
      v152 = *v151;
      if ((~v152 & 0xC0) == 0)
      {
        v153 = utf8_table4[v152 & 0x3F];
        v152 = (utf8_table3[utf8_table4[v152 & 0x3F]] & v152) << (6 * v153);
        v154 = v151 + 2;
        v155 = 6 * v153 - 6;
        v156 = v153 + 1;
        do
        {
          *(v13 + 8) = v154;
          v152 |= (*(v154++ - 1) & 0x3F) << v155;
          v155 -= 6;
          --v156;
        }

        while (v156 > 1);
      }

      v157 = ucp_findchar(v152, (v13 + 196), (v13 + 200));
      v13 = v760;
      *(v760 + 192) = v157;
      if (*(v13 + 188) == (**(v13 + 208) == *(v13 + 204)))
      {
        goto LABEL_4;
      }

      ++*(v13 + 224);
      goto LABEL_225;
    case 43:
      v13 = v760;
      if (v11)
      {
        goto LABEL_216;
      }

      if (*(v760 + 224) >= *(v760 + 232))
      {
        goto LABEL_4;
      }

      v15 = *(v760 + 8);
      if (v15 >= a4[6].i64[0])
      {
        goto LABEL_4;
      }

      *(v760 + 8) = v15 + 1;
      v16 = *v15;
      if (a4[3].i32[3] && (v16 & 0xC0) == 0xC0)
      {
        v17 = utf8_table4[v16 & 0x3F];
        v16 = (utf8_table3[utf8_table4[v16 & 0x3F]] & v16) << (6 * v17);
        v18 = v15 + 2;
        v19 = 6 * v17 - 6;
        v20 = v17 + 1;
        do
        {
          *(v13 + 8) = v18;
          v16 |= (*(v18++ - 1) & 0x3F) << v19;
          v19 -= 6;
          --v20;
        }

        while (v20 > 1);
      }

      v21 = ucp_findchar(v16, (v13 + 196), (v13 + 200));
      v13 = v760;
      *(v760 + 192) = v21;
      if (v21 == 2)
      {
        goto LABEL_4;
      }

      for (j = *(v13 + 8); j < a4[6].i64[0]; *(v13 + 8) = j)
      {
        v23 = *j;
        v24 = 1;
        if (a4[3].i32[3] && (v23 & 0xC0) == 0xC0)
        {
          v25 = utf8_table4[v23 & 0x3F];
          v23 = (utf8_table3[v25] & v23) << (6 * v25);
          v26 = (j + 1);
          if (v25 <= 1)
          {
            v27 = 1;
          }

          else
          {
            v27 = v25;
          }

          v28 = 6 * v25 - 6;
          do
          {
            v29 = *v26++;
            v23 |= (v29 & 0x3F) << v28;
            v28 -= 6;
            --v27;
          }

          while (v27);
          v24 = v25 + 1;
        }

        v30 = ucp_findchar(v23, (v13 + 196), (v13 + 200));
        v13 = v760;
        *(v760 + 192) = v30;
        if (v30 != 2)
        {
          break;
        }

        j = (*(v13 + 8) + v24);
      }

      ++*(v13 + 224);
      goto LABEL_920;
    case 44:
      v13 = v760;
      if (v11)
      {
        goto LABEL_216;
      }

      v69 = *(v760 + 224);
      if (v69 >= *(v760 + 232))
      {
        goto LABEL_4;
      }

      v70 = *(v760 + 8);
      if (v70 >= a4[6].i64[0])
      {
        goto LABEL_4;
      }

      *(v760 + 8) = v70 + 1;
      v71 = *v70;
      if ((~v71 & 0xC0) == 0)
      {
        v72 = utf8_table4[v71 & 0x3F];
        v71 = (utf8_table3[utf8_table4[v71 & 0x3F]] & v71) << (6 * v72);
        v73 = v70 + 2;
        v74 = 6 * v72 - 6;
        v75 = v72 + 1;
        do
        {
          *(v13 + 8) = v73;
          v71 |= (*(v73++ - 1) & 0x3F) << v74;
          v74 -= 6;
          --v75;
        }

        while (v75 > 1);
      }

      v76 = *(v13 + 216);
      if (v76 <= 8)
      {
        if (v76 > 6)
        {
          if (v76 == 7)
          {
            if (v71 <= 255 && (*(a4[2].i64[1] + v71) & 1) != 0)
            {
              goto LABEL_4;
            }
          }

          else if (v71 > 255 || (*(a4[2].i64[1] + v71) & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        else
        {
          if (v76 != 5)
          {
            if (v76 == 6)
            {
              if (v71 > 255 || (*(a4[2].i64[1] + v71) & 4) == 0)
              {
                goto LABEL_4;
              }

              goto LABEL_981;
            }

            goto LABEL_962;
          }

          if (v71 <= 255 && (*(a4[2].i64[1] + v71) & 4) != 0)
          {
            goto LABEL_4;
          }
        }

        goto LABEL_981;
      }

      if (v76 <= 10)
      {
        if (v76 == 9)
        {
          if (v71 <= 255 && (*(a4[2].i64[1] + v71) & 0x10) != 0)
          {
            goto LABEL_4;
          }
        }

        else if (v71 >= 256 && (*(a4[2].i64[1] + v71) & 0x10) == 0)
        {
          goto LABEL_4;
        }

        goto LABEL_981;
      }

      if (v76 == 12)
      {
LABEL_981:
        *(v13 + 224) = v69 + 1;
        goto LABEL_982;
      }

      if (v76 == 11)
      {
        if ((*(v13 + 32) & 4) == 0 && v71 == 10)
        {
          goto LABEL_4;
        }

        goto LABEL_981;
      }

      goto LABEL_962;
    case 45:
      v13 = v760;
      if (v11)
      {
        goto LABEL_216;
      }

      v135 = *(v760 + 224);
      if (v135 >= *(v760 + 232))
      {
        goto LABEL_4;
      }

      v136 = *(v760 + 8);
      if (v136 >= a4[6].i64[0])
      {
        goto LABEL_4;
      }

      *(v760 + 8) = v136 + 1;
      v137 = *v136;
      v138 = *(v13 + 216);
      if (v138 > 8)
      {
        if (v138 > 10)
        {
          if (v138 != 12)
          {
            if (v138 != 11)
            {
              goto LABEL_962;
            }

            if ((*(v13 + 32) & 4) == 0 && v137 == 10)
            {
              goto LABEL_4;
            }
          }
        }

        else if (v138 == 9)
        {
          if ((*(a4[2].i64[1] + v137) & 0x10) != 0)
          {
            goto LABEL_4;
          }
        }

        else if ((*(a4[2].i64[1] + v137) & 0x10) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v138 > 6)
      {
        if (v138 == 7)
        {
          if (*(a4[2].i64[1] + v137))
          {
            goto LABEL_4;
          }
        }

        else if ((*(a4[2].i64[1] + v137) & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (v138 != 5)
        {
          if (v138 == 6)
          {
            if ((*(a4[2].i64[1] + v137) & 4) == 0)
            {
              goto LABEL_4;
            }

            goto LABEL_988;
          }

LABEL_962:
          v574 = *v13;
          goto LABEL_963;
        }

        if ((*(a4[2].i64[1] + v137) & 4) != 0)
        {
          goto LABEL_4;
        }
      }

LABEL_988:
      *(v13 + 224) = v135 + 1;
      goto LABEL_989;
    case 46:
      v31 = v760;
      if (v11)
      {
        goto LABEL_247;
      }

      v191 = *(v760 + 8);
      *(v760 + 8) = v191 - 1;
      if (v191 == *(v31 + 88))
      {
        goto LABEL_904;
      }

      if ((*(v191 - 1) & 0xC0) == 0x80)
      {
        v192 = (v191 - 2);
        do
        {
          *(v31 + 8) = v192;
          v193 = *v192--;
        }

        while ((v193 & 0xC0) == 0x80);
      }

      goto LABEL_277;
    case 47:
      v31 = v760;
      if (v11)
      {
        goto LABEL_247;
      }

      v34 = *(v760 + 8);
      v35 = (v34 - 1);
      *(v760 + 8) = v34 - 1;
      if (v34 == *(v31 + 88))
      {
        goto LABEL_904;
      }

      while (1)
      {
        v36 = *v35;
        v37 = v36 & 0xC0;
        if (v37 == 128)
        {
          v38 = v35 - 1;
          do
          {
            *(v31 + 8) = v38;
            v39 = *v38--;
            v36 = v39;
            v37 = v39 & 0xC0;
          }

          while (v37 == 128);
          v35 = v38 + 1;
        }

        v40 = v37 != 192 || a4[3].i32[3] == 0;
        if (!v40)
        {
          v41 = utf8_table4[v36 & 0x3F];
          v42 = 6 * v41;
          v36 = (utf8_table3[v41] & v36) << (6 * v41);
          v43 = (v35 + 1);
          if (v41 <= 1)
          {
            v41 = 1;
          }

          v44 = v42 - 6;
          do
          {
            v45 = *v43++;
            v36 |= (v45 & 0x3F) << v44;
            v44 -= 6;
            --v41;
          }

          while (v41);
        }

        v46 = ucp_findchar(v36, (v31 + 196), (v31 + 200));
        v31 = v760;
        *(v760 + 192) = v46;
        if (v46 != 2)
        {
          break;
        }

        v35 = (*(v31 + 8) - 1);
        *(v31 + 8) = v35;
      }

      goto LABEL_46;
    case 48:
      v31 = v760;
      if (v11)
      {
        goto LABEL_247;
      }

      v79 = *(v760 + 8);
      *(v760 + 8) = v79 - 1;
      if (v79 == *(v31 + 88))
      {
        goto LABEL_904;
      }

      if ((*(v79 - 1) & 0xC0) == 0x80)
      {
        v80 = (v79 - 2);
        do
        {
          *(v31 + 8) = v80;
          v81 = *v80--;
        }

        while ((v81 & 0xC0) == 0x80);
      }

      goto LABEL_102;
    case 49:
      v31 = v760;
      v87 = (*(v760 + 8) - 1);
      *(v760 + 8) = v87;
      if (v11)
      {
LABEL_247:
        v150 = *v31;
LABEL_248:
        v760 = v150;
        pcre_freeMem(a1, &v761);
        v172 = v760;
        if (v760)
        {
          goto LABEL_1415;
        }

        return v11;
      }

      v88 = *(v31 + 88);
LABEL_111:
      if (v87 < v88)
      {
        goto LABEL_904;
      }

LABEL_1404:
      *&v756 = 0;
      v47 = a1;
      v48 = 49;
LABEL_1405:
      v189 = pcre_getMem(v47, v48, &v756);
      v100 = v756;
      v190 = v760;
      if (!v756)
      {
        goto LABEL_1412;
      }

      break;
    default:
      v10 = pcre_getMem(a1, v12, &v760);
LABEL_251:
      v11 = 4294967290;
      if (!v760 || v10 < 0)
      {
        return v11;
      }

      v173 = 0;
      v102 = 0;
      *v760 = 0;
      v100 = v760;
      v103 = a2;
      *(v760 + 8) = a2;
      *(v100 + 16) = a3;
      *(v100 + 24) = 2;
      *(v100 + 32) = a5;
      *(v100 + 40) = 0;
      *(v100 + 48) = 2;
      v174 = a5;
      goto LABEL_1409;
  }

LABEL_1406:
  if (v189 < 0)
  {
    goto LABEL_1412;
  }

  v737 = *(v190 + 8);
  *(v100 + 8) = v737;
  *(v100 + 24) = *(v190 + 24);
  v174 = *(v190 + 32);
  *(v100 + 32) = v174;
  v173 = *(v190 + 40);
  *(v100 + 40) = v173;
  *(v100 + 48) = 0;
  *v100 = v190;
  v760 = v100;
  v103 = v737;
LABEL_1408:
  v102 = 1;
LABEL_1409:
  *(v100 + 188) = 0;
  *(v100 + 204) = 0;
  *(v100 + 208) = 0;
  v738 = a4->i64[0];
  v739 = a4->u64[1];
  ++a4->i64[0];
  if (v738 >= v739)
  {
    v760 = *v100;
    pcre_freeMem(a1, &v761);
    v172 = v760;
    v11 = 4294967288;
    if (!v760)
    {
      return v11;
    }

LABEL_1415:
    *(v172 + 408) = v11;
LABEL_1416:
    a4[9].i64[1] = v172;
    goto LABEL_1417;
  }

  *(v100 + 176) = v174;
  if ((v102 & 1) == 0)
  {
    *(v100 + 392) = v173;
    *(v100 + 400) = v103;
    *(v100 + 40) = v100 + 392;
  }

LABEL_329:
  v751 = v10;
  v749 = a3;
  v750 = a5;
  while (1)
  {
LABEL_330:
    v31 = v760;
    v207 = *(v760 + 16);
    v208 = *v207;
    *(v760 + 248) = v208;
    *(v31 + 168) = 0;
    if (a4[4].i32[2])
    {
      v209 = *(v31 + 8);
      if (v209 >= a4[6].i64[0] && v209 > a4[6].i64[1])
      {
        a4[4].i32[3] = 1;
      }
    }

    if (v208 >= 0x51)
    {
      v568 = v208 - 80;
      *(v31 + 240) = v208 - 80;
      v10 = v751;
      if (v208 - 80 >= 0x65)
      {
        v568 = __rev16(*(v207 + 2));
        *(v31 + 240) = v568;
      }

      *(v31 + 244) = 2 * v568;
      if ((2 * v568) >= a4[1].i32[3])
      {
        *(v31 + 248) = 80;
LABEL_942:
        a3 = v749;
        a5 = v750;
LABEL_105:
        *&v756 = 0;
        v84 = a1;
        v85 = 2;
      }

      else
      {
        v569 = a4[1].i64[0];
        v570 = (v569 + 8 * v568);
        *(v31 + 256) = *v570;
        *(v31 + 260) = v570[1];
        v571 = a4[1].i32[2] - v568;
        *(v31 + 264) = *(v569 + 4 * v571);
        *(v31 + 252) = a4[7].i32[3];
        *(v569 + 4 * v571) = *(v31 + 8) - a4[5].i32[2];
        a3 = v749;
        a5 = v750;
LABEL_131:
        *&v756 = 0;
        v84 = a1;
        v85 = 1;
      }

LABEL_132:
      v99 = pcre_getMem(v84, v85, &v756);
      v100 = v756;
      v101 = v760;
      if (!v756 || v99 < 0)
      {
        goto LABEL_1202;
      }

      v102 = 0;
      v103 = *(v760 + 8);
      *(v756 + 8) = v103;
      v104 = *(v101 + 16);
LABEL_311:
      *(v100 + 16) = v104 + 3;
      *(v100 + 24) = *(v101 + 24);
      v174 = *(v101 + 32);
      *(v100 + 32) = v174;
      v173 = *(v101 + 40);
      *v100 = v101;
      *(v100 + 40) = v173;
LABEL_312:
      *(v100 + 48) = 2;
      goto LABEL_313;
    }

    v10 = v751;
    switch(v208)
    {
      case 0u:
        v393 = a4[8].i64[1];
        if (!v393 || *(v393 + 8))
        {
          v585 = *(v31 + 8);
          if (!a4[4].i32[1] || v585 != a4[6].i64[1])
          {
            a4[7].i64[0] = v585;
            a4[7].i32[2] = *(v31 + 24);
            v760 = *v31;
            pcre_freeMem(a1, &v761);
            v172 = v760;
            v11 = 1;
            a3 = v749;
            a5 = v750;
            if (v760)
            {
              goto LABEL_1415;
            }

            return v11;
          }

          v760 = *v31;
          pcre_freeMem(a1, &v761);
          v172 = v760;
          a3 = v749;
          a5 = v750;
          if (v760)
          {
            goto LABEL_906;
          }

          return 0;
        }

        a4[8].i64[1] = *v393;
        memmove(a4[1].i64[0], *(v393 + 32), 4 * *(v393 + 40));
        a4[6].i64[1] = *(v393 + 24);
        v394 = v760;
        *(v760 + 32) = *(v760 + 176);
        *(v394 + 16) = *(v393 + 16);
        continue;
      case 1u:
        v337 = a4[5].i64[1];
        goto LABEL_520;
      case 2u:
        if (*(v31 + 8) != a4[5].i64[1] + a4[8].i32[0])
        {
          goto LABEL_930;
        }

        goto LABEL_811;
      case 3u:
      case 4u:
        v233 = *(v31 + 8);
        v234 = a4[5].i64[1];
        if (a4[3].i32[3])
        {
          if (v233 == v234)
          {
            goto LABEL_697;
          }

          v235 = *(v31 + 8);
          do
          {
            v236 = v235;
            v238 = *--v235;
            v237 = v238;
            v239 = v238 & 0xC0;
          }

          while (v239 == 128);
          if (v239 != 192)
          {
            goto LABEL_370;
          }

          v240 = utf8_table4[v237 & 0x3F];
          v241 = 6 * v240;
          v237 = (utf8_table3[v240] & v237) << (6 * v240);
          if (v240 <= 1)
          {
            v240 = 1;
          }

          v242 = v241 - 6;
          do
          {
            v243 = *v236++;
            v237 |= (v243 & 0x3F) << v242;
            v242 -= 6;
            --v240;
          }

          while (v240);
          if (v237 >= 256)
          {
LABEL_697:
            v244 = 0;
          }

          else
          {
LABEL_370:
            v244 = (*(a4[2].i64[1] + v237) >> 4) & 1;
          }

          *(v31 + 172) = v244;
          if (v233 < a4[6].i64[0])
          {
            v481 = *v233;
            if ((~v481 & 0xC0) != 0)
            {
              goto LABEL_705;
            }

            v482 = utf8_table4[v481 & 0x3F];
            v483 = 6 * v482;
            v481 = (utf8_table3[v482] & v481) << (6 * v482);
            v484 = (v233 + 1);
            if (v482 <= 1)
            {
              v482 = 1;
            }

            v485 = v483 - 6;
            do
            {
              v486 = *v484++;
              v481 |= (v486 & 0x3F) << v485;
              v485 -= 6;
              --v482;
            }

            while (v482);
            if (v481 <= 255)
            {
LABEL_705:
              v487 = (a4[2].i64[1] + v481);
LABEL_800:
              v530 = (*v487 >> 4) & 1;
              goto LABEL_802;
            }
          }
        }

        else
        {
          if (v233 == v234)
          {
            v244 = 0;
          }

          else
          {
            v244 = (*(a4[2].i64[1] + *(v233 - 1)) >> 4) & 1;
          }

          *(v31 + 172) = v244;
          if (v233 < a4[6].i64[0])
          {
            v487 = (a4[2].i64[1] + *v233);
            goto LABEL_800;
          }
        }

        v530 = 0;
LABEL_802:
        *(v31 + 160) = v530;
        *(v31 + 16) = v207 + 1;
        if ((*v207 == 4) == (v530 == v244))
        {
LABEL_992:
          v760 = *v31;
          pcre_freeMem(a1, &v761);
          v576 = v760;
          if (v760)
          {
            v11 = 0;
            *(v760 + 408) = 0;
            a4[9].i64[1] = v576;
            a3 = v749;
            a5 = v750;
            v10 = v751;
            goto LABEL_1417;
          }

          return 0;
        }

        continue;
      case 5u:
        v346 = *(v31 + 8);
        if (v346 >= a4[6].i64[0])
        {
          goto LABEL_930;
        }

        *(v31 + 8) = v346 + 1;
        v347 = *v346;
        if (!a4[3].i32[3])
        {
          goto LABEL_492;
        }

        if ((v347 & 0xC0) != 0xC0)
        {
          goto LABEL_492;
        }

        v348 = utf8_table4[v347 & 0x3F];
        v349 = 6 * v348;
        v347 = (utf8_table3[utf8_table4[v347 & 0x3F]] & v347) << (6 * v348);
        v350 = v346 + 2;
        v351 = v348 + 1;
        v352 = v349 - 6;
        do
        {
          *(v31 + 8) = v350;
          v347 |= (*(v350++ - 1) & 0x3F) << v352;
          --v351;
          v352 -= 6;
        }

        while (v351 > 1);
        if (v347 <= 255)
        {
LABEL_492:
          if ((*(a4[2].i64[1] + v347) & 4) != 0)
          {
            goto LABEL_930;
          }
        }

        goto LABEL_811;
      case 6u:
        v339 = *(v31 + 8);
        if (v339 >= a4[6].i64[0])
        {
          goto LABEL_930;
        }

        *(v31 + 8) = v339 + 1;
        v340 = *v339;
        if (a4[3].i32[3])
        {
          if ((v340 & 0xC0) == 0xC0)
          {
            v341 = utf8_table4[v340 & 0x3F];
            v342 = 6 * v341;
            v340 = (utf8_table3[utf8_table4[v340 & 0x3F]] & v340) << (6 * v341);
            v343 = v339 + 2;
            v344 = v341 + 1;
            v345 = v342 - 6;
            do
            {
              *(v31 + 8) = v343;
              v340 |= (*(v343++ - 1) & 0x3F) << v345;
              --v344;
              v345 -= 6;
            }

            while (v344 > 1);
            if (v340 > 255)
            {
              goto LABEL_930;
            }
          }
        }

        if ((*(a4[2].i64[1] + v340) & 4) == 0)
        {
          goto LABEL_930;
        }

        goto LABEL_811;
      case 7u:
        v402 = *(v31 + 8);
        if (v402 >= a4[6].i64[0])
        {
          goto LABEL_930;
        }

        *(v31 + 8) = v402 + 1;
        v403 = *v402;
        if (!a4[3].i32[3])
        {
          goto LABEL_579;
        }

        if ((v403 & 0xC0) != 0xC0)
        {
          goto LABEL_579;
        }

        v404 = utf8_table4[v403 & 0x3F];
        v405 = 6 * v404;
        v403 = (utf8_table3[utf8_table4[v403 & 0x3F]] & v403) << (6 * v404);
        v406 = v402 + 2;
        v407 = v404 + 1;
        v408 = v405 - 6;
        do
        {
          *(v31 + 8) = v406;
          v403 |= (*(v406++ - 1) & 0x3F) << v408;
          --v407;
          v408 -= 6;
        }

        while (v407 > 1);
        if (v403 <= 255)
        {
LABEL_579:
          if (*(a4[2].i64[1] + v403))
          {
            goto LABEL_930;
          }
        }

        goto LABEL_811;
      case 8u:
        v363 = *(v31 + 8);
        if (v363 >= a4[6].i64[0])
        {
          goto LABEL_930;
        }

        *(v31 + 8) = v363 + 1;
        v364 = *v363;
        if (a4[3].i32[3])
        {
          if ((v364 & 0xC0) == 0xC0)
          {
            v365 = utf8_table4[v364 & 0x3F];
            v366 = 6 * v365;
            v364 = (utf8_table3[utf8_table4[v364 & 0x3F]] & v364) << (6 * v365);
            v367 = v363 + 2;
            v368 = v365 + 1;
            v369 = v366 - 6;
            do
            {
              *(v31 + 8) = v367;
              v364 |= (*(v367++ - 1) & 0x3F) << v369;
              --v368;
              v369 -= 6;
            }

            while (v368 > 1);
            if (v364 > 255)
            {
              goto LABEL_930;
            }
          }
        }

        if ((*(a4[2].i64[1] + v364) & 1) == 0)
        {
          goto LABEL_930;
        }

        goto LABEL_811;
      case 9u:
        v412 = *(v31 + 8);
        if (v412 >= a4[6].i64[0])
        {
          goto LABEL_930;
        }

        *(v31 + 8) = v412 + 1;
        v413 = *v412;
        if (!a4[3].i32[3])
        {
          goto LABEL_596;
        }

        if ((v413 & 0xC0) != 0xC0)
        {
          goto LABEL_596;
        }

        v414 = utf8_table4[v413 & 0x3F];
        v415 = 6 * v414;
        v413 = (utf8_table3[utf8_table4[v413 & 0x3F]] & v413) << (6 * v414);
        v416 = v412 + 2;
        v417 = v414 + 1;
        v418 = v415 - 6;
        do
        {
          *(v31 + 8) = v416;
          v413 |= (*(v416++ - 1) & 0x3F) << v418;
          --v417;
          v418 -= 6;
        }

        while (v417 > 1);
        if (v413 <= 255)
        {
LABEL_596:
          if ((*(a4[2].i64[1] + v413) & 0x10) != 0)
          {
            goto LABEL_930;
          }
        }

        goto LABEL_811;
      case 0xAu:
        v395 = *(v31 + 8);
        if (v395 >= a4[6].i64[0])
        {
          goto LABEL_930;
        }

        *(v31 + 8) = v395 + 1;
        v396 = *v395;
        if (a4[3].i32[3])
        {
          if ((v396 & 0xC0) == 0xC0)
          {
            v397 = utf8_table4[v396 & 0x3F];
            v398 = 6 * v397;
            v396 = (utf8_table3[utf8_table4[v396 & 0x3F]] & v396) << (6 * v397);
            v399 = v395 + 2;
            v400 = v397 + 1;
            v401 = v398 - 6;
            do
            {
              *(v31 + 8) = v399;
              v396 |= (*(v399++ - 1) & 0x3F) << v401;
              --v400;
              v401 -= 6;
            }

            while (v400 > 1);
            if (v396 > 255)
            {
              goto LABEL_930;
            }
          }
        }

        if ((*(a4[2].i64[1] + v396) & 0x10) == 0)
        {
          goto LABEL_930;
        }

        goto LABEL_811;
      case 0xBu:
        v409 = *(v31 + 8);
        v410 = a4[6].u64[0];
        if ((*(v31 + 32) & 4) == 0 && v409 < v410 && *v409 == 10)
        {
          goto LABEL_930;
        }

        v411 = v409 + 1;
        *(v31 + 8) = v409 + 1;
        if (v409 >= v410)
        {
          goto LABEL_930;
        }

        if (a4[3].i32[3] && v411 < v410)
        {
          do
          {
            if ((*v411 & 0xC0) != 0x80)
            {
              break;
            }

            *(v31 + 8) = ++v411;
          }

          while (v411 != v410);
        }

        goto LABEL_811;
      case 0xCu:
        v370 = *(v31 + 8);
        *(v31 + 8) = v370 + 1;
        if (v370 >= a4[6].i64[0])
        {
          goto LABEL_930;
        }

        goto LABEL_811;
      case 0xDu:
      case 0xEu:
        v251 = *(v31 + 8);
        if (v251 < a4[6].i64[0])
        {
          *(v31 + 8) = v251 + 1;
          v252 = *v251;
          if (a4[3].i32[3] && (v252 & 0xC0) == 0xC0)
          {
            v253 = utf8_table4[v252 & 0x3F];
            v254 = 6 * v253;
            v252 = (utf8_table3[utf8_table4[v252 & 0x3F]] & v252) << (6 * v253);
            v255 = v251 + 2;
            v256 = v253 + 1;
            v257 = v254 - 6;
            do
            {
              *(v31 + 8) = v255;
              v252 |= (*(v255++ - 1) & 0x3F) << v257;
              --v256;
              v257 -= 6;
            }

            while (v256 > 1);
          }

          LODWORD(v756) = 0;
          v258 = ucp_findchar(v252, &v756, &v755);
          *(v31 + 16) = v207 + 1;
          v259 = v207[1];
          v260 = v207[1];
          *(v31 + 16) = v207 + 2;
          if (v259 < 0)
          {
            v261 = v208 != 14;
            v262 = v260 - 128 == v258;
          }

          else
          {
            v261 = v208 != 14;
            v262 = v756 == v260;
          }

          v462 = !v262;
          if (v261 == v462)
          {
            continue;
          }
        }

        goto LABEL_930;
      case 0xFu:
        v442 = *(v31 + 8);
        v443 = a4[6].u64[0];
        if (v442 >= v443)
        {
          goto LABEL_930;
        }

        v444 = v442 + 1;
        *(v31 + 8) = v442 + 1;
        v445 = *v442;
        v446 = a4[3].i32[3];
        if (v446 && (v445 & 0xC0) == 0xC0)
        {
          v447 = utf8_table4[v445 & 0x3F];
          v448 = 6 * v447;
          v445 = (utf8_table3[utf8_table4[v445 & 0x3F]] & v445) << (6 * v447);
          v449 = v447 + 1;
          v450 = v448 - 6;
          do
          {
            v451 = v444 + 1;
            *(v31 + 8) = v444 + 1;
            v445 |= (*v444 & 0x3F) << v450;
            --v449;
            v450 -= 6;
            ++v444;
          }

          while (v449 > 1);
        }

        else
        {
          v451 = v442 + 1;
        }

        v755 = 0;
        LODWORD(v756) = 0;
        if (ucp_findchar(v445, &v756, &v755) == 2)
        {
          goto LABEL_930;
        }

        while (v451 < v443)
        {
          v492 = *v451;
          v493 = 1;
          if (v446 && (v492 & 0xC0) == 0xC0)
          {
            v494 = utf8_table4[v492 & 0x3F];
            v492 = (utf8_table3[v494] & v492) << (6 * v494);
            v495 = (v451 + 1);
            if (v494 <= 1)
            {
              v496 = 1;
            }

            else
            {
              v496 = v494;
            }

            v497 = 6 * v494 - 6;
            do
            {
              v498 = *v495++;
              v492 |= (v498 & 0x3F) << v497;
              v497 -= 6;
              --v496;
            }

            while (v496);
            v493 = v494 + 1;
          }

          if (ucp_findchar(v492, &v756, &v755) != 2)
          {
            break;
          }

          v451 += v493;
          *(v31 + 8) = v451;
        }

        *(v31 + 16) = v207 + 1;
        continue;
      case 0x10u:
        v371 = *(v31 + 8);
        v372 = a4[6].i64[0] - 1;
        if (v371 < v372)
        {
          goto LABEL_930;
        }

        if (v371 == v372)
        {
          goto LABEL_715;
        }

        goto LABEL_811;
      case 0x11u:
        v319 = a4[6].u64[0];
        goto LABEL_599;
      case 0x12u:
        *(v31 + 32) = v207[1];
        goto LABEL_759;
      case 0x13u:
        v337 = a4[5].i64[1];
        if (a4[3].i32[1] && *(v31 + 8) == v337)
        {
          goto LABEL_930;
        }

        if ((*(v31 + 32) & 2) == 0)
        {
LABEL_520:
          if (*(v31 + 8) != v337)
          {
            goto LABEL_930;
          }

          goto LABEL_811;
        }

        v338 = *(v31 + 8);
        if (v338 == v337)
        {
          goto LABEL_811;
        }

        v322 = *(v338 - 1);
        goto LABEL_716;
      case 0x14u:
        if ((*(v31 + 32) & 2) == 0)
        {
          if (a4[3].i32[2])
          {
            goto LABEL_930;
          }

          v319 = a4[6].u64[0];
          if (a4[4].i32[0])
          {
LABEL_599:
            if (*(v31 + 8) < v319)
            {
              goto LABEL_930;
            }

            goto LABEL_811;
          }

          v320 = *(v31 + 8);
          v321 = (v319 - 1);
          if (v320 < v321)
          {
            goto LABEL_930;
          }

          if (v320 != v321)
          {
            goto LABEL_811;
          }

          v322 = *v320;
          goto LABEL_716;
        }

        v371 = *(v31 + 8);
        if (v371 < a4[6].i64[0])
        {
LABEL_715:
          v322 = *v371;
LABEL_716:
          if (v322 != 10)
          {
            goto LABEL_930;
          }

          goto LABEL_811;
        }

        if (a4[3].i32[2])
        {
          goto LABEL_930;
        }

LABEL_811:
        *(v31 + 16) = v207 + 1;
        continue;
      case 0x15u:
        if (!a4[3].i32[3])
        {
          v505 = *(v31 + 8);
          if (a4[6].i64[0] - v505 <= 0)
          {
            goto LABEL_930;
          }

          v506 = v207[1];
          *(v31 + 8) = v505 + 1;
          if (v506 != *v505)
          {
            goto LABEL_930;
          }

          goto LABEL_759;
        }

        v323 = 1;
        *(v31 + 228) = 1;
        *(v31 + 16) = v207 + 1;
        v324 = v207[1];
        *(v31 + 220) = v324;
        if ((~v324 & 0xC0) == 0)
        {
          v325 = utf8_table4[v324 & 0x3F];
          v326 = (utf8_table3[v325] & v324) << (6 * v325);
          *(v31 + 220) = v326;
          v327 = (v207 + 2);
          if (v325 <= 1)
          {
            v328 = 1;
          }

          else
          {
            v328 = v325;
          }

          v329 = 6 * v325 - 6;
          do
          {
            v330 = *v327++;
            v326 |= (v330 & 0x3F) << v329;
            *(v31 + 220) = v326;
            v329 -= 6;
            --v328;
          }

          while (v328);
          v323 = v325 + 1;
          *(v31 + 228) = v323;
        }

        v331 = *(v31 + 8);
        if (a4[6].i64[0] - v331 < v323)
        {
          goto LABEL_930;
        }

        v332 = v331 + 1;
        v333 = v207 + 2;
        a3 = v749;
        a5 = v750;
        while (1)
        {
          v334 = __OFSUB__(v323--, 1);
          *(v31 + 228) = v323;
          if (v323 < 0 != v334)
          {
            goto LABEL_330;
          }

          *(v31 + 16) = v333;
          v335 = *(v333 - 1);
          *(v31 + 8) = v332;
          v336 = *(v332++ - 1);
          ++v333;
          if (v335 != v336)
          {
            goto LABEL_904;
          }
        }

      case 0x16u:
        if (a4[3].i32[3])
        {
          v353 = 1;
          *(v31 + 228) = 1;
          *(v31 + 16) = v207 + 1;
          v354 = v207[1];
          *(v31 + 220) = v354;
          if ((~v354 & 0xC0) == 0)
          {
            v355 = utf8_table4[v354 & 0x3F];
            v354 = (utf8_table3[v355] & v354) << (6 * v355);
            *(v31 + 220) = v354;
            v356 = (v207 + 2);
            if (v355 <= 1)
            {
              v357 = 1;
            }

            else
            {
              v357 = v355;
            }

            v358 = 6 * v355 - 6;
            do
            {
              v359 = *v356++;
              v354 |= (v359 & 0x3F) << v358;
              *(v31 + 220) = v354;
              v358 -= 6;
              --v357;
            }

            while (v357);
            v353 = v355 + 1;
            *(v31 + 228) = v353;
          }

          v360 = *(v31 + 8);
          if (a4[6].i64[0] - v360 < v353)
          {
            goto LABEL_930;
          }

          if (v354 > 127)
          {
            *(v31 + 8) = v360 + 1;
            v524 = *v360;
            if ((~v524 & 0xC0) == 0)
            {
              v525 = utf8_table4[v524 & 0x3F];
              v526 = 6 * v525;
              v524 = (utf8_table3[utf8_table4[v524 & 0x3F]] & v524) << (6 * v525);
              v527 = v360 + 2;
              v528 = v525 + 1;
              v529 = v526 - 6;
              do
              {
                *(v31 + 8) = v527;
                v524 |= (*(v527++ - 1) & 0x3F) << v529;
                --v528;
                v529 -= 6;
              }

              while (v528 > 1);
            }

            *(v31 + 16) = &v207[v353 + 1];
            if (v354 != v524)
            {
              v755 = 0;
              if ((ucp_findchar(v354, &v756, &v755) & 0x80000000) != 0 || v524 != v755)
              {
                goto LABEL_992;
              }
            }
          }

          else
          {
            v361 = a4[2].i64[0];
            *(v31 + 16) = v207 + 2;
            v362 = *(v361 + v207[1]);
            *(v31 + 8) = v360 + 1;
            if (v362 != *(v361 + *v360))
            {
              goto LABEL_992;
            }
          }
        }

        else
        {
          v507 = *(v31 + 8);
          if (a4[6].i64[0] - v507 <= 0)
          {
            goto LABEL_930;
          }

          v508 = a4[2].i64[0];
          v509 = *(v508 + v207[1]);
          *(v31 + 8) = v507 + 1;
          if (v509 != *(v508 + *v507))
          {
            goto LABEL_930;
          }

LABEL_759:
          *(v31 + 16) = v207 + 2;
        }

        continue;
      case 0x17u:
        v311 = *(v31 + 8);
        if (v311 >= a4[6].i64[0])
        {
          goto LABEL_930;
        }

        *(v31 + 8) = v311 + 1;
        *(v31 + 16) = v207 + 1;
        v312 = *v311;
        if (a4[3].i32[3] && (v312 & 0xC0) == 0xC0)
        {
          v313 = utf8_table4[v312 & 0x3F];
          v314 = 6 * v313;
          v312 = (utf8_table3[utf8_table4[v312 & 0x3F]] & v312) << (6 * v313);
          v315 = v311 + 2;
          v316 = v313 + 1;
          v317 = v314 - 6;
          do
          {
            *(v31 + 8) = v315;
            v312 |= (*(v315++ - 1) & 0x3F) << v317;
            --v316;
            v317 -= 6;
          }

          while (v316 > 1);
        }

        if (*(v31 + 32))
        {
          v491 = a4[2].i64[0];
          if (v312 <= 255)
          {
            v312 = *(v491 + v312);
          }

          *(v31 + 16) = v207 + 2;
          v318 = *(v491 + v207[1]);
        }

        else
        {
          *(v31 + 16) = v207 + 2;
          v318 = v207[1];
        }

        if (v312 == v318)
        {
          goto LABEL_992;
        }

        continue;
      case 0x18u:
      case 0x19u:
      case 0x1Au:
      case 0x1Bu:
      case 0x1Cu:
      case 0x1Du:
        v210 = v207 + 1;
        *(v31 + 16) = v207 + 1;
        v211 = *v207;
        v212 = v211 & 1;
        *(v31 + 168) = v212;
        v213 = rep_min_0[v211 - 24];
        *(v31 + 236) = v213;
        if ((v211 - 30) >= 0xFFFFFFFE)
        {
          v214 = rep_max_0[v211 - 24];
        }

        else
        {
          v214 = 0x7FFFFFFF;
        }

        *(v31 + 232) = v214;
        goto LABEL_526;
      case 0x1Eu:
      case 0x1Fu:
        v213 = 0;
        *(v31 + 236) = 0;
        v214 = __rev16(*(v207 + 1));
        *(v31 + 232) = v214;
        v212 = *v207 == 31;
        *(v31 + 168) = v212;
        goto LABEL_525;
      case 0x20u:
        v212 = 0;
        v214 = __rev16(*(v207 + 1));
        *(v31 + 232) = v214;
        *(v31 + 236) = v214;
        v213 = v214;
LABEL_525:
        v210 = v207 + 3;
        *(v31 + 16) = v207 + 3;
LABEL_526:
        a3 = v749;
        a5 = v750;
        if (!a4[3].i32[3])
        {
          v380 = a4[6].u64[0];
          v78 = *(v31 + 8);
          if ((v380 - v78) < v213)
          {
            goto LABEL_904;
          }

          *(v31 + 16) = v210 + 1;
          v374 = *v210;
          *(v31 + 220) = v374;
LABEL_540:
          if (*(v31 + 32))
          {
            v382 = a4[2].i64[0];
            v383 = *(v382 + v374);
            *(v31 + 220) = v383;
            v384 = v213;
            if (v213 >= 1)
            {
              do
              {
                *(v31 + 8) = v78 + 1;
                if (v383 != *(v382 + *v78))
                {
                  goto LABEL_904;
                }

                ++v78;
              }

              while (--v384);
            }

            if (v214 != v213)
            {
              if (v212)
              {
                *(v31 + 224) = v213;
                a3 = v749;
                a5 = v750;
                v10 = v751;
LABEL_183:
                *&v756 = 0;
                v47 = a1;
                v48 = 30;
                goto LABEL_1405;
              }

              *(v31 + 88) = v78;
              v334 = __OFSUB__(v214, v213);
              v630 = v214 - v213;
              a3 = v749;
              a5 = v750;
              if ((v630 < 0) ^ v334 | (v630 == 0))
              {
                v10 = v751;
LABEL_1188:
                *&v756 = 0;
                v47 = a1;
                v48 = 31;
                goto LABEL_1405;
              }

              v109 = v78;
              do
              {
                if (v109 >= v380)
                {
                  break;
                }

                if (v383 != *(v382 + *v109))
                {
                  break;
                }

                *(v31 + 8) = ++v109;
                --v630;
              }

              while (v630);
              v10 = v751;
LABEL_147:
              if (v109 >= v78)
              {
                goto LABEL_1188;
              }

              goto LABEL_904;
            }
          }

          else
          {
            v381 = v213;
            if (v213 >= 1)
            {
              do
              {
                *(v31 + 8) = v78 + 1;
                if (v374 != *v78)
                {
                  goto LABEL_904;
                }

                ++v78;
              }

              while (--v381);
            }

            if (v214 != v213)
            {
              if (v212)
              {
                *(v31 + 224) = v213;
                a3 = v749;
                a5 = v750;
                v10 = v751;
LABEL_189:
                *&v756 = 0;
                v47 = a1;
                v48 = 32;
                goto LABEL_1405;
              }

              *(v31 + 88) = v78;
              v334 = __OFSUB__(v214, v213);
              v631 = v214 - v213;
              a3 = v749;
              a5 = v750;
              if ((v631 < 0) ^ v334 | (v631 == 0))
              {
                v10 = v751;
LABEL_1190:
                *&v756 = 0;
                v47 = a1;
                v48 = 33;
                goto LABEL_1405;
              }

              v77 = v78;
              do
              {
                if (v77 >= v380)
                {
                  break;
                }

                if (v374 != *v77)
                {
                  break;
                }

                *(v31 + 8) = ++v77;
                --v631;
              }

              while (v631);
              v10 = v751;
LABEL_95:
              if (v77 >= v78)
              {
                goto LABEL_1190;
              }

LABEL_904:
              v14 = *v31;
LABEL_905:
              v760 = v14;
              pcre_freeMem(a1, &v761);
              v172 = v760;
              if (v760)
              {
LABEL_906:
                v11 = 0;
                *(v172 + 408) = 0;
                goto LABEL_1416;
              }

              return 0;
            }
          }

          continue;
        }

        v373 = 1;
        *(v31 + 228) = 1;
        *(v31 + 64) = v210;
        v374 = *v210;
        *(v31 + 220) = v374;
        if ((~v374 & 0xC0) == 0)
        {
          v375 = utf8_table4[v374 & 0x3F];
          v374 = (utf8_table3[v375] & v374) << (6 * v375);
          *(v31 + 220) = v374;
          v376 = (v210 + 1);
          if (v375 <= 1)
          {
            v377 = 1;
          }

          else
          {
            v377 = v375;
          }

          v378 = 6 * v375 - 6;
          do
          {
            v379 = *v376++;
            v374 |= (v379 & 0x3F) << v378;
            *(v31 + 220) = v374;
            v378 -= 6;
            --v377;
          }

          while (v377);
          v373 = v375 + 1;
          *(v31 + 228) = v375 + 1;
        }

        v380 = a4[6].u64[0];
        v78 = *(v31 + 8);
        if ((v380 - v78) < v373 * v213)
        {
          goto LABEL_904;
        }

        *(v31 + 16) = &v210[v373];
        if (v373 < 2)
        {
          goto LABEL_540;
        }

        __s2[0] = 0;
        v753 = 0;
        v754 = 0;
        if (*(v31 + 32))
        {
          v180 = 0;
          if ((ucp_findchar(v374, &v753, &v754) & 0x80000000) == 0 && v754 >= 1)
          {
            v180 = ord2utf8(v754, __s2);
            v31 = v760;
            v213 = *(v760 + 236);
          }
        }

        else
        {
          v180 = 0;
        }

        if (v213 >= 1)
        {
          v385 = *(v31 + 64);
          v386 = *(v31 + 228);
          v387 = v213;
          v388 = *(v31 + 8);
          while (1)
          {
            v389 = memcmp(v388, v385, v386);
            v390 = v386;
            if (v389)
            {
              if (!v180)
              {
                v760 = *v31;
                pcre_freeMem(a1, &v761);
                v575 = v760;
                if (v760)
                {
                  __n = 0;
                  goto LABEL_971;
                }

                return 0;
              }

              v391 = memcmp(v388, __s2, v180);
              v390 = v180;
              if (v391)
              {
                break;
              }
            }

            v388 += v390;
            *(v31 + 8) = v388;
            if (!--v387)
            {
              goto LABEL_560;
            }
          }

          v760 = *v31;
          pcre_freeMem(a1, &v761);
          v575 = v760;
          if (!v760)
          {
            return 0;
          }

          __n = v180;
LABEL_971:
          v11 = 0;
          *(v575 + 408) = 0;
LABEL_972:
          a4[9].i64[1] = v575;
          a3 = v749;
          a5 = v750;
          v10 = v751;
LABEL_1417:
          v12 = v761;
          goto LABEL_2;
        }

LABEL_560:
        __n = v180;
        v392 = *(v31 + 232);
        if (v392 != v213)
        {
          if (*(v31 + 168))
          {
            *(v31 + 224) = v213;
            v10 = v751;
LABEL_935:
            __n = v180;
            *&v756 = 0;
            v122 = a1;
            v123 = 28;
LABEL_936:
            v189 = pcre_getMem(v122, v123, &v756);
            v100 = v756;
            v190 = v760;
            a3 = v749;
            a5 = v750;
            goto LABEL_937;
          }

          v162 = *(v31 + 8);
          *(v31 + 88) = v162;
          v633 = v392 - v213;
          if (v392 <= v213)
          {
            a3 = v749;
            a5 = v750;
            v10 = v751;
          }

          else
          {
            v634 = *(v31 + 228);
            v635 = a4[6].i64[0] - v634;
            v161 = v162;
            while (v161 <= v635)
            {
              v636 = memcmp(v161, *(v31 + 64), v634);
              v637 = v634;
              if (v636)
              {
                if (!v180)
                {
                  __n = 0;
                  break;
                }

                v638 = memcmp(v161, __s2, v180);
                v637 = v180;
                if (v638)
                {
                  break;
                }
              }

              v161 += v637;
              *(v31 + 8) = v161;
              if (!--v633)
              {
                break;
              }
            }

            a3 = v749;
            a5 = v750;
            v10 = v751;
LABEL_237:
            if (v161 < v162)
            {
              goto LABEL_904;
            }
          }

          *&v756 = 0;
          v47 = a1;
          v48 = 29;
          goto LABEL_1405;
        }

        continue;
      case 0x21u:
      case 0x22u:
      case 0x23u:
      case 0x24u:
      case 0x25u:
      case 0x26u:
        v219 = v207 + 1;
        *(v31 + 16) = v207 + 1;
        v220 = *v207;
        v221 = (v220 - 33) & 1;
        *(v31 + 168) = v221;
        v222 = rep_min_0[v220 - 33];
        *(v31 + 236) = v222;
        v223 = rep_max_0[v220 - 33];
        if ((v220 - 39) < 0xFFFFFFFE)
        {
          v223 = 0x7FFFFFFF;
        }

        *(v31 + 232) = v223;
        goto LABEL_603;
      case 0x27u:
      case 0x28u:
        v222 = 0;
        *(v31 + 236) = 0;
        v223 = __rev16(*(v207 + 1));
        *(v31 + 232) = v223;
        v221 = *v207 == 40;
        *(v31 + 168) = v221;
        goto LABEL_602;
      case 0x29u:
        v221 = 0;
        v223 = __rev16(*(v207 + 1));
        *(v31 + 232) = v223;
        *(v31 + 236) = v223;
        v222 = v223;
LABEL_602:
        v219 = v207 + 3;
        *(v31 + 16) = v207 + 3;
LABEL_603:
        v419 = a4[6].u64[0];
        v420 = *(v31 + 8);
        a3 = v749;
        a5 = v750;
        if ((v419 - v420) < v222)
        {
          goto LABEL_904;
        }

        *(v31 + 16) = v219 + 1;
        v421 = *v219;
        *(v31 + 220) = v421;
        if (*(v31 + 32))
        {
          v429 = a4[2].i64[0];
          v430 = *(v429 + v421);
          *(v31 + 220) = v430;
          v431 = a4[3].i32[3];
          if (v431)
          {
            if (v222 >= 1)
            {
              v432 = 1;
              v33 = v420;
              while (1)
              {
                v433 = v33++;
                *(v31 + 8) = v33;
                v434 = *v433;
                if ((~v434 & 0xC0) != 0)
                {
                  goto LABEL_624;
                }

                v435 = utf8_table4[v434 & 0x3F];
                v436 = 6 * v435;
                v434 = (utf8_table3[utf8_table4[v434 & 0x3F]] & v434) << (6 * v435);
                v437 = v435 + 1;
                v438 = v436 - 6;
                do
                {
                  v439 = v33++;
                  *(v31 + 8) = v33;
                  v434 |= (*v439 & 0x3F) << v438;
                  --v437;
                  v438 -= 6;
                }

                while (v437 > 1);
                if (v434 <= 255)
                {
LABEL_624:
                  v434 = *(v429 + v434);
                }

                if (v434 == v430)
                {
                  goto LABEL_904;
                }

                v40 = v432++ == v222;
                if (v40)
                {
                  goto LABEL_641;
                }
              }
            }

            v33 = v420;
          }

          else
          {
            v441 = v222;
            v33 = v420;
            if (v222 >= 1)
            {
              do
              {
                v33 = v420 + 1;
                *(v31 + 8) = v420 + 1;
                if (v430 == *(v429 + *v420))
                {
                  goto LABEL_904;
                }

                ++v420;
              }

              while (--v441);
            }
          }

LABEL_641:
          if (v223 != v222)
          {
            if (v221)
            {
              *(v31 + 224) = v222;
              a3 = v749;
              a5 = v750;
              v10 = v751;
              if (v431)
              {
LABEL_75:
                *&v756 = 0;
                v47 = a1;
                v48 = 34;
              }

              else
              {
LABEL_52:
                *&v756 = 0;
                v47 = a1;
                v48 = 35;
              }

              goto LABEL_1405;
            }

            *(v31 + 88) = v33;
            a3 = v749;
            a5 = v750;
            if (v431)
            {
              v10 = v751;
              if (v223 <= v222)
              {
LABEL_58:
                *&v756 = 0;
                v47 = a1;
                v48 = 36;
                goto LABEL_1405;
              }

              while (2)
              {
                if (v33 >= v419)
                {
                  goto LABEL_58;
                }

                v588 = *v33;
                if ((~v588 & 0xC0) != 0)
                {
                  v594 = 1;
                }

                else
                {
                  v589 = utf8_table4[v588 & 0x3F];
                  v588 = (utf8_table3[v589] & v588) << (6 * v589);
                  v590 = (v33 + 1);
                  if (v589 <= 1)
                  {
                    v591 = 1;
                  }

                  else
                  {
                    v591 = v589;
                  }

                  v592 = 6 * v589 - 6;
                  do
                  {
                    v593 = *v590++;
                    v588 |= (v593 & 0x3F) << v592;
                    v592 -= 6;
                    --v591;
                  }

                  while (v591);
                  v594 = v589 + 1;
                  if (v588 > 255)
                  {
LABEL_1045:
                    if (v588 == v430)
                    {
                      goto LABEL_58;
                    }

                    v33 += v594;
                    *(v31 + 8) = v33;
                    if (++v222 == v223)
                    {
                      goto LABEL_58;
                    }

                    continue;
                  }
                }

                break;
              }

              v588 = *(v429 + v588);
              goto LABEL_1045;
            }

            v334 = __OFSUB__(v223, v222);
            v642 = v223 - v222;
            v10 = v751;
            if ((v642 < 0) ^ v334 | (v642 == 0))
            {
              goto LABEL_1152;
            }

            v32 = v33;
            do
            {
              if (v32 >= v419)
              {
                break;
              }

              if (v430 == *(v429 + *v32))
              {
                break;
              }

              *(v31 + 8) = ++v32;
              --v642;
            }

            while (v642);
LABEL_27:
            if (v32 >= v33)
            {
LABEL_1152:
              *&v756 = 0;
              v47 = a1;
              v48 = 37;
              goto LABEL_1405;
            }

            goto LABEL_904;
          }
        }

        else
        {
          v422 = a4[3].i32[3];
          if (v422)
          {
            if (v222 >= 1)
            {
              v423 = 1;
              v117 = v420;
              while (1)
              {
                v424 = v117 + 1;
                *(v31 + 8) = v117 + 1;
                v425 = *v117;
                if ((~v425 & 0xC0) != 0)
                {
                  ++v117;
                }

                else
                {
                  v426 = utf8_table4[v425 & 0x3F];
                  v425 = (utf8_table3[utf8_table4[v425 & 0x3F]] & v425) << (6 * v426);
                  v427 = v426 + 1;
                  v428 = 6 * v426 - 6;
                  do
                  {
                    v117 = v424 + 1;
                    *(v31 + 8) = v424 + 1;
                    v425 |= (*v424 & 0x3F) << v428;
                    --v427;
                    v428 -= 6;
                    ++v424;
                  }

                  while (v427 > 1);
                }

                if (v425 == v421)
                {
                  goto LABEL_904;
                }

                v40 = v423++ == v222;
                if (v40)
                {
                  goto LABEL_638;
                }
              }
            }

            v117 = v420;
          }

          else
          {
            v440 = v222;
            v117 = v420;
            if (v222 >= 1)
            {
              do
              {
                v117 = v420 + 1;
                *(v31 + 8) = v420 + 1;
                if (v421 == *v420)
                {
                  goto LABEL_904;
                }

                ++v420;
              }

              while (--v440);
            }
          }

LABEL_638:
          if (v223 != v222)
          {
            if (v221)
            {
              *(v31 + 224) = v222;
              a3 = v749;
              a5 = v750;
              v10 = v751;
              if (v422)
              {
LABEL_325:
                *&v756 = 0;
                v47 = a1;
                v48 = 38;
              }

              else
              {
LABEL_213:
                *&v756 = 0;
                v47 = a1;
                v48 = 39;
              }

              goto LABEL_1405;
            }

            *(v31 + 88) = v117;
            if (v422)
            {
              a3 = v749;
              a5 = v750;
              v10 = v751;
              if (v223 > v222)
              {
                do
                {
                  if (v117 >= v419)
                  {
                    break;
                  }

                  v595 = *v117;
                  if ((~v595 & 0xC0) != 0)
                  {
                    v601 = 1;
                  }

                  else
                  {
                    v596 = utf8_table4[v595 & 0x3F];
                    v595 = (utf8_table3[v596] & v595) << (6 * v596);
                    v597 = (v117 + 1);
                    v598 = v596 <= 1 ? 1 : v596;
                    v599 = 6 * v596 - 6;
                    do
                    {
                      v600 = *v597++;
                      v595 |= (v600 & 0x3F) << v599;
                      v599 -= 6;
                      --v598;
                    }

                    while (v598);
                    v601 = v596 + 1;
                  }

                  if (v595 == v421)
                  {
                    break;
                  }

                  v117 += v601;
                  *(v31 + 8) = v117;
                  ++v222;
                }

                while (v222 != v223);
              }

LABEL_118:
              *&v756 = 0;
              v47 = a1;
              v48 = 40;
              goto LABEL_1405;
            }

            v334 = __OFSUB__(v223, v222);
            v643 = v223 - v222;
            a3 = v749;
            a5 = v750;
            v10 = v751;
            if ((v643 < 0) ^ v334 | (v643 == 0))
            {
              goto LABEL_1159;
            }

            v116 = v117;
            do
            {
              if (v116 >= v419)
              {
                break;
              }

              if (v421 == *v116)
              {
                break;
              }

              *(v31 + 8) = ++v116;
              --v643;
            }

            while (v643);
LABEL_162:
            if (v116 >= v117)
            {
LABEL_1159:
              *&v756 = 0;
              v47 = a1;
              v48 = 41;
              goto LABEL_1405;
            }

            goto LABEL_904;
          }
        }

        continue;
      case 0x2Au:
      case 0x2Bu:
      case 0x2Cu:
      case 0x2Du:
      case 0x2Eu:
      case 0x2Fu:
        v215 = v207 + 1;
        *(v31 + 16) = v207 + 1;
        v216 = *v207;
        *(v31 + 168) = v216 & 1;
        v217 = rep_min_0[v216 - 42];
        *(v31 + 236) = v217;
        if ((v216 - 48) >= 0xFFFFFFFE)
        {
          v218 = rep_max_0[v216 - 42];
        }

        else
        {
          v218 = 0x7FFFFFFF;
        }

        *(v31 + 232) = v218;
        goto LABEL_391;
      case 0x30u:
      case 0x31u:
        v217 = 0;
        *(v31 + 236) = 0;
        *(v31 + 232) = __rev16(*(v207 + 1));
        v232 = *v207 == 49;
        goto LABEL_390;
      case 0x32u:
        v217 = __rev16(*(v207 + 1));
        *(v31 + 232) = v217;
        *(v31 + 236) = v217;
        v232 = 1;
LABEL_390:
        *(v31 + 168) = v232;
        v215 = v207 + 3;
        *(v31 + 16) = v207 + 3;
LABEL_391:
        *(v31 + 16) = v215 + 1;
        v267 = *v215;
        *(v31 + 216) = v267;
        a3 = v749;
        a5 = v750;
        if ((v267 - 13) > 1)
        {
          v270 = 0;
          *(v31 + 184) = -1;
        }

        else
        {
          *(v31 + 188) = v267 == 13;
          *(v31 + 16) = v215 + 2;
          v268 = v215[1];
          v269 = v215[1];
          *(v31 + 184) = v269;
          if (v268 < 0)
          {
            *(v31 + 204) = v269 - 128;
            *(v31 + 208) = v31 + 192;
            v270 = 1;
          }

          else
          {
            *(v31 + 204) = v269;
            *(v31 + 208) = v31 + 196;
            v270 = v269 != 0;
          }
        }

        v271 = a4[6].u64[0];
        v272 = *(v31 + 8);
        if ((v271 - v272) < v217)
        {
          goto LABEL_904;
        }

        if (v217 < 1)
        {
          goto LABEL_900;
        }

        if (v270)
        {
          v273 = 1;
          while (1)
          {
            v274 = *(v31 + 8);
            *(v31 + 8) = v274 + 1;
            v275 = *v274;
            if ((~v275 & 0xC0) == 0)
            {
              v276 = utf8_table4[v275 & 0x3F];
              v277 = 6 * v276;
              v275 = (utf8_table3[utf8_table4[v275 & 0x3F]] & v275) << (6 * v276);
              v278 = v274 + 2;
              v279 = v276 + 1;
              v280 = v277 - 6;
              do
              {
                *(v31 + 8) = v278;
                v275 |= (*(v278++ - 1) & 0x3F) << v280;
                --v279;
                v280 -= 6;
              }

              while (v279 > 1);
            }

            v281 = ucp_findchar(v275, (v31 + 196), (v31 + 200));
            v31 = v760;
            *(v760 + 192) = v281;
            if (*(v31 + 188) == (**(v31 + 208) == *(v31 + 204)))
            {
              goto LABEL_904;
            }

            v217 = *(v31 + 236);
            v282 = v273++ < v217;
            if (!v282)
            {
              goto LABEL_900;
            }
          }
        }

        if (v267 == 15)
        {
          v283 = 1;
          while (1)
          {
            v284 = *(v31 + 8);
            *(v31 + 8) = v284 + 1;
            v285 = *v284;
            if (a4[3].i32[3] && (v285 & 0xC0) == 0xC0)
            {
              v286 = utf8_table4[v285 & 0x3F];
              v285 = (utf8_table3[utf8_table4[v285 & 0x3F]] & v285) << (6 * v286);
              v287 = v284 + 2;
              v288 = 6 * v286 - 6;
              v289 = v286 + 1;
              do
              {
                *(v31 + 8) = v287;
                v285 |= (*(v287++ - 1) & 0x3F) << v288;
                v288 -= 6;
                --v289;
              }

              while (v289 > 1);
            }

            v290 = ucp_findchar(v285, (v31 + 196), (v31 + 200));
            v31 = v760;
            *(v760 + 192) = v290;
            if (v290 == 2)
            {
              goto LABEL_904;
            }

            for (k = *(v31 + 8); k < a4[6].i64[0]; *(v31 + 8) = k)
            {
              v292 = *k;
              v293 = 1;
              if (a4[3].i32[3] && (v292 & 0xC0) == 0xC0)
              {
                v294 = utf8_table4[v292 & 0x3F];
                v292 = (utf8_table3[v294] & v292) << (6 * v294);
                v295 = (k + 1);
                if (v294 <= 1)
                {
                  v296 = 1;
                }

                else
                {
                  v296 = v294;
                }

                v297 = 6 * v294 - 6;
                do
                {
                  v298 = *v295++;
                  v292 |= (v298 & 0x3F) << v297;
                  v297 -= 6;
                  --v296;
                }

                while (v296);
                v293 = v294 + 1;
              }

              v299 = ucp_findchar(v292, (v31 + 196), (v31 + 200));
              v31 = v760;
              *(v760 + 192) = v299;
              if (v299 != 2)
              {
                break;
              }

              k = (*(v31 + 8) + v293);
            }

            v217 = *(v31 + 236);
            v282 = v283++ < v217;
            if (!v282)
            {
              goto LABEL_900;
            }
          }
        }

        if (a4[3].i32[3])
        {
          if (v267 <= 8)
          {
            if (v267 > 6)
            {
              if (v267 == 7)
              {
                v549 = 1;
                while (v272 < v271)
                {
                  if ((*v272 & 0x80000000) == 0)
                  {
                    v550 = a4[2].i64[1];
                    *(v31 + 8) = v272 + 1;
                    LOBYTE(v550) = *(v550 + *v272++);
                    if (v550)
                    {
                      break;
                    }
                  }

                  if (v272 < v271)
                  {
                    v551 = v271 - v272;
                    while ((*v272 & 0xC0) == 0x80)
                    {
                      *(v31 + 8) = ++v272;
                      if (!--v551)
                      {
                        v272 = v271;
                        break;
                      }
                    }
                  }

                  v40 = v549++ == v217;
                  if (v40)
                  {
                    goto LABEL_900;
                  }
                }
              }

              else
              {
                v534 = v217;
                while (v272 < v271)
                {
                  if (*v272 < 0)
                  {
                    break;
                  }

                  v535 = a4[2].i64[1];
                  *(v31 + 8) = v272 + 1;
                  if ((*(v535 + *v272) & 1) == 0)
                  {
                    break;
                  }

                  ++v272;
                  if (!--v534)
                  {
                    goto LABEL_900;
                  }
                }
              }
            }

            else if (v267 == 5)
            {
              v540 = 1;
              while (v272 < v271)
              {
                v541 = v272 + 1;
                *(v31 + 8) = v272 + 1;
                v542 = *v272;
                if ((~v542 & 0xC0) != 0)
                {
                  ++v272;
                }

                else
                {
                  v543 = utf8_table4[v542 & 0x3F];
                  v542 = (utf8_table3[utf8_table4[v542 & 0x3F]] & v542) << (6 * v543);
                  v544 = 6 * v543 - 6;
                  v545 = v543 + 1;
                  do
                  {
                    v272 = v541 + 1;
                    *(v31 + 8) = v541 + 1;
                    v542 |= (*v541 & 0x3F) << v544;
                    v544 -= 6;
                    --v545;
                    ++v541;
                  }

                  while (v545 > 1);
                }

                if (v542 <= 127 && (*(a4[2].i64[1] + v542) & 4) != 0)
                {
                  break;
                }

                v40 = v540++ == v217;
                if (v40)
                {
                  goto LABEL_900;
                }
              }
            }

            else
            {
              v300 = v217;
              if (v267 != 6)
              {
LABEL_1268:
                v574 = *v31;
LABEL_963:
                v760 = v574;
                pcre_freeMem(a1, &v761);
                v172 = v760;
                v11 = 4294967282;
                if (v760)
                {
                  goto LABEL_1415;
                }

                return v11;
              }

              while (v272 < v271)
              {
                if (*v272 < 0)
                {
                  break;
                }

                v301 = a4[2].i64[1];
                *(v31 + 8) = v272 + 1;
                if ((*(v301 + *v272) & 4) == 0)
                {
                  break;
                }

                ++v272;
                if (!--v300)
                {
                  goto LABEL_900;
                }
              }
            }

            goto LABEL_904;
          }

          if (v267 <= 10)
          {
            if (v267 == 9)
            {
              v546 = 1;
              while (v272 < v271)
              {
                if ((*v272 & 0x80000000) == 0)
                {
                  v547 = a4[2].i64[1];
                  *(v31 + 8) = v272 + 1;
                  LOBYTE(v547) = *(v547 + *v272++);
                  if ((v547 & 0x10) != 0)
                  {
                    break;
                  }
                }

                if (v272 < v271)
                {
                  v548 = v271 - v272;
                  while ((*v272 & 0xC0) == 0x80)
                  {
                    *(v31 + 8) = ++v272;
                    if (!--v548)
                    {
                      v272 = v271;
                      break;
                    }
                  }
                }

                v40 = v546++ == v217;
                if (v40)
                {
                  goto LABEL_900;
                }
              }
            }

            else
            {
              v502 = v217;
              while (v272 < v271)
              {
                if (*v272 < 0)
                {
                  break;
                }

                v503 = a4[2].i64[1];
                *(v31 + 8) = v272 + 1;
                if ((*(v503 + *v272) & 0x10) == 0)
                {
                  break;
                }

                ++v272;
                if (!--v502)
                {
                  goto LABEL_900;
                }
              }
            }

            goto LABEL_904;
          }

          if (v267 == 11)
          {
            v552 = 1;
            while (v272 < v271)
            {
              v553 = v272 + 1;
              *(v31 + 8) = v272 + 1;
              if (*v272 == 10 && (*(v31 + 32) & 4) == 0)
              {
                break;
              }

              if (v553 < v271)
              {
                while ((*v553 & 0xC0) == 0x80)
                {
                  *(v31 + 8) = ++v553;
                  if (v553 == v271)
                  {
                    v553 = v271;
                    break;
                  }
                }
              }

              v272 = v553;
              v40 = v552++ == v217;
              if (v40)
              {
                goto LABEL_900;
              }
            }

            goto LABEL_904;
          }

          if (v267 != 12)
          {
            goto LABEL_1268;
          }
        }

        else
        {
          if (v267 <= 8)
          {
            if (v267 > 6)
            {
              if (v267 == 7)
              {
                v560 = a4[2].i64[1];
                v561 = v272 + 1;
                v562 = v217;
                while (1)
                {
                  *(v31 + 8) = v561;
                  if (*(v560 + *(v561 - 1)))
                  {
                    break;
                  }

                  ++v561;
                  if (!--v562)
                  {
                    goto LABEL_900;
                  }
                }
              }

              else
              {
                v536 = a4[2].i64[1];
                v537 = v272 + 1;
                v538 = v217;
                while (1)
                {
                  *(v31 + 8) = v537;
                  if ((*(v536 + *(v537 - 1)) & 1) == 0)
                  {
                    break;
                  }

                  ++v537;
                  if (!--v538)
                  {
                    goto LABEL_900;
                  }
                }
              }

              goto LABEL_904;
            }

            if (v267 == 5)
            {
              v554 = a4[2].i64[1];
              v555 = v272 + 1;
              v556 = v217;
              while (1)
              {
                *(v31 + 8) = v555;
                if ((*(v554 + *(v555 - 1)) & 4) != 0)
                {
                  goto LABEL_904;
                }

                ++v555;
                if (!--v556)
                {
                  goto LABEL_900;
                }
              }
            }

            if (v267 == 6)
            {
              v488 = a4[2].i64[1];
              v489 = v272 + 1;
              v490 = v217;
              while (1)
              {
                *(v31 + 8) = v489;
                if ((*(v488 + *(v489 - 1)) & 4) == 0)
                {
                  goto LABEL_904;
                }

                ++v489;
                if (!--v490)
                {
                  goto LABEL_900;
                }
              }
            }

            goto LABEL_1328;
          }

          if (v267 <= 10)
          {
            if (v267 == 9)
            {
              v557 = a4[2].i64[1];
              v558 = v272 + 1;
              v559 = v217;
              while (1)
              {
                *(v31 + 8) = v558;
                if ((*(v557 + *(v558 - 1)) & 0x10) != 0)
                {
                  break;
                }

                ++v558;
                if (!--v559)
                {
                  goto LABEL_900;
                }
              }
            }

            else
            {
              v531 = a4[2].i64[1];
              v532 = v272 + 1;
              v533 = v217;
              while (1)
              {
                *(v31 + 8) = v532;
                if ((*(v531 + *(v532 - 1)) & 0x10) == 0)
                {
                  break;
                }

                ++v532;
                if (!--v533)
                {
                  goto LABEL_900;
                }
              }
            }

            goto LABEL_904;
          }

          if (v267 == 11)
          {
            if ((*(v31 + 32) & 4) == 0)
            {
              v563 = v272 + 1;
              v564 = v217;
              while (1)
              {
                *(v31 + 8) = v563;
                if (*(v563 - 1) == 10)
                {
                  goto LABEL_904;
                }

                ++v563;
                if (!--v564)
                {
                  goto LABEL_900;
                }
              }
            }
          }

          else if (v267 != 12)
          {
            goto LABEL_1328;
          }
        }

        *(v31 + 8) = &v272[v217];
LABEL_900:
        v565 = *(v31 + 232);
        v566 = v565 - v217;
        if (v565 == v217)
        {
          continue;
        }

        if (*(v31 + 168))
        {
          if (*(v31 + 184) >= 1)
          {
            *(v31 + 224) = v217;
            a3 = v749;
            a5 = v750;
            v10 = v751;
LABEL_225:
            *&v756 = 0;
            v47 = a1;
            v48 = 42;
            goto LABEL_1405;
          }

          a3 = v749;
          a5 = v750;
          v10 = v751;
          if (*(v31 + 216) == 15)
          {
            *(v31 + 224) = v217;
LABEL_920:
            *&v756 = 0;
            v47 = a1;
            v48 = 43;
            goto LABEL_1405;
          }

          v632 = a4[3].i32[3];
          *(v31 + 224) = v217;
          if (v632)
          {
LABEL_982:
            *&v756 = 0;
            v47 = a1;
            v48 = 44;
            goto LABEL_1405;
          }

LABEL_989:
          *&v756 = 0;
          v47 = a1;
          v48 = 45;
          goto LABEL_1405;
        }

        v88 = *(v31 + 8);
        *(v31 + 88) = v88;
        if (*(v31 + 184) >= 1)
        {
          a3 = v749;
          a5 = v750;
          v10 = v751;
          if (v565 > v217)
          {
            do
            {
              if (v88 >= a4[6].i64[0])
              {
                break;
              }

              v577 = *v88;
              if ((~v577 & 0xC0) != 0)
              {
                v583 = 1;
              }

              else
              {
                v578 = utf8_table4[v577 & 0x3F];
                v577 = (utf8_table3[v578] & v577) << (6 * v578);
                v579 = v88 + 1;
                v580 = v578 <= 1 ? 1 : v578;
                v581 = 6 * v578 - 6;
                do
                {
                  v582 = *v579++;
                  v577 |= (v582 & 0x3F) << v581;
                  v581 -= 6;
                  --v580;
                }

                while (v580);
                v583 = v578 + 1;
              }

              v584 = ucp_findchar(v577, (v31 + 196), (v31 + 200));
              v31 = v760;
              *(v760 + 192) = v584;
              if (*(v31 + 188) == (**(v31 + 208) == *(v31 + 204)))
              {
                break;
              }

              v88 = (*(v31 + 8) + v583);
              *(v31 + 8) = v88;
              ++v217;
            }

            while (v217 < *(v31 + 232));
          }

LABEL_277:
          *&v756 = 0;
          v47 = a1;
          v48 = 46;
          goto LABEL_1405;
        }

        v613 = *(v31 + 216);
        a3 = v749;
        a5 = v750;
        if (v613 == 15)
        {
          v10 = v751;
          if (v565 > v217)
          {
            do
            {
              v614 = *(v31 + 8);
              if (v614 >= a4[6].i64[0])
              {
                break;
              }

              *(v31 + 8) = v614 + 1;
              v615 = *v614;
              if (a4[3].i32[3] && (v615 & 0xC0) == 0xC0)
              {
                v616 = utf8_table4[v615 & 0x3F];
                v615 = (utf8_table3[utf8_table4[v615 & 0x3F]] & v615) << (6 * v616);
                v617 = v614 + 2;
                v618 = 6 * v616 - 6;
                v619 = v616 + 1;
                do
                {
                  *(v31 + 8) = v617;
                  v615 |= (*(v617++ - 1) & 0x3F) << v618;
                  v618 -= 6;
                  --v619;
                }

                while (v619 > 1);
              }

              v620 = ucp_findchar(v615, (v31 + 196), (v31 + 200));
              v31 = v760;
              *(v760 + 192) = v620;
              if (v620 == 2)
              {
                break;
              }

              for (m = *(v31 + 8); m < a4[6].i64[0]; *(v31 + 8) = m)
              {
                v622 = *m;
                v623 = 1;
                if (a4[3].i32[3] && (v622 & 0xC0) == 0xC0)
                {
                  v624 = utf8_table4[v622 & 0x3F];
                  v622 = (utf8_table3[v624] & v622) << (6 * v624);
                  v625 = (m + 1);
                  if (v624 <= 1)
                  {
                    v626 = 1;
                  }

                  else
                  {
                    v626 = v624;
                  }

                  v627 = 6 * v624 - 6;
                  do
                  {
                    v628 = *v625++;
                    v622 |= (v628 & 0x3F) << v627;
                    v627 -= 6;
                    --v626;
                  }

                  while (v626);
                  v623 = v624 + 1;
                }

                v629 = ucp_findchar(v622, (v31 + 196), (v31 + 200));
                v31 = v760;
                *(v760 + 192) = v629;
                if (v629 != 2)
                {
                  break;
                }

                m = (*(v31 + 8) + v623);
              }

              ++v217;
            }

            while (v217 < *(v31 + 232));
          }

LABEL_46:
          *&v756 = 0;
          v47 = a1;
          v48 = 47;
          goto LABEL_1405;
        }

        if (a4[3].i32[3])
        {
          if (v613 <= 8)
          {
            if (v613 <= 6)
            {
              if (v613 != 5)
              {
                if (v613 == 6)
                {
                  if (v565 > v217)
                  {
                    v644 = a4[6].u64[0];
                    while (v88 < v644)
                    {
                      v645 = *v88;
                      if ((~v645 & 0xC0) != 0)
                      {
                        v651 = 1;
                      }

                      else
                      {
                        v646 = utf8_table4[v645 & 0x3F];
                        v645 = (utf8_table3[v646] & v645) << (6 * v646);
                        v647 = v88 + 1;
                        if (v646 <= 1)
                        {
                          v648 = 1;
                        }

                        else
                        {
                          v648 = v646;
                        }

                        v649 = 6 * v646 - 6;
                        do
                        {
                          v650 = *v647++;
                          v645 |= (v650 & 0x3F) << v649;
                          v649 -= 6;
                          --v648;
                        }

                        while (v648);
                        if (v645 > 255)
                        {
                          goto LABEL_1380;
                        }

                        v651 = v646 + 1;
                      }

                      if ((*(a4[2].i64[1] + v645) & 4) != 0)
                      {
                        v88 += v651;
                        *(v31 + 8) = v88;
                        if (++v217 != v565)
                        {
                          continue;
                        }
                      }

                      goto LABEL_1380;
                    }
                  }

                  goto LABEL_1380;
                }

LABEL_1328:
                v760 = *v31;
                pcre_freeMem(a1, &v761);
                v575 = v760;
                v11 = 4294967282;
                if (v760)
                {
                  *(v760 + 408) = -14;
                  goto LABEL_972;
                }

                return v11;
              }

              if (v565 > v217)
              {
                v704 = a4[6].u64[0];
                while (1)
                {
                  if (v88 >= v704)
                  {
                    goto LABEL_1380;
                  }

                  v705 = *v88;
                  if ((~v705 & 0xC0) != 0)
                  {
                    break;
                  }

                  v706 = utf8_table4[v705 & 0x3F];
                  v705 = (utf8_table3[v706] & v705) << (6 * v706);
                  v707 = v88 + 1;
                  if (v706 <= 1)
                  {
                    v708 = 1;
                  }

                  else
                  {
                    v708 = v706;
                  }

                  v709 = 6 * v706 - 6;
                  do
                  {
                    v710 = *v707++;
                    v705 |= (v710 & 0x3F) << v709;
                    v709 -= 6;
                    --v708;
                  }

                  while (v708);
                  v711 = v706 + 1;
                  if (v705 <= 255)
                  {
                    goto LABEL_1342;
                  }

LABEL_1343:
                  v88 += v711;
                  *(v31 + 8) = v88;
                  if (++v217 == v565)
                  {
                    goto LABEL_1380;
                  }
                }

                v711 = 1;
LABEL_1342:
                if ((*(a4[2].i64[1] + v705) & 4) != 0)
                {
                  goto LABEL_1380;
                }

                goto LABEL_1343;
              }

              goto LABEL_1380;
            }

            if (v613 != 7)
            {
              if (v565 > v217)
              {
                v688 = a4[6].u64[0];
                while (v88 < v688)
                {
                  v689 = *v88;
                  if ((~v689 & 0xC0) != 0)
                  {
                    v695 = 1;
                  }

                  else
                  {
                    v690 = utf8_table4[v689 & 0x3F];
                    v689 = (utf8_table3[v690] & v689) << (6 * v690);
                    v691 = v88 + 1;
                    if (v690 <= 1)
                    {
                      v692 = 1;
                    }

                    else
                    {
                      v692 = v690;
                    }

                    v693 = 6 * v690 - 6;
                    do
                    {
                      v694 = *v691++;
                      v689 |= (v694 & 0x3F) << v693;
                      v693 -= 6;
                      --v692;
                    }

                    while (v692);
                    if (v689 > 255)
                    {
                      goto LABEL_1380;
                    }

                    v695 = v690 + 1;
                  }

                  if (*(a4[2].i64[1] + v689))
                  {
                    v88 += v695;
                    *(v31 + 8) = v88;
                    if (++v217 != v565)
                    {
                      continue;
                    }
                  }

                  goto LABEL_1380;
                }
              }

              goto LABEL_1380;
            }

            if (v565 <= v217)
            {
              goto LABEL_1380;
            }

            v720 = a4[6].u64[0];
            while (1)
            {
              if (v88 >= v720)
              {
                goto LABEL_1380;
              }

              v721 = *v88;
              if ((~v721 & 0xC0) != 0)
              {
                break;
              }

              v722 = utf8_table4[v721 & 0x3F];
              v721 = (utf8_table3[v722] & v721) << (6 * v722);
              v723 = v88 + 1;
              if (v722 <= 1)
              {
                v724 = 1;
              }

              else
              {
                v724 = v722;
              }

              v725 = 6 * v722 - 6;
              do
              {
                v726 = *v723++;
                v721 |= (v726 & 0x3F) << v725;
                v725 -= 6;
                --v724;
              }

              while (v724);
              v727 = v722 + 1;
              if (v721 <= 255)
              {
                goto LABEL_1372;
              }

LABEL_1373:
              v88 += v727;
              *(v31 + 8) = v88;
              if (++v217 == v565)
              {
                goto LABEL_1380;
              }
            }

            v727 = 1;
LABEL_1372:
            if (*(a4[2].i64[1] + v721))
            {
              goto LABEL_1380;
            }

            goto LABEL_1373;
          }

          if (v613 > 10)
          {
            if (v613 == 12)
            {
              v728 = v566;
            }

            else
            {
              if (v613 != 11)
              {
                goto LABEL_1328;
              }

              v696 = *(v31 + 32);
              if (v565 != 0x7FFFFFFF)
              {
                if ((v696 & 4) != 0)
                {
                  if (v565 > v217)
                  {
                    v741 = a4[6].u64[0];
                    do
                    {
                      v742 = v88 + 1;
                      *(v31 + 8) = v88 + 1;
                      if ((v88 + 1) < v741)
                      {
                        v743 = v741 - 1 - v88;
                        while ((*v742 & 0xC0) == 0x80)
                        {
                          *(v31 + 8) = ++v742;
                          if (!--v743)
                          {
                            v742 = v741;
                            break;
                          }
                        }
                      }

                      ++v217;
                      v88 = v742;
                    }

                    while (v217 != v565);
                  }
                }

                else if (v565 > v217)
                {
                  v740 = a4[6].u64[0];
                  do
                  {
                    if (v88 >= v740 || *v88 == 10)
                    {
                      break;
                    }

                    *(v31 + 8) = ++v88;
                    if (v88 < v740)
                    {
                      while ((*v88 & 0xC0) == 0x80)
                      {
                        *(v31 + 8) = ++v88;
                        if (v88 == v740)
                        {
                          v88 = v740;
                          break;
                        }
                      }
                    }

                    ++v217;
                  }

                  while (v217 != v565);
                }

                goto LABEL_1380;
              }

              if ((v696 & 4) == 0)
              {
                if (v217 != 0x7FFFFFFF)
                {
                  v697 = a4[6].u64[0];
                  v698 = v217 - 0x7FFFFFFF;
                  do
                  {
                    if (v88 >= v697)
                    {
                      break;
                    }

                    if (*v88 == 10)
                    {
                      break;
                    }

                    *(v31 + 8) = ++v88;
                  }

                  while (!__CFADD__(v698++, 1));
                }

                goto LABEL_1380;
              }

              v728 = v217 ^ 0x7FFFFFFFu;
              v566 = v217 ^ 0x7FFFFFFF;
            }

            if (a4[6].i64[0] - v88 >= v728)
            {
              v729 = v566;
            }

            else
            {
              v729 = a4[6].i32[0] - v88;
            }

            *(v31 + 8) = &v88[v729];
            goto LABEL_1380;
          }

          if (v613 != 9)
          {
            if (v565 > v217)
            {
              v678 = a4[6].u64[0];
              while (v88 < v678)
              {
                v679 = *v88;
                if ((~v679 & 0xC0) != 0)
                {
                  v685 = 1;
                }

                else
                {
                  v680 = utf8_table4[v679 & 0x3F];
                  v679 = (utf8_table3[v680] & v679) << (6 * v680);
                  v681 = v88 + 1;
                  if (v680 <= 1)
                  {
                    v682 = 1;
                  }

                  else
                  {
                    v682 = v680;
                  }

                  v683 = 6 * v680 - 6;
                  do
                  {
                    v684 = *v681++;
                    v679 |= (v684 & 0x3F) << v683;
                    v683 -= 6;
                    --v682;
                  }

                  while (v682);
                  if (v679 > 255)
                  {
                    goto LABEL_1380;
                  }

                  v685 = v680 + 1;
                }

                if ((*(a4[2].i64[1] + v679) & 0x10) != 0)
                {
                  v88 += v685;
                  *(v31 + 8) = v88;
                  if (++v217 != v565)
                  {
                    continue;
                  }
                }

                goto LABEL_1380;
              }
            }

            goto LABEL_1380;
          }

          if (v565 <= v217)
          {
LABEL_1380:
            a3 = v749;
            a5 = v750;
            v10 = v751;
LABEL_102:
            *&v756 = 0;
            v47 = a1;
            v48 = 48;
            goto LABEL_1405;
          }

          v712 = a4[6].u64[0];
          while (1)
          {
            if (v88 >= v712)
            {
              goto LABEL_1380;
            }

            v713 = *v88;
            if ((~v713 & 0xC0) != 0)
            {
              break;
            }

            v714 = utf8_table4[v713 & 0x3F];
            v713 = (utf8_table3[v714] & v713) << (6 * v714);
            v715 = v88 + 1;
            if (v714 <= 1)
            {
              v716 = 1;
            }

            else
            {
              v716 = v714;
            }

            v717 = 6 * v714 - 6;
            do
            {
              v718 = *v715++;
              v713 |= (v718 & 0x3F) << v717;
              v717 -= 6;
              --v716;
            }

            while (v716);
            v719 = v714 + 1;
            if (v713 <= 255)
            {
              goto LABEL_1357;
            }

LABEL_1358:
            v88 += v719;
            *(v31 + 8) = v88;
            if (++v217 == v565)
            {
              goto LABEL_1380;
            }
          }

          v719 = 1;
LABEL_1357:
          if ((*(a4[2].i64[1] + v713) & 0x10) != 0)
          {
            goto LABEL_1380;
          }

          goto LABEL_1358;
        }

        if (v613 > 8)
        {
          if (v613 > 10)
          {
            if (v613 == 12)
            {
              goto LABEL_1381;
            }

            if (v613 != 11)
            {
              goto LABEL_1328;
            }

            if ((*(v31 + 32) & 4) != 0)
            {
LABEL_1381:
              v730 = a4[6].i64[0] - v88;
              if (v730 >= v566)
              {
                LODWORD(v730) = v566;
              }

              v87 = &v88[v730];
              *(v31 + 8) = v87;
              goto LABEL_1384;
            }

            v702 = v565 - v217;
            if (v565 > v217)
            {
              v703 = a4[6].u64[0];
              v87 = v88;
              do
              {
                if (v87 >= v703)
                {
                  break;
                }

                if (*v87 == 10)
                {
                  break;
                }

                *(v31 + 8) = ++v87;
                --v702;
              }

              while (v702);
              goto LABEL_1384;
            }
          }

          else if (v613 == 9)
          {
            v733 = v565 - v217;
            if (v565 > v217)
            {
              v734 = a4[6].u64[0];
              v87 = v88;
              do
              {
                if (v87 >= v734)
                {
                  break;
                }

                if ((*(a4[2].i64[1] + *v87) & 0x10) != 0)
                {
                  break;
                }

                *(v31 + 8) = ++v87;
                --v733;
              }

              while (v733);
              goto LABEL_1384;
            }
          }

          else
          {
            v686 = v565 - v217;
            if (v565 > v217)
            {
              v687 = a4[6].u64[0];
              v87 = v88;
              do
              {
                if (v87 >= v687)
                {
                  break;
                }

                if ((*(a4[2].i64[1] + *v87) & 0x10) == 0)
                {
                  break;
                }

                *(v31 + 8) = ++v87;
                --v686;
              }

              while (v686);
              goto LABEL_1384;
            }
          }
        }

        else if (v613 > 6)
        {
          if (v613 == 7)
          {
            v735 = v565 - v217;
            if (v565 > v217)
            {
              v736 = a4[6].u64[0];
              v87 = v88;
              do
              {
                if (v87 >= v736)
                {
                  break;
                }

                if (*(a4[2].i64[1] + *v87))
                {
                  break;
                }

                *(v31 + 8) = ++v87;
                --v735;
              }

              while (v735);
              goto LABEL_1384;
            }
          }

          else
          {
            v700 = v565 - v217;
            if (v565 > v217)
            {
              v701 = a4[6].u64[0];
              v87 = v88;
              do
              {
                if (v87 >= v701)
                {
                  break;
                }

                if ((*(a4[2].i64[1] + *v87) & 1) == 0)
                {
                  break;
                }

                *(v31 + 8) = ++v87;
                --v700;
              }

              while (v700);
              goto LABEL_1384;
            }
          }
        }

        else if (v613 == 5)
        {
          v731 = v565 - v217;
          if (v565 > v217)
          {
            v732 = a4[6].u64[0];
            v87 = v88;
            do
            {
              if (v87 >= v732)
              {
                break;
              }

              if ((*(a4[2].i64[1] + *v87) & 4) != 0)
              {
                break;
              }

              *(v31 + 8) = ++v87;
              --v731;
            }

            while (v731);
            goto LABEL_1384;
          }
        }

        else
        {
          if (v613 != 6)
          {
            goto LABEL_1328;
          }

          v674 = v565 - v217;
          if (v565 > v217)
          {
            v675 = a4[6].u64[0];
            v87 = v88;
            do
            {
              if (v87 >= v675)
              {
                break;
              }

              if ((*(a4[2].i64[1] + *v87) & 4) == 0)
              {
                break;
              }

              *(v31 + 8) = ++v87;
              --v674;
            }

            while (v674);
LABEL_1384:
            a3 = v749;
            a5 = v750;
            v10 = v751;
            goto LABEL_111;
          }
        }

        a3 = v749;
        a5 = v750;
        v10 = v751;
        goto LABEL_1404;
      case 0x3Bu:
      case 0x3Cu:
        v245 = v207 + 1;
        *(v31 + 72) = v207 + 1;
        *(v31 + 16) = v207 + 33;
        v246 = v207[33];
        if ((v246 - 51) >= 6)
        {
          if ((v246 - 57) >= 2)
          {
            v248 = 0;
            *(v31 + 232) = 0x100000001;
            v250 = 1;
            v249 = 1;
            a3 = v749;
            a5 = v750;
            if (a4[3].i32[3])
            {
LABEL_677:
              v467 = a4[6].u64[0];
              v468 = *(v31 + 8);
              v469 = 1;
              while (v468 < v467)
              {
                v470 = v468 + 1;
                *(v31 + 8) = v468 + 1;
                v471 = *v468;
                if ((~v471 & 0xC0) != 0)
                {
                  goto LABEL_685;
                }

                v472 = utf8_table4[v471 & 0x3F];
                v473 = 6 * v472;
                v471 = (utf8_table3[utf8_table4[v471 & 0x3F]] & v471) << (6 * v472);
                v474 = v472 + 1;
                v475 = v473 - 6;
                do
                {
                  v476 = v470++;
                  *(v31 + 8) = v470;
                  v471 |= (*v476 & 0x3F) << v475;
                  --v474;
                  v475 -= 6;
                }

                while (v474 > 1);
                if (v471 < 256)
                {
LABEL_685:
                  if (((v245[v471 / 8] >> (v471 & 7)) & 1) == 0)
                  {
                    goto LABEL_904;
                  }
                }

                else if (v208 == 59)
                {
                  goto LABEL_904;
                }

                v468 = v470;
                v40 = v469++ == v249;
                if (v40)
                {
                  goto LABEL_688;
                }
              }
            }

            else
            {
LABEL_690:
              v478 = a4[6].u64[0];
              v479 = *(v31 + 8);
              v480 = v249;
              while (v479 < v478)
              {
                *(v31 + 8) = v479 + 1;
                if (((v245[*v479 >> 3] >> (*v479 & 7)) & 1) == 0)
                {
                  break;
                }

                ++v479;
                if (!--v480)
                {
                  goto LABEL_694;
                }
              }
            }

            goto LABEL_904;
          }

          v248 = v246 == 58;
          *(v31 + 168) = v248;
          v249 = __rev16(*(v207 + 17));
          *(v31 + 236) = v249;
          v250 = __rev16(*(v207 + 18));
          if (!v250)
          {
            v250 = 0x7FFFFFFF;
          }

          *(v31 + 232) = v250;
          *(v31 + 16) = v207 + 38;
        }

        else
        {
          *(v31 + 16) = v207 + 34;
          v247 = v207[33];
          v248 = (v247 - 51) & 1;
          *(v31 + 168) = v248;
          v249 = rep_min_0[v247 - 51];
          *(v31 + 236) = v249;
          if ((v247 - 57) >= 0xFFFFFFFE)
          {
            v250 = rep_max_0[v247 - 51];
          }

          else
          {
            v250 = 0x7FFFFFFF;
          }

          *(v31 + 232) = v250;
        }

        if (a4[3].i32[3])
        {
          a3 = v749;
          a5 = v750;
          if (v249 >= 1)
          {
            goto LABEL_677;
          }

LABEL_688:
          v477 = 0;
        }

        else
        {
          a3 = v749;
          a5 = v750;
          if (v249 >= 1)
          {
            goto LABEL_690;
          }

LABEL_694:
          v477 = 1;
        }

        if (v250 == v249)
        {
          continue;
        }

        if (v248)
        {
          *(v31 + 224) = v249;
          a3 = v749;
          a5 = v750;
          v10 = v751;
          if ((v477 & 1) == 0)
          {
LABEL_913:
            *&v756 = 0;
            v47 = a1;
            v48 = 22;
            goto LABEL_1405;
          }

LABEL_231:
          *&v756 = 0;
          v47 = a1;
          v48 = 23;
          goto LABEL_1405;
        }

        v93 = *(v31 + 8);
        *(v31 + 88) = v93;
        if (v477)
        {
          v334 = __OFSUB__(v250, v249);
          v652 = v250 - v249;
          if ((v652 < 0) ^ v334 | (v652 == 0))
          {
            a3 = v749;
            a5 = v750;
            v10 = v751;
          }

          else
          {
            v653 = a4[6].u64[0];
            v92 = v93;
            do
            {
              if (v92 >= v653)
              {
                break;
              }

              if (((v245[*v92 >> 3] >> (*v92 & 7)) & 1) == 0)
              {
                break;
              }

              *(v31 + 8) = ++v92;
              --v652;
            }

            while (v652);
            a3 = v749;
            a5 = v750;
            v10 = v751;
LABEL_121:
            if (v92 < v93)
            {
              goto LABEL_904;
            }
          }

          *&v756 = 0;
          v47 = a1;
          v48 = 25;
          goto LABEL_1405;
        }

        if (v250 <= v249)
        {
          a3 = v749;
          a5 = v750;
          v10 = v751;
LABEL_128:
          *&v756 = 0;
          v47 = a1;
          v48 = 24;
          goto LABEL_1405;
        }

        v657 = a4[6].u64[0];
        while (1)
        {
          if (v93 >= v657)
          {
LABEL_1219:
            a3 = v749;
            a5 = v750;
            v10 = v751;
            goto LABEL_128;
          }

          v658 = *v93;
          if ((~v658 & 0xC0) != 0)
          {
            break;
          }

          v659 = utf8_table4[v658 & 0x3F];
          v658 = (utf8_table3[v659] & v658) << (6 * v659);
          v660 = (v93 + 1);
          if (v659 <= 1)
          {
            v661 = 1;
          }

          else
          {
            v661 = v659;
          }

          v662 = 6 * v659 - 6;
          do
          {
            v663 = *v660++;
            v658 |= (v663 & 0x3F) << v662;
            v662 -= 6;
            --v661;
          }

          while (v661);
          v664 = v659 + 1;
          if (v658 < 256)
          {
            goto LABEL_1217;
          }

          if (v208 == 59)
          {
            goto LABEL_1219;
          }

LABEL_1218:
          v93 += v664;
          *(v31 + 8) = v93;
          if (++v249 == v250)
          {
            goto LABEL_1219;
          }
        }

        v664 = 1;
LABEL_1217:
        if (((v245[v658 / 8] >> (v658 & 7)) & 1) == 0)
        {
          goto LABEL_1219;
        }

        goto LABEL_1218;
      case 0x3Du:
        v455 = v207 + 3;
        *(v31 + 72) = v207 + 3;
        v456 = &v207[__rev16(*(v207 + 1))];
        *(v31 + 16) = v456;
        v457 = *v456;
        if ((v457 - 51) < 6)
        {
          *(v31 + 16) = v456 + 1;
          v458 = *v456;
          v459 = (v458 - 51) & 1;
          *(v31 + 168) = v459;
          v460 = rep_min_0[v458 - 51];
          *(v31 + 236) = v460;
          if ((v458 - 57) >= 0xFFFFFFFE)
          {
            v461 = rep_max_0[v458 - 51];
          }

          else
          {
            v461 = 0x7FFFFFFF;
          }

          *(v31 + 232) = v461;
          goto LABEL_777;
        }

        if ((v457 - 57) >= 2)
        {
          v459 = 0;
          *(v31 + 232) = 0x100000001;
          v460 = 1;
          v461 = 1;
LABEL_778:
          v515 = a4[6].u64[0];
          v516 = *(v31 + 8);
          v517 = 1;
          while (v516 < v515)
          {
            v518 = v516 + 1;
            *(v31 + 8) = v516 + 1;
            v519 = *v516;
            if ((~v519 & 0xC0) != 0)
            {
              ++v516;
            }

            else
            {
              v520 = utf8_table4[v519 & 0x3F];
              v521 = 6 * v520;
              v519 = (utf8_table3[utf8_table4[v519 & 0x3F]] & v519) << (6 * v520);
              v522 = v520 + 1;
              v523 = v521 - 6;
              do
              {
                v516 = v518 + 1;
                *(v31 + 8) = v518 + 1;
                v519 |= (*v518 & 0x3F) << v523;
                --v522;
                v523 -= 6;
                ++v518;
              }

              while (v522 > 1);
            }

            if (!match_xclass(v519, v455))
            {
              break;
            }

            v40 = v517++ == v460;
            if (v40)
            {
              goto LABEL_788;
            }
          }

          goto LABEL_965;
        }

        v459 = v457 == 58;
        *(v31 + 168) = v459;
        v460 = __rev16(*(v456 + 1));
        *(v31 + 236) = v460;
        v514 = __rev16(*(v456 + 3));
        if (v514)
        {
          v461 = v514;
        }

        else
        {
          v461 = 0x7FFFFFFF;
        }

        *(v31 + 232) = v461;
        *(v31 + 16) = v456 + 5;
LABEL_777:
        if (v460 >= 1)
        {
          goto LABEL_778;
        }

LABEL_788:
        if (v460 == v461)
        {
          continue;
        }

        if (!v459)
        {
          v665 = *(v31 + 8);
          *(v31 + 88) = v665;
          if (v460 >= v461)
          {
            a3 = v749;
            a5 = v750;
            v10 = v751;
          }

          else
          {
            v666 = a4[6].u64[0];
            do
            {
              if (v665 >= v666)
              {
                break;
              }

              v667 = *v665;
              if ((~v667 & 0xC0) != 0)
              {
                v673 = 1;
              }

              else
              {
                v668 = utf8_table4[v667 & 0x3F];
                v667 = (utf8_table3[v668] & v667) << (6 * v668);
                v669 = (v665 + 1);
                v670 = v668 <= 1 ? 1 : v668;
                v671 = 6 * v668 - 6;
                do
                {
                  v672 = *v669++;
                  v667 |= (v672 & 0x3F) << v671;
                  v671 -= 6;
                  --v670;
                }

                while (v670);
                v673 = v668 + 1;
              }

              if (!match_xclass(v667, v455))
              {
                break;
              }

              v665 += v673;
              *(v31 + 8) = v665;
              ++v460;
            }

            while (v460 != v461);
            a3 = v749;
            a5 = v750;
            v10 = v751;
          }

LABEL_64:
          *&v756 = 0;
          v47 = a1;
          v48 = 27;
          goto LABEL_1405;
        }

        *(v31 + 224) = v460;
        a3 = v749;
        a5 = v750;
        v10 = v751;
LABEL_272:
        *&v756 = 0;
        v189 = pcre_getMem(a1, 26, &v756);
        v100 = v756;
        v190 = v760;
LABEL_937:
        if (v100)
        {
          goto LABEL_1406;
        }

LABEL_1412:
        v587 = *v190;
LABEL_1413:
        v760 = v587;
        pcre_freeMem(a1, &v761);
        v172 = v760;
        if (v760)
        {
LABEL_1414:
          v11 = 4294967290;
          goto LABEL_1415;
        }

        return 4294967290;
      case 0x3Eu:
        v452 = (v207[1] << 9) | (2 * v207[2]);
        *(v31 + 244) = v452;
        *(v31 + 16) = v207 + 3;
        if (v452 >= *(v31 + 24) || (v453 = (a4[1].i64[0] + 4 * v452), (*v453 & 0x80000000) != 0))
        {
          v454 = a4[6].i32[0] - *(v31 + 8) + 1;
        }

        else
        {
          v454 = v453[1] - *v453;
        }

        *(v31 + 228) = v454;
        v463 = v207[3];
        if ((v463 - 51) >= 6)
        {
          if ((v463 - 57) >= 2)
          {
            v539 = *(v31 + 8);
            if (!match_ref_0(v452, v539, v454, a4, *(v31 + 32)))
            {
              goto LABEL_992;
            }

            *(v31 + 8) = &v539[v454];
            continue;
          }

          v745 = v463 == 58;
          *(v31 + 168) = v745;
          v465 = __rev16(*(v207 + 2));
          *(v31 + 236) = v465;
          v510 = __rev16(*(v207 + 3));
          if (v510)
          {
            v466 = v510;
          }

          else
          {
            v466 = 0x7FFFFFFF;
          }

          *(v31 + 232) = v466;
          *(v31 + 16) = v207 + 8;
        }

        else
        {
          *(v31 + 16) = v207 + 4;
          v464 = v207[3];
          v745 = (v464 - 51) & 1;
          *(v31 + 168) = v745;
          v465 = rep_min_0[v464 - 51];
          *(v31 + 236) = v465;
          v466 = rep_max_0[v464 - 51];
          if ((v464 - 57) < 0xFFFFFFFE)
          {
            v466 = 0x7FFFFFFF;
          }

          *(v31 + 232) = v466;
        }

        if (v454)
        {
          v746 = v466;
          if (v465 >= 1)
          {
            v511 = *(v31 + 32);
            v512 = *(v31 + 8);
            v513 = v465;
            while (match_ref_0(v452, v512, v454, a4, v511))
            {
              v512 += v454;
              *(v31 + 8) = v512;
              if (!--v513)
              {
                goto LABEL_770;
              }
            }

LABEL_965:
            v760 = *v31;
            pcre_freeMem(a1, &v761);
            v575 = v760;
            if (v760)
            {
              goto LABEL_971;
            }

            return 0;
          }

LABEL_770:
          if (v746 != v465)
          {
            if (v745)
            {
              *(v31 + 224) = v465;
              v10 = v751;
LABEL_168:
              *&v756 = 0;
              v122 = a1;
              v123 = 20;
              goto LABEL_936;
            }

            v125 = *(v31 + 8);
            *(v31 + 88) = v125;
            v676 = v746 - v465;
            if (v746 <= v465)
            {
              a3 = v749;
              a5 = v750;
              v10 = v751;
            }

            else
            {
              v677 = *(v31 + 32);
              v124 = v125;
              do
              {
                if (!match_ref_0(v452, v124, v454, a4, v677))
                {
                  break;
                }

                v124 += v454;
                *(v31 + 8) = v124;
                --v676;
              }

              while (v676);
              a3 = v749;
              a5 = v750;
              v10 = v751;
LABEL_171:
              if (v124 < v125)
              {
                goto LABEL_904;
              }
            }

            *&v756 = 0;
            v47 = a1;
            v48 = 21;
            goto LABEL_1405;
          }
        }

        continue;
      case 0x3Fu:
        v605 = (a4[5].i64[0] + __rev16(*(v207 + 1)));
        *(v31 + 56) = v605;
        v606 = *v605;
        *(v31 + 120) = v606 - 80;
        if (v606 >= 0xB5)
        {
          *(v31 + 120) = __rev16(*(v605 + 2));
        }

        *(v31 + 112) = a4[8].i64[1];
        a4[8].i64[1] = v31 + 112;
        *(v31 + 16) = v207 + 3;
        *(v31 + 128) = v207 + 3;
        v607 = a4[1].u32[2];
        *(v31 + 152) = v607;
        if (v607 > 30)
        {
          v608 = heap_Calloc(*(*a1 + 8), 1, 4 * v607);
          v639 = v760;
          *(v760 + 144) = v608;
          a3 = v749;
          a5 = v750;
          if (!v608)
          {
            v760 = *v639;
            pcre_freeMem(a1, &v761);
            v172 = v760;
            v11 = 4294967290;
            if (v760)
            {
              goto LABEL_1415;
            }

            return v11;
          }

          v607 = *(v639 + 152);
        }

        else
        {
          v608 = (v31 + 268);
          *(v31 + 144) = v31 + 268;
          a3 = v749;
          a5 = v750;
        }

        memcpy(v608, a4[1].i64[0], 4 * v607);
        v640 = v760;
        *(v760 + 136) = a4[6].i64[1];
        a4[6].i64[1] = *(v640 + 8);
        goto LABEL_308;
      case 0x40u:
        if (!a6)
        {
          goto LABEL_388;
        }

        v758 = 0u;
        v759 = 0u;
        v756 = 0u;
        v757 = 0u;
        LODWORD(v756) = 1;
        v263 = *(v31 + 16);
        DWORD1(v756) = *(v263 + 1);
        v264 = a4[5].u64[1];
        *(&v756 + 1) = a4[1].i64[0];
        *&v757 = v264;
        *(&v757 + 1) = vmovn_s64(vsubq_s64(a4[6], vdupq_n_s64(v264)));
        LODWORD(v758) = *(v31 + 8) - v264;
        DWORD2(v759) = __rev16(*(v263 + 2));
        HIDWORD(v759) = __rev16(*(v263 + 4));
        v265 = a4[7].i32[3];
        DWORD1(v758) = *(v31 + 24) / 2;
        DWORD2(v758) = v265;
        *&v759 = a4[9].i64[0];
        v266 = a6(&v756);
        if (v266 >= 1)
        {
          v760 = *v760;
          pcre_freeMem(a1, &v761);
          v11 = 0;
          goto LABEL_1131;
        }

        v11 = v266;
        if ((v266 & 0x80000000) != 0)
        {
          v760 = *v760;
          pcre_freeMem(a1, &v761);
LABEL_1131:
          v572 = v760;
          if (!v760)
          {
            return v11;
          }

          goto LABEL_991;
        }

        v31 = v760;
        v207 = *(v760 + 16);
LABEL_388:
        *(v31 + 16) = v207 + 6;
        break;
      case 0x41u:
        do
        {
          v207 += __rev16(*(v207 + 1));
          *(v31 + 16) = v207;
        }

        while (*v207 == 65);
        continue;
      case 0x42u:
      case 0x43u:
      case 0x44u:
        v224 = &v207[-__rev16(*(v207 + 1))];
        *(v31 + 96) = v224;
        v225 = *(v31 + 40);
        v226 = v225[1];
        *(v31 + 104) = v226;
        *(v31 + 40) = *v225;
        v227 = *v224;
        if (v227 == 75)
        {
          goto LABEL_741;
        }

        if (v227 - 69 < 4 || v227 == 74)
        {
          a4[7].i64[0] = *(v31 + 8);
          a4[7].i32[2] = *(v31 + 24);
          v760 = *v31;
          pcre_freeMem(a1, &v761);
          v572 = v760;
          v11 = 1;
          if (!v760)
          {
            return v11;
          }

LABEL_991:
          *(v572 + 408) = v11;
LABEL_932:
          a4[9].i64[1] = v572;
          a3 = v749;
          a5 = v750;
          goto LABEL_1417;
        }

        v228 = v227 - 80;
        *(v31 + 240) = v227 - 80;
        if (v227 >= 0xB5)
        {
          v228 = __rev16(*(v224 + 2));
          *(v31 + 240) = v228;
        }

        v229 = 2 * v228;
        *(v31 + 244) = 2 * v228;
        if (v228 < 1)
        {
          goto LABEL_741;
        }

        a4[7].i32[3] = v228;
        if (v229 >= a4[1].i32[3])
        {
          a4[3].i32[0] = 1;
        }

        else
        {
          v230 = a4[1].i64[0];
          *(v230 + 4 * v229) = *(v230 + 4 * (a4[1].i32[2] - v228));
          *(v230 + 4 * *(v31 + 244) + 4) = *(v31 + 8) - a4[5].i32[2];
          v231 = *(v31 + 244);
          if (*(v31 + 24) <= v231)
          {
            *(v31 + 24) = v231 + 2;
          }
        }

        v499 = a4[8].i64[1];
        if (v499 && *(v499 + 8) == *(v31 + 240))
        {
          a4[8].i64[1] = *v499;
          a4[6].i64[1] = *(v499 + 24);
          memcpy(a4[1].i64[0], *(v499 + 32), 4 * *(v499 + 40));
          v500 = v760;
          *(v760 + 16) = *(v499 + 16);
          *(v500 + 32) = *(v500 + 176);
        }

        else
        {
LABEL_741:
          *(v31 + 32) = *(v31 + 176);
          v501 = *v207;
          if (v501 != 66 && *(v31 + 8) != v226)
          {
            if (v501 == 68)
            {
              *&v756 = 0;
              v586 = pcre_getMem(a1, 16, &v756);
              v100 = v756;
              v176 = v760;
              a3 = v749;
              a5 = v750;
              if (v756 && (v586 & 0x80000000) == 0)
              {
LABEL_257:
                v103 = *(v176 + 8);
                *(v100 + 8) = v103;
                *(v100 + 16) = *(v176 + 16) + 3;
                *(v100 + 24) = *(v176 + 24);
                v174 = *(v176 + 32);
                *(v100 + 32) = v174;
                v173 = *(v176 + 40);
                *(v100 + 40) = v173;
                *(v100 + 48) = 0;
                *v100 = v176;
                v760 = v100;
                goto LABEL_1408;
              }

LABEL_1031:
              v587 = *v176;
              goto LABEL_1413;
            }

            *&v756 = 0;
            v126 = pcre_getMem(a1, 18, &v756);
            v100 = v756;
            v101 = v760;
            a3 = v749;
            a5 = v750;
            if (!v756)
            {
              goto LABEL_1202;
            }

            goto LABEL_176;
          }

LABEL_753:
          *(v31 + 16) = v207 + 3;
        }

        continue;
      case 0x45u:
      case 0x47u:
        a3 = v749;
        a5 = v750;
        goto LABEL_299;
      case 0x46u:
      case 0x48u:
        a3 = v749;
        a5 = v750;
        goto LABEL_290;
      case 0x49u:
        v302 = v207[1];
        v303 = v207[2];
        if (a4[3].i32[3])
        {
          v304 = v303 | (v302 << 8);
          if (v304)
          {
            v305 = 0;
            v306 = a4[5].u64[1];
            v307 = *(v31 + 8);
            while (1)
            {
              v308 = v307 - 1;
              *(v31 + 8) = v307 - 1;
              if ((v307 - 1) < v306)
              {
                break;
              }

              if ((*v308 & 0xC0) == 0x80)
              {
                v309 = v307 - 2;
                do
                {
                  *(v31 + 8) = v309;
                  v310 = *v309--;
                }

                while ((v310 & 0xC0) == 0x80);
                v308 = v309 + 1;
              }

              ++v305;
              v307 = v308;
              if (v305 == v304)
              {
                goto LABEL_753;
              }
            }

LABEL_930:
            v760 = *v31;
            pcre_freeMem(a1, &v761);
            v572 = v760;
            if (!v760)
            {
              return 0;
            }

            v11 = 0;
            *(v760 + 408) = 0;
            goto LABEL_932;
          }
        }

        else
        {
          v504 = *(v31 + 8) - (v303 | (v302 << 8));
          *(v31 + 8) = v504;
          if (v504 < a4[5].i64[1])
          {
            goto LABEL_930;
          }
        }

        goto LABEL_753;
      case 0x4Au:
        v602 = *(v31 + 8);
        *(v31 + 96) = v207;
        *(v31 + 104) = v602;
        a3 = v749;
        a5 = v750;
        goto LABEL_279;
      case 0x4Bu:
        if (v207[3] == 76)
        {
          v609 = (v207[4] << 9) | (2 * v207[5]);
          *(v31 + 244) = v609;
          if (v609 == 131070)
          {
            v610 = a4[8].i64[1] != 0;
          }

          else
          {
            v610 = 0;
            if (v609 < *(v31 + 24))
            {
              v610 = *(a4[1].i64[0] + 4 * v609) >= 0;
            }
          }

          *(v31 + 164) = v610;
          *&v756 = 0;
          v654 = pcre_getMem(a1, 3, &v756);
          v100 = v756;
          v101 = v760;
          a3 = v749;
          a5 = v750;
          if (v756 && (v654 & 0x80000000) == 0)
          {
            v103 = *(v760 + 8);
            *(v756 + 8) = v103;
            v655 = *(v101 + 16);
            v656 = 6;
            if (!*(v101 + 164))
            {
              v656 = __rev16(*(v655 + 1)) + 3;
            }

            v102 = 0;
            *(v100 + 16) = v655 + v656;
            *(v100 + 24) = *(v101 + 24);
            v174 = *(v101 + 32);
            *(v100 + 32) = v174;
            v173 = *(v101 + 40);
            *(v100 + 40) = v173;
            *(v100 + 48) = 2;
            goto LABEL_297;
          }

          goto LABEL_1202;
        }

        *&v756 = 0;
        v641 = pcre_getMem(a1, 4, &v756);
        v100 = v756;
        v612 = v760;
        if (!v756 || v641 < 0)
        {
LABEL_1142:
          v760 = *v612;
          pcre_freeMem(a1, &v761);
          v172 = v760;
          a3 = v749;
          a5 = v750;
          if (v760)
          {
            goto LABEL_1414;
          }

          return 4294967290;
        }

        v173 = 0;
        v102 = 0;
        v103 = *(v760 + 8);
        *(v756 + 8) = v103;
        *(v100 + 16) = *(v612 + 16) + 3;
        *(v100 + 24) = *(v612 + 24);
        v174 = *(v612 + 32);
        *(v100 + 48) = 3;
        *v100 = v612;
        *(v100 + 32) = v174;
        *(v100 + 40) = 0;
LABEL_1141:
        v760 = v100;
        a3 = v749;
        a5 = v750;
        goto LABEL_1409;
      case 0x4Cu:
      case 0x4Fu:
        goto LABEL_753;
      case 0x4Du:
        *(v31 + 80) = v207 + 1;
        *&v756 = 0;
        v611 = pcre_getMem(a1, 14, &v756);
        v100 = v756;
        v612 = v760;
        if (!v756 || v611 < 0)
        {
          goto LABEL_1142;
        }

        v102 = 0;
        v103 = *(v760 + 8);
        *(v756 + 8) = v103;
        *(v100 + 16) = *(v612 + 80);
        *(v100 + 24) = *(v612 + 24);
        v174 = *(v612 + 32);
        *(v100 + 32) = v174;
        v173 = *(v612 + 40);
        *(v100 + 48) = 2;
        *(v100 + 40) = v173;
        *v100 = v612;
        goto LABEL_1141;
      case 0x4Eu:
        v603 = v207 + 1;
        *(v31 + 80) = v207 + 1;
        do
        {
          v603 += __rev16(*(v603 + 1));
          *(v31 + 80) = v603;
        }

        while (*v603 == 65);
        *&v756 = 0;
        v604 = pcre_getMem(a1, 15, &v756);
        v100 = v756;
        v101 = v760;
        a3 = v749;
        a5 = v750;
        if (!v756 || v604 < 0)
        {
          goto LABEL_1202;
        }

        v102 = 0;
        v103 = *(v760 + 8);
        *(v756 + 8) = v103;
        v199 = *(v101 + 80);
        goto LABEL_295;
      case 0x50u:
        goto LABEL_942;
      default:
        v760 = *v31;
        pcre_freeMem(a1, &v761);
        v572 = v760;
        v11 = 4294967291;
        if (!v760)
        {
          return v11;
        }

        goto LABEL_991;
    }
  }
}

void std::vector<std::array<unsigned long,4ul>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 5;
    v8 = v7 + 1;
    if ((v7 + 1) >> 59)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 4 > v8)
    {
      v8 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::array<unsigned long,4ul>>>(v10);
    }

    v11 = (32 * v7);
    v12 = a2[1];
    *v11 = *a2;
    v11[1] = v12;
    v6 = 32 * v7 + 32;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy(v11 - v13, *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
  }

  *(a1 + 8) = v6;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::array<unsigned long,4ul>>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void _Gryphon_ReportSubstitution(int a1, void *a2, char *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a1;
  std::string::basic_string[abi:ne200100](__p, a2, a1);
  Censor::global_plaintext(&v14, __p);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
  }

  v6 = Diagnostics_GetLogObject(void)::__profile_log_default;
  if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = &v14;
    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v8 = v14.__r_.__value_.__r.__words[0];
    }

    *__p = 136315394;
    *&__p[4] = v8;
    *&__p[12] = 2080;
    *&__p[14] = a3;
  }

  v9 = &v14;
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v9 = v14.__r_.__value_.__r.__words[0];
  }

  std::string::basic_string[abi:ne200100](&__dst, a2, v5);
  std::string::basic_string[abi:ne200100]<0>(&v10, a3);
  *__p = __dst;
  *&__p[16] = v13;
  *v16 = v10;
  v17 = v11;
  if (GryphonDebugging::latest_pool_ptr)
  {
    SharedObjectPool::get_if<TTSSynthesizerEventBusInternal>(&__dst, GryphonDebugging::latest_pool_ptr);
    if (__dst)
    {
      Observable::emit(__dst, "tts.feature.replacement", __p);
    }

    if (*(&__dst + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&__dst + 1));
    }
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_1C3005274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, std::__shared_weak_count *a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  std::pair<std::string,std::string>::~pair(&a27);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::string::basic_string[abi:ne200100](void *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(__dst + 23) = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  *(__dst + __len) = 0;
  return __dst;
}

uint64_t *FastRewriter::apply_offsets_update(uint64_t *result, unsigned int **a2)
{
  v2 = a2[1];
  v3 = *a2;
  if (*a2 != v2)
  {
    v4 = *result;
    v5 = (result[1] - *result) >> 5;
    do
    {
      v6 = *v3;
      if ((v6 & 0x80000000) == 0 && v5 > v6)
      {
        v7 = (v4 + 32 * v6);
        v8 = *(v3 + 1);
        v9 = vaddw_high_s32(v7[1], v8);
        *v7 = vaddw_s32(*v7, *v8.i8);
        v7[1] = v9;
        v10 = v8.i32[3] - (v8.i32[2] + v8.i32[1]) + v8.i32[0];
        v11 = v5 - 1 == v6 || v10 == 0;
        v12 = (v6 + 1);
        if (!v11 && v5 > v12)
        {
          v14 = v6 + 1;
          v15 = vdupq_n_s64(v10);
          do
          {
            *(v4 + 32 * v12 + 16) = vaddq_s64(*(v4 + 32 * v12 + 16), v15);
            v12 = ++v14;
          }

          while (v5 > v14);
        }
      }

      v3 += 5;
    }

    while (v3 != v2);
  }

  return result;
}

void FastRewriter::apply_replace_update(unsigned int **a1, unint64_t **a2, void *a3, int **a4)
{
  v4 = *a1;
  v52 = a1[1];
  if (*a1 == v52)
  {
    return;
  }

  v5 = a4;
  v7 = a2;
  do
  {
    v8 = *v7;
    v9 = **v7;
    if ((*v7)[1] == v9)
    {
      goto LABEL_55;
    }

    v10 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      if (v10)
      {
        if (v12 >= (a3[1] - *a3) >> 5)
        {
          goto LABEL_62;
        }

        *(*a3 + 32 * v12 + 16) = vaddq_s64(*(*a3 + 32 * v12 + 16), vdupq_n_s64(v11));
LABEL_8:
        v10 = 1;
        goto LABEL_14;
      }

      if (*v4 < *(v9 + 80 * v12))
      {
        if (v12)
        {
          if (v12 - 1 >= (a3[1] - *a3) >> 5)
          {
LABEL_62:
            std::vector<int>::__throw_out_of_range[abi:ne200100]();
          }

          v13 = *(*a3 + 32 * (v12 - 1) + 24) - *(*a3 + 32 * (v12 - 1) + 8);
        }

        else
        {
          v13 = 0;
        }

        std::vector<FRReplaceInst>::insert(v8, v9 + 80 * v12, v4);
        v14 = *(v4 + 31);
        if (v14 < 0)
        {
          v14 = *(v4 + 2);
        }

        v15 = *a3;
        v16 = *v4;
        v17 = *(v4 + 55);
        if (v17 < 0)
        {
          v17 = *(v4 + 5);
        }

        v18 = v14 + v16;
        v19 = (v16 + v13);
        v20 = v17 + v19;
        v21 = &v15[32 * v12];
        v22 = a3[1];
        v23 = a3[2];
        if (v22 >= v23)
        {
          v26 = ((v22 - v15) >> 5) + 1;
          if (v26 >> 59)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v27 = v23 - v15;
          if (v27 >> 4 > v26)
          {
            v26 = v27 >> 4;
          }

          if (v27 >= 0x7FFFFFFFFFFFFFE0)
          {
            v28 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v28 = v26;
          }

          if (v28)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::array<unsigned long,4ul>>>(v28);
          }

          v29 = (32 * v12);
          v30 = 32 * v12;
          if (!v12)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::array<unsigned long,4ul>>>(1uLL);
          }

          v32 = &v15[32 * v12];
          *v29 = v16;
          *(32 * v12 + 8) = v18;
          *(32 * v12 + 0x10) = v19;
          *(32 * v12 + 0x18) = v20;
          v33 = v30 + 32;
          memcpy((v30 + 32), v21, a3[1] - v32);
          v34 = *a3;
          v55 = (v33 + a3[1] - v32);
          a3[1] = v21;
          v35 = v29 - (v32 - v34);
          memcpy(v35, v34, v32 - v34);
          v36 = *a3;
          *a3 = v35;
          *(a3 + 1) = v55;
          v7 = a2;
          v5 = a4;
          if (v36)
          {
            operator delete(v36);
          }
        }

        else if (v21 == v22)
        {
          *v22 = v16;
          v22[1] = v18;
          v22[2] = v19;
          v22[3] = v20;
          a3[1] = v22 + 4;
        }

        else
        {
          if (v22 < 0x20)
          {
            v24 = a3[1];
          }

          else
          {
            v24 = v22 + 4;
            v25 = *(v22 - 1);
            *v22 = *(v22 - 2);
            *(v22 + 1) = v25;
          }

          a3[1] = v24;
          if (v22 != v21 + 4)
          {
            v31 = v20;
            memmove(v21 + 4, v21, v22 - (v21 + 4));
            v20 = v31;
          }

          *v21 = v16;
          v21[1] = v18;
          v21[2] = v19;
          v21[3] = v20;
          v5 = a4;
        }

        v37 = *(v4 + 55);
        if (v37 < 0)
        {
          v37 = *(v4 + 5);
        }

        v38 = *(v4 + 31);
        if (v38 < 0)
        {
          v38 = *(v4 + 2);
        }

        v11 = v37 - v38;
        v39 = *v5;
        v40 = v5[1];
        while (v39 != v40)
        {
          v41 = *v39;
          if (*v39 >= 0)
          {
            v42 = v41;
          }

          else
          {
            v42 = -v41;
          }

          if (v12 <= v42)
          {
            *v39 = ((v41 >> 31) | 1) + v41;
          }

          v39 += 5;
        }

        goto LABEL_8;
      }

      v10 = 0;
LABEL_14:
      ++v12;
      v8 = *v7;
      v9 = **v7;
    }

    while (v12 < 0xCCCCCCCCCCCCCCCDLL * (((*v7)[1] - v9) >> 4));
    if ((v10 & 1) == 0)
    {
LABEL_55:
      std::vector<FRReplaceInst>::push_back[abi:ne200100](v8, v4);
      v43 = a3[1];
      v44 = *(v43 - 8);
      v45 = *(v43 - 24);
      v46 = *v4;
      *&v56 = v46;
      v47 = *(v4 + 31);
      if (v47 < 0)
      {
        v47 = *(v4 + 2);
      }

      v48 = v44 - v45;
      v49 = v47 + v46;
      v50 = (v46 + v48);
      *(&v56 + 1) = v49;
      v57 = v50;
      v51 = *(v4 + 55);
      if (v51 < 0)
      {
        v51 = *(v4 + 5);
      }

      v58 = v51 + v50;
      std::vector<std::array<unsigned long,4ul>>::push_back[abi:ne200100](a3, &v56);
    }

    v4 += 20;
  }

  while (v4 != v52);
}

void sub_1C300586C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator_traits<std::allocator<FRReplaceInst>>::destroy[abi:ne200100]<FRReplaceInst,0>(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

uint64_t WaveformChangeModule::set_volume_from_markers(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  if (a2 != a3)
  {
    while (*a2 != 1)
    {
      if (*a2 == 6)
      {
        *(result + 276) = *(result + 272);
        v3 = a2[1] / 100.0;
LABEL_6:
        *(result + 272) = v3;
      }

      a2 += 14;
      if (a2 == a3)
      {
        return result;
      }
    }

    *(result + 276) = *(result + 272);
    v3 = *(result + 284);
    goto LABEL_6;
  }

  return result;
}

void kaldi::KaldiAssertFailure_(kaldi *this, char *a2, const char *a3, const char *a4, const char *a5)
{
  v9 = fst::cerr(this);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "KALDI_ASSERT: at ", 17);
  if (kaldi::g_program_name)
  {
    v11 = kaldi::g_program_name;
  }

  else
  {
    v11 = "";
  }

  v12 = strlen(v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v11, v12);
  v14 = strlen(this);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, this, v14);
  v30.__r_.__value_.__s.__data_[0] = 58;
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, &v30, 1);
  v17 = strrchr(a2, 47);
  if (v17)
  {
    do
    {
      v18 = v17;
      if (v17 <= a2)
      {
        break;
      }

      --v17;
    }

    while (*(v18 - 1) != 47);
  }

  else
  {
    v18 = a2;
  }

  v19 = strlen(v18);
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v18, v19);
  v30.__r_.__value_.__s.__data_[0] = 58;
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, &v30, 1);
  v22 = MEMORY[0x1C692A960](v21, a3);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ", failed: ", 10);
  v24 = strlen(a4);
  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, a4, v24);
  v30.__r_.__value_.__s.__data_[0] = 10;
  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, &v30, 1);
  v27 = fst::cerr(v26);
  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Stack trace is:\n", 16);
  kaldi::KaldiGetStackTrace(&v30);
  std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v28, &v30);
  std::string::~string(&v30);
  fst::cerr(v29);
  std::ostream::flush();
  abort();
}

void sub_1C3005AE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void NeuralPromptModule::process_prosodic_markers(NeuralPromptModule *this, const PhoneFeature *a2, const PhoneFeature *a3)
{
  if (a2 != a3)
  {
    v15[2] = v6;
    v15[3] = v5;
    v15[8] = v3;
    v15[9] = v4;
    v8 = a2;
    v10 = vdup_n_s32(0x42C80000u);
    do
    {
      v11 = *v8;
      if (*v8 > 4)
      {
        if (v11 == 5)
        {
          *(this + 84) = v8[1];
        }

        else if (v11 == 6)
        {
          *(this + 86) = v8[1];
        }
      }

      else if (v11 == 1)
      {
        SharedObjectPool::get<SynthesizerConfig>(v15, *(this + 21));
        v13 = v15[0];
        v12 = v15[1];
        v14.i32[0] = *(v15[0] + 4);
        v14.i32[1] = *(v15[0] + 12);
        *(this + 42) = vmul_f32(v14, v10);
        *(this + 86) = *(v13 + 8) * 100.0;
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }
      }

      else if (v11 == 4)
      {
        *(this + 85) = v8[1];
      }

      v8 += 14;
    }

    while (v8 != a3);
  }
}

uint64_t NeuralThermalFallbackConnection::should_consume_data(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  {
    v5 = *(*v4 + 8);
    v6 = *(*v4 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v5 && (*v5 & 1) == 0)
    {
      v7 = *(a1 + 84);
      if (!v6)
      {
        return v7 & 1;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v6 = 0;
  }

  should_fallback = NeuralThermalFallbackConnection::should_fallback(a1);
  *(a1 + 84) = should_fallback;
  if (!should_fallback)
  {
    v7 = 0;
    if (!v6)
    {
      return v7 & 1;
    }

LABEL_21:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    return v7 & 1;
  }

  if (Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
  }

  v9 = Diagnostics_GetLogObject(void)::__profile_log_default;
  if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_1C2F95000, v9, OS_LOG_TYPE_DEFAULT, "Natural/Neural fallback pipeline will be used due to thermal condition.", &v12, 2u);
  }

  Diagnostics::log(5, "Natural/Neural fallback pipeline will be used due to thermal condition.", v10);
  v14 = 5;
  SharedObjectPool::get_if<TTSSynthesizerEventBusInternal>(&v12, *(a1 + 56));
  if (v12)
  {
    Observable::emit(v12, TTSSynthesizerEvent::NeuralSynthesisFallback, &v14);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v7 = 1;
  if (v6)
  {
    goto LABEL_21;
  }

  return v7 & 1;
}

void sub_1C3005D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void HydraAdapterModule::process_data(uint64_t *a1, uint64_t *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  {
    v7 = *(*v5 + 8);
    v6 = *(*v5 + 16);
    v15 = v7;
    v16 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    if (*(v7 + 119) < 0)
    {
      std::string::__init_copy_ctor_external(&v14, *(v7 + 96), *(v7 + 104));
    }

    else
    {
      v14 = *(v7 + 96);
    }

    v9 = *a2;
    {
      v11 = *(*v10 + 8);
      v12 = *(*v10 + 16);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::operator=(&v14, v11);
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }
    }

    SharedObjectPool::get<TrackSubstitutions>(&v13, a1[21]);
    TrackSubstitutions::reset_text(v13, &v14);
  }

  v8 = a2[1];
  v17 = v4;
  v18 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 72))(a1, &v17);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }
}

void sub_1C30070A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, uint64_t a33)
{
  if (*(v34 - 169) < 0)
  {
    operator delete(*(v34 - 192));
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (*(v34 - 201) < 0)
  {
    operator delete(*(v34 - 224));
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a31);
  }

  _Unwind_Resume(exception_object);
}

void SharedObjectPool::get<TrackSubstitutions>(void *a1, uint64_t a2)
{
  std::recursive_mutex::lock((a2 + 56));
  {
    operator new();
  }

  v5 = *(*v4 + 16);
  *a1 = *(*v4 + 8);
  a1[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::recursive_mutex::unlock((a2 + 56));
}

void TrackSubstitutions::reset_text(void *a1, uint64_t a2)
{
  v3 = a1 + 1;
  std::__tree<std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>>>::destroy(a1[1]);
  *a1 = v3;
  a1[2] = 0;
  *v3 = 0;
  operator new();
}

void *std::__tree<TrackSubstitutions::Chunk>::__find_equal<TrackSubstitutions::Chunk>(uint64_t a1, void *a2, unint64_t a3, unint64_t a4)
{
  v6 = *(a1 + 8);
  result = (a1 + 8);
  v5 = v6;
  if (v6)
  {
    do
    {
      while (1)
      {
        v7 = v5;
        v8 = v5[4];
        if (v8 <= a3 && (v8 != a3 || v7[5] <= a4))
        {
          break;
        }

        v5 = *v7;
        result = v7;
        if (!*v7)
        {
          goto LABEL_12;
        }
      }

      if (v8 >= a3 && v7[5] >= a4)
      {
        break;
      }

      result = v7 + 1;
      v5 = v7[1];
    }

    while (v5);
  }

  else
  {
    v7 = result;
  }

LABEL_12:
  *a2 = v7;
  return result;
}

void SoundStormP2ABaseInference::get_outputs(void *a1, void *a2)
{
  v4 = a1[1];
  std::string::basic_string[abi:ne200100]<0>(__p, "target");
  (*(*v4 + 32))(&v16, v4, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  InferenceEngine::DataTensor::get_3d_array<float>(v16, v10);
  v12 = 0;
  v13 = 0;
  v11 = 0;
  std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(&v11, *v10[0], v10[0][1], 0xAAAAAAAAAAAAAAABLL * ((v10[0][1] - *v10[0]) >> 3));
  v18 = v10;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v5 = *a2;
  v6 = (*a2 + 8);
  if (v6 != &v11)
  {
    std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v6, v11, v12, 0xAAAAAAAAAAAAAAABLL * (v12 - v11));
    v5 = *a2;
  }

  v7 = a2[1];
  v8 = v5;
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 40))(a1, &v8);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10[0] = &v11;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](v10);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }
}

void sub_1C3007838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  a11 = &a14;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a11);
  v24 = *(v22 - 48);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

const void **InferenceEngine::BaseInferenceController::get_output@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v7 = a2;
  result = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 24), a2, &std::piecewise_construct, &v7, &v6);
  v5 = result[6];
  *a3 = result[5];
  a3[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<SoundStormStreamingModule::process_data(std::shared_ptr<Agglomerate>)::$_0,std::allocator<SoundStormStreamingModule::process_data(std::shared_ptr<Agglomerate>)::$_0>,int ()(std::shared_ptr<AcousticFeature>,BOOL)>::operator()(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v10 = v3;
  if (*(*(a1 + 8) + 160) == 1)
  {
    if (Diagnostics_GetLogObject(void)::onceToken != -1)
    {
      dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
    }

    v5 = Diagnostics_GetLogObject(void)::__profile_log_default;
    if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C2F95000, v5, OS_LOG_TYPE_DEFAULT, "SoundStorm streaming inference cancelled.", buf, 2u);
    }

    Diagnostics::log(5, "SoundStorm streaming inference cancelled.", v6);
    v7 = 1;
    if (v4)
    {
LABEL_7:
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  else
  {
    if ((*a3 & 1) == 0)
    {
      v9 = **(a1 + 16);
      if (v9)
      {
        *buf = 2;
        Observable::emit(v9, TTSSynthesizerEvent::SynthesisQualityIssue, buf);
      }
    }

    if (*(v10 + 16) != *(v10 + 8))
    {
      operator new();
    }

    v7 = 0;
    if (v4)
    {
      goto LABEL_7;
    }
  }

  return v7;
}

void sub_1C30081EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  _Unwind_Resume(exception_object);
}

void Agglomerate::set<std::shared_ptr<AcousticFeature>>(uint64_t **a1, uint64_t *a2)
{
  v7 = &v10;
  if (!v3)
  {
    operator new();
  }

  v4 = *a2;
  v5 = a2[1];
  v7 = &unk_1F42F30C0;
  v8 = v4;
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = v8;
    v5 = v9;
  }

  v8 = 0;
  v9 = 0;
  v6 = *(v3 + 16);
  *(v3 + 8) = v4;
  *(v3 + 16) = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    v7 = &unk_1F42F30C0;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

__n128 std::accumulate[abi:ne200100]<std::__wrap_iter<int const*>,std::string,std::string UTFString::join<std::string,int>(std::vector<int> const&,std::string const&)::{lambda(std::string,int)#1}>(uint64_t a1, int *a2, int *a3, uint64_t a4, const void **a5)
{
  if (a2 != a3)
  {
    v9 = a2;
    while (1)
    {
      if (*(a4 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
      }

      else
      {
        __p = *a4;
      }

      std::to_string(&v19, *v9);
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        break;
      }

      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v17, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
LABEL_20:
        if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v19.__r_.__value_.__l.__data_);
        }

        goto LABEL_22;
      }

      v17 = v19;
LABEL_22:
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      *a4 = v17;
      *(&v17.__r_.__value_.__s + 23) = 0;
      v17.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (++v9 == a3)
      {
        goto LABEL_27;
      }
    }

    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p.__r_.__value_.__l.__data_, a5, &v18);
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v19;
    }

    else
    {
      v11 = v19.__r_.__value_.__r.__words[0];
    }

    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = HIBYTE(v19.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v12 = v19.__r_.__value_.__l.__size_;
    }

    v13 = std::string::append(&v18, v11, v12);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    goto LABEL_20;
  }

LABEL_27:
  result = *a4;
  *a1 = *a4;
  *(a1 + 16) = *(a4 + 16);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  return result;
}

void sub_1C30085E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (*(v25 - 49) < 0)
  {
    operator delete(*(v25 - 72));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = std::string::basic_string[abi:ne200100](a3, v6 + v5);
  if (result[23] >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

void std::__tree<std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void PhonemeEncodingLegacy::silence(uint64_t **this@<X0>, uint64_t *a2@<X8>)
{
  PhonemeEncodingImpl::start_phoneme_representation(this);
  MEMORY[0x1C692A640](this + 1, "sil");
  PhonemeEncodingImpl::start_word(this);
  memset(v5, 0, sizeof(v5));
  std::vector<PhonemeRepresentation::Word>::__init_with_size[abi:ne200100]<PhonemeRepresentation::Word*,PhonemeRepresentation::Word*>(v5, this[15], this[16], 0xAAAAAAAAAAAAAAABLL * (this[16] - this[15]));
  v4 = v5[0];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  std::vector<PhonemeRepresentation::Syllable>::__init_with_size[abi:ne200100]<PhonemeRepresentation::Syllable*,PhonemeRepresentation::Syllable*>(a2, *v4, v4[1], (v4[1] - *v4) >> 6);
  v6 = v5;
  std::vector<PhonemeRepresentation::Word>::__destroy_vector::operator()[abi:ne200100](&v6);
}

void sub_1C30087EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  a12 = &a9;
  std::vector<PhonemeRepresentation::Word>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PhonemeRepresentation::Syllable>>(unint64_t a1)
{
  if (!(a1 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<PhonemeRepresentation::Syllable>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 64;
        std::allocator<PhonemeRepresentation::Syllable>::destroy[abi:ne200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<PhonemeRepresentation::Phoneme>,PhonemeRepresentation::Phoneme*,PhonemeRepresentation::Phoneme*,PhonemeRepresentation::Phoneme*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<PhonemeRepresentation::Phoneme>,PhonemeRepresentation::Phoneme*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

void std::vector<PhonemeRepresentation::Phoneme>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PhonemeRepresentation::Phoneme>>(a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<PhonemeRepresentation::Syllable>,PhonemeRepresentation::Syllable*,PhonemeRepresentation::Syllable*,PhonemeRepresentation::Syllable*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a4;
  }

  v5 = (a2 + 40);
  v6 = a4;
  do
  {
    v8 = v5 - 40;
    v7 = *(v5 - 5);
    *(v6 + 8) = *(v5 - 8);
    *v6 = v7;
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
    std::vector<PhonemeRepresentation::Phoneme>::__init_with_size[abi:ne200100]<PhonemeRepresentation::Phoneme*,PhonemeRepresentation::Phoneme*>((v6 + 16), *(v5 - 3), *(v5 - 2), 0xAAAAAAAAAAAAAAABLL * ((*(v5 - 2) - *(v5 - 3)) >> 3));
    if (*(v5 + 23) < 0)
    {
      std::string::__init_copy_ctor_external((v6 + 40), *v5, *(v5 + 1));
    }

    else
    {
      v9 = *v5;
      *(v6 + 56) = *(v5 + 2);
      *(v6 + 40) = v9;
    }

    v6 += 64;
    v5 += 4;
  }

  while (v8 + 64 != a3);
  return v6;
}

void sub_1C3008AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  while (v4 != v3)
  {
    v4 -= 64;
    std::allocator<PhonemeRepresentation::Syllable>::destroy[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

uint64_t SoundStormInference::check_outputs(uint64_t a1, uint64_t *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "vq_mask_id");
  parameter_value = InferenceEngine::MilInferenceModel::get_parameter_value_if<int>(*(v5 + 8), __p, 1024);
  v7 = *(v4 + 8);
  v8 = *(v4 + 16);
  if (v7 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    do
    {
      for (i = *v7; i != v7[1]; ++i)
      {
        v11 = *i;
        if (v11 == parameter_value)
        {
          v9 = (v9 + 1);
        }

        else
        {
          v9 = v9;
        }
      }

      v7 += 3;
    }

    while (v7 != v8);
  }

  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 1)
  {
    v18 = *(*a2 + 8);
    for (j = *(*a2 + 16); v18 != j; v18 += 3)
    {
        ;
      }
    }

    return 1;
  }

  else
  {
    if (Diagnostics_GetLogObject(void)::onceToken != -1)
    {
      dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
    }

    v12 = Diagnostics_GetLogObject(void)::__profile_log_default;
    if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 8);
      std::string::basic_string[abi:ne200100]<0>(__p, "vq_mask_id");
      v14 = InferenceEngine::MilInferenceModel::get_parameter_value_if<int>(*(v13 + 8), __p, 1024);
      *buf = 67109376;
      v23 = v9;
      v24 = 1024;
      v25 = v14;
      _os_log_impl(&dword_1C2F95000, v12, OS_LOG_TYPE_ERROR, "Found %d appearances of invalid value %d", buf, 0xEu);
      if (v27 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v15 = *(a1 + 8);
    std::string::basic_string[abi:ne200100]<0>(__p, "vq_mask_id");
    v16 = InferenceEngine::MilInferenceModel::get_parameter_value_if<int>(*(v15 + 8), __p, 1024);
    Diagnostics::log(3, "Found %d appearances of invalid value %d", v17, v9, v16);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }
}

void sub_1C3008DB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t InferenceEngine::MilInferenceModel::get_parameter_value_if<int>(uint64_t a1, const void **a2, uint64_t a3)
{
  v4 = (a1 + 48);
  if (*(a1 + 48) == 1 && *(a1 + 56) + 8 != std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>(*(a1 + 56), a2))
  {
    v6 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v4, a2);
    v8 = 0;
    nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v6, &v8);
    return v8;
  }

  return a3;
}

void std::vector<Prompt>::__vdeallocate(char **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 72;
        std::allocator<Prompt>::destroy[abi:ne200100](v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<WordFeature>::__vdeallocate(char **a1)
{
  v1 = *a1;
  if (*a1)
  {
    for (i = a1[1]; i != v1; std::allocator_traits<std::allocator<WordFeature>>::destroy[abi:ne200100]<WordFeature,0>(i))
    {
      i -= 136;
    }

    a1[1] = v1;
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<PhonemeRepresentation::Syllable>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PhonemeRepresentation::Syllable>>(a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void *std::vector<PhonemeRepresentation::Word>::push_back[abi:ne200100](void *result, uint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3);
    v7 = v6 + 1;
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18 = v2;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PhonemeRepresentation::Word>>(v9);
    }

    v10 = 24 * v6;
    *(&v17 + 1) = 0;
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *v10 = *a2;
    *(v10 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *&v17 = 24 * v6 + 24;
    v11 = v2[1];
    v12 = (24 * v6 + *v2 - v11);
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PhonemeRepresentation::Word>,PhonemeRepresentation::Word*>(v2, *v2, v11, v12);
    v13 = *v2;
    *v2 = v12;
    v14 = v2[2];
    v15 = v17;
    *(v2 + 1) = v17;
    *&v17 = v13;
    *(&v17 + 1) = v14;
    v16[0] = v13;
    v16[1] = v13;
    result = std::__split_buffer<PhonemeRepresentation::Word>::~__split_buffer(v16);
    v5 = v15;
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = *a2;
    v3[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = v3 + 3;
  }

  v2[1] = v5;
  return result;
}

void std::allocator<PhonemeRepresentation::Syllable>::destroy[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = (a1 + 16);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void std::vector<PhonemeRepresentation::Word>::__destroy_vector::operator()[abi:ne200100](void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        std::vector<PhonemeRepresentation::Syllable>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *std::vector<PhonemeRepresentation::Syllable>::__init_with_size[abi:ne200100]<PhonemeRepresentation::Syllable*,PhonemeRepresentation::Syllable*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<PhonemeRepresentation::Syllable>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C3009204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<PhonemeRepresentation::Syllable>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::string *std::vector<PhonemeRepresentation::Phoneme>::__init_with_size[abi:ne200100]<PhonemeRepresentation::Phoneme*,PhonemeRepresentation::Phoneme*>(std::string *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<PhonemeRepresentation::Phoneme>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C300928C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PhonemeRepresentation::Phoneme>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<PhonemeRepresentation::Word>,PhonemeRepresentation::Word*,PhonemeRepresentation::Word*,PhonemeRepresentation::Word*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a4;
  v8 = a4;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<PhonemeRepresentation::Syllable>::__init_with_size[abi:ne200100]<PhonemeRepresentation::Syllable*,PhonemeRepresentation::Syllable*>(v4, *v6, v6[1], (v6[1] - *v6) >> 6);
      v6 += 3;
      v4 = v8 + 3;
      v8 += 3;
    }

    while (v6 != a3);
  }

  return v4;
}

uint64_t *std::vector<PhonemeRepresentation::Word>::__init_with_size[abi:ne200100]<PhonemeRepresentation::Word*,PhonemeRepresentation::Word*>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<PhonemeRepresentation::Word>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C300940C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<PhonemeRepresentation::Word>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void PhonemeEncodingImpl::start_syllable(PhonemeEncodingImpl *this)
{
  PhonemeEncodingImpl::start_phoneme(this);
  v2 = (this + 48);
  if (*(this + 6) != *(this + 7))
  {
    v3 = (this + 32);
    v4 = *(this + 13);
    v5 = *(this + 14);
    if (v4 >= v5)
    {
      v9 = *(this + 12);
      v10 = (v4 - v9) >> 6;
      v11 = v10 + 1;
      if ((v10 + 1) >> 58)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v12 = v5 - v9;
      if (v12 >> 5 > v11)
      {
        v11 = v12 >> 5;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFC0)
      {
        v13 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      v25 = this + 96;
      if (v13)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<PhonemeRepresentation::Syllable>>(v13);
      }

      v14 = v10 << 6;
      *(&v24 + 1) = 0;
      v15 = *v3;
      *(v14 + 8) = *(this + 10);
      *v14 = v15;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0;
      *(v14 + 16) = 0;
      *(v14 + 16) = *(this + 3);
      *(v14 + 32) = *(this + 8);
      *v2 = 0;
      *(this + 7) = 0;
      *(this + 8) = 0;
      v16 = *(this + 72);
      *(v14 + 56) = *(this + 11);
      *(v14 + 40) = v16;
      *(this + 10) = 0;
      *(this + 11) = 0;
      *(this + 9) = 0;
      *&v24 = (v10 << 6) + 64;
      v17 = *(this + 12);
      v18 = *(this + 13);
      v19 = (v10 << 6) + v17 - v18;
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PhonemeRepresentation::Syllable>,PhonemeRepresentation::Syllable*>(this + 96, v17, v18, v19);
      v20 = *(this + 12);
      *(this + 12) = v19;
      v21 = *(this + 14);
      v22 = v24;
      *(this + 104) = v24;
      *&v24 = v20;
      *(&v24 + 1) = v21;
      v23[0] = v20;
      v23[1] = v20;
      std::__split_buffer<PhonemeRepresentation::Syllable>::~__split_buffer(v23);
      v8 = v22;
    }

    else
    {
      v6 = *v3;
      *(v4 + 8) = *(this + 10);
      *v4 = v6;
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
      *(v4 + 16) = 0;
      *(v4 + 16) = *(this + 3);
      *(v4 + 32) = *(this + 8);
      *v2 = 0;
      *(this + 7) = 0;
      *(this + 8) = 0;
      v7 = *(this + 72);
      *(v4 + 56) = *(this + 11);
      *(v4 + 40) = v7;
      *(this + 10) = 0;
      *(this + 11) = 0;
      *(this + 9) = 0;
      v8 = v4 + 64;
    }

    *(this + 13) = v8;
    std::vector<std::string>::clear[abi:ne200100](this + 6);
  }

  *(this + 4) = 0;
  *(this + 10) = 0;
}

uint64_t PhonemeEncodingImpl::start_phoneme(uint64_t this)
{
  v1 = this;
  v26 = *MEMORY[0x1E69E9840];
  if ((*(this + 31) & 0x8000000000000000) != 0)
  {
    if (!*(this + 16))
    {
      return this;
    }
  }

  else if (!*(this + 31))
  {
    return this;
  }

  v2 = (this + 8);
  if (*(this + 216) != 1 || (this = std::__tree<std::string>::__count_unique<std::string>(this + 144, (this + 8))) != 0 || (this = std::__tree<std::string>::__count_unique<std::string>(v1 + 168, (v1 + 8))) != 0 || (this = std::__tree<std::string>::__count_unique<std::string>(v1 + 192, (v1 + 8))) != 0)
  {
    v3 = *(v1 + 56);
    v4 = *(v1 + 64);
    if (v3 >= v4)
    {
      v7 = *(v1 + 48);
      v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v7) >> 3);
      v9 = v8 + 1;
      if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 3);
      if (2 * v10 > v9)
      {
        v9 = 2 * v10;
      }

      if (v10 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v9;
      }

      v25 = v1 + 48;
      if (v11)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<PhonemeRepresentation::Phoneme>>(v11);
      }

      v12 = 24 * v8;
      *(&v24 + 1) = 0;
      v13 = *v2;
      *(v12 + 16) = *(v1 + 24);
      *v12 = v13;
      *(v1 + 16) = 0;
      *(v1 + 24) = 0;
      *v2 = 0;
      *&v24 = 24 * v8 + 24;
      v14 = *(v1 + 48);
      v15 = *(v1 + 56);
      v16 = 24 * v8 + v14 - v15;
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PhonemeRepresentation::Phoneme>,PhonemeRepresentation::Phoneme*>(v1 + 48, v14, v15, v16);
      v17 = *(v1 + 48);
      *(v1 + 48) = v16;
      v18 = *(v1 + 64);
      v22 = v24;
      *(v1 + 56) = v24;
      *&v24 = v17;
      *(&v24 + 1) = v18;
      *&buf = v17;
      *(&buf + 1) = v17;
      this = std::__split_buffer<PhonemeRepresentation::Phoneme>::~__split_buffer(&buf);
      v6 = v22;
    }

    else
    {
      v5 = *v2;
      *(v3 + 16) = *(v1 + 24);
      *v3 = v5;
      *(v1 + 16) = 0;
      *(v1 + 24) = 0;
      *v2 = 0;
      v6 = v3 + 24;
    }

    *(v1 + 56) = v6;
  }

  else
  {
    if (Diagnostics_GetLogObject(void)::onceToken != -1)
    {
      dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
    }

    v19 = Diagnostics_GetLogObject(void)::__profile_log_default;
    if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_ERROR))
    {
      v21 = v1 + 8;
      if (*(v1 + 31) < 0)
      {
        v21 = *v2;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v21;
    }

    if (*(v1 + 31) < 0)
    {
      v2 = *v2;
    }
  }

  if (*(v1 + 31) < 0)
  {
    **(v1 + 8) = 0;
    *(v1 + 16) = 0;
  }

  else
  {
    *(v1 + 8) = 0;
    *(v1 + 31) = 0;
  }

  return this;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PhonemeRepresentation::Phoneme>,PhonemeRepresentation::Phoneme*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      a4 += 24;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v6 = (v6 + 24);
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    do
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 = (v5 + 24);
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<PhonemeRepresentation::Phoneme>,PhonemeRepresentation::Phoneme*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

void PhonemeEncodingImpl::start_word(PhonemeEncodingImpl *this)
{
  PhonemeEncodingImpl::start_syllable(this);
  if (*(this + 12) != *(this + 13))
  {
    std::vector<PhonemeRepresentation::Word>::push_back[abi:ne200100](this + 15, this + 96);
    v3 = *(this + 12);
    for (i = *(this + 13); i != v3; std::allocator<PhonemeRepresentation::Syllable>::destroy[abi:ne200100](i))
    {
      i -= 64;
    }

    *(this + 13) = v3;
  }
}

void PhonemeEncodingImpl::start_phoneme_representation(PhonemeEncodingImpl *this)
{
  v2 = *(this + 15);
  v3 = *(this + 16);
  while (v3 != v2)
  {
    v3 -= 3;
    v4 = v3;
    std::vector<PhonemeRepresentation::Syllable>::__destroy_vector::operator()[abi:ne200100](&v4);
  }

  *(this + 16) = v2;

  PhonemeEncodingImpl::start_word(this);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PhonemeRepresentation::Word>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<PhonemeRepresentation::Word>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v6 = v4;
    std::vector<PhonemeRepresentation::Syllable>::__destroy_vector::operator()[abi:ne200100](&v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PhonemeRepresentation::Word>,PhonemeRepresentation::Word*>(uint64_t a1, void **a2, void **a3, void *a4)
{
  if (a2 != a3)
  {
    v9[3] = v4;
    v9[4] = v5;
    v7 = a2;
    v8 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v8;
      a4[2] = v8[2];
      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
      v8 += 3;
      a4 += 3;
    }

    while (v8 != a3);
    do
    {
      v9[0] = v7;
      std::vector<PhonemeRepresentation::Syllable>::__destroy_vector::operator()[abi:ne200100](v9);
      v7 += 3;
    }

    while (v7 != a3);
  }
}

uint64_t std::__split_buffer<PhonemeRepresentation::Syllable>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
    std::allocator<PhonemeRepresentation::Syllable>::destroy[abi:ne200100](i - 64);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PhonemeRepresentation::Syllable>,PhonemeRepresentation::Syllable*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 8) = *(v6 + 8);
      *a4 = v7;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 16) = 0;
      *(a4 + 16) = *(v6 + 16);
      *(a4 + 32) = *(v6 + 32);
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      v8 = *(v6 + 40);
      *(a4 + 56) = *(v6 + 56);
      *(a4 + 40) = v8;
      *(v6 + 48) = 0;
      *(v6 + 56) = 0;
      *(v6 + 40) = 0;
      v6 += 64;
      a4 += 64;
    }

    while (v6 != a3);
    do
    {
      std::allocator<PhonemeRepresentation::Syllable>::destroy[abi:ne200100](v5);
      v5 += 64;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<PhonemeRepresentation::Phoneme>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<PhonemeRepresentation::Phoneme>,PhonemeRepresentation::Phoneme*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void NormalizeNNImpl::generate_tokens(NormalizeNNImpl *this)
{
  v14 = *MEMORY[0x1E69E9840];
  (*(*this + 64))(&v10);
  if (*v10 == v10[1])
  {
    *(this + 8) = 1;
  }

  else
  {
    kdebug_trace();
    v3 = *v10;
    v2 = v10[1];
    if (*v10 != v2)
    {
      do
      {
        if ((*(v3 + 23) & 0x8000000000000000) != 0)
        {
          if (*(v3 + 1))
          {
LABEL_5:
            (*(*this + 80))(&v8, this);
            if (*(v8 + 63) < 0)
            {
              std::string::__init_copy_ctor_external(&v7, *(v8 + 40), *(v8 + 48));
            }

            else
            {
              v7 = *(v8 + 40);
            }

            v4 = *(this + 27);
            if (!v4 || *(this + 27) + 8 != std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>(v4, &v7.__r_.__value_.__l.__data_))
            {
              if (*(v3 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(&__str, *v3, *(v3 + 1));
              }

              else
              {
                v5 = *v3;
                __str.__r_.__value_.__r.__words[2] = *(v3 + 2);
                *&__str.__r_.__value_.__l.__data_ = v5;
              }

              v13 = 0;
              memset(v12, 0, sizeof(v12));
              operator new();
            }

            (*(*this + 152))(this);
            if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v7.__r_.__value_.__l.__data_);
            }

            if (v9)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v9);
            }

            goto LABEL_20;
          }
        }

        else if (*(v3 + 23))
        {
          goto LABEL_5;
        }

        std::deque<std::shared_ptr<Agglomerate>>::push_back(this + 4, (*(v3 + 4) - 16));
LABEL_20:
        v3 += 3;
      }

      while (v3 != v2);
    }

    kdebug_trace();
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void sub_1C300ACBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, std::__shared_weak_count *a39, uint64_t a40, std::__shared_weak_count *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v59);
  if (a58 < 0)
  {
    operator delete(__p);
  }

  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  }

  v62 = *(v60 - 136);
  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }

  std::pair<std::string,std::shared_ptr<std::vector<FRReplaceInst>>>::~pair(&a26);
  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a39);
  }

  if (a41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a41);
  }

  _Unwind_Resume(a1);
}

void MatchPromptImpl::generate_tokens(MatchPromptImpl *this)
{
  v29 = *MEMORY[0x1E69E9840];
  if ((*(this + 8) & 1) == 0)
  {
    (*(**(this + 2) + 16))(&v15);
    if (v15)
    {
      if ((**(this + 16) || (*(**(this + 18) + 72))(*(this + 18))) && (**(this + 17) & 1) == 0)
      {
        v2 = v15;
        v4 = v2 + 8;
        if (v2 + 8 == v3)
        {
          v5 = 0;
        }

        else
        {
          v5 = *(v3 + 40) + 8;
        }

        if (*(this + 152) == 1 && (*(this + 153) & 1) == 0)
        {
          *(this + 153) = 1;
          v7 = *(*(v5 + 48) + 16);
          if (*(v7 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v24, *v7, *(v7 + 1));
          }

          else
          {
            v8 = *v7;
            v24.__r_.__value_.__r.__words[2] = *(v7 + 2);
            *&v24.__r_.__value_.__l.__data_ = v8;
          }

          std::string::basic_string[abi:ne200100]<0>(&v25, "");
          v27 = 0;
          v17[0] = 0;
          v18 = 0;
          v19 = 0;
          v20 = 0x7FFFFFFF;
          v22 = 0;
          v23 = 0;
          v21 = 0;
          if (MatchPromptImpl::match_generated_prompts(this, &v24, v17) & 1) != 0 || (MatchPromptImpl::match_prompts(this, &v24, v17))
          {
            MatchPromptImpl::log_prompt(v17, &v24);
            while (1)
            {
              (*(**(this + 2) + 16))(&__p);
              v9 = __p.__r_.__value_.__r.__words[0];
              if (__p.__r_.__value_.__r.__words[0])
              {
                (*(**(this + 2) + 32))(*(this + 2));
              }

              if (__p.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
              }

              if (!v9)
              {
                operator new();
              }
            }
          }

          if (Diagnostics_GetLogObject(void)::onceToken != -1)
          {
            dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
          }

          v10 = Diagnostics_GetLogObject(void)::__profile_log_default;
          if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEBUG))
          {
            Censor::global_plaintext(&__p, &v24);
            v11 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
            *buf = 136315138;
            *&buf[4] = v11;
            _os_log_impl(&dword_1C2F95000, v10, OS_LOG_TYPE_DEBUG, "No prompts for whole input: %s", buf, 0xCu);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          Censor::global_plaintext(&__p, &v24);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          Diagnostics::log(7, "No prompts for whole input: %s", v12, p_p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v23) < 0)
          {
            operator delete(v21);
          }

          if (v26 < 0)
          {
            operator delete(v25);
          }

          if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v24.__r_.__value_.__l.__data_);
          }
        }

        if (v4 == v6)
        {
          v14 = *(*(v5 + 48) + 16);
        }

        else
        {
          v14 = (v5 + 24);
        }

        if (*(this + 104) != 1 || (MatchPromptImpl::match_region(this, 1, v14) & 1) == 0)
        {
          MatchPromptImpl::match_region(this, 0, v14);
        }
      }

      else
      {
        std::deque<std::shared_ptr<Agglomerate>>::push_back(this + 4, &v15);
        (*(**(this + 2) + 32))(*(this + 2));
      }
    }

    else
    {
      *(this + 8) = 1;
      *(this + 153) = 0;
    }

    if (*(&v15 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v15 + 1));
    }
  }
}