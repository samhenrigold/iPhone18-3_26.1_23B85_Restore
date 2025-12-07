WTF *WGSL::parse<WGSL::Lexer<char16_t>>@<X0>(void *a1@<X0>, WTF::StringImpl *a2@<X1>, uint64_t a3@<X8>)
{
  v261 = 0;
  v260 = 0u;
  v259 = 0u;
  v5 = *a1;
  if (*a1)
  {
    v6 = *(v5 + 8);
    v7 = *(v5 + 4);
    *&v259 = v6;
    *(&v259 + 1) = v7;
    if (v7)
    {
      v8 = *v6;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v259 = 0uLL;
  }

  v258 = v8;
  *&v260 = 1;
  DWORD2(v260) = 0;
  v245 = a1;
  v246 = a1 + 38;
  v247 = &v258;
  WGSL::Lexer<char16_t>::lex(&v258, a2, &v248);
  v251 = 0;
  v252 = 0;
  if (!v250)
  {
    __break(0xC471u);
    JUMPOUT(0x22576BD80);
  }

  v253 = *v248;
  v254 = *(v248 + 4);
  v12 = *v248;
  if (*v248 <= 8u)
  {
    if (((1 << v12) & 0x38) != 0)
    {
      v255 = *(v248 + 3);
    }

    else if (((1 << v12) & 0xC4) != 0)
    {
      v255 = *(v248 + 3);
    }

    else if (v12 == 8)
    {
      v255 = 0;
      v192 = *(v248 + 3);
      if (v192)
      {
        atomic_fetch_add_explicit(v192, 2u, memory_order_relaxed);
        v193 = v255;
        v255 = v192;
        if (v193)
        {
          if (atomic_fetch_add_explicit(v193, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v193, v9);
          }
        }
      }
    }
  }

  v238 = a3;
  v256 = v254;
  v231 = DWORD2(v254);
  v257 = DWORD2(v254);
  v13 = v254;
  *v265 = 0u;
  *&v265[16] = v267;
  v266 = 16;
  v14 = 16;
  v15 = v250 - 1;
  if (v250 == 1)
  {
    v68 = 0;
    v67 = 0;
  }

  else
  {
    v3 = 0;
    v16 = 0;
    while (2)
    {
      v17 = v250;
      if (v16 >= v250)
      {
        __break(0xC471u);
        JUMPOUT(0x22576BD30);
      }

      v18 = v248;
      v19 = (v248 + 32 * v16);
      switch(*v19)
      {
        case 8:
        case 0x22:
          v28 = v16 + 1;
          if (v16 + 1 >= v250)
          {
            __break(0xC471u);
            JUMPOUT(0x22576BD60);
          }

          v29 = (v248 + 32 * v28);
          if (*v29 != 55)
          {
            goto LABEL_15;
          }

          v30 = *v265;
          v31 = *&v265[8];
          if (*v265)
          {
            v32 = v266;
            if (*&v265[8] + 1 != *v265)
            {
              v33 = v266;
              v34 = *&v265[8];
              goto LABEL_115;
            }
          }

          else
          {
            v33 = v266;
            if (*&v265[8])
            {
              v32 = v266;
              if (*&v265[8] != v266 - 1)
              {
                v34 = *&v265[8];
                goto LABEL_115;
              }
            }

            else
            {
              v32 = 0;
              v34 = 0;
              if (v266)
              {
                goto LABEL_115;
              }
            }
          }

          v43 = *&v265[16];
          v44 = v32 + (v32 >> 2);
          if (v44 < 0x10)
          {
            *&v265[16] = v267;
            LODWORD(v266) = 16;
            v47 = v267;
            v48 = 16;
            v49 = *&v265[8] - *v265;
            if (*&v265[8] >= *v265)
            {
              goto LABEL_88;
            }
          }

          else
          {
            if (v44 >= 0xFFFFFFF)
            {
              __break(0xC471u);
              JUMPOUT(0x22576BD78);
            }

            v45 = v13;
            v46 = v44 + 1;
            v47 = WTF::fastMalloc((16 * (v44 + 1)));
            v48 = v46;
            LODWORD(v266) = v46;
            *&v265[16] = v47;
            v30 = *v265;
            v31 = *&v265[8];
            v13 = v45;
            v49 = *&v265[8] - *v265;
            if (*&v265[8] >= *v265)
            {
LABEL_88:
              v21 = __OFSUB__(v32, v30);
              v50 = v32 - v30;
              if (v32 < v30)
              {
                goto LABEL_474;
              }

              if (v49 == -1)
              {
                v49 = v32 - v30;
                v21 = __OFSUB__(v30, v48);
                if (v30 > v48)
                {
                  goto LABEL_474;
                }
              }

              else
              {
                v21 = __OFSUB__(v50, v49);
                if (v50 < v49)
                {
                  goto LABEL_474;
                }

                v21 = __OFSUB__(v30, v48);
                if (v30 > v48)
                {
                  goto LABEL_474;
                }
              }

              if (v49)
              {
                v61 = (v43 + 16 * v30);
                v62 = 16 * v49;
                v63 = &v47[v30];
                do
                {
                  v64 = *v61++;
                  *v63++ = v64;
                  v62 -= 16;
                }

                while (v62);
              }

              goto LABEL_109;
            }
          }

          v21 = __OFSUB__(v31, v32);
          if (v31 > v32)
          {
            goto LABEL_474;
          }

          if (v31)
          {
            v51 = 16 * v31;
            v52 = v43;
            do
            {
              v53 = *v52;
              v52 = (v52 + 16);
              *v47++ = v53;
              v51 -= 16;
            }

            while (v51);
            v48 = v266;
            v30 = *v265;
          }

          v54 = v32 - v30;
          v21 = __OFSUB__(v32, v30);
          v55 = v32 - v30;
          if (v32 < v30)
          {
            goto LABEL_474;
          }

          v21 = __OFSUB__(v48, v55);
          if (v48 < v55)
          {
            goto LABEL_474;
          }

          if (v32 != v30)
          {
            v56 = 16 * v30;
            v57 = (v43 + 16 * v30);
            v58 = *&v265[16] + 16 * v48;
            v59 = v56 - 16 * v32;
            do
            {
              v60 = *v57++;
              *(v58 + v59) = v60;
              v59 += 16;
            }

            while (v59);
          }

          *v265 = v48 - v54;
LABEL_109:
          if (v267 != v43 && v43)
          {
            if (*&v265[16] == v43)
            {
              *&v265[16] = 0;
              LODWORD(v266) = 0;
            }

            WTF::fastFree(v43, v9);
          }

          v34 = *&v265[8];
          v33 = v266;
LABEL_115:
          v21 = __OFSUB__(v34, v33);
          if (v34 >= v33)
          {
            goto LABEL_474;
          }

          v65 = *&v265[16] + 16 * v34;
          *v65 = v29;
          *(v65 + 8) = v3;
          if (v34 == v266 - 1)
          {
            v66 = 0;
          }

          else
          {
            v66 = v34 + 1;
          }

          *&v265[8] = v66;
          v16 = v28;
LABEL_15:
          if (++v16 < v15)
          {
            continue;
          }

          v14 = v266;
          v67 = *v265;
          v68 = *&v265[8];
          if (*v265 > *&v265[8])
          {
            v21 = __OFSUB__(*&v265[8], v266);
            if (*&v265[8] > v266)
            {
              goto LABEL_474;
            }

            v21 = __OFSUB__(*v265, v266);
            if (*v265 > v266)
            {
              goto LABEL_474;
            }

            goto LABEL_133;
          }

          v21 = __OFSUB__(*v265, v266);
          if (*v265 > v266)
          {
LABEL_474:
            __break(1u);
            goto LABEL_475;
          }

          break;
        case 0x25:
        case 0x41:
          v26 = *&v265[8];
          if (v266)
          {
            while (*v265 != v26)
            {
              v27 = *&v265[16] + 16 * v266 - 16;
              if (v26)
              {
                v21 = __OFSUB__(v26 - 1, v266);
                if (v26 - 1 >= v266)
                {
                  goto LABEL_474;
                }

                v27 = *&v265[16] + 16 * (v26 - 1);
              }

              if (*(v27 + 8) != v3)
              {
                break;
              }

              if (!v26)
              {
                v26 = v266;
              }

              *&v265[8] = --v26;
              v21 = __OFSUB__(v26, v266);
              if (v26 > v266 || v26 == v266)
              {
                goto LABEL_474;
              }
            }
          }

          else
          {
            v21 = __OFSUB__(*v265, *&v265[8]);
            if (*v265 != *&v265[8])
            {
              goto LABEL_474;
            }
          }

          goto LABEL_15;
        case 0x2B:
        case 0x2F:
        case 0x31:
        case 0x49:
          v20 = *&v265[8] - *v265;
          if (*&v265[8] >= *v265)
          {
            v21 = __OFSUB__(v266, *v265);
            v35 = v266 - *v265;
            if (v266 < *v265)
            {
              goto LABEL_474;
            }

            if (v20 == -1)
            {
              v21 = 0;
              v36 = 1;
            }

            else
            {
              v21 = __OFSUB__(v35, v20);
              v36 = v35 >= v20;
            }

            if (!v36)
            {
              goto LABEL_474;
            }
          }

          else
          {
            v21 = __OFSUB__(*&v265[8], v266);
            if (*&v265[8] > v266)
            {
              goto LABEL_474;
            }

            v21 = __OFSUB__(v266, *v265);
            if (v266 < *v265)
            {
              goto LABEL_474;
            }
          }

          v3 = 0;
          *v265 = 0;
          *&v265[8] = 0;
          v37 = *&v265[16];
          if (v267 != *&v265[16] && *&v265[16])
          {
            *&v265[16] = 0;
            LODWORD(v266) = 0;
            WTF::fastFree(v37, v9);
            v3 = 0;
          }

          goto LABEL_15;
        case 0x2D:
        case 0x43:
          v3 = (v3 + 1);
          goto LABEL_15;
        case 0x2E:
        case 0x44:
          v24 = *&v265[8];
          while (1)
          {
            v21 = __OFSUB__(*v265, v24);
            if (*v265 == v24)
            {
              break;
            }

            if (v24)
            {
              v21 = __OFSUB__(v24 - 1, v266);
              if (v24 - 1 >= v266)
              {
                goto LABEL_474;
              }

              v25 = *&v265[16] + 16 * (v24 - 1);
            }

            else
            {
              v25 = *&v265[16] + 16 * v266 - 16;
              if (!v266)
              {
                goto LABEL_474;
              }
            }

            if (*(v25 + 8) != v3)
            {
              break;
            }

            if (!v24)
            {
              v24 = v266;
            }

            *&v265[8] = --v24;
            v21 = __OFSUB__(v24, v266);
            if (v24 > v266 || v24 == v266)
            {
              goto LABEL_474;
            }
          }

          if (v3)
          {
            v3 = (v3 - 1);
          }

          else
          {
            v3 = 0;
          }

          goto LABEL_15;
        case 0x33:
        case 0x34:
        case 0x35:
        case 0x36:
          v22 = *&v265[8];
          v21 = __OFSUB__(*v265, *&v265[8]);
          if (*v265 == *&v265[8])
          {
            goto LABEL_15;
          }

          v23 = v266;
          if (*&v265[8])
          {
            v21 = __OFSUB__(*&v265[8] - 1, v266);
            if (*&v265[8] - 1 >= v266)
            {
              goto LABEL_474;
            }

            if (*(*&v265[16] + 16 * (*&v265[8] - 1) + 8) != v3)
            {
              goto LABEL_15;
            }
          }

          else
          {
            if (!v266)
            {
              goto LABEL_474;
            }

            if (*(*&v265[16] + 16 * v266 - 8) != v3)
            {
              goto LABEL_15;
            }
          }

          if (v250 <= v16)
          {
            __break(0xC471u);
            JUMPOUT(0x22576BD68);
          }

          v38 = *v19 - 52;
          v21 = __OFSUB__(v38, 2);
          if (v38 <= 2)
          {
            v39 = dword_225882770[v38];
            *v19 = 51;
            v21 = __OFSUB__(v17, v16 + 1);
            if (v17 <= v16 + 1)
            {
              __break(0xC471u);
              JUMPOUT(0x22576BD70);
            }

            *(v18 + 8 * (v16 + 1)) = v39;
          }

          if (v22)
          {
            v40 = v22 - 1;
            v21 = __OFSUB__(v22 - 1, v23);
            if (v22 - 1 >= v23)
            {
              goto LABEL_474;
            }

            v41 = *(*&v265[16] + 16 * v40);
            *&v265[8] = v22 - 1;
            v21 = __OFSUB__(v40, v23);
            v42 = v40 == v23;
            if (v40 > v23)
            {
              goto LABEL_474;
            }
          }

          else
          {
            if (!v23)
            {
              goto LABEL_474;
            }

            v41 = *(*&v265[16] + 16 * v23 - 16);
            *&v265[8] = v23 - 1;
            v21 = (v23 - 1) >= v23;
            v42 = 0;
          }

          if (v42)
          {
            goto LABEL_474;
          }

          *v41 = 83;
          *v19 = 84;
          goto LABEL_15;
        default:
          goto LABEL_15;
      }

      break;
    }
  }

  v69 = v68 - v67;
  v70 = v14 - v67;
  if (v69 == -1)
  {
    v21 = 0;
    v71 = 1;
  }

  else
  {
    v21 = __OFSUB__(v70, v69);
    v71 = v70 >= v69;
  }

  if (!v71)
  {
    goto LABEL_474;
  }

LABEL_133:
  v72 = *&v265[16];
  if (v267 != *&v265[16] && *&v265[16])
  {
    *&v265[16] = 0;
    LODWORD(v266) = 0;
    WTF::fastFree(v72, v9);
  }

  while (1)
  {
LABEL_138:
    v73 = v253;
    if (v253 == 29)
    {
      v3 = v256;
      v15 = v257;
      while (1)
      {
        v75 = (v251 + 1);
        LODWORD(v251) = v75;
        if (v250 <= v75)
        {
          __break(0xC471u);
          JUMPOUT(0x22576BD08);
        }

        v76 = v248 + 32 * v75;
        v74 = *v76;
        v253 = *v76;
        v254 = *(v76 + 4);
        v77 = *v76;
        if (*v76 > 8u)
        {
          goto LABEL_142;
        }

        if (((1 << v77) & 0x38) != 0)
        {
          v255 = *(v76 + 3);
        }

        else if (((1 << v77) & 0xC4) != 0)
        {
          v255 = *(v76 + 3);
        }

        else
        {
          if (v77 != 8)
          {
            goto LABEL_142;
          }

          v255 = 0;
          v78 = *(v76 + 3);
          if (v78)
          {
            atomic_fetch_add_explicit(v78, 2u, memory_order_relaxed);
            v79 = v255;
            v255 = v78;
            if (v79)
            {
              if (atomic_fetch_add_explicit(v79, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v79, v9);
              }
            }
          }
        }

        v74 = v253;
LABEL_142:
        v256 = v254;
        v257 = DWORD2(v254);
        if (v74 != 82)
        {
          v80 = 0;
          while (1)
          {
            if (v74 != 8)
            {
              *v265 = v74;
              LOBYTE(v267[0]) = 1;
              goto LABEL_173;
            }

            *v265 = 8;
            *&v265[4] = v254;
            v266 = 0;
            v81 = v255;
            if (v255)
            {
              atomic_fetch_add_explicit(v255, 2u, memory_order_relaxed);
              v266 = v81;
            }

            LOBYTE(v267[0]) = 0;
            do
            {
              v83 = (v251 + 1);
              LODWORD(v251) = v83;
              if (v250 <= v83)
              {
                __break(0xC471u);
                JUMPOUT(0x22576BCF8);
              }

              v84 = v248 + 32 * v83;
              v82 = *v84;
              v253 = *v84;
              v254 = *(v84 + 4);
              v85 = *v84;
              if (*v84 <= 8u)
              {
                if (((1 << v85) & 0x38) != 0)
                {
                  v255 = *(v84 + 3);
LABEL_159:
                  v82 = v253;
                  goto LABEL_160;
                }

                if (((1 << v85) & 0xC4) != 0)
                {
                  v255 = *(v84 + 3);
                  goto LABEL_159;
                }

                if (v85 == 8)
                {
                  v255 = 0;
                  v86 = *(v84 + 3);
                  if (v86)
                  {
                    atomic_fetch_add_explicit(v86, 2u, memory_order_relaxed);
                    v87 = v255;
                    v255 = v86;
                    if (v87)
                    {
                      if (atomic_fetch_add_explicit(v87, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v87, v9);
                      }
                    }
                  }

                  goto LABEL_159;
                }
              }

LABEL_160:
              v256 = v254;
              v257 = DWORD2(v254);
            }

            while (v82 == 82);
            if (!LOBYTE(v267[0]))
            {
              if (!WGSL::parseLanguageFeature(&v266))
              {
                WTF::StringImpl::createWithoutCopyingNonEmpty();
                v14 = v262;
                goto LABEL_221;
              }

              if (v253 != 48)
              {
                v99 = 4;
                v100 = LOBYTE(v267[0]);
                if (LOBYTE(v267[0]) == 255)
                {
                  goto LABEL_227;
                }

                goto LABEL_222;
              }

              while (2)
              {
                v102 = (v251 + 1);
                LODWORD(v251) = v102;
                if (v250 <= v102)
                {
                  __break(0xC471u);
                  JUMPOUT(0x22576BD10);
                }

                v103 = v248 + 32 * v102;
                v101 = *v103;
                v253 = *v103;
                v254 = *(v103 + 4);
                v104 = *v103;
                if (*v103 <= 8u)
                {
                  if (((1 << v104) & 0x38) != 0)
                  {
                    v255 = *(v103 + 3);
                    goto LABEL_201;
                  }

                  if (((1 << v104) & 0xC4) != 0)
                  {
                    v255 = *(v103 + 3);
                    goto LABEL_201;
                  }

                  if (v104 == 8)
                  {
                    v255 = 0;
                    v105 = *(v103 + 3);
                    if (v105)
                    {
                      atomic_fetch_add_explicit(v105, 2u, memory_order_relaxed);
                      v106 = v255;
                      v255 = v105;
                      if (v106)
                      {
                        if (atomic_fetch_add_explicit(v106, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v106, v9);
                        }
                      }
                    }

LABEL_201:
                    v101 = v253;
                  }
                }

                v256 = v254;
                v257 = DWORD2(v254);
                if (v101 != 82)
                {
                  v99 = 0;
                  v100 = LOBYTE(v267[0]);
                  if (LOBYTE(v267[0]) == 255)
                  {
                    goto LABEL_227;
                  }

                  goto LABEL_222;
                }

                continue;
              }
            }

LABEL_173:
            v88 = WGSL::toString();
            if (LOBYTE(v267[0]) != 1)
            {
              goto LABEL_578;
            }

            WGSL::toString();
            if (v274)
            {
              v90 = *(v274 + 1);
              v91 = v273;
              if (v273)
              {
LABEL_176:
                v92 = *(v91 + 4);
                if (v92 < 0)
                {
                  goto LABEL_581;
                }

                v21 = __OFADD__(v92, 12);
                v93 = v92 + 12;
                v94 = v21;
                if (v90 < 0)
                {
                  goto LABEL_581;
                }

                goto LABEL_187;
              }
            }

            else
            {
              v90 = 0;
              v91 = v273;
              if (v273)
              {
                goto LABEL_176;
              }
            }

            v93 = 12;
            if (v89)
            {
              v94 = 1;
            }

            else
            {
              v94 = 0;
            }

            if (v90 < 0)
            {
LABEL_581:
              __break(0xC471u);
              JUMPOUT(0x22576BD00);
            }

LABEL_187:
            if (v94)
            {
              goto LABEL_581;
            }

            v21 = __OFADD__(v90, v93);
            v95 = v90 + v93;
            if (v21)
            {
              goto LABEL_581;
            }

            v96 = (v95 + 11);
            if (__OFADD__(v95, 11))
            {
              goto LABEL_581;
            }

            if (!v274)
            {
              if (!v91)
              {
                v98 = 1;
                goto LABEL_214;
              }

LABEL_195:
              v98 = (*(v91 + 16) >> 2) & 1;
              goto LABEL_214;
            }

            v97 = *(v274 + 4);
            v98 = (v97 >> 2) & 1;
            if (v91 && (v97 & 4) != 0)
            {
              goto LABEL_195;
            }

LABEL_214:
            WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v96, v98, "Expected a ", 0xBuLL, v274, ", but got a ", 0xCuLL, &v262, v91);
            v14 = v262;
            if (!v262)
            {
              goto LABEL_581;
            }

            v107 = v273;
            v273 = 0;
            if (v107 && atomic_fetch_add_explicit(v107, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v107, v9);
            }

            v108 = v274;
            v274 = 0;
            if (v108 && atomic_fetch_add_explicit(v108, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v108, v9);
            }

LABEL_221:
            v243 = v3;
            v244 = v15 | ((v257 - v15) << 32);
            v80 = 1;
            v99 = 1;
            v100 = LOBYTE(v267[0]);
            if (LOBYTE(v267[0]) == 255)
            {
              goto LABEL_227;
            }

LABEL_222:
            if (!v100 && *v265 == 8)
            {
              v109 = v266;
              v266 = 0;
              if (v109)
              {
                if (atomic_fetch_add_explicit(v109, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v109, v9);
                }
              }
            }

LABEL_227:
            if (v99)
            {
              if (v99 == 4)
              {
                if (v253 == 73)
                {
                  goto LABEL_239;
                }

                WGSL::toString();
                WGSL::toString();
                v11 = v271;
                v10 = v272;
                if (v272)
                {
                  v194 = *(v272 + 4);
                  if (!v271)
                  {
                    goto LABEL_476;
                  }

                  goto LABEL_458;
                }

LABEL_475:
                v194 = 0;
                if (!v11)
                {
LABEL_476:
                  v196 = 12;
                  v197 = v21;
                  if (v194 < 0)
                  {
                    goto LABEL_599;
                  }

                  goto LABEL_480;
                }

LABEL_458:
                v195 = *(v11 + 4);
                if (v195 < 0)
                {
                  goto LABEL_599;
                }

                v21 = __OFADD__(v195, 12);
                v196 = v195 + 12;
                v197 = v21;
                if (v194 < 0)
                {
                  goto LABEL_599;
                }

LABEL_480:
                if (v197)
                {
                  goto LABEL_599;
                }

                v21 = __OFADD__(v194, v196);
                v203 = v194 + v196;
                if (v21)
                {
                  goto LABEL_599;
                }

                v204 = (v203 + 11);
                if (__OFADD__(v203, 11))
                {
                  goto LABEL_599;
                }

                if (v10)
                {
                  v205 = *(v10 + 16);
                  v206 = (v205 >> 2) & 1;
                  if (!v11 || (v205 & 4) == 0)
                  {
LABEL_504:
                    WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v204, v206, "Expected a ", 0xBuLL, v10, ", but got a ", 0xCuLL, v265, v11);
                    v14 = *v265;
                    if (*v265)
                    {
                      v211 = v271;
                      v271 = 0;
                      if (v211 && atomic_fetch_add_explicit(v211, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v211, v9);
                      }

                      v212 = v272;
                      v272 = 0;
                      if (v212 && atomic_fetch_add_explicit(v212, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v212, v9);
                      }

                      v213 = v15 | ((v257 - v15) << 32);
LABEL_512:
                      atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
                      v242 = v213;
                      v191 = v3;
                      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) != 2)
                      {
                        goto LABEL_525;
                      }

                      goto LABEL_524;
                    }

LABEL_599:
                    __break(0xC471u);
                    JUMPOUT(0x22576BD98);
                  }
                }

                else if (!v11)
                {
                  v206 = 1;
                  goto LABEL_504;
                }

                v206 = (*(v11 + 16) >> 2) & 1;
                goto LABEL_504;
              }

              if ((v80 & 1) == 0)
              {
                goto LABEL_138;
              }

              if (v14)
              {
                v3 = v243;
                v213 = v244;
                goto LABEL_512;
              }

              v191 = v243;
              v242 = v244;
LABEL_525:
              v190 = v242;
              goto LABEL_526;
            }

            v74 = v253;
            if (v253 == 73)
            {
              while (1)
              {
LABEL_239:
                v111 = (v251 + 1);
                LODWORD(v251) = v111;
                if (v250 <= v111)
                {
                  __break(0xC471u);
                  JUMPOUT(0x22576BD18);
                }

                v112 = v248 + 32 * v111;
                v110 = *v112;
                v253 = *v112;
                v254 = *(v112 + 4);
                v113 = *v112;
                if (*v112 > 8u)
                {
                  goto LABEL_238;
                }

                if (((1 << v113) & 0x38) != 0)
                {
                  v255 = *(v112 + 3);
                }

                else if (((1 << v113) & 0xC4) != 0)
                {
                  v255 = *(v112 + 3);
                }

                else
                {
                  if (v113 != 8)
                  {
                    goto LABEL_238;
                  }

                  v255 = 0;
                  v114 = *(v112 + 3);
                  if (v114)
                  {
                    atomic_fetch_add_explicit(v114, 2u, memory_order_relaxed);
                    v115 = v255;
                    v255 = v114;
                    if (v115)
                    {
                      if (atomic_fetch_add_explicit(v115, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v115, v9);
                      }
                    }
                  }
                }

                v110 = v253;
LABEL_238:
                v256 = v254;
                v257 = DWORD2(v254);
                if (v110 != 82)
                {
                  v14 &= 0xFFFFFFFFFFFFFF00;
                  goto LABEL_138;
                }
              }
            }
          }
        }
      }
    }

    if (v253 == 18)
    {
      break;
    }

    if (v253 != 21)
    {
      v175 = v234;
      v174 = v236;
      v176 = v232;
LABEL_417:
      while (v73 != 73)
      {
        if (v73 == 1)
        {
          *v238 = 0;
          *(v238 + 32) = 0;
          goto LABEL_533;
        }

        WGSL::Parser<WGSL::Lexer<char16_t>>::parseDeclaration(v265, &v245);
        v177 = v266;
        if (!v266)
        {
          v184 = v245;
          v185 = *(v245 + 19);
          if (v185 == *(v245 + 18))
          {
            v186 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>((v245 + 8), v185 + 1, v265);
            v185 = *(v184 + 19);
            v187 = v184[8];
            v188 = *v186;
          }

          else
          {
            v187 = v245[8];
            v188 = *v265;
          }

          *(v187 + 8 * v185) = v188;
          ++*(v184 + 19);
          v178 = v266;
          if (!v266)
          {
            goto LABEL_446;
          }

LABEL_442:
          if (v178 != 255)
          {
            v189 = *v265;
            *v265 = 0;
            if (v189)
            {
              if (atomic_fetch_add_explicit(v189, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v189, v9);
              }
            }
          }

          goto LABEL_446;
        }

        if (v266 != 1)
        {
          goto LABEL_578;
        }

        v174 = *v265;
        if (*v265)
        {
          atomic_fetch_add_explicit(*v265, 2u, memory_order_relaxed);
        }

        v176 = *&v265[8];
        v175 = *&v265[16];
        v178 = v266;
        if (v266)
        {
          goto LABEL_442;
        }

LABEL_446:
        if (v177)
        {
          v233 = v176;
          v235 = v175;
          v237 = v174;
          goto LABEL_450;
        }

        v73 = v253;
      }

      while (1)
      {
        v179 = (v251 + 1);
        LODWORD(v251) = v179;
        if (v250 <= v179)
        {
          __break(0xC471u);
          JUMPOUT(0x22576BD20);
        }

        v180 = v248 + 32 * v179;
        v73 = *v180;
        v253 = *v180;
        v254 = *(v180 + 4);
        v181 = *v180;
        if (*v180 > 8u)
        {
          goto LABEL_427;
        }

        if (((1 << v181) & 0x38) != 0)
        {
          v255 = *(v180 + 3);
        }

        else if (((1 << v181) & 0xC4) != 0)
        {
          v255 = *(v180 + 3);
        }

        else
        {
          if (v181 != 8)
          {
            goto LABEL_427;
          }

          v255 = 0;
          v182 = *(v180 + 3);
          if (v182)
          {
            atomic_fetch_add_explicit(v182, 2u, memory_order_relaxed);
            v183 = v255;
            v255 = v182;
            if (v183)
            {
              if (atomic_fetch_add_explicit(v183, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v183, v9);
              }
            }
          }
        }

        v73 = v253;
LABEL_427:
        v256 = v254;
        v257 = DWORD2(v254);
        if (v73 != 82)
        {
          goto LABEL_417;
        }
      }
    }

    v3 = v256;
    v116 = v257;
    do
    {
      v118 = (v251 + 1);
      LODWORD(v251) = v118;
      if (v250 <= v118)
      {
        __break(0xC471u);
        JUMPOUT(0x22576BD48);
      }

      v119 = v248 + 32 * v118;
      v117 = *v119;
      v253 = *v119;
      v254 = *(v119 + 4);
      v120 = *v119;
      if (*v119 <= 8u)
      {
        if (((1 << v120) & 0x38) != 0)
        {
          v255 = *(v119 + 3);
LABEL_255:
          v117 = v253;
          goto LABEL_256;
        }

        if (((1 << v120) & 0xC4) != 0)
        {
          v255 = *(v119 + 3);
          goto LABEL_255;
        }

        if (v120 == 8)
        {
          v255 = 0;
          v121 = *(v119 + 3);
          if (v121)
          {
            atomic_fetch_add_explicit(v121, 2u, memory_order_relaxed);
            v122 = v255;
            v255 = v121;
            if (v122)
            {
              if (atomic_fetch_add_explicit(v122, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v122, v9);
              }
            }
          }

          goto LABEL_255;
        }
      }

LABEL_256:
      v256 = v254;
      v257 = DWORD2(v254);
    }

    while (v117 == 82);
    v241 = 0;
    while (1)
    {
      if (v117 != 8)
      {
        WGSL::toString();
        WGSL::toString();
        if (v262)
        {
          v199 = *(v262 + 4);
          if (v274)
          {
LABEL_468:
            v200 = *(v274 + 1);
            if (v200 < 0)
            {
              goto LABEL_600;
            }

            v21 = __OFADD__(v200, 12);
            v201 = v200 + 12;
            v202 = v21;
            if (v199 < 0)
            {
              goto LABEL_600;
            }

            goto LABEL_494;
          }
        }

        else
        {
          v199 = 0;
          if (v274)
          {
            goto LABEL_468;
          }
        }

        v201 = 12;
        if (v198)
        {
          v202 = 1;
        }

        else
        {
          v202 = 0;
        }

        if (v199 < 0)
        {
          goto LABEL_600;
        }

LABEL_494:
        if (v202)
        {
          goto LABEL_600;
        }

        v21 = __OFADD__(v199, v201);
        v207 = v199 + v201;
        if (v21)
        {
          goto LABEL_600;
        }

        v208 = (v207 + 11);
        if (__OFADD__(v207, 11))
        {
          goto LABEL_600;
        }

        if (v262)
        {
          v209 = *(v262 + 16);
          v210 = (v209 >> 2) & 1;
          if (!v274 || (v209 & 4) == 0)
          {
LABEL_515:
            WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v208, v210, "Expected a ", 0xBuLL, v262, ", but got a ", 0xCuLL, v265, v274);
            v14 = *v265;
            if (*v265)
            {
              v214 = v274;
              v274 = 0;
              if (v214 && atomic_fetch_add_explicit(v214, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v214, v9);
              }

              v215 = v262;
              *&v262 = 0;
              if (!v215)
              {
                goto LABEL_522;
              }

LABEL_520:
              if (atomic_fetch_add_explicit(v215, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v215, v9);
              }

LABEL_522:
              v242 = v116 | ((v257 - v116) << 32);
              v191 = v3;
              goto LABEL_523;
            }

LABEL_600:
            __break(0xC471u);
            JUMPOUT(0x22576BDA0);
          }
        }

        else if (!v274)
        {
          v210 = 1;
          goto LABEL_515;
        }

        v210 = (*(v274 + 16) >> 2) & 1;
        goto LABEL_515;
      }

      v129 = v255;
      if (v255)
      {
        atomic_fetch_add_explicit(v255, 2u, memory_order_relaxed);
      }

      do
      {
        v131 = (v251 + 1);
        LODWORD(v251) = v131;
        if (v250 <= v131)
        {
          __break(0xC471u);
          JUMPOUT(0x22576BD28);
        }

        v132 = v248 + 32 * v131;
        v130 = *v132;
        v253 = *v132;
        v254 = *(v132 + 4);
        v133 = *v132;
        if (*v132 <= 8u)
        {
          if (((1 << v133) & 0x38) != 0)
          {
            v255 = *(v132 + 3);
LABEL_285:
            v130 = v253;
            goto LABEL_286;
          }

          if (((1 << v133) & 0xC4) != 0)
          {
            v255 = *(v132 + 3);
            goto LABEL_285;
          }

          if (v133 == 8)
          {
            v255 = 0;
            v134 = *(v132 + 3);
            if (v134)
            {
              atomic_fetch_add_explicit(v134, 2u, memory_order_relaxed);
              v135 = v255;
              v255 = v134;
              if (v135)
              {
                if (atomic_fetch_add_explicit(v135, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v135, v9);
                }
              }
            }

            goto LABEL_285;
          }
        }

LABEL_286:
        v256 = v254;
        v257 = DWORD2(v254);
      }

      while (v130 == 82);
      if (!v129)
      {
        goto LABEL_326;
      }

      v136 = *(v129 + 1);
      v137 = *(v129 + 1);
      if (v136 == "f16" || v137 != 3)
      {
        if (v137 == 3 && v136 == "f16")
        {
          goto LABEL_309;
        }

LABEL_326:
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        v239 = v3;
        v240 = *v265;
        v242 = v116 | ((v257 - v116) << 32);
        v241 = 1;
        v139 = 1;
        if (v129)
        {
          goto LABEL_327;
        }

        goto LABEL_330;
      }

      if ((*(v129 + 16) & 4) != 0)
      {
        if (*v136 == 102 && *(v136 + 1) == 13873)
        {
          goto LABEL_309;
        }

        goto LABEL_326;
      }

      if (*v136 != 102 || *(v136 + 2) != 3538993)
      {
        goto LABEL_326;
      }

LABEL_309:
      *(v245 + 34) |= 1u;
      if (v130 == 48)
      {
        while (1)
        {
          v141 = (v251 + 1);
          LODWORD(v251) = v141;
          if (v250 <= v141)
          {
            __break(0xC471u);
            JUMPOUT(0x22576BD38);
          }

          v142 = v248 + 32 * v141;
          v140 = *v142;
          v253 = *v142;
          v254 = *(v142 + 4);
          v143 = *v142;
          if (*v142 > 8u)
          {
            goto LABEL_313;
          }

          if (((1 << v143) & 0x38) != 0)
          {
            v255 = *(v142 + 3);
          }

          else if (((1 << v143) & 0xC4) != 0)
          {
            v255 = *(v142 + 3);
          }

          else
          {
            if (v143 != 8)
            {
              goto LABEL_313;
            }

            v255 = 0;
            v144 = *(v142 + 3);
            if (v144)
            {
              atomic_fetch_add_explicit(v144, 2u, memory_order_relaxed);
              v145 = v255;
              v255 = v144;
              if (v145)
              {
                if (atomic_fetch_add_explicit(v145, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v145, v9);
                }
              }
            }
          }

          v140 = v253;
LABEL_313:
          v256 = v254;
          v257 = DWORD2(v254);
          if (v140 != 82)
          {
            v139 = 0;
            goto LABEL_327;
          }
        }
      }

      v139 = 4;
LABEL_327:
      if (atomic_fetch_add_explicit(v129, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v129, v9);
      }

LABEL_330:
      if (v139)
      {
        break;
      }

      v117 = v253;
      if (v253 == 73)
      {
        goto LABEL_359;
      }
    }

    if (v139 == 4)
    {
      if (v253 == 73)
      {
        while (1)
        {
LABEL_359:
          v155 = (v251 + 1);
          LODWORD(v251) = v155;
          if (v250 <= v155)
          {
            __break(0xC471u);
            JUMPOUT(0x22576BD50);
          }

          v156 = v248 + 32 * v155;
          v154 = *v156;
          v253 = *v156;
          v254 = *(v156 + 4);
          v157 = *v156;
          if (*v156 > 8u)
          {
            goto LABEL_358;
          }

          if (((1 << v157) & 0x38) != 0)
          {
            v255 = *(v156 + 3);
          }

          else if (((1 << v157) & 0xC4) != 0)
          {
            v255 = *(v156 + 3);
          }

          else
          {
            if (v157 != 8)
            {
              goto LABEL_358;
            }

            v255 = 0;
            v158 = *(v156 + 3);
            if (v158)
            {
              atomic_fetch_add_explicit(v158, 2u, memory_order_relaxed);
              v159 = v255;
              v255 = v158;
              if (v159)
              {
                if (atomic_fetch_add_explicit(v159, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v159, v9);
                }
              }
            }
          }

          v154 = v253;
LABEL_358:
          v256 = v254;
          v257 = DWORD2(v254);
          if (v154 != 82)
          {
            v240 &= 0xFFFFFFFFFFFFFF00;
            goto LABEL_138;
          }
        }
      }

      WGSL::toString();
      WGSL::toString();
      if (v273)
      {
        v222 = *(v273 + 1);
      }

      else
      {
        v222 = 0;
      }

      if (v272)
      {
        v223 = *(v272 + 4);
        if (v223 < 0)
        {
          goto LABEL_602;
        }
      }

      else
      {
        v223 = 0;
      }

      v21 = __OFADD__(v223, 12);
      v224 = v223 + 12;
      v225 = v21;
      if (v222 < 0)
      {
        goto LABEL_602;
      }

      if (v225)
      {
        goto LABEL_602;
      }

      v21 = __OFADD__(v222, v224);
      v226 = v222 + v224;
      if (v21)
      {
        goto LABEL_602;
      }

      v227 = (v226 + 11);
      if (__OFADD__(v226, 11))
      {
        goto LABEL_602;
      }

      if (v273)
      {
        v228 = *(v273 + 4);
        v229 = (v228 >> 2) & 1;
        if (!v272 || (v228 & 4) == 0)
        {
LABEL_571:
          WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v227, v229, "Expected a ", 0xBuLL, v273, ", but got a ", 0xCuLL, v265, v272);
          v14 = *v265;
          if (*v265)
          {
            v230 = v272;
            v272 = 0;
            if (v230 && atomic_fetch_add_explicit(v230, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v230, v9);
            }

            v215 = v273;
            v273 = 0;
            if (!v215)
            {
              goto LABEL_522;
            }

            goto LABEL_520;
          }

LABEL_602:
          __break(0xC471u);
          JUMPOUT(0x22576BDB0);
        }
      }

      else if (!v272)
      {
        v229 = 1;
        goto LABEL_571;
      }

      v229 = (*(v272 + 16) >> 2) & 1;
      goto LABEL_571;
    }

    if (v241)
    {
      v14 = v240;
      if (!v240)
      {
        v191 = v239;
        goto LABEL_525;
      }

      v191 = v239;
      v3 = v239;
LABEL_523:
      atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
LABEL_524:
        WTF::StringImpl::destroy(v14, v9);
        v191 = v3;
        goto LABEL_525;
      }

      goto LABEL_525;
    }
  }

  do
  {
    v124 = (v251 + 1);
    LODWORD(v251) = v124;
    if (v250 <= v124)
    {
      __break(0xC471u);
      JUMPOUT(0x22576BD40);
    }

    v125 = v248 + 32 * v124;
    v123 = *v125;
    v253 = *v125;
    v254 = *(v125 + 4);
    v126 = *v125;
    if (*v125 <= 8u)
    {
      if (((1 << v126) & 0x38) != 0)
      {
        v255 = *(v125 + 3);
LABEL_268:
        v123 = v253;
        goto LABEL_269;
      }

      if (((1 << v126) & 0xC4) != 0)
      {
        v255 = *(v125 + 3);
        goto LABEL_268;
      }

      if (v126 == 8)
      {
        v255 = 0;
        v127 = *(v125 + 3);
        if (v127)
        {
          atomic_fetch_add_explicit(v127, 2u, memory_order_relaxed);
          v128 = v255;
          v255 = v127;
          if (v128)
          {
            if (atomic_fetch_add_explicit(v128, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v128, v9);
            }
          }
        }

        goto LABEL_268;
      }
    }

LABEL_269:
    v256 = v254;
    v257 = DWORD2(v254);
  }

  while (v123 == 82);
  WGSL::Parser<WGSL::Lexer<unsigned char>>::parseDiagnostic(v265, &v245);
  if (!v270)
  {
    if (v253 == 73)
    {
      while (1)
      {
        v149 = (v251 + 1);
        LODWORD(v251) = v149;
        if (v250 <= v149)
        {
          __break(0xC471u);
          JUMPOUT(0x22576BD58);
        }

        v150 = v248 + 32 * v149;
        v148 = *v150;
        v253 = *v150;
        v254 = *(v150 + 4);
        v151 = *v150;
        if (*v150 <= 8u)
        {
          if (((1 << v151) & 0x38) != 0)
          {
            v255 = *(v150 + 3);
          }

          else if (((1 << v151) & 0xC4) != 0)
          {
            v255 = *(v150 + 3);
          }

          else
          {
            if (v151 != 8)
            {
              goto LABEL_342;
            }

            v255 = 0;
            v152 = *(v150 + 3);
            if (v152)
            {
              atomic_fetch_add_explicit(v152, 2u, memory_order_relaxed);
              v153 = v255;
              v255 = v152;
              if (v153)
              {
                if (atomic_fetch_add_explicit(v153, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v153, v146);
                }
              }
            }
          }

          v148 = v253;
        }

LABEL_342:
        v256 = v254;
        v257 = DWORD2(v254);
        if (v148 != 82)
        {
          *&v262 = v13;
          DWORD2(v262) = v231;
          HIDWORD(v262) = DWORD2(v254) - v231;
          WGSL::AST::Builder::construct<WGSL::AST::DiagnosticDirective,WGSL::SourceSpan,WGSL::AST::Diagnostic,void>(v246, &v262, v265);
        }
      }
    }

    WGSL::toString();
    WGSL::toString();
    if (v264)
    {
      v161 = *(v264 + 1);
      v162 = v263;
      if (v263)
      {
LABEL_372:
        v163 = *(v162 + 1);
        if (v163 < 0)
        {
          goto LABEL_598;
        }

        v21 = __OFADD__(v163, 12);
        v164 = v163 + 12;
        v165 = v21;
        if (v161 < 0)
        {
          goto LABEL_598;
        }

        goto LABEL_386;
      }
    }

    else
    {
      v161 = 0;
      v162 = v263;
      if (v263)
      {
        goto LABEL_372;
      }
    }

    v164 = 12;
    if (v160)
    {
      v165 = 1;
    }

    else
    {
      v165 = 0;
    }

    if (v161 < 0)
    {
      goto LABEL_598;
    }

LABEL_386:
    if (v165)
    {
      goto LABEL_598;
    }

    v21 = __OFADD__(v161, v164);
    v166 = v161 + v164;
    if (v21)
    {
      goto LABEL_598;
    }

    v167 = (v166 + 11);
    if (__OFADD__(v166, 11))
    {
      goto LABEL_598;
    }

    if (v264)
    {
      v168 = *(v264 + 4);
      v169 = (v168 >> 2) & 1;
      if (!v162 || (v168 & 4) == 0)
      {
LABEL_396:
        WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v167, v169, "Expected a ", 0xBuLL, v264, ", but got a ", 0xCuLL, &v262, v162);
        v147 = v262;
        if (v262)
        {
          v170 = v263;
          v263 = 0;
          if (v170 && atomic_fetch_add_explicit(v170, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v170, v146);
          }

          v171 = v264;
          v264 = 0;
          if (v171 && atomic_fetch_add_explicit(v171, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v171, v146);
          }

          v233 = v13;
          v235 = v231 | ((v257 - v231) << 32);
          goto LABEL_404;
        }

LABEL_598:
        __break(0xC471u);
        JUMPOUT(0x22576BD90);
      }
    }

    else if (!v162)
    {
      v169 = 1;
      goto LABEL_396;
    }

    v169 = (*(v162 + 16) >> 2) & 1;
    goto LABEL_396;
  }

  if (v270 != 1)
  {
LABEL_578:
    mpark::throw_bad_variant_access(v88);
  }

  v147 = *v265;
  if (*v265)
  {
    atomic_fetch_add_explicit(*v265, 2u, memory_order_relaxed);
  }

  v233 = *&v265[8];
  v235 = *&v265[16];
LABEL_404:
  if (v270 != 255)
  {
    if (v270)
    {
      v173 = *v265;
      *v265 = 0;
      if (!v173)
      {
        goto LABEL_415;
      }
    }

    else
    {
      if (v269 == 1)
      {
        v172 = v268;
        v267[1] = off_2838D37C0;
        v268 = 0;
        if (v172)
        {
          if (atomic_fetch_add_explicit(v172, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v172, v146);
          }
        }
      }

      v173 = v267[0];
      *&v265[8] = off_2838D37C0;
      v267[0] = 0;
      if (!v173)
      {
        goto LABEL_415;
      }
    }

    if (atomic_fetch_add_explicit(v173, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v173, v146);
    }
  }

LABEL_415:
  v237 = v147;
LABEL_450:
  v190 = v235;
  v14 = v237;
  v191 = v233;
LABEL_526:
  if (v14)
  {
    atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
    v216 = WTF::fastMalloc(0x18);
    atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
  }

  else
  {
    v216 = WTF::fastMalloc(0x18);
  }

  *v216 = v14;
  v216[1] = v191;
  v216[2] = v190;
  *v238 = v216;
  *(v238 + 8) = 0x100000001;
  *(v238 + 16) = 0;
  *(v238 + 24) = 0;
  *(v238 + 32) = 1;
  if (v14)
  {
    if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v9);
    }

    if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v9);
    }
  }

LABEL_533:
  if (v253 == 8)
  {
    v217 = v255;
    v255 = 0;
    if (v217)
    {
      if (atomic_fetch_add_explicit(v217, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v217, v9);
      }
    }
  }

  result = v248;
  if (v250)
  {
    v219 = 32 * v250;
    v220 = (v248 + 24);
    do
    {
      if (*(v220 - 6) == 8)
      {
        v221 = *v220;
        *v220 = 0;
        if (v221)
        {
          if (atomic_fetch_add_explicit(v221, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v221, v9);
          }
        }
      }

      v220 += 4;
      v219 -= 32;
    }

    while (v219);
    result = v248;
  }

  if (result)
  {
    v248 = 0;
    v249 = 0;
    return WTF::fastFree(result, v9);
  }

  return result;
}

WTF::StringImpl *WGSL::Parser<WGSL::Lexer<unsigned char>>::consume(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  v2 = result;
  while (1)
  {
    v5 = *(v2 + 9);
    v6 = (*(v2 + 10) + 1);
    *(v2 + 10) = v6;
    if (v5 <= v6)
    {
      break;
    }

    v7 = *(v2 + 3) + 32 * v6;
    v3 = *v7;
    *(v2 + 14) = *v7;
    *(v2 + 60) = *(v7 + 4);
    v8 = *v7;
    if (*v7 <= 8u)
    {
      if (((1 << v8) & 0x38) != 0)
      {
        *(v2 + 10) = *(v7 + 24);
      }

      else if (((1 << v8) & 0xC4) != 0)
      {
        *(v2 + 10) = *(v7 + 24);
      }

      else
      {
        if (v8 != 8)
        {
          goto LABEL_4;
        }

        *(v2 + 10) = 0;
        v9 = *(v7 + 24);
        if (v9)
        {
          atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
          result = *(v2 + 10);
          *(v2 + 10) = v9;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, a2);
            }
          }
        }
      }

      v3 = *(v2 + 14);
    }

LABEL_4:
    v4 = *(v2 + 17);
    *(v2 + 11) = *(v2 + 60);
    *(v2 + 24) = v4;
    if (v3 != 82)
    {
      return result;
    }
  }

  __break(0xC471u);
  return result;
}

void WGSL::Parser<WGSL::Lexer<unsigned char>>::parseDiagnostic(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 88);
  v5 = *(a2 + 96);
  if (*(a2 + 56) != 67)
  {
    WGSL::toString();
    WGSL::toString();
    if (v99)
    {
      v15 = *(v99 + 1);
      if (v98)
      {
LABEL_18:
        v16 = *(v98 + 4);
        if (v16 < 0)
        {
          goto LABEL_176;
        }

        v14 = __OFADD__(v16, 12);
        v17 = v16 + 12;
        v18 = v14;
        if (v15 < 0)
        {
          goto LABEL_176;
        }

        goto LABEL_50;
      }
    }

    else
    {
      v15 = 0;
      if (v98)
      {
        goto LABEL_18;
      }
    }

    v17 = 12;
    v18 = v14;
    if (v15 < 0)
    {
      goto LABEL_176;
    }

LABEL_50:
    if (v18)
    {
      goto LABEL_176;
    }

    v14 = __OFADD__(v15, v17);
    v33 = v15 + v17;
    if (v14)
    {
      goto LABEL_176;
    }

    v34 = (v33 + 11);
    if (__OFADD__(v33, 11))
    {
      goto LABEL_176;
    }

    if (v99)
    {
      v35 = *(v99 + 4);
      v36 = (v35 >> 2) & 1;
      if (!v98 || (v35 & 4) == 0)
      {
LABEL_70:
        WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v34, v36, "Expected a ", 0xBuLL, v99, ", but got a ", 0xCuLL, v82, v98);
        v42 = *v82;
        if (*v82)
        {
          v43 = v98;
          v98 = 0;
          if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v43, v41);
          }

          v44 = v99;
          v99 = 0;
          if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v44, v41);
          }

          v45 = v5 | ((*(a2 + 96) - v5) << 32);
          *a1 = v42;
          *(a1 + 8) = v4;
          *(a1 + 16) = v45;
          *(a1 + 80) = 1;
          return;
        }

LABEL_176:
        __break(0xC471u);
        JUMPOUT(0x22576C848);
      }
    }

    else if (!v98)
    {
      v36 = 1;
      goto LABEL_70;
    }

    v36 = (*(v98 + 16) >> 2) & 1;
    goto LABEL_70;
  }

  do
  {
    v8 = *(a2 + 36);
    v9 = (*(a2 + 40) + 1);
    *(a2 + 40) = v9;
    if (v8 <= v9)
    {
      __break(0xC471u);
      goto LABEL_181;
    }

    v10 = *(a2 + 24) + 32 * v9;
    v6 = *v10;
    *(a2 + 56) = *v10;
    *(a2 + 60) = *(v10 + 4);
    v11 = *v10;
    if (*v10 <= 8u)
    {
      if (((1 << v11) & 0x38) != 0)
      {
        *(a2 + 80) = *(v10 + 24);
LABEL_4:
        v6 = *(a2 + 56);
        goto LABEL_5;
      }

      if (((1 << v11) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v10 + 24);
        goto LABEL_4;
      }

      if (v11 == 8)
      {
        *(a2 + 80) = 0;
        v12 = *(v10 + 24);
        if (v12)
        {
          atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
          v13 = *(a2 + 80);
          *(a2 + 80) = v12;
          if (v13)
          {
            if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v13, a2);
            }
          }
        }

        goto LABEL_4;
      }
    }

LABEL_5:
    v7 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v7;
  }

  while (v6 == 82);
  v19 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(&v94, a2);
  if (v97)
  {
    if (v97 != 1)
    {
      goto LABEL_174;
    }

    v21 = v94;
    if (v94)
    {
      atomic_fetch_add_explicit(v94, 2u, memory_order_relaxed);
    }

    *(a1 + 8) = v95;
    *a1 = v21;
    goto LABEL_109;
  }

  v22 = WGSL::parseSeverityControl(&v96);
  if (!v22)
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v37 = v5 | ((*(a2 + 96) - v5) << 32);
LABEL_108:
    *(a1 + 8) = v4;
    *(a1 + 16) = v37;
LABEL_109:
    *(a1 + 80) = 1;
    goto LABEL_110;
  }

  if (*(a2 + 56) != 48)
  {
    WGSL::toString();
    WGSL::toString();
    if (v93)
    {
      v38 = *(v93 + 1);
      if (v92)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v38 = 0;
      if (v92)
      {
LABEL_62:
        v39 = *(v92 + 1);
        if (v39 < 0)
        {
          goto LABEL_179;
        }

LABEL_86:
        v14 = __OFADD__(v39, 12);
        v49 = v39 + 12;
        v50 = v14;
        if (v38 < 0)
        {
          goto LABEL_179;
        }

        if (v50)
        {
          goto LABEL_179;
        }

        v14 = __OFADD__(v38, v49);
        v51 = v38 + v49;
        if (v14)
        {
          goto LABEL_179;
        }

        v52 = (v51 + 11);
        if (__OFADD__(v51, 11))
        {
          goto LABEL_179;
        }

        if (v93)
        {
          v53 = *(v93 + 4);
          v54 = (v53 >> 2) & 1;
          if (!v92 || (v53 & 4) == 0)
          {
LABEL_100:
            WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v52, v54, "Expected a ", 0xBuLL, v93, ", but got a ", 0xCuLL, v82, v92);
            v55 = *v82;
            if (*v82)
            {
              v56 = v92;
              v92 = 0;
              if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v56, v20);
              }

              v57 = v93;
              v93 = 0;
              if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v57, v20);
              }

              v37 = v5 | ((*(a2 + 96) - v5) << 32);
              *a1 = v55;
              goto LABEL_108;
            }

LABEL_179:
            __break(0xC471u);
            JUMPOUT(0x22576C860);
          }
        }

        else if (!v92)
        {
          v54 = 1;
          goto LABEL_100;
        }

        v54 = (*(v92 + 16) >> 2) & 1;
        goto LABEL_100;
      }
    }

    v39 = 0;
    goto LABEL_86;
  }

  v24 = v22;
  do
  {
    v27 = *(a2 + 36);
    v28 = (*(a2 + 40) + 1);
    *(a2 + 40) = v28;
    if (v27 <= v28)
    {
      __break(0xC471u);
      JUMPOUT(0x22576C850);
    }

    v29 = *(a2 + 24) + 32 * v28;
    v25 = *v29;
    *(a2 + 56) = *v29;
    *(a2 + 60) = *(v29 + 4);
    v30 = *v29;
    if (*v29 <= 8u)
    {
      if (((1 << v30) & 0x38) != 0)
      {
        *(a2 + 80) = *(v29 + 24);
LABEL_33:
        v25 = *(a2 + 56);
        goto LABEL_34;
      }

      if (((1 << v30) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v29 + 24);
        goto LABEL_33;
      }

      if (v30 == 8)
      {
        *(a2 + 80) = 0;
        v31 = *(v29 + 24);
        if (v31)
        {
          atomic_fetch_add_explicit(v31, 2u, memory_order_relaxed);
          v32 = *(a2 + 80);
          *(a2 + 80) = v31;
          if (v32)
          {
            if (atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v32, v23);
            }
          }
        }

        goto LABEL_33;
      }
    }

LABEL_34:
    v26 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v26;
  }

  while (v25 == 82);
  v19 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(&v88, a2);
  if (v91)
  {
    if (v91 == 1)
    {
      v40 = v88;
      if (v88)
      {
        atomic_fetch_add_explicit(v88, 2u, memory_order_relaxed);
      }

      *(a1 + 8) = v89;
      *a1 = v40;
      goto LABEL_166;
    }

LABEL_174:
    mpark::throw_bad_variant_access(v19);
  }

  v46 = *(a2 + 56);
  if (v46 != 69)
  {
LABEL_119:
    if (v46 == 48)
    {
      WGSL::Parser<WGSL::Lexer<unsigned char>>::consume(a2, v20);
      v46 = *(a2 + 56);
    }

    if (v46 == 68)
    {
      *v82 = 68;
      *&v82[4] = *(a2 + 60);
      LOBYTE(v83) = 0;
      while (1)
      {
        v61 = *(a2 + 36);
        v62 = (*(a2 + 40) + 1);
        *(a2 + 40) = v62;
        if (v61 <= v62)
        {
          __break(0xC471u);
          JUMPOUT(0x22576C858);
        }

        v63 = *(a2 + 24) + 32 * v62;
        v59 = *v63;
        *(a2 + 56) = *v63;
        *(a2 + 60) = *(v63 + 4);
        v64 = *v63;
        if (*v63 > 8u)
        {
          goto LABEL_125;
        }

        if (((1 << v64) & 0x38) != 0)
        {
          *(a2 + 80) = *(v63 + 24);
        }

        else if (((1 << v64) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v63 + 24);
        }

        else
        {
          if (v64 != 8)
          {
            goto LABEL_125;
          }

          *(a2 + 80) = 0;
          v65 = *(v63 + 24);
          if (v65)
          {
            atomic_fetch_add_explicit(v65, 2u, memory_order_relaxed);
            v66 = *(a2 + 80);
            *(a2 + 80) = v65;
            if (v66)
            {
              if (atomic_fetch_add_explicit(v66, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v66, v20);
              }
            }
          }
        }

        v59 = *(a2 + 56);
LABEL_125:
        v60 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v60;
        if (v59 != 82)
        {
          std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v82, v20);
          v82[0] = *v24;
          *&v82[16] = v89;
          v68 = v90;
          v90 = 0;
          *&v82[8] = off_2838D37C0;
          v83 = v68;
          v84 = 0;
          v85 = 0;
          std::experimental::fundamentals_v3::expected<WGSL::AST::Diagnostic,WGSL::CompilationMessage>::expected(a1, v82);
          WGSL::AST::Diagnostic::~Diagnostic(v82, v69);
          goto LABEL_167;
        }
      }
    }

    WGSL::toString();
    WGSL::toString();
    if (v87)
    {
      v67 = *(v87 + 1);
    }

    else
    {
      v67 = 0;
    }

    if (v86)
    {
      v70 = *(v86 + 1);
      if (v70 < 0)
      {
LABEL_180:
        __break(0xC471u);
LABEL_181:
        JUMPOUT(0x22576C840);
      }
    }

    else
    {
      v70 = 0;
    }

    v14 = __OFADD__(v70, 12);
    v71 = v70 + 12;
    v72 = v14;
    if (v67 < 0)
    {
      goto LABEL_180;
    }

    if (v72)
    {
      goto LABEL_180;
    }

    v14 = __OFADD__(v67, v71);
    v73 = v67 + v71;
    if (v14)
    {
      goto LABEL_180;
    }

    v74 = (v73 + 11);
    if (__OFADD__(v73, 11))
    {
      goto LABEL_180;
    }

    if (v87)
    {
      v75 = *(v87 + 4);
      v76 = (v75 >> 2) & 1;
      if (!v86 || (v75 & 4) == 0)
      {
LABEL_158:
        WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v74, v76, "Expected a ", 0xBuLL, v87, ", but got a ", 0xCuLL, &v100, v86);
        v77 = v100;
        if (v100)
        {
          v78 = v86;
          v86 = 0;
          if (v78 && atomic_fetch_add_explicit(v78, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v78, v20);
          }

          v79 = v87;
          v87 = 0;
          if (v79 && atomic_fetch_add_explicit(v79, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v79, v20);
          }

          v80 = v5 | ((*(a2 + 96) - v5) << 32);
          *a1 = v77;
          *(a1 + 8) = v4;
          *(a1 + 16) = v80;
LABEL_166:
          *(a1 + 80) = 1;
          goto LABEL_167;
        }

        goto LABEL_180;
      }
    }

    else if (!v86)
    {
      v76 = 1;
      goto LABEL_158;
    }

    v76 = (*(v86 + 16) >> 2) & 1;
    goto LABEL_158;
  }

  WGSL::Parser<WGSL::Lexer<unsigned char>>::consume(a2, v20);
  v19 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(v82, a2);
  if (!v83)
  {
    std::experimental::fundamentals_v3::expected<WGSL::AST::Identifier,WGSL::CompilationMessage>::~expected(v82, v47);
    v46 = *(a2 + 56);
    goto LABEL_119;
  }

  if (v83 != 1)
  {
    goto LABEL_174;
  }

  v48 = *v82;
  if (*v82)
  {
    atomic_fetch_add_explicit(*v82, 2u, memory_order_relaxed);
  }

  *(a1 + 8) = *&v82[8];
  *a1 = v48;
  *(a1 + 80) = 1;
  std::experimental::fundamentals_v3::expected<WGSL::AST::Identifier,WGSL::CompilationMessage>::~expected(v82, v47);
LABEL_167:
  if (v91 != 255)
  {
    if (v91)
    {
      v81 = v88;
      v88 = 0;
      if (!v81)
      {
        goto LABEL_110;
      }
    }

    else
    {
      v81 = v90;
      v88 = off_2838D37C0;
      v90 = 0;
      if (!v81)
      {
        goto LABEL_110;
      }
    }

    if (atomic_fetch_add_explicit(v81, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v81, v20);
    }
  }

LABEL_110:
  if (v97 != 255)
  {
    if (v97)
    {
      v58 = v94;
      v94 = 0;
      if (v58)
      {
        goto LABEL_115;
      }
    }

    else
    {
      v58 = v96;
      v94 = off_2838D37C0;
      v96 = 0;
      if (!v58)
      {
        return;
      }

LABEL_115:
      if (atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v58, v20);
      }
    }
  }
}

uint64_t WGSL::Parser<WGSL::Lexer<unsigned char>>::consumeType(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(a2 + 56);
  if (v3 == a3)
  {
    *result = a3;
    *(result + 4) = *(a2 + 60);
    *(result + 32) = 0;
    while (1)
    {
      v7 = *(a2 + 36);
      v8 = (*(a2 + 40) + 1);
      *(a2 + 40) = v8;
      if (v7 <= v8)
      {
        __break(0xC471u);
        return result;
      }

      v9 = *(a2 + 24) + 32 * v8;
      v5 = *v9;
      *(a2 + 56) = *v9;
      *(a2 + 60) = *(v9 + 4);
      v10 = *v9;
      if (*v9 <= 8u)
      {
        if (((1 << v10) & 0x38) != 0)
        {
          *(a2 + 80) = *(v9 + 24);
        }

        else if (((1 << v10) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v9 + 24);
        }

        else
        {
          if (v10 != 8)
          {
            goto LABEL_5;
          }

          *(a2 + 80) = 0;
          v11 = *(v9 + 24);
          if (v11)
          {
            atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
            result = *(a2 + 80);
            *(a2 + 80) = v11;
            if (result)
            {
              if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, a2);
              }
            }
          }
        }

        v5 = *(a2 + 56);
      }

LABEL_5:
      v6 = *(a2 + 68);
      *(a2 + 88) = *(a2 + 60);
      *(a2 + 96) = v6;
      if (v5 != 82)
      {
        return result;
      }
    }
  }

  *result = v3;
  *(result + 32) = 1;
  return result;
}

void *WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X5>, void *a6@<X8>, unsigned __int8 *a7@<X3>)
{
  if (a2)
  {
    v9 = a2 - 1;
  }

  else
  {
    v9 = 0;
  }

  if (v9 >> 31)
  {
    __break(0xC471u);
    JUMPOUT(0x22576CAACLL);
  }

  if (a4)
  {
    v10 = a4 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 >> 31)
  {
    __break(0xC471u);
LABEL_35:
    JUMPOUT(0x22576CA8CLL);
  }

  v12 = *a3;
  v13 = *a5;
  if (*a3)
  {
    v14 = *(v12 + 4);
    if (v13)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v14 = 0;
    if (v13)
    {
LABEL_11:
      v15 = *(v13 + 4);
      if (((v15 | v10) & 0x80000000) != 0)
      {
        goto LABEL_31;
      }

      goto LABEL_15;
    }
  }

  v15 = 0;
  if ((v10 & 0x80000000) != 0)
  {
LABEL_31:
    *a6 = 0;
    goto LABEL_32;
  }

LABEL_15:
  v16 = __OFADD__(v10, v15);
  v17 = v10 + v15;
  v18 = v16;
  if (v14 < 0)
  {
    goto LABEL_31;
  }

  if (v18)
  {
    goto LABEL_31;
  }

  v16 = __OFADD__(v14, v17);
  v19 = v14 + v17;
  if (v16)
  {
    goto LABEL_31;
  }

  v20 = (v9 + v19);
  if (__OFADD__(v9, v19))
  {
    goto LABEL_31;
  }

  if (!v12)
  {
    if (!v13)
    {
      v22 = 1;
      goto LABEL_29;
    }

LABEL_27:
    v22 = (*(v13 + 16) >> 2) & 1;
    goto LABEL_29;
  }

  v21 = *(v12 + 16);
  v22 = (v21 >> 2) & 1;
  if (v13 && (v21 & 4) != 0)
  {
    goto LABEL_27;
  }

LABEL_29:
  result = WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v20, v22, a1, v9, v12, a7, v10, &v25, v13);
  v24 = v25;
  *a6 = v25;
  if (!v24)
  {
LABEL_32:
    __break(0xC471u);
    goto LABEL_35;
  }

  return result;
}

uint64_t std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(uint64_t result, WTF::StringImpl *a2)
{
  if (*(result + 32) != 255)
  {
    if (*(result + 32))
    {
      v2 = 0;
    }

    else
    {
      v2 = *result == 8;
    }

    if (v2)
    {
      v3 = *(result + 24);
      *(result + 24) = 0;
      if (v3)
      {
        if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v4 = result;
          WTF::StringImpl::destroy(v3, a2);
          result = v4;
        }
      }
    }
  }

  *(result + 32) = -1;
  return result;
}

void WGSL::Parser<WGSL::Lexer<unsigned char>>::parseDeclaration(uint64_t a1, unint64_t a2)
{
  v5 = *(a2 + 88);
  v6 = *(a2 + 96);
  v7 = *(a2 + 56);
  if (v7 != 10)
  {
    if (v7 == 14)
    {
      v9 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseConstAssert(v353, a2);
      if (!v354)
      {
LABEL_60:
        *a1 = *v353;
        *(a1 + 24) = 0;
        return;
      }

      if (v354 != 1)
      {
        goto LABEL_791;
      }

      v10 = *v353;
      if (*v353)
      {
        atomic_fetch_add_explicit(*v353, 2u, memory_order_relaxed);
        *a1 = v10;
        *(a1 + 8) = *&v353[8];
        goto LABEL_14;
      }

      *a1 = 0;
      *(a1 + 8) = *&v353[8];
LABEL_252:
      *(a1 + 24) = 1;
      return;
    }

    if (v7 == 13)
    {
      v346 = 0;
      *&v347 = 0;
      WGSL::Parser<WGSL::Lexer<unsigned char>>::parseVariableWithAttributes(v353, a2, &v346);
      v9 = v346;
      if (v346)
      {
        v9 = WTF::fastFree(v346, v8);
      }

      if (v354)
      {
        if (v354 != 1)
        {
          goto LABEL_791;
        }

        v10 = *v353;
        if (*v353)
        {
          atomic_fetch_add_explicit(*v353, 2u, memory_order_relaxed);
          *(a1 + 8) = *&v353[8];
          *a1 = v10;
LABEL_14:
          *(a1 + 24) = 1;
          goto LABEL_38;
        }

        *(a1 + 8) = *&v353[8];
        *a1 = 0;
        goto LABEL_252;
      }

      if (*(a2 + 56) == 73)
      {
        while (1)
        {
          v24 = *(a2 + 36);
          v25 = (*(a2 + 40) + 1);
          *(a2 + 40) = v25;
          if (v24 <= v25)
          {
            __break(0xC471u);
            JUMPOUT(0x22576F524);
          }

          v26 = *(a2 + 24) + 32 * v25;
          v22 = *v26;
          *(a2 + 56) = *v26;
          *(a2 + 60) = *(v26 + 4);
          v27 = *v26;
          if (*v26 > 8u)
          {
            goto LABEL_49;
          }

          if (((1 << v27) & 0x38) != 0)
          {
            *(a2 + 80) = *(v26 + 24);
          }

          else if (((1 << v27) & 0xC4) != 0)
          {
            *(a2 + 80) = *(v26 + 24);
          }

          else
          {
            if (v27 != 8)
            {
              goto LABEL_49;
            }

            *(a2 + 80) = 0;
            v28 = *(v26 + 24);
            if (v28)
            {
              atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
              v29 = *(a2 + 80);
              *(a2 + 80) = v28;
              if (v29)
              {
                if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v29, v8);
                }
              }
            }
          }

          v22 = *(a2 + 56);
LABEL_49:
          v23 = *(a2 + 68);
          *(a2 + 88) = *(a2 + 60);
          *(a2 + 96) = v23;
          if (v22 != 82)
          {
            goto LABEL_60;
          }
        }
      }

      WGSL::toString();
      WGSL::toString();
      if (v330)
      {
        v39 = *(v330 + 1);
        if (v329)
        {
          goto LABEL_82;
        }
      }

      else
      {
        v39 = 0;
        if (v329)
        {
LABEL_82:
          v40 = *(v329 + 1);
          if (v40 < 0)
          {
            goto LABEL_802;
          }

LABEL_173:
          v83 = __OFADD__(v40, 12);
          v84 = v40 + 12;
          v85 = v83;
          if (v39 < 0)
          {
            goto LABEL_802;
          }

          if (v85)
          {
            goto LABEL_802;
          }

          v83 = __OFADD__(v39, v84);
          v86 = v39 + v84;
          if (v83)
          {
            goto LABEL_802;
          }

          v87 = (v86 + 11);
          if (__OFADD__(v86, 11))
          {
            goto LABEL_802;
          }

          if (v330)
          {
            v88 = *(v330 + 4);
            v89 = (v88 >> 2) & 1;
            if (!v329 || (v88 & 4) == 0)
            {
LABEL_244:
              WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v87, v89, "Expected a ", 0xBuLL, v330, ", but got a ", 0xCuLL, &v346, v329);
              v121 = v346;
              if (v346)
              {
                v122 = v329;
                v329 = 0;
                if (v122 && atomic_fetch_add_explicit(v122, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v122, v120);
                }

                v123 = v330;
                v330 = 0;
                if (v123 && atomic_fetch_add_explicit(v123, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v123, v120);
                }

                v124 = v6 | ((*(a2 + 96) - v6) << 32);
                *a1 = v121;
                *(a1 + 8) = v5;
                *(a1 + 16) = v124;
                goto LABEL_252;
              }

LABEL_802:
              __break(0xC471u);
              JUMPOUT(0x22576F55CLL);
            }
          }

          else if (!v329)
          {
            v89 = 1;
            goto LABEL_244;
          }

          v89 = (*(v329 + 16) >> 2) & 1;
          goto LABEL_244;
        }
      }

      v40 = 0;
      goto LABEL_173;
    }

    WGSL::Parser<WGSL::Lexer<unsigned char>>::parseAttributes(&v326, a2);
    if (v328)
    {
      if (v328 == 1)
      {
        v19 = v326;
        if (v326)
        {
          atomic_fetch_add_explicit(v326, 2u, memory_order_relaxed);
        }

        *(a1 + 8) = v327;
        *a1 = v19;
        goto LABEL_34;
      }

      goto LABEL_791;
    }

    v30 = *(a2 + 56);
    if (v30 <= 30)
    {
      if (v30 != 23)
      {
        if (v30 != 28)
        {
          goto LABEL_131;
        }

        goto LABEL_109;
      }

      v63 = *(a2 + 88);
      v64 = *(a2 + 96);
      while (1)
      {
        v67 = *(a2 + 36);
        v68 = (*(a2 + 40) + 1);
        *(a2 + 40) = v68;
        if (v67 <= v68)
        {
          __break(0xC471u);
          JUMPOUT(0x22576F53CLL);
        }

        v69 = *(a2 + 24) + 32 * v68;
        v65 = *v69;
        *(a2 + 56) = *v69;
        *(a2 + 60) = *(v69 + 4);
        v70 = *v69;
        if (*v69 > 8u)
        {
          goto LABEL_135;
        }

        if (((1 << v70) & 0x38) != 0)
        {
          *(a2 + 80) = *(v69 + 24);
        }

        else if (((1 << v70) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v69 + 24);
        }

        else
        {
          if (v70 != 8)
          {
            goto LABEL_135;
          }

          *(a2 + 80) = 0;
          v71 = *(v69 + 24);
          if (v71)
          {
            atomic_fetch_add_explicit(v71, 2u, memory_order_relaxed);
            v72 = *(a2 + 80);
            *(a2 + 80) = v71;
            if (v72)
            {
              if (atomic_fetch_add_explicit(v72, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v72, v8);
              }
            }
          }
        }

        v65 = *(a2 + 56);
LABEL_135:
        v66 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v66;
        if (v65 != 82)
        {
          v9 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(&v346, a2);
          if (v349)
          {
            if (v349 == 1)
            {
              v74 = v346;
              if (v346)
              {
                atomic_fetch_add_explicit(v346, 2u, memory_order_relaxed);
              }

              v2 = *(&v347 + 1);
              v63 = v347;
              goto LABEL_774;
            }

            goto LABEL_791;
          }

          if (*(a2 + 56) == 67)
          {
            v74 = 1;
            while (1)
            {
              v114 = *(a2 + 36);
              v115 = (*(a2 + 40) + 1);
              *(a2 + 40) = v115;
              if (v114 <= v115)
              {
                __break(0xC471u);
                JUMPOUT(0x22576F58CLL);
              }

              v116 = *(a2 + 24) + 32 * v115;
              v112 = *v116;
              *(a2 + 56) = *v116;
              *(a2 + 60) = *(v116 + 4);
              v117 = *v116;
              if (*v116 > 8u)
              {
                goto LABEL_232;
              }

              if (((1 << v117) & 0x38) != 0)
              {
                *(a2 + 80) = *(v116 + 24);
              }

              else if (((1 << v117) & 0xC4) != 0)
              {
                *(a2 + 80) = *(v116 + 24);
              }

              else
              {
                if (v117 != 8)
                {
                  goto LABEL_232;
                }

                *(a2 + 80) = 0;
                v118 = *(v116 + 24);
                if (v118)
                {
                  atomic_fetch_add_explicit(v118, 2u, memory_order_relaxed);
                  v119 = *(a2 + 80);
                  *(a2 + 80) = v118;
                  if (v119)
                  {
                    if (atomic_fetch_add_explicit(v119, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v119, v8);
                    }
                  }
                }
              }

              v112 = *(a2 + 56);
LABEL_232:
              v113 = *(a2 + 68);
              *(a2 + 88) = *(a2 + 60);
              *(a2 + 96) = v113;
              if (v112 != 82)
              {
                v314 = v63;
                v316 = v64;
                v172 = 0;
                v173 = 0;
                v332 = 0;
                *&v333 = 0;
                while (1)
                {
                  if (*(a2 + 56) == 68)
                  {
                    goto LABEL_536;
                  }

                  v174 = *(a2 + 88);
                  v175 = *(a2 + 96);
                  WGSL::Parser<WGSL::Lexer<unsigned char>>::parseAttributes(&v356, a2);
                  if (v358)
                  {
                    if (v358 != 1)
                    {
                      goto LABEL_791;
                    }

                    v9 = v356;
                    if (v356)
                    {
                      atomic_fetch_add_explicit(v356, 2u, memory_order_relaxed);
                    }

                    v344 = v357;
                    v343 = v9;
                    v345 = 1;
LABEL_469:
                    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      v9 = WTF::StringImpl::destroy(v9, v8);
                    }

                    goto LABEL_472;
                  }

                  v9 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(v353, a2);
                  if (v355)
                  {
                    if (v355 != 1)
                    {
                      goto LABEL_791;
                    }

                    v176 = *v353;
                    if (*v353)
                    {
                      atomic_fetch_add_explicit(*v353, 2u, memory_order_relaxed);
                    }

                    v344 = *&v353[8];
                    v343 = v176;
                    v345 = 1;
                    goto LABEL_460;
                  }

                  v318 = v74;
                  v177 = v172;
                  v178 = v2;
                  if (*(a2 + 56) != 47)
                  {
                    WGSL::toString();
                    WGSL::toString();
                    if (v335)
                    {
                      v187 = *(v335 + 1);
                    }

                    else
                    {
                      v187 = 0;
                    }

                    if (v323)
                    {
                      v191 = *(v323 + 1);
                      if (v191 < 0)
                      {
                        goto LABEL_813;
                      }
                    }

                    else
                    {
                      v191 = 0;
                    }

                    v83 = __OFADD__(v191, 12);
                    v192 = v191 + 12;
                    v193 = v83;
                    if ((v187 & 0x80000000) == 0 && (v193 & 1) == 0)
                    {
                      v83 = __OFADD__(v187, v192);
                      v194 = v187 + v192;
                      if (!v83)
                      {
                        v195 = (v194 + 11);
                        if (!__OFADD__(v194, 11))
                        {
                          if (v335)
                          {
                            v196 = *(v335 + 4);
                            v197 = (v196 >> 2) & 1;
                            if (!v323 || (v196 & 4) == 0)
                            {
                              goto LABEL_452;
                            }

LABEL_450:
                            v197 = (*(v323 + 16) >> 2) & 1;
                          }

                          else
                          {
                            if (v323)
                            {
                              goto LABEL_450;
                            }

                            v197 = 1;
                          }

LABEL_452:
                          WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v195, v197, "Expected a ", 0xBuLL, v335, ", but got a ", 0xCuLL, &v350, v323);
                          v198 = v350;
                          if (v350)
                          {
                            v199 = v323;
                            v323 = 0;
                            if (v199 && atomic_fetch_add_explicit(v199, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v199, v8);
                            }

                            v9 = v335;
                            v335 = 0;
                            if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              v9 = WTF::StringImpl::destroy(v9, v8);
                            }

                            v200 = v175 | ((*(a2 + 96) - v175) << 32);
                            v343 = v198;
                            *&v344 = v174;
                            *(&v344 + 1) = v200;
                            v345 = 1;
                            v2 = v178;
                            v172 = v177;
                            v74 = v318;
                            goto LABEL_460;
                          }
                        }
                      }
                    }

LABEL_813:
                    __break(0xC471u);
                    JUMPOUT(0x22576F5B4);
                  }

                  v172 = v177;
                  v74 = v318;
                  do
                  {
                    v181 = *(a2 + 36);
                    v182 = (*(a2 + 40) + 1);
                    *(a2 + 40) = v182;
                    if (v181 <= v182)
                    {
                      __break(0xC471u);
                      JUMPOUT(0x22576F57CLL);
                    }

                    v183 = *(a2 + 24) + 32 * v182;
                    v179 = *v183;
                    *(a2 + 56) = *v183;
                    *(a2 + 60) = *(v183 + 4);
                    v184 = *v183;
                    if (*v183 <= 8u)
                    {
                      if (((1 << v184) & 0x38) != 0)
                      {
                        *(a2 + 80) = *(v183 + 24);
LABEL_408:
                        v179 = *(a2 + 56);
                        goto LABEL_409;
                      }

                      if (((1 << v184) & 0xC4) != 0)
                      {
                        *(a2 + 80) = *(v183 + 24);
                        goto LABEL_408;
                      }

                      if (v184 == 8)
                      {
                        *(a2 + 80) = 0;
                        v185 = *(v183 + 24);
                        if (v185)
                        {
                          atomic_fetch_add_explicit(v185, 2u, memory_order_relaxed);
                          v186 = *(a2 + 80);
                          *(a2 + 80) = v185;
                          if (v186)
                          {
                            if (atomic_fetch_add_explicit(v186, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v186, v8);
                            }
                          }
                        }

                        goto LABEL_408;
                      }
                    }

LABEL_409:
                    v180 = *(a2 + 68);
                    *(a2 + 88) = *(a2 + 60);
                    *(a2 + 96) = v180;
                  }

                  while (v179 == 82);
                  v9 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseTypeName(&v350, a2);
                  if (!v352)
                  {
                    v189 = *(a2 + 8);
                    v190 = *(a2 + 96) - v175;
                    v335 = v174;
                    *&v336 = __PAIR64__(v190, v175);
                    LOBYTE(v323) = 0;
                    WGSL::AST::Builder::construct<WGSL::AST::Parameter,WGSL::SourceSpan,WGSL::AST::Identifier,std::reference_wrapper<WGSL::AST::Expression>,WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,WGSL::AST::ParameterRole,void>(v189, &v335, v353, &v350, &v356, &v323);
                  }

                  if (v352 != 1)
                  {
                    goto LABEL_791;
                  }

                  v188 = v350;
                  if (v350)
                  {
                    atomic_fetch_add_explicit(v350, 2u, memory_order_relaxed);
                  }

                  v344 = v351;
                  v343 = v188;
                  v345 = 1;
                  if (v352)
                  {
                    if (v352 != 255)
                    {
                      v9 = v350;
                      v350 = 0;
                      if (v9)
                      {
                        if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          v9 = WTF::StringImpl::destroy(v9, v8);
                        }
                      }
                    }
                  }

LABEL_460:
                  if (v355 != 255)
                  {
                    if (v355)
                    {
                      v9 = *v353;
                      *v353 = 0;
                      if (!v9)
                      {
                        goto LABEL_467;
                      }
                    }

                    else
                    {
                      v9 = v354;
                      *v353 = off_2838D37C0;
                      v354 = 0;
                      if (!v9)
                      {
                        goto LABEL_467;
                      }
                    }

                    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      v9 = WTF::StringImpl::destroy(v9, v8);
                    }
                  }

LABEL_467:
                  if (v358 != 255)
                  {
                    v9 = v356;
                    if (v358)
                    {
                      goto LABEL_469;
                    }

                    if (v356)
                    {
                      v9 = WTF::fastFree(v356, v8);
                    }
                  }

LABEL_472:
                  if (v345)
                  {
                    if (v345 != 1)
                    {
                      goto LABEL_791;
                    }

                    v74 = v343;
                    if (v343)
                    {
                      atomic_fetch_add_explicit(v343, 2u, memory_order_relaxed);
                    }

                    v201 = 1;
                    v2 = *(&v344 + 1);
                    v319 = v344;
                    v202 = v345;
                    if (!v345)
                    {
                      goto LABEL_393;
                    }

LABEL_499:
                    if (v202 != 255)
                    {
                      v213 = v343;
                      v343 = 0;
                      if (v213)
                      {
                        if (atomic_fetch_add_explicit(v213, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v213, v8);
                        }
                      }
                    }

                    goto LABEL_393;
                  }

                  if (v173 == v333)
                  {
                    v203 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v332, v173 + 1, &v343);
                    v204 = DWORD1(v333);
                    v172 = v332;
                    v332[DWORD1(v333)] = *v203;
                  }

                  else
                  {
                    v172[v173] = v343;
                    v204 = DWORD1(v333);
                  }

                  v173 = v204 + 1;
                  DWORD1(v333) = v204 + 1;
                  if ((v204 + 1) >= 0x100)
                  {
                    WTF::String::number(&v341, 0xFF);
                    WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("function cannot have more than ", 32, &v341, " parameters", 12, v353);
                    v214 = *(a2 + 96);
                    v74 = *v353;
                    *v353 = 0;
                    v215 = v341;
                    *&v341 = 0;
                    if (v215 && atomic_fetch_add_explicit(v215, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v215, v8);
                    }

                    v2 = v316 | ((v214 - v316) << 32);
                    v201 = 1;
                    v319 = v314;
                    v202 = v345;
                    if (!v345)
                    {
                      goto LABEL_393;
                    }

                    goto LABEL_499;
                  }

                  if (*(a2 + 56) != 48)
                  {
                    v201 = 7;
                    v202 = v345;
                    if (v345)
                    {
                      goto LABEL_499;
                    }

                    goto LABEL_393;
                  }

                  while (2)
                  {
                    v207 = *(a2 + 36);
                    v208 = (*(a2 + 40) + 1);
                    *(a2 + 40) = v208;
                    if (v207 <= v208)
                    {
                      __break(0xC471u);
                      JUMPOUT(0x22576F544);
                    }

                    v209 = *(a2 + 24) + 32 * v208;
                    v205 = *v209;
                    *(a2 + 56) = *v209;
                    *(a2 + 60) = *(v209 + 4);
                    v210 = *v209;
                    if (*v209 <= 8u)
                    {
                      if (((1 << v210) & 0x38) != 0)
                      {
                        *(a2 + 80) = *(v209 + 24);
                        goto LABEL_486;
                      }

                      if (((1 << v210) & 0xC4) != 0)
                      {
                        *(a2 + 80) = *(v209 + 24);
                        goto LABEL_486;
                      }

                      if (v210 == 8)
                      {
                        *(a2 + 80) = 0;
                        v211 = *(v209 + 24);
                        if (v211)
                        {
                          atomic_fetch_add_explicit(v211, 2u, memory_order_relaxed);
                          v212 = *(a2 + 80);
                          *(a2 + 80) = v211;
                          if (v212)
                          {
                            if (atomic_fetch_add_explicit(v212, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v212, v8);
                            }
                          }
                        }

LABEL_486:
                        v205 = *(a2 + 56);
                      }
                    }

                    v206 = *(a2 + 68);
                    *(a2 + 88) = *(a2 + 60);
                    *(a2 + 96) = v206;
                    if (v205 == 82)
                    {
                      continue;
                    }

                    break;
                  }

                  v201 = 0;
                  v202 = v345;
                  if (v345)
                  {
                    goto LABEL_499;
                  }

LABEL_393:
                  if (v201)
                  {
                    if (v201 != 7)
                    {
                      v267 = v172;
                      v63 = v319;
                      goto LABEL_772;
                    }

                    if (*(a2 + 56) == 68)
                    {
                      while (1)
                      {
LABEL_536:
                        v227 = *(a2 + 36);
                        v228 = (*(a2 + 40) + 1);
                        *(a2 + 40) = v228;
                        if (v227 <= v228)
                        {
                          __break(0xC471u);
                          JUMPOUT(0x22576F594);
                        }

                        v229 = *(a2 + 24) + 32 * v228;
                        v225 = *v229;
                        *(a2 + 56) = *v229;
                        *(a2 + 60) = *(v229 + 4);
                        v230 = *v229;
                        if (*v229 > 8u)
                        {
                          goto LABEL_535;
                        }

                        if (((1 << v230) & 0x38) != 0)
                        {
                          *(a2 + 80) = *(v229 + 24);
                        }

                        else if (((1 << v230) & 0xC4) != 0)
                        {
                          *(a2 + 80) = *(v229 + 24);
                        }

                        else
                        {
                          if (v230 != 8)
                          {
                            goto LABEL_535;
                          }

                          *(a2 + 80) = 0;
                          v231 = *(v229 + 24);
                          if (v231)
                          {
                            atomic_fetch_add_explicit(v231, 2u, memory_order_relaxed);
                            v232 = *(a2 + 80);
                            *(a2 + 80) = v231;
                            if (v232)
                            {
                              if (atomic_fetch_add_explicit(v232, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v232, v8);
                              }
                            }
                          }
                        }

                        v225 = *(a2 + 56);
LABEL_535:
                        v226 = *(a2 + 68);
                        *(a2 + 88) = *(a2 + 60);
                        *(a2 + 96) = v226;
                        if (v225 != 82)
                        {
                          v350 = 0;
                          *&v351 = 0;
                          v343 = 0;
                          if (v225 != 39)
                          {
                            v268 = 0;
                            v269 = v314;
                            goto LABEL_642;
                          }

                          while (2)
                          {
                            v235 = *(a2 + 36);
                            v236 = (*(a2 + 40) + 1);
                            *(a2 + 40) = v236;
                            if (v235 <= v236)
                            {
                              __break(0xC471u);
                              JUMPOUT(0x22576F5A4);
                            }

                            v237 = *(a2 + 24) + 32 * v236;
                            v233 = *v237;
                            *(a2 + 56) = *v237;
                            *(a2 + 60) = *(v237 + 4);
                            v238 = *v237;
                            if (*v237 <= 8u)
                            {
                              if (((1 << v238) & 0x38) != 0)
                              {
                                *(a2 + 80) = *(v237 + 24);
                                goto LABEL_549;
                              }

                              if (((1 << v238) & 0xC4) != 0)
                              {
                                *(a2 + 80) = *(v237 + 24);
                                goto LABEL_549;
                              }

                              if (v238 == 8)
                              {
                                *(a2 + 80) = 0;
                                v239 = *(v237 + 24);
                                if (v239)
                                {
                                  atomic_fetch_add_explicit(v239, 2u, memory_order_relaxed);
                                  v240 = *(a2 + 80);
                                  *(a2 + 80) = v239;
                                  if (v240)
                                  {
                                    if (atomic_fetch_add_explicit(v240, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                    {
                                      WTF::StringImpl::destroy(v240, v8);
                                    }
                                  }
                                }

LABEL_549:
                                v233 = *(a2 + 56);
                              }
                            }

                            v234 = *(a2 + 68);
                            *(a2 + 88) = *(a2 + 60);
                            *(a2 + 96) = v234;
                            if (v233 != 82)
                            {
                              WGSL::Parser<WGSL::Lexer<unsigned char>>::parseAttributes(v353, a2);
                              if (v354)
                              {
                                if (v354 == 1)
                                {
                                  v74 = *v353;
                                  if (*v353)
                                  {
                                    atomic_fetch_add_explicit(*v353, 2u, memory_order_relaxed);
                                  }

                                  v63 = *&v353[8];
                                  v2 = *&v353[16];
                                  std::experimental::fundamentals_v3::expected<WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,WGSL::CompilationMessage>::~expected(v353, v270);
LABEL_741:
                                  v267 = v332;
LABEL_772:
                                  if (v267)
                                  {
                                    v332 = 0;
                                    LODWORD(v333) = 0;
                                    WTF::fastFree(v267, v8);
                                  }

LABEL_774:
                                  if (v349 != 255)
                                  {
                                    if (v349)
                                    {
                                      v312 = v346;
                                      v346 = 0;
                                      if (!v312)
                                      {
                                        goto LABEL_781;
                                      }
                                    }

                                    else
                                    {
                                      v312 = v348;
                                      v346 = off_2838D37C0;
                                      v348 = 0;
                                      if (!v312)
                                      {
                                        goto LABEL_781;
                                      }
                                    }

                                    if (atomic_fetch_add_explicit(v312, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                    {
                                      WTF::StringImpl::destroy(v312, v8);
                                    }
                                  }

LABEL_781:
                                  if (v74)
                                  {
                                    atomic_fetch_add_explicit(v74, 2u, memory_order_relaxed);
                                    *(a1 + 8) = v63;
                                    *(a1 + 16) = v2;
                                    *a1 = v74;
                                    *(a1 + 24) = 1;
                                    if (atomic_fetch_add_explicit(v74, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                    {
                                      WTF::StringImpl::destroy(v74, v8);
                                    }

                                    goto LABEL_35;
                                  }

                                  *(a1 + 8) = v63;
                                  *(a1 + 16) = v2;
                                  *a1 = 0;
LABEL_34:
                                  *(a1 + 24) = 1;
                                  goto LABEL_35;
                                }

LABEL_791:
                                mpark::throw_bad_variant_access(v9);
                              }

                              v268 = *v353;
                              v350 = *v353;
                              v285 = *&v353[8];
                              *v353 = 0;
                              *&v353[8] = 0;
                              *&v351 = v285;
                              v9 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseTypeName(&v356, a2);
                              v287 = v358;
                              if (v358)
                              {
                                v269 = v314;
                                if (v358 != 1)
                                {
                                  goto LABEL_791;
                                }

                                v74 = v356;
                                if (v356)
                                {
                                  atomic_fetch_add_explicit(v356, 2u, memory_order_relaxed);
                                }

                                v2 = *(&v357 + 1);
                                v319 = v357;
                              }

                              else
                              {
                                v343 = v356;
                                v269 = v314;
                              }

                              std::experimental::fundamentals_v3::expected<std::reference_wrapper<WGSL::AST::Expression>,WGSL::CompilationMessage>::~expected(&v356, v286);
                              std::experimental::fundamentals_v3::expected<WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,WGSL::CompilationMessage>::~expected(v353, v302);
                              if (v287)
                              {
                                v63 = v319;
                                goto LABEL_739;
                              }

LABEL_642:
                              v9 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseCompoundStatement(v353, a2);
                              if (!v354)
                              {
                                v276 = *(a2 + 8);
                                v277 = *(a2 + 96) - v316;
                                v356 = v269;
                                *&v357 = __PAIR64__(v277, v316);
                                WGSL::AST::Builder::construct<WGSL::AST::Function,WGSL::SourceSpan,WGSL::AST::Identifier,WTF::ReferenceWrapperVector<WGSL::AST::Parameter,0ul>,WGSL::AST::Expression *,std::reference_wrapper<WGSL::AST::CompoundStatement>,WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,void>(v276, &v356, &v346, &v332, &v343, v353, &v326, &v350);
                              }

                              if (v354 != 1)
                              {
                                goto LABEL_791;
                              }

                              v74 = *v353;
                              if (*v353)
                              {
                                atomic_fetch_add_explicit(*v353, 2u, memory_order_relaxed);
                                v63 = *&v353[8];
                                v2 = *&v353[16];
                                if (atomic_fetch_add_explicit(v74, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                {
                                  WTF::StringImpl::destroy(v74, v8);
                                  if (!v268)
                                  {
                                    goto LABEL_741;
                                  }
                                }

                                else
                                {
LABEL_739:
                                  if (!v268)
                                  {
                                    goto LABEL_741;
                                  }
                                }
                              }

                              else
                              {
                                v63 = *&v353[8];
                                v2 = *&v353[16];
                                if (!v268)
                                {
                                  goto LABEL_741;
                                }
                              }

                              v350 = 0;
                              LODWORD(v351) = 0;
                              WTF::fastFree(v268, v8);
                              goto LABEL_741;
                            }

                            continue;
                          }
                        }
                      }
                    }

                    v274 = v172;
                    WGSL::toString();
                    WGSL::toString();
                    if (v356)
                    {
                      v275 = v356[1];
                    }

                    else
                    {
                      v275 = 0;
                    }

                    v63 = v314;
                    if (v350)
                    {
                      v295 = v350[1];
                      if (v295 < 0)
                      {
                        goto LABEL_818;
                      }
                    }

                    else
                    {
                      v295 = 0;
                    }

                    v83 = __OFADD__(v295, 12);
                    v296 = v295 + 12;
                    v297 = v83;
                    if ((v275 & 0x80000000) == 0 && (v297 & 1) == 0)
                    {
                      v83 = __OFADD__(v275, v296);
                      v298 = v275 + v296;
                      if (!v83)
                      {
                        v299 = (v298 + 11);
                        if (!__OFADD__(v298, 11))
                        {
                          if (v356)
                          {
                            v300 = v356[4];
                            v301 = (v300 >> 2) & 1;
                            if (!v350 || (v300 & 4) == 0)
                            {
                              goto LABEL_764;
                            }

LABEL_735:
                            v301 = (*(v350 + 16) >> 2) & 1;
                          }

                          else
                          {
                            if (v350)
                            {
                              goto LABEL_735;
                            }

                            v301 = 1;
                          }

LABEL_764:
                          WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v299, v301, "Expected a ", 0xBuLL, v356, ", but got a ", 0xCuLL, v353, v350);
                          v74 = *v353;
                          if (*v353)
                          {
                            v310 = v350;
                            v350 = 0;
                            if (v310 && atomic_fetch_add_explicit(v310, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v310, v8);
                            }

                            v311 = v356;
                            v356 = 0;
                            if (v311 && atomic_fetch_add_explicit(v311, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v311, v8);
                            }

                            v2 = v316 | ((*(a2 + 96) - v316) << 32);
                            v267 = v274;
                            goto LABEL_772;
                          }
                        }
                      }
                    }

LABEL_818:
                    __break(0xC471u);
LABEL_819:
                    JUMPOUT(0x22576F51CLL);
                  }
                }
              }
            }
          }

          WGSL::toString();
          WGSL::toString();
          if (v356)
          {
            v128 = v356[1];
          }

          else
          {
            v128 = 0;
          }

          if (v350)
          {
            v248 = v350[1];
            if (v248 < 0)
            {
              goto LABEL_816;
            }
          }

          else
          {
            v248 = 0;
          }

          v83 = __OFADD__(v248, 12);
          v249 = v248 + 12;
          v250 = v83;
          if ((v128 & 0x80000000) == 0 && (v250 & 1) == 0)
          {
            v83 = __OFADD__(v128, v249);
            v251 = v128 + v249;
            if (!v83)
            {
              v252 = (v251 + 11);
              if (!__OFADD__(v251, 11))
              {
                if (v356)
                {
                  v253 = v356[4];
                  v254 = (v253 >> 2) & 1;
                  if (!v350 || (v253 & 4) == 0)
                  {
                    goto LABEL_687;
                  }

LABEL_596:
                  v254 = (*(v350 + 16) >> 2) & 1;
                }

                else
                {
                  if (v350)
                  {
                    goto LABEL_596;
                  }

                  v254 = 1;
                }

LABEL_687:
                WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v252, v254, "Expected a ", 0xBuLL, v356, ", but got a ", 0xCuLL, v353, v350);
                v74 = *v353;
                if (*v353)
                {
                  v283 = v350;
                  v350 = 0;
                  if (v283 && atomic_fetch_add_explicit(v283, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v283, v8);
                  }

                  v284 = v356;
                  v356 = 0;
                  if (v284 && atomic_fetch_add_explicit(v284, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v284, v8);
                  }

                  v2 = v64 | ((*(a2 + 96) - v64) << 32);
                  goto LABEL_774;
                }
              }
            }
          }

LABEL_816:
          __break(0xC471u);
          JUMPOUT(0x22576F5CCLL);
        }
      }
    }

    if (v30 == 34)
    {
LABEL_109:
      WGSL::Parser<WGSL::Lexer<unsigned char>>::parseVariableWithAttributes(&v346, a2, &v326);
      if (v348)
      {
        if (v348 != 1)
        {
          goto LABEL_791;
        }

        v53 = v346;
        if (!v346)
        {
          *(a1 + 8) = v347;
          *a1 = 0;
          goto LABEL_34;
        }

        atomic_fetch_add_explicit(v346, 2u, memory_order_relaxed);
        *(a1 + 8) = v347;
        *a1 = v53;
        *(a1 + 24) = 1;
        if (atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) != 2)
        {
          goto LABEL_35;
        }

        goto LABEL_113;
      }

      if (*(a2 + 56) != 73)
      {
        *v353 = *(a2 + 56);
        v355 = 1;
        v9 = WGSL::toString();
        if (v355 == 1)
        {
          WGSL::toString();
          WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v322, 13, &v321, &v356, ", but got a ");
          v99 = v321;
          v321 = 0;
          if (v99 && atomic_fetch_add_explicit(v99, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v99, v98);
          }

          v100 = v322;
          v322 = 0;
          if (v100 && atomic_fetch_add_explicit(v100, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v100, v98);
          }

          v101 = v6 | ((*(a2 + 96) - v6) << 32);
          *a1 = v356;
          *(a1 + 8) = v5;
          *(a1 + 16) = v101;
          *(a1 + 24) = 1;
          std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v353, v98);
          goto LABEL_35;
        }

        goto LABEL_791;
      }

      *v353 = 73;
      *&v353[4] = *(a2 + 60);
      v355 = 0;
      while (1)
      {
        v77 = *(a2 + 36);
        v78 = (*(a2 + 40) + 1);
        *(a2 + 40) = v78;
        if (v77 <= v78)
        {
          __break(0xC471u);
          JUMPOUT(0x22576F554);
        }

        v79 = *(a2 + 24) + 32 * v78;
        v75 = *v79;
        *(a2 + 56) = *v79;
        *(a2 + 60) = *(v79 + 4);
        v80 = *v79;
        if (*v79 > 8u)
        {
          goto LABEL_160;
        }

        if (((1 << v80) & 0x38) != 0)
        {
          *(a2 + 80) = *(v79 + 24);
        }

        else if (((1 << v80) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v79 + 24);
        }

        else
        {
          if (v80 != 8)
          {
            goto LABEL_160;
          }

          *(a2 + 80) = 0;
          v81 = *(v79 + 24);
          if (v81)
          {
            atomic_fetch_add_explicit(v81, 2u, memory_order_relaxed);
            v82 = *(a2 + 80);
            *(a2 + 80) = v81;
            if (v82)
            {
              if (atomic_fetch_add_explicit(v82, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v82, v8);
              }
            }
          }
        }

        v75 = *(a2 + 56);
LABEL_160:
        v76 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v76;
        if (v75 != 82)
        {
          std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v353, v8);
          v111 = v346;
          goto LABEL_685;
        }
      }
    }

    if (v30 != 31)
    {
LABEL_131:
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v62 = v6 | ((*(a2 + 96) - v6) << 32);
      *a1 = *v353;
      *(a1 + 8) = v5;
      *(a1 + 16) = v62;
      goto LABEL_34;
    }

    v41 = *(a2 + 88);
    v42 = *(a2 + 96);
    while (1)
    {
      v45 = *(a2 + 36);
      v46 = (*(a2 + 40) + 1);
      *(a2 + 40) = v46;
      if (v45 <= v46)
      {
        __break(0xC471u);
        JUMPOUT(0x22576F534);
      }

      v47 = *(a2 + 24) + 32 * v46;
      v43 = *v47;
      *(a2 + 56) = *v47;
      *(a2 + 60) = *(v47 + 4);
      v48 = *v47;
      if (*v47 > 8u)
      {
        goto LABEL_89;
      }

      if (((1 << v48) & 0x38) != 0)
      {
        *(a2 + 80) = *(v47 + 24);
      }

      else if (((1 << v48) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v47 + 24);
      }

      else
      {
        if (v48 != 8)
        {
          goto LABEL_89;
        }

        *(a2 + 80) = 0;
        v49 = *(v47 + 24);
        if (v49)
        {
          atomic_fetch_add_explicit(v49, 2u, memory_order_relaxed);
          v50 = *(a2 + 80);
          *(a2 + 80) = v49;
          if (v50)
          {
            if (atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v50, v8);
            }
          }
        }
      }

      v43 = *(a2 + 56);
LABEL_89:
      v44 = *(a2 + 68);
      *(a2 + 88) = *(a2 + 60);
      *(a2 + 96) = v44;
      if (v43 != 82)
      {
        v9 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(&v346, a2);
        if (v349)
        {
          if (v349 != 1)
          {
            goto LABEL_791;
          }

          v73 = v346;
          if (v346)
          {
            atomic_fetch_add_explicit(v346, 2u, memory_order_relaxed);
          }

          v324 = v347;
          v323 = v73;
LABEL_669:
          v325 = 1;
LABEL_670:
          if (v349 != 255)
          {
            if (v349)
            {
              v9 = v346;
              v346 = 0;
              if (!v9)
              {
                goto LABEL_677;
              }
            }

            else
            {
              v9 = v348;
              v346 = off_2838D37C0;
              v348 = 0;
              if (!v9)
              {
                goto LABEL_677;
              }
            }

            if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              v9 = WTF::StringImpl::destroy(v9, v8);
            }
          }

LABEL_677:
          if (v325)
          {
            if (v325 != 1)
            {
              goto LABEL_791;
            }

            v281 = v323;
            if (v323)
            {
              atomic_fetch_add_explicit(v323, 2u, memory_order_relaxed);
              v282 = v325;
              *(a1 + 8) = v324;
              *a1 = v281;
              *(a1 + 24) = 1;
              if (v282 == 255)
              {
                goto LABEL_35;
              }

              v53 = v323;
              v323 = 0;
              if (!v53)
              {
                goto LABEL_35;
              }
            }

            else
            {
              *(a1 + 8) = v324;
              *a1 = 0;
              *(a1 + 24) = 1;
              v53 = v323;
              v323 = 0;
              if (!v53)
              {
                goto LABEL_35;
              }
            }

            if (atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) != 2)
            {
              goto LABEL_35;
            }

LABEL_113:
            WTF::StringImpl::destroy(v53, v8);
            goto LABEL_35;
          }

          v111 = v323;
LABEL_685:
          *a1 = v111;
          *(a1 + 24) = 0;
LABEL_35:
          if (v328 != 255)
          {
            v10 = v326;
            if (v328)
            {
              v326 = 0;
              if (v10)
              {
LABEL_38:
                if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) != 2)
                {
                  return;
                }

LABEL_621:
                WTF::StringImpl::destroy(v10, v8);
              }
            }

            else if (v326)
            {
              v326 = 0;
              LODWORD(v327) = 0;
              WTF::fastFree(v10, v8);
            }
          }

          return;
        }

        if (*(a2 + 56) == 43)
        {
          v102 = 2;
          while (1)
          {
            v105 = *(a2 + 36);
            v106 = (*(a2 + 40) + 1);
            *(a2 + 40) = v106;
            if (v105 <= v106)
            {
              __break(0xC471u);
              JUMPOUT(0x22576F584);
            }

            v107 = *(a2 + 24) + 32 * v106;
            v103 = *v107;
            *(a2 + 56) = *v107;
            *(a2 + 60) = *(v107 + 4);
            v108 = *v107;
            if (*v107 > 8u)
            {
              goto LABEL_216;
            }

            if (((1 << v108) & 0x38) != 0)
            {
              *(a2 + 80) = *(v107 + 24);
            }

            else if (((1 << v108) & 0xC4) != 0)
            {
              *(a2 + 80) = *(v107 + 24);
            }

            else
            {
              if (v108 != 8)
              {
                goto LABEL_216;
              }

              *(a2 + 80) = 0;
              v109 = *(v107 + 24);
              if (v109)
              {
                atomic_fetch_add_explicit(v109, 2u, memory_order_relaxed);
                v110 = *(a2 + 80);
                *(a2 + 80) = v109;
                if (v110)
                {
                  if (atomic_fetch_add_explicit(v110, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v110, v8);
                  }
                }
              }
            }

            v103 = *(a2 + 56);
LABEL_216:
            v104 = *(a2 + 68);
            *(a2 + 88) = *(a2 + 60);
            *(a2 + 96) = v104;
            if (v103 != 82)
            {
              v315 = v41;
              v313 = 0;
              v317 = 0;
              v339 = 0;
              v340 = 0;
              v338 = 0;
              v320 = v325;
              while (2)
              {
                if (*(a2 + 56) == 44)
                {
                  v224 = v42;
                  v223 = v315;
                  goto LABEL_624;
                }

                v129 = *(a2 + 88);
                v130 = *(a2 + 96);
                WGSL::Parser<WGSL::Lexer<unsigned char>>::parseAttributes(&v356, a2);
                if (v358)
                {
                  if (v358 != 1)
                  {
                    goto LABEL_791;
                  }

                  v9 = v356;
                  if (v356)
                  {
                    atomic_fetch_add_explicit(v356, 2u, memory_order_relaxed);
                  }

                  v344 = v357;
                  v343 = v9;
                  v345 = 1;
LABEL_343:
                  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    v9 = WTF::StringImpl::destroy(v9, v8);
                  }

                  goto LABEL_346;
                }

                v9 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(v353, a2);
                if (v355)
                {
                  if (v355 != 1)
                  {
                    goto LABEL_791;
                  }

                  v131 = *v353;
                  if (*v353)
                  {
                    atomic_fetch_add_explicit(*v353, 2u, memory_order_relaxed);
                  }

                  v344 = *&v353[8];
                  v343 = v131;
                  v345 = 1;
                  goto LABEL_334;
                }

                if (*(a2 + 56) != 47)
                {
                  WGSL::toString();
                  WGSL::toString();
                  if (v341)
                  {
                    v140 = *(v341 + 4);
                  }

                  else
                  {
                    v140 = 0;
                  }

                  if (v342)
                  {
                    v144 = *(v342 + 1);
                    if (v144 < 0)
                    {
                      goto LABEL_812;
                    }
                  }

                  else
                  {
                    v144 = 0;
                  }

                  v83 = __OFADD__(v144, 12);
                  v145 = v144 + 12;
                  v146 = v83;
                  if ((v140 & 0x80000000) == 0 && (v146 & 1) == 0)
                  {
                    v83 = __OFADD__(v140, v145);
                    v147 = v140 + v145;
                    if (!v83)
                    {
                      v148 = (v147 + 11);
                      if (!__OFADD__(v147, 11))
                      {
                        if (v341)
                        {
                          v149 = *(v341 + 16);
                          v150 = (v149 >> 2) & 1;
                          if (!v342 || (v149 & 4) == 0)
                          {
                            goto LABEL_326;
                          }

LABEL_324:
                          v150 = (*(v342 + 16) >> 2) & 1;
                        }

                        else
                        {
                          if (v342)
                          {
                            goto LABEL_324;
                          }

                          v150 = 1;
                        }

LABEL_326:
                        WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v148, v150, "Expected a ", 0xBuLL, v341, ", but got a ", 0xCuLL, &v350, v342);
                        v151 = v350;
                        if (v350)
                        {
                          v152 = v342;
                          v342 = 0;
                          if (v152 && atomic_fetch_add_explicit(v152, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v152, v8);
                          }

                          v9 = v341;
                          *&v341 = 0;
                          if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            v9 = WTF::StringImpl::destroy(v9, v8);
                          }

                          v153 = v130 | ((*(a2 + 96) - v130) << 32);
                          v343 = v151;
                          *&v344 = v129;
                          *(&v344 + 1) = v153;
                          v345 = 1;
                          goto LABEL_334;
                        }
                      }
                    }
                  }

LABEL_812:
                  __break(0xC471u);
                  JUMPOUT(0x22576F5ACLL);
                }

LABEL_284:
                v134 = *(a2 + 36);
                v135 = (*(a2 + 40) + 1);
                *(a2 + 40) = v135;
                if (v134 <= v135)
                {
                  __break(0xC471u);
                  JUMPOUT(0x22576F56CLL);
                }

                v136 = *(a2 + 24) + 32 * v135;
                v132 = *v136;
                *(a2 + 56) = *v136;
                *(a2 + 60) = *(v136 + 4);
                v137 = *v136;
                if (*v136 <= 8u)
                {
                  if (((1 << v137) & 0x38) != 0)
                  {
                    *(a2 + 80) = *(v136 + 24);
                    goto LABEL_282;
                  }

                  if (((1 << v137) & 0xC4) != 0)
                  {
                    *(a2 + 80) = *(v136 + 24);
                    goto LABEL_282;
                  }

                  if (v137 == 8)
                  {
                    *(a2 + 80) = 0;
                    v138 = *(v136 + 24);
                    if (v138)
                    {
                      atomic_fetch_add_explicit(v138, 2u, memory_order_relaxed);
                      v139 = *(a2 + 80);
                      *(a2 + 80) = v138;
                      if (v139)
                      {
                        if (atomic_fetch_add_explicit(v139, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v139, v8);
                        }
                      }
                    }

LABEL_282:
                    v132 = *(a2 + 56);
                  }
                }

                v133 = *(a2 + 68);
                *(a2 + 88) = *(a2 + 60);
                *(a2 + 96) = v133;
                if (v132 != 82)
                {
                  v9 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseTypeName(&v350, a2);
                  if (!v352)
                  {
                    v142 = *(a2 + 8);
                    v143 = *(a2 + 96) - v130;
                    *&v341 = v129;
                    *(&v341 + 1) = __PAIR64__(v143, v130);
                    WGSL::AST::Builder::construct<WGSL::AST::StructureMember,WGSL::SourceSpan,WGSL::AST::Identifier,std::reference_wrapper<WGSL::AST::Expression>,WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,void>(v142, &v341, v353, &v350, &v356);
                  }

                  if (v352 != 1)
                  {
                    goto LABEL_791;
                  }

                  v141 = v350;
                  if (v350)
                  {
                    atomic_fetch_add_explicit(v350, 2u, memory_order_relaxed);
                  }

                  v344 = v351;
                  v343 = v141;
                  v345 = 1;
                  if (v352)
                  {
                    if (v352 != 255)
                    {
                      v9 = v350;
                      v350 = 0;
                      if (v9)
                      {
                        if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          v9 = WTF::StringImpl::destroy(v9, v8);
                        }
                      }
                    }
                  }

LABEL_334:
                  if (v355 != 255)
                  {
                    if (v355)
                    {
                      v9 = *v353;
                      *v353 = 0;
                      if (!v9)
                      {
                        goto LABEL_341;
                      }
                    }

                    else
                    {
                      v9 = v354;
                      *v353 = off_2838D37C0;
                      v354 = 0;
                      if (!v9)
                      {
                        goto LABEL_341;
                      }
                    }

                    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      v9 = WTF::StringImpl::destroy(v9, v8);
                    }
                  }

LABEL_341:
                  if (v358 != 255)
                  {
                    v9 = v356;
                    if (v358)
                    {
                      goto LABEL_343;
                    }

                    if (v356)
                    {
                      v9 = WTF::fastFree(v356, v8);
                    }
                  }

LABEL_346:
                  if (!v345)
                  {
                    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v353, &v338, v343 + 6);
                    if (v353[16])
                    {
                      if (v317 == v340)
                      {
                        v155 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v339, v317 + 1, &v343);
                        v156 = HIDWORD(v340);
                        v313 = v339;
                        *(v339 + HIDWORD(v340)) = *v155;
                      }

                      else
                      {
                        *(v313 + v317) = v343;
                        v156 = HIDWORD(v340);
                      }

                      HIDWORD(v340) = v156 + 1;
                      v317 = v156 + 1;
                      if ((v156 + 1) < 0x400)
                      {
                        if (*(a2 + 56) != 48)
                        {
                          v154 = 7;
                          goto LABEL_383;
                        }

                        while (2)
                        {
                          v164 = *(a2 + 36);
                          v165 = (*(a2 + 40) + 1);
                          *(a2 + 40) = v165;
                          if (v164 <= v165)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x22576F574);
                          }

                          v166 = *(a2 + 24) + 32 * v165;
                          v162 = *v166;
                          *(a2 + 56) = *v166;
                          *(a2 + 60) = *(v166 + 4);
                          v167 = *v166;
                          if (*v166 <= 8u)
                          {
                            if (((1 << v167) & 0x38) != 0)
                            {
                              *(a2 + 80) = *(v166 + 24);
                              goto LABEL_370;
                            }

                            if (((1 << v167) & 0xC4) != 0)
                            {
                              *(a2 + 80) = *(v166 + 24);
                              goto LABEL_370;
                            }

                            if (v167 == 8)
                            {
                              *(a2 + 80) = 0;
                              v168 = *(v166 + 24);
                              if (v168)
                              {
                                atomic_fetch_add_explicit(v168, 2u, memory_order_relaxed);
                                v169 = *(a2 + 80);
                                *(a2 + 80) = v168;
                                if (v169)
                                {
                                  if (atomic_fetch_add_explicit(v169, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                  {
                                    WTF::StringImpl::destroy(v169, v8);
                                  }
                                }
                              }

LABEL_370:
                              v162 = *(a2 + 56);
                            }
                          }

                          v163 = *(a2 + 68);
                          *(a2 + 88) = *(a2 + 60);
                          *(a2 + 96) = v163;
                          if (v162 != 82)
                          {
                            v154 = 0;
                            goto LABEL_383;
                          }

                          continue;
                        }
                      }

                      WTF::String::number(&v331, 0x3FF);
                      WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("struct cannot have more than ", 30, &v331, " members", 9, &v356);
                      v171 = v42 | ((*(a2 + 96) - v42) << 32);
                      v102 = v356;
                      *&v324 = v315;
                      *(&v324 + 1) = v171;
                      v356 = 0;
                      v161 = v331;
                      v331 = 0;
                      if (!v161)
                      {
LABEL_364:
                        v320 = 1;
                        v154 = 1;
                        goto LABEL_383;
                      }
                    }

                    else
                    {
                      v336 = *(v343 + 2);
                      v335 = off_2838D37C0;
                      v157 = *(v343 + 6);
                      if (v157)
                      {
                        atomic_fetch_add_explicit(v157, 2u, memory_order_relaxed);
                      }

                      v337 = v157;
                      v333 = v347;
                      v332 = off_2838D37C0;
                      v158 = v348;
                      if (v348)
                      {
                        atomic_fetch_add_explicit(v348, 2u, memory_order_relaxed);
                        v157 = v337;
                      }

                      v334 = v158;
                      WTF::makeString<WTF::ASCIILiteral,WGSL::AST::Identifier,WTF::ASCIILiteral,WGSL::AST::Identifier,char>(&v356, v157, v158);
                      v159 = v42 | ((*(a2 + 96) - v42) << 32);
                      v102 = v356;
                      *&v324 = v315;
                      *(&v324 + 1) = v159;
                      v160 = v334;
                      v332 = off_2838D37C0;
                      v334 = 0;
                      if (v160 && atomic_fetch_add_explicit(v160, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v160, v8);
                      }

                      v161 = v337;
                      v335 = off_2838D37C0;
                      v337 = 0;
                      if (!v161)
                      {
                        goto LABEL_364;
                      }
                    }

                    if (atomic_fetch_add_explicit(v161, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v161, v8);
                    }

                    goto LABEL_364;
                  }

                  if (v345 != 1)
                  {
                    goto LABEL_791;
                  }

                  v102 = v343;
                  if (v343)
                  {
                    atomic_fetch_add_explicit(v343, 2u, memory_order_relaxed);
                  }

                  v324 = v344;
                  v320 = 1;
                  v154 = 1;
LABEL_383:
                  if (v345)
                  {
                    if (v345 != 255)
                    {
                      v170 = v343;
                      v343 = 0;
                      if (v170)
                      {
                        if (atomic_fetch_add_explicit(v170, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v170, v8);
                        }
                      }
                    }
                  }

                  if (v154)
                  {
                    v224 = v42;
                    v223 = v315;
                    if (v154 != 7)
                    {
                      v325 = v320;
                      v323 = v102;
                      goto LABEL_752;
                    }

LABEL_624:
                    v325 = v320;
                    v323 = v102;
                    if (!v317)
                    {
                      WTF::StringImpl::createWithoutCopyingNonEmpty();
                      v271 = v224 | ((*(a2 + 96) - v224) << 32);
                      goto LABEL_751;
                    }

                    if (*(a2 + 56) == 44)
                    {
                      while (1)
                      {
                        v261 = *(a2 + 36);
                        v262 = (*(a2 + 40) + 1);
                        *(a2 + 40) = v262;
                        if (v261 <= v262)
                        {
                          __break(0xC471u);
                          JUMPOUT(0x22576F5BCLL);
                        }

                        v263 = *(a2 + 24) + 32 * v262;
                        v259 = *v263;
                        *(a2 + 56) = *v263;
                        *(a2 + 60) = *(v263 + 4);
                        v264 = *v263;
                        if (*v263 <= 8u)
                        {
                          if (((1 << v264) & 0x38) != 0)
                          {
                            *(a2 + 80) = *(v263 + 24);
                          }

                          else if (((1 << v264) & 0xC4) != 0)
                          {
                            *(a2 + 80) = *(v263 + 24);
                          }

                          else
                          {
                            if (v264 != 8)
                            {
                              goto LABEL_629;
                            }

                            *(a2 + 80) = 0;
                            v265 = *(v263 + 24);
                            if (v265)
                            {
                              atomic_fetch_add_explicit(v265, 2u, memory_order_relaxed);
                              v266 = *(a2 + 80);
                              *(a2 + 80) = v265;
                              if (v266)
                              {
                                if (atomic_fetch_add_explicit(v266, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                {
                                  WTF::StringImpl::destroy(v266, v8);
                                }
                              }
                            }
                          }

                          v259 = *(a2 + 56);
                        }

LABEL_629:
                        v260 = *(a2 + 68);
                        *(a2 + 88) = *(a2 + 60);
                        *(a2 + 96) = v260;
                        if (v259 != 82)
                        {
                          v273 = *(a2 + 8);
                          *v353 = v223;
                          *&v353[8] = v224;
                          *&v353[12] = v260 - v224;
                          LOBYTE(v356) = 0;
                          WGSL::AST::Builder::construct<WGSL::AST::Structure,WGSL::SourceSpan,WGSL::AST::Identifier,WTF::ReferenceWrapperVector<WGSL::AST::StructureMember,0ul>,WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,WGSL::AST::StructureRole,void>(v273, v353, &v346, &v339, &v326, &v356);
                        }
                      }
                    }

                    WGSL::toString();
                    WGSL::toString();
                    if (v356)
                    {
                      v272 = v356[1];
                    }

                    else
                    {
                      v272 = 0;
                    }

                    if (v350)
                    {
                      v288 = v350[1];
                      if (v288 < 0)
                      {
                        goto LABEL_817;
                      }
                    }

                    else
                    {
                      v288 = 0;
                    }

                    v83 = __OFADD__(v288, 12);
                    v289 = v288 + 12;
                    v290 = v83;
                    if ((v272 & 0x80000000) == 0 && (v290 & 1) == 0)
                    {
                      v83 = __OFADD__(v272, v289);
                      v291 = v272 + v289;
                      if (!v83)
                      {
                        v292 = (v291 + 11);
                        if (!__OFADD__(v291, 11))
                        {
                          if (v356)
                          {
                            v293 = v356[4];
                            v294 = (v293 >> 2) & 1;
                            if (!v350 || (v293 & 4) == 0)
                            {
LABEL_743:
                              WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v292, v294, "Expected a ", 0xBuLL, v356, ", but got a ", 0xCuLL, v353, v350);
                              v303 = *v353;
                              if (*v353)
                              {
                                v304 = v350;
                                v350 = 0;
                                if (v304 && atomic_fetch_add_explicit(v304, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                {
                                  WTF::StringImpl::destroy(v304, v8);
                                }

                                v305 = v356;
                                v356 = 0;
                                if (v305 && atomic_fetch_add_explicit(v305, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                {
                                  WTF::StringImpl::destroy(v305, v8);
                                }

                                v271 = v224 | ((*(a2 + 96) - v224) << 32);
                                v323 = v303;
LABEL_751:
                                *&v324 = v223;
                                *(&v324 + 1) = v271;
                                v325 = 1;
LABEL_752:
                                v306 = v338;
                                if (v338)
                                {
                                  v307 = *(v338 - 1);
                                  if (v307)
                                  {
                                    v308 = v338;
                                    do
                                    {
                                      v309 = *v308;
                                      if (*v308 != -1)
                                      {
                                        *v308 = 0;
                                        if (v309)
                                        {
                                          if (atomic_fetch_add_explicit(v309, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                          {
                                            WTF::StringImpl::destroy(v309, v8);
                                          }
                                        }
                                      }

                                      ++v308;
                                      --v307;
                                    }

                                    while (v307);
                                  }

                                  WTF::fastFree((v306 - 16), v8);
                                }

                                v9 = v339;
                                if (v339)
                                {
                                  v339 = 0;
                                  LODWORD(v340) = 0;
                                  v9 = WTF::fastFree(v9, v8);
                                }

                                goto LABEL_670;
                              }

                              goto LABEL_817;
                            }
                          }

                          else if (!v350)
                          {
                            v294 = 1;
                            goto LABEL_743;
                          }

                          v294 = (*(v350 + 16) >> 2) & 1;
                          goto LABEL_743;
                        }
                      }
                    }

LABEL_817:
                    __break(0xC471u);
                    JUMPOUT(0x22576F5D4);
                  }

                  continue;
                }

                goto LABEL_284;
              }
            }
          }
        }

        WGSL::toString();
        WGSL::toString();
        if (v356)
        {
          v127 = v356[1];
        }

        else
        {
          v127 = 0;
        }

        if (v350)
        {
          v241 = v350[1];
          if (v241 < 0)
          {
            goto LABEL_815;
          }
        }

        else
        {
          v241 = 0;
        }

        v83 = __OFADD__(v241, 12);
        v242 = v241 + 12;
        v243 = v83;
        if ((v127 & 0x80000000) == 0 && (v243 & 1) == 0)
        {
          v83 = __OFADD__(v127, v242);
          v244 = v127 + v242;
          if (!v83)
          {
            v245 = (v244 + 11);
            if (!__OFADD__(v244, 11))
            {
              if (v356)
              {
                v246 = v356[4];
                v247 = (v246 >> 2) & 1;
                if (!v350 || (v246 & 4) == 0)
                {
                  goto LABEL_661;
                }

LABEL_594:
                v247 = (*(v350 + 16) >> 2) & 1;
              }

              else
              {
                if (v350)
                {
                  goto LABEL_594;
                }

                v247 = 1;
              }

LABEL_661:
              WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v245, v247, "Expected a ", 0xBuLL, v356, ", but got a ", 0xCuLL, v353, v350);
              v278 = *v353;
              if (*v353)
              {
                v279 = v350;
                v350 = 0;
                if (v279 && atomic_fetch_add_explicit(v279, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v279, v8);
                }

                v9 = v356;
                v356 = 0;
                if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  v9 = WTF::StringImpl::destroy(v9, v8);
                }

                v280 = v42 | ((*(a2 + 96) - v42) << 32);
                v323 = v278;
                *&v324 = v41;
                *(&v324 + 1) = v280;
                goto LABEL_669;
              }
            }
          }
        }

LABEL_815:
        __break(0xC471u);
        JUMPOUT(0x22576F5C4);
      }
    }
  }

  do
  {
    v13 = *(a2 + 36);
    v14 = (*(a2 + 40) + 1);
    *(a2 + 40) = v14;
    if (v13 <= v14)
    {
      __break(0xC471u);
      goto LABEL_819;
    }

    v15 = *(a2 + 24) + 32 * v14;
    v11 = *v15;
    *(a2 + 56) = *v15;
    *(a2 + 60) = *(v15 + 4);
    v16 = *v15;
    if (*v15 <= 8u)
    {
      if (((1 << v16) & 0x38) != 0)
      {
        *(a2 + 80) = *(v15 + 24);
LABEL_17:
        v11 = *(a2 + 56);
        goto LABEL_18;
      }

      if (((1 << v16) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v15 + 24);
        goto LABEL_17;
      }

      if (v16 == 8)
      {
        *(a2 + 80) = 0;
        v17 = *(v15 + 24);
        if (v17)
        {
          atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
          v18 = *(a2 + 80);
          *(a2 + 80) = v17;
          if (v18)
          {
            if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v18, a2);
            }
          }
        }

        goto LABEL_17;
      }
    }

LABEL_18:
    v12 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v12;
  }

  while (v11 == 82);
  v9 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(v353, a2);
  if (v355)
  {
    if (v355 != 1)
    {
      goto LABEL_791;
    }

    v20 = *v353;
    if (*v353)
    {
      atomic_fetch_add_explicit(*v353, 2u, memory_order_relaxed);
    }

    v5 = *&v353[8];
    v21 = *&v353[16];
    goto LABEL_611;
  }

  if (*(a2 + 56) != 49)
  {
    WGSL::toString();
    WGSL::toString();
    if (v356)
    {
      v51 = v356[1];
      if (v350)
      {
        goto LABEL_102;
      }
    }

    else
    {
      v51 = 0;
      if (v350)
      {
LABEL_102:
        v52 = v350[1];
        if (v52 < 0)
        {
          goto LABEL_803;
        }

LABEL_188:
        v83 = __OFADD__(v52, 12);
        v90 = v52 + 12;
        v91 = v83;
        if (v51 < 0)
        {
          goto LABEL_803;
        }

        if (v91)
        {
          goto LABEL_803;
        }

        v83 = __OFADD__(v51, v90);
        v92 = v51 + v90;
        if (v83)
        {
          goto LABEL_803;
        }

        v93 = (v92 + 11);
        if (__OFADD__(v92, 11))
        {
          goto LABEL_803;
        }

        if (v356)
        {
          v94 = v356[4];
          v95 = (v94 >> 2) & 1;
          if (!v350 || (v94 & 4) == 0)
          {
LABEL_254:
            WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v93, v95, "Expected a ", 0xBuLL, v356, ", but got a ", 0xCuLL, &v346, v350);
            v20 = v346;
            if (v346)
            {
              v125 = v350;
              v350 = 0;
              if (v125 && atomic_fetch_add_explicit(v125, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v125, v8);
              }

              v126 = v356;
              v356 = 0;
              if (v126 && atomic_fetch_add_explicit(v126, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v126, v8);
              }

              v21 = v6 | ((*(a2 + 96) - v6) << 32);
              goto LABEL_611;
            }

LABEL_803:
            __break(0xC471u);
            JUMPOUT(0x22576F564);
          }
        }

        else if (!v350)
        {
          v95 = 1;
          goto LABEL_254;
        }

        v95 = (*(v350 + 16) >> 2) & 1;
        goto LABEL_254;
      }
    }

    v52 = 0;
    goto LABEL_188;
  }

  while (2)
  {
    v33 = *(a2 + 36);
    v34 = (*(a2 + 40) + 1);
    *(a2 + 40) = v34;
    if (v33 <= v34)
    {
      __break(0xC471u);
      JUMPOUT(0x22576F52CLL);
    }

    v35 = *(a2 + 24) + 32 * v34;
    v31 = *v35;
    *(a2 + 56) = *v35;
    *(a2 + 60) = *(v35 + 4);
    v36 = *v35;
    if (*v35 <= 8u)
    {
      if (((1 << v36) & 0x38) != 0)
      {
        *(a2 + 80) = *(v35 + 24);
        goto LABEL_68;
      }

      if (((1 << v36) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v35 + 24);
        goto LABEL_68;
      }

      if (v36 == 8)
      {
        *(a2 + 80) = 0;
        v37 = *(v35 + 24);
        if (v37)
        {
          atomic_fetch_add_explicit(v37, 2u, memory_order_relaxed);
          v38 = *(a2 + 80);
          *(a2 + 80) = v37;
          if (v38)
          {
            if (atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v38, v8);
            }
          }
        }

LABEL_68:
        v31 = *(a2 + 56);
      }
    }

    v32 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v32;
    if (v31 == 82)
    {
      continue;
    }

    break;
  }

  v9 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseTypeName(&v346, a2);
  if (!v348)
  {
    if (*(a2 + 56) == 73)
    {
      while (1)
      {
        v56 = *(a2 + 36);
        v57 = (*(a2 + 40) + 1);
        *(a2 + 40) = v57;
        if (v56 <= v57)
        {
          __break(0xC471u);
          JUMPOUT(0x22576F54CLL);
        }

        v58 = *(a2 + 24) + 32 * v57;
        v54 = *v58;
        *(a2 + 56) = *v58;
        *(a2 + 60) = *(v58 + 4);
        v59 = *v58;
        if (*v58 <= 8u)
        {
          if (((1 << v59) & 0x38) != 0)
          {
            *(a2 + 80) = *(v58 + 24);
          }

          else if (((1 << v59) & 0xC4) != 0)
          {
            *(a2 + 80) = *(v58 + 24);
          }

          else
          {
            if (v59 != 8)
            {
              goto LABEL_120;
            }

            *(a2 + 80) = 0;
            v60 = *(v58 + 24);
            if (v60)
            {
              atomic_fetch_add_explicit(v60, 2u, memory_order_relaxed);
              v61 = *(a2 + 80);
              *(a2 + 80) = v60;
              if (v61)
              {
                if (atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v61, v8);
                }
              }
            }
          }

          v54 = *(a2 + 56);
        }

LABEL_120:
        v55 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v55;
        if (v54 != 82)
        {
          v97 = *(a2 + 8);
          v356 = v5;
          LODWORD(v357) = v6;
          DWORD1(v357) = v55 - v6;
          WGSL::AST::Builder::construct<WGSL::AST::TypeAlias,WGSL::SourceSpan,WGSL::AST::Identifier,std::reference_wrapper<WGSL::AST::Expression>,void>(v97, &v356, v353, &v346);
        }
      }
    }

    WGSL::toString();
    WGSL::toString();
    if (v350)
    {
      v96 = v350[1];
    }

    else
    {
      v96 = 0;
    }

    if (v343)
    {
      v216 = *(v343 + 1);
      if (v216 < 0)
      {
        goto LABEL_810;
      }
    }

    else
    {
      v216 = 0;
    }

    v83 = __OFADD__(v216, 12);
    v217 = v216 + 12;
    v218 = v83;
    if (v96 < 0 || (v218 & 1) != 0 || (v83 = __OFADD__(v96, v217), v219 = v96 + v217, v83) || (v220 = (v219 + 11), __OFADD__(v219, 11)))
    {
LABEL_810:
      __break(0xC471u);
      JUMPOUT(0x22576F59CLL);
    }

    if (v350)
    {
      v221 = v350[4];
      v222 = (v221 >> 2) & 1;
      if (!v343 || (v221 & 4) == 0)
      {
LABEL_598:
        WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v220, v222, "Expected a ", 0xBuLL, v350, ", but got a ", 0xCuLL, &v356, v343);
        v20 = v356;
        if (v356)
        {
          v255 = v343;
          v343 = 0;
          if (v255 && atomic_fetch_add_explicit(v255, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v255, v8);
          }

          v256 = v350;
          v350 = 0;
          if (v256 && atomic_fetch_add_explicit(v256, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v256, v8);
          }

          v21 = v6 | ((*(a2 + 96) - v6) << 32);
          goto LABEL_606;
        }

        goto LABEL_810;
      }
    }

    else if (!v343)
    {
      v222 = 1;
      goto LABEL_598;
    }

    v222 = (*(v343 + 16) >> 2) & 1;
    goto LABEL_598;
  }

  if (v348 != 1)
  {
    goto LABEL_791;
  }

  v20 = v346;
  if (v346)
  {
    atomic_fetch_add_explicit(v346, 2u, memory_order_relaxed);
  }

  v21 = *(&v347 + 1);
  v5 = v347;
LABEL_606:
  if (v348)
  {
    if (v348 != 255)
    {
      v257 = v346;
      v346 = 0;
      if (v257)
      {
        if (atomic_fetch_add_explicit(v257, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v257, v8);
        }
      }
    }
  }

LABEL_611:
  if (v355 != 255)
  {
    if (v355)
    {
      v258 = *v353;
      *v353 = 0;
      if (!v258)
      {
        goto LABEL_618;
      }
    }

    else
    {
      v258 = v354;
      *v353 = off_2838D37C0;
      v354 = 0;
      if (!v258)
      {
        goto LABEL_618;
      }
    }

    if (atomic_fetch_add_explicit(v258, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v258, v8);
    }
  }

LABEL_618:
  if (!v20)
  {
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = v21;
    goto LABEL_252;
  }

  atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
  *a1 = v20;
  *(a1 + 8) = v5;
  *(a1 + 16) = v21;
  *(a1 + 24) = 1;
  if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v10 = v20;
    goto LABEL_621;
  }
}

WTF::StringImpl *WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(WTF::StringImpl *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 88);
  v5 = *(a2 + 96);
  if (*(a2 + 56) == 8)
  {
    v6 = *(a2 + 80);
    if (v6)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    }

    while (1)
    {
      v9 = *(a2 + 36);
      v10 = (*(a2 + 40) + 1);
      *(a2 + 40) = v10;
      if (v9 <= v10)
      {
        __break(0xC471u);
        goto LABEL_53;
      }

      v11 = *(a2 + 24) + 32 * v10;
      v7 = *v11;
      *(a2 + 56) = *v11;
      *(a2 + 60) = *(v11 + 4);
      v12 = *v11;
      if (*v11 <= 8u)
      {
        if (((1 << v12) & 0x38) != 0)
        {
          *(a2 + 80) = *(v11 + 24);
        }

        else if (((1 << v12) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v11 + 24);
        }

        else
        {
          if (v12 != 8)
          {
            goto LABEL_7;
          }

          *(a2 + 80) = 0;
          v13 = *(v11 + 24);
          if (v13)
          {
            atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
            result = *(a2 + 80);
            *(a2 + 80) = v13;
            if (result)
            {
              if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, a2);
              }
            }
          }
        }

        v7 = *(a2 + 56);
      }

LABEL_7:
      v8 = *(a2 + 68);
      *(a2 + 88) = *(a2 + 60);
      *(a2 + 96) = v8;
      if (v7 != 82)
      {
        v19 = 0;
        *(v3 + 1) = v4;
        *(v3 + 2) = v5 | ((v8 - v5) << 32);
        *v3 = off_2838D37C0;
        *(v3 + 3) = v6;
        goto LABEL_50;
      }
    }
  }

  WGSL::toString();
  WGSL::toString();
  if (!v28)
  {
    v15 = 0;
    if (v27)
    {
      goto LABEL_20;
    }

LABEL_28:
    v17 = 12;
    v18 = v14;
    if (v15 < 0)
    {
      goto LABEL_52;
    }

    goto LABEL_32;
  }

  v15 = *(v28 + 1);
  if (!v27)
  {
    goto LABEL_28;
  }

LABEL_20:
  v16 = *(v27 + 1);
  if (v16 < 0)
  {
    goto LABEL_52;
  }

  v14 = __OFADD__(v16, 12);
  v17 = v16 + 12;
  v18 = v14;
  if (v15 < 0)
  {
    goto LABEL_52;
  }

LABEL_32:
  if (v18)
  {
    goto LABEL_52;
  }

  v14 = __OFADD__(v15, v17);
  v20 = v15 + v17;
  if (v14)
  {
    goto LABEL_52;
  }

  v21 = (v20 + 11);
  if (__OFADD__(v20, 11))
  {
    goto LABEL_52;
  }

  if (!v28)
  {
    if (!v27)
    {
      v23 = 1;
      goto LABEL_42;
    }

LABEL_40:
    v23 = (*(v27 + 16) >> 2) & 1;
    goto LABEL_42;
  }

  v22 = *(v28 + 4);
  v23 = (v22 >> 2) & 1;
  if (v27 && (v22 & 4) != 0)
  {
    goto LABEL_40;
  }

LABEL_42:
  WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v21, v23, "Expected a ", 0xBuLL, v28, ", but got a ", 0xCuLL, &v29, v27);
  v25 = v29;
  if (!v29)
  {
LABEL_52:
    __break(0xC471u);
LABEL_53:
    JUMPOUT(0x22576F86CLL);
  }

  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v27, v24);
  }

  result = v28;
  if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v28, v24);
  }

  v26 = v5 | ((*(a2 + 96) - v5) << 32);
  *v3 = v25;
  *(v3 + 1) = v4;
  *(v3 + 2) = v26;
  v19 = 1;
LABEL_50:
  *(v3 + 32) = v19;
  return result;
}

uint64_t std::experimental::fundamentals_v3::expected<WGSL::AST::Identifier,WGSL::CompilationMessage>::~expected(uint64_t result, WTF::StringImpl *a2)
{
  if (*(result + 32) != 255)
  {
    if (*(result + 32))
    {
      v2 = *result;
      *result = 0;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    else
    {
      *result = off_2838D37C0;
      v2 = *(result + 24);
      *(result + 24) = 0;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v3 = result;
      WTF::StringImpl::destroy(v2, a2);
      result = v3;
    }
  }

LABEL_8:
  *(result + 32) = -1;
  return result;
}

uint64_t std::experimental::fundamentals_v3::expected<WGSL::AST::Diagnostic,WGSL::CompilationMessage>::expected(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = &unk_2838D3EF8;
  *(result + 16) = *(a2 + 16);
  *(result + 8) = off_2838D37C0;
  v2 = *(a2 + 32);
  *(a2 + 32) = 0;
  *(result + 40) = 0;
  *(result + 32) = v2;
  *(result + 72) = 0;
  if (*(a2 + 72) == 1)
  {
    *(result + 40) = &unk_2838D3EF8;
    *(result + 48) = *(a2 + 48);
    *(result + 40) = off_2838D37C0;
    v3 = *(a2 + 64);
    *(a2 + 64) = 0;
    *(result + 64) = v3;
    *(result + 72) = 1;
  }

  *(result + 80) = 0;
  return result;
}

void WGSL::AST::Diagnostic::~Diagnostic(WGSL::AST::Diagnostic *this, WTF::StringImpl *a2)
{
  if (*(this + 72) == 1)
  {
    *(this + 5) = off_2838D37C0;
    v2 = *(this + 8);
    *(this + 8) = 0;
    if (v2)
    {
      if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v3 = this;
        WTF::StringImpl::destroy(v2, a2);
        this = v3;
      }
    }
  }

  *(this + 1) = off_2838D37C0;
  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }
}

uint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X2>, size_t a4@<X3>, uint64_t a5@<X4>, unsigned __int8 *a6@<X5>, size_t a7@<X6>, void *a8@<X8>, uint64_t a9@<X7>)
{
  v9 = result;
  if (!a2)
  {
    if (!result)
    {
      goto LABEL_11;
    }

    if (result > 0x7FFFFFEF)
    {
      goto LABEL_10;
    }

    v24 = result;
    v31 = a8;
    result = WTF::tryFastCompactMalloc(&v66, (2 * result + 20));
    v17 = v66;
    if (!v66)
    {
LABEL_31:
      a8 = v31;
      goto LABEL_36;
    }

    v32 = v66 + 5;
    *v66 = 2;
    v17[1] = v24;
    *(v17 + 1) = v17 + 5;
    v17[4] = 0;
    v33 = v17 + 2 * a4 + 20;
    if (a4 < 0x40)
    {
      v34 = (v17 + 5);
      v37 = a9;
      v38 = a7;
      v39 = a6;
      v40 = a5;
      v41 = a3;
    }

    else
    {
      v34 = v32 + 2 * (a4 & 0x7FFFFFFFFFFFFFC0);
      v35 = 0uLL;
      v36 = (v17 + 5);
      v37 = a9;
      v38 = a7;
      v39 = a6;
      v40 = a5;
      v41 = a3;
      do
      {
        v67.val[0] = *v41;
        v42 = *(v41 + 1);
        v68.val[0] = *(v41 + 2);
        v43 = *(v41 + 3);
        v41 += 64;
        v44 = v43;
        v68.val[1] = 0uLL;
        v69.val[0] = v42;
        v67.val[1] = 0uLL;
        v45 = v36;
        vst2q_s8(v45, v67);
        v45 += 32;
        v69.val[1] = 0uLL;
        vst2q_s8(v45, v69);
        v46 = v36 + 64;
        vst2q_s8(v46, v68);
        v47 = v36 + 96;
        vst2q_s8(v47, *(&v35 - 1));
        v36 += 128;
      }

      while (v36 != v34);
    }

    if (v34 == v33)
    {
LABEL_29:
      if (v9 < a4)
      {
        goto LABEL_46;
      }

      result = WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>((v32 + 2 * a4), v9 - a4, v40, v39, v38, v37);
      goto LABEL_31;
    }

    v48 = v17 + 2 * a4 - v34 + 18;
    if (v48 < 0xE || (v34 < &v41[(v48 >> 1) + 1] ? (v49 = v41 >= (v48 & 0xFFFFFFFFFFFFFFFELL) + v34 + 2) : (v49 = 1), !v49))
    {
      v52 = v41;
      v53 = v34;
      goto LABEL_28;
    }

    v50 = (v48 >> 1) + 1;
    if (v48 >= 0x3E)
    {
      v51 = v50 & 0xFFFFFFFFFFFFFFE0;
      v55 = (v34 + 32);
      v56 = (v41 + 16);
      v57 = v50 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v58 = *v56[-2].i8;
        v59 = vmovl_u8(*v56);
        v60 = vmovl_high_u8(*v56->i8);
        v55[-2] = vmovl_u8(*v58.i8);
        v55[-1] = vmovl_high_u8(v58);
        *v55 = v59;
        v55[1] = v60;
        v55 += 4;
        v56 += 4;
        v57 -= 32;
      }

      while (v57);
      if (v50 == v51)
      {
        goto LABEL_29;
      }

      if ((v50 & 0x18) == 0)
      {
        v53 = (v34 + 2 * v51);
        v52 = &v41[v51];
        do
        {
LABEL_28:
          v54 = *v52++;
          *v53++ = v54;
        }

        while (v53 != v33);
        goto LABEL_29;
      }
    }

    else
    {
      v51 = 0;
    }

    v52 = &v41[v50 & 0xFFFFFFFFFFFFFFF8];
    v53 = (v34 + 2 * (v50 & 0xFFFFFFFFFFFFFFF8));
    v61 = (v34 + 2 * v51);
    v62 = &v41[v51];
    v63 = v51 - (v50 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v64 = *v62++;
      *v61++ = vmovl_u8(v64);
      v63 += 8;
    }

    while (v63);
    if (v50 == (v50 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (!result)
  {
LABEL_11:
    v17 = MEMORY[0x277CD4668];
    atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    goto LABEL_36;
  }

  if ((result & 0x80000000) != 0)
  {
LABEL_10:
    v17 = 0;
LABEL_36:
    *a8 = v17;
    return result;
  }

  v10 = result;
  v65 = a8;
  result = WTF::tryFastCompactMalloc(&v66, (result + 20));
  v17 = v66;
  if (!v66)
  {
LABEL_35:
    a8 = v65;
    goto LABEL_36;
  }

  v18 = v66 + 5;
  *v66 = 2;
  v17[1] = v10;
  *(v17 + 1) = v17 + 5;
  v17[4] = 4;
  v19 = a9;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  if (a4)
  {
    if (a4 == 1)
    {
      *v18 = *a3;
    }

    else
    {
      result = memcpy(v17 + 5, a3, a4);
      v23 = a4;
      v22 = a5;
      v21 = a6;
      v20 = a7;
      v19 = a9;
    }
  }

  if (v9 >= v23)
  {
    result = WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(&v18[v23], v9 - v23, v22, v21, v20, v19);
    goto LABEL_35;
  }

LABEL_46:
  __break(1u);
  return result;
}

int8x16_t *WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(int8x16_t *__dst, unint64_t a2, uint64_t a3, _BYTE *__src, size_t __n, uint64_t a6)
{
  v8 = __dst;
  if (!a3)
  {
    v14 = 0;
    goto LABEL_26;
  }

  v9 = *(a3 + 8);
  v10 = *(a3 + 4);
  if ((*(a3 + 16) & 4) == 0)
  {
    v11 = (__dst + v10);
    if (v10 < 0x10)
    {
      v12 = __dst;
      if (__dst == v11)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v12 = __dst;
      do
      {
        v13 = vld2q_s8(v9);
        v9 += 32;
        *v12++ = v13;
      }

      while (v12 != &__dst->i8[v10 & 0xFFFFFFF0]);
      if (v12 == v11)
      {
        goto LABEL_25;
      }
    }

    v15 = &__dst->i8[v10];
    v16 = &__dst->i8[v10] - v12;
    if (v16 < 4 || (v12 < &v9[2 * v16] ? (v17 = v9 >= v15) : (v17 = 1), !v17))
    {
      v19 = v12;
      v20 = v9;
      goto LABEL_22;
    }

    if (v16 >= 0x20)
    {
      v18 = v16 & 0xFFFFFFFFFFFFFFE0;
      v39 = (v9 + 32);
      v40 = v12 + 1;
      v41 = v16 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v43 = v39[-2];
        v42 = v39[-1];
        v45 = *v39;
        v44 = v39[1];
        v39 += 4;
        v40[-1] = vuzp1q_s8(v43, v42);
        *v40 = vuzp1q_s8(v45, v44);
        v40 += 2;
        v41 -= 32;
      }

      while (v41);
      if (v16 == v18)
      {
        goto LABEL_25;
      }

      if ((v16 & 0x1C) == 0)
      {
        v20 = &v9[2 * v18];
        v19 = (v12 + v18);
        goto LABEL_22;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = (v12 + (v16 & 0xFFFFFFFFFFFFFFFCLL));
    v20 = &v9[2 * (v16 & 0xFFFFFFFFFFFFFFFCLL)];
    v46 = &v9[2 * v18];
    v47 = (v12->i32 + v18);
    v48 = v18 - (v16 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v49 = *v46++;
      *v47++ = vuzp1_s8(v49, v49).u32[0];
      v48 += 4;
    }

    while (v48);
    if (v16 == (v16 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_25;
    }

    do
    {
LABEL_22:
      v21 = *v20;
      v20 += 2;
      v19->i8[0] = v21;
      v19 = (v19 + 1);
    }

    while (v19 != v11);
    goto LABEL_25;
  }

  if (v10)
  {
    if (v10 == 1)
    {
      __dst->i8[0] = *v9;
    }

    else
    {
      v22 = a2;
      v23 = a3;
      v24 = __src;
      __dst = memcpy(__dst, *(a3 + 8), *(a3 + 4));
      a3 = v23;
      a2 = v22;
      __src = v24;
    }
  }

LABEL_25:
  v14 = *(a3 + 4);
  if (a2 < v14)
  {
LABEL_72:
    __break(1u);
    return __dst;
  }

LABEL_26:
  v25 = a2 - v14;
  v26 = &v8->i8[v14];
  if (__n)
  {
    if (__n == 1)
    {
      *v26 = *__src;
    }

    else
    {
      __dst = memcpy(&v8->i8[v14], __src, __n);
    }
  }

  if (v25 < __n)
  {
    goto LABEL_72;
  }

  if (!a6)
  {
    return __dst;
  }

  __dst = &v26[__n];
  v27 = *(a6 + 8);
  v28 = *(a6 + 4);
  if ((*(a6 + 16) & 4) != 0)
  {
    if (v28)
    {
      if (v28 == 1)
      {
        __dst->i8[0] = *v27;
      }

      else
      {

        return memcpy(__dst, v27, v28);
      }
    }
  }

  else
  {
    v29 = (__dst + v28);
    if (v28 >= 0x10)
    {
      v30 = (__dst + (v28 & 0xFFFFFFF0));
      do
      {
        v31 = vld2q_s8(v27);
        v27 += 32;
        *__dst++ = v31;
      }

      while (__dst != v30);
    }

    if (__dst != v29)
    {
      v32 = &v8->i8[v14 + v28 + __n];
      v33 = v32 - __dst;
      if ((v32 - __dst) < 4 || (__dst < &v27[2 * v33] ? (v34 = v27 >= v32) : (v34 = 1), !v34))
      {
        v36 = __dst;
        v37 = v27;
        goto LABEL_49;
      }

      if (v33 >= 0x20)
      {
        v35 = v33 & 0xFFFFFFFFFFFFFFE0;
        v50 = (v27 + 32);
        v51 = __dst + 1;
        v52 = v33 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v54 = v50[-2];
          v53 = v50[-1];
          v56 = *v50;
          v55 = v50[1];
          v50 += 4;
          v51[-1] = vuzp1q_s8(v54, v53);
          *v51 = vuzp1q_s8(v56, v55);
          v51 += 2;
          v52 -= 32;
        }

        while (v52);
        if (v33 == v35)
        {
          return __dst;
        }

        if ((v33 & 0x1C) == 0)
        {
          v37 = &v27[2 * v35];
          v36 = (__dst + v35);
          do
          {
LABEL_49:
            v38 = *v37;
            v37 += 2;
            v36->i8[0] = v38;
            v36 = (v36 + 1);
          }

          while (v36 != v29);
          return __dst;
        }
      }

      else
      {
        v35 = 0;
      }

      v36 = (__dst + (v33 & 0xFFFFFFFFFFFFFFFCLL));
      v37 = &v27[2 * (v33 & 0xFFFFFFFFFFFFFFFCLL)];
      v57 = &v27[2 * v35];
      v58 = (__dst->i32 + v35);
      v59 = v35 - (v33 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v60 = *v57++;
        *v58++ = vuzp1_s8(v60, v60).u32[0];
        v59 += 4;
      }

      while (v59);
      if (v33 != (v33 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_49;
      }
    }
  }

  return __dst;
}

uint16x8_t *WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(uint16x8_t *result, unint64_t a2, uint64_t a3, unsigned __int8 *a4, unint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    v8 = 0;
    goto LABEL_26;
  }

  v6 = *(a3 + 8);
  v7 = *(a3 + 4);
  if ((*(a3 + 16) & 4) != 0)
  {
    v9 = (result + 2 * v7);
    if (v7 < 0x40)
    {
      v10 = result;
      if (result == v9)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v10 = (result + 2 * (v7 & 0xFFFFFFC0));
      v11 = 0uLL;
      v12 = result;
      do
      {
        v100.val[0] = *v6;
        v13 = *(v6 + 16);
        v103.val[0] = *(v6 + 32);
        v14 = *(v6 + 48);
        v6 += 64;
        v15 = v14;
        v103.val[1] = 0uLL;
        v106.val[0] = v13;
        v100.val[1] = 0uLL;
        v16 = v12;
        vst2q_s8(v16, v100);
        v16 += 32;
        v106.val[1] = 0uLL;
        vst2q_s8(v16, v106);
        i8 = v12[4].i8;
        vst2q_s8(i8, v103);
        v18 = v12[6].i8;
        vst2q_s8(v18, *(&v11 - 1));
        v12 += 8;
      }

      while (v12 != v10);
      if (v10 == v9)
      {
        goto LABEL_25;
      }
    }

    v19 = v9 - v10 - 2;
    if (v19 < 0xE || (v10 < v6 + (v19 >> 1) + 1 ? (v20 = v6 >= v10->u64 + (v19 & 0xFFFFFFFFFFFFFFFELL) + 2) : (v20 = 1), !v20))
    {
      v23 = v6;
      v24 = v10;
      goto LABEL_22;
    }

    v21 = (v19 >> 1) + 1;
    if (v19 >= 0x3E)
    {
      v22 = v21 & 0xFFFFFFFFFFFFFFE0;
      v79 = v10 + 2;
      v80 = (v6 + 16);
      v81 = v21 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v82 = *v80[-2].i8;
        v83 = vmovl_u8(*v80);
        v84 = vmovl_high_u8(*v80->i8);
        v79[-2] = vmovl_u8(*v82.i8);
        v79[-1] = vmovl_high_u8(v82);
        *v79 = v83;
        v79[1] = v84;
        v79 += 4;
        v80 += 4;
        v81 -= 32;
      }

      while (v81);
      if (v21 == v22)
      {
        goto LABEL_25;
      }

      if ((v21 & 0x18) == 0)
      {
        v24 = (v10 + 2 * v22);
        v23 = (v6 + v22);
        goto LABEL_22;
      }
    }

    else
    {
      v22 = 0;
    }

    v23 = (v6 + (v21 & 0xFFFFFFFFFFFFFFF8));
    v24 = (v10 + 2 * (v21 & 0xFFFFFFFFFFFFFFF8));
    v85 = (v10 + 2 * v22);
    v86 = (v6 + v22);
    v87 = v22 - (v21 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v88 = *v86++;
      *v85++ = vmovl_u8(v88);
      v87 += 8;
    }

    while (v87);
    if (v21 == (v21 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_25;
    }

    do
    {
LABEL_22:
      v25 = *v23++;
      v24->i16[0] = v25;
      v24 = (v24 + 2);
    }

    while (v24 != v9);
    goto LABEL_25;
  }

  if (v7)
  {
    if (v7 == 1)
    {
      result->i16[0] = *v6;
    }

    else
    {
      v26 = result;
      v27 = a2;
      v28 = a3;
      v29 = a6;
      v30 = a5;
      v31 = a4;
      memcpy(result, *(a3 + 8), 2 * v7);
      a3 = v28;
      a2 = v27;
      result = v26;
      a4 = v31;
      a5 = v30;
      a6 = v29;
    }
  }

LABEL_25:
  v8 = *(a3 + 4);
  if (a2 < v8)
  {
LABEL_94:
    __break(1u);
    return result;
  }

LABEL_26:
  v32 = &result->i8[2 * v8];
  v33 = &v32[2 * a5];
  if (a5 < 0x40)
  {
    v34 = &result->i8[2 * v8];
    v43 = a2 - v8;
    if (v32 == v33)
    {
      goto LABEL_42;
    }

LABEL_32:
    v44 = result + 2 * a5 + 2 * v8 - v34 - 2;
    if (v44 < 0xE || (v34 < &a4[(v44 >> 1) + 1] ? (v45 = a4 >= &v34[(v44 & 0xFFFFFFFFFFFFFFFELL) + 2]) : (v45 = 1), !v45))
    {
      v48 = a4;
      v49 = v34;
      goto LABEL_41;
    }

    v46 = (v44 >> 1) + 1;
    if (v44 >= 0x3E)
    {
      v47 = v46 & 0xFFFFFFFFFFFFFFE0;
      v69 = (v34 + 32);
      v70 = (a4 + 16);
      v71 = v46 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v72 = *v70[-2].i8;
        v73 = vmovl_u8(*v70);
        v74 = vmovl_high_u8(*v70->i8);
        v69[-2] = vmovl_u8(*v72.i8);
        v69[-1] = vmovl_high_u8(v72);
        *v69 = v73;
        v69[1] = v74;
        v69 += 4;
        v70 += 4;
        v71 -= 32;
      }

      while (v71);
      if (v46 == v47)
      {
        goto LABEL_42;
      }

      if ((v46 & 0x18) == 0)
      {
        v49 = &v34[2 * v47];
        v48 = &a4[v47];
        goto LABEL_41;
      }
    }

    else
    {
      v47 = 0;
    }

    v48 = &a4[v46 & 0xFFFFFFFFFFFFFFF8];
    v49 = &v34[2 * (v46 & 0xFFFFFFFFFFFFFFF8)];
    v75 = &v34[2 * v47];
    v76 = &a4[v47];
    v77 = v47 - (v46 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v78 = *v76++;
      *v75++ = vmovl_u8(v78);
      v77 += 8;
    }

    while (v77);
    if (v46 == (v46 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_42;
    }

    do
    {
LABEL_41:
      v50 = *v48++;
      *v49 = v50;
      v49 += 2;
    }

    while (v49 != v33);
    goto LABEL_42;
  }

  v34 = &v32[2 * (a5 & 0x7FFFFFFFFFFFFFC0)];
  v35 = 0uLL;
  v36 = &result->i8[2 * v8];
  do
  {
    v101.val[0] = *a4;
    v37 = *(a4 + 1);
    v104.val[0] = *(a4 + 2);
    v38 = *(a4 + 3);
    a4 += 64;
    v39 = v38;
    v104.val[1] = 0uLL;
    v107.val[0] = v37;
    v101.val[1] = 0uLL;
    v40 = v36;
    vst2q_s8(v40, v101);
    v40 += 32;
    v107.val[1] = 0uLL;
    vst2q_s8(v40, v107);
    v41 = v36 + 64;
    vst2q_s8(v41, v104);
    v42 = v36 + 96;
    vst2q_s8(v42, *(&v35 - 1));
    v36 += 128;
  }

  while (v36 != v34);
  v43 = a2 - v8;
  if (v34 != v33)
  {
    goto LABEL_32;
  }

LABEL_42:
  if (v43 < a5)
  {
    goto LABEL_94;
  }

  if (!a6)
  {
    return result;
  }

  result = &v32[2 * a5];
  v51 = *(a6 + 8);
  v52 = *(a6 + 4);
  if ((*(a6 + 16) & 4) == 0)
  {
    if (v52)
    {
      if (v52 == 1)
      {
        result->i16[0] = *v51;
      }

      else
      {

        return memcpy(result, v51, 2 * v52);
      }
    }

    return result;
  }

  v53 = (result + 2 * v52);
  if (v52 >= 0x40)
  {
    v54 = (result + 2 * (v52 & 0xFFFFFFC0));
    v55 = 0uLL;
    do
    {
      v102.val[0] = *v51;
      v56 = *(v51 + 1);
      v105.val[0] = *(v51 + 2);
      v57 = *(v51 + 3);
      v51 += 32;
      v58 = v57;
      v105.val[1] = 0uLL;
      v108.val[0] = v56;
      v102.val[1] = 0uLL;
      v59 = result;
      vst2q_s8(v59->i8, v102);
      v59 += 2;
      v108.val[1] = 0uLL;
      vst2q_s8(v59->i8, v108);
      v60 = result + 4;
      vst2q_s8(v60->i8, v105);
      v61 = result + 6;
      vst2q_s8(v61->i8, *(&v55 - 1));
      result += 8;
    }

    while (result != v54);
    result = v54;
  }

  if (result != v53)
  {
    v62 = &v32[2 * v52 + 2 * a5] - result - 2;
    if (v62 < 0xE || (result < (v51 + (v62 >> 1) + 1) ? (v63 = v51 >= (&result->i16[1] + (v62 & 0xFFFFFFFFFFFFFFFELL))) : (v63 = 1), !v63))
    {
      v66 = v51;
      v67 = result;
      goto LABEL_62;
    }

    v64 = (v62 >> 1) + 1;
    if (v62 >= 0x3E)
    {
      v65 = v64 & 0xFFFFFFFFFFFFFFE0;
      v89 = result + 2;
      v90 = (v51 + 8);
      v91 = v64 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v92 = *v90[-2].i8;
        v93 = vmovl_u8(*v90);
        v94 = vmovl_high_u8(*v90->i8);
        v89[-2] = vmovl_u8(*v92.i8);
        v89[-1] = vmovl_high_u8(v92);
        *v89 = v93;
        v89[1] = v94;
        v89 += 4;
        v90 += 4;
        v91 -= 32;
      }

      while (v91);
      if (v64 == v65)
      {
        return result;
      }

      if ((v64 & 0x18) == 0)
      {
        v67 = (result + 2 * v65);
        v66 = (v51 + v65);
        goto LABEL_62;
      }
    }

    else
    {
      v65 = 0;
    }

    v66 = (v51 + (v64 & 0xFFFFFFFFFFFFFFF8));
    v67 = (result + 2 * (v64 & 0xFFFFFFFFFFFFFFF8));
    v95 = (result + 2 * v65);
    v96 = (v51 + v65);
    v97 = v65 - (v64 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v98 = *v96++;
      *v95++ = vmovl_u8(v98);
      v97 += 8;
    }

    while (v97);
    if (v64 == (v64 & 0xFFFFFFFFFFFFFFF8))
    {
      return result;
    }

    do
    {
LABEL_62:
      v68 = *v66;
      v66 = (v66 + 1);
      v67->i16[0] = v68;
      v67 = (v67 + 2);
    }

    while (v67 != v53);
  }

  return result;
}

void WGSL::AST::DiagnosticDirective::~DiagnosticDirective(WGSL::AST::DiagnosticDirective *this, WTF::StringImpl *a2)
{
  if (*(this + 96) == 1)
  {
    *(this + 8) = off_2838D37C0;
    v2 = *(this + 11);
    *(this + 11) = 0;
    if (v2)
    {
      if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v3 = this;
        WTF::StringImpl::destroy(v2, a2);
        this = v3;
      }
    }
  }

  *(this + 4) = off_2838D37C0;
  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }
}

{
  if (*(this + 96) == 1)
  {
    *(this + 8) = off_2838D37C0;
    v2 = *(this + 11);
    *(this + 11) = 0;
    if (v2)
    {
      if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v3 = this;
        WTF::StringImpl::destroy(v2, a2);
        this = v3;
      }
    }
  }

  *(this + 4) = off_2838D37C0;
  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  JUMPOUT(0x22AA68560);
}

WTF::StringImpl *WGSL::Parser<WGSL::Lexer<unsigned char>>::parseConstAssert(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 88);
  v5 = *(a2 + 96);
  if (*(a2 + 56) != 14)
  {
    WGSL::toString();
    WGSL::toString();
    if (v56)
    {
      v15 = *(v56 + 1);
      if (v55)
      {
LABEL_18:
        v16 = *(v55 + 1);
        if (v16 < 0)
        {
          goto LABEL_103;
        }

        v14 = __OFADD__(v16, 12);
        v17 = v16 + 12;
        v18 = v14;
        if (v15 < 0)
        {
          goto LABEL_103;
        }

        goto LABEL_49;
      }
    }

    else
    {
      v15 = 0;
      if (v55)
      {
        goto LABEL_18;
      }
    }

    v17 = 12;
    v18 = v14;
    if (v15 < 0)
    {
      goto LABEL_103;
    }

LABEL_49:
    if (v18)
    {
      goto LABEL_103;
    }

    v14 = __OFADD__(v15, v17);
    v30 = v15 + v17;
    if (v14)
    {
      goto LABEL_103;
    }

    v31 = (v30 + 11);
    if (__OFADD__(v30, 11))
    {
      goto LABEL_103;
    }

    if (v56)
    {
      v32 = *(v56 + 4);
      v33 = (v32 >> 2) & 1;
      if (!v55 || (v32 & 4) == 0)
      {
LABEL_68:
        WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v31, v33, "Expected a ", 0xBuLL, v56, ", but got a ", 0xCuLL, &v52, v55);
        v41 = v52;
        if (v52)
        {
          v42 = v55;
          v55 = 0;
          if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v42, v40);
          }

          result = v56;
          v56 = 0;
          if (!result)
          {
            goto LABEL_75;
          }

LABEL_73:
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v40);
          }

LABEL_75:
          v43 = v5 | ((*(a2 + 96) - v5) << 32);
          *a1 = v41;
          *(a1 + 8) = v4;
          *(a1 + 16) = v43;
LABEL_76:
          *(a1 + 24) = 1;
          return result;
        }

LABEL_103:
        __break(0xC471u);
        JUMPOUT(0x225770CC0);
      }
    }

    else if (!v55)
    {
      v33 = 1;
      goto LABEL_68;
    }

    v33 = (*(v55 + 16) >> 2) & 1;
    goto LABEL_68;
  }

  do
  {
    v8 = *(a2 + 36);
    v9 = (*(a2 + 40) + 1);
    *(a2 + 40) = v9;
    if (v8 <= v9)
    {
      __break(0xC471u);
      goto LABEL_105;
    }

    v10 = *(a2 + 24) + 32 * v9;
    v6 = *v10;
    *(a2 + 56) = *v10;
    *(a2 + 60) = *(v10 + 4);
    v11 = *v10;
    if (*v10 <= 8u)
    {
      if (((1 << v11) & 0x38) != 0)
      {
        *(a2 + 80) = *(v10 + 24);
LABEL_4:
        v6 = *(a2 + 56);
        goto LABEL_5;
      }

      if (((1 << v11) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v10 + 24);
        goto LABEL_4;
      }

      if (v11 == 8)
      {
        *(a2 + 80) = 0;
        v12 = *(v10 + 24);
        if (v12)
        {
          atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
          v13 = *(a2 + 80);
          *(a2 + 80) = v12;
          if (v13)
          {
            if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v13, a2);
            }
          }
        }

        goto LABEL_4;
      }
    }

LABEL_5:
    v7 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v7;
  }

  while (v6 == 82);
  v19 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseExpression(&v52, a2);
  if (!v54)
  {
    if (*(a2 + 56) == 73)
    {
      while (1)
      {
        v24 = *(a2 + 36);
        v25 = (*(a2 + 40) + 1);
        *(a2 + 40) = v25;
        if (v24 <= v25)
        {
          __break(0xC471u);
          JUMPOUT(0x225770CB8);
        }

        v26 = *(a2 + 24) + 32 * v25;
        v22 = *v26;
        *(a2 + 56) = *v26;
        *(a2 + 60) = *(v26 + 4);
        v27 = *v26;
        if (*v26 <= 8u)
        {
          if (((1 << v27) & 0x38) != 0)
          {
            *(a2 + 80) = *(v26 + 24);
          }

          else if (((1 << v27) & 0xC4) != 0)
          {
            *(a2 + 80) = *(v26 + 24);
          }

          else
          {
            if (v27 != 8)
            {
              goto LABEL_33;
            }

            *(a2 + 80) = 0;
            v28 = *(v26 + 24);
            if (v28)
            {
              atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
              v29 = *(a2 + 80);
              *(a2 + 80) = v28;
              if (v29)
              {
                if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v29, v20);
                }
              }
            }
          }

          v22 = *(a2 + 56);
        }

LABEL_33:
        v23 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v23;
        if (v22 != 82)
        {
          v39 = *(a2 + 8);
          *&v49 = v4;
          DWORD2(v49) = v5;
          HIDWORD(v49) = v23 - v5;
          WGSL::AST::Builder::construct<WGSL::AST::ConstAssert,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,void>(v39, &v49, &v52);
        }
      }
    }

    WGSL::toString();
    WGSL::toString();
    if (v51)
    {
      v35 = *(v51 + 1);
      if (v50)
      {
LABEL_60:
        v36 = *(v50 + 1);
        if (v36 < 0)
        {
          goto LABEL_104;
        }

        v14 = __OFADD__(v36, 12);
        v37 = v36 + 12;
        v38 = v14;
        if (v35 < 0)
        {
          goto LABEL_104;
        }

LABEL_83:
        if (v38)
        {
          goto LABEL_104;
        }

        v14 = __OFADD__(v35, v37);
        v44 = v35 + v37;
        if (v14)
        {
          goto LABEL_104;
        }

        v45 = (v44 + 11);
        if (__OFADD__(v44, 11))
        {
          goto LABEL_104;
        }

        if (v51)
        {
          v46 = *(v51 + 4);
          v47 = (v46 >> 2) & 1;
          if (!v50 || (v46 & 4) == 0)
          {
LABEL_93:
            WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v45, v47, "Expected a ", 0xBuLL, v51, ", but got a ", 0xCuLL, &v49, v50);
            v41 = v49;
            if (v49)
            {
              v48 = v50;
              v50 = 0;
              if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v48, v40);
              }

              result = v51;
              v51 = 0;
              if (!result)
              {
                goto LABEL_75;
              }

              goto LABEL_73;
            }

LABEL_104:
            __break(0xC471u);
LABEL_105:
            JUMPOUT(0x225770CB0);
          }
        }

        else if (!v50)
        {
          v47 = 1;
          goto LABEL_93;
        }

        v47 = (*(v50 + 16) >> 2) & 1;
        goto LABEL_93;
      }
    }

    else
    {
      v35 = 0;
      if (v50)
      {
        goto LABEL_60;
      }
    }

    v37 = 12;
    if (v34)
    {
      v38 = 1;
    }

    else
    {
      v38 = 0;
    }

    if (v35 < 0)
    {
      goto LABEL_104;
    }

    goto LABEL_83;
  }

  if (v54 != 1)
  {
    mpark::throw_bad_variant_access(v19);
  }

  result = v52;
  if (!v52)
  {
    *(a1 + 8) = v53;
    *a1 = 0;
    goto LABEL_76;
  }

  atomic_fetch_add_explicit(v52, 2u, memory_order_relaxed);
  *(a1 + 8) = v53;
  *a1 = result;
  *(a1 + 24) = 1;
  if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(result, v20);
  }

  return result;
}

void WGSL::Parser<WGSL::Lexer<unsigned char>>::parseAttributes(WTF::StringImpl *result, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  v18 = 0;
  v19 = 0;
  v6 = *result;
  v7 = *(result + 24);
  do
  {
    if (*(a2 + 56) != 40)
    {
      *result = v4;
      *(result + 2) = v19;
      *(result + 3) = v5;
      *(result + 24) = 0;
      return;
    }

    WGSL::Parser<WGSL::Lexer<unsigned char>>::parseAttribute(&v15, a2);
    v10 = v17;
    if (!v17)
    {
      if (v5 == v19)
      {
        v12 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v18, v5 + 1, &v15);
        v13 = HIDWORD(v19);
        v4 = v18;
        *(v18 + HIDWORD(v19)) = *v12;
        v5 = v13 + 1;
        HIDWORD(v19) = v13 + 1;
        v11 = v17;
        if (!v17)
        {
          continue;
        }
      }

      else
      {
        *(v4 + v5++) = v15;
        HIDWORD(v19) = v5;
        v11 = v17;
        if (!v17)
        {
          continue;
        }
      }

LABEL_14:
      if (v11 != 255)
      {
        v14 = v15;
        v15 = 0;
        if (v14)
        {
          if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v14, v9);
          }
        }
      }

      continue;
    }

    if (v17 != 1)
    {
      *(result + 24) = v7;
      *result = v6;
      mpark::throw_bad_variant_access(v8);
    }

    v6 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
    }

    *(result + 8) = v16;
    v7 = 1;
    v11 = v17;
    if (v17)
    {
      goto LABEL_14;
    }
  }

  while (!v10);
  *(result + 24) = v7;
  *result = v6;
  if (v4)
  {
    v18 = 0;
    LODWORD(v19) = 0;
    WTF::fastFree(v4, v9);
  }
}

double WGSL::Parser<WGSL::Lexer<unsigned char>>::parseVariableWithAttributes(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a2 + 88);
  v6 = *(a2 + 96);
  v7 = *(a2 + 56);
  if (v7 > 0x22)
  {
    goto LABEL_26;
  }

  if (((1 << v7) & 0x414002000) == 0)
  {
    if (v7 == 8)
    {
      v17 = *(a2 + 80);
      if (v17)
      {
        atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
        if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v17, a2);
        }
      }
    }

LABEL_26:
    memset(v175, 0, 20);
    v175[20] = 1;
    WTF::StringBuilder::append();
    WGSL::TemplateTypes<(WGSL::TokenType)13,(WGSL::TokenType)28,(WGSL::TokenType)26,(WGSL::TokenType)34>::appendNameTo(v175);
    WGSL::toString();
    v170 = "], but got a ";
    *&v171 = 13;
    v167 = v162;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>>(v175, &v170, &v167);
    v20 = v162;
    v162 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v18);
    }

    v21 = *v175;
    if (*v175)
    {
      v22 = v6 | ((*(a2 + 96) - v6) << 32);
    }

    else
    {
      WTF::StringBuilder::shrinkToFit(v175);
      WTF::StringBuilder::reifyString(v175);
      v21 = *v175;
      v22 = v6 | ((*(a2 + 96) - v6) << 32);
      if (!*v175)
      {
LABEL_84:
        *a1 = v21;
        *(a1 + 8) = v5;
        *(a1 + 16) = v22;
        *(a1 + 24) = 1;
        v50 = *&v175[8];
        *&v175[8] = 0;
        if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v50, v18);
        }

LABEL_348:
        v119 = *v175;
        *v175 = 0;
        if (v119)
        {
          goto LABEL_349;
        }

        return result;
      }
    }

    atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
    goto LABEL_84;
  }

  do
  {
    v10 = *(a2 + 36);
    v11 = (*(a2 + 40) + 1);
    *(a2 + 40) = v11;
    if (v10 <= v11)
    {
      __break(0xC471u);
      goto LABEL_372;
    }

    v12 = *(a2 + 24) + 32 * v11;
    v8 = *v12;
    *(a2 + 56) = *v12;
    *(a2 + 60) = *(v12 + 4);
    v13 = *v12;
    if (*v12 <= 8u)
    {
      if (((1 << v13) & 0x38) != 0)
      {
        *(a2 + 80) = *(v12 + 24);
LABEL_5:
        v8 = *(a2 + 56);
        goto LABEL_6;
      }

      if (((1 << v13) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v12 + 24);
        goto LABEL_5;
      }

      if (v13 == 8)
      {
        *(a2 + 80) = 0;
        v14 = *(v12 + 24);
        if (v14)
        {
          atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
          v15 = *(a2 + 80);
          *(a2 + 80) = v14;
          if (v15)
          {
            if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v15, a2);
            }
          }
        }

        goto LABEL_5;
      }
    }

LABEL_6:
    v9 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v9;
  }

  while (v8 == 82);
  if (v7 == 13)
  {
    v16 = 0;
    v159 = 1;
    v166 = 0;
    v165 = 0;
    if (v8 == 83)
    {
      goto LABEL_32;
    }

    goto LABEL_64;
  }

  if (v7 == 28)
  {
    v159 = 0;
    v16 = 2;
    v166 = 2;
    v165 = 0;
    if (v8 == 83)
    {
      goto LABEL_32;
    }

    goto LABEL_64;
  }

  if (v7 != 26)
  {
    v159 = 0;
    v16 = 3;
    v166 = 3;
    v165 = 0;
    if (v8 != 83)
    {
      goto LABEL_64;
    }

LABEL_32:
    v157 = *(a2 + 88);
    while (1)
    {
      v25 = *(a2 + 36);
      v26 = (*(a2 + 40) + 1);
      *(a2 + 40) = v26;
      if (v25 <= v26)
      {
        __break(0xC471u);
        JUMPOUT(0x2257721E8);
      }

      v27 = *(a2 + 24) + 32 * v26;
      v23 = *v27;
      *(a2 + 56) = *v27;
      *(a2 + 60) = *(v27 + 4);
      v28 = *v27;
      if (*v27 > 8u)
      {
        goto LABEL_35;
      }

      if (((1 << v28) & 0x38) != 0)
      {
        *(a2 + 80) = *(v27 + 24);
      }

      else if (((1 << v28) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v27 + 24);
      }

      else
      {
        if (v28 != 8)
        {
          goto LABEL_35;
        }

        *(a2 + 80) = 0;
        v29 = *(v27 + 24);
        if (v29)
        {
          atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
          v30 = *(a2 + 80);
          *(a2 + 80) = v29;
          if (v30)
          {
            if (atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v30, a2);
            }
          }
        }
      }

      v23 = *(a2 + 56);
LABEL_35:
      v24 = *(a2 + 68);
      *(a2 + 88) = *(a2 + 60);
      *(a2 + 96) = v24;
      if (v23 != 82)
      {
        v31 = *(a2 + 88);
        if (v23 == 8)
        {
          *v175 = 8;
          *&v175[4] = *(a2 + 60);
          v176 = 0;
          v32 = *(a2 + 80);
          if (v32)
          {
            atomic_fetch_add_explicit(v32, 2u, memory_order_relaxed);
            v176 = v32;
          }

          v177 = 0;
          while (2)
          {
            v35 = *(a2 + 36);
            v36 = (*(a2 + 40) + 1);
            *(a2 + 40) = v36;
            if (v35 <= v36)
            {
              __break(0xC471u);
              JUMPOUT(0x2257721F0);
            }

            v37 = *(a2 + 24) + 32 * v36;
            v33 = *v37;
            *(a2 + 56) = *v37;
            *(a2 + 60) = *(v37 + 4);
            v38 = *v37;
            if (*v37 <= 8u)
            {
              if (((1 << v38) & 0x38) != 0)
              {
                *(a2 + 80) = *(v37 + 24);
                goto LABEL_51;
              }

              if (((1 << v38) & 0xC4) != 0)
              {
                *(a2 + 80) = *(v37 + 24);
                goto LABEL_51;
              }

              if (v38 == 8)
              {
                *(a2 + 80) = 0;
                v39 = *(v37 + 24);
                if (v39)
                {
                  atomic_fetch_add_explicit(v39, 2u, memory_order_relaxed);
                  v40 = *(a2 + 80);
                  *(a2 + 80) = v39;
                  if (v40)
                  {
                    if (atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v40, a2);
                    }
                  }
                }

LABEL_51:
                v33 = *(a2 + 56);
              }
            }

            v34 = *(a2 + 68);
            *(a2 + 88) = *(a2 + 60);
            *(a2 + 96) = v34;
            if (v33 == 82)
            {
              continue;
            }

            break;
          }

          v41 = WTF::SortedArrayMap<std::pair<WTF::ComparableASCIISubsetLiteral<(WTF::ASCIISubset)0>,WGSL::AddressSpace> [6]>::tryGet<WTF::String>(WGSL::parseAddressSpace(WTF::String const&)::__map, &v176);
          if (v41 && *v41 != 1)
          {
            v49 = 0;
            LOBYTE(v170) = *v41;
          }

          else
          {
            v41 = WTF::StringImpl::createWithoutCopyingNonEmpty();
            v48 = v24 | ((*(a2 + 96) - v24) << 32);
            *&v171 = v31;
            *(&v171 + 1) = v48;
            v49 = 1;
          }

          v172 = v49;
          v55 = v177;
          if (v177 != 255)
          {
            goto LABEL_103;
          }

LABEL_171:
          if (v49)
          {
            goto LABEL_172;
          }

LABEL_109:
          v56 = *(a2 + 56);
          if (v56 == 48)
          {
            if (v170 != 3)
            {
              WTF::StringImpl::createWithoutCopyingNonEmpty();
              v75 = v9 | ((*(a2 + 96) - v9) << 32);
              goto LABEL_249;
            }

            while (2)
            {
              v59 = *(a2 + 36);
              v60 = (*(a2 + 40) + 1);
              *(a2 + 40) = v60;
              if (v59 <= v60)
              {
                __break(0xC471u);
                JUMPOUT(0x225772210);
              }

              v61 = *(a2 + 24) + 32 * v60;
              v57 = *v61;
              *(a2 + 56) = *v61;
              *(a2 + 60) = *(v61 + 4);
              v62 = *v61;
              if (*v61 <= 8u)
              {
                if (((1 << v62) & 0x38) != 0)
                {
                  *(a2 + 80) = *(v61 + 24);
                  goto LABEL_113;
                }

                if (((1 << v62) & 0xC4) != 0)
                {
                  *(a2 + 80) = *(v61 + 24);
                  goto LABEL_113;
                }

                if (v62 == 8)
                {
                  *(a2 + 80) = 0;
                  v63 = *(v61 + 24);
                  if (v63)
                  {
                    atomic_fetch_add_explicit(v63, 2u, memory_order_relaxed);
                    v64 = *(a2 + 80);
                    *(a2 + 80) = v63;
                    if (v64)
                    {
                      if (atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v64, v18);
                      }
                    }
                  }

LABEL_113:
                  v57 = *(a2 + 56);
                }
              }

              v58 = *(a2 + 68);
              *(a2 + 88) = *(a2 + 60);
              *(a2 + 96) = v58;
              if (v57 == 82)
              {
                continue;
              }

              break;
            }

            v76 = *(a2 + 88);
            if (v57 == 8)
            {
              *v175 = 8;
              *&v175[4] = *(a2 + 60);
              v176 = 0;
              v77 = *(a2 + 80);
              if (v77)
              {
                atomic_fetch_add_explicit(v77, 2u, memory_order_relaxed);
                v176 = v77;
              }

              v177 = 0;
              while (1)
              {
                v80 = *(a2 + 36);
                v81 = (*(a2 + 40) + 1);
                *(a2 + 40) = v81;
                if (v80 <= v81)
                {
                  __break(0xC471u);
                  JUMPOUT(0x225772220);
                }

                v82 = *(a2 + 24) + 32 * v81;
                v78 = *v82;
                *(a2 + 56) = *v82;
                *(a2 + 60) = *(v82 + 4);
                v83 = *v82;
                if (*v82 > 8u)
                {
                  goto LABEL_151;
                }

                if (((1 << v83) & 0x38) != 0)
                {
                  *(a2 + 80) = *(v82 + 24);
                }

                else if (((1 << v83) & 0xC4) != 0)
                {
                  *(a2 + 80) = *(v82 + 24);
                }

                else
                {
                  if (v83 != 8)
                  {
                    goto LABEL_151;
                  }

                  *(a2 + 80) = 0;
                  v84 = *(v82 + 24);
                  if (v84)
                  {
                    atomic_fetch_add_explicit(v84, 2u, memory_order_relaxed);
                    v85 = *(a2 + 80);
                    *(a2 + 80) = v84;
                    if (v85)
                    {
                      if (atomic_fetch_add_explicit(v85, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v85, v18);
                      }
                    }
                  }
                }

                v78 = *(a2 + 56);
LABEL_151:
                v79 = *(a2 + 68);
                *(a2 + 88) = *(a2 + 60);
                *(a2 + 96) = v79;
                if (v78 != 82)
                {
                  v91 = WGSL::parseAccessMode(&v176);
                  if (v91)
                  {
                    v92 = 0;
                    LOBYTE(v167) = *v91;
                  }

                  else
                  {
                    WTF::StringImpl::createWithoutCopyingNonEmpty();
                    v100 = v58 | ((*(a2 + 96) - v58) << 32);
                    *&v168 = v76;
                    *(&v168 + 1) = v100;
                    v92 = 1;
                  }

                  goto LABEL_208;
                }
              }
            }

            *v175 = v57;
            v177 = 1;
            WGSL::toString();
            WGSL::toString();
            if (v174)
            {
              v90 = *(v174 + 1);
            }

            else
            {
              v90 = 0;
            }

            if (v173)
            {
              v93 = *(v173 + 4);
              if (v93 < 0)
              {
                goto LABEL_367;
              }
            }

            else
            {
              v93 = 0;
            }

            v43 = __OFADD__(v93, 12);
            v94 = v93 + 12;
            v95 = v43;
            if ((v90 & 0x80000000) == 0 && (v95 & 1) == 0)
            {
              v43 = __OFADD__(v90, v94);
              v96 = v90 + v94;
              if (!v43)
              {
                v97 = (v96 + 11);
                if (!__OFADD__(v96, 11))
                {
                  if (v174)
                  {
                    v98 = *(v174 + 4);
                    v99 = (v98 >> 2) & 1;
                    if (!v173 || (v98 & 4) == 0)
                    {
LABEL_200:
                      WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v97, v99, "Expected a ", 0xBuLL, v174, ", but got a ", 0xCuLL, &v178, v173);
                      v101 = v178;
                      if (v178)
                      {
                        v102 = v173;
                        v173 = 0;
                        if (v102 && atomic_fetch_add_explicit(v102, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v102, v18);
                        }

                        v103 = v174;
                        v174 = 0;
                        if (v103 && atomic_fetch_add_explicit(v103, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v103, v18);
                        }

                        v104 = v58 | ((*(a2 + 96) - v58) << 32);
                        v167 = v101;
                        *&v168 = v76;
                        *(&v168 + 1) = v104;
                        v92 = 1;
LABEL_208:
                        v169 = v92;
                        if (v177 != 255)
                        {
                          if (!v177 && *v175 == 8)
                          {
                            v105 = v176;
                            v176 = 0;
                            if (v105)
                            {
                              if (atomic_fetch_add_explicit(v105, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v105, v18);
                              }
                            }
                          }

                          v92 = v169;
                        }

                        if (v92)
                        {
                          if (v167)
                          {
                            atomic_fetch_add_explicit(v167, 2u, memory_order_relaxed);
                            v162 = v167;
                            v163 = v168;
                            v164 = 1;
                            if (v169)
                            {
                              v106 = v167;
                              v167 = 0;
                              if (atomic_fetch_add_explicit(v106, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v106, v18);
                              }
                            }

LABEL_251:
                            if (v172)
                            {
                              if (v172 != 255)
                              {
                                v118 = v170;
                                v170 = 0;
                                if (v118)
                                {
                                  if (atomic_fetch_add_explicit(v118, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                  {
                                    WTF::StringImpl::destroy(v118, v18);
                                  }
                                }
                              }
                            }

                            if (!v162)
                            {
                              *a1 = 0;
                              result = *&v163;
                              *(a1 + 8) = v163;
                              *(a1 + 24) = 1;
                              return result;
                            }

                            atomic_fetch_add_explicit(v162, 2u, memory_order_relaxed);
                            *a1 = v162;
                            result = *&v163;
                            *(a1 + 8) = v163;
                            *(a1 + 24) = 1;
                            v119 = v162;
                            v162 = 0;
                            if (v119)
                            {
                              goto LABEL_349;
                            }

                            return result;
                          }

                          v162 = 0;
                          v163 = v168;
LABEL_250:
                          v164 = 1;
                          goto LABEL_251;
                        }

                        LOBYTE(v174) = v167;
                        if (*(a2 + 56) == 84)
                        {
                          goto LABEL_133;
                        }

LABEL_221:
                        WGSL::toString();
                        WGSL::toString();
                        if (v167)
                        {
                          v107 = *(v167 + 1);
                          if (v178)
                          {
                            goto LABEL_223;
                          }

LABEL_226:
                          v108 = 0;
                          goto LABEL_227;
                        }

                        v107 = 0;
                        if (!v178)
                        {
                          goto LABEL_226;
                        }

LABEL_223:
                        v108 = *(v178 + 4);
                        if (v108 < 0)
                        {
LABEL_365:
                          __break(0xC471u);
                          JUMPOUT(0x225772228);
                        }

LABEL_227:
                        v43 = __OFADD__(v108, 12);
                        v109 = v108 + 12;
                        v110 = v43;
                        if (v107 < 0)
                        {
                          goto LABEL_365;
                        }

                        if (v110)
                        {
                          goto LABEL_365;
                        }

                        v43 = __OFADD__(v107, v109);
                        v111 = v107 + v109;
                        if (v43)
                        {
                          goto LABEL_365;
                        }

                        v112 = (v111 + 11);
                        if (__OFADD__(v111, 11))
                        {
                          goto LABEL_365;
                        }

                        if (v167)
                        {
                          v113 = *(v167 + 4);
                          v114 = (v113 >> 2) & 1;
                          if (!v178 || (v113 & 4) == 0)
                          {
LABEL_241:
                            WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v112, v114, "Expected a ", 0xBuLL, v167, ", but got a ", 0xCuLL, v175, v178);
                            v115 = *v175;
                            if (!*v175)
                            {
                              goto LABEL_365;
                            }

                            v116 = v178;
                            v178 = 0;
                            if (v116 && atomic_fetch_add_explicit(v116, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v116, v18);
                            }

                            v117 = v167;
                            v167 = 0;
                            if (v117 && atomic_fetch_add_explicit(v117, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v117, v18);
                            }

                            v75 = v9 | ((*(a2 + 96) - v9) << 32);
                            v162 = v115;
LABEL_249:
                            *&v163 = v157;
                            *(&v163 + 1) = v75;
                            goto LABEL_250;
                          }
                        }

                        else if (!v178)
                        {
                          v114 = 1;
                          goto LABEL_241;
                        }

                        v114 = (*(v178 + 16) >> 2) & 1;
                        goto LABEL_241;
                      }

                      goto LABEL_367;
                    }
                  }

                  else if (!v173)
                  {
                    v99 = 1;
                    goto LABEL_200;
                  }

                  v99 = (*(v173 + 16) >> 2) & 1;
                  goto LABEL_200;
                }
              }
            }

LABEL_367:
            __break(0xC471u);
            JUMPOUT(0x225772238);
          }

          if (v170 >= 5u)
          {
            v65 = 1;
          }

          else
          {
            v65 = 0x10001uLL >> (8 * v170);
          }

          LOBYTE(v174) = v65;
          if (v56 != 84)
          {
            goto LABEL_221;
          }

LABEL_133:
          while (2)
          {
            v68 = *(a2 + 36);
            v69 = (*(a2 + 40) + 1);
            *(a2 + 40) = v69;
            if (v68 <= v69)
            {
              __break(0xC471u);
              JUMPOUT(0x225772208);
            }

            v70 = *(a2 + 24) + 32 * v69;
            v66 = *v70;
            *(a2 + 56) = *v70;
            *(a2 + 60) = *(v70 + 4);
            v71 = *v70;
            if (*v70 <= 8u)
            {
              if (((1 << v71) & 0x38) != 0)
              {
                *(a2 + 80) = *(v70 + 24);
                goto LABEL_131;
              }

              if (((1 << v71) & 0xC4) != 0)
              {
                *(a2 + 80) = *(v70 + 24);
                goto LABEL_131;
              }

              if (v71 == 8)
              {
                *(a2 + 80) = 0;
                v72 = *(v70 + 24);
                if (v72)
                {
                  atomic_fetch_add_explicit(v72, 2u, memory_order_relaxed);
                  v73 = *(a2 + 80);
                  *(a2 + 80) = v72;
                  if (v73)
                  {
                    if (atomic_fetch_add_explicit(v73, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v73, v18);
                    }
                  }
                }

LABEL_131:
                v66 = *(a2 + 56);
              }
            }

            v67 = *(a2 + 68);
            *(a2 + 88) = *(a2 + 60);
            *(a2 + 96) = v67;
            if (v66 != 82)
            {
              v74 = *(a2 + 8);
              *v175 = v157;
              *&v175[8] = v9;
              *&v175[12] = v67 - v9;
              WGSL::AST::Builder::construct<WGSL::AST::VariableQualifier,WGSL::SourceSpan,WGSL::AddressSpace &,WGSL::AccessMode &,void>(v74, v175, &v170, &v174);
            }

            continue;
          }
        }

        *v175 = v23;
        v177 = 1;
        WGSL::toString();
        WGSL::toString();
        if (v167)
        {
          v44 = *(v167 + 1);
          if (v178)
          {
LABEL_73:
            v45 = *(v178 + 4);
            if (v45 < 0)
            {
              goto LABEL_363;
            }

            v43 = __OFADD__(v45, 12);
            v46 = v45 + 12;
            v47 = v43;
            if (v44 < 0)
            {
              goto LABEL_363;
            }

LABEL_92:
            if (v47)
            {
              goto LABEL_363;
            }

            v43 = __OFADD__(v44, v46);
            v51 = v44 + v46;
            if (v43)
            {
              goto LABEL_363;
            }

            v52 = (v51 + 11);
            if (__OFADD__(v51, 11))
            {
              goto LABEL_363;
            }

            if (v167)
            {
              v53 = *(v167 + 4);
              v54 = (v53 >> 2) & 1;
              if (!v178 || (v53 & 4) == 0)
              {
                goto LABEL_163;
              }

LABEL_100:
              v54 = (*(v178 + 16) >> 2) & 1;
            }

            else
            {
              if (v178)
              {
                goto LABEL_100;
              }

              v54 = 1;
            }

LABEL_163:
            WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v52, v54, "Expected a ", 0xBuLL, v167, ", but got a ", 0xCuLL, &v170, v178);
            v86 = v170;
            if (v170)
            {
              v87 = v178;
              v178 = 0;
              if (v87 && atomic_fetch_add_explicit(v87, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v87, v18);
              }

              v41 = v167;
              v167 = 0;
              if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                v41 = WTF::StringImpl::destroy(v41, v18);
              }

              v88 = v24 | ((*(a2 + 96) - v24) << 32);
              v170 = v86;
              *&v171 = v31;
              *(&v171 + 1) = v88;
              v49 = 1;
              v172 = 1;
              v55 = v177;
              if (v177 == 255)
              {
                goto LABEL_171;
              }

LABEL_103:
              if (!v55 && *v175 == 8)
              {
                v41 = v176;
                v176 = 0;
                if (v41)
                {
                  if (atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    v41 = WTF::StringImpl::destroy(v41, v18);
                  }
                }
              }

              v49 = v172;
              if (!v172)
              {
                goto LABEL_109;
              }

LABEL_172:
              if (v49 != 1)
              {
                goto LABEL_355;
              }

              v89 = v170;
              if (v170)
              {
                atomic_fetch_add_explicit(v170, 2u, memory_order_relaxed);
              }

              v163 = v171;
              v162 = v89;
              goto LABEL_250;
            }

LABEL_363:
            __break(0xC471u);
            JUMPOUT(0x225772218);
          }
        }

        else
        {
          v44 = 0;
          if (v178)
          {
            goto LABEL_73;
          }
        }

        v46 = 12;
        v47 = v43;
        if ((v44 & 0x80000000) == 0)
        {
          goto LABEL_92;
        }

        goto LABEL_363;
      }
    }
  }

  v159 = 1;
  v16 = 1;
  v166 = 1;
  v165 = 0;
  if (v8 == 83)
  {
    goto LABEL_32;
  }

LABEL_64:
  v41 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(v175, a2);
  if (v177)
  {
    if (v177 == 1)
    {
      v42 = *v175;
      if (*v175)
      {
        atomic_fetch_add_explicit(*v175, 2u, memory_order_relaxed);
      }

      result = *&v175[8];
      *(a1 + 8) = *&v175[8];
      *a1 = v42;
      goto LABEL_343;
    }

    goto LABEL_355;
  }

  v167 = 0;
  v120 = *(a2 + 56);
  if (v120 != 47)
  {
    v129 = v16;
    v130 = 0;
    v162 = 0;
    if ((v159 & 1) == 0)
    {
      goto LABEL_289;
    }

    goto LABEL_275;
  }

  while (2)
  {
    v123 = *(a2 + 36);
    v124 = (*(a2 + 40) + 1);
    *(a2 + 40) = v124;
    if (v123 <= v124)
    {
      __break(0xC471u);
      JUMPOUT(0x2257721F8);
    }

    v125 = *(a2 + 24) + 32 * v124;
    v121 = *v125;
    *(a2 + 56) = *v125;
    *(a2 + 60) = *(v125 + 4);
    v126 = *v125;
    if (*v125 <= 8u)
    {
      if (((1 << v126) & 0x38) != 0)
      {
        *(a2 + 80) = *(v125 + 24);
        goto LABEL_262;
      }

      if (((1 << v126) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v125 + 24);
        goto LABEL_262;
      }

      if (v126 == 8)
      {
        *(a2 + 80) = 0;
        v127 = *(v125 + 24);
        if (v127)
        {
          atomic_fetch_add_explicit(v127, 2u, memory_order_relaxed);
          v128 = *(a2 + 80);
          *(a2 + 80) = v127;
          if (v128)
          {
            if (atomic_fetch_add_explicit(v128, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v128, v18);
            }
          }
        }

LABEL_262:
        v121 = *(a2 + 56);
      }
    }

    v122 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v122;
    if (v121 == 82)
    {
      continue;
    }

    break;
  }

  v41 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseTypeName(&v170, a2);
  if (!v172)
  {
    v129 = v16;
    v167 = v170;
    v130 = v170 != 0;
    v120 = *(a2 + 56);
    v162 = 0;
    if ((v159 & 1) == 0)
    {
LABEL_289:
      if (v120 != 49)
      {
        if (!v130)
        {
          goto LABEL_312;
        }

        goto LABEL_310;
      }

      while (1)
      {
LABEL_294:
        v138 = *(a2 + 36);
        v139 = (*(a2 + 40) + 1);
        *(a2 + 40) = v139;
        if (v138 <= v139)
        {
          __break(0xC471u);
          JUMPOUT(0x225772200);
        }

        v140 = *(a2 + 24) + 32 * v139;
        v136 = *v140;
        *(a2 + 56) = *v140;
        *(a2 + 60) = *(v140 + 4);
        v141 = *v140;
        if (*v140 > 8u)
        {
          goto LABEL_293;
        }

        if (((1 << v141) & 0x38) != 0)
        {
          *(a2 + 80) = *(v140 + 24);
        }

        else if (((1 << v141) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v140 + 24);
        }

        else
        {
          if (v141 != 8)
          {
            goto LABEL_293;
          }

          *(a2 + 80) = 0;
          v142 = *(v140 + 24);
          if (v142)
          {
            atomic_fetch_add_explicit(v142, 2u, memory_order_relaxed);
            v143 = *(a2 + 80);
            *(a2 + 80) = v142;
            if (v143)
            {
              if (atomic_fetch_add_explicit(v143, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v143, v18);
              }
            }
          }
        }

        v136 = *(a2 + 56);
LABEL_293:
        v137 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v137;
        if (v136 != 82)
        {
          v41 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseExpression(&v170, a2);
          if (v172)
          {
            if (v172 == 1)
            {
              v135 = v170;
              if (v170)
              {
                atomic_fetch_add_explicit(v170, 2u, memory_order_relaxed);
                *a1 = v135;
                result = *&v171;
                *(a1 + 8) = v171;
                *(a1 + 24) = 1;
                if (atomic_fetch_add_explicit(v135, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  goto LABEL_308;
                }

                goto LABEL_344;
              }

LABEL_353:
              *a1 = 0;
              result = *&v171;
              *(a1 + 8) = v171;
LABEL_343:
              *(a1 + 24) = 1;
              goto LABEL_344;
            }

LABEL_355:
            mpark::throw_bad_variant_access(v41);
          }

          v162 = v170;
          if (!v130 && v170 == 0)
          {
LABEL_312:
            if (v129 <= 2)
            {
              if (v129 == 2)
              {
                v146 = "override";
                v147 = 8;
                goto LABEL_316;
              }

              if (!v129)
              {
                __break(0xC471u);
                JUMPOUT(0x225772264);
              }

              __break(0xC471u);
LABEL_372:
              JUMPOUT(0x2257721E0);
            }

            v146 = "var";
            v147 = 3;
LABEL_316:
            WTF::tryFastCompactMalloc(&v170, (v147 + 63));
            v148 = v170;
            if (!v170)
            {
              __break(0xC471u);
              JUMPOUT(0x225772240);
            }

            *v170 = 2;
            *(v148 + 1) = v147 + 43;
            *(v148 + 1) = v148 + 20;
            *(v148 + 4) = 4;
            memcpy(v148 + 20, v146, v147);
            qmemcpy(v148 + v147 + 20, " declaration requires a type or initializer", 43);
            result = *"e or initializer";
            v149 = v6 | ((*(a2 + 96) - v6) << 32);
            *a1 = v148;
LABEL_342:
            *(a1 + 8) = v5;
            *(a1 + 16) = v149;
            goto LABEL_343;
          }

LABEL_310:
          v144 = *(a2 + 8);
          v145 = *(a2 + 96) - v6;
          v170 = v5;
          *&v171 = __PAIR64__(v145, v6);
          WGSL::AST::Builder::construct<WGSL::AST::Variable,WGSL::SourceSpan,WGSL::AST::VariableFlavor &,WGSL::AST::Identifier,WGSL::AST::VariableQualifier *,WGSL::AST::Expression *,WGSL::AST::Expression *,WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,void>(v144, &v170, &v166, v175, &v165, &v167, &v162, a3);
        }
      }
    }

LABEL_275:
    if (v120 == 49)
    {
      goto LABEL_294;
    }

    WGSL::toString();
    WGSL::toString();
    if (v161)
    {
      v131 = *(v161 + 1);
      if (v160)
      {
        goto LABEL_278;
      }
    }

    else
    {
      v131 = 0;
      if (v160)
      {
LABEL_278:
        v132 = *(v160 + 1);
        if (v132 < 0)
        {
          goto LABEL_366;
        }

LABEL_320:
        v43 = __OFADD__(v132, 12);
        v150 = v132 + 12;
        v151 = v43;
        if (v131 < 0)
        {
          goto LABEL_366;
        }

        if (v151)
        {
          goto LABEL_366;
        }

        v43 = __OFADD__(v131, v150);
        v152 = v131 + v150;
        if (v43)
        {
          goto LABEL_366;
        }

        v153 = (v152 + 11);
        if (__OFADD__(v152, 11))
        {
          goto LABEL_366;
        }

        if (v161)
        {
          v154 = *(v161 + 4);
          v155 = (v154 >> 2) & 1;
          if (!v160 || (v154 & 4) == 0)
          {
LABEL_334:
            WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v153, v155, "Expected a ", 0xBuLL, v161, ", but got a ", 0xCuLL, &v170, v160);
            v156 = v170;
            if (v170)
            {
              if (v160 && atomic_fetch_add_explicit(v160, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v160, v18);
              }

              if (v161 && atomic_fetch_add_explicit(v161, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v161, v18);
              }

              v149 = v6 | ((*(a2 + 96) - v6) << 32);
              *a1 = v156;
              goto LABEL_342;
            }

LABEL_366:
            __break(0xC471u);
            JUMPOUT(0x225772230);
          }
        }

        else if (!v160)
        {
          v155 = 1;
          goto LABEL_334;
        }

        v155 = (*(v160 + 16) >> 2) & 1;
        goto LABEL_334;
      }
    }

    v132 = 0;
    goto LABEL_320;
  }

  if (v172 != 1)
  {
    goto LABEL_355;
  }

  v133 = v170;
  if (!v170)
  {
    goto LABEL_353;
  }

  atomic_fetch_add_explicit(v170, 2u, memory_order_relaxed);
  v134 = v172;
  *a1 = v133;
  result = *&v171;
  *(a1 + 8) = v171;
  *(a1 + 24) = 1;
  if (v134)
  {
    if (v134 != 255)
    {
      v135 = v170;
      v170 = 0;
      if (v135)
      {
        if (atomic_fetch_add_explicit(v135, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
LABEL_308:
          WTF::StringImpl::destroy(v135, v18);
        }
      }
    }
  }

LABEL_344:
  if (v177 == 255)
  {
    return result;
  }

  if (v177)
  {
    goto LABEL_348;
  }

  v119 = v176;
  *v175 = off_2838D37C0;
  v176 = 0;
  if (!v119)
  {
    return result;
  }

LABEL_349:
  if (atomic_fetch_add_explicit(v119, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v119, v18);
  }

  return result;
}