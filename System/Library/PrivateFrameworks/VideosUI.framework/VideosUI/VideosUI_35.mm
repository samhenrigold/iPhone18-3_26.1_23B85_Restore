char *sub_1E38E2988(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1E4207384();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v10 = MEMORY[0x1E69E7CC0];
  result = sub_1E37EBF70(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v10;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      type metadata accessor for CGColor();
      swift_dynamicCast();
      v10 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1E37EBF70((v7 > 1), v8 + 1, 1);
        v3 = v10;
      }

      ++v5;
      *(v3 + 16) = v8 + 1;
      sub_1E329504C(&v9, (v3 + 32 * v8 + 32));
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

id sub_1E38E2AD0@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x1E6979380]) init];
  *a1 = result;
  return result;
}

void type metadata accessor for CGColor()
{
  if (!qword_1EE23B410)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EE23B410);
    }
  }
}

void sub_1E38E2B5C(uint64_t a1, void *a2)
{
  sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
  v3 = sub_1E42062A4();

  [a2 setLocations_];
}

void sub_1E38E2BE0(uint64_t a1, void *a2)
{
  v3 = sub_1E42062A4();

  [a2 setColors_];
}

unint64_t sub_1E38E2C50()
{
  result = qword_1EE23B450;
  if (!qword_1EE23B450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D3B0, &unk_1E42A9630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23B450);
  }

  return result;
}

unint64_t sub_1E38E2CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE284190;
  if (!qword_1EE284190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE284190);
  }

  return result;
}

uint64_t sub_1E38E2D30()
{
  v0 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  sub_1E374AD40(&qword_1EE28A190, &qword_1ECF2D3C0, &unk_1E42A9690, MEMORY[0x1E695BF88]);
  return sub_1E42006B4();
}

uint64_t sub_1E38E2DB8()
{
  memset(v2, 0, sizeof(v2));
  v3 = 1;
  sub_1E40421AC(2, 0, v2, &v1);
  sub_1E4200524();
  return sub_1E38E5014(&v1);
}

void *sub_1E38E2E30@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  sub_1E3EB9BB4(&v29);
  memcpy(__dst, v30, 0x4AuLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3C0, &unk_1E42A9690);
  swift_allocObject();
  v6 = sub_1E4200544();
  v7 = *(*a1 + 392);

  v9 = v7(v8);

  v10 = 0.0;
  if (!v9)
  {
    goto LABEL_5;
  }

  if (*v9 != _TtC8VideosUI21SyndicationCellLayout)
  {

LABEL_5:
    v11 = 0;
    v15 = 1;
    v14 = 0;
    goto LABEL_6;
  }

  v11 = sub_1E37DAE10();

  OUTLINED_FUNCTION_8();
  v10 = (*(v12 + 2288))();
  v14 = v13;
  v15 = 0;
LABEL_6:
  v28 = v15;
  __src[0] = a1;
  memcpy(&__src[1], a2, 0xC3uLL);
  *&__src[26] = v10;
  __src[27] = v14;
  LOBYTE(__src[28]) = v28;
  memcpy(&__src[28] + 1, __dst, 0x4FuLL);
  __src[38] = v11;
  __src[39] = v6;
  v19 = a1;
  memcpy(v20, a2, sizeof(v20));
  v21 = v10;
  v22 = v14;
  v23 = v28;
  memcpy(v24, __dst, sizeof(v24));
  v25 = v11;
  v26 = v6;
  sub_1E38E3058(__src, v17);
  sub_1E38E3090(&v19);
  return memcpy(a3, __src, 0x140uLL);
}

double sub_1E38E30C0@<D0>(uint64_t a1@<X8>)
{
  v192 = a1;
  sub_1E4203B14();
  OUTLINED_FUNCTION_0_10();
  v169 = v3;
  v170 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v168 = v5 - v4;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3C8, &unk_1E42D52A0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_5();
  v167 = v7;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_25_3();
  v166 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3D0, &qword_1E42A96A0);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  v191 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25_3();
  v190 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3D8, &qword_1E42A96A8);
  OUTLINED_FUNCTION_0_10();
  v183 = v16;
  v184 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  v181 = v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25_3();
  v179 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3E0, &qword_1E42A96B0);
  v21 = OUTLINED_FUNCTION_17_2(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_5();
  v180 = v22;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_25_3();
  v199 = v24;
  v25 = sub_1E4200AF4();
  OUTLINED_FUNCTION_0_10();
  v194 = v26;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  v30 = v29 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3E8, &qword_1E42DC9B0);
  OUTLINED_FUNCTION_0_10();
  v195 = v32;
  v196 = v31;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v165 - v34;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29240, &unk_1E429B770);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v36);
  v173 = &v165 - v37;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3F0, &qword_1E42A96B8);
  OUTLINED_FUNCTION_0_10();
  v172 = v38;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v39);
  v171 = &v165 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3F8, &qword_1E42A96C0);
  v42 = OUTLINED_FUNCTION_17_2(v41);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_2_5();
  v198 = v43;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_25_3();
  v197 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D400, &qword_1E42A96C8);
  v47 = OUTLINED_FUNCTION_17_2(v46);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_2_5();
  v182 = v48;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_25_3();
  v204 = v50;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D408, &qword_1E42A96D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v165 - v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D410, &unk_1E42A96D8);
  OUTLINED_FUNCTION_0_10();
  v187 = v55;
  v188 = v54;
  OUTLINED_FUNCTION_5_7();
  v57 = MEMORY[0x1EEE9AC00](v56);
  v186 = &v165 - v58;
  v205 = v1;
  v59 = *v1;
  v60 = *(*v59 + 488);
  v206 = v59;
  v61 = v60(v57);
  if (!v61)
  {
    v201 = 0;
    goto LABEL_9;
  }

  v63 = v30;
  v64 = v25;
  v65 = v35;
  v66 = sub_1E373E010(23, v61, v62);

  if (!v66)
  {
    goto LABEL_7;
  }

  if (*v66 != _TtC8VideosUI13TextViewModel)
  {

LABEL_7:
    v201 = 0;
    goto LABEL_8;
  }

  v201 = v66;
LABEL_8:
  v35 = v65;
  v25 = v64;
  v30 = v63;
LABEL_9:
  v67 = (v60)();
  if (!v67)
  {
LABEL_13:
    v69 = 0;
    goto LABEL_14;
  }

  v69 = sub_1E373E010(15, v67, v68);

  if (v69 && *v69 != _TtC8VideosUI13TextViewModel)
  {

    goto LABEL_13;
  }

LABEL_14:
  v70 = (v60)(v67);
  v200 = v69;
  if (v70 && (v72 = sub_1E373E010(39, v70, v71), , v72))
  {
    type metadata accessor for ImageViewModel();
    v73 = swift_dynamicCastClass();
    if (!v73)
    {
    }
  }

  else
  {
    v73 = 0;
  }

  OUTLINED_FUNCTION_8();
  v74 += 49;
  v75 = *v74;
  v176 = v74;
  v177 = v75;
  v76 = v75();
  v77 = v76;
  if (v76 && *v76 != _TtC8VideosUI21SyndicationCellLayout)
  {

    v77 = 0;
  }

  v78 = v205[38];
  v79 = 0.0;
  v80 = 0.0;
  v81 = 0;
  v82 = 0;
  v83 = 0;
  if (v78)
  {
    (*(*v78 + 152))(v212);
    if ((v213 & 1) == 0)
    {
      v87.n128_u64[0] = v212[3];
      v86.n128_u64[0] = v212[2];
      v85.n128_u64[0] = v212[1];
      v84.n128_u64[0] = v212[0];
      v80 = j_nullsub_1(v84, v85, v86, v87);
      v81 = v88;
      v82 = v89;
      v83 = v90;
    }
  }

  v91 = 0.0;
  if (v77)
  {

    sub_1E37BD068();

    OUTLINED_FUNCTION_8();
    (*(v92 + 152))(v214);

    v91 = (v215 & 1) != 0 ? 0.0 : v214[0];

    sub_1E374EA2C();

    OUTLINED_FUNCTION_8();
    (*(v93 + 152))(v216);

    if ((v217 & 1) == 0)
    {
      v79 = v216[0];
    }
  }

  __dst[0] = 38;
  v94 = v206;
  OUTLINED_FUNCTION_8();
  (*(v95 + 776))(&v207, __dst, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (*(&v208 + 1))
  {
    if (swift_dynamicCast())
    {
      v96 = __dst[0];
      goto LABEL_36;
    }
  }

  else
  {
    sub_1E325F69C(&v207, &unk_1ECF296E0);
  }

  v96 = 1;
LABEL_36:
  v174 = v96;
  *v53 = sub_1E4201D54();
  *(v53 + 1) = 0;
  v53[16] = 0;
  v97 = sub_1E4201B84();
  v98 = v204;
  *v204 = v97;
  v98[1] = 0;
  *(v98 + 16) = 0;
  v202 = v53;
  v178 = v73;
  if (v73)
  {
    v203 = v30;
    v99 = v205;
    memcpy(__dst, v205 + 26, 0x5BuLL);

    v100 = OUTLINED_FUNCTION_18();
    v101 = v173;
    sub_1E37E8BE8(v73, __dst, v78, v100 & 1, 0, 0, v173);
    v102 = sub_1E4202734();
    v103 = v101 + *(v193 + 36);
    *v103 = v102;
    *(v103 + 8) = v80;
    *(v103 + 16) = v81;
    *(v103 + 24) = v82;
    *(v103 + 32) = v83;
    *(v103 + 40) = 0;
    sub_1E4200AE4();
    OUTLINED_FUNCTION_12_43();
    v104 = swift_allocObject();
    v105 = OUTLINED_FUNCTION_105_2(v104);
    memcpy(v105, v99, 0x140uLL);
    OUTLINED_FUNCTION_2_4();
    v106 = swift_allocObject();
    *(v106 + 16) = sub_1E38E5148;
    *(v106 + 24) = v94;
    sub_1E38E3058(v99, &v207);
    sub_1E4203B64();

    (*(v194 + 8))(v203, v25);
    sub_1E4200BA4();
    sub_1E38E5068(&qword_1EE289C40, &qword_1ECF29240, &unk_1E429B770, &unk_1E4411FF8);
    v107 = v25;
    v108 = v196;
    OUTLINED_FUNCTION_3_60(&qword_1EE289DB0, &qword_1ECF2D3E8, &qword_1E42DC9B0);
    v109 = v171;
    v110 = v195;
    sub_1E42034B4();

    v111 = v110;
    v30 = v203;
    v112 = v107;
    (*(v111 + 8))(v35, v108);
    sub_1E325F69C(v101, &qword_1ECF29240);
    v113 = v197;
    v114 = v109;
    v115 = v175;
    (*(v172 + 32))(v197, v114, v175);
    v116 = 0;
  }

  else
  {
    v116 = 1;
    v113 = v197;
    v115 = v175;
    v112 = v25;
  }

  __swift_storeEnumTagSinglePayload(v113, v116, 1, v115);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D418, &qword_1E42A96E8);
  v193 = v204 + *(v117 + 44);
  v118 = sub_1E4201D54();
  v119 = v199;
  *v199 = v118;
  v119[1] = 0;
  *(v119 + 16) = 0;
  v120 = v119 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D420, &qword_1E42A96F0) + 44);
  v121 = v205;
  v203 = v77;
  sub_1E38E42E0(v205, v200, v77, v120, v91, v79);
  v210 = v83;
  v211 = 0;
  sub_1E4200AE4();
  OUTLINED_FUNCTION_12_43();
  v122 = swift_allocObject();
  v123 = OUTLINED_FUNCTION_105_2(v122);
  memcpy(v123, v121, 0x140uLL);
  OUTLINED_FUNCTION_2_4();
  v124 = swift_allocObject();
  *(v124 + 16) = sub_1E38E4D48;
  *(v124 + 24) = v113;
  sub_1E38E3058(v121, &v207);
  sub_1E4203B64();

  (*(v194 + 8))(v30, v112);
  sub_1E4200BA4();
  OUTLINED_FUNCTION_3_60(&qword_1EE289DB0, &qword_1ECF2D3E8, &qword_1E42DC9B0);
  v125 = v179;
  v126 = v196;
  sub_1E42034B4();
  (*(v195 + 8))(v35, v126);
  v127 = v198;
  sub_1E3743538(v113, v198, &qword_1ECF2D3F8, &qword_1E42A96C0);
  v128 = v180;
  sub_1E3743538(v119, v180, &qword_1ECF2D3E0, &qword_1E42A96B0);
  v129 = v183;
  v130 = v184;
  v131 = *(v183 + 16);
  v132 = v181;
  v131(v181, v125, v184);
  v133 = v193;
  sub_1E3743538(v127, v193, &qword_1ECF2D3F8, &qword_1E42A96C0);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D428, &qword_1E42A96F8);
  sub_1E3743538(v128, v133 + *(v134 + 48), &qword_1ECF2D3E0, &qword_1E42A96B0);
  v131(v133 + *(v134 + 64), v132, v130);
  v135 = *(v129 + 8);
  v135(v125, v130);
  sub_1E325F69C(v199, &qword_1ECF2D3E0);
  sub_1E325F69C(v197, &qword_1ECF2D3F8);
  v135(v132, v130);
  sub_1E325F69C(v128, &qword_1ECF2D3E0);
  sub_1E325F69C(v198, &qword_1ECF2D3F8);
  v136 = 1;
  v137 = v189;
  v138 = v190;
  v139 = v202;
  if ((v174 & 1) == 0)
  {
    v140 = v168;
    sub_1E4203B04();
    v141 = sub_1E4202764();
    v142 = sub_1E4202774();
    sub_1E4202774();
    if (sub_1E4202774() != v141)
    {
      v142 = sub_1E4202774();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();
    v143 = v167;
    (*(v169 + 32))(v167, v140, v170);
    v144 = v143 + *(v137 + 36);
    *v144 = v142;
    *(v144 + 8) = v83;
    *(v144 + 16) = v79;
    *(v144 + 24) = v91;
    *(v144 + 32) = v80;
    *(v144 + 40) = 0;
    v145 = v166;
    sub_1E38E4D50(v143, v166);
    sub_1E38E4D50(v145, v138);
    v136 = 0;
  }

  __swift_storeEnumTagSinglePayload(v138, v136, 1, v137);
  v146 = &v139[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D430, &qword_1E42A9700) + 44)];
  v147 = v204;
  v148 = v182;
  sub_1E3743538(v204, v182, &qword_1ECF2D400, &qword_1E42A96C8);
  v149 = v191;
  sub_1E3743538(v138, v191, &qword_1ECF2D3D0, &qword_1E42A96A0);
  sub_1E3743538(v148, v146, &qword_1ECF2D400, &qword_1E42A96C8);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D438, &qword_1E42A9708);
  sub_1E3743538(v149, v146 + *(v150 + 48), &qword_1ECF2D3D0, &qword_1E42A96A0);
  sub_1E325F69C(v138, &qword_1ECF2D3D0);
  sub_1E325F69C(v147, &qword_1ECF2D400);
  sub_1E325F69C(v149, &qword_1ECF2D3D0);
  v151 = sub_1E325F69C(v148, &qword_1ECF2D400);
  v152 = (v177)(v151);
  v153 = sub_1E374AD40(&qword_1ECF2D440, &qword_1ECF2D408, &qword_1E42A96D0, MEMORY[0x1E6981870]);
  v154 = v185;
  v155 = j__OUTLINED_FUNCTION_18();
  LOBYTE(v149) = j__OUTLINED_FUNCTION_18();
  v156 = OUTLINED_FUNCTION_51_1();
  v157 = v155 & 1;
  v158 = v186;
  v159 = v153;
  v160 = v202;
  sub_1E383F6D4(v152, v157, v149 & 1, 1, v156 & 1, v154, v159);

  sub_1E325F69C(v160, &qword_1ECF2D408);
  sub_1E4203DA4();
  sub_1E4200D94();

  v161 = v192;
  (*(v187 + 32))(v192, v158, v188);
  v162 = (v161 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D448, &qword_1E42A9710) + 36));
  v163 = v208;
  *v162 = v207;
  v162[1] = v163;
  result = *&v209;
  v162[2] = v209;
  return result;
}

uint64_t sub_1E38E42E0@<X0>(const void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v115 = a3;
  v124 = a2;
  v134 = a1;
  v128 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D458, &qword_1E42A97D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v113 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D460, &unk_1E42A97E0);
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  v126 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25_3();
  v125 = v18;
  v131 = sub_1E4200AF4();
  OUTLINED_FUNCTION_0_10();
  v133 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3E8, &qword_1E42DC9B0);
  OUTLINED_FUNCTION_0_10();
  v132 = v24;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  v27 = v113 - v26;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0, &qword_1E4298440);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  v30 = v113 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D468, &qword_1E42A97F0);
  OUTLINED_FUNCTION_0_10();
  v123 = v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = v113 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = v113 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D470, &qword_1E42A97F8);
  v40 = OUTLINED_FUNCTION_17_2(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_2_5();
  v127 = v41;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v42);
  v45 = v113 - v43;
  if (v44)
  {
    v117 = v35;
    v118 = v31;
    v120 = v13;
    v121 = v10;
    v122 = v113 - v43;
    v46 = v44;

    OUTLINED_FUNCTION_18();
    v119 = v46;
    sub_1E3F23370();
    v47 = sub_1E4202744();
    sub_1E4200A54();
    OUTLINED_FUNCTION_6_52(v48, v49, v50, v51);
    OUTLINED_FUNCTION_12_43();
    v52 = swift_allocObject();
    v53 = OUTLINED_FUNCTION_105_2(v52);
    v54 = v134;
    memcpy(v53, v134, 0x140uLL);
    OUTLINED_FUNCTION_2_4();
    v55 = swift_allocObject();
    *(v55 + 16) = sub_1E38E5148;
    *(v55 + 24) = v47;
    sub_1E38E3058(v54, v135);
    v56 = v131;
    sub_1E4203B64();

    v57 = *(v133 + 8);
    v133 += 8;
    v114 = v57;
    v57(v23, v56);
    sub_1E4200BA4();
    v58 = sub_1E38E5068(&qword_1EE289C88, &qword_1ECF28CC0, &qword_1E4298440, &unk_1E44362E8);
    v59 = OUTLINED_FUNCTION_3_60(&qword_1EE289DB0, &qword_1ECF2D3E8, &qword_1E42DC9B0);
    v116 = v38;
    v60 = v130;
    v113[1] = v59;
    v113[2] = v58;
    sub_1E42034B4();
    v61 = v132 + 8;
    v62 = *(v132 + 8);
    v62(v27, v60);
    sub_1E325F69C(v30, &qword_1ECF28CC0);
    if (v124)
    {

      OUTLINED_FUNCTION_18();
      sub_1E3F23370();
      v63 = sub_1E4202744();
      v132 = v61;
      v64 = v63;
      sub_1E4200A54();
      OUTLINED_FUNCTION_6_52(v65, v66, v67, v68);
      OUTLINED_FUNCTION_12_43();
      v69 = swift_allocObject();
      v70 = OUTLINED_FUNCTION_105_2(v69);
      v71 = v134;
      memcpy(v70, v134, 0x140uLL);
      OUTLINED_FUNCTION_2_4();
      v72 = swift_allocObject();
      *(v72 + 16) = sub_1E38E5148;
      *(v72 + 24) = v64;
      sub_1E38E3058(v71, v135);
      v73 = v131;
      sub_1E4203B64();

      v114(v23, v73);
      sub_1E4200BA4();
      v74 = v117;
      v75 = v130;
      sub_1E42034B4();

      v62(v27, v75);
      sub_1E325F69C(v30, &qword_1ECF28CC0);
      v76 = v123;
      v77 = v125;
      v78 = v118;
      (*(v123 + 32))(v125, v74, v118);
      v79 = 0;
    }

    else
    {
      v77 = v125;
      v76 = v123;
      v74 = v117;
      v78 = v118;
      v79 = 1;
    }

    __swift_storeEnumTagSinglePayload(v77, v79, 1, v78);
    v81 = *(v76 + 16);
    v82 = v116;
    v81(v74, v116, v78);
    v83 = v74;
    v84 = v126;
    sub_1E3743538(v77, v126, &qword_1ECF2D460, &unk_1E42A97E0);
    v85 = v120;
    v81(v120, v83, v78);
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D488, &unk_1E42A9810);
    sub_1E3743538(v84, v85 + *(v86 + 48), &qword_1ECF2D460, &unk_1E42A97E0);

    sub_1E325F69C(v77, &qword_1ECF2D460);
    v87 = *(v76 + 8);
    v87(v82, v78);
    sub_1E325F69C(v84, &qword_1ECF2D460);
    v87(v83, v78);
    v45 = v122;
    sub_1E32B9170(v85, v122);
    v80 = 0;
    v10 = v121;
  }

  else
  {
    v80 = 1;
  }

  __swift_storeEnumTagSinglePayload(v45, v80, 1, v10);
  LOBYTE(v141) = 0;
  OUTLINED_FUNCTION_8();
  (*(v88 + 776))(v135, &v141, &unk_1F5D5E0F8, &off_1F5D5CAF8);
  if (v136 == 0.0)
  {
    sub_1E325F69C(v135, &unk_1ECF296E0);
LABEL_13:
    v96 = 0;
    v101 = 0;
    v102 = 0;
    v103 = 0;
    v104 = 0;
    a6 = 0.0;
    a5 = 0.0;
    v6 = 0;
    v7 = 0;
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v89 = v141;
  v90 = sub_1E3285D14();
  v91 = *((*MEMORY[0x1E69E7D40] & **v90) + 0x110);
  v92 = *v90;
  v93 = v91(v89, *(&v89 + 1));

  if (!v93)
  {
    goto LABEL_13;
  }

  v94 = v93;
  OUTLINED_FUNCTION_18();
  sub_1E3C11690();
  v96 = v95;
  v98 = v97;
  v99 = v97 & 0xFF00;
  v100 = sub_1E4202744();
  if (v115)
  {
    sub_1E3E0B68C();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();

  v103 = v99;
  v102 = v98 & 1;
  v101 = v100;
  v104 = 0x1000000;
LABEL_14:
  v105 = v45;
  v106 = v45;
  v107 = v127;
  sub_1E3743538(v105, v127, &qword_1ECF2D470, &qword_1E42A97F8);
  v108 = v103 | v102 | v104;
  v109 = v128;
  sub_1E3743538(v107, v128, &qword_1ECF2D470, &qword_1E42A97F8);
  v110 = (v109 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D478, &qword_1E42A9800) + 48));
  *&v141 = v96;
  *(&v141 + 1) = v108;
  *&v142 = v101;
  *(&v142 + 1) = a6;
  *v143 = a5;
  *&v143[8] = v6;
  *&v143[16] = v7;
  v143[24] = 0;
  v111 = v142;
  *v110 = v141;
  v110[1] = v111;
  v110[2] = *v143;
  *(v110 + 41) = *&v143[9];
  sub_1E3743538(&v141, v135, &qword_1ECF2D480, &qword_1E42A9808);
  sub_1E325F69C(v106, &qword_1ECF2D470);
  v135[0] = v96;
  v135[1] = v108;
  v135[2] = v101;
  v136 = a6;
  v137 = a5;
  v138 = v6;
  v139 = v7;
  v140 = 0;
  sub_1E325F69C(v135, &qword_1ECF2D480);
  return sub_1E325F69C(v107, &qword_1ECF2D470);
}

uint64_t sub_1E38E4D50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3C8, &unk_1E42D52A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E38E4E34(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 320))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E38E4E74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
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

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E38E4F18()
{
  result = qword_1ECF2D450;
  if (!qword_1ECF2D450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D448, &qword_1E42A9710);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D408, &qword_1E42A96D0);
    sub_1E374AD40(&qword_1ECF2D440, &qword_1ECF2D408, &qword_1E42A96D0, MEMORY[0x1E6981870]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D450);
  }

  return result;
}

uint64_t sub_1E38E5068(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v6 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm_14()
{

  OUTLINED_FUNCTION_12_43();

  return swift_deallocObject();
}

uint64_t sub_1E38E514C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1E38E51A8(&unk_1F5D62CC0, a2, a3);
  v9 = v3;
  result = sub_1E39DFFC0(v3, v4, v5);
  if (result)
  {
    result = sub_1E38E8158(&v8, 256, v7);
    v3 = v9;
  }

  qword_1EE2AA7E0 = v3;
  return result;
}

uint64_t sub_1E38E51A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = sub_1E37414E0(a1, a2, a3);
  v6 = MEMORY[0x1E6910FA0](v4, &qword_1F5D5CE68, v5);
  v13 = v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = 32;
    do
    {
      sub_1E38E8158(v12, *(a1 + v9), v7);
      v9 += 2;
      --v8;
    }

    while (v8);

    return v13;
  }

  else
  {
    v10 = v6;
  }

  return v10;
}

void sub_1E38E5240(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v43 = a4;
  v13 = sub_1E4207104();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v40 - v20;
  if (a1)
  {

    if ((TVAppFeature.isEnabled.getter(10, v22, v23) & 1) == 0)
    {
      goto LABEL_9;
    }

    if (qword_1EE28F158 != -1)
    {
      OUTLINED_FUNCTION_9_48(&qword_1EE28F158);
    }

    if (sub_1E38E5664(a1[49], qword_1EE2AA7E0, v24))
    {
      v25 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
      sub_1E38E574C(a1, a2, a3, v43, a5, a6, a7);

      OUTLINED_FUNCTION_25_2();
    }

    else
    {
LABEL_9:
      v41 = a5;
      v42 = a7;
      sub_1E37E93E8(a3, v48, &qword_1ECF296C0, &unk_1E429BBE0);
      sub_1E37E93E8(a3, v46, &qword_1ECF296C0, &unk_1E429BBE0);
      if (v47)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498, &qword_1E42A9830);
        if (swift_dynamicCast())
        {
          v27 = swift_allocObject();
          memcpy((v27 + 16), v45, 0x52uLL);
          sub_1E325F6F0(v48, &qword_1ECF296C0, &unk_1E429BBE0);
          v48[0] = v27;
          v48[3] = &unk_1F5D869A0;
          v48[4] = &off_1F5D868A0;
        }
      }

      else
      {
        sub_1E325F6F0(v46, &qword_1ECF296C0, &unk_1E429BBE0);
      }

      v33 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
      (*(v15 + 16))(v21, a2, v13);
      if (__swift_getEnumTagSinglePayload(v21, 1, a6) == 1)
      {
        v34 = *(v15 + 8);
        v35 = v33;
        v34(v21, v13);
        v36 = 0;
      }

      else
      {
        sub_1E38E7D78();
        v37 = v33;
        if (swift_dynamicCast())
        {
          v36 = v44[0];
        }

        else
        {
          v36 = 0;
        }
      }

      v38 = sub_1E38E68BC(a1, v36, v48, v43, v41);

      sub_1E325F6F0(v48, &qword_1ECF296C0, &unk_1E429BBE0);
      v44[0] = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D490, &qword_1E42F44B0);
      v39 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v18, v39 ^ 1u, 1, a6);
      (*(v15 + 32))(v42, v18, v13);
      OUTLINED_FUNCTION_25_2();
    }
  }

  else
  {
    OUTLINED_FUNCTION_32_2();
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  }
}

BOOL sub_1E38E5664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1E37414E0(a1, a2, a3);
  v4 = sub_1E4205DA4();
  v7 = ~(-1 << *(a2 + 32));
  do
  {
    v8 = v4 & v7;
    v9 = (1 << (v4 & v7)) & *(a2 + 56 + (((v4 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    sub_1E3741534(v4, v5, v6);
    v11 = sub_1E4205E84();
    v4 = v8 + 1;
  }

  while ((v11 & 1) == 0);
  return v10;
}

void sub_1E38E574C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v276 = a4;
  v277 = a5;
  v278 = a2;
  v279 = a3;
  v283 = a1;
  v284 = a7;
  v285 = a6;
  sub_1E4207104();
  OUTLINED_FUNCTION_0_10();
  v280 = v8;
  v281 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_18_6();
  v267 = v11;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_18_6();
  v266 = v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_6();
  v272 = v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_18_6();
  v271 = v19;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_18_6();
  v275 = v23;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_18_6();
  v274 = v25;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v27);
  v29 = v265 - v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_18_6();
  v268 = v31;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v32);
  v34 = v265 - v33;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v36);
  v38 = v265 - v37;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v40);
  v42 = v265 - v41;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_18_6();
  v273 = v44;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v45);
  v47 = v265 - v46;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_18_6();
  v269 = v49;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v50);
  v52 = v265 - v51;
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_18_6();
  v270 = v54;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v55);
  v57 = v265 - v56;
  MEMORY[0x1EEE9AC00](v58);
  v60 = v265 - v59;
  MEMORY[0x1EEE9AC00](v61);
  v63 = v265 - v62;
  MEMORY[0x1EEE9AC00](v64);
  v282 = v265 - v65;
  if ((TVAppFeature.isEnabled.getter(10, v66, v67) & 1) == 0)
  {
    goto LABEL_9;
  }

  if (qword_1EE28F158 != -1)
  {
    OUTLINED_FUNCTION_9_48(&qword_1EE28F158);
  }

  v69 = *(v283 + 98);
  if (sub_1E38E5664(*(v283 + 98), qword_1EE2AA7E0, v68))
  {
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v70, v71, v72, v285);
    switch(v69)
    {
      case 189:
      case 190:
      case 214:
        OUTLINED_FUNCTION_12_44();
        v73 = v274;
        v74 = OUTLINED_FUNCTION_16_38();
        v75(v74);
        OUTLINED_FUNCTION_5_64(v73);
        if (v102)
        {
          v76 = OUTLINED_FUNCTION_10_43();
          v77(v76);
          v78 = 0;
        }

        else
        {
          v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4F0, &unk_1E42D7800);
          OUTLINED_FUNCTION_13_55(v101);
          OUTLINED_FUNCTION_26_25();
          if (v102)
          {
            v78 = 0;
          }

          else
          {
            v78 = v103;
          }
        }

        OUTLINED_FUNCTION_8_43();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4F0, &unk_1E42D7800);
        OUTLINED_FUNCTION_3_61();
        sub_1E3D79DF8();
        v105 = v104;

        v106 = OUTLINED_FUNCTION_4_64();
        v107(v106);
        v286 = v105;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4F8, &qword_1E42A9880);
        OUTLINED_FUNCTION_25_30();
        v110 = v275;
        goto LABEL_110;
      case 191:
      case 192:
      case 195:
      case 197:
      case 198:
      case 199:
      case 201:
      case 202:
      case 203:
      case 204:
      case 205:
      case 207:
      case 208:
      case 209:
      case 210:
      case 211:
      case 212:
      case 216:
      case 218:
LABEL_35:
        v29 = v281;
        v78 = *(v280 + 32);
        OUTLINED_FUNCTION_29_20();
        goto LABEL_112;
      case 193:
        OUTLINED_FUNCTION_12_44();
        OUTLINED_FUNCTION_28_25();
        v151();
        v152 = v285;
        if (__swift_getEnumTagSinglePayload(v63, 1, v285) == 1)
        {
          OUTLINED_FUNCTION_17_33();
          v153(v63, v29);
          v78 = 0;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D540, &qword_1E42A98D8);
          OUTLINED_FUNCTION_27_19();
          swift_dynamicCast();
          OUTLINED_FUNCTION_26_25();
          if (v102)
          {
            v78 = 0;
          }

          else
          {
            v78 = v226;
          }
        }

        OUTLINED_FUNCTION_29_20();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D540, &qword_1E42A98D8);
        OUTLINED_FUNCTION_11_47();
        sub_1E3D79DF8();
        v228 = v227;

        v229 = OUTLINED_FUNCTION_4_64();
        v230(v229);
        v286 = v228;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D548, &qword_1E42A98E0);
        OUTLINED_FUNCTION_25_30();
        v213 = swift_dynamicCast() ^ 1;
        v212 = v60;
        v214 = 1;
        v215 = v152;
        goto LABEL_92;
      case 194:
      case 215:
        OUTLINED_FUNCTION_12_44();
        v88 = v271;
        v89 = OUTLINED_FUNCTION_16_38();
        v90(v89);
        OUTLINED_FUNCTION_5_64(v88);
        if (v102)
        {
          v91 = OUTLINED_FUNCTION_10_43();
          v92(v91);
          v78 = 0;
        }

        else
        {
          v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4D0, &qword_1E42A9860);
          OUTLINED_FUNCTION_13_55(v121);
          OUTLINED_FUNCTION_26_25();
          if (v122)
          {
            v78 = 0;
          }

          else
          {
            v78 = v123;
          }
        }

        OUTLINED_FUNCTION_8_43();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4D0, &qword_1E42A9860);
        OUTLINED_FUNCTION_3_61();
        sub_1E3D79DF8();
        v125 = v124;

        v126 = OUTLINED_FUNCTION_4_64();
        v127(v126);
        v286 = v125;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4D8, &qword_1E42A9868);
        OUTLINED_FUNCTION_25_30();
        v110 = v272;
        goto LABEL_110;
      case 196:
        OUTLINED_FUNCTION_12_44();
        v116 = v266;
        v117 = OUTLINED_FUNCTION_16_38();
        v118(v117);
        OUTLINED_FUNCTION_5_64(v116);
        if (v102)
        {
          v119 = OUTLINED_FUNCTION_10_43();
          v120(v119);
          v78 = 0;
        }

        else
        {
          v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4B0, &qword_1E42A9840);
          OUTLINED_FUNCTION_13_55(v195);
          OUTLINED_FUNCTION_26_25();
          if (v196)
          {
            v78 = 0;
          }

          else
          {
            v78 = v197;
          }
        }

        OUTLINED_FUNCTION_8_43();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4B0, &qword_1E42A9840);
        OUTLINED_FUNCTION_3_61();
        sub_1E3D79DF8();
        v199 = v198;

        v200 = OUTLINED_FUNCTION_4_64();
        v201(v200);
        v286 = v199;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4B8, &qword_1E42A9848);
        OUTLINED_FUNCTION_25_30();
        v110 = v267;
        goto LABEL_110;
      case 200:
        OUTLINED_FUNCTION_12_44();
        OUTLINED_FUNCTION_28_25();
        v128();
        OUTLINED_FUNCTION_5_64(v38);
        if (v102)
        {
          v129 = OUTLINED_FUNCTION_4_64();
          v130(v129);
          v78 = 0;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D508, &qword_1E42A9890);
          v202 = OUTLINED_FUNCTION_27_19();
          OUTLINED_FUNCTION_34_24(v202, v38, v203, v204);
          OUTLINED_FUNCTION_26_25();
          if (v205)
          {
            v78 = 0;
          }

          else
          {
            v78 = v206;
          }
        }

        v52 = v284;
        v60 = v265[8];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D508, &qword_1E42A9890);
        OUTLINED_FUNCTION_11_47();
        sub_1E3D79DF8();
        v208 = v207;

        OUTLINED_FUNCTION_17_33();
        v38 = v282;
        v209(v282, v29);
        v286 = v208;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D510, &qword_1E42A9898);
        OUTLINED_FUNCTION_25_30();
        OUTLINED_FUNCTION_45_17(v60, v210, v211);
        OUTLINED_FUNCTION_21_18();
LABEL_92:
        __swift_storeEnumTagSinglePayload(v212, v213, v214, v215);
        v147 = OUTLINED_FUNCTION_19_34();
        v148 = v60;
        goto LABEL_111;
      case 206:
      case 217:
        v95 = v280;
        v29 = v281;
        OUTLINED_FUNCTION_28_25();
        v96();
        v97 = v285;
        if (__swift_getEnumTagSinglePayload(v57, 1, v285) == 1)
        {
          (*(v95 + 8))(v57, v29);
          v98 = 0;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3A520, &qword_1E42A98C8);
          OUTLINED_FUNCTION_27_19();
          swift_dynamicCast();
          OUTLINED_FUNCTION_26_25();
          if (v102)
          {
            v98 = 0;
          }

          else
          {
            v98 = v154;
          }
        }

        OUTLINED_FUNCTION_29_20();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3A520, &qword_1E42A98C8);
        OUTLINED_FUNCTION_3_61();
        sub_1E3D79DF8();
        v156 = v155;

        (*(v95 + 8))(v38, v29);
        v286 = v156;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D538, &qword_1E42A98D0);
        OUTLINED_FUNCTION_25_30();
        v157 = v270;
        v158 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v157, v158 ^ 1u, 1, v97);
        v78 = *(v95 + 32);
        (v78)(v38, v157, v29);
        goto LABEL_112;
      case 213:
LABEL_24:
        OUTLINED_FUNCTION_12_44();
        OUTLINED_FUNCTION_28_25();
        v99();
        OUTLINED_FUNCTION_5_64(v52);
        if (v102)
        {
          OUTLINED_FUNCTION_17_33();
          v100(v52, v29);
          v78 = 0;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3A540, &qword_1E42A98B8);
          v159 = OUTLINED_FUNCTION_27_19();
          OUTLINED_FUNCTION_34_24(v159, v52, v160, v161);
          OUTLINED_FUNCTION_26_25();
          if (v162)
          {
            v78 = 0;
          }

          else
          {
            v78 = v163;
          }
        }

        v38 = v282;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3A540, &qword_1E42A98B8);
        OUTLINED_FUNCTION_11_47();
        sub_1E3D79DF8();
        v165 = v164;

        v166 = OUTLINED_FUNCTION_4_64();
        v167(v166);
        v286 = v165;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D530, &qword_1E42A98C0);
        OUTLINED_FUNCTION_25_30();
        v168 = v269;
        OUTLINED_FUNCTION_45_17(v269, v169, v170);
        OUTLINED_FUNCTION_21_18();
        __swift_storeEnumTagSinglePayload(v171, v172, v173, v174);
        v175 = OUTLINED_FUNCTION_19_34();
        (v78)(v175, v168, v29);
        v52 = v284;
        goto LABEL_112;
      case 219:
      case 220:
        OUTLINED_FUNCTION_12_44();
        OUTLINED_FUNCTION_28_25();
        v93();
        OUTLINED_FUNCTION_5_64(v47);
        if (v102)
        {
          OUTLINED_FUNCTION_17_33();
          v94(v47, v29);
          v78 = 0;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3A530, &qword_1E42A98A8);
          v131 = OUTLINED_FUNCTION_27_19();
          OUTLINED_FUNCTION_34_24(v131, v47, v132, v133);
          OUTLINED_FUNCTION_26_25();
          if (v134)
          {
            v78 = 0;
          }

          else
          {
            v78 = v135;
          }
        }

        OUTLINED_FUNCTION_29_20();
        v136 = v273;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3A530, &qword_1E42A98A8);
        OUTLINED_FUNCTION_11_47();
        sub_1E3D79DF8();
        v138 = v137;

        v139 = OUTLINED_FUNCTION_4_64();
        v140(v139);
        v286 = v138;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D528, &qword_1E42A98B0);
        OUTLINED_FUNCTION_25_30();
        OUTLINED_FUNCTION_45_17(v136, v141, v142);
        OUTLINED_FUNCTION_21_18();
        __swift_storeEnumTagSinglePayload(v143, v144, v145, v146);
        v147 = OUTLINED_FUNCTION_19_34();
        v148 = v136;
        goto LABEL_111;
      case 221:
        OUTLINED_FUNCTION_12_44();
        OUTLINED_FUNCTION_28_25();
        v149();
        OUTLINED_FUNCTION_5_64(v42);
        if (v102)
        {
          OUTLINED_FUNCTION_17_33();
          v150(v42, v29);
          v78 = 0;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D518, &unk_1E42D7820);
          v216 = OUTLINED_FUNCTION_27_19();
          OUTLINED_FUNCTION_34_24(v216, v42, v217, v218);
          OUTLINED_FUNCTION_26_25();
          if (v219)
          {
            v78 = 0;
          }

          else
          {
            v78 = v220;
          }
        }

        OUTLINED_FUNCTION_8_43();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D518, &unk_1E42D7820);
        OUTLINED_FUNCTION_3_61();
        sub_1E3D79DF8();
        v222 = v221;

        v223 = OUTLINED_FUNCTION_4_64();
        v224(v223);
        v286 = v222;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D520, &qword_1E42A98A0);
        OUTLINED_FUNCTION_25_30();
        v225 = &v291;
        goto LABEL_109;
      default:
        switch(v69)
        {
          case 169:
            OUTLINED_FUNCTION_12_44();
            v190 = v265[3];
            v191 = OUTLINED_FUNCTION_16_38();
            v192(v191);
            OUTLINED_FUNCTION_5_64(v190);
            if (v102)
            {
              v193 = OUTLINED_FUNCTION_10_43();
              v194(v193);
              v78 = 0;
            }

            else
            {
              v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4E0, &qword_1E42A9870);
              OUTLINED_FUNCTION_13_55(v247);
              OUTLINED_FUNCTION_26_25();
              if (v248)
              {
                v78 = 0;
              }

              else
              {
                v78 = v249;
              }
            }

            OUTLINED_FUNCTION_8_43();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4E0, &qword_1E42A9870);
            OUTLINED_FUNCTION_3_61();
            sub_1E3D79DF8();
            v251 = v250;

            v252 = OUTLINED_FUNCTION_4_64();
            v253(v252);
            v286 = v251;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4E8, &qword_1E42A9878);
            OUTLINED_FUNCTION_25_30();
            v225 = &v289;
            break;
          case 170:
            OUTLINED_FUNCTION_12_44();
            v185 = v265[4];
            v186 = OUTLINED_FUNCTION_16_38();
            v187(v186);
            OUTLINED_FUNCTION_5_64(v185);
            if (v102)
            {
              v188 = OUTLINED_FUNCTION_10_43();
              v189(v188);
              v78 = 0;
            }

            else
            {
              v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4A0, &unk_1E42D7810);
              OUTLINED_FUNCTION_13_55(v240);
              OUTLINED_FUNCTION_26_25();
              if (v241)
              {
                v78 = 0;
              }

              else
              {
                v78 = v242;
              }
            }

            OUTLINED_FUNCTION_8_43();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4A0, &unk_1E42D7810);
            OUTLINED_FUNCTION_3_61();
            sub_1E3D79DF8();
            v244 = v243;

            v245 = OUTLINED_FUNCTION_4_64();
            v246(v245);
            v286 = v244;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4A8, &qword_1E42A9838);
            OUTLINED_FUNCTION_25_30();
            v225 = &v290;
            break;
          case 171:
            v183 = v281;
            (*(v280 + 16))(v29, v278, v281);
            OUTLINED_FUNCTION_5_64(v29);
            if (v102)
            {
              OUTLINED_FUNCTION_17_33();
              v184(v29, v183);
              v78 = 0;
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C960, &unk_1E42A7840);
              v231 = OUTLINED_FUNCTION_27_19();
              OUTLINED_FUNCTION_34_24(v231, v29, v232, v233);
              OUTLINED_FUNCTION_26_25();
              if (v234)
              {
                v78 = 0;
              }

              else
              {
                v78 = v235;
              }
            }

            v52 = v284;
            v29 = v183;
            v38 = v282;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C960, &unk_1E42A7840);
            OUTLINED_FUNCTION_3_61();
            sub_1E3D79DF8();
            v237 = v236;

            v238 = OUTLINED_FUNCTION_4_64();
            v239(v238);
            v286 = v237;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D500, &qword_1E42A9888);
            OUTLINED_FUNCTION_25_30();
            v225 = &v288;
            break;
          case 172:
          case 173:
          case 174:
          case 175:
          case 176:
          case 177:
          case 180:
          case 181:
          case 182:
            goto LABEL_35;
          case 178:
            goto LABEL_24;
          case 179:
          case 183:
            OUTLINED_FUNCTION_12_44();
            v84 = OUTLINED_FUNCTION_16_38();
            v85(v84);
            OUTLINED_FUNCTION_5_64(v34);
            if (v102)
            {
              v86 = OUTLINED_FUNCTION_10_43();
              v87(v86);
              v78 = 0;
            }

            else
            {
              v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4E0, &qword_1E42A9870);
              OUTLINED_FUNCTION_13_55(v176);
              OUTLINED_FUNCTION_26_25();
              if (v177)
              {
                v78 = 0;
              }

              else
              {
                v78 = v178;
              }
            }

            OUTLINED_FUNCTION_8_43();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4E0, &qword_1E42A9870);
            OUTLINED_FUNCTION_3_61();
            sub_1E3D79DF8();
            v180 = v179;

            v181 = OUTLINED_FUNCTION_4_64();
            v182(v181);
            v286 = v180;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4E8, &qword_1E42A9878);
            OUTLINED_FUNCTION_25_30();
            v110 = v268;
            goto LABEL_110;
          default:
            if (v69 != 256)
            {
              goto LABEL_35;
            }

            OUTLINED_FUNCTION_12_44();
            v111 = v265[1];
            v112 = OUTLINED_FUNCTION_16_38();
            v113(v112);
            OUTLINED_FUNCTION_5_64(v111);
            if (v102)
            {
              v114 = OUTLINED_FUNCTION_10_43();
              v115(v114);
              v78 = 0;
            }

            else
            {
              v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4C0, &qword_1E42A9850);
              OUTLINED_FUNCTION_13_55(v254);
              OUTLINED_FUNCTION_26_25();
              if (v255)
              {
                v78 = 0;
              }

              else
              {
                v78 = v256;
              }
            }

            OUTLINED_FUNCTION_8_43();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4C0, &qword_1E42A9850);
            OUTLINED_FUNCTION_3_61();
            sub_1E3D79DF8();
            v258 = v257;

            v259 = OUTLINED_FUNCTION_4_64();
            v260(v259);
            v286 = v258;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4C8, &qword_1E42A9858);
            OUTLINED_FUNCTION_25_30();
            v225 = &v287;
            break;
        }

LABEL_109:
        v110 = *(v225 - 32);
LABEL_110:
        OUTLINED_FUNCTION_45_17(v110, v108, v109);
        OUTLINED_FUNCTION_21_18();
        __swift_storeEnumTagSinglePayload(v261, v262, v263, v264);
        v147 = OUTLINED_FUNCTION_19_34();
        v148 = v110;
LABEL_111:
        (v78)(v147, v148, v29);
LABEL_112:
        (v78)(v52, v38, v29);
        OUTLINED_FUNCTION_25_2();
        break;
    }
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_32_2();
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v79, v80, v81, v82);
  }
}

void *sub_1E38E68BC(unsigned __int16 *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  v263 = &v259 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D550, &qword_1E42E1060);
  v14 = OUTLINED_FUNCTION_17_2(v13);
  MEMORY[0x1EEE9AC00](v14);
  v265 = &v259 - v15;
  v264 = type metadata accessor for ViewModelLinkEntity(0);
  OUTLINED_FUNCTION_0_10();
  v260 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v261 = &v259 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v262 = &v259 - v21;
  v22 = swift_allocObject();
  v28 = v22;
  *(v22 + 16) = 0;
  v29 = (v22 + 16);
  v30 = a1[49];
  switch(a1[49])
  {
    case 0xA6u:
    case 0xA8u:
    case 0xC0u:
      OUTLINED_FUNCTION_33_25(v22, v23, &qword_1ECF296C0, &unk_1E429BBE0);
      if (*(&v267[1] + 1))
      {
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498, &qword_1E42A9830);
        if (OUTLINED_FUNCTION_18_29(v40, v41, v40, &type metadata for CollectionViewCellContext))
        {
          v43 = OUTLINED_FUNCTION_0_75();
LABEL_50:
          OUTLINED_FUNCTION_1_85(v42, v43, v44);
          type metadata accessor for CanonicalInfoCardCell();
          v79 = OUTLINED_FUNCTION_15_50();
          v78 = sub_1E380F630(v79, v80);
          goto LABEL_82;
        }
      }

      else
      {
        sub_1E325F6F0(v267, &qword_1ECF296C0, &unk_1E429BBE0);
      }

      OUTLINED_FUNCTION_24_20();
      OUTLINED_FUNCTION_23_27();
      goto LABEL_50;
    case 0xA7u:
      if (a2)
      {
        v144 = type metadata accessor for FeaturedLockupCell();
        v145 = OUTLINED_FUNCTION_31_21(v144);
        if (v145)
        {
          v146 = a2;
        }
      }

      else
      {
        v145 = 0;
      }

      sub_1E37E93E8(a3, &v269, &qword_1ECF296C0, &unk_1E429BBE0);
      if (*(&v270 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498, &qword_1E42A9830);
        if (swift_dynamicCast())
        {
          v220 = v268[0];
          v221 = v268[1];
          v222 = v268[2];
          v223 = v268[3];
          v224 = v268[4];
          v225 = v268[5];
        }

        else
        {
          v225 = 0;
          v224 = xmmword_1E4297170;
          v220 = 0uLL;
          v221 = 0uLL;
          v222 = 0uLL;
          v223 = 0uLL;
        }

        v267[0] = v220;
        v267[1] = v221;
        v267[2] = v222;
        v267[3] = v223;
        v267[4] = v224;
      }

      else
      {
        sub_1E325F6F0(&v269, &qword_1ECF296C0, &unk_1E429BBE0);
        v225 = 0;
        memset(v267, 0, 72);
        *(&v267[4] + 1) = 1;
      }

      LOWORD(v267[5]) = v225;
      memcpy(v268, v267, 0x52uLL);
      sub_1E37E93E8(a3, v266, &qword_1ECF296C0, &unk_1E429BBE0);
      if (v266[3])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498, &qword_1E42A9830);
        if (swift_dynamicCast())
        {
          v250 = v268;
          v251 = v269;
          v252 = v270;
          v253 = v271;
          v254 = v272 | (v273 << 16);
          goto LABEL_218;
        }
      }

      else
      {
        sub_1E325F6F0(v266, &qword_1ECF296C0, &unk_1E429BBE0);
      }

      OUTLINED_FUNCTION_24_20();
      OUTLINED_FUNCTION_23_27();
LABEL_218:
      v250[6] = v251;
      v250[7] = v252;
      v271 = v253;
      v272 = v254;
      v273 = BYTE2(v254);
      type metadata accessor for FeaturedLockupCell();
      v158 = sub_1E40BCBE0(a1, v145, v268);

      sub_1E325F6F0(v267, &unk_1ECF31AB0, qword_1E42CD4C0);
      goto LABEL_219;
    case 0xA9u:
    case 0xB2u:
    case 0xB3u:
    case 0xB7u:
    case 0xD5u:
      v22 = TVAppFeature.isEnabled.getter(10, v23, v24);
      if (v22)
      {
        goto LABEL_84;
      }

      goto LABEL_73;
    case 0xAAu:
    case 0xABu:
    case 0xD6u:
      v22 = TVAppFeature.isEnabled.getter(10, v23, v24);
      if ((v22 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_84;
    case 0xACu:
    case 0xB9u:
    case 0xBAu:
    case 0xCAu:
    case 0xCBu:
    case 0xCFu:
    case 0xD0u:
    case 0xD1u:
    case 0xDDu:
    case 0xDEu:
    case 0xDFu:
    case 0xE0u:
    case 0xE1u:
    case 0xE2u:
    case 0xE3u:
    case 0xE4u:
    case 0xE5u:
    case 0xE6u:
    case 0xE7u:
    case 0xE8u:
    case 0xE9u:
    case 0xEAu:
    case 0xEBu:
    case 0xECu:
    case 0xEDu:
    case 0xEEu:
    case 0xEFu:
    case 0xF0u:
    case 0xF1u:
    case 0xF2u:
    case 0xF3u:
    case 0xF5u:
    case 0xF6u:
    case 0xF7u:
    case 0xF8u:
    case 0xF9u:
    case 0xFAu:
    case 0xFBu:
    case 0xFCu:
    case 0xFDu:
    case 0xFEu:
    case 0xFFu:
      goto LABEL_84;
    case 0xADu:
    case 0xC5u:
    case 0xD8u:
      goto LABEL_22;
    case 0xAEu:
    case 0xAFu:
      if (a2)
      {
        v55 = type metadata accessor for FlowcaseViewCell();
        v56 = OUTLINED_FUNCTION_31_21(v55);
        if (v56)
        {
          v57 = a2;
        }
      }

      else
      {
        v56 = 0;
      }

      type metadata accessor for FlowcaseViewCell();
      v158 = sub_1E3DEBDA0(a1, v56, a3);
      goto LABEL_174;
    case 0xB0u:
      if (a2)
      {
        v126 = type metadata accessor for NavBarCell();
        v22 = OUTLINED_FUNCTION_31_21(v126);
      }

      OUTLINED_FUNCTION_33_25(v22, v23, &qword_1ECF296C0, &unk_1E429BBE0);
      if (*(&v267[1] + 1))
      {
        v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498, &qword_1E42A9830);
        if (OUTLINED_FUNCTION_18_29(v201, v202, v201, &type metadata for CollectionViewCellContext))
        {
          v204 = OUTLINED_FUNCTION_0_75();
          goto LABEL_166;
        }
      }

      else
      {
        sub_1E325F6F0(v267, &qword_1ECF296C0, &unk_1E429BBE0);
      }

      OUTLINED_FUNCTION_24_20();
      OUTLINED_FUNCTION_23_27();
LABEL_166:
      OUTLINED_FUNCTION_1_85(v203, v204, v205);
      type metadata accessor for NavBarCell();
      v206 = OUTLINED_FUNCTION_6_53();
      v78 = sub_1E3DFD154(v206, v207);
      goto LABEL_82;
    case 0xB1u:
      if (a2)
      {
        v152 = type metadata accessor for VideoItunesExtrasDescriptionCell();
        v22 = OUTLINED_FUNCTION_31_21(v152);
      }

      OUTLINED_FUNCTION_33_25(v22, v23, &qword_1ECF296C0, &unk_1E429BBE0);
      if (*(&v267[1] + 1))
      {
        v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498, &qword_1E42A9830);
        if (OUTLINED_FUNCTION_18_29(v243, v244, v243, &type metadata for CollectionViewCellContext))
        {
          v246 = OUTLINED_FUNCTION_0_75();
          goto LABEL_210;
        }
      }

      else
      {
        sub_1E325F6F0(v267, &qword_1ECF296C0, &unk_1E429BBE0);
      }

      OUTLINED_FUNCTION_24_20();
      OUTLINED_FUNCTION_23_27();
LABEL_210:
      OUTLINED_FUNCTION_1_85(v245, v246, v247);
      type metadata accessor for VideoItunesExtrasDescriptionCell();
      v248 = OUTLINED_FUNCTION_6_53();
      v78 = sub_1E375C9C4(v248, v249);
      goto LABEL_82;
    case 0xB4u:
      OUTLINED_FUNCTION_33_25(v22, v23, &qword_1ECF296C0, &unk_1E429BBE0);
      if (*(&v267[1] + 1))
      {
        v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498, &qword_1E42A9830);
        if (OUTLINED_FUNCTION_18_29(v139, v140, v139, &type metadata for CollectionViewCellContext))
        {
          v142 = OUTLINED_FUNCTION_0_75();
          goto LABEL_187;
        }
      }

      else
      {
        sub_1E325F6F0(v267, &qword_1ECF296C0, &unk_1E429BBE0);
      }

      OUTLINED_FUNCTION_24_20();
      OUTLINED_FUNCTION_23_27();
LABEL_187:
      OUTLINED_FUNCTION_1_85(v141, v142, v143);
      type metadata accessor for OfferCardCollectionViewCell();
      v218 = OUTLINED_FUNCTION_15_50();
      v78 = sub_1E4178184(v218, v219);
      goto LABEL_82;
    case 0xB5u:
    case 0xCCu:
    case 0xCDu:
      OUTLINED_FUNCTION_33_25(v22, v23, &qword_1ECF296C0, &unk_1E429BBE0);
      if (*(&v267[1] + 1))
      {
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498, &qword_1E42A9830);
        if (OUTLINED_FUNCTION_18_29(v45, v46, v45, &type metadata for CollectionViewCellContext))
        {
          v48 = OUTLINED_FUNCTION_0_75();
          goto LABEL_53;
        }
      }

      else
      {
        sub_1E325F6F0(v267, &qword_1ECF296C0, &unk_1E429BBE0);
      }

      OUTLINED_FUNCTION_24_20();
      OUTLINED_FUNCTION_23_27();
LABEL_53:
      OUTLINED_FUNCTION_1_85(v47, v48, v49);
      type metadata accessor for FloatingCardHostingCollectionViewCell();
      v81 = OUTLINED_FUNCTION_15_50();
      v78 = sub_1E39C4DA4(v81, v82);
      goto LABEL_82;
    case 0xB6u:
      OUTLINED_FUNCTION_33_25(v22, v23, &qword_1ECF296C0, &unk_1E429BBE0);
      if (*(&v267[1] + 1))
      {
        v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498, &qword_1E42A9830);
        if (OUTLINED_FUNCTION_18_29(v134, v135, v134, &type metadata for CollectionViewCellContext))
        {
          v137 = OUTLINED_FUNCTION_0_75();
          goto LABEL_184;
        }
      }

      else
      {
        sub_1E325F6F0(v267, &qword_1ECF296C0, &unk_1E429BBE0);
      }

      OUTLINED_FUNCTION_24_20();
      OUTLINED_FUNCTION_23_27();
LABEL_184:
      OUTLINED_FUNCTION_1_85(v136, v137, v138);
      type metadata accessor for OfferListLockupCell();
      v216 = OUTLINED_FUNCTION_15_50();
      v78 = sub_1E3B93B04(v216, v217);
      goto LABEL_82;
    case 0xB8u:
    case 0xBCu:
    case 0xBDu:
    case 0xBEu:
      v22 = TVAppFeature.isEnabled.getter(10, v23, v24);
      if (v22)
      {
        v22 = [objc_opt_self() isVision];
        if (!v22)
        {
          goto LABEL_84;
        }
      }

      goto LABEL_73;
    case 0xBBu:
      goto LABEL_73;
    case 0xBFu:
      if (a2)
      {
        v124 = type metadata accessor for SportsPlayByPlayCell();
        OUTLINED_FUNCTION_31_21(v124);
      }

      type metadata accessor for SportsPlayByPlayCell();
      v199 = OUTLINED_FUNCTION_7_69();
      v78 = sub_1E3743588(v199, v200);
      goto LABEL_82;
    case 0xC1u:
      v22 = TVAppFeature.isEnabled.getter(10, v23, v24);
      if (v22)
      {
        v22 = sub_1E373F6E0(193, 193, v95, v96, v97, v98);
      }

LABEL_73:
      OUTLINED_FUNCTION_33_25(v22, v23, &qword_1ECF296C0, &unk_1E429BBE0);
      if (*(&v267[1] + 1))
      {
        v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498, &qword_1E42A9830);
        if (OUTLINED_FUNCTION_18_29(v99, v100, v99, &type metadata for CollectionViewCellContext))
        {
          v102 = OUTLINED_FUNCTION_0_75();
          goto LABEL_78;
        }
      }

      else
      {
        sub_1E325F6F0(v267, &qword_1ECF296C0, &unk_1E429BBE0);
      }

      OUTLINED_FUNCTION_24_20();
      OUTLINED_FUNCTION_23_27();
LABEL_78:
      OUTLINED_FUNCTION_2_65(v101, v102, v103);
      if (a4)
      {
        type metadata accessor for CardCollectionViewCellLayout();
        a4 = swift_dynamicCastClass();
      }

      type metadata accessor for CardCollectionViewCell();
      v60 = v268;
      v58 = a1;
      v59 = a2;
      v61 = a4;
      goto LABEL_81;
    case 0xC2u:
    case 0xCEu:
    case 0xD7u:
    case 0xD9u:
      v32 = sub_1E373F6E0(a1[49], 206, v24, v25, v26, v27);
      OUTLINED_FUNCTION_33_25(v32, v33, &qword_1ECF296C0, &unk_1E429BBE0);
      if (*(&v267[1] + 1))
      {
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498, &qword_1E42A9830);
        if (OUTLINED_FUNCTION_18_29(v34, v35, v34, &type metadata for CollectionViewCellContext))
        {
          v37 = OUTLINED_FUNCTION_0_75();
          goto LABEL_34;
        }
      }

      else
      {
        sub_1E325F6F0(v267, &qword_1ECF296C0, &unk_1E429BBE0);
      }

      OUTLINED_FUNCTION_24_20();
      OUTLINED_FUNCTION_23_27();
LABEL_34:
      OUTLINED_FUNCTION_1_85(v36, v37, v38);
      type metadata accessor for LibViewModel();
      v62 = swift_dynamicCastClass();
      if (v62)
      {
        if ((sub_1E39DFFC0(v62, v63, v64) & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      else if ((TVAppFeature.isEnabled.getter(10, v63, v64) & 1) == 0)
      {
LABEL_42:
        if (a2)
        {
          v74 = type metadata accessor for MonogramLockupCell();
          OUTLINED_FUNCTION_31_21(v74);
        }

        type metadata accessor for MonogramLockupCell();
        v153 = OUTLINED_FUNCTION_6_53();
        v78 = sub_1E3DCCCE0(v153, v154, v155);
        goto LABEL_82;
      }

      if ((sub_1E373F6E0(v30, 206, v65, v66, v67, v68) & 1) == 0 && (sub_1E373F6E0(v30, 217, v69, v70, v71, v72) & 1) == 0)
      {
        goto LABEL_42;
      }

      if (a2)
      {
        v73 = type metadata accessor for EntityLockupCollectionViewCell();
        OUTLINED_FUNCTION_31_21(v73);
      }

      type metadata accessor for EntityLockupCollectionViewCell();
      v159 = OUTLINED_FUNCTION_6_53();
      v78 = sub_1E3AC113C(v159, v160, v161);
LABEL_82:
      v104 = *v29;
      *v29 = v78;
LABEL_83:

LABEL_84:
      type metadata accessor for Accessibility();
      sub_1E40A8408();
      v108 = v265;
      if (v106)
      {
        if (*v29)
        {
          sub_1E38E89A0(v105, v106, *v29);
        }

        else
        {
        }
      }

      if (TVAppFeature.isEnabled.getter(7, v106, v107))
      {

        sub_1E3CF1174();
        if (__swift_getEnumTagSinglePayload(v108, 1, v264) == 1)
        {
          sub_1E325F6F0(v108, &qword_1ECF2D550, &qword_1E42E1060);
        }

        else
        {
          v109 = v262;
          sub_1E38E7DBC(v108, v262);
          sub_1E4206474();
          v110 = v263;
          OUTLINED_FUNCTION_32_2();
          __swift_storeEnumTagSinglePayload(v111, v112, v113, v114);
          v115 = v261;
          sub_1E38E7FC4(v109, v261);
          sub_1E4206434();

          v116 = sub_1E4206424();
          v117 = (*(v260 + 80) + 40) & ~*(v260 + 80);
          v118 = swift_allocObject();
          v119 = MEMORY[0x1E69E85E0];
          v118[2] = v116;
          v118[3] = v119;
          v118[4] = v28;
          sub_1E38E7DBC(v115, v118 + v117);
          sub_1E3797438(0, 0, v110, &unk_1E42A98F0, v118);

          sub_1E38E80FC(v109);
        }
      }

      swift_beginAccess();
      v120 = *(v28 + 16);
      v121 = v120;

      return v120;
    case 0xC3u:
      if (a2)
      {
        v127 = type metadata accessor for SportsFavoriteBannerCell();
        v22 = OUTLINED_FUNCTION_31_21(v127);
        v56 = v22;
        if (v22)
        {
          v22 = a2;
        }
      }

      else
      {
        v56 = 0;
      }

      OUTLINED_FUNCTION_33_25(v22, v23, &qword_1ECF296C0, &unk_1E429BBE0);
      if (*(&v267[1] + 1))
      {
        v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498, &qword_1E42A9830);
        if (OUTLINED_FUNCTION_18_29(v208, v209, v208, &type metadata for CollectionViewCellContext))
        {
          v211 = OUTLINED_FUNCTION_0_75();
          goto LABEL_173;
        }
      }

      else
      {
        sub_1E325F6F0(v267, &qword_1ECF296C0, &unk_1E429BBE0);
      }

      OUTLINED_FUNCTION_24_20();
      OUTLINED_FUNCTION_23_27();
LABEL_173:
      OUTLINED_FUNCTION_1_85(v210, v211, v212);
      type metadata accessor for SportsFavoriteBannerCell();
      v158 = sub_1E3B799C0(a1);

LABEL_174:
      goto LABEL_219;
    case 0xC4u:
      if (TVAppFeature.isEnabled.getter(10, v23, v24))
      {
        goto LABEL_84;
      }

      v22 = [objc_opt_self() isPad];
      if (!v22)
      {
        if (a2)
        {
          v125 = type metadata accessor for SyndicationCell();
          OUTLINED_FUNCTION_31_21(v125);
        }

        type metadata accessor for SyndicationCell();
        v257 = OUTLINED_FUNCTION_7_69();
        v78 = sub_1E3C5E3E4(v257, v258);
        goto LABEL_82;
      }

LABEL_22:
      OUTLINED_FUNCTION_33_25(v22, v23, &qword_1ECF296C0, &unk_1E429BBE0);
      if (*(&v267[1] + 1))
      {
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498, &qword_1E42A9830);
        if (OUTLINED_FUNCTION_18_29(v50, v51, v50, &type metadata for CollectionViewCellContext))
        {
          v53 = OUTLINED_FUNCTION_0_75();
          goto LABEL_31;
        }
      }

      else
      {
        sub_1E325F6F0(v267, &qword_1ECF296C0, &unk_1E429BBE0);
      }

      OUTLINED_FUNCTION_24_20();
      OUTLINED_FUNCTION_23_27();
LABEL_31:
      OUTLINED_FUNCTION_1_85(v52, v53, v54);
      type metadata accessor for CardCollectionViewCell();
      v58 = OUTLINED_FUNCTION_15_50();
      v61 = 0;
LABEL_81:
      v78 = sub_1E3EEF4F4(v58, v59, v60, v61);
      goto LABEL_82;
    case 0xC6u:
      OUTLINED_FUNCTION_33_25(v22, v23, &qword_1ECF296C0, &unk_1E429BBE0);
      if (*(&v267[1] + 1))
      {
        v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498, &qword_1E42A9830);
        if (OUTLINED_FUNCTION_18_29(v89, v90, v89, &type metadata for CollectionViewCellContext))
        {
          v92 = OUTLINED_FUNCTION_0_75();
          goto LABEL_150;
        }
      }

      else
      {
        sub_1E325F6F0(v267, &qword_1ECF296C0, &unk_1E429BBE0);
      }

      OUTLINED_FUNCTION_24_20();
      OUTLINED_FUNCTION_23_27();
LABEL_150:
      OUTLINED_FUNCTION_2_65(v91, v92, v93);
      if (a2)
      {
        v185 = type metadata accessor for BrandLockupCell();
        OUTLINED_FUNCTION_31_21(v185);
      }

      type metadata accessor for BrandLockupCell();
      v186 = OUTLINED_FUNCTION_6_53();
      v78 = sub_1E3E00E14(v186, v187, v188);
      goto LABEL_82;
    case 0xC7u:
      if (a2)
      {
        v123 = type metadata accessor for ViewHostingCell();
        v22 = OUTLINED_FUNCTION_31_21(v123);
      }

      OUTLINED_FUNCTION_33_25(v22, v23, &qword_1ECF296C0, &unk_1E429BBE0);
      if (*(&v267[1] + 1))
      {
        v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498, &qword_1E42A9830);
        if (OUTLINED_FUNCTION_18_29(v191, v192, v191, &type metadata for CollectionViewCellContext))
        {
          v194 = OUTLINED_FUNCTION_0_75();
          goto LABEL_159;
        }
      }

      else
      {
        sub_1E325F6F0(v267, &qword_1ECF296C0, &unk_1E429BBE0);
      }

      OUTLINED_FUNCTION_24_20();
      OUTLINED_FUNCTION_23_27();
LABEL_159:
      OUTLINED_FUNCTION_1_85(v193, v194, v195);
      type metadata accessor for ViewHostingCell();
      v196 = OUTLINED_FUNCTION_6_53();
      v78 = sub_1E3BC7768(v196, v197, v198);
      goto LABEL_82;
    case 0xC8u:
      if (a2)
      {
        v151 = type metadata accessor for OrdinalCardCell();
        v22 = OUTLINED_FUNCTION_31_21(v151);
      }

      OUTLINED_FUNCTION_33_25(v22, v23, &qword_1ECF296C0, &unk_1E429BBE0);
      if (*(&v267[1] + 1))
      {
        v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498, &qword_1E42A9830);
        if (OUTLINED_FUNCTION_18_29(v235, v236, v235, &type metadata for CollectionViewCellContext))
        {
          v238 = OUTLINED_FUNCTION_0_75();
          goto LABEL_204;
        }
      }

      else
      {
        sub_1E325F6F0(v267, &qword_1ECF296C0, &unk_1E429BBE0);
      }

      OUTLINED_FUNCTION_24_20();
      OUTLINED_FUNCTION_23_27();
LABEL_204:
      OUTLINED_FUNCTION_1_85(v237, v238, v239);
      type metadata accessor for OrdinalCardCell();
      v240 = OUTLINED_FUNCTION_6_53();
      v78 = sub_1E3BD0C60(v240, v241, v242);
      goto LABEL_82;
    case 0xC9u:
      if (a2)
      {
        v88 = type metadata accessor for OrdinalListCell();
        v22 = OUTLINED_FUNCTION_31_21(v88);
      }

      OUTLINED_FUNCTION_33_25(v22, v23, &qword_1ECF296C0, &unk_1E429BBE0);
      if (*(&v267[1] + 1))
      {
        v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498, &qword_1E42A9830);
        if (OUTLINED_FUNCTION_18_29(v177, v178, v177, &type metadata for CollectionViewCellContext))
        {
          v180 = OUTLINED_FUNCTION_0_75();
          goto LABEL_147;
        }
      }

      else
      {
        sub_1E325F6F0(v267, &qword_1ECF296C0, &unk_1E429BBE0);
      }

      OUTLINED_FUNCTION_24_20();
      OUTLINED_FUNCTION_23_27();
LABEL_147:
      OUTLINED_FUNCTION_1_85(v179, v180, v181);
      type metadata accessor for OrdinalListCell();
      v182 = OUTLINED_FUNCTION_6_53();
      v78 = sub_1E3FB0CFC(v182, v183, v184);
      goto LABEL_82;
    case 0xD2u:
    case 0xD3u:
    case 0xD4u:
      if (a2)
      {
        v39 = type metadata accessor for SportsFavoritesLockupCell();
        OUTLINED_FUNCTION_31_21(v39);
      }

      type metadata accessor for SportsFavoritesLockupFactory();
      v76 = OUTLINED_FUNCTION_7_69();
      v78 = sub_1E401D114(v76, v77);
      goto LABEL_82;
    case 0xDAu:
      if (a2)
      {
        v94 = type metadata accessor for HintListCell();
        OUTLINED_FUNCTION_31_21(v94);
      }

      type metadata accessor for SearchCellFactory();
      v189 = OUTLINED_FUNCTION_7_69();
      v78 = sub_1E3B46574(v189, v190);
      goto LABEL_82;
    case 0xDBu:
    case 0xDCu:
      TVAppFeature.isEnabled.getter(10, v23, v24);
      goto LABEL_84;
    case 0xF4u:
      OUTLINED_FUNCTION_33_25(v22, v23, &qword_1ECF296C0, &unk_1E429BBE0);
      if (*(&v267[1] + 1))
      {
        v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498, &qword_1E42A9830);
        if (OUTLINED_FUNCTION_18_29(v128, v129, v128, &type metadata for CollectionViewCellContext))
        {
          v130 = LOBYTE(v268[0]);
          v131 = *(v268 + 1);
          v133 = *(&v268[1] + 1);
          v132 = *&v268[1];
          goto LABEL_177;
        }
      }

      else
      {
        sub_1E325F6F0(v267, &qword_1ECF296C0, &unk_1E429BBE0);
      }

      v131 = 0.0;
      v130 = 2;
      v132 = 0.0;
      v133 = 0.0;
LABEL_177:
      if (a2)
      {
        v213 = type metadata accessor for LeagueStandingsCard();
        OUTLINED_FUNCTION_31_21(v213);
      }

      if (v130 == 2)
      {
        v131 = 0.0;
        v132 = 0.0;
        v133 = 0.0;
      }

      type metadata accessor for LeagueStandingsCard();
      v214 = OUTLINED_FUNCTION_20_13();
      v78 = sub_1E37BAD44(v214, v215, v131, v132, v133);
      goto LABEL_82;
    case 0x100u:
      *&v267[0] = a1;
      type metadata accessor for ViewModel();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D558, &qword_1E42A98F8);
      if (swift_dynamicCast())
      {
        v147 = *(&v268[1] + 1);
        v148 = *&v268[2];
        __swift_project_boxed_opaque_existential_1(v268, *(&v268[1] + 1));
        (*(v148 + 16))(v147, v148);
        v149 = __swift_destroy_boxed_opaque_existential_1(v268);
      }

      else
      {
        memset(v268, 0, 40);
        v149 = sub_1E325F6F0(v268, &qword_1ECF2D560, &unk_1E42B8130);
      }

      if (a2)
      {
        v162 = type metadata accessor for CardCollectionViewCell();
        v149 = OUTLINED_FUNCTION_31_21(v162);
      }

      OUTLINED_FUNCTION_33_25(v149, v150, &qword_1ECF296C0, &unk_1E429BBE0);
      if (*(&v267[1] + 1))
      {
        v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498, &qword_1E42A9830);
        if (OUTLINED_FUNCTION_18_29(v226, v227, v226, &type metadata for CollectionViewCellContext))
        {
          v229 = OUTLINED_FUNCTION_0_75();
          goto LABEL_198;
        }
      }

      else
      {
        sub_1E325F6F0(v267, &qword_1ECF296C0, &unk_1E429BBE0);
      }

      OUTLINED_FUNCTION_24_20();
      OUTLINED_FUNCTION_23_27();
LABEL_198:
      OUTLINED_FUNCTION_1_85(v228, v229, v230);
      type metadata accessor for CardCollectionViewCell();
      v231 = *sub_1E3C8E044();

      v232 = OUTLINED_FUNCTION_20_13();
      v158 = sub_1E3EEF4F4(v232, v233, v234, v231);

LABEL_219:
      v104 = *v29;
      *v29 = v158;
      goto LABEL_83;
    default:
      switch(a1[49])
      {
        case 'K':
          if (a2)
          {
            v87 = type metadata accessor for ConnectedAppFooterViewCell();
            OUTLINED_FUNCTION_31_21(v87);
          }

          type metadata accessor for ConnectedAppFooterViewCell();
          v175 = OUTLINED_FUNCTION_7_69();
          v78 = sub_1E3792CCC(v175, v176);
          goto LABEL_82;
        case 'L':
        case 'M':
        case 'N':
        case 'O':
        case 'P':
        case 'Q':
        case 'W':
        case 'X':
          goto LABEL_84;
        case 'R':
          if (a2)
          {
            v86 = type metadata accessor for ChannelBannerCollectionViewCell();
            OUTLINED_FUNCTION_31_21(v86);
          }

          type metadata accessor for ChannelBannerCollectionViewCell();
          v173 = OUTLINED_FUNCTION_20_13();
          v78 = sub_1E3D5E300(v173, v174);
          goto LABEL_82;
        case 'S':
          if (a2)
          {
            v85 = type metadata accessor for CanonicalBannerViewCell();
            v22 = OUTLINED_FUNCTION_31_21(v85);
          }

          OUTLINED_FUNCTION_33_25(v22, v23, &qword_1ECF296C0, &unk_1E429BBE0);
          if (*(&v267[1] + 1))
          {
            v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498, &qword_1E42A9830);
            if (OUTLINED_FUNCTION_18_29(v165, v166, v165, &type metadata for CollectionViewCellContext))
            {
              v168 = OUTLINED_FUNCTION_0_75();
              goto LABEL_139;
            }
          }

          else
          {
            sub_1E325F6F0(v267, &qword_1ECF296C0, &unk_1E429BBE0);
          }

          OUTLINED_FUNCTION_24_20();
          OUTLINED_FUNCTION_23_27();
LABEL_139:
          OUTLINED_FUNCTION_1_85(v167, v168, v169);
          type metadata accessor for CanonicalBannerFactory();
          v170 = OUTLINED_FUNCTION_20_13();
          v78 = sub_1E4126F6C(v170, v171, v172, a5);
          break;
        case 'T':
        case 'U':
          if (a2)
          {
            v31 = type metadata accessor for RoomBannerCollectionViewCell();
            OUTLINED_FUNCTION_31_21(v31);
          }

          type metadata accessor for RoomBannerCollectionViewCell();
          v156 = OUTLINED_FUNCTION_7_69();
          v78 = sub_1E4090E28(v156, v157);
          goto LABEL_82;
        case 'V':
          if (a2)
          {
            v83 = type metadata accessor for SportsCanonicalBannerCell();
            OUTLINED_FUNCTION_31_21(v83);
          }

          type metadata accessor for SportsCanonicalBannerCell();
          v163 = OUTLINED_FUNCTION_20_13();
          sub_1E4106FAC(v163, v164, a5);
          goto LABEL_82;
        case 'Y':
          if (a2)
          {
            DescriptionBannerViewCell = type metadata accessor for QueryDescriptionBannerViewCell();
            OUTLINED_FUNCTION_31_21(DescriptionBannerViewCell);
          }

          type metadata accessor for QueryDescriptionBannerViewCell();
          OUTLINED_FUNCTION_7_69();
          v78 = sub_1E3EF7C44();
          goto LABEL_82;
        default:
          if (v30 != 107)
          {
            goto LABEL_84;
          }

          if (a2)
          {
            v75 = type metadata accessor for CanonicalFooterViewCell();
            OUTLINED_FUNCTION_31_21(v75);
          }

          type metadata accessor for CanonicalFooterFactory();
          v255 = OUTLINED_FUNCTION_7_69();
          v78 = sub_1E3D85330(v255, v256);
          goto LABEL_82;
      }

      goto LABEL_82;
  }
}

unint64_t sub_1E38E7D78()
{
  result = qword_1EE23B120;
  if (!qword_1EE23B120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23B120);
  }

  return result;
}

uint64_t sub_1E38E7DBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViewModelLinkEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E38E7E20()
{
  OUTLINED_FUNCTION_24();
  v0[6] = v1;
  v0[7] = v2;
  v0[5] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D568, &qword_1E42E11E0);
  OUTLINED_FUNCTION_17_2(v4);
  v0[8] = swift_task_alloc();
  sub_1E4206434();
  v0[9] = sub_1E4206424();
  v6 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E38E7EEC, v6, v5);
}

uint64_t sub_1E38E7EEC()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 48);

  swift_beginAccess();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 64);
    v4 = v2;
    sub_1E3CF14B0();
    v5 = sub_1E41FDCC4();
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v5);
    sub_1E4206EA4();
  }

  **(v0 + 40) = v2 == 0;

  OUTLINED_FUNCTION_54();

  return v6();
}

uint64_t sub_1E38E7FC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViewModelLinkEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E38E8028()
{
  OUTLINED_FUNCTION_27_2();
  v0 = type metadata accessor for ViewModelLinkEntity(0);
  OUTLINED_FUNCTION_17_2(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_14_3(v1);
  *v2 = v3;
  v2[1] = sub_1E37E1058;

  return sub_1E38E7E20();
}

uint64_t sub_1E38E80FC(uint64_t a1)
{
  v2 = type metadata accessor for ViewModelLinkEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_1E38E8158(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = *v3;
  sub_1E37414E0(a1, a2, a3);
  v6 = sub_1E4205DA4();
  v9 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v10 = v6 & v9;
    v11 = (1 << (v6 & v9)) & *(v5 + 56 + (((v6 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      sub_1E38E84D8(v4, v10, isUniquelyReferenced_nonNull_native);
      *v3 = v15;
      goto LABEL_7;
    }

    sub_1E3741534(v6, v7, v8);
    if (sub_1E4205E84())
    {
      break;
    }

    v6 = v10 + 1;
  }

  LOWORD(v4) = *(*(v5 + 48) + 2 * v10);
LABEL_7:
  result = v11 == 0;
  *a1 = v4;
  return result;
}

void sub_1E38E8284(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF35B90, &unk_1E42B0080);
  v4 = sub_1E4207444();
  v7 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v7;
    return;
  }

  v8 = 0;
  v9 = (v3 + 56);
  v10 = 1 << *(v3 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v3 + 56);
  v13 = (v10 + 63) >> 6;
  v14 = v4 + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_1E373CBF0(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(*(v3 + 48) + 2 * (v15 | (v8 << 6)));
    sub_1E37414E0(v4, v5, v6);
    v4 = sub_1E4205DA4();
    v19 = -1 << *(v7 + 32);
    v20 = v4 & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v7 + 48) + 2 * v22) = v18;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v14 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1E38E84D8(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1E38E8284(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1E38E877C(v6 + 1);
LABEL_10:
      v15 = *v3;
      sub_1E37414E0(v8, v9, v10);
      v16 = sub_1E4205DA4();
      v19 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a2 = v16 & v19;
        if (((*(v15 + 56 + (((v16 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v19)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_1E3741534(v16, v17, v18);
        if (sub_1E4205E84())
        {
          goto LABEL_15;
        }

        v16 = a2 + 1;
      }
    }

    sub_1E38E863C();
  }

LABEL_7:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 2 * a2) = v5;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_15:
    sub_1E4207A64();
    __break(1u);
  }

  else
  {
    *(v11 + 16) = v14;
  }
}

void sub_1E38E863C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF35B90, &unk_1E42B0080);
  v2 = *v0;
  v3 = sub_1E4207434();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

void sub_1E38E877C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF35B90, &unk_1E42B0080);
  v4 = sub_1E4207444();
  v7 = v4;
  if (*(v3 + 16))
  {
    v8 = 0;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = v4 + 56;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_12:
        v17 = *(*(v3 + 48) + 2 * (v14 | (v8 << 6)));
        sub_1E37414E0(v4, v5, v6);
        v4 = sub_1E4205DA4();
        v18 = -1 << *(v7 + 32);
        v19 = v4 & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v13 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v13 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v13 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v7 + 48) + 2 * v21) = v17;
        ++*(v7 + 16);
        if (!v11)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v13 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v15 = v8;
      while (1)
      {
        v8 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v8 >= v12)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v16 = *(v3 + 56 + 8 * v8);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }
}

void sub_1E38E89A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();

  [a3 setVuiAccessibilityIdentifier_];
}

uint64_t sub_1E38E8A04()
{
  OUTLINED_FUNCTION_24();
  v1 = *(*v0 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v5;

  *v1 = *(v5 + 32);
  OUTLINED_FUNCTION_54();

  return v3();
}

void __swiftcall SportsVoiceOverUtility.Competitor.init(canonicalId:name:isHomeTeam:)(VideosUI::SportsVoiceOverUtility::Competitor *__return_ptr retstr, Swift::String canonicalId, Swift::String name, Swift::Bool isHomeTeam)
{
  retstr->canonicalId = canonicalId;
  retstr->name = name;
  retstr->isHomeTeam = isHomeTeam;
}

uint64_t sub_1E38E8B18(void *a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_23_28();
  sub_1E38E8B5C(a1, a2);
  return v4;
}

void *sub_1E38E8B5C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = sub_1E42056A4();
  v14 = sub_1E4205054();

  v3[3] = v14;
  v15 = sub_1E42056A4();
  v16 = sub_1E4205054();

  v17 = sub_1E4205684();
  v3[2] = v17;
  v18 = sub_1E42056A4();
  v19 = sub_1E4205054();

  v20 = sub_1E4205674();
  v3[4] = v20;
  v21 = sub_1E42056A4();
  v22 = sub_1E4205024();

  v3[5] = a2;
  v3[6] = v22;
  sub_1E4205704();
  sub_1E4205BD4();

  (*(v8 + 32))(v3 + OBJC_IVAR____TtC8VideosUI22SportsVoiceOverUtility_sport, v12, v6);
  return v3;
}

uint64_t sub_1E38E8CD0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_23_28();
  sub_1E38E8D1C(a1, a2, a3);
  return v6;
}

char *sub_1E38E8D1C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 3) = sub_1E4205054();
  v8 = sub_1E4205054();
  v9 = sub_1E4205684();

  *(v4 + 2) = v9;
  v10 = sub_1E4205054();
  v11 = sub_1E4205674();

  *(v4 + 4) = v11;
  v12 = sub_1E4205024();

  *(v4 + 5) = a2;
  *(v4 + 6) = v12;
  v13 = OBJC_IVAR____TtC8VideosUI22SportsVoiceOverUtility_sport;
  sub_1E4205BF4();
  OUTLINED_FUNCTION_2();
  (*(v14 + 32))(&v4[v13], a3);
  return v4;
}

uint64_t sub_1E38E8DF0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  if ((a1 & 0x8000000000000000) != 0)
  {
    (*(v7 + 16))(v10, a3);
    v11 = OUTLINED_FUNCTION_23_28();
    v13 = (a1 & 0x7FFFFFFFFFFFFFFFLL);

    sub_1E38E8D1C(v13, a2, v10);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_23_28();
    v12 = a1;

    sub_1E38E8B5C(v12, a2);
  }

  return v11;
}

void sub_1E38E904C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_31_1();
  v116 = v21;
  v125 = v22;
  v128 = v23;
  v117 = v24;
  v118 = v25;
  v27 = v26;
  v119 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE30, &qword_1E42A9900);
  OUTLINED_FUNCTION_17_2(v29);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_20(v31);
  v126 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v120 = v32;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_9_3();
  v127 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D570, &qword_1E42A9908);
  OUTLINED_FUNCTION_17_2(v35);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_44();
  v38 = OUTLINED_FUNCTION_20(v37);
  v121 = _s5ClockVMa(v38);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v40);
  v41 = sub_1E4205784();
  OUTLINED_FUNCTION_0_10();
  v43 = v42;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D578, &unk_1E42A9910) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v114 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD98, &qword_1E42E3AB0);
  v51 = OUTLINED_FUNCTION_17_2(v50);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_4_6();
  v54 = v52 - v53;
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v114 - v56;
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v114 - v59;
  v124 = v27;
  v61 = sub_1E4205294();
  sub_1E4205514();

  (*(v43 + 104))(v57, *MEMORY[0x1E69D3BF8], v41);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v41);
  v65 = *(v46 + 56);
  sub_1E379D7E4(v60, v49, &qword_1ECF2BD98, &qword_1E42E3AB0);
  sub_1E379D7E4(v57, &v49[v65], &qword_1ECF2BD98, &qword_1E42E3AB0);
  OUTLINED_FUNCTION_14_16(v49);
  if (v72)
  {
    OUTLINED_FUNCTION_21_1();
    sub_1E325F6F0(v66, v67, v68);
    OUTLINED_FUNCTION_21_1();
    sub_1E325F6F0(v69, v70, v71);
    OUTLINED_FUNCTION_14_16(&v49[v65]);
    if (v72)
    {
      sub_1E325F6F0(v49, &qword_1ECF2BD98, &qword_1E42E3AB0);
LABEL_14:
      sub_1E38EAC5C();
      OUTLINED_FUNCTION_60_0();
      goto LABEL_33;
    }

    goto LABEL_9;
  }

  sub_1E379D7E4(v49, v54, &qword_1ECF2BD98, &qword_1E42E3AB0);
  OUTLINED_FUNCTION_14_16(&v49[v65]);
  if (v72)
  {
    OUTLINED_FUNCTION_21_1();
    sub_1E325F6F0(v73, v74, v75);
    OUTLINED_FUNCTION_21_1();
    sub_1E325F6F0(v76, v77, v78);
    (*(v43 + 8))(v54, v41);
LABEL_9:
    sub_1E325F6F0(v49, &qword_1ECF2D578, &unk_1E42A9910);
    goto LABEL_10;
  }

  v82 = &v49[v65];
  v83 = v114;
  (*(v43 + 32))(v114, v82, v41);
  sub_1E38EB28C();
  v84 = sub_1E4205E84();
  v85 = *(v43 + 8);
  v85(v83, v41);
  OUTLINED_FUNCTION_31_22(v57);
  OUTLINED_FUNCTION_31_22(v60);
  v85(v54, v41);
  OUTLINED_FUNCTION_31_22(v49);
  if (v84)
  {
    goto LABEL_14;
  }

LABEL_10:
  v79 = v128;
  if (v128 == 0xFF)
  {
    v86 = 0;
    v87 = 0;
    v81 = v126;
    v80 = v127;
    goto LABEL_17;
  }

  v81 = v126;
  v80 = v127;
  if ((v128 & 1) == 0)
  {
    v86 = v118;
    v87 = v117;
LABEL_17:
    v88 = sub_1E4205684();
    v89 = sub_1E4205294();

    sub_1E4205664();
    v90 = v129;
    v91 = v130;

    v92 = v122;
    sub_1E379D7E4(v125, v122, &qword_1ECF2CE30, &qword_1E42A9900);
    OUTLINED_FUNCTION_14_16(v92);
    if (v72)
    {
      (*(v120 + 104))(v80, *MEMORY[0x1E69D3D80], v81);
      OUTLINED_FUNCTION_14_16(v92);
      if (!v72)
      {
        sub_1E325F6F0(v92, &qword_1ECF2CE30, &qword_1E42A9900);
      }
    }

    else
    {
      (*(v120 + 32))(v80, v92, v81);
    }

    v93 = v79 == -1;
    v94 = v124;
    v95 = v123;
    sub_1E3E01A88(v94, v86, v87, v93, v90, v91, v80, v123);
    OUTLINED_FUNCTION_52(v95, 1, v121);
    if (v72)
    {
      sub_1E325F6F0(v95, &qword_1ECF2D570, &qword_1E42A9908);
    }

    else
    {
      v96 = v115;
      sub_1E38E97F0(v95, v115);
      v97 = sub_1E3E024F0();
      if (v98)
      {
        v99 = v97;
        v100 = v98;
        if (sub_1E38BA7D0(v125) == 56)
        {
          v101 = v115;
        }

        else
        {
          v102 = v115;
          v103 = sub_1E3E01C24();
          if (v104)
          {
            v105 = v103;
            v106 = v104;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D580, &qword_1E42A9920);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1E4299720;
            *(inited + 32) = 10;
            *(inited + 40) = v99;
            *(inited + 48) = v100;
            *(inited + 56) = 11;
            *(inited + 64) = v105;
            *(inited + 72) = v106;
            sub_1E38EA7FC(inited, v108, v109);
            sub_1E4205CB4();
            v110 = sub_1E38BAE70();
            OUTLINED_FUNCTION_55_0();
            sub_1E38BA3C8(v111, v112, v113);
            OUTLINED_FUNCTION_60_0();

            sub_1E38E9854(v102);
            goto LABEL_33;
          }

          v101 = v102;
        }

        sub_1E38E9854(v101);
      }

      else
      {
        sub_1E38E9854(v96);
      }
    }

    OUTLINED_FUNCTION_29_21();
    goto LABEL_33;
  }

  sub_1E38EA850(v118, v117, 1);
LABEL_33:
  OUTLINED_FUNCTION_6_54();
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E38E97F0(uint64_t a1, uint64_t a2)
{
  v4 = _s5ClockVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E38E9854(uint64_t a1)
{
  v2 = _s5ClockVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1E38E990C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v44 = v2;
  v4 = v3;
  v5 = sub_1E4205B94();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9_3();
  if (v4)
  {
    v43 = v9;
    v10 = v1 ^ 1;
    v51 = v4;
    v45 = (v1 ^ 1) & 1;
    v46 = 0;
    v11 = OUTLINED_FUNCTION_32_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
    OUTLINED_FUNCTION_0_32();
    OUTLINED_FUNCTION_21_1();
    sub_1E32752B0(v13, v14, v15, v16);
    sub_1E38D2054(&v45, &v47);
    v17 = v48;
    if (v48)
    {
      v41 = v5;
      v18 = v47;
      v40 = v49;
      v42 = v50;
      v19 = sub_1E32AE9B0(v44);
      for (i = 0; ; ++i)
      {
        if (v19 == i)
        {

          goto LABEL_17;
        }

        if ((v44 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x1E6911E60](i, v44);
        }

        else
        {
          if (i >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v21 = *(v44 + 8 * i + 32);
        }

        v22 = v21;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
          return;
        }

        v23 = sub_1E4205964();
        v24 = sub_1E42054D4();
        v26 = v25;

        if (v24 == v18 && v17 == v26)
        {
          break;
        }

        v28 = sub_1E42079A4();

        if (v28)
        {
          goto LABEL_19;
        }
      }

LABEL_19:
      sub_1E4205BC4();
      v29 = sub_1E4205984();
      (*(v7 + 8))(v43, v41);
      if (v29)
      {
        v30 = sub_1E4205AE4();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D580, &qword_1E42A9920);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1E4299720;
        *(inited + 32) = v10 & 1;
        *(inited + 40) = v40;
        *(inited + 48) = v42;
        *(inited + 56) = 12;
        v47 = v30;

        *(inited + 64) = sub_1E4207944();
        *(inited + 72) = v32;

        sub_1E38EA7FC(v33, v34, v35);
        sub_1E4205CB4();
        v36 = sub_1E38BAE70();
        OUTLINED_FUNCTION_55_0();
        sub_1E38BA3C8(v37, v38, v39);
        OUTLINED_FUNCTION_60_0();
      }

      else
      {
      }
    }
  }

LABEL_17:
  OUTLINED_FUNCTION_6_54();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E38E9D10()
{
  OUTLINED_FUNCTION_31_1();
  v111 = v0;
  v107 = v1;
  v3 = v2;
  v5 = v4;
  v110 = sub_1E4205784();
  OUTLINED_FUNCTION_0_10();
  v108 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v8);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D578, &unk_1E42A9910);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD98, &qword_1E42E3AB0);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_20(v103 - v15);
  sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v22 = *(v17 + 16);
  OUTLINED_FUNCTION_82();
  v22();

  sub_1E3EA84D4(v5, v3, 0, v21);
  v26 = v25;
  if (!v25)
  {
    goto LABEL_25;
  }

  v27 = v23;
  v28 = v24;
  OUTLINED_FUNCTION_82();
  v22();

  sub_1E3EA84D4(v5, v3, 1, v21);
  if (!v30)
  {

    goto LABEL_25;
  }

  v32 = v29;
  v33 = v30;
  v34 = v31;
  v103[0] = v5;
  v103[1] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D580, &qword_1E42A9920);
  inited = swift_initStackObject();
  v36 = OUTLINED_FUNCTION_26_26(inited, xmmword_1E4298AD0);
  v36[2].n128_u64[1] = v27;
  v36[3].n128_u64[0] = v26;
  v36[3].n128_u8[8] = 7;
  v114 = v28;
  inited[4].n128_u64[0] = sub_1E4207944();
  inited[4].n128_u64[1] = v37;
  inited[5].n128_u8[0] = 8;
  inited[5].n128_u64[1] = v32;
  inited[6].n128_u64[0] = v33;
  inited[6].n128_u8[8] = 9;
  v114 = v34;
  v38 = sub_1E4207944();
  inited[7].n128_u64[0] = v38;
  inited[7].n128_u64[1] = v39;
  sub_1E38EA7FC(v38, v39, v40);
  v41 = sub_1E4205CB4();
  v42 = sub_1E38BAE70();
  sub_1E38BA3C8(8, v41, v42);
  v44 = v43;
  v46 = v45;

  v47 = sub_1E4205294();
  v48 = v113;
  sub_1E4205514();

  v49 = v108;
  v50 = v112;
  v51 = v110;
  (*(v108 + 104))(v112, *MEMORY[0x1E69D3BF8], v110);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v51);
  v55 = *(v106 + 48);
  v56 = v109;
  sub_1E379D7E4(v48, v109, &qword_1ECF2BD98, &qword_1E42E3AB0);
  sub_1E379D7E4(v50, v56 + v55, &qword_1ECF2BD98, &qword_1E42E3AB0);
  OUTLINED_FUNCTION_52(v56, 1, v51);
  if (!v64)
  {
    v63 = v105;
    sub_1E379D7E4(v56, v105, &qword_1ECF2BD98, &qword_1E42E3AB0);
    OUTLINED_FUNCTION_52(v56 + v55, 1, v51);
    if (!v64)
    {
      v71 = v56 + v55;
      v72 = v104;
      (*(v49 + 32))(v104, v71, v51);
      sub_1E38EB28C();
      v73 = sub_1E4205E84();
      v74 = *(v49 + 8);
      v74(v72, v51);
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v75, v76, v77);
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v78, v79, v80);
      v74(v63, v51);
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v81, v82, v83);
      if ((v73 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_15;
    }

    OUTLINED_FUNCTION_21_1();
    sub_1E325F6F0(v65, v66, v67);
    OUTLINED_FUNCTION_21_1();
    sub_1E325F6F0(v68, v69, v70);
    (*(v49 + 8))(v63, v51);
LABEL_13:
    sub_1E325F6F0(v56, &qword_1ECF2D578, &unk_1E42A9910);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v57, v58, v59);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v60, v61, v62);
  OUTLINED_FUNCTION_52(v56 + v55, 1, v51);
  if (!v64)
  {
    goto LABEL_13;
  }

  sub_1E325F6F0(v56, &qword_1ECF2BD98, &qword_1E42E3AB0);
LABEL_15:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40750, &unk_1E4297FF0);
  v84 = swift_initStackObject();
  *(v84 + 16) = xmmword_1E4299720;
  *(v84 + 32) = v44;
  *(v84 + 40) = v46;
  sub_1E38EAC5C();
  v85 = 0;
  *(v84 + 48) = v86;
  *(v84 + 56) = v87;
  v88 = MEMORY[0x1E69E7CC0];
LABEL_16:
  v89 = (v84 + 40 + 16 * v85);
  while (++v85 != 3)
  {
    v90 = v89 + 2;
    v91 = *v89;
    v89 += 2;
    if (v91)
    {
      v92 = *(v90 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v96 = OUTLINED_FUNCTION_27();
        v88 = sub_1E3740F88(v96, v97, v98, v88);
      }

      v94 = *(v88 + 2);
      v93 = *(v88 + 3);
      if (v94 >= v93 >> 1)
      {
        v88 = sub_1E3740F88((v93 > 1), v94 + 1, 1, v88);
      }

      *(v88 + 2) = v94 + 1;
      v95 = &v88[16 * v94];
      *(v95 + 4) = v92;
      *(v95 + 5) = v91;
      goto LABEL_16;
    }
  }

  swift_setDeallocating();
  sub_1E3740994();
  v114 = v88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
  OUTLINED_FUNCTION_82();
  sub_1E32752B0(v99, v100, v101, v102);
  sub_1E4205DF4();

LABEL_25:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E38EA474(uint64_t a1, uint64_t a2, char a3)
{
  if (!a1)
  {
    v33 = 0u;
    v34 = 0u;
    goto LABEL_14;
  }

  v31 = &type metadata for ViewModelKeys.Sports;
  v32 = &off_1F5D7BC68;
  LOBYTE(v29) = 6;
  v5 = MEMORY[0x1E69E7CA0];
  sub_1E3F9F164(&v29, a1, MEMORY[0x1E69E7CA0] + 8);
  __swift_destroy_boxed_opaque_existential_1(&v29);
  if (!*(&v34 + 1))
  {
LABEL_14:
    sub_1E325F6F0(&v33, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    OUTLINED_FUNCTION_29_21();
    return OUTLINED_FUNCTION_32_0();
  }

  *&v33 = v29;
  v29 = (a3 & 1) == 0;
  v30 = 0;
  OUTLINED_FUNCTION_0_32();
  sub_1E32752B0(v6, v7, v8, v9);
  sub_1E38D2054(&v29, v28);
  v10 = v28[0];

  if (!v10)
  {
    return OUTLINED_FUNCTION_32_0();
  }

  v31 = &type metadata for ViewModelKeys.Sports;
  v32 = &off_1F5D7BC68;
  LOBYTE(v29) = 22;
  sub_1E3F9F164(&v29, v10, v5 + 8);

  if (!*(&v34 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1(&v29);
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v29);
    goto LABEL_15;
  }

  v12 = v28[0];
  v11 = v28[1];
  __swift_destroy_boxed_opaque_existential_1(&v29);
  if (!a2 || !*(a2 + 16) || (v13 = *(a2 + 32), !v13[2]) || (v15 = v13[4], v14 = v13[5], v16 = sub_1E38EA748(v13), !v17))
  {

    goto LABEL_15;
  }

  v18 = v17;
  if (a3)
  {

    v19 = 0;
    v20 = 31;
    v21 = v15;
    v18 = v14;
  }

  else
  {
    v21 = v16;
    v19 = 1;
    v20 = 32;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D580, &qword_1E42A9920);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  *(inited + 32) = v19;
  *(inited + 40) = v12;
  *(inited + 48) = v11;
  *(inited + 56) = 12;
  *(inited + 64) = v21;
  *(inited + 72) = v18;
  sub_1E38EA7FC(inited, v24, v25);
  v26 = sub_1E4205CB4();
  v27 = sub_1E38BAE70();
  sub_1E38BA3C8(v20, v26, v27);
  OUTLINED_FUNCTION_60_0();

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E38EA748(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = *(v1 + 16 * v2);

  return v4;
}

uint64_t sub_1E38EA790(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32 * v1);

  return v2;
}

unint64_t sub_1E38EA7FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2D588;
  if (!qword_1ECF2D588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D588);
  }

  return result;
}

double sub_1E38EA850(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1E38EA860(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v105 = 0u;
    v106 = 0u;
    goto LABEL_22;
  }

  v103 = &type metadata for ViewModelKeys.Sports;
  v104 = &off_1F5D7BC68;
  v10 = OUTLINED_FUNCTION_27_20(a1, a1, a3, a4, a5, a6, a7, a8, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, 6);
  sub_1E3F9F164(v10, v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v102);
  if (!*(&v106 + 1))
  {
LABEL_22:
    sub_1E325F6F0(&v105, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
  result = swift_dynamicCast();
  if (result)
  {
    HIDWORD(v73) = a2;
    v75 = v8;
    v14 = 0;
    v15 = *v102;
    v77 = MEMORY[0x1E69E7CC0];
    v16 = *(*v102 + 16);
    while (1)
    {
      if (v16 == v14)
      {

        v48 = v77[2];
        v49 = (v77 + 6);
        v50 = v48 + 1;
        while (--v50)
        {
          v51 = v49 + 24;
          v52 = *v49;
          v49 += 24;
          if ((v52 & 1) == 0)
          {
            v53 = *(v51 - 5);
            v54 = *(v51 - 4);
            v55 = (v77 + 6);
            v56 = v48 + 1;
            while (--v56)
            {
              v57 = v55 + 24;
              v58 = *v55;
              v55 += 24;
              if (v58)
              {
                v60 = *(v57 - 5);
                v59 = *(v57 - 4);

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D580, &qword_1E42A9920);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_1E4299720;
                *(inited + 32) = 0;
                *(inited + 40) = v53;
                *(inited + 48) = v54;
                *(inited + 56) = 1;
                *(inited + 64) = v60;
                *(inited + 72) = v59;
                sub_1E38EA7FC(inited, v62, v63);
                sub_1E4205CB4();
                v64 = sub_1E38BAE70();
                OUTLINED_FUNCTION_55_0();
                sub_1E38BA3C8(v65, v66, v67);
                OUTLINED_FUNCTION_60_0();

                return OUTLINED_FUNCTION_32_0();
              }
            }

            break;
          }
        }

        goto LABEL_23;
      }

      if (v14 >= *(v15 + 16))
      {
        __break(1u);
        return result;
      }

      v17 = *(v15 + 8 * v14 + 32);
      v103 = &type metadata for ViewModelKeys.Sports;
      v104 = &off_1F5D7BC68;
      v102[0] = 22;

      v26 = OUTLINED_FUNCTION_27_20(v18, v19, v20, v21, v22, v23, v24, v25, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v102[0]);
      sub_1E3F9F164(v26, v17, v27);
      if (!*(&v106 + 1))
      {
        __swift_destroy_boxed_opaque_existential_1(v102);
        sub_1E325F6F0(&v105, &unk_1ECF296E0, &unk_1E4298030);
        goto LABEL_15;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v28 = v99;
      v29 = v101;
      v30 = __swift_destroy_boxed_opaque_existential_1(v102);
      v103 = &type metadata for ViewModelKeys.Sports;
      v104 = &off_1F5D7BC68;
      v38 = OUTLINED_FUNCTION_27_20(v30, v31, v32, v33, v34, v35, v36, v37, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, 23);
      sub_1E3F9F164(v38, v17, v39);
      if (*(&v106 + 1))
      {
        if ((swift_dynamicCast() & 1) == 0)
        {

          __swift_destroy_boxed_opaque_existential_1(v102);
          goto LABEL_15;
        }

        LODWORD(v73) = v99;
        __swift_destroy_boxed_opaque_existential_1(v102);

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          v44 = OUTLINED_FUNCTION_27();
          result = sub_1E38EB890(v44, v45, v46, v47);
          v77 = result;
        }

        v41 = v77[2];
        v40 = v77[3];
        v42 = v41 + 1;
        if (v41 >= v40 >> 1)
        {
          v71 = v41 + 1;
          result = sub_1E38EB890((v40 > 1), v41 + 1, 1, v77);
          v42 = v41 + 1;
          v77 = result;
        }

        ++v14;
        v77[2] = v42;
        v43 = &v77[3 * v41];
        v43[4] = v28;
        v43[5] = v29;
        *(v43 + 48) = v99;
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v102);
        sub_1E325F6F0(&v105, &unk_1ECF296E0, &unk_1E4298030);
LABEL_15:

        ++v14;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v102);
    goto LABEL_15;
  }

LABEL_23:
  OUTLINED_FUNCTION_29_21();
  return OUTLINED_FUNCTION_32_0();
}

void sub_1E38EAC5C()
{
  OUTLINED_FUNCTION_31_1();
  v66 = v0;
  v2 = v1;
  sub_1E4205B94();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v4);
  v5 = *(v2 + 16) + 1;
  v6 = v2;
  v63 = *(v2 + 16);
  while (--v5)
  {
    v7 = (v6 + 40);
    v8 = *(v6 + 64);
    v6 += 40;
    if (v8 == 1)
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v11 = v7[2];
      v60 = v7[1];

      v62 = v11;

      goto LABEL_6;
    }
  }

  v60 = 0;
  v62 = 0;
  v10 = 0;
  v9 = 0;
LABEL_6:
  v12 = sub_1E32AE9B0(v66);
  v13 = 0;
  v65 = v66 & 0xC000000000000001;
  while (1)
  {
    if (v12 == v13)
    {

      goto LABEL_26;
    }

    if (v65)
    {
      v14 = MEMORY[0x1E6911E60](v13, v66);
    }

    else
    {
      if (v13 >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_65;
      }

      v14 = *(v66 + 8 * v13 + 32);
    }

    v15 = v14;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      return;
    }

    v16 = sub_1E4205964();
    v17 = sub_1E42054D4();
    v19 = v18;

    if (!v9)
    {

      goto LABEL_20;
    }

    if (v17 == v10 && v9 == v19)
    {
      break;
    }

    v21 = sub_1E42079A4();

    if (v21)
    {
      goto LABEL_24;
    }

LABEL_20:

    ++v13;
  }

LABEL_24:

  v22 = OUTLINED_FUNCTION_11_48();
  v23(v22);
  v24 = sub_1E4205984();

  (*(v17 + 8))(v19, v13);
  if (v24)
  {
    sub_1E4205AE4();

    v61 = 0;
    goto LABEL_27;
  }

LABEL_26:
  v61 = 1;
LABEL_27:
  v25 = v63 + 1;
  while (--v25)
  {
    v26 = (v2 + 40);
    v27 = *(v2 + 64);
    v2 += 40;
    if ((v27 & 1) == 0)
    {
      v28 = *(v26 - 1);
      v29 = *v26;
      v30 = v26[2];
      v64 = v26[1];

      goto LABEL_32;
    }
  }

  v64 = 0;
  v30 = 0;
  v28 = 0;
  v29 = 0;
LABEL_32:
  v31 = 0;
  while (2)
  {
    if (v12 == v31)
    {

      v39 = 1;
      v40 = v62;
      goto LABEL_53;
    }

    if (v65)
    {
      v32 = MEMORY[0x1E6911E60](v31, v66);
    }

    else
    {
      if (v31 >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_67;
      }

      v32 = *(v66 + 8 * v31 + 32);
    }

    v33 = v32;
    if (__OFADD__(v31, 1))
    {
      goto LABEL_66;
    }

    v34 = sub_1E4205964();
    v35 = sub_1E42054D4();
    v37 = v36;

    if (!v29)
    {

LABEL_46:

      ++v31;
      continue;
    }

    break;
  }

  if (v35 != v28 || v29 != v37)
  {
    v35 = sub_1E42079A4();

    if (v35)
    {
      goto LABEL_50;
    }

    goto LABEL_46;
  }

LABEL_50:

  v41 = OUTLINED_FUNCTION_11_48();
  v42(v41);
  v43 = sub_1E4205984();

  (*(v35 + 8))(v34, v28);
  v40 = v62;
  if (v43)
  {
    sub_1E4205AE4();

    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

LABEL_53:
  if (v61)
  {
LABEL_56:

LABEL_57:

LABEL_58:
    OUTLINED_FUNCTION_29_21();
    goto LABEL_59;
  }

  if (!v40)
  {
    goto LABEL_57;
  }

  if (v39)
  {
    goto LABEL_56;
  }

  if (!v30)
  {
    goto LABEL_57;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D580, &qword_1E42A9920);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4298AD0;
  *(inited + 32) = 1;
  *(inited + 40) = v60;
  *(inited + 48) = v40;
  *(inited + 56) = 4;
  *(inited + 64) = sub_1E4207944();
  *(inited + 72) = v45;
  *(inited + 80) = 0;
  *(inited + 88) = v64;
  *(inited + 96) = v30;
  *(inited + 104) = 3;
  v46 = sub_1E4207944();
  *(inited + 112) = v46;
  *(inited + 120) = v47;
  sub_1E38EA7FC(v46, v47, v48);
  v49 = sub_1E4205CB4();
  v50 = sub_1E38BAE70();
  sub_1E38BA3C8(20, v49, v50);
  v52 = v51;
  v54 = v53;

  if (!v54)
  {
    goto LABEL_58;
  }

  v55 = swift_initStackObject();
  *(v55 + 16) = xmmword_1E4297BE0;
  *(v55 + 32) = 12;
  *(v55 + 40) = v52;
  *(v55 + 48) = v54;
  sub_1E4205CB4();
  v56 = sub_1E38BAE70();
  OUTLINED_FUNCTION_55_0();
  sub_1E38BA3C8(v57, v58, v59);
  OUTLINED_FUNCTION_60_0();

LABEL_59:
  OUTLINED_FUNCTION_6_54();
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E38EB28C()
{
  result = qword_1ECF2D590;
  if (!qword_1ECF2D590)
  {
    sub_1E4205784();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D590);
  }

  return result;
}

void sub_1E38EB2E4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v60 = 0u;
    v61 = 0u;
    goto LABEL_19;
  }

  v58 = &type metadata for ViewModelKeys.Sports;
  v59 = &off_1F5D7BC68;
  LOBYTE(v57[0]) = 6;
  v3 = MEMORY[0x1E69E7CA0];
  sub_1E3F9F164(v57, a1, MEMORY[0x1E69E7CA0] + 8);
  __swift_destroy_boxed_opaque_existential_1(v57);
  if (!*(&v61 + 1))
  {
LABEL_19:
    sub_1E325F6F0(&v60, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    OUTLINED_FUNCTION_32_0();
    return;
  }

  v54 = a2;
  v4 = 0;
  v5 = v57[0];
  v6 = *(v57[0] + 16);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v6 == v4)
    {

      if (*(v7 + 2))
      {
        v19 = *(v7 + 4);
        v20 = *(v7 + 5);
      }

      else
      {
        v19 = 0;
        v20 = 0;
      }

      v21 = v54;
      if (v54 && *(v54 + 16) && (v22 = *(v54 + 32), v22[2]))
      {
        v24 = v22[4];
        v23 = v22[5];
      }

      else
      {
        v24 = 0;
        v23 = 0;
      }

      v25 = sub_1E38EA748(v7);
      v27 = v26;

      if (v54)
      {
        if (*(v54 + 16))
        {
          v21 = sub_1E38EA748(*(v54 + 32));
          v29 = v28;
LABEL_34:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D5A8, &qword_1E42A9930);
          v30 = swift_allocObject();
          *(v30 + 16) = xmmword_1E4299720;
          *(v30 + 32) = v19;
          *(v30 + 40) = v20;
          *(v30 + 48) = v24;
          *(v30 + 56) = v23;
          *(v30 + 64) = v25;
          *(v30 + 72) = v27;
          *(v30 + 80) = v21;
          *(v30 + 88) = v29;
          v57[0] = v30;

          sub_1E38EB9C4(v57);

          v31 = v57[0];
          if (*(v57[0] + 16))
          {
            v32 = *(v57[0] + 40);
            if (v32)
            {
              v33 = *(v57[0] + 56);
              if (v33)
              {
                v34 = *(v57[0] + 32);
                v35 = *(v57[0] + 48);
                v36 = sub_1E38EA790(v57[0]);
                if (v37 != 1)
                {
                  v38 = v36;
                  v39 = v37;

                  if (v39)
                  {
                    sub_1E38EA790(v31);
                    v41 = v40;
                    v43 = v42;
                    v45 = v44;

                    if (v41 == 1 || (, !v45))
                    {
                    }

                    else
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D580, &qword_1E42A9920);
                      inited = swift_initStackObject();
                      v47 = OUTLINED_FUNCTION_26_26(inited, xmmword_1E4298AD0);
                      v47[2].n128_u64[1] = v34;
                      v47[3].n128_u64[0] = v32;
                      v47[3].n128_u8[8] = 7;
                      v47[4].n128_u64[0] = v35;
                      v47[4].n128_u64[1] = v33;
                      v47[5].n128_u8[0] = 8;
                      v47[5].n128_u64[1] = v38;
                      v47[6].n128_u64[0] = v39;
                      v47[6].n128_u8[8] = 9;
                      v47[7].n128_u64[0] = v43;
                      v47[7].n128_u64[1] = v45;
                      sub_1E38EA7FC(v47, v48, v49);
                      sub_1E4205CB4();
                      v50 = sub_1E38BAE70();
                      OUTLINED_FUNCTION_55_0();
                      sub_1E38BA3C8(v51, v52, v53);
                      OUTLINED_FUNCTION_60_0();
                    }

                    goto LABEL_20;
                  }
                }
              }
            }
          }

          goto LABEL_20;
        }

        v21 = 0;
      }

      v29 = 0;
      goto LABEL_34;
    }

    if (v4 >= *(v5 + 16))
    {
      break;
    }

    v8 = *(v5 + 8 * v4 + 32);
    v58 = &type metadata for ViewModelKeys.Sports;
    v59 = &off_1F5D7BC68;
    LOBYTE(v57[0]) = 22;

    sub_1E3F9F164(v57, v8, v3 + 8);

    if (!*(&v61 + 1))
    {
      __swift_destroy_boxed_opaque_existential_1(v57);
      sub_1E325F6F0(&v60, &unk_1ECF296E0, &unk_1E4298030);
      goto LABEL_17;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      v55 = 0;
      v56 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v57);
    if (v56)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = OUTLINED_FUNCTION_27();
        v7 = sub_1E3740F88(v15, v16, v17, v7);
      }

      v9 = v7;
      v10 = *(v7 + 2);
      v11 = v9;
      v12 = *(v9 + 3);
      v13 = v10 + 1;
      if (v10 >= v12 >> 1)
      {
        v18 = sub_1E3740F88((v12 > 1), v10 + 1, 1, v11);
        v13 = v10 + 1;
        v11 = v18;
      }

      ++v4;
      *(v11 + 2) = v13;
      v14 = &v11[16 * v10];
      v7 = v11;
      *(v14 + 4) = v55;
      *(v14 + 5) = v56;
    }

    else
    {
LABEL_17:
      ++v4;
    }
  }

  __break(1u);

  __break(1u);
}

id *SportsVoiceOverUtility.deinit()
{

  v1 = OBJC_IVAR____TtC8VideosUI22SportsVoiceOverUtility_sport;
  sub_1E4205BF4();
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t SportsVoiceOverUtility.__deallocating_deinit()
{
  SportsVoiceOverUtility.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void *sub_1E38EB890(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CED8, &qword_1E42A89C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D5B8, &unk_1E42A9A70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E38EB9C4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E38EC684(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1E38EBC78(v5);
  *a1 = v2;
  return result;
}

uint64_t type metadata accessor for SportsVoiceOverUtility(uint64_t a1)
{
  result = qword_1EE299850;
  if (!qword_1EE299850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E38EBA84(uint64_t a1)
{
  result = sub_1E4205BF4();
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

uint64_t sub_1E38EBB38(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E38EBB78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TaskRetryStrategy(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TaskRetryStrategy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1E38EBC78(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E4207914();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D5B0, &qword_1E42A9A68);
        v6 = sub_1E4206314();
        *(v6 + 16) = v5;
      }

      v7[0] = v6 + 32;
      v7[1] = v5;
      sub_1E38EBE4C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1E38EBD7C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E38EBD7C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = v6 + 32 * v4;
      v10 = *(v9 + 16);
      v11 = *(v9 + 24);
      v12 = v8;
      v13 = v7;
      do
      {
        if (v11)
        {
          v14 = *(v13 - 8);
          if (v14)
          {
            result = *(v13 - 16);
            if (result == v10 && v14 == v11)
            {
              break;
            }

            result = sub_1E42079A4();
            if ((result & 1) == 0)
            {
              break;
            }
          }
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v10 = *(v13 + 16);
        v11 = *(v13 + 24);
        v16 = *v13;
        v17 = *(v13 - 16);
        *v13 = *(v13 - 32);
        *(v13 + 16) = v17;
        *(v13 - 16) = v10;
        *(v13 - 8) = v11;
        *(v13 - 32) = v16;
        v13 -= 32;
      }

      while (!__CFADD__(v12++, 1));
      ++v4;
      v7 += 32;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1E38EBE4C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v87 = result;
  v90 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *a3 + 32 * v6;
        v10 = *(v9 + 24);
        v11 = *a3 + 32 * v8;
        if (v10 && (v12 = *(v11 + 24)) != 0)
        {
          result = *(v11 + 16);
          if (result == *(v9 + 16) && v12 == v10)
          {
            v14 = 0;
          }

          else
          {
            result = sub_1E42079A4();
            v14 = result;
          }
        }

        else
        {
          v14 = 1;
        }

        v6 = v8 + 2;
        v15 = 32 * v8;
        v16 = (v11 + 88);
        while (v6 < v5)
        {
          if (*v16 && (v17 = *(v16 - 4)) != 0)
          {
            result = *(v16 - 5);
            if (result == *(v16 - 1) && v17 == *v16)
            {
              if (v14)
              {
                goto LABEL_28;
              }
            }

            else
            {
              result = sub_1E42079A4();
              if ((v14 ^ result))
              {
                break;
              }
            }
          }

          else if ((v14 & 1) == 0)
          {
            goto LABEL_35;
          }

          ++v6;
          v16 += 4;
        }

        if (v14)
        {
LABEL_28:
          if (v6 < v8)
          {
            goto LABEL_133;
          }

          if (v8 < v6)
          {
            v19 = 32 * v6;
            v20 = v6;
            v21 = v8;
            do
            {
              if (v21 != --v20)
              {
                v22 = *a3;
                if (!*a3)
                {
                  goto LABEL_136;
                }

                v23 = (v22 + v15);
                v24 = v22 + v19;
                v25 = *v23;
                v26 = v23[1];
                v27 = *(v24 - 16);
                *v23 = *(v24 - 32);
                v23[1] = v27;
                *(v24 - 32) = v25;
                *(v24 - 16) = v26;
              }

              ++v21;
              v19 -= 32;
              v15 += 32;
            }

            while (v21 < v20);
          }
        }
      }

LABEL_35:
      v28 = a3[1];
      if (v6 < v28)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_130;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_131;
          }

          if (v8 + a4 >= v28)
          {
            v29 = a3[1];
          }

          else
          {
            v29 = v8 + a4;
          }

          if (v29 < v8)
          {
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
            return result;
          }

          if (v6 != v29)
          {
            v30 = *a3;
            v31 = *a3 + 32 * v6;
            v32 = v8 - v6;
            do
            {
              v33 = v30 + 32 * v6;
              v34 = *(v33 + 16);
              v35 = *(v33 + 24);
              v36 = v32;
              v37 = v31;
              do
              {
                if (v35)
                {
                  v38 = *(v37 - 8);
                  if (v38)
                  {
                    result = *(v37 - 16);
                    if (result == v34 && v38 == v35)
                    {
                      break;
                    }

                    result = sub_1E42079A4();
                    if ((result & 1) == 0)
                    {
                      break;
                    }
                  }
                }

                if (!v30)
                {
                  goto LABEL_134;
                }

                v34 = *(v37 + 16);
                v35 = *(v37 + 24);
                v40 = *v37;
                v41 = *(v37 - 16);
                *v37 = *(v37 - 32);
                *(v37 + 16) = v41;
                *(v37 - 16) = v34;
                *(v37 - 8) = v35;
                *(v37 - 32) = v40;
                v37 -= 32;
              }

              while (!__CFADD__(v36++, 1));
              ++v6;
              v31 += 32;
              --v32;
            }

            while (v6 != v29);
            v6 = v29;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_129;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1E37FFF70(0, *(v7 + 16) + 1, 1, v7);
        v7 = result;
      }

      v44 = *(v7 + 16);
      v43 = *(v7 + 24);
      v45 = v44 + 1;
      if (v44 >= v43 >> 1)
      {
        result = sub_1E37FFF70((v43 > 1), v44 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 16) = v45;
      v46 = v7 + 32;
      v47 = (v7 + 32 + 16 * v44);
      *v47 = v8;
      v47[1] = v6;
      v88 = *v87;
      if (!*v87)
      {
        goto LABEL_137;
      }

      if (v44)
      {
        while (1)
        {
          v48 = v45 - 1;
          v49 = (v46 + 16 * (v45 - 1));
          v50 = (v7 + 16 * v45);
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v51 = *(v7 + 32);
            v52 = *(v7 + 40);
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_78:
            if (v54)
            {
              goto LABEL_119;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_122;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_125;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_127;
            }

            if (v68 + v71 >= v53)
            {
              if (v53 < v71)
              {
                v48 = v45 - 2;
              }

              goto LABEL_100;
            }

            goto LABEL_93;
          }

          if (v45 < 2)
          {
            goto LABEL_121;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_93:
          if (v69)
          {
            goto LABEL_124;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_126;
          }

          if (v76 < v68)
          {
            goto LABEL_107;
          }

LABEL_100:
          if (v48 - 1 >= v45)
          {
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
            goto LABEL_132;
          }

          if (!*a3)
          {
            goto LABEL_135;
          }

          v80 = v7;
          v81 = (v46 + 16 * (v48 - 1));
          v82 = *v81;
          v83 = (v46 + 16 * v48);
          v84 = v83[1];
          result = sub_1E38EC4A4((*a3 + 32 * *v81), (*a3 + 32 * *v83), (*a3 + 32 * v84), v88);
          if (v4)
          {
          }

          if (v84 < v82)
          {
            goto LABEL_114;
          }

          v85 = *(v80 + 16);
          if (v48 > v85)
          {
            goto LABEL_115;
          }

          *v81 = v82;
          v81[1] = v84;
          if (v48 >= v85)
          {
            goto LABEL_116;
          }

          v45 = v85 - 1;
          result = memmove((v46 + 16 * v48), v83 + 2, 16 * (v85 - 1 - v48));
          v7 = v80;
          *(v80 + 16) = v85 - 1;
          if (v85 <= 2)
          {
            goto LABEL_107;
          }
        }

        v55 = v46 + 16 * v45;
        v56 = *(v55 - 64);
        v57 = *(v55 - 56);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_117;
        }

        v60 = *(v55 - 48);
        v59 = *(v55 - 40);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_118;
        }

        v62 = v50[1];
        v63 = v62 - *v50;
        if (__OFSUB__(v62, *v50))
        {
          goto LABEL_120;
        }

        v61 = __OFADD__(v53, v63);
        v64 = v53 + v63;
        if (v61)
        {
          goto LABEL_123;
        }

        if (v64 >= v58)
        {
          v78 = *v49;
          v77 = v49[1];
          v61 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v61)
          {
            goto LABEL_128;
          }

          if (v53 < v79)
          {
            v48 = v45 - 2;
          }

          goto LABEL_100;
        }

        goto LABEL_78;
      }

LABEL_107:
      v5 = a3[1];
      if (v6 >= v5)
      {
        v90 = v7;
        break;
      }
    }
  }

  if (!*v87)
  {
    goto LABEL_138;
  }

  sub_1E38EC378(&v90, *v87, a3);
}

uint64_t sub_1E38EC378(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1E37FFF5C(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1E38EC4A4((*a3 + 32 * *v9), (*a3 + 32 * *v11), (*a3 + 32 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1E38EC4A4(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 32;
  v9 = (a3 - __dst) / 32;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[32 * v8] <= a4)
    {
      memmove(a4, __src, 32 * v8);
    }

    v11 = &v4[32 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v19 = v7;
        goto LABEL_50;
      }

      v13 = *(v6 + 3);
      if (!v13)
      {
        break;
      }

      v14 = *(v4 + 3);
      if (!v14)
      {
        break;
      }

      v15 = *(v4 + 2) == *(v6 + 2) && v14 == v13;
      if (!v15 && (sub_1E42079A4() & 1) != 0)
      {
        break;
      }

      v16 = v4;
      v15 = v7 == v4;
      v4 += 32;
      if (!v15)
      {
        goto LABEL_20;
      }

LABEL_21:
      v7 += 32;
    }

    v16 = v6;
    v15 = v7 == v6;
    v6 += 32;
    if (v15)
    {
      goto LABEL_21;
    }

LABEL_20:
    v17 = *(v16 + 1);
    *v7 = *v16;
    *(v7 + 1) = v17;
    goto LABEL_21;
  }

  if (a4 != __dst || &__dst[32 * v9] <= a4)
  {
    memmove(a4, __dst, 32 * v9);
  }

  v11 = &v4[32 * v9];
LABEL_31:
  v19 = v6;
  for (v5 -= 32; v11 > v4 && v6 > v7; v5 -= 32)
  {
    v21 = *(v11 - 1);
    if (!v21 || (v22 = *(v6 - 1)) == 0 || (*(v6 - 2) == *(v11 - 2) ? (v23 = v22 == v21) : (v23 = 0), !v23 && (sub_1E42079A4() & 1) != 0))
    {
      v6 -= 32;
      if (v5 + 32 != v19)
      {
        v25 = *(v19 - 1);
        *v5 = *v6;
        *(v5 + 1) = v25;
      }

      goto LABEL_31;
    }

    if (v11 != v5 + 32)
    {
      v24 = *(v11 - 1);
      *v5 = *(v11 - 2);
      *(v5 + 1) = v24;
    }

    v11 -= 32;
  }

LABEL_50:
  v26 = (v11 - v4) / 32;
  if (v19 != v4 || v19 >= &v4[32 * v26])
  {
    memmove(v19, v4, 32 * v26);
  }

  return 1;
}

void *sub_1E38EC698(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D5A8, &qword_1E42A9930);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[4 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D5B0, &qword_1E42A9A68);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1E38EC7C8(void *a1)
{
  v4 = *&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_tagsView];
  *&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_tagsView] = a1;
  v2 = a1;
  if (v4)
  {
    v3 = [v4 layer];
    [v3 setCompositingFilter_];
  }

  [v1 vui:*&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_tagsView] addSubview:v4 oldView:?];
}

void sub_1E38EC87C(void *a1)
{
  v4 = *&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_channelLogoView];
  *&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_channelLogoView] = a1;
  v2 = *&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_channelLogoView];
  v3 = a1;
  [v1 vui:v2 addSubview:v4 oldView:?];
  [v1 vui_setNeedsLayout];
}

id sub_1E38EC910(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC8VideosUI15UpsellOfferView_storedGradientLayer;
  OUTLINED_FUNCTION_14_0(v2 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_storedGradientLayer, a2);
  v4 = *(v2 + v3);
  if (v4)
  {
    v5 = *(v2 + v3);
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E6979380]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1E4299720;
    v8 = objc_opt_self();
    v9 = [v8 blackColor];
    v10 = [v9 colorWithAlphaComponent_];

    v11 = [v10 CGColor];
    type metadata accessor for CGColor();
    v13 = v12;
    *(v7 + 56) = v12;
    *(v7 + 32) = v11;
    v14 = [v8 blackColor];
    v15 = [v14 colorWithAlphaComponent_];

    v16 = [v15 CGColor];
    *(v7 + 88) = v13;
    *(v7 + 64) = v16;
    sub_1E38E2BE0(v7, v6);
    v17 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v18 = v4;
  return v5;
}

id sub_1E38ECAC4()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

char *sub_1E38ECC58(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v10 = (*(*a1 + 488))(a1);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v118 = a1;
  v117 = v5;
  v122[0] = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D5E8, &qword_1E42A9A80);
  sub_1E4148C68(sub_1E38ED82C, v12, &v119);
  v13 = v119;
  [v13 setVuiBackgroundColor_];
  v14 = OBJC_IVAR____TtC8VideosUI15UpsellOfferView_layout;
  swift_beginAccess();
  *&v13[v14] = a2;

  v17 = &selRef_textLayout;
  if (sub_1E373E010(31, v11, v15))
  {
    type metadata accessor for ImageViewModel();
    v18 = swift_dynamicCastClass();
    if (v18)
    {
      v19 = v18;
      type metadata accessor for UIFactory();
      v20 = *&v13[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contextImageView];
      v121 = 0;
      v119 = 0u;
      v120 = 0u;
      v21 = v14;
      v22 = sub_1E3280A90(0, &qword_1EE23B360, 0x1E69DF740);
      v23 = v20;
      v24 = v22;
      v14 = v21;
      v17 = &selRef_textLayout;
      v25 = sub_1E393D92C(v19, v20, &v119, 0, v24);

      sub_1E325F748(&v119, &qword_1ECF296C0, &unk_1E429BBE0);
      OUTLINED_FUNCTION_12_45(OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contextImageView);
      OUTLINED_FUNCTION_19_35();
      OUTLINED_FUNCTION_2_66();
    }

    else
    {
    }
  }

  if (sub_1E373E010(39, v11, v16))
  {
    type metadata accessor for ImageViewModel();
    v27 = swift_dynamicCastClass();
    if (v27)
    {
      v28 = v27;
      v29 = *&v13[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contextImageView] != 0;
      v30 = *(**&v13[v14] + 2064);
      v31 = v14;

      v30(v29, a4);

      type metadata accessor for UIFactory();
      OUTLINED_FUNCTION_1_86();
      v32 = sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);

      v33 = v29;
      v34 = sub_1E393D92C(v28, v29, &v119, 0, v32);

      v14 = v31;
      v17 = &selRef_textLayout;
      sub_1E325F748(&v119, &qword_1ECF296C0, &unk_1E429BBE0);
      OUTLINED_FUNCTION_12_45(OBJC_IVAR____TtC8VideosUI15UpsellOfferView_coverArtImageView);
      OUTLINED_FUNCTION_19_35();
      OUTLINED_FUNCTION_2_66();
    }

    else
    {
    }
  }

  if (sub_1E373E010(99, v11, v26) || sub_1E373E010(40, v11, v35))
  {
    if ([objc_opt_self() isTV] & 1) != 0 || (sub_1E39DFFC8())
    {
      v37 = *&v13[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_channelLogoView];
      v38 = v37;
      v39 = OUTLINED_FUNCTION_17_4();
      v42 = sub_1E38ED874(v40, v37, v39, v41);

      sub_1E38EC87C(v42);
    }
  }

  v43 = sub_1E373E010(23, v11, v36);
  if (v43)
  {
    if (*v43 == _TtC8VideosUI13TextViewModel)
    {
      type metadata accessor for UIFactory();
      OUTLINED_FUNCTION_1_86();
      v45 = sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
      v46 = _TtC8VideosUI13TextViewModel;
      v47 = OUTLINED_FUNCTION_3_62();
      v51 = sub_1E393D92C(v47, v48, v49, v50, v45);

      sub_1E325F748(&v119, &qword_1ECF296C0, &unk_1E429BBE0);
      OUTLINED_FUNCTION_12_45(OBJC_IVAR____TtC8VideosUI15UpsellOfferView_titleLabel);
      OUTLINED_FUNCTION_19_35();
      OUTLINED_FUNCTION_2_66();
    }

    else
    {
    }
  }

  v52 = sub_1E373E010(17, v11, v44);
  if (v52)
  {
    if (*v52 == _TtC8VideosUI13TextViewModel)
    {
      type metadata accessor for UIFactory();
      OUTLINED_FUNCTION_1_86();
      v54 = sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
      v55 = _TtC8VideosUI13TextViewModel;
      v56 = OUTLINED_FUNCTION_3_62();
      v60 = sub_1E393D92C(v56, v57, v58, v59, v54);

      sub_1E325F748(&v119, &qword_1ECF296C0, &unk_1E429BBE0);
      OUTLINED_FUNCTION_12_45(OBJC_IVAR____TtC8VideosUI15UpsellOfferView_descriptionLabel);
      OUTLINED_FUNCTION_19_35();
      OUTLINED_FUNCTION_2_66();
    }

    else
    {
    }
  }

  if (sub_1E373E010(35, v11, v53))
  {
    type metadata accessor for ImageViewModel();
    v62 = swift_dynamicCastClass();
    if (v62)
    {
      v63 = v62;
      v64 = *&v13[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contextImageView] != 0;
      v65 = *&v13[v14];
      v66 = *(*v65 + 2072);
      v67 = v14;

      v68 = OUTLINED_FUNCTION_17_4();
      v66(v64, v68);

      type metadata accessor for UIFactory();
      OUTLINED_FUNCTION_1_86();
      v69 = sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);

      v70 = v65;
      v71 = OUTLINED_FUNCTION_3_62();
      v75 = sub_1E393D92C(v71, v72, v73, v74, v69);

      v14 = v67;
      v17 = &selRef_textLayout;
      sub_1E325F748(&v119, &qword_1ECF296C0, &unk_1E429BBE0);
      OUTLINED_FUNCTION_12_45(OBJC_IVAR____TtC8VideosUI15UpsellOfferView_backgroundImageView);
      OUTLINED_FUNCTION_19_35();
      OUTLINED_FUNCTION_2_66();

      *&v13[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_backgroundImageModel] = v63;
    }
  }

  if (!sub_1E373E010(43, v11, v61))
  {
    goto LABEL_33;
  }

  type metadata accessor for ImageViewModel();
  v77 = swift_dynamicCastClass();
  if (!v77)
  {

LABEL_33:
    v90 = sub_1E373E010(5, v11, v76);

    if (v90)
    {
      if (*v90 == _TtC8VideosUI13TextViewModel)
      {
        type metadata accessor for UIFactory();
        OUTLINED_FUNCTION_1_86();
        v91 = sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);

        v92 = _TtC8VideosUI13TextViewModel;
        v93 = OUTLINED_FUNCTION_3_62();
        v97 = sub_1E393D92C(v93, v94, v95, v96, v91);

        sub_1E325F748(&v119, &qword_1ECF296C0, &unk_1E429BBE0);
        OUTLINED_FUNCTION_12_45(OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contentTextLabel);
        v98 = *&v13[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contentTextLabel];
        v99 = v17[466];
        v100 = v97;
        [v13 v99];
      }

      else
      {
      }
    }

    goto LABEL_37;
  }

  v78 = v77;

  type metadata accessor for UIFactory();
  v79 = *&v13[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contentLogoView];
  v121 = 0;
  v119 = 0u;
  v120 = 0u;
  v80 = sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);

  v81 = v79;
  v82 = sub_1E393D92C(v78, v79, &v119, 0, v80);

  sub_1E325F748(&v119, &qword_1ECF296C0, &unk_1E429BBE0);
  OUTLINED_FUNCTION_36();
  v84 = *(v83 + 2088);

  v84(v85, a4);

  v86 = *&v13[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contentLogoView];
  *&v13[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contentLogoView] = v82;
  v87 = *&v13[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contentLogoView];
  v88 = v17[466];
  v89 = v82;
  [v13 v88];

LABEL_37:
  type metadata accessor for LayoutGrid();
  sub_1E3A2579C(a4);
  v101 = *&v13[v14];

  v102 = sub_1E38ED980();
  v103 = [v13 vuiTraitCollection];

  v104 = [v103 isAXEnabled];
  (*(*v101 + 2080))(v102, v104);

  v105 = *(**sub_1E32ABF64() + 96);

  LOBYTE(v105) = v105(v106);

  v107 = sub_1E38EDAD8(v118, v105 & 1);
  if (v107)
  {
    v108 = v107;
    v109 = OUTLINED_FUNCTION_6_19();
    sub_1E38EC7C8(v109);
    OUTLINED_FUNCTION_36();
    v111 = (*(v110 + 1880))();
    v112 = [v111 isGroupActivityTagEnabled];

    if (v112)
    {
      v113 = [objc_opt_self() defaultCenter];
      *&v119 = v117;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D5F0, &qword_1E42A9A88);
      v114 = sub_1E4207A34();
      v115 = *sub_1E3C0EB8C();
      [v113 addObserver:v114 selector:sel_handleGroupWatchActivityStateDidChange_ name:v115 object:0];

      swift_unknownObjectRelease();
    }
  }

  *&v13[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_upsellViewModel] = v118;

  *&v13[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_currentWidth] = a4;

  return v13;
}

id sub_1E38ED82C@<X0>(void *a2@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for UpsellOfferView()) initWithFrame_];
  *a2 = result;
  return result;
}

unsigned __int16 *sub_1E38ED874(unsigned __int16 *a1, void *a2, double a3, double a4)
{
  sub_1E3DF9E68(v15);
  v14 = 0;
  type metadata accessor for UIFactory();
  v13[3] = &unk_1F5D869A0;
  v13[4] = &off_1F5D868A0;
  v8 = swift_allocObject();
  v13[0] = v8;
  v9 = *&v15[16];
  *(v8 + 16) = *v15;
  *(v8 + 32) = v9;
  *(v8 + 48) = *&v15[32];
  *(v8 + 64) = a3;
  *(v8 + 72) = a4;
  *(v8 + 80) = 0;
  *(v8 + 81) = *&v15[65];
  *(v8 + 97) = v15[81];
  v10 = sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
  v11 = sub_1E393D92C(a1, a2, v13, 0, v10);
  sub_1E325F748(v13, &qword_1ECF296C0, &unk_1E429BBE0);
  return v11;
}

BOOL sub_1E38ED980()
{
  v1 = v0;
  if ([objc_opt_self() isPhone] && ((v2 = objc_msgSend(objc_opt_self(), sel_vui_main)) == 0 ? (Height = 0.0) : (v3 = v2, objc_msgSend(v2, sel_vui_bounds), v5 = v4, v7 = v6, v3, v14.origin.x = OUTLINED_FUNCTION_17_4(), v14.size.width = v5, v14.size.height = v7, Height = CGRectGetHeight(v14)), *(v1 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_coverArtImageView) && (OUTLINED_FUNCTION_25(), swift_beginAccess(), OUTLINED_FUNCTION_36(), v10 = *(v9 + 2016), v11 = , v12 = v10(v11), , Height < v12)))
  {
    return 0;
  }

  else
  {
    return *(v1 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_backgroundImageView) != 0;
  }
}

id sub_1E38EDAD8(uint64_t a1, char a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v7;
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 48) = a2;
  v8 = sub_1E4205CB4();
  if (a1)
  {
    sub_1E3280A90(0, &qword_1EE23B228, off_1E8728490);
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    OUTLINED_FUNCTION_36();
    v10 = (v9 + 1880);
    v11 = *(v9 + 1880);

    v11(v12);
    OUTLINED_FUNCTION_6_19();

    v13 = *(v3 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_tagsView);
    v14 = v13;
    v15 = sub_1E4005268(a1, v10, v13, v8, 0);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void sub_1E38EDC78()
{
  v0 = sub_1E41FDF24();
  if (!v0)
  {
    v9 = 0u;
    v10 = 0u;
    goto LABEL_6;
  }

  v1 = v0;
  v2 = sub_1E3C0EBCC();
  v4 = *v2;
  v3 = *(v2 + 1);
  *&v9 = v4;
  *(&v9 + 1) = v3;

  sub_1E4207414();
  sub_1E375D7E8(v1, &v9, v8);

  sub_1E375D84C(v8);
  if (!*(&v10 + 1))
  {
LABEL_6:
    sub_1E325F748(&v9, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_7;
  }

  if (!swift_dynamicCast())
  {
LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v5 = v8[0];
LABEL_8:

  v7 = sub_1E38EDAD8(v6, v5);

  sub_1E38EC7C8(v7);
}

void sub_1E38EDE88(char a1, double a2, double a3)
{
  v4 = v3;
  v323.width = 0.0;
  v323.height = 0.0;
  if (CGSizeEqualToSize(*&a2, v323))
  {
    goto LABEL_162;
  }

  v292 = a1;
  v7 = [v4 vuiTraitCollection];
  v8 = [v7 userInterfaceStyle];

  v9 = OBJC_IVAR____TtC8VideosUI15UpsellOfferView_layout;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  OUTLINED_FUNCTION_36();
  v11 = *(v10 + 1976);

  v13 = v11(v12);

  v15 = (*(*v13 + 1576))(v14);

  if (v15)
  {
    v16 = [v15 userInterfaceStyle];
  }

  else
  {
    v16 = 0;
  }

  v298 = OBJC_IVAR____TtC8VideosUI15UpsellOfferView_channelLogoView;
  if (*(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_channelLogoView))
  {
    v17 = v16 == v8;
  }

  else
  {
    v17 = 1;
  }

  v18 = !v17;
  type metadata accessor for LayoutGrid();
  v19 = sub_1E3A2579C(a2);

  v20 = [v4 vuiTraitCollection];
  v302 = v19;
  sub_1E3C2AE10();
  v22 = v21;
  OUTLINED_FUNCTION_36();
  (*(v23 + 1640))();

  v24 = sub_1E38ED980();
  v25 = [v4 vuiTraitCollection];
  v26 = [v25 isAXEnabled];

  v312 = v26;
  if (v24 && *(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_currentWidth) != a2)
  {
    v139 = *(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_backgroundImageView);
    if (v139)
    {
      objc_opt_self();
      v140 = swift_dynamicCastObjCClass();
      if (v140)
      {
        if (*(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_backgroundImageModel))
        {
          v311 = v140;
          v141 = OBJC_IVAR____TtC8VideosUI15UpsellOfferView_layout;
          OUTLINED_FUNCTION_25();
          v143 = v142;
          swift_beginAccess();
          v144 = *(v4 + v141);
          OUTLINED_FUNCTION_25();
          swift_beginAccess();
          v306 = *(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contextImageView) != 0;
          v145 = *(*v144 + 2072);

          v309 = v139;
          v146 = OUTLINED_FUNCTION_17_4();
          v145(v306, v146);

          v147 = *(**(v4 + v141) + 1784);

          v149 = v147(v148);

          v151 = (*(*v149 + 2288))(v150);
          v153 = sub_1E3C3E520(v143, v151, v152);
          v154 = v153;
          if (!v153 || (v155 = v153, v156 = [v311 imageProxy], v307 = objc_msgSend(v155, sel_isEqual_, v156), v156, v155, (v307 & 1) == 0))
          {
            [v311 setImageProxy:v154 completion:0];
            v155 = v154;
          }

          v26 = v312;
        }
      }
    }
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  OUTLINED_FUNCTION_36();
  v28 = *(v27 + 2080);

  v28(v24, v26);

  v29 = *(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_currentPrefersUberLayout);
  if (v29 == 2 || (v30 = *(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_currentIsAXEnabled), v30 == 2) || ((v24 ^ v29) & 1) != 0 || ((v312 ^ v30) & 1) != 0)
  {
    v31 = *(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_upsellViewModel);

    v32 = *(**sub_1E32ABF64() + 96);

    LOBYTE(v32) = v32(v33);

    v34 = sub_1E38EDAD8(v31, v32 & 1);

    if (v34)
    {
      v35 = v34;
      v36 = OUTLINED_FUNCTION_6_19();
      sub_1E38EC7C8(v36);
    }
  }

  v37 = *(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_tagsView);
  v38 = &selRef_vui_disableLocalAsset;
  if (v37)
  {
    v39 = v37;
    if (v312 & 1 | !v24)
    {
      v40 = [v4 vuiUserInterfaceStyle];
    }

    else
    {
      v40 = 2;
    }

    [v39 vui:v40 setOverrideUserInterfaceStyle:?];
  }

  if (*(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_currentWidth) != a2)
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    OUTLINED_FUNCTION_36();
    v38 = *(v41 + 2088);

    (v38)(v42, a2);
  }

  v43 = v302;
  if (v18)
  {
    v44 = OBJC_IVAR____TtC8VideosUI15UpsellOfferView_upsellViewModel;
    if (*(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_upsellViewModel))
    {

      sub_1E39C408C();
      OUTLINED_FUNCTION_18_30();
      if (v38)
      {
        v45 = *(v4 + v298);
        v46 = v45;
        v47 = OUTLINED_FUNCTION_17_4();
        v50 = sub_1E38ED874(v48, v45, v47, v49);

        sub_1E38EC87C(v50);
      }

      else if (*(v4 + v44))
      {

        sub_1E39C408C();
        OUTLINED_FUNCTION_18_30();
      }
    }
  }

  v51 = *(v4 + v9);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v52 = *(*v51 + 2008);

  v53 = OUTLINED_FUNCTION_17_4();
  v296 = v52(v53);
  v55 = v54;
  v57 = v56;

  v289 = a2;
  v58 = a2 - v55 - v57;
  v310 = OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contentTextLabel;
  v59 = *(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contentTextLabel);
  v60 = 0;
  v61 = 0.0;
  v62 = 0.0;
  if (v59)
  {
    OUTLINED_FUNCTION_9_49(v59);
  }

  v301 = v62;
  v304 = v61;
  v63 = OBJC_IVAR____TtC8VideosUI15UpsellOfferView_tagsView;
  v64 = *(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_tagsView);
  v308 = 0.0;
  v65 = v312;
  if (v64)
  {
    OUTLINED_FUNCTION_9_49(v64);
    v60 = v66;
    v308 = v67;
  }

  v291 = OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contextImageView;
  v68 = *(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contextImageView);
  v305 = 0.0;
  v69 = 0;
  v70 = 0.0;
  if (v68)
  {
    v71 = [v68 image];
    if (v71)
    {
      v72 = v71;
      [v71 size];
      v69 = v73;
      v70 = v74;
    }
  }

  v281 = v60;
  v290 = OBJC_IVAR____TtC8VideosUI15UpsellOfferView_titleLabel;
  v75 = *(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_titleLabel);
  if (v75)
  {
    OUTLINED_FUNCTION_9_49(v75);
    v305 = v76;
  }

  v300 = v70;
  v282 = OBJC_IVAR____TtC8VideosUI15UpsellOfferView_descriptionLabel;
  v77 = *(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_descriptionLabel);
  v78 = 0.0;
  v79 = 0.0;
  if (v77)
  {
    OUTLINED_FUNCTION_9_49(v77);
    v79 = v80;
  }

  OUTLINED_FUNCTION_0_76();
  v82 = *(v81 + 1808);

  v82(v83);
  OUTLINED_FUNCTION_6_19();

  OUTLINED_FUNCTION_30_1();
  (*(v84 + 152))(v313);

  if (v314)
  {
    v85 = 0.0;
  }

  else
  {
    v85 = *&v313[2];
  }

  OUTLINED_FUNCTION_0_76();
  v87 = *(v86 + 1832);

  v87(v88);
  OUTLINED_FUNCTION_6_19();

  OUTLINED_FUNCTION_30_1();
  (*(v89 + 152))(v315);

  if (v316)
  {
    v90 = 0.0;
  }

  else
  {
    v90 = *&v315[2];
  }

  v91 = *(v4 + v63);
  v286[4] = !v24;
  v280 = v69;
  HIDWORD(v274) = !v24 | v312;
  if (!v91 || ((!v24 | v312) & 1) != 0)
  {
    v97 = *&v310[v4];
    if (v97)
    {
      [v97 bottomMarginWithBaselineMargin_];
      v90 = v98;
    }
  }

  else
  {
    v92 = v91;
    [v92 topMarginWithBaselineMargin_];
    v85 = v93;
    OUTLINED_FUNCTION_14_53();
    v95 = v94;
    [v92 topMarginToLabel:v95 withBaselineMargin:v90];
    v90 = v96;
  }

  OUTLINED_FUNCTION_0_76();
  v99 = (v99 + 2048);
  v100 = *v99;
  v101 = v99;

  v287 = v100(v302);

  v102 = 0.0;
  if (*(v4 + v63))
  {
    OUTLINED_FUNCTION_0_76();
    v101 = *(v103 + 1880);
    v105 = v104;
    OUTLINED_FUNCTION_6_19();

    v101(v106);
    OUTLINED_FUNCTION_18_30();
    [v101 margin];
    v108 = v107;

    [v100 topMarginWithBaselineMargin_];
    v102 = v109;

    if (*(v4 + v63))
    {
      OUTLINED_FUNCTION_0_76();
      v101 = *(v110 + 1880);
      v112 = v111;
      OUTLINED_FUNCTION_6_19();

      v101(v113);
      v43 = v302;
      OUTLINED_FUNCTION_18_30();
      [v101 margin];
      v115 = v114;

      [v100 bottomMarginWithBaselineMargin_];
      v78 = v116;
    }

    v65 = v312;
  }

  OUTLINED_FUNCTION_0_76();
  if (v24)
  {
    v118 = (v117 + 1784);
  }

  else
  {
    v118 = (v117 + 1856);
  }

  v119 = *v118;

  v119(v120);
  v121 = OUTLINED_FUNCTION_18_30();
  (*(*v101 + 2288))(v121);

  OUTLINED_FUNCTION_36();
  v123 = *(v122 + 1808);

  v123(v124);
  OUTLINED_FUNCTION_6_19();

  v303 = (*(*v123 + 2288))(v125);
  v299 = v126;

  v284 = 0.0;
  VUICeilValue();
  v128 = v127;
  VUICeilValue();
  v129 = v296 + 0.0;
  v130 = v128;
  v132 = v131;
  v283 = *&v58;
  v133 = (v289 - v128) * 0.5;
  v134 = v296 + 0.0 + v131;
  v295 = v296 + 0.0;
  v297 = v130;
  v293 = v133;
  v294 = v131;
  if (v24)
  {
    if (*(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contentLogoView))
    {
      v279 = (v289 - v303) * 0.5;
      if (v65)
      {
        v135 = 0.0;
      }

      else
      {
        v135 = v308 + v78;
      }

      v136 = v133;
      v277 = CGRectGetMaxY(*(&v129 - 1)) - v299 - v85 - v135;
    }

    else
    {
      OUTLINED_FUNCTION_14_53();
      if (v161)
      {
        v284 = (v289 - v304) * 0.5;
        v162 = v160;
        MaxY = CGRectGetMaxY(*(&v157 - 1));
        if (v65)
        {
          v137 = v300;
          v134 = v301 + v102 + v134;
          v279 = 0.0;
          OUTLINED_FUNCTION_13_56();
LABEL_80:
          OUTLINED_FUNCTION_14_53();
          v284 = v167;
          if (v164)
          {
            v138 = v167;
          }

          v278 = v168;
          if (v164)
          {
            v129 = v168;
          }

          v304 = v130;
          if (!v164)
          {
            v130 = v165;
          }

          v301 = v132;
          if (!v164)
          {
            v132 = v166;
          }

          goto LABEL_88;
        }

        v278 = MaxY - v301 - v90 - (v308 + v78);
        v279 = 0.0;
        OUTLINED_FUNCTION_13_56();
        v137 = v300;
LABEL_93:
        v324.origin.y = v295;
        v324.size.width = v297;
        v324.origin.x = v293;
        v324.size.height = v294;
        v276 = CGRectGetMaxY(v324) - v308 - v78;
        goto LABEL_94;
      }

      v279 = 0.0;
      OUTLINED_FUNCTION_13_56();
    }

    v137 = v300;
    if (v65)
    {
      goto LABEL_80;
    }

    v284 = 0.0;
    v278 = 0.0;
    v304 = 0.0;
    v301 = 0.0;
    goto LABEL_93;
  }

  v278 = 0.0;
  v138 = v133;
  v303 = 0.0;
  v304 = 0.0;
  v301 = 0.0;
  v279 = 0.0;
  v277 = 0.0;
  v299 = 0.0;
  v137 = v300;
LABEL_88:
  v276 = v102 + CGRectGetMaxY(*(&v129 - 1));
  v134 = v308 + v102 + v134;
LABEL_94:
  v285 = (v289 - v58) * 0.5;
  v169 = 0.0;
  v170 = v287;
  if (v137 <= 0.0)
  {
    v170 = 0.0;
  }

  v288 = v170 + v134;
  v171 = v137 + v170 + v134;
  v172 = sub_1E39DFFC8();
  v173 = *(v4 + v9);
  if (v172)
  {
    v174 = *(*v173 + 1784);

    v174(v175);
    OUTLINED_FUNCTION_6_19();

    OUTLINED_FUNCTION_30_1();
    (*(v176 + 152))(v317);

    v177 = *&v317[2];
    v178 = 0.0;
    if (v318)
    {
      v177 = 0.0;
    }

    v179 = v171 + v177;
    v180 = *(v4 + v298);
    if (v180)
    {
      OUTLINED_FUNCTION_0_76();
      v182 = *(v181 + 1976);

      v183 = v180;
      v182();
      OUTLINED_FUNCTION_6_19();

      v185 = (*(*v182 + 2288))(v184);
      v187 = v186;

      sub_1E4149DC0(v185, v187);
      if (v189)
      {
        [v183 vui:v58 sizeThatFits:1.79769313e308];
        v191 = v190;
      }

      else
      {
        v191 = v188;
      }

      OUTLINED_FUNCTION_0_76();
      v205 += 247;
      v206 = *v205;
      v207 = v205;

      (v206)(v208);
      OUTLINED_FUNCTION_6_19();

      v210 = (*v207)[57](v209);

      LOBYTE(v65) = v312;
      if (v210 != 7)
      {
        LOBYTE(v319[0]) = v210;
        v322 = 4;
        sub_1E3793D00(v211, v212, v213);
        sub_1E4205E84();
      }

      nullsub_1();
      v178 = v214;
      v198 = v215;
      v199 = v216;
      v169 = v217;
      OUTLINED_FUNCTION_36();
      v219 = *(v218 + 1976);

      v219(v220);
      OUTLINED_FUNCTION_6_19();

      OUTLINED_FUNCTION_30_1();
      (*(v221 + 152))(v319);

      if (v321)
      {
        v222 = 0;
      }

      else
      {
        v222 = *&v320;
      }

      v223 = sub_1E4149E00(v222, v321 & 1, v191);

      v197 = v179 + v223;
    }

    else
    {
      OUTLINED_FUNCTION_0_76();
      v201 = *(v200 + 1904);

      v201(v202);
      OUTLINED_FUNCTION_6_19();

      OUTLINED_FUNCTION_30_1();
      (*(v203 + 152))(v319);

      v204 = v320;
      if (v321)
      {
        v204 = 0.0;
      }

      v197 = v179 + v204;
      v198 = 0.0;
      v199 = 0.0;
    }
  }

  else
  {
    v192 = *(v4 + v291) != 0;
    v193 = *(*v173 + 2040);

    v194 = v193(v43, v192);

    v195 = *(v4 + v290);
    if (v195)
    {
      [v195 topMarginWithBaselineMargin_];
      v169 = v196;
    }

    v197 = v171 + v169;
    v178 = 0.0;
    v198 = 0.0;
    v199 = 0.0;
    v169 = 0.0;
  }

  if ((v292 & 1) == 0)
  {
    v224 = &OBJC_IVAR____TtC8VideosUI15UpsellOfferView_backgroundImageView;
    if (!v24)
    {
      v224 = &OBJC_IVAR____TtC8VideosUI15UpsellOfferView_coverArtImageView;
    }

    v225 = *(v4 + *v224);
    [v225 setFrame_];
    v235 = *(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_backgroundImageView);
    if (v235)
    {
      OUTLINED_FUNCTION_17_34(v235, v226, v227, v228, v229, v230, v231, v232, v273, v274, *&v276, *&v277, *&v278, *&v279, v280, v281, v282, *&v58, *&v284, *&v285, *v286, v286[4]);
    }

    v236 = *(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_coverArtImageView);
    if (v236)
    {
      [v236 setHidden_];
    }

    v237 = OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contentLogoView;
    v238 = *(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contentLogoView);
    if (v238)
    {
      OUTLINED_FUNCTION_17_34(v238, v226, v227, v228, v229, v230, v231, v232, v273, v274, *&v276, *&v277, *&v278, *&v279, v280, v281, v282, v283, *&v284, *&v285, *v286, v286[4]);
    }

    v239 = *&v310[v4];
    if (v239)
    {
      OUTLINED_FUNCTION_17_34(v239, v226, v227, v228, v229, v230, v231, v232, v273, v274, *&v276, *&v277, *&v278, *&v279, v280, v281, v282, v283, *&v284, *&v285, *v286, v286[4]);
      OUTLINED_FUNCTION_14_53();
      if (v240)
      {
        v241 = v240;
        if (v275)
        {
          v242 = [v4 vuiUserInterfaceStyle];
        }

        else
        {
          v242 = 2;
        }

        [v241 vui:v242 setOverrideUserInterfaceStyle:?];
      }
    }

    v243 = *(v4 + v237);
    if (v243)
    {
      [v243 setFrame_];
    }

    v244 = *&v310[v4];
    if (v244)
    {
      [v244 setFrame_];
    }

    if (*(v4 + v63))
    {
      v245 = OUTLINED_FUNCTION_20_36(v233, v234, *&v281);
      [v246 v247];
    }

    if (*(v4 + v291))
    {
      v248 = OUTLINED_FUNCTION_20_36(v233, v234, *&v280);
      [v249 v250];
    }

    v251 = *(v4 + v298);
    if (v251)
    {
      [v251 setFrame_];
    }

    v252 = *(v4 + v290);
    if (v252)
    {
      [v252 setFrame_];
    }

    v253 = *(v4 + v282);
    if (v253)
    {
      [v253 setFrame_];
    }

    if (v24)
    {
      if (*(v4 + v63) || *(v4 + v237) || (OUTLINED_FUNCTION_14_53(), v254))
      {
        v255 = OBJC_IVAR____TtC8VideosUI15UpsellOfferView_storedGradientView;
        swift_beginAccess();
        v256 = *(v4 + v255);
        if (v256)
        {
          v257 = *(v4 + v255);
        }

        else
        {
          v258 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
          v259 = [objc_opt_self() clearColor];
          [v258 setVuiBackgroundColor_];

          v260 = [v258 vuiLayer];
          if (v260)
          {
            v262 = v260;
            v263 = sub_1E38EC910(v260, v261);
            [v262 addSublayer_];
          }

          v264 = *(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_backgroundImageView);
          if (v264)
          {
            [v264 vui:v258 addSubview:*(v4 + v255) oldView:?];
          }

          v265 = *(v4 + v255);
          *(v4 + v255) = v258;
          v257 = v258;

          v256 = 0;
          LOBYTE(v65) = v312;
        }

        v266 = v256;
        v268 = sub_1E38EC910(v266, v267);
        if (sub_1E373F630(v43, 0, v269))
        {
          v271 = 184;
        }

        else
        {
          v272 = sub_1E373F630(v43, 1, v270);
          v271 = 192;
          if (v272)
          {
            v271 = 184;
          }
        }

        v325.origin.y = v295;
        v325.origin.x = v293;
        v325.size.height = v294;
        v325.size.width = v297;
        [v257 setFrame_];
        [v257 bounds];
        [v268 setFrame_];
      }
    }
  }

  *(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_currentWidth) = v289;
  *(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_currentPrefersUberLayout) = v24;
  *(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_currentIsAXEnabled) = v65;
LABEL_162:
  OUTLINED_FUNCTION_17_4();
}

id sub_1E38EF608()
{
  OUTLINED_FUNCTION_0_8();
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC8VideosUI15UpsellOfferView_layout;
  type metadata accessor for UpsellOfferViewLayout();
  *(v0 + v2) = sub_1E38A8DF4();
  *(v0 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_debugUIOverlay) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_currentPrefersUberLayout) = 2;
  *(v0 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_currentIsAXEnabled) = 2;
  *(v0 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_upsellViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_coverArtImageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_tagsView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contextImageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_channelLogoView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_descriptionLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_backgroundImageModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_currentWidth) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_backgroundImageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_storedGradientLayer) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_storedGradientView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contentLogoView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contentTextLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_presentingViewWidth) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_containerHeight) = 0;
  v3 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v4, v5, v3, v0, ObjectType);
}

id sub_1E38EF764(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC8VideosUI15UpsellOfferView_layout;
  type metadata accessor for UpsellOfferViewLayout();
  *&v1[v4] = sub_1E38A8DF4();
  v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_debugUIOverlay] = 0;
  v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_currentPrefersUberLayout] = 2;
  v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_currentIsAXEnabled] = 2;
  *&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_upsellViewModel] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_coverArtImageView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_tagsView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contextImageView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_channelLogoView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_titleLabel] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_descriptionLabel] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_backgroundImageModel] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_currentWidth] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_backgroundImageView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_storedGradientLayer] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_storedGradientView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contentLogoView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contentTextLabel] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_presentingViewWidth] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_containerHeight] = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_1E38EF930(char a1)
{
  result = swift_beginAccess();
  *(v1 + 98) = a1;
  return result;
}

uint64_t sub_1E38EF97C(__n128 a1)
{
  if (*(v1 + 120))
  {
    v2 = *(v1 + 120);
  }

  else
  {
    type metadata accessor for MonogramLayout();
    v2 = sub_1E4097BF8(0);
    *(v1 + 120) = v2;
  }

  return v2;
}

uint64_t sub_1E38EFA34(uint64_t a1, uint64_t a2)
{
  *(v2 + 120) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 98) = a1;
  v4 = sub_1E3C2F9A0();
  v5 = *(* + 1752);
  v5();
  OUTLINED_FUNCTION_2_1();
  (*(v6 + 2056))(2, 0);

  v8 = (v5)(v7);
  v9 = *sub_1E3E5FD88();
  v10 = *(*v8 + 680);
  v11 = v9;
  v10(v9);

  v13 = (v5)(v12);
  LOBYTE(v93) = 27;
  v99 = 19;
  v98 = 19;
  v97 = 17;
  v96 = 14;
  v95 = 14;
  sub_1E3C2FCB8(&v93, &v99, &v98, &v97, &v96, &v95, &qword_1F5D549D8, &v100);
  v93 = v100;
  v94 = WORD2(v100);
  v14 = OUTLINED_FUNCTION_18();
  (*(*v13 + 1600))(&v93, 48, v14 & 1, &qword_1F5D549D8);

  v16 = (v5)(v15);
  OUTLINED_FUNCTION_9_2();
  v18 = *(v17 + 1728);
  if (v18())
  {
    v19 = 5;
  }

  else
  {
    v19 = 1;
  }

  (*(*v16 + 1984))(v19);

  (v5)(v20);
  OUTLINED_FUNCTION_2_1();
  (*(v21 + 2080))(1, 0);

  (v5)(v22);
  OUTLINED_FUNCTION_2_1();
  (*(v23 + 2104))(0, 0);

  if ([objc_opt_self() isSUIEnabled])
  {
    v24 = a2;
    v5();
  }

  else
  {
    v25 = v18();
    v5();
    v24 = a2;
    if (v25)
    {
      v26 = *(MEMORY[0x1E69DDCE0] + 16);
      v100 = *MEMORY[0x1E69DDCE0];
      v101 = v26;
      goto LABEL_9;
    }
  }

  sub_1E3952C58();
  *&v100 = v27;
  *(&v100 + 1) = v28;
  *&v101 = v29;
  *(&v101 + 1) = v30;
LABEL_9:
  OUTLINED_FUNCTION_4_65();
  (*(v31 + 160))(&v100);

  OUTLINED_FUNCTION_9_2();
  v33 = *(v32 + 1776);
  v34 = v33();
  OUTLINED_FUNCTION_9_2();
  v36 = *(v35 + 1728);
  if (v36())
  {
    v37 = 5;
  }

  else
  {
    v37 = 1;
  }

  (*(*v34 + 1984))(v37);

  (v33)(v38);
  OUTLINED_FUNCTION_2_1();
  (*(v39 + 2056))(2, 0);

  v41 = (v33)(v40);
  v42 = *sub_1E3E5FDEC();
  v43 = *(*v41 + 680);
  v44 = v42;
  v43(v42);

  v46 = (v33)(v45);
  v47 = objc_opt_self();
  if ([v47 isMac])
  {
    v48 = 14;
  }

  else
  {
    v48 = 21;
  }

  (*(*v46 + 1696))(v48);

  if (![objc_opt_self() isSUIEnabled] && (v36() & 1) == 0 && (objc_msgSend(v47, sel_isPhone) & 1) == 0)
  {
    [v47 isPad];
  }

  v33();
  sub_1E3952C58();
  *&v100 = v49;
  *(&v100 + 1) = v50;
  *&v101 = v51;
  *(&v101 + 1) = v52;
  OUTLINED_FUNCTION_4_65();
  (*(v53 + 160))(&v100);

  (v33)(v54);
  OUTLINED_FUNCTION_2_1();
  (*(v55 + 2080))(1, 0);

  (v33)(v56);
  OUTLINED_FUNCTION_2_1();
  (*(v57 + 2104))(0, 0);

  type metadata accessor for MonogramLayout();
  *(v4 + 120) = sub_1E4097BF8(v24);

  OUTLINED_FUNCTION_9_2();
  if ((*(v58 + 1728))())
  {
    if (sub_1E38F07C0(v24, 2, v59))
    {
      v60 = *sub_1E3E60480();
    }

    else
    {
      v60 = *sub_1E3E608EC();
    }

    OUTLINED_FUNCTION_111();
    v62 = *(v61 + 872);
    v63 = v60;
    v62(v60);
    OUTLINED_FUNCTION_9_2();
    (*(v64 + 1800))();
    sub_1E3952C58();
    *&v100 = v65;
    *(&v100 + 1) = v66;
    *&v101 = v67;
    *(&v101 + 1) = v68;
    OUTLINED_FUNCTION_4_65();
    (*(v69 + 160))(&v100);

    OUTLINED_FUNCTION_111();
    v70 += 225;
    v71 = *v70;
    (*v70)();
    OUTLINED_FUNCTION_2_1();
    (*(v72 + 1744))();

    v73 = OUTLINED_FUNCTION_5_65();
    v74(v73);

    (v71)(v75);
    OUTLINED_FUNCTION_2_1();
    (*(v76 + 1744))();

    v77 = OUTLINED_FUNCTION_5_65();
    v78(v77);
  }

  OUTLINED_FUNCTION_111();
  v80 = (*(v79 + 1824))();
  v81 = *sub_1E3E5FDEC();
  v82 = *(*v80 + 680);
  v83 = v81;
  v82(v81);

  OUTLINED_FUNCTION_9_2();
  v85 = (*(v84 + 1752))();
  sub_1E3C37CBC(v85, 23);

  OUTLINED_FUNCTION_9_2();
  v87 = (*(v86 + 1776))();
  sub_1E3C37CBC(v87, 15);

  OUTLINED_FUNCTION_9_2();
  v89 = (*(v88 + 1800))();
  sub_1E3C37CBC(v89, 41);

  OUTLINED_FUNCTION_9_2();
  v91 = (*(v90 + 1824))();
  sub_1E3C37CBC(v91, 31);

  return v4;
}

void sub_1E38F067C()
{
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  sub_1E42076B4();
  __break(1u);
}

double sub_1E38F06E4()
{

  return result;
}

uint64_t sub_1E38F0724()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E38F076C()
{
  v0 = sub_1E38F0724();

  return MEMORY[0x1EEE6BDC0](v0, 136, 7);
}

uint64_t sub_1E38F07C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E38F0870(a1, a2, a3);
  sub_1E4206254();
  sub_1E4206254();
  if (v8 == v6 && v9 == v7)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E42079A4();
  }

  return v4 & 1;
}

unint64_t sub_1E38F0870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2D5F8;
  if (!qword_1ECF2D5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D5F8);
  }

  return result;
}

uint64_t sub_1E38F08C4(void *a1)
{
  v1 = a1;

  return sub_1E4203644();
}

uint64_t sub_1E38F08EC()
{
  v0 = sub_1E4203654();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E38F0A08(0.0, 1.0);
  sub_1E38F0A08(0.0, 1.0);
  sub_1E38F0A08(0.0, 1.0);
  (*(v1 + 104))(v3, *MEMORY[0x1E69814D8], v0);
  return sub_1E4203764();
}

void sub_1E38F0A08(double a1, double a2)
{
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    sub_1E38F0A80(0x20000000000001uLL);
  }
}

unint64_t sub_1E38F0A80(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1E69143D0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1E69143D0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E38F0B0C()
{
  if (!*(v0 + OBJC_IVAR____TtC8VideosUI15ChannelLogoView_viewModel))
  {
    v7 = 0u;
    v8 = 0u;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8();
  v2 = *(v1 + 776);

  v2(&v7, v3, &unk_1F5D5CEF8, &off_1F5D5CD38);

  if (!*(&v8 + 1))
  {
LABEL_11:
    sub_1E325F748(&v7, &unk_1ECF296E0, &unk_1E4298030);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v4 = sub_1E4207784();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void *sub_1E38F0C20()
{
  v1 = OBJC_IVAR____TtC8VideosUI15ChannelLogoView____lazy_storage___appleTvImageView;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI15ChannelLogoView____lazy_storage___appleTvImageView);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = v0;
    v5 = objc_opt_self();
    v6 = sub_1E4205ED4();
    v7 = [objc_opt_self() vui_videosUIBundle];
    v8 = [v5 vuiImageNamed:v6 inBundle:v7];

    if (v8)
    {
      v9 = [v8 vuiTemplateImage];
    }

    else
    {
      v9 = 0;
    }

    sub_1E38F1BD0();
    v10 = sub_1E38F0EA0(0.0, 0.0);
    if (v10)
    {
      v11 = v10;
      v12 = [objc_opt_self() makeImageViewWithResourceDescriptor:v10 existingView:0];
      if (v12)
      {
        v13 = v12;
        objc_opt_self();
        v3 = swift_dynamicCastObjCClass();
        if (v3)
        {
          if (*(v4 + OBJC_IVAR____TtC8VideosUI15ChannelLogoView_logoViewLayout))
          {
            OUTLINED_FUNCTION_8();
            v15 = *(v14 + 1760);

            v17 = v15(v16);

            v19 = (*(*v17 + 672))(v18);
          }

          else
          {
            v19 = 0;
          }

          [v3 _setTintColor_];
          v13 = v11;
        }

        else
        {
          v19 = v11;
        }

        v11 = v9;
        v9 = v19;
      }

      else
      {
        v3 = 0;
      }
    }

    else
    {
      v3 = 0;
    }

    v20 = *(v4 + v1);
    *(v4 + v1) = v3;
    v21 = v3;
    sub_1E329CC84(v20);
  }

  sub_1E34AF5F4(v2);
  return v3;
}

id sub_1E38F0EA0(double a1, double a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1E4205ED4();

  v6 = [v4 initWithResource:v5 size:{a1, a2}];

  return v6;
}

double sub_1E38F0F2C(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI15ChannelLogoView_channelImageView;
  v5 = *&v1[OBJC_IVAR____TtC8VideosUI15ChannelLogoView_channelImageView];
  width = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  if (v5)
  {
    [v5 vui_sizeThatFits_];
    v7 = v9;
    v8 = v10;
  }

  if (sub_1E38F0B0C() == 2)
  {
    height = 0.0;
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_7_70();
  if (v12)
  {
  }

  else
  {
    v16 = OUTLINED_FUNCTION_2_67(v12, v13, v14, v15);

    height = 0.0;
    if ((v16 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  v17 = sub_1E38F0C20();
  v18 = 0.0;
  if (v17)
  {
    v19 = v17;
    v20 = v8;
    v21 = [v17 image];

    if (v21)
    {
      [v21 size];
      v23 = v22;
      v25 = v24;

      if (v23 > 0.0)
      {
        v26 = 0.0;
        v27 = 0.0;
        if (v25 > 0.0)
        {
          v18 = v25;
          v26 = v23;
          v27 = v23 / v25;
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
    v20 = v8;
  }

  v26 = 0.0;
  v27 = 0.0;
LABEL_15:
  v28 = *&v2[OBJC_IVAR____TtC8VideosUI15ChannelLogoView_logoViewLayout];
  if (v28)
  {
    v29 = *(*v28 + 1760);

    v31 = v29(v30);

    v32 = (*v31 + 304);
    v33 = *v32;

    v33(v34);
    OUTLINED_FUNCTION_3_63();
    if (v33)
    {
      OUTLINED_FUNCTION_8();
      v36 = *(v35 + 200);
      v37 = v35 - 56;

      (*&v36)(v38);
      OUTLINED_FUNCTION_3_63();
      v39 = v36 / v27;
      if (v27 <= 0.0)
      {
        v39 = v18;
      }

      if (v37)
      {
        v40 = v18;
      }

      else
      {
        v40 = v39;
      }

      if (v37)
      {
        width = v26;
      }

      else
      {
        width = v36;
      }
    }

    else
    {
      v40 = *&v32;
      width = v27 * *&v32;
    }

    OUTLINED_FUNCTION_8();
    v41 += 44;
    v42 = *v41;
    v43 = v41;

    (*&v42)(v44);
    OUTLINED_FUNCTION_3_63();
    if (v43)
    {
      v18 = v40;
    }

    else
    {
      v18 = v42;
    }

    OUTLINED_FUNCTION_8();
    v46 = *(v45 + 248);
    v47 = v45 - 8;

    v46(v48);
    OUTLINED_FUNCTION_3_63();
    v8 = v20;
    if (v47)
    {
      v26 = width;
    }

    else
    {
      v26 = *&v46;
    }

    height = v40;
  }

  else
  {
    width = v26;
    v8 = v20;
    height = v18;
  }

  v78.width = width;
  v78.height = height;
  v80.width = v26;
  v80.height = v18;
  if (!CGSizeEqualToSize(v78, v80))
  {
    v82.origin.x = 0.0;
    v82.origin.y = 0.0;
    v79.width = width;
    v79.height = height;
    v82.size.width = v26;
    v82.size.height = v18;
    v81 = AVMakeRectWithAspectRatioInsideRect(v79, v82);
    width = v81.size.width;
    height = v81.size.height;
  }

LABEL_37:
  v49 = OBJC_IVAR____TtC8VideosUI15ChannelLogoView_logoViewLayout;
  if (!*&v2[OBJC_IVAR____TtC8VideosUI15ChannelLogoView_logoViewLayout])
  {
    v54 = 0.0;
    v55 = 0.0;
LABEL_50:
    v61 = 0.0;
    goto LABEL_51;
  }

  OUTLINED_FUNCTION_8();
  v50 += 44;
  v51 = *v50;
  v52 = v50;

  (*&v51)(v53);
  OUTLINED_FUNCTION_3_63();
  v54 = 0.0;
  if (v52)
  {
    v55 = 0.0;
  }

  else
  {
    v55 = v51;
  }

  if (!*&v2[v49])
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_8();
  v57 = *(v56 + 1736);

  v59 = v57(v58);

  (*(*v59 + 152))(v74, v60);

  v61 = 0.0;
  if (v75)
  {
    v54 = 0.0;
  }

  else
  {
    v54 = *&v74[2];
  }

  if (*&v2[v49])
  {
    OUTLINED_FUNCTION_8();
    v63 = *(v62 + 1760);

    v65 = v63(v64);

    (*(*v65 + 152))(v76, v66);

    v61 = v76[0];
    if (v77)
    {
      v61 = 0.0;
    }
  }

LABEL_51:
  v67 = fmax(v54, v61);
  if (v55 < v8 + height + v67)
  {
    v7 = v7 / v8 * (v55 - height - v67);
  }

  if (v7 > width)
  {
    v68 = v7;
  }

  else
  {
    v68 = width;
  }

  VUIRoundValue();
  VUIRoundValue();
  VUIRoundValue();
  if (height == 0.0)
  {
    if (a1)
    {
      return v68;
    }
  }

  else if (a1)
  {
    return v68;
  }

  v69 = *&v2[v4];
  if (v69)
  {
    v70 = v69;
    [v2 bounds];
    [v2 vuiIsRTL];
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    [v70 setFrame_];
  }

  v71 = sub_1E38F0C20();
  if (v71)
  {
    v72 = v71;
    [v2 bounds];
    [v2 vuiIsRTL];
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    [v72 setFrame_];
  }

  return v68;
}

double sub_1E38F15E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = OBJC_IVAR____TtC8VideosUI15ChannelLogoView_viewModel;
  v5 = *&v2[OBJC_IVAR____TtC8VideosUI15ChannelLogoView_viewModel];
  if (v5)
  {
    v6 = v5 == a1;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v9 = (*(*a1 + 488))(a1);
    if (v9)
    {
      v11 = v9;
      if (*(v9 + 16))
      {
        *&v3[v4] = a1;

        OUTLINED_FUNCTION_8();
        v13 = *(v12 + 392);

        if (v13(v14))
        {
          type metadata accessor for ChannelLogoViewLayout();
          v15 = swift_dynamicCastClass();
          if (!v15)
          {
          }
        }

        else
        {
          v15 = 0;
        }

        v43[0] = v15;
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D600, &qword_1E42A9B00);
        sub_1E4148C68(sub_1E38F198C, v16, v42);

        *&v3[OBJC_IVAR____TtC8VideosUI15ChannelLogoView_logoViewLayout] = v42[0];

        v18 = sub_1E373E010(39, v11, v17);

        if (v18)
        {
          type metadata accessor for ImageViewModel();
          v19 = swift_dynamicCastClass();
          if (!v19)
          {
LABEL_31:

            return result;
          }

          v20 = v19;

          v21 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
          v22 = *&v3[OBJC_IVAR____TtC8VideosUI15ChannelLogoView_channelImageView];
          v23 = *(a2 + 72);
          if (v23 == 1)
          {
            v24 = 0;
            v25 = 0;
            v26 = 0;
            v43[1] = 0;
            v43[2] = 0;
          }

          else
          {
            v27 = *(a2 + 80);
            v24 = swift_allocObject();
            memcpy((v24 + 16), a2, 0x48uLL);
            *(v24 + 88) = v23;
            *(v24 + 96) = v27;
            v26 = &off_1F5D868A0;
            v25 = &unk_1F5D869A0;
          }

          v43[0] = v24;
          v43[3] = v25;
          v43[4] = v26;
          v28 = v22;
          v29 = v21;
          sub_1E38F1B60(a2, v42);
          v30 = sub_1E393D9C4(v20, v22, v43, 0);

          sub_1E325F748(v43, &qword_1ECF296C0, &unk_1E429BBE0);
          if (!v30)
          {
LABEL_30:

            goto LABEL_31;
          }

          v31 = *&v3[OBJC_IVAR____TtC8VideosUI15ChannelLogoView_channelImageView];
          *&v3[OBJC_IVAR____TtC8VideosUI15ChannelLogoView_channelImageView] = v30;
          v32 = OBJC_IVAR____TtC8VideosUI15ChannelLogoView_channelImageView;
          v33 = *&v3[OBJC_IVAR____TtC8VideosUI15ChannelLogoView_channelImageView];
          v34 = v30;
          [v3 vui:v33 addSubview:v31 oldView:?];
          if (sub_1E38F0B0C() == 2)
          {
            goto LABEL_26;
          }

          OUTLINED_FUNCTION_7_70();
          if (v35)
          {
          }

          else
          {
            v39 = OUTLINED_FUNCTION_2_67(v35, v36, v37, v38);

            if ((v39 & 1) == 0)
            {
              goto LABEL_26;
            }
          }

          if (*&v3[v32])
          {
            v40 = sub_1E38F0C20();
            [v3 vui:v40 addSubview:0 oldView:?];
            goto LABEL_28;
          }

LABEL_26:
          v41 = sub_1E38F0C20();
          if (!v41)
          {
LABEL_29:

            goto LABEL_30;
          }

          v40 = v41;
          [v41 removeFromSuperview];
LABEL_28:

          goto LABEL_29;
        }
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_1E38F198C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ChannelLogoViewLayout();
  result = sub_1E3E390C4();
  *a1 = result;
  return result;
}

id sub_1E38F19C0()
{
  OUTLINED_FUNCTION_0_8();
  swift_getObjectType();
  OUTLINED_FUNCTION_0_77(&OBJC_IVAR____TtC8VideosUI15ChannelLogoView_viewModel);
  v0 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v1, v2, v0);
}

id sub_1E38F1A3C(void *a1)
{
  swift_getObjectType();
  OUTLINED_FUNCTION_0_77(&OBJC_IVAR____TtC8VideosUI15ChannelLogoView_viewModel);
  v2 = objc_msgSendSuper2(&v4, sel_initWithCoder_, a1);

  if (v2)
  {
  }

  return v2;
}

uint64_t sub_1E38F1B60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF31AB0, qword_1E42CD4C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E38F1BD0()
{
  result = qword_1EE23AF98;
  if (!qword_1EE23AF98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23AF98);
  }

  return result;
}

uint64_t sub_1E38F1C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E38F1C3C(&unk_1F5D62F38, a2, a3);
  qword_1EE2AA888 = result;
  return result;
}

uint64_t sub_1E38F1C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = sub_1E37DA464(a1, a2, a3);
  v6 = MEMORY[0x1E6910FA0](v4, &type metadata for LibMenuType, v5);
  v13 = v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = 32;
    do
    {
      sub_1E38F5470(&v12, *(a1 + v9++), v7);
      --v8;
    }

    while (v8);

    return v13;
  }

  else
  {
    v10 = v6;
  }

  return v10;
}

uint64_t *sub_1E38F1CD4()
{
  if (qword_1EE290B40 != -1)
  {
    OUTLINED_FUNCTION_1_87(&qword_1EE290B40);
  }

  return &qword_1EE2AA888;
}

id sub_1E38F1D14@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_navigationBarTraits;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  *a1 = *v3;
  OUTLINED_FUNCTION_43_1(*(v3 + 8));
  *(a1 + 48) = v4;

  return v4;
}

void sub_1E38F1D8C(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7)
{
  v15 = v7 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_navigationBarTraits;
  swift_beginAccess();
  v16 = *(v15 + 48);
  *v15 = a1;
  *(v15 + 8) = a2;
  *(v15 + 16) = a3;
  *(v15 + 24) = a4 & 1;
  *(v15 + 32) = a5;
  *(v15 + 40) = a6 & 1;
  *(v15 + 48) = a7;
}

void *sub_1E38F1E8C()
{
  v1 = OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_detailsViewController;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E38F1ED4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_detailsViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1E38F1F2C()
{
  v1 = OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController____lazy_storage___contentPresenter;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController____lazy_storage___contentPresenter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController____lazy_storage___contentPresenter);
  }

  else
  {
    v4 = [objc_allocWithZone(VUIViewControllerContentPresenter) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1E38F1FA0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a6;
  v10 = a3;
  v13 = objc_allocWithZone(v6);
  return sub_1E38F2014(a1, a2, v10, a4, a5, v7);
}

id sub_1E38F2014(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, int a6)
{
  *(v6 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_detailsViewController) = 0;
  *(v6 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController____lazy_storage___contentPresenter) = 0;
  v12 = OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_contentView;
  *(v6 + v12) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *(v6 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_cancellables) = MEMORY[0x1E69E7CC0];
  *(v6 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_menuUpdateCancellable) = 0;
  *(v6 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_menuItem) = 0;
  *(v6 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_finishSetupContentPresenter) = 0;
  v13 = (v6 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_previousSafeAreaInsets);
  v14 = *(MEMORY[0x1E69DDCE0] + 16);
  *v13 = *MEMORY[0x1E69DDCE0];
  v13[1] = v14;
  *(v6 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_dataSourceManager) = a1;
  sub_1E327F454(a2, v6 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_source);
  *(v6 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_isRoot) = a6;
  if (a3)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  v16 = objc_opt_self();

  v17 = [v16 isPad];
  v18 = 3;
  if ((v17 & a6) == 0)
  {
    v18 = v15;
  }

  v19 = v6 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_navigationBarTraits;
  *v19 = a3;
  *(v19 + 8) = v18;
  *(v19 + 16) = 0;
  *(v19 + 24) = 1;
  *(v19 + 32) = 0;
  *(v19 + 40) = 1;
  *(v19 + 48) = 0;
  v20 = (v6 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_navigationTitle);
  *v20 = a4;
  v20[1] = a5;
  type metadata accessor for LibraryDetailsContainerViewController();
  OUTLINED_FUNCTION_25();
  v23 = objc_msgSendSuper2(v21, v22);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v23;
}

void sub_1E38F21D8()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_detailsViewController) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController____lazy_storage___contentPresenter) = 0;
  v1 = OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_contentView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *(v0 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_cancellables) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_menuUpdateCancellable) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_menuItem) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_finishSetupContentPresenter) = 0;
  v2 = (v0 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_previousSafeAreaInsets);
  v3 = *(MEMORY[0x1E69DDCE0] + 16);
  *v2 = *MEMORY[0x1E69DDCE0];
  v2[1] = v3;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E38F22D4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v31 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v37.receiver = v0;
  v37.super_class = type metadata accessor for LibraryDetailsContainerViewController();
  objc_msgSendSuper2(&v37, sel_viewWillAppear_, v2 & 1);
  OUTLINED_FUNCTION_21();
  (*(v9 + 208))(v32);
  v10 = v32[0];
  v11 = v32[1];
  v12 = v32[2];
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = OUTLINED_FUNCTION_5_11();
  sub_1E3F6FED8(v0, v10, v11, v17, v12, v13, v14, v15, v16);

  if (*&v0[OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_menuItem])
  {
    OUTLINED_FUNCTION_12_6();
    v19 = *(v18 + 256);

    if (v19(v20))
    {
      v21 = sub_1E324FBDC();
      (*(v4 + 16))(v8, v21, v31);

      v22 = sub_1E41FFC94();
      v23 = sub_1E4206814();

      if (os_log_type_enabled(v22, v23))
      {
        OUTLINED_FUNCTION_6_21();
        v24 = OUTLINED_FUNCTION_10_11();
        v32[0] = v24;
        *v13 = 136315138;
        sub_1E38F53C4(v24, v25, v26);
        v27 = sub_1E4207944();
        v29 = sub_1E3270FC8(v27, v28, v32);

        *(v13 + 4) = v29;
        _os_log_impl(&dword_1E323F000, v22, v23, "LibraryDetailsContainerViewController:: will appear, fetch collection data for %s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v24);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      (*(v4 + 8))(v8, v31);
      OUTLINED_FUNCTION_12_6();
      (*(v30 + 472))(0, 0);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E38F2598()
{
  OUTLINED_FUNCTION_21();
  (*(v1 + 208))(v10);
  v2 = v10[0];
  v3 = v10[1];
  v4 = v10[2];
  v5 = v11;
  v6 = v12;
  v7 = v13;
  v9 = v14;
  v8 = OUTLINED_FUNCTION_5_11();
  sub_1E3F6FED8(v0, v2, v3, v8, v4, v5, v6, v7, v9);
}

uint64_t sub_1E38F26A8(char a1)
{
  v15.receiver = v1;
  v15.super_class = type metadata accessor for LibraryDetailsContainerViewController();
  objc_msgSendSuper2(&v15, sel_viewWillDisappear_, a1 & 1);
  sub_1E3F6FD54(v1, v14);
  OUTLINED_FUNCTION_7_71(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14[0]);
  OUTLINED_FUNCTION_21();
  return (*(v11 + 216))();
}

uint64_t sub_1E38F2728()
{
  sub_1E3F6FD54(v0, v13);
  OUTLINED_FUNCTION_7_71(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13[0]);
  OUTLINED_FUNCTION_21();
  v10 = *(v9 + 216);

  return v10();
}

void sub_1E38F27D4(char a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for LibraryDetailsContainerViewController();
  objc_msgSendSuper2(&v9, sel_viewDidAppear_, a1 & 1);
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 interactivePopGestureRecognizer];

    if (v5)
    {
      [v5 setEnabled_];
    }
  }

  v6 = [v1 navigationController];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 interactivePopGestureRecognizer];

    if (v8)
    {
      [v8 setDelegate_];
    }
  }
}

void sub_1E38F2918()
{
  v1 = v0;
  v32.receiver = v0;
  v32.super_class = type metadata accessor for LibraryDetailsContainerViewController();
  objc_msgSendSuper2(&v32, sel_viewSafeAreaInsetsDidChange);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = v2;
  [v2 safeAreaInsets];
  v30 = v4;
  v31 = v5;
  v27 = v6;
  v29 = v7;

  if ([objc_opt_self() isPad])
  {
    if (v1[OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_isRoot] == 1)
    {
      v8 = &v1[OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_previousSafeAreaInsets];
      v9.f64[0] = v30;
      v9.f64[1] = v31;
      v10.f64[0] = v27;
      v10.f64[1] = v29;
      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v9, *&v1[OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_previousSafeAreaInsets]), vceqq_f64(v10, *&v1[OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_previousSafeAreaInsets + 16])))) & 1) == 0)
      {
        v11 = OUTLINED_FUNCTION_30_19();
        if (v11)
        {
          v12 = v11;
          [v11 safeAreaInsets];

          v13 = OUTLINED_FUNCTION_30_19();
          if (v13)
          {
            v14 = v13;
            [v13 safeAreaInsets];

            if (OUTLINED_FUNCTION_30_19())
            {
              OUTLINED_FUNCTION_106();
              type metadata accessor for LayoutGrid();
              [v14 bounds];
              v16 = v15;
              v18 = v17;
              v20 = v19;
              v22 = v21;

              v33.origin.x = v16;
              v33.origin.y = v18;
              v33.size.width = v20;
              v33.size.height = v22;
              Width = CGRectGetWidth(v33);
              sub_1E3A258E4(Width);
              v24 = OUTLINED_FUNCTION_30_19();
              if (v24)
              {
                v25 = v24;
                [v24 vuiIsRTL];

                v26 = [v1 navigationItem];
                [v26 _titleMinimumMargins];
                [v26 _setTitleMinimumMargins_];

                *v8 = v30;
                v8[1] = v31;
                *(v8 + 2) = v28;
                v8[3] = v29;
                return;
              }

LABEL_15:
              __break(1u);
              return;
            }

LABEL_14:
            __break(1u);
            goto LABEL_15;
          }

LABEL_13:
          __break(1u);
          goto LABEL_14;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }
  }
}

void sub_1E38F2BB4()
{
  v1 = v0;
  v41.receiver = v0;
  v41.super_class = type metadata accessor for LibraryDetailsContainerViewController();
  objc_msgSendSuper2(&v41, sel_viewDidLoad);
  v2 = sub_1E38F1F2C();
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    [v2 setRootView_];

    v5 = *(v1 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController____lazy_storage___contentPresenter);
    v6 = sub_1E4205ED4();
    [v5 setLogName_];

    v7 = [objc_opt_self() sharedInstance];
    if (v7)
    {
      v8 = v7;
      v9 = sub_1E38F1F2C();
      [v9 setContentView_];

      v10 = OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController____lazy_storage___contentPresenter;
      v11 = "LIBRARY_EMPTY_DESCRIPTION_NEW";
      v12 = *(v1 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController____lazy_storage___contentPresenter);
      v13 = OUTLINED_FUNCTION_20_37();
      if (v14)
      {
        sub_1E4205ED4();
        v13 = OUTLINED_FUNCTION_18_31();
      }

      else
      {
        v11 = 0;
      }

      OUTLINED_FUNCTION_19_36(v13, sel_setLoadingMessage_);

      v15 = "LIBRARY_LOADING_MESSAGE";
      v16 = *(v1 + v10);
      v17 = OUTLINED_FUNCTION_31_23(0xD000000000000015);
      if (v18)
      {
        sub_1E4205ED4();
        v17 = OUTLINED_FUNCTION_18_31();
      }

      else
      {
        v15 = 0;
      }

      OUTLINED_FUNCTION_19_36(v17, sel_setLoadingTitle_);

      v19 = "LIBRARY_LOADING_TITLE";
      v20 = *(v1 + v10);
      v21 = OUTLINED_FUNCTION_31_23(0xD000000000000021);
      if (v22)
      {
        sub_1E4205ED4();
        v21 = OUTLINED_FUNCTION_18_31();
      }

      else
      {
        v19 = 0;
      }

      OUTLINED_FUNCTION_19_36(v21, sel_setCloudUpdateFailedTitle_);

      v23 = "DATE_FAILED_TITLE";
      v24 = *(v1 + v10);
      v25 = OUTLINED_FUNCTION_31_23(0xD000000000000023);
      if (v26)
      {
        sub_1E4205ED4();
        v25 = OUTLINED_FUNCTION_18_31();
      }

      else
      {
        v23 = 0;
      }

      OUTLINED_FUNCTION_19_36(v25, sel_setCloudUpdateFailedMessage_);

      v27 = "LIBRARY_NO_MOVIES_MESSAGE";
      v28 = *(v1 + v10);
      v29 = OUTLINED_FUNCTION_20_37();
      if (v30)
      {
        sub_1E4205ED4();
        v29 = OUTLINED_FUNCTION_18_31();
      }

      else
      {
        v27 = 0;
      }

      OUTLINED_FUNCTION_19_36(v29, sel_setNoContentErrorTitle_);

      v31 = "LIBRARY_EMPTY_TITLE_NEW";
      v32 = *(v1 + v10);
      v33 = OUTLINED_FUNCTION_31_23(0xD00000000000001DLL);
      if (v34)
      {
        sub_1E4205ED4();
        v33 = OUTLINED_FUNCTION_18_31();
      }

      else
      {
        v31 = 0;
      }

      OUTLINED_FUNCTION_19_36(v33, sel_setNoContentErrorMessage_);
    }

    sub_1E38F2FBC();
    *(v1 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_finishSetupContentPresenter) = 1;
    v35 = *(v1 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_menuItem);
    if (v35)
    {
      v36 = *(*v35 + 256);

      LOBYTE(v36) = v36(v37);
      OUTLINED_FUNCTION_21_6();
      v39 = *(v38 + 216);

      LOBYTE(v39) = v39(v40);

      (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1C8))(v35, v36 & 1, v39 & 1);
    }
  }

  else
  {
    __break(1u);
  }
}

double sub_1E38F2FBC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0, &qword_1E42981C0);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12[-v5 - 8];
  sub_1E327F454(v0 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_source, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640, &qword_1E429E310);
  OUTLINED_FUNCTION_106();
  type metadata accessor for LibLocalSource();
  if (swift_dynamicCast())
  {

    OUTLINED_FUNCTION_21_6();
    v9 = *(v8 + 240);

    v9(v10);

    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1E32752B0(&unk_1EE28A0D0, &qword_1ECF3D8F0, &qword_1E42981C0, MEMORY[0x1E695C068]);
    sub_1E4200844();
    OUTLINED_FUNCTION_16_5();

    (*(v3 + 8))(v6, v1);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32580, &qword_1E42A9B90);
    sub_1E32752B0(&qword_1EE23B5E0, &qword_1ECF32580, &qword_1E42A9B90, MEMORY[0x1E69E6348]);
    sub_1E42004D4();
    swift_endAccess();
  }

  return result;
}

void sub_1E38F3264()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for LibraryDetailsContainerViewController();
  objc_msgSendSuper2(&v10, sel_viewWillLayoutSubviews);
  v1 = sub_1E38F1F2C();
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2;
  [v2 bounds];
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_18_28(v1, sel_configureCurrentViewFrameForBounds_);
  OUTLINED_FUNCTION_21();
  v5 = (*(v4 + 232))();
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = [v5 view];

  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = [v0 view];
  if (!v8)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v9 = v8;
  [v8 bounds];
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_18_28(v7, sel_setFrame_);
}

void sub_1E38F33F8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  if (qword_1EE290B40 != -1)
  {
    OUTLINED_FUNCTION_1_87(&qword_1EE290B40);
  }

  v92 = v6[32];
  if (sub_1E37D7DAC(v6[32], qword_1EE2AA888, v11))
  {
    v91 = v4;
    *&v0[OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_menuItem] = v6;

    sub_1E324FBDC();
    OUTLINED_FUNCTION_12_7();
    v15(v14);
    swift_retain_n();
    v16 = v0;
    v17 = sub_1E41FFC94();
    v18 = sub_1E4206814();
    if (os_log_type_enabled(v17, v18))
    {
      v89 = v16;
      v90 = v2;
      v19 = swift_slowAlloc();
      v94[0] = swift_slowAlloc();
      *v19 = 136316418;
      sub_1E3A8ADF4(v92);
      v22 = sub_1E3270FC8(v20, v21, v94);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2080;
      v23 = sub_1E41E1364(v6);
      v25 = sub_1E3270FC8(v23, v24, v94);

      *(v19 + 14) = v25;
      *(v19 + 22) = 1024;
      v27 = (*(*v6 + 256))(v26);

      *(v19 + 24) = v27 & 1;

      *(v19 + 28) = 2048;
      v29 = (*(*v6 + 312))(v28);
      if (v29)
      {
        v30 = sub_1E3798694(v29);
      }

      else
      {

        v30 = 0;
      }

      *(v19 + 30) = v30;

      *(v19 + 38) = 1024;
      v31 = v89;
      v33 = v89[OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_finishSetupContentPresenter];

      *(v19 + 40) = v33;
      *(v19 + 44) = 1024;
      v32 = v91;
      *(v19 + 46) = v91 & 1;
      _os_log_impl(&dword_1E323F000, v17, v18, "    LibraryDetailsContainerViewController::configureWithMenuItem %s\n    address %s\n    collection need update %{BOOL}d\n    collection count %ld\n    view finished setting up %{BOOL}d\n    fetchCollectionImmediately %{BOOL}d", v19, 0x32u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v9 + 8))(v14, v7);
      v2 = v90;
    }

    else
    {

      (*(v9 + 8))(v14, v7);
      v31 = v16;
      v32 = v91;
    }

    if (v31[OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_finishSetupContentPresenter] == 1)
    {
      v34 = sub_1E38F1F2C();
      [v34 setCurrentContentViewType_];

      sub_1E38F3DFC();
      v35 = [objc_opt_self() sharedInstance];
      if (!v35)
      {
        goto LABEL_34;
      }

      v37 = v35;
      v38 = v6[32];
      if (sub_1E38BBD0C(v38, 0, v36))
      {
        v40 = v31;
        v41 = sub_1E38F1F2C();
        v42 = OUTLINED_FUNCTION_17_35("LIBRARY_EMPTY_TITLE_NEW");
        if (v43)
        {
          sub_1E4205ED4();
          OUTLINED_FUNCTION_16_5();
        }

        else
        {
          v40 = 0;
        }

        OUTLINED_FUNCTION_2_34(v42, sel_setNoContentErrorTitle_);

        OUTLINED_FUNCTION_11_49();
        v54 = "LIBRARY_EMPTY_TITLE_NEW";
        v56 = v55;
        v57 = 0xD00000000000001DLL;
      }

      else if (sub_1E38BBD0C(v38, 4, v39))
      {
        v45 = v31;
        v46 = sub_1E38F1F2C();
        v47 = OUTLINED_FUNCTION_17_35("LIBRARY_NO_MOVIES_TITLE");
        if (v48)
        {
          sub_1E4205ED4();
          OUTLINED_FUNCTION_16_5();
        }

        else
        {
          v45 = 0;
        }

        OUTLINED_FUNCTION_2_34(v47, sel_setNoContentErrorTitle_);

        OUTLINED_FUNCTION_11_49();
        v54 = "LIBRARY_NO_MOVIES_TITLE";
        v56 = v60;
        v57 = 0xD000000000000019;
      }

      else
      {
        v49 = sub_1E38BBD0C(v38, 5, v44);
        v50 = v31;
        v51 = sub_1E38F1F2C();
        if ((v49 & 1) == 0)
        {
          v58 = sub_1E3741090(0xD000000000000021, 0x80000001E4267010, v37);
          if (v59)
          {
            sub_1E4205ED4();
            OUTLINED_FUNCTION_16_5();
          }

          else
          {
            v50 = 0;
          }

          v32 = v91;
          OUTLINED_FUNCTION_2_34(v58, sel_setNoContentErrorTitle_);

          OUTLINED_FUNCTION_11_49();
          v63 = v88;
          sub_1E37FB7F0(0, 0xE000000000000000, v63, &selRef_setNoContentErrorMessage_);
          goto LABEL_33;
        }

        v52 = sub_1E3741090(0xD000000000000019, 0x80000001E4267040, v37);
        if (v53)
        {
          sub_1E4205ED4();
          OUTLINED_FUNCTION_16_5();
        }

        else
        {
          v50 = 0;
        }

        OUTLINED_FUNCTION_2_34(v52, sel_setNoContentErrorTitle_);

        OUTLINED_FUNCTION_11_49();
        v54 = "LIBRARY_NO_TV_SHOWS_TITLE";
        v56 = v61;
        v57 = 0xD00000000000001BLL;
      }

      sub_1E3741090(v57, v54 | 0x8000000000000000, v37);
      if (v62)
      {
        v63 = sub_1E4205ED4();
      }

      else
      {
        v63 = 0;
      }

      v32 = v91;
      [v56 setNoContentErrorMessage_];

LABEL_33:
LABEL_34:
      if (v32)
      {
        OUTLINED_FUNCTION_12_6();
        (*(v64 + 472))(0, 0);
      }

      if (sub_1E38BBD0C(v92, 0, v36))
      {
        v65 = *(**&v31[OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_dataSourceManager] + 672);

        v67 = v65(v66);

        sub_1E37D9AD0(v67, v94);

        if (v95)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640, &qword_1E429E310);
          OUTLINED_FUNCTION_106();
          v68 = type metadata accessor for LibLocalSource();
          if (swift_dynamicCast())
          {
            if (v2)
            {
              OUTLINED_FUNCTION_11_49();
              v70 = v69;
              [v70 setCurrentContentViewType_];
            }

            else
            {
              type metadata accessor for LibDataSourceManager(0);
              v95 = v68;
              v96 = sub_1E38F5418();
              v94[0] = v93;
              v82 = v93;
              v83 = sub_1E3B7D288(v94);
              __swift_destroy_boxed_opaque_existential_1(v94);
              OUTLINED_FUNCTION_11_49();
              v85 = v84;
              v86 = v85;
              if (v83)
              {
                v87 = 4;
              }

              else
              {
                v87 = 2;
              }

              [v85 setCurrentContentViewType_];
            }
          }
        }

        else
        {
          sub_1E325F748(v94, &unk_1ECF2A740, &qword_1E42EF010);
        }

        goto LABEL_55;
      }

      OUTLINED_FUNCTION_12_6();
      v94[0] = (*(v71 + 312))();
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D158, &qword_1E42A8F28);
      sub_1E32752B0(&qword_1EE23B5A0, &qword_1ECF2CFF8, &qword_1E42A8D60, MEMORY[0x1E69E6340]);
      v73 = sub_1E4149048(v72);

      if (v73)
      {
        type metadata accessor for LibMenuItem(0);
        if (sub_1E3A8BA7C(v92))
        {
          OUTLINED_FUNCTION_12_6();
          v75 = (*(v74 + 256))();
          v76 = *&v31[OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController____lazy_storage___contentPresenter];
          if ((v75 & 1) == 0)
          {
            v77 = 2;
LABEL_51:
            [v76 setCurrentContentViewType_];
            goto LABEL_55;
          }

LABEL_50:
          v77 = 1;
          goto LABEL_51;
        }
      }

      v78 = *(**sub_1E3B7B1C8() + 808);

      v78(v94, v6);

      if (v95)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640, &qword_1E429E310);
        type metadata accessor for LibMPSource();
        if (swift_dynamicCast())
        {

          if (v2)
          {
            LOBYTE(v94[0]) = v92;
            sub_1E37DA4B8(v79, v80, v81);
            if ((sub_1E4205E84() & 1) == 0)
            {
              v76 = *&v31[OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController____lazy_storage___contentPresenter];
              goto LABEL_50;
            }
          }
        }
      }

      else
      {
        sub_1E325F748(v94, &unk_1ECF2A740, &qword_1E42EF010);
      }

      sub_1E38F40E4(v6);
    }
  }

LABEL_55:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E38F3DFC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_menuUpdateCancellable;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_menuUpdateCancellable))
  {

    sub_1E42004E4();
  }

  v12 = sub_1E324FBDC();
  (*(v6 + 16))(v10, v12, v4);

  v13 = sub_1E41FFC94();
  v14 = sub_1E4206814();

  if (os_log_type_enabled(v13, v14))
  {
    OUTLINED_FUNCTION_6_21();
    v24 = v11;
    v15 = OUTLINED_FUNCTION_10_11();
    v25 = v15;
    *v1 = 136315138;
    v16 = sub_1E41E1364(v3);
    v18 = sub_1E3270FC8(v16, v17, &v25);

    *(v1 + 4) = v18;
    _os_log_impl(&dword_1E323F000, v13, v14, "LibraryDetailsContainerViewController:: observe menu collection update for %s", v1, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    v11 = v24;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v19 = (*(v6 + 8))(v10, v4);
  v25 = (*(*v3 + 360))(v19);
  OUTLINED_FUNCTION_4_0();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_4_0();
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v22 + 24) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D620, &unk_1E42A9B80);
  sub_1E32752B0(&qword_1EE28A1F8, &qword_1ECF2D620, &unk_1E42A9B80, MEMORY[0x1E695BED8]);
  v23 = sub_1E4200844();

  *(v1 + v11) = v23;

  OUTLINED_FUNCTION_25_2();
}

void sub_1E38F40E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v80 - v11;
  v13 = *(**(v1 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_dataSourceManager) + 696);

  v15 = v13(v14);

  sub_1E3B70934();
  v17 = v16;

  v82 = v17;
  if (v17)
  {
    v18 = _s8VideosUIAAC19initializeUIFactoryyyFZ_0();
    v19 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xE8);
    v20 = *v18;
    v21 = v19();
    v22 = sub_1E3D9DBC0(v82);

    sub_1E324FBDC();
    OUTLINED_FUNCTION_12_7();
    v23(v12);
    v24 = v22;
    v25 = sub_1E41FFC94();
    v26 = sub_1E4206814();
    v27 = v24;

    if (os_log_type_enabled(v25, v26))
    {
      v28 = OUTLINED_FUNCTION_6_21();
      v81 = a1;
      v29 = v28;
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v27;
      *v30 = v22;
      v31 = v27;
      _os_log_impl(&dword_1E323F000, v25, v26, "LibraryDetailsContainerViewController:: details view controller %@", v29, 0xCu);
      sub_1E325F748(v30, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_6_0();
      a1 = v81;
      OUTLINED_FUNCTION_6_0();
    }

    v32 = (*(v6 + 8))(v12, v4);
    if (*(v2 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_navigationTitle + 8))
    {
      v33 = *(v2 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_navigationTitle);
      v34 = *(v2 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_navigationTitle + 8);
      v35 = v27;
    }

    else
    {
      v45 = (*(*a1 + 200))(v32);
      v35 = v27;
      if (v46)
      {
        v33 = v45;
        v34 = v46;
      }

      else
      {
        v33 = *(a1 + 40);
        v34 = *(a1 + 48);
      }
    }

    v47 = MEMORY[0x1E69E7D40];

    sub_1E37FB7F0(v33, v34, v2, &selRef_setVuiTitle_);
    if (!v22)
    {
      goto LABEL_22;
    }

    v48 = *((*v47 & *v2) + 0xE8);
    v49 = v35;
    v50 = v48();
    if (v50)
    {
      v51 = v50;
      [v50 willMoveToParentViewController_];
      v52 = [v51 view];
      if (!v52)
      {
LABEL_26:
        __break(1u);
        return;
      }

      v53 = v52;
      [v52 removeFromSuperview];

      [v51 removeFromParentViewController];
    }

    v54 = OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_detailsViewController;
    swift_beginAccess();
    v55 = *(v2 + v54);
    *(v2 + v54) = v22;
    v56 = v49;

    [v2 addChildViewController_];
    v57 = [v56 view];
    if (v57)
    {
      v58 = v57;
      v59 = [v2 view];
      if (v59)
      {
        v60 = v59;
        [v59 bounds];
        OUTLINED_FUNCTION_3();

        OUTLINED_FUNCTION_18_28(v58, sel_setFrame_);
        v61 = *(v2 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_contentView);
        v62 = [v56 view];
        if (v62)
        {
          v63 = v62;
          [v61 addSubview_];

          [v56 didMoveToParentViewController_];
          v64 = sub_1E38F1F2C();
          [v64 setCurrentContentViewType_];

          type metadata accessor for StackTemplateController(0);
          v65 = swift_dynamicCastClass();
          if (v65)
          {
            v66 = *((*v47 & *v65) + 0x1B8);
            v67 = v56;
            v68 = v66();

            type metadata accessor for Accessibility();
            v69 = v68;
            v70 = v82;

            sub_1E40A91FC(v68, 5, v70);
          }

          else
          {
          }

LABEL_22:
          type metadata accessor for LibCommons();
          v71 = sub_1E41A3164(a1);
          v73 = v72;
          type metadata accessor for Metrics(0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1E4299720;
          *(inited + 32) = sub_1E4205F14();
          *(inited + 40) = v75;
          v76 = MEMORY[0x1E69E6158];
          *(inited + 72) = MEMORY[0x1E69E6158];
          *(inited + 48) = v71;
          *(inited + 56) = v73;
          *(inited + 80) = sub_1E4205F14();
          *(inited + 88) = v77;
          *(inited + 120) = v76;
          *(inited + 96) = v71;
          *(inited + 104) = v73;

          v78 = sub_1E4205CB4();
          v79 = *sub_1E3BA5560(v78, 1);
          (*(v79 + 296))();

          return;
        }

        goto LABEL_25;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_12_7();
  v36(v9);

  v37 = sub_1E41FFC94();
  v38 = sub_1E4206814();

  if (os_log_type_enabled(v37, v38))
  {
    OUTLINED_FUNCTION_6_21();
    v39 = OUTLINED_FUNCTION_10_11();
    v84[0] = v39;
    *v15 = 136315138;
    v83 = *(a1 + 32);
    sub_1E38F53C4(v39, v40, v41);
    v42 = sub_1E4207944();
    v44 = sub_1E3270FC8(v42, v43, v84);

    *(v15 + 4) = v44;
    _os_log_impl(&dword_1E323F000, v37, v38, "LibraryDetailsContainerViewController::failed to create template view model from menu %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v6 + 8))(v9, v4);
}