uint64_t sub_18AE8DE28(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (*(a1 + 28))
  {
    if ((*(a2 + 28) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 28))
    {
      return 0;
    }

    v2 = a2;
    v3 = a1;
    v4 = sub_18AFCCE14();
    a2 = v2;
    v5 = v4;
    a1 = v3;
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a2 + 48);
  if ((*(a1 + 48) & 1) == 0)
  {
    if (*(a2 + 48))
    {
      return 0;
    }

    v7 = a2;
    v8 = a1;
    v9 = sub_18AFCCE14();
    a2 = v7;
    v6 = v9;
    a1 = v8;
  }

  if (v6)
  {
    if (*(a1 + 68))
    {
      if ((*(a2 + 68) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((*(a2 + 68) & 1) != 0 || (sub_18AFCCE14() & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  return 0;
}

uint64_t sub_18AE8DFB8(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v2 = *(a1 + 28) == *(a2 + 28) && *(a1 + 32) == *(a2 + 32);
  if (!v2 || *(a1 + 36) != *(a2 + 36) || *(a1 + 40) != *(a2 + 40) || *(a1 + 44) != *(a2 + 44))
  {
    return 0;
  }

  v4 = *(a1 + 84);
  v5 = *(a1 + 104);
  v6 = *(a2 + 84);
  v7 = *(a2 + 104);
  if (*(a1 + 64))
  {
    if ((*(a2 + 64) & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (*(a2 + 64))
    {
      goto LABEL_29;
    }

    v8 = a2;
    v9 = a1;
    v10 = sub_18AFCCE14();
    a2 = v8;
    v11 = v10;
    a1 = v9;
    if ((v11 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (v6)
    {
      goto LABEL_29;
    }

    v12 = a2;
    v13 = a1;
    v14 = sub_18AFCCE14();
    a2 = v12;
    v15 = v14;
    a1 = v13;
    if ((v15 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  if (v5)
  {
    if (v7)
    {
      goto LABEL_28;
    }

LABEL_29:
    v20 = 0;
    return v20 & 1;
  }

  if (v7)
  {
    goto LABEL_29;
  }

  v16 = a2;
  v17 = a1;
  v18 = sub_18AFCCE14();
  a2 = v16;
  v19 = v18;
  a1 = v17;
  if ((v19 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_28:
  v20 = *(a1 + 105) ^ *(a2 + 105) ^ 1;
  return v20 & 1;
}

unint64_t sub_18AE8E22C@<X0>(unint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = result >> 62;
  if ((result >> 62) > 1)
  {
    if (v2 == 2)
    {
LABEL_6:
      v3 = 0;
    }

    else
    {
      v3 = 2;
      switch(__ROR8__(result + 0x4000000000000000, 3))
      {
        case 1:
        case 5:
        case 6:
        case 8:
        case 9:
        case 0xALL:
        case 0xCLL:
        case 0xDLL:
        case 0xELL:
        case 0xFLL:
        case 0x10:
        case 0x11:
        case 0x12:
        case 0x13:
        case 0x14:
          if (qword_1ED56AA58 != -1)
          {
            v4 = a2;
            result = swift_once();
            a2 = v4;
          }

          v3 = qword_1ED56C8D8;
          break;
        case 2:
        case 4:
        case 7:
          break;
        case 3:
        case 0xBLL:
          goto LABEL_6;
        default:
          if (qword_1ED56AA58 != -1)
          {
            v5 = a2;
            result = swift_once();
            a2 = v5;
          }

          v3 = qword_1ED56C8D8 | 0x4000;
          break;
      }
    }
  }

  else if (v2)
  {
    v3 = 4097;
  }

  else
  {
    v3 = 2;
  }

  *a2 = v3;
  return result;
}

uint64_t GlassMaterialProvider.resolveLayers(in:)(uint64_t a1)
{
  v229 = _s17ResolvedCompositeV3KeyVMa(0);
  MEMORY[0x1EEE9AC00](v229);
  v239 = (&v194 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v244 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  MEMORY[0x1EEE9AC00](v244);
  v240 = &v194 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = type metadata accessor for GlassMaterialProvider.Resolved(0);
  MEMORY[0x1EEE9AC00](v231);
  v230 = &v194 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v232 = &v194 - v7;
  v225 = sub_18AFCD424();
  v224 = *(v225 - 8);
  MEMORY[0x1EEE9AC00](v225);
  v222 = &v194 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v223 = &v194 - v10;
  v220 = sub_18AFCD2E4();
  v219 = *(v220 - 8);
  MEMORY[0x1EEE9AC00](v220);
  v216 = &v194 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v217 = &v194 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v218 = &v194 - v15;
  v215 = sub_18AFCC824();
  v214 = *(v215 - 8);
  MEMORY[0x1EEE9AC00](v215);
  v213 = &v194 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = sub_18AFCC9A4();
  v196 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v195 = &v194 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BBF0, &unk_18AFDFE20);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v212 = &v194 - v19;
  v235 = sub_18AFCC5C4();
  v234 = *(v235 - 8);
  MEMORY[0x1EEE9AC00](v235);
  v211 = &v194 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_18AFCBB34();
  v243 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v201 = &v194 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v209 = &v194 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B5F0, &qword_18AFDAF70);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v208 = &v194 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v194 - v28;
  v246 = _s11EnvironmentVMa(0);
  MEMORY[0x1EEE9AC00](v246);
  v242 = &v194 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v194 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v238 = &v194 - v35;
  v36 = sub_18AFCC474();
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v200 = &v194 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v194 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v194 - v43;
  sub_18AFCDA44();
  sub_18AE8FD80(v44, v248);
  v45 = *(v37 + 8);
  v221 = v44;
  v227 = v36;
  v226 = v37 + 8;
  v233 = v45;
  v45(v44, v36);
  v249 = v248[0];
  v250 = v248[1];
  v251 = v248[2];
  v245 = v41;
  sub_18AFCDA44();
  v46 = v1 + *(v244 + 40);
  v236 = v29;
  sub_18AE83A40(v46, v29, &qword_1EA99B5F0, &qword_18AFDAF70);
  v207 = sub_18AF47DE4(*v1);
  v47 = *(v1 + 16);
  v48 = *(v1 + 24);
  v228 = v1;
  v49 = *(v1 + 32) == 1;
  v241 = a1;
  if (v49)
  {
    if (*&v47 > 1uLL)
    {
      v50 = v243;
      if (*&v47 ^ 2 | *&v48)
      {
        v205 = sub_18AFB0AE0();
        v204 = v55;
        v52 = v56 & 1;
        v54 = &v238;
        goto LABEL_14;
      }

      v206 = 0;
      v51 = 0;
      v52 = 0x406929999999999ALL;
    }

    else
    {
      v50 = v243;
      v206 = 0;
      v51 = 0;
      if (*&v47 | *&v48)
      {
        v52 = 0x4064C00000000000;
      }

      else
      {
        v52 = 0x4048000000000000;
      }
    }

    v205 = v52;
    v54 = &v236;
LABEL_14:
    *(v54 - 32) = v52;
    goto LABEL_15;
  }

  v206 = 0;
  v51 = 0;
  *&v53 = v47;
  if (v48 < v47)
  {
    *&v53 = v48;
  }

  v205 = v53;
  v204 = v53;
  v50 = v243;
LABEL_15:
  v203 = v51 & 1;
  v57 = v246;
  v58 = v246[5];
  v59 = *MEMORY[0x1E697DBB8];
  v60 = *(v50 + 104);
  v199 = v50 + 104;
  v198 = v60;
  v60((v33 + v58), v59, v21);
  v61 = v57[6];
  (*(v234 + 104))(v33 + v61, *MEMORY[0x1E697F600], v235);
  v62 = (v33 + v57[7]);
  *v62 = 0;
  *(v62 + 1) = 0;
  v62[16] = 1;
  v63 = v57[8];
  v64 = type metadata accessor for GlassMaterialProvider.ResolvedStyle(0);
  (*(*(v64 - 8) + 56))(v33 + v63, 1, 1, v64);
  v202 = v57[12];
  *(v33 + v202) = 0;
  v210 = v57[21];
  *(v33 + v210) = 0;
  sub_18AFCC244();
  *v33 = v65;
  v66 = v208;
  sub_18AE83A40(v236, v208, &qword_1EA99B5F0, &qword_18AFDAF70);
  v67 = v50;
  v68 = *(v50 + 48);
  if (v68(v66, 1, v21) == 1)
  {
    v69 = v209;
    sub_18AFCC204();
    if (v68(v66, 1, v21) != 1)
    {
      sub_18AE7BA80(v66, &qword_1EA99B5F0, &qword_18AFDAF70);
    }
  }

  else
  {
    v70 = *(v67 + 32);
    v69 = v209;
    v70(v209, v66, v21);
  }

  v237 = v21;
  v71 = (v33 + v246[10]);
  v72 = (v33 + v246[11]);
  (*(v243 + 40))(v33 + v58, v69, v21);
  v73 = v211;
  sub_18AFCC2F4();
  (*(v234 + 40))(v33 + v61, v73, v235);
  sub_18AFAB8BC();
  v74 = v212;
  sub_18AFCC484();
  sub_18AE90D7C(v74, v33 + v63);
  *v71 = 0;
  v75 = 1;
  v71[4] = 1;
  v76 = v206;
  *v72 = v205;
  *(v72 + 1) = v76;
  *(v72 + 2) = v204;
  *(v72 + 12) = v203;
  sub_18AE7A260();
  sub_18AFCC484();
  *(v33 + v202) = v248[0];
  if (v207)
  {
    sub_18AFCC974();
    v77 = v195;
    sub_18AFCC984();

    v78 = sub_18AFCC994();
    (*(v196 + 8))(v77, v197);
    v79 = sub_18AF76B64();
    v81 = v80;
    v83 = v82;
    v75 = v84;
  }

  else
  {
    v83 = 0;
    v79 = 0.0;
    v81 = 0;
  }

  v85 = (v33 + v246[9]);
  v86 = v246[13];
  v87 = v246[14];
  v89 = v246[15];
  v88 = v246[16];
  v90 = v246[17];
  v212 = v246[18];
  v91 = v246[20];
  v234 = v246[19];
  v235 = v91;
  *v85 = v79;
  *(v85 + 1) = v81;
  *(v85 + 2) = v83;
  v85[24] = v75 & 1;
  *(v33 + v86) = sub_18AFCC274() & 1;
  *(v33 + v87) = sub_18AFCC304() & 1;
  sub_18AFAB910();
  sub_18AFCC484();
  *(v33 + v89) = v248[0];
  v92 = v213;
  sub_18AFCC454();
  v93 = sub_18AFCC814();
  (*(v214 + 8))(v92, v215);
  v94 = *(v93 + 16);

  *(v33 + v88) = v94 != 0;
  *(v33 + v90) = sub_18AFCC354() & 1;
  *(v33 + v212) = sub_18AFCC334() & 1;
  *(v33 + v234) = sub_18AFCC344() & 1;
  *(v33 + v235) = sub_18AFCC424() & 1;
  v95 = v218;
  sub_18AFCC3D4();
  v96 = v219;
  v97 = v217;
  v98 = v220;
  (*(v219 + 16))(v217, v95, v220);
  v99 = v216;
  sub_18AFCD214();
  sub_18AFABD8C(&qword_1ED56A7A0, MEMORY[0x1E69818B0], MEMORY[0x1E69818B8]);
  LOBYTE(v94) = sub_18AFCDDF4();
  v100 = *(v96 + 8);
  v100(v99, v98);
  if (v94)
  {
    v100(v97, v98);
    v100(v95, v98);
    v101 = 1;
  }

  else
  {
    sub_18AFCD234();
    v102 = sub_18AFCDDF4();
    v100(v99, v98);
    v100(v97, v98);
    v100(v95, v98);
    if (v102)
    {
      v101 = 2;
    }

    else
    {
      v101 = 0;
    }
  }

  v103 = v230;
  v104 = v225;
  v105 = v224;
  v106 = v223;
  *(v33 + v210) = v101;
  sub_18AFCC3E4();
  v107 = v222;
  sub_18AFCD414();
  sub_18AFABD8C(&qword_1EA99BC80, MEMORY[0x1E69818D0], MEMORY[0x1E69818D8]);
  v108 = sub_18AFCDDF4();
  v109 = *(v105 + 8);
  v109(v107, v104);
  if ((v108 & 1) == 0)
  {
    sub_18AFCD404();
    v235 = v33;
    sub_18AFCDDF4();
    v33 = v235;
    v109(v107, v104);
  }

  v109(v106, v104);
  *(v33 + v246[23]) = v108 & 1;
  sub_18AFAB964();
  v110 = v245;
  sub_18AFCC484();
  v111 = *&v248[0];
  if (*&v248[0])
  {
    swift_getKeyPath();
    v247 = v111;
    sub_18AFABD8C(&qword_1ED56A728, _s6PocketV7StorageCMa, &unk_18AFE02DC);

    sub_18AFCB9B4();

    os_unfair_lock_lock((v111 + 16));
    v112 = *(v111 + 36);
    v113 = *(v111 + 40);
    os_unfair_lock_unlock((v111 + 16));

    sub_18AE7BA80(v236, &qword_1EA99B5F0, &qword_18AFDAF70);
    v114 = v227;
    v115 = v233;
    v233(v110, v227);

    v49 = v113 == 0;
    v116 = v115;
    v117 = 0x100000000;
    if (v49)
    {
      v117 = 0;
    }

    v118 = v117 | v112;
  }

  else
  {
    sub_18AE7BA80(v236, &qword_1EA99B5F0, &qword_18AFDAF70);
    v114 = v227;
    v116 = v233;
    v233(v110, v227);
    v118 = 0;
  }

  v119 = (v33 + v246[22]);
  v119[4] = BYTE4(v118);
  *v119 = v118;
  v119[5] = v111 == 0;
  v120 = v238;
  sub_18AE7C1C8(v33, v238, _s11EnvironmentVMa);
  v121 = v228;
  v122 = v240;
  sub_18AE7B03C(v228, v240, type metadata accessor for GlassMaterialProvider.Configuration);
  v123 = v242;
  sub_18AE7B03C(v120, v242, _s11EnvironmentVMa);
  sub_18AE90E8C(&v249, v248);
  v124 = v221;
  v125 = v241;
  sub_18AFCDA44();
  v126 = sub_18AFAA710();
  v127 = v116(v124, v114);
  MEMORY[0x1EEE9AC00](v127);
  *(&v194 - 2) = v125;
  v230 = sub_18AE7E670(sub_18AFAB9B8, (&v194 - 4), v126);

  v128 = v121 + *(v244 + 64);
  v129 = *(v128 + 16) | (*(v128 + 20) << 32);
  v130 = *(v128 + 20);
  v236 = v129;
  if (v130 > 0xFE)
  {
    v245 = 0;
    v235 = 0;
  }

  else
  {
    v132 = *v128;
    v131 = *(v128 + 8);
    v133 = v200;
    sub_18AFCDA44();
    if ((v129 & 0x100000000) != 0)
    {
      v136 = HIDWORD(v132);
      v139 = HIDWORD(v131);
    }

    else
    {
      sub_18AFCCDC4();
      LODWORD(v132) = v134;
      v136 = v135;
      LODWORD(v131) = v137;
      v139 = v138;
    }

    v233(v133, v114);
    v245 = (v132 | (v136 << 32));
    v235 = v131 | (v139 << 32);
    v123 = v242;
  }

  v140 = *v122;
  v141 = v249;
  v142 = DWORD2(v249);
  v143 = BYTE12(v249);
  *(v103 + 4) = *v122;
  *(v103 + 5) = v141;
  v103[52] = v143;
  *(v103 + 12) = v142;
  v144 = v246;
  v145 = v246[5];
  v146 = v243;
  v147 = v239;
  v148 = v239 + *(v229 + 20);
  v149 = v237;
  v233 = *(v243 + 16);
  (v233)(v148, v123 + v145, v237);
  v150 = v251;
  v147[1] = v250;
  v147[2] = v150;
  *v147 = v249;
  v151 = v123 + v144[10];
  v152 = *(v151 + 4);
  v234 = v145;
  if (v152)
  {
    v153 = v201;
    v198(v201, *MEMORY[0x1E697DBA8], v149);
    sub_18AE90E8C(&v249, v248);
    sub_18AE90E8C(&v249, v248);
    sub_18AE89F60(v140);
    sub_18AFABD8C(&qword_1ED56AD68, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBE8]);
    v154 = sub_18AFCDDF4();
    (*(v146 + 8))(v153, v149);
    if (v154)
    {
      v155 = 0.0;
    }

    else
    {
      v155 = 1.0;
    }
  }

  else
  {
    v155 = *v151;
    sub_18AE90E8C(&v249, v248);
    sub_18AE90E8C(&v249, v248);
    sub_18AE89F60(v140);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BC90, &qword_18AFDFE30);
  v156 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BC98, &qword_18AFDFE38) - 8);
  v157 = (*(*v156 + 80) + 32) & ~*(*v156 + 80);
  v158 = swift_allocObject();
  *(v158 + 16) = xmmword_18AFD8390;
  v159 = v158 + v157;
  v160 = v156[14];
  v161 = v239;
  sub_18AE7B03C(v239, v159, _s17ResolvedCompositeV3KeyVMa);
  *(v159 + v160) = 0x3FF0000000000000;
  v162 = sub_18AFABA58(v158);
  swift_setDeallocating();
  sub_18AE7BA80(v159, &qword_1EA99BC98, &qword_18AFDFE38);
  swift_deallocClassInstance();
  sub_18AFAC05C(v161, _s17ResolvedCompositeV3KeyVMa);
  *v103 = v162;
  *(v103 + 2) = v155;
  *(v103 + 11) = v230;
  v163 = v140 >> 62;
  v164 = v240;
  v165 = *(v240 + 9);
  if (!(v140 >> 62))
  {
    v170 = 0x100000000;
    if (!*(v140 + 20))
    {
      v170 = 0;
    }

    v167 = v170 | *(v140 + 16) | (v165 << 40);
    v166 = v242;
    goto LABEL_60;
  }

  v166 = v242;
  if (v163 == 3)
  {
    if (v140 == 0xC000000000000018 || v140 == 0xC000000000000020)
    {
      v167 = 0x200000000000;
      goto LABEL_60;
    }

    if (v140 == 0xC000000000000038)
    {
      v167 = 0x220000000000;
LABEL_60:
      *(v103 + 24) = v167;
      *(v103 + 50) = WORD2(v167);
      goto LABEL_61;
    }
  }

  *(v103 + 24) = 0;
  *(v103 + 50) = 7936;
  if (v163 == 1 && (*((v140 & 0x3FFFFFFFFFFFFFFFLL) + 0x20) & 1) == 0)
  {
    *(v103 + 1) = *((v140 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v168 = v236;
    v169 = v233;
    goto LABEL_65;
  }

LABEL_61:
  sub_18AFCDCE4();
  *(v103 + 2) = v171;
  *(v103 + 3) = v172;
  v168 = v236;
  v169 = v233;
  if (v163 == 3)
  {
    if (v140 == 0xC000000000000018)
    {
      v173 = 0;
      v174 = 0;
      v175 = xmmword_18AFDFDF0;
      v176 = 0x4050000000000000;
      goto LABEL_71;
    }

    if (v140 == 0xC000000000000020)
    {
      v173 = 0;
      v174 = 0;
      v175 = xmmword_18AFDFE00;
      v176 = 0x4064800000000000;
      goto LABEL_71;
    }
  }

LABEL_65:
  if (v165 == 6)
  {
    v173 = 0;
    v174 = 0;
    v175 = xmmword_18AFDEFE0;
    v176 = 0x4020000000000000;
  }

  else if (v165 == 3)
  {
    v173 = 0;
    v174 = 0;
    v175 = xmmword_18AFDFE10;
    v176 = 0x4028000000000000;
  }

  else
  {
    v177 = v166 + v246[11];
    v175 = *v177;
    v176 = *(v177 + 16);
    v173 = *(v177 + 24);
    v174 = *(v177 + 25);
  }

LABEL_71:
  v178 = HIDWORD(v168) > 0xFE;
  v179 = v231;
  v180 = v231[12];
  v181 = v231[13];
  v182 = &v103[v231[15]];
  v183 = &v103[v231[17]];
  *(v103 + 56) = v175;
  *(v103 + 9) = v176;
  v103[80] = v173;
  v103[81] = v174;
  v169(&v103[v179[11]], v166 + v234, v237);
  v184 = v244;
  *&v103[v180] = *(v164 + *(v244 + 72));
  v244 = *(v164 + *(v184 + 76));
  *&v103[v181] = v244;
  sub_18AE7C1C8(v164, &v103[v179[14]], type metadata accessor for GlassMaterialProvider.Configuration);
  v185 = v166 + v246[7];
  v186 = *v185;
  v187 = *(v185 + 8);
  v188 = v103;
  v189 = *(v185 + 16);

  sub_18AFAC05C(v166, _s11EnvironmentVMa);
  sub_18AE920D8(&v249);
  *v182 = v186;
  *(v182 + 1) = v187;
  v182[16] = v189;
  *(v188 + v179[16]) = sub_18AFA8DB8(SDWORD2(v250));
  v190 = v235;
  *v183 = v245;
  *(v183 + 1) = v190;
  v183[16] = v178;
  v191 = v232;
  sub_18AE7C1C8(v188, v232, type metadata accessor for GlassMaterialProvider.Resolved);
  v192 = GlassMaterialProvider.Resolved.resolveLayers(in:)(v241);
  sub_18AE920D8(&v249);
  sub_18AFAC05C(v191, type metadata accessor for GlassMaterialProvider.Resolved);
  sub_18AFAC05C(v238, _s11EnvironmentVMa);
  return v192;
}

uint64_t sub_18AE8FD80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v135 = a1;
  v142 = a2;
  v145 = (type metadata accessor for GlassMaterialProvider.Configuration(0) - 8);
  MEMORY[0x1EEE9AC00](v145);
  v141 = (&v108 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_18AFCD424();
  v139 = *(v3 - 8);
  v140 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v134 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v138 = &v108 - v6;
  v7 = sub_18AFCD2E4();
  v131 = *(v7 - 8);
  v132 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v127 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v128 = &v108 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v129 = &v108 - v12;
  v126 = sub_18AFCC824();
  v125 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v124 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_18AFCC9A4();
  v112 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v111 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BBF0, &unk_18AFDFE20);
  MEMORY[0x1EEE9AC00](v15 - 8);
  *&v122 = &v108 - v16;
  v17 = sub_18AFCC5C4();
  *&v143 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  *&v120 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_18AFCBB34();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v117 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B5F0, &qword_18AFDAF70);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v108 - v26;
  v28 = sub_18AFCC474();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v108 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = _s11EnvironmentVMa(0);
  MEMORY[0x1EEE9AC00](v32);
  v136 = &v108 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v108 - v35;
  v38 = MEMORY[0x1EEE9AC00](v37);
  v137 = &v108 - v39;
  v133 = v29;
  v40 = *(v29 + 16);
  v41 = v135;
  v135 = v28;
  v40(v31, v41, v28, v38);
  (*(v20 + 56))(v27, 1, 1, v19);
  v110 = *(v144 + v145[17]);
  v42 = *v144;
  sub_18AE89F60(*v144);
  v119 = sub_18AF47DE4(v42);
  v43 = *MEMORY[0x1E697DBB8];
  v44 = *(v20 + 104);
  v114 = v32[5];
  v44(&v36[v114], v43, v19);
  v45 = *MEMORY[0x1E697F600];
  v46 = *(v143 + 104);
  v115 = v32[6];
  *&v121 = v17;
  v46(&v36[v115], v45, v17);
  v47 = &v36[v32[7]];
  v47->i64[0] = 0;
  v47->i64[1] = 0;
  v109 = v47;
  v47[1].i8[0] = 1;
  v48 = v32[8];
  v49 = type metadata accessor for GlassMaterialProvider.ResolvedStyle(0);
  v50 = *(*(v49 - 8) + 56);
  v116 = v48;
  v50(&v36[v48], 1, 1, v49);
  v118 = v32[12];
  v36[v118] = 0;
  v145 = v32;
  v123 = v32[21];
  v36[v123] = 0;
  sub_18AFCC244();
  *v36 = v51;
  v130 = v27;
  sub_18AE83A40(v27, v24, &qword_1EA99B5F0, &qword_18AFDAF70);
  v52 = *(v20 + 48);
  if (v52(v24, 1, v19) == 1)
  {
    v53 = v117;
    sub_18AFCC204();
    if (v52(v24, 1, v19) != 1)
    {
      sub_18AE7BA80(v24, &qword_1EA99B5F0, &qword_18AFDAF70);
    }
  }

  else
  {
    v53 = v117;
    (*(v20 + 32))(v117, v24, v19);
  }

  (*(v20 + 40))(&v36[v114], v53, v19);
  v54 = v120;
  sub_18AFCC2F4();
  (*(v143 + 40))(&v36[v115], v54, v121);
  sub_18AFAB8BC();
  v55 = v122;
  sub_18AFCC484();
  sub_18AE90D7C(v55, &v36[v116]);
  v56 = v132;
  if (v42 == 0xC000000000000090)
  {
    if (!v110 && !sub_18AFCC1C4())
    {
      sub_18AFCCCD4();
    }

    sub_18AFCCDC4();
    v121 = v57;
    v143 = v58;
    v120 = v59;
    v122 = v60;

    v61.i64[0] = v121;
    v61.i64[1] = v120;
    v62 = v109;
    *v109 = vorrq_s8(vshll_n_s32(__PAIR64__(v122, v143), 0x20uLL), v61);
    v62[1].i8[0] = 0;
  }

  else
  {
    sub_18AF4B0F8(v42);
  }

  v63 = &v36[v145[10]];
  v64 = &v36[v145[11]];
  *v63 = 0;
  v65 = 1;
  v63[4] = 1;
  *v64 = 0;
  *(v64 + 1) = 0;
  *(v64 + 2) = 0;
  *(v64 + 12) = 256;
  sub_18AE7A260();
  sub_18AFCC484();
  v36[v118] = v147;
  if (v119)
  {
    sub_18AFCC974();
    v66 = v111;
    sub_18AFCC984();

    v67 = sub_18AFCC994();
    (*(v112 + 8))(v66, v113);
    v68 = sub_18AF76B64();
    v70 = v69;
    v72 = v71;
    v65 = v73;
  }

  else
  {
    v72 = 0;
    v68 = 0.0;
    v70 = 0;
  }

  v74 = &v36[v145[9]];
  v75 = v145[13];
  v76 = v145[14];
  v77 = v145[15];
  v78 = v145[16];
  v79 = v145[17];
  *&v121 = v145[18];
  v80 = v145[20];
  *&v122 = v145[19];
  *&v143 = v80;
  *v74 = v68;
  *(v74 + 1) = v70;
  *(v74 + 2) = v72;
  v74[24] = v65 & 1;
  v36[v75] = sub_18AFCC274() & 1;
  v36[v76] = sub_18AFCC304() & 1;
  sub_18AFAB910();
  sub_18AFCC484();
  v36[v77] = v147;
  v81 = v124;
  sub_18AFCC454();
  v82 = sub_18AFCC814();
  (*(v125 + 8))(v81, v126);
  v83 = *(v82 + 16);

  v36[v78] = v83 != 0;
  v36[v79] = sub_18AFCC354() & 1;
  v36[v121] = sub_18AFCC334() & 1;
  v36[v122] = sub_18AFCC344() & 1;
  v36[v143] = sub_18AFCC424() & 1;
  v84 = v129;
  sub_18AFCC3D4();
  v85 = v131;
  v86 = v128;
  (*(v131 + 16))(v128, v84, v56);
  v87 = v127;
  sub_18AFCD214();
  sub_18AFABD8C(&qword_1ED56A7A0, MEMORY[0x1E69818B0], MEMORY[0x1E69818B8]);
  LOBYTE(v83) = sub_18AFCDDF4();
  v88 = *(v85 + 8);
  v88(v87, v56);
  if (v83)
  {
    v88(v86, v56);
    v88(v84, v56);
    v89 = 1;
  }

  else
  {
    sub_18AFCD234();
    v90 = sub_18AFCDDF4();
    v88(v87, v56);
    v88(v86, v56);
    v88(v84, v56);
    if (v90)
    {
      v89 = 2;
    }

    else
    {
      v89 = 0;
    }
  }

  v92 = v139;
  v91 = v140;
  v93 = v138;
  v36[v123] = v89;
  sub_18AFCC3E4();
  v94 = v134;
  sub_18AFCD414();
  sub_18AFABD8C(&qword_1EA99BC80, MEMORY[0x1E69818D0], MEMORY[0x1E69818D8]);
  v95 = sub_18AFCDDF4();
  v96 = *(v92 + 8);
  v96(v94, v91);
  if ((v95 & 1) == 0)
  {
    sub_18AFCD404();
    sub_18AFCDDF4();
    v96(v94, v91);
  }

  v96(v93, v91);
  v36[v145[23]] = v95 & 1;
  sub_18AFAB964();
  sub_18AFCC484();
  v97 = v147;
  if (v147)
  {
    swift_getKeyPath();
    v146 = v97;
    sub_18AFABD8C(&qword_1ED56A728, _s6PocketV7StorageCMa, &unk_18AFE02DC);

    sub_18AFCB9B4();

    os_unfair_lock_lock((v97 + 16));
    v98 = *(v97 + 36);
    v99 = *(v97 + 40);
    os_unfair_lock_unlock((v97 + 16));

    sub_18AE7BA80(v130, &qword_1EA99B5F0, &qword_18AFDAF70);
    (*(v133 + 8))(v31, v135);

    v100 = 0x100000000;
    if (!v99)
    {
      v100 = 0;
    }

    v101 = v100 | v98;
  }

  else
  {
    sub_18AE7BA80(v130, &qword_1EA99B5F0, &qword_18AFDAF70);
    (*(v133 + 8))(v31, v135);
    v101 = 0;
  }

  v102 = &v36[v145[22]];
  v102[4] = BYTE4(v101);
  *v102 = v101;
  v102[5] = v97 == 0;
  v103 = v137;
  sub_18AE7C1C8(v36, v137, _s11EnvironmentVMa);
  v104 = v141;
  sub_18AE7B03C(v144, v141, type metadata accessor for GlassMaterialProvider.Configuration);
  v105 = v136;
  sub_18AE7B03C(v103, v136, _s11EnvironmentVMa);
  v106 = sub_18AFA8DFC(v104, v105);
  sub_18AE7E7F8(v103, v106, v142);
  return sub_18AFAC05C(v103, _s11EnvironmentVMa);
}

uint64_t sub_18AE90D7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BBF0, &unk_18AFDFE20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL sub_18AE90DEC(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 8), *(a2 + 8)), vceqq_f64(*(a1 + 24), *(a2 + 24))))) & 1) != 0 && *(a1 + 40) == *(a2 + 40))
  {
    result = 0;
    if ((vminv_u16(vmovn_s32(vceqq_f32(*(a1 + 48), *(a2 + 48)))) & 1) != 0 && *(a1 + 64) == *(a2 + 64))
    {
      return *(a1 + 68) == *(a2 + 68);
    }
  }

  return result;
}

uint64_t sub_18AE90EE8(uint64_t a1, unint64_t a2)
{
  v4 = _s13ConfigurationV3MixVMa(0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 == 2)
    {
      v12 = v5;
      v13 = swift_projectBox();
      sub_18AE7AFD4(v13, v8, _s13ConfigurationV3MixVMa);
      MEMORY[0x18CFED610](25);
      GlassMaterialProvider.Configuration.hash(into:)(a1);
      GlassMaterialProvider.Configuration.hash(into:)(a1);
      v14 = *&v8[*(v12 + 24)];
      if (v14 == 0.0)
      {
        v14 = 0.0;
      }

      MEMORY[0x18CFED640](*&v14);
      return sub_18AF4BBC8(v8, _s13ConfigurationV3MixVMa);
    }

    else
    {
      switch(__ROR8__(a2 + 0x4000000000000000, 3))
      {
        case 1:
          v17 = 1;
          break;
        case 2:
          v17 = 2;
          break;
        case 3:
          v17 = 3;
          break;
        case 4:
          v17 = 4;
          break;
        case 5:
          v17 = 6;
          break;
        case 6:
          v17 = 7;
          break;
        case 7:
          v17 = 8;
          break;
        case 8:
          v17 = 9;
          break;
        case 9:
          v17 = 10;
          break;
        case 0xALL:
          v17 = 11;
          break;
        case 0xBLL:
          v17 = 12;
          break;
        case 0xCLL:
          v17 = 14;
          break;
        case 0xDLL:
          v17 = 15;
          break;
        case 0xELL:
          v17 = 16;
          break;
        case 0xFLL:
          v17 = 17;
          break;
        case 0x10:
          v17 = 18;
          break;
        case 0x11:
          v17 = 19;
          break;
        case 0x12:
          v17 = 20;
          break;
        case 0x13:
          v17 = 21;
          break;
        case 0x14:
          v17 = 22;
          break;
        case 0x15:
          v17 = 23;
          break;
        case 0x16:
          v17 = 24;
          break;
        default:
          v17 = 0;
          break;
      }

      return MEMORY[0x18CFED610](v17, v6);
    }
  }

  else
  {
    if (!v9)
    {
      v10 = *(a2 + 20);
      v11 = *(a2 + 28);
      MEMORY[0x18CFED610](5, v6);
      if (v10)
      {
        sub_18AFCE2B4();
        if (!v11)
        {
          goto LABEL_18;
        }
      }

      else
      {
        sub_18AFCE2B4();
        sub_18AFCE2C4();
        if (!v11)
        {
LABEL_18:
          sub_18AFCE2B4();
          return sub_18AFCE2C4();
        }
      }

      return sub_18AFCE2B4();
    }

    v16 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    MEMORY[0x18CFED610](13, v6);
    if (v16)
    {
      return sub_18AFCE2B4();
    }

    sub_18AFCE2B4();

    return sub_18AFCDCD4();
  }
}

uint64_t GlassMaterialProvider.Configuration.hash(into:)(uint64_t a1)
{
  v3 = sub_18AFCBB34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B5F0, &qword_18AFDAF70);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v30[-v8];
  sub_18AE90EE8(a1, *v1);
  MEMORY[0x18CFED610](*(v1 + 8));
  MEMORY[0x18CFED610](*(v1 + 9));
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  if (*(v1 + 32) == 1)
  {
    if (v10 > 1)
    {
      if (v10 ^ 2 | v11)
      {
        v12 = 4;
      }

      else
      {
        v12 = 2;
      }
    }

    else
    {
      v12 = (v10 | v11) != 0;
    }

    MEMORY[0x18CFED610](v12);
  }

  else
  {
    v13 = *(v1 + 16);
    v14 = *(v1 + 24);
    MEMORY[0x18CFED610](3);
    if (v13 == 0.0)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = v13;
    }

    MEMORY[0x18CFED640](*&v15);
    if (v14 == 0.0)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = v14;
    }

    MEMORY[0x18CFED640](*&v16);
  }

  MEMORY[0x18CFED610](*(v1 + 40));
  MEMORY[0x18CFED610](*(v1 + 48));
  v17 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  sub_18AE7BA10(v1 + v17[10], v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_18AFCE2B4();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_18AFCE2B4();
    sub_18AF4B160(&qword_1ED56AA48, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBE0]);
    sub_18AFCDDA4();
    (*(v4 + 8))(v6, v3);
  }

  v18 = *(v1 + v17[11]);
  sub_18AFCE2B4();
  if (v18 != 3)
  {
    MEMORY[0x18CFED610](v18);
  }

  MEMORY[0x18CFED610](*(v1 + v17[12]));
  if (*(v1 + v17[13] + 16) == 1)
  {
    sub_18AFCE2B4();
  }

  else
  {
    sub_18AFCE2B4();
    sub_18AFCE2C4();
    sub_18AFCE2C4();
    sub_18AFCE2C4();
    sub_18AFCE2C4();
  }

  sub_18AE91794(a1, *(v1 + v17[14]));
  if (*(v1 + v17[15]))
  {
    sub_18AFCE2B4();
    sub_18AFCCD54();
  }

  else
  {
    sub_18AFCE2B4();
  }

  v19 = (v1 + v17[16]);
  if (*(v19 + 20) == 255)
  {
    sub_18AFCE2B4();
  }

  else
  {
    v20 = *v19;
    v21 = v19[1];
    v22 = *(v19 + 4) | (*(v19 + 20) << 32);
    sub_18AFCE2B4();
    if ((v22 & 0x100000000) != 0)
    {
      *&v30[12] = v20;
      v31 = v21;
      v32 = v22;
      MEMORY[0x18CFED610](1);
      sub_18AFCCF14();
    }

    else
    {
      MEMORY[0x18CFED610](0);
      sub_18AFCCD54();
    }
  }

  if (!*(v1 + v17[17] + 4))
  {
    v23 = 1;
    goto LABEL_35;
  }

  if (*(v1 + v17[17] + 4) == 1)
  {
    v23 = 2;
LABEL_35:
    MEMORY[0x18CFED610](v23);
    sub_18AFCE2C4();
    goto LABEL_37;
  }

  MEMORY[0x18CFED610](0);
LABEL_37:
  v24 = *(v1 + v17[18]);
  sub_18AFCE2B4();
  if (v24)
  {
    (*(*v24 + 88))(a1);
  }

  v25 = (v1 + v17[19]);
  v26 = *v25;
  if (!*v25)
  {
    return sub_18AFCE2B4();
  }

  v27 = v25[1];
  sub_18AFCE2B4();
  (*(*v26 + 88))(a1);
  if ((v27 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  return MEMORY[0x18CFED640](v28);
}

uint64_t sub_18AE91794(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x18CFED610](v3);
  if (v3)
  {
    v5 = (a2 + 60);
    do
    {
      v6 = *(v5 - 20);
      v7 = *(v5 - 12);
      v8 = *(v5 - 1);
      v9 = *v5;
      MEMORY[0x18CFED610](*(v5 - 28));
      if (v9)
      {
        MEMORY[0x18CFED610](1);
        result = sub_18AFCCF14();
      }

      else
      {
        MEMORY[0x18CFED610](0);

        sub_18AFCCD54();
        result = sub_18AE92094(v6, v7, v8, 0);
      }

      v5 += 32;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_18AE91884@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_18AFCBB34();
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for GlassMaterialProvider.State(0);
  *(a1 + v3[5]) = 1;
  result = sub_18AFA8190((a1 + v3[6]));
  *(a1 + v3[7]) = 0;
  *(a1 + v3[8]) = MEMORY[0x1E69E7CC0];
  v5 = a1 + v3[9];
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  return result;
}

uint64_t _s13DesignLibrary21GlassMaterialProviderV5StateV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_18AFCBB34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B5F0, &qword_18AFDAF70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B6A0, &qword_18AFDB768);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - v12;
  v15 = *(v14 + 56);
  sub_18AE83A40(a1, &v23 - v12, &qword_1EA99B5F0, &qword_18AFDAF70);
  sub_18AE83A40(a2, &v13[v15], &qword_1EA99B5F0, &qword_18AFDAF70);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_18AE7BA80(v13, &qword_1EA99B5F0, &qword_18AFDAF70);
LABEL_8:
      v19 = type metadata accessor for GlassMaterialProvider.State(0);
      if (*(a1 + *(v19 + 20)) != *(a2 + *(v19 + 20)))
      {
        return 0;
      }

      v20 = v19;
      if ((sub_18AE966B8((a1 + *(v19 + 24)), (a2 + *(v19 + 24))) & 1) == 0 || *(a1 + v20[7]) != *(a2 + v20[7]) || (sub_18AE9342C(*(a1 + v20[8]), *(a2 + v20[8])) & 1) == 0)
      {
        return 0;
      }

      v21 = v20[9];
      if (*(a1 + v21 + 16))
      {
        if ((*(a2 + v21 + 16) & 1) == 0)
        {
          return 0;
        }
      }

      else if ((*(a2 + v21 + 16) & 1) != 0 || (sub_18AFCCE14() & 1) == 0)
      {
        return 0;
      }

      return 1;
    }

    goto LABEL_6;
  }

  sub_18AE83A40(v13, v10, &qword_1EA99B5F0, &qword_18AFDAF70);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_18AE7BA80(v13, &qword_1EA99B6A0, &qword_18AFDB768);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_18AFB68A0(&qword_1ED56AD68, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBE8]);
  v17 = sub_18AFCDDF4();
  v18 = *(v5 + 8);
  v18(v7, v4);
  v18(v10, v4);
  sub_18AE7BA80(v13, &qword_1EA99B5F0, &qword_18AFDAF70);
  if (v17)
  {
    goto LABEL_8;
  }

  return 0;
}

char *sub_18AE91D64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B6A8, &qword_18AFDB770);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18AE91E70(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18AE91E90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_18AE91E90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B680, &qword_18AFDB748);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 32 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

uint64_t sub_18AE91FA0(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return v4;
}

uint64_t *sub_18AE91FCC@<X0>(uint64_t *result@<X0>, uint64_t a3@<X8>)
{
  v5 = *result;
  v4 = result[1];
  v6 = result[2];
  v7 = *(result + 6);
  if (*(result + 28))
  {
    v8 = *(result + 1);
    v9 = *(result + 6);
  }

  else
  {

    sub_18AFCCCE4();
    v9 = v11;
    result = sub_18AE92094(v4, v6, v7, 0);
    v8 = v10;
  }

  *a3 = v5;
  *(a3 + 8) = v8;
  *(a3 + 24) = v9;
  return result;
}

uint64_t sub_18AE92094(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return v4;
}

uint64_t _s13DesignLibrary21GlassMaterialProviderV8ResolvedV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  sub_18AF5CA0C(*a1, *a2);
  v7 = v6;
  result = 0;
  if ((v7 & 1) != 0 && v4 == v5)
  {
    if ((sub_18AFCDCB4() & 1) == 0 || (sub_18AE93090(*(a1 + 32), *(a2 + 32)) & 1) == 0 || !sub_18AE93094(*(a1 + 40), *(a1 + 48) | (*(a1 + 52) << 32), *(a2 + 40), *(a2 + 48) | (*(a2 + 52) << 32)))
    {
      return 0;
    }

    v9 = *(a2 + 81);
    if (*(a1 + 81))
    {
      goto LABEL_7;
    }

    if (*(a2 + 81))
    {
      return 0;
    }

    v13 = *(a2 + 64);
    v9 = *(a2 + 80);
    if (*(a1 + 64))
    {
      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v13 & 1 | (*(a1 + 56) != *(a2 + 56)))
    {
      return 0;
    }

    if (*(a1 + 80))
    {
LABEL_7:
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if ((*(a2 + 80) & 1) != 0 || *(a1 + 72) != *(a2 + 72))
      {
        return result;
      }
    }

    if ((sub_18AE9342C(*(a1 + 88), *(a2 + 88)) & 1) == 0)
    {
      return 0;
    }

    v10 = *(a1 + 100);
    v11 = *(a2 + 96) | (*(a2 + 100) << 32);
    v12 = v10 >> 8;
    if (v10 >> 8 > 0x20)
    {
      if (v12 == 33)
      {
        if (BYTE5(v11) != 33)
        {
          return 0;
        }

        goto LABEL_35;
      }

      if (v12 == 34)
      {
        if (BYTE5(v11) != 34)
        {
          return 0;
        }

        goto LABEL_35;
      }
    }

    else
    {
      if (v12 == 31)
      {
        if (BYTE5(v11) != 31)
        {
          return 0;
        }

        goto LABEL_35;
      }

      if (v12 == 32)
      {
        if (BYTE5(v11) != 32)
        {
          return 0;
        }

        goto LABEL_35;
      }
    }

    if (BYTE5(v11) - 31 < 4)
    {
      return 0;
    }

    v14 = *(a1 + 96) | (*(a1 + 100) << 32);
    v37 = *(a1 + 96);
    v38 = BYTE4(v14) & 1;
    v39 = BYTE1(v10);
    v34 = v11;
    v35 = BYTE4(v11) & 1;
    v36 = BYTE5(v11);
    if (!sub_18AF5DC58(&v37, &v34))
    {
      return 0;
    }

LABEL_35:
    v15 = type metadata accessor for GlassMaterialProvider.Resolved(0);
    if (sub_18AFCBB24())
    {
      v16 = v15[12];
      v17 = *(a1 + v16);
      v18 = *(a2 + v16);
      if (v17)
      {
        if (!v18)
        {
          return 0;
        }

        v19 = *(*v17 + 80);

        v21 = v19(v20);

        if ((v21 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v18)
      {
        return 0;
      }

      v22 = v15[13];
      v23 = a1 + v22;
      v24 = *(a1 + v22);
      v25 = (a2 + v22);
      v26 = *v25;
      if (v24)
      {
        if (v26 == 0.0)
        {
          return 0;
        }

        v27 = *(v23 + 8);
        v28 = v25[1];
        v29 = *(*v24 + 80);

        v31 = v29(v30);

        result = 0;
        if ((v31 & 1) == 0 || v27 != v28)
        {
          return result;
        }
      }

      else if (v26 != 0.0)
      {
        return 0;
      }

      if (static GlassMaterialProvider.Configuration.== infix(_:_:)())
      {
        v32 = v15[15];
        if (*(a1 + v32 + 16))
        {
          if ((*(a2 + v32 + 16) & 1) == 0)
          {
            return 0;
          }
        }

        else if ((*(a2 + v32 + 16) & 1) != 0 || (sub_18AFCCE14() & 1) == 0)
        {
          return 0;
        }

        if (*(a1 + v15[16]) == *(a2 + v15[16]))
        {
          v33 = v15[17];
          if (*(a1 + v33 + 16))
          {
            if (*(a2 + v33 + 16))
            {
              return 1;
            }
          }

          else if (*(a2 + v33 + 16) & 1) == 0 && (sub_18AFCCE14())
          {
            return 1;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_18AE92510(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v84 = v2;
  v85 = v3;
  v4 = *(a1 + 136);
  *&__dst[96] = *(a1 + 120);
  *&__dst[112] = v4;
  *&__dst[128] = *(a1 + 152);
  __dst[144] = *(a1 + 168);
  v5 = *(a1 + 72);
  *&__dst[32] = *(a1 + 56);
  *&__dst[48] = v5;
  v6 = *(a1 + 104);
  *&__dst[64] = *(a1 + 88);
  *&__dst[80] = v6;
  v7 = *(a1 + 40);
  *__dst = *(a1 + 24);
  *&__dst[16] = v7;
  v8 = *(a2 + 152);
  *v62 = *(a2 + 136);
  *&v62[16] = v8;
  *&__dst[248] = *(a2 + 120);
  v62[32] = *(a2 + 168);
  *&__dst[184] = *(a2 + 56);
  *&__dst[200] = *(a2 + 72);
  *&__dst[216] = *(a2 + 88);
  *&__dst[232] = *(a2 + 104);
  *&__dst[152] = *(a2 + 24);
  *&__dst[168] = *(a2 + 40);
  v10 = *(a1 + 136);
  v64[6] = *(a1 + 120);
  v64[7] = v10;
  v64[8] = *(a1 + 152);
  v65 = *(a1 + 168);
  v11 = *(a1 + 72);
  v64[2] = *(a1 + 56);
  v64[3] = v11;
  v12 = *(a1 + 104);
  v64[4] = *(a1 + 88);
  v64[5] = v12;
  v14 = *(a1 + 40);
  v64[0] = *(a1 + 24);
  v64[1] = v14;
  if (sub_18AF4FB80(v64) != 1)
  {
    v63[6] = *&__dst[248];
    v63[7] = *v62;
    v63[8] = *&v62[16];
    LOBYTE(v63[9]) = v62[32];
    v63[2] = *&__dst[184];
    v63[3] = *&__dst[200];
    v63[4] = *&__dst[216];
    v63[5] = *&__dst[232];
    v63[0] = *&__dst[152];
    v63[1] = *&__dst[168];
    if (sub_18AF4FB80(v63) == 1)
    {
      return 0;
    }

    v83[5] = *&__dst[232];
    v83[6] = *&__dst[248];
    v83[7] = *v62;
    v83[8] = *&v62[16];
    v83[1] = *&__dst[168];
    v83[2] = *&__dst[184];
    v83[3] = *&__dst[200];
    v83[4] = *&__dst[216];
    v82[6] = *&__dst[96];
    v82[7] = *&__dst[112];
    v82[8] = *&__dst[128];
    v83[0] = *&__dst[152];
    v82[2] = *&__dst[32];
    v82[3] = *&__dst[48];
    v82[4] = *&__dst[64];
    v82[5] = *&__dst[80];
    v82[0] = *__dst;
    v82[1] = *&__dst[16];
    if (!sub_18AF6EB8C(v82, v83))
    {
      return 0;
    }

LABEL_10:
    v16 = a1;
    v17 = a2;
    if (*(a1 + 248))
    {
      if ((*(a2 + 248) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(a2 + 248))
      {
        return 0;
      }

      v18 = *(a2 + 224);
      v80[2] = *(a2 + 208);
      v80[3] = v18;
      v81 = *(a2 + 240);
      v19 = *(a2 + 192);
      v80[0] = *(a2 + 176);
      v80[1] = v19;
      v20 = *(a1 + 224);
      v78[2] = *(a1 + 208);
      v78[3] = v20;
      v79 = *(a1 + 240);
      v21 = *(a1 + 192);
      v78[0] = *(a1 + 176);
      v78[1] = v21;
      v22 = sub_18AE90DEC(v78, v80);
      v17 = a2;
      v16 = a1;
      if (!v22)
      {
        return 0;
      }
    }

    if (*(v16 + 308))
    {
      if ((*(v17 + 308) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((*(v17 + 308) & 1) != 0 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v16 + 256), *(v17 + 256)), vceqq_f64(*(v16 + 272), *(v17 + 272))))) & 1) == 0 || *(v16 + 288) != *(v17 + 288) || *(v16 + 296) != *(v17 + 296) || *(v16 + 304) != *(v17 + 304))
    {
      return 0;
    }

    if (*(v16 + 385))
    {
      if ((*(v17 + 385) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(v17 + 385))
      {
        return 0;
      }

      if (*(v16 + 312) != *(v17 + 312))
      {
        return 0;
      }

      v23 = v16 + 316;
      v24 = *v23;
      v74[1] = *(v23 + 16);
      v25 = *(v23 + 48);
      v74[2] = *(v23 + 32);
      v26 = v17 + 316;
      v75[0] = v25;
      *(v75 + 13) = *(v23 + 61);
      v74[0] = v24;
      v27 = *(v26 + 48);
      v76[2] = *(v26 + 32);
      v77[0] = v27;
      *(v77 + 13) = *(v26 + 61);
      v28 = *(v26 + 16);
      v76[0] = *v26;
      v76[1] = v28;
      v29 = sub_18AE8DE28(v74, v76);
      v17 = a2;
      v16 = a1;
      if ((v29 & 1) == 0)
      {
        return 0;
      }
    }

    v30 = *(v16 + 496);
    v31 = *(v17 + 496);
    v32 = v31 & 0xFF00;
    if ((v30 & 0xFF00) == 0x200)
    {
      if (v32 != 512)
      {
        return 0;
      }
    }

    else
    {
      if (v32 == 512)
      {
        return 0;
      }

      v33 = v16 + 392;
      v34 = v17 + 392;
      v35 = *(v34 + 32);
      v71[3] = *(v34 + 48);
      v36 = *(v34 + 80);
      v71[4] = *(v34 + 64);
      v71[5] = v36;
      v72 = *(v34 + 96);
      v37 = *(v34 + 16);
      v71[0] = *v34;
      v71[1] = v37;
      v71[2] = v35;
      v73 = v31;
      v38 = *(v33 + 48);
      v68[2] = *(v33 + 32);
      v39 = *v33;
      v68[1] = *(v33 + 16);
      v68[0] = v39;
      v40 = *(v33 + 64);
      v41 = *(v33 + 80);
      v69 = *(v33 + 96);
      v68[5] = v41;
      v68[4] = v40;
      v68[3] = v38;
      v70 = v30;
      v42 = sub_18AE8DFB8(v68, v71);
      v17 = a2;
      v16 = a1;
      if ((v42 & 1) == 0)
      {
        return 0;
      }
    }

    v43 = v17 + 500;
    v44 = v16 + 500;
    if (*(v16 + 516))
    {
      if ((*(v17 + 516) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(v17 + 516))
      {
        return 0;
      }

      if (COERCE_FLOAT(HIDWORD(*v44)) != COERCE_FLOAT(HIDWORD(*v43)))
      {
        return 0;
      }

      v45 = *(v16 + 508);
      v46 = *(v17 + 508);
      if (*&v45 != *&v46 || *(&v45 + 1) != *(&v46 + 1))
      {
        return 0;
      }
    }

    v47 = v16;
    v48 = v17;
    memcpy(__dst, (v16 + 520), 0x101uLL);
    memcpy(v62, (v48 + 520), sizeof(v62));
    memcpy(v63, (v47 + 520), 0x101uLL);
    if (sub_18AF4FB9C(v63) == 1)
    {
      memcpy(v60, v62, 0x101uLL);
      if (sub_18AF4FB9C(v60) != 1)
      {
        return 0;
      }
    }

    else
    {
      memcpy(v60, v62, 0x101uLL);
      if (sub_18AF4FB9C(v60) == 1)
      {
        return 0;
      }

      v67[12] = *&v62[192];
      v67[13] = *&v62[208];
      v67[14] = *&v62[224];
      v67[15] = *&v62[240];
      v67[8] = *&v62[128];
      v67[9] = *&v62[144];
      v67[10] = *&v62[160];
      v67[11] = *&v62[176];
      v67[4] = *&v62[64];
      v67[5] = *&v62[80];
      v67[6] = *&v62[96];
      v67[7] = *&v62[112];
      v67[0] = *v62;
      v67[1] = *&v62[16];
      v67[2] = *&v62[32];
      v67[3] = *&v62[48];
      v66[12] = *&__dst[192];
      v66[13] = *&__dst[208];
      v66[14] = *&__dst[224];
      v66[15] = *&__dst[240];
      v66[8] = *&__dst[128];
      v66[9] = *&__dst[144];
      v66[10] = *&__dst[160];
      v66[11] = *&__dst[176];
      v66[5] = *&__dst[80];
      v66[6] = *&__dst[96];
      v66[7] = *&__dst[112];
      v66[0] = *__dst;
      v66[1] = *&__dst[16];
      v66[2] = *&__dst[32];
      v66[3] = *&__dst[48];
      v66[4] = *&__dst[64];
      if (!sub_18AE92EB0(v66, v67))
      {
        return 0;
      }
    }

    if (*(v44 + 316))
    {
      if ((*(v43 + 316) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(v43 + 316))
      {
        return 0;
      }

      v49 = *(a1 + 784);
      v50 = *(a2 + 784);
      if (*&v49 != *&v50 || *(&v49 + 1) != *(&v50 + 1) || COERCE_FLOAT(*(a1 + 792)) != COERCE_FLOAT(*(a2 + 792)) || *(a1 + 800) != *(a2 + 800) || *(a1 + 808) != *(a2 + 808))
      {
        return 0;
      }
    }

    if (*(a1 + 872))
    {
      if ((*(a2 + 872) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(a2 + 872))
      {
        return 0;
      }

      v51 = *(v44 + 324);
      v52 = *(v44 + 340);
      v53 = *(v44 + 356);
      v54 = *(v43 + 340);
      v55 = *(v43 + 356);
      *__dst = *(v43 + 324);
      *&__dst[16] = v54;
      *&__dst[32] = v55;
      v60[0] = v51;
      v60[1] = v52;
      v60[2] = v53;
      if (!sub_18AE92DBC(v60, __dst))
      {
        return 0;
      }
    }

    if (*(v44 + 404))
    {
      if ((*(v43 + 404) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((*(v43 + 404) & 1) != 0 || *(a1 + 880) != *(a2 + 880) || *(a1 + 888) != *(a2 + 888) || *(a1 + 896) != *(a2 + 896))
    {
      return 0;
    }

    if (*(v44 + 436))
    {
      if ((*(v43 + 436) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((*(v43 + 436) & 1) != 0 || *(a1 + 912) != *(a2 + 912) || *(a1 + 920) != *(a2 + 920) || *(a1 + 928) != *(a2 + 928))
    {
      return 0;
    }

    if (*(v44 + 460))
    {
      if ((*(v43 + 460) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(v43 + 460))
      {
        return 0;
      }

      v56 = *(a1 + 944);
      v57 = *(a2 + 944);
      if (*&v56 != *&v57 || *(&v56 + 1) != *(&v57 + 1) || *(a1 + 952) != *(a2 + 952))
      {
        return 0;
      }
    }

    if (*(v44 + 484))
    {
      if ((*(v43 + 484) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(v43 + 484))
      {
        return 0;
      }

      v58 = *(a1 + 968);
      v59 = *(a2 + 968);
      if (*&v58 != *&v59 || *(&v58 + 1) != *(&v59 + 1) || *(a1 + 976) != *(a2 + 976))
      {
        return 0;
      }
    }

    if (*(v44 + 524))
    {
      if (!*(v43 + 524))
      {
        return 0;
      }
    }

    else if ((*(v43 + 524) & 1) != 0 || (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(a1 + 992), *(a2 + 992)), vceqq_f64(*(a1 + 1008), *(a2 + 1008))), xmmword_18AFDDBA0)) & 0xF) != 0)
    {
      return 0;
    }

    return 1;
  }

  v63[6] = *&__dst[248];
  v63[7] = *v62;
  v63[8] = *&v62[16];
  LOBYTE(v63[9]) = v62[32];
  v63[2] = *&__dst[184];
  v63[3] = *&__dst[200];
  v63[4] = *&__dst[216];
  v63[5] = *&__dst[232];
  v63[0] = *&__dst[152];
  v63[1] = *&__dst[168];
  if (sub_18AF4FB80(v63) == 1)
  {
    goto LABEL_10;
  }

  return 0;
}

BOOL sub_18AE92DBC(float *a1, float *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || a1[4] != a2[4] || a1[5] != a2[5])
  {
    return 0;
  }

  if ((sub_18AFCCCB4() & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if (a1[8] == a2[8] && a1[9] == a2[9])
  {
    if (a1[10] == a2[10])
    {
      return a1[11] == a2[11];
    }

    return 0;
  }

  return result;
}

BOOL sub_18AE92EB0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v40 = v9;
  v41 = v8;
  v42 = v7;
  v43 = v6;
  v44 = v5;
  v45 = v4;
  v46 = v2;
  v47 = v3;
  v13 = *(a2 + 40);
  v12 = *(a2 + 48);
  v16 = *(a1 + 40);
  v15 = *(a1 + 48);
  v18 = sub_18AFCCCB4();
  result = 0;
  if ((v18 & 1) != 0 && v16 == v13 && v15 == v12)
  {
    v20 = *(a1 + 72);
    v21 = *(a1 + 104);
    v38[2] = *(a1 + 88);
    v39[0] = v21;
    *(v39 + 13) = *(a1 + 117);
    v38[0] = *(a1 + 56);
    v38[1] = v20;
    v22 = *(a2 + 72);
    v23 = *(a2 + 104);
    v36[2] = *(a2 + 88);
    v37[0] = v23;
    *(v37 + 13) = *(a2 + 117);
    v36[0] = *(a2 + 56);
    v36[1] = v22;
    result = 0;
    if ((sub_18AE8DE28(v38, v36) & 1) != 0 && (sub_18AFCCCB4() & 1) != 0 && *(a1 + 136) == *(a2 + 136) && *(a1 + 144) == *(a2 + 144))
    {
      v25 = *(a2 + 160);
      v24 = *(a2 + 168);
      v27 = *(a1 + 160);
      v26 = *(a1 + 168);
      if ((sub_18AFCCCB4() & 1) != 0 && v27 == v25 && v26 == v24)
      {
        v28 = *(a1 + 224);
        v34[2] = *(a1 + 208);
        v35[0] = v28;
        *(v35 + 13) = *(a1 + 237);
        v29 = *(a1 + 192);
        v34[0] = *(a1 + 176);
        v34[1] = v29;
        v30 = *(a2 + 224);
        v32[2] = *(a2 + 208);
        v33[0] = v30;
        *(v33 + 13) = *(a2 + 237);
        v31 = *(a2 + 192);
        v32[0] = *(a2 + 176);
        v32[1] = v31;
        if (sub_18AE8DE28(v34, v32) & 1) != 0 && (sub_18AFCCCB4())
        {
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL sub_18AE93094(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 & 0xFFFFFFFFFFLL;
  v7 = (a2 >> 38) & 3;
  if (((a2 >> 38) & 3) > 1)
  {
    if (v7 == 2)
    {
      if ((a4 & 0xC000000000) == 0x8000000000)
      {
        v19 = v4;
        v20 = v5;
        v8 = *(a3 + 96);
        v15[4] = *(a3 + 80);
        v15[5] = v8;
        v16 = *(a3 + 112);
        v9 = *(a3 + 32);
        v15[0] = *(a3 + 16);
        v15[1] = v9;
        v10 = *(a3 + 64);
        v15[2] = *(a3 + 48);
        v15[3] = v10;
        v11 = *(a1 + 96);
        v17[4] = *(a1 + 80);
        v17[5] = v11;
        v18 = *(a1 + 112);
        v12 = *(a1 + 32);
        v17[0] = *(a1 + 16);
        v17[1] = v12;
        v13 = *(a1 + 64);
        v17[2] = *(a1 + 48);
        v17[3] = v13;
        return sub_18AFB5120(v17, v15);
      }

      return 0;
    }

    switch(a1)
    {
      case 1:
        if (v6 >> 38 < 3 || a3 != 1)
        {
          return 0;
        }

        break;
      case 2:
        if (v6 >> 38 < 3 || a3 != 2)
        {
          return 0;
        }

        break;
      case 3:
        if (v6 >> 38 < 3 || a3 != 3)
        {
          return 0;
        }

        break;
      case 4:
        if (v6 >> 38 < 3 || a3 != 4)
        {
          return 0;
        }

        break;
      case 5:
        if (v6 >> 38 < 3 || a3 != 5)
        {
          return 0;
        }

        break;
      case 6:
        if (v6 >> 38 < 3 || a3 != 6)
        {
          return 0;
        }

        break;
      case 7:
        if (v6 >> 38 < 3 || a3 != 7)
        {
          return 0;
        }

        break;
      case 8:
        if (v6 >> 38 < 3 || a3 != 8)
        {
          return 0;
        }

        break;
      case 9:
        if (v6 >> 38 < 3 || a3 != 9)
        {
          return 0;
        }

        break;
      case 10:
        if (v6 >> 38 < 3 || a3 != 10)
        {
          return 0;
        }

        break;
      case 11:
        if (v6 >> 38 < 3 || a3 != 11)
        {
          return 0;
        }

        break;
      case 12:
        if (v6 >> 38 < 3 || a3 != 12)
        {
          return 0;
        }

        break;
      case 13:
        if (v6 >> 38 < 3 || a3 != 13)
        {
          return 0;
        }

        break;
      case 14:
        if (v6 >> 38 < 3 || a3 != 14)
        {
          return 0;
        }

        break;
      case 15:
        if (v6 >> 38 < 3 || a3 != 15)
        {
          return 0;
        }

        break;
      case 16:
        if (v6 >> 38 < 3 || a3 != 16)
        {
          return 0;
        }

        break;
      case 17:
        if (v6 >> 38 < 3 || a3 != 17)
        {
          return 0;
        }

        break;
      case 18:
        if (v6 >> 38 < 3 || a3 != 18)
        {
          return 0;
        }

        break;
      case 19:
        if (v6 >> 38 < 3 || a3 != 19)
        {
          return 0;
        }

        break;
      case 20:
        if (v6 >> 38 < 3 || a3 != 20)
        {
          return 0;
        }

        break;
      default:
        if (v6 >> 38 < 3 || a3)
        {
          return 0;
        }

        break;
    }

    if (v6 == 0xC000000000)
    {
      return 1;
    }
  }

  else
  {
    if (v7)
    {
      if ((a4 & 0xC000000000) == 0x4000000000)
      {
        return ((a3 ^ a1) & 1) == 0;
      }

      return 0;
    }

    if (!(v6 >> 38))
    {
      if ((a1 & 0x100000000) != 0)
      {
        if ((a3 & 0x100000000) == 0)
        {
          return 0;
        }
      }

      else if ((a3 & 0x100000000) != 0 || *&a1 != *&a3)
      {
        return 0;
      }

      if ((a2 & 0x100000000) == 0)
      {
        return (a4 & 0x100000000) == 0 && *&a2 == *&a4;
      }

      if ((a4 & 0x100000000) != 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_18AE9342C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1);
      v8 = *v3;
      v9 = *(v3 + 4);
      v6 = *(i - 1);
      v10 = *i;
      v11 = *(i + 4);
      if (v5 != v6 || (MEMORY[0x18CFEC270](&v8, &v10) & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

double GlassMaterialProvider.Configuration.mix(with:by:)@<D0>(uint64_t a1@<X0>, double a2@<D0>, uint64_t a3@<X8>)
{
  v7 = _s13ConfigurationV3MixVMa(0);
  v8 = swift_allocBox();
  v10 = v9;
  sub_18AE7AFD4(v3, v9, type metadata accessor for GlassMaterialProvider.Configuration);
  sub_18AE7AFD4(a1, v10 + *(v7 + 20), type metadata accessor for GlassMaterialProvider.Configuration);
  *(v10 + *(v7 + 24)) = a2;

  return sub_18AF4884C(v8 | 0x8000000000000000, a3);
}

uint64_t sub_18AE935F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 2);

  sub_18AFCDC84();
  v6 = v5;
  v8 = v7;

  v10 = sub_18AE96968(v9);

  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = v10;
  return result;
}

void *sub_18AE93684(uint64_t a1)
{
  v2 = v1;
  v514 = MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v457 = v5;
  memcpy(__dst, v1, sizeof(__dst));
  if (v514.n128_f64[0] > 0.0)
  {
    if (v514.n128_f64[0] >= 1.0)
    {
      v6 = *v4;
    }

    else
    {
      v6 = *v1;
      if (*v1 <= *v4)
      {
        v6 = *v4;
      }
    }

    *__dst = v6;
  }

  v7 = *(v1 + 3);
  v8 = *(v1 + 4);
  v9 = *(v1 + 5);
  v10 = *(v1 + 6);
  v11 = *(v1 + 7);
  v12 = *(v1 + 8);
  v13 = *(v1 + 9);
  v14 = *(v1 + 20);
  v15 = *(v1 + 21);
  v16 = *(v1 + 22);
  v17 = *(v1 + 23);
  v18 = *(v1 + 25);
  v19 = *(v1 + 108);
  v20 = *(v1 + 14);
  v21 = *(v1 + 15);
  v22 = *(v1 + 128);
  v23 = *(v1 + 33);
  v24 = *(v1 + 35);
  v25 = *(v1 + 148);
  v26 = *(v2 + 38);
  v27 = *(v2 + 39);
  v28 = *(v2 + 20);
  v29 = *(v2 + 168);
  v30 = *(v2 + 109);
  v489 = v8;
  v492 = v7;
  v692[0] = v7;
  v692[1] = v8;
  v486 = v9;
  v692[2] = v9;
  v692[3] = v10;
  v692[4] = v11;
  v692[5] = v12;
  v692[6] = v13;
  v495 = v14;
  v693 = v14;
  v694 = v15;
  v695 = v16;
  v501 = v17;
  v696 = v17;
  v498 = v18;
  v697 = v18;
  v698 = v19;
  v699 = v30;
  v700 = *(v2 + 111);
  v505 = v20;
  v701 = v20;
  v503 = v21;
  v702 = v21;
  v703 = v22;
  LOWORD(v20) = *(v2 + 149);
  v704 = *(v2 + 129);
  v705 = *(v2 + 131);
  v511 = v23;
  v706 = v23;
  v508 = v24;
  v707 = v24;
  v708 = v25;
  v709 = v20;
  v31 = v27;
  v710 = *(v2 + 151);
  v711 = v26;
  v712 = v27;
  v713 = v28;
  v714 = v29;
  if (sub_18AF4FB80(v692) == 1)
  {
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v10 = 0;
    v11 = 0;
    v19 = 1;
    LOBYTE(v592.f64[0]) = 1;
    LOBYTE(v527[0]) = 1;
    LOBYTE(v758) = 1;
    v12 = 0;
    v13 = 0;
    v15 = 0;
    v16 = 0;
    v22 = 1;
    v25 = 1;
    v26 = 0;
    v28 = 0;
  }

  else
  {
    v690 = *(v2 + 109);
    v691 = *(v2 + 111);
    v688 = *(v2 + 129);
    v689 = *(v2 + 131);
    v686 = *(v2 + 149);
    v687 = *(v2 + 151);
    v36 = v511;
    v37 = v508;
    v34 = v505;
    v35 = v503;
    v32 = v501;
    v33 = v498;
    v38 = v495;
    v40 = v489;
    v39 = v492;
    v41 = v486;
  }

  v962 = v39;
  v963 = v40;
  v964 = v41;
  v965 = v10;
  v966 = v11;
  v967 = v12;
  v968 = v13;
  v969 = v38;
  v970 = v15;
  v971 = v16;
  v972 = v32;
  v973 = v33;
  v974 = v19;
  v976 = v691;
  v975 = v690;
  v977 = v34;
  v978 = v35;
  v979 = v22;
  v981 = v689;
  v980 = v688;
  v982 = v36;
  v983 = v37;
  v984 = v25;
  v986 = v687;
  v985 = v686;
  v987 = v26;
  v988 = v31;
  v989 = v28;
  v42 = *(v4 + 40);
  v43 = *(v4 + 48);
  v44 = *(v4 + 56);
  v45 = *(v4 + 64);
  v46 = *(v4 + 72);
  v47 = *(v4 + 80);
  v48 = *(v4 + 84);
  v49 = *(v4 + 88);
  v50 = *(v4 + 92);
  v51 = *(v4 + 100);
  v52 = *(v4 + 108);
  v53 = *(v4 + 112);
  v54 = *(v4 + 120);
  v55 = *(v4 + 128);
  v56 = *(v4 + 132);
  v57 = *(v4 + 140);
  v58 = *(v4 + 148);
  v59 = *(v4 + 152);
  v60 = *(v4 + 156);
  v61 = *(v4 + 160);
  v62 = *(v4 + 168);
  v63 = *(v4 + 109);
  v490 = *(v4 + 32);
  v493 = *(v4 + 24);
  v663[0] = v493;
  v663[1] = v490;
  v487 = v42;
  v663[2] = v42;
  v663[3] = v43;
  v663[4] = v44;
  v663[5] = v45;
  v663[6] = v46;
  v496 = v47;
  v664 = v47;
  v665 = v48;
  v666 = v49;
  v502 = v50;
  v667 = v50;
  v499 = v51;
  v668 = v51;
  v669 = v52;
  v670 = v63;
  v671 = *(v4 + 111);
  v506 = v53;
  v672 = v53;
  v504 = v54;
  v673 = v54;
  v674 = v55;
  LOWORD(v53) = *(v4 + 149);
  v675 = *(v4 + 129);
  v676 = *(v4 + 131);
  v509 = v56;
  v677 = v56;
  v64 = v57;
  v678 = v57;
  v679 = v58;
  v680 = v53;
  v681 = *(v4 + 151);
  v682 = v59;
  v512 = v60;
  v683 = v60;
  v684 = v61;
  v685 = v62;
  if (sub_18AF4FB80(v663) == 1)
  {
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v64 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v43 = 0;
    v44 = 0;
    v52 = 1;
    LOBYTE(v592.f64[0]) = 1;
    LOBYTE(v527[0]) = 1;
    LOBYTE(v758) = 1;
    v45 = 0;
    v46 = 0;
    v48 = 0;
    v49 = 0;
    v55 = 1;
    v58 = 1;
    v59 = 0;
    v61 = 0;
  }

  else
  {
    v661 = *(v4 + 109);
    v662 = *(v4 + 111);
    v659 = *(v4 + 129);
    v660 = *(v4 + 131);
    v657 = *(v4 + 149);
    v658 = *(v4 + 151);
    v69 = v509;
    v67 = v506;
    v68 = v504;
    v65 = v502;
    v66 = v499;
    v70 = v496;
    v72 = v490;
    v71 = v493;
    v73 = v487;
  }

  v940[0] = v71;
  v940[1] = v72;
  v940[2] = v73;
  v940[3] = v43;
  v940[4] = v44;
  v940[5] = v45;
  v940[6] = v46;
  v941 = v70;
  v942 = v48;
  v943 = v49;
  v944 = v65;
  v945 = v66;
  v946 = v52;
  v948 = v662;
  v947 = v661;
  v949 = v67;
  v950 = v68;
  v951 = v55;
  v953 = v660;
  v952 = v659;
  v954 = v69;
  v955 = v64;
  v956 = v58;
  v958 = v658;
  v957 = v657;
  v959 = v59;
  v960 = v512;
  v961 = v61;
  sub_18AE95BA0(v940, &v716, v514);
  v656 = 1;
  v653 = 1;
  v650 = 1;
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v716), vceqzq_f64(v717))))) & 1) == 0 && *&v718 == 0.0 && *(&v718 + 1) == 0.0 && *&v719 == 0.0 && *(&v719 + 2) == 0.0 && *(&v719 + 3) == 0.0 && *&v720 == 0.0 && (BYTE4(v721) & 1) != 0 && (BYTE8(v722) & 1) != 0 && (BYTE12(v723) & 1) != 0 && *&v724 == 0.0 && *(&v724 + 1) == 0.0)
  {
    sub_18AF6A99C(&v640);
  }

  else
  {
    *v597 = v722;
    *&v597[16] = v723;
    v598 = v724;
    v594 = v718;
    v595 = v719;
    *&v596[16] = v721;
    *v596 = v720;
    v592 = v716;
    v593 = v717;
    sub_18AF6A9C0(&v592);
    v646 = *v597;
    v647 = *&v597[16];
    v648 = v598;
    v649 = v599;
    v642 = v594;
    v643 = v595;
    v644 = *v596;
    v645 = *&v596[16];
    v640 = v592;
    v641 = v593;
  }

  *&__dst[120] = v646;
  *&__dst[136] = v647;
  *&__dst[152] = v648;
  *&__dst[56] = v642;
  *&__dst[72] = v643;
  *&__dst[88] = v644;
  *&__dst[104] = v645;
  *&__dst[24] = v640;
  *&__dst[40] = v641;
  v74 = *(v2 + 248);
  v75 = vdup_n_s32(v74);
  v76.i64[0] = v75.u32[0];
  v76.i64[1] = v75.u32[1];
  v77 = vcgezq_s64(vshlq_n_s64(v76, 0x3FuLL));
  v78 = vandq_s8(*(v2 + 48), v77);
  v935 = vandq_s8(*(v2 + 44), v77);
  v936 = v78;
  v79 = vandq_s8(*(v2 + 52), v77);
  v80 = vandq_s8(*(v2 + 56), vcgezq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v74)), 0x1FuLL)));
  __dst[168] = v649;
  v937 = v79;
  v938 = v80;
  v939 = vand_s8(*(v2 + 60), vcgez_s32(vshl_n_s32(v75, 0x1FuLL)));
  if (*(v4 + 248))
  {
    v81 = 0uLL;
    v82 = 0;
    v83 = 0uLL;
    v84 = 0uLL;
    v85 = 0uLL;
  }

  else
  {
    v81 = *(v4 + 176);
    v84 = *(v4 + 192);
    v85 = *(v4 + 208);
    v83 = *(v4 + 224);
    v82 = *(v4 + 240);
  }

  v933[0] = v81;
  v933[1] = v84;
  v933[2] = v85;
  v933[3] = v83;
  v934 = v82;
  sub_18AE95ED8(v933, &v725, v514.n128_f64[0]);
  v86 = v725;
  v87 = v726;
  v88 = v727;
  v89 = v728;
  v90 = v729;
  v91 = v730;
  v92 = v731;
  v93 = v732;
  v94 = v733;
  if ((v725 & 0x7FFFFFFFFFFFFFFFLL) != 0 || (v726 & 0x7FFFFFFFFFFFFFFFLL) != 0 || (v727 & 0x7FFFFFFFFFFFFFFFLL) != 0 || (v728 & 0x7FFFFFFFFFFFFFFFLL) != 0 || (v729 & 0x7FFFFFFFFFFFFFFFLL) != 0 || (v730 & 0x7FFFFFFFFFFFFFFFLL) != 0 || (v731 & 0x7FFFFFFF7FFFFFFFLL) != 0 || (v732 & 0x7FFFFFFF7FFFFFFFLL) != 0 || (v733 & 0x7FFFFFFF7FFFFFFFLL) != 0)
  {
    v95 = 0;
  }

  else
  {
    v86 = 0;
    v87 = 0;
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 1;
  }

  *&__dst[176] = v86;
  *&__dst[184] = v87;
  *&__dst[192] = v88;
  *&__dst[200] = v89;
  *&__dst[208] = v90;
  *&__dst[216] = v91;
  v96 = 0uLL;
  *&__dst[224] = v92;
  *&__dst[232] = v93;
  v97 = 0.0;
  *&__dst[240] = v94;
  v98 = 0.0;
  v99 = 0uLL;
  __dst[248] = v95;
  v100 = 0uLL;
  v101 = 0uLL;
  if ((v2[77] & 1) == 0)
  {
    v98 = v2[76];
    v100 = *(v2 + 68);
    v101 = *(v2 + 72);
    v99 = *(v2 + 64);
  }

  v102 = 0uLL;
  v103 = 0uLL;
  if ((*(v4 + 308) & 1) == 0)
  {
    v97 = *(v4 + 304);
    v102 = *(v4 + 272);
    v103 = *(v4 + 288);
    v96 = *(v4 + 256);
  }

  v104 = vaddq_f64(vmulq_n_f64(v99, 1.0 - v514.n128_f64[0]), vmulq_n_f64(v96, v514.n128_f64[0]));
  v105 = vaddq_f64(vmulq_n_f64(v100, 1.0 - v514.n128_f64[0]), vmulq_n_f64(v102, v514.n128_f64[0]));
  v106 = vaddq_f64(vmulq_n_f64(v101, 1.0 - v514.n128_f64[0]), vmulq_n_f64(v103, v514.n128_f64[0]));
  v107 = 1.0 - v514.n128_f64[0];
  v108 = v514.n128_f64[0];
  v109 = (v98 * v107) + (v97 * v108);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v104), vceqzq_f64(v105))))) & 1) == 0 && v106.f64[0] == 0.0 && v106.f64[1] == 0.0 && v109 == 0.0)
  {
    v110 = 1;
    v104 = 0uLL;
    v109 = 0.0;
    v105 = 0uLL;
    v106 = 0uLL;
  }

  else
  {
    v110 = 0;
  }

  *&__dst[256] = v104;
  *&__dst[272] = v105;
  *&__dst[288] = v106;
  *&__dst[304] = v109;
  __dst[308] = v110;
  if (*(v2 + 385))
  {
    v111 = v656;
    v638 = v654;
    v639 = v655;
    v112 = v653;
    v636 = v651;
    v637 = v652;
    v113 = 0uLL;
    v114 = 0;
    v115 = 0.0;
    v116 = 0;
    v117 = 0uLL;
    v118 = 0uLL;
    v119 = v650;
  }

  else
  {
    v112 = *(v2 + 364);
    v117 = *(v2 + 87);
    v111 = *(v2 + 344);
    v118 = *(v2 + 82);
    v116 = *(v2 + 81);
    v114 = *(v2 + 79);
    v115 = v2[78];
    v119 = *(v2 + 384);
    v113 = *(v2 + 23);
    v639 = *(v2 + 347);
    v638 = *(v2 + 345);
    v637 = *(v2 + 367);
    v636 = *(v2 + 365);
  }

  v507 = 1.0 - v514.n128_f64[0];
  if (*(v4 + 385))
  {
    v120 = v656;
    v634 = v654;
    v635 = v655;
    v121 = v653;
    v632 = v651;
    v633 = v652;
    v122 = 0uLL;
    v123 = 0;
    v124 = 0.0;
    v125 = 0;
    v126 = 0uLL;
    v127 = 0uLL;
    v128 = v650;
  }

  else
  {
    v121 = *(v4 + 364);
    v126 = *(v4 + 348);
    v120 = *(v4 + 344);
    v127 = *(v4 + 328);
    v125 = *(v4 + 324);
    v123 = *(v4 + 316);
    v124 = *(v4 + 312);
    v128 = *(v4 + 384);
    v122 = *(v4 + 368);
    v635 = *(v4 + 347);
    v634 = *(v4 + 345);
    v633 = *(v4 + 367);
    v632 = *(v4 + 365);
  }

  v921 = v114;
  v510 = v514.n128_f64[0];
  v513 = 1.0 - v514.n128_f64[0];
  v922 = v116;
  v129 = (v115 * v107) + (v124 * v108);
  v923 = v118;
  v924 = v111;
  v925 = v638;
  v926 = v639;
  v927 = v117;
  v928 = v112;
  v929 = v636;
  v930 = v637;
  v931 = v113;
  v932 = v119;
  v909 = v123;
  v910 = v125;
  v911 = v127;
  v912 = v120;
  v914 = v635;
  v913 = v634;
  v915 = v126;
  v916 = v121;
  v918 = v633;
  v917 = v632;
  v919 = v122;
  v920 = v128;
  sub_18AE9582C(&v909, &v734, v514);
  v130 = v735;
  v131 = v736;
  v132 = v737;
  v133 = v738;
  v134 = v739;
  v135 = v740;
  if (v129 == 0.0 && (v734 & 0x7FFFFFFF) == 0 && (v735 & 0x7FFFFFFF7FFFFFFFLL) == 0 && (v737 & 1) != 0 && (v738 & 0x100000000) != 0 && (v740 & 1) != 0)
  {
    v136 = 0;
    v131 = 0;
    v134 = 0;
    v135 = 0;
    v130 = 0uLL;
    v132 = 0uLL;
    v137 = 1;
    v133 = 0uLL;
  }

  else
  {
    v137 = 0;
    v136 = LODWORD(v129) | (v734 << 32);
  }

  *&__dst[320] = v130;
  *&__dst[312] = v136;
  *&__dst[336] = v131;
  *&__dst[344] = v132;
  *&__dst[360] = v133;
  *&__dst[376] = v134;
  __dst[384] = v135;
  __dst[385] = v137;
  v138 = *(v2 + 497);
  if (v138 == 2)
  {
    LOBYTE(v138) = 0;
    v139 = v656;
    v630 = v654;
    v631 = v655;
    v140 = v653;
    v628 = v651;
    v629 = v652;
    v141 = 0uLL;
    v142 = 0uLL;
    v143 = 0;
    v144 = 0uLL;
    v145 = 0;
    v146 = 0uLL;
    v147 = 0uLL;
    v148 = v650;
  }

  else
  {
    v140 = *(v2 + 476);
    v146 = *(v2 + 115);
    v139 = *(v2 + 456);
    v147 = *(v2 + 110);
    v143 = *(v2 + 54);
    v144 = *(v2 + 26);
    v145 = *(v2 + 51);
    v142 = *(v2 + 98);
    v148 = *(v2 + 496);
    v141 = *(v2 + 30);
    v631 = *(v2 + 459);
    v630 = *(v2 + 457);
    v629 = *(v2 + 479);
    v628 = *(v2 + 477);
  }

  v894 = v142;
  v896 = v144;
  v895 = v145;
  v897 = v143;
  v898 = v147;
  v899 = v139;
  v900 = v630;
  v901 = v631;
  v902 = v146;
  v903 = v140;
  v904 = v628;
  v905 = v629;
  v906 = v141;
  v907 = v148;
  v908 = v138;
  v149 = *(v4 + 497);
  if (v149 == 2)
  {
    LOBYTE(v149) = 0;
    v150 = v656;
    v626 = v654;
    v627 = v655;
    v151 = v653;
    v624 = v651;
    v625 = v652;
    v152 = 0uLL;
    v153 = 0uLL;
    v154 = 0;
    v155 = 0uLL;
    v156 = 0;
    v157 = 0uLL;
    v158 = 0uLL;
    v159 = v650;
  }

  else
  {
    v151 = *(v4 + 476);
    v157 = *(v4 + 460);
    v150 = *(v4 + 456);
    v158 = *(v4 + 440);
    v154 = *(v4 + 432);
    v155 = *(v4 + 416);
    v156 = *(v4 + 408);
    v153 = *(v4 + 392);
    v159 = *(v4 + 496);
    v152 = *(v4 + 480);
    v627 = *(v4 + 459);
    v626 = *(v4 + 457);
    v625 = *(v4 + 479);
    v624 = *(v4 + 477);
  }

  v879 = v153;
  v881 = v155;
  v880 = v156;
  v882 = v154;
  v883 = v158;
  v884 = v150;
  v885 = v626;
  v886 = v627;
  v887 = v157;
  v888 = v151;
  v889 = v624;
  v890 = v625;
  v891 = v152;
  v892 = v159;
  v893 = v149;
  sub_18AE95F9C(&v879, &v741, v514);
  v160 = v741;
  v161 = v742;
  v162 = v743;
  v163 = v744;
  v164 = v746;
  v165 = v745;
  v166 = v747;
  v167 = v748;
  v168 = v749;
  v169 = v750;
  v170 = v751;
  if (v741 & 0x7FFFFFFFFFFFFFFFLL) == 0 && (v742 & 0x7FFFFFFFFFFFFFFFLL) == 0 && (v743 & 0x7FFFFFFFFFFFFFFFLL) == 0 && (v744 & 0x7FFFFFFF) == 0 && !(v744 & 0x7FFFFFFF00000000 | v745 & 0x7FFFFFFF) && !(v745 & 0x7FFFFFFF00000000 | v746 & 0x7FFFFFFF7FFFFFFFLL) && (v748 & 1) != 0 && (v749 & 0x100000000) != 0 && (v751 & 0x100) == 0 && (v751)
  {
    v160 = 0;
    v161 = 0;
    v162 = 0;
    v163 = 0;
    v165 = 0;
    v166 = 0;
    v169 = 0;
    v164 = 0uLL;
    v167 = 0uLL;
    v168 = 0uLL;
    v170 = 512;
  }

  *&__dst[392] = v160;
  *&__dst[400] = v161;
  *&__dst[408] = v162;
  *&__dst[416] = v163;
  *&__dst[432] = v164;
  *&__dst[424] = v165;
  *&__dst[448] = v166;
  *&__dst[456] = v167;
  *&__dst[472] = v168;
  *&__dst[488] = v169;
  v171 = 0;
  v172 = 0.0;
  *&__dst[496] = v170;
  v173 = 0.0;
  v174 = 0;
  if ((v2[129] & 1) == 0)
  {
    v174 = vshrn_n_s64(*(v2 + 125), 0x20uLL);
    LODWORD(v173) = *(v2 + 127);
  }

  if ((*(v4 + 516) & 1) == 0)
  {
    v171 = vshrn_n_s64(*(v4 + 500), 0x20uLL);
    LODWORD(v172) = *(v4 + 508);
  }

  v175 = vmul_n_f32(v174, v513);
  v176 = vmul_n_f32(v171, v510);
  v177 = (v173 * v513) + (v172 * v510);
  v178 = vadd_f32(v175, v176);
  v180 = v177 == 0.0 && *v178.i32 == 0.0;
  v181 = v180 && *&v178.i32[1] == 0.0;
  v182 = 0uLL;
  if (v181 != 1)
  {
    v183 = LODWORD(v177);
    v184.i64[0] = vdupq_n_s64(0x3F800000uLL).u64[0];
    v184.i64[1] = v183;
    v182 = vorrq_s8(vshll_n_s32(v178, 0x20uLL), v184);
  }

  *&__dst[500] = v182;
  __dst[516] = v181;
  v185 = 0;
  if (v2[218])
  {
    v186 = 0;
    v187 = 0;
    v188 = 0;
    v189 = 0;
    v190 = 0;
    v191 = 0;
    v192 = 0;
    v193 = 0;
    v194 = 0;
    v195 = 0;
    v196 = 0;
  }

  else
  {
    v194 = *(v2 + 216);
    v195 = *(v2 + 217);
    v192 = *(v2 + 214);
    v193 = *(v2 + 215);
    v196 = *(v2 + 106);
    v190 = *(v2 + 210);
    v191 = *(v2 + 211);
    v188 = *(v2 + 208);
    v189 = *(v2 + 209);
    v186 = *(v2 + 206);
    v187 = *(v2 + 207);
  }

  v868 = v186;
  v869 = v187;
  v870 = v188;
  v871 = v189;
  v872 = v190;
  v873 = v191;
  v874 = v196;
  v875 = v192;
  v876 = v193;
  v877 = v194;
  v878 = v195;
  if (*(v4 + 872))
  {
    v197 = 0;
    v198 = 0;
    v199 = 0;
    v200 = 0;
    v201 = 0;
    v202 = 0;
    v203 = 0;
    v204 = 0;
    v205 = 0;
    v206 = 0;
  }

  else
  {
    v198 = *(v4 + 864);
    v197 = *(v4 + 868);
    v200 = *(v4 + 856);
    v199 = *(v4 + 860);
    v185 = *(v4 + 848);
    v202 = *(v4 + 840);
    v201 = *(v4 + 844);
    v204 = *(v4 + 832);
    v203 = *(v4 + 836);
    v206 = *(v4 + 824);
    v205 = *(v4 + 828);
  }

  v862[0] = v206;
  v862[1] = v205;
  v862[2] = v204;
  v862[3] = v203;
  v862[4] = v202;
  v862[5] = v201;
  v863 = v185;
  v864 = v200;
  v865 = v199;
  v866 = v198;
  v867 = v197;
  sub_18AF6D5F0(v862, &v752, v514.n128_f64[0], *v182.i64, *&v175);
  v207 = v752;
  v208 = v753;
  v209 = v754;
  v210 = v755;
  v211 = v756;
  v212 = v757;
  if ((v752 & 0x7FFFFFFF7FFFFFFFLL) != 0 || (v753 & 0x7FFFFFFF7FFFFFFFLL) != 0 || (v754 & 0x7FFFFFFF7FFFFFFFLL) != 0 || (sub_18AFCCCB4() & 1) == 0 || (v211 & 0x7FFFFFFF7FFFFFFFLL) != 0 || (v212 & 0x7FFFFFFF7FFFFFFFLL) != 0)
  {
    v213 = 0;
  }

  else
  {
    v207 = 0;
    v208 = 0;
    v209 = 0;
    v211 = 0;
    v212 = 0;
    v210 = 0;
    v213 = 1;
  }

  *&__dst[824] = v207;
  *&__dst[832] = v208;
  *&__dst[840] = v209;
  *&__dst[848] = v210;
  *&__dst[856] = v211;
  *&__dst[864] = v212;
  __dst[872] = v213;
  v214 = v2[130];
  v215 = *(v2 + 66);
  v216 = *(v2 + 67);
  v217 = *(v2 + 136);
  v218 = *(v2 + 137);
  v219 = *(v2 + 69);
  v220 = *(v2 + 70);
  v221 = *(v2 + 71);
  v222 = *(v2 + 144);
  v223 = *(v2 + 145);
  v224 = *(v2 + 146);
  v225 = *(v2 + 147);
  v226 = *(v2 + 149);
  v227 = *(v2 + 604);
  v228 = *(v2 + 76);
  v229 = *(v2 + 77);
  v230 = *(v2 + 624);
  v231 = *(v2 + 157);
  v232 = *(v2 + 159);
  v233 = *(v2 + 644);
  v234 = *(v2 + 81);
  v235 = *(v2 + 82);
  v236 = *(v2 + 166);
  v237 = *(v2 + 167);
  v238 = *(v2 + 84);
  v239 = *(v2 + 85);
  v240 = *(v2 + 86);
  v241 = *(v2 + 174);
  v242 = *(v2 + 175);
  v243 = *(v2 + 176);
  v244 = *(v2 + 177);
  v245 = *(v2 + 179);
  v246 = *(v2 + 724);
  v247 = *(v2 + 91);
  v248 = *(v2 + 92);
  v249 = *(v2 + 744);
  *(v592.f64 + 1) = v2[131];
  *&v596[21] = *(v2 + 605);
  v596[23] = *(v2 + 607);
  v597[11] = *(v2 + 627);
  *&v597[9] = *(v2 + 625);
  *&v597[29] = *(v2 + 645);
  v597[31] = *(v2 + 647);
  v610 = *(v2 + 725);
  v611 = *(v2 + 727);
  v615 = *(v2 + 745);
  v616 = *(v2 + 747);
  v620 = *(v2 + 765);
  v250 = *(v2 + 187);
  v251 = *(v2 + 189);
  v481 = v225;
  v482 = v232;
  *&v596[4] = v225;
  v478 = v250;
  v479 = v226;
  *&v596[12] = v226;
  v484 = v231;
  *&v597[12] = v231;
  *&v597[20] = v232;
  v497 = v244;
  v607 = v244;
  v491 = v245;
  v608 = v245;
  v617 = v250;
  v477 = v251;
  v618 = v251;
  v621 = *(v2 + 767);
  v623 = *(v2 + 776);
  v252 = *(v2 + 764);
  v253 = *(v2 + 96);
  v468 = v214;
  *v592.f64 = v214;
  v469 = v216;
  v470 = v215;
  v592.f64[1] = v215;
  v593.f64[0] = v216;
  v471 = v217;
  *&v593.f64[1] = __PAIR64__(v218, v217);
  v450 = v218;
  v473 = v219;
  v474 = v220;
  *&v594 = v219;
  *(&v594 + 1) = v220;
  v475 = v221;
  v476 = v234;
  *&v595 = v221;
  v467 = v222;
  *(&v595 + 1) = __PAIR64__(v223, v222);
  v466 = v223;
  v465 = v224;
  *v596 = v224;
  v464 = v227;
  v596[20] = v227;
  v483 = v228;
  *&v596[24] = v228;
  v480 = v229;
  *v597 = v229;
  v463 = v230;
  v597[8] = v230;
  v462 = v233;
  v597[28] = v233;
  *&v598 = v234;
  *(&v598 + 1) = v235;
  v599 = v236;
  v456 = v237;
  v600 = v237;
  v601 = v238;
  v602 = v239;
  v603 = v240;
  v604 = v241;
  v605 = v242;
  v606 = v243;
  v485 = v246;
  v609 = v246;
  v500 = v247;
  v612 = v247;
  v494 = v248;
  v613 = v248;
  v488 = v249;
  v614 = v249;
  v619 = v252;
  v472 = v253;
  v622 = v253;
  if (sub_18AF4FB9C(&v592) == 1)
  {
    v494 = 0;
    v497 = 0;
    v491 = 0;
    v500 = 0;
    v477 = 0;
    v478 = 0;
    v480 = 0;
    v481 = 0;
    v479 = 0;
    v483 = 0;
    v484 = 0;
    v482 = 0;
    v455 = 0;
    v472 = 0;
    v473 = 0;
    v453 = 0;
    v454 = 0;
    v451 = 0;
    v452 = 0;
    v590 = v654;
    v591 = v655;
    v588 = v651;
    v584 = v654;
    v475 = 0;
    v476 = 0;
    v474 = 0;
    v471 = 0;
    v589 = v652;
    v469 = 0.0;
    v470 = 0.0;
    v468 = 0.0;
    v585 = v655;
    v448 = 0;
    v449 = 0;
    v582 = v651;
    v447 = 0;
    v583 = v652;
    v467 = 0;
    v466 = 0;
    v465 = 0;
    v485 = v656;
    v464 = v656;
    v488 = v653;
    v463 = v653;
    v446 = v650;
    v462 = v650;
  }

  else
  {
    v446 = v252;
    v447 = v243;
    v448 = v242;
    v449 = v241;
    v451 = v235;
    v452 = v238;
    v453 = v239;
    v454 = v240;
    v455 = v236;
    v590 = *(v2 + 605);
    v591 = *(v2 + 607);
    v588 = *(v2 + 625);
    v589 = *(v2 + 627);
    v586 = *(v2 + 645);
    v587 = *(v2 + 647);
    v585 = *(v2 + 727);
    v584 = *(v2 + 725);
    v254 = *(v2 + 745);
    v583 = *(v2 + 747);
    v582 = v254;
    v581 = *(v2 + 767);
    v580 = *(v2 + 765);
  }

  v255 = *(v4 + 520);
  v256 = *(v4 + 528);
  v257 = *(v4 + 536);
  v258 = *(v4 + 544);
  v259 = *(v4 + 548);
  v260 = *(v4 + 552);
  v261 = *(v4 + 560);
  v262 = *(v4 + 568);
  v263 = *(v4 + 576);
  v264 = *(v4 + 580);
  v265 = *(v4 + 584);
  v266 = *(v4 + 588);
  v267 = *(v4 + 596);
  v268 = *(v4 + 604);
  v269 = *(v4 + 608);
  v270 = *(v4 + 616);
  v271 = *(v4 + 624);
  v272 = *(v4 + 628);
  v273 = *(v4 + 636);
  v274 = *(v4 + 644);
  v275 = *(v4 + 648);
  v276 = *(v4 + 656);
  v277 = *(v4 + 664);
  v278 = *(v4 + 668);
  v279 = *(v4 + 672);
  v280 = *(v4 + 680);
  v281 = *(v4 + 688);
  v282 = *(v4 + 696);
  v283 = *(v4 + 700);
  v284 = *(v4 + 704);
  v285 = *(v4 + 708);
  v286 = *(v4 + 716);
  v287 = *(v4 + 724);
  v288 = *(v4 + 728);
  v289 = *(v4 + 736);
  v290 = *(v4 + 744);
  v527[1] = *(v4 + 524);
  v541 = *(v4 + 605);
  v542 = *(v4 + 607);
  v547 = *(v4 + 627);
  v546 = *(v4 + 625);
  v551 = *(v4 + 645);
  v552 = *(v4 + 647);
  v566 = *(v4 + 725);
  v567 = *(v4 + 727);
  v571 = *(v4 + 745);
  v572 = *(v4 + 747);
  v576 = *(v4 + 765);
  v291 = *(v4 + 748);
  v292 = *(v4 + 756);
  v434 = v266;
  v435 = v273;
  v538 = v266;
  v432 = v267;
  v539 = v267;
  v437 = v272;
  v548 = v272;
  v549 = v273;
  v439 = v286;
  v440 = v285;
  v563 = v285;
  v564 = v286;
  v458 = v292;
  v459 = v291;
  v573 = v291;
  v574 = v292;
  v577 = *(v4 + 767);
  v579 = *(v4 + 776);
  LOBYTE(v291) = *(v4 + 764);
  v293 = *(v4 + 768);
  v417 = v255;
  *v527 = v255;
  v420 = v256;
  v528 = v256;
  v427 = v257;
  v428 = v261;
  v529 = v257;
  v426 = v258;
  v530 = v258;
  v444 = v259;
  v531 = v259;
  v429 = v262;
  v430 = v260;
  v532 = v260;
  v533 = v261;
  v534 = v262;
  v421 = v264;
  v422 = v263;
  v535 = v263;
  v536 = v264;
  v423 = v265;
  v537 = v265;
  v418 = v271;
  v419 = v268;
  v540 = v268;
  v436 = v269;
  v543 = v269;
  v433 = v270;
  v544 = v270;
  v545 = v271;
  v550 = v274;
  v431 = v275;
  v553 = v275;
  v425 = v276;
  v554 = v276;
  v294 = v277;
  v555 = v277;
  v445 = v278;
  v556 = v278;
  v295 = v279;
  v557 = v279;
  v296 = v280;
  v558 = v280;
  v297 = v281;
  v559 = v281;
  v298 = v282;
  v560 = v282;
  v299 = v283;
  v561 = v283;
  v300 = v284;
  v562 = v284;
  v438 = v287;
  v565 = v287;
  v460 = v289;
  v461 = v288;
  v568 = v288;
  v569 = v289;
  v301 = v290;
  v570 = v290;
  v424 = v291;
  v575 = v291;
  v302 = v293;
  v578 = v293;
  if (sub_18AF4FB9C(v527) == 1)
  {
    v304 = 0;
    v305 = 0;
    v460 = 0;
    v461 = 0;
    v458 = 0;
    v459 = 0;
    v306 = 0;
    v307 = 0;
    v308 = 0;
    v309 = 0;
    v310 = 0;
    v311 = 0;
    v312 = v656;
    v313 = v653;
    v441 = 0;
    v442 = 0;
    v443 = 0;
    v314 = v650;
    v296 = 0;
    v295 = 0;
    v525 = v654;
    v526 = v655;
    v523 = v651;
    v519 = v654;
    v315 = 0;
    v316 = 0;
    v317 = 0;
    v318 = 0;
    v319 = 0;
    v320 = 0;
    v524 = v652;
    v321 = 0;
    v322 = 0.0;
    v323 = 0.0;
    v520 = v655;
    v298 = 0;
    v517 = v651;
    v299 = 0;
    v300 = 0;
    v518 = v652;
    v324 = 0;
    v325 = 0;
    v326 = 0;
    v327 = v656;
    v328 = v653;
    v329 = v650;
  }

  else
  {
    v525 = *(v4 + 605);
    v526 = *(v4 + 607);
    v523 = *(v4 + 625);
    v524 = *(v4 + 627);
    v521 = *(v4 + 645);
    v522 = *(v4 + 647);
    v520 = *(v4 + 727);
    v519 = *(v4 + 725);
    v518 = *(v4 + 747);
    v517 = *(v4 + 745);
    v516 = *(v4 + 767);
    v515 = *(v4 + 765);
    v305 = v439;
    v304 = v440;
    v313 = v301;
    v312 = v438;
    v441 = v294;
    v442 = v297;
    v443 = v302;
    v315 = v425;
    v308 = v436;
    v310 = v437;
    v306 = v434;
    v311 = v435;
    v307 = v432;
    v309 = v433;
    v319 = v430;
    v316 = v431;
    v318 = v428;
    v317 = v429;
    v321 = v427;
    v320 = v426;
    v314 = v424;
    v324 = v422;
    v326 = v423;
    v325 = v421;
    v322 = v420;
    v328 = v418;
    v327 = v419;
    v329 = v274;
    v323 = v417;
  }

  v837 = v469;
  v330 = (v468 * v513) + (v323 * v510);
  v838 = v471;
  v839 = v450;
  v331 = v507 * v470 + v322 * v514.n128_f64[0];
  v840 = v473;
  v841 = v474;
  v842 = v475;
  v843 = v467;
  v844 = v466;
  v845 = v465;
  v846 = v481;
  v847 = v479;
  v848 = v464;
  v849 = v590;
  v850 = v591;
  v851 = v483;
  v852 = v480;
  v853 = v463;
  v854 = v588;
  v855 = v589;
  v856 = v484;
  v857 = v482;
  v858 = v462;
  v859 = v586;
  v860 = v587;
  v861 = v476;
  v812 = v321;
  v813 = v320;
  v814 = v444;
  v815 = v319;
  v816 = v318;
  v817 = v317;
  v818 = v324;
  v819 = v325;
  v820 = v326;
  v821 = v306;
  v822 = v307;
  v823 = v327;
  v825 = v526;
  v824 = v525;
  v826 = v308;
  v827 = v309;
  v828 = v328;
  v830 = v524;
  v829 = v523;
  v831 = v310;
  v832 = v311;
  v833 = v329;
  v835 = v522;
  v834 = v521;
  v836 = v316;
  v303.n128_u64[0] = v514.n128_u64[0];
  sub_18AF6D728(&v812, v760, v303);
  v787 = v451;
  v788 = v455;
  v789 = v456;
  v790 = v452;
  v791 = v453;
  v792 = v454;
  v793 = v449;
  v794 = v448;
  v795 = v447;
  v796 = v497;
  v797 = v491;
  v798 = v485;
  v799 = v584;
  v800 = v585;
  v801 = v500;
  v802 = v494;
  v803 = v488;
  v804 = v582;
  v805 = v583;
  v806 = v478;
  v807 = v477;
  v808 = v446;
  v809 = v580;
  v810 = v581;
  v811 = v472;
  v762 = v315;
  v763 = v441;
  v764 = v445;
  v765 = v295;
  v766 = v296;
  v767 = v442;
  v768 = v298;
  v769 = v299;
  v770 = v300;
  v771 = v304;
  v772 = v305;
  v773 = v312;
  v775 = v520;
  v774 = v519;
  v776 = v461;
  v777 = v460;
  v778 = v313;
  v780 = v518;
  v779 = v517;
  v781 = v459;
  v782 = v458;
  v783 = v314;
  v785 = v516;
  v784 = v515;
  v786 = v443;
  sub_18AF6D728(&v762, v761, v514);
  v758 = v330;
  v759 = v331;
  sub_18AF6B330(&v758);
  v333 = *(v2 + 119);
  if (*(v2 + 960))
  {
    v334 = 0.0;
  }

  else
  {
    v334 = v2[236];
  }

  if (*(v2 + 960))
  {
    v335 = 0.0;
  }

  else
  {
    v335 = v2[237];
  }

  v336 = 0.0;
  if (*(v2 + 960))
  {
    v333 = 0.0;
  }

  v337 = *(v4 + 944);
  v338 = *(v4 + 948);
  if (*(v4 + 960))
  {
    v337 = 0.0;
    v338 = 0.0;
    v339 = 0.0;
  }

  else
  {
    v339 = *(v4 + 952);
  }

  v340 = (v334 * v513) + (v337 * v510);
  v341 = (v335 * v513) + (v338 * v510);
  v342 = v507 * v333 + v339 * v514.n128_f64[0];
  v344 = v341 == 0.0 && v340 == 0.0;
  v345 = v344 && v342 == 0.0;
  if (v345 == 1)
  {
    v346 = 0;
    v342 = 0.0;
  }

  else
  {
    v346 = LODWORD(v340) | (LODWORD(v341) << 32);
  }

  *&__dst[944] = v346;
  *&__dst[952] = v342;
  __dst[960] = v345;
  v347 = *(v2 + 122);
  v348 = v2[242];
  v349 = v2[243];
  if (*(v2 + 984))
  {
    v348 = 0.0;
    v349 = 0.0;
    v347 = 0.0;
  }

  v350 = *(v4 + 976);
  v351 = *(v4 + 968);
  v352 = *(v4 + 972);
  if (*(v4 + 984))
  {
    v351 = 0.0;
    v352 = 0.0;
    v350 = 0.0;
  }

  v353 = (v348 * v513) + (v351 * v510);
  v354 = (v349 * v513) + (v352 * v510);
  v355 = v507 * v347 + v350 * v514.n128_f64[0];
  v357 = v354 == 0.0 && v353 == 0.0;
  v358 = v357 && v355 == 0.0;
  if (v358)
  {
    v359 = 0;
  }

  else
  {
    v359 = LODWORD(v353) | (LODWORD(v354) << 32);
    v336 = v355;
  }

  *&__dst[968] = v359;
  *&__dst[976] = v336;
  v360 = 0uLL;
  __dst[984] = v358;
  v361 = 0uLL;
  v362 = 0uLL;
  if ((v2[256] & 1) == 0)
  {
    v361 = *(v2 + 248);
    v362 = *(v2 + 252);
  }

  v363 = 0uLL;
  if ((*(v4 + 1024) & 1) == 0)
  {
    v360 = *(v4 + 992);
    v363 = *(v4 + 1008);
  }

  v332.i32[0] = 0;
  v364 = vaddq_f64(vmulq_n_f64(v361, v507), vmulq_n_f64(v360, v514.n128_f64[0]));
  v365 = vaddq_f64(vmulq_n_f64(v362, v507), vmulq_n_f64(v363, v514.n128_f64[0]));
  v366 = vuzp1q_s32(vceqzq_f64(v364), vceqzq_f64(v365));
  v367 = vbicq_s8(xmmword_18AFDDBA0, v366);
  v367.i32[0] = vaddvq_s32(v367);
  v368.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v368.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  v367.i64[0] = vceqq_s8(vandq_s8(v367, v368), vandq_s8(v332, v368)).u64[0];
  v369 = vdupq_lane_s8(*v367.i8, 0);
  v370 = vdupq_n_s64(v367.i8[0] & 0xF | (16 * (v369.i8[1] & 0xF)) | ((v369.i8[2] & 0xF) << 8) & 0xFFF | ((v369.i8[3] & 0xFu) << 12) | ((v369.i8[4] & 0xF) << 16) & 0xFFFFFFFFFF0FFFFFLL | ((v369.i8[5] & 0xF) << 20) | ((v369.i8[6] & 0xF) << 24) | ((v369.i8[7] & 0xF) << 28) | ((v369.i8[8] & 0xF) << 32) | ((v369.i8[9] & 0xF) << 36) | ((v369.i8[10] & 0xF) << 40) | ((v369.i8[11] & 0xF) << 44) | ((v369.i8[12] & 0xF) << 48) | ((v369.i8[13] & 0xF) << 52) | ((v369.i8[14] & 0xF) << 56) | (v369.u8[15] << 60));
  *&__dst[992] = vbicq_s8(v364, v370);
  *&__dst[1008] = vbicq_s8(v365, v370);
  __dst[1024] = (vmaxv_u16(vmovn_s32(vmvnq_s8(v366))) & 1) == 0;
  v371 = *(v2 + 110);
  v372 = *(v2 + 111);
  v373 = *(v2 + 112);
  v374 = 0.0;
  if (*(v2 + 904))
  {
    v371 = 0.0;
    v372 = 0.0;
    v373 = 0.0;
  }

  v375 = *(v4 + 880);
  v376 = *(v4 + 888);
  v377 = *(v4 + 896);
  if (*(v4 + 904))
  {
    v375 = 0.0;
    v376 = 0.0;
    v377 = 0.0;
  }

  v378 = v507 * v371 + v375 * v514.n128_f64[0];
  v379 = v507 * v372 + v376 * v514.n128_f64[0];
  v380 = v507 * v373 + v377 * v514.n128_f64[0];
  v381 = v378 == 0.0;
  if (v379 != 0.0)
  {
    v381 = 0;
  }

  v382 = v381 && v380 == 0.0;
  if (v382)
  {
    v383 = 0.0;
  }

  else
  {
    v383 = v378;
  }

  if (v382)
  {
    v384 = 0.0;
  }

  else
  {
    v384 = v379;
  }

  if (v382)
  {
    v385 = 0.0;
  }

  else
  {
    v385 = v380;
  }

  *&__dst[880] = v383;
  *&__dst[888] = v384;
  *&__dst[896] = v385;
  __dst[904] = v382 & 1;
  v386 = *(v2 + 114);
  v387 = *(v2 + 115);
  v388 = *(v2 + 116);
  if (*(v2 + 936))
  {
    v386 = 0.0;
    v387 = 0.0;
    v388 = 0.0;
  }

  v389 = *(v4 + 912);
  v390 = *(v4 + 920);
  if (*(v4 + 936))
  {
    v389 = 0.0;
    v390 = 0.0;
  }

  else
  {
    v374 = *(v4 + 928);
  }

  v391 = v507 * v386 + v389 * v514.n128_f64[0];
  v392 = v507 * v387 + v390 * v514.n128_f64[0];
  v393 = v507 * v388 + v374 * v514.n128_f64[0];
  v394 = v391 == 0.0;
  if (v392 != 0.0)
  {
    v394 = 0;
  }

  v395 = v394 && v393 == 0.0;
  if (v395)
  {
    v396 = 0.0;
  }

  else
  {
    v396 = v391;
  }

  if (v395)
  {
    v397 = 0.0;
  }

  else
  {
    v397 = v392;
  }

  if (v395)
  {
    v398 = 0.0;
  }

  else
  {
    v398 = v393;
  }

  *&__dst[912] = v396;
  *&__dst[920] = v397;
  *&__dst[928] = v398;
  __dst[936] = v395 & 1;
  v399 = 0uLL;
  v400 = 0.0;
  v401 = 0.0;
  v402 = 0.0;
  v403 = 0.0;
  v404 = 0uLL;
  if ((v2[204] & 1) == 0)
  {
    v404 = *(v2 + 200);
    v401 = v2[196];
    v402 = v2[197];
    v403 = v2[198];
  }

  v405 = 0.0;
  v406 = 0.0;
  if ((*(v4 + 816) & 1) == 0)
  {
    v399 = *(v4 + 800);
    v400 = *(v4 + 784);
    v405 = *(v4 + 788);
    v406 = *(v4 + 792);
  }

  v407 = (v401 * v513) + (v400 * v510);
  v408 = (v402 * v513) + (v405 * v510);
  v409 = (v403 * v513) + (v406 * v510);
  v410 = vaddq_f64(vmulq_n_f64(v404, v507), vmulq_n_f64(v399, v514.n128_f64[0]));
  v412 = v408 == 0.0 && v407 == 0.0;
  v413 = v412 && v409 == 0.0;
  if (v410.f64[0] != 0.0)
  {
    v413 = 0;
  }

  if (v410.f64[1] != 0.0)
  {
    v413 = 0;
  }

  if (v413 == 1)
  {
    v414 = 0;
    v415 = 0;
    v410 = 0uLL;
  }

  else
  {
    v414 = LODWORD(v407) | (LODWORD(v408) << 32);
    v415 = LODWORD(v409);
  }

  *&__dst[784] = v414;
  *&__dst[792] = v415;
  *&__dst[800] = v410;
  __dst[816] = v413;
  return memcpy(v457, __dst, 0x401uLL);
}

float sub_18AE9582C@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v10 = a3.n128_f64[0];
  v12 = *v9;
  v13 = *a1;
  v14 = *(v9 + 8);
  v15 = *(a1 + 8);
  v16 = *(v9 + 12);
  v17 = *(v9 + 20);
  v18 = *(v9 + 28);
  if (a3.n128_f64[0] <= 0.0)
  {
    v21 = *(v9 + 32);
    v20 = *(v9 + 40);
    v22 = *(v9 + 48);
    v23 = *(v9 + 52);
    v24 = *(v9 + 60);
    v25 = *(v9 + 68);
  }

  else
  {
    if (a3.n128_f64[0] < 1.0)
    {
      if (*(v9 + 28))
      {
        if (*(a1 + 28))
        {
          v18 = 1;
          v16 = *(a1 + 12);
          v17 = *(a1 + 20);
          goto LABEL_14;
        }

        LODWORD(v34) = *(a1 + 12);
        LODWORD(v35) = HIDWORD(*(a1 + 12));
        LODWORD(v36) = *(a1 + 20);
        v29 = 0.0;
        v27 = v35;
        v26 = v34;
        v28 = v36;
      }

      else
      {
        LODWORD(v27) = HIDWORD(*(v9 + 12));
        LODWORD(v26) = *(v9 + 12);
        LODWORD(v28) = *(v9 + 20);
        LODWORD(v29) = HIDWORD(*(v9 + 20));
        v30 = 0.0;
        if (*(a1 + 28))
        {
          LODWORD(v32) = HIDWORD(*(v9 + 12));
          LODWORD(v31) = *(v9 + 12);
          LODWORD(v33) = *(v9 + 20);
LABEL_13:
          sub_18AE95CCC(v26, v27, v28, v30, v10, v31, v32, v33, v29);
          v18 = 0;
          v16 = v37 | (v38 << 32);
          v17 = v39 | (v40 << 32);
LABEL_14:
          v21 = *(a1 + 32);
          v20 = *(a1 + 40);
          if (*(v9 + 48))
          {
            if (*(a1 + 48))
            {
              v22 = 1;
              goto LABEL_23;
            }

            LODWORD(v49) = *(a1 + 32);
            LODWORD(v50) = HIDWORD(*(a1 + 32));
            LODWORD(v51) = *(a1 + 40);
            v45 = 0.0;
            v42 = v50;
            v41 = v49;
            v44 = v51;
          }

          else
          {
            v41 = *(v9 + 32);
            v42 = *(v9 + 36);
            v43 = 0.0;
            v44 = *(v9 + 40);
            v45 = *(v9 + 44);
            if (*(a1 + 48))
            {
              v46 = *(v9 + 32);
              v47 = *(v9 + 36);
              v48 = *(v9 + 40);
LABEL_22:
              sub_18AE95CCC(v41, v42, v44, v43, v10, v46, v47, v48, v45);
              v22 = 0;
              v21 = v52 | (v53 << 32);
              v20 = v54 | (v55 << 32);
LABEL_23:
              v23 = *(a1 + 52);
              v24 = *(a1 + 60);
              if (*(v9 + 68))
              {
                if (*(a1 + 68))
                {
                  v25 = 1;
                  goto LABEL_32;
                }

                LODWORD(v64) = *(a1 + 52);
                LODWORD(v65) = HIDWORD(*(a1 + 52));
                LODWORD(v66) = *(a1 + 60);
                v60 = 0.0;
                v56 = v64;
                v57 = v65;
                v59 = v66;
              }

              else
              {
                v56 = *(v9 + 52);
                v57 = *(v9 + 56);
                v58 = 0.0;
                v59 = *(v9 + 60);
                v60 = *(v9 + 64);
                if (*(a1 + 68))
                {
                  v61 = *(v9 + 52);
                  v62 = *(v9 + 56);
                  v63 = *(v9 + 60);
LABEL_31:
                  sub_18AE95CCC(v56, v57, v59, v58, v10, v61, v62, v63, v60);
                  v25 = 0;
                  v23 = v67 | (v68 << 32);
                  v24 = v69 | (v70 << 32);
                  goto LABEL_32;
                }

                LODWORD(v64) = *(a1 + 52);
                LODWORD(v65) = HIDWORD(*(a1 + 52));
                LODWORD(v66) = *(a1 + 60);
              }

              v63 = v59;
              v62 = v57;
              v61 = v56;
              LODWORD(v58) = HIDWORD(*(a1 + 60));
              v56 = v64;
              v57 = v65;
              v59 = v66;
              goto LABEL_31;
            }

            LODWORD(v49) = *(a1 + 32);
            LODWORD(v50) = HIDWORD(*(a1 + 32));
            LODWORD(v51) = *(a1 + 40);
          }

          v48 = v44;
          v47 = v42;
          v46 = v41;
          LODWORD(v43) = HIDWORD(*(a1 + 40));
          v41 = v49;
          v42 = v50;
          v44 = v51;
          goto LABEL_22;
        }

        LODWORD(v34) = *(a1 + 12);
        LODWORD(v35) = HIDWORD(*(a1 + 12));
        LODWORD(v36) = *(a1 + 20);
      }

      v33 = v28;
      v32 = v27;
      v31 = v26;
      LODWORD(v30) = HIDWORD(*(a1 + 20));
      v26 = v34;
      v27 = v35;
      v28 = v36;
      goto LABEL_13;
    }

    v21 = *(a1 + 32);
    v20 = *(a1 + 40);
    v22 = *(a1 + 48);
    v23 = *(a1 + 52);
    v24 = *(a1 + 60);
    v16 = *(a1 + 12);
    v17 = *(a1 + 20);
    v18 = *(a1 + 28);
    v25 = *(a1 + 68);
  }

LABEL_32:
  v71 = 1.0 - v10;
  v72 = v10;
  *a2 = vadd_f32(vmul_n_f32(v12, v71), vmul_n_f32(v13, v72));
  result = (v14 * v71) + (v15 * v72);
  *(a2 + 8) = result;
  *(a2 + 12) = v16;
  *(a2 + 20) = v17;
  *(a2 + 28) = v18;
  *(a2 + 32) = v21;
  *(a2 + 40) = v20;
  *(a2 + 48) = v22;
  *(a2 + 52) = v23;
  *(a2 + 60) = v24;
  *(a2 + 68) = v25;
  return result;
}

float sub_18AE95BA0@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v15 = a3.n128_f64[0];
  v16 = 1.0 - a3.n128_f64[0];
  v8 = (1.0 - a3.n128_f64[0]) * *(v5 + 48) + *(a1 + 48) * a3.n128_f64[0];
  v9 = 1.0 - a3.n128_f64[0];
  v10 = a3.n128_f64[0];
  v18 = vaddq_f64(vmulq_n_f64(*(v5 + 16), 1.0 - a3.n128_f64[0]), vmulq_n_f64(*(a1 + 16), a3.n128_f64[0]));
  v19 = vaddq_f64(vmulq_n_f64(*v5, 1.0 - a3.n128_f64[0]), vmulq_n_f64(*a1, a3.n128_f64[0]));
  v17 = vaddq_f64(vmulq_n_f64(*(v5 + 32), 1.0 - a3.n128_f64[0]), vmulq_n_f64(*(a1 + 32), a3.n128_f64[0]));
  sub_18AE9582C(a1 + 56, v20, a3);
  result = (*(v5 + 128) * v9) + (*(a1 + 128) * v10);
  v12 = v16 * *(v5 + 136) + *(a1 + 136) * v15;
  *a2 = v19;
  *(a2 + 16) = v18;
  *(a2 + 32) = v17;
  *(a2 + 48) = v8;
  v13 = v20[0];
  *(a2 + 72) = v20[1];
  v14 = *v21;
  *(a2 + 88) = v20[2];
  *(a2 + 104) = v14;
  *(a2 + 117) = *&v21[13];
  *(a2 + 56) = v13;
  *(a2 + 128) = result;
  *(a2 + 136) = v12;
  return result;
}

void sub_18AE95CCC(float a1, float a2, float a3, float a4, double a5, float a6, float a7, float a8, float a9)
{
  *&v21[8] = a8;
  *&v21[9] = a4;
  v22 = a5;
  *&v21[6] = a9;
  *&v21[7] = a3;
  v12 = sub_18AFCCCF4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v21[3] = a6;
  *&v21[4] = a7;
  sub_18AFCCE24();
  v17 = v16;
  *&v21[5] = a1;
  sub_18AFCCE24();
  v18 = 1.0 - v22;
  v19 = v22;
  *&v22 = (v17 * v18) + (v20 * v19);
  sub_18AFCCE54();
  sub_18AFCCE54();
  sub_18AFCCE34();
  sub_18AFCCE34();
  (*(v13 + 104))(v15, *MEMORY[0x1E69814D8], v12);
  sub_18AFCCDE4();
}

float32x2_t sub_18AE95ED8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = vmulq_n_f64(*a1, a3);
  v5 = vaddq_f64(vmulq_n_f64(*v3, 1.0 - a3), v4);
  *v4.f64 = 1.0 - a3;
  v6 = vaddq_f64(vmulq_n_f64(*(v3 + 16), 1.0 - a3), vmulq_n_f64(*(a1 + 16), a3));
  *a2 = v5;
  *(a2 + 16) = v6;
  v7 = vmulq_n_f64(*(v3 + 32), 1.0 - a3);
  v8 = vmulq_n_f64(*(a1 + 32), a3);
  *&a3 = a3;
  v9 = vaddq_f64(v7, v8);
  *&v8.f64[0] = vdupq_lane_s32(*&v4.f64[0], 0).u64[0];
  v10 = vmulq_n_f32(*(v3 + 48), *v4.f64);
  *&v4.f64[0] = vdupq_lane_s32(*&a3, 0).u64[0];
  v11 = vaddq_f32(v10, vmulq_n_f32(*(a1 + 48), *&a3));
  *(a2 + 32) = v9;
  *(a2 + 48) = v11;
  result = vadd_f32(vmul_f32(*(v3 + 64), *&v8.f64[0]), vmul_f32(*(a1 + 64), *&v4.f64[0]));
  *(a2 + 64) = result;
  return result;
}

uint64_t sub_18AE95F54(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_18AE95F9C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v9 = (1.0 - a3.n128_f64[0]) * *(v7 + 16) + *(a1 + 16) * a3.n128_f64[0];
  v10 = 1.0 - a3.n128_f64[0];
  v11 = a3.n128_f64[0];
  v12 = (*(v7 + 32) * v10) + (*(a1 + 32) * v11);
  v13 = (a1 + 105);
  v14 = vadd_f32(vmul_n_f32(*(v7 + 24), v10), vmul_n_f32(*(a1 + 24), v11));
  v20 = a3.n128_f64[0];
  v21 = vaddq_f64(vmulq_n_f64(*v7, 1.0 - a3.n128_f64[0]), vmulq_n_f64(*a1, a3.n128_f64[0]));
  sub_18AE9582C(a1 + 36, v22, a3);
  if (v20 >= 0.5)
  {
    v15 = v13;
  }

  else
  {
    v15 = (v7 + 105);
  }

  v16 = *v15;
  *a2 = v21;
  *(a2 + 16) = v9;
  *(a2 + 24) = v14;
  *(a2 + 32) = v12;
  v17 = v22[0];
  *(a2 + 52) = v22[1];
  result = *&v23;
  v19 = *v24;
  *(a2 + 68) = v23;
  *(a2 + 84) = v19;
  *(a2 + 97) = *&v24[13];
  *(a2 + 36) = v17;
  *(a2 + 105) = v16;
  return result;
}

unint64_t sub_18AE960A0()
{
  result = qword_1ED56A628;
  if (!qword_1ED56A628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED56A628);
  }

  return result;
}

__n128 __swift_memcpy69_4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_18AE96148(double *a1, double *a2)
{
  v4 = type metadata accessor for GlassMaterialProvider.ResolvedStyle(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BBF0, &unk_18AFDFE20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BC18, &unk_18AFDF9C0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v45 - v13;
  if (*a1 != *a2)
  {
    goto LABEL_15;
  }

  v15 = v12;
  v16 = _s11EnvironmentVMa(0);
  if ((sub_18AFCBB24() & 1) == 0 || (sub_18AFCBB24() & 1) == 0)
  {
    goto LABEL_15;
  }

  v17 = v16[7];
  if (*(a1 + v17 + 16))
  {
    if ((*(a2 + v17 + 16) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(a2 + v17 + 16) & 1) != 0 || (sub_18AFCCE14() & 1) == 0)
  {
    goto LABEL_15;
  }

  v18 = v16[8];
  v19 = *(v15 + 48);
  sub_18AE966BC(a1 + v18, v14);
  sub_18AE966BC(a2 + v18, &v14[v19]);
  v20 = *(v5 + 48);
  if (v20(v14, 1, v4) == 1)
  {
    if (v20(&v14[v19], 1, v4) == 1)
    {
      sub_18AE7BA80(v14, &qword_1EA99BBF0, &unk_18AFDFE20);
      goto LABEL_18;
    }

LABEL_14:
    sub_18AE7BA80(v14, &qword_1EA99BC18, &unk_18AFDF9C0);
    goto LABEL_15;
  }

  sub_18AE966BC(v14, v10);
  if (v20(&v14[v19], 1, v4) == 1)
  {
    sub_18AFA89F4(v10);
    goto LABEL_14;
  }

  sub_18AFA8990(&v14[v19], v7);
  v23 = _s13DesignLibrary21GlassMaterialProviderV2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_18AFA89F4(v7);
  sub_18AFA89F4(v10);
  sub_18AE7BA80(v14, &qword_1EA99BBF0, &unk_18AFDFE20);
  if (!v23)
  {
    goto LABEL_15;
  }

LABEL_18:
  LOBYTE(v21) = 0;
  v24 = v16[9];
  v25 = (a1 + v24);
  v26 = *(a1 + v24);
  v27 = (a2 + v24);
  if (v26 == *v27 && v25[1] == v27[1])
  {
    LOBYTE(v21) = *(v27 + 24);
    if (v25[3])
    {
      if (!*(v27 + 24))
      {
        return v21 & 1;
      }
    }

    else
    {
      if (v25[2] != v27[2])
      {
        LOBYTE(v21) = 1;
      }

      if (v21)
      {
        goto LABEL_15;
      }
    }

    v28 = v16[10];
    v29 = (a1 + v28);
    v30 = *(a1 + v28 + 4);
    v31 = (a2 + v28);
    v21 = *(a2 + v28 + 4);
    if (v30)
    {
      if (!v21)
      {
        return v21 & 1;
      }
    }

    else
    {
      if (*v29 != *v31)
      {
        LOBYTE(v21) = 1;
      }

      if (v21)
      {
        goto LABEL_15;
      }
    }

    v32 = v16[11];
    v33 = (a1 + v32);
    v34 = *(a1 + v32 + 25);
    v35 = a2 + v32;
    v36 = *(a2 + v32 + 25);
    if (v34)
    {
      goto LABEL_33;
    }

    if (v36)
    {
      goto LABEL_15;
    }

    v41 = v33[2];
    v42 = *(v35 + 1);
    v36 = v35[24];
    if (v33[1])
    {
      if ((v42 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else if (v42 & 1 | (*v33 != *v35))
    {
      goto LABEL_15;
    }

    if (v33[3])
    {
LABEL_33:
      if ((v36 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      LOBYTE(v21) = 0;
      if ((v35[24] & 1) != 0 || v41 != *(v35 + 2))
      {
        return v21 & 1;
      }
    }

    if (*(a1 + v16[12]) != *(a2 + v16[12]) || *(a1 + v16[13]) != *(a2 + v16[13]) || *(a1 + v16[14]) != *(a2 + v16[14]) || *(a1 + v16[15]) != *(a2 + v16[15]) || *(a1 + v16[16]) != *(a2 + v16[16]) || *(a1 + v16[17]) != *(a2 + v16[17]) || *(a1 + v16[18]) != *(a2 + v16[18]) || *(a1 + v16[19]) != *(a2 + v16[19]) || *(a1 + v16[20]) != *(a2 + v16[20]) || *(a1 + v16[21]) != *(a2 + v16[21]))
    {
      goto LABEL_15;
    }

    v37 = v16[22];
    v38 = (a1 + v37);
    v39 = *(a1 + v37 + 5);
    v40 = (a2 + v37);
    if (v39)
    {
      if (*(v40 + 5))
      {
        goto LABEL_46;
      }
    }

    else if ((*(v40 + 5) & 1) == 0)
    {
      v43 = *v38 | (*(v38 + 4) << 32);
      v44 = *v40 | (*(v40 + 4) << 32);
      if ((v43 & 0x100000000) == 0)
      {
        if ((v44 & 0x100000000) != 0 || *&v43 != *&v44)
        {
          goto LABEL_15;
        }

LABEL_46:
        LOBYTE(v21) = *(a1 + v16[23]) ^ *(a2 + v16[23]) ^ 1;
        return v21 & 1;
      }

      if ((v44 & 0x100000000) != 0)
      {
        goto LABEL_46;
      }
    }

LABEL_15:
    LOBYTE(v21) = 0;
  }

  return v21 & 1;
}

uint64_t sub_18AE966BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BBF0, &unk_18AFDFE20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t EnvironmentValues.glassMaterialContainerStyle.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BBF0, &unk_18AFDFE20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_18AE966BC(a1, &v5 - v3);
  sub_18AFAB8BC();
  sub_18AFCC494();
  return sub_18AE967D4(a1);
}

uint64_t sub_18AE967D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BBF0, &unk_18AFDFE20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

unint64_t sub_18AE96860()
{
  result = qword_1ED56ADB0;
  if (!qword_1ED56ADB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99BBF0, &unk_18AFDFE20);
    sub_18AE968E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED56ADB0);
  }

  return result;
}

unint64_t sub_18AE968E4()
{
  result = qword_1ED56ADB8;
  if (!qword_1ED56ADB8)
  {
    type metadata accessor for GlassMaterialProvider.ResolvedStyle(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED56ADB8);
  }

  return result;
}

void *sub_18AE96968(uint64_t a1)
{
  v2 = sub_18AFCCED4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v32 = v31 - v7;
  v35 = sub_18AE96C3C(MEMORY[0x1E69E7CC0]);
  v8 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7D0, &qword_18AFDC710);
  sub_18AFCDD94();
  if (v8)
  {
    v33 = (v3 + 32);
    v31[1] = v3 + 40;
    for (i = (a1 + 40); ; i += 2)
    {
      v10 = *(i - 1);
      v36 = *i;
      v37 = *(i + 4);
      v11 = v32;
      sub_18AFCCEE4();
      v12 = *v33;
      v13 = v5;
      v14 = v11;
      v15 = v2;
      (*v33)(v5, v14, v2);
      v16 = v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v16;
      v18 = sub_18AE98658(v10);
      v20 = *(v16 + 16);
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        break;
      }

      v24 = v19;
      if (*(v16 + 24) >= v23)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v29 = v18;
          sub_18AE9A7D8();
          v18 = v29;
        }
      }

      else
      {
        sub_18AFC0624(v23, isUniquelyReferenced_nonNull_native);
        v18 = sub_18AE98658(v10);
        if ((v24 & 1) != (v25 & 1))
        {
          goto LABEL_18;
        }
      }

      v2 = v15;
      v26 = v34;
      if (v24)
      {
        v5 = v13;
        (*(v3 + 40))(v34[7] + *(v3 + 72) * v18, v13, v15);
      }

      else
      {
        v34[(v18 >> 6) + 8] |= 1 << v18;
        *(v26[6] + 8 * v18) = v10;
        v5 = v13;
        v12((v26[7] + *(v3 + 72) * v18), v13, v15);
        v27 = v26[2];
        v22 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v22)
        {
          goto LABEL_17;
        }

        v26[2] = v28;
      }

      v35 = v26;
      if (!--v8)
      {
        return v26;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    result = sub_18AFCE274();
    __break(1u);
  }

  else
  {
    return v35;
  }

  return result;
}

unint64_t sub_18AE96C3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BCB0, &unk_18AFE0650);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7A0, &qword_18AFE0020);
    v7 = sub_18AFCE224();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_18AE83A40(v9, v5, &qword_1EA99BCB0, &unk_18AFE0650);
      v11 = *v5;
      result = sub_18AE98658(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = sub_18AFCCED4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_18AE96E30()
{
  result = qword_1ED56A638;
  if (!qword_1ED56A638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED56A638);
  }

  return result;
}

uint64_t sub_18AE96EAC@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_18AFCD2B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  (*(v5 + 16))(&v20 - v10, a1, v4, v9);
  sub_18AFCD224();
  sub_18AE8C130(&qword_1EA99BDB0, MEMORY[0x1E69818A0], MEMORY[0x1E69818A8]);
  v12 = sub_18AFCDDF4();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if (v12)
  {
    v13(a1, v4);
    result = (v13)(v11, v4);
    v15 = 0;
  }

  else
  {
    sub_18AFCD214();
    v16 = sub_18AFCDDF4();
    v13(v7, v4);
    if (v16)
    {
      v13(a1, v4);
      result = (v13)(v11, v4);
      v15 = 1;
    }

    else
    {
      sub_18AFCD234();
      v17 = sub_18AFCDDF4();
      v13(v7, v4);
      if (v17)
      {
        v13(a1, v4);
        result = (v13)(v11, v4);
        v15 = 2;
      }

      else
      {
        sub_18AFCD284();
        v18 = sub_18AFCDDF4();
        v13(v7, v4);
        if (v18)
        {
          v13(a1, v4);
          result = (v13)(v11, v4);
          v15 = 3;
        }

        else
        {
          sub_18AFCD264();
          v19 = sub_18AFCDDF4();
          v13(a1, v4);
          v13(v7, v4);
          result = (v13)(v11, v4);
          if (v19)
          {
            v15 = 4;
          }

          else
          {
            v15 = 0;
          }
        }
      }
    }
  }

  *a2 = v15;
  return result;
}

double sub_18AE971F4()
{
  result = 0.0;
  xmmword_1ED56C8F0 = xmmword_18AFE34E0;
  return result;
}

uint64_t sub_18AE97208(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v17 = sub_18AFCD774();
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v23 = MEMORY[0x1E69E7CC0];
  sub_18AE975A8(0, v9, 0);
  v10 = v23;
  v16 = v6 + 32;
  for (i = (a3 + 56); ; i += 8)
  {
    v12 = *i;
    v20 = *(i - 3);
    v21 = *(i - 1);
    v22 = v12;
    v18(&v20);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v23 = v10;
    v14 = *(v10 + 16);
    v13 = *(v10 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_18AE975A8((v13 > 1), v14 + 1, 1);
      v10 = v23;
    }

    *(v10 + 16) = v14 + 1;
    (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v8, v17);
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

void *sub_18AE973CC(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B698, &qword_18AFDB760);
  v10 = *(sub_18AFCD774() - 8);
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
  v15 = *(sub_18AFCD774() - 8);
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

void *sub_18AE975A8(void *a1, int64_t a2, char a3)
{
  result = sub_18AE973CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_18AE975C8()
{
  result = qword_1ED56A620;
  if (!qword_1ED56A620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED56A620);
  }

  return result;
}

unint64_t sub_18AE97620()
{
  result = qword_1ED56A610;
  if (!qword_1ED56A610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED56A610);
  }

  return result;
}

float32x4_t sub_18AE97674@<Q0>(float32x4_t *a1@<X8>, __int32 a5@<S3>)
{
  sub_18AFCCE24();
  v8 = v7;
  sub_18AFCCE54();
  v10 = v9;
  sub_18AFCCE34();
  *v11.i32 = 1.0 - *&a5;
  v12 = v5[1];
  v13 = v11;
  v13.i32[1] = a5;
  v14 = vzip1q_s32(v13, v13);
  v14.f32[2] = 1.0 - *&a5;
  v12.i64[1] = v5[1].u32[2];
  v15 = vmulq_f32(v14, v12);
  v16 = vdupq_laneq_s32(v15, 3);
  v17 = v16;
  v17.f32[0] = v8 * *&a5;
  v17.f32[3] = (1.0 - *&a5) * v5[1].f32[3];
  *a1 = vaddq_f32(v16, vmulq_n_f32(*v5, 1.0 - *&a5));
  a1[1] = vaddq_f32(v15, v17);
  v18 = vdupq_lane_s32(__PAIR64__(v10 * *&a5, v16.u32[0]), 0);
  v18.f32[1] = v10 * *&a5;
  v19 = v16;
  *&v19.i32[1] = v20 * *&a5;
  v21 = vaddq_f32(vzip1q_s32(v19, vdupq_lane_s32(*v19.i8, 0)), vmulq_n_f32(v5[3], 1.0 - *&a5));
  a1[2] = vaddq_f32(v18, vmulq_n_f32(v5[2], 1.0 - *&a5));
  a1[3] = v21;
  v16.i32[1] = a5;
  result = vaddq_f32(vzip1q_s32(v16, vdupq_lane_s32(*v16.f32, 0)), vmulq_n_f32(v5[4], 1.0 - *&a5));
  a1[4] = result;
  return result;
}

char *sub_18AE977B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B680, &qword_18AFDB748);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 32 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

double sub_18AE978B4(float a1, float a2, float a3, float a4)
{
  sub_18AFCCE24();
  v5 = v4;
  sub_18AFCCE54();
  v7 = v6;
  sub_18AFCCE34();
  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  if (v8 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  if (v5 > v7)
  {
    v11 = v5;
  }

  else
  {
    v11 = v7;
  }

  if (v11 > v8)
  {
    v12 = v11;
  }

  else
  {
    v12 = v8;
  }

  v13 = 0.0;
  if (vabds_f32(v12, v10) >= 0.00034527)
  {
    v14 = v12 - v10;
    if (v12 == v5)
    {
      v15 = 0.0;
      if (v7 < v8)
      {
        v15 = 6.0;
      }

      v13 = v15 + ((v7 - v8) / v14);
    }

    else
    {
      if (v12 == v7)
      {
        v16 = (v8 - v5) / v14;
        v17 = 2.0;
      }

      else
      {
        v16 = (v5 - v7) / v14;
        v17 = 4.0;
      }

      v13 = v16 + v17;
    }
  }

  return (v13 * 60.0) * 0.0174532925;
}

unint64_t sub_18AE97A00()
{
  result = qword_1ED56A618;
  if (!qword_1ED56A618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED56A618);
  }

  return result;
}

uint64_t sub_18AE97A54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_18AE97AA0(double a1, float a2, float a3, float a4)
{
  v7 = sub_18AFCCCF4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 != 0.0)
  {
    v12 = a1 * 57.2957795 / 360.0;
    if (a3 < 0.5)
    {
      v13 = (a2 + 1.0) * a3;
    }

    else
    {
      v13 = (a2 + a3) - (a2 * a3);
    }

    v14 = (a3 + a3) - v13;
    sub_18AE97D4C(v14, v13, v12 + 0.33333);
    sub_18AE97D4C(v14, v13, v12);
    v9.n128_f32[0] = sub_18AE97D4C(v14, v13, v12 + -0.33333);
    if (v9.n128_f32[0] < 0.0)
    {
      v9.n128_f32[0] = 0.0;
    }
  }

  (*(v8 + 104))(v11, *MEMORY[0x1E69814D8], v7, v9);
  sub_18AFCCDE4();
}

uint64_t _s13DesignLibrary21GlassMaterialProviderV8ResolvedV14AnimatableDataV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 32);
  v4 = *(a2 + 8);
  v5 = *(a2 + 32);
  sub_18AF5CA0C(*a1, *a2);
  v7 = v6;
  v8 = 0;
  if ((v7 & 1) != 0 && v2 == v4)
  {
    sub_18AE960A0();
    if (sub_18AFCBDF4())
    {
      sub_18AE97DE0(v3, v5);
    }

    else
    {
      v8 = 0;
    }
  }

  return v8 & 1;
}

float sub_18AE97D4C(float result, float a2, float a3)
{
  if (a3 < 0.0)
  {
    a3 = a3 + 1.0;
  }

  if (a3 > 1.0)
  {
    a3 = a3 + -1.0;
  }

  if (a3 < 0.16667)
  {
    v3 = (a2 - result) * 6.0;
    return (v3 * a3) + result;
  }

  if (a3 < 0.5)
  {
    return a2;
  }

  if (a3 < 0.66667)
  {
    v3 = (a2 - result) * (0.66667 - a3);
    a3 = 6.0;
    return (v3 * a3) + result;
  }

  return result;
}

void sub_18AE97DE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_18AFCCED4();
  v52 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7A8, &unk_18AFE0660);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v54 = a2;
  if (a1 != a2 && *(a1 + 16) == *(v54 + 16))
  {
    v46 = (&v43 - v10);
    v47 = v11;
    v13 = 0;
    v44 = a1;
    v14 = *(a1 + 64);
    v43 = a1 + 64;
    v15 = 1 << *(a1 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & v14;
    v18 = (v15 + 63) >> 6;
    v48 = v52 + 16;
    v49 = (v52 + 32);
    v45 = (v52 + 8);
    while (1)
    {
      v19 = v47;
      if (!v17)
      {
        break;
      }

      v50 = (v17 - 1) & v17;
      v20 = __clz(__rbit64(v17)) | (v13 << 6);
LABEL_16:
      v25 = *(*(v44 + 48) + 8 * v20);
      v27 = v51;
      v26 = v52;
      (*(v52 + 16))(v51, *(v44 + 56) + *(v52 + 72) * v20, v4, v12);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7B0, &qword_18AFDC6F8);
      v29 = *(v28 + 48);
      *v19 = v25;
      (*(v26 + 32))(&v19[v29], v27, v4);
      (*(*(v28 - 8) + 56))(v19, 0, 1, v28);
LABEL_17:
      v30 = v19;
      v31 = v46;
      sub_18AE9A768(v30, v46, &qword_1EA99B7A8, &unk_18AFE0660);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7B0, &qword_18AFDC6F8);
      if ((*(*(v32 - 8) + 48))(v31, 1, v32) == 1)
      {
        return;
      }

      v33 = *(v32 + 48);
      v34 = *v31;
      (*v49)(v53, v31 + v33, v4);
      v35 = sub_18AE98658(v34);
      if ((v36 & 1) == 0)
      {
        (*v45)(v53, v4);
        return;
      }

      v37 = v51;
      v38 = v52;
      (*(v52 + 16))(v51, *(v54 + 56) + *(v52 + 72) * v35, v4);
      sub_18AE97A54(&qword_1EA9978D0, MEMORY[0x1E6981598], MEMORY[0x1E69815A0]);
      v39 = v53;
      v40 = sub_18AFCDDF4();
      v41 = *(v38 + 8);
      v41(v37, v4);
      v41(v39, v4);
      v17 = v50;
      if ((v40 & 1) == 0)
      {
        return;
      }
    }

    if (v18 <= v13 + 1)
    {
      v21 = v13 + 1;
    }

    else
    {
      v21 = v18;
    }

    v22 = v21 - 1;
    while (1)
    {
      v23 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v23 >= v18)
      {
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7B0, &qword_18AFDC6F8);
        (*(*(v42 - 8) + 56))(v19, 1, 1, v42);
        v50 = 0;
        v13 = v22;
        goto LABEL_17;
      }

      v24 = *(v43 + 8 * v23);
      ++v13;
      if (v24)
      {
        v50 = (v24 - 1) & v24;
        v20 = __clz(__rbit64(v24)) | (v23 << 6);
        v13 = v23;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

__n128 sub_18AE982D0@<Q0>(uint64_t a1@<X8>, float a5@<S3>, float a9@<S7>)
{
  sub_18AFCCE24();
  v28 = v12;
  sub_18AFCCE24();
  v24 = 1.0 - (1.0 - a9);
  v14 = (1.0 - a9) * 0.0;
  v15 = 1.0 - (1.0 - a5);
  v29 = ((1.0 - a5) + (v15 * v28)) - (v14 + (v24 * v13));
  v30 = v14 + (v24 * v13);
  sub_18AFCCE54();
  v25 = v16;
  sub_18AFCCE54();
  v26 = ((1.0 - a5) + (v15 * v25)) - (v14 + (v24 * v17));
  v27 = v14 + (v24 * v17);
  sub_18AFCCE34();
  v19 = v18;
  sub_18AFCCE34();
  v21 = ((1.0 - a9) * 0.0) + (v24 * v20);
  v32 = v29;
  v33 = 0;
  v34 = 0;
  v35 = v30;
  v36 = 0;
  v37 = v26;
  v38 = 0;
  v39 = v27;
  v40 = 0;
  v41 = ((1.0 - a5) + (v15 * v19)) - v21;
  v42 = 0;
  v43 = v21;
  v44 = xmmword_18AFDC160;
  v45 = 0;
  sub_18AFCBCB4(v31);
  v22 = v31[3];
  *(a1 + 32) = v31[2];
  *(a1 + 48) = v22;
  *(a1 + 64) = v31[4];
  result = v31[1];
  *a1 = v31[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_18AE984DC(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_18AE98658(uint64_t a1)
{
  sub_18AFCE294();
  MEMORY[0x18CFED610](a1);
  v2 = sub_18AFCE2E4();

  return sub_18AE986C4(a1, v2);
}

unint64_t sub_18AE986C4(uint64_t a1, uint64_t a2)
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

void *static GlassMaterialProvider.Resolved.AnimatableData.- infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = sub_18AFB3680(*a1, *a2);
  v12 = v11;
  result = sub_18AE987C8(v6, v9);
  *a3 = v10;
  *(a3 + 8) = v12;
  *(a3 + 16) = v4 - v7;
  *(a3 + 24) = v5 - v8;
  *(a3 + 32) = result;
  return result;
}

void *sub_18AE987C8(void *a1, uint64_t a2)
{
  v4 = sub_18AFCCED4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v92 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v87 = &v81 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v86 = &v81 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v85 = &v81 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v81 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v93 = &v81 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7A8, &unk_18AFE0660);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v90 = (&v81 - v22);
  v23 = *(a2 + 64);
  v82 = a2 + 64;
  v24 = 1 << *(a2 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v23;
  v81 = (v24 + 63) >> 6;
  v91 = v5 + 16;
  v97 = (v5 + 32);
  v94 = (v5 + 8);
  v83 = (v5 + 40);

  v88 = a2;

  v27 = 0;
  v89 = v15;
  v95 = v20;
  if (v26)
  {
    while (1)
    {
      v28 = v15;
      v29 = v27;
LABEL_13:
      v32 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v33 = v32 | (v29 << 6);
      v34 = *(*(v88 + 48) + 8 * v33);
      v35 = v93;
      (*(v5 + 16))(v93, *(v88 + 56) + *(v5 + 72) * v33, v4);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7B0, &qword_18AFDC6F8);
      v37 = *(v36 + 48);
      v38 = v95;
      *v95 = v34;
      v20 = v38;
      (*(v5 + 32))(&v38[v37], v35, v4);
      (*(*(v36 - 8) + 56))(v20, 0, 1, v36);
      v31 = v29;
LABEL_14:
      v39 = v90;
      sub_18AE9A768(v20, v90, &qword_1EA99B7A8, &unk_18AFE0660);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7B0, &qword_18AFDC6F8);
      if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
      {

        return a1;
      }

      v96 = v31;
      v41 = *v39;
      v42 = v28;
      v43 = *v97;
      (*v97)(v42, v39 + *(v40 + 48), v4);
      if (a1[2])
      {
        v44 = sub_18AE98658(v41);
        if (v45)
        {
          break;
        }
      }

      v58 = v5;
      v59 = v93;
      sub_18AFCCEB4();
      v60 = v87;
      sub_18AFCCE94();
      v61 = *v94;
      (*v94)(v59, v4);
      v62 = v4;
      v43(v92, v60, v4);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v98 = a1;
      v65 = sub_18AE98658(v41);
      v66 = a1[2];
      v67 = (v64 & 1) == 0;
      v68 = v66 + v67;
      if (__OFADD__(v66, v67))
      {
        goto LABEL_44;
      }

      v69 = v64;
      if (a1[3] >= v68)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_18AE9A7D8();
        }
      }

      else
      {
        sub_18AFC0624(v68, isUniquelyReferenced_nonNull_native);
        v70 = sub_18AE98658(v41);
        if ((v69 & 1) != (v71 & 1))
        {
          goto LABEL_48;
        }

        v65 = v70;
      }

      v4 = v62;
      a1 = v98;
      v5 = v58;
      if ((v69 & 1) == 0)
      {
        v98[(v65 >> 6) + 8] |= 1 << v65;
        *(a1[6] + 8 * v65) = v41;
        v43((a1[7] + *(v58 + 72) * v65), v92, v4);
        v15 = v89;
        v61(v89, v4);
        v72 = a1[2];
        v54 = __OFADD__(v72, 1);
        v73 = v72 + 1;
        v20 = v95;
        if (v54)
        {
          goto LABEL_45;
        }

        goto LABEL_38;
      }

      (*(v58 + 40))(v98[7] + *(v58 + 72) * v65, v92, v4);
      v15 = v89;
      v61(v89, v4);
      v20 = v95;
      v27 = v96;
LABEL_40:
      if (!v26)
      {
        goto LABEL_5;
      }
    }

    v46 = a1[7];
    v84 = *(v5 + 72);
    v47 = *(v5 + 16);
    v48 = v85;
    v47(v85, v46 + v84 * v44, v4);
    MEMORY[0x18CFEC210](v48, v42);
    v47(v86, v48, v4);
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v98 = a1;
    v50 = sub_18AE98658(v41);
    v52 = a1[2];
    v53 = (v51 & 1) == 0;
    v54 = __OFADD__(v52, v53);
    v55 = v52 + v53;
    if (v54)
    {
      goto LABEL_46;
    }

    v56 = v51;
    if (a1[3] >= v55)
    {
      v20 = v95;
      if ((v49 & 1) == 0)
      {
        v79 = v50;
        sub_18AE9A7D8();
        v50 = v79;
      }
    }

    else
    {
      sub_18AFC0624(v55, v49);
      v50 = sub_18AE98658(v41);
      v20 = v95;
      if ((v56 & 1) != (v57 & 1))
      {
        goto LABEL_48;
      }
    }

    v15 = v89;
    v75 = v84;
    a1 = v98;
    if (v56)
    {
      (*v83)(v98[7] + v50 * v84, v86, v4);
      v76 = *v94;
      (*v94)(v85, v4);
      v76(v15, v4);
    }

    else
    {
      v98[(v50 >> 6) + 8] |= 1 << v50;
      *(a1[6] + 8 * v50) = v41;
      v43((a1[7] + v50 * v75), v86, v4);
      v77 = *v94;
      (*v94)(v85, v4);
      v77(v15, v4);
      v78 = a1[2];
      v54 = __OFADD__(v78, 1);
      v73 = v78 + 1;
      if (v54)
      {
        goto LABEL_47;
      }

LABEL_38:
      a1[2] = v73;
    }

    v27 = v96;
    goto LABEL_40;
  }

LABEL_5:
  if (v81 <= v27 + 1)
  {
    v30 = v27 + 1;
  }

  else
  {
    v30 = v81;
  }

  v31 = v30 - 1;
  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v81)
    {
      v28 = v15;
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7B0, &qword_18AFDC6F8);
      (*(*(v74 - 8) + 56))(v20, 1, 1, v74);
      v26 = 0;
      goto LABEL_14;
    }

    v26 = *(v82 + 8 * v29);
    ++v27;
    if (v26)
    {
      v28 = v15;
      goto LABEL_13;
    }
  }

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
  result = sub_18AFCE274();
  __break(1u);
  return result;
}

uint64_t sub_18AE9902C(double *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(a1 + 4);
  v9 = sub_18AFB3680(*a1, *a2);
  v11 = v10;
  v12 = sub_18AE987C8(v8, v5);

  *a1 = v9;
  *(a1 + 2) = v11;
  a1[2] = v6 - v3;
  a1[3] = v7 - v4;
  *(a1 + 4) = v12;
  return result;
}

void sub_18AE990E0(uint64_t a1)
{
  v2 = sub_18AFCCED4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7B0, &qword_18AFDC6F8);
  MEMORY[0x1EEE9AC00](v27);
  v26 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v25 - v8;
  v10 = a1 + 64;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 64);
  v14 = (v11 + 63) >> 6;
  v25[1] = v3 + 32;
  v25[2] = v3 + 16;
  v25[0] = v3 + 8;
  v28 = a1;

  v15 = 0;
  for (i = 0.0; v13; i = i + v24)
  {
    v17 = v15;
LABEL_9:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v19 = v18 | (v17 << 6);
    v20 = v27;
    v21 = *(*(v28 + 48) + 8 * v19);
    (*(v3 + 16))(&v9[*(v27 + 48)], *(v28 + 56) + *(v3 + 72) * v19, v2);
    *v9 = v21;
    v22 = v26;
    sub_18AE9ABC4(v9, v26);
    (*(v3 + 32))(v5, v22 + *(v20 + 48), v2);
    sub_18AFCCE74();
    v24 = v23;
    (*(v3 + 8))(v5, v2);
    sub_18AE9AC34(v9);
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v14)
    {

      return;
    }

    v13 = *(v10 + 8 * v17);
    ++v15;
    if (v13)
    {
      v15 = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall GlassMaterialProvider.Resolved.AnimatableData.scale(by:)(Swift::Double by)
{
  v42 = *&by;
  v40 = sub_18AFCCED4();
  v2 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v5;
  sub_18AFB0CFC(*&v42);
  *(v1 + 16) = vmulq_n_f64(*(v1 + 16), *&v42);
  v31 = v1;
  v6 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7A0, &qword_18AFE0020);
  v7 = sub_18AFCE204();
  v8 = v7;
  v9 = 0;
  v11 = v6 + 64;
  v10 = *(v6 + 64);
  v41 = v6;
  v12 = 1 << *(v6 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v10;
  v15 = (v12 + 63) >> 6;
  v34 = v2 + 8;
  v35 = v2 + 16;
  v39 = v2;
  v32 = v2 + 32;
  v33 = v7 + 64;
  v36 = v7;
  if (v14)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v14));
      v43 = (v14 - 1) & v14;
LABEL_10:
      v19 = v16 | (v9 << 6);
      v20 = v40;
      v21 = *(v41 + 56);
      v22 = *(*(v41 + 48) + 8 * v19);
      v44 = *(v2 + 72) * v19;
      v45 = v22;
      v23 = *(v2 + 16);
      v24 = v37;
      v23(v37, v21 + v44, v40);
      v25 = v38;
      v23(v38, v24, v20);
      sub_18AFCCEC4();
      (*(v2 + 8))(v24, v20);
      *(v33 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v8 = v36;
      v26 = v44;
      *(*(v36 + 48) + 8 * v19) = v45;
      (*(v2 + 32))(*(v8 + 56) + v26, v25, v20);
      v27 = *(v8 + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      *(v8 + 16) = v29;
      v14 = v43;
      if (!v43)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        *(v31 + 32) = v8;
        return;
      }

      v18 = *(v11 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v43 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_18AE99654(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 2);
  v5 = a1[4];

  *v1 = v3;
  *(v1 + 8) = v4;
  sub_18AFCDC94();
  v6 = sub_18AE996F0(v5);

  *(v2 + 88) = v6;
}

char *sub_18AE996F0(uint64_t a1)
{
  v32 = sub_18AFCCED4();
  v34 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_18AFCCCF4();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_18AE977B4(0, *(a1 + 16), 0, MEMORY[0x1E69E7CC0]);
  v8 = *(a1 + 16);
  if (!v8 || (v6 = sub_18AE9AA40(*(a1 + 16), 0), v9 = sub_18AE9AAC4(&v36, v6 + 4, v8, a1), v10 = v36, v30 = v39, v31 = v38, , sub_18AE9A7D0(v10), v9 == v8))
  {
    *&v36 = v6;
    sub_18AE99A94(&v36);
    v11 = v36;
    v12 = *(v36 + 16);
    if (!v12)
    {
LABEL_10:

      return v7;
    }

    LODWORD(v31) = *MEMORY[0x1E69814D8];
    v13 = *(v35 + 104);
    v35 += 104;
    v29 = v34 + 16;
    v30 = v13;
    v8 = 32;
    while (1)
    {
      v14 = *(v11 + v8);
      v30(v5, v31, v33);
      sub_18AFCCDE4();
      *&v36 = __PAIR64__(v16, v15);
      *(&v36 + 1) = __PAIR64__(v18, v17);
      LODWORD(v37) = 2143289344;
      if (!*(a1 + 16))
      {
        break;
      }

      v19 = sub_18AE98658(v14);
      if ((v20 & 1) == 0)
      {
        goto LABEL_12;
      }

      (*(v34 + 16))(v3, *(a1 + 56) + *(v34 + 72) * v19, v32);
      sub_18AFCCEF4();
      v21 = v36;
      v22 = v37;
      v24 = *(v7 + 2);
      v23 = *(v7 + 3);
      if (v24 >= v23 >> 1)
      {
        v28 = v36;
        v26 = sub_18AE977B4((v23 > 1), v24 + 1, 1, v7);
        v21 = v28;
        v7 = v26;
      }

      *(v7 + 2) = v24 + 1;
      v25 = &v7[32 * v24];
      *(v25 + 4) = v14;
      *(v25 + 40) = v21;
      *(v25 + 14) = v22;
      v8 += 8;
      if (!--v12)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  __break(1u);

  __break(1u);
  return result;
}

double GlassMaterialProvider.Resolved.AnimatableData.magnitudeSquared.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_18AFB0F84(*v0, *(v0 + 8));
  v5 = v4 + v1 * v1 + v2 * v2;
  sub_18AE990E0(v3);
  return v5 + v6;
}

void sub_18AE99A94(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_18AE99A80(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = sub_18AFCE244();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = sub_18AFCDEB4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = (v7 + 32);
    v16[1] = v6;
    sub_18AF5D220(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_18AE99BC8(__n128 a1)
{
  v3 = a1.n128_f64[0];
  sub_18AFB0CFC(a1.n128_f64[0]);
  *(v1 + 16) = vmulq_n_f64(*(v1 + 16), v3);
  v2 = sub_18AF5D974(*(v1 + 32), v3);

  *(v1 + 32) = v2;
}

void sub_18AE99C2C(double *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(a1 + 4);
  v9 = sub_18AFB3DC4(*a1, *a2);
  v11 = v10;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v8;
  sub_18AE99F20(v5, sub_18AE9AC9C, 0, isUniquelyReferenced_nonNull_native, &v14);

  v13 = v14;
  *a1 = v9;
  *(a1 + 2) = v11;
  a1[2] = v3 + v6;
  a1[3] = v4 + v7;
  *(a1 + 4) = v13;
}

char *sub_18AE99D2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7C8, &qword_18AFDC708);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void static GlassMaterialProvider.Resolved.AnimatableData.+ infix(_:_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = sub_18AFB3DC4(*a1, *a2);
  v12 = v11;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = v6;
  sub_18AE99F20(v9, sub_18AE9AC9C, 0, isUniquelyReferenced_nonNull_native, &v15);

  v14 = v15;
  *a3 = v10;
  *(a3 + 8) = v12;
  *(a3 + 16) = v4 + v7;
  *(a3 + 24) = v5 + v8;
  *(a3 + 32) = v14;
}

uint64_t sub_18AE99F20(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v64 = a5;
  v9 = sub_18AFCCED4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v53 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v52 = v50 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v56 = v50 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BD18, &qword_18AFE0648);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = (v50 - v17);
  v19 = -1 << *(a1 + 32);
  v20 = ~v19;
  v21 = *(a1 + 64);
  v22 = -v19;
  v57 = a1;
  v58 = a1 + 64;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v59 = v20;
  v60 = 0;
  v61 = v23 & v21;
  v62 = a2;
  v63 = a3;
  v24 = (v10 + 32);
  v50[3] = v10 + 8;
  v50[4] = v10 + 16;
  v55 = v10;
  v50[2] = v10 + 40;

  v50[0] = a3;

  v54 = v18;
  v51 = (v10 + 32);
  while (1)
  {
    sub_18AE9A34C(v18);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BCB0, &unk_18AFE0650);
    if ((*(*(v33 - 8) + 48))(v18, 1, v33) == 1)
    {
      sub_18AE9A7D0(v57);
    }

    v34 = *v18;
    v35 = *v24;
    (*v24)(v56, v18 + *(v33 + 48), v9);
    v36 = *v64;
    v38 = sub_18AE98658(v34);
    v39 = v36[2];
    v40 = (v37 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      break;
    }

    v42 = v37;
    if (v36[3] >= v41)
    {
      if ((a4 & 1) == 0)
      {
        sub_18AE9A7D8();
      }
    }

    else
    {
      sub_18AFC0624(v41, a4 & 1);
      v43 = sub_18AE98658(v34);
      if ((v42 & 1) != (v44 & 1))
      {
        goto LABEL_20;
      }

      v38 = v43;
    }

    v45 = *v64;
    if (v42)
    {
      v25 = v55;
      v26 = *(v55 + 72) * v38;
      v27 = v53;
      (*(v55 + 16))(v53, v45[7] + v26, v9);
      v28 = v52;
      v29 = v9;
      v30 = v56;
      sub_18AFCCE84();
      v31 = *(v25 + 8);
      v31(v27, v29);
      v32 = v30;
      v9 = v29;
      v31(v32, v29);
      v24 = v51;
      (*(v25 + 40))(v45[7] + v26, v28, v29);
    }

    else
    {
      v45[(v38 >> 6) + 8] |= 1 << v38;
      *(v45[6] + 8 * v38) = v34;
      v35((v45[7] + *(v55 + 72) * v38), v56, v9);
      v46 = v45[2];
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
        goto LABEL_19;
      }

      v45[2] = v48;
    }

    a4 = 1;
    v18 = v54;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_18AFCE274();
  __break(1u);
  return result;
}

void sub_18AE9A34C(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7B0, &qword_18AFDC6F8);
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v40 - v4;
  v5 = sub_18AFCCED4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7A8, &unk_18AFE0660);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v44 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v40 - v12;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v45 = a1;
  v43 = v18;
  if (v19)
  {
    v20 = v17;
LABEL_10:
    v24 = __clz(__rbit64(v19)) | (v20 << 6);
    v25 = *(*(v15 + 48) + 8 * v24);
    v26 = (v19 - 1) & v19;
    (*(v6 + 16))(v8, *(v15 + 56) + *(v6 + 72) * v24, v5, v13);
    v27 = v42;
    v28 = *(v42 + 48);
    *v14 = v25;
    v29 = v8;
    v30 = v27;
    (*(v6 + 32))(&v14[v28], v29, v5);
    v31 = v41;
    (*(v41 + 56))(v14, 0, 1, v30);
    v23 = v20;
LABEL_11:
    *v1 = v15;
    v1[1] = v16;
    v32 = v44;
    v1[2] = v43;
    v1[3] = v23;
    v1[4] = v26;
    v33 = v1[5];
    sub_18AE9A768(v14, v32, &qword_1EA99B7A8, &unk_18AFE0660);
    v34 = 1;
    v35 = (*(v31 + 48))(v32, 1, v30);
    v36 = v45;
    if (v35 != 1)
    {
      v37 = v32;
      v38 = v40;
      sub_18AE9A768(v37, v40, &qword_1EA99B7B0, &qword_18AFDC6F8);
      v33(v38);
      sub_18AE7BA80(v38, &qword_1EA99B7B0, &qword_18AFDC6F8);
      v34 = 0;
    }

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BCB0, &unk_18AFE0650);
    (*(*(v39 - 8) + 56))(v36, v34, 1, v39);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v31 = v41;
        v30 = v42;
        (*(v41 + 56))(&v40 - v12, 1, 1, v42, v13);
        v26 = 0;
        goto LABEL_11;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

double sub_18AE9A714()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_18AFB0F84(*v0, *(v0 + 8));
  v5 = v4 + v1 * v1 + v2 * v2;
  sub_18AE990E0(v3);
  return v5 + v6;
}

uint64_t sub_18AE9A768(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void *sub_18AE9A7D8()
{
  v1 = v0;
  v29 = sub_18AFCCED4();
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7A0, &qword_18AFE0020);
  v3 = *v0;
  v4 = sub_18AFCE204();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
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

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_18AE9AA40(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7C8, &qword_18AFDC708);
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
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_18AE9AAC4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_18AE9ABC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7B0, &qword_18AFDC6F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AE9AC34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7B0, &qword_18AFDC6F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18AE9AC9C@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7B0, &qword_18AFDC6F8) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BCB0, &unk_18AFE0650) + 48);
  v6 = *a1;
  v7 = sub_18AFCCED4();
  result = (*(*(v7 - 8) + 16))(&a2[v5], &a1[v4], v7);
  *a2 = v6;
  return result;
}

unint64_t sub_18AE9ADC0()
{
  result = qword_1ED56A458;
  if (!qword_1ED56A458)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED56A458);
  }

  return result;
}

unint64_t sub_18AE9AE0C()
{
  result = qword_1ED56A450;
  if (!qword_1ED56A450)
  {
    sub_18AE9ADC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED56A450);
  }

  return result;
}

unint64_t sub_18AE9AE8C(uint64_t a1)
{
  sub_18AFCE294();
  type metadata accessor for CFString(0);
  sub_18AECDB68(&qword_1ED56A478, type metadata accessor for CFString, &unk_18AFCEE9C);
  sub_18AFCBA24();
  v2 = sub_18AFCE2E4();

  return sub_18AE9AF8C(a1, v2);
}

unint64_t sub_18AE9AF8C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_18AECDB68(&qword_1ED56A478, type metadata accessor for CFString, &unk_18AFCEE9C);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_18AFCBA14();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_18AE9B098(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_18AE9B0F4(uint64_t a1)
{
  v2 = sub_18AFCE044();

  return sub_18AE9B138(a1, v2);
}

unint64_t sub_18AE9B138(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_18AE9ADC0();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_18AFCE054();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_18AE9B1FC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18AE9B234(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_18AE9B240(uint64_t result, unsigned int a2)
{
  if (a2 > 0xE1)
  {
    *(result + 4) = 0;
    *result = a2 - 226;
  }

  else if (a2)
  {
    *(result + 5) = a2 + 30;
  }

  return result;
}

uint64_t sub_18AE9B368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9979C0, &qword_18AFCEBF0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_18AE9B434(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9979C0, &qword_18AFCEBF0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t _s15HysteresisRangeVwet(uint64_t a1, int a2)
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

uint64_t _s15HysteresisRangeVwst(uint64_t result, int a2, int a3)
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

uint64_t sub_18AE9B588()
{

  return swift_deallocObject();
}

uint64_t sub_18AE9B5C0()
{
  v1 = type metadata accessor for CABackgroundExtensionView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  sub_18AE9B234(*v2, *(v2 + 8));
  v3 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9979B8, &qword_18AFCEB90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_18AFCC024();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18AE9B70C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997A08, &qword_18AFCED40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AE9B77C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997A08, &qword_18AFCED40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18AE9B7E4()
{
  v1 = sub_18AFCC024();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 104) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_18AE9B880(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997A00, &qword_18AFCED38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AE9B8F0(uint64_t a1, int a2)
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

uint64_t sub_18AE9B91C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for BadgeDrawing(255, *a1, a1[1], a4);

  return swift_getWitnessTable();
}

uint64_t sub_18AE9B9C4@<X0>(void *a1@<X8>)
{
  sub_18AEB10A8();
  result = sub_18AFCC484();
  *a1 = v3;
  return result;
}

uint64_t sub_18AE9BA60@<X0>(_BYTE *a1@<X8>)
{
  sub_18AE7A260();
  result = sub_18AFCC484();
  *a1 = v3;
  return result;
}

uint64_t sub_18AE9BAFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18AFCC274();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18AE9BB54@<X0>(_BYTE *a1@<X8>)
{
  sub_18AEB2440();
  result = sub_18AFCC484();
  *a1 = v3;
  return result;
}

uint64_t sub_18AE9BBF4@<X0>(_BYTE *a1@<X8>)
{
  sub_18AEB23EC();
  result = sub_18AFCC484();
  *a1 = v3;
  return result;
}

uint64_t sub_18AE9BC90@<X0>(BOOL *a1@<X8>)
{
  sub_18AEB2398();
  result = sub_18AFCC484();
  *a1 = v3 > 1u;
  return result;
}

uint64_t sub_18AE9BCF0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for MacToolbarButton(255, *a1, v5, a4);
  type metadata accessor for MacPushButton(255, v4, v5, v6);
  sub_18AFCC624();
  type metadata accessor for MacButtonDestructive(255, v4, v5, v7);
  type metadata accessor for MacGlassButton(255, v4, v5, v8);
  sub_18AFCC624();
  sub_18AFCC624();
  sub_18AFCC624();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA997B30, &qword_18AFCF170);
  sub_18AFCC624();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_18AEAFA34();
  swift_getWitnessTable();
  sub_18AEAFA88();
  return swift_getWitnessTable();
}

uint64_t sub_18AE9BF14(void *a1)
{
  sub_18AFCC044();
  sub_18AEB1C28();
  return swift_getWitnessTable();
}

uint64_t sub_18AE9BFD0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MacLabeledCheckboxAndRadioPositioned(255, *a1, a1[1], a4);

  return swift_getWitnessTable();
}

uint64_t sub_18AE9C018(uint64_t a1, uint64_t a2)
{
  v4 = sub_18AE95F54(&qword_1EA997E60, &qword_1EA997E68, &qword_18AFCFBE0, MEMORY[0x1E69E7C90]);

  return MEMORY[0x1EEDDE438](a1, a2, v4);
}

uint64_t sub_18AE9C110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 24);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997EA0, &unk_18AFD0410);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18AE9C1C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 24) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997EA0, &unk_18AFD0410);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18AE9C27C@<X0>(uint64_t a1@<X8>)
{
  sub_18AEB6814();
  result = sub_18AFCC484();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_18AE9C328(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  type metadata accessor for MacGroupBox(255, v4, v5, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA997EC8, &qword_18AFCFDE8);
  sub_18AFCC044();
  v8[4] = v6;
  v8[0] = sub_18AFCE074();
  v8[1] = v4;
  v8[2] = swift_getWitnessTable();
  v8[3] = v5;
  type metadata accessor for MacGladeGroupBox(255, v8);
  sub_18AFCDB34();
  sub_18AFCC624();
  swift_getWitnessTable();
  sub_18AEB6868();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18AE9C4E4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PopUpButton.PopUpButtonBody(255, *a1, a1[1], a4);

  return swift_getWitnessTable();
}

uint64_t sub_18AE9C530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for PopUpButton.PopUpButtonBody(0, v5, *(v4 + 24), a4) - 8);
  v7 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v8 = *(*v6 + 64);
  v9 = sub_18AFCC564();
  v10 = *(v9 - 8);
  v11 = (v7 + v8 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v4 + v7;

  (*(*(v5 - 8) + 8))(v12 + v6[16], v5);
  sub_18AE9B234(*(v12 + v6[17]), *(v12 + v6[17] + 8));
  sub_18AE9B234(*(v12 + v6[18]), *(v12 + v6[18] + 8));
  sub_18AE9B234(*(v12 + v6[19]), *(v12 + v6[19] + 8));
  (*(v10 + 8))(v4 + v11, v9);

  return swift_deallocObject();
}

uint64_t sub_18AE9C6F0(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998098, &qword_18AFD0100);
  sub_18AEBB824();
  sub_18AFCC6A4();
  sub_18AFCCF94();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v1 = sub_18AFCD1F4();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for MacToolbarButton(255, v1, WitnessTable, v3);
  type metadata accessor for MacPushButton(255, v1, WitnessTable, v4);
  sub_18AFCC624();
  type metadata accessor for MacToolbarPopUpButton(255, v1, WitnessTable, v5);
  type metadata accessor for MacPopupButton(255, v1, WitnessTable, v6);
  sub_18AFCC624();
  sub_18AFCC624();
  sub_18AFCC044();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9980B8, &qword_18AFD0110);
  sub_18AEBB924();
  sub_18AFCC6A4();
  v7 = sub_18AFCCF94();
  swift_getWitnessTable();
  v8 = swift_getWitnessTable();
  type metadata accessor for MacToolbarButton(255, v7, v8, v9);
  type metadata accessor for MacPushButton(255, v7, v8, v10);
  sub_18AFCC624();
  type metadata accessor for MacToolbarPopUpButton(255, v7, v8, v11);
  type metadata accessor for MacPopupButton(255, v7, v8, v12);
  sub_18AFCC624();
  sub_18AFCC624();
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD1F4();
  return swift_getWitnessTable();
}

uint64_t sub_18AE9CB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 9);
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997EA0, &unk_18AFD0410);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18AE9CC04(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 9) = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997EA0, &unk_18AFD0410);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18AE9CCCC(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  type metadata accessor for MacEngineeringSearchField(255, v3);
  return swift_getWitnessTable();
}

uint64_t sub_18AE9CD20()
{

  return swift_deallocObject();
}

void *sub_18AE9CDA8@<X0>(_BYTE *a1@<X8>)
{
  sub_18AEC58D0();
  result = sub_18AFCBF84();
  *a1 = v3;
  return result;
}

void *sub_18AE9CEC4@<X0>(uint64_t a1@<X8>)
{
  sub_18AEC57D4();
  result = sub_18AFCBF84();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_18AE9CF78(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9982C8, &qword_18AFD05E0);
  sub_18AEBFF3C();
  sub_18AFCC6A4();
  v1 = sub_18AFCCF94();
  v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998308, &qword_18AFD0600);
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998310, &qword_18AFD0608);
  v5[8] = swift_getWitnessTable();
  v5[0] = v1;
  v5[1] = v2;
  v5[2] = v3;
  v5[3] = &type metadata for SelectionViewModifier;
  v5[4] = swift_getWitnessTable();
  v5[5] = sub_18AEC00A4();
  v5[6] = sub_18AEC0158();
  v5[7] = sub_18AEC02C8();
  type metadata accessor for MacSegmentedControlComposer(255, v5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998358, &qword_18AFD0618);
  sub_18AFCC044();
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA998360, &qword_1EA998358, &qword_18AFD0618, MEMORY[0x1E6980620]);
  swift_getWitnessTable();
  sub_18AFCD134();
  return swift_getWitnessTable();
}

uint64_t sub_18AE9D16C(void *a1)
{
  sub_18AFCC044();
  sub_18AEC4FF0();
  return swift_getWitnessTable();
}

uint64_t sub_18AE9D1D0(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998368, &qword_18AFD0678);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998458, &qword_18AFD0A98);
  sub_18AFCC044();
  v1 = MEMORY[0x1E69809F0];
  sub_18AE95F54(&qword_1EA998370, &qword_1EA998368, &qword_18AFD0678, MEMORY[0x1E69809F0]);
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA998460, &qword_1EA998458, &qword_18AFD0A98, v1);
  return swift_getWitnessTable();
}

uint64_t sub_18AE9D370()
{

  return swift_deallocObject();
}

uint64_t sub_18AE9D3C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_18AFCC564();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v8 = type metadata accessor for SegmentedControl(0, v1, v2, v7);
  v9 = (v6 + *(*(v8 - 1) + 80)) & ~*(*(v8 - 1) + 80);
  (*(v4 + 8))(v0 + v5, v3);
  v10 = v0 + v9;
  sub_18AE9B234(*(v0 + v9), *(v0 + v9 + 8));
  sub_18AE9B234(*(v10 + 16), *(v10 + 24));
  v11 = v8[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98, &qword_18AFCFC30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_18AFCC5C4();
    (*(*(v12 - 8) + 8))(v10 + v11, v12);
  }

  else
  {
  }

  (*(*(v1 - 8) + 8))(v10 + v8[13], v1);
  if (*(v10 + v8[15]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18AE9D61C()
{

  return swift_deallocObject();
}

uint64_t sub_18AE9D670@<X0>(_BYTE *a1@<X8>)
{
  sub_18AEC8720();
  result = sub_18AFCC484();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t sub_18AE9D7A0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for Stepper(0);
  *a2 = *(a1 + *(result + 40));
  return result;
}

uint64_t sub_18AE9D810@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for Stepper(0);
  *a2 = *(a1 + *(result + 44));
  return result;
}

uint64_t sub_18AE9D870@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for Stepper(0);
  *a2 = *(a1 + *(result + 48));
  return result;
}

uint64_t sub_18AE9D8D0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for Stepper(0);
  *a2 = *(a1 + *(result + 52));
  return result;
}

uint64_t sub_18AE9D930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 2);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997EA0, &unk_18AFD0410);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_18AE9D9EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 2) = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997EA0, &unk_18AFD0410);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18AE9DAA4@<X0>(void *a1@<X8>)
{
  sub_18AECEF04();
  result = sub_18AFCC484();
  *a1 = v3;
  return result;
}

uint64_t sub_18AE9DAF8()
{

  return swift_deallocObject();
}

uint64_t sub_18AE9DB30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18AFCC434();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18AE9DB88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18AFCC364();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18AE9DBE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986E8, &qword_18AFD2400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986F0, &qword_18AFD1FA0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 44));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_18AE9DD04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986E8, &qword_18AFD2400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986F0, &qword_18AFD1FA0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 44)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_18AE9DE98@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18AFCC3B4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18AE9DEF0@<X0>(uint64_t *a2@<X8>)
{
  result = sub_18AFCC1C4();
  *a2 = result;
  return result;
}

uint64_t sub_18AE9DF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 251)
  {
    v4 = *(a1 + 8);
    if (v4 >= 5)
    {
      return v4 - 4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998770, &qword_18AFD2298);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18AE9DFFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 251)
  {
    *(result + 8) = a2 + 4;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998770, &qword_18AFD2298);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18AE9E130()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998790, &qword_18AFD23E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998798, &qword_18AFD23E8);
  sub_18AE95F54(&qword_1EA997778, &qword_1EA998790, &qword_18AFD23E0, MEMORY[0x1E697FDF8]);
  sub_18AECF234();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_18AE9E200(void *a1)
{
  v2 = a1[1];
  v5[0] = *a1;
  v1 = v5[0];
  v5[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9987B8, &qword_18AFD2408);
  v5[2] = v2;
  v5[3] = sub_18AE95F54(&qword_1EA9987C0, &qword_1EA9987B8, &qword_18AFD2408, &unk_18AFE2E70);
  type metadata accessor for MacCombobox(255, v5);
  type metadata accessor for UniversalTextField(255, v1, v2, v3);
  sub_18AFCC624();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18AE9E320@<X0>(_BYTE *a1@<X8>)
{
  sub_18AEB2398();
  result = sub_18AFCC484();
  *a1 = v3;
  return result;
}

uint64_t sub_18AE9E3BC(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998868, &qword_18AFD25F0);
  sub_18AFCC044();
  sub_18AED05DC();
  return swift_getWitnessTable();
}

uint64_t sub_18AE9E46C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938, &unk_18AFD2F80);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998940, &unk_18AFD47C0);
  sub_18AFCC044();
  sub_18AFCC044();
  sub_18AFCC044();
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998948, &qword_18AFD29D0);
  sub_18AFCC044();
  sub_18AE95F54(&qword_1EA998950, &qword_1EA998938, &unk_18AFD2F80, MEMORY[0x1E6980A18]);
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA998958, &qword_1EA998940, &unk_18AFD47C0, MEMORY[0x1E6980490]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA998970, &qword_1EA998948, &qword_18AFD29D0, MEMORY[0x1E697F940]);
  return swift_getWitnessTable();
}

uint64_t sub_18AE9E6B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18AFCC344();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18AE9E6E0(uint64_t *a1)
{
  type metadata accessor for iOSStepperButton(255);
  sub_18AFCC044();
  sub_18AFCC044();
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD134();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998A38, &qword_18AFD2BE0);
  sub_18AFCC044();
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998A40, &qword_18AFD2BE8);
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD1F4();
  swift_getWitnessTable();
  sub_18AFCD1F4();

  return swift_getWitnessTable();
}

uint64_t sub_18AE9E874(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986F0, &qword_18AFD1FA0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18AE9E930(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986F0, &qword_18AFD1FA0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18AE9EA0C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B58, &qword_18AFDA3C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B48, &unk_18AFD2F90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938, &unk_18AFD2F80);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998940, &unk_18AFD47C0);
  sub_18AFCC044();
  v1 = MEMORY[0x1E697DDC8];
  sub_18AE95F54(&qword_1EA998B50, &qword_1EA998B48, &unk_18AFD2F90, MEMORY[0x1E697DDC8]);
  sub_18AFCBDC4();
  sub_18AFCC044();
  sub_18AE95F54(&qword_1EA998B60, &qword_1EA998B58, &qword_18AFDA3C0, v1);
  sub_18AFCBDC4();
  sub_18AFCC624();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B68, &qword_18AFD2FA0);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B70, &qword_18AFD2FA8);
  sub_18AFCC044();
  v2 = MEMORY[0x1E697DDD0];
  sub_18AE95F54(&qword_1EA998B88, &qword_1EA998B58, &qword_18AFDA3C0, MEMORY[0x1E697DDD0]);
  sub_18AE95F54(&qword_1EA998B78, &qword_1EA998B48, &unk_18AFD2F90, v2);
  sub_18AE95F54(&qword_1EA998950, &qword_1EA998938, &unk_18AFD2F80, MEMORY[0x1E6980A18]);
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA998958, &qword_1EA998940, &unk_18AFD47C0, MEMORY[0x1E6980490]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA998BA8, &qword_1EA998B68, &qword_18AFD2FA0, MEMORY[0x1E697F940]);
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA998BB8, &qword_1EA998B70, &qword_18AFD2FA8, MEMORY[0x1E697FD58]);
  return swift_getWitnessTable();
}

uint64_t sub_18AE9EE18(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997EA0, &unk_18AFD0410);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986F0, &qword_18AFD1FA0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998C18, &unk_18AFD34D0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_18AE9EFA8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997EA0, &unk_18AFD0410);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986F0, &qword_18AFD1FA0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998C18, &unk_18AFD34D0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_18AE9F14C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 1);
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986F0, &qword_18AFD1FA0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18AE9F200(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 1) = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986F0, &qword_18AFD1FA0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18AE9F2AC()
{
  v1 = type metadata accessor for MacCheckboxAndRadio(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  sub_18AE9B234(*(v2 + 8), *(v2 + 16));
  v3 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98, &qword_18AFCFC30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_18AFCC5C4();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_18AE9B234(*(v2 + *(v1 + 40)), *(v2 + *(v1 + 40) + 8));

  return swift_deallocObject();
}

uint64_t sub_18AE9F4C4(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B48, &unk_18AFD2F90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938, &unk_18AFD2F80);
  sub_18AFCC044();
  sub_18AFCC044();
  sub_18AE95F54(&qword_1EA998B50, &qword_1EA998B48, &unk_18AFD2F90, MEMORY[0x1E697DDC8]);
  sub_18AFCBDC4();
  sub_18AFCC044();
  sub_18AEDF4E4();
  swift_getWitnessTable();
  sub_18AFCD134();
  sub_18AFCC044();
  sub_18AFCC044();
  swift_getTupleTypeMetadata3();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD134();
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998EC8, &qword_18AFD3B70);
  sub_18AFCC044();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA998F00, &qword_1EA998EC8, &qword_18AFD3B70, MEMORY[0x1E697F940]);
  return swift_getWitnessTable();
}

uint64_t sub_18AE9F738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 251)
  {
    v4 = *(a1 + 1);
    if (v4 >= 5)
    {
      return v4 - 4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986F0, &qword_18AFD1FA0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18AE9F7EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 251)
  {
    *(result + 1) = a2 + 4;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986F0, &qword_18AFD1FA0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18AE9F8B8(void *a1)
{
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9990D0, &qword_18AFD42B8);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9990D8, &qword_18AFD42C0);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9990E0, &unk_18AFDA770);
  sub_18AFCC044();
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA999108, &qword_1EA9990D0, &qword_18AFD42B8, MEMORY[0x1E697F940]);
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA999118, &qword_1EA9990D8, &qword_18AFD42C0, MEMORY[0x1E697DDB0]);
  swift_getWitnessTable();
  sub_18AE95F54(qword_1EA999128, &qword_1EA9990E0, &unk_18AFDA770, MEMORY[0x1E6980CF8]);
  return swift_getWitnessTable();
}

uint64_t sub_18AE9FAA4(uint64_t *a1)
{
  type metadata accessor for MacCheckboxAndRadio(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938, &unk_18AFD2F80);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998940, &unk_18AFD47C0);
  sub_18AFCC044();
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD134();
  swift_getWitnessTable();
  sub_18AFCD1F4();

  return swift_getWitnessTable();
}

uint64_t sub_18AE9FBD8(uint64_t *a1)
{
  type metadata accessor for MacCheckboxAndRadio(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938, &unk_18AFD2F80);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998940, &unk_18AFD47C0);
  sub_18AFCC044();
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD1D4();
  swift_getWitnessTable();
  sub_18AFCD1F4();

  return swift_getWitnessTable();
}

uint64_t sub_18AE9FD0C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938, &unk_18AFD2F80);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998940, &unk_18AFD47C0);
  sub_18AFCC044();
  type metadata accessor for MacCheckboxAndRadio(255);
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD1D4();
  swift_getWitnessTable();
  sub_18AFCD1F4();

  return swift_getWitnessTable();
}

uint64_t sub_18AE9FE40(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938, &unk_18AFD2F80);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998940, &unk_18AFD47C0);
  sub_18AFCC044();
  type metadata accessor for MacCheckboxAndRadio(255);
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD134();
  swift_getWitnessTable();
  sub_18AFCD1F4();

  return swift_getWitnessTable();
}

uint64_t sub_18AE9FF7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9993B8, &qword_18AFD49B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AE9FFEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9993B8, &qword_18AFD49B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18AEA0054(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B48, &unk_18AFD2F90);
  sub_18AE95F54(&qword_1EA998B50, &qword_1EA998B48, &unk_18AFD2F90, MEMORY[0x1E697DDC8]);
  sub_18AFCBDC4();
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9993B8, &qword_18AFD49B8);
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD134();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999040, &unk_18AFD49C0);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938, &unk_18AFD2F80);
  sub_18AFCC044();
  sub_18AFCC044();
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998C48, &unk_18AFD49D0);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B70, &qword_18AFD2FA8);
  sub_18AFCC044();
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA999038, &qword_1EA999040, &unk_18AFD49C0, MEMORY[0x1E6980490]);
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA998950, &qword_1EA998938, &unk_18AFD2F80, MEMORY[0x1E6980A18]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA998CA8, &qword_1EA998C48, &unk_18AFD49D0, MEMORY[0x1E697F940]);
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA998BB8, &qword_1EA998B70, &qword_18AFD2FA8, MEMORY[0x1E697FD58]);
  return swift_getWitnessTable();
}

uint64_t sub_18AEA03E8(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B58, &qword_18AFDA3C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B48, &unk_18AFD2F90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938, &unk_18AFD2F80);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998CA0, &unk_18AFD3608);
  sub_18AFCC044();
  v1 = MEMORY[0x1E697DDC8];
  sub_18AE95F54(&qword_1EA998B50, &qword_1EA998B48, &unk_18AFD2F90, MEMORY[0x1E697DDC8]);
  sub_18AFCBDC4();
  sub_18AFCC044();
  sub_18AE95F54(&qword_1EA998B60, &qword_1EA998B58, &qword_18AFDA3C0, v1);
  sub_18AFCBDC4();
  sub_18AFCC624();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998C48, &unk_18AFD49D0);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B70, &qword_18AFD2FA8);
  sub_18AFCC044();
  v2 = MEMORY[0x1E697DDD0];
  sub_18AE95F54(&qword_1EA998B88, &qword_1EA998B58, &qword_18AFDA3C0, MEMORY[0x1E697DDD0]);
  sub_18AE95F54(&qword_1EA998B78, &qword_1EA998B48, &unk_18AFD2F90, v2);
  sub_18AE95F54(&qword_1EA998950, &qword_1EA998938, &unk_18AFD2F80, MEMORY[0x1E6980A18]);
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA998C98, &qword_1EA998CA0, &unk_18AFD3608, MEMORY[0x1E6980490]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA998CA8, &qword_1EA998C48, &unk_18AFD49D0, MEMORY[0x1E697F940]);
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA998BB8, &qword_1EA998B70, &qword_18AFD2FA8, MEMORY[0x1E697FD58]);
  return swift_getWitnessTable();
}

uint64_t sub_18AEA07D8(uint64_t *a1)
{
  type metadata accessor for MacStepperButton(255);
  sub_18AFCC044();
  sub_18AFCC044();
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD1D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999578, &qword_18AFD5160);
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD1F4();
  swift_getWitnessTable();
  sub_18AFCD1F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999580, &qword_18AFD5168);
  sub_18AFCC044();
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA999590, &qword_1EA999580, &qword_18AFD5168, MEMORY[0x1E697FD58]);
  return swift_getWitnessTable();
}

uint64_t sub_18AEA09B8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986F0, &qword_18AFD1FA0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = &a1[*(a3 + 36)];

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986E8, &qword_18AFD2400);
      v14 = *(*(v13 - 8) + 48);
      v15 = &a1[*(a3 + 48)];

      return v14(v15, a2, v13);
    }
  }
}

_BYTE *sub_18AEA0AEC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986F0, &qword_18AFD1FA0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 36)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986E8, &qword_18AFD2400);
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 48)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_18AEA0C50(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B48, &unk_18AFD2F90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9993F0, &qword_18AFD4A00);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9996B8, &qword_18AFD5A00);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938, &unk_18AFD2F80);
  sub_18AFCC044();
  sub_18AFCC044();
  sub_18AE95F54(&qword_1EA998B50, &qword_1EA998B48, &unk_18AFD2F90, MEMORY[0x1E697DDC8]);
  sub_18AFCBDC4();
  sub_18AFCC044();
  sub_18AFCC044();
  sub_18AFCC044();
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9996C0, &qword_18AFD56F0);
  sub_18AFCC044();
  sub_18AE95F54(&qword_1EA998B78, &qword_1EA998B48, &unk_18AFD2F90, MEMORY[0x1E697DDD0]);
  v1 = MEMORY[0x1E6980A18];
  sub_18AE95F54(&qword_1EA999420, &qword_1EA9993F0, &qword_18AFD4A00, MEMORY[0x1E6980A18]);
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA9996C8, &qword_1EA9996B8, &qword_18AFD5A00, MEMORY[0x1E6980490]);
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA998950, &qword_1EA998938, &unk_18AFD2F80, v1);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA999760, &qword_1EA9996C0, &qword_18AFD56F0, MEMORY[0x1E697F940]);
  return swift_getWitnessTable();
}

uint64_t sub_18AEA1058(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B48, &unk_18AFD2F90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9993F0, &qword_18AFD4A00);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999860, &qword_18AFD59F8);
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD134();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9996B8, &qword_18AFD5A00);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938, &unk_18AFD2F80);
  sub_18AFCC044();
  sub_18AFCC044();
  sub_18AE95F54(&qword_1EA998B50, &qword_1EA998B48, &unk_18AFD2F90, MEMORY[0x1E697DDC8]);
  sub_18AFCBDC4();
  sub_18AFCC044();
  sub_18AFCC044();
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999868, &unk_18AFD5A08);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999748, &qword_18AFD5730);
  sub_18AFCC044();
  sub_18AE95F54(&qword_1EA998B78, &qword_1EA998B48, &unk_18AFD2F90, MEMORY[0x1E697DDD0]);
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA9996C8, &qword_1EA9996B8, &qword_18AFD5A00, MEMORY[0x1E6980490]);
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA998950, &qword_1EA998938, &unk_18AFD2F80, MEMORY[0x1E6980A18]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA999888, &qword_1EA999868, &unk_18AFD5A08, MEMORY[0x1E697F940]);
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA999740, &qword_1EA999748, &qword_18AFD5730, MEMORY[0x1E697FD58]);
  return swift_getWitnessTable();
}

uint64_t sub_18AEA1494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986E8, &qword_18AFD2400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986F0, &qword_18AFD1FA0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_18AEA15C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986E8, &qword_18AFD2400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986F0, &qword_18AFD1FA0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_18AEA16E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for SwitchSpecs(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_18AEA17A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for SwitchSpecs(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18AEA1848@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x18CFEB700]();
  *a1 = result;
  return result;
}

uint64_t sub_18AEA18A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SwitchSpecs(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_18AEA196C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SwitchSpecs(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_18AEA1A24()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9999E8, &qword_18AFD5E98);
  sub_18AEF8D64();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_18AEA1B08(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B48, &unk_18AFD2F90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938, &unk_18AFD2F80);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999B60, &unk_18AFD61B0);
  sub_18AFCC044();
  sub_18AE95F54(&qword_1EA998B50, &qword_1EA998B48, &unk_18AFD2F90, MEMORY[0x1E697DDC8]);
  sub_18AFCBDC4();
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999B68, &unk_18AFD61C0);
  sub_18AFCC044();
  type metadata accessor for ResolvedButtonBorderShape(255);
  sub_18AE95F54(&qword_1EA998B78, &qword_1EA998B48, &unk_18AFD2F90, MEMORY[0x1E697DDD0]);
  sub_18AE95F54(&qword_1EA998950, &qword_1EA998938, &unk_18AFD2F80, MEMORY[0x1E6980A18]);
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA999B70, &qword_1EA999B60, &unk_18AFD61B0, MEMORY[0x1E6980490]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA999B78, &qword_1EA999B68, &unk_18AFD61C0, MEMORY[0x1E697F940]);
  swift_getWitnessTable();
  sub_18AEFBFF0(&qword_1EA998BB0, type metadata accessor for ResolvedButtonBorderShape, &unk_18AFE1DA8);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B70, &qword_18AFD2FA8);
  sub_18AFCC044();
  swift_getOpaqueTypeConformance2();
  sub_18AE95F54(&qword_1EA998BB8, &qword_1EA998B70, &qword_18AFD2FA8, MEMORY[0x1E697FD58]);
  return swift_getWitnessTable();
}

uint64_t sub_18AEA1F4C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999CE8, &qword_18AFD6B00);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999CF0, &qword_18AFD6B08);
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD1F4();
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999CF8, &qword_18AFD6B10);
  sub_18AFCC044();
  sub_18AEFF30C();
  swift_getWitnessTable();
  sub_18AFCC5F4();
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999D48, &qword_18AFD6B38);
  sub_18AFCC044();
  sub_18AFCC044();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA999D50, &qword_1EA999D48, &qword_18AFD6B38, MEMORY[0x1E6980CF8]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_18AFCD1F4();
  return swift_getWitnessTable();
}

uint64_t sub_18AEA21F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986F0, &qword_18AFD1FA0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36) + 8);
    if (v12 > 1)
    {
      return (v12 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_18AEA22BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986F0, &qword_18AFD1FA0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 32);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = -a2;
  }

  return result;
}

uint64_t sub_18AEA23A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18AFCC374();
  *a1 = result;
  return result;
}

uint64_t sub_18AEA23F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999EB8, &qword_18AFD6E70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AEA2468(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999E60, &unk_18AFD6DD0);
  sub_18AFCC044();
  type metadata accessor for MacColorWellButtonEngineering(255);
  sub_18AFCC044();
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD134();
  sub_18AFCC044();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_18AFCD1F4();
  return swift_getWitnessTable();
}

uint64_t sub_18AEA25BC(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999F58, &qword_18AFD7000);
  sub_18AFCC044();
  sub_18AF03A64();
  swift_getWitnessTable();
  sub_18AFCD1F4();
  return swift_getWitnessTable();
}