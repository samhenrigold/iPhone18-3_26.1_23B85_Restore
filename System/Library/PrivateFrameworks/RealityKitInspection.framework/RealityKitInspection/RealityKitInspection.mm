unint64_t sub_2619AF808(unint64_t result, uint64_t *a2, void *a3)
{
  v5 = result;
  if (result >> 62)
  {
LABEL_30:
    result = sub_2619D9CA8();
    v6 = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      v8 = v5 & 0xC000000000000001;
      v21 = v5 + 32;
      v22 = v5 & 0xFFFFFFFFFFFFFF8;
      v9 = MEMORY[0x277D84F90];
      v19 = v6;
      v20 = v5;
      v18 = v5 & 0xC000000000000001;
      do
      {
        if (v8)
        {
          v11 = MEMORY[0x2667148E0](v7, v5);
          v12 = v11;
          v13 = __OFADD__(v7++, 1);
          if (v13)
          {
            goto LABEL_29;
          }
        }

        else
        {
          if (v7 >= *(v22 + 16))
          {
            __break(1u);
            return result;
          }

          v12 = *(v21 + 8 * v7);

          v13 = __OFADD__(v7++, 1);
          if (v13)
          {
            goto LABEL_29;
          }
        }

        if (!*(*a2 + 16) || (v11 = sub_2619B0D08(v12), (v14 & 1) == 0))
        {
          v15 = sub_2619C691C(v11);
          v23 = sub_2619B3330(v9);
          if (v15 >> 62)
          {
            v16 = sub_2619D9CA8();
            if (v16)
            {
LABEL_16:
              v5 = v15 + 32;
              while (1)
              {
                v13 = __OFSUB__(v16--, 1);
                if (v13)
                {
                  break;
                }

                if ((v15 & 0xC000000000000001) != 0)
                {
                  v17 = MEMORY[0x2667148E0](v16, v15);
                }

                else
                {
                  if ((v16 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_27;
                  }

                  if (v16 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_28;
                  }

                  v17 = *(v5 + 8 * v16);
                }

                sub_2619AFB2C(v17, a2, a3, v24);
                sub_2619B3420(v24);

                if (!v16)
                {
                  goto LABEL_4;
                }
              }

              __break(1u);
LABEL_27:
              __break(1u);
LABEL_28:
              __break(1u);
LABEL_29:
              __break(1u);
              goto LABEL_30;
            }
          }

          else
          {
            v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v16)
            {
              goto LABEL_16;
            }
          }

LABEL_4:

          sub_2619AFB2C(v12, a2, a3, v25);
          sub_2619B3420(v25);
          v9 = MEMORY[0x277D84F90];
          v10 = sub_2619B06D4(MEMORY[0x277D84F90]);
          sub_2619B5638(v23, a2, v10);

          v6 = v19;
          v5 = v20;
          v8 = v18;
        }
      }

      while (v7 != v6);
    }
  }

  return result;
}

uint64_t sub_2619AFA50(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (sub_2619B62AC(__dst) == 1)
  {
    sub_2619B10CC(a2, __srca);

    memcpy(v9, __srca, sizeof(v9));
    return sub_2619B62D0(v9, &qword_27FEC8F58, &unk_2619DA600);
  }

  else
  {
    memcpy(v9, __src, sizeof(v9));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    __srca[0] = *v2;
    sub_2619B2534(v9, a2, isUniquelyReferenced_nonNull_native);

    *v2 = __srca[0];
  }

  return result;
}

uint64_t sub_2619AFB2C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, _DWORD *a4@<X8>)
{
  v114 = a3;
  v111 = a1;
  v109 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8EA8, &qword_2619DA390);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v97 - v7;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F88, &qword_2619DA548);
  v108 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v10 = &v97 - v9;
  v11 = sub_2619D9428();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v112 = &v97 - v16;
  v113 = a2;
  v17 = *a2;
  if (*(v17 + 16))
  {
    v18 = sub_2619B0D08(v111);
    if (v19)
    {
      memcpy(v253, (*(v17 + 56) + 296 * v18), sizeof(v253));
      LODWORD(v112) = *&v253[256];
      LODWORD(v111) = v253[260];
      v110 = *&v253[264];
      v108 = *&v253[272];
      LODWORD(v107) = v253[280];
      v106 = *&v253[288];
      LODWORD(v105) = *&v253[224];
      v103 = *&v253[232];
      LODWORD(v104) = v253[228];
      v101 = *&v253[240];
      v102 = v253[236];
      LODWORD(v113) = v253[244];
      v99 = *&v253[216];
      v100 = *&v253[248];
      LODWORD(v115) = *v253;
      v20 = v253[4];
      v97 = *&v253[88];
      v98 = *&v253[72];
      v21 = v253[80];
      v22 = *&v253[64];
      v23 = v253[68];
      v24 = *&v253[56];
      v25 = v253[60];
      LODWORD(v114) = *&v253[48];
      v26 = v253[52];
      sub_2619B624C(v253, v252);
      v27 = v25;
      v28 = v24;
      v29 = v97;
      v30 = v101;
      v31 = v102;
      v32 = v111;
      v33 = v103;
      v34 = v104;
      v36 = v99;
      v35 = v100;
      v37 = v107;
      v38 = v98;
      v39 = v105;
      result = v106;
      v41 = v108;
      v42 = v112;
      v43 = v110;
      v254 = *&v253[8];
      v255 = *&v253[24];
      v256 = *&v253[40];
      v257 = *&v253[104];
      v258 = *&v253[120];
      v259 = v253[136];
      *(v122 + 13) = *&v253[205];
      v121 = *&v253[176];
      v122[0] = *&v253[192];
      v44 = v113;
      v119 = *&v253[144];
      v120 = *&v253[160];
LABEL_10:
      v124 = v26 & 1;
      v88 = v27 & 1;
      v118 = v88;
      v117 = v23 & 1;
      v116 = v21 & 1;
      LOBYTE(v135) = v20;
      *&v123[3] = v254;
      *&v123[19] = v255;
      *&v123[35] = v256;
      *&v128[7] = v119;
      *&v128[68] = *(v122 + 13);
      *&v128[55] = v122[0];
      *&v128[39] = v121;
      *&v128[23] = v120;
      LOBYTE(v129) = v34;
      LOBYTE(v132) = v31;
      v127 = v44;
      v126 = v32 & 1;
      v125 = v37 & 1;
      v89 = v109;
      *v109 = v115;
      *(v89 + 4) = v135;
      v90 = *v123;
      v91 = *&v123[16];
      *(v89 + 2) = *&v123[27];
      *(v89 + 21) = v91;
      *(v89 + 5) = v90;
      v89[12] = v114;
      *(v89 + 52) = v26 & 1;
      v89[14] = v28;
      *(v89 + 60) = v88;
      v89[16] = v22;
      *(v89 + 68) = v23 & 1;
      *(v89 + 9) = v38;
      *(v89 + 80) = v21 & 1;
      *(v89 + 22) = v29;
      v92 = v257;
      v93 = v258;
      *(v89 + 136) = v259;
      *(v89 + 30) = v93;
      *(v89 + 26) = v92;
      v94 = *&v128[16];
      *(v89 + 137) = *v128;
      v95 = *&v128[32];
      v96 = *&v128[48];
      *(v89 + 197) = *&v128[60];
      *(v89 + 185) = v96;
      *(v89 + 169) = v95;
      *(v89 + 153) = v94;
      *(v89 + 27) = v36;
      v89[56] = v39;
      *(v89 + 228) = v129;
      v89[58] = v33;
      *(v89 + 236) = v132;
      v89[60] = v30;
      *(v89 + 244) = v127;
      *(v89 + 31) = v35;
      v89[64] = v42;
      *(v89 + 260) = v126;
      *(v89 + 33) = v43;
      *(v89 + 34) = v41;
      *(v89 + 280) = v125;
      *(v89 + 36) = result;
      return result;
    }
  }

  v104 = v8;
  v105 = v6;
  v106 = v5;
  sub_2619D94A8();
  v45 = v112;
  sub_2619D9068();
  sub_2619C8954(&v139);
  v107 = v12;
  v46 = *(v12 + 16);
  v110 = v11;
  v46(v15, v45, v11);
  sub_2619D9408();
  v47 = v168;
  v48 = v170;
  v49 = v171;
  v50 = v173;
  v51 = v161;
  v52 = v162;
  v53 = v163;
  v54 = v164;
  v55 = v165;
  v56 = v166;
  v57 = v167;
  v58 = v160;
  v59 = v172;
  v60 = v169;
  *&v138[13] = *&v159[13];
  *v138 = *v159;
  v137 = v158;
  v135 = v156;
  v136 = v157;
  v134 = v155;
  v133 = v154;
  v132 = v153;
  v61 = v144;
  v62 = v146;
  v63 = v148;
  v64 = v150;
  v65 = v152;
  v66 = v151;
  v67 = v149;
  v68 = v147;
  v69 = v145;
  v131 = v143;
  v130 = v142;
  v129 = v141;
  v70 = v139;
  for (i = v140; ; i = v176)
  {
    v127 = v69 & 1;
    v126 = v68 & 1;
    v125 = v67 & 1;
    v124 = v66 & 1;
    *v128 = v70;
    v128[4] = i & 1;
    *&v128[8] = v129;
    *&v128[24] = v130;
    *&v128[40] = v131;
    *&v128[48] = v61;
    v128[52] = v69 & 1;
    *&v128[56] = v62;
    v128[60] = v68 & 1;
    *&v128[64] = v63;
    v128[68] = v67 & 1;
    *&v128[72] = v64;
    v128[80] = v66 & 1;
    *&v128[88] = v65;
    v128[136] = v134;
    *&v128[120] = v133;
    *&v128[104] = v132;
    *&v128[205] = *&v138[13];
    *&v128[176] = v137;
    *&v128[192] = *v138;
    *&v128[144] = v135;
    *&v128[160] = v136;
    *&v128[216] = v58;
    *&v128[224] = v51;
    v128[228] = v52 & 1;
    *&v128[232] = v53;
    v128[236] = v54 & 1;
    *&v128[240] = v55;
    v128[244] = v56 & 1;
    *&v128[248] = v57;
    *&v128[256] = v47;
    v128[260] = v60 & 1;
    *&v128[264] = v48;
    *&v128[272] = v49;
    v128[280] = v59 & 1;
    *&v128[288] = v50;
    memcpy(v251, v128, sizeof(v251));
    sub_2619D9418();
    if (!*v253)
    {
      break;
    }

    sub_2619AFB2C(*v253, v113, v114, v174);
    sub_2619CC6D0(v174, &v175);

    sub_2619B3420(v174);
    sub_2619B3420(v128);
    v47 = v204;
    v48 = v206;
    v49 = v207;
    v50 = v209;
    v51 = v197;
    v52 = v198;
    v53 = v199;
    v54 = v200;
    v55 = v201;
    v56 = v202;
    v57 = v203;
    v58 = v196;
    v59 = v208;
    v60 = v205;
    *&v138[13] = *&v195[13];
    *v138 = *v195;
    v137 = v194;
    v135 = v192;
    v136 = v193;
    v134 = v191;
    v133 = v190;
    v132 = v189;
    v61 = v180;
    v62 = v182;
    v63 = v184;
    v64 = v186;
    v65 = v188;
    v66 = v187;
    v67 = v185;
    v68 = v183;
    v69 = v181;
    v131 = v179;
    v130 = v178;
    v129 = v177;
    v70 = v175;
  }

  (*(v108 + 8))(v10, v115);
  sub_2619B6494(&qword_27FEC8F90, MEMORY[0x277CDB190], MEMORY[0x277CDB1A0]);
  sub_2619D9A68();
  sub_2619D9A98();
  result = sub_2619D9A88();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    v253[0] = 0;
    v72 = sub_2619C9840(result);
    v73 = v111;
    v74 = sub_2619B3564(v111);
    v76 = v75;
    v78 = v77;
    v115 = v79;
    sub_2619B389C(v73, v210);
    sub_2619B3B34(v73, v211);
    v80 = v104;
    sub_2619D9358();
    v81 = v106;
    sub_2619D9268();
    (*(v105 + 8))(v80, v81);
    nullsub_1();
    v83 = v82;
    sub_2619B41F4(v73, v212);
    sub_2619B4984(v213);
    sub_2619B4BC0(v214);
    v253[0] = BYTE4(v74) & 1;
    LOBYTE(v252[0]) = BYTE4(v76) & 1;
    LOBYTE(v216) = BYTE4(v78) & 1;
    sub_2619CC540(v72 | ((HIDWORD(v72) & 1) << 32), v74 | ((HIDWORD(v74) & 1) << 32), v76 | ((BYTE4(v76) & 1) << 32), v78 | ((BYTE4(v78) & 1) << 32), v115, v210, v211, v83, v215, v212, v213, v214);
    *v253 = v215[0];
    v253[4] = v215[1];
    memcpy(&v253[5], &v215[1] + 1, 0x123uLL);
    sub_2619CC6D0(v251, &v216);
    sub_2619B3420(v128);

    sub_2619B624C(&v216, v252);
    v84 = v113;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v252[0] = *v84;
    sub_2619B2534(&v216, v73, isUniquelyReferenced_nonNull_native);

    *v84 = v252[0];
    v20 = v217;
    LOBYTE(v254) = v217;
    LODWORD(v252[0]) = v216;
    BYTE4(v252[0]) = v217;
    memcpy(v252 + 5, &v215[1] + 1, 0x123uLL);
    LODWORD(v115) = v216;
    *v123 = v216;
    v123[4] = v217;
    memcpy(&v123[5], &v215[1] + 1, 0x123uLL);

    sub_2619B624C(v252, &v119);
    sub_2619B3420(v123);
    v86 = v114;
    v87 = swift_isUniquelyReferenced_nonNull_native();
    *&v119 = *v86;
    sub_2619B2534(v252, v73, v87);

    *v86 = v119;
    (*(v107 + 8))(v112, v110);
    v42 = v245;
    v43 = v247;
    v41 = v248;
    result = v250;
    v39 = v238;
    v34 = v239;
    v33 = v240;
    v31 = v241;
    v30 = v242;
    v44 = v243;
    v35 = v244;
    v36 = v237;
    v37 = v249;
    v32 = v246;
    *(v122 + 13) = *&v236[13];
    v121 = v235;
    v122[0] = *v236;
    v119 = v233;
    v120 = v234;
    v257 = v230;
    v258 = v231;
    v259 = v232;
    LODWORD(v114) = v221;
    v28 = v223;
    v22 = v225;
    v38 = v227;
    v29 = v229;
    v21 = v228;
    v23 = v226;
    v27 = v224;
    v26 = v222;
    v256 = v220;
    v254 = v218;
    v255 = v219;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

unint64_t sub_2619B06D4(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v13 = a1;
    v14 = sub_2619D9CA8();
    if (v14)
    {
      v15 = v14;
      v1 = sub_2619B0E90(v14, 0);
      sub_2619B3120(v1 + 32, v15, v13);
      v17 = v16;

      if (v17 != v15)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = MEMORY[0x277D84F90];
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_2619D9CA8();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x2667148E0]();
          v10 = MEMORY[0x2667148E0](v2 - (v6 - 3), v1);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v6);
          v10 = *(v1 + 8 * v7 + 32);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_2619B0E2C(v1);
          v11 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v11) = 0;
        }

        v12 = v1 & 0xFFFFFFFFFFFFFF8;
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v10;

        if ((v1 & 0x8000000000000000) != 0 || v11)
        {
          a1 = sub_2619B0E2C(v1);
          v1 = a1;
          v12 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v12 + 16))
        {
          goto LABEL_34;
        }

        *(v12 + 8 * v7 + 32) = v9;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

double sub_2619B08E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2619B389C(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

double sub_2619B0974@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2619B3B34(a1, v5);
  v3 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v3;
  result = *&v6;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

double sub_2619B09C0@<D0>(uint64_t a2@<X8>)
{
  sub_2619B4984(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

__n128 sub_2619B0A04@<Q0>(uint64_t a2@<X8>)
{
  sub_2619B4BC0(v5);
  v3 = *v6;
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 61) = *&v6[13];
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

void *sub_2619B0A84@<X0>(void *(*a1)(uint64_t *__return_ptr, uint64_t)@<X3>, _DWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8EA8, &qword_2619DA390);
  result = a1(&v6, v4);
  *a2 = v6;
  return result;
}

void sub_2619B0AE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8EA8, &qword_2619DA390);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v4 - v2;
  sub_2619D9358();
  sub_2619D9268();
  (*(v1 + 8))(v3, v0);
  nullsub_1();
}

double sub_2619B0C20@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2619B41F4(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

unint64_t sub_2619B0C64(uint64_t a1)
{
  v1 = sub_2619C64D8(a1);
  if (v1 >> 62)
  {
    v2 = sub_2619D9CA8();

    if (v2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_7;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 <= 0x7FFFFFFF)
  {
    v4 = sub_2619C9840(v2);
    return v4 | ((HIDWORD(v4) & 1) << 32);
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_2619B0D08(uint64_t a1)
{
  sub_2619D94A8();
  sub_2619B6494(&qword_27FEC8F50, MEMORY[0x277CDB1C8], MEMORY[0x277CDB1D0]);
  v2 = sub_2619D9918();
  return sub_2619B0F18(a1, v2);
}

unint64_t sub_2619B0DB4(uint64_t a1, uint64_t a2)
{
  sub_2619D9DA8();
  sub_2619D9998();
  v4 = sub_2619D9DC8();

  return sub_2619B1014(a1, a2, v4);
}

uint64_t sub_2619B0E2C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2619D9CA8();
  }

  return sub_2619D9BD8();
}

void *sub_2619B0E90(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F80, &qword_2619DA540);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unint64_t sub_2619B0F18(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_2619D94A8();
    sub_2619B6494(&qword_27FEC8F68, MEMORY[0x277CDB1C8], MEMORY[0x277CDB1D8]);
    do
    {
      if (sub_2619D9938())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2619B1014(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2619D9D38())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_2619B10CC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = sub_2619B0D08(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    __src[0] = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2619B2C64();
      v9 = __src[0];
    }

    memmove(a2, (*(v9 + 56) + 296 * v7), 0x128uLL);
    sub_2619B235C(v7, v9);
    *v3 = v9;
    nullsub_1();
  }

  else
  {
    sub_2619B638C(__src);
    memcpy(a2, __src, 0x128uLL);
  }
}

uint64_t sub_2619B1194(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F28, &qword_2619DA470);
  v34 = v4;
  result = sub_2619D9CC8();
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
      v24 = *(*(v5 + 56) + 4 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_2619D9DA8();
      sub_2619D9998();
      result = sub_2619D9DC8();
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
      *(*(v7 + 56) + 4 * v15) = v24;
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

uint64_t sub_2619B1434(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8EE0, &qword_2619DA3C0);
  v36 = v4;
  result = sub_2619D9CC8();
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
      v25 = (*(v5 + 56) + 24 * v21);
      v26 = v25[1];
      v37 = v25[2];
      v38 = *v25;
      if ((v36 & 1) == 0)
      {
      }

      sub_2619D9DA8();
      sub_2619D9998();
      result = sub_2619D9DC8();
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
      v17 = (*(v7 + 56) + 24 * v15);
      *v17 = v38;
      v17[1] = v26;
      v17[2] = v37;
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

uint64_t sub_2619B16FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8EE8, &qword_2619DA3C8);
  v37 = v4;
  result = sub_2619D9CC8();
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 24 * v21);
      v26 = v25[1];
      v38 = *v25;
      v27 = v25[2];
      if ((v37 & 1) == 0)
      {
      }

      sub_2619D9DA8();
      sub_2619D9998();
      result = sub_2619D9DC8();
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = (*(v7 + 56) + 24 * v15);
      *v17 = v38;
      v17[1] = v26;
      v17[2] = v27;
      ++*(v7 + 16);
      v5 = v36;
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

uint64_t sub_2619B19CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F60, &qword_2619DA538);
  v40 = v4;
  result = sub_2619D9CC8();
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
    v39 = v5;
    while (v12)
    {
      v22 = __clz(__rbit64(v12));
      v23 = (v12 - 1) & v12;
LABEL_15:
      v26 = v22 | (v8 << 6);
      v68 = v23;
      v27 = *(v5 + 56);
      if (v40)
      {
        v67 = *(*(v5 + 48) + 8 * v26);
        v75 = v67;
        v28 = (v27 + 296 * v26);
        v57 = *v28;
        v53 = *(v28 + 4);
        v29 = *(v28 + 6);
        v76 = *(v28 + 2);
        v77 = v29;
        v78 = *(v28 + 5);
        v46 = *(v28 + 52);
        v47 = v28[12];
        v48 = *(v28 + 60);
        v49 = v28[14];
        v50 = *(v28 + 68);
        v51 = v28[16];
        v52 = *(v28 + 80);
        v54 = *(v28 + 9);
        v55 = *(v28 + 11);
        v56 = *(v28 + 12);
        v81 = *(v28 + 136);
        v30 = *(v28 + 30);
        v79 = *(v28 + 26);
        v80 = v30;
        v70 = *(v28 + 9);
        *(v73 + 13) = *(v28 + 205);
        v73[0] = *(v28 + 12);
        v72 = *(v28 + 11);
        v71 = *(v28 + 10);
        v64 = v28[56];
        v62 = v28[58];
        v43 = *(v28 + 236);
        v44 = *(v28 + 228);
        v60 = v28[60];
        v58 = *(v28 + 31);
        v59 = *(v28 + 27);
        v66 = v28[64];
        v45 = *(v28 + 260);
        v65 = *(v28 + 33);
        v63 = *(v28 + 34);
        v41 = *(v28 + 244);
        v42 = *(v28 + 280);
        v61 = *(v28 + 36);
      }

      else
      {
        v75 = *(*(v5 + 48) + 8 * v26);
        memcpy(__dst, (v27 + 296 * v26), sizeof(__dst));
        v66 = *&__dst[256];
        v65 = *&__dst[264];
        v63 = *&__dst[272];
        v61 = *&__dst[288];
        v64 = *&__dst[224];
        v44 = __dst[228];
        v45 = __dst[260];
        v62 = *&__dst[232];
        v42 = __dst[280];
        v43 = __dst[236];
        v60 = *&__dst[240];
        v41 = __dst[244];
        v58 = *&__dst[248];
        v59 = *&__dst[216];
        v57 = *__dst;
        v55 = *&__dst[88];
        v56 = *&__dst[96];
        v54 = *&__dst[72];
        v52 = __dst[80];
        v53 = __dst[4];
        v50 = __dst[68];
        v51 = *&__dst[64];
        v48 = __dst[60];
        v49 = *&__dst[56];
        v46 = __dst[52];
        v47 = *&__dst[48];
        v67 = v75;

        sub_2619B624C(__dst, &v70);
        v76 = *&__dst[8];
        v77 = *&__dst[24];
        v78 = *&__dst[40];
        v79 = *&__dst[104];
        v80 = *&__dst[120];
        v81 = __dst[136];
        *(v73 + 13) = *&__dst[205];
        v73[0] = *&__dst[192];
        v71 = *&__dst[160];
        v72 = *&__dst[176];
        v70 = *&__dst[144];
      }

      sub_2619D94A8();
      sub_2619B6494(&qword_27FEC8F50, MEMORY[0x277CDB1C8], MEMORY[0x277CDB1D0]);
      result = sub_2619D9918();
      v31 = -1 << *(v7 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v5 = v39;
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
      v5 = v39;
LABEL_7:
      *&__dst[68] = *(v73 + 13);
      *&__dst[39] = v72;
      *&__dst[55] = v73[0];
      *&__dst[7] = v70;
      *&__dst[23] = v71;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v67;
      *&v69[35] = v78;
      v16 = *(v7 + 56) + 296 * v15;
      *v16 = v57;
      *(v16 + 4) = v53;
      *(v16 + 48) = v47;
      *(v16 + 52) = v46;
      *(v16 + 56) = v49;
      *(v16 + 60) = v48;
      *(v16 + 64) = v51;
      *(v16 + 68) = v50;
      *(v16 + 72) = v54;
      *(v16 + 80) = v52;
      *(v16 + 88) = v55;
      *(v16 + 96) = v56;
      *(v16 + 136) = v81;
      *&v69[3] = v76;
      *&v69[19] = v77;
      *(v16 + 5) = *v69;
      *(v16 + 21) = *&v69[16];
      *(v16 + 32) = *&v69[27];
      v17 = v79;
      *(v16 + 120) = v80;
      *(v16 + 104) = v17;
      *(v16 + 137) = *__dst;
      v18 = *&__dst[16];
      v19 = *&__dst[32];
      v20 = *&__dst[48];
      v21 = *&__dst[60];
      *(v16 + 216) = v59;
      *(v16 + 224) = v64;
      *(v16 + 228) = v44;
      *(v16 + 232) = v62;
      *(v16 + 236) = v43;
      *(v16 + 240) = v60;
      *(v16 + 244) = v41;
      *(v16 + 248) = v58;
      *(v16 + 256) = v66;
      *(v16 + 260) = v45;
      *(v16 + 264) = v65;
      *(v16 + 272) = v63;
      *(v16 + 280) = v42;
      *(v16 + 288) = v61;
      *(v16 + 197) = v21;
      *(v16 + 185) = v20;
      *(v16 + 169) = v19;
      *(v16 + 153) = v18;
      ++*(v7 + 16);
      v12 = v68;
    }

    v24 = v8;
    while (1)
    {
      v8 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v25 = v9[v8];
      ++v24;
      if (v25)
      {
        v22 = __clz(__rbit64(v25));
        v23 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v2;
    if (v38 >= 64)
    {
      bzero(v9, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_2619B2084(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F48, &qword_2619DA530);
  v31 = v4;
  result = sub_2619D9CC8();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v5;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v32 = *(v20 + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      sub_2619D94A8();
      sub_2619B6494(&qword_27FEC8F50, MEMORY[0x277CDB1C8], MEMORY[0x277CDB1D0]);
      result = sub_2619D9918();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v32;
      ++*(v7 + 16);
      v5 = v30;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_2619B235C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2619D9B58() + 1) & ~v5;
    sub_2619D94A8();
    sub_2619B6494(&qword_27FEC8F50, MEMORY[0x277CDB1C8], MEMORY[0x277CDB1D0]);
    do
    {
      result = sub_2619D9918();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 >= v8 && v3 >= v9)
        {
LABEL_15:
          v12 = *(a2 + 48);
          v13 = (v12 + 8 * v3);
          v14 = (v12 + 8 * v6);
          if (v3 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
          }

          v15 = *(a2 + 56);
          result = v15 + 296 * v3;
          v16 = (v15 + 296 * v6);
          if (v3 != v6 || result >= v16 + 296)
          {
            result = memmove(result, v16, 0x128uLL);
            v3 = v6;
          }
        }
      }

      else if (v9 >= v8 || v3 >= v9)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2619B2534(const void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2619B0D08(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_2619B19CC(v14, a3 & 1);
      v9 = sub_2619B0D08(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_2619D94A8();
        result = sub_2619D9D78();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_2619B2C64();
      v9 = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 296 * v9;

    return sub_2619B6330(a1, v20);
  }

  v19[(v9 >> 6) + 8] |= 1 << v9;
  *(v19[6] + 8 * v9) = a2;
  memcpy((v19[7] + 296 * v9), a1, 0x128uLL);
  v22 = v19[2];
  v13 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;
}

unint64_t sub_2619B26A4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_2619B0D08(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_15;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_2619B2084(v14, a3 & 1);
      result = sub_2619B0D08(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_2619D94A8();
        result = sub_2619D9D78();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_2619B2E00();
      result = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a1;
    return result;
  }

  v19[(result >> 6) + 8] |= 1 << result;
  *(v19[6] + 8 * result) = a2;
  *(v19[7] + 8 * result) = a1;
  v20 = v19[2];
  v13 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19[2] = v21;
}

void *sub_2619B27EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F28, &qword_2619DA470);
  v2 = *v0;
  v3 = sub_2619D9CB8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LODWORD(v18) = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2619B2954()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8EE0, &qword_2619DA3C0);
  v2 = *v0;
  v3 = sub_2619D9CB8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = (*(v4 + 48) + v18);
        *v26 = v21;
        v26[1] = v20;
        v27 = (*(v4 + 56) + v17);
        *v27 = v23;
        v27[1] = v24;
        v27[2] = v25;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2619B2ADC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8EE8, &qword_2619DA3C8);
  v2 = *v0;
  v3 = sub_2619D9CB8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = (*(v4 + 48) + v18);
        v26 = v22[2];
        *v25 = v21;
        v25[1] = v20;
        v27 = (*(v4 + 56) + v17);
        *v27 = v23;
        v27[1] = v24;
        v27[2] = v26;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2619B2C64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F60, &qword_2619DA538);
  v2 = *v0;
  v3 = sub_2619D9CB8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_2619B624C(__dst, v18))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = *(*(v2 + 48) + 8 * v16);
      memcpy(__dst, (*(v2 + 56) + 296 * v16), 0x128uLL);
      *(*(v4 + 48) + 8 * v16) = v17;
      memcpy((*(v4 + 56) + 296 * v16), __dst, 0x128uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2619B2E00()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F48, &qword_2619DA530);
  v2 = *v0;
  v3 = sub_2619D9CB8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2619B2F5C(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x2667148E0](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_2619D9CA8();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t (*sub_2619B3098(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2667148E0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_2619B3118;
  }

  __break(1u);
  return result;
}

uint64_t sub_2619B3120(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2619D9CA8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2619D9CA8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2619B63E4();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F70, &unk_2619DB1E0);
            v9 = sub_2619B3098(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2619D94A8();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2619B32A0(uint64_t *a1, uint64_t *a2)
{
  sub_2619D94A8();
  sub_2619B6494(&qword_27FEC8F68, MEMORY[0x277CDB1C8], MEMORY[0x277CDB1D8]);
  return sub_2619D9938() & 1;
}

unint64_t sub_2619B3330(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F98, &unk_2619DA550);
    v3 = sub_2619D9CD8();

    for (i = (a1 + 40); ; i += 16)
    {
      v5 = *(i - 1);
      v6 = *i;

      result = sub_2619B0D08(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + result) = v6;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_2619B3474(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F00, &qword_2619DA3E0);
    v3 = sub_2619D9CD8();

    for (i = (a1 + 40); ; i += 4)
    {
      v5 = *(i - 1);
      v6 = *i;

      result = sub_2619B0D08(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 4 * result) = v6;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

uint64_t sub_2619B3564(uint64_t a1)
{
  v2 = sub_2619D93F8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8EA8, &qword_2619DA390);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v19 - v11;
  sub_2619D4228();
  v21 = v13;
  sub_2619D9358();
  sub_2619BA70C(v6);
  v19[0] = *(v7 + 8);
  (v19[0])(v12, v6);
  v20 = v22;
  sub_2619D9198();
  sub_2619D9368();
  v19[1] = sub_2619D93D8();
  v14 = *(v3 + 8);
  v14(v5, v2);
  sub_2619D9168();
  sub_2619D9368();
  v15 = a1;
  sub_2619D93D8();
  v14(v5, v2);
  sub_2619D9358();
  v16 = sub_2619D92E8();
  (v19[0])(v10, v6);
  if ((v16 & 0x100000000) != 0)
  {
    sub_2619B3474(MEMORY[0x277D84F90]);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8EF0, &qword_2619DA3D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2619DA380;
    *(inited + 32) = v15;
    *(inited + 40) = v16;

    sub_2619B3474(inited);
    swift_setDeallocating();
    sub_2619B62D0(inited + 32, &qword_27FEC8EF8, &qword_2619DA3D8);
  }

  return v20;
}

uint64_t sub_2619B389C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8EA8, &qword_2619DA390);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  sub_2619B60F0();

  sub_2619D9348();
  sub_2619D422C();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();

  swift_getAtKeyPath();

  v15 = v16;

  swift_getAtKeyPath();

  v8 = v16;

  swift_getAtKeyPath();

  v9 = v16;
  sub_2619BA248(v4);
  v10 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F30, &qword_2619DA520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2619DA380;
  *(inited + 32) = a1;

  *(inited + 40) = sub_2619B9A8C(v4);
  v12 = sub_2619B4104(inited, &qword_27FEC8F40, &qword_2619DB1F0);
  swift_setDeallocating();
  sub_2619B62D0(inited + 32, &qword_27FEC8F38, &qword_2619DA528);
  (*(v5 + 8))(v7, v4);
  result = sub_2619B61F8(v17);
  *a2 = v10;
  *(a2 + 4) = 0;
  *(a2 + 8) = v15;
  *(a2 + 12) = 0;
  *(a2 + 16) = v8;
  *(a2 + 20) = 0;
  *(a2 + 24) = v9;
  *(a2 + 28) = 0;
  *(a2 + 32) = v12;
  return result;
}

uint64_t sub_2619B3B34@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v56 = a2;
  v59 = sub_2619D93F8();
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v57 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8EA8, &qword_2619DA390);
  v55 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v54 - v5;
  sub_2619B60F0();

  sub_2619D9348();
  v7 = sub_2619D9238();
  v60 = v6;
  v61 = v4;
  v8 = sub_2619BA99C();
  v9 = v7 + 64;
  v10 = 1 << *(v7 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v7 + 64);
  v13 = (v10 + 63) >> 6;
  v66 = v7;

  v14 = 0;
  v15 = MEMORY[0x277D84F98];
  v64 = v8;
  v65 = a1;
  v62 = v13;
  v63 = v7 + 64;
  while (v12)
  {
    v16 = v14;
LABEL_11:
    v17 = __clz(__rbit64(v12)) | (v16 << 6);
    v18 = (*(v66 + 48) + 16 * v17);
    v19 = *v18;
    v20 = v18[1];
    v67 = *(*(v66 + 56) + 4 * v17);
    v21 = *(v8 + 16);
    swift_bridgeObjectRetain_n();
    if (v21)
    {
      v22 = sub_2619B0DB4(v19, v20);
      v23 = v20;
      if (v24)
      {
        v25 = (*(v8 + 56) + 16 * v22);
        v19 = *v25;
        v23 = v25[1];
      }
    }

    else
    {
      v23 = v20;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v68[0] = v15;
    v27 = v19;
    v29 = sub_2619B0DB4(v19, v23);
    v30 = v15[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      result = sub_2619D9D78();
      __break(1u);
      return result;
    }

    v33 = v28;
    if (v15[3] >= v32)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2619B27EC();
      }
    }

    else
    {
      sub_2619B1194(v32, isUniquelyReferenced_nonNull_native);
      v34 = sub_2619B0DB4(v27, v23);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_30;
      }

      v29 = v34;
    }

    a1 = v65;
    v12 &= v12 - 1;
    if (v33)
    {

      v15 = *&v68[0];
      *(*(*&v68[0] + 56) + 4 * v29) = v67;
    }

    else
    {
      v15 = *&v68[0];
      *(*&v68[0] + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v36 = (v15[6] + 16 * v29);
      *v36 = v27;
      v36[1] = v23;
      *(v15[7] + 4 * v29) = v67;

      v37 = v15[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_28;
      }

      v15[2] = v39;
    }

    v14 = v16;
    v9 = v63;
    v8 = v64;
    v13 = v62;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v16 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v16);
    ++v14;
    if (v12)
    {
      goto LABEL_11;
    }
  }

  v40 = v57;
  sub_2619D9368();
  sub_2619D94D8();
  v41 = sub_2619D93D8();
  v42 = *(v58 + 8);
  v43 = v59;
  v42(v40, v59);
  sub_2619D9368();
  sub_2619D94B8();
  v44 = sub_2619D93D8();
  v42(v40, v43);
  sub_2619D9368();
  sub_2619D94C8();
  v45 = sub_2619D93D8();
  v42(v40, v43);
  v46 = v60;
  v47 = v61;
  sub_2619D9248();
  v48 = LODWORD(v68[0]);
  if ((v68[0] & 0x80000000) != 0)
  {
    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F10, &qword_2619DA458);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2619DA380;
  *(inited + 32) = a1;
  *(inited + 40) = v15;

  v50 = sub_2619B4104(inited, &qword_27FEC8F20, &qword_2619DA468);
  swift_setDeallocating();
  sub_2619B62D0(inited + 32, &qword_27FEC8F18, &qword_2619DA460);
  LOBYTE(v68[0]) = 0;
  sub_2619CA1DC(v41 & 1, v44 & 1, v45 & 1, v48, 0, 0, v50, v68);
  result = (*(v55 + 8))(v46, v47);
  v52 = v68[1];
  v53 = v56;
  *v56 = v68[0];
  v53[1] = v52;
  v53[2] = v68[2];
  *(v53 + 6) = v69;
  return result;
}

unint64_t sub_2619B4104(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_2619D9CD8();

    for (i = (a1 + 40); ; i += 2)
    {
      v8 = *(i - 1);
      v7 = *i;

      result = sub_2619B0D08(v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v8;
      *(v5[7] + 8 * result) = v7;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
      if (!--v3)
      {

        return v5;
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

void sub_2619B41F4(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v89 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8EA8, &qword_2619DA390);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v86 - v5;
  sub_2619D9358();
  v7 = sub_2619D92C8();
  v8 = *(v4 + 8);
  v8(v6, v3);
  sub_2619D9358();
  v92 = sub_2619D92B8();
  v8(v6, v3);
  v88 = a1;
  sub_2619D9358();
  *&v94 = sub_2619BA99C();
  v8(v6, v3);
  v9 = v7 + 64;
  v10 = 1 << *(v7 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v7 + 64);
  v13 = (v10 + 63) >> 6;
  v93 = v7;

  v14 = 0;
  v15 = MEMORY[0x277D84F98];
  v91 = v7 + 64;
  v90 = v13;
  while (v12)
  {
    v17 = v14;
    v18 = v94;
LABEL_12:
    v19 = __clz(__rbit64(v12)) | (v17 << 6);
    v20 = (*(v93 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(*(v93 + 56) + 8 * v19);
    v24 = *(v18 + 16);
    swift_bridgeObjectRetain_n();
    v25 = v22;
    v26 = v21;
    if (v24)
    {
      v27 = sub_2619B0DB4(v21, v22);
      v25 = v22;
      v26 = v21;
      if (v28)
      {
        v29 = (*(v18 + 56) + 16 * v27);
        v26 = *v29;
        v25 = v29[1];
      }
    }

    v30 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v95[0] = v15;
    v33 = sub_2619B0DB4(v26, v25);
    v34 = v15[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_49;
    }

    v37 = v32;
    if (v30[3] >= v36)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2619B2ADC();
      }
    }

    else
    {
      sub_2619B16FC(v36, isUniquelyReferenced_nonNull_native);
      v38 = sub_2619B0DB4(v26, v25);
      if ((v37 & 1) != (v39 & 1))
      {
        goto LABEL_53;
      }

      v33 = v38;
    }

    v12 &= v12 - 1;
    if (v37)
    {

      v15 = *&v95[0];
      v16 = (*(*&v95[0] + 56) + 24 * v33);
      *v16 = v21;
      v16[1] = v22;
      v16[2] = v23;
    }

    else
    {
      v15 = *&v95[0];
      *(*&v95[0] + 8 * (v33 >> 6) + 64) |= 1 << v33;
      v40 = (v15[6] + 16 * v33);
      *v40 = v26;
      v40[1] = v25;
      v41 = (v15[7] + 24 * v33);
      *v41 = v21;
      v41[1] = v22;
      v41[2] = v23;

      v42 = v15[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_51;
      }

      v15[2] = v44;
    }

    v14 = v17;
    v9 = v91;
    v13 = v90;
  }

  v18 = v94;
  while (1)
  {
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v17 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v17);
    ++v14;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  v87 = v15;

  v45 = v92 + 64;
  v46 = 1 << *(v92 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & *(v92 + 64);
  v49 = (v46 + 63) >> 6;

  v50 = 0;
  v51 = MEMORY[0x277D84F98];
  v91 = v45;
  v90 = v49;
  while (v48)
  {
    v54 = v50;
LABEL_34:
    v55 = __clz(__rbit64(v48)) | (v54 << 6);
    v56 = (*(v92 + 48) + 16 * v55);
    v57 = *v56;
    v58 = v56[1];
    v93 = *(*(v92 + 56) + 8 * v55);
    v59 = *(v18 + 16);
    swift_bridgeObjectRetain_n();
    v60 = v58;
    v61 = v57;
    if (v59)
    {
      v62 = sub_2619B0DB4(v57, v58);
      v60 = v58;
      v61 = v57;
      if (v63)
      {
        v64 = (*(v18 + 56) + 16 * v62);
        v61 = *v64;
        v60 = v64[1];
      }
    }

    v65 = swift_isUniquelyReferenced_nonNull_native();
    *&v95[0] = v51;
    v66 = sub_2619B0DB4(v61, v60);
    v68 = v51[2];
    v69 = (v67 & 1) == 0;
    v43 = __OFADD__(v68, v69);
    v70 = v68 + v69;
    if (v43)
    {
      goto LABEL_50;
    }

    v71 = v67;
    if (v51[3] >= v70)
    {
      if ((v65 & 1) == 0)
      {
        v78 = v66;
        sub_2619B2954();
        v66 = v78;
      }
    }

    else
    {
      sub_2619B1434(v70, v65);
      v66 = sub_2619B0DB4(v61, v60);
      if ((v71 & 1) != (v72 & 1))
      {
        goto LABEL_53;
      }
    }

    v73 = v93;
    v48 &= v48 - 1;
    if (v71)
    {
      v52 = v66;

      v51 = *&v95[0];
      v53 = (*(*&v95[0] + 56) + 24 * v52);
      *v53 = v57;
      v53[1] = v58;
      v53[2] = v73;
    }

    else
    {
      v51 = *&v95[0];
      *(*&v95[0] + 8 * (v66 >> 6) + 64) |= 1 << v66;
      v74 = (v51[6] + 16 * v66);
      *v74 = v61;
      v74[1] = v60;
      v75 = (v51[7] + 24 * v66);
      *v75 = v57;
      v75[1] = v58;
      v75[2] = v73;

      v76 = v51[2];
      v43 = __OFADD__(v76, 1);
      v77 = v76 + 1;
      if (v43)
      {
        goto LABEL_52;
      }

      v51[2] = v77;
    }

    v50 = v54;
    v18 = v94;
    v45 = v91;
    v49 = v90;
  }

  while (1)
  {
    v54 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v54 >= v49)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8EB0, &qword_2619DA398);
      inited = swift_initStackObject();
      v94 = xmmword_2619DA380;
      *(inited + 16) = xmmword_2619DA380;
      v80 = v88;
      *(inited + 32) = v88;
      *(inited + 40) = v87;

      v81 = sub_2619B4104(inited, &qword_27FEC8ED8, &unk_2619DB1B0);
      swift_setDeallocating();
      sub_2619B62D0(inited + 32, &qword_27FEC8EB8, &qword_2619DA3A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8EC0, &qword_2619DA3A8);
      v82 = swift_initStackObject();
      *(v82 + 16) = v94;
      *(v82 + 32) = v80;
      *(v82 + 40) = v51;

      v83 = sub_2619B4104(v82, &qword_27FEC8ED0, &qword_2619DA3B8);
      swift_setDeallocating();
      sub_2619B62D0(v82 + 32, &qword_27FEC8EC8, &qword_2619DA3B0);
      sub_2619CBFD4(v95, v81, v83);
      v84 = v95[1];
      v85 = v89;
      *v89 = v95[0];
      v85[1] = v84;
      *(v85 + 4) = v96;
      return;
    }

    v48 = *(v45 + 8 * v54);
    ++v50;
    if (v48)
    {
      goto LABEL_34;
    }
  }

LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  sub_2619D9D78();
  __break(1u);
}

void *sub_2619B4984@<X0>(uint64_t a2@<X8>)
{
  v16 = sub_2619D93F8();
  v3 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8EA8, &qword_2619DA390);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14[-v8];
  sub_2619B60F0();

  sub_2619D9348();
  sub_2619D4234();
  sub_2619D92A8();
  v15 = v20;
  sub_2619D9278();
  v10 = v20;
  result = sub_2619D9228();
  v12 = v20;
  if ((v20 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    sub_2619D9368();
    v13 = sub_2619D93A8();
    (*(v3 + 8))(v5, v16);
    result = (*(v7 + 8))(v9, v6);
    LOBYTE(v20) = 0;
    v19 = 0;
    v18 = 0;
    v17 = 0;
    *a2 = v15;
    *(a2 + 4) = 0;
    *(a2 + 8) = v10;
    *(a2 + 12) = 0;
    *(a2 + 16) = v13 & 1;
    *(a2 + 20) = 0;
    *(a2 + 24) = v12;
    *(a2 + 32) = 0;
  }

  return result;
}

__n128 sub_2619B4BC0@<Q0>(uint64_t a2@<X8>)
{
  v33 = a2;
  v2 = sub_2619D93F8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8EA8, &qword_2619DA390);
  v34 = *(v32 - 8);
  v6 = MEMORY[0x28223BE20](v32);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v30 = &v22 - v9;
  sub_2619B60F0();

  sub_2619D9348();
  sub_2619D4238();
  v92 = v93[4];
  v90 = v94;
  v91 = v95;
  v89 = v96;
  v87 = v97;
  v88 = v98;
  v86 = v99;
  v85 = v101;
  v84 = v100;
  v83 = v102;
  v81 = v103;
  v82 = v104;
  v80 = v105;
  v78 = v106;
  v79 = v107;
  v23 = v108;
  v77 = v109;
  v75 = v110;
  v76 = v111;
  v74 = v112;
  v73 = v114;
  v72 = v113;
  v71 = v115;
  sub_2619D91B8();
  KeyPath = swift_getKeyPath();
  v26 = swift_getKeyPath();
  sub_2619D9368();
  v31 = sub_2619D93D8();
  v10 = *(v3 + 8);
  v10(v5, v2);
  sub_2619D91C8();
  v92 = 0;
  sub_2619D9368();
  v28 = sub_2619D93D8();
  v10(v5, v2);
  sub_2619D9188();
  v89 = 0;
  sub_2619D9368();
  v25 = sub_2619D93D8();
  v10(v5, v2);
  sub_2619D9178();
  v86 = 0;
  sub_2619D9368();
  v24 = sub_2619D93D8();
  v10(v5, v2);
  v83 = 0;
  v11 = v8;
  sub_2619D9358();
  v12 = v32;
  sub_2619BA5F0(v32);
  v13 = *(v34 + 8);
  v14 = v11;
  v15 = v12;
  v34 += 8;
  v13(v14, v12);
  v29 = v40;
  v71 = 0;

  v16 = v30;
  swift_getAtKeyPath();

  LODWORD(KeyPath) = v40;
  v77 = 0;
  swift_getAtKeyPath();

  LODWORD(v26) = v40;
  v74 = 0;
  sub_2619D9368();
  v17 = sub_2619D9398();
  v10(v5, v2);
  v80 = 0;
  sub_2619D9288();
  if (v40)
  {
    v18 = sub_2619D9298();
    v13(v16, v15);
    sub_2619B6148(v93);
  }

  else
  {
    v13(v16, v12);
    v18 = v23;
  }

  LODWORD(v36) = v31 & 1;
  BYTE4(v36) = v92;
  *(&v36 + 5) = v90;
  BYTE7(v36) = v91;
  DWORD2(v36) = v28 & 1;
  BYTE12(v36) = v89;
  *(&v36 + 13) = v87;
  HIBYTE(v36) = v88;
  v37.n128_u32[0] = v25 & 1;
  v37.n128_u8[4] = v86;
  v37.n128_u8[7] = v85;
  *(&v37.n128_u16[2] + 1) = v84;
  v37.n128_u32[2] = v24 & 1;
  v37.n128_u8[12] = v83;
  *(&v37.n128_u16[6] + 1) = v81;
  v37.n128_u8[15] = v82;
  LODWORD(v38) = v17 & 1;
  BYTE4(v38) = v80;
  BYTE7(v38) = v79;
  *(&v38 + 5) = v78;
  *(&v38 + 1) = v18;
  *v39 = KeyPath;
  v39[4] = v77;
  *&v39[5] = v75;
  v39[7] = v76;
  *&v39[8] = v26;
  v39[12] = v74;
  *&v39[13] = v72;
  v39[15] = v73;
  *&v39[16] = v29;
  v39[20] = v71;
  v40 = v36;
  v41 = v92;
  v43 = v91;
  v42 = v90;
  v44 = DWORD2(v36);
  v45 = v89;
  v47 = v88;
  v46 = v87;
  v48 = v37.n128_u32[0];
  v49 = v86;
  v51 = v85;
  v50 = v84;
  v52 = v37.n128_u32[2];
  v53 = v83;
  v55 = v82;
  v54 = v81;
  v56 = v38;
  v57 = v80;
  v59 = v79;
  v58 = v78;
  v60 = v18;
  v61 = KeyPath;
  v62 = v77;
  v64 = v76;
  v63 = v75;
  v65 = v26;
  v66 = v74;
  v68 = v73;
  v67 = v72;
  v69 = v29;
  v70 = v71;
  sub_2619B619C(&v36, &v35);
  sub_2619B6148(&v40);
  v19 = *v39;
  v20 = v33;
  *(v33 + 32) = v38;
  *(v20 + 48) = v19;
  *(v20 + 61) = *&v39[13];
  result = v37;
  *v20 = v36;
  *(v20 + 16) = result;
  return result;
}

unint64_t sub_2619B5298(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v20 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2619D9CA8())
  {
    v5 = 0;
    v18 = v3 & 0xC000000000000001;
    v14[4] = v3 + 32;
    v15 = v3 & 0xFFFFFFFFFFFFFF8;
    v6 = MEMORY[0x277D84F90];
    v16 = v3;
    v17 = i;
    while (v18)
    {
      MEMORY[0x2667148E0](v5, v3);
      v7 = __OFADD__(v5++, 1);
      if (v7)
      {
        goto LABEL_23;
      }

LABEL_13:
      sub_2619D94A8();
      swift_retain_n();
      v8 = sub_2619D9058();

      if (v8)
      {
        do
        {
          v19 = v8;
          MEMORY[0x28223BE20](v9);
          v14[2] = &v19;
          if (sub_2619B2F5C(sub_2619B63C4, v14, v6))
          {

LABEL_5:
            v3 = v16;
            goto LABEL_6;
          }

          if (!*(a2 + 16) || (sub_2619B0D08(v8), (v10 & 1) == 0))
          {

            MEMORY[0x266714720](v12);
            if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_2619D9A28();
            }

            sub_2619D9A38();

            v6 = v20;
            goto LABEL_5;
          }

          v11 = sub_2619D9058();

          v8 = v11;
        }

        while (v11);
        v3 = v16;
      }

LABEL_6:
      if (v5 == v17)
      {
        return v6;
      }
    }

    if (v5 >= *(v15 + 16))
    {
      goto LABEL_24;
    }

    v7 = __OFADD__(v5++, 1);
    if (!v7)
    {
      goto LABEL_13;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_2619B554C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F48, &qword_2619DA530);
    v3 = sub_2619D9CD8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;

      result = sub_2619B0D08(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_2619B5638(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8EA8, &qword_2619DA390);
  v6 = *(v98 - 1);
  MEMORY[0x28223BE20](v98);
  v8 = &v89 - v7;
  result = sub_2619B5298(a3, *a2);
  v10 = result;
  if (result >> 62)
  {
    goto LABEL_101;
  }

  v11 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
  }

LABEL_3:
  v12 = 0;
  v13 = v10 & 0xC000000000000001;
  v14 = v10 & 0xFFFFFFFFFFFFFF8;
  v15 = v10 + 32;
  v100 = (v6 + 1);
  v91 = v10 & 0xFFFFFFFFFFFFFF8;
  v92 = v10 & 0xC000000000000001;
  v94 = v10;
  v95 = a1;
  v93 = v11;
  v90 = v10 + 32;
  while (v13)
  {
    result = MEMORY[0x2667148E0](v12, v10);
    v97 = result;
    v16 = __OFADD__(v12, 1);
    v17 = v12 + 1;
    if (v16)
    {
      goto LABEL_103;
    }

LABEL_7:
    if (!a1[2] || (v18 = sub_2619B0D08(v97), (v19 & 1) == 0))
    {
LABEL_95:
    }

    v96 = v17;
    v20 = *(a1[7] + v18);
    v21 = sub_2619B554C(MEMORY[0x277D84F90]);
    v105 = v21;
    v103 = v20;
    v22 = 1;
    if (!v20)
    {
      v22 = -1;
    }

    v99 = v22;
    v23 = sub_2619C691C(v21);
    if (v23 >> 62)
    {
      v88 = v23;
      v24 = sub_2619D9CA8();
      v23 = v88;
    }

    else
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a1 = v98;
    v25 = v100;
    v104 = v23;
    if (v24)
    {
      v26 = v23 & 0xC000000000000001;
      v101 = v23 + 32;
      v102 = v23 & 0xFFFFFFFFFFFFFF8;
      do
      {
        while (1)
        {
          v16 = __OFSUB__(v24--, 1);
          if (v16)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
            goto LABEL_95;
          }

          if (v26)
          {
            v27 = MEMORY[0x2667148E0](v24, v104);
          }

          else
          {
            if ((v24 & 0x8000000000000000) != 0)
            {
              goto LABEL_91;
            }

            if (v24 >= *(v102 + 16))
            {
              goto LABEL_92;
            }

            v27 = *(v101 + 8 * v24);
          }

          sub_2619B60F0();

          sub_2619D9348();
          if (sub_2619D9328() & 1) != 0 && ((v103 ^ sub_2619D9258()))
          {
            break;
          }

          (*v25)(v8, a1);

          if (!v24)
          {
            goto LABEL_49;
          }
        }

        v28 = v105;
        v29 = v105[2];
        if (v29)
        {
          v30 = sub_2619B0D08(v27);
          if (v31)
          {
            v29 = *(v28[7] + 8 * v30);
          }

          else
          {
            v29 = 0;
          }
        }

        v16 = __OFADD__(v29, 1);
        v32 = v29 + 1;
        if (v16)
        {
          goto LABEL_93;
        }

        v33 = v32 * v99;
        if ((v32 * v99) >> 64 != (v32 * v99) >> 63)
        {
          goto LABEL_94;
        }

        v34 = *a2;
        if (*(*a2 + 16))
        {
          v35 = sub_2619B0D08(v27);
          if (v36)
          {
            a1 = a2;
            v37 = (*(v34 + 56) + 296 * v35);
            memcpy(v110, v37, sizeof(v110));
            memmove(v111, v37, 0x128uLL);
            sub_2619B624C(v110, v109);
            v6 = sub_2619CFDA8();
            swift_beginAccess();

            swift_getAtKeyPath();

            v10 = v109[0];
            a2 = LOBYTE(v109[1]);
            swift_beginAccess();
            if (a2)
            {
              v38 = 0;
            }

            else
            {
              v38 = v10;
            }

            v16 = __OFADD__(v38, v33);
            v39 = v38 + v33;
            if (v16)
            {
              goto LABEL_99;
            }

            if (v39 > 0x7FFFFFFF)
            {
              goto LABEL_100;
            }

            v109[0] = v39 & ~(v39 >> 63);
            LOBYTE(v109[1]) = 0;

            swift_setAtWritableKeyPath();

            memcpy(v109, v111, sizeof(v109));
            nullsub_1();
            memcpy(v107, v109, sizeof(v107));

            a2 = a1;
            sub_2619AFA50(v107, v27);
            a1 = v98;
          }
        }

        sub_2619D94A8();
        v40 = sub_2619D9058();
        if (!v40)
        {
          v25 = v100;
          (*v100)(v8, a1);

          continue;
        }

        v10 = v40;
        v6 = v105;
        if (v105[2] && (v41 = sub_2619B0D08(v40), (v42 & 1) != 0))
        {
          v43 = *(v6[7] + 8 * v41);
          if (v33 < 0)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v43 = 0;
          if (v33 < 0)
          {
LABEL_44:
            v33 = -v33;
            if (v33 < 0)
            {
              __break(1u);
LABEL_98:
              __break(1u);
LABEL_99:
              __break(1u);
LABEL_100:
              __break(1u);
LABEL_101:
              result = sub_2619D9CA8();
              v11 = result;
              if (!result)
              {
              }

              goto LABEL_3;
            }
          }
        }

        v16 = __OFADD__(v43, v33);
        v44 = v43 + v33;
        if (v16)
        {
          goto LABEL_98;
        }

        v45 = v105;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v111[0] = v45;
        sub_2619B26A4(v44, v10, isUniquelyReferenced_nonNull_native);

        v25 = v100;
        (*v100)(v8, a1);
        v105 = v111[0];
      }

      while (v24);
    }

LABEL_49:

    v47 = v105;
    if (v105[2] && (v48 = v97, result = sub_2619B0D08(v97), (v49 & 1) != 0))
    {
      v50 = *(v47[7] + 8 * result);
      v51 = v50 * v99;
      if ((v50 * v99) >> 64 != (v50 * v99) >> 63)
      {
        goto LABEL_108;
      }

      v52 = *a2;
      if (*(*a2 + 16))
      {
        v53 = sub_2619B0D08(v48);
        if (v54)
        {
          v55 = a2;
          v56 = (*(v52 + 56) + 296 * v53);
          memcpy(v109, v56, sizeof(v109));
          memmove(v110, v56, 0x128uLL);
          sub_2619B624C(v109, v111);
          sub_2619CFDA8();
          swift_beginAccess();

          swift_getAtKeyPath();

          v57 = SLODWORD(v111[0]);
          v58 = BYTE4(v111[0]);
          result = swift_beginAccess();
          if (v58)
          {
            v59 = 0;
          }

          else
          {
            v59 = v57;
          }

          v16 = __OFADD__(v59, v51);
          v60 = v59 + v51;
          if (v16)
          {
            goto LABEL_109;
          }

          if (v60 > 0x7FFFFFFF)
          {
            goto LABEL_110;
          }

          a2 = v55;
          LODWORD(v111[0]) = v60 & ~(v60 >> 63);
          BYTE4(v111[0]) = 0;

          swift_setAtWritableKeyPath();

          memcpy(v111, v110, 0x128uLL);

          v61 = swift_isUniquelyReferenced_nonNull_native();
          v108 = *v55;
          sub_2619B2534(v111, v48, v61);

          *v55 = v108;
        }
      }

      sub_2619D94A8();
      v62 = sub_2619D9058();
      if (v62)
      {
        v63 = v62;
        v64 = v105;
        v65 = swift_isUniquelyReferenced_nonNull_native();
        v111[0] = v64;
        sub_2619B26A4(v50, v63, v65);

        v66 = v111[0];
      }

      else
      {
        v66 = v105;
      }

      swift_retain_n();
      v67 = sub_2619D9058();

      if (v67)
      {
        v68 = v48;
        while (*(v66 + 16))
        {
          result = sub_2619B0D08(v67);
          if ((v69 & 1) == 0)
          {
            break;
          }

          v70 = *(*(v66 + 56) + 8 * result);
          v71 = v70 * v99;
          if ((v70 * v99) >> 64 != (v70 * v99) >> 63)
          {
            goto LABEL_105;
          }

          v72 = *a2;
          if (!*(*a2 + 16))
          {
            break;
          }

          v73 = sub_2619B0D08(v67);
          if ((v74 & 1) == 0)
          {
            break;
          }

          v104 = v70;
          v105 = v68;
          v75 = v66;
          v76 = a2;
          v77 = (*(v72 + 56) + 296 * v73);
          memcpy(v110, v77, sizeof(v110));
          memmove(v111, v77, 0x128uLL);
          sub_2619B624C(v110, v109);
          sub_2619CFDA8();
          swift_beginAccess();

          swift_getAtKeyPath();

          v78 = v109[0];
          v79 = LOBYTE(v109[1]);
          result = swift_beginAccess();
          if (v79)
          {
            v80 = 0;
          }

          else
          {
            v80 = v78;
          }

          v16 = __OFADD__(v80, v71);
          v81 = v80 + v71;
          if (v16)
          {
            goto LABEL_106;
          }

          if (v81 > 0x7FFFFFFF)
          {
            goto LABEL_107;
          }

          a2 = v76;
          LODWORD(v108) = v81 & ~(v81 >> 63);
          BYTE4(v108) = 0;

          swift_setAtWritableKeyPath();

          memcpy(v109, v111, sizeof(v109));
          nullsub_1();
          memcpy(v106, v109, sizeof(v106));

          sub_2619AFA50(v106, v67);
          v82 = sub_2619D9058();
          v66 = v75;
          v83 = v67;
          if (v82)
          {
            v85 = v66;
            v86 = v82;
            v87 = swift_isUniquelyReferenced_nonNull_native();
            v108 = v85;
            sub_2619B26A4(v104, v86, v87);

            v66 = v108;
          }

          else
          {
          }

          v84 = sub_2619D9058();

          v67 = v84;
          v68 = v83;
          if (!v84)
          {
            goto LABEL_82;
          }
        }
      }

      else
      {
LABEL_82:
      }
    }

    else
    {
    }

    v10 = v94;
    a1 = v95;
    v13 = v92;
    v12 = v96;
    v15 = v90;
    v14 = v91;
    if (v96 == v93)
    {
    }
  }

  if (v12 >= *(v14 + 16))
  {
    goto LABEL_104;
  }

  v97 = *(v15 + 8 * v12);

  v16 = __OFADD__(v12, 1);
  v17 = v12 + 1;
  if (!v16)
  {
    goto LABEL_7;
  }

LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
  return result;
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

unint64_t sub_2619B60F0()
{
  result = qword_27FEC8F08;
  if (!qword_27FEC8F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEC8F08);
  }

  return result;
}

uint64_t sub_2619B62AC(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2619B62D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double sub_2619B638C(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0;
  return result;
}

unint64_t sub_2619B63E4()
{
  result = qword_27FEC8F78;
  if (!qword_27FEC8F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEC8F70, &unk_2619DB1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEC8F78);
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

uint64_t sub_2619B6494(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static RealityKitHierarchyExporter.exportDebugRepresentation(for:)(void *a1)
{
  v2 = sub_2619D91D8();
  v3 = *(v2 - 1);
  MEMORY[0x28223BE20](v2);
  v5 = &v15[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2619D9208();
  sub_2619D91E8();

  sub_2619B69CC();
  v6 = sub_2619D9A78();
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v8 = v6;
    v16 = MEMORY[0x277D84F90];
    sub_2619D9C28();
    sub_2619D9A68();
    if (v8 < 0)
    {
      __break(1u);
      goto LABEL_12;
    }

    v14 = a1;
    do
    {
      v9 = sub_2619D9AB8();

      v9(v15, 0);
      sub_2619D9C08();
      sub_2619D9C38();
      sub_2619D9C48();
      sub_2619D9C18();
      sub_2619D9AA8();
      --v8;
    }

    while (v8);
    (*(v3 + 8))(v5, v2);
    v10 = v16;
    a1 = v14;
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    v10 = MEMORY[0x277D84F90];
  }

  v2 = &v17;
  v11 = sub_2619B6790(v10, a1);

  v18 = v11;
  v15[0] = v7;
  if (v11)
  {
    v12 = v11;
    MEMORY[0x266714720]();
    if (*((v15[0] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v15[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_9:
      sub_2619D9A38();
      v7 = v15[0];
      goto LABEL_10;
    }

LABEL_12:
    sub_2619D9A28();
    goto LABEL_9;
  }

LABEL_10:
  sub_2619B6A24((v2 + 32));
  return v7;
}

uint64_t sub_2619B6790(uint64_t a1, void *a2)
{
  v4 = sub_2619D9018();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v23 - v9;
  sub_2619D9008();
  type metadata accessor for SceneDebugRepresentationProvider(0);
  sub_2619BAC48();
  v11 = sub_2619C2C88(a1, a2);
  v13 = v12;

  if (v13 >> 60 == 15)
  {
    v14 = 0;
  }

  else
  {
    v14 = v11;
  }

  if (v13 >> 60 == 15)
  {
    v15 = 0xC000000000000000;
  }

  else
  {
    v15 = v13;
  }

  v23[2] = v15;
  v23[3] = v14;
  nullsub_1();
  v16 = sub_2619C79E4(a1, a2);
  if (v17 >> 60 == 15)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16;
  }

  v23[1] = v18;
  type metadata accessor for InspectorSceneStatisticsProvider();
  v19 = sub_2619B64F4();
  (*(*v19 + 80))(a1, a2);

  nullsub_1();
  sub_2619B97EC(a1, a2);
  (*(v5 + 16))(v8, v10, v4);
  v20 = objc_allocWithZone(sub_2619D94F8());
  v21 = sub_2619D94E8();
  (*(v5 + 8))(v10, v4);
  return v21;
}

unint64_t sub_2619B69CC()
{
  result = qword_27FEC8FA0;
  if (!qword_27FEC8FA0)
  {
    sub_2619D91D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEC8FA0);
  }

  return result;
}

uint64_t sub_2619B6A24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8FA8, &unk_2619DA560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2619B6AC8()
{
  sub_2619D9458();

  return sub_2619D9818();
}

BOOL sub_2619B6B00()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8FB0, &qword_2619DA5C8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  sub_2619D9458();
  sub_2619D9818();
  v3 = sub_2619D9838();
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3) != 1;
  sub_2619B62D0(v2, &qword_27FEC8FB0, &qword_2619DA5C8);
  return v4;
}

uint64_t sub_2619B6BE0(uint64_t a1, uint64_t a2)
{
  v2 = sub_2619D9048();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2619D9218();
  sub_2619D9038();
  (*(v3 + 8))(v5, v2);
  sub_2619D9968();
  REEntitySetName();
}

void (*sub_2619B6CF4())()
{
  v1 = v0;
  v2 = sub_2619D9428();
  v51 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_2619D9048();
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8FB8, &qword_2619DA5D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8FB0, &qword_2619DA5C8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v48 - v12;
  sub_2619D9458();
  sub_2619D9818();
  v14 = sub_2619D9838();
  v15 = (*(*(v14 - 8) + 48))(v13, 1, v14);
  sub_2619B62D0(v13, &qword_27FEC8FB0, &qword_2619DA5C8);
  v16 = nullsub_1;
  if (v15 != 1)
  {
    return v16;
  }

  v17 = sub_2619D9458();
  v49 = v18;
  v50 = v17;
  v53[0] = sub_2619D9458();
  v53[1] = v19;
  v54 = 58;
  v55 = 0xE100000000000000;
  v20 = sub_2619D9028();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  sub_2619B7480();
  sub_2619D9B28();
  v22 = v21;
  sub_2619B62D0(v10, &qword_27FEC8FB8, &qword_2619DA5D0);
  if ((v22 & 1) == 0)
  {
    v23 = sub_2619D99C8();
    v25 = v24;
    v27 = v26;
    v29 = v28;

    MEMORY[0x266714690](v23, v25, v27, v29);
  }

  v30 = v52;
  sub_2619D9448();
  sub_2619D97F8();

  sub_2619D9218();
  sub_2619D9038();
  (*(v5 + 8))(v7, v30);
  sub_2619D9968();

  REEntitySetName();

  sub_2619D94A8();
  sub_2619D9068();
  sub_2619B74D4();
  v31 = sub_2619D9A78();
  if (!v31)
  {
    (*(v51 + 8))(v4, v2);
    v33 = MEMORY[0x277D84F90];
LABEL_13:
    v44 = swift_allocObject();
    swift_weakInit();
    v45 = swift_allocObject();
    v46 = v49;
    v47 = v50;
    v45[2] = v44;
    v45[3] = v47;
    v45[4] = v46;
    v45[5] = v33;
    return sub_2619B7DFC;
  }

  v32 = v31;
  v54 = MEMORY[0x277D84F90];
  sub_2619B7CFC(0, v31 & ~(v31 >> 63), 0);
  v33 = v54;
  result = sub_2619D9A68();
  if ((v32 & 0x8000000000000000) == 0)
  {
    v52 = v1;
    do
    {
      v35 = sub_2619D9AB8();

      v35(v53, 0);
      v36 = sub_2619B6CF4();
      v38 = v37;

      v39 = swift_allocObject();
      *(v39 + 16) = v36;
      *(v39 + 24) = v38;
      v54 = v33;
      v41 = *(v33 + 16);
      v40 = *(v33 + 24);
      if (v41 >= v40 >> 1)
      {
        v43 = v39;
        sub_2619B7CFC((v40 > 1), v41 + 1, 1);
        v39 = v43;
        v33 = v54;
      }

      *(v33 + 16) = v41 + 1;
      v42 = v33 + 16 * v41;
      *(v42 + 32) = sub_2619B7D54;
      *(v42 + 40) = v39;
      sub_2619D9AA8();
      --v32;
    }

    while (v32);
    (*(v51 + 8))(v4, v2);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_2619B7304(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8FB8, &qword_2619DA5D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v12 - v5;
  v12[2] = a1;
  v12[3] = a2;
  v12[0] = 58;
  v12[1] = 0xE100000000000000;
  v7 = sub_2619D9028();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_2619B7480();
  sub_2619D9B28();
  v9 = v8;
  sub_2619B62D0(v6, &qword_27FEC8FB8, &qword_2619DA5D0);
  if (v9)
  {
  }

  else
  {
    v10 = sub_2619D99C8();
    a1 = MEMORY[0x266714690](v10);
  }

  return a1;
}

unint64_t sub_2619B7480()
{
  result = qword_27FEC8FC0;
  if (!qword_27FEC8FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEC8FC0);
  }

  return result;
}

unint64_t sub_2619B74D4()
{
  result = qword_27FEC8F90;
  if (!qword_27FEC8F90)
  {
    sub_2619D9428();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEC8F90);
  }

  return result;
}

uint64_t sub_2619B752C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2619D9048();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2619D9218();
    sub_2619D9038();
    (*(v6 + 8))(v8, v5);
    sub_2619D9968();
    REEntitySetName();
  }

  v10 = *(a4 + 16);
  if (v10)
  {
    v11 = a4 + 40;
    do
    {
      v12 = *(v11 - 8);

      v12(v13);

      v11 += 16;
      --v10;
    }

    while (v10);
  }

  return result;
}

Swift::Void __swiftcall Entity.removePersistentIDFromName(recursive:)(Swift::Bool recursive)
{
  v13 = recursive;
  v1 = sub_2619D9428();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F88, &qword_2619DA548);
  v12 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v11 - v3;
  v5 = sub_2619D9048();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2619D9458();
  sub_2619D9808();
  v10 = v9;

  if (v10)
  {
    sub_2619D9218();
    sub_2619D9038();
    (*(v6 + 8))(v8, v5);
    sub_2619D9968();

    REEntitySetName();
  }

  if (v13)
  {
    sub_2619D94A8();
    sub_2619D9068();
    sub_2619D9408();
    while (1)
    {
      sub_2619D9418();
      if (!v14)
      {
        break;
      }

      Entity.removePersistentIDFromName(recursive:)(1);
    }

    (*(v12 + 8))(v4, v2);
  }
}

uint64_t Entity.augmentedWithPersistentIDs(_:)(uint64_t (*a1)(uint64_t))
{
  v3 = sub_2619B6CF4();
  v4 = a1(v1);
  (v3)(v4);
}

uint64_t Entity.augmentedWithPersistentIDs<A>(_:)(uint64_t (*a1)(uint64_t))
{
  v3 = sub_2619B6CF4();
  v4 = a1(v1);
  (v3)(v4);
}

uint64_t sub_2619B7A38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8FC8, &qword_2619DA890);
  if (sub_2619D9958() == 0xD000000000000014 && 0x80000002619DBA50 == v0)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_2619D9D38();
  }

  return v2 & 1;
}

uint64_t sub_2619B7AF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8FC8, &qword_2619DA890);
  sub_2619D9958();
  sub_2619B7E08();
  sub_2619B7E5C();
  v0 = sub_2619D9928();

  return v0 & 1;
}

uint64_t sub_2619B7BCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8FB8, &qword_2619DA5D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v10[2] = a1;
  v10[3] = a2;
  v10[0] = 58;
  v10[1] = 0xE100000000000000;
  v7 = sub_2619D9028();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_2619B7480();
  sub_2619D9B28();
  LOBYTE(a2) = v8;
  sub_2619B62D0(v6, &qword_27FEC8FB8, &qword_2619DA5D0);
  return a2 & 1;
}

void *sub_2619B7CFC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2619B7EB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2619B7D1C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2619B7D7C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2619B7DB4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_2619B7E08()
{
  result = qword_27FEC8FD0;
  if (!qword_27FEC8FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEC8FD0);
  }

  return result;
}

unint64_t sub_2619B7E5C()
{
  result = qword_27FEC8FD8;
  if (!qword_27FEC8FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEC8FD8);
  }

  return result;
}

void *sub_2619B7EB0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8FE0, &qword_2619DA5D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8FE8, &unk_2619DA5E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2619B801C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t sub_2619B80EC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t sub_2619B8194(unint64_t a1)
{
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  *(v2 + 16) = sub_2619B9004(MEMORY[0x277D84F90]);
  *(v2 + 24) = sub_2619B9004(v3);
  swift_beginAccess();
  swift_beginAccess();
  sub_2619AF808(a1, (v2 + 16), (v2 + 24));
  swift_endAccess();
  swift_endAccess();

  return v2;
}

uint64_t sub_2619B8254(unint64_t a1)
{
  v3 = MEMORY[0x277D84F90];
  *(v1 + 16) = sub_2619B9004(MEMORY[0x277D84F90]);
  *(v1 + 24) = sub_2619B9004(v3);
  swift_beginAccess();
  swift_beginAccess();
  sub_2619AF808(a1, (v1 + 16), (v1 + 24));
  swift_endAccess();
  swift_endAccess();

  return v1;
}

uint64_t sub_2619B8300@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = (*v3 + 96);
  v59 = *v7;
  v58[4] = v7;
  v8 = (v59)(a1);
  if (!*(v8 + 16) || (v9 = sub_2619B0D08(a1), (v10 & 1) == 0))
  {

    sub_2619C8954(v78);
    v23 = *&v78[256];
    v24 = *&v78[264];
    v25 = *&v78[272];
    v26 = *&v78[288];
    v27 = *&v78[224];
    v28 = v78[228];
    v29 = *&v78[232];
    v30 = v78[236];
    v31 = *&v78[240];
    v32 = v78[244];
    v33 = *&v78[248];
    v34 = *&v78[216];
    v35 = v78[280];
    v36 = v78[260];
    *(v63 + 13) = *&v78[205];
    v62 = *&v78[176];
    v63[0] = *&v78[192];
    v60 = *&v78[144];
    v61 = *&v78[160];
    v84 = v78[136];
    v82 = *&v78[104];
    v83 = *&v78[120];
    v37 = *&v78[48];
    result = *&v78[56];
    v38 = *&v78[64];
    v39 = *&v78[72];
    v40 = *&v78[88];
    v41 = v78[80];
    v42 = v78[68];
    v43 = v78[60];
    v44 = v78[52];
    v81 = *&v78[40];
    v79 = *&v78[8];
    v80 = *&v78[24];
    v45 = *v78;
    v46 = v78[4];
LABEL_23:
    v47 = v44 & 1;
    v68 = v47;
    v48 = v43 & 1;
    v67 = v48;
    v49 = v42 & 1;
    v66 = v49;
    v50 = v41 & 1;
    v65 = v50;
    v74 = v46;
    *&v64[3] = v79;
    *&v64[19] = v80;
    *&v64[35] = v81;
    *&v75[7] = v60;
    *&v75[68] = *(v63 + 13);
    *&v75[55] = v63[0];
    *&v75[39] = v62;
    *&v75[23] = v61;
    v73 = v28;
    v72 = v30;
    v71 = v32;
    v70 = v36 & 1;
    v69 = v35 & 1;
    *a3 = v45;
    *(a3 + 4) = v74;
    v51 = *v64;
    v52 = *&v64[16];
    *(a3 + 32) = *&v64[27];
    *(a3 + 21) = v52;
    *(a3 + 5) = v51;
    *(a3 + 48) = v37;
    *(a3 + 52) = v47;
    *(a3 + 56) = result;
    *(a3 + 60) = v48;
    *(a3 + 64) = v38;
    *(a3 + 68) = v49;
    *(a3 + 72) = v39;
    *(a3 + 80) = v50;
    *(a3 + 88) = v40;
    v53 = v82;
    v54 = v83;
    *(a3 + 136) = v84;
    *(a3 + 120) = v54;
    *(a3 + 104) = v53;
    v55 = *&v75[16];
    *(a3 + 137) = *v75;
    v56 = *&v75[32];
    v57 = *&v75[48];
    *(a3 + 197) = *&v75[60];
    *(a3 + 185) = v57;
    *(a3 + 169) = v56;
    *(a3 + 153) = v55;
    *(a3 + 216) = v34;
    *(a3 + 224) = v27;
    *(a3 + 228) = v73;
    *(a3 + 232) = v29;
    *(a3 + 236) = v72;
    *(a3 + 240) = v31;
    *(a3 + 244) = v71;
    *(a3 + 248) = v33;
    *(a3 + 256) = v23;
    *(a3 + 260) = v70;
    *(a3 + 264) = v24;
    *(a3 + 272) = v25;
    *(a3 + 280) = v69;
    *(a3 + 288) = v26;
    return result;
  }

  memcpy(v64, (*(v8 + 56) + 296 * v9), sizeof(v64));
  sub_2619B624C(v64, v78);

  v11 = memcpy(v75, v64, sizeof(v75));
  result = sub_2619C64D8(v11);
  v13 = result;
  if (a2 >> 62)
  {
    goto LABEL_21;
  }

  v14 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
LABEL_22:

    v45 = *v75;
    v46 = v75[4];
    v79 = *&v75[8];
    v80 = *&v75[24];
    v81 = *&v75[40];
    v37 = *&v75[48];
    v44 = v75[52];
    result = *&v75[56];
    v43 = v75[60];
    v38 = *&v75[64];
    v42 = v75[68];
    v39 = *&v75[72];
    v41 = v75[80];
    v40 = *&v75[88];
    v84 = v75[136];
    v82 = *&v75[104];
    v83 = *&v75[120];
    *(v63 + 13) = *&v75[205];
    v62 = *&v75[176];
    v63[0] = *&v75[192];
    v60 = *&v75[144];
    v61 = *&v75[160];
    v34 = *&v75[216];
    v27 = *&v75[224];
    v28 = v75[228];
    v29 = *&v75[232];
    v30 = v75[236];
    v31 = *&v75[240];
    v32 = v75[244];
    v33 = *&v75[248];
    v23 = *&v75[256];
    v36 = v75[260];
    v24 = *&v75[264];
    v25 = *&v75[272];
    v35 = v75[280];
    v26 = *&v75[288];
    goto LABEL_23;
  }

  while (v14 >= 1)
  {
    v15 = 0;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x2667148E0](v15, a2);
        v17 = v16;
      }

      else
      {
        v17 = *(a2 + 8 * v15 + 32);
      }

      *&v60 = v17;
      MEMORY[0x28223BE20](v16);
      v58[2] = &v60;
      if ((sub_2619B2F5C(sub_2619B63C4, v58, v13) & 1) == 0)
      {
        goto LABEL_8;
      }

      v18 = v59();
      if (*(v18 + 16))
      {
        v19 = sub_2619B0D08(v17);
        if (v20)
        {
          break;
        }
      }

LABEL_8:
      ++v15;

      if (v14 == v15)
      {
        goto LABEL_22;
      }
    }

    memcpy(v77, (*(v18 + 56) + 296 * v19), sizeof(v77));
    sub_2619B624C(v77, &v60);

    memcpy(v78, v75, sizeof(v78));
    sub_2619CCBB8(v77, v76);
    sub_2619B3420(v77);
    sub_2619B3420(v78);
    memcpy(v75, v76, sizeof(v75));
    sub_2619CD124();
    swift_beginAccess();

    v22 = swift_modifyAtWritableKeyPath();
    if (*(v21 + 4))
    {
      goto LABEL_18;
    }

    if (!__OFSUB__(*v21, 1))
    {
      --*v21;
LABEL_18:
      v22(&v60, 0);

      goto LABEL_8;
    }

    __break(1u);
LABEL_21:
    result = sub_2619D9CA8();
    v14 = result;
    if (!result)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

__n128 sub_2619B88D8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (*(*v2 + 120))();
  if (*(v5 + 16) && (v6 = sub_2619B0D08(a1), (v7 & 1) != 0))
  {
    memcpy(__dst, (*(v5 + 56) + 296 * v6), sizeof(__dst));
    sub_2619B624C(__dst, v40);

    v8 = *&__dst[256];
    v9 = __dst[260];
    v10 = *&__dst[264];
    v11 = *&__dst[272];
    v12 = __dst[280];
    v13 = *&__dst[288];
    v14 = *&__dst[224];
    v15 = __dst[228];
    v16 = *&__dst[232];
    v17 = __dst[236];
    v18 = *&__dst[240];
    v19 = __dst[244];
    v20 = *&__dst[248];
    v21 = *&__dst[216];
    v22 = *__dst;
    v23 = __dst[4];
    v24 = *&__dst[88];
    v25 = *&__dst[72];
    v26 = __dst[80];
    v27 = *&__dst[64];
    v28 = __dst[68];
    v29 = *&__dst[56];
    v30 = __dst[60];
    v31 = *&__dst[48];
    v32 = __dst[52];
    v49 = *&__dst[8];
    v50 = *&__dst[24];
    v51 = *&__dst[40];
    v52 = *&__dst[104];
    v53 = *&__dst[120];
    v54 = __dst[136];
    *(v58 + 13) = *&__dst[205];
    v57 = *&__dst[176];
    v58[0] = *&__dst[192];
    v55 = *&__dst[144];
    v56 = *&__dst[160];
  }

  else
  {

    sub_2619B915C(a1, __dst);
    v8 = *&__dst[256];
    v10 = *&__dst[264];
    v11 = *&__dst[272];
    v13 = *&__dst[288];
    v14 = *&__dst[224];
    v15 = __dst[228];
    v16 = *&__dst[232];
    v17 = __dst[236];
    v18 = *&__dst[240];
    v19 = __dst[244];
    v20 = *&__dst[248];
    v21 = *&__dst[216];
    v12 = __dst[280];
    v9 = __dst[260];
    *(v58 + 13) = *&__dst[205];
    v57 = *&__dst[176];
    v58[0] = *&__dst[192];
    v55 = *&__dst[144];
    v56 = *&__dst[160];
    v54 = __dst[136];
    v52 = *&__dst[104];
    v53 = *&__dst[120];
    v31 = *&__dst[48];
    v29 = *&__dst[56];
    v27 = *&__dst[64];
    v25 = *&__dst[72];
    v24 = *&__dst[88];
    v26 = __dst[80];
    v28 = __dst[68];
    v30 = __dst[60];
    v32 = __dst[52];
    v51 = *&__dst[40];
    v49 = *&__dst[8];
    v50 = *&__dst[24];
    v22 = *__dst;
    v23 = __dst[4];
  }

  v47 = v23;
  *&v46[3] = v49;
  *&v46[19] = v50;
  *&v46[35] = v51;
  *&v40[7] = v55;
  *&v40[68] = *(v58 + 13);
  *&v40[55] = v58[0];
  *&v40[39] = v57;
  *&v40[23] = v56;
  v45 = v15;
  v44 = v17;
  v43 = v19;
  v42 = v9 & 1;
  v41 = v12 & 1;
  *a2 = v22;
  *(a2 + 4) = v47;
  v33 = *v46;
  v34 = *&v46[16];
  *(a2 + 32) = *&v46[27];
  *(a2 + 21) = v34;
  *(a2 + 5) = v33;
  *(a2 + 48) = v31;
  *(a2 + 52) = v32 & 1;
  *(a2 + 56) = v29;
  *(a2 + 60) = v30 & 1;
  *(a2 + 64) = v27;
  *(a2 + 68) = v28 & 1;
  *(a2 + 72) = v25;
  *(a2 + 80) = v26 & 1;
  *(a2 + 88) = v24;
  v35 = v52;
  v36 = v53;
  *(a2 + 136) = v54;
  *(a2 + 120) = v36;
  *(a2 + 104) = v35;
  v37 = *&v40[16];
  *(a2 + 137) = *v40;
  result = *&v40[32];
  v39 = *&v40[48];
  *(a2 + 197) = *&v40[60];
  *(a2 + 185) = v39;
  *(a2 + 169) = result;
  *(a2 + 153) = v37;
  *(a2 + 216) = v21;
  *(a2 + 224) = v14;
  *(a2 + 228) = v45;
  *(a2 + 232) = v16;
  *(a2 + 236) = v44;
  *(a2 + 240) = v18;
  *(a2 + 244) = v43;
  *(a2 + 248) = v20;
  *(a2 + 256) = v8;
  *(a2 + 260) = v42;
  *(a2 + 264) = v10;
  *(a2 + 272) = v11;
  *(a2 + 280) = v41;
  *(a2 + 288) = v13;
  return result;
}

unint64_t sub_2619B8C78(uint64_t a1, char a2)
{
  v5 = *(*v2 + 112);
  v6 = *v2 + 112;
  v7 = v2;
  v8 = v5(v35);
  sub_2619B10CC(a1, __src);
  memcpy(__dst, __src, 0x128uLL);
  sub_2619B62D0(__dst, &qword_27FEC8F58, &unk_2619DA600);
  v9 = v8(v35, 0);
  if ((a2 & 1) == 0)
  {
    goto LABEL_16;
  }

  result = sub_2619C64D8(v9);
  v11 = result;
  v31 = a1;
  if (!(result >> 62))
  {
    v12 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_15:
    v7 = v2;

    a1 = v31;
LABEL_16:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F80, &qword_2619DA540);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_2619DA5F0;
    *(v25 + 32) = a1;

    v26 = v5(__src);
    v28 = v27;
    v29 = (*(*v7 + 136))(v35);
    sub_2619AF808(v25, v28, v30);

    v29(v35, 0);
    return v26(__src, 0);
  }

  v24 = result;
  result = sub_2619D9CA8();
  v11 = v24;
  v12 = result;
  v2 = v7;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (v12 >= 1)
  {
    v13 = 0;
    v32 = v11 & 0xC000000000000001;
    v33 = v11;
    do
    {
      if (v32)
      {
        v14 = MEMORY[0x2667148E0](v13);
      }

      else
      {
        v14 = *(v11 + 8 * v13 + 32);
      }

      v15 = v5;
      v16 = v6;
      v17 = v5(v35);
      v19 = v18;
      v20 = sub_2619B0D08(v14);
      if (v21)
      {
        v22 = v20;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = *v19;
        *v19 = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_2619B2C64();
        }

        memcpy(__src, (*(v34 + 56) + 296 * v22), sizeof(__src));
        sub_2619B3420(__src);
        sub_2619B235C(v22, v34);
        *v19 = v34;
      }

      ++v13;
      v17(v35, 0);

      v5 = v15;
      v6 = v16;
      v11 = v33;
    }

    while (v12 != v13);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_2619B8F9C()
{

  return v0;
}

uint64_t sub_2619B8FC4()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void *sub_2619B9004(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F60, &qword_2619DA538);
  v3 = sub_2619D9CD8();

  memcpy(__dst, a1 + 4, sizeof(__dst));
  v4 = __dst[0];
  sub_2619B95CC(__dst, v13);
  v5 = sub_2619B0D08(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = a1 + 42;
  while (1)
  {
    *(v3 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v5;
    *(v3[6] + 8 * v5) = v4;
    result = memcpy((v3[7] + 296 * v5), &__dst[1], 0x128uLL);
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    memcpy(__dst, v7, sizeof(__dst));
    v4 = __dst[0];
    sub_2619B95CC(__dst, v13);
    v5 = sub_2619B0D08(v4);
    v7 += 38;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_2619B915C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_2619C8954(&v17);
  v50 = v35;
  v49 = v34;
  v48 = v31;
  v47 = v22;
  v46 = v21;
  v44[0] = v18;
  v44[1] = v19;
  v45 = v20;
  v43[0] = v32;
  v43[1] = v33;
  *&__src[192] = v29;
  *&__src[208] = v30;
  *&__src[224] = v32;
  *&__src[244] = DWORD1(v33);
  *&__src[128] = v25;
  *&__src[144] = v26;
  *&__src[160] = v27;
  *&__src[176] = v28;
  *&__src[104] = v23;
  *&__src[112] = v24;
  *&__src[4] = HIDWORD(v17);
  v4 = sub_2619B0BC8(a1);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_2619B9484(v43);
  *&__src[224] = v4;
  __src[228] = BYTE4(v4) & 1;
  *&__src[232] = v6;
  __src[236] = BYTE4(v6) & 1;
  *&__src[240] = v8;
  __src[244] = BYTE4(v8) & 1;
  *&__src[248] = v10;
  sub_2619B08E8(a1, v36);
  sub_2619B61F8(v44);
  *&__src[8] = v36[0];
  *&__src[24] = v36[1];
  *&__src[40] = v37;
  sub_2619B0974(a1, v38);
  sub_2619B62D0(&v46, &qword_27FEC8FF0, &unk_2619DA650);
  sub_2619B62D0(&v47, &qword_27FEC8FF8, &qword_2619DA9C0);
  *&__src[48] = v38[0];
  *&__src[64] = v38[1];
  *&__src[80] = v38[2];
  *&__src[96] = v39;
  sub_2619B0AE4();
  v12 = v11;
  sub_2619B94D8(&v48);
  *&__src[216] = v12;
  sub_2619B0C20(a1, v40);
  sub_2619B62D0(&v49, &qword_27FEC9000, &qword_2619DA660);
  sub_2619B62D0(&v50, &qword_27FEC9008, &qword_2619DA668);
  *&__src[256] = v40[0];
  *&__src[272] = v40[1];
  *&__src[288] = v41;
  sub_2619B09C0(&__src[104]);
  sub_2619B0A04(v42);
  sub_2619B952C(v42, &__src[144]);
  v13 = sub_2619B0C64(a1);
  *__src = v13;
  __src[4] = BYTE4(v13) & 1;
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v52, __src, sizeof(v52));
  sub_2619B624C(__dst, v15);
  sub_2619B3420(v52);
  return memcpy(a2, __dst, 0x128uLL);
}

uint64_t sub_2619B9588(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2619D94A8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2619B95CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9010, qword_2619DA670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2619B9640@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2619D91A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v7, v2, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x277CDAE78])
  {
    result = (*(v5 + 96))(v7, v4);
    v10 = *v7;
    *(a1 + 24) = MEMORY[0x277D83A90];
    *a1 = v10;
  }

  else if (v8 == *MEMORY[0x277CDAE80])
  {
    (*(v5 + 96))(v7, v4);
    v11 = *v7;
    result = sub_2619D9078();
    *(a1 + 24) = result;
    *a1 = v11;
  }

  else
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_2619B97F4(void *a1)
{
  v2 = sub_2619D97B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = a1;
    sub_2619D91F8();
    v18 = v8;
    v19 = v7;
    v17 = v9;

    v11 = v17;
    v10 = v18;
    v12 = v19;
  }

  else
  {
    v12 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
  }

  v20 = v12;
  v21 = v10;
  v22 = v11;
  v23 = a1 == 0;
  v13 = [objc_opt_self() mainBundle];
  v14 = [v13 bundleIdentifier];

  if (v14)
  {
    sub_2619D9948();
  }

  sub_2619D97A8();
  sub_2619D8F68();
  swift_allocObject();
  sub_2619D8F58();
  sub_2619B9A34();
  v15 = sub_2619D8F48();
  (*(v3 + 8))(v5, v2);

  return v15;
}

unint64_t sub_2619B9A34()
{
  result = qword_27FEC9018;
  if (!qword_27FEC9018)
  {
    sub_2619D97B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEC9018);
  }

  return result;
}

uint64_t sub_2619B9A8C(uint64_t a1)
{
  sub_2619D9308();
  sub_2619D92D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9020, &qword_2619DA730);
  swift_getTupleTypeMetadata2();
  sub_2619BA1E4();
  v1 = sub_2619D99D8();

  return v1;
}

uint64_t sub_2619B9B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{
  v13 = sub_2619D9B08();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20[-v15];
  v25 = a1;
  sub_2619D9908();
  v21 = a5;
  v22 = a6;
  v23 = a2;
  v24 = a3;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_2619B9F00(sub_2619BA9A8, v20, MEMORY[0x277D84A98], TupleTypeMetadata2, v18, x8_0);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_2619B9D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9038, &qword_2619DA738);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - v11;
  sub_2619D8FA8();
  v13 = sub_2619D8FB8();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2619BA9D8(v12);
    v15 = *(swift_getTupleTypeMetadata2() + 48);
    *a5 = a2;
    a5[1] = a3;
    (*(*(a4 - 8) + 16))(a5 + v15, a1, a4);
  }

  else
  {
    v17 = sub_2619D8F78();
    v19 = v18;
    (*(v14 + 8))(v12, v13);
    v20 = *(swift_getTupleTypeMetadata2() + 48);
    *a5 = v17;
    a5[1] = v19;
    return (*(*(a4 - 8) + 16))(a5 + v20, a1, a4);
  }
}

uint64_t sub_2619B9F00@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
}

unint64_t sub_2619BA1E4()
{
  result = qword_27FEC9028;
  if (!qword_27FEC9028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEC9020, &qword_2619DA730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEC9028);
  }

  return result;
}

uint64_t sub_2619BA248(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8EA8, &qword_2619DA390);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - v3;
  v5 = sub_2619D93F8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2619D9338();
  sub_2619D9368();

  sub_2619D93E8();
  sub_2619B60F0();
  sub_2619D9348();
  sub_2619D9318();
  v9 = v11;
  sub_2619D92F8();
  (*(v2 + 8))(v4, v1);
  result = (*(v6 + 8))(v8, v5);
  if (__OFADD__(v9, v12))
  {
    __break(1u);
  }

  else
  {
    v11 = v9 + v12 >= 1;
    sub_2619BA59C();
    return sub_2619D9B48();
  }

  return result;
}

uint64_t sub_2619BA474()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8EA8, &qword_2619DA390);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - v2;
  sub_2619D93E8();
  sub_2619B60F0();
  sub_2619D9348();
  sub_2619D9318();
  v4 = v8;
  sub_2619D92F8();
  result = (*(v1 + 8))(v3, v0);
  if (!__OFADD__(v4, v7))
  {
    return v4 + v7 > 0;
  }

  __break(1u);
  return result;
}

unint64_t sub_2619BA59C()
{
  result = qword_27FEC9030;
  if (!qword_27FEC9030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEC9030);
  }

  return result;
}

uint64_t sub_2619BA5F0(uint64_t a1)
{
  v1 = sub_2619D93F8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2619D9338();
  sub_2619D9368();

  (*(v2 + 8))(v4, v1);
  v6[1] = 0;
  sub_2619BA59C();
  return sub_2619D9B48();
}

uint64_t sub_2619BA70C(uint64_t a1)
{
  v1 = sub_2619D93F8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2619D9338();
  sub_2619D9368();

  v5 = sub_2619BA848();
  (*(v2 + 8))(v4, v1);
  v7[1] = (v5 & 1) != 0;
  sub_2619BA59C();
  return sub_2619D9B48();
}

uint64_t sub_2619BA848()
{
  v0 = sub_2619D93F8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2619D93E8();
  sub_2619D9368();

  sub_2619D9198();
  v4 = sub_2619D93D8();
  v5 = *(v1 + 8);
  v5(v3, v0);
  if (v4)
  {
    sub_2619D93E8();
    sub_2619D9368();

    sub_2619D9168();
    v6 = sub_2619D93D8();
    v5(v3, v0);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_2619BA9D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9038, &qword_2619DA738);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2619BAA90(uint64_t a1)
{
  result = swift_beginAccess();
  qword_27FEC9040 = a1;
  return result;
}

uint64_t sub_2619BAB30@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20RealityKitInspection32SceneDebugRepresentationProvider_hierarchy;
  swift_beginAccess();
  v4 = sub_2619D9748();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_2619BABB8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20RealityKitInspection32SceneDebugRepresentationProvider_hierarchy;
  swift_beginAccess();
  v4 = sub_2619D9748();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_2619BAC48()
{
  v0 = swift_allocObject();
  sub_2619D9738();
  return v0;
}

uint64_t sub_2619BAC8C()
{
  v1 = sub_2619D9748();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2619D9738();
  (*(v2 + 32))(v0 + OBJC_IVAR____TtC20RealityKitInspection32SceneDebugRepresentationProvider_hierarchy, v4, v1);
  return v0;
}

uint64_t sub_2619BAD5C(uint64_t a1)
{
  swift_beginAccess();
  v3 = (*(*v1 + 128))(a1, qword_27FEC9040);
  return (*(*v1 + 136))(v3);
}

uint64_t sub_2619BADF8(void *a1, uint64_t a2)
{
  v4 = sub_2619D9858();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_2619D97E8();

  v8 = sub_2619D9848();
  v9 = sub_2619D9AC8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = sub_2619D9448();

    _os_log_impl(&dword_2619AE000, v8, v9, "Representing entity %llu in RealityKitHierarchy", v10, 0xCu);
    MEMORY[0x266714FB0](v10, -1, -1);
  }

  else
  {
  }

  (*(v5 + 8))(v7, v4);
  sub_2619BB624(a1, 0, a2, 1);
  swift_beginAccess();
  v11 = sub_2619D9728();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9048, &qword_2619DA760);
  sub_2619D9528();
  v11(v14, 0);
  swift_endAccess();
}

uint64_t sub_2619BB01C()
{
  v1 = v0;
  v2 = sub_2619D9748();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_2619D9858();
  v6 = *(v37 - 8);
  v7 = MEMORY[0x28223BE20](v37);
  v8 = MEMORY[0x28223BE20](v7);
  v35 = &v34 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - v10;
  sub_2619D97E8();
  v12 = sub_2619D9848();
  v13 = sub_2619D9AC8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2619AE000, v12, v13, "Encoding RealityKitHierarchy", v14, 2u);
    MEMORY[0x266714FB0](v14, -1, -1);
  }

  v36 = *(v6 + 8);
  v36(v11, v37);
  sub_2619D8F68();
  swift_allocObject();
  sub_2619D8F58();
  (*(*v1 + 88))();
  sub_2619C4CDC(&qword_27FEC9050, MEMORY[0x277D65308], MEMORY[0x277D65310]);
  v15 = sub_2619D8F48();
  v17 = v16;
  (*(v3 + 8))(v5, v2);
  sub_2619C454C(v15, v17);
  v18 = sub_2619C43A0(v15, v17);
  if (v19)
  {
    v20 = v18;
    v21 = v19;
    sub_2619C45A0(v15, v17);
    v22 = v35;
    goto LABEL_11;
  }

  v40 = v15;
  v41 = v17;
  sub_2619C454C(v15, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9058, &qword_2619DA768);
  v23 = swift_dynamicCast();
  v22 = v35;
  if (v23)
  {
    sub_2619C45F4(v38, v42);
    __swift_project_boxed_opaque_existential_1Tm(v42, v43);
    if (sub_2619D9D08())
    {
      sub_2619C45A0(v15, v17);
      __swift_project_boxed_opaque_existential_1Tm(v42, v43);
      sub_2619D9CF8();
      v21 = *(&v38[0] + 1);
      v20 = *&v38[0];
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      goto LABEL_11;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v42);
  }

  else
  {
    v39 = 0;
    memset(v38, 0, sizeof(v38));
    sub_2619B62D0(v38, &qword_27FEC9060, qword_2619DA770);
  }

  v20 = sub_2619C3430(v15, v17);
  v21 = v24;
  sub_2619C45A0(v15, v17);
LABEL_11:
  sub_2619D97E8();

  v25 = sub_2619D9848();
  v26 = sub_2619D9AC8();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v20;
    v30 = v28;
    v42[0] = v28;
    *v27 = 136315138;
    v31 = sub_2619C2E88(v29, v21, v42);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_2619AE000, v25, v26, "%s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    MEMORY[0x266714FB0](v30, -1, -1);
    MEMORY[0x266714FB0](v27, -1, -1);

    v32 = v35;
  }

  else
  {

    v32 = v22;
  }

  v36(v32, v37);
  return v15;
}

uint64_t sub_2619BB624(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v77 = a4;
  v93 = a2;
  v8 = sub_2619D9428();
  MEMORY[0x28223BE20](v8 - 8);
  v64[1] = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F88, &qword_2619DA548);
  v10 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v12 = v64 - v11;
  v89 = sub_2619D9798();
  v67 = *(v89 - 8);
  v13 = MEMORY[0x28223BE20](v89);
  v74 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v87 = v64 - v15;
  v16 = sub_2619D93F8();
  MEMORY[0x28223BE20](v16 - 8);
  v81 = (v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = sub_2619D93C8();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v88 = v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_2619D9E28();
  v90 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v73 = v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9068, &qword_2619DA7D8);
  MEMORY[0x28223BE20](v20 - 8);
  v72 = v64 - v21;
  v92 = sub_2619D9838();
  v78 = *(v92 - 8);
  v22 = MEMORY[0x28223BE20](v92);
  v85 = v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v91 = v64 - v24;
  v84 = sub_2619D9858();
  v25 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v27 = v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2619D97E8();

  v28 = sub_2619D9848();
  v29 = sub_2619D9AC8();

  v30 = os_log_type_enabled(v28, v29);
  v66 = v10;
  v65 = v12;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *&v99 = v32;
    *v31 = 136315138;
    v83 = v28;
    v33 = sub_2619D9458();
    v35 = sub_2619C2E88(v33, v34, &v99);

    *(v31 + 4) = v35;
    v28 = v83;
    _os_log_impl(&dword_2619AE000, v83, v29, "RealityKitHierarchy capturing entity: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    MEMORY[0x266714FB0](v32, -1, -1);
    MEMORY[0x266714FB0](v31, -1, -1);
  }

  (*(v25 + 8))(v27, v84);
  sub_2619D9448();
  v36 = v91;
  sub_2619D9828();
  *&v99 = a1;
  sub_2619D9E38();
  v82 = v37;
  v38 = *(v78 + 16);
  v84 = v78 + 16;
  v83 = v38;
  (v38)(v85, v36, v92);
  v80 = sub_2619D9458();
  v71 = v39;
  *&v99 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8FC8, &qword_2619DA890);
  v70 = sub_2619D9958();
  v69 = v40;
  v68 = sub_2619D9478();
  sub_2619D9378();
  sub_2619D9488();
  sub_2619D9438();
  sub_2619D96E8();
  swift_allocObject();

  v41 = sub_2619D96C8();
  v70 = sub_2619D94A8();
  v100 = v70;
  *&v99 = a1;

  v42 = v73;
  sub_2619D9DD8();
  v43 = v72;
  sub_2619BC2F4(v42, a3, &unk_28741E4D0, v72);
  swift_arrayDestroy();
  v44 = *(v90 + 8);
  v90 += 8;
  v82 = v44;
  v44(v42, v86);
  sub_2619D96B8();
  v71 = a1;
  sub_2619D9368();
  v45 = v88;
  sub_2619D9388();
  sub_2619D93B8();
  v93 = a3;
  v46 = v89;
  v47 = v74;
  v48 = v87;
  if (v100)
  {
    v81 = (v67 + 16);
    v80 = (v67 + 8);
    do
    {
      sub_2619C45F4(&v99, v96);
      __swift_project_boxed_opaque_existential_1Tm(v96, v97);
      v94[0] = swift_getDynamicType();
      v94[1] = v98;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9150, &qword_2619DA898);
      sub_2619D9958();

      sub_2619D9788();
      (*v81)(v47, v48, v46);
      (v83)(v85, v91, v92);
      v49 = v97;
      v50 = v5;
      v51 = __swift_project_boxed_opaque_existential_1Tm(v96, v97);
      v95 = v49;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v94);
      v53 = v51;
      v5 = v50;
      a3 = v93;
      (*(*(v49 - 8) + 16))(boxed_opaque_existential_0, v53, v49);
      sub_2619C4DB8(v94);
      __swift_destroy_boxed_opaque_existential_0Tm(v94);
      sub_2619D9718();
      swift_allocObject();
      v48 = v87;
      sub_2619D9708();
      v54 = v97;
      v55 = __swift_project_boxed_opaque_existential_1Tm(v96, v97);
      v95 = v54;
      v56 = __swift_allocate_boxed_opaque_existential_0(v94);
      (*(*(v54 - 8) + 16))(v56, v55, v54);
      sub_2619D9DD8();
      sub_2619BC2F4(v42, a3, MEMORY[0x277D84F90], v43);
      v82(v42, v86);
      sub_2619D96F8();
      v57 = sub_2619D96A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9158, &qword_2619DA8A0);
      sub_2619D9528();
      v57(v94, 0);
      v45 = v88;
      v46 = v89;

      (*v80)(v48, v46);
      __swift_destroy_boxed_opaque_existential_0Tm(v96);
      sub_2619D93B8();
    }

    while (v100);
  }

  (*(v75 + 8))(v45, v76);
  if (v77)
  {
    sub_2619D9068();
    v58 = v65;
    sub_2619D9408();
    v59 = v79;
    sub_2619D9418();
    for (i = v99; v99; i = v99)
    {

      v61 = sub_2619B7A38();
      sub_2619BB624(i, v41, a3, (v61 & 1) == 0);

      v62 = sub_2619D96D8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9048, &qword_2619DA760);
      sub_2619D9528();
      v62(&v99, 0);
      a3 = v93;

      v59 = v79;

      sub_2619D9418();
    }

    (*(v66 + 8))(v58, v59);
  }

  (*(v78 + 8))(v91, v92);
  return v41;
}

uint64_t sub_2619BC2F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v104 = a3;
  v98 = a2;
  v101 = a4;
  v97 = sub_2619D95A8();
  v5 = *(v97 - 8);
  v6 = MEMORY[0x28223BE20](v97);
  v96 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v95 = (&v86 - v8);
  v94 = sub_2619D9568();
  v9 = *(v94 - 8);
  v10 = MEMORY[0x28223BE20](v94);
  v93 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v92 = &v86 - v12;
  v13 = sub_2619D9E28();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2619D9858();
  v106 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v103 = &v86 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v100 = &v86 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v107 = &v86 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v86 - v27;
  sub_2619D97E8();
  v29 = *(v14 + 16);
  v108 = a1;
  v109 = v13;
  v29(v16, a1, v13);
  v30 = sub_2619D9848();
  v31 = sub_2619D9AC8();
  v32 = os_log_type_enabled(v30, v31);
  v99 = v20;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    *&v119 = v102;
    *v33 = 136315138;
    *&v117 = sub_2619D9DE8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC90D0, &qword_2619DA830);
    v34 = sub_2619D9958();
    *&v105 = v9;
    v35 = v5;
    v37 = v36;
    (*(v14 + 8))(v16, v109);
    v38 = sub_2619C2E88(v34, v37, &v119);
    v5 = v35;
    v9 = v105;

    *(v33 + 4) = v38;
    _os_log_impl(&dword_2619AE000, v30, v31, "RealityKitHierarchy capturing properties for subjectType: %s", v33, 0xCu);
    v39 = v102;
    __swift_destroy_boxed_opaque_existential_0Tm(v102);
    MEMORY[0x266714FB0](v39, -1, -1);
    v40 = v33;
    v20 = v99;
    MEMORY[0x266714FB0](v40, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v16, v109);
  }

  v41 = v106;
  v109 = *(v106 + 8);
  v109(v28, v17);
  v42 = sub_2619D9778();
  sub_2619C4CDC(&qword_27FEC90F8, MEMORY[0x277D65320], MEMORY[0x277D65318]);
  v91 = v42;
  sub_2619D9548();
  sub_2619D9E18();
  v43 = sub_2619D9C58();

  v106 = v43;
  sub_2619D9CE8();
  v45 = v100;
  v46 = v107;
  if (v121)
  {
    v108 = v41 + 8;
    v89 = (v9 + 16);
    v88 = (v5 + 16);
    v87 = (v5 + 8);
    v86 = (v9 + 8);
    v102 = (v104 + 40);
    *&v44 = 136315138;
    v105 = v44;
    v90 = v17;
    do
    {
      v117 = v119;
      sub_2619C4C88(&v120, &v118);
      sub_2619D97E8();
      sub_2619C4D24(&v117, &v114, &qword_27FEC90E8, &qword_2619DA840);
      v47 = sub_2619D9848();
      v48 = sub_2619D9AC8();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v111 = v50;
        *v49 = v105;
        sub_2619C4D24(&v114, &v112, &qword_27FEC90E8, &qword_2619DA840);
        v110 = v112;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9140, &qword_2619DA878);
        v51 = sub_2619D9958();
        v53 = v52;
        sub_2619B62D0(&v114, &qword_27FEC90E8, &qword_2619DA840);
        __swift_destroy_boxed_opaque_existential_0Tm(v113);
        v54 = sub_2619C2E88(v51, v53, &v111);

        *(v49 + 4) = v54;
        _os_log_impl(&dword_2619AE000, v47, v48, "property label: %s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v50);
        v55 = v50;
        v46 = v107;
        MEMORY[0x266714FB0](v55, -1, -1);
        MEMORY[0x266714FB0](v49, -1, -1);
      }

      else
      {

        sub_2619B62D0(&v114, &qword_27FEC90E8, &qword_2619DA840);
      }

      v109(v46, v17);
      sub_2619D97E8();
      sub_2619C4D24(&v117, &v114, &qword_27FEC90E8, &qword_2619DA840);
      v56 = sub_2619D9848();
      v57 = sub_2619D9AC8();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *&v110 = v59;
        *v58 = v105;
        sub_2619C4D24(&v114, &v112, &qword_27FEC90E8, &qword_2619DA840);

        v60 = sub_2619D9958();
        v62 = v61;
        sub_2619B62D0(&v114, &qword_27FEC90E8, &qword_2619DA840);
        v63 = sub_2619C2E88(v60, v62, &v110);

        *(v58 + 4) = v63;
        _os_log_impl(&dword_2619AE000, v56, v57, "property value: %s", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v59);
        v64 = v59;
        v46 = v107;
        MEMORY[0x266714FB0](v64, -1, -1);
        MEMORY[0x266714FB0](v58, -1, -1);
      }

      else
      {

        sub_2619B62D0(&v114, &qword_27FEC90E8, &qword_2619DA840);
      }

      v109(v45, v17);
      sub_2619C4D24(&v117, &v114, &qword_27FEC90E8, &qword_2619DA840);
      v65 = v115;
      if (v115)
      {
        v66 = v114;
        __swift_destroy_boxed_opaque_existential_0Tm(v116);
        v67 = *(v104 + 16) + 1;
        v68 = v102;
        do
        {
          if (!--v67)
          {

            v78 = v92;
            sub_2619D9558();
            v79 = v95;
            sub_2619BE25C(&v118, v98, v95);
            v80 = v94;
            (*v89)(v93, v78, v94);
            v81 = v97;
            (*v88)(v96, v79, v97);
            sub_2619C4DB8(&v118);
            swift_allocObject();
            v45 = v100;
            sub_2619D9758();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9068, &qword_2619DA7D8);
            sub_2619D9528();

            v82 = v79;
            v46 = v107;
            (*v87)(v82, v81);
            v83 = v78;
            v20 = v99;
            v84 = v80;
            v17 = v90;
            (*v86)(v83, v84);
            goto LABEL_7;
          }

          v69 = v68 + 2;
          v70 = *v68;
          v114 = *(v68 - 1);
          v115 = v70;
          *&v112 = v66;
          *(&v112 + 1) = v65;
          sub_2619B7480();
          v71 = sub_2619D9B18();
          v68 = v69;
        }

        while (v71);

        sub_2619D97E8();
        v72 = sub_2619D9848();
        v73 = sub_2619D9AC8();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          *v74 = 0;
          _os_log_impl(&dword_2619AE000, v72, v73, "Excluding property", v74, 2u);
          MEMORY[0x266714FB0](v74, -1, -1);
        }

        v109(v103, v17);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v116);
        sub_2619D97E8();
        v75 = sub_2619D9848();
        v76 = sub_2619D9AE8();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          *v77 = 0;
          _os_log_impl(&dword_2619AE000, v75, v76, "Failed to capture property because it lacked a label", v77, 2u);
          MEMORY[0x266714FB0](v77, -1, -1);
        }

        v109(v20, v17);
      }

LABEL_7:
      sub_2619B62D0(&v117, &qword_27FEC90E8, &qword_2619DA840);
      sub_2619D9CE8();
    }

    while (v121);
  }
}

void *sub_2619BD054(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v49 = sub_2619D95A8();
  v48 = *(v49 - 8);
  v2 = MEMORY[0x28223BE20](v49);
  v47 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v46 = (v43 - v4);
  v55 = sub_2619D9858();
  v5 = *(v55 - 8);
  v6 = MEMORY[0x28223BE20](v55);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v43 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v43 - v12;
  sub_2619D97E8();
  v14 = sub_2619D9848();
  v15 = sub_2619D9AC8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2619AE000, v14, v15, "RealityKitHierarchy capturing array", v16, 2u);
    MEMORY[0x266714FB0](v16, -1, -1);
  }

  v19 = *(v5 + 8);
  v17 = v5 + 8;
  v18 = v19;
  v19(v13, v55);
  sub_2619D9E18();
  v20 = sub_2619D9C58();

  v54 = v20;
  sub_2619D9CE8();
  if (v64)
  {
    v44 = (v48 + 16);
    v43[1] = v48 + 8;
    v43[0] = v48 + 32;
    v50 = MEMORY[0x277D84F90];
    *&v21 = 136315138;
    v51 = v21;
    v53 = v11;
    v52 = v17;
    do
    {
      v22 = v62;
      v59[0] = v61;
      v59[1] = v62;
      sub_2619C4C88(&v63, &v60);
      sub_2619D97E8();
      sub_2619C4D24(v59, v58, &qword_27FEC90E8, &qword_2619DA840);
      v23 = sub_2619D9848();
      v24 = sub_2619D9AC8();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v57 = v26;
        *v25 = v51;
        sub_2619C4D24(v58, v56, &qword_27FEC90E8, &qword_2619DA840);

        v27 = sub_2619D9958();
        v28 = v18;
        v29 = v8;
        v31 = v30;
        sub_2619B62D0(v58, &qword_27FEC90E8, &qword_2619DA840);
        v32 = sub_2619C2E88(v27, v31, &v57);
        v8 = v29;
        v18 = v28;

        *(v25 + 4) = v32;
        _os_log_impl(&dword_2619AE000, v23, v24, "property value: %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v26);
        v11 = v53;
        MEMORY[0x266714FB0](v26, -1, -1);
        MEMORY[0x266714FB0](v25, -1, -1);
      }

      else
      {

        sub_2619B62D0(v58, &qword_27FEC90E8, &qword_2619DA840);
      }

      v18(v11, v55);
      if (v22)
      {
        sub_2619D97E8();
        v33 = sub_2619D9848();
        v34 = sub_2619D9AE8();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_2619AE000, v33, v34, "Failed to capture array property because it contained a label", v35, 2u);
          MEMORY[0x266714FB0](v35, -1, -1);
        }

        v18(v8, v55);
      }

      else
      {
        v36 = v46;
        sub_2619BE25C(&v60, v45, v46);
        (*v44)(v47, v36, v49);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_2619C2CB0(0, v50[2] + 1, 1, v50);
        }

        v38 = v50[2];
        v37 = v50[3];
        if (v38 >= v37 >> 1)
        {
          v50 = sub_2619C2CB0((v37 > 1), v38 + 1, 1, v50);
        }

        v39 = v48;
        v40 = v49;
        (*(v48 + 8))(v46, v49);
        v41 = v50;
        v50[2] = v38 + 1;
        (*(v39 + 32))(v41 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v38, v47, v40);
      }

      sub_2619B62D0(v59, &qword_27FEC90E8, &qword_2619DA840);
      sub_2619D9CE8();
    }

    while (v64);
  }

  else
  {
    v50 = MEMORY[0x277D84F90];
  }

  return v50;
}

unint64_t sub_2619BD740(uint64_t a1, uint64_t a2)
{
  v78 = a2;
  v73 = sub_2619D9598();
  *&v83 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v72 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_2619D95A8();
  v3 = *(v79 - 8);
  v4 = MEMORY[0x28223BE20](v79);
  v71 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v70 = &v62 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v76 = &v62 - v9;
  MEMORY[0x28223BE20](v8);
  v77 = (&v62 - v10);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9068, &qword_2619DA7D8);
  v11 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v80 = &v62 - v12;
  v85 = sub_2619D9858();
  v13 = *(v85 - 8);
  v14 = MEMORY[0x28223BE20](v85);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v62 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v62 - v20;
  sub_2619D97E8();
  v22 = sub_2619D9848();
  v23 = sub_2619D9AC8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_2619AE000, v22, v23, "RealityKitHierarchy capturing dictionary", v24, 2u);
    MEMORY[0x266714FB0](v24, -1, -1);
  }

  v25 = v13 + 8;
  v26 = v85;
  v87 = *(v13 + 8);
  v87(v21, v85);
  v82 = sub_2619C4658(MEMORY[0x277D84F90]);
  sub_2619D9E18();
  v27 = sub_2619D9C58();

  v86 = v27;
  sub_2619D9CE8();
  if (!v96)
  {
LABEL_29:

    return v82;
  }

  v75 = (v3 + 88);
  v74 = *MEMORY[0x277D652D8];
  v69 = (v3 + 8);
  v68 = (v3 + 96);
  v67 = (v11 + 32);
  v66 = (v11 + 8);
  v65 = (v3 + 16);
  v64 = (v83 + 8);
  *&v28 = 136315138;
  v83 = v28;
  v84 = v19;
  while (1)
  {
    v29 = v94;
    v91[0] = v93;
    v91[1] = v94;
    sub_2619C4C88(&v95, &v92);
    sub_2619D97E8();
    sub_2619C4D24(v91, &v90, &qword_27FEC90E8, &qword_2619DA840);
    v30 = sub_2619D9848();
    v31 = sub_2619D9AC8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = v25;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v89 = v34;
      *v33 = v83;
      sub_2619C4D24(&v90, v88, &qword_27FEC90E8, &qword_2619DA840);

      v35 = sub_2619D9958();
      v37 = v36;
      sub_2619B62D0(&v90, &qword_27FEC90E8, &qword_2619DA840);
      v38 = sub_2619C2E88(v35, v37, &v89);

      *(v33 + 4) = v38;
      v26 = v85;
      _os_log_impl(&dword_2619AE000, v30, v31, "property value: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      MEMORY[0x266714FB0](v34, -1, -1);
      v39 = v33;
      v25 = v32;
      v40 = v87;
      v19 = v84;
      MEMORY[0x266714FB0](v39, -1, -1);

      v40(v19, v26);
      if (v29)
      {
        goto LABEL_7;
      }
    }

    else
    {

      sub_2619B62D0(&v90, &qword_27FEC90E8, &qword_2619DA840);
      v87(v19, v26);
      if (v29)
      {
LABEL_7:
        sub_2619D97E8();
        v41 = sub_2619D9848();
        v42 = sub_2619D9AE8();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_2619AE000, v41, v42, "Failed to capture dictionary property because it contained a label", v43, 2u);
          MEMORY[0x266714FB0](v43, -1, -1);
        }

        v87(v16, v26);
        goto LABEL_10;
      }
    }

    v44 = v77;
    sub_2619BE25C(&v92, v78, v77);
    v45 = v44;
    v46 = v44;
    v47 = v79;
    v48 = (*v75)(v46, v79);
    if (v48 != v74)
    {
      (*v69)(v45, v47);
      goto LABEL_10;
    }

    (*v68)(v45, v47);

    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC90E0, &qword_2619DA838);
    (*v67)(v80, v45 + *(v49 + 48), v81);
    v50 = sub_2619D9508();
    if (v50 >> 62)
    {
      v51 = sub_2619D9CA8();
    }

    else
    {
      v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v51 < 2)
    {
      (*v66)(v80, v81);
      goto LABEL_10;
    }

    result = sub_2619D9508();
    if ((result & 0xC000000000000001) != 0)
    {
      MEMORY[0x2667148E0](0, result);
      goto LABEL_20;
    }

    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

LABEL_20:

    sub_2619D9768();

    result = sub_2619D9508();
    v63 = v25;
    if ((result & 0xC000000000000001) != 0)
    {
      MEMORY[0x2667148E0](1, result);
    }

    else
    {
      if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_31;
      }
    }

    v53 = v70;
    sub_2619D9768();

    v54 = *v65;
    v55 = v71;
    v56 = v76;
    v57 = v79;
    (*v65)(v71, v76, v79);
    sub_2619C4CDC(&qword_27FEC9118, MEMORY[0x277D652F0], MEMORY[0x277D652F8]);
    sub_2619D9B68();
    v58 = v72;
    sub_2619D9588();
    v54(v55, v53, v57);
    v59 = v82;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v90 = v59;
    sub_2619C3A18(v55, v58, isUniquelyReferenced_nonNull_native);
    (*v64)(v58, v73);
    v61 = *v69;
    (*v69)(v53, v57);
    v61(v56, v57);
    (*v66)(v80, v81);
    v82 = v90;
    v26 = v85;
    v25 = v63;
LABEL_10:
    sub_2619B62D0(v91, &qword_27FEC90E8, &qword_2619DA840);
    sub_2619D9CE8();
    if (!v96)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2619BE25C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v512 = a2;
  v523 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9068, &qword_2619DA7D8);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v464 = &v461 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v474 = &v461 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v477 = &v461 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v478 = &v461 - v13;
  MEMORY[0x28223BE20](v12);
  v492 = &v461 - v14;
  v497 = sub_2619D9568();
  v496 = *(v497 - 8);
  v15 = MEMORY[0x28223BE20](v497);
  v489 = &v461 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v499 = &v461 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v500 = &v461 - v20;
  MEMORY[0x28223BE20](v19);
  v501 = &v461 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9070, &qword_2619DA7E0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v471 = &v461 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v479 = &v461 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v465 = &v461 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v486 = &v461 - v30;
  MEMORY[0x28223BE20](v29);
  v528 = &v461 - v31;
  v533 = sub_2619D95A8();
  v519 = *(v533 - 8);
  v32 = MEMORY[0x28223BE20](v533);
  v476 = &v461 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v482 = &v461 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v462 = &v461 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v494 = &v461 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v481 = &v461 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v514 = &v461 - v43;
  MEMORY[0x28223BE20](v42);
  v517 = &v461 - v44;
  v527 = sub_2619D9DF8();
  v530 = *(v527 - 1);
  MEMORY[0x28223BE20](v527);
  v511 = &v461 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v526 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9078, &qword_2619DA7E8);
  v46 = MEMORY[0x28223BE20](v526);
  v507 = &v461 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v532 = &v461 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9080, &qword_2619DA7F0);
  v50 = MEMORY[0x28223BE20](v49 - 8);
  v498 = &v461 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v50);
  v531 = &v461 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v513 = &v461 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v515 = &v461 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v529 = (&v461 - v59);
  MEMORY[0x28223BE20](v58);
  v61 = &v461 - v60;
  v62 = sub_2619D9858();
  v63 = *(v62 - 8);
  v64 = MEMORY[0x28223BE20](v62);
  v473 = &v461 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x28223BE20](v64);
  v472 = &v461 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v480 = &v461 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v466 = &v461 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v467 = &v461 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v469 = &v461 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v470 = &v461 - v77;
  v78 = MEMORY[0x28223BE20](v76);
  v483 = &v461 - v79;
  v80 = MEMORY[0x28223BE20](v78);
  v493 = &v461 - v81;
  v82 = MEMORY[0x28223BE20](v80);
  v490 = &v461 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v468 = &v461 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v484 = &v461 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v475 = &v461 - v89;
  v90 = MEMORY[0x28223BE20](v88);
  v485 = &v461 - v91;
  v92 = MEMORY[0x28223BE20](v90);
  v510 = &v461 - v93;
  v94 = MEMORY[0x28223BE20](v92);
  v508 = &v461 - v95;
  v96 = MEMORY[0x28223BE20](v94);
  v516 = &v461 - v97;
  v98 = MEMORY[0x28223BE20](v96);
  v509 = &v461 - v99;
  MEMORY[0x28223BE20](v98);
  v101 = &v461 - v100;
  v524 = sub_2619D9E28();
  v525 = *(v524 - 8);
  v102 = MEMORY[0x28223BE20](v524);
  v463 = &v461 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = MEMORY[0x28223BE20](v102);
  v495 = &v461 - v105;
  MEMORY[0x28223BE20](v104);
  v107 = &v461 - v106;
  v518 = a1;
  sub_2619C4B1C(a1, &v539);
  sub_2619D9DD8();
  v108 = sub_2619D9DE8();
  sub_2619D97E8();
  v109 = sub_2619D9848();
  v110 = sub_2619D9AC8();
  v111 = os_log_type_enabled(v109, v110);
  v534 = v107;
  v522 = v62;
  v520 = v63;
  v491 = v4;
  v488 = v5;
  v487 = v108;
  if (v111)
  {
    v112 = v63;
    v113 = v108;
    v114 = v62;
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    *&v539 = v116;
    *v115 = 136315138;
    *&v536 = v113;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC90D0, &qword_2619DA830);
    v117 = sub_2619D9958();
    v119 = sub_2619C2E88(v117, v118, &v539);

    *(v115 + 4) = v119;
    _os_log_impl(&dword_2619AE000, v109, v110, "RealityKitHierarchy capturing PropertyValue of subjectType: %s", v115, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v116);
    MEMORY[0x266714FB0](v116, -1, -1);
    MEMORY[0x266714FB0](v115, -1, -1);

    v521 = *(v112 + 8);
    v521(v101, v114);
  }

  else
  {

    v521 = *(v63 + 8);
    v521(v101, v62);
  }

  sub_2619D9E08();
  v120 = *MEMORY[0x277D84C18];
  v121 = v530;
  v122 = *(v530 + 104);
  v123 = v529;
  v124 = v527;
  v505 = v530 + 104;
  v503 = v122;
  v122(v529, v120, v527);
  v125 = *(v121 + 56);
  v504 = v121 + 56;
  v502 = v125;
  v125(v123, 0, 1, v124);
  v126 = *(v526 + 48);
  v127 = v532;
  sub_2619C4D24(v61, v532, &qword_27FEC9080, &qword_2619DA7F0);
  v128 = v127;
  sub_2619C4D24(v123, v127 + v126, &qword_27FEC9080, &qword_2619DA7F0);
  v131 = *(v121 + 48);
  v129 = v121 + 48;
  v130 = v131;
  v132 = v131(v127, 1, v124);
  v133 = v531;
  v134 = v528;
  v506 = v131;
  if (v132 != 1)
  {
    v136 = v515;
    sub_2619C4D24(v128, v515, &qword_27FEC9080, &qword_2619DA7F0);
    if (v130(v128 + v126, 1, v124) != 1)
    {
      v137 = v530;
      v138 = v128 + v126;
      v139 = v511;
      (*(v530 + 32))(v511, v138, v124);
      v461 = v129;
      v140 = v128;
      v141 = sub_2619D9938();
      v142 = *(v137 + 8);
      v142(v139, v124);
      sub_2619B62D0(v529, &qword_27FEC9080, &qword_2619DA7F0);
      sub_2619B62D0(v61, &qword_27FEC9080, &qword_2619DA7F0);
      v142(v136, v124);
      v134 = v528;
      v133 = v531;
      sub_2619B62D0(v140, &qword_27FEC9080, &qword_2619DA7F0);
      if ((v141 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    sub_2619B62D0(v529, &qword_27FEC9080, &qword_2619DA7F0);
    v135 = v532;
    sub_2619B62D0(v61, &qword_27FEC9080, &qword_2619DA7F0);
    (*(v530 + 8))(v136, v124);
LABEL_9:
    sub_2619B62D0(v135, &qword_27FEC9078, &qword_2619DA7E8);
    goto LABEL_14;
  }

  sub_2619B62D0(v123, &qword_27FEC9080, &qword_2619DA7F0);
  v135 = v532;
  sub_2619B62D0(v61, &qword_27FEC9080, &qword_2619DA7F0);
  if (v130(v135 + v126, 1, v124) != 1)
  {
    goto LABEL_9;
  }

  sub_2619B62D0(v135, &qword_27FEC9080, &qword_2619DA7F0);
LABEL_11:
  sub_2619D9E18();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v143 = sub_2619D9BA8();
  swift_getObjectType();
  result = sub_2619D9BA8();
  if (v143 != result)
  {
    __break(1u);
    goto LABEL_138;
  }

  v145 = sub_2619D9BB8();
  swift_unknownObjectRelease();
  if ((v145 & 1) == 0)
  {
    sub_2619D9C78();
    swift_unknownObjectRelease();

    v539 = v536;
    v540 = v537;
    v541 = v538;
    v180 = v509;
    sub_2619D97E8();
    v181 = sub_2619D9848();
    v182 = sub_2619D9AC8();
    v183 = os_log_type_enabled(v181, v182);
    v184 = v534;
    if (v183)
    {
      v185 = swift_slowAlloc();
      *v185 = 0;
      _os_log_impl(&dword_2619AE000, v181, v182, "Unwrapping optional PropertyValue", v185, 2u);
      MEMORY[0x266714FB0](v185, -1, -1);
    }

    v521(v180, v522);
    sub_2619BE25C(&v540, v512, v523);
    sub_2619B62D0(&v539, &qword_27FEC90E8, &qword_2619DA840);
    return (*(v525 + 8))(v184, v524);
  }

  swift_unknownObjectRelease();

  v124 = v527;
  v133 = v531;
  v134 = v528;
LABEL_14:
  v146 = v518;
  sub_2619C4B1C(v518, &v539);
  sub_2619D9578();
  v147 = v519;
  v149 = (v519 + 48);
  v148 = *(v519 + 48);
  if (v148(v134, 1, v533) != 1)
  {
    v159 = v134;
    v160 = *(v147 + 32);
    v161 = v517;
    v162 = v533;
    v160(v517, v159, v533);
    v163 = v516;
    sub_2619D97E8();
    v164 = v514;
    (*(v147 + 16))(v514, v161, v162);
    v165 = sub_2619D9848();
    v166 = sub_2619D9AC8();
    if (os_log_type_enabled(v165, v166))
    {
      v167 = swift_slowAlloc();
      v168 = v533;
      v169 = v167;
      v170 = swift_slowAlloc();
      *&v539 = v170;
      *v169 = 136315138;
      sub_2619C4CDC(&qword_27FEC9110, MEMORY[0x277D652F0], MEMORY[0x277D65300]);
      v171 = sub_2619D9D18();
      v172 = v164;
      v174 = v173;
      (*(v147 + 8))(v172, v168);
      v175 = sub_2619C2E88(v171, v174, &v539);

      *(v169 + 4) = v175;
      _os_log_impl(&dword_2619AE000, v165, v166, "Encoded PropertyValueType as known type: %s", v169, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v170);
      MEMORY[0x266714FB0](v170, -1, -1);
      MEMORY[0x266714FB0](v169, -1, -1);

      v176 = v516;
    }

    else
    {

      (*(v147 + 8))(v164, v533);
      v176 = v163;
    }

    v521(v176, v522);
    (*(v525 + 8))(v534, v524);
    return (v160)(v523, v517, v533);
  }

  v532 = v148;
  sub_2619B62D0(v134, &qword_27FEC9070, &qword_2619DA7E0);
  sub_2619C4B1C(v146, &v542);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9088, &qword_2619DA7F8);
  if (swift_dynamicCast())
  {
    v528 = v149;
    sub_2619C45F4(&v536, &v539);
    v150 = *(&v540 + 1);
    v151 = v541;
    __swift_project_boxed_opaque_existential_1Tm(&v539, *(&v540 + 1));
    v152 = *(v151 + 16);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v154 = sub_2619D9B08();
    v529 = &v461;
    v155 = *(v154 - 8);
    MEMORY[0x28223BE20](v154);
    v157 = &v461 - v156;
    v152(v150, v151);
    v158 = *(AssociatedTypeWitness - 8);
    if ((*(v158 + 48))(v157, 1, AssociatedTypeWitness) != 1)
    {
      v543 = AssociatedTypeWitness;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v542);
      (*(v158 + 32))(boxed_opaque_existential_0, v157, AssociatedTypeWitness);
      sub_2619C4C88(&v542, &v536);
      v194 = v508;
      sub_2619D97E8();
      sub_2619C4B1C(&v536, &v542);
      v195 = sub_2619D9848();
      v196 = sub_2619D9AC8();
      if (os_log_type_enabled(v195, v196))
      {
        v197 = swift_slowAlloc();
        v198 = swift_slowAlloc();
        v544 = v198;
        *v197 = 136315138;
        __swift_project_boxed_opaque_existential_1Tm(&v542, v543);
        DynamicType = swift_getDynamicType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC90D0, &qword_2619DA830);
        v199 = sub_2619D9958();
        v201 = v200;
        __swift_destroy_boxed_opaque_existential_0Tm(&v542);
        v202 = sub_2619C2E88(v199, v201, &v544);

        *(v197 + 4) = v202;
        _os_log_impl(&dword_2619AE000, v195, v196, "Unwrapping value as type: %s", v197, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v198);
        MEMORY[0x266714FB0](v198, -1, -1);
        MEMORY[0x266714FB0](v197, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0Tm(&v542);
      }

      v521(v194, v522);
      v208 = v534;
      sub_2619BE25C(&v536, v512, v523);
      __swift_destroy_boxed_opaque_existential_0Tm(&v536);
      (*(v525 + 8))(v208, v524);
      return __swift_destroy_boxed_opaque_existential_0Tm(&v539);
    }

    (*(v155 + 8))(v157, v154);
    __swift_destroy_boxed_opaque_existential_0Tm(&v539);
    v147 = v519;
    v146 = v518;
    v124 = v527;
    v133 = v531;
    v149 = v528;
  }

  else
  {
    *&v538 = 0;
    v536 = 0u;
    v537 = 0u;
    sub_2619B62D0(&v536, &qword_27FEC9090, &qword_2619DA800);
  }

  sub_2619C4B1C(v146, &v539);
  v177 = swift_dynamicCast();
  v178 = v513;
  if (v177)
  {
    sub_2619C4B78(0, &qword_27FEC9098, 0x277D75348);
    v179 = sub_2619D9AF8();
LABEL_30:
    v186 = v179;
    v187 = v510;
    sub_2619D97E8();
    v188 = sub_2619D9848();
    v189 = sub_2619D9AC8();
    if (os_log_type_enabled(v188, v189))
    {
      v190 = swift_slowAlloc();
      *v190 = 0;
      _os_log_impl(&dword_2619AE000, v188, v189, "Encoded PropertyValueType as a color", v190, 2u);
      MEMORY[0x266714FB0](v190, -1, -1);
    }

    v521(v187, v522);
    v191 = [v186 CGColor];

    (*(v525 + 8))(v534, v524);
    *v523 = v191;
    goto LABEL_33;
  }

  sub_2619C4B1C(v146, &v539);
  sub_2619C4B78(0, &qword_27FEC9098, 0x277D75348);
  if (swift_dynamicCast())
  {
    v179 = v536;
    goto LABEL_30;
  }

  sub_2619C4B1C(v146, &v539);
  sub_2619C4B78(0, &qword_27FEC90A0, 0x277D755B8);
  v203 = swift_dynamicCast();
  v528 = v149;
  if (v203)
  {
    v204 = v536;
    [v536 size];
    if (v205 > 1024.0 || ([(UIImage *)v204 size], v206 > 1024.0))
    {

      (*(v525 + 8))(v534, v524);
      v207 = v523;
      *v523 = 0xD000000000000037;
      v207[1] = 0x80000002619DBB30;
LABEL_33:
      v192 = *(v147 + 104);
      return v192();
    }

    v209 = UIImagePNGRepresentation(v204);
    if (v209)
    {
      v210 = v209;
      v211 = sub_2619D8FD8();
      v213 = v212;

      v214 = v485;
      sub_2619D97E8();
      v215 = sub_2619D9848();
      v216 = sub_2619D9AC8();
      if (os_log_type_enabled(v215, v216))
      {
        v217 = swift_slowAlloc();
        *v217 = 0;
        _os_log_impl(&dword_2619AE000, v215, v216, "Encoded PropertyValueType as an image", v217, 2u);
        MEMORY[0x266714FB0](v217, -1, -1);
      }

      v521(v214, v522);
      (*(v525 + 8))(v534, v524);
      v218 = v523;
      *v523 = v211;
      v218[1] = v213;
      goto LABEL_33;
    }

    v178 = v513;
  }

  sub_2619D9E08();
  v503(v133, *MEMORY[0x277D84C00], v124);
  v502(v133, 0, 1, v124);
  v219 = v124;
  v220 = *(v526 + 48);
  v221 = v507;
  sub_2619C4D24(v178, v507, &qword_27FEC9080, &qword_2619DA7F0);
  sub_2619C4D24(v133, v221 + v220, &qword_27FEC9080, &qword_2619DA7F0);
  v222 = v506;
  if (v506(v221, 1, v219) == 1)
  {
    sub_2619B62D0(v133, &qword_27FEC9080, &qword_2619DA7F0);
    v223 = v507;
    sub_2619B62D0(v178, &qword_27FEC9080, &qword_2619DA7F0);
    if (v222(v223 + v220, 1, v219) == 1)
    {
      sub_2619B62D0(v223, &qword_27FEC9080, &qword_2619DA7F0);
      goto LABEL_67;
    }

    goto LABEL_55;
  }

  v224 = v498;
  sub_2619C4D24(v221, v498, &qword_27FEC9080, &qword_2619DA7F0);
  if (v222(v221 + v220, 1, v219) == 1)
  {
    sub_2619B62D0(v531, &qword_27FEC9080, &qword_2619DA7F0);
    v223 = v507;
    sub_2619B62D0(v513, &qword_27FEC9080, &qword_2619DA7F0);
    (*(v530 + 8))(v224, v219);
LABEL_55:
    sub_2619B62D0(v223, &qword_27FEC9078, &qword_2619DA7E8);
    goto LABEL_56;
  }

  v237 = v530;
  v238 = v221 + v220;
  v239 = v511;
  (*(v530 + 32))(v511, v238, v219);
  v240 = sub_2619D9938();
  v241 = *(v237 + 8);
  v241(v239, v219);
  sub_2619B62D0(v531, &qword_27FEC9080, &qword_2619DA7F0);
  sub_2619B62D0(v513, &qword_27FEC9080, &qword_2619DA7F0);
  v241(v224, v219);
  v146 = v518;
  sub_2619B62D0(v221, &qword_27FEC9080, &qword_2619DA7F0);
  if ((v240 & 1) == 0)
  {
LABEL_56:
    sub_2619C4B1C(v146, &v539);
    sub_2619D94A8();
    if (swift_dynamicCast())
    {
      v225 = v493;
      sub_2619D97E8();

      v226 = sub_2619D9848();
      v227 = sub_2619D9AC8();
      if (os_log_type_enabled(v226, v227))
      {
        v228 = swift_slowAlloc();
        *v228 = 134217984;
        *(v228 + 4) = sub_2619D9448();

        _os_log_impl(&dword_2619AE000, v226, v227, "Encoded PropertyValueType as an EntityID: %llu", v228, 0xCu);
        MEMORY[0x266714FB0](v228, -1, -1);
      }

      else
      {
      }

      v521(v225, v522);
      v256 = sub_2619D9448();

      (*(v525 + 8))(v534, v524);
      *v523 = v256;
      goto LABEL_33;
    }

    v229 = v512 - 1;
    if (v512 >= 1)
    {
      sub_2619D9E18();
      v230 = sub_2619D9C68();

      if (v230 >= 1)
      {
        v231 = v483;
        sub_2619D97E8();
        v232 = sub_2619D9848();
        v233 = sub_2619D9AC8();
        if (os_log_type_enabled(v232, v233))
        {
          v234 = swift_slowAlloc();
          *v234 = 0;
          _os_log_impl(&dword_2619AE000, v232, v233, "Unwrapping complex property type", v234, 2u);
          MEMORY[0x266714FB0](v234, -1, -1);
        }

        v532 = v520 + 8;
        v521(v231, v522);
        sub_2619D9E18();
        swift_getObjectType();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v235 = sub_2619D9BA8();
        swift_getObjectType();
        result = sub_2619D9BA8();
        if (v235 != result)
        {
          goto LABEL_139;
        }

        v236 = sub_2619D9BB8();
        swift_unknownObjectRelease();
        if (v236)
        {
          swift_unknownObjectRelease();

          v147 = v519;
          goto LABEL_88;
        }

        sub_2619D9C78();
        swift_unknownObjectRelease();

        v274 = *(&v539 + 1);
        __swift_destroy_boxed_opaque_existential_0Tm(&v540);
        v147 = v519;
        if (!v274)
        {
LABEL_88:
          sub_2619C4B1C(v518, &v539);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC90C8, &qword_2619DA828);
          v290 = swift_dynamicCast();
          v291 = v534;
          if (v290)
          {

            v292 = sub_2619BD740(v291, v512);
            v293 = v470;
            sub_2619D97E8();

            v294 = sub_2619D9848();
            v295 = sub_2619D9AC8();

            if (os_log_type_enabled(v294, v295))
            {
              v296 = swift_slowAlloc();
              v297 = swift_slowAlloc();
              *&v539 = v297;
              *v296 = 136315394;
              *&v536 = v487;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC90D0, &qword_2619DA830);
              v298 = sub_2619D9958();
              v300 = sub_2619C2E88(v298, v299, &v539);

              *(v296 + 4) = v300;
              *(v296 + 12) = 2080;
              sub_2619D9598();
              sub_2619C4CDC(&qword_27FEC90D8, MEMORY[0x277D652A0], MEMORY[0x277D652A8]);
              v301 = sub_2619D98A8();
              v303 = sub_2619C2E88(v301, v302, &v539);

              *(v296 + 14) = v303;
              _os_log_impl(&dword_2619AE000, v294, v295, "Encoded PropertyValueType as an dictionary: %s -> %s", v296, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x266714FB0](v297, -1, -1);
              MEMORY[0x266714FB0](v296, -1, -1);

              v521(v293, v522);
              (*(v525 + 8))(v534, v524);
            }

            else
            {

              v521(v293, v522);
              (*(v525 + 8))(v291, v524);
            }

            *v523 = v292;
          }

          else
          {
            v327 = sub_2619BD054(v534, v512);
            v328 = v469;
            sub_2619D97E8();

            v329 = sub_2619D9848();
            v330 = sub_2619D9AC8();

            if (os_log_type_enabled(v329, v330))
            {
              v331 = swift_slowAlloc();
              v332 = swift_slowAlloc();
              *&v539 = v332;
              *v331 = 136315394;
              *&v536 = v487;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC90D0, &qword_2619DA830);
              v333 = sub_2619D9958();
              v335 = sub_2619C2E88(v333, v334, &v539);

              *(v331 + 4) = v335;
              *(v331 + 12) = 2080;
              v336 = MEMORY[0x266714730](v327, v533);
              v338 = sub_2619C2E88(v336, v337, &v539);

              *(v331 + 14) = v338;
              _os_log_impl(&dword_2619AE000, v329, v330, "Encoded PropertyValueType as an array: %s -> %s", v331, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x266714FB0](v332, -1, -1);
              MEMORY[0x266714FB0](v331, -1, -1);

              v521(v328, v522);
              (*(v525 + 8))(v534, v524);
            }

            else
            {

              v521(v328, v522);
              (*(v525 + 8))(v291, v524);
            }

            *v523 = v327;
          }

          goto LABEL_33;
        }

        v275 = v474;
        sub_2619BC2F4(v534, v229, MEMORY[0x277D84F90], v474);
        v276 = v491;
        if ((sub_2619D9538() & 1) == 0)
        {
          v364 = v467;
          sub_2619D97E8();
          v365 = v488;
          v366 = *(v488 + 16);
          v367 = v464;
          v366(v464, v275, v276);
          v368 = sub_2619D9848();
          v369 = sub_2619D9AC8();
          if (os_log_type_enabled(v368, v369))
          {
            v370 = swift_slowAlloc();
            LODWORD(v530) = v369;
            v371 = v370;
            v531 = swift_slowAlloc();
            *&v539 = v531;
            *v371 = 136315394;
            *&v536 = v487;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC90D0, &qword_2619DA830);
            v372 = sub_2619D9958();
            v374 = sub_2619C2E88(v372, v373, &v539);

            *(v371 + 4) = v374;
            *(v371 + 12) = 2080;
            v366(v478, v367, v276);
            v375 = sub_2619D9958();
            v377 = v376;
            (*(v365 + 8))(v367, v276);
            v378 = sub_2619C2E88(v375, v377, &v539);
            v275 = v474;

            *(v371 + 14) = v378;
            _os_log_impl(&dword_2619AE000, v368, v530, "Encoded PropertyValueType as a nested type: %s -> %s", v371, 0x16u);
            v379 = v531;
            swift_arrayDestroy();
            MEMORY[0x266714FB0](v379, -1, -1);
            MEMORY[0x266714FB0](v371, -1, -1);

            v380 = v487;
            v521(v467, v522);
          }

          else
          {

            (*(v365 + 8))(v367, v276);
            v521(v364, v522);
            v380 = v487;
          }

          v456 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC90E0, &qword_2619DA838) + 48);
          *&v539 = v380;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC90D0, &qword_2619DA830);
          v457 = sub_2619D9958();
          v459 = v458;
          (*(v525 + 8))(v534, v524);
          v460 = v523;
          *v523 = v457;
          v460[1] = v459;
          (*(v365 + 32))(v460 + v456, v275, v276);
          v192 = *(v147 + 104);
          return v192();
        }

        v277 = v466;
        sub_2619D97E8();
        v278 = v525;
        v279 = v463;
        v280 = v524;
        (*(v525 + 16))(v463, v534, v524);
        v281 = sub_2619D9848();
        v282 = sub_2619D9AD8();
        if (os_log_type_enabled(v281, v282))
        {
          v283 = v279;
          v284 = swift_slowAlloc();
          v285 = swift_slowAlloc();
          *&v539 = v285;
          *v284 = 136315138;
          v286 = sub_2619D9D18();
          v288 = v287;
          (*(v278 + 8))(v283, v280);
          v289 = sub_2619C2E88(v286, v288, &v539);

          *(v284 + 4) = v289;
          _os_log_impl(&dword_2619AE000, v281, v282, "Nested PropertyValueType has no properties %s", v284, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v285);
          MEMORY[0x266714FB0](v285, -1, -1);
          MEMORY[0x266714FB0](v284, -1, -1);

          v521(v466, v522);
          (*(v488 + 8))(v474, v491);
        }

        else
        {

          (*(v278 + 8))(v279, v280);
          v521(v277, v522);
          (*(v488 + 8))(v275, v491);
        }

        v146 = v518;
      }
    }

    sub_2619C4B1C(v146, &v542);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC90A8, &qword_2619DA808);
    if (swift_dynamicCast())
    {
      sub_2619C45F4(&v536, &v539);
      v421 = v480;
      sub_2619D97E8();
      sub_2619C4BC0(&v539, &v536);
      v422 = sub_2619D9848();
      v423 = sub_2619D9AC8();
      if (os_log_type_enabled(v422, v423))
      {
        v424 = swift_slowAlloc();
        v425 = swift_slowAlloc();
        *&v542 = v425;
        *v424 = 136315138;
        __swift_project_boxed_opaque_existential_1Tm(&v536, *(&v537 + 1));
        v426 = sub_2619D9D18();
        v428 = v427;
        __swift_destroy_boxed_opaque_existential_0Tm(&v536);
        v429 = sub_2619C2E88(v426, v428, &v542);

        *(v424 + 4) = v429;
        _os_log_impl(&dword_2619AE000, v422, v423, "Encoded PropertyValueType as a string (CustomStringConvertible): %s", v424, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v425);
        MEMORY[0x266714FB0](v425, -1, -1);
        MEMORY[0x266714FB0](v424, -1, -1);

        v521(v421, v522);
      }

      else
      {

        v521(v421, v522);
        __swift_destroy_boxed_opaque_existential_0Tm(&v536);
      }

      __swift_project_boxed_opaque_existential_1Tm(&v539, *(&v540 + 1));
      v439 = sub_2619D9D18();
      v441 = v440;
      (*(v525 + 8))(v534, v524);
      v442 = v523;
      *v523 = v439;
      v442[1] = v441;
    }

    else
    {
      *&v538 = 0;
      v536 = 0u;
      v537 = 0u;
      sub_2619B62D0(&v536, &qword_27FEC90B0, &qword_2619DA810);
      sub_2619C4B1C(v146, &v542);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC90B8, &qword_2619DA818);
      if (!swift_dynamicCast())
      {
        *&v538 = 0;
        v536 = 0u;
        v537 = 0u;
        sub_2619B62D0(&v536, &qword_27FEC90C0, &qword_2619DA820);
        sub_2619C4B1C(v146, &v539);
        v443 = sub_2619D9958();
        v445 = v444;
        v446 = v473;
        sub_2619D97E8();

        v447 = sub_2619D9848();
        v448 = sub_2619D9AC8();

        if (os_log_type_enabled(v447, v448))
        {
          v449 = swift_slowAlloc();
          v450 = swift_slowAlloc();
          *&v539 = v450;
          *v449 = 136315138;
          *(v449 + 4) = sub_2619C2E88(v443, v445, &v539);
          _os_log_impl(&dword_2619AE000, v447, v448, "Encoded PropertyValueType as a string (Unknown): %s", v449, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v450);
          MEMORY[0x266714FB0](v450, -1, -1);
          MEMORY[0x266714FB0](v449, -1, -1);
        }

        v521(v446, v522);
        (*(v525 + 8))(v534, v524);
        v451 = v523;
        *v523 = v443;
        v451[1] = v445;
        goto LABEL_33;
      }

      sub_2619C45F4(&v536, &v539);
      v430 = v472;
      sub_2619D97E8();
      sub_2619C4BC0(&v539, &v536);
      v431 = sub_2619D9848();
      v432 = sub_2619D9AC8();
      if (os_log_type_enabled(v431, v432))
      {
        v433 = swift_slowAlloc();
        v434 = swift_slowAlloc();
        v544 = v434;
        *v433 = 136315138;
        sub_2619C4BC0(&v536, &v542);
        v435 = sub_2619D9958();
        v437 = v436;
        __swift_destroy_boxed_opaque_existential_0Tm(&v536);
        v438 = sub_2619C2E88(v435, v437, &v544);

        *(v433 + 4) = v438;
        _os_log_impl(&dword_2619AE000, v431, v432, "Encoded PropertyValueType as a string (CustomDebugStringConvertible): %s", v433, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v434);
        MEMORY[0x266714FB0](v434, -1, -1);
        MEMORY[0x266714FB0](v433, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0Tm(&v536);
      }

      v521(v430, v522);
      __swift_project_boxed_opaque_existential_1Tm(&v539, *(&v540 + 1));
      v452 = sub_2619D9D48();
      v454 = v453;
      (*(v525 + 8))(v534, v524);
      v455 = v523;
      *v523 = v452;
      v455[1] = v454;
    }

    (*(v147 + 104))();
    return __swift_destroy_boxed_opaque_existential_0Tm(&v539);
  }

LABEL_67:
  sub_2619D9558();
  sub_2619D9558();
  sub_2619D9558();
  sub_2619D9E18();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v242 = sub_2619D9BA8();
  swift_getObjectType();
  result = sub_2619D9BA8();
  if (v242 != result)
  {
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
    return result;
  }

  v243 = sub_2619D9BB8();
  swift_unknownObjectRelease();
  v244 = v519;
  v245 = v494;
  if (v243)
  {
    swift_unknownObjectRelease();

    v246 = v518;
    sub_2619C4B1C(v518, &v539);
    v247 = sub_2619D9958();
    v249 = v248;
    sub_2619C4B1C(v246, &v542);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9100, &qword_2619DA850);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *&v538 = 0;
      v536 = 0u;
      v537 = 0u;
      sub_2619B62D0(&v536, &qword_27FEC9108, &qword_2619DA858);
      v252 = v490;
LABEL_96:
      sub_2619D97E8();

      v316 = sub_2619D9848();
      v317 = sub_2619D9AC8();

      if (os_log_type_enabled(v316, v317))
      {
        v318 = swift_slowAlloc();
        v319 = swift_slowAlloc();
        *&v539 = v319;
        *v318 = 136315394;
        *&v536 = v487;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC90D0, &qword_2619DA830);
        v320 = sub_2619D9958();
        v322 = sub_2619C2E88(v320, v321, &v539);

        *(v318 + 4) = v322;
        *(v318 + 12) = 2080;
        *(v318 + 14) = sub_2619C2E88(v247, v249, &v539);
        _os_log_impl(&dword_2619AE000, v316, v317, "Encoded PropertyValueType as an enumeration: %s -> %s", v318, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266714FB0](v319, -1, -1);
        MEMORY[0x266714FB0](v318, -1, -1);

        v323 = v490;
      }

      else
      {

        v323 = v252;
      }

      v521(v323, v522);
      v324 = *(v496 + 8);
      v325 = v497;
      v324(v499, v497);
      v324(v500, v325);
      v324(v501, v325);
      (*(v525 + 8))(v534, v524);
      v326 = v523;
      *v523 = v247;
      v326[1] = v249;
      return (*(v244 + 104))();
    }

    sub_2619C45F4(&v536, &v539);
    *(&v537 + 1) = MEMORY[0x277D837D0];
    *&v536 = v247;
    *(&v536 + 1) = v249;

    v250 = v479;
    sub_2619D9578();
    v251 = v532;
    if ((v532)(v250, 1, v533) == 1)
    {
      v252 = v490;
LABEL_95:
      sub_2619B62D0(v250, &qword_27FEC9070, &qword_2619DA7E0);
      __swift_destroy_boxed_opaque_existential_0Tm(&v539);
      goto LABEL_96;
    }

    v531 = v247;
    v314 = *(v244 + 32);
    v315 = v533;
    v314(v482, v250, v533);
    __swift_project_boxed_opaque_existential_1Tm(&v539, *(&v540 + 1));
    *(&v537 + 1) = swift_getAssociatedTypeWitness();
    __swift_allocate_boxed_opaque_existential_0(&v536);
    sub_2619D99F8();
    v250 = v471;
    sub_2619D9578();
    if (v251(v250, 1, v315) == 1)
    {
      v244 = v519;
      (*(v519 + 8))(v482, v533);
      v252 = v490;
      v247 = v531;
      goto LABEL_95;
    }

    v339 = v533;
    v314(v476, v250, v533);
    sub_2619D9778();
    sub_2619C4CDC(&qword_27FEC90F8, MEMORY[0x277D65320], MEMORY[0x277D65318]);
    sub_2619D9548();
    v340 = *(v496 + 16);
    v341 = v494;
    v342 = v489;
    v343 = v497;
    v340(v489, v501, v497);
    v344 = *(v519 + 16);
    v344(v341, v482, v339);
    swift_allocObject();
    v345 = v342;
    v532 = sub_2619D9758();
    v346 = v491;
    sub_2619D9528();
    v340(v345, v500, v343);
    v344(v341, v476, v533);
    __swift_project_boxed_opaque_existential_1Tm(&v539, *(&v540 + 1));
    *(&v537 + 1) = swift_getAssociatedTypeWitness();
    __swift_allocate_boxed_opaque_existential_0(&v536);
    v347 = v477;
    sub_2619D99F8();
    sub_2619C4DB8(&v536);
    __swift_destroy_boxed_opaque_existential_0Tm(&v536);
    swift_allocObject();
    v348 = sub_2619D9758();
    sub_2619D9528();
    v349 = v468;
    sub_2619D97E8();
    v350 = sub_2619D9848();
    v351 = sub_2619D9AC8();
    if (os_log_type_enabled(v350, v351))
    {
      v352 = swift_slowAlloc();
      v353 = swift_slowAlloc();
      *&v536 = v353;
      *v352 = 136315394;
      v354 = v487;
      *&v542 = v487;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC90D0, &qword_2619DA830);
      v355 = sub_2619D9958();
      v531 = v348;
      v357 = sub_2619C2E88(v355, v356, &v536);

      *(v352 + 4) = v357;
      *(v352 + 12) = 2080;
      swift_beginAccess();
      v358 = v488;
      (*(v488 + 16))(v478, v347, v346);
      v359 = sub_2619D9958();
      v361 = sub_2619C2E88(v359, v360, &v536);

      *(v352 + 14) = v361;
      _os_log_impl(&dword_2619AE000, v350, v351, "Encoded PropertyValueType as an enumeration with raw value: %s -> %s", v352, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266714FB0](v353, -1, -1);
      MEMORY[0x266714FB0](v352, -1, -1);

      v521(v468, v522);
    }

    else
    {

      v521(v349, v522);
      v358 = v488;
      v354 = v487;
    }

    v381 = v346;
    v531 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC90E0, &qword_2619DA838) + 48);
    *&v536 = v354;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC90D0, &qword_2619DA830);
    v382 = sub_2619D9958();
    v384 = v383;

    v385 = v519;
    v386 = *(v519 + 8);
    v387 = v533;
    v386(v476, v533);
    v386(v482, v387);
    v388 = *(v496 + 8);
    v389 = v497;
    v388(v499, v497);
    v388(v500, v389);
    v388(v501, v389);
    (*(v525 + 8))(v534, v524);
    v390 = v523;
    *v523 = v382;
    v390[1] = v384;
    swift_beginAccess();
    (*(v358 + 16))(v390 + v531, v347, v381);
    (*(v385 + 104))(v390, *MEMORY[0x277D65278], v387);
    (*(v358 + 8))(v347, v381);
    return __swift_destroy_boxed_opaque_existential_0Tm(&v539);
  }

  sub_2619D9C78();
  swift_unknownObjectRelease();

  sub_2619C4D24(&v539, &v536, &qword_27FEC90E8, &qword_2619DA840);

  sub_2619D9DD8();
  sub_2619C4D24(&v539, &v536, &qword_27FEC90E8, &qword_2619DA840);
  v253 = *(&v536 + 1);
  v254 = v489;
  if (*(&v536 + 1))
  {
    v255 = v536;
  }

  else
  {
    *&v542 = sub_2619D9E18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC90F0, &qword_2619DA848);
    v255 = sub_2619D9958();
    v253 = v257;
  }

  v258 = v492;
  v259 = v486;
  __swift_destroy_boxed_opaque_existential_0Tm(&v537);
  if (v512 >= 1)
  {
    v531 = v512 - 1;
    sub_2619D9778();
    sub_2619C4CDC(&qword_27FEC90F8, MEMORY[0x277D65320], MEMORY[0x277D65318]);
    sub_2619D9548();
    *(&v537 + 1) = MEMORY[0x277D837D0];
    *&v536 = v255;
    *(&v536 + 1) = v253;

    sub_2619D9578();
    if ((v532)(v259, 1, v533) != 1)
    {

      v304 = v519;
      v305 = v481;
      v306 = v259;
      v307 = v533;
      v529 = *(v519 + 32);
      (v529)(v481, v306, v533);
      v527 = *(v496 + 16);
      (v527)(v254, v501, v497);
      v308 = *(v304 + 16);
      v308(v245, v305, v307);
      swift_allocObject();
      v530 = sub_2619D9758();
      v309 = v491;
      sub_2619D9528();
      v310 = v495;
      sub_2619D9E18();
      v311 = sub_2619D9C68();

      if (v311 < 1)
      {
        v362 = v529;
        sub_2619C4D24(&v539, &v536, &qword_27FEC90E8, &qword_2619DA840);

        v363 = v465;
        sub_2619D9578();
        if ((v532)(v363, 1, v533) == 1)
        {
          sub_2619B62D0(v363, &qword_27FEC9070, &qword_2619DA7E0);
          v313 = v309;
        }

        else
        {
          v391 = v462;
          v392 = v533;
          (v362)(v462, v363, v533);
          (v527)(v489, v499, v497);
          v308(v494, v391, v392);
          *(&v537 + 1) = v392;
          v393 = __swift_allocate_boxed_opaque_existential_0(&v536);
          v308(v393, v391, v392);
          sub_2619C4DB8(&v536);
          __swift_destroy_boxed_opaque_existential_0Tm(&v536);
          swift_allocObject();
          sub_2619D9758();
          v313 = v309;
          sub_2619D9528();

          (*(v519 + 8))(v391, v392);
        }
      }

      else
      {
        v312 = v478;
        sub_2619BC2F4(v310, v531, MEMORY[0x277D84F90], v478);
        sub_2619D9518();
        (*(v488 + 8))(v312, v309);
        v313 = v309;
      }

      v394 = v475;
      sub_2619D97E8();
      v395 = sub_2619D9848();
      v396 = sub_2619D9AC8();
      if (os_log_type_enabled(v395, v396))
      {
        v397 = swift_slowAlloc();
        v398 = swift_slowAlloc();
        *&v536 = v398;
        *v397 = 136315394;
        v399 = v487;
        *&v542 = v487;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC90D0, &qword_2619DA830);
        v400 = sub_2619D9958();
        v402 = sub_2619C2E88(v400, v401, &v536);

        *(v397 + 4) = v402;
        *(v397 + 12) = 2080;
        v403 = v492;
        swift_beginAccess();
        (*(v488 + 16))(v478, v403, v313);
        v404 = sub_2619D9958();
        v406 = sub_2619C2E88(v404, v405, &v536);

        *(v397 + 14) = v406;
        _os_log_impl(&dword_2619AE000, v395, v396, "Encoded PropertyValueType as an enumeration with associated values: %s -> %s", v397, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266714FB0](v398, -1, -1);
        MEMORY[0x266714FB0](v397, -1, -1);

        v521(v394, v522);
      }

      else
      {

        v521(v394, v522);
        v399 = v487;
      }

      v407 = v495;
      v532 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC90E0, &qword_2619DA838) + 48);
      *&v536 = v399;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC90D0, &qword_2619DA830);
      v408 = sub_2619D9958();
      v410 = v409;

      v411 = v519;
      v412 = v533;
      (*(v519 + 8))(v481, v533);
      v413 = *(v525 + 8);
      v414 = v524;
      v413(v407, v524);
      sub_2619B62D0(&v539, &qword_27FEC90E8, &qword_2619DA840);
      v415 = *(v496 + 8);
      v416 = v497;
      v415(v499, v497);
      v415(v500, v416);
      v415(v501, v416);
      v413(v534, v414);
      v417 = v523;
      *v523 = v408;
      v417[1] = v410;
      v418 = v492;
      swift_beginAccess();
      v419 = v488;
      v420 = v491;
      (*(v488 + 16))(v417 + v532, v418, v491);
      (*(v411 + 104))(v417, *MEMORY[0x277D652B8], v412);
      return (*(v419 + 8))(v418, v420);
    }

    sub_2619B62D0(v259, &qword_27FEC9070, &qword_2619DA7E0);
    (*(v488 + 8))(v258, v491);
  }

  sub_2619C4D24(&v539, &v536, &qword_27FEC90E8, &qword_2619DA840);

  v260 = sub_2619D9958();
  v262 = v261;
  *&v536 = v255;
  *(&v536 + 1) = v253;
  MEMORY[0x2667146C0](40, 0xE100000000000000);
  MEMORY[0x2667146C0](v260, v262);

  MEMORY[0x2667146C0](41, 0xE100000000000000);
  v263 = v536;
  v264 = v484;
  sub_2619D97E8();

  v265 = sub_2619D9848();
  v266 = sub_2619D9AC8();

  if (os_log_type_enabled(v265, v266))
  {
    v267 = swift_slowAlloc();
    v268 = swift_slowAlloc();
    *&v536 = v268;
    *v267 = 136315138;

    v269 = sub_2619C2E88(v263, *(&v263 + 1), &v536);

    *(v267 + 4) = v269;
    _os_log_impl(&dword_2619AE000, v265, v266, "Encoded PropertyValueType as an simplified enumeration: %s", v267, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v268);
    MEMORY[0x266714FB0](v268, -1, -1);
    MEMORY[0x266714FB0](v267, -1, -1);
  }

  v521(v264, v522);
  v270 = *(v525 + 8);
  v271 = v524;
  v270(v495, v524);
  sub_2619B62D0(&v539, &qword_27FEC90E8, &qword_2619DA840);
  v272 = *(v496 + 8);
  v273 = v497;
  v272(v499, v497);
  v272(v500, v273);
  v272(v501, v273);
  v270(v534, v271);
  *v523 = v263;
  return (*(v519 + 104))();
}

uint64_t sub_2619C2B8C()
{
  v1 = OBJC_IVAR____TtC20RealityKitInspection32SceneDebugRepresentationProvider_hierarchy;
  v2 = sub_2619D9748();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_2619C2BEC()
{
  v1 = OBJC_IVAR____TtC20RealityKitInspection32SceneDebugRepresentationProvider_hierarchy;
  v2 = sub_2619D9748();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

void *sub_2619C2CB0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9138, &qword_2619DA870);
  v10 = *(sub_2619D95A8() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_2619D95A8() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_2619C2E88(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2619C2F54(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2619C4B1C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_2619C2F54(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2619C3060(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2619D9BE8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_2619C3060(uint64_t a1, unint64_t a2)
{
  v3 = sub_2619C30AC(a1, a2);
  sub_2619C31DC(&unk_28741E4A8);
  return v3;
}

void *sub_2619C30AC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2619C32C8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2619D9BE8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2619D99B8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2619C32C8(v10, 0);
        result = sub_2619D9B98();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2619C31DC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2619C333C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2619C32C8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9148, &unk_2619DA880);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2619C333C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9148, &unk_2619DA880);
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

uint64_t sub_2619C3430(uint64_t a1, unint64_t a2)
{
  sub_2619C454C(a1, a2);
  sub_2619C4224(a1, a2);
  v4 = sub_2619D9988();

  return v4;
}

uint64_t sub_2619C349C@<X0>(uint64_t *a3@<X8>)
{
  result = sub_2619D9988();
  *a3 = result;
  a3[1] = v5;
  return result;
}

unint64_t sub_2619C34D8(uint64_t a1)
{
  sub_2619D9598();
  sub_2619C4CDC(&qword_27FEC90D8, MEMORY[0x277D652A0], MEMORY[0x277D652A8]);
  v2 = sub_2619D9918();

  return sub_2619C3D10(a1, v2);
}

uint64_t sub_2619C3570(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = sub_2619D95A8();
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2619D9598();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9120, &qword_2619DA860);
  v47 = v4;
  result = sub_2619D9CC8();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_2619C4CDC(&qword_27FEC90D8, MEMORY[0x277D652A0], MEMORY[0x277D652A8]);
      result = sub_2619D9918();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_2619C3A18(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2619D9598();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2619C34D8(a2);
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
      sub_2619C3ED0();
      goto LABEL_7;
    }

    sub_2619C3570(v17, a3 & 1);
    v28 = sub_2619C34D8(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_2619C3C1C(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_2619D9D78();
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
  v21 = v20[7];
  v22 = sub_2619D95A8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_2619C3C1C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2619D9598();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_2619D95A8();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_2619C3D10(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_2619D9598();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_2619C4CDC(&qword_27FEC9128, MEMORY[0x277D652A0], MEMORY[0x277D652B0]);
      v15 = sub_2619D9938();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

char *sub_2619C3ED0()
{
  v1 = v0;
  v41 = sub_2619D95A8();
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_2619D9598();
  v43 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9120, &qword_2619DA860);
  v4 = *v0;
  v5 = sub_2619D9CB8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_2619C4224(uint64_t a1, unint64_t a2)
{
  v4 = sub_2619D8FE8();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_2619C45A0(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_2619C32C8(v10, 0);
      v14 = sub_2619D8FC8();
      sub_2619C45A0(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_2619C43A0(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_2619D9988();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return sub_2619D9988();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_2619D8F18();
  if (a1)
  {
    a1 = sub_2619D8F38();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_2619D8F18() || !__OFSUB__(v5, sub_2619D8F38()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_2619D8F28();
  return sub_2619D9988();
}

uint64_t sub_2619C454C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2619C45A0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2619C45F4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
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

unint64_t sub_2619C4658(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9130, &qword_2619DA868);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9120, &qword_2619DA860);
    v7 = sub_2619D9CD8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2619C4D24(v9, v5, &qword_27FEC9130, &qword_2619DA868);
      result = sub_2619C34D8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_2619D9598();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_2619D95A8();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_2619C4878(unint64_t a1)
{
  sub_2619D94A8();
  swift_allocObject();
  sub_2619D9498();
  v3 = sub_2619D9468();
  if (a1 >> 62)
  {
LABEL_13:
    v3 = sub_2619D9CA8();
    v4 = v3;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v3 = MEMORY[0x2667148E0](v5, a1);
          v6 = v3;
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_11:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_13;
          }

          v6 = *(a1 + 8 * v5 + 32);

          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_11;
          }
        }

        swift_beginAccess();
        (*(*v1 + 128))(v6, qword_27FEC9040);

        ++v5;
      }

      while (v7 != v4);
    }
  }

  v8 = (*(*v1 + 136))(v3);

  return v8;
}