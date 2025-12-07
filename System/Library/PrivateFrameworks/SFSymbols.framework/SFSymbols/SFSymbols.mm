SFSSymbolAssetInfo *SFSResolveNameAndStatus(void *a1, void *a2, int a3)
{
  v5 = a1;
  if ([a2 integerValue] != 1)
  {
    v12 = [SFSSymbolAssetInfo alloc];
    v7 = +[SFSCoreGlyphsBundle public];
    v8 = v12;
    v9 = v5;
    v10 = v7;
    v11 = 0;
    goto LABEL_5;
  }

  if (a3)
  {
    v6 = [SFSSymbolAssetInfo alloc];
    v7 = +[SFSCoreGlyphsBundle private];
    v8 = v6;
    v9 = v5;
    v10 = v7;
    v11 = 1;
LABEL_5:
    v13 = [(SFSSymbolAssetInfo *)v8 initWithName:v9 bundle:v10 andType:v11];

    goto LABEL_7;
  }

  v13 = 0;
LABEL_7:

  return v13;
}

uint64_t sub_22E450940()
{
  v0 = sub_22E4509F8(&unk_2842930F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA642F0, &qword_22E47E6A0);
  result = swift_arrayDestroy();
  qword_280AC2E00 = v0;
  return result;
}

uint64_t sub_22E45099C()
{
  v0 = sub_22E4509F8(&unk_284275C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA642F0, &qword_22E47E6A0);
  result = swift_arrayDestroy();
  qword_280AC2DF0 = v0;
  return result;
}

unint64_t sub_22E4509F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641B0, &unk_22E47DB70);
    v3 = sub_22E47CFD4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_22E450B0C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22E450B0C(uint64_t a1, uint64_t a2)
{
  sub_22E47D0F4();
  sub_22E47CE24();
  v4 = sub_22E47D124();

  return sub_22E450B84(a1, a2, v4);
}

unint64_t sub_22E450B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_22E47D054())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_22E450C3C()
{
  v0 = sub_22E4509F8(&unk_284272EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA642F0, &qword_22E47E6A0);
  result = swift_arrayDestroy();
  qword_280AC2DC8 = v0;
  return result;
}

uint64_t sub_22E450C98()
{
  v0 = sub_22E4509F8(&unk_28428BE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA642F0, &qword_22E47E6A0);
  result = swift_arrayDestroy();
  qword_280AC2DD8 = v0;
  return result;
}

uint64_t sub_22E450CF4(char a1, unint64_t a2, unint64_t a3)
{
  v148 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if (a1)
  {
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    v6 = 1;
  }

  v129 = HIDWORD(a2);
  v137 = BYTE6(a3);
  if (v5 <= 1)
  {
    if (!v5)
    {
      v7 = BYTE6(a3);
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (v5 != 2)
  {
    v7 = 0;
    goto LABEL_14;
  }

  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = __OFSUB__(v8, v9);
  v7 = v8 - v9;
  if (v10)
  {
    __break(1u);
LABEL_11:
    LODWORD(v7) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
      goto LABEL_254;
    }

    v7 = v7;
  }

LABEL_14:
  if (__OFADD__(v7, 8 * v6))
  {
    goto LABEL_250;
  }

  result = sub_22E452D38(v7 + 8 * v6);
  v13 = result;
  v127 = a2 >> 32;
  v128 = a2;
  v146 = result;
  v147 = v12;
  v125 = a2 >> 16;
  v126 = a2 >> 8;
  v123 = a2 >> 40;
  v124 = a2 >> 24;
  v121 = HIBYTE(a2);
  v122 = HIWORD(a2);
  v119 = a3 >> 16;
  v120 = a3 >> 8;
  v117 = HIDWORD(a3);
  v118 = a3 >> 24;
  v135 = a3;
  v116 = a3 >> 40;
  v134 = a2;
  v136 = v5;
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      v18 = 0;
      v15 = 0;
      if (a1)
      {
        goto LABEL_30;
      }

      goto LABEL_60;
    }

    v17 = *(a2 + 16);
    v16 = *(a2 + 24);
    v10 = __OFSUB__(v16, v17);
    v14 = v16 - v17;
    if (v10)
    {
      goto LABEL_255;
    }

    if (a1)
    {
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  if (v5)
  {
    LODWORD(v14) = v129 - a2;
    if (__OFSUB__(v129, a2))
    {
      goto LABEL_256;
    }

    v14 = v14;
    if (a1)
    {
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  v14 = v137;
  if ((a1 & 1) == 0)
  {
LABEL_22:
    if (v5 == 2)
    {
      v38 = *(a2 + 16);
      v37 = *(a2 + 24);
      v10 = __OFSUB__(v37, v38);
      v18 = v37 - v38;
      if (!v10)
      {
        goto LABEL_60;
      }

      __break(1u);
    }

    else if (v5 == 1)
    {
      LODWORD(v18) = v129 - a2;
      if (__OFSUB__(v129, a2))
      {
        goto LABEL_257;
      }

      v18 = v18;
      goto LABEL_60;
    }

    v18 = v137;
LABEL_60:
    v10 = __OFADD__(v18, 8);
    v39 = v18 + 8;
    if (v10)
    {
      goto LABEL_253;
    }

    v141 = v6;
    v40 = 0;
    v41 = v39 % 10;
    v140 = v39 % 10;
    while (1)
    {
      v42 = (v41 + v40) % 10;
      if (v42 < 0)
      {
        goto LABEL_200;
      }

      v43 = byte_28428BDF0[v40 + 32] + byte_28428BDC0[v42 + 32] + 0x80;
      v44 = v12 >> 62;
      if ((v12 >> 62) > 1)
      {
        if (v44 != 2)
        {
          goto LABEL_260;
        }

        if (v40 < *(v13 + 16))
        {
          goto LABEL_214;
        }

        if (v40 >= *(v13 + 24))
        {
          goto LABEL_216;
        }

        v45 = v12 & 0x3FFFFFFFFFFFFFFFLL;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = *(v13 + 16);
          v46 = *(v13 + 24);
          if (sub_22E47CBF4())
          {
            if (__OFSUB__(v47, sub_22E47CC14()))
            {
              goto LABEL_247;
            }

            if (__OFSUB__(v46, v47))
            {
              goto LABEL_232;
            }
          }

          else if (__OFSUB__(v46, v47))
          {
            goto LABEL_232;
          }

          sub_22E47CC24();
          swift_allocObject();
          v53 = sub_22E47CBE4();

          v45 = v53;
          v41 = v140;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = *(v13 + 16);
          v55 = *(v13 + 24);
          sub_22E47CD04();
          v56 = swift_allocObject();
          *(v56 + 16) = v54;
          *(v56 + 24) = v55;

          v13 = v56;
        }

        sub_22E47CBD4();
        v57 = sub_22E47CBF4();
        if (!v57)
        {
          goto LABEL_262;
        }

        v58 = v57;
        v59 = sub_22E47CC14();
        if (__OFSUB__(v40, v59))
        {
          __break(1u);
LABEL_94:
          v33 = 0;
          v146 = v13;
          v147 = v12;
          v132 = 8;
          LOBYTE(v6) = v141;
LABEL_95:
          v60 = v134;
          v61 = v135;
          sub_22E47CD14();
          if (v140 < 0)
          {
            goto LABEL_251;
          }

          v131 = v6;
          if ((byte_28428BDC0[v140 + 32] * v6) == byte_28428BDC0[v140 + 32] * v6)
          {
            sub_22E47CD24();
            v62 = v33 | 1;
            v63 = __OFSUB__(v129, v134);
            v114 = v63;
            v35 = v146;
            v36 = v147;
            v130 = v33 + 0x7FFFFFFFFFFFFFFFLL;
            v64 = 1;
            v112 = v147;
            v113 = v146;
            v65 = v136;
            if (v136 <= 1)
            {
              goto LABEL_192;
            }

            while (2)
            {
              if (v65 != 2)
              {
                v36 = v112;
                v35 = v113;
LABEL_197:
                sub_22E45286C(v35, v36);
                v34 = v35;
                goto LABEL_198;
              }

              v110 = *(v60 + 16);
              v109 = *(v60 + 24);
              v10 = __OFSUB__(v109, v110);
              v111 = v109 - v110;
              if (!v10)
              {
LABEL_194:
                if (v62 >= v111)
                {
                  goto LABEL_197;
                }

                v66 = v36 >> 62;
                v141 = v64;
                v67 = v35;
                if (a1)
                {
                  v68 = v64 - 1;
                  if (v66 > 1)
                  {
                    if (v66 != 2)
                    {
                      goto LABEL_268;
                    }

                    if (v64 <= *(v35 + 16))
                    {
                      goto LABEL_235;
                    }

                    if (v64 > *(v35 + 24))
                    {
                      goto LABEL_240;
                    }

                    v74 = sub_22E47CBF4();
                    if (!v74)
                    {
                      goto LABEL_271;
                    }

                    v70 = v74;
                    v75 = sub_22E47CC14();
                    v72 = v68 - v75;
                    if (__OFSUB__(v68, v75))
                    {
                      goto LABEL_244;
                    }
                  }

                  else
                  {
                    if (!v66)
                    {
                      if (v64 > BYTE6(v36))
                      {
                        goto LABEL_236;
                      }

                      v142 = v35;
                      v73 = v36 >> 40;
                      LOWORD(v143) = v36;
                      BYTE2(v143) = BYTE2(v36);
                      HIBYTE(v143) = BYTE3(v36);
                      LOBYTE(v144) = BYTE4(v36);
                      goto LABEL_130;
                    }

                    if (v64 > v35 >> 32 || v64 <= v35)
                    {
                      goto LABEL_237;
                    }

                    v79 = sub_22E47CBF4();
                    if (!v79)
                    {
                      goto LABEL_269;
                    }

                    v70 = v79;
                    v80 = sub_22E47CC14();
                    v72 = v68 - v80;
                    if (__OFSUB__(v68, v80))
                    {
                      goto LABEL_242;
                    }
                  }
                }

                else
                {
                  v68 = v62 - 1;
                  if (v65 != 2)
                  {
                    if (v65 == 1)
                    {
                      if (v62 <= v128 || v62 > v127)
                      {
                        goto LABEL_238;
                      }

                      v69 = sub_22E47CBF4();
                      if (!v69)
                      {
                        goto LABEL_270;
                      }

                      v70 = v69;
                      v71 = sub_22E47CC14();
                      v72 = v68 - v71;
                      if (__OFSUB__(v68, v71))
                      {
                        goto LABEL_241;
                      }

                      goto LABEL_135;
                    }

                    if (v62 > v137)
                    {
                      goto LABEL_233;
                    }

                    LOBYTE(v142) = v60;
                    BYTE1(v142) = v126;
                    BYTE2(v142) = v125;
                    BYTE3(v142) = v124;
                    BYTE4(v142) = v129;
                    BYTE5(v142) = v123;
                    BYTE6(v142) = v122;
                    HIBYTE(v142) = v121;
                    LOBYTE(v143) = v61;
                    BYTE1(v143) = v120;
                    BYTE2(v143) = v119;
                    HIBYTE(v143) = v118;
                    LOBYTE(v144) = v117;
                    LOBYTE(v73) = v116;
LABEL_130:
                    HIBYTE(v144) = v73;
                    v78 = *(&v142 + v68);
LABEL_136:
                    v10 = __OFADD__(v78, v64);
                    v81 = v78 + v64;
                    if (v10)
                    {
                      goto LABEL_201;
                    }

                    v10 = __OFADD__(v81, v140);
                    v82 = v81 + v140;
                    if (v10)
                    {
                      goto LABEL_202;
                    }

                    v83 = v82 % 10;
                    if (v83 < 0)
                    {
                      goto LABEL_203;
                    }

                    if (__OFADD__(v132, v64))
                    {
                      goto LABEL_204;
                    }

                    v139 = v132 + v64;
                    v84 = byte_28428BDC0[v83 + 32];
                    if (v65 == 2)
                    {
                      if (v62 < *(v60 + 16))
                      {
                        goto LABEL_221;
                      }

                      if (v62 >= *(v60 + 24))
                      {
                        goto LABEL_223;
                      }

                      v89 = sub_22E47CBF4();
                      if (!v89)
                      {
                        goto LABEL_264;
                      }

                      v86 = v89;
                      v90 = sub_22E47CC14();
                      v88 = v62 - v90;
                      if (__OFSUB__(v62, v90))
                      {
                        goto LABEL_225;
                      }

LABEL_152:
                      v91 = *(v86 + v88);
                      v35 = v67;
                    }

                    else
                    {
                      if (v65 == 1)
                      {
                        if (v62 < v128 || v62 >= v127)
                        {
                          goto LABEL_222;
                        }

                        v85 = sub_22E47CBF4();
                        if (!v85)
                        {
                          goto LABEL_263;
                        }

                        v86 = v85;
                        v87 = sub_22E47CC14();
                        v88 = v62 - v87;
                        if (__OFSUB__(v62, v87))
                        {
                          goto LABEL_224;
                        }

                        goto LABEL_152;
                      }

                      if (v62 >= v137)
                      {
                        goto LABEL_220;
                      }

                      BYTE1(v142) = v126;
                      BYTE2(v142) = v125;
                      BYTE3(v142) = v124;
                      BYTE4(v142) = v129;
                      BYTE5(v142) = v123;
                      BYTE6(v142) = v122;
                      HIBYTE(v142) = v121;
                      LOBYTE(v143) = v61;
                      BYTE1(v143) = v120;
                      BYTE2(v143) = v119;
                      HIBYTE(v143) = v118;
                      LOBYTE(v144) = v117;
                      HIBYTE(v144) = v116;
                      v91 = *(&v142 + v62);
                    }

                    v92 = v84 * v131;
                    if ((v84 * v131) != v92)
                    {
                      goto LABEL_205;
                    }

                    v138 = v91 + v92;
                    if (v66 > 1)
                    {
                      v93 = v139;
                      if (v66 != 2)
                      {
                        goto LABEL_265;
                      }

                      v94 = v36 & 0x3FFFFFFFFFFFFFFFLL;

                      sub_22E451DD0(v35, v36);
                      sub_22E451DD0(0, 0xC000000000000000);
                      if (v139 < *(v35 + 16))
                      {
                        goto LABEL_227;
                      }

                      if (v139 >= *(v35 + 24))
                      {
                        goto LABEL_229;
                      }

                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v95 = v62;
                        v97 = *(v35 + 16);
                        v96 = *(v35 + 24);
                        if (sub_22E47CBF4())
                        {
                          if (__OFSUB__(v97, sub_22E47CC14()))
                          {
                            goto LABEL_249;
                          }

                          if (__OFSUB__(v96, v97))
                          {
                            goto LABEL_245;
                          }
                        }

                        else if (__OFSUB__(v96, v97))
                        {
                          goto LABEL_245;
                        }

                        sub_22E47CC24();
                        swift_allocObject();
                        v103 = sub_22E47CBE4();

                        v94 = v103;
                        v62 = v95;
                        v35 = v67;
                        v93 = v139;
                      }

                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v104 = *(v35 + 16);
                        v105 = *(v35 + 24);
                        sub_22E47CD04();
                        v67 = swift_allocObject();
                        *(v67 + 16) = v104;
                        *(v67 + 24) = v105;
                        v93 = v139;
                        v60 = v134;
                      }

                      sub_22E47CBD4();
                      v106 = sub_22E47CBF4();
                      if (!v106)
                      {
                        goto LABEL_267;
                      }

                      v107 = v106;
                      v108 = sub_22E47CC14();
                      if (__OFSUB__(v93, v108))
                      {
                        goto LABEL_231;
                      }

                      *(v107 + v93 - v108) = v138;
                      v36 = v94 | 0x8000000000000000;
                    }

                    else
                    {
                      if (!v66)
                      {
                        sub_22E451DD0(v35, v36);
                        v142 = v35;
                        LOWORD(v143) = v36;
                        BYTE2(v143) = BYTE2(v36);
                        HIBYTE(v143) = BYTE3(v36);
                        LOBYTE(v144) = BYTE4(v36);
                        HIBYTE(v144) = BYTE5(v36);
                        v145 = BYTE6(v36);
                        if (v139 >= BYTE6(v36))
                        {
                          goto LABEL_226;
                        }

                        *(&v142 + v139) = v138;
                        v35 = v142;
                        v36 = v115 & 0xF00000000000000 | v143 | ((v144 | (v145 << 16)) << 32);
                        v115 = v36;
                        v60 = v134;
                        v61 = v135;
                        v65 = v136;
                        goto LABEL_186;
                      }

                      v98 = v36 & 0x3FFFFFFFFFFFFFFFLL;

                      sub_22E451DD0(v35, v36);
                      sub_22E451DD0(0, 0xC000000000000000);
                      if (v139 >= v35 >> 32 || v139 < v35)
                      {
                        goto LABEL_228;
                      }

                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {

                        if (sub_22E47CBF4() && __OFSUB__(v35, sub_22E47CC14()))
                        {
                          goto LABEL_248;
                        }

                        sub_22E47CC24();
                        swift_allocObject();
                        v99 = sub_22E47CBE4();

                        v98 = v99;
                      }

                      sub_22E47CBD4();
                      v100 = sub_22E47CBF4();
                      if (!v100)
                      {
                        goto LABEL_266;
                      }

                      v101 = v100;
                      v102 = sub_22E47CC14();
                      if (__OFSUB__(v139, v102))
                      {
                        goto LABEL_230;
                      }

                      *(v101 + v139 - v102) = v138;
                      v36 = v98 | 0x4000000000000000;
                    }

                    v35 = v67;
LABEL_186:
                    if (v62 == v130)
                    {
                      goto LABEL_206;
                    }

                    v64 = v141 + 1;
                    ++v62;
                    if (v65 > 1)
                    {
                      continue;
                    }

LABEL_192:
                    v111 = v137;
                    if (v65)
                    {
                      v111 = v129 - v134;
                      if (v114)
                      {
                        goto LABEL_218;
                      }
                    }

                    goto LABEL_194;
                  }

                  if (v62 <= *(v60 + 16))
                  {
                    goto LABEL_234;
                  }

                  if (v62 > *(v60 + 24))
                  {
                    goto LABEL_239;
                  }

                  v76 = sub_22E47CBF4();
                  if (!v76)
                  {
                    goto LABEL_272;
                  }

                  v70 = v76;
                  v77 = sub_22E47CC14();
                  v72 = v68 - v77;
                  if (__OFSUB__(v68, v77))
                  {
                    goto LABEL_243;
                  }
                }

LABEL_135:
                v78 = *(v70 + v72);
                v64 = v141;
                v35 = v67;
                goto LABEL_136;
              }

              break;
            }

LABEL_219:
            __break(1u);
LABEL_220:
            __break(1u);
LABEL_221:
            __break(1u);
LABEL_222:
            __break(1u);
LABEL_223:
            __break(1u);
LABEL_224:
            __break(1u);
LABEL_225:
            __break(1u);
LABEL_226:
            __break(1u);
LABEL_227:
            __break(1u);
LABEL_228:
            __break(1u);
LABEL_229:
            __break(1u);
LABEL_230:
            __break(1u);
LABEL_231:
            __break(1u);
LABEL_232:
            __break(1u);
LABEL_233:
            __break(1u);
LABEL_234:
            __break(1u);
LABEL_235:
            __break(1u);
LABEL_236:
            __break(1u);
LABEL_237:
            __break(1u);
LABEL_238:
            __break(1u);
LABEL_239:
            __break(1u);
LABEL_240:
            __break(1u);
LABEL_241:
            __break(1u);
LABEL_242:
            __break(1u);
LABEL_243:
            __break(1u);
LABEL_244:
            __break(1u);
LABEL_245:
            __break(1u);
LABEL_246:
            __break(1u);
LABEL_247:
            __break(1u);
LABEL_248:
            __break(1u);
LABEL_249:
            __break(1u);
LABEL_250:
            __break(1u);
LABEL_251:
            __break(1u);
          }

          __break(1u);
LABEL_253:
          __break(1u);
LABEL_254:
          __break(1u);
LABEL_255:
          __break(1u);
LABEL_256:
          __break(1u);
LABEL_257:
          __break(1u);
LABEL_258:
          __break(1u);
LABEL_259:
          __break(1u);
LABEL_260:
          __break(1u);
LABEL_261:
          __break(1u);
LABEL_262:
          __break(1u);
LABEL_263:
          __break(1u);
LABEL_264:
          __break(1u);
LABEL_265:
          __break(1u);
LABEL_266:
          __break(1u);
LABEL_267:
          __break(1u);
LABEL_268:
          __break(1u);
LABEL_269:
          __break(1u);
LABEL_270:
          __break(1u);
LABEL_271:
          __break(1u);
LABEL_272:
          __break(1u);
        }

        *(v58 + v40 - v59) = v43;
        v12 = v45 | 0x8000000000000000;
      }

      else if (v44)
      {
        if (v40 >= v13 >> 32 || v40 < v13)
        {
          goto LABEL_215;
        }

        v48 = v12 & 0x3FFFFFFFFFFFFFFFLL;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {

          if (sub_22E47CBF4() && __OFSUB__(v13, sub_22E47CC14()))
          {
            goto LABEL_246;
          }

          sub_22E47CC24();
          swift_allocObject();
          v49 = sub_22E47CBE4();

          v48 = v49;
          v41 = v140;
        }

        sub_22E47CBD4();
        v50 = sub_22E47CBF4();
        if (!v50)
        {
          goto LABEL_261;
        }

        v51 = v50;
        v52 = sub_22E47CC14();
        if (__OFSUB__(v40, v52))
        {
          goto LABEL_217;
        }

        *(v51 + v40 - v52) = v43;
        v12 = v48 | 0x4000000000000000;
      }

      else
      {
        v142 = v13;
        LOWORD(v143) = v12;
        BYTE2(v143) = BYTE2(v12);
        HIBYTE(v143) = BYTE3(v12);
        LOBYTE(v144) = BYTE4(v12);
        HIBYTE(v144) = BYTE5(v12);
        v145 = BYTE6(v12);
        if (v40 >= BYTE6(v12))
        {
          goto LABEL_213;
        }

        *(&v142 + v40) = v43;
        v13 = v142;
        v6 = v6 & 0xF00000000000000 | v143 | ((v144 | (v145 << 16)) << 32);
        v12 = v6;
      }

      if (++v40 == 8)
      {
        goto LABEL_94;
      }
    }
  }

LABEL_18:
  v15 = v14 % 10;
LABEL_30:
  v140 = v15;
  if (v5 == 3)
  {
    __break(1u);
    return result;
  }

  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  do
  {
    if (v5 == 1)
    {
      if (v19 < a2 || v19 >= v127)
      {
        goto LABEL_209;
      }

      v22 = sub_22E47CBF4();
      if (!v22)
      {
        goto LABEL_258;
      }

      v23 = v22;
      v24 = sub_22E47CC14();
      v25 = v19 - v24;
      if (__OFSUB__(v19, v24))
      {
        goto LABEL_211;
      }

LABEL_46:
      v21 = *(v23 + v25);
      goto LABEL_47;
    }

    if (v5)
    {
      if (v19 < *(a2 + 16))
      {
        goto LABEL_207;
      }

      if (v19 >= *(a2 + 24))
      {
        goto LABEL_210;
      }

      v26 = sub_22E47CBF4();
      if (!v26)
      {
        goto LABEL_259;
      }

      v23 = v26;
      v27 = sub_22E47CC14();
      v25 = v19 - v27;
      if (__OFSUB__(v19, v27))
      {
        goto LABEL_212;
      }

      goto LABEL_46;
    }

    if (v19 >= v137)
    {
      goto LABEL_208;
    }

    LOWORD(v142) = a2;
    BYTE2(v142) = BYTE2(a2);
    BYTE3(v142) = BYTE3(a2);
    BYTE4(v142) = v129;
    BYTE5(v142) = BYTE5(a2);
    BYTE6(v142) = BYTE6(a2);
    HIBYTE(v142) = HIBYTE(a2);
    LOBYTE(v143) = v135;
    BYTE1(v143) = v120;
    BYTE2(v143) = v119;
    HIBYTE(v143) = v118;
    LOBYTE(v144) = v117;
    HIBYTE(v144) = v116;
    v21 = *(&v142 + v19);
LABEL_47:
    v28 = (v140 + v19) % 10;
    if (v28 < 0)
    {
      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      __break(1u);
LABEL_207:
      __break(1u);
LABEL_208:
      __break(1u);
LABEL_209:
      __break(1u);
LABEL_210:
      __break(1u);
LABEL_211:
      __break(1u);
LABEL_212:
      __break(1u);
LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
      goto LABEL_219;
    }

    v29 = byte_28428BDC0[v28 + 32];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_22E452DD8(0, *(v20 + 2) + 1, 1, v20);
    }

    v31 = *(v20 + 2);
    v30 = *(v20 + 3);
    if (v31 >= v30 >> 1)
    {
      v20 = sub_22E452DD8((v30 > 1), v31 + 1, 1, v20);
    }

    ++v19;
    *(v20 + 2) = v31 + 1;
    v20[v31 + 32] = v21 - (v29 ^ 0x80);
  }

  while (v19 != 8);
  v32 = sub_22E452ED0(byte_28428BDF0, v20);

  if (v32)
  {
    v132 = 0;
    v33 = 8;
    goto LABEL_95;
  }

  v34 = 0;
  v35 = v146;
  v36 = v147;
LABEL_198:
  sub_22E451DD0(v35, v36);
  return v34;
}

uint64_t sub_22E451DD0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_22E451E24(uint64_t *a1, uint64_t a2)
{
  v92 = a2;
  v4 = sub_22E47CCE4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v73 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v73 - v12;
  sub_22E47CCB4();
  v14 = sub_22E47CCF4();
  if (v2)
  {

    v16 = v106;
    sub_22E457288(a1);
    sub_22E47CCB4();
    v17 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
    v18 = sub_22E47CC94();
    v19 = [v17 initWithURL_];

    v20 = *(v5 + 8);
    v20(v11, v4);
    v20(v13, v4);

    *(v16 + 152) = v19;
  }

  else
  {
    v21 = v15;
    v90 = v4;
    v93 = a1;
    v84 = v11;
    v89 = v13;
    v80 = v8;
    v22 = v14;
    sub_22E47CC64();
    swift_allocObject();
    sub_22E47CC54();
    sub_22E452F2C();
    sub_22E47CC44();

    v75 = v21;
    v74 = 0;
    v83 = v5;
    v81 = 0;
    v78 = 0;
    v77 = 0;
    v23 = 0;
    v85 = 0;
    v76 = 0;
    v82 = 0;
    v24 = 0;
    v25 = 0;
    v26 = v105 + 64;
    v27 = v105;
    v28 = 1 << *(v105 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & *(v105 + 64);
    v31 = (v28 + 63) >> 6;
    v91 = v22;
    v32 = v22;
LABEL_6:
    v79 = v24;
    while (1)
    {
      v33 = v106;
      if (!v30)
      {
        break;
      }

LABEL_14:
      v35 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v36 = v35 | (v25 << 6);
      v37 = (*(v27 + 48) + 16 * v36);
      v38 = *v37;
      v39 = v37[1];
      v40 = *(v27 + 56) + 40 * v36;
      v41 = *(v40 + 8);
      v88 = *v40;
      v87 = *(v40 + 16);
      v24 = *(v40 + 32);
      v86 = *(v40 + 24);

      v42._countAndFlagsBits = v38;
      v42._object = v39;
      Version.init(string:)(v42);
      if ((v97 & 1) == 0)
      {
        v43 = v94;
        if (v94 <= 1)
        {
          v45 = v95;
          v44 = v96;
          if (!v85)
          {
            goto LABEL_23;
          }

          if (v81 == v94)
          {
            if (v78 == v95)
            {
              if (v77 < v96)
              {
                v43 = v81;
                v45 = v78;
LABEL_23:
                v94 = v81;
                v95 = v78;
                v96 = v77;
                v97 = v23;
                v98 = v85;
                v99 = v76;
                v102 = 0;
                v101 = 0;
                v100 = 0;
                v103 = v82;
                v104 = v79;
                v85 = v44;
                v46 = v45;
                sub_22E4545D0(&v94, &qword_27DA64268, &qword_22E47DC10);
                v81 = v43;
                v78 = v46;
                v77 = v85;
                v23 = v88;
                v85 = v41;
                v76 = v87;
                v82 = v86;
                v32 = v91;
                goto LABEL_6;
              }
            }

            else if (v78 < v95)
            {
              v43 = v81;
              goto LABEL_23;
            }
          }

          else if (v81 < v94)
          {
            goto LABEL_23;
          }
        }
      }

      v32 = v91;
    }

    while (1)
    {
      v34 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        return;
      }

      if (v34 >= v31)
      {
        break;
      }

      v30 = *(v26 + 8 * v34);
      ++v25;
      if (v30)
      {
        v25 = v34;
        goto LABEL_14;
      }
    }

    if (!v85)
    {
      sub_22E467074();
      swift_allocError();
      *v64 = 0;
      *(v64 + 8) = 0;
      *(v64 + 16) = 2;
      swift_willThrow();
      sub_22E451DD0(v32, v75);
      (*(v83 + 8))(v89, v90);
      v94 = v81;
      v95 = v78;
      v96 = v77;
      v97 = v23;
      v98 = 0;
      goto LABEL_31;
    }

    v47 = v82;

    v48 = v84;
    sub_22E47CCB4();

    v49 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
    v50 = sub_22E47CC94();
    v51 = [v49 initWithURL_];

    v52 = *(v83 + 8);
    v53 = v90;
    v83 += 8;
    v52(v48, v90);

    *(v33 + 152) = v51;
    if (v76 == 2 || (v76 & 1) == 0)
    {
      v82 = v47;
      v61 = v52;
      v62 = v85;
      v63 = v76;
      sub_22E47CCA4();

      sub_22E457288(v48);
      sub_22E451DD0(v91, v75);
      v61(v48, v53);
      v61(v89, v53);
      v94 = v81;
      v95 = v78;
      v96 = v77;
      v97 = v23;
      v98 = v62;
      v99 = v63;
      v102 = 0;
      v101 = 0;
      v100 = 0;
      v103 = v82;
      v104 = v79;
      sub_22E4545D0(&v94, &qword_27DA64268, &qword_22E47DC10);
      return;
    }

    v54 = v23;
    v55 = v80;
    v56 = v85;
    sub_22E47CCB4();
    v57 = v74;
    v58 = sub_22E47CCF4();
    if (v57)
    {

      sub_22E467074();
      swift_allocError();
      *v60 = v54;
      *(v60 + 8) = v56;
      *(v60 + 16) = 1;
      swift_willThrow();
      sub_22E451DD0(v91, v75);
      v52(v55, v53);
      v52(v89, v53);
      v94 = v81;
      v95 = v78;
      v96 = v77;
      v97 = v54;
      v98 = v56;
LABEL_31:
      v99 = v76;
      v102 = 0;
      v101 = 0;
      v100 = 0;
      v103 = v82;
      v104 = v79;
      sub_22E4545D0(&v94, &qword_27DA64268, &qword_22E47DC10);
      return;
    }

    v65 = v58;
    v66 = v59;
    v67 = v56;
    v68 = v52;
    v93 = v54;
    v69 = v67;

    v88 = &v73;
    MEMORY[0x28223BE20](v70);
    *(&v73 - 2) = v33;
    v71 = v92;

    sub_22E45286C(v65, v66);
    sub_22E4528C0(v71, v65, v66, sub_22E4670C8, (&v73 - 4));
    sub_22E451DD0(v91, v75);
    sub_22E451DD0(v65, v66);
    v72 = v90;
    v68(v55, v90);
    v68(v89, v72);
    v94 = v81;
    v95 = v78;
    v96 = v77;
    v97 = v93;
    v98 = v69;
    v99 = v76;
    v102 = 0;
    v101 = 0;
    v100 = 0;
    v103 = v82;
    v104 = v79;
    sub_22E4545D0(&v94, &qword_27DA64268, &qword_22E47DC10);
  }
}

uint64_t sub_22E45286C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_22E4528C0(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v42 = a4;
  v41 = a5;
  v47 = a2;
  v48 = a3;
  v46 = a1;
  v49[1] = *MEMORY[0x277D85DE8];
  v5 = sub_22E47CCE4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v39 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  v40 = objc_opt_self();
  v15 = [v40 defaultManager];
  v16 = NSTemporaryDirectory();
  sub_22E47CDC4();

  sub_22E47CC84();

  v17 = sub_22E47CC94();
  v18 = *(v6 + 8);
  v44 = v6 + 8;
  v45 = v5;
  v18(v12, v5);
  v49[0] = 0;
  v19 = [v15 URLForDirectory:99 inDomain:1 appropriateForURL:v17 create:1 error:v49];

  v20 = v49[0];
  if (v19)
  {
    sub_22E47CCD4();
    v21 = v20;

    sub_22E47CCA4();
    v22 = *(v46 + 16);

    v23 = v43;
    v24 = v22(v47, v48);
    if (v23)
    {

      v26 = v45;
      v18(v9, v45);
      v18(v14, v26);
    }

    else
    {
      v28 = v24;
      v29 = v25;

      MEMORY[0x28223BE20](v30);
      *(&v39 - 4) = v28;
      *(&v39 - 3) = v29;
      *(&v39 - 2) = v9;
      sub_22E46E058(sub_22E46E574, (&v39 - 6));
      v31 = v45;
      sub_22E451DD0(v28, v29);
      v42(v9);
      v18(v9, v31);
      v33 = [v40 defaultManager];
      v34 = sub_22E47CC94();
      v49[0] = 0;
      v35 = [v33 removeItemAtURL:v34 error:v49];

      if (v35)
      {
        v36 = v49[0];
      }

      else
      {
        v37 = v49[0];
        v38 = sub_22E47CC74();

        swift_willThrow();
      }

      v18(v14, v31);
    }
  }

  else
  {
    v27 = v49[0];
    sub_22E47CC74();

    swift_willThrow();
  }

  return sub_22E451DD0(v47, v48);
}

uint64_t sub_22E452CF0(unint64_t a1, unint64_t a2)
{
  result = sub_22E450CF4(1, a1, a2);
  if (v3 >> 60 == 15)
  {
    return 0;
  }

  return result;
}

uint64_t sub_22E452D38(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_22E47CC24();
      swift_allocObject();
      sub_22E47CC04();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_22E47CD04();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

char *sub_22E452DD8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA643C0, &qword_22E47EEB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_22E452ED0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22E452F2C()
{
  result = qword_27DA640A0;
  if (!qword_27DA640A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA640A0);
  }

  return result;
}

double sub_22E452FA8@<D0>(_OWORD *a1@<X8>)
{
  v2 = sub_22E47CCE4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v19[-v7];
  v20 = MEMORY[0x277D84F90];
  *&v21 = MEMORY[0x277D84F98];
  *(&v21 + 1) = MEMORY[0x277D84F98];
  *&v22 = MEMORY[0x277D84F98];
  *(&v22 + 1) = MEMORY[0x277D84F98];
  v23 = 0uLL;
  v24 = MEMORY[0x277D84F90];
  *&v25 = MEMORY[0x277D84F98];
  *(&v25 + 1) = MEMORY[0x277D84F98];
  *&v26 = MEMORY[0x277D84F98];
  *(&v26 + 1) = MEMORY[0x277D84F98];
  v27 = MEMORY[0x277D84F90];
  v28 = 0u;
  v29 = 0u;
  if (qword_27DA640E8 != -1)
  {
    swift_once();
  }

  v9 = qword_27DA66860;
  v10 = sub_22E47CDB4();
  v11 = [v9 URLForResource:v10 withExtension:0];

  if (v11)
  {
    sub_22E47CCD4();

    (*(v3 + 32))(v8, v6, v2);
    type metadata accessor for DirectoryDecompressor();
    inited = swift_initStackObject();
    *(inited + 16) = sub_22E452CF0;
    *(inited + 24) = 0;
    sub_22E451E24(v8, inited);
    (*(v3 + 8))(v8, v2);
    swift_setDeallocating();
  }

  v13 = v27;
  a1[6] = v26;
  a1[7] = v13;
  v14 = v29;
  a1[8] = v28;
  a1[9] = v14;
  v15 = v23;
  a1[2] = v22;
  a1[3] = v15;
  v16 = v25;
  a1[4] = v24;
  a1[5] = v16;
  result = *&v20;
  v18 = v21;
  *a1 = v20;
  a1[1] = v18;
  return result;
}

uint64_t sub_22E45325C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA642A8, &qword_22E47E228);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22E453578();
  sub_22E47D144();
  if (!v2)
  {
    v19 = 0;
    sub_22E4535CC();
    sub_22E47D024();
    v14 = v17;
    v15 = v16;
    v13 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA642B0, &qword_22E47E230);
    v19 = 1;
    sub_22E45405C(&qword_27DA63F10, &qword_27DA642B0, &qword_22E47E230, sub_22E4540E0);
    sub_22E47D024();
    (*(v6 + 8))(v8, v5);
    v9 = v16;
    v10 = v13;
    v11 = v14;
    *a2 = v15;
    a2[1] = v11;
    a2[2] = v10;
    a2[3] = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_22E453488()
{
  result = qword_27DA640A8;
  if (!qword_27DA640A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA640A8);
  }

  return result;
}

unint64_t sub_22E4534E0()
{
  result = qword_27DA640B0;
  if (!qword_27DA640B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA640B0);
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

unint64_t sub_22E453578()
{
  result = qword_27DA640B8;
  if (!qword_27DA640B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA640B8);
  }

  return result;
}

unint64_t sub_22E4535CC()
{
  result = qword_27DA63F48;
  if (!qword_27DA63F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA63F48);
  }

  return result;
}

uint64_t sub_22E45362C()
{
  if (*v0)
  {
    return 0x7365726F7473;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_22E453664(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22E45367C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22E453734(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t Version.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22E47D134();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    v5 = sub_22E47D064();
    v7 = v6;

    v8._countAndFlagsBits = v5;
    v8._object = v7;
    Version.init(string:)(v8);
    if (v13 == 1)
    {
      sub_22E479690();
      swift_allocError();
      *v9 = v5;
      v9[1] = v7;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v14);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v14);
      *a2 = v11;
      *(a2 + 16) = v12;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

SFSymbols::Version_optional __swiftcall Version.init(string:)(Swift::String string)
{
  object = string._object;
  countAndFlagsBits = string._countAndFlagsBits;
  v4 = v1;
  v5 = sub_22E47CBC4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = countAndFlagsBits;
  v69 = object;
  sub_22E47CB74();
  sub_22E453EA4();
  v9 = sub_22E47CF24();
  v11 = v10;
  (*(v6 + 8))(v8, v5);

  v68 = v9;
  v69 = v11;
  v66 = 46;
  v67 = 0xE100000000000000;
  v12 = sub_22E47CF14();

  v15 = v12;
  v16 = *(v12 + 16);
  if ((v16 - 4) < 0xFFFFFFFFFFFFFFFDLL)
  {
    goto LABEL_86;
  }

  if (!v16)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_83:
    v60 = v19;

    if (*(v60 + 2) == v16)
    {
      v61 = *(v60 + 4);
      if (v16 == 1)
      {
        v62 = 0;
        v63 = 0;
      }

      else
      {
        v62 = *(v60 + 5);
        if (v16 == 2)
        {
          v63 = 0;
        }

        else
        {
          v63 = *(v60 + 6);
        }
      }

      *v4 = v61;
      *(v4 + 8) = v62;
      *(v4 + 16) = v63;
      *(v4 + 24) = 0;
      goto LABEL_96;
    }

LABEL_86:

    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    *(v4 + 24) = 1;
    goto LABEL_96;
  }

  v17 = 0;
  v18 = v12 + 32;
  v19 = MEMORY[0x277D84F90];
  while (v17 < *(v15 + 16))
  {
    v20 = (v18 + 16 * v17);
    v21 = *v20;
    v22 = v20[1];
    ++v17;
    v23 = HIBYTE(v22) & 0xF;
    v13 = *v20 & 0xFFFFFFFFFFFFLL;
    if ((v22 & 0x2000000000000000) != 0)
    {
      v24 = HIBYTE(v22) & 0xF;
    }

    else
    {
      v24 = *v20 & 0xFFFFFFFFFFFFLL;
    }

    if (!v24)
    {
      goto LABEL_72;
    }

    if ((v22 & 0x1000000000000000) == 0)
    {
      if ((v22 & 0x2000000000000000) == 0)
      {
        if ((v21 & 0x1000000000000000) != 0)
        {
          v25 = ((v22 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v57 = v15;
          v58 = v19;
          v59 = sub_22E47CFA4();
          v19 = v58;
          v25 = v59;
          v15 = v57;
        }

        v26 = *v25;
        if (v26 == 43)
        {
          if (v13 < 1)
          {
            goto LABEL_95;
          }

          v37 = v13 - 1;
          if (v13 != 1)
          {
            if (!v25)
            {
              goto LABEL_60;
            }

            v28 = 0;
            v38 = v25 + 1;
            while (1)
            {
              v39 = *v38 - 48;
              if (v39 > 9)
              {
                break;
              }

              v40 = 10 * v28;
              if ((v28 * 10) >> 64 != (10 * v28) >> 63)
              {
                break;
              }

              v28 = v40 + v39;
              if (__OFADD__(v40, v39))
              {
                break;
              }

              ++v38;
              if (!--v37)
              {
                goto LABEL_61;
              }
            }
          }
        }

        else if (v26 == 45)
        {
          if (v13 < 1)
          {
            goto LABEL_93;
          }

          v27 = v13 - 1;
          if (v13 != 1)
          {
            if (v25)
            {
              v28 = 0;
              v29 = v25 + 1;
              while (1)
              {
                v30 = *v29 - 48;
                if (v30 > 9)
                {
                  goto LABEL_59;
                }

                v31 = 10 * v28;
                if ((v28 * 10) >> 64 != (10 * v28) >> 63)
                {
                  goto LABEL_59;
                }

                v28 = v31 - v30;
                if (__OFSUB__(v31, v30))
                {
                  goto LABEL_59;
                }

                ++v29;
                if (!--v27)
                {
                  goto LABEL_61;
                }
              }
            }

LABEL_60:
            v28 = 0;
LABEL_61:
            LOBYTE(v66) = 0;
LABEL_71:
            if ((v66 & 1) == 0)
            {
              goto LABEL_75;
            }

            goto LABEL_72;
          }
        }

        else
        {
          if (!v13)
          {
            goto LABEL_59;
          }

          if (!v25)
          {
            goto LABEL_60;
          }

          v28 = 0;
          while (1)
          {
            v45 = *v25 - 48;
            if (v45 > 9)
            {
              break;
            }

            v46 = 10 * v28;
            if ((v28 * 10) >> 64 != (10 * v28) >> 63)
            {
              break;
            }

            v28 = v46 + v45;
            if (__OFADD__(v46, v45))
            {
              break;
            }

            ++v25;
            if (!--v13)
            {
              goto LABEL_61;
            }
          }
        }

LABEL_59:
        v28 = 0;
        LOBYTE(v66) = 1;
        goto LABEL_71;
      }

      v68 = v21;
      v69 = v22 & 0xFFFFFFFFFFFFFFLL;
      if (v21 == 43)
      {
        if (!v23)
        {
          goto LABEL_92;
        }

        v41 = v23 - 1;
        if (v41)
        {
          v28 = 0;
          v42 = &v68 + 1;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              break;
            }

            v44 = 10 * v28;
            if ((v28 * 10) >> 64 != (10 * v28) >> 63)
            {
              break;
            }

            v28 = v44 + v43;
            if (__OFADD__(v44, v43))
            {
              break;
            }

            v36 = 0;
            ++v42;
            if (!--v41)
            {
              goto LABEL_70;
            }
          }
        }
      }

      else if (v21 == 45)
      {
        if (!v23)
        {
          goto LABEL_94;
        }

        v32 = v23 - 1;
        if (v32)
        {
          v28 = 0;
          v33 = &v68 + 1;
          while (1)
          {
            v34 = *v33 - 48;
            if (v34 > 9)
            {
              break;
            }

            v35 = 10 * v28;
            if ((v28 * 10) >> 64 != (10 * v28) >> 63)
            {
              break;
            }

            v28 = v35 - v34;
            if (__OFSUB__(v35, v34))
            {
              break;
            }

            v36 = 0;
            ++v33;
            if (!--v32)
            {
              goto LABEL_70;
            }
          }
        }
      }

      else if (v23)
      {
        v28 = 0;
        v47 = &v68;
        while (1)
        {
          v48 = *v47 - 48;
          if (v48 > 9)
          {
            break;
          }

          v49 = 10 * v28;
          if ((v28 * 10) >> 64 != (10 * v28) >> 63)
          {
            break;
          }

          v28 = v49 + v48;
          if (__OFADD__(v49, v48))
          {
            break;
          }

          v36 = 0;
          v47 = (v47 + 1);
          if (!--v23)
          {
            goto LABEL_70;
          }
        }
      }

      v28 = 0;
      v36 = 1;
LABEL_70:
      LOBYTE(v66) = v36;
      goto LABEL_71;
    }

    v65 = v15;
    v50 = v19;

    v28 = sub_22E479104(v21, v22, 10);
    v52 = v51;

    v19 = v50;
    v15 = v65;
    if ((v52 & 1) == 0)
    {
LABEL_75:
      v53 = v15;
      v54 = v19;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v19 = v54;
      }

      else
      {
        v19 = sub_22E453EF8(0, *(v54 + 2) + 1, 1, v54);
      }

      v56 = *(v19 + 2);
      v55 = *(v19 + 3);
      if (v56 >= v55 >> 1)
      {
        v19 = sub_22E453EF8((v55 > 1), v56 + 1, 1, v19);
      }

      v15 = v53;
      *(v19 + 2) = v56 + 1;
      *&v19[8 * v56 + 32] = v28;
    }

LABEL_72:
    if (v17 == v16)
    {
      goto LABEL_83;
    }
  }

  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  result.is_nil = v19;
  result.value.patch = v14;
  result.value.minor = v13;
  result.value.major = v15;
  return result;
}

unint64_t sub_22E453EA4()
{
  result = qword_27DA63F20;
  if (!qword_27DA63F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA63F20);
  }

  return result;
}

char *sub_22E453EF8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA643A0, &qword_22E47ECB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
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

uint64_t sub_22E45405C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22E4540E0()
{
  result = qword_27DA640C0;
  if (!qword_27DA640C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA640C0);
  }

  return result;
}

uint64_t sub_22E454134@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA642B8, &qword_22E47E238);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22E45444C();
  sub_22E47D144();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  v9 = sub_22E47D014();
  v11 = v10;
  v12 = v9;
  v21 = 1;
  v19 = sub_22E47D004();
  v20 = 2;
  v13 = sub_22E47CFF4();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v19;
  *(a2 + 24) = v13;
  *(a2 + 32) = v16;
  return result;
}

double sub_22E454344@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22E454134(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_22E4543A0()
{
  result = qword_27DA640C8;
  if (!qword_27DA640C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA640C8);
  }

  return result;
}

unint64_t sub_22E4543F8()
{
  result = qword_27DA640D0;
  if (!qword_27DA640D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA640D0);
  }

  return result;
}

unint64_t sub_22E45444C()
{
  result = qword_27DA640D8;
  if (!qword_27DA640D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA640D8);
  }

  return result;
}

uint64_t sub_22E4544A0()
{
  v1 = 0x6572706D6F437369;
  if (*v0 != 1)
  {
    v1 = 0x617A696C61636F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656D616E656C6966;
  }
}

uint64_t _s14descr284251169V13MetadataIndexV10StoreIndexV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22E4545D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22E454640(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

unint64_t sub_22E4546B4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22E465AA0(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

uint64_t sub_22E454774(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 112) = v3;
  return sub_22E471FA4();
}

uint64_t sub_22E4547BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for SymbolMetadata(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_22E454834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for SymbolMetadata(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_22E4548B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolMetadata.Backing(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22E454920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolMetadata.Backing(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22E454990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22E47CD64();
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

uint64_t sub_22E454A50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22E47CD64();
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

uint64_t sub_22E454B0C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

BOOL filter_denylist(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = [MEMORY[0x277CBEBC0] fileURLWithFileSystemRepresentation:a3 isDirectory:0 relativeToURL:0];
  v6 = [v5 lastPathComponent];
  v7 = v6 && ([v4 containsObject:v6] & 1) != 0;

  return v7;
}

uint64_t soft_AAFileStreamOpenWithPath(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v4 = getAAFileStreamOpenWithPathSymbolLoc_ptr;
  v12 = getAAFileStreamOpenWithPathSymbolLoc_ptr;
  if (!getAAFileStreamOpenWithPathSymbolLoc_ptr)
  {
    v5 = libAppleArchiveLibrary();
    v10[3] = dlsym(v5, "AAFileStreamOpenWithPath");
    getAAFileStreamOpenWithPathSymbolLoc_ptr = v10[3];
    v4 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v4)
  {
    +[SFSDirectoryCompressor compressDirectoryAtURL:intoURL:withDenylist:error:];
    v8 = v7;
    _Block_object_dispose(&v9, 8);
    _Unwind_Resume(v8);
  }

  return v4(a1, a2, 420);
}

uint64_t soft_AAByteStreamClose(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = getAAByteStreamCloseSymbolLoc_ptr;
  v10 = getAAByteStreamCloseSymbolLoc_ptr;
  if (!getAAByteStreamCloseSymbolLoc_ptr)
  {
    v3 = libAppleArchiveLibrary();
    v8[3] = dlsym(v3, "AAByteStreamClose");
    getAAByteStreamCloseSymbolLoc_ptr = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    +[SFSDirectoryCompressor compressDirectoryAtURL:intoURL:withDenylist:error:];
    v6 = v5;
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  return v2(a1);
}

uint64_t soft_AAArchiveStreamClose(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = getAAArchiveStreamCloseSymbolLoc_ptr;
  v10 = getAAArchiveStreamCloseSymbolLoc_ptr;
  if (!getAAArchiveStreamCloseSymbolLoc_ptr)
  {
    v3 = libAppleArchiveLibrary();
    v8[3] = dlsym(v3, "AAArchiveStreamClose");
    getAAArchiveStreamCloseSymbolLoc_ptr = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    +[SFSDirectoryCompressor compressDirectoryAtURL:intoURL:withDenylist:error:];
    v6 = v5;
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  return v2(a1);
}

void *__getAAFileStreamOpenWithPathSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libAppleArchiveLibrary();
  result = dlsym(v2, "AAFileStreamOpenWithPath");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAAFileStreamOpenWithPathSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t libAppleArchiveLibrary()
{
  v12 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = libAppleArchiveLibraryCore_frameworkLibrary;
  v9 = libAppleArchiveLibraryCore_frameworkLibrary;
  if (!libAppleArchiveLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __libAppleArchiveLibraryCore_block_invoke;
    v3[4] = &unk_2787CD690;
    v4 = &v6;
    v5 = v3;
    v10 = xmmword_2787CD670;
    v11 = 0;
    v7[3] = _sl_dlopen();
    libAppleArchiveLibraryCore_frameworkLibrary = *(v4[1] + 24);
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  v1 = v3[0];
  if (!v0)
  {
    v1 = abort_report_np("%s", v3[0]);
    __break(1u);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void sub_22E455C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __libAppleArchiveLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  libAppleArchiveLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAACompressionOutputStreamOpenSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libAppleArchiveLibrary();
  result = dlsym(v2, "AACompressionOutputStreamOpen");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAACompressionOutputStreamOpenSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAAByteStreamCloseSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libAppleArchiveLibrary();
  result = dlsym(v2, "AAByteStreamClose");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAAByteStreamCloseSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAAEncodeArchiveOutputStreamOpenSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libAppleArchiveLibrary();
  result = dlsym(v2, "AAEncodeArchiveOutputStreamOpen");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAAEncodeArchiveOutputStreamOpenSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAAFieldKeySetCreateWithStringSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libAppleArchiveLibrary();
  result = dlsym(v2, "AAFieldKeySetCreateWithString");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAAFieldKeySetCreateWithStringSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAAArchiveStreamCloseSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libAppleArchiveLibrary();
  result = dlsym(v2, "AAArchiveStreamClose");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAAArchiveStreamCloseSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAAPathListCreateWithDirectoryContentsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libAppleArchiveLibrary();
  result = dlsym(v2, "AAPathListCreateWithDirectoryContents");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAAPathListCreateWithDirectoryContentsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAAArchiveStreamWritePathListSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libAppleArchiveLibrary();
  result = dlsym(v2, "AAArchiveStreamWritePathList");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAAArchiveStreamWritePathListSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAAPathListDestroySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libAppleArchiveLibrary();
  result = dlsym(v2, "AAPathListDestroy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAAPathListDestroySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAADecompressionInputStreamOpenSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libAppleArchiveLibrary();
  result = dlsym(v2, "AADecompressionInputStreamOpen");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAADecompressionInputStreamOpenSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAADecodeArchiveInputStreamOpenSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libAppleArchiveLibrary();
  result = dlsym(v2, "AADecodeArchiveInputStreamOpen");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAADecodeArchiveInputStreamOpenSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAAExtractArchiveOutputStreamOpenSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libAppleArchiveLibrary();
  result = dlsym(v2, "AAExtractArchiveOutputStreamOpen");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAAExtractArchiveOutputStreamOpenSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAAArchiveStreamProcessSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libAppleArchiveLibrary();
  result = dlsym(v2, "AAArchiveStreamProcess");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAAArchiveStreamProcessSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id resolveNumeralForLocale(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 numberingSystem];
  v5 = [v3 objectForKeyedSubscript:v4];

  return v5;
}

id resolveLanguageForLocale(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 languageCode];
  v5 = [v3 objectForKeyedSubscript:v4];

  return v5;
}

__CFString *directionLookupKey(void *a1)
{
  v1 = MEMORY[0x277CBEAF8];
  v2 = [a1 languageCode];
  v3 = [v1 characterDirectionForLanguage:v2];

  if (v3 == 2)
  {
    return @"rtl";
  }

  else
  {
    return 0;
  }
}

id resolveDirectionForLocale(void *a1, void *a2)
{
  v3 = a1;
  v4 = directionLookupKey(a2);
  if (v4)
  {
    v5 = [v3 objectForKeyedSubscript:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_22E4566A4()
{
  v0 = sub_22E47CBC4();
  __swift_allocate_value_buffer(v0, qword_27DA63F60);
  __swift_project_value_buffer(v0, qword_27DA63F60);
  return sub_22E47CB84();
}

void *sub_22E456730(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(MEMORY[0x277CCAC80]);
  v3 = sub_22E47CDB4();
  v4 = [v2 initWithString_];

  [v4 setCharactersToBeSkipped_];
  v5 = MEMORY[0x277D84F90];
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    if (([v4 isAtEnd] & 1) == 0)
    {
      sub_22E47CEC4();
      if (!v7)
      {
        sub_22E47CEC4();
        if (!v8)
        {
          sub_22E47CEC4();
          if (!v9)
          {
            goto LABEL_12;
          }
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_22E4787EC(0, v5[2] + 1, 1, v5);
    }

    v11 = v5[2];
    v10 = v5[3];
    if (v11 >= v10 >> 1)
    {
      v5 = sub_22E4787EC((v10 > 1), v11 + 1, 1, v5);
    }

    v5[2] = v11 + 1;
    v5[v11 + 4] = v6;

    v6 = MEMORY[0x277D84F90];
LABEL_12:
    if ([v4 isAtEnd])
    {
      break;
    }

    while (1)
    {
      sub_22E47CEC4();
      if (v12)
      {

        v28 = 0;
        v29 = 0xE000000000000000;
        do
        {
          while (1)
          {
            v13 = sub_22E47CED4();
            if (v14)
            {
              v15 = v14;
            }

            else
            {
              v13 = 0;
              v15 = 0xE000000000000000;
            }

            MEMORY[0x2318E6DB0](v13, v15);

            sub_22E47CEC4();
            if (!v16)
            {
              break;
            }

            MEMORY[0x2318E6DB0](34, 0xE100000000000000);
          }

          sub_22E47CEC4();
        }

        while (!v17);

        v18 = 0;
        v19 = 0xE000000000000000;
      }

      else
      {
        if (qword_27DA63F58 != -1)
        {
          swift_once();
        }

        v20 = sub_22E47CBC4();
        __swift_project_value_buffer(v20, qword_27DA63F60);
        v21 = sub_22E47CEE4();
        v18 = v22 ? v21 : 0;
        v19 = v22 ? v22 : 0xE000000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_22E4786E0(0, *(v6 + 2) + 1, 1, v6);
      }

      v24 = *(v6 + 2);
      v23 = *(v6 + 3);
      if (v24 >= v23 >> 1)
      {
        v6 = sub_22E4786E0((v23 > 1), v24 + 1, 1, v6);
      }

      *(v6 + 2) = v24 + 1;
      v25 = &v6[16 * v24];
      *(v25 + 4) = v18;
      *(v25 + 5) = v19;
      sub_22E47CEC4();
      if (!v26)
      {
        break;
      }
    }
  }

  return v5;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

id sub_22E456AFC()
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27DA66860 = result;
  return result;
}

uint64_t SymbolCategory.Key.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

void *sub_22E456B9C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_22E456BA8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_22E456BB4()
{
  sub_22E47D0F4();
  sub_22E47CE24();
  return sub_22E47D124();
}

uint64_t sub_22E456C08(uint64_t a1)
{
  sub_22E47D0F4();
  sub_22E47CE24();
  return sub_22E47D124();
}

uint64_t sub_22E456C50(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22E47D054();
  }
}

uint64_t SymbolCategory.key.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t SymbolCategory.iconName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SymbolCategory.localizedTitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

unint64_t sub_22E456CF0()
{
  result = qword_27DA64110;
  if (!qword_27DA64110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64110);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_22E456D7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_22E456DC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22E456E2C(uint64_t a1, int a2)
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

uint64_t sub_22E456E74(uint64_t result, int a2, int a3)
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

uint64_t sub_22E456ED4()
{
  v1 = *v0;
  sub_22E47D0F4();
  MEMORY[0x2318E7080](v1);
  return sub_22E47D124();
}

uint64_t sub_22E456F1C(uint64_t a1)
{
  v2 = *v1;
  sub_22E47D0F4();
  MEMORY[0x2318E7080](v2);
  return sub_22E47D124();
}

uint64_t sub_22E456F60@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22E4656B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22E456FA0(uint64_t a1)
{
  v2 = sub_22E45444C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E456FDC(uint64_t a1)
{
  v2 = sub_22E45444C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E457018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (sub_22E47D054() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7365726F7473 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22E47D054();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_22E4570F0(uint64_t a1)
{
  v2 = sub_22E453578();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E45712C(uint64_t a1)
{
  v2 = sub_22E453578();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SymbolMetadataStore.load(from:)(uint64_t *a1)
{
  type metadata accessor for DirectoryDecompressor();
  inited = swift_initStackObject();
  *(inited + 16) = sub_22E452CF0;
  *(inited + 24) = 0;
  sub_22E451E24(a1, inited);
  swift_setDeallocating();
}

uint64_t SymbolMetadataStore.load(from:decryptor:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for DirectoryDecompressor();
  inited = swift_initStackObject();
  *(inited + 16) = a2;
  *(inited + 24) = a3;

  sub_22E451E24(a1, inited);
  swift_setDeallocating();
}

uint64_t sub_22E457288(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22E47CCE4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v129 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v134 = &v127 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v133 = &v127 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v132 = &v127 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v131 = &v127 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v127 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v130 = &v127 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v127 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v137 = &v127 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v127 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v127 - v29;
  v138 = a1;
  sub_22E47CCA4();
  v128 = v30;
  v31 = sub_22E47CCF4();
  v135 = v2;
  v32 = v31;
  v34 = v33;
  SymbolMetadataStore.ingestCSVData(_:)(v31, v33);
  sub_22E451DD0(v32, v34);

  v35 = v137;
  sub_22E47CCA4();

  sub_22E47CCC4();
  v36 = *(v5 + 8);
  v36(v35, v4);
  v37 = sub_22E47CCF4();
  v136 = v36;
  v38 = v37;
  v40 = v39;
  SymbolMetadataStore.ingestSymbolCategoriesPlistData(_:)(v37, v39);
  v41 = v40;
  v42 = v136;
  sub_22E451DD0(v38, v41);
  v42(v28, v4);

  v43 = v137;
  sub_22E47CCA4();

  sub_22E47CCC4();
  v42(v43, v4);
  v44 = sub_22E47CCF4();
  v46 = v45;
  SymbolMetadataStore.ingestSymbolCategoriesPlistData(_:)(v44, v45);
  v47 = v46;
  v48 = v136;
  sub_22E451DD0(v44, v47);
  v48(v28, v4);

  v49 = v137;
  sub_22E47CCA4();

  sub_22E47CCC4();
  v48(v49, v4);
  v50 = sub_22E47CCF4();
  v52 = v51;
  SymbolMetadataStore.ingestSymbolCategoriesPlistData(_:)(v50, v51);
  v53 = v52;
  v54 = v136;
  sub_22E451DD0(v50, v53);
  v54(v28, v4);
  swift_arrayDestroy();

  v55 = v137;
  sub_22E47CCA4();

  sub_22E47CCC4();
  v54(v55, v4);
  v56 = sub_22E47CCF4();
  v58 = v57;
  SymbolMetadataStore.ingestNameAvailabilityPlistData(_:)(v56, v57);
  sub_22E451DD0(v56, v58);
  v54(v23, v4);

  v59 = v137;
  sub_22E47CCA4();

  sub_22E47CCC4();
  v54(v59, v4);
  v60 = sub_22E47CCF4();
  v62 = v61;
  SymbolMetadataStore.ingestNameAvailabilityPlistData(_:)(v60, v61);
  sub_22E451DD0(v60, v62);
  v54(v23, v4);
  swift_arrayDestroy();

  v63 = v137;
  sub_22E47CCA4();

  sub_22E47CCC4();
  v54(v63, v4);
  v64 = sub_22E47CCF4();
  v66 = v65;
  SymbolMetadataStore.ingestAliasStringsData(_:)(v64, v65);
  v67 = v66;
  v68 = v130;
  sub_22E451DD0(v64, v67);
  v54(v68, v4);

  v69 = v137;
  sub_22E47CCA4();

  sub_22E47CCC4();
  v54(v69, v4);
  v70 = sub_22E47CCF4();
  v72 = v71;
  SymbolMetadataStore.ingestAliasStringsData(_:)(v70, v71);
  sub_22E451DD0(v70, v72);
  v54(v68, v4);
  swift_arrayDestroy();
  v73 = 0;
  do
  {
    v74 = v73;

    v75 = v137;
    sub_22E47CCA4();

    sub_22E47CCC4();
    v54(v75, v4);
    v76 = sub_22E47CCF4();
    v78 = v77;
    sub_22E47CC64();
    swift_allocObject();
    sub_22E47CC54();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64160, &qword_22E47D9B8);
    sub_22E465C08();
    sub_22E47CC44();

    sub_22E451DD0(v76, v78);
    v54 = v136;
    v136(v18, v4);
    v79 = v139;
    v80 = v135;

    *(v80 + 64) = v79;
    v73 = 1;
  }

  while ((v74 & 1) == 0);
  swift_arrayDestroy();

  v81 = v137;
  sub_22E47CCA4();

  sub_22E47CCC4();
  v54(v81, v4);
  v82 = sub_22E47CCF4();
  v84 = v83;
  SymbolMetadataStore.ingestLayerSetAvailabilityPlistData(_:)(v82, v83);
  v85 = v84;
  v86 = v131;
  sub_22E451DD0(v82, v85);
  v87 = v129;
  v54(v86, v4);

  v88 = v137;
  sub_22E47CCA4();

  sub_22E47CCC4();
  v54(v88, v4);
  v89 = sub_22E47CCF4();
  v91 = v90;
  SymbolMetadataStore.ingestLayerSetAvailabilityPlistData(_:)(v89, v90);
  v92 = v91;
  v93 = v131;
  sub_22E451DD0(v89, v92);
  v54(v93, v4);
  swift_arrayDestroy();

  v94 = v137;
  sub_22E47CCA4();

  sub_22E47CCC4();
  v54(v94, v4);
  v95 = sub_22E47CCF4();
  v97 = v96;
  SymbolMetadataStore.ingestFeatureAvailabilityPlistData(_:)(v95, v96);
  sub_22E451DD0(v95, v97);
  v54(v132, v4);

  v98 = v137;
  sub_22E47CCA4();

  sub_22E47CCC4();
  v54(v98, v4);
  v99 = sub_22E47CCF4();
  v101 = v100;
  SymbolMetadataStore.ingestFeatureAvailabilityPlistData(_:)(v99, v100);
  sub_22E451DD0(v99, v101);
  v54(v132, v4);
  swift_arrayDestroy();

  v102 = v137;
  sub_22E47CCA4();

  sub_22E47CCC4();
  v54(v102, v4);
  v103 = sub_22E47CCF4();
  v105 = v104;
  SymbolMetadataStore.ingestSymbolPropertiesPlistData(_:)(v103, v104);
  sub_22E451DD0(v103, v105);
  v54(v133, v4);

  v106 = v137;
  sub_22E47CCA4();

  sub_22E47CCC4();
  v54(v106, v4);
  v107 = sub_22E47CCF4();
  v109 = v108;
  SymbolMetadataStore.ingestSymbolPropertiesPlistData(_:)(v107, v108);
  sub_22E451DD0(v107, v109);
  v54(v133, v4);
  swift_arrayDestroy();

  v110 = v137;
  sub_22E47CCA4();

  sub_22E47CCC4();
  v54(v110, v4);
  v111 = sub_22E47CCF4();
  v113 = v112;
  SymbolMetadataStore.ingestSymbolSearchPlistData(_:)(v111, v112);
  sub_22E451DD0(v111, v113);
  v54(v134, v4);

  v114 = v137;
  sub_22E47CCA4();

  sub_22E47CCC4();
  v54(v114, v4);
  v115 = sub_22E47CCF4();
  v117 = v116;
  SymbolMetadataStore.ingestSymbolSearchPlistData(_:)(v115, v116);
  sub_22E451DD0(v115, v117);
  v54(v134, v4);
  swift_arrayDestroy();

  v118 = v137;
  sub_22E47CCA4();

  sub_22E47CCC4();
  v54(v118, v4);
  v119 = sub_22E47CCF4();
  v121 = v120;
  SymbolMetadataStore.ingestSymbolOrderPlistData(_:)(v119, v120);
  sub_22E451DD0(v119, v121);
  v54(v87, v4);

  v122 = v137;
  sub_22E47CCA4();

  sub_22E47CCC4();
  v54(v122, v4);
  v123 = sub_22E47CCF4();
  v125 = v124;
  SymbolMetadataStore.ingestSymbolOrderPlistData(_:)(v123, v124);
  sub_22E451DD0(v123, v125);
  v54(v87, v4);
  v54(v128, v4);
  return swift_arrayDestroy();
}

uint64_t SymbolMetadataStore.ingestCSVData(_:)(uint64_t a1, uint64_t a2)
{
  v3 = _s9SFSymbols18SystemSymbolCSVRowV6decode_22additionalColumnTitlesSayACG10Foundation4DataV_SaySSGtFZ_0(a1, a2, MEMORY[0x277D84F90]);
  v4 = *(v3 + 2);
  if (!v4)
  {

    v6 = MEMORY[0x277D84F98];
    v7 = MEMORY[0x277D84F90];
    v9 = MEMORY[0x277D84F98];
LABEL_32:

    *v2 = v7;

    *(v2 + 16) = v9;

    *(v2 + 8) = v6;
    *&v92 = v7;
    swift_bridgeObjectRetain_n();
    sub_22E46328C(&v92, v2);

    v78 = v92;

    *v2 = v78;
    return result;
  }

  v5 = 0;
  v80 = v4 - 1;
  v6 = MEMORY[0x277D84F98];
  v7 = MEMORY[0x277D84F90];
  v8 = 32;
  v9 = MEMORY[0x277D84F98];
  v81 = v3;
  while (1)
  {
    v10 = *&v3[v8];
    v11 = *&v3[v8 + 32];
    v93 = *&v3[v8 + 16];
    v94 = v11;
    v92 = v10;
    v12 = *&v3[v8 + 48];
    v13 = *&v3[v8 + 64];
    v14 = *&v3[v8 + 80];
    v98 = *&v3[v8 + 96];
    v96 = v13;
    v97 = v14;
    v95 = v12;
    sub_22E4658E4(&v92, &v85);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_22E478A48(0, *(v7 + 2) + 1, 1, v7);
    }

    v16 = *(v7 + 2);
    v15 = *(v7 + 3);
    if (v16 >= v15 >> 1)
    {
      v7 = sub_22E478A48((v15 > 1), v16 + 1, 1, v7);
    }

    v17 = v92;
    *(v7 + 2) = v16 + 1;
    *&v7[4 * v16 + 32] = v17;
    sub_22E4658E4(&v92, &v85);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v84 = v6;
    v19 = sub_22E45C22C(v17);
    v21 = v6[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      break;
    }

    v25 = v20;
    if (v6[3] < v24)
    {
      sub_22E45CD98(v24, isUniquelyReferenced_nonNull_native);
      v19 = sub_22E45C22C(v17);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_37;
      }

LABEL_12:
      v82 = v7;
      if (v25)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    v38 = v19;
    sub_22E45FB94();
    v19 = v38;
    v82 = v7;
    if (v25)
    {
LABEL_13:
      v6 = v84;
      v27 = v84[7] + 104 * v19;
      v29 = *(v27 + 16);
      v28 = *(v27 + 32);
      v85 = *v27;
      v86 = v29;
      v87 = v28;
      v31 = *(v27 + 64);
      v30 = *(v27 + 80);
      v32 = *(v27 + 48);
      v91 = *(v27 + 96);
      v89 = v31;
      v90 = v30;
      v88 = v32;
      v33 = v92;
      v34 = v94;
      *(v27 + 16) = v93;
      *(v27 + 32) = v34;
      *v27 = v33;
      v35 = v95;
      v36 = v96;
      v37 = v97;
      *(v27 + 96) = v98;
      *(v27 + 64) = v36;
      *(v27 + 80) = v37;
      *(v27 + 48) = v35;
      sub_22E4658E4(&v92, &v83);
      sub_22E465940(&v85);
      goto LABEL_17;
    }

LABEL_15:
    v6 = v84;
    v84[(v19 >> 6) + 8] |= 1 << v19;
    *(v6[6] + 4 * v19) = v17;
    v39 = v6[7] + 104 * v19;
    v41 = v93;
    v40 = v94;
    *v39 = v92;
    *(v39 + 16) = v41;
    *(v39 + 32) = v40;
    v42 = v95;
    v43 = v96;
    v44 = v97;
    *(v39 + 96) = v98;
    *(v39 + 64) = v43;
    *(v39 + 80) = v44;
    *(v39 + 48) = v42;
    v45 = v6[2];
    v23 = __OFADD__(v45, 1);
    v46 = v45 + 1;
    if (v23)
    {
      goto LABEL_35;
    }

    v6[2] = v46;
    sub_22E4658E4(&v92, &v85);
LABEL_17:
    v48 = *(&v92 + 1);
    v47 = v93;
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v83 = v9;
    v50 = sub_22E450B0C(v48, v47);
    v52 = v9[2];
    v53 = (v51 & 1) == 0;
    v23 = __OFADD__(v52, v53);
    v54 = v52 + v53;
    if (v23)
    {
      goto LABEL_34;
    }

    v55 = v51;
    if (v9[3] < v54)
    {
      sub_22E45C9B4(v54, v49);
      v50 = sub_22E450B0C(v48, v47);
      if ((v55 & 1) != (v56 & 1))
      {
        goto LABEL_38;
      }

LABEL_22:
      v7 = v82;
      if ((v55 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }

    if (v49)
    {
      goto LABEL_22;
    }

    v68 = v50;
    sub_22E45F9B4();
    v50 = v68;
    v7 = v82;
    if ((v55 & 1) == 0)
    {
LABEL_25:
      v9 = v83;
      v83[(v50 >> 6) + 8] |= 1 << v50;
      v69 = (v9[6] + 16 * v50);
      *v69 = v48;
      v69[1] = v47;
      v70 = v9[7] + 104 * v50;
      v71 = v98;
      v73 = v96;
      v72 = v97;
      *(v70 + 48) = v95;
      *(v70 + 64) = v73;
      *(v70 + 80) = v72;
      *(v70 + 96) = v71;
      v75 = v93;
      v74 = v94;
      *v70 = v92;
      *(v70 + 16) = v75;
      *(v70 + 32) = v74;

      sub_22E465940(&v92);
      v76 = v9[2];
      v23 = __OFADD__(v76, 1);
      v77 = v76 + 1;
      if (v23)
      {
        goto LABEL_36;
      }

      v9[2] = v77;
      goto LABEL_27;
    }

LABEL_23:
    v9 = v83;
    v57 = v83[7] + 104 * v50;
    v59 = *(v57 + 16);
    v58 = *(v57 + 32);
    v85 = *v57;
    v86 = v59;
    v87 = v58;
    v61 = *(v57 + 64);
    v60 = *(v57 + 80);
    v62 = *(v57 + 48);
    v91 = *(v57 + 96);
    v89 = v61;
    v90 = v60;
    v88 = v62;
    v63 = v92;
    v64 = v94;
    *(v57 + 16) = v93;
    *(v57 + 32) = v64;
    *v57 = v63;
    v65 = v95;
    v66 = v96;
    v67 = v97;
    *(v57 + 96) = v98;
    *(v57 + 64) = v66;
    *(v57 + 80) = v67;
    *(v57 + 48) = v65;
    sub_22E465940(&v85);
    sub_22E465940(&v92);
LABEL_27:
    v3 = v81;
    if (v80 == v5)
    {
      goto LABEL_30;
    }

    ++v5;
    v8 += 104;
    if (v5 >= *(v81 + 2))
    {
      __break(1u);
LABEL_30:

      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  sub_22E47D094();
  __break(1u);
LABEL_38:
  sub_22E47D094();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t SymbolMetadataStore.ingestSymbolCategoriesPlistData(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_22E47CC64();
  swift_allocObject();
  sub_22E47CC54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64148, &unk_22E47D9A0);
  sub_22E45405C(&qword_27DA63EF8, &qword_27DA64148, &unk_22E47D9A0, sub_22E465A24);
  v4 = 0;
  sub_22E47CC44();

  v5 = 0;
  v6 = 0;
  v7 = v49;
  v8 = v49 + 64;
  v9 = 1 << *(v49 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v49 + 64);
  v12 = (v9 + 63) >> 6;
  if (v11)
  {
LABEL_4:
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v6 << 6);
      v15 = *(*(v7 + 56) + 8 * v14);
      v16 = *(v15 + 16);
      if (v16)
      {
        break;
      }

      if (!v11)
      {
        goto LABEL_6;
      }
    }

    v41 = v12;
    v42 = v8;
    v43 = v4;
    v44 = v7;
    v18 = (*(v7 + 48) + 16 * v14);
    v45 = *v18;
    v48 = v18[1];

    v19 = 0;
    v20 = (v15 + 40);
    v46 = v16;
    v47 = v15;
    while (v19 < *(v15 + 16))
    {
      v21 = *(v20 - 1);
      v22 = *v20;

      sub_22E453664(v5, 0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v3;
      v25 = isUniquelyReferenced_nonNull_native;
      v26 = v24;
      v49 = *(v24 + 24);
      v27 = v49;
      v28 = sub_22E45C298(v21, v22);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v32 = __OFADD__(v30, v31);
      v33 = v30 + v31;
      if (v32)
      {
        goto LABEL_28;
      }

      v34 = v29;
      if (v27[3] >= v33)
      {
        if ((v25 & 1) == 0)
        {
          v39 = v28;
          sub_22E45FD64();
          v28 = v39;
          v27 = v49;
        }
      }

      else
      {
        sub_22E45D150(v33, v25);
        v27 = v49;
        v28 = sub_22E45C298(v21, v22);
        if ((v34 & 1) != (v35 & 1))
        {
          goto LABEL_30;
        }
      }

      v3 = v26;
      *(v26 + 24) = v27;
      if (v34)
      {
      }

      else
      {
        v27[(v28 >> 6) + 8] |= 1 << v28;
        v36 = (v27[6] + 16 * v28);
        *v36 = v21;
        v36[1] = v22;
        *(v27[7] + 8 * v28) = MEMORY[0x277D84FA0];
        v37 = v27[2];
        v32 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v32)
        {
          goto LABEL_29;
        }

        v27[2] = v38;
      }

      ++v19;

      sub_22E460A90(&v49, v45, v48);

      v20 += 2;
      v5 = sub_22E467B70;
      v15 = v47;
      if (v46 == v19)
      {

        v5 = sub_22E467B70;
        v4 = v43;
        v7 = v44;
        v12 = v41;
        v8 = v42;
        if (!v11)
        {
          goto LABEL_6;
        }

        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_6:
    while (1)
    {
      v17 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v17 >= v12)
      {

        return sub_22E453664(v5, 0);
      }

      v11 = *(v8 + 8 * v17);
      ++v6;
      if (v11)
      {
        v6 = v17;
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_22E47D094();
  __break(1u);
  return result;
}

uint64_t SymbolMetadataStore.ingestNameAvailabilityPlistData(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_22E47CC64();
  swift_allocObject();
  sub_22E47CC54();
  sub_22E465BB4();
  sub_22E47CC44();

  v4 = sub_22E45B6D8(string_8);
  v5 = 0;
  v6 = v4 + 64;
  v117 = v4;
  v7 = 1 << *(v4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v4 + 64);
  v10 = (v7 + 63) >> 6;
  v119 = v2;
  while (v9)
  {
LABEL_11:
    v12 = __clz(__rbit64(v9)) | (v5 << 6);
    v13 = (*(v117 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = (*(v117 + 56) + 24 * v12);
    v120 = *v16;
    v121 = v16[1];
    v17 = v16[2];
    v18 = *(v3 + 96);
    if (*(v18 + 16))
    {

      v19 = sub_22E450B0C(v15, v14);
      v20 = MEMORY[0x277D84F98];
      if ((v21 & 1) == 0)
      {
        goto LABEL_16;
      }

      v20 = *(*(v18 + 56) + 8 * v19);
    }

    else
    {
      v20 = MEMORY[0x277D84F98];
    }

LABEL_16:
    string = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    string_8a = v20;
    v23 = sub_22E45C298(1701667182, 0xE400000000000000);
    v25 = v20[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      goto LABEL_84;
    }

    v29 = v24;
    if (v20[3] >= v28)
    {
      v31 = v17;
      if (isUniquelyReferenced_nonNull_native)
      {
        v32 = string_8a;
        if (v24)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v34 = v23;
        sub_22E4601AC();
        v23 = v34;
        v32 = string_8a;
        if (v29)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      sub_22E45DA30(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_22E45C298(1701667182, 0xE400000000000000);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_93;
      }

      v31 = v17;
      v32 = string_8a;
      if (v29)
      {
LABEL_23:
        v33 = (v32[7] + 24 * v23);
        *v33 = v120;
        v33[1] = v121;
        v33[2] = v31;
        goto LABEL_27;
      }
    }

    v32[(v23 >> 6) + 8] |= 1 << v23;
    v35 = (v32[6] + 16 * v23);
    *v35 = 1701667182;
    v35[1] = 0xE400000000000000;
    v36 = (v32[7] + 24 * v23);
    *v36 = v120;
    v36[1] = v121;
    v36[2] = v31;
    v37 = v32[2];
    v27 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (v27)
    {
      goto LABEL_88;
    }

    v32[2] = v38;
LABEL_27:
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v40 = sub_22E45C298(0x6F7268636F6E6F6DLL, 0xEA0000000000656DLL);
    v42 = v32[2];
    v43 = (v41 & 1) == 0;
    v27 = __OFADD__(v42, v43);
    v44 = v42 + v43;
    if (v27)
    {
      goto LABEL_85;
    }

    v45 = v41;
    if (v32[3] < v44)
    {
      sub_22E45DA30(v44, v39);
      v40 = sub_22E45C298(0x6F7268636F6E6F6DLL, 0xEA0000000000656DLL);
      if ((v45 & 1) != (v46 & 1))
      {
        goto LABEL_93;
      }

LABEL_32:
      v47 = v32;
      if (v45)
      {
        goto LABEL_33;
      }

      goto LABEL_35;
    }

    if (v39)
    {
      goto LABEL_32;
    }

    v49 = v40;
    sub_22E4601AC();
    v40 = v49;
    v47 = v32;
    if (v45)
    {
LABEL_33:
      v48 = (v47[7] + 24 * v40);
      *v48 = v120;
      v48[1] = v121;
      v48[2] = v31;
      goto LABEL_37;
    }

LABEL_35:
    v47[(v40 >> 6) + 8] |= 1 << v40;
    v50 = (v47[6] + 16 * v40);
    *v50 = 0x6F7268636F6E6F6DLL;
    v50[1] = 0xEA0000000000656DLL;
    v51 = (v47[7] + 24 * v40);
    *v51 = v120;
    v51[1] = v121;
    v51[2] = v31;
    v52 = v47[2];
    v27 = __OFADD__(v52, 1);
    v53 = v52 + 1;
    if (v27)
    {
      goto LABEL_89;
    }

    v47[2] = v53;
LABEL_37:
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v55 = *(v119 + 96);
    string_8 = v55;
    v57 = sub_22E450B0C(v15, string);
    v58 = v55[2];
    v59 = (v56 & 1) == 0;
    v60 = v58 + v59;
    if (__OFADD__(v58, v59))
    {
      goto LABEL_86;
    }

    v61 = v56;
    if (v55[3] >= v60)
    {
      if (v54)
      {
        v64 = v55;
        if (v56)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_22E4604A4(&qword_27DA64228, &qword_22E47DBD8);
        v64 = v55;
        if (v61)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_22E45E270(v60, v54, &qword_27DA64228, &qword_22E47DBD8);
      v62 = sub_22E450B0C(v15, string);
      if ((v61 & 1) != (v63 & 1))
      {
        goto LABEL_94;
      }

      v57 = v62;
      v64 = v55;
      if (v61)
      {
LABEL_4:
        *(v64[7] + 8 * v57) = v47;

        goto LABEL_5;
      }
    }

    v64[(v57 >> 6) + 8] |= 1 << v57;
    v65 = (v64[6] + 16 * v57);
    *v65 = v15;
    v65[1] = string;
    *(v64[7] + 8 * v57) = v47;
    v66 = v64[2];
    v27 = __OFADD__(v66, 1);
    v67 = v66 + 1;
    if (v27)
    {
      goto LABEL_90;
    }

    v64[2] = v67;
LABEL_5:
    v9 &= v9 - 1;
    v3 = v119;
    *(v119 + 96) = v64;
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_83;
    }

    if (v11 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_11;
    }
  }

  v68 = 0;
  v69 = 1 << *(v127 + 32);
  if (v69 < 64)
  {
    v70 = ~(-1 << v69);
  }

  else
  {
    v70 = -1;
  }

  v71 = v70 & *(v127 + 64);
  v72 = (v69 + 63) >> 6;
  v73 = MEMORY[0x277D84F98];
  v74 = MEMORY[0x277D84F98];
LABEL_52:
  while (1)
  {
    v75 = v68;
    if (!v71)
    {
      break;
    }

LABEL_56:
    v76 = __clz(__rbit64(v71));
    v71 &= v71 - 1;
    v77 = v76 | (v68 << 6);
    v78 = (*(v127 + 48) + 16 * v77);
    v79 = *v78;
    v80 = v78[1];
    v81 = *(*(v127 + 56) + 8 * v77);

    v82._countAndFlagsBits = v79;
    v82._object = v80;
    Version.init(string:)(v82);
    if ((v129 & 1) == 0)
    {
      v83 = v73;
      v84 = 0;
      v113 = string_8;
      v85 = 1 << *(v81 + 32);
      if (v85 < 64)
      {
        v86 = ~(-1 << v85);
      }

      else
      {
        v86 = -1;
      }

      v87 = v74;
      v88 = v86 & *(v81 + 64);
      v114 = v83;
      v118 = (v85 + 63) >> 6;
      v89 = v87;
      v122 = v87;
      while (v88)
      {
LABEL_68:
        v91 = __clz(__rbit64(v88));
        v88 &= v88 - 1;
        v92 = (*(v81 + 56) + ((v84 << 10) | (16 * v91)));
        v93 = v92[1];
        stringa = *v92;

        v94 = sub_22E47CFE4();

        if (v94 >= 7)
        {

          v89 = v122;
        }

        else
        {
          v95._countAndFlagsBits = stringa;
          v95._object = v93;
          Version.init(string:)(v95);
          v89 = v122;
          if ((v129 & 1) == 0)
          {
            v96 = string_8;
            v111 = swift_isUniquelyReferenced_nonNull_native();
            string_8 = v114;
            v98 = sub_22E45C3A8(v94);
            v99 = *(v114 + 16);
            v100 = (v97 & 1) == 0;
            v101 = v99 + v100;
            if (__OFADD__(v99, v100))
            {
              goto LABEL_91;
            }

            if (*(v114 + 24) >= v101)
            {
              if ((v111 & 1) == 0)
              {
                v112 = v98;
                v116 = v97;
                sub_22E460048();
                v97 = v116;
                v98 = v112;
              }
            }

            else
            {
              v115 = v97;
              sub_22E45D6C4(v101, v111);
              v102 = sub_22E45C3A8(v94);
              v104 = v103 & 1;
              v97 = v115;
              if ((v115 & 1) != v104)
              {
                goto LABEL_95;
              }

              v98 = v102;
            }

            v114 = string_8;
            if (v97)
            {
              v105 = (string_8[7] + 24 * v98);
              *v105 = v96;
              v105[1] = v127;
              v89 = v122;
              v105[2] = v128;
            }

            else
            {
              string_8[(v98 >> 6) + 8] |= 1 << v98;
              *(string_8[6] + v98) = v94;
              v106 = (string_8[7] + 24 * v98);
              *v106 = v96;
              v106[1] = v127;
              v106[2] = v128;
              v107 = string_8[2];
              v27 = __OFADD__(v107, 1);
              v108 = v107 + 1;
              if (v27)
              {
                goto LABEL_92;
              }

              string_8[2] = v108;
              v89 = v122;
            }
          }
        }
      }

      while (1)
      {
        v90 = v84 + 1;
        if (__OFADD__(v84, 1))
        {
          goto LABEL_87;
        }

        if (v90 >= v118)
        {

          v109 = swift_isUniquelyReferenced_nonNull_native();
          string_8 = v89;
          sub_22E45EF84(v114, v113, v127, v128, v109);
          v74 = v89;
          v3 = v119;
          v73 = MEMORY[0x277D84F98];
          goto LABEL_52;
        }

        v88 = *(v81 + 64 + 8 * v90);
        ++v84;
        if (v88)
        {
          v84 = v90;
          goto LABEL_68;
        }
      }
    }
  }

  while (1)
  {
    v68 = v75 + 1;
    if (__OFADD__(v75, 1))
    {
      break;
    }

    if (v68 >= v72)
    {

      *(v3 + 88) = v74;
      return result;
    }

    v71 = *(v127 + 64 + 8 * v68);
    ++v75;
    if (v71)
    {
      goto LABEL_56;
    }
  }

LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
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
LABEL_92:
  __break(1u);
LABEL_93:
  sub_22E47D094();
  __break(1u);
LABEL_94:
  sub_22E47D094();
  __break(1u);
LABEL_95:
  result = sub_22E47D094();
  __break(1u);
  return result;
}

uint64_t SymbolMetadataStore.ingestAliasStringsData(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_22E47CC64();
  swift_allocObject();
  sub_22E47CC54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64158, &qword_22E47D9B0);
  sub_22E465E30(&qword_27DA63F18, &qword_27DA64158, &qword_22E47D9B0);
  sub_22E47CC44();

  v4 = 0;
  v5 = v41 + 64;
  v37 = 0;
  v40 = v41;
  v6 = 1 << *(v41 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v41 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = v8;
LABEL_10:
    v8 = (v10 - 1) & v10;
    if (*(*(v3 + 96) + 16))
    {
      v12 = v3;
      v13 = (v4 << 10) | (16 * __clz(__rbit64(v10)));
      v14 = (*(v40 + 48) + v13);
      v15 = (*(v40 + 56) + v13);
      v17 = *v15;
      v16 = v15[1];
      v19 = *v14;
      v18 = v14[1];

      sub_22E450B0C(v19, v18);
      if (v20)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = *(v12 + 72);
        sub_22E45EDFC(v17, v16, v19, v18, isUniquelyReferenced_nonNull_native);

        *(v12 + 72) = v41;
        sub_22E453664(v37, 0);
        v38 = swift_isUniquelyReferenced_nonNull_native();
        v41 = *(v12 + 80);
        v22 = v41;
        v23 = sub_22E450B0C(v17, v16);
        v25 = v22[2];
        v26 = (v24 & 1) == 0;
        v27 = __OFADD__(v25, v26);
        v28 = v25 + v26;
        if (v27)
        {
          goto LABEL_26;
        }

        if (v22[3] < v28)
        {
          v35 = v24;
          sub_22E45E270(v28, v38, &qword_27DA64208, &qword_22E47DBB8);
          v22 = v41;
          v23 = sub_22E450B0C(v17, v16);
          v30 = v29 & 1;
          v24 = v35;
          if ((v35 & 1) != v30)
          {
            goto LABEL_28;
          }

LABEL_18:
          *(v12 + 80) = v22;
          if (v24)
          {
            goto LABEL_19;
          }

          goto LABEL_21;
        }

        if (v38)
        {
          goto LABEL_18;
        }

        v39 = v23;
        v36 = v24;
        sub_22E4604A4(&qword_27DA64208, &qword_22E47DBB8);
        v23 = v39;
        v22 = v41;
        *(v12 + 80) = v41;
        if (v36)
        {
LABEL_19:

          goto LABEL_23;
        }

LABEL_21:
        v22[(v23 >> 6) + 8] |= 1 << v23;
        v31 = (v22[6] + 16 * v23);
        *v31 = v17;
        v31[1] = v16;
        *(v22[7] + 8 * v23) = MEMORY[0x277D84FA0];
        v32 = v22[2];
        v27 = __OFADD__(v32, 1);
        v33 = v32 + 1;
        if (v27)
        {
          goto LABEL_27;
        }

        v22[2] = v33;
LABEL_23:
        v3 = v12;
        sub_22E460A90(&v41, v19, v18);

        v37 = sub_22E467B70;
      }

      else
      {

        v3 = v12;
      }
    }
  }

  while (1)
  {
    v11 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return sub_22E453664(v37, 0);
    }

    v10 = *(v5 + 8 * v11);
    ++v4;
    if (v10)
    {
      v4 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_22E47D094();
  __break(1u);
  return result;
}

uint64_t SymbolMetadataStore.ingestCategoriesPlistData(_:)(uint64_t a1, uint64_t a2)
{
  sub_22E47CC64();
  swift_allocObject();
  sub_22E47CC54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64160, &qword_22E47D9B8);
  sub_22E465C08();
  sub_22E47CC44();

  *(v2 + 64) = v4;
  return result;
}

uint64_t SymbolMetadataStore.ingestLayerSetAvailabilityPlistData(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_22E47CC64();
  swift_allocObject();
  sub_22E47CC54();
  sub_22E465CE0();
  sub_22E47CC44();

  v4 = 0;
  v84 = 0;
  v85 = v2;
  v5 = 0;
  v6 = v94;
  v7 = v94 + 64;
  v8 = 1 << *(v94 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v94 + 64);
  v11 = (v8 + 63) >> 6;
  v86 = v11;
  v87 = v94;
  if (v10)
  {
    while (1)
    {
LABEL_10:
      v13 = __clz(__rbit64(v10)) | (v5 << 6);
      v14 = (*(v6 + 48) + 16 * v13);
      v15 = v14[1];
      v16 = (*(v6 + 56) + 32 * v13);
      v17 = v16[1];
      string = v16[2];
      string_8 = *v14;
      v93 = v16[3];
      if (v17)
      {
        v18 = *v16;

        swift_bridgeObjectRetain_n();

        v19._countAndFlagsBits = v18;
        v19._object = v17;
        Version.init(string:)(v19);
        if (v97 != 1)
        {
          v88 = v94;
          sub_22E453664(v4, 0);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v21 = *(v3 + 96);
          v89 = v15;
          v23 = sub_22E450B0C(string_8, v15);
          v24 = v21[2];
          v25 = (v22 & 1) == 0;
          v26 = v24 + v25;
          if (__OFADD__(v24, v25))
          {
            goto LABEL_63;
          }

          v27 = v22;
          if (v21[3] < v26)
          {
            sub_22E45E270(v26, isUniquelyReferenced_nonNull_native, &qword_27DA64228, &qword_22E47DBD8);
            v28 = sub_22E450B0C(string_8, v89);
            if ((v27 & 1) != (v29 & 1))
            {
              goto LABEL_72;
            }

            v23 = v28;
            *(v3 + 96) = v21;
            if (v27)
            {
              goto LABEL_23;
            }

LABEL_21:
            v30 = sub_22E465AA0(MEMORY[0x277D84F90]);
            v21[(v23 >> 6) + 8] |= 1 << v23;
            v31 = (v21[6] + 16 * v23);
            *v31 = string_8;
            v31[1] = v89;
            *(v21[7] + 8 * v23) = v30;
            v32 = v21[2];
            v33 = __OFADD__(v32, 1);
            v34 = v32 + 1;
            if (v33)
            {
              goto LABEL_65;
            }

            v21[2] = v34;

            goto LABEL_23;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            *(v3 + 96) = v21;
            if ((v22 & 1) == 0)
            {
              goto LABEL_21;
            }
          }

          else
          {
            sub_22E4604A4(&qword_27DA64228, &qword_22E47DBD8);
            *(v3 + 96) = v21;
            if ((v27 & 1) == 0)
            {
              goto LABEL_21;
            }
          }

LABEL_23:
          v35 = v21[7];
          v36 = swift_isUniquelyReferenced_nonNull_native();
          v37 = *(v35 + 8 * v23);
          v94 = v37;
          *(v35 + 8 * v23) = 0x8000000000000000;
          v39 = sub_22E45C298(0x6C6F6369746C756DLL, 0xEA0000000000726FLL);
          v40 = *(v37 + 16);
          v41 = (v38 & 1) == 0;
          v42 = v40 + v41;
          if (__OFADD__(v40, v41))
          {
            goto LABEL_64;
          }

          v43 = v38;
          if (*(v37 + 24) >= v42)
          {

            if ((v36 & 1) == 0)
            {
              sub_22E4601AC();
            }
          }

          else
          {
            sub_22E45DA30(v42, v36);
            v44 = sub_22E45C298(0x6C6F6369746C756DLL, 0xEA0000000000726FLL);
            if ((v43 & 1) != (v45 & 1))
            {
              goto LABEL_71;
            }

            v39 = v44;
          }

          v11 = v86;
          v6 = v87;
          if (v43)
          {
            v46 = (*(v94 + 56) + 24 * v39);
            *v46 = v88;
            v46[1] = v95;
            v46[2] = v96;
          }

          else
          {
            *(v94 + 8 * (v39 >> 6) + 64) |= 1 << v39;
            v47 = (*(v94 + 48) + 16 * v39);
            *v47 = 0x6C6F6369746C756DLL;
            v47[1] = 0xEA0000000000726FLL;
            v48 = (*(v94 + 56) + 24 * v39);
            *v48 = v88;
            v48[1] = v95;
            v48[2] = v96;
            v49 = *(v94 + 16);
            v33 = __OFADD__(v49, 1);
            v50 = v49 + 1;
            if (v33)
            {
              goto LABEL_66;
            }

            *(v94 + 16) = v50;
          }

          *(v35 + 8 * v23) = v94;

          v4 = sub_22E467B74;
          v3 = v85;
          v15 = v89;
          goto LABEL_34;
        }
      }

      else
      {
      }

LABEL_34:
      v10 &= v10 - 1;
      v51 = v93;
      if (!v93 || (v52 = string, Version.init(string:)(*(&v51 - 1)), v97 == 1))
      {

        if (!v10)
        {
          break;
        }
      }

      else
      {
        v90 = v94;
        sub_22E453664(v84, 0);
        v53 = swift_isUniquelyReferenced_nonNull_native();
        v54 = *(v3 + 96);
        v56 = sub_22E450B0C(string_8, v15);
        v57 = v54[2];
        v58 = (v55 & 1) == 0;
        v59 = v57 + v58;
        if (__OFADD__(v57, v58))
        {
          goto LABEL_67;
        }

        v60 = v55;
        if (v54[3] >= v59)
        {
          if (v53)
          {
            *(v3 + 96) = v54;
            if (v55)
            {
              goto LABEL_43;
            }
          }

          else
          {
            sub_22E4604A4(&qword_27DA64228, &qword_22E47DBD8);
            *(v3 + 96) = v54;
            if (v60)
            {
              goto LABEL_43;
            }
          }
        }

        else
        {
          sub_22E45E270(v59, v53, &qword_27DA64228, &qword_22E47DBD8);
          v61 = sub_22E450B0C(string_8, v15);
          if ((v60 & 1) != (v62 & 1))
          {
            goto LABEL_72;
          }

          v56 = v61;
          *(v3 + 96) = v54;
          if (v60)
          {
LABEL_43:

            goto LABEL_49;
          }
        }

        v63 = sub_22E465AA0(MEMORY[0x277D84F90]);
        v54[(v56 >> 6) + 8] |= 1 << v56;
        v64 = (v54[6] + 16 * v56);
        *v64 = string_8;
        v64[1] = v15;
        *(v54[7] + 8 * v56) = v63;
        v65 = v54[2];
        v33 = __OFADD__(v65, 1);
        v66 = v65 + 1;
        if (v33)
        {
          goto LABEL_69;
        }

        v54[2] = v66;
LABEL_49:
        v67 = v54[7];
        v68 = swift_isUniquelyReferenced_nonNull_native();
        v69 = *(v67 + 8 * v56);
        v94 = v69;
        *(v67 + 8 * v56) = 0x8000000000000000;
        v70 = sub_22E45C298(0x6863726172656968, 0xEC0000006C616369);
        v72 = *(v69 + 16);
        v73 = (v71 & 1) == 0;
        v33 = __OFADD__(v72, v73);
        v74 = v72 + v73;
        if (v33)
        {
          goto LABEL_68;
        }

        v75 = v71;
        if (*(v69 + 24) >= v74)
        {
          if ((v68 & 1) == 0)
          {
            v82 = v70;
            sub_22E4601AC();
            v70 = v82;
          }
        }

        else
        {
          sub_22E45DA30(v74, v68);
          v70 = sub_22E45C298(0x6863726172656968, 0xEC0000006C616369);
          if ((v75 & 1) != (v76 & 1))
          {
            goto LABEL_71;
          }
        }

        v11 = v86;
        v6 = v87;
        if (v75)
        {
          v77 = (*(v94 + 56) + 24 * v70);
          *v77 = v90;
          v77[1] = v95;
          v77[2] = v96;
        }

        else
        {
          *(v94 + 8 * (v70 >> 6) + 64) |= 1 << v70;
          v78 = *(v94 + 48) + 16 * v70;
          strcpy(v78, "hierarchical");
          *(v78 + 13) = 0;
          *(v78 + 14) = -5120;
          v79 = (*(v94 + 56) + 24 * v70);
          *v79 = v90;
          v79[1] = v95;
          v79[2] = v96;
          v80 = *(v94 + 16);
          v33 = __OFADD__(v80, 1);
          v81 = v80 + 1;
          if (v33)
          {
            goto LABEL_70;
          }

          *(v94 + 16) = v81;
        }

        *(v67 + 8 * v56) = v94;

        v84 = sub_22E467B74;
        v3 = v85;
        if (!v10)
        {
          break;
        }
      }
    }
  }

  while (1)
  {
    v12 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      sub_22E453664(v4, 0);
      return sub_22E453664(v84, 0);
    }

    v10 = *(v7 + 8 * v12);
    ++v5;
    if (v10)
    {
      v5 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  sub_22E47D094();
  __break(1u);
LABEL_72:
  result = sub_22E47D094();
  __break(1u);
  return result;
}

uint64_t SymbolMetadataStore.ingestFeatureAvailabilityPlistData(_:)(uint64_t a1, uint64_t a2)
{
  sub_22E47CC64();
  swift_allocObject();
  sub_22E47CC54();
  sub_22E465D34();
  sub_22E47CC44();
  v67 = v2;

  v3 = 0;
  v4 = v76 + 8;
  v73 = v76;
  v5 = 1 << *(v76 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v76[8];
  v8 = (v5 + 63) >> 6;
  v71 = v76 + 8;
  v68 = 0;
  v70 = v8;
LABEL_6:
  if (v7)
  {
    v9 = v3;
  }

  else
  {
    do
    {
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_43;
      }

      if (v9 >= v8)
      {

        return sub_22E453664(v68, 0);
      }

      v7 = v4[v9];
      ++v3;
    }

    while (!v7);
  }

  v10 = __clz(__rbit64(v7));
  v7 &= v7 - 1;
  v11 = v10 | (v9 << 6);
  v12 = (v73[6] + 16 * v11);
  v13 = *(v73[7] + 8 * v11);
  v14 = v12[1];
  v72 = *v12;
  v15 = v13 + 64;
  v16 = 1 << *(v13 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(v13 + 64);
  v19 = (v16 + 63) >> 6;
  v74 = v14;

  v75 = v13;

  v20 = 0;
  while (1)
  {
    v21 = v20;
    if (!v18)
    {
      break;
    }

LABEL_19:
    v22 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v23 = (v20 << 10) | (16 * v22);
    v24 = (*(v75 + 48) + v23);
    v25 = *v24;
    v26 = v24[1];
    v27 = (*(v75 + 56) + v23);
    v28 = *v27;
    v29 = v27[1];

    v30._countAndFlagsBits = v28;
    v30._object = v29;
    Version.init(string:)(v30);
    if (v79)
    {
    }

    else
    {
      v65 = v76;
      v66 = v25;
      sub_22E453664(v68, 0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = *(v67 + 96);
      v69 = sub_22E450B0C(v72, v74);
      v34 = v32[2];
      v35 = (v33 & 1) == 0;
      v36 = v34 + v35;
      if (__OFADD__(v34, v35))
      {
        goto LABEL_44;
      }

      v37 = v33;
      if (v32[3] >= v36)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22E4604A4(&qword_27DA64228, &qword_22E47DBD8);
        }
      }

      else
      {
        sub_22E45E270(v36, isUniquelyReferenced_nonNull_native, &qword_27DA64228, &qword_22E47DBD8);
        v69 = sub_22E450B0C(v72, v74);
        if ((v37 & 1) != (v38 & 1))
        {
          goto LABEL_49;
        }
      }

      *(v67 + 96) = v32;
      if ((v37 & 1) == 0)
      {
        v39 = sub_22E465AA0(MEMORY[0x277D84F90]);
        v32[(v69 >> 6) + 8] |= 1 << v69;
        v40 = (v32[6] + 16 * v69);
        *v40 = v72;
        v40[1] = v74;
        *(v32[7] + 8 * v69) = v39;
        v41 = v32[2];
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (v42)
        {
          goto LABEL_46;
        }

        v32[2] = v43;
      }

      v44 = v32[7];
      v64 = swift_isUniquelyReferenced_nonNull_native();
      v45 = *(v44 + 8 * v69);
      v76 = v45;
      v63 = v44;
      *(v44 + 8 * v69) = 0x8000000000000000;
      v46 = sub_22E45C298(v66, v26);
      v48 = v45[2];
      v49 = (v47 & 1) == 0;
      v42 = __OFADD__(v48, v49);
      v50 = v48 + v49;
      if (v42)
      {
        goto LABEL_45;
      }

      v51 = v47;
      if (v45[3] >= v50)
      {
        if ((v64 & 1) == 0)
        {
          v61 = v46;
          sub_22E4601AC();
          v46 = v61;
        }

        v52 = v66;
        if (v51)
        {
          goto LABEL_34;
        }
      }

      else
      {
        sub_22E45DA30(v50, v64);
        v52 = v66;
        v46 = sub_22E45C298(v66, v26);
        if ((v51 & 1) != (v53 & 1))
        {
          goto LABEL_48;
        }

        if (v51)
        {
LABEL_34:
          v54 = v46;

          v55 = v45;
          v56 = (v45[7] + 24 * v54);
          *v56 = v65;
          v56[1] = v77;
          v56[2] = v78;
          goto LABEL_40;
        }
      }

      v55 = v45;
      v45[(v46 >> 6) + 8] |= 1 << v46;
      v57 = (v45[6] + 16 * v46);
      *v57 = v52;
      v57[1] = v26;
      v58 = (v45[7] + 24 * v46);
      *v58 = v65;
      v58[1] = v77;
      v58[2] = v78;
      v59 = v45[2];
      v42 = __OFADD__(v59, 1);
      v60 = v59 + 1;
      if (v42)
      {
        goto LABEL_47;
      }

      v45[2] = v60;
LABEL_40:
      *(v63 + 8 * v69) = v55;

      v68 = sub_22E467B74;
    }
  }

  while (1)
  {
    v20 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v20 >= v19)
    {

      v3 = v9;
      v8 = v70;
      v4 = v71;
      goto LABEL_6;
    }

    v18 = *(v15 + 8 * v20);
    ++v21;
    if (v18)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  sub_22E47D094();
  __break(1u);
LABEL_49:
  result = sub_22E47D094();
  __break(1u);
  return result;
}

uint64_t SymbolMetadataStore.ingestSymbolPropertiesPlistData(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_22E47CC64();
  swift_allocObject();
  sub_22E47CC54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64170, &qword_22E47D9C0);
  sub_22E465D88();
  sub_22E47CC44();

  v4 = 0;
  v5 = 0;
  v6 = v74 + 64;
  v7 = 1 << *(v74 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v74 + 64);
  v10 = (v7 + 63) >> 6;
  v64 = v10;
LABEL_6:
  if (v9)
  {
    v11 = v5;
LABEL_11:
    v65 = v11;
    v66 = (v9 - 1) & v9;
    v12 = __clz(__rbit64(v9)) | (v11 << 6);
    v13 = (*(v74 + 48) + 16 * v12);
    v14 = *(*(v74 + 56) + 8 * v12);
    v16 = *v13;
    v15 = v13[1];
    v17 = v14 + 64;
    v18 = 1 << *(v14 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v14 + 64);
    v21 = (v18 + 63) >> 6;

    v70 = v14;

    v22 = 0;
    v67 = v21;
    v68 = v14 + 64;
    v69 = v16;
    while (1)
    {
      if (!v20)
      {
        while (1)
        {
          v25 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (v25 >= v21)
          {

            v5 = v65;
            v9 = v66;
            v10 = v64;
            v6 = v74 + 64;
            goto LABEL_6;
          }

          v20 = *(v17 + 8 * v25);
          ++v22;
          if (v20)
          {
            v22 = v25;
            goto LABEL_22;
          }
        }

        __break(1u);
        goto LABEL_45;
      }

LABEL_22:
      v26 = (v22 << 10) | (16 * __clz(__rbit64(v20)));
      v27 = (*(v70 + 48) + v26);
      v28 = v27[1];
      v73 = *v27;
      v29 = (*(v70 + 56) + v26);
      v30 = v29[1];
      v71 = *v29;

      v72 = v30;

      sub_22E453664(v4, 0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = *(v3 + 104);
      v34 = sub_22E450B0C(v16, v15);
      v35 = v32[2];
      v36 = (v33 & 1) == 0;
      v37 = v35 + v36;
      if (__OFADD__(v35, v36))
      {
        goto LABEL_46;
      }

      v38 = v33;
      if (v32[3] >= v37)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          *(v3 + 104) = v32;
          if (v33)
          {
            goto LABEL_31;
          }
        }

        else
        {
          sub_22E4604A4(&qword_27DA641F8, &qword_22E47DBA8);
          *(v3 + 104) = v32;
          if (v38)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        sub_22E45E270(v37, isUniquelyReferenced_nonNull_native, &qword_27DA641F8, &qword_22E47DBA8);
        v39 = sub_22E450B0C(v16, v15);
        if ((v38 & 1) != (v40 & 1))
        {
          goto LABEL_51;
        }

        v34 = v39;
        *(v3 + 104) = v32;
        if (v38)
        {
          goto LABEL_31;
        }
      }

      v41 = sub_22E46627C(MEMORY[0x277D84F90]);
      v32[(v34 >> 6) + 8] |= 1 << v34;
      v42 = (v32[6] + 16 * v34);
      *v42 = v16;
      v42[1] = v15;
      *(v32[7] + 8 * v34) = v41;
      v43 = v32[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_48;
      }

      v32[2] = v45;

LABEL_31:
      v46 = v15;
      v47 = v3;
      v48 = v32[7];
      v49 = swift_isUniquelyReferenced_nonNull_native();
      v50 = *(v48 + 8 * v34);
      *(v48 + 8 * v34) = 0x8000000000000000;
      v51 = sub_22E45C298(v73, v28);
      v53 = v50[2];
      v54 = (v52 & 1) == 0;
      v44 = __OFADD__(v53, v54);
      v55 = v53 + v54;
      if (v44)
      {
        goto LABEL_47;
      }

      v56 = v52;
      if (v50[3] < v55)
      {
        sub_22E45DFB0(v55, v49);
        v51 = sub_22E45C298(v73, v28);
        if ((v56 & 1) != (v57 & 1))
        {
          goto LABEL_50;
        }

LABEL_36:
        if (v56)
        {
          goto LABEL_15;
        }

        goto LABEL_37;
      }

      if (v49)
      {
        goto LABEL_36;
      }

      v62 = v51;
      sub_22E46032C();
      v51 = v62;
      if (v56)
      {
LABEL_15:
        v23 = v51;

        v24 = (v50[7] + 16 * v23);
        *v24 = v71;
        v24[1] = v72;

        goto LABEL_16;
      }

LABEL_37:
      v50[(v51 >> 6) + 8] |= 1 << v51;
      v58 = (v50[6] + 16 * v51);
      *v58 = v73;
      v58[1] = v28;
      v59 = (v50[7] + 16 * v51);
      *v59 = v71;
      v59[1] = v72;
      v60 = v50[2];
      v44 = __OFADD__(v60, 1);
      v61 = v60 + 1;
      if (v44)
      {
        goto LABEL_49;
      }

      v50[2] = v61;
LABEL_16:
      v20 &= v20 - 1;
      *(v48 + 8 * v34) = v50;

      v4 = sub_22E45C1B8;
      v3 = v47;
      v15 = v46;
      v17 = v68;
      v16 = v69;
      v21 = v67;
    }
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      return sub_22E453664(v4, 0);
    }

    v9 = *(v6 + 8 * v11);
    ++v5;
    if (v9)
    {
      goto LABEL_11;
    }
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  sub_22E47D094();
  __break(1u);
LABEL_51:
  result = sub_22E47D094();
  __break(1u);
  return result;
}

uint64_t SymbolMetadataStore.ingestSymbolSearchPlistData(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_22E47CC64();
  swift_allocObject();
  sub_22E47CC54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64148, &unk_22E47D9A0);
  sub_22E45405C(&qword_27DA63EF8, &qword_27DA64148, &unk_22E47D9A0, sub_22E465A24);
  sub_22E47CC44();

  v4 = 0;
  v5 = 0;
  v6 = v60;
  v7 = v60 + 64;
  v8 = 1 << *(v60 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v60 + 64);
  v11 = (v8 + 63) >> 6;
  if (v10)
  {
    while (1)
    {
LABEL_4:
      while (1)
      {
        v12 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v13 = v12 | (v5 << 6);
        v14 = *(*(v6 + 56) + 8 * v13);
        v15 = v14[2];
        if (v15)
        {
          break;
        }

        if (!v10)
        {
          goto LABEL_6;
        }
      }

      v53 = v6;
      v17 = (*(v6 + 48) + 16 * v13);
      v18 = v17[1];
      v59 = *v17;

      if (!v14[2])
      {
        break;
      }

      v54 = v15;
      v55 = v14;
      v19 = v14[4];
      v20 = v14[5];

      sub_22E453664(v4, 0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = v18;
      v58 = v3;
      v22 = *(v3 + 32);
      v23 = sub_22E450B0C(v59, v18);
      v25 = v22[2];
      v26 = (v24 & 1) == 0;
      v27 = __OFADD__(v25, v26);
      v28 = v25 + v26;
      if (v27)
      {
        goto LABEL_39;
      }

      v29 = v24;
      if (v22[3] >= v28)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v51 = v23;
          sub_22E4604A4(&qword_27DA64208, &qword_22E47DBB8);
          v23 = v51;
        }
      }

      else
      {
        sub_22E45E270(v28, isUniquelyReferenced_nonNull_native, &qword_27DA64208, &qword_22E47DBB8);
        v23 = sub_22E450B0C(v59, v57);
        if ((v29 & 1) != (v30 & 1))
        {
          goto LABEL_41;
        }
      }

      *(v3 + 32) = v22;
      if ((v29 & 1) == 0)
      {
        v22[(v23 >> 6) + 8] |= 1 << v23;
        v31 = (v22[6] + 16 * v23);
        *v31 = v59;
        v31[1] = v57;
        *(v22[7] + 8 * v23) = MEMORY[0x277D84FA0];
        v32 = v22[2];
        v27 = __OFADD__(v32, 1);
        v33 = v32 + 1;
        if (v27)
        {
          goto LABEL_40;
        }

        v22[2] = v33;
      }

      sub_22E460A90(&v60, v19, v20);

      v34 = v55;
      if (v54 != 1)
      {
        v35 = v55 + 7;
        v36 = 1;
        while (v36 < v34[2])
        {
          v37 = *v35;
          v56 = *(v35 - 1);

          sub_22E453664(sub_22E467B70, 0);
          v38 = swift_isUniquelyReferenced_nonNull_native();
          v39 = *(v58 + 32);
          v40 = sub_22E450B0C(v59, v57);
          v42 = v39[2];
          v43 = (v41 & 1) == 0;
          v27 = __OFADD__(v42, v43);
          v44 = v42 + v43;
          if (v27)
          {
            goto LABEL_39;
          }

          v45 = v41;
          if (v39[3] >= v44)
          {
            if ((v38 & 1) == 0)
            {
              v50 = v40;
              sub_22E4604A4(&qword_27DA64208, &qword_22E47DBB8);
              v40 = v50;
            }
          }

          else
          {
            sub_22E45E270(v44, v38, &qword_27DA64208, &qword_22E47DBB8);
            v40 = sub_22E450B0C(v59, v57);
            if ((v45 & 1) != (v46 & 1))
            {
              goto LABEL_41;
            }
          }

          *(v58 + 32) = v39;
          if ((v45 & 1) == 0)
          {
            v39[(v40 >> 6) + 8] |= 1 << v40;
            v47 = (v39[6] + 16 * v40);
            *v47 = v59;
            v47[1] = v57;
            *(v39[7] + 8 * v40) = MEMORY[0x277D84FA0];
            v48 = v39[2];
            v27 = __OFADD__(v48, 1);
            v49 = v48 + 1;
            if (v27)
            {
              goto LABEL_40;
            }

            v39[2] = v49;
          }

          ++v36;
          sub_22E460A90(&v60, v56, v37);

          v35 += 2;
          v34 = v55;
          if (v54 == v36)
          {
            goto LABEL_21;
          }
        }

        break;
      }

LABEL_21:

      v4 = sub_22E467B70;
      v6 = v53;
      v3 = v58;
      if (!v10)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    while (1)
    {
      v16 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v16 >= v11)
      {

        return sub_22E453664(v4, 0);
      }

      v10 = *(v7 + 8 * v16);
      ++v5;
      if (v10)
      {
        v5 = v16;
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = sub_22E47D094();
  __break(1u);
  return result;
}

uint64_t SymbolMetadataStore.ingestSymbolOrderPlistData(_:)(uint64_t a1, uint64_t a2)
{
  sub_22E47CC64();
  swift_allocObject();
  sub_22E47CC54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64178, &qword_22E47D9C8);
  sub_22E465E30(&qword_27DA63EF0, &qword_27DA64178, &qword_22E47D9C8);
  sub_22E47CC44();

  v3 = 0;
  v4 = v35 + 64;
  v33 = v2;
  v34 = v35;
  v5 = 1 << v35[32];
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v35 + 8);
  v8 = (v5 + 63) >> 6;
  v9 = v2;
  while (v7)
  {
LABEL_11:
    v13 = __clz(__rbit64(v7)) | (v3 << 6);
    v14 = (*(v34 + 6) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = *(*(v34 + 7) + 8 * v13);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *(v9 + 40);
    v19 = sub_22E450B0C(v16, v15);
    v21 = *(v35 + 2);
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      sub_22E47D094();
      __break(1u);

      __break(1u);
      return result;
    }

    v25 = v20;
    if (*(v35 + 3) < v24)
    {
      sub_22E45E510(v24, isUniquelyReferenced_nonNull_native);
      v19 = sub_22E450B0C(v16, v15);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_26;
      }

LABEL_16:
      if (v25)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v30 = v19;
    sub_22E460604();
    v19 = v30;
    if (v25)
    {
LABEL_4:
      v10 = v19;

      v11 = v35;
      *(*(v35 + 7) + 8 * v10) = v17;
      goto LABEL_5;
    }

LABEL_17:
    v11 = v35;
    *&v35[8 * (v19 >> 6) + 64] |= 1 << v19;
    v27 = (*(v11 + 6) + 16 * v19);
    *v27 = v16;
    v27[1] = v15;
    *(*(v11 + 7) + 8 * v19) = v17;
    v28 = *(v11 + 2);
    v23 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v23)
    {
      goto LABEL_25;
    }

    *(v11 + 2) = v29;
LABEL_5:
    v7 &= v7 - 1;
    v9 = v33;
    *(v33 + 40) = v11;
  }

  while (1)
  {
    v12 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v12 >= v8)
    {
      break;
    }

    v7 = *&v4[8 * v12];
    ++v3;
    if (v7)
    {
      v3 = v12;
      goto LABEL_11;
    }
  }

  v35 = *v9;
  swift_bridgeObjectRetain_n();
  sub_22E46328C(&v35, v9);

  v31 = v35;

  *v9 = v31;
  return result;
}

uint64_t sub_22E45B508()
{
  if (*v0)
  {
    return 0x5F6F745F72616579;
  }

  else
  {
    return 0x736C6F626D7973;
  }
}

uint64_t sub_22E45B550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736C6F626D7973 && a2 == 0xE700000000000000;
  if (v6 || (sub_22E47D054() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x5F6F745F72616579 && a2 == 0xEF657361656C6572)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22E47D054();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_22E45B634(uint64_t a1)
{
  v2 = sub_22E466228();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E45B670(uint64_t a1)
{
  v2 = sub_22E466228();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E45B6AC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_22E465FF8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_22E45B6D8(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v35 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    v10 = v9;
    if (!v6)
    {
      break;
    }

LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = (v9 << 10) | (16 * v11);
    v13 = (*(a1 + 48) + v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = (*(a1 + 56) + v12);
    v18 = *v16;
    v17 = v16[1];

    v19._countAndFlagsBits = v18;
    v19._object = v17;
    Version.init(string:)(v19);
    if (v34)
    {
    }

    else
    {
      v20 = *(v2 + 16);
      if (*(v2 + 24) <= v20)
      {
        sub_22E45DCF0(v20 + 1, 1);
        v2 = v35;
      }

      sub_22E47D0F4();
      sub_22E47CE24();
      result = sub_22E47D124();
      v21 = v2 + 64;
      v22 = -1 << *(v2 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v2 + 64 + 8 * (v23 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v22) >> 6;
        while (++v24 != v27 || (v26 & 1) == 0)
        {
          v28 = v24 == v27;
          if (v24 == v27)
          {
            v24 = 0;
          }

          v26 |= v28;
          v29 = *(v21 + 8 * v24);
          if (v29 != -1)
          {
            v25 = __clz(__rbit64(~v29)) + (v24 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v25 = __clz(__rbit64((-1 << v23) & ~*(v2 + 64 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      *(v21 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v30 = (*(v2 + 48) + 16 * v25);
      *v30 = v15;
      v30[1] = v14;
      v31 = *(v2 + 56) + 24 * v25;
      *v31 = v32;
      *(v31 + 16) = v33;
      ++*(v2 + 16);
    }
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v9);
    ++v10;
    if (v6)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_22E45B944()
{
  if (*v0)
  {
    return 1852793705;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_22E45B970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v5 || (sub_22E47D054() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22E47D054();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_22E45BA4C(uint64_t a1)
{
  v2 = sub_22E46677C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E45BA88(uint64_t a1)
{
  v2 = sub_22E46677C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E45BAC4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_22E466598(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

char *sub_22E45BAF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(v2 + 80);
  if (!*(v4 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v5 = *(v3 + 96);
  v31 = *(v3 + 88);
  v6 = sub_22E450B0C(a1, a2);
  v7 = MEMORY[0x277D84F90];
  if (v8)
  {
    v9 = *(*(v4 + 56) + 8 * v6);
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = sub_22E47865C(*(v9 + 16), 0);
      v33 = sub_22E465558(&v35, v11 + 4, v10, v9);
      v12 = v35;
      swift_bridgeObjectRetain_n();
      sub_22E466FAC(v12);
      if (v33 != v10)
      {
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {

      v11 = MEMORY[0x277D84F90];
    }

    v35 = v11;
    sub_22E463300(&v35);

    v13 = v35;
    v14 = *(v35 + 2);
    if (!v14)
    {
LABEL_20:

      return v7;
    }

    v35 = v7;
    sub_22E476840(0, v14, 0);
    v7 = v35;
    v15 = (v13 + 40);
    v32 = v5;
    while (1)
    {
      v17 = *(v15 - 1);
      v16 = *v15;
      v18 = *(v5 + 16);

      v34 = 0u;
      if (!v18)
      {
        goto LABEL_16;
      }

      v19 = sub_22E450B0C(v17, v16);
      if ((v20 & 1) == 0)
      {
        goto LABEL_16;
      }

      v21 = *(*(v5 + 56) + 8 * v19);
      if (!*(v21 + 16))
      {
        goto LABEL_16;
      }

      v22 = sub_22E45C298(1701667182, 0xE400000000000000);
      if ((v23 & 1) == 0)
      {
        break;
      }

      v24 = *(v21 + 56) + 24 * v22;
      v34 = *v24;
      v25 = *(v24 + 16);

      v26 = v31;

LABEL_17:
      v35 = v7;
      v28 = *(v7 + 2);
      v27 = *(v7 + 3);
      if (v28 >= v27 >> 1)
      {
        sub_22E476840((v27 > 1), v28 + 1, 1);
        v7 = v35;
      }

      *(v7 + 2) = v28 + 1;
      v29 = &v7[48 * v28];
      *(v29 + 4) = v17;
      *(v29 + 5) = v16;
      *(v29 + 3) = v34;
      *(v29 + 8) = v25;
      *(v29 + 9) = v26;
      v15 += 2;
      --v14;
      v5 = v32;
      if (!v14)
      {
        goto LABEL_20;
      }
    }

LABEL_16:
    v25 = 0;
    v26 = 0;
    goto LABEL_17;
  }

  return v7;
}

uint64_t sub_22E45BD6C()
{
  if (*v0)
  {
    return 0x6863726172656968;
  }

  else
  {
    return 0x6C6F6369746C756DLL;
  }
}

uint64_t sub_22E45BDB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6F6369746C756DLL && a2 == 0xEA0000000000726FLL;
  if (v6 || (sub_22E47D054() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6863726172656968 && a2 == 0xEC0000006C616369)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22E47D054();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_22E45BE9C(uint64_t a1)
{
  v2 = sub_22E4678B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E45BED8(uint64_t a1)
{
  v2 = sub_22E4678B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E45BF14@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_22E4667D0(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_22E45BF64(uint64_t a1)
{
  v2 = sub_22E466B4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E45BFA0(uint64_t a1)
{
  v2 = sub_22E466B4C();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_22E45BFDC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_22E46699C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_22E45C008()
{
  sub_22E47D0F4();
  MEMORY[0x2318E7080](0);
  return sub_22E47D124();
}

uint64_t sub_22E45C04C(uint64_t a1)
{
  sub_22E47D0F4();
  MEMORY[0x2318E7080](0);
  return sub_22E47D124();
}

uint64_t sub_22E45C08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736C6F626D7973 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22E47D054();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22E45C114(uint64_t a1)
{
  v2 = sub_22E466D78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E45C150(uint64_t a1)
{
  v2 = sub_22E466D78();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_22E45C18C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_22E466BF4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_22E45C1B8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22E46627C(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

unint64_t sub_22E45C1E8(uint64_t a1)
{
  v2 = sub_22E47D0E4();

  return sub_22E45F150(a1, v2);
}

unint64_t sub_22E45C22C(uint64_t a1)
{
  v1 = a1;
  sub_22E47D0F4();
  sub_22E47D114();
  v2 = sub_22E47D124();

  return sub_22E45F1BC(v1, v2);
}

unint64_t sub_22E45C298(uint64_t a1, uint64_t a2)
{
  sub_22E47D0F4();
  sub_22E47CE24();
  v4 = sub_22E47D124();
  return sub_22E450B84(a1, a2, v4);
}

unint64_t sub_22E45C30C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22E47D0F4();
  MEMORY[0x2318E7080](a1);
  MEMORY[0x2318E7080](a2);
  MEMORY[0x2318E7080](a3);
  v6 = sub_22E47D124();

  return sub_22E45F228(a1, a2, a3, v6);
}

unint64_t sub_22E45C3A8(uint64_t a1)
{
  v2 = a1;
  v3 = sub_22E467BA8(*(v1 + 40), a1);

  return sub_22E45F2AC(v2, v3);
}

unint64_t sub_22E45C3EC(uint64_t a1)
{
  sub_22E47CD64();
  sub_22E466F68(&qword_27DA641C0, MEMORY[0x277CC9600]);
  v2 = sub_22E47CD74();

  return sub_22E45F528(a1, v2);
}

uint64_t sub_22E45C470(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64258, &qword_22E47DC08);
  v34 = v4;
  result = sub_22E47CFC4();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      result = sub_22E47D0E4();
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
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
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

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
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

uint64_t sub_22E45C6F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641B0, &unk_22E47DB70);
  v37 = v4;
  result = sub_22E47CFC4();
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

      sub_22E47D0F4();
      sub_22E47CE24();
      result = sub_22E47D124();
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

uint64_t sub_22E45C9B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64250, &qword_22E47DC00);
  v39 = v4;
  result = sub_22E47CFC4();
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
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 104 * v21;
      if (v39)
      {
        v41 = *v25;
        v44 = *(v25 + 8);
        v40 = *(v25 + 16);
        v43 = *(v25 + 24);
        v42 = *(v25 + 40);
        v45 = *(v25 + 48);
        v50 = *(v25 + 72);
        v46 = *(v25 + 32);
        v47 = *(v25 + 80);
        v48 = *(v25 + 64);
        v49 = *(v25 + 88);
        v51 = *(v25 + 96);
      }

      else
      {
        v27 = *(v25 + 16);
        v26 = *(v25 + 32);
        v53 = *v25;
        v54 = v27;
        v55 = v26;
        v29 = *(v25 + 64);
        v28 = *(v25 + 80);
        v30 = *(v25 + 48);
        v59 = *(v25 + 96);
        v57 = v29;
        v58 = v28;
        v56 = v30;
        v51 = v59;
        v50 = *(&v29 + 1);
        v47 = v28;
        v48 = v29;
        v49 = BYTE8(v28);
        v45 = v30;
        v42 = *(&v55 + 1);
        v46 = v55;
        v43 = BYTE8(v54);
        v44 = *(&v53 + 1);
        v40 = v54;
        v41 = v53;

        sub_22E4658E4(&v53, v52);
      }

      sub_22E47D0F4();
      sub_22E47CE24();
      result = sub_22E47D124();
      v31 = -1 << *(v7 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 104 * v15;
      *v17 = v41;
      *(v17 + 8) = v44;
      *(v17 + 16) = v40;
      *(v17 + 24) = v43;
      *(v17 + 32) = v46;
      *(v17 + 40) = v42;
      *(v17 + 48) = v45;
      *(v17 + 64) = v48;
      *(v17 + 72) = v50;
      *(v17 + 80) = v47;
      *(v17 + 88) = v49;
      *(v17 + 96) = v51;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v39 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v2;
    if (v38 >= 64)
    {
      bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_22E45CD98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64248, &qword_22E47DBF8);
  v36 = v4;
  result = sub_22E47CFC4();
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
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = *(v5 + 56) + 104 * v20;
      if (v36)
      {
        v38 = *v22;
        v41 = *(v22 + 8);
        v37 = *(v22 + 16);
        v40 = *(v22 + 24);
        v39 = *(v22 + 40);
        v42 = *(v22 + 48);
        v47 = *(v22 + 72);
        v43 = *(v22 + 32);
        v44 = *(v22 + 80);
        v45 = *(v22 + 64);
        v46 = *(v22 + 88);
        v23 = *(v22 + 96);
      }

      else
      {
        v23 = *(v22 + 96);
        v24 = *(v22 + 48);
        v25 = *(v22 + 80);
        v52 = *(v22 + 64);
        v53 = v25;
        v51 = v24;
        v26 = *v22;
        v27 = *(v22 + 16);
        v50 = *(v22 + 32);
        v49[0] = v26;
        v49[1] = v27;
        v54 = v23;
        v47 = *(&v52 + 1);
        v44 = v25;
        v45 = v52;
        v46 = BYTE8(v25);
        v42 = v51;
        v39 = *(&v50 + 1);
        v43 = v50;
        v40 = BYTE8(v27);
        v41 = *(&v26 + 1);
        v37 = v27;
        v38 = v26;
        sub_22E4658E4(v49, v48);
      }

      sub_22E47D0F4();
      sub_22E47D114();
      result = sub_22E47D124();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v21;
      v16 = *(v7 + 56) + 104 * v15;
      *v16 = v38;
      *(v16 + 8) = v41;
      *(v16 + 16) = v37;
      *(v16 + 24) = v40;
      *(v16 + 32) = v43;
      *(v16 + 40) = v39;
      *(v16 + 48) = v42;
      *(v16 + 64) = v45;
      *(v16 + 72) = v47;
      *(v16 + 80) = v44;
      *(v16 + 88) = v46;
      *(v16 + 96) = v23;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_22E45D150(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64238, &qword_22E47DBE8);
  v34 = v4;
  result = sub_22E47CFC4();
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_22E47D0F4();
      sub_22E47CE24();
      result = sub_22E47D124();
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
      *(*(v7 + 56) + 8 * v15) = v24;
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

uint64_t sub_22E45D3F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64210, &qword_22E47DBC0);
  v34 = v4;
  result = sub_22E47CFC4();
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
      v21 = (*(v5 + 48) + 24 * v20);
      v22 = v21[1];
      v35 = *v21;
      v23 = v21[2];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_22E47D0F4();
      MEMORY[0x2318E7080](v35);
      MEMORY[0x2318E7080](v22);
      MEMORY[0x2318E7080](v23);
      result = sub_22E47D124();
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
      v16 = (*(v7 + 48) + 24 * v15);
      *v16 = v35;
      v16[1] = v22;
      v16[2] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
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

uint64_t sub_22E45D6C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64218, &qword_22E47DBC8);
  result = sub_22E47CFC4();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v4;
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v23 = v20 | (v8 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = (*(v5 + 56) + 24 * v23);
      v33 = v25[1];
      v34 = v25[2];
      v26 = *v25;
      sub_22E47D0F4();
      sub_22E47CE24();

      result = sub_22E47D124();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v15) >> 6;
        while (++v17 != v28 || (v27 & 1) == 0)
        {
          v29 = v17 == v28;
          if (v17 == v28)
          {
            v17 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v17);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v17 << 6);
            goto LABEL_9;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v24;
      v19 = (*(v7 + 56) + 24 * v18);
      *v19 = v26;
      v19[1] = v33;
      v19[2] = v34;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_22E45DA30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64220, &qword_22E47DBD0);
  v36 = v4;
  result = sub_22E47CFC4();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
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
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 24 * v21;
      v37 = *v25;
      v26 = *(v25 + 16);
      if ((v36 & 1) == 0)
      {
      }

      sub_22E47D0F4();
      sub_22E47CE24();
      result = sub_22E47D124();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v37;
      *(v17 + 16) = v26;
      ++*(v7 + 16);
      v5 = v35;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22E45DCF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64230, &qword_22E47DBE0);
  v36 = v4;
  result = sub_22E47CFC4();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
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
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 24 * v21;
      v37 = *v25;
      v26 = *(v25 + 16);
      if ((v36 & 1) == 0)
      {
      }

      sub_22E47D0F4();
      sub_22E47CE24();
      result = sub_22E47D124();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v37;
      *(v17 + 16) = v26;
      ++*(v7 + 16);
      v5 = v35;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22E45DFB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64200, &qword_22E47DBB0);
  v37 = v4;
  result = sub_22E47CFC4();
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

      sub_22E47D0F4();
      sub_22E47CE24();
      result = sub_22E47D124();
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

uint64_t sub_22E45E270(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_22E47CFC4();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_22E47D0F4();
      sub_22E47CE24();
      result = sub_22E47D124();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_22E45E510(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641F0, &qword_22E47DBA0);
  v34 = v4;
  result = sub_22E47CFC4();
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_22E47D0F4();
      sub_22E47CE24();
      result = sub_22E47D124();
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
      *(*(v7 + 56) + 8 * v15) = v24;
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

uint64_t sub_22E45E7B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for CustomSymbol(0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22E47CD64();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641D8, &qword_22E47DB90);
  v43 = v4;
  result = sub_22E47CFC4();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_22E466E90(v27 + v28 * v24, v47, type metadata accessor for CustomSymbol);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_22E466E28(v29 + v28 * v24, v47, type metadata accessor for CustomSymbol);
      }

      sub_22E466F68(&qword_27DA641C0, MEMORY[0x277CC9600]);
      result = sub_22E47CD74();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_22E466E90(v47, *(v12 + 56) + v28 * v20, type metadata accessor for CustomSymbol);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_22E45EC3C(char a1, uint64_t a2)
{
  v3 = *(*v2 + 24);
  if (v3 >= a2 && (a1 & 1) != 0)
  {
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    if (v3 < a2)
    {
      v4 = a2;
      v5 = 0;
      goto LABEL_9;
    }

    sub_22E45F83C();
    return 0;
  }

  v4 = a2;
  v5 = 1;
LABEL_9:
  sub_22E45C6F4(v4, v5);
  return 1;
}

unint64_t sub_22E45EC9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_22E45C1E8(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22E45C470(v16, a4 & 1);
      result = sub_22E45C1E8(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_22E47D094();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_22E45F6D4();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

uint64_t sub_22E45EDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_22E450B0C(a3, a4);
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
      sub_22E45C6F4(v18, a5 & 1);
      v13 = sub_22E450B0C(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_22E47D094();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_22E45F83C();
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

unint64_t sub_22E45EF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_22E45C30C(a2, a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_22E45D3F8(v18, a5 & 1);
      result = sub_22E45C30C(a2, a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = sub_22E47D094();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_22E45FED4();
      result = v21;
    }
  }

  v23 = *v6;
  if ((v19 & 1) == 0)
  {
    v23[(result >> 6) + 8] |= 1 << result;
    v24 = (v23[6] + 24 * result);
    *v24 = a2;
    v24[1] = a3;
    v24[2] = a4;
    *(v23[7] + 8 * result) = a1;
    v25 = v23[2];
    v17 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v17)
    {
      v23[2] = v26;
      return result;
    }

    goto LABEL_15;
  }

  *(v23[7] + 8 * result) = a1;
}

unint64_t sub_22E45F100(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_22E45F150(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22E45F1BC(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22E45F228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = -1 << *(v4 + 32);
  result = a4 & ~v6;
  if ((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v8 = ~v6;
    do
    {
      v9 = (*(v4 + 48) + 24 * result);
      v10 = *v9;
      v11 = v9[1];
      v12 = v9[2];
      if (v10 == a1 && v11 == a2 && v12 == a3)
      {
        break;
      }

      result = (result + 1) & v8;
    }

    while (((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22E45F2AC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 2)
      {
        if (*(*(v2 + 48) + v4))
        {
          if (v7 == 1)
          {
            v8 = 0x534F63616DLL;
          }

          else
          {
            v8 = 0x617461432063614DLL;
          }

          if (v7 == 1)
          {
            v9 = 0xE500000000000000;
          }

          else
          {
            v9 = 0xEC0000007473796CLL;
          }
        }

        else
        {
          v8 = 0x6F626D7953204653;
          v9 = 0xEA0000000000736CLL;
        }
      }

      else if (*(*(v2 + 48) + v4) > 4u)
      {
        if (v7 == 5)
        {
          v9 = 0xE400000000000000;
          v8 = 1397716596;
        }

        else
        {
          v9 = 0xE800000000000000;
          v8 = 0x534F6E6F69736976;
        }
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 5459817;
        }

        else
        {
          v8 = 0x534F6863746177;
        }

        if (v7 == 3)
        {
          v9 = 0xE300000000000000;
        }

        else
        {
          v9 = 0xE700000000000000;
        }
      }

      v10 = 0x534F6E6F69736976;
      if (v6 == 5)
      {
        v10 = 1397716596;
      }

      v11 = 0xE400000000000000;
      if (v6 != 5)
      {
        v11 = 0xE800000000000000;
      }

      v12 = 0x534F6863746177;
      if (v6 == 3)
      {
        v12 = 5459817;
        v13 = 0xE300000000000000;
      }

      else
      {
        v13 = 0xE700000000000000;
      }

      if (v6 <= 4)
      {
        v10 = v12;
        v11 = v13;
      }

      v14 = 0x617461432063614DLL;
      if (v6 == 1)
      {
        v14 = 0x534F63616DLL;
      }

      v15 = 0xEC0000007473796CLL;
      if (v6 == 1)
      {
        v15 = 0xE500000000000000;
      }

      if (!v6)
      {
        v14 = 0x6F626D7953204653;
        v15 = 0xEA0000000000736CLL;
      }

      v16 = v6 <= 2 ? v14 : v10;
      v17 = v6 <= 2 ? v15 : v11;
      if (v8 == v16 && v9 == v17)
      {
        break;
      }

      v18 = sub_22E47D054();

      if ((v18 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}