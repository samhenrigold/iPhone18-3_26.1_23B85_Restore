int64_t sub_1BAD02D48(int64_t result)
{
  if (result < 0)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  if (v2 <= result)
  {
    return 0;
  }

  v3 = *(v1 + 24);
  if (v3)
  {
    v4 = *(v1 + 8);
    v5 = __OFADD__(result, v4);
    v6 = result + v4;
    if (!v5)
    {
      return *(v3 + 2 * v6);
    }

    __break(1u);
    goto LABEL_26;
  }

  v7 = *(v1 + 32);
  if (!v7)
  {
LABEL_12:
    if (*(v1 + 56) <= result || (v9 = *(v1 + 48), v9 > result))
    {
      if (result >= 4)
      {
        v9 = result - 4;
      }

      else
      {
        v9 = 0;
      }

      *(v1 + 48) = v9;
      if (__OFADD__(v9, 2048))
      {
        goto LABEL_28;
      }

      if (v2 >= v9 + 2048)
      {
        v2 = v9 + 2048;
      }

      *(v1 + 56) = v2;
      v10 = *(v1 + 8);
      if (__OFADD__(v10, v9))
      {
        goto LABEL_29;
      }

      v11 = result;
      v13.length = v2 - v9;
      v13.location = v10 + v9;
      CFStringGetCharacters(*v1, v13, *(v1 + 40));
      result = v11;
    }

    v12 = *(v1 + 40);
    if (!v12)
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (!__OFSUB__(result, v9))
    {
      return *(v12 + 2 * (result - v9));
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v8 = *(v1 + 8);
  v5 = __OFADD__(result, v8);
  v2 = result + v8;
  if (v5)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  result = *(v7 + v2);
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  return result;
}

void sub_1BAD02E70(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, int a4@<W3>, __CFString *a5@<X8>)
{
  v10 = sub_1BAD9DBE8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v142 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_1BAD9DC18();
  v13 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v141 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = MEMORY[0x1EEE9AC00](v15).n128_u64[0];
  v140 = &v114 - v17;
  if (a1)
  {
    v18 = [a1 mutableString];
  }

  else
  {
    if (!a2)
    {
      if (qword_1EBC29C38 != -1)
      {
LABEL_327:
        swift_once();
      }

      v107 = qword_1EBC2AA00;
      goto LABEL_307;
    }

    v18 = a2;
  }

  v19 = v18;
  v20 = [v18 length];
  if (v20 < 1)
  {
    if (qword_1EBC29C38 != -1)
    {
LABEL_316:
      swift_once();
    }

    v107 = qword_1EBC2AA00;

LABEL_307:
    v109 = 0;
    v108 = 0;
    v110 = MEMORY[0x1E69E7CC0];
    v112 = MEMORY[0x1E69E7CC0];
    v111 = MEMORY[0x1E69E7CC0];
    goto LABEL_308;
  }

  v21 = v20;
  v136 = v10;
  v115 = a3;
  v126 = a5;
  v22 = MEMORY[0x1E69E7CC0];
  v125 = v19;
  sub_1BAD06520(v125, 0, v21, &v161);
  v19 = sub_1BAD9C1A8();
  v137 = sub_1BAD9C1A8();
  v146 = 0;
  v133 = 0;
  v129 = 0;
  v148 = 0;
  *&v150[4] = 0;
  v23 = 0;
  v128 = 0;
  v130 = 0;
  v24 = 0;
  v152 = 0;
  v159 = v22;
  v160 = v22;
  v143 = (v13 + 8);
  v135 = (v11 + 88);
  v134 = *MEMORY[0x1E69E7880];
  v122 = (v11 + 8);
  v119 = *MEMORY[0x1E69DB778];
  v131 = a4;
  a5 = 0;
  v116 = (a1 == 0) | a4;
  v114 = *MEMORY[0x1E69DB688];
  v118 = xmmword_1BAD9F590;
  v155 = v19;
  v151 = v19;
  v156 = v19;
  v139 = v22;
  v147 = v22;
  v127 = v22;
  v132 = v22;
  v121 = a1;
  while (2)
  {
    v154 = v23;
    v120 = 0;
    v25 = 0;
    v123 = 0;
    v124 = 0;
    v26 = 0;
    v117 = a5;
    v138 = a5;
    v27 = v147;
LABEL_8:
    v144 = v25;
    *v150 = 0;
    v28 = 0;
    v153 = -1;
    while (2)
    {
      v149 = v24;
      while (1)
      {
        while (1)
        {
          v29 = sub_1BAD02D48(a5);
          if (((v29 + 9216) >> 10) > 0x3Eu)
          {
            if (__OFSUB__(v162, 1))
            {
              goto LABEL_311;
            }

            if (a5 >= v162 - 1 || (v32 = v29, v33 = sub_1BAD02D48(&a5->isa + 1), ((v33 + 0x2000) >> 10) < 0x3Fu))
            {
LABEL_19:
              v31 = __OFADD__(a5, 1);
              a5 = (a5 + 1);
              if (v31)
              {
                goto LABEL_310;
              }

              LODWORD(v34) = 0;
              v35 = 1;
              v36 = 1;
              v37 = 1;
              v19 = 1;
              goto LABEL_204;
            }

            v30 = ((v32 + 10240) << 10) + (v33 + 9216) + 0x10000;
            v19 = 2;
            v31 = __OFADD__(a5, 2);
            a5 = (a5 + 2);
            if (v31)
            {
              goto LABEL_312;
            }
          }

          else
          {
            if (((v29 + 0x2000) >> 11) >= 0x1Fu)
            {
              goto LABEL_19;
            }

            v30 = v29;
            v19 = 1;
            v31 = __OFADD__(a5, 1);
            a5 = (a5 + 1);
            if (v31)
            {
              goto LABEL_312;
            }
          }

          v38 = JUGetBidiClass(v30);
          v39 = v38;
          if (v38 > 11)
          {
            if (v38 <= 13)
            {
              if (v38 != 12)
              {
LABEL_36:
                LODWORD(v34) = 0;
                goto LABEL_85;
              }

LABEL_75:
              if (v30 == 8232)
              {
                if (__OFSUB__(a5, v19))
                {
                  goto LABEL_314;
                }

                v58 = v146;
                if (!v146)
                {
                  v58 = MEMORY[0x1E69E7CC0];
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v58 = sub_1BAD18DF0(0, *(v58 + 2) + 1, 1, v58);
                }

                v146 = v58;
                v60 = *(v58 + 2);
                v59 = *(v58 + 3);
                if (v60 >= v59 >> 1)
                {
                  v146 = sub_1BAD18DF0((v59 > 1), v60 + 1, 1, v146);
                }

                v61 = &v146[8 * v60];
                *(v146 + 2) = v60 + 1;
                *(v61 + 4) = a5 - v19;
              }

              else
              {
                LODWORD(v34) = 1;
                if (v21 <= a5 || v30 != 13)
                {
                  goto LABEL_85;
                }

                v64 = sub_1BAD02D48(a5);
                if (((v64 + 9216) >> 10) > 0x3Eu)
                {
                  if (__OFSUB__(v162, 1))
                  {
                    goto LABEL_324;
                  }

                  if (a5 < v162 - 1)
                  {
                    sub_1BAD02D48(&a5->isa + 1);
                  }
                }

                else if (v64 == 10)
                {
                  ++v19;
                  a5 = (a5 + 1);
                }
              }

              LODWORD(v34) = 1;
LABEL_85:
              v35 = 1;
              goto LABEL_86;
            }

            if (v38 == 14)
            {
              if (v30 > 0x7F)
              {
                v74 = (v30 & 0x3F) << 8;
                if (v30 >= 0x800)
                {
                  v75 = (v74 | (v30 >> 6) & 0x3F) << 8;
                  v76 = (((v75 | (v30 >> 12) & 0x3F) << 8) | (v30 >> 18)) - 2122219023;
                  v53 = (v30 >> 12) + v75 + 8487393;
                  if (HIWORD(v30))
                  {
                    v53 = v76;
                  }
                }

                else
                {
                  v53 = (v30 >> 6) + v74 + 33217;
                }
              }

              else
              {
                v53 = v30 + 1;
              }

              *&v158[0] = (v53 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v53) >> 3))));
              v54 = sub_1BAD9D008();
              v56 = sub_1BAD06720(v54, v55);
              if ((v56 & 0x100000000) != 0)
              {
                goto LABEL_343;
              }

              v57 = v56;

              if ((v57 - 14) <= 0xFFFFFFFB && (v57 - 8232) >= 2 && v57 != 133)
              {
                goto LABEL_36;
              }

              goto LABEL_75;
            }

            if (v38 == 15)
            {
              v44 = v140;
              sub_1BAD9DC28();
              v45 = v142;
              sub_1BAD9DC08();
              (*v143)(v44, v145);
              v46 = v136;
              v47 = (*v135)(v45, v136);
              if (v47 == v134)
              {
                LODWORD(v34) = 0;
                if (v28)
                {
                  goto LABEL_85;
                }

                v36 = 0;
                goto LABEL_108;
              }

              (*v122)(v45, v46);
              goto LABEL_102;
            }

LABEL_87:
            v62 = v141;
            sub_1BAD9DC28();
            v63 = sub_1BAD9DBF8();
            (*v143)(v62, v145);
            if ((v63 & 1) == 0)
            {
LABEL_102:
              LOBYTE(v34) = 0;
              v36 = 0;
              goto LABEL_108;
            }

            if (v28)
            {
              v31 = __OFSUB__(a5, v19);
              a5 = (a5 - v19);
              if (v31)
              {
                goto LABEL_321;
              }

              LODWORD(v34) = 0;
              v19 = 0;
              goto LABEL_85;
            }

            if (v39 == 1)
            {
              if (v153 != -1)
              {
                LODWORD(v34) = 0;
                v67 = v153 == 0;
LABEL_196:
                v71 = !v67;
                *v150 |= v71;
                goto LABEL_228;
              }

              v153 = 0;
            }

            else if (v39 == 4 || v39 == 2)
            {
              if (v153 == -1)
              {
                LODWORD(v34) = 0;
                v35 = 1;
                v28 = v19;
                v153 = 1;
                goto LABEL_86;
              }

              LODWORD(v34) = 0;
              v67 = v153 == 1;
              goto LABEL_196;
            }

            LODWORD(v34) = 0;
LABEL_228:
            v35 = 1;
            v28 = v19;
            goto LABEL_86;
          }

          if (v38 > 9)
          {
            if (v38 == 10)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v27 = sub_1BAD18CEC(0, *(v27 + 2) + 1, 1, v27);
              }

              v51 = *(v27 + 2);
              v50 = *(v27 + 3);
              if (v51 >= v50 >> 1)
              {
                v27 = sub_1BAD18CEC((v50 > 1), v51 + 1, 1, v27);
              }

              *(v27 + 2) = v51 + 1;
              *&v27[4 * v51 + 32] = v30;
              switch(v30)
              {
                case 0x2068u:
                  *&v150[4] = 0;
                  v154 = 0;
                  LOBYTE(v34) = v148 ^ 1;
                  v52 = &v165 + 4;
                  break;
                case 0x2067u:
                  v148 = 0;
                  v154 = 0;
                  LOBYTE(v34) = v150[4] ^ 1;
                  *&v150[4] = 1;
                  goto LABEL_107;
                case 0x2066u:
                  v148 = 0;
                  *&v150[4] = 0;
                  LOBYTE(v34) = v154 ^ 1;
                  v52 = &v166 + 4;
                  break;
                default:
LABEL_96:
                  LOBYTE(v34) = 0;
                  goto LABEL_107;
              }

              *(v52 - 64) = 1;
              goto LABEL_107;
            }

            v34 = *(v27 + 2);
            if (!v34)
            {
              goto LABEL_107;
            }

            if ((*&v27[4 * v34 + 28] - 8294) > 2)
            {
              goto LABEL_96;
            }

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v42 = *(v27 + 2);
              if (!v42)
              {
                goto LABEL_320;
              }
            }

            else
            {
              v27 = sub_1BAD93358(v27);
              v42 = *(v27 + 2);
              if (!v42)
              {
                goto LABEL_320;
              }
            }

LABEL_42:
            *(v27 + 2) = v42 - 1;
            if (v42 != 1)
            {
              LOBYTE(v34) = 0;
              v36 = 1;
              v43 = (*&v27[4 * v42 + 24] - 8234);
              if (v43 <= 0x3E)
              {
                if (((1 << v43) & 0x1000000000000009) == 0)
                {
                  if (((1 << v43) & 0x2000000000000012) == 0)
                  {
                    if (v43 == 62)
                    {
                      *&v150[4] = 0;
                      v154 = 0;
                      LOBYTE(v34) = v148 ^ 1;
                      v148 = 1;
                    }

                    goto LABEL_108;
                  }

LABEL_100:
                  v148 = 0;
                  v154 = 0;
                  LOBYTE(v34) = v150[4] ^ 1;
                  *&v150[4] = 1;
                  goto LABEL_108;
                }

LABEL_99:
                v148 = 0;
                *&v150[4] = 0;
                LOBYTE(v34) = v154 ^ 1;
                v154 = 1;
                goto LABEL_108;
              }

              goto LABEL_108;
            }

            LOBYTE(v34) = 1;
LABEL_107:
            v36 = 1;
            goto LABEL_108;
          }

          if (v38 != 8)
          {
            if (v38 != 9)
            {
              goto LABEL_87;
            }

            v34 = *(v27 + 2);
            if (!v34)
            {
              goto LABEL_107;
            }

            v40 = *&v27[4 * v34 + 28] - 8234;
            if (v40 > 4 || v40 == 2)
            {
              goto LABEL_96;
            }

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v42 = *(v27 + 2);
              if (!v42)
              {
                goto LABEL_315;
              }
            }

            else
            {
              v27 = sub_1BAD93358(v27);
              v42 = *(v27 + 2);
              if (!v42)
              {
                goto LABEL_315;
              }
            }

            goto LABEL_42;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = sub_1BAD18CEC(0, *(v27 + 2) + 1, 1, v27);
          }

          v49 = *(v27 + 2);
          v48 = *(v27 + 3);
          if (v49 >= v48 >> 1)
          {
            v27 = sub_1BAD18CEC((v48 > 1), v49 + 1, 1, v27);
          }

          LOBYTE(v34) = 0;
          *(v27 + 2) = v49 + 1;
          *&v27[4 * v49 + 32] = v30;
          v36 = 1;
          if (v30 <= 8236)
          {
            if (v30 != 8234)
            {
              if (v30 != 8235)
              {
                goto LABEL_108;
              }

              goto LABEL_100;
            }

            goto LABEL_99;
          }

          if (v30 == 8238)
          {
            goto LABEL_100;
          }

          if (v30 == 8237)
          {
            goto LABEL_99;
          }

LABEL_108:
          v31 = __OFADD__(v28, v19);
          v28 += v19;
          if (v31)
          {
            goto LABEL_313;
          }

          if ((*(v27 + 2) != 0) | v34 & 1)
          {
            if (v154)
            {
              LODWORD(v34) = 0;
              v35 = 0;
              *v150 = v153 != 0;
              v154 = 1;
              v37 = v36;
              v153 = 0;
              goto LABEL_204;
            }

            if (v150[4])
            {
              v154 = 0;
              LODWORD(v34) = 0;
              v35 = 0;
              *v150 = v153 != 1;
              *&v150[4] = 1;
              v153 = 1;
LABEL_203:
              v37 = v36;
              goto LABEL_204;
            }

            if (v148)
            {
              *&v150[8] = 0;
              v154 = 0;
              LODWORD(v34) = 0;
              v35 = 0;
              *v150 = v153 != -1;
              v153 = -1;
              v148 = 1;
              goto LABEL_203;
            }

            v148 = 0;
            *&v150[4] = 0;
            v154 = 0;
LABEL_202:
            LODWORD(v34) = 0;
            v35 = 0;
            goto LABEL_203;
          }

          LODWORD(v34) = 0;
          v37 = 1;
          if (v39 > 6)
          {
            if (v39 > 9)
            {
              if ((v39 - 15) < 2)
              {
LABEL_133:
                v35 = 0;
                v36 = 1;
                goto LABEL_204;
              }

              if (v39 != 10 && v39 != 11)
              {
                goto LABEL_344;
              }
            }

            else if (v39 == 7)
            {
              if (sub_1BAD9C1A8() == v155)
              {
                if (sub_1BAD9C1A8() != v156)
                {
                  v31 = __OFADD__(v152, v19);
                  v152 += v19;
                  if (v31)
                  {
                    goto LABEL_334;
                  }
                }
              }

              else
              {
                v31 = __OFADD__(v149, v19);
                v149 += v19;
                if (v31)
                {
                  goto LABEL_329;
                }
              }
            }

            goto LABEL_202;
          }

          if (v39 <= 2)
          {
            if (!v39)
            {
              goto LABEL_133;
            }

            if (v39 != 1)
            {
              if (v39 != 2)
              {
                goto LABEL_344;
              }

              if (v153 == -1)
              {
                LODWORD(v34) = 0;
                v35 = 0;
                v153 = 1;
              }

              else
              {
                LODWORD(v34) = 0;
                v35 = 0;
                v66 = v153 == 1;
LABEL_161:
                v68 = !v66;
                *v150 |= v68;
              }

LABEL_86:
              v36 = 1;
              v37 = 1;
              goto LABEL_204;
            }

            if (v153 != -1)
            {
              LODWORD(v34) = 0;
              v35 = 0;
              v66 = v153 == 0;
              goto LABEL_161;
            }

            v153 = 0;
            LODWORD(v34) = 0;
            v35 = 0;
            v36 = 1;
          }

          else
          {
            if ((v39 - 3) >= 2)
            {
              if (v39 == 5)
              {
                if (sub_1BAD9C1A8() == v155)
                {
                  if (sub_1BAD9C1A8() != v156)
                  {
                    LODWORD(v34) = 0;
                    v35 = 0;
                    v37 = 1;
                    goto LABEL_204;
                  }

                  v156 = a5 - v19;
                  if (__OFSUB__(a5, v19))
                  {
                    goto LABEL_336;
                  }

                  v31 = __OFADD__(v152, v19);
                  v152 += v19;
                  if (v31)
                  {
                    goto LABEL_339;
                  }
                }

                else
                {
                  v31 = __OFADD__(v149, v19);
                  v149 += v19;
                  if (v31)
                  {
                    goto LABEL_330;
                  }
                }
              }

              else
              {
                if (v39 != 6)
                {
                  goto LABEL_344;
                }

                if (sub_1BAD9C1A8() == v155)
                {
                  if (sub_1BAD9C1A8() == v156)
                  {
                    v156 = a5 - v19;
                    if (__OFSUB__(a5, v19))
                    {
                      goto LABEL_337;
                    }

                    v31 = __OFADD__(v152, v19);
                    v152 += v19;
                    if (v31)
                    {
                      goto LABEL_338;
                    }
                  }

                  else
                  {
                    v31 = __OFADD__(v152, v19);
                    v152 += v19;
                    if (v31)
                    {
                      goto LABEL_335;
                    }
                  }
                }

                else
                {
                  v31 = __OFADD__(v149, v19);
                  v149 += v19;
                  if (v31)
                  {
                    goto LABEL_332;
                  }
                }
              }

              goto LABEL_202;
            }

            if (sub_1BAD9C1A8() == v155)
            {
              if (sub_1BAD9C1A8() == v156)
              {
                v155 = a5 - v19;
                if (__OFSUB__(a5, v19))
                {
                  goto LABEL_331;
                }

                v37 = v36;
                v65 = v149 + v19;
                if (__OFADD__(v149, v19))
                {
                  goto LABEL_318;
                }
              }

              else
              {
                v69 = v152 + v19;
                if (__OFADD__(v152, v19))
                {
                  goto LABEL_333;
                }

                v37 = 1;
                v155 = v156;
                v31 = __OFADD__(v69, v19);
                v65 = v69 + v19;
                if (v31)
                {
                  goto LABEL_318;
                }
              }
            }

            else
            {
              v37 = v36;
              v65 = v149 + v19;
              if (__OFADD__(v149, v19))
              {
                goto LABEL_318;
              }
            }

            v137 = v65 + v155 - 1;
            if (__OFSUB__(v65 + v155, 1))
            {
              goto LABEL_319;
            }

            v149 = v65;
            if (v153 == -1)
            {
              LODWORD(v34) = 0;
              v35 = 0;
              v70 = 1;
              if (v39 != 4)
              {
                v70 = -1;
              }

              v153 = v70;
            }

            else
            {
              LODWORD(v34) = 0;
              v35 = 0;
            }
          }

LABEL_204:
          v31 = __OFADD__(v26, v19);
          v26 += v19;
          if (v31)
          {
            __break(1u);
LABEL_310:
            __break(1u);
LABEL_311:
            __break(1u);
LABEL_312:
            __break(1u);
LABEL_313:
            __break(1u);
LABEL_314:
            __break(1u);
LABEL_315:
            __break(1u);
            goto LABEL_316;
          }

          v19 = a5 == v21;
          if (a5 == v21)
          {
            v37 = 1;
            v72 = 1;
          }

          else
          {
            v72 = v34;
          }

          v73 = a5 == v21 ? 1 : v35;
          v39 = a5 == v21 ? 1 : v36;
          if (v37 != 1)
          {
            break;
          }

          if (sub_1BAD9C1A8() == v156)
          {
            LODWORD(v34) = v72;
            v35 = v73;
            v36 = v39;
            break;
          }

          if (v39)
          {
            v152 = 0;
            v156 = v151;
            goto LABEL_221;
          }

          v152 = 0;
          v156 = v151;
          if (v73)
          {
            v19 = 0;
            v156 = v151;
LABEL_252:
            v24 = v149;
            goto LABEL_253;
          }
        }

        v72 = v34;
        v73 = v35;
        if (!v36)
        {
          goto LABEL_222;
        }

LABEL_221:
        if (sub_1BAD9C1A8() != v155)
        {
          break;
        }

LABEL_222:
        if (v73)
        {
          goto LABEL_252;
        }

        if (a5 == v21)
        {
          goto LABEL_299;
        }
      }

      v147 = v27;
      v77 = v149;
      if (__OFSUB__(v155 + v149, 1))
      {
        __break(1u);
LABEL_318:
        __break(1u);
LABEL_319:
        __break(1u);
LABEL_320:
        __break(1u);
LABEL_321:
        __break(1u);
        goto LABEL_322;
      }

      if (v137 >= v155 + v149 - 1)
      {
        goto LABEL_242;
      }

      v78 = v137 - v155;
      if (__OFSUB__(v137, v155))
      {
        goto LABEL_325;
      }

      v77 = v78 + 1;
      if (__OFADD__(v78, 1))
      {
LABEL_326:
        __break(1u);
        goto LABEL_327;
      }

LABEL_242:
      if (v131)
      {
        v149 = v77;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v139 = sub_1BAD18BE8(0, *(v139 + 2) + 1, 1, v139);
        }

        v79 = v149;
        v81 = *(v139 + 2);
        v80 = *(v139 + 3);
        if (v81 >= v80 >> 1)
        {
          v84 = sub_1BAD18BE8((v80 > 1), v81 + 1, 1, v139);
          v79 = v149;
          v139 = v84;
        }

        v82 = v139;
        *(v139 + 2) = v81 + 1;
        v83 = &v82[16 * v81];
        *(v83 + 4) = v155;
        *(v83 + 5) = v79;
      }

      v137 = sub_1BAD9C1A8();
      v27 = v147;
      v24 = 0;
      if ((v73 & 1) == 0)
      {
        v155 = v151;
        if (a5 != v21)
        {
          continue;
        }

        goto LABEL_300;
      }

      break;
    }

    v155 = v151;
LABEL_253:
    v25 = v144;
    if (v153 == 1)
    {
      v85 = __CFADD__(v123++, 1);
      if (!v85)
      {
        goto LABEL_259;
      }

      goto LABEL_323;
    }

    if (!v153)
    {
      v85 = __CFADD__(v124++, 1);
      if (!v85)
      {
LABEL_259:
        if (v28 < 1)
        {
          goto LABEL_271;
        }

        goto LABEL_263;
      }

LABEL_322:
      __break(1u);
LABEL_323:
      __break(1u);
LABEL_324:
      __break(1u);
LABEL_325:
      __break(1u);
      goto LABEL_326;
    }

    if (v28 < 1)
    {
      goto LABEL_271;
    }

    v25 = v144 + 1;
    if (v144 == -1)
    {
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
LABEL_336:
      __break(1u);
LABEL_337:
      __break(1u);
LABEL_338:
      __break(1u);
LABEL_339:
      __break(1u);
      goto LABEL_340;
    }

LABEL_263:
    if (v131)
    {
      v144 = v25;
      v147 = v27;
      v86 = v24;
      v39 = [objc_opt_self() valueWithRange:v138 direction:v28 hasMixedDirectionality:{v153, v150[0] & 1}];
      MEMORY[0x1BFB027C0]();
      if (*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v160 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BAD9D1A8();
      }

      sub_1BAD9D1F8();

      v132 = v160;
      v24 = v86;
      v27 = v147;
      v25 = v144;
    }

    if (v150[0])
    {
      v39 = v121;
      if (v121)
      {
        v144 = v25;
        v149 = v24;
        v87 = objc_allocWithZone(MEMORY[0x1E696AD98]);
        v39 = v39;
        v88 = [v87 initWithInteger_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AAD0, &qword_1BADA3D00);
        v89 = swift_allocObject();
        *(v89 + 16) = v118;
        *(v89 + 32) = v88;
        sub_1BAD5C67C();
        v147 = v27;
        v90 = v88;
        v91 = sub_1BAD9D168();

        [v39 addAttribute:v119 value:v91 range:{v138, v28}];

        v25 = v144;
        v27 = v147;
        v24 = v149;
      }

      v133 = 1;
      v120 = 1;
    }

LABEL_271:
    if (v72)
    {
      if (!__CFADD__(v130, v124))
      {
        v147 = v27;
        v23 = v154;
        v130 += v124;
        v92 = v128 + v123;
        if (!__CFADD__(v128, v123))
        {
          v149 = v24;
          v85 = __CFADD__(v129, v25);
          v129 = &v25[v129];
          v93 = v121;
          if (!v85)
          {
            v94 = v25;
            v95 = objc_allocWithZone(type metadata accessor for WritingDirectionsCounts());
            v96 = WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(v94, v124, v123);
            v97 = v96;
            if (v96[OBJC_IVAR___JUWritingDirectionsCounts_isRTLEnough])
            {
              v98 = 1;
            }

            else
            {
              v98 = v96[OBJC_IVAR___JUWritingDirectionsCounts_hasStronglyTypedCounts] - 1;
            }

            v128 = v92;
            if ((v116 & 1) == 0)
            {
              goto LABEL_285;
            }

            v99 = [objc_opt_self() valueWithRange:v117 direction:v26 hasMixedDirectionality:{v98, v120 & 1}];
            MEMORY[0x1BFB027C0]();
            if (*((v159 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v159 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v153 = v97;
              sub_1BAD9D1A8();
              v97 = v153;
            }

            sub_1BAD9D1F8();

            v127 = v159;
            v93 = v121;
            if (!v121)
            {
            }

            else
            {
LABEL_285:
              v153 = v97;
              if (v98 == -1)
              {
                v100 = &qword_1EBC357B0;
                if (qword_1EBC29A30 != -1)
                {
                  swift_once();
                  v100 = &qword_1EBC357B0;
                }
              }

              else if (v98 == 1)
              {
                v100 = &qword_1EBC35800;
                if (qword_1EBC29C78 != -1)
                {
                  swift_once();
                  v100 = &qword_1EBC35800;
                }
              }

              else
              {
                v100 = &qword_1EBC357B8;
                if (qword_1EBC29A58 != -1)
                {
                  swift_once();
                  v100 = &qword_1EBC357B8;
                }
              }

              v101 = *v100;
              v102 = v117;
              v103 = sub_1BAD06C5C(v93, v117, v26, v98, v115, v101);
              v105 = v104;

              if (v105)
              {
                [v93 addAttribute:v114 value:v103 range:{v102, v26}];
              }

              else
              {
              }
            }

            v24 = v149;
            if (v19)
            {
              goto LABEL_300;
            }

            continue;
          }

          goto LABEL_342;
        }

LABEL_341:
        __break(1u);
LABEL_342:
        __break(1u);
LABEL_343:
        __break(1u);
LABEL_344:
        *&v158[0] = 0;
        *(&v158[0] + 1) = 0xE000000000000000;
        sub_1BAD9D7E8();

        *&v158[0] = 0xD000000000000024;
        *(&v158[0] + 1) = 0x80000001BADAAE00;
        v157 = v39;
        v113 = sub_1BAD9DA48();
        MEMORY[0x1BFB026B0](v113);

        sub_1BAD9D8B8();
        __break(1u);
        return;
      }

LABEL_340:
      __break(1u);
      goto LABEL_341;
    }

    break;
  }

  v138 = a5;
  if ((v19 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_299:
  v147 = v27;
LABEL_300:

  if (*(&v163 + 1))
  {
    MEMORY[0x1BFB03CC0](*(&v163 + 1), -1, -1);
  }

  *(&v163 + 1) = 0;
  v106 = objc_allocWithZone(type metadata accessor for WritingDirectionsCounts());
  v107 = WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(v129, v130, v128);

  v158[0] = v161;
  v158[1] = v162;
  v158[2] = v163;
  v158[3] = v164;
  sub_1BAD06A60(v158);
  a5 = v126;
  v108 = v146;
  v109 = v133;
  v110 = v139;
  v111 = v127;
  v112 = v132;
LABEL_308:
  a5->isa = v110;
  a5->info = v112;
  a5->data = v111;
  a5->length = v107;
  LOBYTE(a5[1].isa) = v109 & 1;
  a5[1].info = v108;
}

id sub_1BAD049A8(uint64_t a1, void *a2, void *a3, char a4, char a5)
{
  *&v5[OBJC_IVAR___JULanguageAwareString____lazy_storage___attributedString] = 0;
  *&v5[OBJC_IVAR___JULanguageAwareString_cachedTextStorage] = 0;
  *&v5[OBJC_IVAR___JULanguageAwareString____lazy_storage___localizedLowercase] = 0;
  *&v5[OBJC_IVAR___JULanguageAwareString____lazy_storage___localizedUppercase] = 0;
  *&v5[OBJC_IVAR___JULanguageAwareString____lazy_storage___newlinesCollapsedToSpace] = 0;
  *&v5[OBJC_IVAR___JULanguageAwareString____lazy_storage___trimmed] = 0;
  v11 = &v5[OBJC_IVAR___JULanguageAwareString____lazy_storage___juFullRange];
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = 1;
  v5[OBJC_IVAR___JULanguageAwareString____lazy_storage___isEmpty] = 2;
  v12 = &v5[OBJC_IVAR___JULanguageAwareString____lazy_storage___utf16Count];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v5[OBJC_IVAR___JULanguageAwareString____lazy_storage___utf32Count];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v5[OBJC_IVAR___JULanguageAwareString____lazy_storage___characterCount];
  *v14 = 0;
  v14[8] = 1;
  v15 = &v5[OBJC_IVAR___JULanguageAwareString____lazy_storage___thresholdBaseWritingDirection];
  *v15 = 0;
  v15[8] = 1;
  swift_beginAccess();
  v16 = qword_1EBC2B3D8;
  if (qword_1EBC2B3D8)
  {
    swift_unknownObjectRetain();
    v17 = sub_1BAD9CF38();

    v18 = [v16 preprocessForLanguageAwarenessString_];

    a1 = sub_1BAD9CF68();
    a2 = v19;
    swift_unknownObjectRelease();
  }

  if ((a4 & 1) != 0 || a3)
  {
    v23 = objc_allocWithZone(MEMORY[0x1E696AD40]);
    v24 = sub_1BAD9CF38();
    v20 = [v23 initWithString_];

    v22 = 0;
    v21 = v20;
  }

  else
  {
    v20 = sub_1BAD9CF38();
    v21 = 0;
    v22 = v20;
  }

  v25 = v20;
  v26 = v21;
  sub_1BAD02E70(v21, v22, a3, a5 & 1, &v58);
  isa = v58.isa;
  info = v58.info;
  length = v58.length;
  data = v58.data;
  v27 = v59;
  v28 = v60;

  if (v21)
  {
    if (!v28)
    {

      goto LABEL_25;
    }

    v50 = v27;
    v51 = v22;
    v22 = *(v28 + 16);
    if (v22)
    {
      v29 = 0;
      v30 = 0;
      while (v29 < *(v28 + 16))
      {
        v31 = (v29 + 1);
        v58.isa = *(v28 + 32 + 8 * v29);
        sub_1BAD25220(&v58, v26, data);
        v29 = v31;
        if (v22 == v31)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_40;
    }

LABEL_13:
  }

  else
  {
    if (!v28)
    {
LABEL_20:
      if (v27)
      {
        v38 = sub_1BAD072B8(0, data, a1, a2);

        *&v5[OBJC_IVAR___JULanguageAwareString_baseAttributedString] = v38;
        v39 = objc_allocWithZone(MEMORY[0x1E696AD40]);
        v26 = v38;
        v30 = [v39 initWithAttributedString_];
        if (qword_1EBC29A18 != -1)
        {
          swift_once();
        }

        [v30 performSelector_];
        v40 = [v30 string];
        goto LABEL_31;
      }

      *&v5[OBJC_IVAR___JULanguageAwareString_baseAttributedString] = 0;
      goto LABEL_36;
    }

    v50 = v27;
    v51 = v22;
    v32 = sub_1BAD9CF38();

    [v32 mutableCopy];

    sub_1BAD9D628();
    swift_unknownObjectRelease();
    sub_1BAD053C8(0, &qword_1EBC2B478, 0x1E696AD60);
    swift_dynamicCast();
    v33 = *(v28 + 16);
    if (v33)
    {
      v34 = (v28 + 32);
      do
      {
        v35 = *v34++;
        v36 = sub_1BAD9CF38();
        [v56 replaceCharactersInRange:v35 withString:{1, v36}];

        --v33;
      }

      while (v33);
    }

    [v56 copy];
    sub_1BAD9D628();
    swift_unknownObjectRelease();
    sub_1BAD053C8(0, &qword_1EBC2A438, 0x1E696AEC0);
    swift_dynamicCast();
    a1 = sub_1BAD9CF68();
    a2 = v37;
  }

  v22 = v51;
  v27 = v50;
  if (!v21)
  {
    goto LABEL_20;
  }

LABEL_25:
  [v26 copy];

  sub_1BAD9D628();
  swift_unknownObjectRelease();
  sub_1BAD053C8(0, &qword_1EDBA5BC0, 0x1E696AAB0);
  if (swift_dynamicCast())
  {
    v41 = v56;
  }

  else
  {
    v41 = 0;
  }

  if (!v27)
  {
    *&v5[OBJC_IVAR___JULanguageAwareString_baseAttributedString] = v41;
    if (v41)
    {
      v46 = v41;

      v30 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
      if (qword_1EBC29A18 == -1)
      {
        goto LABEL_37;
      }

      goto LABEL_41;
    }

LABEL_36:
    v46 = sub_1BAD072B8(0, data, a1, a2);

    v30 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
    if (qword_1EBC29A18 == -1)
    {
LABEL_37:
      [v30 performSelector_];
      v40 = [v30 string];
      v43 = sub_1BAD9CF68();
      v45 = v47;

      goto LABEL_38;
    }

LABEL_41:
    swift_once();
    goto LABEL_37;
  }

  *&v5[OBJC_IVAR___JULanguageAwareString_baseAttributedString] = v41;
  v42 = qword_1EBC29A18;
  v30 = v41;
  if (v42 != -1)
  {
LABEL_40:
    swift_once();
  }

  v40 = v22;
  v22 = v26;
  [v26 performSelector_];
  v26 = [v26 string];
LABEL_31:
  v43 = sub_1BAD9CF68();
  v45 = v44;
LABEL_38:

  v48 = &v5[OBJC_IVAR___JULanguageAwareString_string];
  *v48 = v43;
  v48[1] = v45;
  *&v5[OBJC_IVAR___JULanguageAwareString_paragraphs] = data;
  *&v5[OBJC_IVAR___JULanguageAwareString_numbers] = isa;
  *&v5[OBJC_IVAR___JULanguageAwareString_words] = info;
  *&v5[OBJC_IVAR___JULanguageAwareString_knownBaseWritingDirections] = length;
  v57.receiver = v5;
  v57.super_class = type metadata accessor for LanguageAwareString();
  return objc_msgSendSuper2(&v57, sel_init);
}

char *WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(char *result, uint64_t a2, unint64_t a3)
{
  *&v3[OBJC_IVAR___JUWritingDirectionsCounts_natural] = result;
  *&v3[OBJC_IVAR___JUWritingDirectionsCounts_leftToRight] = a2;
  *&v3[OBJC_IVAR___JUWritingDirectionsCounts_rightToLeft] = a3;
  v4 = &result[a2];
  if (__CFADD__(result, a2))
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = __CFADD__(v4, a3);
  v6 = &v4[a3];
  if (v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *&v3[OBJC_IVAR___JUWritingDirectionsCounts_total] = v6;
  v7 = result != 0;
  if (!a3)
  {
    if (a2)
    {
      ++v7;
    }

    *&v3[OBJC_IVAR___JUWritingDirectionsCounts_significantValues] = v7;
    v3[OBJC_IVAR___JUWritingDirectionsCounts_hasStronglyTypedCounts] = a2 != 0;
    v3[OBJC_IVAR___JUWritingDirectionsCounts_isRTLEnough] = 0;
    v3[OBJC_IVAR___JUWritingDirectionsCounts_isRTLMinimal] = 0;
    goto LABEL_12;
  }

  if (a2)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  *&v3[OBJC_IVAR___JUWritingDirectionsCounts_significantValues] = v8 + v7;
  v3[OBJC_IVAR___JUWritingDirectionsCounts_hasStronglyTypedCounts] = 1;
  if (!__CFADD__(a3, a2))
  {
    v9 = a3 / (a3 + a2);
    v3[OBJC_IVAR___JUWritingDirectionsCounts_isRTLEnough] = v9 >= 0.4;
    v3[OBJC_IVAR___JUWritingDirectionsCounts_isRTLMinimal] = v9 >= 0.15;
LABEL_12:
    v10.receiver = v3;
    v10.super_class = type metadata accessor for WritingDirectionsCounts();
    return objc_msgSendSuper2(&v10, sel_init);
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1BAD052C4()
{
  result = sub_1BAD052E8(0);
  qword_1EBC357B8 = result;
  return result;
}

uint64_t sub_1BAD052E8(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v2 setAlignment_];
  [v2 setBaseWritingDirection_];
  [v2 setLineBreakMode_];
  [v2 copy];
  sub_1BAD9D628();

  swift_unknownObjectRelease();
  sub_1BAD053C8(0, &qword_1EBC29A00, 0x1E69DB7D0);
  swift_dynamicCast();
  return v4;
}

uint64_t sub_1BAD053C8(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_1BAD05410(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = NSAttributedString.juParagraphStyle(at:effectiveRange:)(a3, a4);

  return v7;
}

uint64_t sub_1BAD05470(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A120, &unk_1BADA1A10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BAD054D8()
{
  v0 = sub_1BAD9CF38();
  v1 = NSSelectorFromString(v0);

  qword_1EBC29A20 = v1;
}

uint64_t sub_1BAD05528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AE58, "J}");
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v26 - v4;
  v5 = type metadata accessor for JULoadingViewController.PresentationContext(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AE60, "f}");
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AE68, &qword_1BADA5D28);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AE70, &qword_1BADA5D30);
  v29 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v28 = &v26 - v16;
  v17 = *(a1 + OBJC_IVAR____TtC5JetUI23JULoadingViewController_label + 8);
  if (v17)
  {
    v32 = *(a1 + OBJC_IVAR____TtC5JetUI23JULoadingViewController_label);
    v33 = v17;
    sub_1BAD13DE8();
    v26 = a2;

    sub_1BAD9C478();
    sub_1BAD9C458();
    (*(v8 + 8))(v10, v7);
    v18 = v27;
    sub_1BAD05B04(a1 + OBJC_IVAR____TtC5JetUI23JULoadingViewController_presentationContext, v27);
    v32 = MEMORY[0x1E6981148];
    v33 = MEMORY[0x1E6981138];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v20 = v28;
    sub_1BAD9C688();
    (*(v12 + 8))(v14, v11);
    v21 = sub_1BAD9C4A8();
    (*(*(v21 - 8) + 8))(v18, v21);
  }

  else
  {
    sub_1BAD9C468();
    sub_1BAD9C458();
    (*(v8 + 8))(v10, v7);
    v23 = v27;
    sub_1BAD05B04(a1 + OBJC_IVAR____TtC5JetUI23JULoadingViewController_presentationContext, v27);
    v32 = MEMORY[0x1E6981148];
    v33 = MEMORY[0x1E6981138];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v20 = v28;
    sub_1BAD9C688();
    (*(v12 + 8))(v14, v11);
    v24 = sub_1BAD9C4A8();
    (*(*(v24 - 8) + 8))(v23, v24);
  }

  v22 = v29;
  (*(v29 + 16))(v31, v20, v15);
  swift_storeEnumTagMultiPayload();
  v32 = v11;
  v33 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1BAD9C668();
  return (*(v22 + 8))(v20, v15);
}

unint64_t sub_1BAD05AB8()
{
  result = qword_1EDBA5D70;
  if (!qword_1EDBA5D70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBA5D70);
  }

  return result;
}

uint64_t sub_1BAD05B04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JULoadingViewController.PresentationContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1BAD05BC0(uint64_t a1)
{
  result = sub_1BAD9C4A8();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id JULoadingViewController.init(label:presentationContext:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC5JetUI23JULoadingViewController_label];
  *v10 = a1;
  *(v10 + 1) = a2;
  sub_1BAD05B04(a3, &v4[OBJC_IVAR____TtC5JetUI23JULoadingViewController_presentationContext]);
  *&v4[OBJC_IVAR____TtC5JetUI23JULoadingViewController_pageRenderMetrics] = a4;
  v13.receiver = v4;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, 0, 0);
  sub_1BAD05D10(a3);
  return v11;
}

uint64_t sub_1BAD05D10(uint64_t a1)
{
  v2 = type metadata accessor for JULoadingViewController.PresentationContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall JULoadingViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AE48, &qword_1BADA5C70);
  *&v4 = MEMORY[0x1EEE9AC00](v3 - 8).n128_u64[0];
  v6 = &v41 - v5;
  v41.receiver = v1;
  v41.super_class = ObjectType;
  objc_msgSendSuper2(&v41, sel_viewDidLoad, v4);
  sub_1BAD05528(v1, v6);
  v7 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AE50, &unk_1BADA5C78));
  v8 = sub_1BAD9C658();
  [v1 addChildViewController_];
  v9 = [v8 view];
  if (!v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  v10 = v9;
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];

  v11 = [v1 view];
  if (!v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v11;
  v13 = [v8 view];

  if (!v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v12 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AAD0, &qword_1BADA3D00);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BADA5C60;
  v15 = [v8 view];

  if (!v15)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v16 = [v15 topAnchor];

  v17 = [v1 view];
  if (!v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18 = v17;
  v19 = [v17 topAnchor];

  v20 = [v16 constraintEqualToAnchor_];
  *(v14 + 32) = v20;
  v21 = [v8 view];

  if (!v21)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v22 = [v21 leadingAnchor];

  v23 = [v1 view];
  if (!v23)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v24 = v23;
  v25 = [v23 leadingAnchor];

  v26 = [v22 constraintEqualToAnchor_];
  *(v14 + 40) = v26;
  v27 = [v8 view];

  if (!v27)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v28 = [v27 bottomAnchor];

  v29 = [v1 view];
  if (!v29)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v30 = v29;
  v31 = [v29 bottomAnchor];

  v32 = [v28 constraintEqualToAnchor_];
  *(v14 + 48) = v32;
  v33 = [v8 view];

  if (!v33)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v34 = [v33 trailingAnchor];

  v35 = [v1 view];
  if (v35)
  {
    v36 = v35;
    v37 = objc_opt_self();
    v38 = [v36 trailingAnchor];

    v39 = [v34 constraintEqualToAnchor_];
    *(v14 + 56) = v39;
    sub_1BAD05AB8();
    v40 = sub_1BAD9D168();

    [v37 activateConstraints_];

    [v8 didMoveToParentViewController_];
    return;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_1BAD062A8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BAD062E0(uint64_t a1)
{
  result = sub_1BAD9C4A8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BAD06370@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for JULoadingViewController.PresentationContext(0);
  v7 = __swift_project_value_buffer(v6, a2);

  return sub_1BAD05B04(v7, a4);
}

uint64_t sub_1BAD063E4(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = type metadata accessor for JULoadingViewController.PresentationContext(0);
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *a3;
  v8 = sub_1BAD9C4A8();
  v9 = *(*(v8 - 8) + 104);

  return v9(v6, v7, v8);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

id LanguageAwareString.init(_:baseParagraphStyle:generateAttributedString:keepStatisticsOnLanguageComponents:)(uint64_t a1, void *a2, void *a3, char a4, char a5)
{
  v6 = sub_1BAD049A8(a1, a2, a3, a4, a5);

  return v6;
}

const char *sub_1BAD06520@<X0>(const __CFString *a1@<X0>, const __CFString *a2@<X1>, const __CFString *a3@<X2>, const __CFString **a4@<X8>)
{
  CharactersPtr = CFStringGetCharactersPtr(a1);
  if (CharactersPtr)
  {
    result = 0;
    v10 = 0;
LABEL_8:
    *a4 = a1;
    a4[1] = a2;
    a4[2] = a3;
    a4[3] = CharactersPtr;
    a4[4] = result;
    a4[5] = v10;
    a4[6] = 0;
    a4[7] = 0;
    return result;
  }

  v11 = sub_1BAD9C268();
  result = CFStringGetCStringPtr(a1, v11);
  if (result)
  {
    v10 = 0;
LABEL_7:
    CharactersPtr = 0;
    goto LABEL_8;
  }

  if (a3 >= 0xC000000000000000)
  {
    v10 = swift_slowAlloc();
    result = 0;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t JUGetBidiClass(int a1)
{
  if (a1 == 65532)
  {
    return 14;
  }

  MEMORY[0x1BFB03DF0]();
  return 2;
}

unint64_t sub_1BAD06720(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1BAD06870(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_1BAD9D7D8();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_1BAD9D848() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_1BAD06870(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1BAD5C4E4(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1BAD5C558(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

uint64_t sub_1BAD0692C()
{
  result = sub_1BAD052E8(-1);
  qword_1EBC357B0 = result;
  return result;
}

void _sSo12UITabBarItemC5JetUIE22setAutomationSemanticsyy0D6Engine0gH0VF_0()
{
  v1 = v0;
  v2 = sub_1BAD9CA18();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAD9CB98();
  sub_1BAD9CA08();
  (*(v3 + 8))(v5, v2);
  v6 = sub_1BAD9CF38();

  [v1 setAccessibilityIdentifier_];
}

uint64_t LanguageAwareString.string.getter()
{
  v1 = *(v0 + OBJC_IVAR___JULanguageAwareString_string);

  return v1;
}

uint64_t LanguageAwareString.__allocating_init(_:baseParagraphStyle:generateAttributedString:keepStatisticsOnLanguageComponents:)(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v12 = (*(ObjectType + 504))(a1, a2, a3, a4 & 1, byte_1EBC2B3D1);
    swift_deallocPartialClassInstance();
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v12;
}

id LanguageAwareString.__allocating_init(_:baseParagraphStyle:generateAttributedString:keepStatisticsOnLanguageComponents:)(uint64_t a1, void *a2, void *a3, char a4, char a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = sub_1BAD049A8(a1, a2, a3, a4, a5);

  return v12;
}

id sub_1BAD06C5C(void *a1, uint64_t a2, uint64_t a3, id a4, id a5, void *a6)
{
  v19[2] = *MEMORY[0x1E69E9840];
  if (a5)
  {
    return [a5 juParagraphStyleWithBaseWritingDirection_];
  }

  v19[0] = 0;
  v19[1] = 0;
  v11 = [a1 juParagraphStyleAtIndex:a2 effectiveRange:v19];
  if (!v11)
  {
    return a6;
  }

  v12 = v11;
  v14 = sub_1BAD9D588();
  result = v12;
  if ((v15 & 1) != 0 || v14 != a2 || v13 != a3)
  {
    goto LABEL_11;
  }

  if ([v12 baseWritingDirection] == a4)
  {
    return v12;
  }

  result = v12;
  if (a4 != -1 || (v18 = [v12 baseWritingDirection], result = v12, v18 == -1))
  {
LABEL_11:
    v16 = result;
    v17 = [result juParagraphStyleWithBaseWritingDirection_];

    return v17;
  }

  return result;
}

uint64_t NSAttributedString.juParagraphStyle(at:effectiveRange:)(uint64_t a1, uint64_t a2)
{
  if ([v2 attribute:*MEMORY[0x1E69DB688] atIndex:a1 effectiveRange:a2])
  {
    sub_1BAD9D628();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_1BAD053C8(0, &qword_1EBC29A00, 0x1E69DB7D0);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1BAD05470(v7);
    return 0;
  }
}

id JULoadingViewController.__allocating_init(label:presentationContext:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC5JetUI23JULoadingViewController_label];
  *v10 = a1;
  *(v10 + 1) = a2;
  sub_1BAD05B04(a3, &v9[OBJC_IVAR____TtC5JetUI23JULoadingViewController_presentationContext]);
  *&v9[OBJC_IVAR____TtC5JetUI23JULoadingViewController_pageRenderMetrics] = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  v11 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, 0, 0);
  sub_1BAD05D10(a3);
  return v11;
}

void UIAccessibilityIdentification.setAutomationSemantics(_:)()
{
  v1 = v0;
  v2 = sub_1BAD9CA18();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAD9CB98();
  sub_1BAD9CA08();
  (*(v3 + 8))(v5, v2);
  v6 = sub_1BAD9CF38();

  [v1 setAccessibilityIdentifier_];
}

id sub_1BAD071FC()
{
  v1 = OBJC_IVAR___JULanguageAwareString____lazy_storage___attributedString;
  v2 = *(v0 + OBJC_IVAR___JULanguageAwareString____lazy_storage___attributedString);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___JULanguageAwareString____lazy_storage___attributedString);
  }

  else
  {
    v4 = sub_1BAD072B8(*(v0 + OBJC_IVAR___JULanguageAwareString_baseAttributedString), *(v0 + OBJC_IVAR___JULanguageAwareString_paragraphs), *(v0 + OBJC_IVAR___JULanguageAwareString_string), *(v0 + OBJC_IVAR___JULanguageAwareString_string + 8));
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BAD072B8(void *a1, unint64_t a2, uint64_t a3, id a4)
{
  if (a1)
  {

    return a1;
  }

  else
  {
    v8 = a2 >> 62;
    if (a2 >> 62)
    {
      if (sub_1BAD9D8D8() != 1 || !sub_1BAD9D8D8())
      {
        goto LABEL_15;
      }
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
    {
      goto LABEL_15;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      goto LABEL_38;
    }

    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      for (i = *(a2 + 32); ; i = MEMORY[0x1BFB02E80](0, a2))
      {
        v10 = i;
        [i juDirectionalRangeValue];

        v11 = MEMORY[0x1BFB02700](a3, a4);
        if (!v31 && v32 == v11)
        {
          v12 = sub_1BAD87490(v33);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A9D0, &qword_1BADA3868);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1BAD9F5A0;
          v14 = *MEMORY[0x1E69DB688];
          *(inited + 32) = *MEMORY[0x1E69DB688];
          *(inited + 64) = sub_1BAD053C8(0, &qword_1EBC29A00, 0x1E69DB7D0);
          *(inited + 40) = v12;
          v15 = v12;
          v16 = v14;
          sub_1BAD1FADC(inited);
          swift_setDeallocating();
          sub_1BAD885C4(inited + 32);
          v17 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
          v18 = sub_1BAD9CF38();
          type metadata accessor for Key(0);
          sub_1BAD30308();
          v19 = sub_1BAD9CE88();

          v20 = [v17 initWithString:v18 attributes:v19];

          return v20;
        }

LABEL_15:
        v21 = objc_allocWithZone(MEMORY[0x1E696AD40]);
        v22 = sub_1BAD9CF38();
        a4 = [v21 initWithString_];

        if (v8)
        {
          a3 = sub_1BAD9D8D8();
          if (!a3)
          {
LABEL_35:
            v29 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithAttributedString_];

            return v29;
          }
        }

        else
        {
          a3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!a3)
          {
            goto LABEL_35;
          }
        }

        v23 = 0;
        v8 = a2 & 0xFFFFFFFFFFFFFF8;
        v24 = *MEMORY[0x1E69DB688];
        while (1)
        {
          if ((a2 & 0xC000000000000001) != 0)
          {
            v26 = MEMORY[0x1BFB02E80](v23, a2);
          }

          else
          {
            if (v23 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_37;
            }

            v26 = *(a2 + 8 * v23 + 32);
          }

          v27 = v26;
          v28 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          [v26 juDirectionalRangeValue];
          if (v33 == -1)
          {
            v25 = &qword_1EBC357B0;
            if (qword_1EBC29A30 != -1)
            {
              swift_once();
              v25 = &qword_1EBC357B0;
            }
          }

          else if (v33 == 1)
          {
            v25 = &qword_1EBC35800;
            if (qword_1EBC29C78 != -1)
            {
              swift_once();
              v25 = &qword_1EBC35800;
            }
          }

          else
          {
            if (v33)
            {
              goto LABEL_40;
            }

            v25 = &qword_1EBC357B8;
            if (qword_1EBC29A58 != -1)
            {
              swift_once();
              v25 = &qword_1EBC357B8;
            }
          }

          [a4 addAttribute:v24 value:*v25 range:?];

          ++v23;
          if (v28 == a3)
          {
            goto LABEL_35;
          }
        }

        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        ;
      }
    }

    __break(1u);
LABEL_40:
    sub_1BAD9D7E8();

    v30 = sub_1BAD9DA48();
    MEMORY[0x1BFB026B0](v30);

    result = sub_1BAD9D8B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BAD07818(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BAD07838(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AspectRatio(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AspectRatio(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

BOOL sub_1BAD078DC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_1BAD0795C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BAD9CF68();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_1BAD07988@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1BAD079D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BAD07A38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1BAD14A3C(v3 + 16, a2);
}

uint64_t sub_1BAD07ABC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1BAD14A3C(v3 + 56, a2);
}

uint64_t sub_1BAD07B40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 96);
  return result;
}

uint64_t sub_1BAD07BC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1BAD1CB04(v3 + 104, a2);
}

uint64_t sub_1BAD07C44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1BAD14A3C(v3 + 144, a2);
}

uint64_t sub_1BAD07CC8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v6 = *(*(a3 + 16) - 8);
    if (*(v6 + 84) == a2)
    {
      v7 = *(v6 + 48);
      v8 = a1 + *(a3 + 52);

      return v7(v8);
    }

    else
    {
      v12 = sub_1BAD9CB58();
      v13 = *(*(v12 - 8) + 48);
      v14 = a1 + *(a3 + 56);

      return v13(v14, a2, v12);
    }
  }
}

void *sub_1BAD07DD0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v5 = *(a4 + 16);
    v6 = *(v5 - 8);
    if (*(v6 + 84) == a3)
    {
      v7 = *(v6 + 56);
      v8 = result + *(a4 + 52);

      return v7(v8, a2, a2, v5);
    }

    else
    {
      v9 = result;
      v11 = sub_1BAD9CB58();
      v12 = *(*(v11 - 8) + 56);
      v13 = v9 + *(a4 + 56);

      return v12(v13, a2, a2, v11);
    }
  }

  return result;
}

uint64_t sub_1BAD07EF0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BAD07F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, uint64_t a5@<X3>)
{
  result = type metadata accessor for ReusePool(0, *(a2 + a3 - 16), *(a2 + a3 - 8), a5);
  *a4 = *(a1 + *(result + 40));
  return result;
}

void sub_1BAD07F78(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = type metadata accessor for ReusePool(0, *(a3 + a4 - 16), *(a3 + a4 - 8), a4);
  ReusePool.limit.setter(v4, v5);
}

__n128 sub_1BAD07FC4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void *sub_1BAD07FF0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_1BAD07FFC@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1BAD0801C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1BAD08040()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BAD08094@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 32);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1BAD080E4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 32) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1BAD08144()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BAD08198()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BAD081FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BAD0823C()
{
  sub_1BAD32580(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

uint64_t sub_1BAD08400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  swift_beginAccess();
  return sub_1BAD14A3C(v3 + 16, a2);
}

uint64_t sub_1BAD0846C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1BAD9C328();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BAD08518(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1BAD9C328();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BAD085BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A668, &unk_1BADA2530);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1BAD08684(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A668, &unk_1BADA2530);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BAD0874C()
{
  sub_1BAD39BCC(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  if (*(v0 + 112))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1BAD087A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A668, &unk_1BADA2530);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1BAD08870(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A668, &unk_1BADA2530);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BAD0893C()
{
  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BAD08984()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1BAD089BC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BAD089F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BAD08A3C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BAD08A74()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BAD08AB4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1BAD08AF4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (*(v0 + 96) == 1)
  {
  }

  else if (!*(v0 + 96))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  }

  if (*(v0 + 144) == 1)
  {
  }

  else if (!*(v0 + 144))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  }

  if (*(v0 + 192) == 1)
  {
  }

  else if (!*(v0 + 192))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 152));
  }

  if (*(v0 + 240) == 1)
  {
  }

  else if (!*(v0 + 240))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 200));
  }

  return MEMORY[0x1EEE6BDD0](v0, 241, 7);
}

uint64_t sub_1BAD08BBC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1BAD08C04()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);

  return MEMORY[0x1EEE6BDD0](v0, 216, 7);
}

uint64_t sub_1BAD08C5C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BAD08C98()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1BAD08CD0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 113, 7);
}

uint64_t sub_1BAD08D08()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1BAD08D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BAD9C2C8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1BAD9C928();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1BAD08E98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BAD9C2C8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_1BAD9C928();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1BAD08FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A668, &unk_1BADA2530);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1BAD09088(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A668, &unk_1BADA2530);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

id sub_1BAD0914C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___JULanguageAwareTextStorage_textStorage;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1BAD091B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BAD09208@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1BAD14A3C(v3 + 16, a2);
}

uint64_t sub_1BAD0928C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1BAD14A3C(v3 + 56, a2);
}

uint64_t sub_1BAD09310@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1BAD14A3C(v3 + 96, a2);
}

uint64_t sub_1BAD09394@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 136);
  return result;
}

uint64_t sub_1BAD09408()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BAD09444(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAD9C4A8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BAD094B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAD9C4A8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BAD09530()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BAD09568()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BAD095A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

__n128 sub_1BAD095F8@<Q0>(uint64_t a1@<X8>)
{
  UILabel.textAppearance.getter(&v3);
  *a1 = v3;
  result = v5;
  *(a1 + 8) = v4;
  *(a1 + 24) = result;
  return result;
}

id sub_1BAD09644@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 contentMode];
  result = [v3 preferredSymbolConfiguration];
  *a2 = result;
  a2[1] = v4;
  return result;
}

id sub_1BAD096A0(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v3 = *a2;
  [*a2 setContentMode_];

  return [v3 setPreferredSymbolConfiguration_];
}

uint64_t sub_1BAD0975C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BAD9C2C8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1BAD09818(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BAD9C2C8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BAD098D0()
{
  v1 = sub_1BAD9C2C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BAD099A4()
{
  sub_1BAD32580(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

uint64_t sub_1BAD099EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[3];
  v6 = *(type metadata accessor for ShelvesPresenter.InsertionPoint(0, v4[2], v4[4], a4) - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = (v7 + 48) & ~v7;
  v10 = *(v5 - 8);
  v11 = *(v10 + 80);
  v12 = *(v10 + 64);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    (*(*(AssociatedTypeWitness - 8) + 8))(v4 + v9, AssociatedTypeWitness);
  }

  v14 = (v9 + v8 + v11) & ~v11;
  (*(v10 + 8))(v4 + v14, v5);

  return MEMORY[0x1EEE6BDD0](v4, v14 + v12, v7 | v11 | 7);
}

uint64_t sub_1BAD09B80()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1BAD09C58()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BAD09C94()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 16, v2 | 7);
}

uint64_t sub_1BAD09D68()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BAD09DB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1BAD14A3C(v3 + 16, a2);
}

uint64_t sub_1BAD09E3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1BAD70CDC(v3 + 56, a2);
}

uint64_t sub_1BAD09EC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1BAD14A3C(v3 + 96, a2);
}

uint64_t sub_1BAD09F44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1BAD14A3C(v3 + 136, a2);
}

uint64_t sub_1BAD09FC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1BAD14A3C(v3 + 176, a2);
}

uint64_t sub_1BAD0A04C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1BAD14A3C(v3 + 216, a2);
}

uint64_t sub_1BAD0A10C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 336);
  return result;
}

uint64_t sub_1BAD0A184@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1BAD14A3C(v3 + 16, a2);
}

uint64_t sub_1BAD0A208@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1BAD14A3C(v3 + 56, a2);
}

uint64_t sub_1BAD0A28C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1BAD14A3C(v3 + 96, a2);
}

uint64_t sub_1BAD0A310@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1BAD14A3C(v3 + 136, a2);
}

uint64_t sub_1BAD0A394@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1BAD14A3C(v3 + 176, a2);
}

uint64_t sub_1BAD0A418@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 216);
  return result;
}

uint64_t sub_1BAD0A488(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAD9C4B8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BAD0A4F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAD9C4B8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BAD0A564()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BAD0A59C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BAD0A5E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BAD0A634()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1BAD0A674(void *a1)
{
  v1 = [a1 preferredContentSizeCategory];
  v2 = sub_1BAD9D528();

  return v2 & 1;
}

uint64_t sub_1BAD0A6F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 56);
  return result;
}

__n128 sub_1BAD0A764@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 64);
  v5 = *(v3 + 80);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

__n128 sub_1BAD0A814@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 72);
  result = *(v3 + 56);
  *a2 = result;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_1BAD0A864(__int128 *a1)
{
  v1 = *(a1 + 16);
  v3 = *a1;
  v4 = v1;
  return AspectFitLayout.explicitAspectRatio.setter(&v3);
}

__n128 sub_1BAD0A8A4@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = v3[5];
  *a2 = result;
  return result;
}

uint64_t sub_1BAD0A914()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id sub_1BAD0A964@<X0>(void *a1@<X8>)
{
  result = sub_1BAD071FC();
  *a1 = result;
  return result;
}

void sub_1BAD0A990(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___JULanguageAwareString____lazy_storage___attributedString);
  *(*a2 + OBJC_IVAR___JULanguageAwareString____lazy_storage___attributedString) = *a1;
  v3 = v2;
}

id sub_1BAD0A9E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BAD84780();
  *a1 = result;
  return result;
}

void sub_1BAD0AA0C(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___JULanguageAwareString____lazy_storage___localizedLowercase);
  *(*a2 + OBJC_IVAR___JULanguageAwareString____lazy_storage___localizedLowercase) = *a1;
  v3 = v2;
}

id sub_1BAD0AA5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BAD8482C();
  *a1 = result;
  return result;
}

void sub_1BAD0AA88(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___JULanguageAwareString____lazy_storage___localizedUppercase);
  *(*a2 + OBJC_IVAR___JULanguageAwareString____lazy_storage___localizedUppercase) = *a1;
  v3 = v2;
}

id sub_1BAD0AAD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BAD849E8();
  *a1 = result;
  return result;
}

void sub_1BAD0AB04(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___JULanguageAwareString____lazy_storage___newlinesCollapsedToSpace);
  *(*a2 + OBJC_IVAR___JULanguageAwareString____lazy_storage___newlinesCollapsedToSpace) = *a1;
  v3 = v2;
}

id sub_1BAD0AB54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BAD84BC4();
  *a1 = result;
  return result;
}

void sub_1BAD0AB80(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___JULanguageAwareString____lazy_storage___trimmed);
  *(*a2 + OBJC_IVAR___JULanguageAwareString____lazy_storage___trimmed) = *a1;
  v3 = v2;
}

uint64_t sub_1BAD0ABD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BAD84F2C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 sub_1BAD0ABFC(__n128 *a1, void *a2)
{
  v2 = (*a2 + OBJC_IVAR___JULanguageAwareString____lazy_storage___juFullRange);
  result = *a1;
  *v2 = *a1;
  v2[1].n128_u8[0] = 0;
  return result;
}

uint64_t sub_1BAD0AC1C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BAD84FBC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BAD0AC64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BAD85048();
  *a1 = result;
  return result;
}

void *sub_1BAD0AC90(void *result, void *a2)
{
  v2 = *a2 + OBJC_IVAR___JULanguageAwareString____lazy_storage___utf16Count;
  *v2 = *result;
  *(v2 + 8) = 0;
  return result;
}

unint64_t sub_1BAD0ACB0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1BAD850A4();
  *a1 = result;
  return result;
}

void *sub_1BAD0ACDC(void *result, void *a2)
{
  v2 = *a2 + OBJC_IVAR___JULanguageAwareString____lazy_storage___utf32Count;
  *v2 = *result;
  *(v2 + 8) = 0;
  return result;
}

uint64_t sub_1BAD0ACFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BAD85178();
  *a1 = result;
  return result;
}

void *sub_1BAD0AD28(void *result, void *a2)
{
  v2 = *a2 + OBJC_IVAR___JULanguageAwareString____lazy_storage___characterCount;
  *v2 = *result;
  *(v2 + 8) = 0;
  return result;
}

uint64_t sub_1BAD0AD48@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EBC2B3D0;
  return result;
}

uint64_t sub_1BAD0AD94(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EBC2B3D0 = v1;
  return result;
}

uint64_t sub_1BAD0ADDC@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EBC2B3D1;
  return result;
}

uint64_t sub_1BAD0AE28(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EBC2B3D1 = v1;
  return result;
}

uint64_t sub_1BAD0AE70@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = qword_1EBC2B3D8;
  return swift_unknownObjectRetain();
}

uint64_t sub_1BAD0AEC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BAD8678C();
  *a1 = result;
  return result;
}

void *sub_1BAD0AEF0(void *result, void *a2)
{
  v2 = *a2 + OBJC_IVAR___JULanguageAwareString____lazy_storage___thresholdBaseWritingDirection;
  *v2 = *result;
  *(v2 + 8) = 0;
  return result;
}

uint64_t sub_1BAD0AF10()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BAD0AF48()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1BAD0AF98()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BAD0AFD0()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

__n128 sub_1BAD0B0AC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1BAD0B0BC()
{
  sub_1BAD32580(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

uint64_t sub_1BAD0B100()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BAD0B138()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1BAD0B17C()
{
  sub_1BAD11750(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

uint64_t sub_1BAD0B1C0()
{
  sub_1BAD32580(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

uint64_t sub_1BAD0B214()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BAD0B24C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BAD0B28C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BAD0B2C4()
{
  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BAD0B30C()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1BAD0B354()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BAD0B38C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BAD0B3C4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1BAD0B40C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void JUAddOverridesForSupportingLayoutDirectionOnUIView(uint64_t result, uint64_t a2)
{
  if (sOverride_UIView_traitCollection != -1)
  {
    JUAddOverridesForSupportingLayoutDirectionOnUIView_cold_1();
  }
}

id swizzle_UIView_traitCollection(void *a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = sOriginal_UIView_traitCollection();
  v3 = [v1 _juLayoutDirectionValue];
  if (v3 && (v4 = [v1 _juLayoutDirectionFromLayoutDirectionValue:v3], v4 != objc_msgSend(v2, "layoutDirection")))
  {
    v6 = [MEMORY[0x1E69DD1B8] traitCollectionWithLayoutDirection:v4];
    v10[0] = v2;
    v10[1] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
    v5 = [MEMORY[0x1E69DD1B8] traitCollectionWithTraitsFromCollections:v7];
  }

  else
  {
    v5 = v2;
  }

  v8 = v5;

  return v5;
}

void JUNQMLParserStartDocument(void *a1)
{
  v1 = a1;
  v2 = [v1 delegate];
  [v2 parserDidStartDocument:v1];
}

void JUNQMLParserEndDocument(void *a1)
{
  v1 = a1;
  v2 = [v1 delegate];
  [v2 parserDidEndDocument:v1];
}

void JUNQMLParserStartElement(void *a1, const xmlChar *a2, xmlChar **a3)
{
  v16 = a1;
  if (xmlStrEqual(a2, "li"))
  {
    v5 = [v16 delegate];
    [v5 parserDidStartListElement:v16];
  }

  else
  {
    v18 = 0;
    if (TryListTypeFromName(a2, &v18))
    {
      v5 = [v16 delegate];
      [v5 parser:v16 didStartListOfStyle:v18];
    }

    else
    {
      v17 = 0;
      if (!TryTextElementFromName(a2, &v17, [v16 behavior]))
      {
        goto LABEL_14;
      }

      v5 = [v16 delegate];
      v6 = v17;
      if (a3)
      {
        v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v8 = *a3;
        if (*a3)
        {
          v9 = (a3 + 2);
          do
          {
            v10 = *(v9 - 1);
            v11 = xmlStrlen(v8);
            v12 = NSStringFromXmlChar(v8, v11);
            v13 = xmlStrlen(v10);
            v14 = NSStringFromXmlChar(v10, v13);
            [v7 setObject:v14 forKeyedSubscript:v12];

            v15 = *v9;
            v9 += 2;
            v8 = v15;
          }

          while (v15);
        }
      }

      else
      {
        v7 = MEMORY[0x1E695E0F8];
      }

      [v5 parser:v16 didStartElement:v6 attributes:v7];
    }
  }

LABEL_14:
}

void JUNQMLParserEndElement(void *a1, const xmlChar *a2)
{
  v4 = a1;
  if (xmlStrEqual(a2, "br"))
  {
    v3 = [v4 delegate];
    [v3 parserDidFindNewline:v4];
  }

  else if (xmlStrEqual(a2, "li"))
  {
    v3 = [v4 delegate];
    [v3 parserDidEndListElement:v4];
  }

  else
  {
    v6 = 0;
    if (TryListTypeFromName(a2, &v6))
    {
      v3 = [v4 delegate];
      [v3 parser:v4 didEndListOfStyle:v6];
    }

    else
    {
      v5 = 0;
      if (!TryTextElementFromName(a2, &v5, [v4 behavior]))
      {
        goto LABEL_10;
      }

      v3 = [v4 delegate];
      [v3 parser:v4 didEndElement:v5];
    }
  }

LABEL_10:
}

void JUNQMLParserCharacters(void *a1, __CFString *a2, int a3)
{
  v7 = a1;
  v5 = NSStringFromXmlChar(a2, a3);
  if (v5)
  {
    v6 = [v7 delegate];
    [v6 parser:v7 didFindCharacters:v5];
  }
}

void JUNQMLParserError(void *a1)
{
  v3 = a1;
  LastError = xmlCtxtGetLastError([v3 _parserContext]);
  if (LastError)
  {
    v2 = LastError;
    [v3 reportParseError:LastError];
    if (v2->level == XML_ERR_FATAL)
    {
      xmlStopParser([v3 _parserContext]);
    }
  }
}

uint64_t TryListTypeFromName(const xmlChar *a1, uint64_t *a2)
{
  if (xmlStrEqual(a1, "ol"))
  {
    v4 = 0;
  }

  else
  {
    result = xmlStrEqual(a1, "ul");
    if (!result)
    {
      return result;
    }

    v4 = 1;
  }

  *a2 = v4;
  return 1;
}

uint64_t TryTextElementFromName(const xmlChar *a1, uint64_t *a2, uint64_t a3)
{
  if (xmlStrEqual(a1, "em"))
  {
    v6 = a3 != 1;
LABEL_6:
    *a2 = v6;
    return 1;
  }

  if (xmlStrEqual(a1, "b") || xmlStrEqual(a1, "strong"))
  {
    v6 = 0;
    goto LABEL_6;
  }

  if (xmlStrEqual(a1, "i"))
  {
    v6 = 1;
    goto LABEL_6;
  }

  if (xmlStrEqual(a1, "u"))
  {
    v6 = 2;
    goto LABEL_6;
  }

  if (xmlStrEqual(a1, "strike") || xmlStrEqual(a1, "del"))
  {
    v6 = 3;
    goto LABEL_6;
  }

  if (xmlStrEqual(a1, "p") || (result = xmlStrEqual(a1, "div"), result))
  {
    v6 = 4;
    goto LABEL_6;
  }

  return result;
}

__CFString *NSStringFromXmlChar(__CFString *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      a1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a1 length:a2 encoding:4];
    }

    else
    {
      a1 = &stru_1F38EEBA0;
    }

    v2 = vars8;
  }

  return a1;
}

CGFloat JURectWithFlippedOriginRelativeToBoundingRect(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v16.origin.x = a5;
  v16.origin.y = a6;
  v16.size.width = a7;
  v16.size.height = a8;
  v14 = a1 - CGRectGetMinX(v16);
  v17.origin.x = a5;
  v17.origin.y = a6;
  v17.size.width = a7;
  v17.size.height = a8;
  return CGRectGetMaxX(v17) - v14 - a3;
}

CGFloat JURectWithConditionalOriginRelativeToBoundingRect(int a1, double a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  if (a1)
  {
    v17.origin.x = a6;
    v17.origin.y = a7;
    v17.size.width = a8;
    v17.size.height = a9;
    v15 = a2 - CGRectGetMinX(v17);
    v18.origin.x = a6;
    v18.origin.y = a7;
    v18.size.width = a8;
    v18.size.height = a9;
    return CGRectGetMaxX(v18) - v15 - a4;
  }

  return a2;
}

CGFloat JURectMakeWithDirectionalOriginRelativeToBoundingRect(int a1, double a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  if (a1)
  {
    v17.origin.x = a6;
    v17.origin.y = a7;
    v17.size.width = a8;
    v17.size.height = a9;
    v15 = a2 - CGRectGetMinX(v17);
    v18.origin.x = a6;
    v18.origin.y = a7;
    v18.size.width = a8;
    v18.size.height = a9;
    return CGRectGetMaxX(v18) - v15 - a4;
  }

  return a2;
}

float ForJetUIOnly_MainScreenScale(uint64_t a1, uint64_t a2)
{
  if (ForJetUIOnly_MainScreenScale_onceToken[0] != -1)
  {
    ForJetUIOnly_MainScreenScale_cold_1();
  }

  return *&ForJetUIOnly_MainScreenScale_scale;
}

uint64_t sub_1BAD0CA68()
{
  v0 = MEMORY[0x1E69E7CC0];
  v22 = MEMORY[0x1E69E7CC0];
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 connectedScenes];

  sub_1BAD053C8(0, &qword_1EBC29FE0, 0x1E69DCE70);
  sub_1BAD10780();
  v3 = sub_1BAD9D338();

  sub_1BAD0CD9C(v3, &v21);
  sub_1BAD0CE68();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    for (i = [v5 activationState]; ; i = objc_msgSend(v12, sel_activationState, v20))
    {
      if (!i && (objc_opt_self(), (v15 = swift_dynamicCastObjCClass()) != 0) && (v16 = v15, v17 = v7, v18 = [v16 keyWindow], v17, v18))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AAD0, &qword_1BADA3D00);
        inited = swift_initStackObject();
        *(inited + 16) = v20;
        *(inited + 32) = v18;
        v10 = v18;
        v11 = sub_1BAD0CFA4(inited, v6, 0);
        swift_setDeallocating();
        swift_arrayDestroy();
        sub_1BAD23440(v11);
      }

      else
      {
        if (qword_1EBC29C50 != -1)
        {
          swift_once();
        }

        v14 = sub_1BAD9CDF8();
        __swift_project_value_buffer(v14, qword_1EBC357E8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC29FF0, &unk_1BADA0410);
        sub_1BAD9C898();
        *(swift_allocObject() + 16) = xmmword_1BAD9F5A0;
        sub_1BAD9C7E8();
        sub_1BAD9CCB8();
      }

      sub_1BAD0CE68();
      v6 = v13;
      v7 = v12;
      if (!v12)
      {
        break;
      }
    }

    v0 = v22;
  }

  sub_1BAD107E8(v21);
  return v0;
}

uint64_t sub_1BAD0CD9C@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    sub_1BAD9D6C8();
    sub_1BAD053C8(0, &qword_1EBC29FE0, 0x1E69DCE70);
    sub_1BAD10780();
    sub_1BAD9D388();
    result = v10;
    v3 = v11;
    v5 = v12;
    v4 = v13;
    v6 = v14;
  }

  else
  {
    v4 = 0;
    v7 = -1;
    v8 = -1 << *(result + 32);
    v3 = result + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v7 = ~(-1 << v9);
    }

    v6 = v7 & *(result + 56);
  }

  *a2 = result;
  a2[1] = v3;
  a2[2] = v5;
  a2[3] = v4;
  a2[4] = v6;
  a2[5] = 0;
  return result;
}

void sub_1BAD0CE68()
{
  if ((*v0 & 0x8000000000000000) != 0)
  {
    if (sub_1BAD9D718())
    {
      sub_1BAD053C8(0, &qword_1EBC29FE0, 0x1E69DCE70);
      swift_dynamicCast();
      if (v11)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v1 = v0[3];
    v2 = v0[4];
    if (!v2)
    {
      v4 = (v0[2] + 64) >> 6;
      if (v4 <= v1 + 1)
      {
        v5 = v1 + 1;
      }

      else
      {
        v5 = (v0[2] + 64) >> 6;
      }

      v6 = v5 - 1;
      while (1)
      {
        v3 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v3 >= v4)
        {
          v8 = 0;
          v7 = 0;
          goto LABEL_15;
        }

        v2 = *(v0[1] + 8 * v3);
        ++v1;
        if (v2)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    v3 = v0[3];
LABEL_14:
    v7 = (v2 - 1) & v2;
    v8 = *(*(*v0 + 48) + ((v3 << 9) | (8 * __clz(__rbit64(v2)))));
    v9 = v8;
    v6 = v3;
LABEL_15:
    v0[3] = v6;
    v0[4] = v7;
    if (v8)
    {
LABEL_16:
      v10 = v0[5];
      if (!__OFADD__(v10, 1))
      {
        v0[5] = v10 + 1;
        return;
      }

      goto LABEL_21;
    }
  }
}

char *sub_1BAD0CFA4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
LABEL_29:
    v53 = a1;
    v4 = sub_1BAD9D8D8();
    a1 = v53;
    if (v4)
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC0];
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  v5 = a1;
  result = objc_opt_self();
  v59 = result;
  if (v4 >= 1)
  {
    v7 = 0;
    v8 = v5;
    v58 = v5 & 0xC000000000000001;
    v54 = a3 + 1;
    v9 = __OFADD__(a3, 1);
    v55 = v9;
    v10 = &unk_1E7F1B000;
    v62 = MEMORY[0x1E69E7CC0];
    v56 = v4;
    v57 = v5;
    while (1)
    {
      if (v58)
      {
        v11 = MEMORY[0x1BFB02E80](v7, v8);
      }

      else
      {
        v11 = *(v8 + 8 * v7 + 32);
      }

      v12 = v11;
      v13 = [v11 superview];
      if (!v13)
      {
        v13 = v12;
      }

      [v12 v10[165]];
      [v13 convertPoint:0 toView:?];
      v15 = v14;
      v17 = v16;

      v18 = [v59 mainScreen];
      [v18 bounds];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;

      v64.origin.x = v20;
      v64.origin.y = v22;
      v64.size.width = v24;
      v64.size.height = v26;
      v63.x = v15;
      v63.y = v17;
      v27 = CGRectContainsPoint(v64, v63);
      v28 = MEMORY[0x1E69E7CC0];
      if (v27)
      {
        v29 = [v12 subviews];
        sub_1BAD053C8(0, &unk_1EBC2A000, 0x1E69DD250);
        a3 = sub_1BAD9D178();

        if (v55)
        {
          __break(1u);
          goto LABEL_29;
        }

        v28 = sub_1BAD0CFA4(a3, a2, v54);
      }

      v30 = [v12 accessibilityIdentifier];
      if (v30)
      {
        v31 = v30;
        v32 = sub_1BAD9CF68();
        v61 = v33;
      }

      else
      {
        v32 = 0x3E7974706D653C3CLL;
        v61 = 0xE90000000000003ELL;
      }

      v34 = v12;
      v35 = [v34 accessibilityLabel];
      if (v35)
      {
        v36 = v35;
        v37 = sub_1BAD9CF68();
        v39 = v38;
      }

      else
      {
        v37 = 0x3E7974706D653C3CLL;
        v39 = 0xE90000000000003ELL;
      }

      v40 = [v34 accessibilityContainerType];
      [v34 v10[165]];
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v49 = [v34 accessibilityTraits];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_1BAD1801C(0, *(v62 + 2) + 1, 1, v62);
      }

      v51 = *(v62 + 2);
      v50 = *(v62 + 3);
      if (v51 >= v50 >> 1)
      {
        v62 = sub_1BAD1801C((v50 > 1), v51 + 1, 1, v62);
      }

      ++v7;

      *(v62 + 2) = v51 + 1;
      v52 = &v62[96 * v51];
      *(v52 + 4) = v32;
      *(v52 + 5) = v61;
      *(v52 + 6) = v37;
      *(v52 + 7) = v39;
      *(v52 + 8) = v40;
      *(v52 + 9) = v28;
      *(v52 + 10) = v42;
      *(v52 + 11) = v44;
      *(v52 + 12) = v48;
      *(v52 + 13) = v46;
      *(v52 + 14) = v49;
      *(v52 + 15) = a2;
      v8 = v57;
      v10 = &unk_1E7F1B000;
      if (v56 == v7)
      {
        return v62;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BAD0D380()
{
  v1 = 120;
  v2 = 0x746867696568;
  if (*v0 != 2)
  {
    v2 = 0x6874646977;
  }

  if (*v0)
  {
    v1 = 121;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1BAD0D3DC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BAD1032C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BAD0D41C(uint64_t a1)
{
  v2 = sub_1BAD0D73C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAD0D458(uint64_t a1)
{
  v2 = sub_1BAD0D73C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DSAccessibilityDiagnosticInfo.Rect.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC29CA8, &qword_1BAD9F5B0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  v9 = *v1;
  v8 = v1[1];
  v11 = v1[2];
  v10 = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAD0D73C();
  sub_1BAD9DBD8();
  v14 = v9;
  HIBYTE(v13) = 0;
  sub_1BAD0D790();
  sub_1BAD9DA28();
  if (!v2)
  {
    v14 = v8;
    HIBYTE(v13) = 1;
    sub_1BAD9DA28();
    v14 = v11;
    HIBYTE(v13) = 2;
    sub_1BAD9DA28();
    v14 = v10;
    HIBYTE(v13) = 3;
    sub_1BAD9DA28();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1BAD0D73C()
{
  result = qword_1EBC29CB0;
  if (!qword_1EBC29CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC29CB0);
  }

  return result;
}

unint64_t sub_1BAD0D790()
{
  result = qword_1EBC29CB8;
  if (!qword_1EBC29CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC29CB8);
  }

  return result;
}

uint64_t DSAccessibilityDiagnosticInfo.Rect.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC29CC0, &qword_1BAD9F5B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAD0D73C();
  sub_1BAD9DBB8();
  if (!v2)
  {
    HIBYTE(v14) = 0;
    sub_1BAD0DA90();
    sub_1BAD9D9C8();
    v9 = v15;
    HIBYTE(v14) = 1;
    sub_1BAD9D9C8();
    v10 = v15;
    HIBYTE(v14) = 2;
    sub_1BAD9D9C8();
    v12 = v15;
    HIBYTE(v14) = 3;
    sub_1BAD9D9C8();
    (*(v6 + 8))(v8, v5);
    v13 = v15;
    *a2 = v9;
    a2[1] = v10;
    a2[2] = v12;
    a2[3] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_1BAD0DA90()
{
  result = qword_1EBC29CC8;
  if (!qword_1EBC29CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC29CC8);
  }

  return result;
}

uint64_t _s5JetUI19VerticalStackLayoutV5ChildV9AlignmentO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1BAD9DB48();
  MEMORY[0x1BFB031C0](v1);
  return sub_1BAD9DB88();
}

uint64_t sub_1BAD0DB5C(uint64_t a1)
{
  v2 = *v1;
  sub_1BAD9DB48();
  MEMORY[0x1BFB031C0](v2);
  return sub_1BAD9DB88();
}

uint64_t sub_1BAD0DBA0()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x737469617274;
  if (v1 != 5)
  {
    v3 = 0x6449776F646E6977;
  }

  v4 = 0x6E6572646C696863;
  if (v1 != 3)
  {
    v4 = 1952671090;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6C6562616CLL;
  if (v1 != 1)
  {
    v5 = 0x54746E656D656C65;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1BAD0DC78@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BAD10474(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BAD0DCAC(uint64_t a1)
{
  v2 = sub_1BAD0E00C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAD0DCE8(uint64_t a1)
{
  v2 = sub_1BAD0E00C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DSAccessibilityDiagnosticInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC29CD0, &qword_1BAD9F5C0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - v5;
  v7 = *(v1 + 16);
  v22 = *(v1 + 24);
  v23 = v7;
  v8 = *(v1 + 32);
  v20 = *(v1 + 40);
  v21 = v8;
  v9 = *(v1 + 48);
  v17 = *(v1 + 64);
  v18 = v9;
  v19 = *(v1 + 80);
  v10 = a1[3];
  v11 = a1;
  v13 = v12;
  __swift_project_boxed_opaque_existential_1(v11, v10);
  sub_1BAD0E00C();
  sub_1BAD9DBD8();
  LOBYTE(v25) = 0;
  v14 = v24;
  sub_1BAD9D9F8();
  if (!v14)
  {
    v15 = v20;
    LOBYTE(v25) = 1;
    sub_1BAD9D9F8();
    LOBYTE(v25) = 2;
    sub_1BAD9DA18();
    *&v25 = v15;
    v27 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC29CE0, &qword_1BAD9F5C8);
    sub_1BAD0E610(&qword_1EBC29CE8, sub_1BAD0E0A8, MEMORY[0x1E69E6300]);
    sub_1BAD9DA28();
    v25 = v18;
    v26 = v17;
    v27 = 4;
    sub_1BAD0E0FC();
    sub_1BAD9DA28();
    LOBYTE(v25) = 5;
    sub_1BAD9DA38();
    LOBYTE(v25) = 6;
    sub_1BAD9DA18();
  }

  return (*(v4 + 8))(v6, v13);
}

unint64_t sub_1BAD0E00C()
{
  result = qword_1EBC29CD8;
  if (!qword_1EBC29CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC29CD8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1BAD0E0A8()
{
  result = qword_1EBC29CF0;
  if (!qword_1EBC29CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC29CF0);
  }

  return result;
}

unint64_t sub_1BAD0E0FC()
{
  result = qword_1EBC29CF8;
  if (!qword_1EBC29CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC29CF8);
  }

  return result;
}

uint64_t DSAccessibilityDiagnosticInfo.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC29D00, &qword_1BAD9F5D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAD0E00C();
  sub_1BAD9DBB8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v41) = 0;
  v9 = sub_1BAD9D998();
  v11 = v10;
  v34 = a2;
  v12 = v9;
  LOBYTE(v41) = 1;
  v13 = sub_1BAD9D998();
  *(&v33 + 1) = v14;
  *&v33 = v13;
  LOBYTE(v41) = 2;
  v32 = sub_1BAD9D9B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC29CE0, &qword_1BAD9F5C8);
  LOBYTE(v35) = 3;
  sub_1BAD0E610(&qword_1EBC29D08, sub_1BAD0E688, MEMORY[0x1E69E6330]);
  sub_1BAD9D9C8();
  v31 = v41;
  LOBYTE(v35) = 4;
  sub_1BAD0E6DC();
  sub_1BAD9D9C8();
  v15 = v41;
  v16 = v42;
  v17 = v43;
  v18 = v44;
  LOBYTE(v41) = 5;
  v30 = sub_1BAD9D9D8();
  v53 = 6;
  v19 = sub_1BAD9D9B8();
  (*(v6 + 8))(v8, v5);
  *&v35 = v12;
  *(&v35 + 1) = v11;
  v20 = v33;
  v36 = v33;
  v21 = *(&v33 + 1);
  v22 = v32;
  *&v37 = v32;
  v23 = v31;
  *(&v37 + 1) = v31;
  *&v38 = v15;
  *(&v38 + 1) = v16;
  *&v39 = v17;
  *(&v39 + 1) = v18;
  *&v40 = v30;
  *(&v40 + 1) = v19;
  v24 = v38;
  v25 = v34;
  v34[2] = v37;
  v25[3] = v24;
  v26 = v40;
  v25[4] = v39;
  v25[5] = v26;
  v27 = v36;
  *v25 = v35;
  v25[1] = v27;
  sub_1BAD0E730(&v35, &v41);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v41 = v12;
  v42 = v11;
  v43 = v20;
  v44 = v21;
  v45 = v22;
  v46 = v23;
  v47 = v15;
  v48 = v16;
  v49 = v17;
  v50 = v18;
  v51 = v30;
  v52 = v19;
  return sub_1BAD0E768(&v41);
}

uint64_t sub_1BAD0E610(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC29CE0, &qword_1BAD9F5C8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BAD0E688()
{
  result = qword_1EBC29D10;
  if (!qword_1EBC29D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC29D10);
  }

  return result;
}

unint64_t sub_1BAD0E6DC()
{
  result = qword_1EBC29D18;
  if (!qword_1EBC29D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC29D18);
  }

  return result;
}

uint64_t DSAccessibilityDiagnosticCollector.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DSAccessibilityDiagnosticCollector.getDiagnosticInfo()()
{
  sub_1BAD9C1D8();
  swift_allocObject();
  sub_1BAD9C1C8();
  sub_1BAD0CA68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC29CE0, &qword_1BAD9F5C8);
  sub_1BAD0E610(&qword_1EBC29CE8, sub_1BAD0E0A8, MEMORY[0x1E69E6300]);
  v0 = sub_1BAD9C1B8();

  return v0;
}

uint64_t sub_1BAD0E8F8()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1BAD0E928()
{
  sub_1BAD9C1D8();
  swift_allocObject();
  sub_1BAD9C1C8();
  sub_1BAD0CA68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC29CE0, &qword_1BAD9F5C8);
  sub_1BAD0E610(&qword_1EBC29CE8, sub_1BAD0E0A8, MEMORY[0x1E69E6300]);
  v1 = sub_1BAD9C1B8();
  if (v0)
  {

    return 0;
  }

  else
  {
    v3 = v1;

    return v3;
  }
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1BAD0EA54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BAD0EA9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1BAD0EB30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BAD0EB78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DSAccessibilityDiagnosticInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DSAccessibilityDiagnosticInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DSAccessibilityDiagnosticInfo.Rect.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DSAccessibilityDiagnosticInfo.Rect.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BAD0EFA4()
{
  result = qword_1EBC29F18;
  if (!qword_1EBC29F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC29F18);
  }

  return result;
}

unint64_t sub_1BAD0EFFC()
{
  result = qword_1EBC29F20;
  if (!qword_1EBC29F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC29F20);
  }

  return result;
}

uint64_t sub_1BAD0F050@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1BAD0F0C8(uint64_t a1, id *a2)
{
  result = sub_1BAD9CF48();
  *a2 = 0;
  return result;
}

uint64_t sub_1BAD0F140(uint64_t a1, id *a2)
{
  v3 = sub_1BAD9CF58();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1BAD0F1C0@<X0>(uint64_t *a2@<X8>)
{
  sub_1BAD9CF68();
  v3 = sub_1BAD9CF38();

  *a2 = v3;
  return result;
}

BOOL sub_1BAD0F248(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_1BAD0F278@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_1BAD0F2A4@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_1BAD0F384(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x1BFB01A90](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1BAD0F3D8(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x1BFB01AA0](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return v3 & 1;
}

uint64_t sub_1BAD0F460()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x1BFB031E0](*&v1);
}

uint64_t sub_1BAD0F49C(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return MEMORY[0x1EEE6B628](a1, *&v2);
}

_DWORD *sub_1BAD0F4B4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

double sub_1BAD0F4D0@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1BAD0F4F0@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_1BAD10748(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1BAD0F544(uint64_t a1)
{
  sub_1BAD0F758(&qword_1EBC29FB8, type metadata accessor for Weight, &unk_1BADA0140);
  sub_1BAD0F758(&qword_1EBC29FC0, type metadata accessor for Weight, &unk_1BADA00E0);
  sub_1BAD106BC();
  return sub_1BAD9D968();
}

uint64_t sub_1BAD0F60C(uint64_t a1)
{
  sub_1BAD0F758(&qword_1EDBA5D40, type metadata accessor for Key, &unk_1BADA0328);
  sub_1BAD0F758(&unk_1EBC299E8, type metadata accessor for Key, &unk_1BAD9FB60);

  return sub_1BAD9D968();
}

uint64_t sub_1BAD0F758(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BAD0F7A0(uint64_t a1)
{
  sub_1BAD0F758(&qword_1EBC29FA8, type metadata accessor for UIContentSizeCategory, &unk_1BADA0298);
  sub_1BAD0F758(&qword_1EBC29FB0, type metadata accessor for UIContentSizeCategory, &unk_1BADA0238);

  return sub_1BAD9D968();
}

uint64_t sub_1BAD0F85C(uint64_t a1)
{
  sub_1BAD0F758(&qword_1EBC29FD0, type metadata accessor for TextStyle, &unk_1BAD9FE44);
  sub_1BAD0F758(&qword_1EBC29FD8, type metadata accessor for TextStyle, &unk_1BAD9FDE4);

  return sub_1BAD9D968();
}

uint64_t sub_1BAD0F9A8(uint64_t a1)
{
  sub_1BAD0F758(qword_1EDBA5488, type metadata accessor for TraitKey, &unk_1BADA0920);
  sub_1BAD0F758(&unk_1EDBA5470, type metadata accessor for TraitKey, &unk_1BADA08C0);

  return sub_1BAD9D968();
}

uint64_t sub_1BAD0FA64(uint64_t a1)
{
  sub_1BAD0F758(&qword_1EDBA61D0, type metadata accessor for AttributeName, &unk_1BADA09F0);
  sub_1BAD0F758(&qword_1EBC2A080, type metadata accessor for AttributeName, &unk_1BADA06AC);

  return sub_1BAD9D968();
}

uint64_t sub_1BAD0FB20(uint64_t a1)
{
  sub_1BAD0F758(&qword_1EBC2A088, type metadata accessor for FeatureKey, &unk_1BADA05B4);
  sub_1BAD0F758(&qword_1EBC2A090, type metadata accessor for FeatureKey, &unk_1BADA0554);

  return sub_1BAD9D968();
}

uint64_t sub_1BAD0FBDC@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1BAD9CF38();

  *a2 = v3;
  return result;
}

uint64_t sub_1BAD0FC24(uint64_t a1)
{
  sub_1BAD0F758(&qword_1EBC2A068, type metadata accessor for NQMLAttributeName, &unk_1BADA09B0);
  sub_1BAD0F758(&unk_1EBC2A070, type metadata accessor for NQMLAttributeName, &unk_1BADA07B8);

  return sub_1BAD9D968();
}

uint64_t sub_1BAD0FCE0()
{
  v0 = sub_1BAD9CF68();
  v1 = MEMORY[0x1BFB02730](v0);

  return v1;
}

uint64_t sub_1BAD0FD1C(uint64_t a1)
{
  sub_1BAD9CF68();
  sub_1BAD9D018();
}

uint64_t sub_1BAD0FD70(uint64_t a1)
{
  sub_1BAD9CF68();
  sub_1BAD9DB48();
  sub_1BAD9D018();
  v1 = sub_1BAD9DB88();

  return v1;
}

uint64_t sub_1BAD0FDE4(void *a1, uint64_t *a2)
{
  v2 = sub_1BAD9CF68();
  v4 = v3;
  if (v2 == sub_1BAD9CF68() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1BAD9DA98();
  }

  return v7 & 1;
}

unint64_t sub_1BAD101D0()
{
  result = qword_1EBC29F88;
  if (!qword_1EBC29F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC29F88);
  }

  return result;
}

unint64_t sub_1BAD10228()
{
  result = qword_1EBC29F90;
  if (!qword_1EBC29F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC29F90);
  }

  return result;
}

unint64_t sub_1BAD10280()
{
  result = qword_1EBC29F98;
  if (!qword_1EBC29F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC29F98);
  }

  return result;
}

unint64_t sub_1BAD102D8()
{
  result = qword_1EBC29FA0;
  if (!qword_1EBC29FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC29FA0);
  }

  return result;
}

uint64_t sub_1BAD1032C(uint64_t a1, uint64_t a2)
{
  if (a1 == 120 && a2 == 0xE100000000000000 || (sub_1BAD9DA98() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 121 && a2 == 0xE100000000000000 || (sub_1BAD9DA98() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (sub_1BAD9DA98() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_1BAD9DA98();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1BAD10474(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEB00000000737265;
  if (v4 || (sub_1BAD9DA98() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_1BAD9DA98() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x54746E656D656C65 && a2 == 0xEB00000000657079 || (sub_1BAD9DA98() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6572646C696863 && a2 == 0xE800000000000000 || (sub_1BAD9DA98() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1952671090 && a2 == 0xE400000000000000 || (sub_1BAD9DA98() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x737469617274 && a2 == 0xE600000000000000 || (sub_1BAD9DA98() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6449776F646E6977 && a2 == 0xE800000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_1BAD9DA98();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_1BAD106BC()
{
  result = qword_1EBC29FC8;
  if (!qword_1EBC29FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC29FC8);
  }

  return result;
}

uint64_t sub_1BAD10710(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1BAD10748(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_1BAD10780()
{
  result = qword_1EBC29FE8;
  if (!qword_1EBC29FE8)
  {
    sub_1BAD053C8(255, &qword_1EBC29FE0, 0x1E69DCE70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC29FE8);
  }

  return result;
}

void sub_1BAD10BC8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1BAD10D34(uint64_t a1)
{
  swift_getObjectType();
  sub_1BAD116E0(a1, &v24);
  if (!v27)
  {
    sub_1BAD05470(&v24);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v16 = 0;
    return v16 & 1;
  }

  v3 = v18;
  v4 = *(v1 + OBJC_IVAR____TtC5JetUIP33_925E47A64C9969C34ACE8A7AFC4CB7868CacheKey_useCase + 8);
  v5 = *(v1 + OBJC_IVAR____TtC5JetUIP33_925E47A64C9969C34ACE8A7AFC4CB7868CacheKey_useCase + 16);
  v6 = *(v1 + OBJC_IVAR____TtC5JetUIP33_925E47A64C9969C34ACE8A7AFC4CB7868CacheKey_useCase + 24);
  v7 = *(v1 + OBJC_IVAR____TtC5JetUIP33_925E47A64C9969C34ACE8A7AFC4CB7868CacheKey_useCase + 32);
  v8 = *(v1 + OBJC_IVAR____TtC5JetUIP33_925E47A64C9969C34ACE8A7AFC4CB7868CacheKey_useCase + 40);
  v24 = *(v1 + OBJC_IVAR____TtC5JetUIP33_925E47A64C9969C34ACE8A7AFC4CB7868CacheKey_useCase);
  v25 = v4;
  v26 = v5;
  v27 = v6;
  v28 = v7;
  v29 = v8;
  v9 = *&v18[OBJC_IVAR____TtC5JetUIP33_925E47A64C9969C34ACE8A7AFC4CB7868CacheKey_useCase + 8];
  v10 = *&v18[OBJC_IVAR____TtC5JetUIP33_925E47A64C9969C34ACE8A7AFC4CB7868CacheKey_useCase + 16];
  v11 = *&v18[OBJC_IVAR____TtC5JetUIP33_925E47A64C9969C34ACE8A7AFC4CB7868CacheKey_useCase + 24];
  v12 = *&v18[OBJC_IVAR____TtC5JetUIP33_925E47A64C9969C34ACE8A7AFC4CB7868CacheKey_useCase + 32];
  v13 = v18[OBJC_IVAR____TtC5JetUIP33_925E47A64C9969C34ACE8A7AFC4CB7868CacheKey_useCase + 40];
  v18 = *&v18[OBJC_IVAR____TtC5JetUIP33_925E47A64C9969C34ACE8A7AFC4CB7868CacheKey_useCase];
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  sub_1BAD1120C(v24, v4, v5, v6, v7, v8);
  sub_1BAD1120C(v18, v9, v10, v11, v12, v13);
  v14 = _s5JetUI11FontUseCaseO2eeoiySbAC_ACtFZ_0(&v24, &v18);
  sub_1BAD11750(v18, v19, v20, v21, v22, v23);
  sub_1BAD11750(v24, v25, v26, v27, v28, v29);
  if (!v14)
  {

    goto LABEL_7;
  }

  sub_1BAD117DC();
  v15 = *&v3[OBJC_IVAR____TtC5JetUIP33_925E47A64C9969C34ACE8A7AFC4CB7868CacheKey_traitCollection];
  v16 = sub_1BAD9D568();

  return v16 & 1;
}

id sub_1BAD10F6C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BAD11000()
{
  result = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  qword_1EDBA61D8 = result;
  return result;
}

Class static UIFontDescriptor.preferredFontDescriptor(forUseWith:compatibleWith:)(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = *(a1 + 40);
  v9 = type metadata accessor for CacheKey();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtC5JetUIP33_925E47A64C9969C34ACE8A7AFC4CB7868CacheKey_useCase];
  *v11 = v3;
  *(v11 + 1) = v4;
  *(v11 + 2) = v5;
  *(v11 + 3) = v6;
  *(v11 + 4) = v7;
  v11[40] = v8;
  *&v10[OBJC_IVAR____TtC5JetUIP33_925E47A64C9969C34ACE8A7AFC4CB7868CacheKey_traitCollection] = a2;
  v12 = a2;
  sub_1BAD1120C(v3, v4, v5, v6, v7, v8);
  v17.receiver = v10;
  v17.super_class = v9;
  v13 = objc_msgSendSuper2(&v17, sel_init);
  if (qword_1EDBA6230 != -1)
  {
    swift_once();
  }

  isa = [qword_1EDBA61D8 objectForKey_];
  if (!isa)
  {
    LOBYTE(v16) = v8;
    isa = FontUseCase.makeFontDescriptor(compatibleWith:)(v12).super.isa;
    [qword_1EDBA61D8 setObject:isa forKey:{v13, v3, v4, v5, v6, v7, v16}];
  }

  return isa;
}

id sub_1BAD1120C(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 > 1u)
  {
    if (a6 == 2 || a6 == 3)
    {
    }
  }

  else
  {

    return result;
  }

  return result;
}

id sub_1BAD11298()
{
  result = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  qword_1EDBA61C0 = result;
  return result;
}

double UIFont.estimatedFirstBaseline.getter()
{
  [v0 lineHeight];
  v2 = v1;
  [v0 descender];
  return v2 + v3;
}

id static FontUseCase.removeCachedFontsAndDescriptors()()
{
  if (qword_1EDBA6230 != -1)
  {
    swift_once();
  }

  [qword_1EDBA61D8 removeAllObjects];
  if (qword_1EDBA61B8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDBA61C0;

  return [v0 removeAllObjects];
}

id _sSo6UIFontC5JetUIE13preferredFont10forUseWith010compatibleH0AbC0eG4CaseO_So17UITraitCollectionCtFZ_0(uint64_t a1, void *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = type metadata accessor for CacheKey();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtC5JetUIP33_925E47A64C9969C34ACE8A7AFC4CB7868CacheKey_useCase];
  *v11 = v3;
  *(v11 + 1) = v4;
  *(v11 + 2) = v5;
  *(v11 + 3) = v6;
  *(v11 + 4) = v7;
  v11[40] = v8;
  *&v10[OBJC_IVAR____TtC5JetUIP33_925E47A64C9969C34ACE8A7AFC4CB7868CacheKey_traitCollection] = a2;
  v12 = a2;
  sub_1BAD1120C(v3, v4, v5, v6, v7, v8);
  v23.receiver = v10;
  v23.super_class = v9;
  v13 = objc_msgSendSuper2(&v23, sel_init);
  if (qword_1EDBA61B8 != -1)
  {
    swift_once();
  }

  v14 = [qword_1EDBA61C0 objectForKey_];
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v16 = objc_allocWithZone(v9);
    v17 = &v16[OBJC_IVAR____TtC5JetUIP33_925E47A64C9969C34ACE8A7AFC4CB7868CacheKey_useCase];
    *v17 = v3;
    *(v17 + 1) = v4;
    *(v17 + 2) = v5;
    *(v17 + 3) = v6;
    *(v17 + 4) = v7;
    v17[40] = v8;
    *&v16[OBJC_IVAR____TtC5JetUIP33_925E47A64C9969C34ACE8A7AFC4CB7868CacheKey_traitCollection] = v12;
    compatibleWith = v12;
    sub_1BAD1120C(v3, v4, v5, v6, v7, v8);
    v22.receiver = v16;
    v22.super_class = v9;
    v18 = objc_msgSendSuper2(&v22, sel_init);
    if (qword_1EDBA6230 != -1)
    {
      swift_once();
    }

    isa = [qword_1EDBA61D8 objectForKey_];
    if (!isa)
    {
      isa = FontUseCase.makeFontDescriptor(compatibleWith:)(compatibleWith).super.isa;
      [qword_1EDBA61D8 setObject:isa forKey:v18];
    }

    v15 = [objc_opt_self() fontWithDescriptor:isa size:0.0];
    [qword_1EDBA61C0 setObject:v15 forKey:v13];

    v13 = isa;
  }

  return v15;
}

uint64_t sub_1BAD116E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A120, &unk_1BADA1A10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BAD11750(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 > 1u)
  {
    if (a6 == 2 || a6 == 3)
    {
    }
  }

  else
  {
  }
}

unint64_t sub_1BAD117DC()
{
  result = qword_1EDBA6088;
  if (!qword_1EDBA6088)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBA6088);
  }

  return result;
}

double sub_1BAD118A4()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 16))(v4, v1, v2);
  return ceil(*&v4[2]);
}

double sub_1BAD11920()
{
  v1 = v0[5];
  v10 = v0[4];
  v11 = v1;
  v12 = *(v0 + 96);
  v2 = v0[1];
  v6 = *v0;
  v7 = v2;
  v3 = v0[3];
  v8 = v0[2];
  v9 = v3;
  DisjointStack.Placements.union.getter(v5);
  return ceil(v5[2]);
}

void TextMeasurable.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:)(void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v15 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  v16 = sub_1BAD9CF38();

  v17 = [v15 initWithString_];

  v18 = v17;
  v19 = [v18 length];
  [v18 addAttribute:*MEMORY[0x1E69DB648] value:a3 range:{0, v19}];
  v20 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v20 setAlignment_];
  [v20 setLineBreakMode_];
  [v20 setLineBreakStrategy_];
  if (a6)
  {
    [v20 setMinimumLineHeight_];
    [v20 setMaximumLineHeight_];
  }

  [v18 addAttribute:*MEMORY[0x1E69DB688] value:v20 range:{0, v19}];

  *a9 = v18;
  *(a9 + 8) = a7;
  *(a9 + 16) = a8 & 1;
}

void TextMeasurable.init(attributedText:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v14 = *MEMORY[0x1E69DB648];
  v37 = sub_1BAD053C8(0, &qword_1EDBA58E0, 0x1E69DB878);
  *&aBlock = a2;
  sub_1BAD11FA4(&aBlock, v41);
  v15 = a2;
  v16 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = v16;
  sub_1BAD13C60(v41, v14, isUniquelyReferenced_nonNull_native);
  v18 = v40;
  v19 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v19 setAlignment_];
  [v19 setLineBreakMode_];
  [v19 setLineBreakStrategy_];
  if (a5)
  {
    [v19 setMinimumLineHeight_];
    [v19 setMaximumLineHeight_];
  }

  v20 = *MEMORY[0x1E69DB688];
  v37 = sub_1BAD053C8(0, &qword_1EDBA5BB8, 0x1E69DB7C8);
  *&aBlock = v19;
  sub_1BAD11FA4(&aBlock, v41);
  v21 = v19;
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v40 = v18;
  sub_1BAD13C60(v41, v20, v22);
  v23 = [a1 string];
  if (!v23)
  {
    sub_1BAD9CF68();
    v23 = sub_1BAD9CF38();
  }

  v24 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  type metadata accessor for Key(0);
  sub_1BAD14AA0(&qword_1EDBA5D40, type metadata accessor for Key, &unk_1BADA0328);
  v25 = sub_1BAD9CE88();

  v26 = [v24 initWithString:v23 attributes:v25];

  v27 = [a1 length];
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1BAD13DA0;
  *(v29 + 24) = v28;
  v38 = sub_1BAD13DA8;
  v39 = v29;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v36 = sub_1BAD12750;
  v37 = &block_descriptor;
  v30 = _Block_copy(&aBlock);
  v31 = v26;

  [a1 enumerateAttributesInRange:0 options:v27 usingBlock:{0, v30}];
  _Block_release(v30);
  LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

  if (v30)
  {
    __break(1u);
  }

  else
  {
    v32 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithAttributedString_];

    *a8 = v32;
    *(a8 + 8) = a6;
    *(a8 + 16) = a7 & 1;
  }
}

_OWORD *sub_1BAD11FA4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

JetUI::TextMeasurable __swiftcall TextMeasurable.init(attributedText:numberOfLines:isLanguageAware:)(NSAttributedString attributedText, Swift::Int numberOfLines, Swift::Bool isLanguageAware)
{
  *v3 = attributedText;
  *(v3 + 8) = numberOfLines;
  *(v3 + 16) = isLanguageAware;
  result.numberOfLines = numberOfLines;
  result.attributedText = attributedText;
  result.isLanguageAware = isLanguageAware;
  return result;
}

Swift::Bool __swiftcall TextMeasurable.isTruncated(whenFitting:)(CGSize whenFitting)
{
  height = whenFitting.height;
  width = whenFitting.width;
  v4 = *v1;
  v5 = *(v1 + 8);
  if ([*v1 length] < 1)
  {
    return 0;
  }

  result = 1;
  if (width > 0.0 && height > 0.0)
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E69DB7E0]) init];
    v8 = v7;
    if (!v5)
    {
      [v7 setMaximumNumberOfLines_];
    }

    [v4 boundingRectWithSize:1 options:v8 context:{width, 1.79769313e308}];
    v9 = CGRectGetHeight(v10);

    return v9 > height;
  }

  return result;
}

void TextMeasurable.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  v7 = sub_1BAD9DA68();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v56 - v12;
  v14 = *v3;
  v15 = *(v3 + 8);
  LODWORD(v57) = *(v3 + 16);
  v16 = [objc_allocWithZone(MEMORY[0x1E69DB7E0]) init];
  [v16 setWantsBaselineOffset_];
  if (v15 >= 1)
  {
    [v16 setMaximumNumberOfLines_];
  }

  v58 = v16;
  [v14 boundingRectWithSize:1 options:v16 context:{a2, a3, v14}];
  v18 = v17;
  v20 = v19;
  v21 = [a1 traitCollection];
  v22 = *MEMORY[0x1E69E7040];
  v23 = *(v8 + 104);
  v23(v13, v22, v7);
  v24 = v21;
  v25 = [v21 displayScale];
  if (v27 <= 0.0)
  {
    v27 = ForJetUIOnly_MainScreenScale(v25, v26);
  }

  sub_1BAD794F8(v13, v27, v18);
  v28 = *(v8 + 8);
  v28(v13, v7);
  v23(v10, v22, v7);
  v29 = v24;
  v30 = [v24 displayScale];
  if (v32 <= 0.0)
  {
    v32 = ForJetUIOnly_MainScreenScale(v30, v31);
  }

  sub_1BAD794F8(v10, v32, v20);
  v28(v10, v7);
  v33 = v58;
  [v58 firstBaselineOffset];
  [v33 baselineOffset];
  if (LODWORD(v57))
  {
    v34 = [objc_opt_self() preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] compatibleWithTraitCollection:0];
    v35 = [v56 string];
    v36 = sub_1BAD9CF68();
    v38 = v37;

    aBlock = v36;
    v60 = v38;
    if (qword_1EDBA61E8 != -1)
    {
      swift_once();
    }

    v39 = sub_1BAD9C248();
    __swift_project_value_buffer(v39, qword_1EDBA61F0);
    sub_1BAD13DE8();
    sub_1BAD9D5F8();
    v41 = v40;

    if (v41)
    {
    }

    else
    {
      v42 = *(MEMORY[0x1E69DDCE0] + 16);
      v66 = *MEMORY[0x1E69DDCE0];
      v67 = v42;
      v65 = 0;
      v43 = v56;
      v44 = [v56 length];
      v45 = *MEMORY[0x1E69DB648];
      v46 = swift_allocObject();
      *(v46 + 16) = &v66;
      *(v46 + 24) = &v65;
      v47 = swift_allocObject();
      *(v47 + 16) = sub_1BAD13E3C;
      *(v47 + 24) = v46;
      v63 = sub_1BAD13E44;
      v64 = v47;
      aBlock = MEMORY[0x1E69E9820];
      v60 = 1107296256;
      v61 = sub_1BAD1268C;
      v62 = &block_descriptor_12;
      v48 = _Block_copy(&aBlock);

      [v43 enumerateAttribute:v45 inRange:0 options:v44 usingBlock:{0x100000, v48}];
      _Block_release(v48);
      LOBYTE(v44) = swift_isEscapingClosureAtFileLocation();

      if (v44)
      {
        __break(1u);
      }

      else
      {
        if (v65)
        {
        }

        else
        {
          v49 = UIFont.languageAwareOutsets.getter();
          v51 = v50;
          v53 = v52;
          v57 = a2;
          v55 = v54;

          *&v66 = v49;
          *(&v66 + 1) = v51;
          *&v67 = v53;
          *(&v67 + 1) = v55;
        }
      }
    }
  }

  else
  {
  }
}

uint64_t sub_1BAD1268C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_1BAD11FA4(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_1BAD05470(v13);
}

uint64_t sub_1BAD12750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_1BAD14AA0(&qword_1EDBA5D40, type metadata accessor for Key, &unk_1BADA0328);
  v9 = sub_1BAD9CE98();
  v8(v9, a3, a4, a5);
}

_OWORD *sub_1BAD12820(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A130, &unk_1BADA1910);
  v35 = v4;
  result = sub_1BAD9D8F8();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 4;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_1BAD11FA4(v22, v36);
      }

      else
      {
        sub_1BAD149E0(v22, v36);
        v23 = v21;
      }

      sub_1BAD9CF68();
      sub_1BAD9DB48();
      sub_1BAD9D018();
      v24 = sub_1BAD9DB88();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 6) + 8 * v15) = v21;
      result = sub_1BAD11FA4(v36, (*(v7 + 7) + 32 * v15));
      ++*(v7 + 2);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1BAD12AF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A128, &unk_1BADA19F0);
  v37 = v4;
  result = sub_1BAD9D8F8();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1BAD9DB48();
      sub_1BAD9D018();
      result = sub_1BAD9DB88();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1BAD12DB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1BAD9CA78();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A150, &unk_1BADA0B20);
  v39 = v4;
  result = sub_1BAD9D8F8();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        (*v40)(v42, v25, v43);
        sub_1BAD11FA4((*(v9 + 56) + 32 * v23), v44);
      }

      else
      {
        (*v36)(v42, v25, v43);
        sub_1BAD149E0(*(v9 + 56) + 32 * v23, v44);
      }

      sub_1BAD14AA0(&qword_1EBC2A7C0, MEMORY[0x1E69AB090], MEMORY[0x1E69AB098]);
      result = sub_1BAD9CED8();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v37;
        v9 = v38;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v41 * v19), v42, v43);
      result = sub_1BAD11FA4(v44, (*(v11 + 56) + 32 * v19));
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1BAD13188(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A148, &qword_1BADA0B18);
  v34 = v4;
  result = sub_1BAD9D8F8();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1BAD9DB48();
      sub_1BAD9D018();
      result = sub_1BAD9DB88();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1BAD13428(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A140, &unk_1BADA1A00);
  v33 = v4;
  result = sub_1BAD9D8F8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_1BAD0B40C(v24, v34);
      }

      else
      {
        sub_1BAD14A3C(v24, v34);
      }

      sub_1BAD9DB48();
      sub_1BAD9D018();
      result = sub_1BAD9DB88();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1BAD0B40C(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1BAD136EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A158, &unk_1BADA1930);
  v33 = v4;
  result = sub_1BAD9D8F8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        sub_1BAD14B3C(v34, *(&v34 + 1));
      }

      sub_1BAD9DB48();
      sub_1BAD9D018();
      result = sub_1BAD9DB88();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1BAD139A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A138, &unk_1BADA1920);
  v33 = v4;
  result = sub_1BAD9D8F8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {
      }

      sub_1BAD9DB48();
      sub_1BAD9D018();
      result = sub_1BAD9DB88();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

_OWORD *sub_1BAD13C60(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1BAD2E780();
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1BAD21B0C();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1BAD12820(v13, a3 & 1);
    v8 = sub_1BAD2E780();
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = sub_1BAD9DAE8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1(v19);

    return sub_1BAD11FA4(a1, v19);
  }

  else
  {
    sub_1BAD14848(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1BAD13DE8()
{
  result = qword_1EDBA5BE0;
  if (!qword_1EDBA5BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBA5BE0);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1BAD13E80(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BAD13EC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BAD13F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1BAD2D7C4(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1BAD12AF0(v18, a5 & 1);
      v13 = sub_1BAD2D7C4(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1BAD9DAE8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1BAD21C8C();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

_OWORD *sub_1BAD140A0(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1BAD9CA78();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1BAD2D6FC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1BAD21E04();
      goto LABEL_7;
    }

    sub_1BAD12DB0(v17, a3 & 1);
    v23 = sub_1BAD2D6FC(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1BAD148B0(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1BAD9DAE8();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 32 * v14);
  __swift_destroy_boxed_opaque_existential_1(v21);

  return sub_1BAD11FA4(a1, v21);
}

unint64_t sub_1BAD14278(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1BAD2D7C4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1BAD13188(v16, a4 & 1);
      result = sub_1BAD2D7C4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1BAD9DAE8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1BAD22088();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + result) = a1 & 1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + result) = a1 & 1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_1BAD143E4(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1BAD2D7C4(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1BAD221F0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1BAD13428(v16, a4 & 1);
    v11 = sub_1BAD2D7C4(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1BAD9DAE8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_1BAD0B40C(a1, v22);
  }

  else
  {
    sub_1BAD14970(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1BAD14538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1BAD2D7C4(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1BAD136EC(v18, a5 & 1);
      v13 = sub_1BAD2D7C4(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1BAD9DAE8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1BAD22398();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    v25 = *v24;
    v26 = v24[1];
    *v24 = a1;
    v24[1] = a2;

    return sub_1BAD14AE8(v25, v26);
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v23[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v23[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v23[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v31;
}

uint64_t sub_1BAD146C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1BAD2E784();
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1BAD139A8(v18, a5 & 1);
      v13 = sub_1BAD2E784();
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1BAD9DAE8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1BAD2251C();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

_OWORD *sub_1BAD14848(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1BAD11FA4(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *sub_1BAD148B0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1BAD9CA78();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_1BAD11FA4(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1BAD14970(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1BAD0B40C(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1BAD149E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1BAD14A3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1BAD14AA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BAD14AE8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1BAD14B3C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1BAD14BA8()
{
  v0 = sub_1BAD9C248();
  __swift_allocate_value_buffer(v0, qword_1EBC299C8);
  __swift_project_value_buffer(v0, qword_1EBC299C8);
  return sub_1BAD9C1E8();
}

UIColor __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UIColor.init(htmlColor:)(Swift::String htmlColor)
{
  object = htmlColor._object;
  countAndFlagsBits = htmlColor._countAndFlagsBits;
  v4 = sub_1BAD9C248();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = countAndFlagsBits;
  v66 = object;
  if (qword_1EBC299C0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v4, qword_1EBC299C8);
  sub_1BAD9C228();
  sub_1BAD13DE8();
  sub_1BAD9D5F8();
  v9 = v8;
  (*(v5 + 8))(v7, v4);
  if ((v9 & 1) == 0)
  {
    v12 = sub_1BAD9D0E8();
    v14 = v13;
    v15 = MEMORY[0x1BFB02640](v12);
    v17 = v16;

    sub_1BAD15200();
    swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v17;
    *(v18 + 16) = countAndFlagsBits;
    *(v18 + 24) = object;
    *(v18 + 32) = 0;
    goto LABEL_28;
  }

  v10 = sub_1BAD9D0B8();
  v63 = v1;
  if (v10)
  {
    v11 = sub_1BAD9D038();
  }

  else
  {
    v11 = 15;
  }

  v57 = countAndFlagsBits;
  v58 = object;
  v19 = sub_1BAD151B4(v11, countAndFlagsBits, object);
  v21 = v20;
  v23 = v22;
  v24 = sub_1BAD9D5C8() - 3;
  if (v24 >= 6 || ((0x2Bu >> v24) & 1) == 0)
  {
    v14 = sub_1BAD9D5C8();

    sub_1BAD15200();
    swift_allocError();
    v47 = v57;
    v46 = v58;
    *v48 = v14;
    *(v48 + 8) = v47;
    *(v48 + 16) = v46;
    *(v48 + 24) = 0;
    *(v48 + 32) = 1;
LABEL_28:
    swift_willThrow();
    return v14;
  }

  v25 = dbl_1BADA0C50[v24];
  v62 = qword_1BADA0C80[v24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A168, &qword_1BADA0B40);
  inited = swift_initStackObject();
  v27 = 0;
  v28 = 0;
  *(inited + 16) = xmmword_1BADA0B30;
  *(inited + 32) = 0;
  v56 = (inited + 32);
  *(inited + 40) = 0;
  *(inited + 48) = 0;
  *(inited + 56) = 0x3FF0000000000000;
  v61 = inited;
  v59 = v19;
  v60 = v21;
  do
  {
    v29 = sub_1BAD9D5A8();
    if (v30)
    {
      break;
    }

    v31 = v29;
    result.super.isa = sub_1BAD9D5A8();
    if (v33)
    {
      break;
    }

    if (result.super.isa >> 14 < v31 >> 14)
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v34 = v23;
    v37 = sub_1BAD9D5D8();
    v39 = v38;
    v40 = v35;
    v14 = v36;
    if ((v37 ^ v38) < 0x4000)
    {
      goto LABEL_35;
    }

    if ((v36 & 0x1000000000000000) != 0)
    {

      v43 = sub_1BAD15254(v37, v39, v40, v14, 16);
      HIDWORD(v55) = v45;

      if ((v55 & 0x100000000) != 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if ((v36 & 0x2000000000000000) != 0)
      {
        v65 = v35;
        v66 = v36 & 0xFFFFFFFFFFFFFFLL;
        v41 = &v65;
      }

      else if ((v35 & 0x1000000000000000) != 0)
      {
        v41 = ((v36 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v41 = sub_1BAD9D848();
      }

      v42 = v63;
      v43 = sub_1BAD15C58(v41, v37, v39, v40, v14, 16);
      v63 = v42;
      v64 = v44 & 1;
      if (v44)
      {
LABEL_35:

        v50 = MEMORY[0x1BFB02640](v37, v39, v40, v14);
        v52 = v51;

        sub_1BAD15200();
        swift_allocError();
        *v53 = v50;
        *(v53 + 8) = v52;
        v54 = v58;
        *(v53 + 16) = v57;
        *(v53 + 24) = v54;
        *(v53 + 32) = 2;
        swift_willThrow();
        swift_setDeallocating();
        return v14;
      }
    }

    inited = v61;
    if (v28 >= *(v61 + 16))
    {
      goto LABEL_37;
    }

    *(v61 + 8 * v28 + 32) = v43 / v25;
    v27 += v62;
    ++v28;
    v23 = v34;
  }

  while (v28 != 4);

  result.super.isa = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v49 = *(inited + 16);
  if (!v49)
  {
    goto LABEL_38;
  }

  if (v49 == 1)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v49 < 3)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v49 != 3)
  {
    v14 = [(objc_class *)result.super.isa initWithRed:*v56 green:*(inited + 40) blue:*(inited + 48) alpha:*(inited + 56)];
    swift_setDeallocating();
    return v14;
  }

LABEL_41:
  __break(1u);
  return result;
}

unint64_t sub_1BAD151B4(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1BAD9D0E8();
  }

  __break(1u);
  return result;
}

unint64_t sub_1BAD15200()
{
  result = qword_1EBC2A160;
  if (!qword_1EBC2A160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A160);
  }

  return result;
}

unsigned __int8 *sub_1BAD15254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_1BAD1618C();

  result = sub_1BAD9D0D8();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1BAD157EC(result, v7);
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1BAD9D848();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1BAD157EC(uint64_t a1, unint64_t a2)
{
  v2 = sub_1BAD9D0E8();
  v6 = sub_1BAD1586C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1BAD1586C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1BAD9D5B8();
    if (!v9 || (v10 = v9, v11 = sub_1BAD159C4(v9, 0), v12 = sub_1BAD15A38(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1BAD9D008();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1BAD9D008();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1BAD9D848();
LABEL_4:

  return sub_1BAD9D008();
}

void *sub_1BAD159C4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A178, &qword_1BADA0C48);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_1BAD15A38(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1BAD5C468(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1BAD9D088();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1BAD9D848();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1BAD5C468(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1BAD9D058();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1BAD15C58(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1BAD5C468(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_1BAD9D078();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1BAD5C468(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1BAD5C468(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_1BAD9D078();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}