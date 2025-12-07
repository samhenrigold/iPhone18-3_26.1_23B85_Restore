unint64_t specialized static JSONDecoderImpl._slowpath_unwrapFixedWidthInteger<A, B>(as:json5:numberBuffer:fullSource:digitBeginning:for:_:)(int a1, const char *a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  LOWORD(v9) = v6;
  LODWORD(v15) = a1;
  v139 = *MEMORY[0x1E69E9840];
  v133[0] = 0;
  v16.n128_f64[0] = _stringshims_strtod_clocale(a2, v133);
  if (v133[0])
  {
    v17 = &a2[a3] == v133[0];
  }

  else
  {
    v17 = 0;
  }

  if (!v17)
  {
    goto LABEL_5;
  }

  v19 = v16.n128_f64[0];
  result = _ss7UInt128V7exactlyABSgx_tcSBRzlufCSd_Tt0g5(v16);
  if (v21)
  {
LABEL_55:
    v38 = static String._fromUTF8Repairing(_:)();
    v40 = v39;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v41 = v38;
    *(v41 + 8) = v40;
    *(v41 + 16) = 0u;
    *(v41 + 32) = 0u;
    v42 = 11;
    goto LABEL_225;
  }

  if (fabs(v19) >= 9.00719925e15)
  {
LABEL_5:
    if (__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation10BufferViewVys5UInt8VGMd, &_s10Foundation10BufferViewVys5UInt8VGMR) == MEMORY[0x1E69E6108])
    {
      specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(a2, a3, 0x2EuLL, 0xE100000000000000, 1, v135);
      if (v136 != 1)
      {
        a3 = v135[1];
        v7 = v135[2];
        v18 = v135[0];
LABEL_54:
        v133[0] = v18;
        v132 = v18 >> 32;
        v9 = (v18 >> 48);
        v133[1] = a3;
        v134 = v7;
        if (_So9NSDecimala__isNegative_getter(v133))
        {
          goto LABEL_55;
        }

        a6 = HIWORD(a3);
        v8 = HIDWORD(a3);
        a4 = a3 >> 16;
        LODWORD(v15) = v18;
        v133[0] = v18;
        v133[1] = a3;
        v134 = v7;
        v131 = v7 >> 16;
        v43 = _So9NSDecimala__length_getter(v133);
        if (v43)
        {
          v44 = v43 - 1;
          if (v43 != 1)
          {
            v45 = 0;
            v46 = 0;
            v47 = WORD1(v7);
            v48 = v7;
            v49 = a3;
            while (1)
            {
              if (v44 + 1 <= 4)
              {
                v50 = v18 >> 48;
                if (v44 != 1)
                {
                  LOWORD(v50) = a3;
                  if (v44 != 2)
                  {
                    v50 = a3 >> 16;
                    if (v44 != 3)
                    {
LABEL_340:
                      strcpy(v133, "Invalid index ");
                      HIBYTE(v133[1]) = -18;
                      v129 = dispatch thunk of CustomStringConvertible.description.getter();
                      MEMORY[0x1865CB0E0](v129);

                      MEMORY[0x1865CB0E0](0x616D5F20726F6620, 0xEE0061737369746ELL);
                      result = _assertionFailure(_:_:file:line:flags:)();
                      __break(1u);
                      return result;
                    }
                  }
                }
              }

              else if (v44 + 1 > 6)
              {
                LOWORD(v50) = v7;
                if (v44 != 6)
                {
                  LOWORD(v50) = WORD1(v7);
                  if (v44 != 7)
                  {
                    goto LABEL_340;
                  }
                }
              }

              else
              {
                v50 = HIDWORD(a3);
                if (v44 != 4)
                {
                  v50 = HIWORD(a3);
                  if (v44 != 5)
                  {
                    goto LABEL_340;
                  }
                }
              }

              if (v45)
              {
                goto LABEL_55;
              }

              v51 = (v50 | v46) << 16;
              v45 = HIWORD(v46) != 0;
              v46 = v51;
              if (!--v44)
              {
                goto LABEL_163;
              }
            }
          }

          v51 = 0;
          v45 = 0;
          v47 = WORD1(v7);
          v48 = v7;
          v49 = a3;
LABEL_163:
          if (v45)
          {
            goto LABEL_55;
          }

          v130 = v51 | WORD2(v18);
          goto LABEL_165;
        }

LABEL_312:
        v130 = 0;
        v47 = v131;
        v48 = v7;
        v49 = a3;
LABEL_165:
        LODWORD(v133[0]) = v15;
        WORD2(v133[0]) = v132;
        HIWORD(v133[0]) = v9;
        LOWORD(v133[1]) = v49;
        WORD1(v133[1]) = a4;
        WORD2(v133[1]) = v8;
        HIWORD(v133[1]) = a6;
        LOWORD(v134) = v48;
        HIWORD(v134) = v47;
        v83 = a4;
        v84 = v48;
        v85 = v49;
        if ((_So9NSDecimala__exponent_getter(v133) & 0x80000000) != 0)
        {
          LODWORD(v133[0]) = v15;
          WORD2(v133[0]) = v132;
          HIWORD(v133[0]) = v9;
          LOWORD(v133[1]) = v85;
          WORD1(v133[1]) = v83;
          WORD2(v133[1]) = v8;
          HIWORD(v133[1]) = a6;
          LOWORD(v134) = v84;
          HIWORD(v134) = v131;
          v126 = _So9NSDecimala__exponent_getter(v133);
          if (v126 > 0)
          {
            goto LABEL_326;
          }

          v127 = v126;
          result = v130;
          if (v127)
          {
            if (!__CFADD__(v127, -v127 & ~(-v127 >> 31)))
            {
              goto LABEL_334;
            }

            do
            {
              result /= 0xAuLL;
            }

            while (!__CFADD__(v127++, 1));
          }

          return result;
        }

        LODWORD(v133[0]) = v15;
        WORD2(v133[0]) = v132;
        HIWORD(v133[0]) = v9;
        LOWORD(v133[1]) = v85;
        WORD1(v133[1]) = v83;
        WORD2(v133[1]) = v8;
        HIWORD(v133[1]) = a6;
        LOWORD(v134) = v84;
        HIWORD(v134) = v131;
        v86 = _So9NSDecimala__exponent_getter(v133);
        if ((v86 & 0x80000000) == 0)
        {
          v87 = v86 + 1;
          result = v130;
          while (--v87)
          {
            v88 = (result * 0xAuLL) >> 64;
            result *= 10;
            if (v88)
            {
              goto LABEL_55;
            }
          }

          return result;
        }

        goto LABEL_316;
      }
    }

    else
    {
      specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(a2, a3, 0x2EuLL, 0xE100000000000000, 1, v137);
      if ((v138 & 1) == 0)
      {
        a3 = v137[1];
        v7 = v137[2];
        v18 = v137[0];
        goto LABEL_54;
      }
    }

    v22 = specialized BufferView.suffix(from:)(a6, a2, a3);
    v24 = &v22[v23];
    if (v15)
    {
      if (v23 < 1)
      {
LABEL_308:
        __break(1u);
LABEL_309:
        __break(1u);
        goto LABEL_310;
      }

      v25 = *v22;
      if (v25 == 45 || (v9 = v22, v25 == 43))
      {
        v9 = v22 + 1;
      }

      if (v24 < v9)
      {
        goto LABEL_309;
      }

      a6 = v9 - v22;
      if (v9 - v22 < 0)
      {
LABEL_310:
        __break(1u);
        goto LABEL_311;
      }

      a3 = v24 - v9;
      if (v24 - v9 < 0)
      {
LABEL_311:
        __break(1u);
        goto LABEL_312;
      }

      v15 = v23;
      v7 = v22;
      if (a3 >= 2)
      {
        v26 = 2;
      }

      else
      {
        v26 = v24 - v9;
      }

      if (_stringshims_strncasecmp_clocale(v9, "0x", v26))
      {
        if (v9 < v24)
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = v24 - v9;
          do
          {
            if ((a6 + v28) < 0)
            {
              goto LABEL_292;
            }

            v33 = v31-- < 1;
            if (v33)
            {
              goto LABEL_292;
            }

            LODWORD(v15) = v9[v28];
            if ((v15 - 58) > 0xF5u)
            {
              v32 = __OFADD__(v30++, 1);
              if (v32)
              {
                goto LABEL_294;
              }
            }

            else if (v9[v28] <= 0x2Du)
            {
              if (v15 != 43 && v15 != 45 || v30 || v29 != 2)
              {
LABEL_73:
                v52 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(&v9[v28], a4, a5);
                v54 = v53;
                a3 = v55;
                goto LABEL_74;
              }

              v30 = 0;
              v29 = 3;
            }

            else if (v15 == 101 || v15 == 69)
            {
              if (v29 != 1 && (v29 || v30 <= 0))
              {
                goto LABEL_73;
              }

              v30 = 0;
              v29 = 2;
            }

            else
            {
              if (v15 != 46)
              {
                goto LABEL_73;
              }

              if (v29)
              {
                v117 = &v9[v28];
                if (&v9[v28] >= a4)
                {
                  v118 = a4 + a5;
                  if (a4 + a5 >= v117)
                  {
                    if (v118 >= &v9[v28 + 1])
                    {
                      v118 = &v9[v28 + 1];
                    }

                    if (v118 <= a4)
                    {
                      v54 = 0;
                      v52 = 1;
                    }

                    else
                    {
                      v119 = a5 + a4;
                      v52 = 1;
                      v120 = a4;
                      do
                      {
                        v121 = 0;
                        v122 = 0;
                        v123 = v119 - v120;
                        while (1)
                        {
                          if ((v120 - a4 + v122) < 0 || v123 + v121 < 1)
                          {
                            goto LABEL_306;
                          }

                          v124 = *(v120 + v122);
                          if (v124 == 10)
                          {
                            break;
                          }

                          if (v124 == 13)
                          {
                            v125 = v120 + v122;
                            if (v117 < v120 + v122 + 1)
                            {
                              goto LABEL_272;
                            }

                            if (((v120 - a4 + v122 + 1) & 0x8000000000000000) == 0 && ~v122 + v123 >= 1)
                            {
                              if (*(v125 + 1) == 10)
                              {
                                v125 = v120 + v122 + 1;
                              }

LABEL_272:
                              v32 = __OFADD__(v52++, 1);
                              if (!v32)
                              {
                                v120 = v125 + 1;
                                goto LABEL_276;
                              }

LABEL_336:
                              __break(1u);
LABEL_337:
                              __break(1u);
LABEL_338:
                              __break(1u);
                            }

                            __break(1u);
                          }

                          v54 = v122 + 1;
                          if (__OFADD__(v122, 1))
                          {
                            goto LABEL_307;
                          }

                          ++v122;
                          --v121;
                          if (v120 + v122 >= v118)
                          {
                            goto LABEL_288;
                          }
                        }

                        v32 = __OFADD__(v52++, 1);
                        if (v32)
                        {
                          goto LABEL_335;
                        }

                        v120 += v122 + 1;
LABEL_276:
                        ;
                      }

                      while (v120 < v118);
                      v54 = 0;
                    }

LABEL_288:
                    a3 = &v9[v28 - a4];
                    LOBYTE(v15) = 46;
LABEL_74:
                    a6 = 0xE900000000000072;
                    v7 = 0x65626D756E206E69;
LABEL_75:
                    lazy protocol witness table accessor for type JSONError and conformance JSONError();
                    swift_allocError();
                    *v41 = v7;
                    *(v41 + 8) = a6;
                    *(v41 + 16) = v15;
                    *(v41 + 24) = v52;
                    *(v41 + 32) = v54;
                    *(v41 + 40) = a3;
LABEL_224:
                    v42 = 1;
LABEL_225:
                    *(v41 + 48) = v42;
                    return swift_willThrow();
                  }
                }

LABEL_325:
                __break(1u);
LABEL_326:
                __break(1u);
LABEL_327:
                __break(1u);
LABEL_328:
                __break(1u);
LABEL_329:
                __break(1u);
LABEL_330:
                __break(1u);
LABEL_331:
                __break(1u);
LABEL_332:
                __break(1u);
LABEL_333:
                __break(1u);
LABEL_334:
                __break(1u);
LABEL_335:
                __break(1u);
                goto LABEL_336;
              }

              v30 = 0;
              v29 = 1;
            }

            ++v28;
          }

          while (a3 != v28);
        }

LABEL_291:
        __break(1u);
LABEL_292:
        __break(1u);
LABEL_293:
        __break(1u);
LABEL_294:
        __break(1u);
LABEL_295:
        __break(1u);
LABEL_296:
        __break(1u);
LABEL_297:
        __break(1u);
LABEL_298:
        __break(1u);
LABEL_299:
        __break(1u);
LABEL_300:
        __break(1u);
LABEL_301:
        __break(1u);
LABEL_302:
        __break(1u);
LABEL_303:
        __break(1u);
LABEL_304:
        __break(1u);
LABEL_305:
        __break(1u);
LABEL_306:
        __break(1u);
LABEL_307:
        __break(1u);
        goto LABEL_308;
      }

      v37 = v9 + 2;
      v56 = v24 - (v9 + 2);
      if (v56 >= 1 && v37 < v24)
      {
        v56 = &v37[-v7];
        if ((&v37[-v7] & 0x8000000000000000) == 0)
        {
          a3 = &v9[-a4 + 2];
          v56 = v15 + v7 - v9 - 3;
          v61 = a6 + 3;
          v27 = 1;
          while (1)
          {
            v62 = v61;
            LODWORD(v15) = *v37;
            if ((v15 - 58) <= 0xF5u && (*v37 - 65 > 0x25 || ((1 << (v15 - 65)) & 0x3F0000003FLL) == 0))
            {
              break;
            }

            v33 = v56-- < 1;
            if (!v33 && ++v37 < v24)
            {
              ++a3;
              ++v61;
              if ((v62 & 0x8000000000000000) == 0)
              {
                continue;
              }
            }

            goto LABEL_111;
          }

          if (v37 >= a4)
          {
            v89 = a4 + a5;
            if (a4 + a5 >= v37)
            {
              if (v89 >= (v37 + 1))
              {
                v89 = (v37 + 1);
              }

              if (v89 <= a4)
              {
                v54 = 0;
                a6 = 0xED00007265626D75;
                v7 = 0x6E20786568206E69;
                v52 = 1;
                goto LABEL_75;
              }

              v90 = a5 + a4;
              v91 = -a4;
              v52 = 1;
              a6 = 0xED00007265626D75;
              v7 = 0x6E20786568206E69;
              while (1)
              {
                v92 = 0;
                v93 = 0;
                v94 = v90 - a4;
                while (1)
                {
                  if ((v91 + a4 + v93) < 0 || v94 + v92 < 1)
                  {
                    goto LABEL_300;
                  }

                  v95 = *(a4 + v93);
                  if (v95 == 10)
                  {
                    v32 = __OFADD__(v52++, 1);
                    if (!v32)
                    {
                      a4 += v93 + 1;
                      goto LABEL_194;
                    }

                    goto LABEL_323;
                  }

                  if (v95 == 13)
                  {
                    break;
                  }

                  v54 = v93 + 1;
                  if (__OFADD__(v93, 1))
                  {
                    goto LABEL_301;
                  }

                  ++v93;
                  --v92;
                  if (a4 + v93 >= v89)
                  {
                    goto LABEL_75;
                  }
                }

                v96 = a4 + v93;
                if (v37 >= a4 + v93 + 1)
                {
                  if (((v91 + a4 + v93 + 1) & 0x8000000000000000) != 0 || ~v93 + v94 < 1)
                  {
                    goto LABEL_333;
                  }

                  if (*(v96 + 1) == 10)
                  {
                    v96 = a4 + v93 + 1;
                  }
                }

                v32 = __OFADD__(v52++, 1);
                if (v32)
                {
                  goto LABEL_324;
                }

                a4 = v96 + 1;
LABEL_194:
                if (a4 >= v89)
                {
                  v54 = 0;
                  goto LABEL_75;
                }
              }
            }
          }

          goto LABEL_315;
        }
      }

LABEL_111:
      __break(1u);
LABEL_112:
      v64 = &v37[v56];
      if (&v37[v56] >= a4)
      {
        v65 = a4 + a5;
        if (a4 + a5 >= v64)
        {
          if (v65 >= &v37[v56 + 1])
          {
            v65 = &v37[v56 + 1];
          }

          if (v65 > a4)
          {
            v66 = a5 + a4;
            v67 = 1;
            v68 = a4;
            while (1)
            {
              while (1)
              {
                v69 = 0;
                v70 = 0;
                v71 = v66 - v68;
LABEL_119:
                if ((v68 - a4 + v70) < 0 || v71 + v69 < 1)
                {
                  goto LABEL_296;
                }

                v72 = *(v68 + v70);
                if (v72 != 10)
                {
                  break;
                }

                v32 = __OFADD__(v67++, 1);
                if (v32)
                {
                  goto LABEL_319;
                }

                v68 += v70 + 1;
                if (v68 >= v65)
                {
                  goto LABEL_220;
                }
              }

              if (v72 != 13)
              {
                a3 = v70 + 1;
                if (__OFADD__(v70, 1))
                {
                  goto LABEL_298;
                }

                ++v70;
                --v69;
                if (v68 + v70 >= v65)
                {
                  goto LABEL_223;
                }

                goto LABEL_119;
              }

              v73 = v68 + v70;
              if (v64 >= v68 + v70 + 1)
              {
                if (((v68 - a4 + v70 + 1) & 0x8000000000000000) != 0 || ~v70 + v71 < 1)
                {
                  goto LABEL_330;
                }

                if (*(v73 + 1) == 10)
                {
                  v73 = v68 + v70 + 1;
                }
              }

              v32 = __OFADD__(v67++, 1);
              if (v32)
              {
                goto LABEL_321;
              }

              v68 = v73 + 1;
              if (v73 + 1 >= v65)
              {
                goto LABEL_220;
              }
            }
          }

LABEL_221:
          a3 = 0;
LABEL_222:
          v67 = 1;
          goto LABEL_223;
        }
      }

      __break(1u);
LABEL_314:
      __break(1u);
LABEL_315:
      __break(1u);
LABEL_316:
      __break(1u);
LABEL_317:
      __break(1u);
      goto LABEL_318;
    }

    if (v23 >= 1)
    {
      v34 = 0;
      v35 = v23;
      v36 = v22;
      v37 = v22;
      while ((v34 & 0x8000000000000000) == 0)
      {
        v33 = v35-- < 1;
        if (v33)
        {
          break;
        }

        if (*v37 - 58 >= 0xFFFFFFF6)
        {
          ++v37;
          ++v36;
          ++v34;
          if (v37 < v24)
          {
            continue;
          }
        }

        goto LABEL_77;
      }

      goto LABEL_295;
    }

    v36 = v22;
    v37 = v22;
LABEL_77:
    if (v37 >= v24)
    {
LABEL_289:
      __break(1u);
LABEL_290:
      __break(1u);
      goto LABEL_291;
    }

    v56 = 0;
    v57 = 0;
    v58 = v36 - v22;
    v59 = (&v22[v23] - v36);
    v60 = &v22[v23] - v37;
    while (1)
    {
      if (v37 - v22 + v56 < 0)
      {
        goto LABEL_290;
      }

      v33 = v60-- < 1;
      if (v33)
      {
        goto LABEL_290;
      }

      v27 = v37[v56];
      if (v27 - 58 >= 0xFFFFFFF6)
      {
        v32 = __OFADD__(v58++, 1);
        if (v32)
        {
          goto LABEL_293;
        }
      }

      else if (v37[v56] <= 0x2Du)
      {
        if (v27 != 43 && v27 != 45)
        {
LABEL_196:
          v97 = &v37[v56];
          if (&v37[v56] < a4)
          {
            goto LABEL_317;
          }

          v98 = a4 + a5;
          if (a4 + a5 < v97)
          {
            goto LABEL_317;
          }

          if (v98 >= &v37[v56 + 1])
          {
            v98 = &v37[v56 + 1];
          }

          if (v98 <= a4)
          {
            goto LABEL_221;
          }

          v99 = a5 + a4;
          v67 = 1;
          v100 = a4;
          while (1)
          {
LABEL_202:
            v101 = 0;
            v102 = 0;
            v103 = v99 - v100;
            while (1)
            {
              if ((v100 - a4 + v102) < 0 || v103 + v101 < 1)
              {
                goto LABEL_302;
              }

              v104 = *(v100 + v102);
              if (v104 == 10)
              {
                v32 = __OFADD__(v67++, 1);
                if (v32)
                {
                  goto LABEL_327;
                }

                v100 += v102 + 1;
                if (v100 >= v98)
                {
                  goto LABEL_220;
                }

                goto LABEL_202;
              }

              if (v104 == 13)
              {
                break;
              }

              a3 = v102 + 1;
              if (__OFADD__(v102, 1))
              {
                goto LABEL_304;
              }

              ++v102;
              --v101;
              if (v100 + v102 >= v98)
              {
                goto LABEL_223;
              }
            }

            v105 = v100 + v102;
            if (v97 >= v100 + v102 + 1)
            {
              if (((v100 - a4 + v102 + 1) & 0x8000000000000000) != 0 || ~v102 + v103 < 1)
              {
                goto LABEL_337;
              }

              if (*(v105 + 1) == 10)
              {
                v105 = v100 + v102 + 1;
              }
            }

            v32 = __OFADD__(v67++, 1);
            if (v32)
            {
              goto LABEL_328;
            }

            v100 = v105 + 1;
            if (v105 + 1 >= v98)
            {
LABEL_220:
              a3 = 0;
LABEL_223:
              v106 = &v37[v56 - a4];
              v107 = v27;
              lazy protocol witness table accessor for type JSONError and conformance JSONError();
              swift_allocError();
              *v41 = xmmword_181237560;
              *(v41 + 16) = v107;
              *(v41 + 24) = v67;
              *(v41 + 32) = a3;
              *(v41 + 40) = v106;
              goto LABEL_224;
            }
          }
        }

        if (v58 || v57 != 2)
        {
          v74 = &v37[v56];
          if (&v37[v56] >= a4)
          {
            v75 = a4 + a5;
            if (a4 + a5 >= v74)
            {
              if (v75 >= &v37[v56 + 1])
              {
                v75 = &v37[v56 + 1];
              }

              if (v75 <= a4)
              {
                goto LABEL_221;
              }

              v76 = a5 + a4;
              v67 = 1;
              v77 = a4;
              while (1)
              {
LABEL_143:
                v78 = 0;
                v79 = 0;
                v80 = v76 - v77;
                while (1)
                {
                  if ((v77 - a4 + v79) < 0 || v80 + v78 < 1)
                  {
                    goto LABEL_297;
                  }

                  v81 = *(v77 + v79);
                  if (v81 == 10)
                  {
                    v32 = __OFADD__(v67++, 1);
                    if (v32)
                    {
                      goto LABEL_320;
                    }

                    v77 += v79 + 1;
                    if (v77 >= v75)
                    {
                      goto LABEL_220;
                    }

                    goto LABEL_143;
                  }

                  if (v81 == 13)
                  {
                    break;
                  }

                  a3 = v79 + 1;
                  if (__OFADD__(v79, 1))
                  {
                    goto LABEL_299;
                  }

                  ++v79;
                  --v78;
                  if (v77 + v79 >= v75)
                  {
                    goto LABEL_223;
                  }
                }

                v82 = v77 + v79;
                if (v74 >= v77 + v79 + 1)
                {
                  if (((v77 - a4 + v79 + 1) & 0x8000000000000000) != 0 || ~v79 + v80 < 1)
                  {
                    goto LABEL_331;
                  }

                  if (*(v82 + 1) == 10)
                  {
                    v82 = v77 + v79 + 1;
                  }
                }

                v32 = __OFADD__(v67++, 1);
                if (v32)
                {
                  goto LABEL_322;
                }

                v77 = v82 + 1;
                if (v82 + 1 >= v75)
                {
                  goto LABEL_220;
                }
              }
            }
          }

          goto LABEL_314;
        }

        v58 = 0;
        v57 = 3;
      }

      else if (v27 == 101 || v27 == 69)
      {
        if (v58 < 1 || v57 >= 2)
        {
          goto LABEL_112;
        }

        v58 = 0;
        v57 = 2;
      }

      else
      {
        if (v27 != 46)
        {
          goto LABEL_196;
        }

        if (v58 < 1 || v57)
        {
          v108 = &v37[v56];
          if (&v37[v56] >= a4 && a4 + a5 >= v108)
          {
            if (a4 + a5 >= &v37[v56 + 1])
            {
              v109 = &v37[v56 + 1];
            }

            else
            {
              v109 = a4 + a5;
            }

            if (v109 > a4)
            {
              v110 = a5 + a4;
              v67 = 1;
              v111 = a4;
              while (1)
              {
                v112 = 0;
                v113 = 0;
                v114 = v110 - v111;
                while (1)
                {
                  if ((v111 - a4 + v113) < 0 || v114 + v112 < 1)
                  {
                    goto LABEL_303;
                  }

                  v115 = *(v111 + v113);
                  if (v115 == 10)
                  {
                    break;
                  }

                  if (v115 == 13)
                  {
                    v116 = v111 + v113;
                    if (v108 >= v111 + v113 + 1)
                    {
                      if (((v111 - a4 + v113 + 1) & 0x8000000000000000) != 0 || ~v113 + v114 < 1)
                      {
                        goto LABEL_338;
                      }

                      if (*(v116 + 1) == 10)
                      {
                        v116 = v111 + v113 + 1;
                      }
                    }

                    v32 = __OFADD__(v67++, 1);
                    if (v32)
                    {
                      goto LABEL_332;
                    }

                    a3 = 0;
                    v111 = v116 + 1;
                    goto LABEL_250;
                  }

                  a3 = v113 + 1;
                  if (__OFADD__(v113, 1))
                  {
                    goto LABEL_305;
                  }

                  ++v113;
                  --v112;
                  if (v111 + v113 >= v109)
                  {
                    v27 = 46;
                    goto LABEL_223;
                  }
                }

                v32 = __OFADD__(v67++, 1);
                if (v32)
                {
                  goto LABEL_329;
                }

                a3 = 0;
                v111 += v113 + 1;
LABEL_250:
                v27 = 46;
                if (v111 >= v109)
                {
                  goto LABEL_223;
                }
              }
            }

            a3 = 0;
            v27 = 46;
            goto LABEL_222;
          }

LABEL_318:
          __break(1u);
LABEL_319:
          __break(1u);
LABEL_320:
          __break(1u);
LABEL_321:
          __break(1u);
LABEL_322:
          __break(1u);
LABEL_323:
          __break(1u);
LABEL_324:
          __break(1u);
          goto LABEL_325;
        }

        v58 = 0;
        v57 = 1;
      }

      if (v59 == ++v56)
      {
        goto LABEL_289;
      }
    }
  }

  return result;
}

uint64_t specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(char *__s1, unint64_t a2, unint64_t a3, uint64_t a4, char a5, char a6)
{
  v44 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    result = specialized static JSON5Scanner.prevalidateJSONNumber(from:fullSource:)(__s1, a2, a3, a4);
    if (!v6)
    {
      v14 = result;
      v15 = v13;
      result = specialized _parseJSON5Integer<A>(_:isHex:)(__s1, a2, v13 & 1, specialized _parseHexIntegerDigits<A>(_:isNegative:), specialized _parseIntegerDigits<A>(_:isNegative:));
      if ((result & 0x100000000) != 0)
      {
        if ((v15 & 0x100) != 0)
        {
LABEL_27:
          v29 = static String._fromUTF8Repairing(_:)();
          v31 = v30;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v32 = v29;
          *(v32 + 8) = v31;
          *(v32 + 16) = 0u;
          *(v32 + 32) = 0u;
          *(v32 + 48) = 11;
          return swift_willThrow();
        }

LABEL_9:
        v33 = 0;
        v16.n128_f64[0] = _stringshims_strtod_clocale(__s1, &v33);
        v17 = &__s1[a2];
        if (v33 && v17 == v33)
        {
          v18 = v16.n128_f64[0];
          if (!_ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs5Int32V_SdTt1g5(&v33, v16) || (BYTE4(v33) & 1) != 0)
          {
            goto LABEL_27;
          }

          if (fabs(v18) < 9.00719925e15)
          {
            return v33;
          }
        }

        if (__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation10BufferViewVys5UInt8VGMd, &_s10Foundation10BufferViewVys5UInt8VGMR) == MEMORY[0x1E69E6108])
        {
          specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(__s1, a2, 0x2EuLL, 0xE100000000000000, 1, v34);
          if (v36 != 1)
          {
            v19 = v34[1];
            v20 = v35;
            v21 = v34[0];
LABEL_26:
            result = _ss17FixedWidthIntegerP10FoundationEyxSgSo9NSDecimalacfCs5Int32V_Tt1g5(v21, v19, v20);
            if ((result & 0x100000000) == 0)
            {
              return result;
            }

            goto LABEL_27;
          }
        }

        else
        {
          specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(__s1, a2, 0x2EuLL, 0xE100000000000000, 1, v37);
          if ((v39 & 1) == 0)
          {
            v19 = v37[1];
            v20 = v38;
            v21 = v37[0];
            goto LABEL_26;
          }
        }

        v22 = v17 - v14;
        v23 = (v14 - __s1) | (v17 - v14);
        if (a5)
        {
          if ((v23 & 0x8000000000000000) == 0)
          {
            specialized static JSON5Scanner.validateNumber(from:fullSource:)(v14, v22, a3, a4, v40);
            lazy protocol witness table accessor for type JSONError and conformance JSONError();
            swift_allocError();
            v25 = v40[2];
            v26 = v41;
            v27 = v40[1];
            v28 = v40[0];
LABEL_24:
            *(v24 + 48) = v26;
            *(v24 + 16) = v27;
            *(v24 + 32) = v25;
            *v24 = v28;
            return swift_willThrow();
          }

          __break(1u);
        }

        else if ((v23 & 0x8000000000000000) == 0)
        {
          specialized static JSONScanner.validateNumber(from:fullSource:)(v14, v22, a3, a4, v42);
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          v27 = v42[1];
          v25 = v42[2];
          v26 = v43;
          v28 = v42[0];
          goto LABEL_24;
        }

        __break(1u);
      }
    }
  }

  else
  {
    result = specialized static JSONScanner.prevalidateJSONNumber(from:hasExponent:fullSource:)(__s1, a2, a6 & 1, a3, a4);
    if (!v6)
    {
      v14 = result;
      result = specialized _parseInteger<A>(_:)(__s1, a2);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

{
  v44 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    result = specialized static JSON5Scanner.prevalidateJSONNumber(from:fullSource:)(__s1, a2, a3, a4);
    if (!v6)
    {
      v14 = result;
      v15 = v13;
      result = specialized _parseJSON5Integer<A>(_:isHex:)(__s1, a2, v13 & 1, specialized _parseHexIntegerDigits<A>(_:isNegative:), specialized _parseIntegerDigits<A>(_:isNegative:));
      if ((result & 0x100000000) != 0)
      {
        if ((v15 & 0x100) != 0)
        {
LABEL_27:
          v29 = static String._fromUTF8Repairing(_:)();
          v31 = v30;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v32 = v29;
          *(v32 + 8) = v31;
          *(v32 + 16) = 0u;
          *(v32 + 32) = 0u;
          *(v32 + 48) = 11;
          return swift_willThrow();
        }

LABEL_9:
        v33 = 0;
        v16.n128_f64[0] = _stringshims_strtod_clocale(__s1, &v33);
        v17 = &__s1[a2];
        if (v33 && v17 == v33)
        {
          v18 = v16.n128_f64[0];
          if (!_ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs6UInt32V_SdTt1g5(&v33, v16) || (BYTE4(v33) & 1) != 0)
          {
            goto LABEL_27;
          }

          if (fabs(v18) < 9.00719925e15)
          {
            return v33;
          }
        }

        if (__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation10BufferViewVys5UInt8VGMd, &_s10Foundation10BufferViewVys5UInt8VGMR) == MEMORY[0x1E69E6108])
        {
          specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(__s1, a2, 0x2EuLL, 0xE100000000000000, 1, v34);
          if (v36 != 1)
          {
            v19 = v34[1];
            v20 = v35;
            v21 = v34[0];
LABEL_26:
            result = _ss17FixedWidthIntegerP10FoundationEyxSgSo9NSDecimalacfCs6UInt32V_Tt1g5(v21, v19, v20);
            if ((result & 0x100000000) == 0)
            {
              return result;
            }

            goto LABEL_27;
          }
        }

        else
        {
          specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(__s1, a2, 0x2EuLL, 0xE100000000000000, 1, v37);
          if ((v39 & 1) == 0)
          {
            v19 = v37[1];
            v20 = v38;
            v21 = v37[0];
            goto LABEL_26;
          }
        }

        v22 = v17 - v14;
        v23 = (v14 - __s1) | (v17 - v14);
        if (a5)
        {
          if ((v23 & 0x8000000000000000) == 0)
          {
            specialized static JSON5Scanner.validateNumber(from:fullSource:)(v14, v22, a3, a4, v40);
            lazy protocol witness table accessor for type JSONError and conformance JSONError();
            swift_allocError();
            v25 = v40[2];
            v26 = v41;
            v27 = v40[1];
            v28 = v40[0];
LABEL_24:
            *(v24 + 48) = v26;
            *(v24 + 16) = v27;
            *(v24 + 32) = v25;
            *v24 = v28;
            return swift_willThrow();
          }

          __break(1u);
        }

        else if ((v23 & 0x8000000000000000) == 0)
        {
          specialized static JSONScanner.validateNumber(from:fullSource:)(v14, v22, a3, a4, v42);
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          v27 = v42[1];
          v25 = v42[2];
          v26 = v43;
          v28 = v42[0];
          goto LABEL_24;
        }

        __break(1u);
      }
    }
  }

  else
  {
    result = specialized static JSONScanner.prevalidateJSONNumber(from:hasExponent:fullSource:)(__s1, a2, a6 & 1, a3, a4);
    if (!v6)
    {
      v14 = result;
      result = specialized _parseInteger<A>(_:)(__s1, a2);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

unsigned __int8 *specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(char *__s1, unint64_t a2, unint64_t a3, uint64_t a4, char a5, char a6, uint64_t (*a7)(unsigned __int8 *, uint64_t, uint64_t), uint64_t (*a8)(char *, unint64_t))
{
  v50 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    result = specialized static JSON5Scanner.prevalidateJSONNumber(from:fullSource:)(__s1, a2, a3, a4);
    if (v8)
    {
      return result;
    }

    v17 = result;
    v18 = v16;
    result = specialized _parseJSON5Integer<A>(_:isHex:)(__s1, a2, v16 & 1, a7, specialized _parseIntegerDigits<A>(_:isNegative:));
    if ((v19 & 1) == 0)
    {
      return result;
    }

    if ((v18 & 0x100) != 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    result = specialized static JSONScanner.prevalidateJSONNumber(from:hasExponent:fullSource:)(__s1, a2, a6 & 1, a3, a4);
    if (v8)
    {
      return result;
    }

    v17 = result;
    result = a8(__s1, a2);
    if ((v21 & 1) == 0)
    {
      return result;
    }
  }

  v38 = 0;
  v22.n128_f64[0] = _stringshims_strtod_clocale(__s1, &v38);
  v23 = &__s1[a2];
  if (v38 && v23 == v38)
  {
    v24 = v22.n128_f64[0];
    if (!_ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs5Int64V_SdTt1g5Tm(&v38, v22) || (v39 & 1) != 0)
    {
      goto LABEL_17;
    }

    if (fabs(v24) < 9.00719925e15)
    {
      return v38;
    }
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation10BufferViewVys5UInt8VGMd, &_s10Foundation10BufferViewVys5UInt8VGMR) == MEMORY[0x1E69E6108])
  {
    specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(__s1, a2, 0x2EuLL, 0xE100000000000000, 1, v40);
    if (v42 != 1)
    {
      result = _ss17FixedWidthIntegerP10FoundationEyxSgSo9NSDecimalacfCSi_Tt1g5Tm(v40[0], v40[1], v41);
      if (v37)
      {
        goto LABEL_17;
      }

      return result;
    }

LABEL_19:
    v30 = v23 - v17;
    v31 = (v17 - __s1) | (v23 - v17);
    if (a5)
    {
      if ((v31 & 0x8000000000000000) == 0)
      {
        specialized static JSON5Scanner.validateNumber(from:fullSource:)(v17, v30, a3, a4, v46);
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        v34 = v46[1];
        v33 = v46[2];
        v35 = v47;
        v36 = v46[0];
LABEL_24:
        *(v32 + 48) = v35;
        *(v32 + 16) = v34;
        *(v32 + 32) = v33;
        *v32 = v36;
        return swift_willThrow();
      }

      __break(1u);
    }

    else if ((v31 & 0x8000000000000000) == 0)
    {
      specialized static JSONScanner.validateNumber(from:fullSource:)(v17, v30, a3, a4, v48);
      lazy protocol witness table accessor for type JSONError and conformance JSONError();
      swift_allocError();
      v34 = v48[1];
      v33 = v48[2];
      v35 = v49;
      v36 = v48[0];
      goto LABEL_24;
    }

    __break(1u);
  }

  specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(__s1, a2, 0x2EuLL, 0xE100000000000000, 1, v43);
  if (v45)
  {
    goto LABEL_19;
  }

  result = _ss17FixedWidthIntegerP10FoundationEyxSgSo9NSDecimalacfCSi_Tt1g5Tm(v43[0], v43[1], v44);
  if (v25)
  {
LABEL_17:
    v26 = static String._fromUTF8Repairing(_:)();
    v28 = v27;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v29 = v26;
    *(v29 + 8) = v28;
    *(v29 + 16) = 0u;
    *(v29 + 32) = 0u;
    *(v29 + 48) = 11;
    return swift_willThrow();
  }

  return result;
}

{
  v50 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    result = specialized static JSON5Scanner.prevalidateJSONNumber(from:fullSource:)(__s1, a2, a3, a4);
    if (v8)
    {
      return result;
    }

    v17 = result;
    v18 = v16;
    result = specialized _parseJSON5Integer<A>(_:isHex:)(__s1, a2, v16 & 1, a7, specialized _parseIntegerDigits<A>(_:isNegative:));
    if ((v19 & 1) == 0)
    {
      return result;
    }

    if ((v18 & 0x100) != 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    result = specialized static JSONScanner.prevalidateJSONNumber(from:hasExponent:fullSource:)(__s1, a2, a6 & 1, a3, a4);
    if (v8)
    {
      return result;
    }

    v17 = result;
    result = a8(__s1, a2);
    if ((v21 & 1) == 0)
    {
      return result;
    }
  }

  v38 = 0;
  v22.n128_f64[0] = _stringshims_strtod_clocale(__s1, &v38);
  v23 = &__s1[a2];
  if (v38 && v23 == v38)
  {
    v24 = v22.n128_f64[0];
    if (!_ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs6UInt64V_SdTt1g5Tm(&v38, v22) || (v39 & 1) != 0)
    {
      goto LABEL_17;
    }

    if (fabs(v24) < 9.00719925e15)
    {
      return v38;
    }
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation10BufferViewVys5UInt8VGMd, &_s10Foundation10BufferViewVys5UInt8VGMR) == MEMORY[0x1E69E6108])
  {
    specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(__s1, a2, 0x2EuLL, 0xE100000000000000, 1, v40);
    if (v42 != 1)
    {
      result = _ss17FixedWidthIntegerP10FoundationEyxSgSo9NSDecimalacfCSu_Tt1g5Tm(v40[0], v40[1], v41);
      if (v37)
      {
        goto LABEL_17;
      }

      return result;
    }

LABEL_19:
    v30 = v23 - v17;
    v31 = (v17 - __s1) | (v23 - v17);
    if (a5)
    {
      if ((v31 & 0x8000000000000000) == 0)
      {
        specialized static JSON5Scanner.validateNumber(from:fullSource:)(v17, v30, a3, a4, v46);
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        v34 = v46[1];
        v33 = v46[2];
        v35 = v47;
        v36 = v46[0];
LABEL_24:
        *(v32 + 48) = v35;
        *(v32 + 16) = v34;
        *(v32 + 32) = v33;
        *v32 = v36;
        return swift_willThrow();
      }

      __break(1u);
    }

    else if ((v31 & 0x8000000000000000) == 0)
    {
      specialized static JSONScanner.validateNumber(from:fullSource:)(v17, v30, a3, a4, v48);
      lazy protocol witness table accessor for type JSONError and conformance JSONError();
      swift_allocError();
      v34 = v48[1];
      v33 = v48[2];
      v35 = v49;
      v36 = v48[0];
      goto LABEL_24;
    }

    __break(1u);
  }

  specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(__s1, a2, 0x2EuLL, 0xE100000000000000, 1, v43);
  if (v45)
  {
    goto LABEL_19;
  }

  result = _ss17FixedWidthIntegerP10FoundationEyxSgSo9NSDecimalacfCSu_Tt1g5Tm(v43[0], v43[1], v44);
  if (v25)
  {
LABEL_17:
    v26 = static String._fromUTF8Repairing(_:)();
    v28 = v27;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v29 = v26;
    *(v29 + 8) = v28;
    *(v29 + 16) = 0u;
    *(v29 + 32) = 0u;
    *(v29 + 48) = 11;
    return swift_willThrow();
  }

  return result;
}

unsigned __int8 *specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(char *__s1, unint64_t a2, unint64_t a3, uint64_t a4, char a5, char a6)
{
  v46 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    result = specialized static JSON5Scanner.prevalidateJSONNumber(from:fullSource:)(__s1, a2, a3, a4);
    if (v6)
    {
      return result;
    }

    v14 = result;
    v15 = v13;
    result = specialized _parseJSON5Integer<A>(_:isHex:)(__s1, a2, v13 & 1, specialized _parseHexIntegerDigits<A>(_:isNegative:), specialized _parseIntegerDigits<A>(_:isNegative:));
    if ((v16 & 1) == 0)
    {
      return result;
    }

    if ((v15 & 0x100) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    result = specialized static JSONScanner.prevalidateJSONNumber(from:hasExponent:fullSource:)(__s1, a2, a6 & 1, a3, a4);
    if (v6)
    {
      return result;
    }

    v14 = result;
    result = specialized _parseInteger<A>(_:)(__s1, a2);
    if ((v17 & 1) == 0)
    {
      return result;
    }
  }

  v35 = 0;
  v18.n128_f64[0] = _stringshims_strtod_clocale(__s1, &v35);
  v19 = &__s1[a2];
  if (!v35 || v19 != v35)
  {
    goto LABEL_12;
  }

  v20 = v18.n128_f64[0];
  result = _ss6Int128V7exactlyABSgx_tcSBRzlufCSd_Tt0g5(v18);
  if (v21)
  {
LABEL_15:
    v23 = static String._fromUTF8Repairing(_:)();
    v25 = v24;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v26 = v23;
    *(v26 + 8) = v25;
    *(v26 + 16) = 0u;
    *(v26 + 32) = 0u;
    *(v26 + 48) = 11;
    return swift_willThrow();
  }

  if (fabs(v20) >= 9.00719925e15)
  {
LABEL_12:
    if (__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation10BufferViewVys5UInt8VGMd, &_s10Foundation10BufferViewVys5UInt8VGMR) == MEMORY[0x1E69E6108])
    {
      specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(__s1, a2, 0x2EuLL, 0xE100000000000000, 1, v36);
      if (v38 != 1)
      {
        result = _ss17FixedWidthIntegerP10FoundationEyxSgSo9NSDecimalacfCs6Int128V_Tt1g5(v36[0], v36[1], v37);
        if (v34)
        {
          goto LABEL_15;
        }

        return result;
      }
    }

    else
    {
      specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(__s1, a2, 0x2EuLL, 0xE100000000000000, 1, v39);
      if ((v41 & 1) == 0)
      {
        result = _ss17FixedWidthIntegerP10FoundationEyxSgSo9NSDecimalacfCs6Int128V_Tt1g5(v39[0], v39[1], v40);
        if (v22)
        {
          goto LABEL_15;
        }

        return result;
      }
    }

    v27 = v19 - v14;
    v28 = (v14 - __s1) | (v19 - v14);
    if (a5)
    {
      if ((v28 & 0x8000000000000000) == 0)
      {
        specialized static JSON5Scanner.validateNumber(from:fullSource:)(v14, v27, a3, a4, v42);
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        v30 = v42[2];
        v31 = v43;
        v32 = v42[1];
        v33 = v42[0];
LABEL_22:
        *(v29 + 48) = v31;
        *(v29 + 16) = v32;
        *(v29 + 32) = v30;
        *v29 = v33;
        return swift_willThrow();
      }

      __break(1u);
    }

    else if ((v28 & 0x8000000000000000) == 0)
    {
      specialized static JSONScanner.validateNumber(from:fullSource:)(v14, v27, a3, a4, v44);
      lazy protocol witness table accessor for type JSONError and conformance JSONError();
      swift_allocError();
      v32 = v44[1];
      v30 = v44[2];
      v31 = v45;
      v33 = v44[0];
      goto LABEL_22;
    }

    __break(1u);
  }

  return result;
}

{
  v46 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    result = specialized static JSON5Scanner.prevalidateJSONNumber(from:fullSource:)(__s1, a2, a3, a4);
    if (v6)
    {
      return result;
    }

    v14 = result;
    v15 = v13;
    result = specialized _parseJSON5Integer<A>(_:isHex:)(__s1, a2, v13 & 1, specialized _parseHexIntegerDigits<A>(_:isNegative:), specialized _parseIntegerDigits<A>(_:isNegative:));
    if ((v16 & 1) == 0)
    {
      return result;
    }

    if ((v15 & 0x100) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    result = specialized static JSONScanner.prevalidateJSONNumber(from:hasExponent:fullSource:)(__s1, a2, a6 & 1, a3, a4);
    if (v6)
    {
      return result;
    }

    v14 = result;
    result = specialized _parseInteger<A>(_:)(__s1, a2);
    if ((v17 & 1) == 0)
    {
      return result;
    }
  }

  v35 = 0;
  v18.n128_f64[0] = _stringshims_strtod_clocale(__s1, &v35);
  v19 = &__s1[a2];
  if (!v35 || v19 != v35)
  {
    goto LABEL_12;
  }

  v20 = v18.n128_f64[0];
  result = _ss7UInt128V7exactlyABSgx_tcSBRzlufCSd_Tt0g5(v18);
  if (v21)
  {
LABEL_15:
    v23 = static String._fromUTF8Repairing(_:)();
    v25 = v24;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v26 = v23;
    *(v26 + 8) = v25;
    *(v26 + 16) = 0u;
    *(v26 + 32) = 0u;
    *(v26 + 48) = 11;
    return swift_willThrow();
  }

  if (fabs(v20) >= 9.00719925e15)
  {
LABEL_12:
    if (__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation10BufferViewVys5UInt8VGMd, &_s10Foundation10BufferViewVys5UInt8VGMR) == MEMORY[0x1E69E6108])
    {
      specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(__s1, a2, 0x2EuLL, 0xE100000000000000, 1, v36);
      if (v38 != 1)
      {
        result = _ss17FixedWidthIntegerP10FoundationEyxSgSo9NSDecimalacfCs7UInt128V_Tt1g5(v36[0], v36[1], v37);
        if (v34)
        {
          goto LABEL_15;
        }

        return result;
      }
    }

    else
    {
      specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(__s1, a2, 0x2EuLL, 0xE100000000000000, 1, v39);
      if ((v41 & 1) == 0)
      {
        result = _ss17FixedWidthIntegerP10FoundationEyxSgSo9NSDecimalacfCs7UInt128V_Tt1g5(v39[0], v39[1], v40);
        if (v22)
        {
          goto LABEL_15;
        }

        return result;
      }
    }

    v27 = v19 - v14;
    v28 = (v14 - __s1) | (v19 - v14);
    if (a5)
    {
      if ((v28 & 0x8000000000000000) == 0)
      {
        specialized static JSON5Scanner.validateNumber(from:fullSource:)(v14, v27, a3, a4, v42);
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        v30 = v42[2];
        v31 = v43;
        v32 = v42[1];
        v33 = v42[0];
LABEL_22:
        *(v29 + 48) = v31;
        *(v29 + 16) = v32;
        *(v29 + 32) = v30;
        *v29 = v33;
        return swift_willThrow();
      }

      __break(1u);
    }

    else if ((v28 & 0x8000000000000000) == 0)
    {
      specialized static JSONScanner.validateNumber(from:fullSource:)(v14, v27, a3, a4, v44);
      lazy protocol witness table accessor for type JSONError and conformance JSONError();
      swift_allocError();
      v32 = v44[1];
      v30 = v44[2];
      v31 = v45;
      v33 = v44[0];
      goto LABEL_22;
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(char *__s1, unint64_t a2, unint64_t a3, uint64_t a4, char a5, char a6, uint64_t (*a7)(char *, unint64_t, void), uint64_t (*a8)(char *, unint64_t), uint64_t (*a9)(char **), uint64_t (*a10)(uint64_t, uint64_t, uint64_t))
{
  v48 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    result = specialized static JSON5Scanner.prevalidateJSONNumber(from:fullSource:)(__s1, a2, a3, a4);
    if (!v10)
    {
      v19 = result;
      v20 = v18;
      result = a7(__s1, a2, v18 & 1);
      if ((result & 0x100) != 0)
      {
        if ((v20 & 0x100) != 0)
        {
LABEL_27:
          v35 = static String._fromUTF8Repairing(_:)();
          v37 = v36;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v38 = v35;
          *(v38 + 8) = v37;
          *(v38 + 16) = 0u;
          *(v38 + 32) = 0u;
          *(v38 + 48) = 11;
          return swift_willThrow();
        }

LABEL_9:
        v39 = 0;
        v22 = _stringshims_strtod_clocale(__s1, &v39);
        v23 = &__s1[a2];
        if (v39 && v23 == v39)
        {
          v24 = v22;
          if (a9(&v39) & 1) == 0 || (BYTE1(v39))
          {
            goto LABEL_27;
          }

          if (fabs(v24) < 9.00719925e15)
          {
            return v39;
          }
        }

        if (__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation10BufferViewVys5UInt8VGMd, &_s10Foundation10BufferViewVys5UInt8VGMR) == MEMORY[0x1E69E6108])
        {
          specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(__s1, a2, 0x2EuLL, 0xE100000000000000, 1, v40);
          if (v41 != 1)
          {
            v25 = v40[1];
            v26 = v40[2];
            v27 = v40[0];
LABEL_26:
            result = a10(v27, v25, v26);
            if ((result & 0x100) == 0)
            {
              return result;
            }

            goto LABEL_27;
          }
        }

        else
        {
          specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(__s1, a2, 0x2EuLL, 0xE100000000000000, 1, v42);
          if ((v43 & 1) == 0)
          {
            v25 = v42[1];
            v26 = v42[2];
            v27 = v42[0];
            goto LABEL_26;
          }
        }

        v28 = v23 - v19;
        v29 = (v19 - __s1) | (v23 - v19);
        if (a5)
        {
          if ((v29 & 0x8000000000000000) == 0)
          {
            specialized static JSON5Scanner.validateNumber(from:fullSource:)(v19, v28, a3, a4, v44);
            lazy protocol witness table accessor for type JSONError and conformance JSONError();
            swift_allocError();
            v32 = v44[1];
            v31 = v44[2];
            v33 = v45;
            v34 = v44[0];
LABEL_24:
            *(v30 + 48) = v33;
            *(v30 + 16) = v32;
            *(v30 + 32) = v31;
            *v30 = v34;
            return swift_willThrow();
          }

          __break(1u);
        }

        else if ((v29 & 0x8000000000000000) == 0)
        {
          specialized static JSONScanner.validateNumber(from:fullSource:)(v19, v28, a3, a4, v46);
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          v31 = v46[2];
          v33 = v47;
          v32 = v46[1];
          v34 = v46[0];
          goto LABEL_24;
        }

        __break(1u);
      }
    }
  }

  else
  {
    result = specialized static JSONScanner.prevalidateJSONNumber(from:hasExponent:fullSource:)(__s1, a2, a6 & 1, a3, a4);
    if (!v10)
    {
      v19 = result;
      result = a8(__s1, a2);
      if ((result & 0x100) != 0)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

{
  v48 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    result = specialized static JSON5Scanner.prevalidateJSONNumber(from:fullSource:)(__s1, a2, a3, a4);
    if (!v10)
    {
      v19 = result;
      v20 = v18;
      result = a7(__s1, a2, v18 & 1);
      if ((result & 0x10000) != 0)
      {
        if ((v20 & 0x100) != 0)
        {
LABEL_27:
          v35 = static String._fromUTF8Repairing(_:)();
          v37 = v36;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v38 = v35;
          *(v38 + 8) = v37;
          *(v38 + 16) = 0u;
          *(v38 + 32) = 0u;
          *(v38 + 48) = 11;
          return swift_willThrow();
        }

LABEL_9:
        v39 = 0;
        v22 = _stringshims_strtod_clocale(__s1, &v39);
        v23 = &__s1[a2];
        if (v39 && v23 == v39)
        {
          v24 = v22;
          if (a9(&v39) & 1) == 0 || (BYTE2(v39))
          {
            goto LABEL_27;
          }

          if (fabs(v24) < 9.00719925e15)
          {
            return v39;
          }
        }

        if (__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation10BufferViewVys5UInt8VGMd, &_s10Foundation10BufferViewVys5UInt8VGMR) == MEMORY[0x1E69E6108])
        {
          specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(__s1, a2, 0x2EuLL, 0xE100000000000000, 1, v40);
          if (v41 != 1)
          {
            v25 = v40[1];
            v26 = v40[2];
            v27 = v40[0];
LABEL_26:
            result = a10(v27, v25, v26);
            if ((result & 0x10000) == 0)
            {
              return result;
            }

            goto LABEL_27;
          }
        }

        else
        {
          specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(__s1, a2, 0x2EuLL, 0xE100000000000000, 1, v42);
          if ((v43 & 1) == 0)
          {
            v25 = v42[1];
            v26 = v42[2];
            v27 = v42[0];
            goto LABEL_26;
          }
        }

        v28 = v23 - v19;
        v29 = (v19 - __s1) | (v23 - v19);
        if (a5)
        {
          if ((v29 & 0x8000000000000000) == 0)
          {
            specialized static JSON5Scanner.validateNumber(from:fullSource:)(v19, v28, a3, a4, v44);
            lazy protocol witness table accessor for type JSONError and conformance JSONError();
            swift_allocError();
            v32 = v44[1];
            v31 = v44[2];
            v33 = v45;
            v34 = v44[0];
LABEL_24:
            *(v30 + 48) = v33;
            *(v30 + 16) = v32;
            *(v30 + 32) = v31;
            *v30 = v34;
            return swift_willThrow();
          }

          __break(1u);
        }

        else if ((v29 & 0x8000000000000000) == 0)
        {
          specialized static JSONScanner.validateNumber(from:fullSource:)(v19, v28, a3, a4, v46);
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          v31 = v46[2];
          v33 = v47;
          v32 = v46[1];
          v34 = v46[0];
          goto LABEL_24;
        }

        __break(1u);
      }
    }
  }

  else
  {
    result = specialized static JSONScanner.prevalidateJSONNumber(from:hasExponent:fullSource:)(__s1, a2, a6 & 1, a3, a4);
    if (!v10)
    {
      v19 = result;
      result = a8(__s1, a2);
      if ((result & 0x10000) != 0)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

unsigned __int8 *partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 **a5@<X8>)
{
  return partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, specialized _parseHexIntegerDigits<A>(_:isNegative:), specialized _parseIntegerDigits<A>(_:isNegative:), specialized static JSONDecoderImpl._slowpath_unwrapFixedWidthInteger<A, B>(as:json5:numberBuffer:fullSource:digitBeginning:for:_:), specialized _parseInteger<A>(_:), a5);
}

{
  return partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, specialized _parseHexIntegerDigits<A>(_:isNegative:), specialized _parseIntegerDigits<A>(_:isNegative:), specialized static JSONDecoderImpl._slowpath_unwrapFixedWidthInteger<A, B>(as:json5:numberBuffer:fullSource:digitBeginning:for:_:), specialized _parseInteger<A>(_:), a5);
}

{
  return partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, specialized _parseHexIntegerDigits<A>(_:isNegative:), specialized _parseIntegerDigits<A>(_:isNegative:), specialized static JSONDecoderImpl._slowpath_unwrapFixedWidthInteger<A, B>(as:json5:numberBuffer:fullSource:digitBeginning:for:_:), specialized _parseInteger<A>(_:), a5);
}

{
  return partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, specialized _parseHexIntegerDigits<A>(_:isNegative:), specialized _parseIntegerDigits<A>(_:isNegative:), specialized static JSONDecoderImpl._slowpath_unwrapFixedWidthInteger<A, B>(as:json5:numberBuffer:fullSource:digitBeginning:for:_:), specialized _parseInteger<A>(_:), a5);
}

unint64_t partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X8>)
{
  return partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, specialized _parseHexIntegerDigits<A>(_:isNegative:), specialized _parseIntegerDigits<A>(_:isNegative:), specialized static JSONDecoderImpl._slowpath_unwrapFixedWidthInteger<A, B>(as:json5:numberBuffer:fullSource:digitBeginning:for:_:), specialized _parseInteger<A>(_:), a5);
}

{
  return partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, specialized _parseHexIntegerDigits<A>(_:isNegative:), specialized _parseIntegerDigits<A>(_:isNegative:), specialized static JSONDecoderImpl._slowpath_unwrapFixedWidthInteger<A, B>(as:json5:numberBuffer:fullSource:digitBeginning:for:_:), specialized _parseInteger<A>(_:), a5);
}

unint64_t partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, _WORD *a5@<X8>)
{
  return partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, specialized _parseJSON5Integer<A>(_:isHex:), specialized static JSONDecoderImpl._slowpath_unwrapFixedWidthInteger<A, B>(as:json5:numberBuffer:fullSource:digitBeginning:for:_:), specialized _parseInteger<A>(_:), a5);
}

{
  return partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, specialized _parseJSON5Integer<A>(_:isHex:), specialized static JSONDecoderImpl._slowpath_unwrapFixedWidthInteger<A, B>(as:json5:numberBuffer:fullSource:digitBeginning:for:_:), specialized _parseInteger<A>(_:), a5);
}

unint64_t partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  return partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, specialized _parseJSON5Integer<A>(_:isHex:), specialized static JSONDecoderImpl._slowpath_unwrapFixedWidthInteger<A, B>(as:json5:numberBuffer:fullSource:digitBeginning:for:_:), specialized _parseInteger<A>(_:), a5);
}

{
  return partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, specialized _parseJSON5Integer<A>(_:isHex:), specialized static JSONDecoderImpl._slowpath_unwrapFixedWidthInteger<A, B>(as:json5:numberBuffer:fullSource:digitBeginning:for:_:), specialized _parseInteger<A>(_:), a5);
}

unsigned __int8 *partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(unsigned __int8 *, uint64_t, uint64_t)@<X4>, uint64_t (*a6)(unsigned __int8 *, uint64_t, uint64_t, uint64_t (*)(unsigned __int8 *, uint64_t, uint64_t))@<X5>, uint64_t (*a7)(void, unsigned __int8 *, uint64_t, unint64_t, uint64_t, unint64_t)@<X6>, uint64_t (*a8)(void)@<X7>, unsigned __int8 **a9@<X8>)
{
  result = specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, *(v9 + 16), *(v9 + 17), a5, a6, a7, a8);
  if (!v10)
  {
    *a9 = result;
  }

  return result;
}

{
  result = specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, *(v9 + 16), *(v9 + 17), a5, a6, a7, a8);
  if (!v10)
  {
    *a9 = result;
    a9[1] = v13;
  }

  return result;
}

unint64_t partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(unsigned __int8 *, uint64_t, uint64_t)@<X4>, uint64_t (*a6)(unsigned __int8 *, uint64_t, uint64_t, uint64_t (*)(unsigned __int8 *, uint64_t, uint64_t))@<X5>, uint64_t (*a7)(void, unint64_t, uint64_t, unint64_t, uint64_t, unint64_t)@<X6>, uint64_t (*a8)(void)@<X7>, _DWORD *a9@<X8>)
{
  result = specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, *(v9 + 16), *(v9 + 17), a5, a6, a7, a8);
  if (!v10)
  {
    *a9 = result;
  }

  return result;
}

unint64_t partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t (*a6)(void, unint64_t, uint64_t, unint64_t, uint64_t, unint64_t)@<X5>, uint64_t (*a7)(void)@<X6>, _WORD *a8@<X8>)
{
  result = specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, *(v8 + 16), *(v8 + 17), a5, a6, a7);
  if (!v9)
  {
    *a8 = result;
  }

  return result;
}

unint64_t partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t (*a6)(void, unint64_t, uint64_t, unint64_t, uint64_t, unint64_t)@<X5>, uint64_t (*a7)(void)@<X6>, _BYTE *a8@<X8>)
{
  result = specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, *(v8 + 16), *(v8 + 17), a5, a6, a7);
  if (!v9)
  {
    *a8 = result;
  }

  return result;
}

unint64_t partial apply for specialized closure #2 in JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)@<X0>(void *a1@<X0>, size_t a2@<X1>, uint64_t a3@<X8>)
{
  result = specialized closure #2 in JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(a1, a2, v3[2], v3[3], v3[4], v3[5], v3[6], v3[7]);
  if (!v4)
  {
    *a3 = result;
    *(a3 + 4) = BYTE4(result) & 1;
  }

  return result;
}

void partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X8>)
{
  specialized closure #1 in JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(a1, a2, a3, a4, *(v5 + 16), *(v5 + 17));
  if (!v6)
  {
    *a5 = v8;
  }
}

uint64_t specialized JSONDecoderImpl.UnkeyedContainer.decode(_:)()
{
  v1 = v0;
  v3 = (v0 + 24);
  v2 = *(v0 + 24);
  v4 = *(v0 + 40);
  if (v4 >= 0xFE)
  {
    v5 = *(v0 + 8);
    v6 = JSONMap.loadValue(at:)(v5);
    if (v8 > 0xFDu)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7Decoder_pMd, &_ss7Decoder_pMR);
      v9 = MEMORY[0x1E69E6370];
      v2 = _CodingPathNode.path.getter(*(v0 + 72));
      v1 = *(v0 + 64);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_4:
        v11 = *(v2 + 16);
        v10 = *(v2 + 24);
        if (v11 >= v10 >> 1)
        {
          v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v2);
        }

        v32 = &type metadata for _CodingKey;
        v33 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
        v12 = swift_allocObject();
        *&v31 = v12;
        *(v12 + 24) = 0;
        *(v12 + 32) = 0;
        *(v12 + 16) = v1;
        *(v12 + 40) = 2;
        *(v2 + 16) = v11 + 1;
        outlined init with take of Equatable(&v31, v2 + 40 * v11 + 32);
        v13 = type metadata accessor for DecodingError();
        swift_allocError();
        v15 = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
        *v15 = v9;
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v13 - 8) + 104))(v15, *MEMORY[0x1E69E6B08], v13);
LABEL_24:
        swift_willThrow();
        return v2 & 1;
      }

LABEL_27:
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 16) + 1, 1, v2);
      goto LABEL_4;
    }

    v2 = v6;
    v16 = v7;
    LOBYTE(v4) = v8;
    *(v0 + 8) = JSONMap.offset(after:)(v5);
    *(v0 + 24) = v2;
    *(v0 + 32) = v16;
    *(v0 + 40) = v4;
  }

  v9 = v4 >> 5;
  v17 = *(v0 + 64);
  if (v9 != 2)
  {
    _CodingPathNode.path.getter(*(v1 + 72));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 56) = &type metadata for _CodingKey;
    *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v19 = swift_allocObject();
    *(inited + 32) = v19;
    *(v19 + 16) = v17;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0;
    *(v19 + 40) = 2;
    specialized Array.append<A>(contentsOf:)(inited);
    v2 = type metadata accessor for DecodingError();
    swift_allocError();
    v21 = v20;
    *v20 = MEMORY[0x1E69E6370];
    _StringGuts.grow(_:)(43);

    *&v31 = 0xD000000000000022;
    *(&v31 + 1) = 0x8000000181482220;
    v22 = 0xE800000000000000;
    v23 = 0x676E697274732061;
    v24 = 0xEC0000007972616ELL;
    v25 = 0x6F69746369642061;
    v26 = 0xE800000000000000;
    v27 = 0x7961727261206E61;
    if (v9 != 4)
    {
      v27 = 1819047278;
      v26 = 0xE400000000000000;
    }

    if (v9 != 3)
    {
      v25 = v27;
      v24 = v26;
    }

    if (v9)
    {
      v23 = 0x7265626D756ELL;
      v22 = 0xE600000000000000;
    }

    if (v9 <= 2)
    {
      v28 = v23;
    }

    else
    {
      v28 = v25;
    }

    if (v9 <= 2)
    {
      v29 = v22;
    }

    else
    {
      v29 = v24;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    MEMORY[0x1865CB0E0](v28, v29);

    MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v2 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8], v2);
    goto LABEL_24;
  }

  if (__OFADD__(v17, 1))
  {
    __break(1u);
    goto LABEL_27;
  }

  *(v1 + 64) = v17 + 1;
  *v3 = 0;
  v3[1] = 0;
  *(v1 + 40) = -2;
  return v2 & 1;
}

{
  v3 = v0;
  v5 = (v0 + 24);
  v4 = *(v0 + 24);
  v6 = *(v0 + 40);
  if (v6 < 0xFE)
  {
    v19 = *(v0 + 32);
LABEL_9:
    v11 = *v0;
    v25 = *(v3 + 64);
    result = specialized JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(v4, v19, v6, *(v3 + 72), v25, 0, 0, 2);
    if (v1)
    {
      return result;
    }

    if (!__OFADD__(v25, 1))
    {
      *(v3 + 64) = v25 + 1;
      *v5 = 0;
      v5[1] = 0;
      *(v3 + 40) = -2;
      return result;
    }

    __break(1u);
    goto LABEL_14;
  }

  v7 = *(v0 + 8);
  v8 = JSONMap.loadValue(at:)(v7);
  if (v10 <= 0xFDu)
  {
    v2 = v8;
    v20 = v7;
    v21 = v10;
    v22 = v9;
    v23 = JSONMap.offset(after:)(v20);
    v19 = v22;
    LOBYTE(v6) = v21;
    v24 = v23;
    v4 = v2;
    *(v0 + 8) = v24;
    *(v0 + 24) = v2;
    *(v0 + 32) = v22;
    *(v0 + 40) = v21;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7Decoder_pMd, &_ss7Decoder_pMR);
  v2 = MEMORY[0x1E69E63B0];
  v11 = _CodingPathNode.path.getter(*(v0 + 72));
  v5 = *(v3 + 64);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
  }

  v13 = v11[2];
  v12 = v11[3];
  if (v13 >= v12 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v11);
  }

  v27 = &type metadata for _CodingKey;
  v28 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v14 = swift_allocObject();
  *&v26 = v14;
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  *(v14 + 16) = v5;
  *(v14 + 40) = 2;
  v11[2] = v13 + 1;
  outlined init with take of Equatable(&v26, &v11[5 * v13 + 4]);
  v15 = type metadata accessor for DecodingError();
  swift_allocError();
  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
  *v17 = v2;
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B08], v15);
  return swift_willThrow();
}

{
  v3 = v0;
  v5 = (v0 + 24);
  v4 = *(v0 + 24);
  v6 = *(v0 + 40);
  if (v6 < 0xFE)
  {
    v19 = *(v0 + 32);
LABEL_9:
    v11 = *v0;
    v25 = *(v3 + 64);
    result = specialized JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(v4, v19, v6, *(v3 + 72), v25, 0, 0, 2);
    if (v1)
    {
      return result;
    }

    if (!__OFADD__(v25, 1))
    {
      *(v3 + 64) = v25 + 1;
      *v5 = 0;
      v5[1] = 0;
      *(v3 + 40) = -2;
      return result;
    }

    __break(1u);
    goto LABEL_14;
  }

  v7 = *(v0 + 8);
  v8 = JSONMap.loadValue(at:)(v7);
  if (v10 <= 0xFDu)
  {
    v2 = v8;
    v20 = v7;
    v21 = v10;
    v22 = v9;
    v23 = JSONMap.offset(after:)(v20);
    v19 = v22;
    LOBYTE(v6) = v21;
    v24 = v23;
    v4 = v2;
    *(v0 + 8) = v24;
    *(v0 + 24) = v2;
    *(v0 + 32) = v22;
    *(v0 + 40) = v21;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7Decoder_pMd, &_ss7Decoder_pMR);
  v2 = MEMORY[0x1E69E6448];
  v11 = _CodingPathNode.path.getter(*(v0 + 72));
  v5 = *(v3 + 64);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
  }

  v13 = v11[2];
  v12 = v11[3];
  if (v13 >= v12 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v11);
  }

  v27 = &type metadata for _CodingKey;
  v28 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v14 = swift_allocObject();
  *&v26 = v14;
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  *(v14 + 16) = v5;
  *(v14 + 40) = 2;
  v11[2] = v13 + 1;
  outlined init with take of Equatable(&v26, &v11[5 * v13 + 4]);
  v15 = type metadata accessor for DecodingError();
  swift_allocError();
  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
  *v17 = v2;
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B08], v15);
  return swift_willThrow();
}

void specialized JSONDecoderImpl.UnkeyedContainer.decodeIfPresent(_:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  if (v2 < 0xFE)
  {
    v7 = *(v0 + 32);
  }

  else
  {
    v3 = *(v0 + 8);
    v4 = JSONMap.loadValue(at:)(v3);
    if (v6 > 0xFDu)
    {
LABEL_28:
      v27 = *(v0 + 64);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        __break(1u);
      }

      else
      {
        *(v0 + 64) = v29;
        *(v0 + 24) = 0;
        *(v0 + 32) = 0;
        *(v0 + 40) = -2;
      }

      return;
    }

    v1 = v4;
    v7 = v5;
    LOBYTE(v2) = v6;
    *(v0 + 8) = JSONMap.offset(after:)(v3);
    *(v0 + 24) = v1;
    *(v0 + 32) = v7;
    *(v0 + 40) = v2;
  }

  v8 = v2 >> 5;
  if (v8 == 2)
  {
    goto LABEL_28;
  }

  v9 = v8 == 5 && (v7 | v1) == 0;
  if (v9 && v2 == 160)
  {
    goto LABEL_28;
  }

  v10 = *(v0 + 64);
  _CodingPathNode.path.getter(*(v0 + 72));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_181218E20;
  *(inited + 56) = &type metadata for _CodingKey;
  *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v12 = swift_allocObject();
  *(inited + 32) = v12;
  *(v12 + 16) = v10;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 40) = 2;
  specialized Array.append<A>(contentsOf:)(inited);
  v13 = type metadata accessor for DecodingError();
  swift_allocError();
  v15 = v14;
  *v14 = MEMORY[0x1E69E6370];
  _StringGuts.grow(_:)(43);

  v16 = 0xE800000000000000;
  v17 = 0x676E697274732061;
  v18 = 0xEC0000007972616ELL;
  v19 = 0x6F69746369642061;
  v20 = 0xE800000000000000;
  v21 = 0x7961727261206E61;
  if (v8 != 4)
  {
    v21 = 1819047278;
    v20 = 0xE400000000000000;
  }

  if (v8 != 3)
  {
    v19 = v21;
    v18 = v20;
  }

  v22 = 0xE600000000000000;
  v23 = 0x7265626D756ELL;
  if (v8 != 1)
  {
    v23 = 1819242338;
    v22 = 0xE400000000000000;
  }

  if (v8)
  {
    v17 = v23;
    v16 = v22;
  }

  v24 = v8 <= 2;
  if (v8 <= 2)
  {
    v25 = v17;
  }

  else
  {
    v25 = v19;
  }

  if (v24)
  {
    v26 = v16;
  }

  else
  {
    v26 = v18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
  MEMORY[0x1865CB0E0](v25, v26);

  MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v13 - 8) + 104))(v15, *MEMORY[0x1E69E6AF8], v13);
  swift_willThrow();
}

uint64_t specialized JSONDecoderImpl.UnkeyedContainer.decodeIfPresent(_:)()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  if (v3 < 0xFE)
  {
    v9 = *(v0 + 32);
  }

  else
  {
    v4 = *(v0 + 8);
    v5 = JSONMap.loadValue(at:)(v4);
    if (v7 > 0xFDu)
    {
      result = 0;
      goto LABEL_15;
    }

    v10 = v5;
    v11 = v4;
    v12 = v7;
    v13 = v6;
    v14 = JSONMap.offset(after:)(v11);
    v9 = v13;
    LOBYTE(v3) = v12;
    v15 = v14;
    v2 = v10;
    *(v0 + 8) = v15;
    *(v0 + 24) = v10;
    *(v0 + 32) = v13;
    *(v0 + 40) = v12;
  }

  v16 = (v3 & 0xE0) == 0xA0 && (v9 | v2) == 0;
  if (v16 && v3 == 160)
  {
    result = 0;
  }

  else
  {
    result = specialized JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(v2, v9, v3, *(v0 + 72), *(v0 + 64), 0, 0, 2);
    if (v1)
    {
      return result;
    }

    result = v17;
  }

LABEL_15:
  v18 = *(v0 + 64);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 64) = v20;
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;
    *(v0 + 40) = -2;
  }

  return result;
}

unint64_t specialized JSONDecoderImpl.UnkeyedContainer.decodeIfPresent(_:)()
{
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  if (v3 < 0xFE)
  {
    v9 = *(v0 + 32);
  }

  else
  {
    v4 = *(v0 + 8);
    result = JSONMap.loadValue(at:)(v4);
    if (v6 > 0xFDu)
    {
      v7 = 0;
      v8 = 1;
      goto LABEL_15;
    }

    v10 = result;
    v11 = v4;
    v12 = v6;
    v13 = v5;
    v14 = JSONMap.offset(after:)(v11);
    v9 = v13;
    LOBYTE(v3) = v12;
    v15 = v14;
    result = v10;
    *(v0 + 8) = v15;
    *(v0 + 24) = v10;
    *(v0 + 32) = v13;
    *(v0 + 40) = v12;
  }

  v16 = (v3 & 0xE0) == 0xA0 && (v9 | result) == 0;
  if (v16 && v3 == 160)
  {
    v7 = 0;
    v8 = 1;
  }

  else
  {
    result = specialized JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(result, v9, v3, *(v0 + 72), *(v0 + 64), 0, 0, 2);
    if (v1)
    {
      return result;
    }

    v8 = 0;
    v7 = v17;
  }

LABEL_15:
  v18 = *(v0 + 64);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 64) = v20;
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;
    *(v0 + 40) = -2;
    return v7 | (v8 << 32);
  }

  return result;
}

uint64_t specialized JSONDecoderImpl.UnkeyedContainer.decodeIfPresent(_:)(uint64_t (*a1)(void))
{
  v4 = *(v1 + 24);
  v5 = *(v1 + 40);
  if (v5 < 0xFE)
  {
    v12 = *(v1 + 32);
  }

  else
  {
    v6 = *(v1 + 8);
    v7 = JSONMap.loadValue(at:)(v6);
    if (v9 > 0xFDu)
    {
      result = 0;
      v11 = 1;
      goto LABEL_15;
    }

    v13 = v7;
    v14 = v6;
    v15 = v9;
    v16 = v8;
    v17 = JSONMap.offset(after:)(v14);
    v12 = v16;
    LOBYTE(v5) = v15;
    v18 = v17;
    v4 = v13;
    *(v1 + 8) = v18;
    *(v1 + 24) = v13;
    *(v1 + 32) = v16;
    *(v1 + 40) = v15;
  }

  v19 = (v5 & 0xE0) == 0xA0 && (v12 | v4) == 0;
  if (v19 && v5 == 160)
  {
    result = 0;
    v11 = 1;
  }

  else
  {
    result = a1();
    if (v2)
    {
      return result;
    }

    v11 = 0;
  }

LABEL_15:
  v20 = *(v1 + 64);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 64) = v22;
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 40) = -2;
    return result | (v11 << 8);
  }

  return result;
}

{
  v4 = *(v1 + 24);
  v5 = *(v1 + 40);
  if (v5 < 0xFE)
  {
    v12 = *(v1 + 32);
  }

  else
  {
    v6 = *(v1 + 8);
    v7 = JSONMap.loadValue(at:)(v6);
    if (v9 > 0xFDu)
    {
      result = 0;
      v11 = 1;
      goto LABEL_15;
    }

    v13 = v7;
    v14 = v6;
    v15 = v9;
    v16 = v8;
    v17 = JSONMap.offset(after:)(v14);
    v12 = v16;
    LOBYTE(v5) = v15;
    v18 = v17;
    v4 = v13;
    *(v1 + 8) = v18;
    *(v1 + 24) = v13;
    *(v1 + 32) = v16;
    *(v1 + 40) = v15;
  }

  v19 = (v5 & 0xE0) == 0xA0 && (v12 | v4) == 0;
  if (v19 && v5 == 160)
  {
    result = 0;
    v11 = 1;
  }

  else
  {
    result = a1();
    if (v2)
    {
      return result;
    }

    v11 = 0;
  }

LABEL_15:
  v20 = *(v1 + 64);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 64) = v22;
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 40) = -2;
    return result | (v11 << 16);
  }

  return result;
}

{
  v4 = *(v1 + 24);
  v5 = *(v1 + 40);
  if (v5 < 0xFE)
  {
    v11 = *(v1 + 32);
  }

  else
  {
    v6 = *(v1 + 8);
    v7 = JSONMap.loadValue(at:)(v6);
    if (v9 > 0xFDu)
    {
      result = 0;
      goto LABEL_14;
    }

    v12 = v7;
    v13 = v6;
    v14 = v9;
    v15 = v8;
    v16 = JSONMap.offset(after:)(v13);
    v11 = v15;
    LOBYTE(v5) = v14;
    v17 = v16;
    v4 = v12;
    *(v1 + 8) = v17;
    *(v1 + 24) = v12;
    *(v1 + 32) = v15;
    *(v1 + 40) = v14;
  }

  v18 = (v5 & 0xE0) == 0xA0 && (v11 | v4) == 0;
  if (v18 && v5 == 160)
  {
    result = 0;
  }

  else
  {
    result = a1();
    if (v2)
    {
      return result;
    }
  }

LABEL_14:
  v19 = *(v1 + 64);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 64) = v21;
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 40) = -2;
  }

  return result;
}

unint64_t specialized JSONDecoderImpl.UnkeyedContainer.decodeIfPresent(_:)(uint64_t (*a1)(void))
{
  v4 = *(v1 + 24);
  v5 = *(v1 + 40);
  if (v5 < 0xFE)
  {
    v12 = *(v1 + 32);
  }

  else
  {
    v6 = *(v1 + 8);
    v7 = JSONMap.loadValue(at:)(v6);
    if (v9 > 0xFDu)
    {
      result = 0;
      v11 = 1;
      goto LABEL_15;
    }

    v13 = v7;
    v14 = v6;
    v15 = v9;
    v16 = v8;
    v17 = JSONMap.offset(after:)(v14);
    v12 = v16;
    LOBYTE(v5) = v15;
    v18 = v17;
    v4 = v13;
    *(v1 + 8) = v18;
    *(v1 + 24) = v13;
    *(v1 + 32) = v16;
    *(v1 + 40) = v15;
  }

  v19 = (v5 & 0xE0) == 0xA0 && (v12 | v4) == 0;
  if (v19 && v5 == 160)
  {
    result = 0;
    v11 = 1;
  }

  else
  {
    result = a1();
    if (v2)
    {
      return result;
    }

    v11 = 0;
  }

LABEL_15:
  v20 = *(v1 + 64);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 64) = v22;
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 40) = -2;
    return result | (v11 << 32);
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, specialized _parseHexIntegerDigits<A>(_:isNegative:), specialized _parseInteger<A>(_:), specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:), a5);
}

{
  return partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, specialized _parseHexIntegerDigits<A>(_:isNegative:), specialized _parseInteger<A>(_:), specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:), a5);
}

{
  return partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:), a5);
}

{
  return partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:), a5);
}

uint64_t partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X8>)
{
  return partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:), a5);
}

{
  return partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:), a5);
}

uint64_t partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)@<X0>(char *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, _WORD *a5@<X8>)
{
  return partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, specialized _parseJSON5Integer<A>(_:isHex:), specialized _parseInteger<A>(_:), _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs6UInt16V_SdTt1g5, _ss17FixedWidthIntegerP10FoundationEyxSgSo9NSDecimalacfCs6UInt16V_Tt1g5, a5);
}

{
  return partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, specialized _parseJSON5Integer<A>(_:isHex:), specialized _parseInteger<A>(_:), _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs5Int16V_SdTt1g5, _ss17FixedWidthIntegerP10FoundationEyxSgSo9NSDecimalacfCs5Int16V_Tt1g5, a5);
}

uint64_t partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)@<X0>(char *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  return partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, specialized _parseJSON5Integer<A>(_:isHex:), specialized _parseInteger<A>(_:), _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs5UInt8V_SdTt1g5, _ss17FixedWidthIntegerP10FoundationEyxSgSo9NSDecimalacfCs5UInt8V_Tt1g5, a5);
}

{
  return partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, specialized _parseJSON5Integer<A>(_:isHex:), specialized _parseInteger<A>(_:), _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs4Int8V_SdTt1g5, _ss17FixedWidthIntegerP10FoundationEyxSgSo9NSDecimalacfCs4Int8V_Tt1g5, a5);
}

uint64_t partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, void, void, uint64_t, uint64_t)@<X6>, uint64_t *a8@<X8>)
{
  result = a7(a1, a2, a3, a4, *(v8 + 32), *(v8 + 33), a5, a6);
  if (!v9)
  {
    *a8 = result;
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, void, void)@<X4>, _DWORD *a6@<X8>)
{
  result = a5(a1, a2, a3, a4, *(v6 + 32), *(v6 + 33));
  if (!v7)
  {
    *a6 = result;
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)@<X0>(char *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(char *, unint64_t, void)@<X4>, uint64_t (*a6)(char *, unint64_t)@<X5>, uint64_t (*a7)(char **)@<X6>, uint64_t (*a8)(uint64_t, uint64_t, uint64_t)@<X7>, _WORD *a9@<X8>)
{
  result = specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, *(v9 + 32), *(v9 + 33), a5, a6, a7, a8);
  if (!v10)
  {
    *a9 = result;
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)@<X0>(char *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(char *, unint64_t, void)@<X4>, uint64_t (*a6)(char *, unint64_t)@<X5>, uint64_t (*a7)(char **)@<X6>, uint64_t (*a8)(uint64_t, uint64_t, uint64_t)@<X7>, _BYTE *a9@<X8>)
{
  result = specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, *(v9 + 32), *(v9 + 33), a5, a6, a7, a8);
  if (!v10)
  {
    *a9 = result;
  }

  return result;
}

unint64_t partial apply for specialized closure #2 in JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)@<X0>(const void *a1@<X0>, size_t a2@<X1>, uint64_t a3@<X8>)
{
  result = specialized closure #2 in JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(a1, a2, *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72));
  if (!v4)
  {
    *a3 = result;
    *(a3 + 4) = BYTE4(result) & 1;
  }

  return result;
}

void partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(char *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, float *a5@<X8>)
{
  v8 = specialized closure #1 in JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(a1, a2, a3, a4, *(v5 + 32), *(v5 + 33));
  if (!v6)
  {
    *a5 = v8;
  }
}

uint64_t partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, void, void)@<X4>, uint64_t *a6@<X8>)
{
  result = a5(a1, a2, a3, a4, *(v6 + 32), *(v6 + 33));
  if (!v7)
  {
    *a6 = result;
    a6[1] = v10;
  }

  return result;
}

void *closure #1 in JSONMap.withBuffer<A>(for:perform:)specialized partial apply@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  return partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)(a1, a2);
}

{
  return partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)(a1, a2);
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySS10Foundation16JSONEncoderValueOG_SS_AF10JSONFutureOts5NeverOTg5016_s10Foundation16ef27O20convertedToObjectRefAA10G39O0gF0CSgyFSS_AFtSS3key_AC5valuet_tXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v36 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v36;
  v4 = v3 + 64;
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v8 = *(v3 + 36);
  v29 = v3 + 72;
  v30 = v1;
  v31 = v8;
  v32 = v3 + 64;
  v33 = v3;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v34 = v7;
    v11 = *(v3 + 56);
    v12 = (*(v3 + 48) + 16 * v6);
    v13 = v12[1];
    v35 = *v12;
    v14 = v11 + 24 * v6;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);

    result = outlined copy of JSONEncoderValue(v15, v16, v17);
    v19 = *(v36 + 16);
    v18 = *(v36 + 24);
    v20 = v19 + 1;
    if (v19 >= v18 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
      v20 = v19 + 1;
    }

    *(v36 + 16) = v20;
    v21 = v36 + 40 * v19;
    *(v21 + 32) = v35;
    *(v21 + 40) = v13;
    *(v21 + 48) = v15;
    *(v21 + 56) = v16;
    *(v21 + 64) = v17;
    v3 = v33;
    v9 = 1 << *(v33 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v4 = v32;
    v22 = *(v32 + 8 * v10);
    if ((v22 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v31;
    if (v31 != *(v33 + 36))
    {
      goto LABEL_26;
    }

    v23 = v22 & (-2 << (v6 & 0x3F));
    if (v23)
    {
      v9 = __clz(__rbit64(v23)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v10 << 6;
      v25 = v10 + 1;
      v26 = (v29 + 8 * v10);
      while (v25 < (v9 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = outlined consume of Set<Date.ComponentsFormatStyle.Field>.Index._Variant(v6, v31, 0);
          v9 = __clz(__rbit64(v27)) + v24;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<Date.ComponentsFormatStyle.Field>.Index._Variant(v6, v31, 0);
    }

LABEL_4:
    v7 = v34 + 1;
    v6 = v9;
    if (v34 + 1 == v30)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t (*JSONEncoder.outputFormatting.modify(void *a1))()
{
  a1[1] = v1;
  v3 = *(v1 + 136);

  os_unfair_lock_lock(v3 + 4);

  *a1 = *(v1 + 16);
  return JSONEncoder.outputFormatting.modify;
}

uint64_t JSONEncoder.outputFormatting.modify(void *a1)
{
  v1 = a1[1];
  *(v1 + 16) = *a1;
  v2 = *(v1 + 136);

  os_unfair_lock_unlock(v2 + 4);
}

uint64_t key path setter for JSONEncoder.dateEncodingStrategy : JSONEncoder(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v2;
  v8 = v4;
  v5 = *(*v3 + 128);
  outlined copy of JSONDecoder.DateDecodingStrategy(v7[0], v2, v4);
  return v5(v7);
}

uint64_t JSONEncoder.dateEncodingStrategy.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 136);

  os_unfair_lock_lock(v3 + 4);

  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(v1 + 40);
  *(a1 + 16) = v6;
  v7 = *(v1 + 136);
  outlined copy of JSONDecoder.DateDecodingStrategy(v4, v5, v6);

  os_unfair_lock_unlock(v7 + 4);
}

void (*JSONEncoder.dateEncodingStrategy.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 24) = v1;
  v3 = *(v1 + 136);

  os_unfair_lock_lock(v3 + 4);

  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(v1 + 40);
  *(a1 + 16) = v6;
  outlined copy of JSONDecoder.DateDecodingStrategy(v4, v5, v6);
  return JSONEncoder.dateEncodingStrategy.modify;
}

void JSONEncoder.dateEncodingStrategy.modify(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *(v1 + 24) = *a1;
  *(v1 + 32) = v3;
  v6 = *(a1 + 16);
  v7 = *(v1 + 40);
  *(v1 + 40) = v6;
  outlined copy of JSONDecoder.DateDecodingStrategy(v2, v3, v6);
  outlined consume of JSONDecoder.DateDecodingStrategy(v4, v5, v7);
  v8 = *(v1 + 136);

  os_unfair_lock_unlock(v8 + 4);

  outlined consume of JSONDecoder.DateDecodingStrategy(v2, v3, v6);
}

uint64_t JSONEncoder.dataEncodingStrategy.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = v1[17];

  os_unfair_lock_lock(v3 + 4);

  v4 = v1[6];
  v5 = v1[7];
  *a1 = v4;
  a1[1] = v5;
  v6 = v1[17];
  sub_1807A98E4(v4, v5);

  os_unfair_lock_unlock(v6 + 4);
}

unint64_t (*JSONEncoder.dataEncodingStrategy.modify(unint64_t *a1))(unint64_t *a1)
{
  a1[2] = v1;
  v3 = v1[17];

  os_unfair_lock_lock(v3 + 4);

  v4 = v1[6];
  v5 = v1[7];
  *a1 = v4;
  a1[1] = v5;
  sub_1807A98E4(v4, v5);
  return JSONEncoder.dataEncodingStrategy.modify;
}

unint64_t JSONEncoder.dataEncodingStrategy.modify(unint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  v4 = v2[6];
  v5 = v2[7];
  v2[6] = *a1;
  v2[7] = v1;
  sub_1807A98E4(v3, v1);
  sub_1807A5C7C(v4, v5);
  v6 = v2[17];

  os_unfair_lock_unlock(v6 + 4);

  return sub_1807A5C7C(v3, v1);
}

uint64_t key path setter for JSONEncoder.nonConformingFloatEncodingStrategy : JSONEncoder(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = *a2;
  v10[0] = *a1;
  v10[1] = v2;
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v5;
  v10[5] = v6;
  v8 = *(*v7 + 176);
  outlined copy of JSONDecoder.NonConformingFloatDecodingStrategy(v10[0], v2, v3, v4, v5, v6);
  return v8(v10);
}

uint64_t JSONEncoder.nonConformingFloatEncodingStrategy.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[17];

  os_unfair_lock_lock(v3 + 4);

  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  v8 = v1[12];
  v9 = v1[13];
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  v10 = v1[17];
  outlined copy of JSONDecoder.NonConformingFloatDecodingStrategy(v4, v5, v6, v7, v8, v9);

  os_unfair_lock_unlock(v10 + 4);
}

void (*JSONEncoder.nonConformingFloatEncodingStrategy.modify(uint64_t **a1))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[6] = v1;
  v5 = v1[17];

  os_unfair_lock_lock(v5 + 4);

  v6 = v1[8];
  v7 = v1[9];
  v8 = v1[10];
  v9 = v1[11];
  v10 = v1[12];
  v11 = v1[13];
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;
  v4[3] = v9;
  v4[4] = v10;
  v4[5] = v11;
  outlined copy of JSONDecoder.NonConformingFloatDecodingStrategy(v6, v7, v8, v9, v10, v11);
  return JSONEncoder.nonConformingFloatEncodingStrategy.modify;
}

void JSONEncoder.nonConformingFloatEncodingStrategy.modify(uint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[5];
  v3 = (*a1)[6];
  v4 = **a1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v3[8];
  v10 = v3[9];
  v11 = v3[10];
  v12 = v3[11];
  v13 = v3[12];
  v14 = v3[13];
  v3[8] = v4;
  v3[9] = v5;
  v3[10] = v6;
  v3[11] = v7;
  v3[12] = v8;
  v3[13] = v2;
  outlined copy of JSONDecoder.NonConformingFloatDecodingStrategy(v4, v5, v6, v7, v8, v2);
  outlined consume of JSONDecoder.NonConformingFloatDecodingStrategy(v9, v10, v11, v12, v13, v14);
  v15 = v3[17];

  os_unfair_lock_unlock(v15 + 4);

  outlined consume of JSONDecoder.NonConformingFloatDecodingStrategy(*v1, v1[1], v1[2], v1[3], v1[4], v1[5]);

  free(v1);
}

uint64_t JSONEncoder.keyEncodingStrategy.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = v1[17];

  os_unfair_lock_lock(v3 + 4);

  v4 = v1[14];
  v5 = v1[15];
  *a1 = v4;
  a1[1] = v5;
  v6 = v1[17];
  sub_1807A98E4(v4, v5);

  os_unfair_lock_unlock(v6 + 4);
}

unint64_t (*JSONEncoder.keyEncodingStrategy.modify(unint64_t *a1))(unint64_t *a1)
{
  a1[2] = v1;
  v3 = v1[17];

  os_unfair_lock_lock(v3 + 4);

  v4 = v1[14];
  v5 = v1[15];
  *a1 = v4;
  a1[1] = v5;
  sub_1807A98E4(v4, v5);
  return JSONEncoder.keyEncodingStrategy.modify;
}

unint64_t JSONEncoder.keyEncodingStrategy.modify(unint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  v4 = v2[14];
  v5 = v2[15];
  v2[14] = *a1;
  v2[15] = v1;
  sub_1807A98E4(v3, v1);
  sub_1807A5C7C(v4, v5);
  v6 = v2[17];

  os_unfair_lock_unlock(v6 + 4);

  return sub_1807A5C7C(v3, v1);
}

uint64_t JSONEncoder.userInfo.getter()
{
  v1 = *(v0 + 136);

  os_unfair_lock_lock(v1 + 4);

  v2 = *(v0 + 128);
  v3 = *(v0 + 136);

  os_unfair_lock_unlock(v3 + 4);

  return v2;
}

uint64_t JSONEncoder.userInfo.setter(uint64_t a1)
{
  v3 = *(v1 + 136);

  os_unfair_lock_lock(v3 + 4);

  *(v1 + 128) = a1;

  v4 = *(v1 + 136);

  os_unfair_lock_unlock(v4 + 4);
}

uint64_t JSONEncoder.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 16) = 0;
  *(v0 + 40) = 2;
  *(v0 + 48) = 1;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  v1 = MEMORY[0x1E69E7CC8];
  *(v0 + 120) = 0;
  *(v0 + 128) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyt_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyt_GMR);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v0 + 136) = v2;
  return v0;
}

uint64_t JSONEncoder.deinit()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  v8 = *(v0 + 104);
  v9 = *(v0 + 112);
  v11 = *(v0 + 120);
  outlined consume of JSONDecoder.DateDecodingStrategy(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  sub_1807A5C7C(v1, v2);
  outlined consume of JSONDecoder.NonConformingFloatDecodingStrategy(v3, v4, v5, v6, v7, v8);
  sub_1807A5C7C(v9, v11);

  return v0;
}

void *__JSONEncoder.codingPath.getter()
{
  outlined init with copy of FloatingPointRoundingRule?(v0 + 192, &v21, &_ss9CodingKey_pSgMd, &_ss9CodingKey_pSgMR);
  if (!v22)
  {
    outlined destroy of TermOfAddress?(&v21, &_ss9CodingKey_pSgMd, &_ss9CodingKey_pSgMR);
    v1 = MEMORY[0x1E69E7CC0];
    v7 = *(v0 + 176);
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_15:

    goto LABEL_16;
  }

  outlined init with take of Equatable(&v21, v23);
  outlined init with copy of Hashable & Sendable(v23, &v21);
  v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v3 + 1, 1, v1);
  }

  __swift_destroy_boxed_opaque_existential_1(v23);
  v17 = v22;
  v4 = v22;
  v5 = __swift_mutable_project_boxed_opaque_existential_1(&v21, v22);
  v20 = v17;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v19);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_0, v5, v4);
  v1[2] = v3 + 1;
  outlined init with take of Equatable(&v19, &v1[5 * v3 + 4]);
  __swift_destroy_boxed_opaque_existential_1(&v21);
  v7 = *(v0 + 176);
  if (!v7)
  {
    goto LABEL_15;
  }

LABEL_5:

  outlined init with copy of FloatingPointRoundingRule?(v7 + 192, &v21, &_ss9CodingKey_pSgMd, &_ss9CodingKey_pSgMR);
  if (v22)
  {
    v8 = v7;
    while (1)
    {
      outlined init with take of Equatable(&v21, v23);
      outlined init with copy of Hashable & Sendable(v23, &v21);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1[2] + 1, 1, v1);
      }

      v10 = v1[2];
      v9 = v1[3];
      if (v10 >= v9 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v1);
      }

      __swift_destroy_boxed_opaque_existential_1(v23);
      v18 = v22;
      v11 = v22;
      v12 = __swift_mutable_project_boxed_opaque_existential_1(&v21, v22);
      v20 = v18;
      v13 = __swift_allocate_boxed_opaque_existential_0(&v19);
      (*(*(v11 - 8) + 16))(v13, v12, v11);
      v1[2] = v10 + 1;
      outlined init with take of Equatable(&v19, &v1[5 * v10 + 4]);
      __swift_destroy_boxed_opaque_existential_1(&v21);
      v14 = *(v8 + 176);
      if (!v14)
      {
        break;
      }

      outlined init with copy of FloatingPointRoundingRule?(v14 + 192, &v21, &_ss9CodingKey_pSgMd, &_ss9CodingKey_pSgMR);
      v8 = v14;
      if (!v22)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:

    outlined destroy of TermOfAddress?(&v21, &_ss9CodingKey_pSgMd, &_ss9CodingKey_pSgMR);
  }

LABEL_16:
  v15 = specialized Sequence.reversed()(v1);

  return v15;
}

uint64_t JSONEncoderValue.convertedToArrayRef()(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != 3)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v14 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = v14;
    v6 = (a1 + 48);
    do
    {
      v7 = *(v6 - 2);
      v8 = *(v6 - 1);
      v9 = *v6;
      outlined copy of JSONEncoderValue(v7, v8, *v6);
      v11 = *(v14 + 16);
      v10 = *(v14 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      }

      v6 += 24;
      *(v14 + 16) = v11 + 1;
      v12 = v14 + 24 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v8;
      *(v12 + 48) = v9;
      --v3;
    }

    while (v3);
  }

  type metadata accessor for JSONFuture.RefArray();
  result = swift_allocObject();
  *(result + 16) = v4;
  return result;
}

uint64_t specialized static JSONEncoderValue.cannotEncodeNumber<A, B>(_:encoder:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - v16;
  v29 = a6;
  v18 = __JSONEncoder.codingPath.getter();
  (*(v15 + 16))(v17, a2, v14);
  if ((*(v11 + 48))(v17, 1, a3) == 1)
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v20 = *(v11 + 32);
    v20(v13, v17, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_181218E20;
    *(v21 + 56) = a3;
    *(v21 + 64) = a4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v21 + 32));
    v20(boxed_opaque_existential_0, v13, a3);
    v19 = v21;
  }

  v27 = v18;
  specialized Array.append<A>(contentsOf:)(v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd, &_syp_s13EncodingErrorO7ContextVtMR);
  *(a5 + 24) = MEMORY[0x1E69E63B0];
  *a5 = a6;
  v27 = 0;
  v28 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);
  MEMORY[0x1865CB0E0](0xD000000000000011, 0x80000001814824F0);
  MEMORY[0x1865CB0E0](0x656C62756F44, 0xE600000000000000);
  MEMORY[0x1865CB0E0](46, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181482510);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v23 = *MEMORY[0x1E69E6B30];
  v24 = type metadata accessor for EncodingError();
  return (*(*(v24 - 8) + 104))(a5, v23, v24);
}

uint64_t specialized static JSONEncoderValue.cannotEncodeNumber<A, B>(_:encoder:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, float a6@<S0>)
{
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - v16;
  v29 = a6;
  v18 = __JSONEncoder.codingPath.getter();
  (*(v15 + 16))(v17, a2, v14);
  if ((*(v11 + 48))(v17, 1, a3) == 1)
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v20 = *(v11 + 32);
    v20(v13, v17, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_181218E20;
    *(v21 + 56) = a3;
    *(v21 + 64) = a4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v21 + 32));
    v20(boxed_opaque_existential_0, v13, a3);
    v19 = v21;
  }

  v27 = v18;
  specialized Array.append<A>(contentsOf:)(v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd, &_syp_s13EncodingErrorO7ContextVtMR);
  *(a5 + 24) = MEMORY[0x1E69E6448];
  *a5 = a6;
  v27 = 0;
  v28 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);
  MEMORY[0x1865CB0E0](0xD000000000000011, 0x80000001814824F0);
  MEMORY[0x1865CB0E0](0x74616F6C46, 0xE500000000000000);
  MEMORY[0x1865CB0E0](46, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181482510);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v23 = *MEMORY[0x1E69E6B30];
  v24 = type metadata accessor for EncodingError();
  return (*(*(v24 - 8) + 104))(a5, v23, v24);
}

uint64_t specialized static JSONEncoderValue.cannotEncodeNumber<A, B>(_:encoder:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X8>, float a6@<S0>)
{
  v12 = ~a4;
  __JSONEncoder.codingPath.getter();
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_181218E20;
    *(v13 + 56) = &type metadata for _CodingKey;
    *(v13 + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v14 = swift_allocObject();
    *(v13 + 32) = v14;
    *(v14 + 16) = a1;
    *(v14 + 24) = a2;
    *(v14 + 32) = a3;
    *(v14 + 40) = a4;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  outlined copy of _CodingKey?(a1, a2, a3, a4);
  specialized Array.append<A>(contentsOf:)(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd, &_syp_s13EncodingErrorO7ContextVtMR);
  *(a5 + 24) = MEMORY[0x1E69E6448];
  *a5 = a6;
  _StringGuts.grow(_:)(40);
  MEMORY[0x1865CB0E0](0xD000000000000011, 0x80000001814824F0);
  MEMORY[0x1865CB0E0](0x74616F6C46, 0xE500000000000000);
  MEMORY[0x1865CB0E0](46, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181482510);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v15 = *MEMORY[0x1E69E6B30];
  v16 = type metadata accessor for EncodingError();
  return (*(*(v16 - 8) + 104))(a5, v15, v16);
}

uint64_t specialized static JSONEncoderValue.cannotEncodeNumber<A, B>(_:encoder:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X8>, double a6@<D0>)
{
  v12 = ~a4;
  __JSONEncoder.codingPath.getter();
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_181218E20;
    *(v13 + 56) = &type metadata for _CodingKey;
    *(v13 + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v14 = swift_allocObject();
    *(v13 + 32) = v14;
    *(v14 + 16) = a1;
    *(v14 + 24) = a2;
    *(v14 + 32) = a3;
    *(v14 + 40) = a4;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  outlined copy of _CodingKey?(a1, a2, a3, a4);
  specialized Array.append<A>(contentsOf:)(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd, &_syp_s13EncodingErrorO7ContextVtMR);
  *(a5 + 24) = MEMORY[0x1E69E63B0];
  *a5 = a6;
  _StringGuts.grow(_:)(40);
  MEMORY[0x1865CB0E0](0xD000000000000011, 0x80000001814824F0);
  MEMORY[0x1865CB0E0](0x656C62756F44, 0xE600000000000000);
  MEMORY[0x1865CB0E0](46, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181482510);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v15 = *MEMORY[0x1E69E6B30];
  v16 = type metadata accessor for EncodingError();
  return (*(*(v16 - 8) + 104))(a5, v15, v16);
}

uint64_t specialized static JSONEncoderValue.nonConformantNumber<A, B>(from:with:encoder:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  if (a1[1])
  {
    if (a6 == INFINITY)
    {
      v7 = *a1;
    }

    else
    {
      v7 = a1[2];
      v12 = a1[4];

      if (a6 != -INFINITY)
      {
        return v12;
      }
    }
  }

  else
  {
    v7 = a5;
    type metadata accessor for EncodingError();
    swift_allocError();
    specialized static JSONEncoderValue.cannotEncodeNumber<A, B>(_:encoder:_:)(a2, a3, a4, v7, v11, a6);
    swift_willThrow();
  }

  return v7;
}

uint64_t specialized static JSONEncoderValue.nonConformantNumber<A, B>(from:with:encoder:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6)
{
  if (a1[1])
  {
    if (a6 == INFINITY)
    {
      v7 = *a1;
    }

    else
    {
      v7 = a1[2];
      v12 = a1[4];

      if (a6 != -INFINITY)
      {
        return v12;
      }
    }
  }

  else
  {
    v7 = a5;
    type metadata accessor for EncodingError();
    swift_allocError();
    specialized static JSONEncoderValue.cannotEncodeNumber<A, B>(_:encoder:_:)(a2, a3, a4, v7, v11, a6);
    swift_willThrow();
  }

  return v7;
}

uint64_t specialized static JSONEncoderValue.nonConformantNumber<A, B>(from:with:encoder:_:)(uint64_t *a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1[1])
  {
    if (a2 == INFINITY)
    {
      v8 = *a1;
    }

    else
    {
      v8 = a1[2];
      v13 = a1[4];

      if (a2 != -INFINITY)
      {
        return v13;
      }
    }
  }

  else
  {
    v8 = a7;
    type metadata accessor for EncodingError();
    swift_allocError();
    specialized static JSONEncoderValue.cannotEncodeNumber<A, B>(_:encoder:_:)(a4, a5, a6, v8, v12, a2);
    swift_willThrow();
  }

  return v8;
}

uint64_t specialized static JSONEncoderValue.nonConformantNumber<A, B>(from:with:encoder:_:)(uint64_t *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1[1])
  {
    if (a2 == INFINITY)
    {
      v8 = *a1;
    }

    else
    {
      v8 = a1[2];
      v13 = a1[4];

      if (a2 != -INFINITY)
      {
        return v13;
      }
    }
  }

  else
  {
    v8 = a7;
    type metadata accessor for EncodingError();
    swift_allocError();
    specialized static JSONEncoderValue.cannotEncodeNumber<A, B>(_:encoder:_:)(a4, a5, a6, v8, v12, a2);
    swift_willThrow();
  }

  return v8;
}

void *_JSONKeyedEncodingContainer.codingPath.getter(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = __JSONEncoder.codingPath.getter();
  v5 = _CodingPathNode.path.getter(a3);
  specialized Array.append<A>(contentsOf:)(v5);
  return v4;
}

unint64_t _JSONKeyedEncodingContainer.encodeNil(forKey:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v9 = v2;
  v7 = *v2;
  v8 = v9[1];
  v10 = v5[2];
  v12 = *(a2 + 24);
  v156 = *(a2 + 16);
  v11 = v156;
  v157 = v12;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v155);
  v14 = *(v11 - 8);
  (*(v14 + 16))(boxed_opaque_existential_0, a1, v11);
  v15 = *(v7 + 152);
  if (!v15)
  {
    v18 = dispatch thunk of CodingKey.stringValue.getter();
    v19 = v27;
    goto LABEL_84;
  }

  if (v15 != 1)
  {
    v28 = *(v7 + 160);

    v29 = __JSONEncoder.codingPath.getter();
    v30 = _CodingPathNode.path.getter(v10);
    v152 = v29;
    specialized Array.append<A>(contentsOf:)(v30);
    v31 = v29;
    outlined init with copy of Hashable & Sendable(v155, &v152);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v158 = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29[2] + 1, 1, v29);
    }

    v34 = v31[2];
    v33 = v31[3];
    v144 = v8;
    v145 = v3;
    v148 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v31);
    }

    v35 = __swift_mutable_project_boxed_opaque_existential_1(&v152, v154);
    v36 = MEMORY[0x1EEE9AC00](v35);
    v38 = &v137 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v39 + 16))(v38, v36);
    v150 = v11;
    v151 = v12;
    v40 = __swift_allocate_boxed_opaque_existential_0(&v149);
    (*(v14 + 32))(v40, v38, v11);
    v31[2] = v148;
    outlined init with take of Equatable(&v149, &v31[5 * v34 + 4]);
    __swift_destroy_boxed_opaque_existential_1(&v152);
    boxed_opaque_existential_0 = v158;
    v15(&v152, v31);

    __swift_project_boxed_opaque_existential_1(&v152, v154);
    v18 = dispatch thunk of CodingKey.stringValue.getter();
    v19 = v41;
    sub_1807A5C7C(v15, boxed_opaque_existential_0);
    __swift_destroy_boxed_opaque_existential_1(&v152);
    goto LABEL_83;
  }

  v16 = dispatch thunk of CodingKey.stringValue.getter();
  v18 = v16;
  v19 = v17;
  if ((v17 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(v17) & 0xF;
  }

  else
  {
    v20 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v144 = v8;
    v145 = v3;
    v21 = String.index(after:)();
    v22 = 7;
    if (((v19 >> 60) & ((v18 & 0x800000000000000) == 0)) != 0)
    {
      v22 = 11;
    }

    v142 = 4 * v20;
    if (4 * v20 < v21 >> 14)
    {
      __break(1u);
    }

    else
    {
      v141 = v22 | (v20 << 16);
      v143 = v19;
      v23 = String.subscript.getter();
      v4 = v26;
      v10 = MEMORY[0x1E69E7CC0];
      v158 = v18;
      if ((v23 ^ v24) >= 0x4000)
      {
        v42 = v23;
        v43 = v24;
        v8 = v25;
        v19 = 0x700030001;
        boxed_opaque_existential_0 = 15;
        while (1)
        {
          v140 = boxed_opaque_existential_0;
          v146 = v10;
          v44 = Substring.UnicodeScalarView.index(before:)();
          v45 = Substring.UnicodeScalarView.subscript.getter();
          v46 = v45;
          v47 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v45), 1u);
          v18 = v42;
          if (!BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v46, v47, 0x700030001))
          {
            break;
          }

LABEL_20:
          v48 = Substring.UnicodeScalarView.index(after:)();

          v50 = v18 >> 14;
          v51 = v140;
          if (v18 >> 14 < v140 >> 14 || v48 >> 14 < v50)
          {
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
            goto LABEL_121;
          }

          v52 = v146;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v146 + 2) + 1, 1, v146);
            v52 = result;
          }

          v54 = *(v52 + 2);
          v53 = *(v52 + 3);
          if (v54 >= v53 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v52);
            v52 = result;
          }

          *(v52 + 2) = v54 + 1;
          v146 = v52;
          v55 = &v52[16 * v54];
          *(v55 + 4) = v51;
          *(v55 + 5) = v18;
          v138 = v18 >> 14;
          if (v142 < v50)
          {
            goto LABEL_117;
          }

          v56 = String.subscript.getter();
          v4 = v58;
          if ((v56 ^ v59) < 0x4000)
          {
            goto LABEL_73;
          }

          v60 = v56;
          v8 = v57;
          v148 = Substring.UnicodeScalarView.index(before:)();
          v61 = Substring.UnicodeScalarView.subscript.getter();
          v62 = v61;
          LOBYTE(boxed_opaque_existential_0) = 0;
          v63 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v61), 0);
          v64 = BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v62, v63, 0x700030000);
          v65 = v60;
          v19 = v143;
          if (!v64)
          {
            v76 = HIBYTE(v4) & 0xF;
            if ((v4 & 0x2000000000000000) == 0)
            {
              v76 = v8 & 0xFFFFFFFFFFFFLL;
            }

            v147 = v76;
            v140 = v4 & 0xFFFFFFFFFFFFFFLL;
            v139 = (v4 & 0xFFFFFFFFFFFFFFFLL) + 32;
            v65 = v60;
            while ((v65 ^ v148) >= 0x4000)
            {
              v70 = _StringGuts.validateInclusiveScalarIndex(_:)(v65, v8, v4);
              v43 = v70 >> 16;
              if (v70 >> 16 >= v147)
              {
                goto LABEL_93;
              }

              if ((v4 & 0x1000000000000000) != 0)
              {
                v65 = String.UnicodeScalarView._foreignIndex(after:)();
              }

              else
              {
                if ((v4 & 0x2000000000000000) != 0)
                {
                  v152 = v8;
                  v153 = v140;
                  v81 = *(&v152 + v43);
                }

                else
                {
                  v80 = v139;
                  if ((v8 & 0x1000000000000000) == 0)
                  {
                    v80 = _StringObject.sharedUTF8.getter();
                  }

                  v81 = *(v80 + v43);
                }

                v82 = v81;
                v83 = __clz(v81 ^ 0xFF) - 24;
                if (v82 >= 0)
                {
                  LOBYTE(v83) = 1;
                }

                v65 = ((v43 + v83) << 16) | 5;
              }

              v77 = Substring.UnicodeScalarView.subscript.getter();
              v78 = v77;
              v79 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v77), 0);
              if (BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v78, v79, 0x700030000))
              {
                goto LABEL_29;
              }
            }

LABEL_73:
            boxed_opaque_existential_0 = v18;
            v10 = v146;
            goto LABEL_74;
          }

LABEL_29:
          v66 = Substring.UnicodeScalarView.index(after:)();

          if (v66 >> 14 < v65 >> 14)
          {
            goto LABEL_118;
          }

          result = String.index(after:)();
          if (v65 >> 14 == result >> 14)
          {
            boxed_opaque_existential_0 = v18;
            v10 = v146;
          }

          else
          {
            result = String.index(before:)();
            if (v138 > result >> 14)
            {
              goto LABEL_120;
            }

            v84 = result;
            v10 = v146;
            v86 = *(v146 + 2);
            v85 = *(v146 + 3);
            if (v86 >= v85 >> 1)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v86 + 1, 1, v146);
              v10 = result;
            }

            *(v10 + 2) = v86 + 1;
            v87 = &v10[16 * v86];
            *(v87 + 4) = v18;
            *(v87 + 5) = v84;
            boxed_opaque_existential_0 = v84;
          }

          if (v142 < v66 >> 14)
          {
            goto LABEL_119;
          }

          v42 = String.subscript.getter();
          v43 = v88;
          v8 = v89;
          v4 = v90;
          v19 = 0x700030001;
          if ((v42 ^ v88) < 0x4000)
          {
            goto LABEL_74;
          }
        }

        if ((v4 & 0x2000000000000000) != 0)
        {
          boxed_opaque_existential_0 = HIBYTE(v4) & 0xF;
        }

        else
        {
          boxed_opaque_existential_0 = v8 & 0xFFFFFFFFFFFFLL;
        }

        v147 = (v4 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v148 = v4 & 0xFFFFFFFFFFFFFFLL;
        v18 = v42;
        while (1)
        {
          if ((v18 ^ v44) < 0x4000)
          {
            v10 = v146;
            boxed_opaque_existential_0 = v140;
            goto LABEL_74;
          }

          v70 = _StringGuts.validateInclusiveScalarIndex(_:)(v18, v8, v4);
          v71 = v70 >> 16;
          if (v70 >> 16 >= boxed_opaque_existential_0)
          {
            break;
          }

          if ((v4 & 0x1000000000000000) != 0)
          {
            v18 = String.UnicodeScalarView._foreignIndex(after:)();
          }

          else
          {
            if ((v4 & 0x2000000000000000) != 0)
            {
              v152 = v8;
              v153 = v148;
              v73 = *(&v152 + v71);
            }

            else
            {
              v72 = v147;
              if ((v8 & 0x1000000000000000) == 0)
              {
                v72 = _StringObject.sharedUTF8.getter();
              }

              v73 = *(v72 + v71);
            }

            v74 = v73;
            v75 = __clz(v73 ^ 0xFF) - 24;
            if (v74 >= 0)
            {
              LOBYTE(v75) = 1;
            }

            v18 = ((v71 + v75) << 16) | 5;
          }

          v67 = Substring.UnicodeScalarView.subscript.getter();
          v68 = v67;
          v19 = 0x700030001;
          v69 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v67), 1u);
          if (BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v68, v69, 0x700030001))
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_93:
        __break(1u);
        goto LABEL_94;
      }

      boxed_opaque_existential_0 = 15;
LABEL_74:

      if (v142 >= boxed_opaque_existential_0 >> 14)
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_76:
          v92 = *(v10 + 2);
          v91 = *(v10 + 3);
          v93 = v92 + 1;
          if (v92 >= v91 >> 1)
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), v92 + 1, 1, v10);
          }

          *(v10 + 2) = v93;
          v94 = &v10[16 * v92];
          v95 = v141;
          *(v94 + 4) = boxed_opaque_existential_0;
          *(v94 + 5) = v95;
          v152 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v93, 0);
          boxed_opaque_existential_0 = v152;
          v146 = v10;
          v96 = v10 + 40;
          do
          {
            String.subscript.getter();
            v97 = Substring.lowercased()();

            v152 = boxed_opaque_existential_0;
            v99 = *(boxed_opaque_existential_0 + 16);
            v98 = *(boxed_opaque_existential_0 + 24);
            if (v99 >= v98 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v98 > 1), v99 + 1, 1);
              boxed_opaque_existential_0 = v152;
            }

            v96 += 16;
            *(boxed_opaque_existential_0 + 16) = v99 + 1;
            *(boxed_opaque_existential_0 + 16 * v99 + 32) = v97;
            --v93;
          }

          while (v93);

          v152 = boxed_opaque_existential_0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
          lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x1E69E6310]);
          v18 = BidirectionalCollection<>.joined(separator:)();
          v101 = v100;

          v19 = v101;
LABEL_83:
          v8 = v144;
          v4 = v145;
          goto LABEL_84;
        }

LABEL_115:
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
        goto LABEL_76;
      }
    }

    __break(1u);
    goto LABEL_115;
  }

LABEL_84:
  __swift_destroy_boxed_opaque_existential_1(v155);
  v102 = swift_isUniquelyReferenced_nonNull_native();
  v155[0] = *(v8 + 16);
  v43 = v155[0];
  *(v8 + 16) = 0x8000000000000000;
  v70 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
  v104 = *(v43 + 16);
  v105 = (v103 & 1) == 0;
  v106 = __OFADD__(v104, v105);
  v107 = v104 + v105;
  if (v106)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  LOBYTE(boxed_opaque_existential_0) = v103;
  if (*(v43 + 24) < v107)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v107, v102);
    v108 = v155[0];
    v70 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
    if ((boxed_opaque_existential_0 & 1) == (v109 & 1))
    {
      goto LABEL_90;
    }

    v70 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v102)
  {
    v108 = v43;
LABEL_90:
    if (boxed_opaque_existential_0)
    {
LABEL_91:
      v110 = v70;

      v111 = *(v108 + 56) + 24 * v110;
      v112 = *v111;
      v113 = *(v111 + 8);
      *v111 = 0;
      *(v111 + 8) = 0;
      v114 = *(v111 + 16);
      *(v111 + 16) = 7;
      result = outlined consume of JSONFuture(v112, v113, v114);
LABEL_112:
      *(v8 + 16) = v108;
      return result;
    }

LABEL_111:
    result = specialized _NativeDictionary._insert(at:key:value:)(v70, v18, v19, 0, 0, 7, v108);
    goto LABEL_112;
  }

LABEL_95:
  v158 = v18;
  v147 = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation10JSONFutureOGMd, &_ss18_DictionaryStorageCySS10Foundation10JSONFutureOGMR);
  v115 = static _DictionaryStorage.copy(original:)();
  v108 = v115;
  if (!*(v43 + 16))
  {
LABEL_110:

    v70 = v147;
    v18 = v158;
    if (boxed_opaque_existential_0)
    {
      goto LABEL_91;
    }

    goto LABEL_111;
  }

  result = v115 + 64;
  v116 = v43 + 64;
  v117 = ((1 << *(v108 + 32)) + 63) >> 6;
  if (v108 != v43 || result >= v116 + 8 * v117)
  {
    result = memmove(result, (v43 + 64), 8 * v117);
  }

  v118 = 0;
  *(v108 + 16) = *(v43 + 16);
  v119 = 1 << *(v43 + 32);
  v120 = -1;
  if (v119 < 64)
  {
    v120 = ~(-1 << v119);
  }

  v121 = v120 & *(v43 + 64);
  v122 = (v119 + 63) >> 6;
  v144 = v8;
  v145 = v4;
  if (v121)
  {
    do
    {
      v123 = __clz(__rbit64(v121));
      v148 = (v121 - 1) & v121;
LABEL_108:
      v126 = v123 | (v118 << 6);
      v127 = 16 * v126;
      v128 = (*(v43 + 48) + 16 * v126);
      v130 = *v128;
      v129 = v128[1];
      v126 *= 24;
      v131 = *(v43 + 56) + v126;
      v132 = *v131;
      v133 = *(v131 + 8);
      v134 = (*(v108 + 48) + v127);
      v135 = *(v131 + 16);
      *v134 = v130;
      v134[1] = v129;
      v136 = *(v108 + 56) + v126;
      *v136 = v132;
      *(v136 + 8) = v133;
      *(v136 + 16) = v135;

      result = outlined copy of JSONFuture(v132, v133, v135);
      v8 = v144;
      v121 = v148;
    }

    while (v148);
  }

  v124 = v118;
  while (1)
  {
    v118 = v124 + 1;
    if (__OFADD__(v124, 1))
    {
      break;
    }

    if (v118 >= v122)
    {
      goto LABEL_110;
    }

    v125 = *(v116 + 8 * v118);
    ++v124;
    if (v125)
    {
      v123 = __clz(__rbit64(v125));
      v148 = (v125 - 1) & v125;
      goto LABEL_108;
    }
  }

LABEL_121:
  __break(1u);
  return result;
}

uint64_t _JSONKeyedEncodingContainer.encode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v7;
  v9 = v6;
  v159 = v6[1];
  v166[0] = a1;
  v166[1] = a2;
  v157 = dispatch thunk of CustomStringConvertible.description.getter();
  v158 = v12;
  v13 = *v6;
  v14 = v9[2];
  v16 = *(a4 + 24);
  v167 = *(a4 + 16);
  v15 = v167;
  v168 = v16;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v166);
  v18 = *(v15 - 1);
  (*(v18 + 16))(boxed_opaque_existential_0, a3, v15);
  v19 = *(v13 + 152);
  if (!v19)
  {
    v22 = dispatch thunk of CodingKey.stringValue.getter();
    v23 = v31;
    goto LABEL_83;
  }

  if (v19 != 1)
  {
    v32 = *(v13 + 160);

    v33 = __JSONEncoder.codingPath.getter();
    v34 = _CodingPathNode.path.getter(v14);
    v163 = v33;
    specialized Array.append<A>(contentsOf:)(v34);
    v35 = v33;
    outlined init with copy of Hashable & Sendable(v166, &v163);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v169 = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 2) + 1, 1, v33);
    }

    v38 = v35[2];
    v37 = v35[3];
    v153 = v7;
    v156 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v35);
    }

    v39 = __swift_mutable_project_boxed_opaque_existential_1(&v163, v165);
    v40 = MEMORY[0x1EEE9AC00](v39);
    v42 = &v146 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v43 + 16))(v42, v40);
    v161 = v15;
    v162 = v16;
    v44 = __swift_allocate_boxed_opaque_existential_0(&v160);
    (*(v18 + 32))(v44, v42, v15);
    v35[2] = v156;
    outlined init with take of Equatable(&v160, &v35[5 * v38 + 4]);
    __swift_destroy_boxed_opaque_existential_1(&v163);
    v45 = v169;
    (v19)(&v163, v35);

    __swift_project_boxed_opaque_existential_1(&v163, v165);
    v22 = dispatch thunk of CodingKey.stringValue.getter();
    v23 = v46;
    sub_1807A5C7C(v19, v45);
    __swift_destroy_boxed_opaque_existential_1(&v163);
    goto LABEL_82;
  }

  v20 = dispatch thunk of CodingKey.stringValue.getter();
  v22 = v20;
  v23 = v21;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(v21) & 0xF;
  }

  else
  {
    v19 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v24 = String.index(after:)();
    v25 = 7;
    if (((v23 >> 60) & ((v22 & 0x800000000000000) == 0)) != 0)
    {
      v25 = 11;
    }

    v151 = 4 * v19;
    if (4 * v19 < v24 >> 14)
    {
      __break(1u);
    }

    else
    {
      v150 = v25 | (v19 << 16);
      v152 = v23;
      v26 = String.subscript.getter();
      v30 = v29;
      v169 = v22;
      v153 = v7;
      if ((v26 ^ v27) >= 0x4000)
      {
        v47 = v26;
        v15 = v27;
        v19 = v28;
        v154 = MEMORY[0x1E69E7CC0];
        v23 = 0x700030001;
        v156 = 15;
        while (1)
        {
          v8 = Substring.UnicodeScalarView.index(before:)();
          v48 = Substring.UnicodeScalarView.subscript.getter();
          v49 = v48;
          v50 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v48), 1u);
          v51 = BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v49, v50, 0x700030001);
          v52 = v47;
          if (!v51)
          {
            break;
          }

LABEL_20:
          v53 = Substring.UnicodeScalarView.index(after:)();

          v54 = v52 >> 14;
          v55 = v156;
          if (v52 >> 14 < v156 >> 14 || v53 >> 14 < v54)
          {
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
            goto LABEL_121;
          }

          v15 = v154;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v154 + 2) + 1, 1, v154);
          }

          v57 = *(v15 + 2);
          v56 = *(v15 + 3);
          if (v57 >= v56 >> 1)
          {
            v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1, v15);
          }

          *(v15 + 2) = v57 + 1;
          v154 = v15;
          v58 = &v15[16 * v57];
          *(v58 + 4) = v55;
          *(v58 + 5) = v52;
          v147 = v52 >> 14;
          if (v151 < v54)
          {
            goto LABEL_117;
          }

          v59 = String.subscript.getter();
          v63 = v62;
          if ((v59 ^ v60) < 0x4000)
          {
            v156 = v52;
            goto LABEL_73;
          }

          v8 = v59;
          v47 = v60;
          v15 = v61;
          v156 = Substring.UnicodeScalarView.index(before:)();
          v64 = Substring.UnicodeScalarView.subscript.getter();
          v65 = v64;
          v22 = 0x700030000;
          v66 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v64), 0);
          v67 = BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v65, v66, 0x700030000);
          v68 = v8;
          v23 = v152;
          if (!v67)
          {
            v80 = HIBYTE(v63) & 0xF;
            if ((v63 & 0x2000000000000000) == 0)
            {
              v80 = v15 & 0xFFFFFFFFFFFFLL;
            }

            v155 = v80;
            v149 = v63 & 0xFFFFFFFFFFFFFFLL;
            v148 = (v63 & 0xFFFFFFFFFFFFFFFLL) + 32;
            v68 = v8;
            while ((v68 ^ v156) >= 0x4000)
            {
              v74 = _StringGuts.validateInclusiveScalarIndex(_:)(v68, v15, v63);
              v19 = v74 >> 16;
              if (v74 >> 16 >= v155)
              {
                goto LABEL_94;
              }

              if ((v63 & 0x1000000000000000) != 0)
              {
                v68 = String.UnicodeScalarView._foreignIndex(after:)();
              }

              else
              {
                if ((v63 & 0x2000000000000000) != 0)
                {
                  v163 = v15;
                  v164 = v149;
                  v85 = *(&v163 + v19);
                }

                else
                {
                  v84 = v148;
                  if ((v15 & 0x1000000000000000) == 0)
                  {
                    v84 = _StringObject.sharedUTF8.getter();
                  }

                  v85 = *(v84 + v19);
                }

                v86 = v85;
                v87 = __clz(v85 ^ 0xFF) - 24;
                if (v86 >= 0)
                {
                  LOBYTE(v87) = 1;
                }

                v68 = ((v19 + v87) << 16) | 5;
              }

              v81 = Substring.UnicodeScalarView.subscript.getter();
              v82 = v81;
              v83 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v81), 0);
              if (BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v82, v83, 0x700030000))
              {
                goto LABEL_29;
              }
            }

            v156 = v52;
            goto LABEL_73;
          }

LABEL_29:
          v69 = Substring.UnicodeScalarView.index(after:)();

          if (v69 >> 14 < v68 >> 14)
          {
            goto LABEL_118;
          }

          if (v68 >> 14 == String.index(after:)() >> 14)
          {
            v70 = v52;
          }

          else
          {
            v70 = String.index(before:)();
            if (v147 > v70 >> 14)
            {
              goto LABEL_120;
            }

            v89 = *(v154 + 2);
            v88 = *(v154 + 3);
            if (v89 >= v88 >> 1)
            {
              v95 = v70;
              v154 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v88 > 1), v89 + 1, 1, v154);
              v70 = v95;
            }

            v90 = v154;
            *(v154 + 2) = v89 + 1;
            v91 = &v90[16 * v89];
            *(v91 + 4) = v52;
            *(v91 + 5) = v70;
          }

          v23 = 0x700030001;
          v156 = v70;
          if (v151 < v69 >> 14)
          {
            goto LABEL_119;
          }

          v47 = String.subscript.getter();
          v15 = v92;
          v19 = v93;
          v30 = v94;
          if ((v47 ^ v92) < 0x4000)
          {
            goto LABEL_73;
          }
        }

        if ((v30 & 0x2000000000000000) != 0)
        {
          v22 = HIBYTE(v30) & 0xF;
        }

        else
        {
          v22 = v19 & 0xFFFFFFFFFFFFLL;
        }

        v155 = v30 & 0xFFFFFFFFFFFFFFLL;
        v149 = (v30 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v52 = v47;
        while ((v52 ^ v8) >= 0x4000)
        {
          v74 = _StringGuts.validateInclusiveScalarIndex(_:)(v52, v19, v30);
          v75 = v74 >> 16;
          if (v74 >> 16 >= v22)
          {
            __break(1u);
LABEL_94:
            __break(1u);
            goto LABEL_95;
          }

          if ((v30 & 0x1000000000000000) != 0)
          {
            v52 = String.UnicodeScalarView._foreignIndex(after:)();
          }

          else
          {
            if ((v30 & 0x2000000000000000) != 0)
            {
              v163 = v19;
              v164 = v155;
              v77 = *(&v163 + v75);
            }

            else
            {
              v76 = v149;
              if ((v19 & 0x1000000000000000) == 0)
              {
                v76 = _StringObject.sharedUTF8.getter();
              }

              v77 = *(v76 + v75);
            }

            v78 = v77;
            v79 = __clz(v77 ^ 0xFF) - 24;
            if (v78 >= 0)
            {
              LOBYTE(v79) = 1;
            }

            v52 = ((v75 + v79) << 16) | 5;
          }

          v71 = Substring.UnicodeScalarView.subscript.getter();
          v72 = v71;
          v23 = 0x700030001;
          v73 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v71), 1u);
          if (BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v72, v73, 0x700030001))
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        v156 = 15;
        v154 = MEMORY[0x1E69E7CC0];
      }

LABEL_73:

      boxed_opaque_existential_0 = v156;
      if (v151 >= v156 >> 14)
      {
        v15 = v154;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_75:
          v97 = *(v15 + 2);
          v96 = *(v15 + 3);
          v98 = v97 + 1;
          if (v97 >= v96 >> 1)
          {
            v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v96 > 1), v97 + 1, 1, v15);
          }

          *(v15 + 2) = v98;
          v99 = &v15[16 * v97];
          v100 = v150;
          *(v99 + 4) = boxed_opaque_existential_0;
          *(v99 + 5) = v100;
          v163 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v98, 0);
          v101 = v163;
          v154 = v15;
          v102 = v15 + 40;
          do
          {
            String.subscript.getter();
            v103 = Substring.lowercased()();

            v163 = v101;
            v105 = *(v101 + 2);
            v104 = *(v101 + 3);
            if (v105 >= v104 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v104 > 1), v105 + 1, 1);
              v101 = v163;
            }

            v102 += 16;
            *(v101 + 2) = v105 + 1;
            *&v101[16 * v105 + 32] = v103;
            --v98;
          }

          while (v98);

          v163 = v101;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
          lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x1E69E6310]);
          v22 = BidirectionalCollection<>.joined(separator:)();
          v19 = v106;

          v23 = v19;
LABEL_82:
          v8 = v153;
          goto LABEL_83;
        }

LABEL_115:
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
        goto LABEL_75;
      }
    }

    __break(1u);
    goto LABEL_115;
  }

LABEL_83:
  v107 = v159;
  __swift_destroy_boxed_opaque_existential_1(v166);
  v108 = swift_isUniquelyReferenced_nonNull_native();
  v166[0] = *(v107 + 16);
  v47 = v166[0];
  *(v107 + 16) = 0x8000000000000000;
  v74 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v23);
  v110 = *(v47 + 16);
  v111 = (v109 & 1) == 0;
  v112 = __OFADD__(v110, v111);
  v113 = v110 + v111;
  if (v112)
  {
LABEL_95:
    __break(1u);
LABEL_96:
    v155 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation10JSONFutureOGMd, &_ss18_DictionaryStorageCySS10Foundation10JSONFutureOGMR);
    v123 = static _DictionaryStorage.copy(original:)();
    v114 = v123;
    if (!*(v47 + 16))
    {
LABEL_111:

      v74 = v155;
      v107 = v159;
      if (v19)
      {
        goto LABEL_87;
      }

      goto LABEL_90;
    }

    v124 = (v123 + 64);
    v125 = v47 + 64;
    v126 = ((1 << *(v114 + 32)) + 63) >> 6;
    if (v114 != v47 || v124 >= v125 + 8 * v126)
    {
      memmove(v124, (v47 + 64), 8 * v126);
    }

    v127 = 0;
    *(v114 + 16) = *(v47 + 16);
    v128 = 1 << *(v47 + 32);
    v129 = -1;
    if (v128 < 64)
    {
      v129 = ~(-1 << v128);
    }

    v130 = v129 & *(v47 + 64);
    v131 = (v128 + 63) >> 6;
    v169 = v22;
    v153 = v8;
    if (v130)
    {
      do
      {
        v132 = __clz(__rbit64(v130));
        v156 = (v130 - 1) & v130;
LABEL_109:
        v135 = v132 | (v127 << 6);
        v136 = 16 * v135;
        v137 = (*(v47 + 48) + 16 * v135);
        v139 = *v137;
        v138 = v137[1];
        v135 *= 24;
        v140 = *(v47 + 56) + v135;
        v141 = *v140;
        v142 = *(v140 + 8);
        v143 = (*(v114 + 48) + v136);
        v144 = *(v140 + 16);
        *v143 = v139;
        v143[1] = v138;
        v145 = *(v114 + 56) + v135;
        *v145 = v141;
        *(v145 + 8) = v142;
        *(v145 + 16) = v144;

        outlined copy of JSONFuture(v141, v142, v144);
        v22 = v169;
        v130 = v156;
      }

      while (v156);
    }

    v133 = v127;
    while (1)
    {
      v127 = v133 + 1;
      if (__OFADD__(v133, 1))
      {
        break;
      }

      if (v127 >= v131)
      {
        goto LABEL_111;
      }

      v134 = *(v125 + 8 * v127);
      ++v133;
      if (v134)
      {
        v132 = __clz(__rbit64(v134));
        v156 = (v134 - 1) & v134;
        goto LABEL_109;
      }
    }

LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  LOBYTE(v19) = v109;
  if (*(v47 + 24) >= v113)
  {
    if (v108)
    {
      v114 = v47;
      if (v109)
      {
        goto LABEL_87;
      }

      goto LABEL_90;
    }

    goto LABEL_96;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v113, v108);
  v114 = v166[0];
  v74 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v23);
  if ((v19 & 1) == (v115 & 1))
  {
    if (v19)
    {
LABEL_87:
      v116 = v74;

      v117 = *(v114 + 56) + 24 * v116;
      v118 = *v117;
      v119 = *(v117 + 8);
      v120 = v158;
      *v117 = v157;
      *(v117 + 8) = v120;
      v121 = *(v117 + 16);
      *(v117 + 16) = 1;
      result = outlined consume of JSONFuture(v118, v119, v121);
LABEL_91:
      *(v107 + 16) = v114;
      return result;
    }

LABEL_90:
    result = specialized _NativeDictionary._insert(at:key:value:)(v74, v22, v23, v157, v158, 1, v114);
    goto LABEL_91;
  }

LABEL_122:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t _JSONKeyedEncodingContainer.superEncoder()@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v5 = v1[2];
  v6 = &type metadata for _CodingKey;
  v100[3] = &type metadata for _CodingKey;
  v7 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v100[4] = v7;
  v8 = swift_allocObject();
  v100[0] = v8;
  *(v8 + 16) = xmmword_181237FF0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  v9 = *(v4 + 152);
  if (!v9)
  {

    v15 = 0xE500000000000000;
    v16 = 0x7265707573;
LABEL_80:
    __swift_destroy_boxed_opaque_existential_1(v100);
    v84 = v1[1];

    v85 = _s10Foundation24__JSONReferencingEncoder33_12768CA107A31EF2DCE034FD75B541C9LLC11referencing3key12convertedKey8wrappingAdA13__JSONEncoderACLLC_s06CodingN0_pSSAA10JSONFutureO9RefObjectCtcfCTf4nennn_nAA01_qN0O_Tt3g5(v4, 0x7265707573, 0xE500000000000000, 0, 0, v16, v15, v84);
    a1[3] = type metadata accessor for __JSONReferencingEncoder();
    result = lazy protocol witness table accessor for type __JSONEncoder and conformance __JSONEncoder(&lazy protocol witness table cache variable for type __JSONReferencingEncoder and conformance __JSONEncoder, type metadata accessor for __JSONReferencingEncoder, &protocol conformance descriptor for __JSONEncoder);
    a1[4] = result;
    *a1 = v85;
    return result;
  }

  v92 = v4;
  v93 = a1;
  v91 = v1;
  if (v9 != 1)
  {
    v2 = *(v4 + 160);

    sub_1807A98E4(v9, v2);
    v17 = __JSONEncoder.codingPath.getter();
    v18 = _CodingPathNode.path.getter(v5);
    v97 = v17;
    specialized Array.append<A>(contentsOf:)(v18);
    v5 = v17;
    outlined init with copy of Hashable & Sendable(v100, &v97);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_9:
      v20 = *(v5 + 16);
      v19 = *(v5 + 24);
      if (v20 >= v19 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v5);
      }

      v21 = __swift_mutable_project_boxed_opaque_existential_1(&v97, v99);
      v22 = MEMORY[0x1EEE9AC00](v21);
      v24 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v25 + 16))(v24, v22);
      v90 = *v24;
      v26 = *(v24 + 2);
      LOBYTE(v24) = v24[24];
      v95 = v6;
      v96 = v7;
      v27 = swift_allocObject();
      *&v94 = v27;
      *(v27 + 16) = v90;
      *(v27 + 32) = v26;
      *(v27 + 40) = v24;
      *(v5 + 16) = v20 + 1;
      outlined init with take of Equatable(&v94, v5 + 40 * v20 + 32);
      __swift_destroy_boxed_opaque_existential_1(&v97);
      (v9)(&v97, v5);

      __swift_project_boxed_opaque_existential_1(&v97, v99);
      v16 = dispatch thunk of CodingKey.stringValue.getter();
      v15 = v28;
      sub_1807A5C7C(v9, v2);
      __swift_destroy_boxed_opaque_existential_1(&v97);
      a1 = v93;
LABEL_79:
      v1 = v91;
      v4 = v92;
      goto LABEL_80;
    }

LABEL_85:
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1, v5);
    goto LABEL_9;
  }

  if (String.index(after:)() >> 14 > 0x14)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v10 = String.subscript.getter();
  v14 = v13;
  v7 = MEMORY[0x1E69E7CC0];
  if ((v10 ^ v11) < 0x4000)
  {
    v6 = 15;
LABEL_6:

LABEL_70:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
    }

    v75 = *(v7 + 16);
    v74 = *(v7 + 24);
    v76 = v75 + 1;
    if (v75 >= v74 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v75 + 1, 1, v7);
    }

    *(v7 + 16) = v76;
    v77 = v7 + 16 * v75;
    *(v77 + 32) = v6;
    *(v77 + 40) = 327687;
    v97 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v76, 0);
    v78 = v97;
    v79 = v7 + 40;
    do
    {
      String.subscript.getter();
      v80 = Substring.lowercased()();

      v97 = v78;
      v82 = v78[2];
      v81 = v78[3];
      if (v82 >= v81 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v81 > 1), v82 + 1, 1);
        v78 = v97;
      }

      v79 += 16;
      v78[2] = v82 + 1;
      *&v78[2 * v82 + 4] = v80;
      --v76;
    }

    while (v76);

    v97 = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x1E69E6310]);
    v16 = BidirectionalCollection<>.joined(separator:)();
    v15 = v83;

    a1 = v93;
    goto LABEL_79;
  }

  v29 = v10;
  v9 = v11;
  v2 = v12;
  v88 = 15;
  while (1)
  {
    *&v90 = v7;
    v5 = Substring.UnicodeScalarView.index(before:)();
    v30 = Substring.UnicodeScalarView.subscript.getter();
    v31 = v30;
    v32 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v30), 1u);
    v6 = v29;
    if (!BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v31, v32, 0x700030001))
    {
      break;
    }

LABEL_14:
    v33 = Substring.UnicodeScalarView.index(after:)();

    v35 = v88;
    if (v6 >> 14 < v88 >> 14 || v33 >> 14 < v6 >> 14)
    {
      goto LABEL_87;
    }

    v36 = v90;
    result = swift_isUniquelyReferenced_nonNull_native();
    v87 = v6 >> 14;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v90 + 16) + 1, 1, v90);
      v36 = result;
    }

    v38 = *(v36 + 16);
    v37 = *(v36 + 24);
    if (v38 >= v37 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v36);
      v36 = result;
    }

    *(v36 + 16) = v38 + 1;
    v39 = v36 + 16 * v38;
    *(v39 + 32) = v35;
    *(v39 + 40) = v6;
    if (v6 > 0x53FFF)
    {
      goto LABEL_88;
    }

    *&v90 = v36;
    v40 = String.subscript.getter();
    v44 = v43;
    if ((v40 ^ v41) < 0x4000)
    {
      v7 = v90;
      goto LABEL_6;
    }

    v45 = v40;
    v2 = v41;
    v46 = v42;
    v5 = Substring.UnicodeScalarView.index(before:)();
    v47 = Substring.UnicodeScalarView.subscript.getter();
    v48 = v47;
    v49 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v47), 0);
    v50 = BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v48, v49, 0x700030000);
    v51 = v45;
    if (!v50)
    {
      if ((v44 & 0x2000000000000000) != 0)
      {
        v61 = HIBYTE(v44) & 0xF;
      }

      else
      {
        v61 = v46 & 0xFFFFFFFFFFFFLL;
      }

      v89 = v44 & 0xFFFFFFFFFFFFFFLL;
      v88 = (v44 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v51 = v45;
      while ((v51 ^ v5) >= 0x4000)
      {
        v9 = (_StringGuts.validateInclusiveScalarIndex(_:)(v51, v46, v44) >> 16);
        if (v9 >= v61)
        {
          goto LABEL_83;
        }

        if ((v44 & 0x1000000000000000) != 0)
        {
          v51 = String.UnicodeScalarView._foreignIndex(after:)();
        }

        else
        {
          if ((v44 & 0x2000000000000000) != 0)
          {
            v97 = v46;
            v98 = v89;
            v64 = *(&v97 + v9);
          }

          else
          {
            v63 = v88;
            if ((v46 & 0x1000000000000000) == 0)
            {
              v63 = _StringObject.sharedUTF8.getter();
            }

            v64 = v9[v63];
          }

          v65 = v64;
          v66 = __clz(v64 ^ 0xFF) - 24;
          if (v65 >= 0)
          {
            LOBYTE(v66) = 1;
          }

          v51 = (&v9[v66] << 16) | 5;
        }

        v7 = Substring.UnicodeScalarView.subscript.getter();
        v62 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v7), 0);
        if (BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v7, v62, 0x700030000))
        {
          goto LABEL_23;
        }
      }

      v88 = v6;
      goto LABEL_68;
    }

LABEL_23:
    v52 = Substring.UnicodeScalarView.index(after:)();

    if (v51 >> 14 > v52 >> 14)
    {
      goto LABEL_89;
    }

    v7 = v90;
    if (v51 >> 14 == String.index(after:)() >> 14)
    {
      result = v6;
    }

    else
    {
      result = String.index(before:)();
      if (v87 > result >> 14)
      {
        goto LABEL_91;
      }

      v68 = *(v90 + 16);
      v67 = *(v90 + 24);
      if (v68 >= v67 >> 1)
      {
        v73 = result;
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1, v90);
        result = v73;
      }

      *(v7 + 16) = v68 + 1;
      v69 = v7 + 16 * v68;
      *(v69 + 32) = v6;
      *(v69 + 40) = result;
    }

    v88 = result;
    if (v52 > 0x53FFF)
    {
      goto LABEL_90;
    }

    v29 = String.subscript.getter();
    v9 = v70;
    v2 = v71;
    v14 = v72;
    if ((v29 ^ v70) < 0x4000)
    {
      goto LABEL_69;
    }
  }

  if ((v14 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v14) & 0xF;
  }

  else
  {
    v7 = v2 & 0xFFFFFFFFFFFFLL;
  }

  v89 = v14 & 0xFFFFFFFFFFFFFFLL;
  v6 = v29;
  while ((v6 ^ v5) >= 0x4000)
  {
    v56 = _StringGuts.validateInclusiveScalarIndex(_:)(v6, v2, v14) >> 16;
    if (v56 >= v7)
    {
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    if ((v14 & 0x1000000000000000) != 0)
    {
      v6 = String.UnicodeScalarView._foreignIndex(after:)();
    }

    else
    {
      if ((v14 & 0x2000000000000000) != 0)
      {
        v97 = v2;
        v98 = v89;
        v58 = *(&v97 + v56);
      }

      else
      {
        v57 = (v14 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v2 & 0x1000000000000000) == 0)
        {
          v57 = _StringObject.sharedUTF8.getter();
        }

        v58 = *(v57 + v56);
      }

      v59 = v58;
      v60 = __clz(v58 ^ 0xFF) - 24;
      if (v59 >= 0)
      {
        LOBYTE(v60) = 1;
      }

      v6 = ((v56 + v60) << 16) | 5;
    }

    v53 = Substring.UnicodeScalarView.subscript.getter();
    v54 = v53;
    v55 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v53), 1u);
    if (BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v54, v55, 0x700030001))
    {
      goto LABEL_14;
    }
  }

LABEL_68:
  v7 = v90;
LABEL_69:

  v6 = v88;
  if (v88 <= 0x53FFF)
  {
    goto LABEL_70;
  }

  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
  return result;
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71A8]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71D0]);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(uint64_t a1, uint64_t a2, char a3)
{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

uint64_t _JSONUnkeyedEncodingContainer.encode(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 8);
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  v7 = v6;
  v8 = *(v4 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 16) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    *(v4 + 16) = v8;
  }

  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  if (v11 >= v10 >> 1)
  {
    *(v4 + 16) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
  }

  v13 = *(v4 + 16);
  *(v13 + 16) = v11 + 1;
  v14 = v13 + 24 * v11;
  *(v14 + 32) = v5;
  *(v14 + 40) = v7;
  *(v14 + 48) = 1;
  *(v4 + 16) = v13;
  return result;
}

{
  v4 = *(v3 + 8);
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  v7 = v6;
  v8 = *(v4 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 16) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    *(v4 + 16) = v8;
  }

  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  if (v11 >= v10 >> 1)
  {
    *(v4 + 16) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
  }

  v13 = *(v4 + 16);
  *(v13 + 16) = v11 + 1;
  v14 = v13 + 24 * v11;
  *(v14 + 32) = v5;
  *(v14 + 40) = v7;
  *(v14 + 48) = 1;
  *(v4 + 16) = v13;
  return result;
}

{
  v4 = *(v3 + 8);
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  v7 = v6;
  v8 = *(v4 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 16) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    *(v4 + 16) = v8;
  }

  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  if (v11 >= v10 >> 1)
  {
    *(v4 + 16) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
  }

  v13 = *(v4 + 16);
  *(v13 + 16) = v11 + 1;
  v14 = v13 + 24 * v11;
  *(v14 + 32) = v5;
  *(v14 + 40) = v7;
  *(v14 + 48) = 1;
  *(v4 + 16) = v13;
  return result;
}

{
  v4 = *(v3 + 8);
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  v7 = v6;
  v8 = *(v4 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 16) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    *(v4 + 16) = v8;
  }

  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  if (v11 >= v10 >> 1)
  {
    *(v4 + 16) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
  }

  v13 = *(v4 + 16);
  *(v13 + 16) = v11 + 1;
  v14 = v13 + 24 * v11;
  *(v14 + 32) = v5;
  *(v14 + 40) = v7;
  *(v14 + 48) = 1;
  *(v4 + 16) = v13;
  return result;
}

uint64_t _JSONUnkeyedEncodingContainer.encode(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 8);
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  v8 = v7;
  v9 = *(v5 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    *(v5 + 16) = v9;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    *(v5 + 16) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v9);
  }

  v14 = *(v5 + 16);
  *(v14 + 16) = v12 + 1;
  v15 = v14 + 24 * v12;
  *(v15 + 32) = v6;
  *(v15 + 40) = v8;
  *(v15 + 48) = 1;
  *(v5 + 16) = v14;
  return result;
}

uint64_t _JSONUnkeyedEncodingContainer.encode(_:)(uint64_t a1, float a2)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(*(v5 + 16) + 16);
  v7 = *(*v2 + 120);
  v25[0] = *(*v2 + 104);
  v25[1] = v7;
  v25[2] = *(v4 + 136);
  if ((LODWORD(a2) & 0x7FFFFFFFu) < 0x7F800000)
  {
    v11 = Float.description.getter();
    v12 = v16;
    v24 = v16;

    v17._countAndFlagsBits = 12334;
    v17._object = 0xE200000000000000;
    v18 = String.hasSuffix(_:)(v17);

    if (v18)
    {
      specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
      v12 = v24;
    }

    v14 = *(v5 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 16) = v14;
    v13 = 1;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

  result = specialized static JSONEncoderValue.nonConformantNumber<A, B>(from:with:encoder:_:)(v25, a2, v4, v6, 0, 0, 2);
  if (v3)
  {
    return result;
  }

  v11 = result;
  v12 = v9;
  v13 = v10;
  v14 = *(v5 + 16);
  outlined copy of JSONEncoderValue(result, v9, v10);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v14;
  if ((v15 & 1) == 0)
  {
LABEL_4:
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
    *(v5 + 16) = v14;
  }

LABEL_8:
  v21 = *(v14 + 2);
  v20 = *(v14 + 3);
  if (v21 >= v20 >> 1)
  {
    *(v5 + 16) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v14);
  }

  result = outlined consume of JSONEncoderValue(v11, v12, v13);
  v22 = *(v5 + 16);
  *(v22 + 16) = v21 + 1;
  v23 = v22 + 24 * v21;
  *(v23 + 32) = v11;
  *(v23 + 40) = v12;
  *(v23 + 48) = v13;
  *(v5 + 16) = v22;
  return result;
}

uint64_t _JSONUnkeyedEncodingContainer.encode(_:)(uint64_t a1, double a2)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(*(v5 + 16) + 16);
  v7 = *(*v2 + 120);
  v25[0] = *(*v2 + 104);
  v25[1] = v7;
  v25[2] = *(v4 + 136);
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v11 = Double.description.getter();
    v12 = v16;
    v24 = v16;

    v17._countAndFlagsBits = 12334;
    v17._object = 0xE200000000000000;
    v18 = String.hasSuffix(_:)(v17);

    if (v18)
    {
      specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
      v12 = v24;
    }

    v14 = *(v5 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 16) = v14;
    v13 = 1;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

  result = specialized static JSONEncoderValue.nonConformantNumber<A, B>(from:with:encoder:_:)(v25, a2, v4, v6, 0, 0, 2);
  if (v3)
  {
    return result;
  }

  v11 = result;
  v12 = v9;
  v13 = v10;
  v14 = *(v5 + 16);
  outlined copy of JSONEncoderValue(result, v9, v10);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v14;
  if ((v15 & 1) == 0)
  {
LABEL_4:
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
    *(v5 + 16) = v14;
  }

LABEL_8:
  v21 = *(v14 + 2);
  v20 = *(v14 + 3);
  if (v21 >= v20 >> 1)
  {
    *(v5 + 16) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v14);
  }

  result = outlined consume of JSONEncoderValue(v11, v12, v13);
  v22 = *(v5 + 16);
  *(v22 + 16) = v21 + 1;
  v23 = v22 + 24 * v21;
  *(v23 + 32) = v11;
  *(v23 + 40) = v12;
  *(v23 + 48) = v13;
  *(v5 + 16) = v22;
  return result;
}

uint64_t _JSONUnkeyedEncodingContainer.nestedUnkeyedContainer()@<X0>(void *a1@<X8>)
{
  v3 = v1[1];
  v4 = *(*(v3 + 16) + 16);
  type metadata accessor for JSONFuture.RefArray();
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E7CC0];
  *(v5 + 16) = MEMORY[0x1E69E7CC0];
  *(v5 + 16) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 10, 0, v6);
  v7 = *(v3 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 16) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    *(v3 + 16) = v7;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
  }

  *(v7 + 2) = v10 + 1;
  v11 = &v7[24 * v10];
  *(v11 + 4) = v5;
  *(v11 + 5) = 0;
  v11[48] = 64;
  *(v3 + 16) = v7;
  v12 = *v1;
  v13 = v1[2];
  result = swift_allocObject();
  v15 = result;
  *(result + 16) = v4;
  *(result + 24) = v13;
  if (v13 >> 62)
  {
    v16 = 0;
    if (v13 >> 62 != 1)
    {
      goto LABEL_10;
    }

    v17 = ((v13 & 0x3FFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v17 = (v13 + 64);
  }

  v16 = *v17;

LABEL_10:
  if (__OFADD__(v16, 1))
  {
    __break(1u);
  }

  else
  {
    *(v15 + 32) = v16 + 1;
    a1[3] = &unk_1EEEE7918;
    a1[4] = lazy protocol witness table accessor for type _JSONUnkeyedEncodingContainer and conformance _JSONUnkeyedEncodingContainer();
    *a1 = v12;
    a1[1] = v5;
    a1[2] = v15 | 0x4000000000000000;
  }

  return result;
}

void *protocol witness for UnkeyedEncodingContainer.codingPath.getter in conformance _JSONUnkeyedEncodingContainer()
{
  v1 = *(v0 + 16);
  v2 = __JSONEncoder.codingPath.getter();
  v3 = _CodingPathNode.path.getter(v1);
  specialized Array.append<A>(contentsOf:)(v3);
  return v2;
}

char *protocol witness for UnkeyedEncodingContainer.encodeNil() in conformance _JSONUnkeyedEncodingContainer()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 16) = v2;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
    v2 = result;
    *(v1 + 16) = result;
  }

  v5 = *(v2 + 2);
  v4 = *(v2 + 3);
  if (v5 >= v4 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v2);
    v2 = result;
  }

  *(v2 + 2) = v5 + 1;
  v6 = &v2[24 * v5];
  *(v6 + 4) = 0;
  *(v6 + 5) = 0;
  v6[48] = 7;
  *(v1 + 16) = v2;
  return result;
}

char *protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _JSONUnkeyedEncodingContainer(char a1)
{
  v3 = *(v1 + 8);
  v4 = *(v3 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 16) = v4;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
    v4 = result;
    *(v3 + 16) = result;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
    v4 = result;
  }

  *(v4 + 2) = v7 + 1;
  v8 = &v4[24 * v7];
  *(v8 + 4) = a1 & 1;
  *(v8 + 5) = 0;
  v8[48] = 2;
  *(v3 + 16) = v4;
  return result;
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _JSONUnkeyedEncodingContainer(uint64_t a1)
{
  return _JSONUnkeyedEncodingContainer.encode(_:)(a1, MEMORY[0x1E69E6530], MEMORY[0x1E69E6590]);
}

{
  return _JSONUnkeyedEncodingContainer.encode(_:)(a1, MEMORY[0x1E69E7230], MEMORY[0x1E69E7270]);
}

{
  return _JSONUnkeyedEncodingContainer.encode(_:)(a1, MEMORY[0x1E69E7290], MEMORY[0x1E69E72D0]);
}

{
  return _JSONUnkeyedEncodingContainer.encode(_:)(a1, MEMORY[0x1E69E72F0], MEMORY[0x1E69E7340]);
}

{
  return _JSONUnkeyedEncodingContainer.encode(_:)(a1, MEMORY[0x1E69E7360], MEMORY[0x1E69E73B8]);
}

{
  return _JSONUnkeyedEncodingContainer.encode(_:)(a1, MEMORY[0x1E69E6810], MEMORY[0x1E69E6860]);
}

{
  return _JSONUnkeyedEncodingContainer.encode(_:)(a1, MEMORY[0x1E69E7508], MEMORY[0x1E69E7548]);
}

{
  return _JSONUnkeyedEncodingContainer.encode(_:)(a1, MEMORY[0x1E69E75F8], MEMORY[0x1E69E7648]);
}

{
  return _JSONUnkeyedEncodingContainer.encode(_:)(a1, MEMORY[0x1E69E7668], MEMORY[0x1E69E76B8]);
}

{
  return _JSONUnkeyedEncodingContainer.encode(_:)(a1, MEMORY[0x1E69E76D8], MEMORY[0x1E69E7720]);
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _JSONUnkeyedEncodingContainer(uint64_t a1, uint64_t a2)
{
  return _JSONUnkeyedEncodingContainer.encode(_:)(a1, a2, MEMORY[0x1E69E7570], MEMORY[0x1E69E7588]);
}

{
  return _JSONUnkeyedEncodingContainer.encode(_:)(a1, a2, MEMORY[0x1E69E77B8], MEMORY[0x1E69E77C8]);
}

void __JSONEncoder.encode(_:)(uint64_t result, float a2)
{
  if (*(v2 + 32) != 255)
  {
    __break(1u);
    return;
  }

  v4 = *(v2 + 120);
  v17[0] = *(v2 + 104);
  v17[1] = v4;
  v17[2] = *(v2 + 136);
  if ((LODWORD(a2) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    v8 = Float.description.getter();
    v9 = v10;
    v16 = v10;

    v11._countAndFlagsBits = 12334;
    v11._object = 0xE200000000000000;
    v12 = String.hasSuffix(_:)(v11);

    if (v12)
    {
      specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
      v9 = v16;
    }

    v7 = 1;
  }

  else
  {
    v5 = specialized static JSONEncoderValue.nonConformantNumber<A, B>(from:with:encoder:_:)(v17, a2, v2, 0, 0, 0, 255);
    if (v3)
    {
      return;
    }

    v8 = v5;
    v9 = v6;
  }

  v13 = *(v2 + 16);
  v14 = *(v2 + 24);
  *(v2 + 16) = v8;
  *(v2 + 24) = v9;
  v15 = *(v2 + 32);
  *(v2 + 32) = v7;
  outlined consume of JSONEncoderValue?(v13, v14, v15);
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __JSONEncoder(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __JSONEncoder(a1, a2, a3, a4, MEMORY[0x1E69E7570], MEMORY[0x1E69E7588]);
}

{
  return protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __JSONEncoder(a1, a2, a3, a4, MEMORY[0x1E69E77B8], MEMORY[0x1E69E77C8]);
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __JSONEncoder(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *v6;
  if (*(*v6 + 32) == 255)
  {
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = *(v7 + 16);
    v10 = *(v7 + 24);
    *(v7 + 16) = v8;
    *(v7 + 24) = v11;
    v12 = *(v7 + 32);
    *(v7 + 32) = 1;
    return outlined consume of JSONEncoderValue?(v9, v10, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t __JSONReferencingEncoder.__ivar_destroyer()
{

  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[32];

  return outlined consume of __JSONReferencingEncoder.Reference(v1, v2, v3);
}

uint64_t Float.serializeJsonRepresentation<A>(into:encoder:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6)
{
  v9 = *(a2 + 120);
  v28[0] = *(a2 + 104);
  v28[1] = v9;
  v28[2] = *(a2 + 136);
  if ((LODWORD(a6) & 0x7FFFFFFFu) < 0x7F800000)
  {
    v13 = Float.description.getter();
    v15 = v14;
    v26 = v13;
    v27 = v14;

    v16._countAndFlagsBits = 12334;
    v16._object = 0xE200000000000000;
    v17 = String.hasSuffix(_:)(v16);

    if (v17)
    {
      specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
      v13 = v26;
      v15 = v27;
    }

    goto LABEL_6;
  }

  result = specialized static JSONEncoderValue.nonConformantNumber<A, B>(from:with:encoder:_:)(v28, a2, a3, a4, a5, a6);
  if (v6)
  {
    return result;
  }

  v13 = result;
  v15 = v11;
  if (v12)
  {
    if (v12 != 1)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_18;
    }

LABEL_6:
    v18 = *(*(a1 + 16) + 16);
    v26 = v13;
    v27 = v15;

    specialized String.withUTF8<A>(_:)(&v26);
    outlined consume of JSONEncoderValue(v13, v15, 1u);

    return *(*(a1 + 16) + 16) - v18;
  }

  v7 = *(a1 + 16);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_18:
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
  }

  v20 = *(v7 + 2);
  v19 = *(v7 + 3);
  if (v20 >= v19 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v7);
  }

  *(v7 + 2) = v20 + 1;
  v7[v20 + 32] = 34;
  *(a1 + 16) = v7;
  v26 = v13;
  v27 = v15;
  specialized String.withUTF8<A>(_:)(&v26);

  v21 = *(a1 + 16);
  v22 = *(v21 + 2);
  v23 = v22 - v20;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22 + 1, 1, v21);
  }

  v25 = *(v21 + 2);
  v24 = *(v21 + 3);
  if (v25 >= v24 >> 1)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v21);
  }

  outlined consume of JSONEncoderValue(v13, v15, 0);
  *(v21 + 2) = v25 + 1;
  v21[v25 + 32] = 34;
  *(a1 + 16) = v21;
  return v23 + 1;
}

uint64_t Double.serializeJsonRepresentation<A>(into:encoder:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v9 = *(a2 + 120);
  v28[0] = *(a2 + 104);
  v28[1] = v9;
  v28[2] = *(a2 + 136);
  if ((*&a6 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v13 = Double.description.getter();
    v15 = v14;
    v26 = v13;
    v27 = v14;

    v16._countAndFlagsBits = 12334;
    v16._object = 0xE200000000000000;
    v17 = String.hasSuffix(_:)(v16);

    if (v17)
    {
      specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
      v13 = v26;
      v15 = v27;
    }

    goto LABEL_6;
  }

  result = specialized static JSONEncoderValue.nonConformantNumber<A, B>(from:with:encoder:_:)(v28, a2, a3, a4, a5, a6);
  if (v6)
  {
    return result;
  }

  v13 = result;
  v15 = v11;
  if (v12)
  {
    if (v12 != 1)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_18;
    }

LABEL_6:
    v18 = *(*(a1 + 16) + 16);
    v26 = v13;
    v27 = v15;

    specialized String.withUTF8<A>(_:)(&v26);
    outlined consume of JSONEncoderValue(v13, v15, 1u);

    return *(*(a1 + 16) + 16) - v18;
  }

  v7 = *(a1 + 16);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_18:
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
  }

  v20 = *(v7 + 2);
  v19 = *(v7 + 3);
  if (v20 >= v19 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v7);
  }

  *(v7 + 2) = v20 + 1;
  v7[v20 + 32] = 34;
  *(a1 + 16) = v7;
  v26 = v13;
  v27 = v15;
  specialized String.withUTF8<A>(_:)(&v26);

  v21 = *(a1 + 16);
  v22 = *(v21 + 2);
  v23 = v22 - v20;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22 + 1, 1, v21);
  }

  v25 = *(v21 + 2);
  v24 = *(v21 + 3);
  if (v25 >= v24 >> 1)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v21);
  }

  outlined consume of JSONEncoderValue(v13, v15, 0);
  *(v21 + 2) = v25 + 1;
  v21[v25 + 32] = 34;
  *(a1 + 16) = v21;
  return v23 + 1;
}

uint64_t _s10Foundation24__JSONReferencingEncoder33_12768CA107A31EF2DCE034FD75B541C9LLC11referencing3key12convertedKey8wrappingAdA13__JSONEncoderACLLC_s06CodingN0_pSSAA10JSONFutureO9RefObjectCtcfCTf4nennn_nAA01_qN0O_Tt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = &type metadata for _CodingKey;
  v30 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v16 = swift_allocObject();
  *&v28 = v16;
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  *(v16 + 32) = a4;
  *(v16 + 40) = a5;
  type metadata accessor for __JSONReferencingEncoder();
  v17 = swift_allocObject();
  *(v17 + 232) = a1;
  *(v17 + 240) = a8 | 0x8000000000000000;
  *(v17 + 248) = a6;
  *(v17 + 256) = a7;
  v18 = *(a1 + 136);
  v35 = *(a1 + 120);
  v36 = v18;
  v37 = *(a1 + 152);
  v38 = *(a1 + 168);
  v19 = *(a1 + 72);
  v31 = *(a1 + 56);
  v32 = v19;
  v20 = *(a1 + 104);
  v33 = *(a1 + 88);
  v34 = v20;
  outlined init with take of Equatable(&v28, v27);
  *(v17 + 184) = 0u;
  *(v17 + 200) = 0u;
  *(v17 + 216) = 0u;
  v21 = v36;
  *(v17 + 120) = v35;
  *(v17 + 136) = v21;
  *(v17 + 152) = v37;
  v22 = v32;
  *(v17 + 56) = v31;
  *(v17 + 72) = v22;
  v23 = v34;
  *(v17 + 88) = v33;
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = -1;
  *(v17 + 40) = 0;
  *(v17 + 48) = 0;
  v24 = v38;
  *(v17 + 104) = v23;
  *(v17 + 168) = v24;
  *(v17 + 176) = a1;

  outlined init with copy of JSONEncoder._Options(&v31, v26);
  outlined assign with take of CodingKey?(v27, v17 + 192);
  return v17;
}

uint64_t specialized static JSONEncoderValue.== infix(_:_:)(uint64_t result, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 3u)
  {
    if (a3 > 1u)
    {
      if (a3 == 2)
      {
        if (a6 == 2)
        {
          return (a4 ^ result ^ 1) & 1;
        }
      }

      else if (a6 == 3)
      {
        return _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation16JSONEncoderValueO_Tt1g5(result, a4);
      }
    }

    else
    {
      if (!a3)
      {
        if (!a6)
        {
          if (result != a4 || a2 != a5)
          {
            return _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          return 1;
        }

        return 0;
      }

      if (a6 == 1)
      {
        if (result != a4 || a2 != a5)
        {
          return _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        return 1;
      }
    }

    return 0;
  }

  if (a3 <= 5u)
  {
    if (a3 == 4)
    {
      if (a6 == 4)
      {
        return _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16JSONEncoderValueOTt1g5(result, a4);
      }
    }

    else if (a6 == 5)
    {
      v14 = *(result + 16);
      if (v14 == *(a4 + 16))
      {
        if (!v14 || result == a4)
        {
          return _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(a2, a5);
        }

        v15 = (result + 32);
        for (i = (a4 + 32); *v15 == *i; ++i)
        {
          ++v15;
          if (!--v14)
          {
            return _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(a2, a5);
          }
        }
      }
    }

    return 0;
  }

  if (a3 != 6)
  {
    return a6 == 7 && !(a5 | a4);
  }

  if (a6 != 6)
  {
    return 0;
  }

  v6 = *(result + 16);
  if (v6 != *(a4 + 16))
  {
    return 0;
  }

  if (!v6 || result == a4)
  {
    return 1;
  }

  v7 = (result + 32);
  v8 = (a4 + 32);
  while (v6)
  {
    v10 = *v7++;
    v9 = v10;
    v11 = *v8++;
    v12 = v9 == v11;
    if (!v12 || v6-- == 1)
    {
      return v12;
    }
  }

  __break(1u);
  __break(1u);
  return result;
}

uint64_t specialized _JSONSimpleValueArrayElement<>.serializeJsonRepresentation<A>(into:encoder:_:)(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a2;
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  v8 = *(*(a1 + 16) + 16);
  v11[0] = v7;
  v11[1] = v9;
  specialized String.withUTF8<A>(_:)(v11);

  return *(*(a1 + 16) + 16) - v8;
}

uint64_t specialized _JSONSimpleValueArrayElement<>.serializeJsonRepresentation<A>(into:encoder:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12[3] = a3;
  v12[2] = a2;
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  v9 = *(*(a1 + 16) + 16);
  v12[0] = v8;
  v12[1] = v10;
  specialized String.withUTF8<A>(_:)(v12);

  return *(*(a1 + 16) + 16) - v9;
}

uint64_t getEnumTagSinglePayload for __JSONReferencingEncoder.Reference(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 24))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for __JSONReferencingEncoder.Reference(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSONFuture(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1E && *(a1 + 17))
  {
    return (*a1 + 30);
  }

  v3 = ((*(a1 + 16) >> 1) & 0x1C | (*(a1 + 16) >> 6)) ^ 0x1F;
  if (v3 >= 0x1D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for JSONFuture(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1D)
  {
    *(result + 16) = 0;
    *result = a2 - 30;
    *(result + 8) = 0;
    if (a3 >= 0x1E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSONEncoderValue(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 17))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 16);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for JSONEncoderValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for JSONEncoderValue(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for JSONEncoder._Options(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for JSONEncoder._Options(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL _sSLsE2leoiySbx_xtFZ10Foundation12DateIntervalV_Tt1B5(double a1, double a2, double a3, double a4)
{
  v4 = a3 < a1;
  if (a1 >= a3 && a1 <= a3)
  {
    v4 = a4 < a2;
  }

  return !v4;
}

uint64_t specialized RangeReplaceableCollection.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  BigString.init()();
  v31 = v34;
  v32 = v33;
  v8 = v35;
  v36[0] = 0;
  MEMORY[0x1865D26B0](v36, 8);
  v9 = v36[0];
  type metadata accessor for AttributedString.Guts();
  v10 = swift_allocObject();
  if ((BigString.isEmpty.getter() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v29 = a1;
  v30 = a2;
  if (one-time initialization token for _nextVersion != -1)
  {
LABEL_5:
    swift_once();
  }

  add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  v12 = v34;
  *(v10 + 24) = v33;
  *(v10 + 16) = add_explicit;
  *(v10 + 40) = v12;
  *(v10 + 56) = v35;
  *(v10 + 72) = 0;
  *(v10 + 80) = 0;
  *(v10 + 88) = 0;
  *(v10 + 96) = v9;
  *(v10 + 104) = MEMORY[0x1E69E7CC0];
  v13 = BigString.startIndex.getter();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = BigString.endIndex.getter();
  v41 = v13;
  v42 = v15;
  v43 = v17;
  v44 = v19;
  v45 = v20;
  v46 = v21;
  v47 = v22;
  v48 = v23;
  v50 = v31;
  v49 = v32;
  v51 = v8;

  outlined init with copy of BigString(&v33, v36);
  BigString.UnicodeScalarView.subscript.getter();

  outlined destroy of BigString(&v33);
  outlined destroy of BigSubstring.UnicodeScalarView(v36);
  v24 = v37;
  v25 = v38;
  v26 = v39;
  v27 = v40;
  *a4 = v10;
  *(a4 + 8) = v24;
  *(a4 + 24) = v25;
  *(a4 + 40) = v26;
  *(a4 + 56) = v27;
  *(a4 + 72) = 0;
  return specialized RangeReplaceableCollection.append<A>(contentsOf:)(v29, v30, a3);
}

unint64_t specialized min<A>(_:_:)(unint64_t result, unint64_t a2)
{
  if (a2 < result)
  {
    return a2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSONMap.Value(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 17))
  {
    return (*a1 + 123);
  }

  v3 = ((*(a1 + 16) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 16) >> 1) & 0xF))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for JSONMap.Value(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *(result + 16) = 0;
    *result = a2 - 123;
    *(result + 8) = 0;
    if (a3 >= 0x7B)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t getEnumTag for JSONMap.Value(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 <= 0x9F)
  {
    return v1 >> 5;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t destructiveInjectEnumTag for JSONMap.Value(uint64_t result, unsigned int a2)
{
  if (a2 < 5)
  {
    *(result + 16) = *(result + 16) & 1 | (32 * a2);
  }

  else
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    *(result + 16) = -96;
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for JSONError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && *(a1 + 49))
  {
    return (*a1 + 244);
  }

  v3 = *(a1 + 48);
  if (v3 <= 0xC)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for JSONError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 244;
    if (a3 >= 0xF4)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for JSONError(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xC)
  {
    *result = a2 - 12;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 12;
  }

  *(result + 48) = a2;
  return result;
}

void closure #1 in Float.init(prevalidatedBuffer:)(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v6 = _stringshims_strtof_clocale(a1, v10);
  if (v10[0])
  {
    v7 = &a1[a2] == v10[0];
  }

  else
  {
    v7 = 0;
  }

  v8 = !v7;
  v9 = v6;
  if (!v7)
  {
    v9 = 0.0;
  }

  *a3 = v9;
  *(a3 + 4) = v8;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance JSONError(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = a2[2];
  v8 = a2[3].i8[0];
  return specialized static JSONError.== infix(_:_:)(v5, v7) & 1;
}

uint64_t specialized static JSONError.== infix(_:_:)(uint64_t *a1, int8x16_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = v5;
  v7 = *(a1 + 24);
  v8 = a1[4];
  v9 = a1[5];
  v10 = (*(a1 + 25) << 8) | ((*(a1 + 29) | (*(a1 + 31) << 16)) << 40) | v7;
  switch(*(a1 + 48))
  {
    case 1:
      if (a2[3].i8[0] != 1)
      {
        return 0;
      }

      v17 = a2->i64[1];
      v18 = a2[1].u8[0];
      v19 = a2[1].i64[1];
      v20 = a2[2].i64[0];
      v21 = a2[2].i64[1];
      if (v4)
      {
        if (!v17)
        {
          return 0;
        }

        if (v3 == a2->i64[0] && v4 == v17)
        {
          if (v18 != v6)
          {
            return 0;
          }

          return v10 == v19 && v8 == v20 && v9 == v21;
        }

        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
        result = 0;
        if ((v34 & 1) == 0)
        {
          return result;
        }
      }

      else
      {
        result = 0;
        if (v17)
        {
          return result;
        }
      }

      if (v18 != v6)
      {
        return result;
      }

      return v10 == v19 && v8 == v20 && v9 == v21;
    case 2:
      if (a2[3].i8[0] != 2)
      {
        return 0;
      }

      if (v7)
      {
        if (a2[1].i8[8])
        {
          return 1;
        }
      }

      else if ((a2[1].i8[8] & 1) == 0 && v3 == a2->i64[0] && v4 == a2->i64[1] && v5 == a2[1].i64[0])
      {
        return 1;
      }

      return 0;
    case 3:
      if (a2[3].i8[0] != 3)
      {
        return 0;
      }

      goto LABEL_47;
    case 4:
      if (a2[3].i8[0] != 4)
      {
        return 0;
      }

      return v3 == a2->i64[0] && v4 == a2->i64[1] && v5 == a2[1].i64[0];
    case 5:
      if (a2[3].i8[0] != 5)
      {
        return 0;
      }

LABEL_47:
      v22 = a2[1].i64[0];
      v23 = a2[1].i64[1];
      v24 = a2[2].i64[0];
      if ((v3 != a2->i64[0] || v4 != a2->i64[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      return v5 == v22 && v10 == v23 && v8 == v24;
    case 6:
      if (a2[3].i8[0] == 6)
      {
        goto LABEL_60;
      }

      return 0;
    case 7:
      if (a2[3].i8[0] != 7)
      {
        return 0;
      }

LABEL_60:
      v29 = v4 == a2->i64[1] && v5 == a2[1].i64[0] && v10 == a2[1].i64[1];
      return a2->u8[0] == v3 && v29;
    case 8:
      if (a2[3].i8[0] == 8)
      {
        return v3 == a2->i64[0] && v4 == a2->i64[1] && v5 == a2[1].i64[0];
      }

      return 0;
    case 9:
      if (a2[3].i8[0] != 9)
      {
        return 0;
      }

      return v3 == a2->i64[0] && v4 == a2->i64[1] && v5 == a2[1].i64[0] && a2[1].i32[2] == ((*(a1 + 25) << 8) | v7);
    case 0xA:
      if (a2[3].i8[0] != 10)
      {
        return 0;
      }

      return v3 == a2->i64[0] && v4 == a2->i64[1] && v5 == a2[1].i64[0];
    case 0xB:
      if (a2[3].i8[0] != 11)
      {
        return 0;
      }

      if (v3 == a2->i64[0] && v4 == a2->i64[1])
      {
        return 1;
      }

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    case 0xC:
      v12 = v5 | v4;
      if (!(v12 | v3 | v8 | v9 | v10))
      {
        if (a2[3].i8[0] != 12)
        {
          return 0;
        }

        v32 = vorrq_s8(a2[1], a2[2]);
        return !(*&vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL)) | a2->i64[1] | a2->i64[0]);
      }

      v13 = v12 | v8 | v9 | v10;
      if (v3 != 1 || v13)
      {
        if (v3 != 2 || v13)
        {
          if (a2[3].i8[0] != 12 || a2->i64[0] != 3)
          {
            return 0;
          }
        }

        else if (a2[3].i8[0] != 12 || a2->i64[0] != 2)
        {
          return 0;
        }
      }

      else if (a2[3].i8[0] != 12 || a2->i64[0] != 1)
      {
        return 0;
      }

      v33 = vorrq_s8(a2[1], a2[2]);
      return !(*&vorr_s8(*v33.i8, *&vextq_s8(v33, v33, 8uLL)) | a2->i64[1]);
    default:
      if (a2[3].i8[0])
      {
        return 0;
      }

      return v3 == a2->i64[0] && v4 == a2->i64[1] && v5 == a2[1].i64[0];
  }
}

unsigned __int8 *specialized static JSONScanner.validateNumber(from:fullSource:)@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = result;
  v7 = &result[a2];
  if (a2 < 1)
  {
    v10 = result;
LABEL_9:
    if (result >= v7)
    {
LABEL_32:
      __break(1u);
    }

    else
    {
      v12 = 0;
      v13 = v10 - v5;
      v14 = &v5[a2] - v10;
      v15 = &v5[a2] - result;
      v16 = result - v5;
      while ((v16 & 0x8000000000000000) == 0)
      {
        v11 = v15-- < 1;
        if (v11)
        {
          break;
        }

        v18 = *result;
        if ((v18 - 58) >= 0xFFFFFFF6)
        {
          if (__OFADD__(v13++, 1))
          {
            goto LABEL_34;
          }
        }

        else if (*result <= 0x2Du)
        {
          if (v18 != 43 && v18 != 45 || v13 || v12 != 2)
          {
LABEL_31:
            result = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(result, a3, a4);
            *a5 = xmmword_181237560;
            *(a5 + 16) = v18;
            *(a5 + 24) = result;
            *(a5 + 32) = v19;
            *(a5 + 40) = v20;
            *(a5 + 48) = 1;
            return result;
          }

          v13 = 0;
          v12 = 3;
        }

        else if (v18 == 101 || v18 == 69)
        {
          if (v13 < 1 || v12 >= 2)
          {
            goto LABEL_31;
          }

          v13 = 0;
          v12 = 2;
        }

        else
        {
          if (v18 != 46 || v13 < 1 || v12)
          {
            goto LABEL_31;
          }

          v13 = 0;
          v12 = 1;
        }

        ++result;
        ++v16;
        if (!--v14)
        {
          goto LABEL_32;
        }
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = a2;
    v10 = result;
    while ((v8 & 0x8000000000000000) == 0)
    {
      v11 = v9-- < 1;
      if (v11)
      {
        break;
      }

      if (*result - 58 >= 0xFFFFFFF6)
      {
        ++result;
        ++v10;
        ++v8;
        if (result < v7)
        {
          continue;
        }
      }

      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(void *a1)
{
  v1 = a1;
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v46[0] = (v2 + 4);
  v46[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v33 = v1;
      v32 = v2;
      v7 = v2 + 11;
      v8 = -1;
      v9 = 1;
      v34 = v3;
      do
      {
        v35 = v9;
        v36 = v8;
        v37 = v7;
        do
        {
          v38 = v7 - 3;
          v39 = v8;
          v10 = *(v7 - 2);
          v11 = *(v7 - 1);
          v12 = *v7;
          v13 = *(v7 - 7);
          v15 = *(v7 - 6);
          v14 = *(v7 - 5);
          v16 = *(v7 - 32);
          v17 = *(v7 - 3);
          v43 = v11;
          v44 = v10;
          v42 = v12;
          outlined copy of JSONEncoderValue(v10, v11, v12);
          v18 = v13;
          v40 = v14;
          v41 = v15;
          v19 = v14;
          v20 = v16;
          outlined copy of JSONEncoderValue(v15, v19, v16);
          v21 = [v17 length];
          if (one-time initialization token for system != -1)
          {
            swift_once();
          }

          v22 = *(&static LocaleCache.system + 1);
          ObjectType = swift_getObjectType();
          v24 = *(v22 + 488);
          swift_unknownObjectRetain();
          v25 = v24(ObjectType, v22);
          v26 = [v17 compare:v18 options:577 range:0 locale:{v21, v25}];

          swift_unknownObjectRelease();
          outlined consume of JSONEncoderValue(v41, v40, v20);

          result = outlined consume of JSONEncoderValue(v44, v43, v42);
          if (v26 != -1)
          {
            break;
          }

          v28 = *(v7 - 7);
          v27 = *(v7 - 5);
          *(v7 - 32) = *v7;
          v7 -= 4;
          v29 = v7[1];
          v30 = *(v7 + 1);
          *v38 = v28;
          v38[1] = v27;
          *(v7 - 3) = v29;
          *(v7 - 1) = v30;
          v8 = v39 + 1;
        }

        while (v39 != -1);
        v9 = v35 + 1;
        v7 = v37 + 4;
        v8 = v36 - 1;
      }

      while (v35 + 1 != v34);
      v1 = v33;
      v2 = v32;
    }
  }

  else
  {
    v5 = result;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSStringC3key_10Foundation16JSONEncoderValueO5valuetMd, &_sSo8NSStringC3key_10Foundation16JSONEncoderValueO5valuetMR);
      v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v6 + 16) = v3 >> 1;
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    v45[0] = v6 + 32;
    v45[1] = v3 >> 1;
    v31 = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v45, v47, v46, v5);
    *(v31 + 16) = 0;
  }

  *v1 = v2;
  return result;
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(char **a1, unint64_t *a2, uint64_t *a3)
{
  v4 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_58;
  }

LABEL_2:
  *a1 = v4;
  v6 = *(v4 + 2);
  if (v6 < 2)
  {
    return 1;
  }

  while (1)
  {
    v7 = *a3;
    if (!*a3)
    {
      break;
    }

    v8 = a2;
    v42 = v6 - 1;
    v43 = v6;
    v45 = *&v4[16 * v6];
    v9 = (v7 + 40 * v45);
    v10 = 40 * *&v4[16 * v6 + 16];
    v11 = (v7 + v10);
    v46 = *&v4[16 * v6 + 24];
    v12 = v7 + 40 * v46;
    v13 = v10 - 40 * v45;
    v14 = 40 * v46 - v10;
    v15 = v14 / 40;
    v44 = v4;
    if (v13 / 40 >= v14 / 40)
    {
      v19 = 5 * v15;
      v20 = v8;
      if (v11 != v8 || &v11[5 * v15] <= v8)
      {
        memmove(v8, v11, 40 * v15);
      }

      v4 = &v20[v19];
      if (v14 < 40 || v10 <= 40 * v45)
      {
        v17 = v20;
        a2 = v20;
LABEL_25:
        v23 = v45;
      }

      else
      {
        a2 = v20;
        v23 = v45;
        do
        {
          v29 = v11 - 5;
          v12 -= 40;
          v30 = v4;
          while (1)
          {
            v31 = (v12 + 40);
            v32 = *(v30 - 40);
            v33 = *(v30 - 32);
            v30 -= 40;
            if (specialized Sequence<>.lexicographicallyPrecedes<A>(_:)(*(v11 - 5), *(v11 - 4), v32, v33))
            {
              break;
            }

            if (v31 != v4)
            {
              v34 = *v30;
              v35 = *(v30 + 16);
              *(v12 + 32) = *(v30 + 32);
              *v12 = v34;
              *(v12 + 16) = v35;
            }

            v12 -= 40;
            v4 = v30;
            if (v30 <= a2)
            {
              v4 = v30;
              v17 = a2;
              goto LABEL_46;
            }
          }

          if (v31 != v11)
          {
            v36 = *v29;
            v37 = *(v11 - 3);
            *(v12 + 32) = *(v11 - 1);
            *v12 = v36;
            *(v12 + 16) = v37;
          }

          if (v4 <= a2)
          {
            break;
          }

          v11 -= 5;
        }

        while (v9 < v29);
        v17 = a2;
        v11 = v29;
      }

LABEL_46:
      v24 = v46;
      goto LABEL_47;
    }

    v16 = 5 * (v13 / 40);
    a2 = v8;
    if (v9 != v8 || &v9[v16] <= v8)
    {
      memmove(v8, v9, 40 * (v13 / 40));
    }

    v4 = &a2[v16];
    v18 = v13 < 40;
    v17 = a2;
    v18 = v18 || 40 * v46 <= v10;
    if (v18)
    {
      v11 = v9;
      goto LABEL_25;
    }

    v23 = v45;
    v24 = v46;
    do
    {
      if (specialized Sequence<>.lexicographicallyPrecedes<A>(_:)(*v17, v17[1], *v11, v11[1]))
      {
        v25 = v11;
        v26 = v9 == v11;
        v11 += 5;
        if (v26)
        {
          goto LABEL_32;
        }

LABEL_31:
        v27 = *v25;
        v28 = *(v25 + 1);
        v9[4] = v25[4];
        *v9 = v27;
        *(v9 + 1) = v28;
        goto LABEL_32;
      }

      v25 = v17;
      v26 = v9 == v17;
      v17 += 5;
      if (!v26)
      {
        goto LABEL_31;
      }

LABEL_32:
      v9 += 5;
    }

    while (v17 < v4 && v11 < v12);
    v11 = v9;
LABEL_47:
    v38 = 5 * ((v4 - v17) / 40);
    if (v11 != v17 || v11 >= &v17[v38])
    {
      memmove(v11, v17, v38 * 8);
    }

    if (v24 < v23)
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
      v4 = result;
      goto LABEL_2;
    }

    v4 = v44;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v44);
    }

    if ((v43 - 2) >= *(v4 + 2))
    {
      goto LABEL_57;
    }

    v39 = &v4[16 * v43];
    *v39 = v23;
    *(v39 + 1) = v24;
    *a1 = v4;
    result = specialized Array.remove(at:)(v42);
    v4 = *a1;
    v6 = *(*a1 + 2);
    if (v6 <= 1)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(uint64_t *a1, void **a2, uint64_t *a3)
{
  v4 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_63;
  }

  while (1)
  {
    *a1 = v4;
    v6 = *(v4 + 16);
    if (v6 < 2)
    {
      return 1;
    }

    __dst = a2;
    while (1)
    {
      v7 = *a3;
      if (!*a3)
      {
        __break(1u);
        return result;
      }

      v69 = v6;
      v70 = v4;
      v8 = *(v4 + 16 * v6);
      v68 = v6 - 1;
      v10 = (v4 + 16 * (v6 - 1) + 32);
      v9 = *v10;
      v71 = v10[1];
      v72 = v8;
      v11 = 32 * v8;
      v12 = (v7 + 32 * v8);
      v13 = 32 * *v10;
      v14 = (v7 + v13);
      v15 = (v7 + 32 * v71);
      v4 = v13 - 32 * v8;
      v16 = 32 * v71 - v13;
      if (v4 >= v16)
      {
        v4 = __dst;
        if (v14 != __dst || v15 <= __dst)
        {
          memmove(__dst, (v7 + 32 * v9), 32 * v71 - 32 * v9);
        }

        v18 = __dst + v16;
        if (v16 < 1 || v13 <= v11)
        {
          a2 = __dst;
LABEL_28:
          v20 = v14;
        }

        else
        {
          v87 = v12;
          do
          {
            v4 = 0;
            v44 = v18;
            v65 = v14 - 4;
            v89 = v15;
            v91 = v14;
            v73 = v18;
            while (1)
            {
              v75 = &v44[v4 - 32];
              v76 = &v44[v4];
              v45 = *&v44[v4 - 24];
              v46 = *&v44[v4 - 16];
              v47 = v44[v4 - 8];
              v48 = *(v14 - 4);
              v49 = *(v14 - 3);
              v50 = *(v14 - 2);
              v51 = *(v14 - 8);
              v52 = *v75;
              v84 = v46;
              v85 = v45;
              v82 = v47;
              outlined copy of JSONEncoderValue(v45, v46, v47);
              v53 = v48;
              v81 = v49;
              v54 = v49;
              v55 = v50;
              v56 = v51;
              outlined copy of JSONEncoderValue(v54, v55, v51);
              v78 = [v52 length];
              if (one-time initialization token for system != -1)
              {
                swift_once();
              }

              v57 = *(&static LocaleCache.system + 1);
              ObjectType = swift_getObjectType();
              v59 = *(v57 + 488);
              swift_unknownObjectRetain();
              v60 = v59(ObjectType, v57);
              v61 = [v52 compare:v53 options:577 range:0 locale:{v78, v60}];

              swift_unknownObjectRelease();
              outlined consume of JSONEncoderValue(v81, v55, v56);

              outlined consume of JSONEncoderValue(v85, v84, v82);
              if (v61 == -1)
              {
                break;
              }

              v62 = v89 + v4;
              a2 = __dst;
              v14 = v91;
              if ((v89 + v4) != v76)
              {
                v63 = *(v75 + 16);
                *(v62 - 2) = *v75;
                *(v62 - 1) = v63;
              }

              v4 -= 32;
              v44 = v73;
              v18 = &v73[v4];
              if (&v73[v4] <= __dst)
              {
                goto LABEL_28;
              }
            }

            v15 = (v89 + v4 - 32);
            a2 = __dst;
            v20 = v65;
            if ((v89 + v4) != v91)
            {
              v64 = *(v65 + 1);
              *v15 = *v65;
              *(v89 + v4 - 16) = v64;
            }

            v18 = &v73[v4];
            if (&v73[v4] <= __dst)
            {
              break;
            }

            v14 = v65;
          }

          while (v87 < v65);
          v18 = &v73[v4];
        }
      }

      else
      {
        a2 = __dst;
        if (v12 != __dst || v14 <= __dst)
        {
          memmove(__dst, (v7 + 32 * v8), 32 * v9 - 32 * v8);
        }

        v18 = __dst + v4;
        if (v4 >= 1 && 32 * v71 > v13)
        {
          v88 = v15;
          v77 = __dst + v4;
          while (1)
          {
            v86 = v12;
            v25 = *v14;
            v26 = v14[1];
            v27 = v14[2];
            v90 = v14;
            v28 = *(v14 + 24);
            v29 = *a2;
            v30 = a2[1];
            v31 = a2[2];
            v32 = *(a2 + 24);
            v33 = v25;
            v83 = v28;
            outlined copy of JSONEncoderValue(v26, v27, v28);
            v34 = v29;
            v80 = v31;
            v79 = v32;
            outlined copy of JSONEncoderValue(v30, v31, v32);
            v35 = [v33 length];
            if (one-time initialization token for system != -1)
            {
              swift_once();
            }

            v36 = *(&static LocaleCache.system + 1);
            v37 = swift_getObjectType();
            v38 = *(v36 + 488);
            swift_unknownObjectRetain();
            v4 = v38(v37, v36);
            v39 = [v33 compare:v34 options:577 range:0 locale:{v35, v4}];

            swift_unknownObjectRelease();
            outlined consume of JSONEncoderValue(v30, v80, v79);

            outlined consume of JSONEncoderValue(v26, v27, v83);
            if (v39 != -1)
            {
              break;
            }

            v40 = v90;
            v14 = v90 + 4;
            v41 = v86;
            if (v86 != v90)
            {
              goto LABEL_42;
            }

LABEL_43:
            v12 = v41 + 4;
            v18 = v77;
            if (a2 >= v77 || v14 >= v88)
            {
              goto LABEL_16;
            }
          }

          v40 = a2;
          v41 = v86;
          v42 = v86 == a2;
          a2 += 4;
          v14 = v90;
          if (v42)
          {
            goto LABEL_43;
          }

LABEL_42:
          v43 = *(v40 + 1);
          *v41 = *v40;
          *(v41 + 1) = v43;
          goto LABEL_43;
        }

LABEL_16:
        v20 = v12;
      }

      v23 = (v18 - a2 + (v18 - a2 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0;
      if (v20 != a2 || v20 >= (a2 + v23))
      {
        memmove(v20, a2, v23);
      }

      if (v71 < v72)
      {
        break;
      }

      v4 = v70;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v70);
      }

      if ((v69 - 2) >= *(v4 + 16))
      {
        goto LABEL_62;
      }

      v24 = (v4 + 16 * v69);
      *v24 = v72;
      v24[1] = v71;
      *a1 = v4;
      result = specialized Array.remove(at:)(v68);
      v4 = *a1;
      v6 = *(*a1 + 16);
      if (v6 <= 1)
      {
        return 1;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    v4 = result;
  }
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, unint64_t a3, unint64_t *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    v12 = 40 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12 / 8];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (specialized Sequence<>.lexicographicallyPrecedes<A>(_:)(*v4, v4[1], *v6, v6[1]))
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 5;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 40;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 5;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = *v14;
    v17 = *(v14 + 1);
    *(v7 + 4) = v14[4];
    *v7 = v16;
    *(v7 + 1) = v17;
    goto LABEL_9;
  }

  v18 = 5 * v11;
  if (a4 != __src || &__src[v18 * 8] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v13 = &v4[v18];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_20:
    v19 = v6 - 5;
    v5 -= 40;
    v20 = v13;
    do
    {
      v21 = (v5 + 40);
      v22 = *(v20 - 40);
      v23 = *(v20 - 32);
      v20 -= 40;
      if (specialized Sequence<>.lexicographicallyPrecedes<A>(_:)(*(v6 - 5), *(v6 - 4), v22, v23))
      {
        if (v21 != v6)
        {
          v26 = *v19;
          v27 = *(v6 - 3);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v26;
          *(v5 + 16) = v27;
        }

        if (v13 <= v4 || (v6 -= 5, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v21 != v13)
      {
        v24 = *v20;
        v25 = *(v20 + 16);
        *(v5 + 32) = *(v20 + 32);
        *v5 = v24;
        *(v5 + 16) = v25;
      }

      v5 -= 40;
      v13 = v20;
    }

    while (v20 > v4);
    v13 = v20;
  }

LABEL_31:
  v28 = 5 * ((v13 - v4) / 40);
  if (v6 != v4 || v6 >= &v4[v28])
  {
    memmove(v6, v4, v28 * 8);
  }

  return 1;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__src, char *__dst, char *a3, uint64_t *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 31;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 5;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 31;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 5;
  if (v10 >= v13)
  {
    v37 = 4 * v13;
    if (a4 != __dst || &__dst[v37 * 8] <= a4)
    {
      memmove(a4, __dst, 32 * v13);
    }

    v15 = &v4[v37];
    if (v11 < 32 || v6 <= v7)
    {
LABEL_41:
      v59 = v6;
    }

    else
    {
      __srca = v4;
      v76 = v7;
      do
      {
        v38 = 0;
        v39 = v15;
        v63 = v6 - 32;
        v78 = v5;
        v80 = v6;
        v65 = v15;
        while (1)
        {
          v66 = &v39[v38 - 4];
          v67 = &v39[v38];
          v40 = v39[v38 - 3];
          v41 = v39[v38 - 2];
          v42 = v39[v38 - 1];
          v43 = *(v6 - 4);
          v44 = *(v6 - 3);
          v45 = *(v6 - 2);
          v46 = *(v6 - 8);
          v47 = *v66;
          v74 = v42;
          outlined copy of JSONEncoderValue(v40, v41, v42);
          v48 = v43;
          v72 = v44;
          v49 = v44;
          v50 = v45;
          v51 = v46;
          outlined copy of JSONEncoderValue(v49, v50, v46);
          v69 = [v47 length];
          if (one-time initialization token for system != -1)
          {
            swift_once();
          }

          v52 = *(&static LocaleCache.system + 1);
          ObjectType = swift_getObjectType();
          v54 = *(v52 + 488);
          swift_unknownObjectRetain();
          v55 = v54(ObjectType, v52);
          v56 = [v47 compare:v48 options:577 range:0 locale:{v69, v55}];

          swift_unknownObjectRelease();
          outlined consume of JSONEncoderValue(v72, v50, v51);

          outlined consume of JSONEncoderValue(v40, v41, v74);
          if (v56 == -1)
          {
            break;
          }

          v57 = &v78[v38 * 8];
          v4 = __srca;
          v6 = v80;
          if (&v78[v38 * 8] != v67)
          {
            v58 = *(v66 + 16);
            *(v57 - 2) = *v66;
            *(v57 - 1) = v58;
          }

          v38 -= 4;
          v39 = v65;
          v15 = &v65[v38];
          if (&v65[v38] <= __srca)
          {
            goto LABEL_41;
          }
        }

        v5 = &v78[v38 * 8 - 32];
        v4 = __srca;
        v59 = v63;
        if (&v78[v38 * 8] != v80)
        {
          v60 = *(v63 + 1);
          *v5 = *v63;
          *&v78[v38 * 8 - 16] = v60;
        }

        v15 = &v65[v38];
        if (&v65[v38] <= __srca)
        {
          break;
        }

        v6 = v63;
      }

      while (v63 > v76);
      v15 = &v65[v38];
    }
  }

  else
  {
    v14 = 4 * v10;
    if (a4 != __src || &__src[v14 * 8] <= a4)
    {
      memmove(a4, __src, v14 * 8);
    }

    v15 = &v4[v14];
    if (v8 >= 32 && v6 < v5)
    {
      v77 = v5;
      v68 = &v4[v14];
      while (1)
      {
        v75 = v7;
        v16 = *v6;
        v17 = *(v6 + 1);
        v18 = *(v6 + 2);
        v79 = v6;
        v19 = v6[24];
        v20 = *v4;
        v21 = v4[1];
        v22 = v4[2];
        v23 = *(v4 + 24);
        v24 = v16;
        v73 = v19;
        outlined copy of JSONEncoderValue(v17, v18, v19);
        v25 = v20;
        v70 = v22;
        v71 = v21;
        outlined copy of JSONEncoderValue(v21, v22, v23);
        v26 = [v24 length];
        if (one-time initialization token for system != -1)
        {
          swift_once();
        }

        v27 = *(&static LocaleCache.system + 1);
        v28 = swift_getObjectType();
        v29 = *(v27 + 488);
        swift_unknownObjectRetain();
        v30 = v29(v28, v27);
        v31 = [v24 compare:v25 options:577 range:0 locale:{v26, v30}];

        swift_unknownObjectRelease();
        outlined consume of JSONEncoderValue(v71, v70, v23);

        outlined consume of JSONEncoderValue(v17, v18, v73);
        if (v31 != -1)
        {
          break;
        }

        v32 = v79;
        v6 = v79 + 32;
        v33 = v75;
        v35 = v77;
        if (v75 != v79)
        {
          goto LABEL_16;
        }

LABEL_17:
        v7 = (v33 + 4);
        v15 = v68;
        if (v4 >= v68 || v6 >= v35)
        {
          goto LABEL_40;
        }
      }

      v32 = v4;
      v33 = v75;
      v34 = v75 == v4;
      v4 += 4;
      v35 = v77;
      v6 = v79;
      if (v34)
      {
        goto LABEL_17;
      }

LABEL_16:
      v36 = *(v32 + 1);
      *v33 = *v32;
      *(v33 + 1) = v36;
      goto LABEL_17;
    }

LABEL_40:
    v59 = v7;
  }

  v61 = (v15 - v4 + (v15 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0;
  if (v59 != v4 || v59 >= (v4 + v61))
  {
    memmove(v59, v4, v61);
  }

  return 1;
}

uint64_t Locale.forceTemperatureUnit.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 456))(ObjectType, v1);
}

uint64_t Locale.forceMeasurementSystem.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 448))(ObjectType, v1);
}

uint64_t Locale.init(identifier:preferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t *a4@<X8>)
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v8 = a3[7];
  v23[6] = a3[6];
  v24[0] = v8;
  *(v24 + 12) = *(a3 + 124);
  v9 = a3[3];
  v23[2] = a3[2];
  v23[3] = v9;
  v10 = a3[5];
  v23[4] = a3[4];
  v23[5] = v10;
  v11 = a3[1];
  v23[0] = *a3;
  v23[1] = v11;
  v12 = _s10Foundation17LocalePreferencesVSgWOg(v23);
  if (v12 == 1)
  {
    v13 = static LocaleCache.cache;
    MEMORY[0x1EEE9AC00](v12);
    os_unfair_lock_lock((v13 + 48));
    partial apply for closure #1 in LocaleCache.fixed(_:)((v13 + 16), v21);
    os_unfair_lock_unlock((v13 + 48));
    v15 = *(&v21[0] + 1);
    v14 = *&v21[0];
  }

  else
  {
    type metadata accessor for _LocaleICU();
    v15 = _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, type metadata accessor for _LocaleICU, &protocol conformance descriptor for _LocaleICU);
    v17 = a3[7];
    v21[6] = a3[6];
    v22[0] = v17;
    *(v22 + 12) = *(a3 + 124);
    v18 = a3[3];
    v21[2] = a3[2];
    v21[3] = v18;
    v19 = a3[5];
    v21[4] = a3[4];
    v21[5] = v19;
    v20 = a3[1];
    v21[0] = *a3;
    v21[1] = v20;
    swift_allocObject();
    result = _LocaleICU.init(identifier:prefs:)(a1, a2, v21);
    v14 = result;
  }

  *a4 = v14;
  a4[1] = v15;
  return result;
}

uint64_t Locale.prefs.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 464))(ObjectType, v1);
}

uint64_t Locale.customDateFormat(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v6 = v2;
  return (*(v3 + 496))(&v6, ObjectType, v3);
}

uint64_t Locale.identifierCapturingPreferences.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 472))(ObjectType, v1);
}

uint64_t Locale.forceFirstWeekday(_:)(char *a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v6 = v2;
  return (*(v3 + 432))(&v6, ObjectType, v3);
}

id static Locale.canonicalIdentifier(from:)(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E695D798];

  return static Locale.canonicalLanguageIdentifier(from:)(a1, a2, v2, closure #1 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply);
}

uint64_t Locale.temperatureUnit.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 408))(ObjectType, v1);
}

uint64_t Locale.scriptCode.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 160))(ObjectType, v1);
}

uint64_t Locale.variantCode.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  result = (*(v1 + 168))(ObjectType, v1);
  if (v4)
  {
    v5 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v5 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v5)
    {

      return 0;
    }
  }

  return result;
}

uint64_t Locale._calendarIdentifier.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 200))(ObjectType, v1);
}

uint64_t Locale.collationIdentifier.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 208))(ObjectType, v1);
}

uint64_t Locale.groupingSeparator.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 232))(ObjectType, v1);
}

uint64_t Locale.currencySymbol.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 240))(ObjectType, v1);
}

uint64_t Locale.currencyCode.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 248))(ObjectType, v1);
}

uint64_t Locale.collatorIdentifier.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 256))(ObjectType, v1);
}

uint64_t Locale.quotationBeginDelimiter.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 264))(ObjectType, v1);
}

uint64_t Locale.quotationEndDelimiter.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 272))(ObjectType, v1);
}

uint64_t Locale.alternateQuotationBeginDelimiter.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 280))(ObjectType, v1);
}

uint64_t Locale.alternateQuotationEndDelimiter.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 288))(ObjectType, v1);
}

uint64_t Locale.exemplarCharacterSet.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 184))(ObjectType, v1);
}

uint64_t Locale.usesMetricSystem.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 216))(ObjectType, v1) & 1;
}

Swift::String_optional __swiftcall Locale.localizedString(forIdentifier:)(Swift::String forIdentifier)
{
  object = forIdentifier._object;
  countAndFlagsBits = forIdentifier._countAndFlagsBits;
  v4 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 72))(countAndFlagsBits, object, ObjectType, v4);
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

Swift::String_optional __swiftcall Locale.localizedString(forLanguageCode:)(Swift::String forLanguageCode)
{
  object = forLanguageCode._object;
  countAndFlagsBits = forLanguageCode._countAndFlagsBits;
  v4 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 80))(countAndFlagsBits, object, ObjectType, v4);
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

Swift::String_optional __swiftcall Locale.localizedString(forRegionCode:)(Swift::String forRegionCode)
{
  object = forRegionCode._object;
  countAndFlagsBits = forRegionCode._countAndFlagsBits;
  v4 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 88))(countAndFlagsBits, object, ObjectType, v4);
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

Swift::String_optional __swiftcall Locale.localizedString(forScriptCode:)(Swift::String forScriptCode)
{
  object = forScriptCode._object;
  countAndFlagsBits = forScriptCode._countAndFlagsBits;
  v4 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 96))(countAndFlagsBits, object, ObjectType, v4);
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

Swift::String_optional __swiftcall Locale.localizedString(forVariantCode:)(Swift::String forVariantCode)
{
  object = forVariantCode._object;
  countAndFlagsBits = forVariantCode._countAndFlagsBits;
  v4 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 104))(countAndFlagsBits, object, ObjectType, v4);
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

Swift::String_optional __swiftcall Locale.localizedString(for:)(Foundation::Calendar::Identifier a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v8 = v2;
  v5 = (*(v3 + 112))(&v8, ObjectType, v3);
  result.value._object = v6;
  result.value._countAndFlagsBits = v5;
  return result;
}

Swift::String_optional __swiftcall Locale.localizedString(forCollationIdentifier:)(Swift::String forCollationIdentifier)
{
  object = forCollationIdentifier._object;
  countAndFlagsBits = forCollationIdentifier._countAndFlagsBits;
  v4 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 136))(countAndFlagsBits, object, ObjectType, v4);
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

Swift::String_optional __swiftcall Locale.localizedString(forCurrencyCode:)(Swift::String forCurrencyCode)
{
  object = forCurrencyCode._object;
  countAndFlagsBits = forCurrencyCode._countAndFlagsBits;
  v4 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 120))(countAndFlagsBits, object, ObjectType, v4);
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

Swift::String_optional __swiftcall Locale.localizedString(forCollatorIdentifier:)(Swift::String forCollatorIdentifier)
{
  object = forCollatorIdentifier._object;
  countAndFlagsBits = forCollatorIdentifier._countAndFlagsBits;
  v4 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 144))(countAndFlagsBits, object, ObjectType, v4);
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

uint64_t Locale.numberingSystem.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 312))(ObjectType, v1);
}

uint64_t Locale.forceHourCycle.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 424))(ObjectType, v1);
}

uint64_t Locale.firstDayOfWeek.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 328))(ObjectType, v1);
}

Swift::Int Locale.IdentifierType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  return Hasher._finalize()();
}

double Locale.init(languageComponents:)@<D0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[4];
  v17 = a1[3];
  v18 = v4;
  v5 = a1[4];
  v19 = a1[5];
  v6 = a1[1];
  v16[0] = *a1;
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v16[1] = v6;
  v16[2] = v9;
  v15[3] = v3;
  v15[4] = v17;
  v10 = a1[5];
  v15[5] = v5;
  v15[6] = v10;
  v15[1] = v7;
  v15[2] = v8;
  Locale.Language.Components.identifier.getter();
  v11 = outlined destroy of Locale.Language.Components(v16);
  if (one-time initialization token for cache != -1)
  {
    v11 = swift_once();
  }

  v12 = static LocaleCache.cache;
  MEMORY[0x1EEE9AC00](v11);
  os_unfair_lock_lock((v12 + 48));
  closure #1 in LocaleCache.fixed(_:)partial apply((v12 + 16), v15);
  os_unfair_lock_unlock((v12 + 48));
  v14 = v15[0];

  result = *&v14;
  *a2 = v14;
  return result;
}

double Locale.init(languageCode:script:languageRegion:)@<D0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X2>, _OWORD *a4@<X8>)
{
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  v9 = a1[1];
  v16[0] = *a1;
  v16[1] = v9;
  v10 = a2[1];
  v16[2] = *a2;
  v16[3] = v10;
  v11 = a3[1];
  v16[4] = *a3;
  v16[5] = v11;
  v17 = 27;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 1031;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  if (one-time initialization token for cache != -1)
  {
    v8 = swift_once();
  }

  v12 = static LocaleCache.cache;
  MEMORY[0x1EEE9AC00](v8);
  os_unfair_lock_lock(v12 + 12);
  closure #1 in LocaleCache.fixedComponents(_:)partial apply(&v12[4], &v15);
  os_unfair_lock_unlock(v12 + 12);
  v14 = v15;
  outlined destroy of Locale.Components(v16);
  result = *&v14;
  *a4 = v14;
  return result;
}

uint64_t Locale.currency.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 304))(ObjectType, v1);
}

uint64_t Locale.availableNumberingSystems.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 320))(ObjectType, v1);
}

uint64_t Locale.collation.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 368))(ObjectType, v1);
}

uint64_t Locale.timeZone.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 384))(ObjectType, v1);
}

uint64_t Locale.subdivision.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 392))(ObjectType, v1);
}

uint64_t Locale.variant.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 400))(ObjectType, v1);
}

Swift::Int_optional __swiftcall Locale.forceMinDaysInFirstWeek(_:)(Foundation::Calendar::Identifier a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v8 = v2;
  v5 = (*(v3 + 440))(&v8, ObjectType, v3);
  v7 = v6 & 1;
  result.value = v5;
  result.is_nil = v7;
  return result;
}

uint64_t static Locale.preferredLocales.getter()
{
  v40 = *MEMORY[0x1E69E9840];
  if (one-time initialization token for cache != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v0 = String._bridgeToObjectiveCImpl()();
    v1 = CFPreferencesCopyAppValue(v0, *MEMORY[0x1E695E8A8]);
    swift_unknownObjectRelease();
    if (v1 && (*&v39 = v1, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR), (swift_dynamicCast() & 1) != 0))
    {
      v2 = v37;
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
    }

    v35 = *(v2 + 16);
    if (v35)
    {
      v3 = 0;
      v34 = *MEMORY[0x1E695E4A8];
      v4 = v2 + 40;
      v5 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v3 >= *(v2 + 16))
        {
          __break(1u);
          goto LABEL_52;
        }

        v6 = String._bridgeToObjectiveCImpl()();

        CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(v34, v6);
        swift_unknownObjectRelease();
        if (!CanonicalLanguageIdentifierFromString)
        {
          break;
        }

        isTaggedPointer = _objc_isTaggedPointer(CanonicalLanguageIdentifierFromString);
        v9 = CanonicalLanguageIdentifierFromString;
        v10 = v9;
        if ((isTaggedPointer & 1) == 0)
        {
          goto LABEL_15;
        }

        TaggedPointerTag = _objc_getTaggedPointerTag(v9);
        if (!TaggedPointerTag)
        {
          _CFIndirectTaggedPointerStringGetContents();
          v19 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v20)
          {
            [(__CFString *)v10 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v12 = v37;
            v14 = v38;
LABEL_32:

            goto LABEL_33;
          }

          goto LABEL_27;
        }

        if (TaggedPointerTag == 22)
        {
          v18 = [(__CFString *)v10 UTF8String];
          if (!v18)
          {
            goto LABEL_54;
          }

          v19 = String.init(utf8String:)(v18);
          if (!v20)
          {
            __break(1u);
LABEL_54:
            __break(1u);
          }

LABEL_27:
          v12 = v19;
          v14 = v20;

          goto LABEL_33;
        }

        if (TaggedPointerTag != 2)
        {
LABEL_15:
          LOBYTE(v37) = 0;
          *&v39 = 0;
          if (__CFStringIsCF())
          {
            if (v39)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v15 = v10;
            v16 = String.init(_nativeStorage:)();
            if (v17)
            {
              v12 = v16;
              v14 = v17;

              goto LABEL_33;
            }

            *&v39 = [(__CFString *)v15 length];
            if (v39)
            {
LABEL_31:
              v12 = String.init(_cocoaString:)();
              v14 = v21;
              goto LABEL_32;
            }
          }

          goto LABEL_19;
        }

        MEMORY[0x1EEE9AC00](TaggedPointerTag);
        v12 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v14 = v13;

LABEL_33:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
        }

        v23 = *(v5 + 2);
        v22 = *(v5 + 3);
        if (v23 >= v22 >> 1)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v5);
        }

        ++v3;
        *(v5 + 2) = v23 + 1;
        v24 = &v5[16 * v23];
        *(v24 + 4) = v12;
        *(v24 + 5) = v14;
        v4 += 16;
        if (v35 == v3)
        {
          goto LABEL_40;
        }
      }

LABEL_19:
      v12 = 0;
      v14 = 0xE000000000000000;
      goto LABEL_33;
    }

    v5 = MEMORY[0x1E69E7CC0];
LABEL_40:

    v26 = *(v5 + 2);
    if (!v26)
    {
      break;
    }

    v27 = 0;
    v28 = v5 + 40;
    v29 = MEMORY[0x1E69E7CC0];
    while (v27 < *(v5 + 2))
    {
      v30 = static LocaleCache.cache;
      MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);

      os_unfair_lock_lock((v30 + 48));
      closure #1 in LocaleCache.fixed(_:)partial apply((v30 + 16), &v39);
      os_unfair_lock_unlock((v30 + 48));

      v36 = v39;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 16) + 1, 1, v29);
        v29 = isUniquelyReferenced_nonNull_native;
      }

      v32 = *(v29 + 16);
      v31 = *(v29 + 24);
      if (v32 >= v31 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v29);
        v29 = isUniquelyReferenced_nonNull_native;
      }

      ++v27;
      *(v29 + 16) = v32 + 1;
      *(v29 + 16 * v32 + 32) = v36;
      v28 += 16;
      if (v26 == v27)
      {
        goto LABEL_50;
      }
    }

LABEL_52:
    __break(1u);
LABEL_53:
    swift_once();
  }

  v29 = MEMORY[0x1E69E7CC0];
LABEL_50:

  return v29;
}