uint64_t sub_21730FC14(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v179 = v3;
  v5 = v4;
  v6 = type metadata accessor for CloudStation(0);
  MEMORY[0x28223BE20](v6);
  v205 = &v178 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255C0, &unk_21775D480);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v178 - v9;
  v11 = type metadata accessor for CloudStation.Attributes(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v178 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BE6750 != -1)
  {
    swift_once();
  }

  *&result = COERCE_DOUBLE(sub_2172A40DC());
  LODWORD(v206) = v15;
  if ((v15 & 1) == 0)
  {
    v22 = *&result * 1000.0;
    if (COERCE__INT64(fabs(*&result * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v22 > -9.22337204e18)
    {
      if (v22 < 9.22337204e18)
      {
        v201 = v22;
        goto LABEL_9;
      }

LABEL_100:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_100;
  }

  v201 = 0;
LABEL_9:
  if (qword_280BE6758 != -1)
  {
    swift_once();
  }

  sub_2176CABC4(qword_280C02098, v15, v16, v17, v18, v19, v20, v21, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, *(&v192 + 1), v193, v194, v195, v196, v197, v198);
  v23 = type metadata accessor for Station._AirTime(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v23) == 1)
  {
    sub_2171F0738(v10, &qword_27CB255C0, &unk_21775D480);
    v199 = 0u;
    v200 = xmmword_2177586D0;
  }

  else
  {
    Station._AirTime.convertToCloudStationAirTime()(v228);
    sub_21733CA78(v10, type metadata accessor for Station._AirTime);
    v199 = v228[1];
    v200 = v228[0];
  }

  if (qword_280BE6790 != -1)
  {
    swift_once();
  }

  v24 = sub_2172A3FDC();
  v197 = v25;
  v198 = v24;
  if (qword_280BE6760 != -1)
  {
    swift_once();
  }

  sub_2176CABE4(qword_280C020A0, v25, v26, v27, v28, v29, v30, v31, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, *(&v192 + 1), v193, v194);
  memcpy(v227, v226, 0x221uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v227) == 1)
  {
    sub_2172E22C0(v207);
  }

  else
  {
    memcpy(v207, v227, 0x221uLL);
    Artwork.convertToCloudArtworkAttribute()(v209);
    memcpy(v208, v207, sizeof(v208));
    sub_217284084(v208);
    memcpy(v210, v209, sizeof(v210));
    nullsub_1();
    memcpy(v207, v210, 0x1B8uLL);
  }

  if (qword_280BE6818 != -1)
  {
    swift_once();
  }

  sub_2176CA43C(qword_280C02128, v32, v33, v34, v35, v36, v37, v38, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, *(&v192 + 1), v193, v194, v195, v196);
  if (v208[0] == 2)
  {
    v195 = 0;
    v196 = 0;
  }

  else
  {
    if (v208[0])
    {
      v39 = 0x746963696C707865;
    }

    else
    {
      v39 = 0x6E61656C63;
    }

    v40 = 0xE500000000000000;
    if (v208[0])
    {
      v40 = 0xE800000000000000;
    }

    v195 = v40;
    v196 = v39;
  }

  if (qword_280BE67D8 != -1)
  {
    swift_once();
  }

  v194 = sub_2172A46A0(qword_280C020F8);
  if (qword_280BE6800 != -1)
  {
    swift_once();
  }

  sub_2176CA430(qword_280C02110, v41, v42, v43, v44, v45, v46, v47, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, *(&v192 + 1), v193, v194);
  v222 = *v208;
  v223 = *&v208[16];
  v224 = *&v208[32];
  v225 = *&v208[48];
  v48 = *&v208[8];
  if (*&v208[8] == 1)
  {
    v187 = 0;
    v188 = 0;
    v48 = 0;
    v189 = 0;
    v190 = 0;
    v191 = 0;
    v192 = 0uLL;
    v186 = 0;
  }

  else
  {
    v192 = v225;
    v49 = *(&v224 + 1);
    v190 = v224;
    v50 = *(&v223 + 1);
    v187 = v222;
    v188 = v223;
    sub_217751DE8();
    sub_217751DE8();
    v189 = v50;
    sub_217751DE8();
    v191 = v49;
    sub_217751DE8();
    v186 = sub_217751DC8();
    sub_2171F0738(&v222, &qword_27CB24B70, &unk_217759460);
  }

  v193 = v48;
  if (qword_280BE6798 != -1)
  {
    swift_once();
  }

  v185 = sub_2172A4684(qword_280C020D0);
  if (qword_280BE6810 != -1)
  {
    swift_once();
  }

  v51 = sub_2172A4038(qword_280C02120);
  HIDWORD(v184) = v52;
  if (v52)
  {
    v59 = 0;
  }

  else
  {
    v59 = v51;
  }

  v183 = v59;
  if (qword_280BE6768 != -1)
  {
    swift_once();
  }

  *&v202 = v11;
  sub_2172A402C(qword_280C020A8, v52, v53, v54, v55, v56, v57, v58, v178, v179, v180, v181, v182, v183, SWORD2(v183), SBYTE6(v183), HIBYTE(v183), v184, v185, v186, v187, v188, v189, v190, v191);
  v68 = v67;
  if (qword_280BE6770 != -1)
  {
    swift_once();
  }

  v69 = qword_280C020B0;
  sub_2176CABF0(qword_280C020B0, v60, v61, v62, v63, v64, v65, v66, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, *(&v192 + 1), v193, v194, v195, v196);
  if (v210[0] == 14)
  {
    v181 = 0;
    v182 = 0;
  }

  else
  {
    LOBYTE(v209[0]) = v210[0];
    sub_2176507D0(v208);
    v181 = *&v208[8];
    v182 = *v208;
  }

  v204 = v5;
  if (qword_280BE6778 != -1)
  {
    swift_once();
  }

  v70 = sub_2172A3FDC();
  if (v71)
  {
    v78 = v70;
  }

  else
  {
    v78 = 0;
  }

  v180 = v78;
  if (v71)
  {
    v79 = v71;
  }

  else
  {
    v79 = 0xE000000000000000;
  }

  if (qword_280BE67F0 != -1)
  {
    swift_once();
  }

  v203 = v6;
  sub_2176CAC04(qword_280C02108, v71, v72, v73, v74, v75, v76, v77, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, *(&v192 + 1), v193, v194);
  if (qword_280BE67C8 != -1)
  {
    swift_once();
  }

  v80 = sub_2172A3FDC();
  v82 = v81;
  sub_2176CABF0(v69, v81, v83, v84, v85, v86, v87, v88, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, *(&v192 + 1), v193, v194, v195, v196);
  v96 = (v208[0] - 2);
  v97 = 0x65646F73697045;
  if (v208[0])
  {
    v97 = 0x73616374756F6853;
  }

  v98 = 0xE700000000000000;
  if (v208[0])
  {
    v98 = 0xE900000000000074;
  }

  if (v96 >= 0xD)
  {
    v99 = v97;
  }

  else
  {
    v99 = 0;
  }

  if (v96 >= 0xD)
  {
    v100 = v98;
  }

  else
  {
    v100 = 0;
  }

  v101 = v68 & 1;
  if (qword_280BE6780 != -1)
  {
    swift_once();
  }

  sub_2176CA410(qword_280C020C0, v89, v90, v91, v92, v93, v94, v95, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, *(&v192 + 1), v193, v194, v195, v196, v197, v198);
  v102 = v199;
  *v13 = v200;
  *(v13 + 1) = v102;
  v103 = v197;
  *(v13 + 4) = v198;
  *(v13 + 5) = v103;
  memcpy(v13 + 48, v207, 0x1B8uLL);
  v104 = v195;
  *(v13 + 61) = v196;
  *(v13 + 62) = v104;
  *(v13 + 63) = v201;
  v13[512] = v206 & 1;
  *(v13 + 65) = v194;
  *(v13 + 66) = v187;
  *(v13 + 67) = v193;
  v105 = v189;
  *(v13 + 68) = v188;
  *(v13 + 69) = v105;
  v106 = v191;
  *(v13 + 70) = v190;
  *(v13 + 71) = v106;
  v107 = *(&v192 + 1);
  *(v13 + 72) = v192;
  *(v13 + 73) = v107;
  v108 = v185;
  *(v13 + 74) = v186;
  *(v13 + 75) = v108;
  *(v13 + 76) = v183;
  v13[616] = BYTE4(v184) & 1;
  v13[617] = v101;
  v109 = v181;
  *(v13 + 78) = v182;
  *(v13 + 79) = v109;
  *(v13 + 80) = v180;
  *(v13 + 81) = v79;
  memcpy(v13 + 656, v221, 0x78uLL);
  *(v13 + 97) = v80;
  *(v13 + 98) = v82;
  *(v13 + 99) = v99;
  *(v13 + 100) = v100;
  v220[1] = 0;
  v220[0] = 0;
  v220[2] = 1;
  bzero(&v220[3], 0xE8uLL);
  if (qword_280BE67D0 != -1)
  {
    swift_once();
  }

  sub_2176CAC10(qword_280C020F0, v110, v111, v112, v113, v114, v115, v116, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, *(&v192 + 1), v193, v194, v195, v196, v197, v198);
  if (qword_27CB23B00 != -1)
  {
    swift_once();
  }

  sub_2176CAC2C(qword_27CB8A238, v117, v118, v119, v120, v121, v122, v123, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, *(&v192 + 1), v193, v194, v195, v196, v197, v198);
  if (v219[2] | v218[11])
  {
    sub_21726A630(v219, v210, &qword_27CB24230, &unk_21775E9D0);
    sub_21726A630(v218, v208, &unk_27CB28A60, &qword_217770B60);
    if (*&v208[88])
    {
      sub_2172EC5D8(v179, 0, v209);
      sub_2171F0738(v220, &qword_27CB24228, &unk_21775D490);
      sub_2171F0738(v208, &qword_27CB240D0, &unk_21775D400);
    }

    else
    {
      sub_2171F0738(v220, &qword_27CB24228, &unk_21775D490);
      sub_2171F0738(v208, &unk_27CB28A60, &qword_217770B60);
      memset(v209, 0, 128);
    }

    memcpy(v208, v210, 0x80uLL);
    memcpy(&v208[128], v209, 0x80uLL);
    memcpy(v220, v208, sizeof(v220));
  }

  memset(v217, 0, 48);
  v217[6] = 1;
  bzero(&v217[7], 0x108uLL);
  if (qword_280BE6808 != -1)
  {
    swift_once();
  }

  sub_2176CAC48(qword_280C02118, v124, v125, v126, v127, v128, v129, v130, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, *(&v192 + 1), v193, v194, v195, v196);
  v202 = *&v208[16];
  v206 = *v208;
  if (qword_280BE67B8 != -1)
  {
    swift_once();
  }

  v131 = sub_2172A3FDC();
  v133 = v132;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25478, &unk_217770B70);
  swift_allocObject();
  v134 = sub_2172E3DC4();
  v135 = sub_2172A45C0(v134);

  sub_21726A630(v220, v216, &qword_27CB24228, &unk_21775D490);
  if (*(&v206 + 1) != 1 || v133 || v135 || v216[2] != 1)
  {
    if (v133)
    {
      v136 = sub_217751DC8();
      sub_2171F0738(v217, &qword_27CB24340, &unk_2177650B0);
    }

    else
    {
      sub_2171F0738(v217, &qword_27CB24340, &unk_2177650B0);
      v131 = 0;
      v136 = 0;
    }

    sub_21726A630(v216, &v208[64], &qword_27CB24228, &unk_21775D490);
    *v208 = v206;
    *&v208[16] = v202;
    *&v208[32] = v131;
    *&v208[40] = v133;
    *&v208[48] = v136;
    *&v208[56] = v135;
    memcpy(v217, v208, sizeof(v217));
  }

  v138 = *v2;
  v137 = v2[1];
  v139 = v203;
  v140 = v205;
  sub_21733CAD0();
  sub_21726A630(v217, v140 + v139[8], &qword_27CB24340, &unk_2177650B0);
  *v140 = v138;
  v140[1] = v137;
  *(v140 + v139[6]) = 1;
  *(v140 + v139[7]) = 1;
  v141 = v2[5];
  v142 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v141);
  v143 = *(v142 + 24);
  sub_217751DE8();
  v143(v209, v141, v142);
  nullsub_1();
  memcpy(v210, v209, 0x161uLL);
  v144 = v204;
  sub_21733CAD0();
  v145 = v2[5];
  v146 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v145);
  (*(v146 + 96))(v208, v145, v146);
  v147 = *&v208[24];
  v148 = *&v208[32];
  __swift_project_boxed_opaque_existential_1(v208, *&v208[24]);
  (*(*(v148 + 8) + 48))(v214, v147);
  __swift_destroy_boxed_opaque_existential_1(v208);
  *&v206 = v214[0];
  v203 = v214[1];
  LODWORD(v202) = v215;
  v149 = v2[5];
  v150 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v149);
  (*(v150 + 96))(v208, v149, v150);
  v151 = *&v208[24];
  v152 = *&v208[32];
  __swift_project_boxed_opaque_existential_1(v208, *&v208[24]);
  v201 = (*(*(v152 + 8) + 56))(v151);
  *&v200 = v153;
  __swift_destroy_boxed_opaque_existential_1(v208);
  memcpy(v208, v210, 0x168uLL);
  memset(&v208[360], 0, 24);
  nullsub_1();
  v154 = v2[5];
  v155 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v154);
  (*(v155 + 96))(v211, v154, v155);
  v156 = v212;
  v157 = v213;
  __swift_project_boxed_opaque_existential_1(v211, v212);
  *&v199 = (*(*(v157 + 8) + 64))(v156);
  __swift_destroy_boxed_opaque_existential_1(v211);
  v158 = v2[5];
  v159 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v158);
  (*(v159 + 96))(v211, v158, v159);
  v160 = v212;
  v161 = v213;
  __swift_project_boxed_opaque_existential_1(v211, v212);
  v162 = (*(*(v161 + 8) + 72))(v160);
  __swift_destroy_boxed_opaque_existential_1(v211);
  v163 = v2[5];
  v164 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v163);
  (*(v164 + 96))(v211, v163, v164);
  v165 = v212;
  v166 = v213;
  __swift_project_boxed_opaque_existential_1(v211, v212);
  v167 = (*(*(v166 + 8) + 80))(v165);
  __swift_destroy_boxed_opaque_existential_1(v211);
  v168 = v2[5];
  v169 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v168);
  (*(v169 + 96))(v211, v168, v169);
  v170 = v212;
  v171 = v213;
  __swift_project_boxed_opaque_existential_1(v211, v212);
  v172 = (*(*(v171 + 8) + 88))(v170);
  sub_21733CA78(v140, type metadata accessor for CloudStation);
  sub_2171F0738(v217, &qword_27CB24340, &unk_2177650B0);
  sub_2171F0738(v220, &qword_27CB24228, &unk_21775D490);
  sub_21733CA78(v13, type metadata accessor for CloudStation.Attributes);
  __swift_destroy_boxed_opaque_existential_1(v211);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24738, &qword_217758CC0);
  v174 = v144 + v173[9];
  v175 = v203;
  *v174 = v206;
  *(v174 + 8) = v175;
  *(v174 + 16) = v202;
  v176 = (v144 + v173[10]);
  v177 = v200;
  *v176 = v201;
  v176[1] = v177;
  memcpy((v144 + v173[11]), v208, 0x180uLL);
  *(v144 + v173[12]) = v199;
  *(v144 + v173[13]) = v162;
  *(v144 + v173[14]) = v167;
  *(v144 + v173[15]) = v172;
  sub_2171F0738(v219, &qword_27CB24230, &unk_21775E9D0);
  sub_2171F0738(v216, &qword_27CB24228, &unk_21775D490);
  *&result = COERCE_DOUBLE(sub_2171F0738(v218, &unk_27CB28A60, &qword_217770B60));
  return result;
}

uint64_t sub_217310E74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15[-v9];
  v11 = *a1;
  v12 = a1[1];
  v16 = a1;
  v17 = a3;
  v18 = a2;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25680, &qword_21775D6D0);
    swift_allocObject();

    sub_217751DE8();
    result = sub_217339A9C(v11, v12, a2);
    *a4 = result;
  }

  else
  {
    sub_21726A630(a1, &v15[-v9], &qword_27CB24748, &unk_217758CD0);
    sub_2172CA838(a3, v19);
    result = sub_217303E60(v10);
    v14 = v21;
    *a4 = v20;
    *(a4 + 16) = v14;
    *(a4 + 32) = v22;
    *(a4 + 48) = v23;
  }

  *(a4 + 56) = a2 != 0;
  return result;
}

uint64_t sub_217310FF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24738, &qword_217758CC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15[-v9];
  v11 = *a1;
  v12 = a1[1];
  v16 = a1;
  v17 = a3;
  v18 = a2;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25678, &qword_21775D6C8);
    swift_allocObject();

    sub_217751DE8();
    result = sub_217339B58(v11, v12, a2);
    *a4 = result;
  }

  else
  {
    sub_21726A630(a1, &v15[-v9], &qword_27CB24738, &qword_217758CC0);
    sub_2172CA838(a3, v19);
    result = sub_2173078AC(v10);
    v14 = v21;
    *a4 = v20;
    *(a4 + 16) = v14;
    *(a4 + 32) = v22;
    *(a4 + 48) = v23;
  }

  *(a4 + 56) = a2 != 0;
  return result;
}

double sub_21731116C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2172E924C(type metadata accessor for CloudTrack, type metadata accessor for CloudTrack);
  v11[2] = a1;
  v11[3] = a3;
  v11[4] = a2;
  sub_217312558(v8, v9, a2, sub_21733BDEC, v11, &qword_27CB25700, &qword_21775D848, sub_217339C1C, a4);
}

uint64_t sub_217311240@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15[-v9];
  v11 = *a1;
  v12 = a1[1];
  v16 = a1;
  v17 = a3;
  v18 = a2;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB256F8, &qword_21775D840);
    swift_allocObject();

    sub_217751DE8();
    result = sub_217339CDC(v11, v12, a2);
    *a4 = result;
  }

  else
  {
    sub_21726A630(a1, &v15[-v9], &qword_27CB24808, &qword_217758D90);
    sub_2172CA838(a3, v19);
    result = sub_2172F1160(v10);
    v14 = v21;
    *a4 = v20;
    *(a4 + 16) = v14;
    *(a4 + 32) = v22;
    *(a4 + 48) = v23;
  }

  *(a4 + 56) = a2 != 0;
  return result;
}

uint64_t sub_2173113BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24728, &qword_217758CB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15[-v9];
  v11 = *a1;
  v12 = a1[1];
  v16 = a1;
  v17 = a3;
  v18 = a2;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25668, &qword_21775D698);
    swift_allocObject();

    sub_217751DE8();
    result = sub_217339DA4(v11, v12, a2);
    *a4 = result;
  }

  else
  {
    sub_21726A630(a1, &v15[-v9], &qword_27CB24728, &qword_217758CB0);
    sub_2172CA838(a3, v19);
    result = sub_2172FEB30(v10);
    v14 = v21;
    *a4 = v20;
    *(a4 + 16) = v14;
    *(a4 + 32) = v22;
    *(a4 + 48) = v23;
  }

  *(a4 + 56) = a2 != 0;
  return result;
}

uint64_t sub_217311538@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24790, &unk_21775A220);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15[-v9];
  v11 = *a1;
  v12 = a1[1];
  v16 = a1;
  v17 = a3;
  v18 = a2;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB256B0, &qword_21775D768);
    swift_allocObject();

    sub_217751DE8();
    result = sub_217339E64(v11, v12, a2);
    *a4 = result;
  }

  else
  {
    sub_21726A630(a1, &v15[-v9], &qword_27CB24790, &unk_21775A220);
    sub_2172CA838(a3, v19);
    result = sub_2172F565C(v10);
    v14 = v21;
    *a4 = v20;
    *(a4 + 16) = v14;
    *(a4 + 32) = v22;
    *(a4 + 48) = v23;
  }

  *(a4 + 56) = a2 != 0;
  return result;
}

uint64_t sub_2173116B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247C0, &unk_21779AA10);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15[-v9];
  v11 = *a1;
  v12 = a1[1];
  v16 = a1;
  v17 = a3;
  v18 = a2;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB256C8, &qword_21775D7E0);
    swift_allocObject();

    sub_217751DE8();
    result = sub_217339FE8(v11, v12, a2);
    *a4 = result;
  }

  else
  {
    sub_21726A630(a1, &v15[-v9], &qword_27CB247C0, &unk_21779AA10);
    sub_2172CA838(a3, v19);
    result = sub_217302770(v10);
    v14 = v21;
    *a4 = v20;
    *(a4 + 16) = v14;
    *(a4 + 32) = v22;
    *(a4 + 48) = v23;
  }

  *(a4 + 56) = a2 != 0;
  return result;
}

uint64_t sub_217311830@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24490, &qword_21775A250);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15[-v9];
  v11 = *a1;
  v12 = a1[1];
  v16 = a1;
  v17 = a3;
  v18 = a2;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB256C0, &qword_21775D7D8);
    swift_allocObject();

    sub_217751DE8();
    result = sub_21733A0B0(v11, v12, a2);
    *a4 = result;
  }

  else
  {
    sub_21726A630(a1, &v15[-v9], &qword_27CB24490, &qword_21775A250);
    sub_2172CA838(a3, v19);
    result = sub_217301D0C(v10);
    v14 = v21;
    *a4 = v20;
    *(a4 + 16) = v14;
    *(a4 + 32) = v22;
    *(a4 + 48) = v23;
  }

  *(a4 + 56) = a2 != 0;
  return result;
}

uint64_t sub_2173119AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24768, &qword_217758CF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15[-v9];
  v11 = *a1;
  v12 = a1[1];
  v16 = a1;
  v17 = a3;
  v18 = a2;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25698, &qword_21775D748);
    swift_allocObject();

    sub_217751DE8();
    result = sub_21733A174(v11, v12, a2);
    *a4 = result;
  }

  else
  {
    sub_21726A630(a1, &v15[-v9], &qword_27CB24768, &qword_217758CF0);
    sub_2172CA838(a3, v19);
    result = sub_21733316C(v10);
    v14 = v21;
    *a4 = v20;
    *(a4 + 16) = v14;
    *(a4 + 32) = v22;
    *(a4 + 48) = v23;
  }

  *(a4 + 56) = a2 != 0;
  return result;
}

uint64_t sub_217311B28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F0, &qword_21775D360);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15[-v9];
  v11 = *a1;
  v12 = a1[1];
  v16 = a1;
  v17 = a3;
  v18 = a2;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB256F0, &qword_21775D838);
    swift_allocObject();

    sub_217751DE8();
    result = sub_21733A234(v11, v12, a2);
    *a4 = result;
  }

  else
  {
    sub_21726A630(a1, &v15[-v9], &qword_27CB247F0, &qword_21775D360);
    sub_2172CA838(a3, v19);
    result = sub_2172E5528(v10);
    v14 = v21;
    *a4 = v20;
    *(a4 + 16) = v14;
    *(a4 + 32) = v22;
    *(a4 + 48) = v23;
  }

  *(a4 + 56) = a2 != 0;
  return result;
}

uint64_t sub_217311CA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24778, &unk_217758D00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15[-v9];
  v11 = *a1;
  v12 = a1[1];
  v16 = a1;
  v17 = a3;
  v18 = a2;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB256A8, &qword_21775D760);
    swift_allocObject();

    sub_217751DE8();
    result = sub_21733A2F4(v11, v12, a2);
    *a4 = result;
  }

  else
  {
    sub_21726A630(a1, &v15[-v9], &qword_27CB24778, &unk_217758D00);
    sub_2172CA838(a3, v19);
    result = sub_21730319C(v10);
    v14 = v21;
    *a4 = v20;
    *(a4 + 16) = v14;
    *(a4 + 32) = v22;
    *(a4 + 48) = v23;
  }

  *(a4 + 56) = a2 != 0;
  return result;
}

double sub_217311E20@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  CatalogSearchRawResponse.TopResult.id.getter();
  v11[2] = a1;
  v11[3] = a3;
  v11[4] = a2;
  sub_217312558(v8, v9, a2, sub_21733C548, v11, &qword_27CB25888, &qword_21775D920, sub_21733A3C0, a4);
}

double sub_217311ECC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = CloudPersonalRecommendation.Item.id.getter();
  v11[2] = a1;
  v11[3] = a3;
  v11[4] = a2;
  sub_217312558(v8, v9, a2, sub_21733C904, v11, &qword_27CB25940, &qword_21775D9C8, sub_21733A50C, a4);
}

void sub_217311F78()
{
  OUTLINED_FUNCTION_171();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for MusicPersonalRecommendation(0);
  v9 = OUTLINED_FUNCTION_45_0(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v10 = *v5;
  v11 = v5[1];
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25A90, &qword_21775DA98);
    swift_allocObject();
    OUTLINED_FUNCTION_87_6();

    sub_217751DE8();
    *v7 = sub_21733A488(v10, v11, v3, sub_21733CE18);
  }

  else
  {
    sub_21726A630(v5, v15, &qword_27CB244A8, &unk_217758980);
    sub_2172CA838(v1, v14);
    sub_21726A630(v15, &v13, &qword_27CB244A8, &unk_217758980);
    sub_2172CA838(v14, &v12);
    sub_2173349C8();
    sub_21733AB9C(v14);
    sub_2171F0738(v15, &qword_27CB244A8, &unk_217758980);
    OUTLINED_FUNCTION_25_0();
    sub_21733CE30();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24978, &qword_21776DBA0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_170();
}

uint64_t sub_217312158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v11 = OUTLINED_FUNCTION_141_1(a1, a2, a3, a4, a5, a6, a7);
  OUTLINED_FUNCTION_45_0(v11);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_21_2();
  v13 = OUTLINED_FUNCTION_70_6();
  sub_21726A630(v13, v14, v9, v8);
  sub_2172CA838(v10, v17);

  v15 = OUTLINED_FUNCTION_202_3();
  return v7(v15);
}

uint64_t sub_2173121F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v11 = OUTLINED_FUNCTION_141_1(a1, a2, a3, a4, a5, a6, a7);
  OUTLINED_FUNCTION_45_0(v11);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_21_2();
  v13 = OUTLINED_FUNCTION_70_6();
  sub_21726A630(v13, v14, v9, v8);
  sub_2172CA838(v10, v17);

  v15 = OUTLINED_FUNCTION_202_3();
  return v7(v15);
}

void sub_217312288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24948, &unk_21775A210);
  MEMORY[0x28223BE20](v7 - 8);
  sub_21726A630(a3, &v10[-v8 - 8], &qword_27CB24948, &unk_21775A210);
  sub_2172CA838(a4, v10);

  sub_217338F1C();
}

uint64_t sub_2173123A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_21726A630(a3, v10, &qword_27CB244A8, &unk_217758980);
  sub_2172CA838(a4, v9);
  sub_21726A630(v10, v8, &qword_27CB244A8, &unk_217758980);
  sub_2172CA838(v9, &v7);

  sub_2173349C8();
  sub_21733AB9C(v9);
  return sub_2171F0738(v10, &qword_27CB244A8, &unk_217758980);
}

void *sub_217312474@<X0>(uint64_t a1@<X2>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t a4@<X8>)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB256D0, &qword_21775D7E8);
    swift_allocObject();

    sub_217751DE8();
    v7 = OUTLINED_FUNCTION_25_0();
    result = sub_217339F28(v7, v8, a1);
    *a4 = result;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_25_0();
    result = a2(v10);
    *a4 = v11;
    *(a4 + 16) = v12;
    *(a4 + 32) = v13;
    *(a4 + 48) = v14;
  }

  *(a4 + 56) = a1 != 0;
  return result;
}

void *sub_217312558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *(*a4)(_OWORD *__return_ptr, uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, void *(*)(_OWORD *__return_ptr, uint64_t, uint64_t), uint64_t)@<X7>, uint64_t a9@<X8>)
{
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
    swift_allocObject();

    sub_217751DE8();
    result = a8(a1, a2, a3, a4, a5);
    *a9 = result;
  }

  else
  {
    result = (a4)(v18, a1, a2, 0, a4, a5, a6, a7, a8);
    v17 = v18[1];
    *a9 = v18[0];
    *(a9 + 16) = v17;
    *(a9 + 32) = v19[0];
    *(a9 + 41) = *(v19 + 9);
  }

  *(a9 + 57) = a3 != 0;
  return result;
}

void sub_217312640(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247D8, &qword_217758D60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = *a1;
  v11 = a1[1];
  v14 = a1;
  v15 = a3;
  v16 = a2;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB256D0, &qword_21775D7E8);
    swift_allocObject();

    sub_217751DE8();
    *a4 = sub_217339F28(v10, v11, a2);
  }

  else
  {
    sub_21726A630(a1, &v13[-v9], &qword_27CB247D8, &qword_217758D60);
    sub_2172CA838(a3, v17);
    sub_217336414();
    v12 = v19;
    *a4 = v18;
    *(a4 + 16) = v12;
    *(a4 + 32) = v20;
    *(a4 + 48) = v21;
  }

  *(a4 + 56) = a2 != 0;
}

uint64_t sub_217312B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void (*a4)(__int128 *__return_ptr, uint64_t)@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v9 = v6;
  sub_21726A630(v6 + 72, &v46, &qword_27CB24188, &dword_217758930);
  if (*(&v47 + 1))
  {
    v49[0] = v46;
    v49[1] = v47;
    v50 = v48;
  }

  else
  {
    a4(v49, a2);
    if (*(&v47 + 1))
    {
      sub_2171F0738(&v46, &qword_27CB24188, &dword_217758930);
    }
  }

  sub_21726A630(a1 + 72, &v43, &qword_27CB24188, &dword_217758930);
  if (*(&v44 + 1))
  {
    v46 = v43;
    v47 = v44;
    v48 = v45;
  }

  else
  {
    a4(&v46, a2);
    if (*(&v44 + 1))
    {
      sub_2171F0738(&v43, &qword_27CB24188, &dword_217758930);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25660, &unk_21775D5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217759200;
  sub_21726A630(v49, inited + 32, &qword_27CB24188, &dword_217758930);
  sub_21726A630(&v46, inited + 72, &qword_27CB24188, &dword_217758930);
  sub_2174D3370(inited, &v43);

  if ((a3 & 1) == 0)
  {
    sub_21726A630(&v43, v41, &qword_27CB24188, &dword_217758930);
    if (v42)
    {
      __swift_project_boxed_opaque_existential_1(v41, v42);
      v15 = OUTLINED_FUNCTION_15();
      v40 = v16(v15);
      v18 = v17;
      sub_217283154(v41);
      goto LABEL_14;
    }

    sub_2171F0738(v41, &qword_27CB24188, &dword_217758930);
  }

  v40 = 0;
  v18 = 0;
LABEL_14:
  v19 = *v9;
  v20 = *(v9 + 8);
  v21 = *(a1 + 16);
  v41[0] = *(v9 + 16);
  sub_217751DE8();
  sub_217751DE8();
  sub_2171FB568(v19, v20);
  a5(v21);
  OUTLINED_FUNCTION_158();
  sub_2171F0738(v22, v23, v24);
  OUTLINED_FUNCTION_158();
  sub_2171F0738(v25, v26, v27);
  v28 = v41[0];
  v29 = *(v9 + 24);
  v30 = *(v9 + 48);
  v39 = *(v9 + 32);
  if (v18)
  {
    sub_217751DE8();
    sub_217751DE8();
    sub_2171F0738(&v43, &qword_27CB24188, &dword_217758930);
    v31 = 0;
    v32 = 0uLL;
    v33 = 0uLL;
  }

  else
  {
    v37 = v43;
    v38 = v44;
    v31 = v45;
    sub_217751DE8();
    sub_217751DE8();
    v32 = v37;
    v33 = v38;
  }

  v34 = *(v9 + 112);
  v35 = *(v9 + 120);
  *a6 = v19;
  *(a6 + 8) = v20;
  *(a6 + 16) = v28;
  *(a6 + 24) = v29;
  *(a6 + 32) = v39;
  *(a6 + 48) = v30;
  *(a6 + 56) = v40;
  *(a6 + 64) = v18;
  *(a6 + 72) = v32;
  *(a6 + 88) = v33;
  *(a6 + 104) = v31;
  *(a6 + 112) = v34;
  *(a6 + 120) = v35;
  sub_217751DE8();
  return sub_217751DE8();
}

void sub_217312E74()
{
  OUTLINED_FUNCTION_12();
  v8 = v5;
  OUTLINED_FUNCTION_113_4();
  sub_217751DE8();
  os_unfair_lock_lock(v1);
  OUTLINED_FUNCTION_171_2(v9);
  os_unfair_lock_unlock(*(v2 + 16));
  if (v1)
  {

    __break(1u);
  }

  else
  {

    if ((v9[0] & 1) == 0)
    {
      v6 = v0(v9, v4, v3);
      MEMORY[0x28223BE20](v6);
      OUTLINED_FUNCTION_192_2(&v7);
      v8(v9);
    }

    OUTLINED_FUNCTION_13();
  }
}

uint64_t sub_217312F4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v7 = type metadata accessor for MusicPersonalRecommendation(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v3 + 24);
  v11 = *(v10 + 16);

  sub_217751DE8();
  os_unfair_lock_lock(v11);
  sub_2174E3DC8(v3, a1, a2, 0xD00000000000001BLL, 0x80000002177AB220, &v15);
  os_unfair_lock_unlock(*(v10 + 16));

  if ((v15 & 1) == 0)
  {
    v13 = a3(a1, a2);
    MEMORY[0x28223BE20](v13);
    *&v14[-48] = v9;
    *&v14[-40] = v3;
    *&v14[-32] = a1;
    *&v14[-24] = a2;
    *&v14[-16] = 0xD00000000000001BLL;
    *&v14[-8] = 0x80000002177AB220;
    sub_21720BA7C();
    return sub_21733CA78(v9, type metadata accessor for MusicPersonalRecommendation);
  }

  return result;
}

void sub_2173130F4()
{
  OUTLINED_FUNCTION_12();
  v7 = v5;
  OUTLINED_FUNCTION_113_4();
  sub_217751DE8();
  os_unfair_lock_lock(v1);
  OUTLINED_FUNCTION_171_2(v8);
  os_unfair_lock_unlock(*(v2 + 16));
  if (v1)
  {

    __break(1u);
  }

  else
  {

    if ((v8[0] & 1) == 0)
    {
      v6 = v0(v8, v4, v3);
      MEMORY[0x28223BE20](v6);
      OUTLINED_FUNCTION_192_2(&v7);
      v7(v8);
    }

    OUTLINED_FUNCTION_13();
  }
}

uint64_t sub_2173131CC()
{
  OUTLINED_FUNCTION_132_2();
  OUTLINED_FUNCTION_197();
  v30[0] = swift_allocObject();
  v2 = v1(v0, v30[0] + 16);
  v10 = OUTLINED_FUNCTION_223_1(v2, v3, v4, v5, v6, v7, v8, v9, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30[0], v30[1], v30[2], v30[3], v30[4], v30[5]);
  OUTLINED_FUNCTION_221_2(v10);
  sub_217751DE8();
  v11 = sub_217751DE8();
  OUTLINED_FUNCTION_169_3(v11, v12, v13, v14, v15, v16, v17, v18);
  swift_endAccess();
  return sub_21729C698(v30);
}

uint64_t sub_217313258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[3] = type metadata accessor for MusicPersonalRecommendation(0);
  v12[4] = &protocol witness table for MusicPersonalRecommendation;
  __swift_allocate_boxed_opaque_existential_0(v12);
  sub_21733CAD0();
  v12[5] = 1;
  sub_21733B548(v12, v11);
  swift_beginAccess();
  sub_217751DE8();
  sub_217751DE8();
  sub_21729CCC4(v11, a3, a4, a5, a6);
  swift_endAccess();
  return sub_21729C698(v12);
}

uint64_t sub_217313354()
{
  OUTLINED_FUNCTION_132_2();
  v30[0] = swift_allocObject();
  v2 = v1(v0, v30[0] + 16);
  v10 = OUTLINED_FUNCTION_223_1(v2, v3, v4, v5, v6, v7, v8, v9, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30[0], v30[1], v30[2], v30[3], v30[4], v30[5]);
  OUTLINED_FUNCTION_221_2(v10);
  sub_217751DE8();
  v11 = sub_217751DE8();
  OUTLINED_FUNCTION_169_3(v11, v12, v13, v14, v15, v16, v17, v18);
  swift_endAccess();
  return sub_21729C698(v30);
}

uint64_t sub_2173133E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v3 = type metadata accessor for CloudRadioShow.Attributes(0);
  MEMORY[0x28223BE20](v3 - 8);
  v123 = &v115 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB259A0, &unk_21775DA00);
  v124 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v115 - v6;
  v8 = type metadata accessor for CloudRadioShow(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v115 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247C0, &unk_21779AA10);
  MEMORY[0x28223BE20](v14);
  v16 = &v115 - v15;
  sub_2171FF30C(a1, v136);
  v17 = v125;
  CloudRadioShow.init(from:)();
  v125 = v17;
  if (v17)
  {
    v18 = 0;
    v19 = a1;
    goto LABEL_32;
  }

  v116 = v10;
  v117 = v8;
  *(&v115 + 1) = v14;
  v118 = v5;
  v119 = v16;
  v120 = a1;
  v121 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25978, &qword_21775D9F8);
  sub_21733CCD4(&qword_27CB25980, &qword_27CB25978, &qword_21775D9F8);
  v20 = v125;
  sub_2177532C8();
  v125 = v20;
  if (v20)
  {
    goto LABEL_4;
  }

  sub_217751DC8();

  v138 = 3;
  v21 = v118;
  v22 = v125;
  sub_217752E08();
  v19 = v120;
  v23 = v121;
  v125 = v22;
  if (v22)
  {
    (*(v124 + 8))(v7, v21);
    sub_21733CA78(v23, type metadata accessor for CloudRadioShow);
LABEL_31:
    v18 = 0;
    v16 = v119;
    goto LABEL_32;
  }

  *&v115 = v7;
  v24 = sub_217751DC8();
  v25 = sub_217751DC8();
  v26 = sub_217751DC8();
  sub_21733BE70(v136);
  sub_21733CAD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  if (swift_dynamicCast())
  {
    v123 = v26;
    sub_2171F3F0C(v131, v132);
    v27 = v133;
    v28 = v134;
    __swift_project_boxed_opaque_existential_1(v132, v133);
    v29 = v125;
    v30 = (*(v28 + 16))(v137, v27, v28);
    v31 = v124;
    v125 = v29;
    if (v29)
    {

LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v137);
      (*(v31 + 8))(v115, v118);
LABEL_29:
      v59 = v23;
LABEL_30:
      sub_21733CA78(v59, type metadata accessor for CloudRadioShow);
      __swift_destroy_boxed_opaque_existential_1(v132);
      goto LABEL_31;
    }

    v116 = v30;
    LOBYTE(v131[0]) = 4;
    v37 = v118;
    v38 = v115;
    if (sub_217752EC8())
    {

      LOBYTE(v130[0]) = 4;
      v39 = v125;
      sub_217752E08();
      v125 = v39;
      if (v39)
      {
        goto LABEL_28;
      }

      v43 = v133;
      v44 = v134;
      __swift_project_boxed_opaque_existential_1(v132, v133);
      v45 = v125;
      v46 = (*(v44 + 24))(v131, v43, v44);
      v125 = v45;
      if (v45)
      {
LABEL_36:

        v65 = v131;
LABEL_37:
        __swift_destroy_boxed_opaque_existential_1(v65);
        goto LABEL_10;
      }

      v24 = v46;
      __swift_destroy_boxed_opaque_existential_1(v131);
    }

    LOBYTE(v131[0]) = 5;
    v37 = v118;
    v38 = v115;
    if (sub_217752EC8())
    {

      LOBYTE(v130[0]) = 5;
      v58 = v125;
      sub_217752E08();
      v125 = v58;
      if (v58)
      {
LABEL_28:

        __swift_destroy_boxed_opaque_existential_1(v137);
        (*(v31 + 8))(v38, v37);
        goto LABEL_29;
      }

      v61 = v133;
      v62 = v134;
      __swift_project_boxed_opaque_existential_1(v132, v133);
      v63 = v125;
      v64 = (*(v62 + 32))(v131, v61, v62);
      v125 = v63;
      if (v63)
      {
        goto LABEL_36;
      }

      v25 = v64;
      __swift_destroy_boxed_opaque_existential_1(v131);
    }

    LOBYTE(v130[0]) = 6;
    v37 = v118;
    v38 = v115;
    if (sub_217752EC8())
    {

      LOBYTE(v130[0]) = 6;
      v83 = v125;
      sub_217752E08();
      v125 = v83;
      if (v83)
      {
        goto LABEL_28;
      }

      sub_2171FF30C(v129, v127);
      v86 = v125;
      CloudResourceCustomMetadata.init(from:)(v127, v130);
      v125 = v86;
      if (v86)
      {

        v65 = v129;
        goto LABEL_37;
      }

      memcpy(v128, v130, sizeof(v128));
      v108 = v133;
      v109 = v134;
      __swift_project_boxed_opaque_existential_1(v132, v133);
      v110 = sub_217383B34(&unk_28295F078);
      v111 = v125;
      v112 = (*(v109 + 40))(v129, v110, v108, v109);
      v125 = v111;
      if (v111)
      {

        sub_21733BED8(v128);
        __swift_destroy_boxed_opaque_existential_1(v129);
        __swift_destroy_boxed_opaque_existential_1(v137);
        (*(v31 + 8))(v115, v118);
        v59 = v121;
        goto LABEL_30;
      }

      v123 = v112;
      __swift_destroy_boxed_opaque_existential_1(v129);

      memcpy(v126, v128, sizeof(v126));
      nullsub_1();
      v84 = v126;
    }

    else
    {
      v84 = v136;
    }

    memcpy(v131, v84, sizeof(v131));
    __swift_destroy_boxed_opaque_existential_1(v132);
    v85 = v131;
    goto LABEL_53;
  }

  memset(v131, 0, 40);
  sub_2171F0738(v131, &qword_27CB25588, &unk_21775D380);
  sub_2171FF30C(v137, v131);
  sub_21733CAD0();
  v32 = v125;
  sub_217385A24(v131);
  v31 = v124;
  v125 = v32;
  if (v32)
  {

LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(v137);
    v34 = *(v31 + 8);
    v35 = v115;
LABEL_14:
    v36 = v118;
LABEL_42:
    v34(v35, v36);
    sub_21733CA78(v23, type metadata accessor for CloudRadioShow);
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  v116 = v33;
  v123 = v26;
  LOBYTE(v131[0]) = 4;
  v40 = v118;
  v41 = v115;
  if (sub_217752EC8())
  {

    LOBYTE(v130[0]) = 4;
    v42 = v125;
    sub_217752E08();
    v125 = v42;
    if (v42)
    {
      goto LABEL_41;
    }

    sub_2171FF30C(v131, v130);
    v49 = sub_217383884(&unk_28295EF58, v47, v48);
    v50 = v125;
    v56 = Dictionary<>.init(from:skippingValuesFor:)(v130, v49, v51, v52, v53, v54, v55);
    v125 = v50;
    if (v50)
    {

      v57 = v131;
LABEL_76:
      __swift_destroy_boxed_opaque_existential_1(v57);
      goto LABEL_13;
    }

    v24 = v56;
    __swift_destroy_boxed_opaque_existential_1(v131);
  }

  LOBYTE(v131[0]) = 5;
  v40 = v118;
  v41 = v115;
  if (sub_217752EC8())
  {

    LOBYTE(v130[0]) = 5;
    v66 = v125;
    sub_217752E08();
    v125 = v66;
    if (v66)
    {
LABEL_41:

      __swift_destroy_boxed_opaque_existential_1(v137);
      v34 = *(v31 + 8);
      v35 = v41;
      v36 = v40;
      goto LABEL_42;
    }

    sub_2171FF30C(v131, v130);
    if (qword_27CB23D50 != -1)
    {
      swift_once();
    }

    sub_217383748(qword_27CB2A978, v67, v68, v69, v70, v71, v72, v73, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126[0], v126[1], v126[2], v126[3], v126[4], v126[5]);
    v74 = v125;
    v81 = Dictionary<>.init(from:skippingValuesFor:)(v130, v75, v76, v77, v78, v79, v80);
    v82 = v115;
    v125 = v74;
    if (v74)
    {

      __swift_destroy_boxed_opaque_existential_1(v131);
      __swift_destroy_boxed_opaque_existential_1(v137);
      v34 = *(v31 + 8);
      v35 = v82;
      goto LABEL_14;
    }

    v25 = v81;
    __swift_destroy_boxed_opaque_existential_1(v131);
  }

  LOBYTE(v131[0]) = 6;
  v40 = v118;
  v41 = v115;
  if ((sub_217752EC8() & 1) == 0)
  {
    memcpy(v135, v136, sizeof(v135));
    goto LABEL_61;
  }

  LOBYTE(v131[0]) = 6;
  v87 = v125;
  sub_217752E08();
  v125 = v87;
  if (v87)
  {
    goto LABEL_41;
  }

  sub_2171FF30C(v126, v132);
  v107 = v125;
  CloudResourceCustomMetadata.init(from:)(v132, v131);
  v125 = v107;
  if (v107)
  {

LABEL_75:
    v57 = v126;
    goto LABEL_76;
  }

  memcpy(v130, v131, sizeof(v130));
  sub_2171FF30C(v126, v129);
  sub_217221020(*(v23 + SLODWORD(v117[2].Kind)));
  sub_217383B34(&unk_28295F078);
  v113 = v125;
  sub_217387B30(v129);
  v125 = v113;
  if (v113)
  {

    sub_21733BED8(v130);
    goto LABEL_75;
  }

  v123 = v114;
  __swift_destroy_boxed_opaque_existential_1(v126);
  memcpy(v128, v130, sizeof(v128));
  nullsub_1();
  v85 = v128;
LABEL_53:
  memcpy(v135, v85, sizeof(v135));
  v40 = v118;
LABEL_61:
  LOBYTE(v131[0]) = 2;
  v88 = v115;
  if (sub_217752EC8())
  {
    LOBYTE(v131[0]) = 2;
    v89 = v125;
    v90 = sub_217752E68();
    v125 = v89;
    if (v89)
    {

      sub_2171F0738(v135, &qword_27CB25620, &qword_21776A5F0);

      __swift_destroy_boxed_opaque_existential_1(v137);
      (*(v31 + 8))(v88, v40);
LABEL_4:
      sub_21733CA78(v121, type metadata accessor for CloudRadioShow);
      v18 = 0;
      v16 = v119;
      v19 = v120;
      goto LABEL_32;
    }

    v92 = v90;
    v93 = v91;
    v124 = v24;
  }

  else
  {
    v124 = v24;
    v92 = 0;
    v93 = 0;
  }

  v94 = v121;
  v16 = v119;
  v95 = sub_21733CAD0();
  LOBYTE(v130[0]) = 1;
  sub_21733BE84(v95, v96, v97);
  v98 = v118;
  v99 = v115;
  v100 = v125;
  sub_217752EA8();
  v125 = v100;
  if (!v100)
  {
    __swift_destroy_boxed_opaque_existential_1(v137);
    (*(v31 + 8))(v99, v98);
    sub_21733CA78(v94, type metadata accessor for CloudRadioShow);
    v101 = *(&v131[0] + 1);
    v102 = v131[1];
    v103 = *(&v115 + 1);
    v104 = &v16[*(*(&v115 + 1) + 36)];
    *v104 = *&v131[0];
    *(v104 + 1) = v101;
    v104[16] = v102;
    v105 = &v16[v103[10]];
    *v105 = v92;
    *(v105 + 1) = v93;
    memcpy(&v16[v103[11]], v135, 0x180uLL);
    *&v16[v103[12]] = v116;
    v106 = v123;
    *&v16[v103[13]] = v124;
    *&v16[v103[14]] = v25;
    *&v16[v103[15]] = v106;
    sub_21726A630(v16, v122, &qword_27CB247C0, &unk_21779AA10);
    __swift_destroy_boxed_opaque_existential_1(v120);
    return sub_2171F0738(v16, &qword_27CB247C0, &unk_21779AA10);
  }

  sub_2171F0738(v135, &qword_27CB25620, &qword_21776A5F0);

  __swift_destroy_boxed_opaque_existential_1(v137);
  (*(v31 + 8))(v99, v98);
  sub_21733CA78(v94, type metadata accessor for CloudRadioShow);
  v18 = 1;
  v19 = v120;
LABEL_32:
  result = __swift_destroy_boxed_opaque_existential_1(v19);
  if (v18)
  {
    return sub_21733CA78(v16, type metadata accessor for CloudRadioShow);
  }

  return result;
}

uint64_t sub_217314300@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  v3 = type metadata accessor for CloudPlaylist.Attributes(0);
  MEMORY[0x28223BE20](v3 - 8);
  v120 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB257B8, &qword_21775D8A0);
  v121 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v111 - v6;
  v8 = type metadata accessor for CloudPlaylist(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v111 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24790, &unk_21775A220);
  MEMORY[0x28223BE20](v14);
  v16 = &v111 - v15;
  sub_2171FF30C(a1, v132);
  v17 = v135;
  CloudPlaylist.init(from:)(v132, v18, v19, v20, v21, v22, v23, v24, v111, v112, SWORD2(v112), SBYTE6(v112), SHIBYTE(v112), v113, v114, v115, v116, v117, v118, v119, v120, v121, v122[0]);
  v135 = v17;
  if (v17)
  {
    v25 = 0;
    v26 = a1;
    goto LABEL_31;
  }

  v113 = v10;
  v114 = v8;
  v112 = v14;
  v115 = v5;
  v116 = v16;
  v117 = a1;
  v118 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25790, &qword_21775D898);
  sub_21733CCD4(&qword_27CB25798, &qword_27CB25790, &qword_21775D898);
  v27 = v135;
  sub_2177532C8();
  v135 = v27;
  if (v27)
  {
    goto LABEL_4;
  }

  sub_217751DC8();

  v133 = 3;
  v28 = v115;
  v29 = v135;
  sub_217752E08();
  v26 = v117;
  v30 = v118;
  v135 = v29;
  if (v29)
  {
    (*(v121 + 8))(v7, v28);
    sub_21733CA78(v30, type metadata accessor for CloudPlaylist);
LABEL_30:
    v25 = 0;
    v16 = v116;
    goto LABEL_31;
  }

  v111 = v7;
  v31 = sub_217751DC8();
  v32 = sub_217751DC8();
  v33 = sub_217751DC8();
  sub_21733BE70(v132);
  sub_21733CAD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  if (swift_dynamicCast())
  {
    v120 = v33;
    sub_2171F3F0C(v127, v128);
    v34 = v129;
    v35 = v130;
    __swift_project_boxed_opaque_existential_1(v128, v129);
    v36 = v135;
    v37 = (*(v35 + 16))(v134, v34, v35);
    v38 = v121;
    v135 = v36;
    if (v36)
    {

LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v134);
      (*(v38 + 8))(v111, v115);
LABEL_28:
      v61 = v30;
LABEL_29:
      sub_21733CA78(v61, type metadata accessor for CloudPlaylist);
      __swift_destroy_boxed_opaque_existential_1(v128);
      goto LABEL_30;
    }

    v113 = v37;
    LOBYTE(v127[0]) = 4;
    v41 = v115;
    v42 = v111;
    if (sub_217752EC8())
    {

      LOBYTE(v125[0]) = 4;
      v43 = v135;
      sub_217752E08();
      v135 = v43;
      if (v43)
      {
        goto LABEL_27;
      }

      v47 = v129;
      v48 = v130;
      __swift_project_boxed_opaque_existential_1(v128, v129);
      v49 = v135;
      v50 = (*(v48 + 24))(v127, v47, v48);
      v135 = v49;
      if (v49)
      {
LABEL_35:

        v67 = v127;
LABEL_36:
        __swift_destroy_boxed_opaque_existential_1(v67);
        goto LABEL_10;
      }

      v31 = v50;
      __swift_destroy_boxed_opaque_existential_1(v127);
    }

    LOBYTE(v127[0]) = 5;
    v41 = v115;
    v42 = v111;
    if (sub_217752EC8())
    {

      LOBYTE(v125[0]) = 5;
      v60 = v135;
      sub_217752E08();
      v135 = v60;
      if (v60)
      {
LABEL_27:

        __swift_destroy_boxed_opaque_existential_1(v134);
        (*(v38 + 8))(v42, v41);
        goto LABEL_28;
      }

      v63 = v129;
      v64 = v130;
      __swift_project_boxed_opaque_existential_1(v128, v129);
      v65 = v135;
      v66 = (*(v64 + 32))(v127, v63, v64);
      v135 = v65;
      if (v65)
      {
        goto LABEL_35;
      }

      v32 = v66;
      __swift_destroy_boxed_opaque_existential_1(v127);
    }

    LOBYTE(v125[0]) = 6;
    v41 = v115;
    v42 = v111;
    if (sub_217752EC8())
    {

      LOBYTE(v125[0]) = 6;
      v78 = v135;
      sub_217752E08();
      v135 = v78;
      if (v78)
      {
        goto LABEL_27;
      }

      sub_2171FF30C(v126, v124);
      v81 = v135;
      CloudResourceCustomMetadata.init(from:)(v124, v125);
      v135 = v81;
      if (v81)
      {

        v67 = v126;
        goto LABEL_36;
      }

      memcpy(v123, v125, sizeof(v123));
      v103 = v129;
      v104 = v130;
      __swift_project_boxed_opaque_existential_1(v128, v129);
      v105 = sub_217383B34(&unk_28295F078);
      v106 = v135;
      v107 = (*(v104 + 40))(v126, v105, v103, v104);
      v135 = v106;
      if (v106)
      {

        sub_21733BED8(v123);
        __swift_destroy_boxed_opaque_existential_1(v126);
        __swift_destroy_boxed_opaque_existential_1(v134);
        (*(v38 + 8))(v111, v115);
        v61 = v118;
        goto LABEL_29;
      }

      v120 = v107;
      __swift_destroy_boxed_opaque_existential_1(v126);

      memcpy(v122, v123, 0x180uLL);
      nullsub_1();
      v79 = v122;
    }

    else
    {
      v79 = v132;
    }

    memcpy(v127, v79, sizeof(v127));
    __swift_destroy_boxed_opaque_existential_1(v128);
    v80 = v127;
    goto LABEL_50;
  }

  memset(v127, 0, 40);
  sub_2171F0738(v127, &qword_27CB25588, &unk_21775D380);
  sub_2171FF30C(v134, v127);
  sub_21733CAD0();
  v39 = v135;
  sub_217385674(v127);
  v38 = v121;
  v135 = v39;
  if (v39)
  {

LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(v134);
    (*(v38 + 8))(v111, v115);
LABEL_41:
    sub_21733CA78(v30, type metadata accessor for CloudPlaylist);
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  v120 = v33;
  v113 = v40;
  LOBYTE(v127[0]) = 4;
  v44 = v115;
  v45 = v111;
  if (sub_217752EC8())
  {

    LOBYTE(v125[0]) = 4;
    v46 = v135;
    sub_217752E08();
    v135 = v46;
    if (v46)
    {
      goto LABEL_40;
    }

    sub_2171FF30C(v127, v125);
    swift_beginAccess();
    v51 = sub_217751DE8();
    v52 = sub_217383728(v51);

    v53 = v135;
    v59 = Dictionary<>.init(from:skippingValuesFor:)(v125, v52, v54, v55, v56, v57, v58);
    v135 = v53;
    if (v53)
    {
LABEL_43:

      v77 = v127;
LABEL_73:
      __swift_destroy_boxed_opaque_existential_1(v77);
      goto LABEL_13;
    }

    v31 = v59;
    __swift_destroy_boxed_opaque_existential_1(v127);
  }

  LOBYTE(v127[0]) = 5;
  v44 = v115;
  v45 = v111;
  if (sub_217752EC8())
  {

    LOBYTE(v125[0]) = 5;
    v68 = v135;
    sub_217752E08();
    v135 = v68;
    if (v68)
    {
LABEL_40:

      __swift_destroy_boxed_opaque_existential_1(v134);
      (*(v38 + 8))(v45, v44);
      goto LABEL_41;
    }

    sub_2171FF30C(v127, v125);
    v69 = sub_217383A0C(&unk_28295F028);
    v70 = v135;
    v76 = Dictionary<>.init(from:skippingValuesFor:)(v125, v69, v71, v72, v73, v74, v75);
    v135 = v70;
    if (v70)
    {
      goto LABEL_43;
    }

    v32 = v76;
    __swift_destroy_boxed_opaque_existential_1(v127);
  }

  LOBYTE(v127[0]) = 6;
  v44 = v115;
  v45 = v111;
  if ((sub_217752EC8() & 1) == 0)
  {
    memcpy(v131, v132, sizeof(v131));
    goto LABEL_58;
  }

  LOBYTE(v127[0]) = 6;
  v82 = v135;
  sub_217752E08();
  v135 = v82;
  if (v82)
  {
    goto LABEL_40;
  }

  sub_2171FF30C(v128, v126);
  v102 = v135;
  CloudResourceCustomMetadata.init(from:)(v126, v127);
  v135 = v102;
  if (v102)
  {

LABEL_72:
    v77 = v128;
    goto LABEL_73;
  }

  memcpy(v125, v127, sizeof(v125));
  sub_2171FF30C(v128, v124);
  sub_21726A630(v30 + *(v114 + 32), v122, &qword_27CB24348, &unk_21775D520);
  v108 = sub_217383B34(&unk_28295F078);
  v109 = v135;
  sub_217387380(v124, v122, v108);
  v135 = v109;
  if (v109)
  {

    sub_21733BED8(v125);
    goto LABEL_72;
  }

  v120 = v110;
  __swift_destroy_boxed_opaque_existential_1(v128);
  memcpy(v123, v125, sizeof(v123));
  nullsub_1();
  v80 = v123;
LABEL_50:
  memcpy(v131, v80, sizeof(v131));
  v44 = v115;
LABEL_58:
  LOBYTE(v127[0]) = 2;
  v83 = v111;
  if (sub_217752EC8())
  {
    LOBYTE(v127[0]) = 2;
    v84 = v135;
    v85 = sub_217752E68();
    v135 = v84;
    if (v84)
    {

      sub_2171F0738(v131, &qword_27CB25620, &qword_21776A5F0);

      __swift_destroy_boxed_opaque_existential_1(v134);
      (*(v38 + 8))(v83, v44);
LABEL_4:
      sub_21733CA78(v118, type metadata accessor for CloudPlaylist);
      v25 = 0;
      v16 = v116;
      v26 = v117;
      goto LABEL_31;
    }

    v87 = v85;
    v88 = v86;
    v121 = v32;
  }

  else
  {
    v121 = v32;
    v87 = 0;
    v88 = 0;
  }

  v89 = v118;
  v16 = v116;
  v90 = sub_21733CAD0();
  LOBYTE(v125[0]) = 1;
  sub_21733BE84(v90, v91, v92);
  v93 = v115;
  v94 = v111;
  v95 = v135;
  sub_217752EA8();
  v135 = v95;
  if (!v95)
  {
    __swift_destroy_boxed_opaque_existential_1(v134);
    (*(v38 + 8))(v94, v93);
    sub_21733CA78(v89, type metadata accessor for CloudPlaylist);
    v96 = *(&v127[0] + 1);
    v97 = v127[1];
    v98 = v112;
    v99 = &v16[v112[9]];
    *v99 = *&v127[0];
    *(v99 + 1) = v96;
    v99[16] = v97;
    v100 = &v16[v98[10]];
    *v100 = v87;
    *(v100 + 1) = v88;
    memcpy(&v16[v98[11]], v131, 0x180uLL);
    *&v16[v98[12]] = v113;
    *&v16[v98[13]] = v31;
    v101 = v120;
    *&v16[v98[14]] = v121;
    *&v16[v98[15]] = v101;
    sub_21726A630(v16, v119, &qword_27CB24790, &unk_21775A220);
    __swift_destroy_boxed_opaque_existential_1(v117);
    return sub_2171F0738(v16, &qword_27CB24790, &unk_21775A220);
  }

  sub_2171F0738(v131, &qword_27CB25620, &qword_21776A5F0);

  __swift_destroy_boxed_opaque_existential_1(v134);
  (*(v38 + 8))(v94, v93);
  sub_21733CA78(v89, type metadata accessor for CloudPlaylist);
  v25 = 1;
  v26 = v117;
LABEL_31:
  result = __swift_destroy_boxed_opaque_existential_1(v26);
  if (v25)
  {
    return sub_21733CA78(v16, type metadata accessor for CloudPlaylist);
  }

  return result;
}

void sub_217315200()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v149 = v4;
  v5 = type metadata accessor for LegacyModelCodablePlaylistEntry.Attributes(0);
  v6 = OUTLINED_FUNCTION_45_0(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_81();
  v150 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25780, &qword_21775D888);
  OUTLINED_FUNCTION_0_0();
  v151 = v9;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_130_2();
  v11 = type metadata accessor for LegacyModelCodablePlaylistEntry(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_1();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v142 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247D8, &qword_217758D60);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_111();
  sub_2171FF30C(v3, v161);
  v21 = v152;
  LegacyModelCodablePlaylistEntry.init(from:)(v161, v22, v23, v24, v25, v26, v27, v28, v142, SDWORD2(v142), SWORD6(v142), SBYTE14(v142), SHIBYTE(v142), v143, v144, v145, v146, v147, v148, v149, v150, v151, v152);
  v152 = v21;
  if (v21)
  {
    v29 = 0;
    v30 = v3;
    goto LABEL_31;
  }

  v143 = v15;
  v144 = v11;
  *(&v142 + 1) = v19;
  v145 = v8;
  v146 = v0;
  v147 = v3;
  v148 = v18;
  OUTLINED_FUNCTION_160(v3, v3[3]);
  v31 = OUTLINED_FUNCTION_204();
  __swift_instantiateConcreteTypeFromMangledNameV2(v31, v32);
  OUTLINED_FUNCTION_171_1();
  sub_21733CCD4(v33, v34, v35);
  v36 = v152;
  sub_2177532C8();
  v152 = v36;
  if (v36)
  {
    goto LABEL_4;
  }

  sub_217751DC8();

  OUTLINED_FUNCTION_220_2();
  v37 = v145;
  v38 = v152;
  sub_217752E08();
  v30 = v147;
  v39 = v148;
  v152 = v38;
  if (!v38)
  {
    *&v142 = v1;
    v41 = &type metadata for JSONValue;
    OUTLINED_FUNCTION_65_6();
    v42 = sub_217751DC8();
    OUTLINED_FUNCTION_65_6();
    v43 = sub_217751DC8();
    OUTLINED_FUNCTION_65_6();
    v44 = sub_217751DC8();
    sub_21733BE70(v161);
    OUTLINED_FUNCTION_7_14();
    sub_21733CAD0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
    if (swift_dynamicCast())
    {
      v150 = v44;
      sub_2171F3F0C(v158, v159);
      OUTLINED_FUNCTION_73_7();
      v45 = v152;
      OUTLINED_FUNCTION_171_1();
      v47 = v46();
      v152 = v45;
      if (v45)
      {

LABEL_10:
        v48 = OUTLINED_FUNCTION_231_0();
        v50 = v145;
LABEL_28:
        v49(v48, v50);
        OUTLINED_FUNCTION_1_19();
        v78 = v39;
LABEL_29:
        sub_21733CA78(v78, v77);
        __swift_destroy_boxed_opaque_existential_1(v159);
        goto LABEL_30;
      }

      v143 = v47;
      if (OUTLINED_FUNCTION_55_4())
      {

        OUTLINED_FUNCTION_72_5(v56);
        v152 = 0;
        OUTLINED_FUNCTION_73_7();
        v58 = v152;
        OUTLINED_FUNCTION_171_1();
        v60 = v59();
        v152 = v58;
        if (v58)
        {
          goto LABEL_35;
        }

        v42 = v60;
        __swift_destroy_boxed_opaque_existential_1(v158);
      }

      if (OUTLINED_FUNCTION_55_4())
      {

        OUTLINED_FUNCTION_72_5(v76);
        v152 = 0;
        OUTLINED_FUNCTION_73_7();
        v79 = v152;
        OUTLINED_FUNCTION_171_1();
        v81 = v80();
        v152 = v79;
        if (v79)
        {
LABEL_35:

          v82 = v158;
LABEL_36:
          __swift_destroy_boxed_opaque_existential_1(v82);
          goto LABEL_10;
        }

        v43 = v81;
        __swift_destroy_boxed_opaque_existential_1(v158);
      }

      LOBYTE(v157[0]) = 6;
      v100 = v145;
      if (sub_217752EC8())
      {

        LOBYTE(v157[0]) = 6;
        v101 = v152;
        sub_217752E08();
        v152 = v101;
        if (v101)
        {

          v48 = OUTLINED_FUNCTION_71_6();
          v50 = v100;
          goto LABEL_28;
        }

        sub_2171FF30C(v156, v154);
        v104 = v152;
        CloudResourceCustomMetadata.init(from:)(v154, v157);
        v152 = v104;
        if (v104)
        {

          v82 = v156;
          goto LABEL_36;
        }

        memcpy(v155, v157, sizeof(v155));
        OUTLINED_FUNCTION_73_7();
        v135 = sub_217383B34(&unk_28295F078);
        v136 = v152;
        v137 = (*(v100 + 40))(v156, v135, 6, v100);
        v152 = v136;
        if (v136)
        {

          sub_21733BED8(v155);
          __swift_destroy_boxed_opaque_existential_1(v156);
          v138 = OUTLINED_FUNCTION_231_0();
          v139(v138, v145);
          OUTLINED_FUNCTION_1_19();
          v78 = v148;
          goto LABEL_29;
        }

        v150 = v137;
        __swift_destroy_boxed_opaque_existential_1(v156);

        memcpy(v153, v155, sizeof(v153));
        nullsub_1();
        v102 = v153;
      }

      else
      {
        v102 = v161;
      }

      memcpy(v158, v102, sizeof(v158));
      __swift_destroy_boxed_opaque_existential_1(v159);
      v103 = v158;
      goto LABEL_51;
    }

    memset(v158, 0, 40);
    sub_2171F0738(v158, &qword_27CB25588, &unk_21775D380);
    sub_2171FF30C(&v162, v158);
    OUTLINED_FUNCTION_92_3();
    sub_21733CAD0();
    v51 = v152;
    sub_217386290();
    v152 = v51;
    if (v51)
    {

LABEL_13:
      v53 = OUTLINED_FUNCTION_231_0();
LABEL_14:
      v55 = v145;
LABEL_40:
      v54(v53, v55);
      OUTLINED_FUNCTION_1_19();
      sub_21733CA78(v39, v84);
      __swift_destroy_boxed_opaque_existential_1(v30);
      goto LABEL_33;
    }

    v143 = v52;
    v150 = v44;
    if (OUTLINED_FUNCTION_55_4())
    {

      OUTLINED_FUNCTION_72_5(v57);
      v152 = 0;
      sub_2171FF30C(v158, v157);
      if (qword_27CB23DF0 != -1)
      {
        swift_once();
      }

      sub_217383748(qword_27CB2BFE8, v61, v62, v63, v64, v65, v66, v67, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153[0], v153[1], v153[2], v153[3], v153[4], v153[5]);
      v68 = v152;
      v75 = Dictionary<>.init(from:skippingValuesFor:)(v157, v69, v70, v71, v72, v73, v74);
      v152 = v68;
      if (v68)
      {
        goto LABEL_44;
      }

      v42 = v75;
      __swift_destroy_boxed_opaque_existential_1(v158);
    }

    if (OUTLINED_FUNCTION_55_4())
    {

      OUTLINED_FUNCTION_72_5(v83);
      v152 = 0;
      sub_2171FF30C(v158, v157);
      if (qword_27CB23DF8 != -1)
      {
        swift_once();
      }

      sub_217383748(qword_27CB2BFF0, v85, v86, v87, v88, v89, v90, v91, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153[0], v153[1], v153[2], v153[3], v153[4], v153[5]);
      v92 = v152;
      v99 = Dictionary<>.init(from:skippingValuesFor:)(v157, v93, v94, v95, v96, v97, v98);
      v152 = v92;
      if (v92)
      {
LABEL_44:

        __swift_destroy_boxed_opaque_existential_1(v158);
        v53 = OUTLINED_FUNCTION_71_6();
        goto LABEL_14;
      }

      v43 = v99;
      __swift_destroy_boxed_opaque_existential_1(v158);
    }

    if ((OUTLINED_FUNCTION_55_4() & 1) == 0)
    {
      memcpy(v160, v161, sizeof(v160));
LABEL_59:
      LOBYTE(v158[0]) = 2;
      if (sub_217752EC8())
      {
        LOBYTE(v158[0]) = 2;
        v106 = v152;
        v107 = sub_217752E68();
        v152 = v106;
        if (v106)
        {

          sub_2171F0738(v160, &qword_27CB25620, &qword_21776A5F0);

          v109 = OUTLINED_FUNCTION_71_6();
          v110(v109, v41);
LABEL_4:
          sub_21733CA78(v148, type metadata accessor for LegacyModelCodablePlaylistEntry);
          v29 = 0;
          v0 = v146;
          v30 = v147;
          goto LABEL_31;
        }

        v111 = v107;
        v112 = v108;
        v151 = v43;
      }

      else
      {
        v151 = v43;
        v111 = 0;
        v112 = 0;
      }

      OUTLINED_FUNCTION_7_14();
      v113 = v148;
      v0 = v146;
      v114 = sub_21733CAD0();
      LOBYTE(v157[0]) = 1;
      sub_21733BE84(v114, v115, v116);
      v117 = v145;
      v118 = v152;
      sub_217752EA8();
      v152 = v118;
      if (!v118)
      {
        v122 = OUTLINED_FUNCTION_71_6();
        v123(v122, v117);
        OUTLINED_FUNCTION_1_19();
        sub_21733CA78(v113, v124);
        v125 = *(&v158[0] + 1);
        v126 = v158[1];
        v127 = *(&v142 + 1);
        v128 = v0 + *(*(&v142 + 1) + 36);
        *v128 = *&v158[0];
        *(v128 + 8) = v125;
        *(v128 + 16) = v126;
        v129 = (v0 + v127[10]);
        *v129 = v111;
        v129[1] = v112;
        memcpy((v0 + v127[11]), v160, 0x180uLL);
        *(v0 + v127[12]) = v143;
        *(v0 + v127[13]) = v42;
        v130 = v150;
        *(v0 + v127[14]) = v151;
        *(v0 + v127[15]) = v130;
        sub_21726A630(v0, v149, &qword_27CB247D8, &qword_217758D60);
        __swift_destroy_boxed_opaque_existential_1(v147);
        OUTLINED_FUNCTION_158();
        sub_2171F0738(v131, v132, v133);
        goto LABEL_33;
      }

      sub_2171F0738(v160, &qword_27CB25620, &qword_21776A5F0);

      v119 = OUTLINED_FUNCTION_71_6();
      v120(v119, v117);
      OUTLINED_FUNCTION_1_19();
      sub_21733CA78(v113, v121);
      v29 = 1;
      v30 = v147;
      goto LABEL_31;
    }

    LOBYTE(v158[0]) = 6;
    v105 = v152;
    sub_217752E08();
    v152 = v105;
    if (v105)
    {

      v53 = OUTLINED_FUNCTION_71_6();
      v55 = &type metadata for JSONValue;
      goto LABEL_40;
    }

    sub_2171FF30C(v153, v159);
    v134 = v152;
    CloudResourceCustomMetadata.init(from:)(v159, v158);
    v152 = v134;
    if (v134)
    {
    }

    else
    {
      memcpy(v157, v158, sizeof(v157));
      sub_2171FF30C(v153, v156);
      sub_217383B34(&unk_28295F078);
      v140 = v152;
      sub_21738814C();
      v152 = v140;
      if (!v140)
      {
        v150 = v141;
        __swift_destroy_boxed_opaque_existential_1(v153);
        memcpy(v155, v157, sizeof(v155));
        nullsub_1();
        v103 = v155;
LABEL_51:
        memcpy(v160, v103, sizeof(v160));
        v41 = v145;
        goto LABEL_59;
      }

      sub_21733BED8(v157);
    }

    __swift_destroy_boxed_opaque_existential_1(v153);
    goto LABEL_13;
  }

  (*(v151 + 8))(v1, v37);
  OUTLINED_FUNCTION_1_19();
  sub_21733CA78(v39, v40);
LABEL_30:
  v29 = 0;
  v0 = v146;
LABEL_31:
  __swift_destroy_boxed_opaque_existential_1(v30);
  if (v29)
  {
    sub_21733CA78(v0, type metadata accessor for LegacyModelCodablePlaylistEntry);
  }

LABEL_33:
  OUTLINED_FUNCTION_170();
}

void sub_217315E8C()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v40 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB258D0, &qword_21775D960);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_128();
  v6 = type metadata accessor for LegacyModelCodablePlaylistEntryItem(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25650, &unk_21778F830);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_130_2();
  sub_2171FF30C(v3, v50);
  LegacyModelCodablePlaylistEntryItem.init(from:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    v38 = v1;
    v37 = v11;
    OUTLINED_FUNCTION_160(v3, v3[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB258C0, &qword_21775D958);
    sub_21733CCD4(&qword_27CB258C8, &qword_27CB258C0, &qword_21775D958);
    sub_2177532C8();
    sub_217751DC8();

    OUTLINED_FUNCTION_220_2();
    sub_217752E08();
    OUTLINED_FUNCTION_154();
    v13 = sub_217751DC8();
    OUTLINED_FUNCTION_154();
    v14 = sub_217751DC8();
    OUTLINED_FUNCTION_154();
    v15 = sub_217751DC8();
    sub_21733BE70(v50);
    v48 = v6;
    v49 = &protocol witness table for LegacyModelCodablePlaylistEntryItem;
    __swift_allocate_boxed_opaque_existential_0(v47);
    OUTLINED_FUNCTION_32_9();
    sub_21733CAD0();
    OUTLINED_FUNCTION_160(v47, v48);
    LegacyModelCodablePlaylistEntryItem.decodeRawAttributes(from:)();
    v36 = v16;
    v39 = v14;
    LOBYTE(v46[0]) = 4;
    if (sub_217752EC8())
    {

      LOBYTE(v44[0]) = 4;
      sub_217752E08();
      LegacyModelCodablePlaylistEntryItem.decodeRawRelationships(from:)();
      v34 = v17;
      __swift_destroy_boxed_opaque_existential_1(v46);
    }

    else
    {
      v34 = v13;
    }

    LOBYTE(v46[0]) = 5;
    if (sub_217752EC8())
    {

      LOBYTE(v44[0]) = 5;
      OUTLINED_FUNCTION_123_4();
      sub_217752E08();
      LegacyModelCodablePlaylistEntryItem.decodeRawAssociations(from:)();
      v39 = v18;
      __swift_destroy_boxed_opaque_existential_1(v46);
    }

    LOBYTE(v44[0]) = 6;
    OUTLINED_FUNCTION_123_4();
    if (sub_217752EC8())
    {

      LOBYTE(v44[0]) = 6;
      OUTLINED_FUNCTION_123_4();
      sub_217752E08();
      sub_2171FF30C(v45, v43);
      CloudResourceCustomMetadata.init(from:)(v43, v44);
      memcpy(v42, v44, sizeof(v42));
      sub_217383B34(&unk_28295F078);
      LegacyModelCodablePlaylistEntryItem.decodeRawMetadata(from:skippingValuesFor:)();
      v15 = v32;
      __swift_destroy_boxed_opaque_existential_1(v45);

      memcpy(v41, v42, sizeof(v41));
      nullsub_1();
      v33 = v41;
    }

    else
    {
      v33 = v50;
    }

    memcpy(v46, v33, sizeof(v46));
    __swift_destroy_boxed_opaque_existential_1(v47);
    LOBYTE(v44[0]) = 2;
    OUTLINED_FUNCTION_123_4();
    if (sub_217752EC8())
    {
      LOBYTE(v44[0]) = 2;
      v19 = sub_217752E68();
      v21 = v20;
      v35 = v19;
    }

    else
    {
      v35 = 0;
      v21 = 0;
    }

    OUTLINED_FUNCTION_32_9();
    v22 = sub_21733CAD0();
    v42[0] = 1;
    sub_21733BE84(v22, v23, v24);
    sub_217752EA8();
    OUTLINED_FUNCTION_174_3();
    v25 = OUTLINED_FUNCTION_153();
    v26(v25);
    OUTLINED_FUNCTION_2_26();
    sub_21733CA78(v10, v27);
    v28 = v44[1];
    v29 = v44[2];
    v30 = v38 + v37[9];
    *v30 = v44[0];
    *(v30 + 8) = v28;
    *(v30 + 16) = v29;
    v31 = (v38 + v37[10]);
    *v31 = v35;
    v31[1] = v21;
    memcpy((v38 + v37[11]), v46, 0x180uLL);
    *(v38 + v37[12]) = v36;
    *(v38 + v37[13]) = v34;
    *(v38 + v37[14]) = v39;
    *(v38 + v37[15]) = v15;
    sub_21726A630(v38, v40, &qword_27CB25650, &unk_21778F830);
    __swift_destroy_boxed_opaque_existential_1(v3);
    sub_2171F0738(v38, &qword_27CB25650, &unk_21778F830);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_217316710@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v136 = a2;
  v3 = type metadata accessor for CloudStation.Attributes(0);
  MEMORY[0x28223BE20](v3 - 8);
  v137 = &v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25A10, &qword_21775DA38);
  v138 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v127 - v6;
  v8 = type metadata accessor for CloudStation(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v127 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24738, &qword_217758CC0);
  MEMORY[0x28223BE20](v14);
  v16 = &v127 - v15;
  sub_2171FF30C(a1, v149);
  v17 = v152;
  CloudStation.init(from:)(v149, v18, v19, v20, v21, v22, v23, v24, v127, SDWORD2(v127), SWORD6(v127), SBYTE14(v127), SHIBYTE(v127), v128, v129, v130, v131, v132, v133, v134, v135, v136, v137);
  v152 = v17;
  if (v17)
  {
    v25 = 0;
    v26 = a1;
    goto LABEL_34;
  }

  v130 = v10;
  v131 = v8;
  v129 = v14;
  v132 = v5;
  v133 = v16;
  v134 = a1;
  v135 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB259E8, &qword_21775DA30);
  sub_21733CCD4(&qword_27CB259F0, &qword_27CB259E8, &qword_21775DA30);
  v27 = v152;
  sub_2177532C8();
  v152 = v27;
  if (v27)
  {
    goto LABEL_4;
  }

  sub_217751DC8();

  v150 = 3;
  v28 = v132;
  v29 = v152;
  sub_217752E08();
  v26 = v134;
  v30 = v135;
  v152 = v29;
  if (v29)
  {
    (*(v138 + 8))(v7, v28);
    sub_21733CA78(v30, type metadata accessor for CloudStation);
LABEL_33:
    v25 = 0;
    v16 = v133;
    goto LABEL_34;
  }

  v128 = v7;
  *(&v127 + 1) = sub_217751DC8();
  v31 = sub_217751DC8();
  v32 = sub_217751DC8();
  sub_21733BE70(v149);
  sub_21733CAD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  if (swift_dynamicCast())
  {
    sub_2171F3F0C(v144, v145);
    v33 = v146;
    v34 = v147;
    __swift_project_boxed_opaque_existential_1(v145, v146);
    v35 = v152;
    v36 = (*(v34 + 16))(v151, v33, v34);
    v37 = v138;
    v152 = v35;
    if (v35)
    {

LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v151);
      (*(v37 + 8))(v128, v132);
LABEL_31:
      v72 = v30;
LABEL_32:
      sub_21733CA78(v72, type metadata accessor for CloudStation);
      __swift_destroy_boxed_opaque_existential_1(v145);
      goto LABEL_33;
    }

    v137 = v36;
    LOBYTE(v144[0]) = 4;
    v43 = v132;
    v44 = v128;
    if (sub_217752EC8())
    {

      LOBYTE(v142[0]) = 4;
      v45 = v152;
      sub_217752E08();
      v152 = v45;
      if (v45)
      {
        goto LABEL_30;
      }

      v49 = v146;
      v50 = v147;
      __swift_project_boxed_opaque_existential_1(v145, v146);
      v51 = v152;
      v52 = (*(v50 + 24))(v144, v49, v50);
      v152 = v51;
      if (v51)
      {
LABEL_38:

        v78 = v144;
LABEL_39:
        __swift_destroy_boxed_opaque_existential_1(v78);
        goto LABEL_10;
      }

      *(&v127 + 1) = v52;
      __swift_destroy_boxed_opaque_existential_1(v144);
    }

    LOBYTE(v144[0]) = 5;
    v43 = v132;
    v44 = v128;
    if (sub_217752EC8())
    {

      LOBYTE(v142[0]) = 5;
      v71 = v152;
      sub_217752E08();
      v152 = v71;
      if (v71)
      {
LABEL_30:

        __swift_destroy_boxed_opaque_existential_1(v151);
        (*(v37 + 8))(v44, v43);
        goto LABEL_31;
      }

      v74 = v146;
      v75 = v147;
      __swift_project_boxed_opaque_existential_1(v145, v146);
      v76 = v152;
      v77 = (*(v75 + 32))(v144, v74, v75);
      v152 = v76;
      if (v76)
      {
        goto LABEL_38;
      }

      v31 = v77;
      __swift_destroy_boxed_opaque_existential_1(v144);
    }

    LOBYTE(v142[0]) = 6;
    v43 = v132;
    v44 = v128;
    if (sub_217752EC8())
    {

      LOBYTE(v142[0]) = 6;
      v95 = v152;
      sub_217752E08();
      v152 = v95;
      if (v95)
      {
        goto LABEL_30;
      }

      sub_2171FF30C(v143, v141);
      v98 = v152;
      CloudResourceCustomMetadata.init(from:)(v141, v142);
      v152 = v98;
      if (v98)
      {

        v78 = v143;
        goto LABEL_39;
      }

      memcpy(v140, v142, sizeof(v140));
      v120 = v146;
      v121 = v147;
      __swift_project_boxed_opaque_existential_1(v145, v146);
      v122 = sub_217383B34(&unk_28295F078);
      v123 = v152;
      v124 = (*(v121 + 40))(v143, v122, v120, v121);
      v152 = v123;
      if (v123)
      {

        sub_21733BED8(v140);
        __swift_destroy_boxed_opaque_existential_1(v143);
        __swift_destroy_boxed_opaque_existential_1(v151);
        (*(v37 + 8))(v128, v132);
        v72 = v135;
        goto LABEL_32;
      }

      v32 = v124;
      __swift_destroy_boxed_opaque_existential_1(v143);

      memcpy(v139, v140, 0x180uLL);
      nullsub_1();
      v96 = v139;
    }

    else
    {
      v96 = v149;
    }

    memcpy(v144, v96, sizeof(v144));
    __swift_destroy_boxed_opaque_existential_1(v145);
    v97 = v144;
    goto LABEL_55;
  }

  memset(v144, 0, 40);
  sub_2171F0738(v144, &qword_27CB25588, &unk_21775D380);
  sub_2171FF30C(v151, v144);
  sub_21733CAD0();
  v38 = v152;
  sub_2173858E4();
  v37 = v138;
  v152 = v38;
  if (v38)
  {

LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(v151);
    v40 = *(v37 + 8);
    v41 = v128;
LABEL_14:
    v42 = v132;
LABEL_44:
    v40(v41, v42);
    sub_21733CA78(v30, type metadata accessor for CloudStation);
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  v137 = v39;
  LOBYTE(v144[0]) = 4;
  v46 = v132;
  v47 = v128;
  if (sub_217752EC8())
  {

    LOBYTE(v142[0]) = 4;
    v48 = v152;
    sub_217752E08();
    v152 = v48;
    if (v48)
    {
      goto LABEL_43;
    }

    sub_2171FF30C(v144, v142);
    if (qword_280BE4D60 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v53 = sub_217751DE8();
    sub_217383748(v53, v54, v55, v56, v57, v58, v59, v60, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139[0], v139[1], v139[2], v139[3], v139[4]);
    v62 = v61;

    v63 = v152;
    v69 = Dictionary<>.init(from:skippingValuesFor:)(v142, v62, v64, v65, v66, v67, v68);
    v70 = v128;
    v152 = v63;
    if (v63)
    {
      goto LABEL_48;
    }

    *(&v127 + 1) = v69;
    __swift_destroy_boxed_opaque_existential_1(v144);
  }

  LOBYTE(v144[0]) = 5;
  v46 = v132;
  v47 = v128;
  if (sub_217752EC8())
  {

    LOBYTE(v142[0]) = 5;
    v79 = v152;
    sub_217752E08();
    v152 = v79;
    if (v79)
    {
LABEL_43:

      __swift_destroy_boxed_opaque_existential_1(v151);
      v40 = *(v37 + 8);
      v41 = v47;
      v42 = v46;
      goto LABEL_44;
    }

    sub_2171FF30C(v144, v142);
    if (qword_27CB23E58 != -1)
    {
      swift_once();
    }

    sub_217383748(qword_27CB2C988, v80, v81, v82, v83, v84, v85, v86, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139[0], v139[1], v139[2], v139[3], v139[4]);
    v87 = v152;
    v94 = Dictionary<>.init(from:skippingValuesFor:)(v142, v88, v89, v90, v91, v92, v93);
    v70 = v128;
    v152 = v87;
    if (v87)
    {
LABEL_48:

      __swift_destroy_boxed_opaque_existential_1(v144);
      __swift_destroy_boxed_opaque_existential_1(v151);
      v40 = *(v37 + 8);
      v41 = v70;
      goto LABEL_14;
    }

    v31 = v94;
    __swift_destroy_boxed_opaque_existential_1(v144);
  }

  LOBYTE(v144[0]) = 6;
  v46 = v132;
  v47 = v128;
  if ((sub_217752EC8() & 1) == 0)
  {
    memcpy(v148, v149, sizeof(v148));
    goto LABEL_63;
  }

  LOBYTE(v144[0]) = 6;
  v99 = v152;
  sub_217752E08();
  v152 = v99;
  if (v99)
  {
    goto LABEL_43;
  }

  sub_2171FF30C(v145, v143);
  v119 = v152;
  CloudResourceCustomMetadata.init(from:)(v143, v144);
  v152 = v119;
  if (v119)
  {

LABEL_77:
    __swift_destroy_boxed_opaque_existential_1(v145);
    goto LABEL_13;
  }

  memcpy(v142, v144, sizeof(v142));
  sub_2171FF30C(v145, v141);
  sub_21726A630(v30 + *(v131 + 32), v139, &qword_27CB24340, &unk_2177650B0);
  sub_217383B34(&unk_28295F078);
  v125 = v152;
  sub_2173876D0();
  v152 = v125;
  if (v125)
  {

    sub_21733BED8(v142);
    goto LABEL_77;
  }

  v32 = v126;
  __swift_destroy_boxed_opaque_existential_1(v145);
  memcpy(v140, v142, sizeof(v140));
  nullsub_1();
  v97 = v140;
LABEL_55:
  memcpy(v148, v97, sizeof(v148));
  v46 = v132;
LABEL_63:
  LOBYTE(v144[0]) = 2;
  v100 = v128;
  if (sub_217752EC8())
  {
    LOBYTE(v144[0]) = 2;
    v101 = v152;
    v102 = sub_217752E68();
    v152 = v101;
    if (v101)
    {

      sub_2171F0738(v148, &qword_27CB25620, &qword_21776A5F0);

      __swift_destroy_boxed_opaque_existential_1(v151);
      (*(v37 + 8))(v100, v46);
LABEL_4:
      sub_21733CA78(v135, type metadata accessor for CloudStation);
      v25 = 0;
      v16 = v133;
      v26 = v134;
      goto LABEL_34;
    }

    v104 = v102;
    v105 = v103;
    v138 = v31;
  }

  else
  {
    v138 = v31;
    v104 = 0;
    v105 = 0;
  }

  v106 = v135;
  v16 = v133;
  v107 = sub_21733CAD0();
  LOBYTE(v142[0]) = 1;
  sub_21733BE84(v107, v108, v109);
  v110 = v132;
  v111 = v128;
  v112 = v152;
  sub_217752EA8();
  v152 = v112;
  if (!v112)
  {
    __swift_destroy_boxed_opaque_existential_1(v151);
    (*(v37 + 8))(v111, v110);
    sub_21733CA78(v106, type metadata accessor for CloudStation);
    v113 = *(&v144[0] + 1);
    v114 = v144[1];
    v115 = v129;
    v116 = &v16[SHIDWORD(v129[2].Kind)];
    *v116 = *&v144[0];
    *(v116 + 1) = v113;
    v116[16] = v114;
    v117 = &v16[v115[10]];
    *v117 = v104;
    *(v117 + 1) = v105;
    memcpy(&v16[v115[11]], v148, 0x180uLL);
    v118 = v136;
    *&v16[v115[12]] = v137;
    *&v16[v115[13]] = *(&v127 + 1);
    *&v16[v115[14]] = v138;
    *&v16[v115[15]] = v32;
    sub_21726A630(v16, v118, &qword_27CB24738, &qword_217758CC0);
    __swift_destroy_boxed_opaque_existential_1(v134);
    return sub_2171F0738(v16, &qword_27CB24738, &qword_217758CC0);
  }

  sub_2171F0738(v148, &qword_27CB25620, &qword_21776A5F0);

  __swift_destroy_boxed_opaque_existential_1(v151);
  (*(v37 + 8))(v111, v110);
  sub_21733CA78(v106, type metadata accessor for CloudStation);
  v25 = 1;
  v26 = v134;
LABEL_34:
  result = __swift_destroy_boxed_opaque_existential_1(v26);
  if (v25)
  {
    return sub_21733CA78(v16, type metadata accessor for CloudStation);
  }

  return result;
}

uint64_t sub_217317684@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v3 = type metadata accessor for CloudArtist.Attributes(0);
  MEMORY[0x28223BE20](v3 - 8);
  v111 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25810, &qword_21775D8D8);
  v112 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v102 - v6;
  v8 = type metadata accessor for CloudArtist(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v102 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24728, &qword_217758CB0);
  MEMORY[0x28223BE20](v14);
  v16 = &v102 - v15;
  sub_2171FF30C(a1, v124);
  v17 = v113;
  CloudArtist.init(from:)();
  v113 = v17;
  if (v17)
  {
    v18 = 0;
    v19 = a1;
    goto LABEL_31;
  }

  v104 = v10;
  v105 = v8;
  v103 = v14;
  v106 = v5;
  v107 = v16;
  v108 = a1;
  v109 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB257F0, &qword_21775D8D0);
  sub_21733CCD4(&qword_27CB257F8, &qword_27CB257F0, &qword_21775D8D0);
  v20 = v113;
  sub_2177532C8();
  v113 = v20;
  if (v20)
  {
    goto LABEL_4;
  }

  sub_217751DC8();

  v126 = 3;
  v21 = v106;
  v22 = v113;
  sub_217752E08();
  v19 = v108;
  v23 = v109;
  v113 = v22;
  if (v22)
  {
    (*(v112 + 8))(v7, v21);
    sub_21733CA78(v23, type metadata accessor for CloudArtist);
LABEL_30:
    v18 = 0;
    v16 = v107;
    goto LABEL_31;
  }

  v102 = v7;
  v24 = sub_217751DC8();
  v25 = sub_217751DC8();
  v26 = sub_217751DC8();
  sub_21733BE70(v124);
  sub_21733CAD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  if (swift_dynamicCast())
  {
    v111 = v26;
    sub_2171F3F0C(v119, v120);
    v27 = v121;
    v28 = v122;
    __swift_project_boxed_opaque_existential_1(v120, v121);
    v29 = v113;
    v30 = (*(v28 + 16))(v125, v27, v28);
    v31 = v112;
    v113 = v29;
    if (v29)
    {

LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v125);
      (*(v31 + 8))(v102, v106);
LABEL_28:
      v53 = v23;
LABEL_29:
      sub_21733CA78(v53, type metadata accessor for CloudArtist);
      __swift_destroy_boxed_opaque_existential_1(v120);
      goto LABEL_30;
    }

    v104 = v30;
    LOBYTE(v119[0]) = 4;
    v34 = v106;
    v35 = v102;
    if (sub_217752EC8())
    {

      LOBYTE(v118[0]) = 4;
      v36 = v113;
      sub_217752E08();
      v113 = v36;
      if (v36)
      {
        goto LABEL_27;
      }

      v40 = v121;
      v41 = v122;
      __swift_project_boxed_opaque_existential_1(v120, v121);
      v42 = v113;
      v43 = (*(v41 + 24))(v119, v40, v41);
      v113 = v42;
      if (v42)
      {
LABEL_35:

        v59 = v119;
LABEL_36:
        __swift_destroy_boxed_opaque_existential_1(v59);
        goto LABEL_10;
      }

      v24 = v43;
      __swift_destroy_boxed_opaque_existential_1(v119);
    }

    LOBYTE(v119[0]) = 5;
    v34 = v106;
    v35 = v102;
    if (sub_217752EC8())
    {

      LOBYTE(v118[0]) = 5;
      v52 = v113;
      sub_217752E08();
      v113 = v52;
      if (v52)
      {
LABEL_27:

        __swift_destroy_boxed_opaque_existential_1(v125);
        (*(v31 + 8))(v35, v34);
        goto LABEL_28;
      }

      v55 = v121;
      v56 = v122;
      __swift_project_boxed_opaque_existential_1(v120, v121);
      v57 = v113;
      v58 = (*(v56 + 32))(v119, v55, v56);
      v113 = v57;
      if (v57)
      {
        goto LABEL_35;
      }

      v25 = v58;
      __swift_destroy_boxed_opaque_existential_1(v119);
    }

    LOBYTE(v118[0]) = 6;
    v34 = v106;
    v35 = v102;
    if (sub_217752EC8())
    {

      LOBYTE(v118[0]) = 6;
      v70 = v113;
      sub_217752E08();
      v113 = v70;
      if (v70)
      {
        goto LABEL_27;
      }

      sub_2171FF30C(v117, v115);
      v73 = v113;
      CloudResourceCustomMetadata.init(from:)(v115, v118);
      v113 = v73;
      if (v73)
      {

        v59 = v117;
        goto LABEL_36;
      }

      memcpy(v116, v118, sizeof(v116));
      v95 = v121;
      v96 = v122;
      __swift_project_boxed_opaque_existential_1(v120, v121);
      v97 = sub_217383B34(&unk_28295F078);
      v98 = v113;
      v99 = (*(v96 + 40))(v117, v97, v95, v96);
      v113 = v98;
      if (v98)
      {

        sub_21733BED8(v116);
        __swift_destroy_boxed_opaque_existential_1(v117);
        __swift_destroy_boxed_opaque_existential_1(v125);
        (*(v31 + 8))(v102, v106);
        v53 = v109;
        goto LABEL_29;
      }

      v111 = v99;
      __swift_destroy_boxed_opaque_existential_1(v117);

      memcpy(v114, v116, sizeof(v114));
      nullsub_1();
      v71 = v114;
    }

    else
    {
      v71 = v124;
    }

    memcpy(v119, v71, sizeof(v119));
    __swift_destroy_boxed_opaque_existential_1(v120);
    v72 = v119;
    goto LABEL_50;
  }

  memset(v119, 0, 40);
  sub_2171F0738(v119, &qword_27CB25588, &unk_21775D380);
  sub_2171FF30C(v125, v119);
  sub_21733CAD0();
  v32 = v113;
  sub_217385F04();
  v31 = v112;
  v113 = v32;
  if (v32)
  {

LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(v125);
    (*(v31 + 8))(v102, v106);
LABEL_41:
    sub_21733CA78(v23, type metadata accessor for CloudArtist);
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  v104 = v33;
  v111 = v26;
  LOBYTE(v119[0]) = 4;
  v37 = v106;
  v38 = v102;
  if (sub_217752EC8())
  {

    LOBYTE(v118[0]) = 4;
    v39 = v113;
    sub_217752E08();
    v113 = v39;
    if (v39)
    {
      goto LABEL_40;
    }

    sub_2171FF30C(v119, v118);
    v44 = sub_2173839CC(&unk_28295B7B0);
    v45 = v113;
    v51 = Dictionary<>.init(from:skippingValuesFor:)(v118, v44, v46, v47, v48, v49, v50);
    v113 = v45;
    if (v45)
    {
LABEL_43:

      v69 = v119;
LABEL_73:
      __swift_destroy_boxed_opaque_existential_1(v69);
      goto LABEL_13;
    }

    v24 = v51;
    __swift_destroy_boxed_opaque_existential_1(v119);
  }

  LOBYTE(v119[0]) = 5;
  v37 = v106;
  v38 = v102;
  if (sub_217752EC8())
  {

    LOBYTE(v118[0]) = 5;
    v60 = v113;
    sub_217752E08();
    v113 = v60;
    if (v60)
    {
LABEL_40:

      __swift_destroy_boxed_opaque_existential_1(v125);
      (*(v31 + 8))(v38, v37);
      goto LABEL_41;
    }

    sub_2171FF30C(v119, v118);
    v61 = sub_217383A4C(&unk_28295B7D8);
    v62 = v113;
    v68 = Dictionary<>.init(from:skippingValuesFor:)(v118, v61, v63, v64, v65, v66, v67);
    v113 = v62;
    if (v62)
    {
      goto LABEL_43;
    }

    v25 = v68;
    __swift_destroy_boxed_opaque_existential_1(v119);
  }

  LOBYTE(v119[0]) = 6;
  v37 = v106;
  v38 = v102;
  if ((sub_217752EC8() & 1) == 0)
  {
    memcpy(v123, v124, sizeof(v123));
    goto LABEL_58;
  }

  LOBYTE(v119[0]) = 6;
  v74 = v113;
  sub_217752E08();
  v113 = v74;
  if (v74)
  {
    goto LABEL_40;
  }

  sub_2171FF30C(v114, v120);
  v94 = v113;
  CloudResourceCustomMetadata.init(from:)(v120, v119);
  v113 = v94;
  if (v94)
  {

LABEL_72:
    v69 = v114;
    goto LABEL_73;
  }

  memcpy(v118, v119, sizeof(v118));
  sub_2171FF30C(v114, v117);
  sub_217221020(*(v23 + *(v105 + 32)));
  sub_217383B34(&unk_28295F078);
  v100 = v113;
  sub_2173880FC();
  v113 = v100;
  if (v100)
  {

    sub_21733BED8(v118);
    goto LABEL_72;
  }

  v111 = v101;
  __swift_destroy_boxed_opaque_existential_1(v114);
  memcpy(v116, v118, sizeof(v116));
  nullsub_1();
  v72 = v116;
LABEL_50:
  memcpy(v123, v72, sizeof(v123));
  v37 = v106;
LABEL_58:
  LOBYTE(v119[0]) = 2;
  v75 = v102;
  if (sub_217752EC8())
  {
    LOBYTE(v119[0]) = 2;
    v76 = v113;
    v77 = sub_217752E68();
    v113 = v76;
    if (v76)
    {

      sub_2171F0738(v123, &qword_27CB25620, &qword_21776A5F0);

      __swift_destroy_boxed_opaque_existential_1(v125);
      (*(v31 + 8))(v75, v37);
LABEL_4:
      sub_21733CA78(v109, type metadata accessor for CloudArtist);
      v18 = 0;
      v16 = v107;
      v19 = v108;
      goto LABEL_31;
    }

    v79 = v77;
    v80 = v78;
    v112 = v25;
  }

  else
  {
    v112 = v25;
    v79 = 0;
    v80 = 0;
  }

  v81 = v109;
  v16 = v107;
  v82 = sub_21733CAD0();
  LOBYTE(v118[0]) = 1;
  sub_21733BE84(v82, v83, v84);
  v85 = v106;
  v86 = v102;
  v87 = v113;
  sub_217752EA8();
  v113 = v87;
  if (!v87)
  {
    __swift_destroy_boxed_opaque_existential_1(v125);
    (*(v31 + 8))(v86, v85);
    sub_21733CA78(v81, type metadata accessor for CloudArtist);
    v88 = *(&v119[0] + 1);
    v89 = v119[1];
    v90 = v103;
    v91 = &v16[v103[9]];
    *v91 = *&v119[0];
    *(v91 + 1) = v88;
    v91[16] = v89;
    v92 = &v16[v90[10]];
    *v92 = v79;
    *(v92 + 1) = v80;
    memcpy(&v16[v90[11]], v123, 0x180uLL);
    *&v16[v90[12]] = v104;
    *&v16[v90[13]] = v24;
    v93 = v111;
    *&v16[v90[14]] = v112;
    *&v16[v90[15]] = v93;
    sub_21726A630(v16, v110, &qword_27CB24728, &qword_217758CB0);
    __swift_destroy_boxed_opaque_existential_1(v108);
    return sub_2171F0738(v16, &qword_27CB24728, &qword_217758CB0);
  }

  sub_2171F0738(v123, &qword_27CB25620, &qword_21776A5F0);

  __swift_destroy_boxed_opaque_existential_1(v125);
  (*(v31 + 8))(v86, v85);
  sub_21733CA78(v81, type metadata accessor for CloudArtist);
  v18 = 1;
  v19 = v108;
LABEL_31:
  result = __swift_destroy_boxed_opaque_existential_1(v19);
  if (v18)
  {
    return sub_21733CA78(v16, type metadata accessor for CloudArtist);
  }

  return result;
}

uint64_t sub_217318548@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v3 = type metadata accessor for CloudGenre.Attributes(0);
  MEMORY[0x28223BE20](v3 - 8);
  v123 = &v115 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25848, &qword_21775D8F8);
  v124 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v115 - v6;
  v8 = type metadata accessor for CloudGenre(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v115 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24768, &qword_217758CF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v115 - v15;
  sub_2171FF30C(a1, v136);
  v17 = v125;
  CloudGenre.init(from:)();
  v125 = v17;
  if (v17)
  {
    v18 = 0;
    v19 = a1;
    goto LABEL_32;
  }

  v116 = v10;
  v117 = v8;
  *(&v115 + 1) = v14;
  v118 = v5;
  v119 = v16;
  v120 = a1;
  v121 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25820, &qword_21775D8E8);
  sub_21733CCD4(&qword_27CB25828, &qword_27CB25820, &qword_21775D8E8);
  v20 = v125;
  sub_2177532C8();
  v125 = v20;
  if (v20)
  {
    goto LABEL_4;
  }

  sub_217751DC8();

  v138 = 3;
  v21 = v118;
  v22 = v125;
  sub_217752E08();
  v19 = v120;
  v23 = v121;
  v125 = v22;
  if (v22)
  {
    (*(v124 + 8))(v7, v21);
    sub_21733CA78(v23, type metadata accessor for CloudGenre);
LABEL_31:
    v18 = 0;
    v16 = v119;
    goto LABEL_32;
  }

  *&v115 = v7;
  v24 = sub_217751DC8();
  v25 = sub_217751DC8();
  v26 = sub_217751DC8();
  sub_21733BE70(v136);
  sub_21733CAD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  if (swift_dynamicCast())
  {
    v123 = v26;
    sub_2171F3F0C(v131, v132);
    v27 = v133;
    v28 = v134;
    __swift_project_boxed_opaque_existential_1(v132, v133);
    v29 = v125;
    v30 = (*(v28 + 16))(v137, v27, v28);
    v31 = v124;
    v125 = v29;
    if (v29)
    {

LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v137);
      (*(v31 + 8))(v115, v118);
LABEL_29:
      v59 = v23;
LABEL_30:
      sub_21733CA78(v59, type metadata accessor for CloudGenre);
      __swift_destroy_boxed_opaque_existential_1(v132);
      goto LABEL_31;
    }

    v116 = v30;
    LOBYTE(v131[0]) = 4;
    v37 = v118;
    v38 = v115;
    if (sub_217752EC8())
    {

      LOBYTE(v130[0]) = 4;
      v39 = v125;
      sub_217752E08();
      v125 = v39;
      if (v39)
      {
        goto LABEL_28;
      }

      v43 = v133;
      v44 = v134;
      __swift_project_boxed_opaque_existential_1(v132, v133);
      v45 = v125;
      v46 = (*(v44 + 24))(v131, v43, v44);
      v125 = v45;
      if (v45)
      {
LABEL_36:

        v65 = v131;
LABEL_37:
        __swift_destroy_boxed_opaque_existential_1(v65);
        goto LABEL_10;
      }

      v24 = v46;
      __swift_destroy_boxed_opaque_existential_1(v131);
    }

    LOBYTE(v131[0]) = 5;
    v37 = v118;
    v38 = v115;
    if (sub_217752EC8())
    {

      LOBYTE(v130[0]) = 5;
      v58 = v125;
      sub_217752E08();
      v125 = v58;
      if (v58)
      {
LABEL_28:

        __swift_destroy_boxed_opaque_existential_1(v137);
        (*(v31 + 8))(v38, v37);
        goto LABEL_29;
      }

      v61 = v133;
      v62 = v134;
      __swift_project_boxed_opaque_existential_1(v132, v133);
      v63 = v125;
      v64 = (*(v62 + 32))(v131, v61, v62);
      v125 = v63;
      if (v63)
      {
        goto LABEL_36;
      }

      v25 = v64;
      __swift_destroy_boxed_opaque_existential_1(v131);
    }

    LOBYTE(v130[0]) = 6;
    v37 = v118;
    v38 = v115;
    if (sub_217752EC8())
    {

      LOBYTE(v130[0]) = 6;
      v83 = v125;
      sub_217752E08();
      v125 = v83;
      if (v83)
      {
        goto LABEL_28;
      }

      sub_2171FF30C(v129, v127);
      v86 = v125;
      CloudResourceCustomMetadata.init(from:)(v127, v130);
      v125 = v86;
      if (v86)
      {

        v65 = v129;
        goto LABEL_37;
      }

      memcpy(v128, v130, sizeof(v128));
      v108 = v133;
      v109 = v134;
      __swift_project_boxed_opaque_existential_1(v132, v133);
      v110 = sub_217383B34(&unk_28295F078);
      v111 = v125;
      v112 = (*(v109 + 40))(v129, v110, v108, v109);
      v125 = v111;
      if (v111)
      {

        sub_21733BED8(v128);
        __swift_destroy_boxed_opaque_existential_1(v129);
        __swift_destroy_boxed_opaque_existential_1(v137);
        (*(v31 + 8))(v115, v118);
        v59 = v121;
        goto LABEL_30;
      }

      v123 = v112;
      __swift_destroy_boxed_opaque_existential_1(v129);

      memcpy(v126, v128, sizeof(v126));
      nullsub_1();
      v84 = v126;
    }

    else
    {
      v84 = v136;
    }

    memcpy(v131, v84, sizeof(v131));
    __swift_destroy_boxed_opaque_existential_1(v132);
    v85 = v131;
    goto LABEL_53;
  }

  memset(v131, 0, 40);
  sub_2171F0738(v131, &qword_27CB25588, &unk_21775D380);
  sub_2171FF30C(v137, v131);
  sub_21733CAD0();
  v32 = v125;
  sub_217385A68(v131);
  v31 = v124;
  v125 = v32;
  if (v32)
  {

LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(v137);
    v34 = *(v31 + 8);
    v35 = v115;
LABEL_14:
    v36 = v118;
LABEL_42:
    v34(v35, v36);
    sub_21733CA78(v23, type metadata accessor for CloudGenre);
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  v116 = v33;
  v123 = v26;
  LOBYTE(v131[0]) = 4;
  v40 = v118;
  v41 = v115;
  if (sub_217752EC8())
  {

    LOBYTE(v130[0]) = 4;
    v42 = v125;
    sub_217752E08();
    v125 = v42;
    if (v42)
    {
      goto LABEL_41;
    }

    sub_2171FF30C(v131, v130);
    v49 = sub_2173838A4(&unk_28295EEB8, v47, v48);
    v50 = v125;
    v56 = Dictionary<>.init(from:skippingValuesFor:)(v130, v49, v51, v52, v53, v54, v55);
    v125 = v50;
    if (v50)
    {

      v57 = v131;
LABEL_76:
      __swift_destroy_boxed_opaque_existential_1(v57);
      goto LABEL_13;
    }

    v24 = v56;
    __swift_destroy_boxed_opaque_existential_1(v131);
  }

  LOBYTE(v131[0]) = 5;
  v40 = v118;
  v41 = v115;
  if (sub_217752EC8())
  {

    LOBYTE(v130[0]) = 5;
    v66 = v125;
    sub_217752E08();
    v125 = v66;
    if (v66)
    {
LABEL_41:

      __swift_destroy_boxed_opaque_existential_1(v137);
      v34 = *(v31 + 8);
      v35 = v41;
      v36 = v40;
      goto LABEL_42;
    }

    sub_2171FF30C(v131, v130);
    if (qword_27CB23D60 != -1)
    {
      swift_once();
    }

    sub_217383748(qword_27CB2AA78, v67, v68, v69, v70, v71, v72, v73, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126[0], v126[1], v126[2], v126[3], v126[4], v126[5]);
    v74 = v125;
    v81 = Dictionary<>.init(from:skippingValuesFor:)(v130, v75, v76, v77, v78, v79, v80);
    v82 = v115;
    v125 = v74;
    if (v74)
    {

      __swift_destroy_boxed_opaque_existential_1(v131);
      __swift_destroy_boxed_opaque_existential_1(v137);
      v34 = *(v31 + 8);
      v35 = v82;
      goto LABEL_14;
    }

    v25 = v81;
    __swift_destroy_boxed_opaque_existential_1(v131);
  }

  LOBYTE(v131[0]) = 6;
  v40 = v118;
  v41 = v115;
  if ((sub_217752EC8() & 1) == 0)
  {
    memcpy(v135, v136, sizeof(v135));
    goto LABEL_61;
  }

  LOBYTE(v131[0]) = 6;
  v87 = v125;
  sub_217752E08();
  v125 = v87;
  if (v87)
  {
    goto LABEL_41;
  }

  sub_2171FF30C(v126, v132);
  v107 = v125;
  CloudResourceCustomMetadata.init(from:)(v132, v131);
  v125 = v107;
  if (v107)
  {

LABEL_75:
    v57 = v126;
    goto LABEL_76;
  }

  memcpy(v130, v131, sizeof(v130));
  sub_2171FF30C(v126, v129);
  sub_217221020(*(v23 + SLODWORD(v117[2].Kind)));
  sub_217383B34(&unk_28295F078);
  v113 = v125;
  sub_217387D1C();
  v125 = v113;
  if (v113)
  {

    sub_21733BED8(v130);
    goto LABEL_75;
  }

  v123 = v114;
  __swift_destroy_boxed_opaque_existential_1(v126);
  memcpy(v128, v130, sizeof(v128));
  nullsub_1();
  v85 = v128;
LABEL_53:
  memcpy(v135, v85, sizeof(v135));
  v40 = v118;
LABEL_61:
  LOBYTE(v131[0]) = 2;
  v88 = v115;
  if (sub_217752EC8())
  {
    LOBYTE(v131[0]) = 2;
    v89 = v125;
    v90 = sub_217752E68();
    v125 = v89;
    if (v89)
    {

      sub_2171F0738(v135, &qword_27CB25620, &qword_21776A5F0);

      __swift_destroy_boxed_opaque_existential_1(v137);
      (*(v31 + 8))(v88, v40);
LABEL_4:
      sub_21733CA78(v121, type metadata accessor for CloudGenre);
      v18 = 0;
      v16 = v119;
      v19 = v120;
      goto LABEL_32;
    }

    v92 = v90;
    v93 = v91;
    v124 = v24;
  }

  else
  {
    v124 = v24;
    v92 = 0;
    v93 = 0;
  }

  v94 = v121;
  v16 = v119;
  v95 = sub_21733CAD0();
  LOBYTE(v130[0]) = 1;
  sub_21733BE84(v95, v96, v97);
  v98 = v118;
  v99 = v115;
  v100 = v125;
  sub_217752EA8();
  v125 = v100;
  if (!v100)
  {
    __swift_destroy_boxed_opaque_existential_1(v137);
    (*(v31 + 8))(v99, v98);
    sub_21733CA78(v94, type metadata accessor for CloudGenre);
    v101 = *(&v131[0] + 1);
    v102 = v131[1];
    v103 = *(&v115 + 1);
    v104 = &v16[*(*(&v115 + 1) + 36)];
    *v104 = *&v131[0];
    *(v104 + 1) = v101;
    v104[16] = v102;
    v105 = &v16[v103[10]];
    *v105 = v92;
    *(v105 + 1) = v93;
    memcpy(&v16[v103[11]], v135, 0x180uLL);
    *&v16[v103[12]] = v116;
    v106 = v123;
    *&v16[v103[13]] = v124;
    *&v16[v103[14]] = v25;
    *&v16[v103[15]] = v106;
    sub_21726A630(v16, v122, &qword_27CB24768, &qword_217758CF0);
    __swift_destroy_boxed_opaque_existential_1(v120);
    return sub_2171F0738(v16, &qword_27CB24768, &qword_217758CF0);
  }

  sub_2171F0738(v135, &qword_27CB25620, &qword_21776A5F0);

  __swift_destroy_boxed_opaque_existential_1(v137);
  (*(v31 + 8))(v99, v98);
  sub_21733CA78(v94, type metadata accessor for CloudGenre);
  v18 = 1;
  v19 = v120;
LABEL_32:
  result = __swift_destroy_boxed_opaque_existential_1(v19);
  if (v18)
  {
    return sub_21733CA78(v16, type metadata accessor for CloudGenre);
  }

  return result;
}

uint64_t sub_217319464@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  v3 = type metadata accessor for CloudAlbum.Attributes(0);
  MEMORY[0x28223BE20](v3 - 8);
  v119 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25708, &qword_21775D850);
  v120 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v110 - v6;
  v8 = type metadata accessor for CloudAlbum(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v110 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F0, &qword_21775D360);
  MEMORY[0x28223BE20](v14);
  v16 = &v110 - v15;
  sub_2171FF30C(a1, v132);
  v17 = v121;
  CloudAlbum.init(from:)(v132, v18, v19, v20, v21, v22, v23, v24, v110, v111, SWORD2(v111), SBYTE6(v111), SHIBYTE(v111), v112, v113, v114, v115, v116, v117, v118, v119, v120, v121);
  v121 = v17;
  if (v17)
  {
    v25 = 0;
    v26 = a1;
    goto LABEL_31;
  }

  v112 = v10;
  v113 = v8;
  v111 = v14;
  v114 = v5;
  v115 = v16;
  v116 = a1;
  v117 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25570, &qword_21775D370);
  sub_21733CCD4(qword_280BE4350, &qword_27CB25570, &qword_21775D370);
  v27 = v121;
  sub_2177532C8();
  v121 = v27;
  if (v27)
  {
    goto LABEL_4;
  }

  sub_217751DC8();

  v134 = 3;
  v28 = v114;
  v29 = v121;
  sub_217752E08();
  v26 = v116;
  v30 = v117;
  v121 = v29;
  if (v29)
  {
    (*(v120 + 8))(v7, v28);
    sub_21733CA78(v30, type metadata accessor for CloudAlbum);
LABEL_30:
    v25 = 0;
    v16 = v115;
    goto LABEL_31;
  }

  v110 = v7;
  v31 = sub_217751DC8();
  v32 = sub_217751DC8();
  v33 = sub_217751DC8();
  sub_21733BE70(v132);
  sub_21733CAD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  if (swift_dynamicCast())
  {
    v119 = v33;
    sub_2171F3F0C(v127, v128);
    v34 = v129;
    v35 = v130;
    __swift_project_boxed_opaque_existential_1(v128, v129);
    v36 = v121;
    v37 = (*(v35 + 16))(v133, v34, v35);
    v38 = v120;
    v121 = v36;
    if (v36)
    {

LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v133);
      (*(v38 + 8))(v110, v114);
LABEL_28:
      v60 = v30;
LABEL_29:
      sub_21733CA78(v60, type metadata accessor for CloudAlbum);
      __swift_destroy_boxed_opaque_existential_1(v128);
      goto LABEL_30;
    }

    v112 = v37;
    LOBYTE(v127[0]) = 4;
    v41 = v114;
    v42 = v110;
    if (sub_217752EC8())
    {

      LOBYTE(v125[0]) = 4;
      v43 = v121;
      sub_217752E08();
      v121 = v43;
      if (v43)
      {
        goto LABEL_27;
      }

      v47 = v129;
      v48 = v130;
      __swift_project_boxed_opaque_existential_1(v128, v129);
      v49 = v121;
      v50 = (*(v48 + 24))(v127, v47, v48);
      v121 = v49;
      if (v49)
      {
LABEL_35:

        v66 = v127;
LABEL_36:
        __swift_destroy_boxed_opaque_existential_1(v66);
        goto LABEL_10;
      }

      v31 = v50;
      __swift_destroy_boxed_opaque_existential_1(v127);
    }

    LOBYTE(v127[0]) = 5;
    v41 = v114;
    v42 = v110;
    if (sub_217752EC8())
    {

      LOBYTE(v125[0]) = 5;
      v59 = v121;
      sub_217752E08();
      v121 = v59;
      if (v59)
      {
LABEL_27:

        __swift_destroy_boxed_opaque_existential_1(v133);
        (*(v38 + 8))(v42, v41);
        goto LABEL_28;
      }

      v62 = v129;
      v63 = v130;
      __swift_project_boxed_opaque_existential_1(v128, v129);
      v64 = v121;
      v65 = (*(v63 + 32))(v127, v62, v63);
      v121 = v64;
      if (v64)
      {
        goto LABEL_35;
      }

      v32 = v65;
      __swift_destroy_boxed_opaque_existential_1(v127);
    }

    LOBYTE(v125[0]) = 6;
    v41 = v114;
    v42 = v110;
    if (sub_217752EC8())
    {

      LOBYTE(v125[0]) = 6;
      v77 = v121;
      sub_217752E08();
      v121 = v77;
      if (v77)
      {
        goto LABEL_27;
      }

      sub_2171FF30C(v126, v124);
      v80 = v121;
      CloudResourceCustomMetadata.init(from:)(v124, v125);
      v121 = v80;
      if (v80)
      {

        v66 = v126;
        goto LABEL_36;
      }

      memcpy(v123, v125, sizeof(v123));
      v102 = v129;
      v103 = v130;
      __swift_project_boxed_opaque_existential_1(v128, v129);
      v104 = sub_217383B34(&unk_28295F078);
      v105 = v121;
      v106 = (*(v103 + 40))(v126, v104, v102, v103);
      v121 = v105;
      if (v105)
      {

        sub_21733BED8(v123);
        __swift_destroy_boxed_opaque_existential_1(v126);
        __swift_destroy_boxed_opaque_existential_1(v133);
        (*(v38 + 8))(v110, v114);
        v60 = v117;
        goto LABEL_29;
      }

      v119 = v106;
      __swift_destroy_boxed_opaque_existential_1(v126);

      memcpy(v122, v123, sizeof(v122));
      nullsub_1();
      v78 = v122;
    }

    else
    {
      v78 = v132;
    }

    memcpy(v127, v78, sizeof(v127));
    __swift_destroy_boxed_opaque_existential_1(v128);
    v79 = v127;
    goto LABEL_50;
  }

  memset(v127, 0, 40);
  sub_2171F0738(v127, &qword_27CB25588, &unk_21775D380);
  sub_2171FF30C(v133, v127);
  sub_21733CAD0();
  v39 = v121;
  sub_217385620(v127);
  v38 = v120;
  v121 = v39;
  if (v39)
  {

LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(v133);
    (*(v38 + 8))(v110, v114);
LABEL_41:
    sub_21733CA78(v30, type metadata accessor for CloudAlbum);
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  v119 = v33;
  v112 = v40;
  LOBYTE(v127[0]) = 4;
  v44 = v114;
  v45 = v110;
  if (sub_217752EC8())
  {

    LOBYTE(v125[0]) = 4;
    v46 = v121;
    sub_217752E08();
    v121 = v46;
    if (v46)
    {
      goto LABEL_40;
    }

    sub_2171FF30C(v127, v125);
    v51 = sub_217383708(&unk_28295E588);
    v52 = v121;
    v58 = Dictionary<>.init(from:skippingValuesFor:)(v125, v51, v53, v54, v55, v56, v57);
    v121 = v52;
    if (v52)
    {
LABEL_43:

      v76 = v127;
LABEL_73:
      __swift_destroy_boxed_opaque_existential_1(v76);
      goto LABEL_13;
    }

    v31 = v58;
    __swift_destroy_boxed_opaque_existential_1(v127);
  }

  LOBYTE(v127[0]) = 5;
  v44 = v114;
  v45 = v110;
  if (sub_217752EC8())
  {

    LOBYTE(v125[0]) = 5;
    v67 = v121;
    sub_217752E08();
    v121 = v67;
    if (v67)
    {
LABEL_40:

      __swift_destroy_boxed_opaque_existential_1(v133);
      (*(v38 + 8))(v45, v44);
      goto LABEL_41;
    }

    sub_2171FF30C(v127, v125);
    v68 = sub_2173839EC(&unk_28295E650);
    v69 = v121;
    v75 = Dictionary<>.init(from:skippingValuesFor:)(v125, v68, v70, v71, v72, v73, v74);
    v121 = v69;
    if (v69)
    {
      goto LABEL_43;
    }

    v32 = v75;
    __swift_destroy_boxed_opaque_existential_1(v127);
  }

  LOBYTE(v127[0]) = 6;
  v44 = v114;
  v45 = v110;
  if ((sub_217752EC8() & 1) == 0)
  {
    memcpy(v131, v132, sizeof(v131));
    goto LABEL_58;
  }

  LOBYTE(v127[0]) = 6;
  v81 = v121;
  sub_217752E08();
  v121 = v81;
  if (v81)
  {
    goto LABEL_40;
  }

  sub_2171FF30C(v128, v126);
  v101 = v121;
  CloudResourceCustomMetadata.init(from:)(v126, v127);
  v121 = v101;
  if (v101)
  {

LABEL_72:
    v76 = v128;
    goto LABEL_73;
  }

  memcpy(v125, v127, sizeof(v125));
  sub_2171FF30C(v128, v124);
  sub_21726A630(v30 + *(v113 + 32), v122, &qword_27CB243C0, &unk_21775D3A0);
  v107 = sub_217383B34(&unk_28295F078);
  v108 = v121;
  sub_217387350(v124, v122, v107);
  v121 = v108;
  if (v108)
  {

    sub_21733BED8(v125);
    goto LABEL_72;
  }

  v119 = v109;
  __swift_destroy_boxed_opaque_existential_1(v128);
  memcpy(v123, v125, sizeof(v123));
  nullsub_1();
  v79 = v123;
LABEL_50:
  memcpy(v131, v79, sizeof(v131));
  v44 = v114;
LABEL_58:
  LOBYTE(v127[0]) = 2;
  v82 = v110;
  if (sub_217752EC8())
  {
    LOBYTE(v127[0]) = 2;
    v83 = v121;
    v84 = sub_217752E68();
    v121 = v83;
    if (v83)
    {

      sub_2171F0738(v131, &qword_27CB25620, &qword_21776A5F0);

      __swift_destroy_boxed_opaque_existential_1(v133);
      (*(v38 + 8))(v82, v44);
LABEL_4:
      sub_21733CA78(v117, type metadata accessor for CloudAlbum);
      v25 = 0;
      v16 = v115;
      v26 = v116;
      goto LABEL_31;
    }

    v86 = v84;
    v87 = v85;
    v120 = v32;
  }

  else
  {
    v120 = v32;
    v86 = 0;
    v87 = 0;
  }

  v88 = v117;
  v16 = v115;
  v89 = sub_21733CAD0();
  LOBYTE(v125[0]) = 1;
  sub_21733BE84(v89, v90, v91);
  v92 = v114;
  v93 = v110;
  v94 = v121;
  sub_217752EA8();
  v121 = v94;
  if (!v94)
  {
    __swift_destroy_boxed_opaque_existential_1(v133);
    (*(v38 + 8))(v93, v92);
    sub_21733CA78(v88, type metadata accessor for CloudAlbum);
    v95 = *(&v127[0] + 1);
    v96 = v127[1];
    v97 = v111;
    v98 = &v16[v111[9]];
    *v98 = *&v127[0];
    *(v98 + 1) = v95;
    v98[16] = v96;
    v99 = &v16[v97[10]];
    *v99 = v86;
    *(v99 + 1) = v87;
    memcpy(&v16[v97[11]], v131, 0x180uLL);
    *&v16[v97[12]] = v112;
    *&v16[v97[13]] = v31;
    v100 = v119;
    *&v16[v97[14]] = v120;
    *&v16[v97[15]] = v100;
    sub_21726A630(v16, v118, &qword_27CB247F0, &qword_21775D360);
    __swift_destroy_boxed_opaque_existential_1(v116);
    return sub_2171F0738(v16, &qword_27CB247F0, &qword_21775D360);
  }

  sub_2171F0738(v131, &qword_27CB25620, &qword_21776A5F0);

  __swift_destroy_boxed_opaque_existential_1(v133);
  (*(v38 + 8))(v93, v92);
  sub_21733CA78(v88, type metadata accessor for CloudAlbum);
  v25 = 1;
  v26 = v116;
LABEL_31:
  result = __swift_destroy_boxed_opaque_existential_1(v26);
  if (v25)
  {
    return sub_21733CA78(v16, type metadata accessor for CloudAlbum);
  }

  return result;
}

uint64_t sub_21731A338@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  v3 = type metadata accessor for CloudSong.Attributes(0);
  MEMORY[0x28223BE20](v3 - 8);
  v124 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25740, &qword_21775D868);
  v125 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v116 - v6;
  v8 = type metadata accessor for CloudSong(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v116 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
  MEMORY[0x28223BE20](v14);
  v16 = &v116 - v15;
  sub_2171FF30C(a1, v137);
  v17 = v126;
  CloudSong.init(from:)();
  v126 = v17;
  if (v17)
  {
    v18 = 0;
    v19 = a1;
    goto LABEL_32;
  }

  v117 = v10;
  v118 = v8;
  *(&v116 + 1) = v14;
  v119 = v5;
  v120 = v16;
  v121 = a1;
  v122 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25718, &qword_21775D860);
  sub_21733CCD4(&qword_27CB25720, &qword_27CB25718, &qword_21775D860);
  v20 = v126;
  sub_2177532C8();
  v126 = v20;
  if (v20)
  {
    goto LABEL_4;
  }

  sub_217751DC8();

  v141 = 3;
  v21 = v119;
  v22 = v126;
  sub_217752E08();
  v19 = v121;
  v23 = v122;
  v126 = v22;
  if (v22)
  {
    (*(v125 + 8))(v7, v21);
    sub_21733CA78(v23, type metadata accessor for CloudSong);
LABEL_31:
    v18 = 0;
    v16 = v120;
    goto LABEL_32;
  }

  *&v116 = v7;
  v24 = sub_217751DC8();
  v25 = sub_217751DC8();
  v26 = sub_217751DC8();
  sub_21733BE70(v137);
  sub_21733CAD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  if (swift_dynamicCast())
  {
    v124 = v26;
    sub_2171F3F0C(v132, v133);
    v27 = v134;
    v28 = v135;
    __swift_project_boxed_opaque_existential_1(v133, v134);
    v29 = v126;
    v30 = (*(v28 + 16))(v138, v27, v28);
    v31 = v125;
    v126 = v29;
    if (v29)
    {

LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v138);
      (*(v31 + 8))(v116, v119);
LABEL_29:
      v58 = v23;
LABEL_30:
      sub_21733CA78(v58, type metadata accessor for CloudSong);
      __swift_destroy_boxed_opaque_existential_1(v133);
      goto LABEL_31;
    }

    v117 = v30;
    LOBYTE(v132[0]) = 4;
    v37 = v119;
    v38 = v116;
    if (sub_217752EC8())
    {

      LOBYTE(v131[0]) = 4;
      v39 = v126;
      sub_217752E08();
      v126 = v39;
      if (v39)
      {
        goto LABEL_28;
      }

      v43 = v134;
      v44 = v135;
      __swift_project_boxed_opaque_existential_1(v133, v134);
      v45 = v126;
      v46 = (*(v44 + 24))(v132, v43, v44);
      v126 = v45;
      if (v45)
      {
LABEL_36:

        v64 = v132;
LABEL_37:
        __swift_destroy_boxed_opaque_existential_1(v64);
        goto LABEL_10;
      }

      v24 = v46;
      __swift_destroy_boxed_opaque_existential_1(v132);
    }

    LOBYTE(v132[0]) = 5;
    v37 = v119;
    v38 = v116;
    if (sub_217752EC8())
    {

      LOBYTE(v131[0]) = 5;
      v57 = v126;
      sub_217752E08();
      v126 = v57;
      if (v57)
      {
LABEL_28:

        __swift_destroy_boxed_opaque_existential_1(v138);
        (*(v31 + 8))(v38, v37);
        goto LABEL_29;
      }

      v60 = v134;
      v61 = v135;
      __swift_project_boxed_opaque_existential_1(v133, v134);
      v62 = v126;
      v63 = (*(v61 + 32))(v132, v60, v61);
      v126 = v62;
      if (v62)
      {
        goto LABEL_36;
      }

      v25 = v63;
      __swift_destroy_boxed_opaque_existential_1(v132);
    }

    LOBYTE(v131[0]) = 6;
    v37 = v119;
    v38 = v116;
    if (sub_217752EC8())
    {

      LOBYTE(v131[0]) = 6;
      v82 = v126;
      sub_217752E08();
      v126 = v82;
      if (v82)
      {
        goto LABEL_28;
      }

      sub_2171FF30C(v130, v128);
      v85 = v126;
      CloudResourceCustomMetadata.init(from:)(v128, v131);
      v126 = v85;
      if (v85)
      {

        v64 = v130;
        goto LABEL_37;
      }

      memcpy(v129, v131, sizeof(v129));
      v107 = v134;
      v108 = v135;
      __swift_project_boxed_opaque_existential_1(v133, v134);
      v109 = sub_217383B34(&unk_28295F078);
      v110 = v126;
      v111 = (*(v108 + 40))(v130, v109, v107, v108);
      v126 = v110;
      if (v110)
      {

        sub_21733BED8(v129);
        __swift_destroy_boxed_opaque_existential_1(v130);
        __swift_destroy_boxed_opaque_existential_1(v138);
        (*(v31 + 8))(v116, v119);
        v58 = v122;
        goto LABEL_30;
      }

      v124 = v111;
      __swift_destroy_boxed_opaque_existential_1(v130);

      memcpy(v127, v129, sizeof(v127));
      nullsub_1();
      v83 = v127;
    }

    else
    {
      v83 = v137;
    }

    memcpy(v132, v83, sizeof(v132));
    __swift_destroy_boxed_opaque_existential_1(v133);
    v84 = v132;
    goto LABEL_53;
  }

  memset(v132, 0, 40);
  sub_2171F0738(v132, &qword_27CB25588, &unk_21775D380);
  sub_2171FF30C(v138, v132);
  sub_21733CAD0();
  v32 = v126;
  sub_217385938();
  v31 = v125;
  v126 = v32;
  if (v32)
  {

LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(v138);
    v34 = *(v31 + 8);
    v35 = v116;
LABEL_14:
    v36 = v119;
LABEL_42:
    v34(v35, v36);
    sub_21733CA78(v23, type metadata accessor for CloudSong);
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  v124 = v26;
  v117 = v33;
  LOBYTE(v132[0]) = 4;
  v40 = v119;
  v41 = v116;
  if (sub_217752EC8())
  {

    LOBYTE(v131[0]) = 4;
    v42 = v126;
    sub_217752E08();
    v126 = v42;
    if (v42)
    {
      goto LABEL_41;
    }

    sub_2171FF30C(v132, v131);
    swift_beginAccess();
    v47 = sub_217751DE8();
    v48 = sub_217383824(v47);

    v49 = v126;
    v55 = Dictionary<>.init(from:skippingValuesFor:)(v131, v48, v50, v51, v52, v53, v54);
    v126 = v49;
    if (v49)
    {

      v56 = v132;
LABEL_76:
      __swift_destroy_boxed_opaque_existential_1(v56);
      goto LABEL_13;
    }

    v24 = v55;
    __swift_destroy_boxed_opaque_existential_1(v132);
  }

  LOBYTE(v132[0]) = 5;
  v40 = v119;
  v41 = v116;
  if (sub_217752EC8())
  {

    LOBYTE(v131[0]) = 5;
    v65 = v126;
    sub_217752E08();
    v126 = v65;
    if (v65)
    {
LABEL_41:

      __swift_destroy_boxed_opaque_existential_1(v138);
      v34 = *(v31 + 8);
      v35 = v41;
      v36 = v40;
      goto LABEL_42;
    }

    sub_2171FF30C(v132, v131);
    if (qword_27CB23E08 != -1)
    {
      swift_once();
    }

    sub_217383748(qword_27CB2C158, v66, v67, v68, v69, v70, v71, v72, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127[0], v127[1], v127[2], v127[3], v127[4], v127[5]);
    v73 = v126;
    v80 = Dictionary<>.init(from:skippingValuesFor:)(v131, v74, v75, v76, v77, v78, v79);
    v81 = v116;
    v126 = v73;
    if (v73)
    {

      __swift_destroy_boxed_opaque_existential_1(v132);
      __swift_destroy_boxed_opaque_existential_1(v138);
      v34 = *(v31 + 8);
      v35 = v81;
      goto LABEL_14;
    }

    v25 = v80;
    __swift_destroy_boxed_opaque_existential_1(v132);
  }

  LOBYTE(v132[0]) = 6;
  v40 = v119;
  v41 = v116;
  if ((sub_217752EC8() & 1) == 0)
  {
    memcpy(v136, v137, sizeof(v136));
    goto LABEL_61;
  }

  LOBYTE(v132[0]) = 6;
  v86 = v126;
  sub_217752E08();
  v126 = v86;
  if (v86)
  {
    goto LABEL_41;
  }

  sub_2171FF30C(v127, v133);
  v106 = v126;
  CloudResourceCustomMetadata.init(from:)(v133, v132);
  v126 = v106;
  if (v106)
  {

LABEL_75:
    v56 = v127;
    goto LABEL_76;
  }

  memcpy(v131, v132, sizeof(v131));
  sub_2171FF30C(v127, v130);
  v112 = v23 + SLODWORD(v118[2].Kind);
  v140 = *(v112 + 32);
  v113 = *(v112 + 16);
  v139[0] = *v112;
  v139[1] = v113;
  sub_21726A630(v139, v129, &qword_27CB25748, &qword_21775D870);
  sub_217383B34(&unk_28295F078);
  v114 = v126;
  sub_217387700();
  v126 = v114;
  if (v114)
  {

    sub_21733BED8(v131);
    goto LABEL_75;
  }

  v124 = v115;
  __swift_destroy_boxed_opaque_existential_1(v127);
  memcpy(v129, v131, sizeof(v129));
  nullsub_1();
  v84 = v129;
LABEL_53:
  memcpy(v136, v84, sizeof(v136));
  v40 = v119;
LABEL_61:
  LOBYTE(v132[0]) = 2;
  v87 = v116;
  if (sub_217752EC8())
  {
    LOBYTE(v132[0]) = 2;
    v88 = v126;
    v89 = sub_217752E68();
    v126 = v88;
    if (v88)
    {

      sub_2171F0738(v136, &qword_27CB25620, &qword_21776A5F0);

      __swift_destroy_boxed_opaque_existential_1(v138);
      (*(v31 + 8))(v87, v40);
LABEL_4:
      sub_21733CA78(v122, type metadata accessor for CloudSong);
      v18 = 0;
      v16 = v120;
      v19 = v121;
      goto LABEL_32;
    }

    v91 = v89;
    v92 = v90;
    v125 = v25;
  }

  else
  {
    v125 = v25;
    v91 = 0;
    v92 = 0;
  }

  v93 = v122;
  v16 = v120;
  v94 = sub_21733CAD0();
  LOBYTE(v131[0]) = 1;
  sub_21733BE84(v94, v95, v96);
  v97 = v119;
  v98 = v116;
  v99 = v126;
  sub_217752EA8();
  v126 = v99;
  if (!v99)
  {
    __swift_destroy_boxed_opaque_existential_1(v138);
    (*(v31 + 8))(v98, v97);
    sub_21733CA78(v93, type metadata accessor for CloudSong);
    v100 = *(&v132[0] + 1);
    v101 = v132[1];
    v102 = *(&v116 + 1);
    v103 = &v16[*(*(&v116 + 1) + 36)];
    *v103 = *&v132[0];
    *(v103 + 1) = v100;
    v103[16] = v101;
    v104 = &v16[v102[10]];
    *v104 = v91;
    *(v104 + 1) = v92;
    memcpy(&v16[v102[11]], v136, 0x180uLL);
    *&v16[v102[12]] = v117;
    *&v16[v102[13]] = v24;
    v105 = v124;
    *&v16[v102[14]] = v125;
    *&v16[v102[15]] = v105;
    sub_21726A630(v16, v123, &qword_27CB24748, &unk_217758CD0);
    __swift_destroy_boxed_opaque_existential_1(v121);
    return sub_2171F0738(v16, &qword_27CB24748, &unk_217758CD0);
  }

  sub_2171F0738(v136, &qword_27CB25620, &qword_21776A5F0);

  __swift_destroy_boxed_opaque_existential_1(v138);
  (*(v31 + 8))(v98, v97);
  sub_21733CA78(v93, type metadata accessor for CloudSong);
  v18 = 1;
  v19 = v121;
LABEL_32:
  result = __swift_destroy_boxed_opaque_existential_1(v19);
  if (v18)
  {
    return sub_21733CA78(v16, type metadata accessor for CloudSong);
  }

  return result;
}

uint64_t sub_21731B2A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v127 = a2;
  v3 = type metadata accessor for CloudRecordLabel.Attributes(0);
  MEMORY[0x28223BE20](v3 - 8);
  v128 = &v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB259D8, &qword_21775DA20);
  v129 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v120 - v6;
  v8 = type metadata accessor for CloudRecordLabel(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v120 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24778, &unk_217758D00);
  MEMORY[0x28223BE20](v14);
  v16 = &v120 - v15;
  sub_2171FF30C(a1, v141);
  v17 = v130;
  CloudRecordLabel.init(from:)(v141, v18, v19, v20, v21, v22, v23, v24, v120, SDWORD2(v120), SWORD6(v120), SBYTE14(v120), SHIBYTE(v120), v121, v122, v123, v124, v125, v126, v127, v128, v129, v130);
  v130 = v17;
  if (v17)
  {
    v25 = 0;
    v26 = a1;
    goto LABEL_34;
  }

  v121 = v10;
  v122 = v8;
  *(&v120 + 1) = v14;
  v123 = v5;
  v124 = v16;
  v125 = a1;
  v126 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB259B0, &qword_21775DA18);
  sub_21733CCD4(&qword_27CB259B8, &qword_27CB259B0, &qword_21775DA18);
  v27 = v130;
  sub_2177532C8();
  v130 = v27;
  if (v27)
  {
    goto LABEL_4;
  }

  sub_217751DC8();

  v143 = 3;
  v28 = v123;
  v29 = v130;
  sub_217752E08();
  v26 = v125;
  v30 = v126;
  v130 = v29;
  if (v29)
  {
    (*(v129 + 8))(v7, v28);
    sub_21733CA78(v30, type metadata accessor for CloudRecordLabel);
LABEL_33:
    v25 = 0;
    v16 = v124;
    goto LABEL_34;
  }

  *&v120 = v7;
  v31 = sub_217751DC8();
  v32 = sub_217751DC8();
  v33 = sub_217751DC8();
  sub_21733BE70(v141);
  sub_21733CAD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  if (swift_dynamicCast())
  {
    v128 = v33;
    sub_2171F3F0C(v136, v137);
    v34 = v138;
    v35 = v139;
    __swift_project_boxed_opaque_existential_1(v137, v138);
    v36 = v130;
    v37 = (*(v35 + 16))(v142, v34, v35);
    v38 = v129;
    v130 = v36;
    if (v36)
    {

LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v142);
      (*(v38 + 8))(v120, v123);
LABEL_31:
      v71 = v30;
LABEL_32:
      sub_21733CA78(v71, type metadata accessor for CloudRecordLabel);
      __swift_destroy_boxed_opaque_existential_1(v137);
      goto LABEL_33;
    }

    v121 = v37;
    LOBYTE(v136[0]) = 4;
    v44 = v123;
    v45 = v120;
    if (sub_217752EC8())
    {

      LOBYTE(v135[0]) = 4;
      v46 = v130;
      sub_217752E08();
      v130 = v46;
      if (v46)
      {
        goto LABEL_30;
      }

      v50 = v138;
      v51 = v139;
      __swift_project_boxed_opaque_existential_1(v137, v138);
      v52 = v130;
      v53 = (*(v51 + 24))(v136, v50, v51);
      v130 = v52;
      if (v52)
      {
LABEL_38:

        v77 = v136;
LABEL_39:
        __swift_destroy_boxed_opaque_existential_1(v77);
        goto LABEL_10;
      }

      v31 = v53;
      __swift_destroy_boxed_opaque_existential_1(v136);
    }

    LOBYTE(v136[0]) = 5;
    v44 = v123;
    v45 = v120;
    if (sub_217752EC8())
    {

      LOBYTE(v135[0]) = 5;
      v70 = v130;
      sub_217752E08();
      v130 = v70;
      if (v70)
      {
LABEL_30:

        __swift_destroy_boxed_opaque_existential_1(v142);
        (*(v38 + 8))(v45, v44);
        goto LABEL_31;
      }

      v73 = v138;
      v74 = v139;
      __swift_project_boxed_opaque_existential_1(v137, v138);
      v75 = v130;
      v76 = (*(v74 + 32))(v136, v73, v74);
      v130 = v75;
      if (v75)
      {
        goto LABEL_38;
      }

      v32 = v76;
      __swift_destroy_boxed_opaque_existential_1(v136);
    }

    LOBYTE(v135[0]) = 6;
    v44 = v123;
    v45 = v120;
    if (sub_217752EC8())
    {

      LOBYTE(v135[0]) = 6;
      v88 = v130;
      sub_217752E08();
      v130 = v88;
      if (v88)
      {
        goto LABEL_30;
      }

      sub_2171FF30C(v134, v132);
      v91 = v130;
      CloudResourceCustomMetadata.init(from:)(v132, v135);
      v130 = v91;
      if (v91)
      {

        v77 = v134;
        goto LABEL_39;
      }

      memcpy(v133, v135, sizeof(v133));
      v113 = v138;
      v114 = v139;
      __swift_project_boxed_opaque_existential_1(v137, v138);
      v115 = sub_217383B34(&unk_28295F078);
      v116 = v130;
      v117 = (*(v114 + 40))(v134, v115, v113, v114);
      v130 = v116;
      if (v116)
      {

        sub_21733BED8(v133);
        __swift_destroy_boxed_opaque_existential_1(v134);
        __swift_destroy_boxed_opaque_existential_1(v142);
        (*(v38 + 8))(v120, v123);
        v71 = v126;
        goto LABEL_32;
      }

      v128 = v117;
      __swift_destroy_boxed_opaque_existential_1(v134);

      memcpy(v131, v133, sizeof(v131));
      nullsub_1();
      v89 = v131;
    }

    else
    {
      v89 = v141;
    }

    memcpy(v136, v89, sizeof(v136));
    __swift_destroy_boxed_opaque_existential_1(v137);
    v90 = v136;
    goto LABEL_53;
  }

  memset(v136, 0, 40);
  sub_2171F0738(v136, &qword_27CB25588, &unk_21775D380);
  sub_2171FF30C(v142, v136);
  sub_21733CAD0();
  v39 = v130;
  sub_217385F58();
  v38 = v129;
  v130 = v39;
  if (v39)
  {

LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(v142);
    v41 = *(v38 + 8);
    v42 = v120;
LABEL_14:
    v43 = v123;
LABEL_44:
    v41(v42, v43);
    sub_21733CA78(v30, type metadata accessor for CloudRecordLabel);
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  v121 = v40;
  v128 = v33;
  LOBYTE(v136[0]) = 4;
  v47 = v123;
  v48 = v120;
  if (sub_217752EC8())
  {

    LOBYTE(v135[0]) = 4;
    v49 = v130;
    sub_217752E08();
    v130 = v49;
    if (v49)
    {
      goto LABEL_43;
    }

    sub_2171FF30C(v136, v135);
    if (qword_27CB23D88 != -1)
    {
      swift_once();
    }

    sub_217383748(qword_27CB2B198, v54, v55, v56, v57, v58, v59, v60, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131[0], v131[1], v131[2], v131[3], v131[4], v131[5]);
    v61 = v130;
    v68 = Dictionary<>.init(from:skippingValuesFor:)(v135, v62, v63, v64, v65, v66, v67);
    v69 = v120;
    v130 = v61;
    if (v61)
    {

      __swift_destroy_boxed_opaque_existential_1(v136);
      __swift_destroy_boxed_opaque_existential_1(v142);
      v41 = *(v38 + 8);
      v42 = v69;
      goto LABEL_14;
    }

    v31 = v68;
    __swift_destroy_boxed_opaque_existential_1(v136);
  }

  LOBYTE(v136[0]) = 5;
  v47 = v123;
  v48 = v120;
  if (sub_217752EC8())
  {

    LOBYTE(v135[0]) = 5;
    v78 = v130;
    sub_217752E08();
    v130 = v78;
    if (v78)
    {
LABEL_43:

      __swift_destroy_boxed_opaque_existential_1(v142);
      v41 = *(v38 + 8);
      v42 = v48;
      v43 = v47;
      goto LABEL_44;
    }

    sub_2171FF30C(v136, v135);
    v79 = sub_217383A6C(&unk_28295F050);
    v80 = v130;
    v86 = Dictionary<>.init(from:skippingValuesFor:)(v135, v79, v81, v82, v83, v84, v85);
    v130 = v80;
    if (v80)
    {

      v87 = v136;
LABEL_76:
      __swift_destroy_boxed_opaque_existential_1(v87);
      goto LABEL_13;
    }

    v32 = v86;
    __swift_destroy_boxed_opaque_existential_1(v136);
  }

  LOBYTE(v136[0]) = 6;
  v47 = v123;
  v48 = v120;
  if ((sub_217752EC8() & 1) == 0)
  {
    memcpy(v140, v141, sizeof(v140));
    goto LABEL_61;
  }

  LOBYTE(v136[0]) = 6;
  v92 = v130;
  sub_217752E08();
  v130 = v92;
  if (v92)
  {
    goto LABEL_43;
  }

  sub_2171FF30C(v131, v137);
  v112 = v130;
  CloudResourceCustomMetadata.init(from:)(v137, v136);
  v130 = v112;
  if (v112)
  {

LABEL_75:
    v87 = v131;
    goto LABEL_76;
  }

  memcpy(v135, v136, sizeof(v135));
  sub_2171FF30C(v131, v134);
  sub_217221020(*(v30 + SLODWORD(v122[2].Kind)));
  sub_217383B34(&unk_28295F078);
  v118 = v130;
  sub_217388124();
  v130 = v118;
  if (v118)
  {

    sub_21733BED8(v135);
    goto LABEL_75;
  }

  v128 = v119;
  __swift_destroy_boxed_opaque_existential_1(v131);
  memcpy(v133, v135, sizeof(v133));
  nullsub_1();
  v90 = v133;
LABEL_53:
  memcpy(v140, v90, sizeof(v140));
  v47 = v123;
LABEL_61:
  LOBYTE(v136[0]) = 2;
  v93 = v120;
  if (sub_217752EC8())
  {
    LOBYTE(v136[0]) = 2;
    v94 = v130;
    v95 = sub_217752E68();
    v130 = v94;
    if (v94)
    {

      sub_2171F0738(v140, &qword_27CB25620, &qword_21776A5F0);

      __swift_destroy_boxed_opaque_existential_1(v142);
      (*(v38 + 8))(v93, v47);
LABEL_4:
      sub_21733CA78(v126, type metadata accessor for CloudRecordLabel);
      v25 = 0;
      v16 = v124;
      v26 = v125;
      goto LABEL_34;
    }

    v97 = v95;
    v98 = v96;
    v129 = v32;
  }

  else
  {
    v129 = v32;
    v97 = 0;
    v98 = 0;
  }

  v99 = v126;
  v16 = v124;
  v100 = sub_21733CAD0();
  LOBYTE(v135[0]) = 1;
  sub_21733BE84(v100, v101, v102);
  v103 = v123;
  v104 = v120;
  v105 = v130;
  sub_217752EA8();
  v130 = v105;
  if (!v105)
  {
    __swift_destroy_boxed_opaque_existential_1(v142);
    (*(v38 + 8))(v104, v103);
    sub_21733CA78(v99, type metadata accessor for CloudRecordLabel);
    v106 = *(&v136[0] + 1);
    v107 = v136[1];
    v108 = *(&v120 + 1);
    v109 = &v16[*(*(&v120 + 1) + 36)];
    *v109 = *&v136[0];
    *(v109 + 1) = v106;
    v109[16] = v107;
    v110 = &v16[v108[10]];
    *v110 = v97;
    *(v110 + 1) = v98;
    memcpy(&v16[v108[11]], v140, 0x180uLL);
    *&v16[v108[12]] = v121;
    *&v16[v108[13]] = v31;
    v111 = v128;
    *&v16[v108[14]] = v129;
    *&v16[v108[15]] = v111;
    sub_21726A630(v16, v127, &qword_27CB24778, &unk_217758D00);
    __swift_destroy_boxed_opaque_existential_1(v125);
    return sub_2171F0738(v16, &qword_27CB24778, &unk_217758D00);
  }

  sub_2171F0738(v140, &qword_27CB25620, &qword_21776A5F0);

  __swift_destroy_boxed_opaque_existential_1(v142);
  (*(v38 + 8))(v104, v103);
  sub_21733CA78(v99, type metadata accessor for CloudRecordLabel);
  v25 = 1;
  v26 = v125;
LABEL_34:
  result = __swift_destroy_boxed_opaque_existential_1(v26);
  if (v25)
  {
    return sub_21733CA78(v16, type metadata accessor for CloudRecordLabel);
  }

  return result;
}

uint64_t sub_21731C1C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB258F0, &unk_21775D978);
  v69 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v58 - v5;
  v7 = type metadata accessor for CloudTrack(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24820, &unk_2177650E0);
  MEMORY[0x28223BE20](v10);
  v12 = &v58 - v11;
  sub_2171FF30C(a1, v80);
  CloudTrack.init(from:)();
  v70 = v2;
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v63 = v12;
  v64 = v7;
  v62 = v10;
  v65 = v4;
  v66 = a1;
  v67 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB258E0, &qword_21775D970);
  sub_21733CCD4(&qword_27CB258E8, &qword_27CB258E0, &qword_21775D970);
  v13 = v70;
  sub_2177532C8();
  v70 = v13;
  if (v13)
  {
    v14 = v67;
LABEL_6:
    sub_21733CA78(v14, type metadata accessor for CloudTrack);
    a1 = v66;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v6;
  sub_217751DC8();

  v82 = 3;
  v16 = v65;
  v17 = v70;
  sub_217752E08();
  v18 = v67;
  v70 = v17;
  if (v17)
  {
    (*(v69 + 8))(v6, v16);
    v14 = v18;
    goto LABEL_6;
  }

  v20 = sub_217751DC8();
  v21 = sub_217751DC8();
  v22 = sub_217751DC8();
  sub_21733BE70(v80);
  v78 = v64;
  v79 = &protocol witness table for CloudTrack;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v77);
  sub_21733CAD0();
  __swift_project_boxed_opaque_existential_1(v77, v78);
  v24 = v70;
  CloudTrack.decodeRawAttributes(from:)();
  v26 = v18;
  a1 = v66;
  v70 = v24;
  if (v24)
  {

    __swift_destroy_boxed_opaque_existential_1(v81);
    (*(v69 + 8))(v15, v65);
    v27 = v26;
LABEL_38:
    sub_21733CA78(v27, type metadata accessor for CloudTrack);
    __swift_destroy_boxed_opaque_existential_1(v77);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v60 = boxed_opaque_existential_0;
  v61 = v25;
  v64 = v21;
  LOBYTE(v76[0]) = 4;
  v28 = v65;
  v29 = v15;
  v30 = sub_217752EC8();
  v31 = v69;
  if (v30)
  {

    LOBYTE(v74[0]) = 4;
    v32 = v70;
    sub_217752E08();
    v70 = v32;
    if (v32)
    {

      __swift_destroy_boxed_opaque_existential_1(v81);
      (*(v31 + 8))(v29, v28);
LABEL_37:
      v27 = v67;
      goto LABEL_38;
    }

    v33 = v29;
    CloudTrack.decodeRawRelationships(from:)();
    v70 = 0;
    v59 = v35;
    __swift_destroy_boxed_opaque_existential_1(v76);
  }

  else
  {
    v59 = v20;
    v33 = v29;
  }

  LOBYTE(v76[0]) = 5;
  if (sub_217752EC8())
  {

    LOBYTE(v74[0]) = 5;
    v34 = v70;
    sub_217752E08();
    v70 = v34;
    if (v34)
    {
      goto LABEL_21;
    }

    CloudTrack.decodeRawAssociations(from:)();
    v70 = 0;
    v64 = v36;
    __swift_destroy_boxed_opaque_existential_1(v76);
  }

  LOBYTE(v74[0]) = 6;
  if (sub_217752EC8())
  {

    LOBYTE(v74[0]) = 6;
    v37 = v70;
    sub_217752E08();
    v70 = v37;
    if (v37)
    {
LABEL_21:

LABEL_36:
      __swift_destroy_boxed_opaque_existential_1(v81);
      (*(v31 + 8))(v33, v28);
      goto LABEL_37;
    }

    sub_2171FF30C(v75, v73);
    v44 = v70;
    CloudResourceCustomMetadata.init(from:)(v73, v74);
    v70 = v44;
    if (v44)
    {

LABEL_35:
      __swift_destroy_boxed_opaque_existential_1(v75);
      goto LABEL_36;
    }

    memcpy(v72, v74, sizeof(v72));
    sub_217383B34(&unk_28295F078);
    v56 = v70;
    CloudTrack.decodeRawMetadata(from:skippingValuesFor:)();
    v70 = v56;
    if (v56)
    {

      sub_21733BED8(v72);
      goto LABEL_35;
    }

    v22 = v57;
    __swift_destroy_boxed_opaque_existential_1(v75);

    memcpy(v71, v72, sizeof(v71));
    nullsub_1();
    v38 = v71;
  }

  else
  {
    v38 = v80;
  }

  memcpy(v76, v38, sizeof(v76));
  __swift_destroy_boxed_opaque_existential_1(v77);
  LOBYTE(v74[0]) = 2;
  v39 = v33;
  if (sub_217752EC8())
  {
    LOBYTE(v74[0]) = 2;
    v40 = v70;
    v41 = sub_217752E68();
    v70 = v40;
    if (v40)
    {

      sub_2171F0738(v76, &qword_27CB25620, &qword_21776A5F0);

      __swift_destroy_boxed_opaque_existential_1(v81);
      (*(v31 + 8))(v33, v28);
      sub_21733CA78(v67, type metadata accessor for CloudTrack);
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v43 = v42;
    v60 = v41;
  }

  else
  {
    v60 = 0;
    v43 = 0;
  }

  v45 = v67;
  v46 = v63;
  v47 = sub_21733CAD0();
  v72[0] = 1;
  sub_21733BE84(v47, v48, v49);
  v50 = v70;
  sub_217752EA8();
  v70 = v50;
  if (v50)
  {

    sub_2171F0738(v76, &qword_27CB25620, &qword_21776A5F0);

    __swift_destroy_boxed_opaque_existential_1(v81);
    (*(v31 + 8))(v39, v28);
    sub_21733CA78(v45, type metadata accessor for CloudTrack);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_21733CA78(v46, type metadata accessor for CloudTrack);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v81);
    (*(v31 + 8))(v39, v28);
    sub_21733CA78(v45, type metadata accessor for CloudTrack);
    v51 = v74[1];
    v52 = v74[2];
    v53 = v62;
    v54 = v46 + v62[9];
    *v54 = v74[0];
    *(v54 + 8) = v51;
    *(v54 + 16) = v52;
    v55 = (v46 + v53[10]);
    *v55 = v60;
    v55[1] = v43;
    memcpy((v46 + v53[11]), v76, 0x180uLL);
    *(v46 + v53[12]) = v61;
    *(v46 + v53[13]) = v59;
    *(v46 + v53[14]) = v64;
    *(v46 + v53[15]) = v22;
    sub_21726A630(v46, v68, &qword_27CB24820, &unk_2177650E0);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_2171F0738(v46, &qword_27CB24820, &unk_2177650E0);
  }
}

uint64_t sub_21731CB84@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v3 = type metadata accessor for CloudMusicVideo.Attributes(0);
  MEMORY[0x28223BE20](v3 - 8);
  v111 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25880, &unk_21775D910);
  v112 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v102 - v6;
  v8 = type metadata accessor for CloudMusicVideo(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v102 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  MEMORY[0x28223BE20](v14);
  v16 = &v102 - v15;
  sub_2171FF30C(a1, v124);
  v17 = v113;
  CloudMusicVideo.init(from:)();
  v113 = v17;
  if (v17)
  {
    v18 = 0;
    v19 = a1;
    goto LABEL_31;
  }

  v104 = v10;
  v105 = v8;
  v103 = v14;
  v106 = v5;
  v107 = v16;
  v108 = a1;
  v109 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25858, &qword_21775D908);
  sub_21733CCD4(&qword_27CB25860, &qword_27CB25858, &qword_21775D908);
  v20 = v113;
  sub_2177532C8();
  v113 = v20;
  if (v20)
  {
    goto LABEL_4;
  }

  sub_217751DC8();

  v126 = 3;
  v21 = v106;
  v22 = v113;
  sub_217752E08();
  v19 = v108;
  v23 = v109;
  v113 = v22;
  if (v22)
  {
    (*(v112 + 8))(v7, v21);
    sub_21733CA78(v23, type metadata accessor for CloudMusicVideo);
LABEL_30:
    v18 = 0;
    v16 = v107;
    goto LABEL_31;
  }

  v102 = v7;
  v24 = sub_217751DC8();
  v25 = sub_217751DC8();
  v26 = sub_217751DC8();
  sub_21733BE70(v124);
  sub_21733CAD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v119, 0, 40);
    sub_2171F0738(v119, &qword_27CB25588, &unk_21775D380);
    sub_2171FF30C(v125, v119);
    sub_21733CAD0();
    v31 = v113;
    sub_21738598C();
    v113 = v31;
    if (v31)
    {

LABEL_13:
      __swift_destroy_boxed_opaque_existential_1(v125);
      (*(v112 + 8))(v102, v106);
LABEL_41:
      sub_21733CA78(v23, type metadata accessor for CloudMusicVideo);
      return __swift_destroy_boxed_opaque_existential_1(v19);
    }

    v33 = v32;
    v111 = v26;
    LOBYTE(v119[0]) = 4;
    v37 = v106;
    v38 = v102;
    if (sub_217752EC8())
    {

      LOBYTE(v118[0]) = 4;
      v39 = v113;
      sub_217752E08();
      v113 = v39;
      if (v39)
      {
        goto LABEL_40;
      }

      sub_2171FF30C(v119, v118);
      swift_beginAccess();
      v44 = sub_217751DE8();
      v45 = sub_217383844(v44);

      v46 = v113;
      v52 = Dictionary<>.init(from:skippingValuesFor:)(v118, v45, v47, v48, v49, v50, v51);
      v113 = v46;
      if (v46)
      {
LABEL_43:

        v70 = v119;
        goto LABEL_72;
      }

      v24 = v52;
      __swift_destroy_boxed_opaque_existential_1(v119);
    }

    LOBYTE(v119[0]) = 5;
    v37 = v106;
    v38 = v102;
    if (sub_217752EC8())
    {

      LOBYTE(v118[0]) = 5;
      v61 = v113;
      sub_217752E08();
      v113 = v61;
      if (v61)
      {
LABEL_40:

        __swift_destroy_boxed_opaque_existential_1(v125);
        (*(v112 + 8))(v38, v37);
        goto LABEL_41;
      }

      sub_2171FF30C(v119, v118);
      v62 = sub_217383A2C(&unk_28295F000);
      v63 = v113;
      v69 = Dictionary<>.init(from:skippingValuesFor:)(v118, v62, v64, v65, v66, v67, v68);
      v113 = v63;
      if (v63)
      {
        goto LABEL_43;
      }

      v25 = v69;
      __swift_destroy_boxed_opaque_existential_1(v119);
    }

    LOBYTE(v119[0]) = 6;
    v37 = v106;
    v38 = v102;
    if ((sub_217752EC8() & 1) == 0)
    {
      memcpy(v123, v124, sizeof(v123));
      goto LABEL_57;
    }

    LOBYTE(v119[0]) = 6;
    v74 = v113;
    sub_217752E08();
    v113 = v74;
    if (v74)
    {
      goto LABEL_40;
    }

    sub_2171FF30C(v114, v120);
    v94 = v113;
    CloudResourceCustomMetadata.init(from:)(v120, v119);
    v113 = v94;
    if (v94)
    {
    }

    else
    {
      v104 = v33;
      memcpy(v118, v119, sizeof(v118));
      sub_2171FF30C(v114, v117);
      sub_21733C3CC(*(v23 + *(v105 + 32)), *(v23 + *(v105 + 32) + 8), *(v23 + *(v105 + 32) + 16), *(v23 + *(v105 + 32) + 24));
      sub_217383B34(&unk_28295F078);
      v100 = v113;
      sub_2173878F0();
      v113 = v100;
      if (!v100)
      {
        v111 = v101;
        __swift_destroy_boxed_opaque_existential_1(v114);
        memcpy(v116, v118, sizeof(v116));
        nullsub_1();
        memcpy(v123, v116, sizeof(v123));
        v37 = v106;
        v33 = v104;
        goto LABEL_57;
      }

      sub_21733BED8(v118);
    }

    v70 = v114;
LABEL_72:
    __swift_destroy_boxed_opaque_existential_1(v70);
    goto LABEL_13;
  }

  v111 = v26;
  sub_2171F3F0C(v119, v120);
  v27 = v121;
  v28 = v122;
  __swift_project_boxed_opaque_existential_1(v120, v121);
  v29 = v113;
  v30 = (*(v28 + 16))(v125, v27, v28);
  v113 = v29;
  if (v29)
  {

LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v125);
    (*(v112 + 8))(v102, v106);
LABEL_28:
    v54 = v23;
LABEL_29:
    sub_21733CA78(v54, type metadata accessor for CloudMusicVideo);
    __swift_destroy_boxed_opaque_existential_1(v120);
    goto LABEL_30;
  }

  v33 = v30;
  LOBYTE(v119[0]) = 4;
  v34 = v106;
  v35 = v102;
  if (sub_217752EC8())
  {

    LOBYTE(v118[0]) = 4;
    v36 = v113;
    sub_217752E08();
    v113 = v36;
    if (v36)
    {
      goto LABEL_27;
    }

    v40 = v121;
    v41 = v122;
    __swift_project_boxed_opaque_existential_1(v120, v121);
    v42 = v113;
    v43 = (*(v41 + 24))(v119, v40, v41);
    v113 = v42;
    if (v42)
    {
LABEL_35:

      v60 = v119;
LABEL_36:
      __swift_destroy_boxed_opaque_existential_1(v60);
      goto LABEL_10;
    }

    v24 = v43;
    __swift_destroy_boxed_opaque_existential_1(v119);
  }

  LOBYTE(v119[0]) = 5;
  v34 = v106;
  v35 = v102;
  if (sub_217752EC8())
  {

    LOBYTE(v118[0]) = 5;
    v53 = v113;
    sub_217752E08();
    v113 = v53;
    if (v53)
    {
LABEL_27:

      __swift_destroy_boxed_opaque_existential_1(v125);
      (*(v112 + 8))(v35, v34);
      goto LABEL_28;
    }

    v56 = v121;
    v57 = v122;
    __swift_project_boxed_opaque_existential_1(v120, v121);
    v58 = v113;
    v59 = (*(v57 + 32))(v119, v56, v57);
    v113 = v58;
    if (v58)
    {
      goto LABEL_35;
    }

    v25 = v59;
    __swift_destroy_boxed_opaque_existential_1(v119);
  }

  LOBYTE(v118[0]) = 6;
  v34 = v106;
  v35 = v102;
  if (sub_217752EC8())
  {

    LOBYTE(v118[0]) = 6;
    v71 = v113;
    sub_217752E08();
    v113 = v71;
    if (v71)
    {
      goto LABEL_27;
    }

    sub_2171FF30C(v117, v115);
    v73 = v113;
    CloudResourceCustomMetadata.init(from:)(v115, v118);
    v113 = v73;
    if (v73)
    {

      v60 = v117;
      goto LABEL_36;
    }

    memcpy(v116, v118, sizeof(v116));
    v95 = v121;
    v96 = v122;
    __swift_project_boxed_opaque_existential_1(v120, v121);
    v97 = sub_217383B34(&unk_28295F078);
    v98 = v113;
    v99 = (*(v96 + 40))(v117, v97, v95, v96);
    v113 = v98;
    if (v98)
    {

      sub_21733BED8(v116);
      __swift_destroy_boxed_opaque_existential_1(v117);
      __swift_destroy_boxed_opaque_existential_1(v125);
      (*(v112 + 8))(v102, v106);
      v54 = v109;
      goto LABEL_29;
    }

    v111 = v99;
    __swift_destroy_boxed_opaque_existential_1(v117);

    memcpy(v114, v116, sizeof(v114));
    nullsub_1();
    v72 = v114;
  }

  else
  {
    v72 = v124;
  }

  memcpy(v119, v72, sizeof(v119));
  __swift_destroy_boxed_opaque_existential_1(v120);
  memcpy(v123, v119, sizeof(v123));
  v37 = v106;
LABEL_57:
  LOBYTE(v119[0]) = 2;
  v75 = v102;
  if (sub_217752EC8())
  {
    LOBYTE(v119[0]) = 2;
    v76 = v113;
    v77 = sub_217752E68();
    v113 = v76;
    if (v76)
    {

      sub_2171F0738(v123, &qword_27CB25620, &qword_21776A5F0);

      __swift_destroy_boxed_opaque_existential_1(v125);
      (*(v112 + 8))(v75, v37);
LABEL_4:
      sub_21733CA78(v109, type metadata accessor for CloudMusicVideo);
      v18 = 0;
      v16 = v107;
      v19 = v108;
      goto LABEL_31;
    }

    v79 = v77;
    v80 = v78;
    v104 = v33;
  }

  else
  {
    v104 = v33;
    v79 = 0;
    v80 = 0;
  }

  v81 = v109;
  v16 = v107;
  v82 = sub_21733CAD0();
  LOBYTE(v118[0]) = 1;
  sub_21733BE84(v82, v83, v84);
  v85 = v106;
  v86 = v102;
  v87 = v113;
  sub_217752EA8();
  v113 = v87;
  if (!v87)
  {
    __swift_destroy_boxed_opaque_existential_1(v125);
    (*(v112 + 8))(v86, v85);
    sub_21733CA78(v81, type metadata accessor for CloudMusicVideo);
    v88 = *(&v119[0] + 1);
    v89 = v119[1];
    v90 = v103;
    v91 = &v16[v103[9]];
    *v91 = *&v119[0];
    *(v91 + 1) = v88;
    v91[16] = v89;
    v92 = &v16[v90[10]];
    *v92 = v79;
    *(v92 + 1) = v80;
    memcpy(&v16[v90[11]], v123, 0x180uLL);
    *&v16[v90[12]] = v104;
    *&v16[v90[13]] = v24;
    *&v16[v90[14]] = v25;
    v93 = v110;
    *&v16[v90[15]] = v111;
    sub_21726A630(v16, v93, &qword_27CB24808, &qword_217758D90);
    __swift_destroy_boxed_opaque_existential_1(v108);
    return sub_2171F0738(v16, &qword_27CB24808, &qword_217758D90);
  }

  sub_2171F0738(v123, &qword_27CB25620, &qword_21776A5F0);

  __swift_destroy_boxed_opaque_existential_1(v125);
  (*(v112 + 8))(v86, v85);
  sub_21733CA78(v81, type metadata accessor for CloudMusicVideo);
  v18 = 1;
  v19 = v108;
LABEL_31:
  result = __swift_destroy_boxed_opaque_existential_1(v19);
  if (v18)
  {
    return sub_21733CA78(v16, type metadata accessor for CloudMusicVideo);
  }

  return result;
}

uint64_t sub_21731DABC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25948, &qword_21775D9D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v54 - v7;
  sub_2171FF30C(a1, v71);
  CloudPersonalRecommendation.init(from:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v57 = a2;
  v58 = v6;
  v59 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v60 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25900, &unk_21775D990);
  sub_21733CCD4(&qword_27CB25908, &qword_27CB25900, &unk_21775D990);
  sub_2177532C8();
  sub_217751DC8();

  __dst[159] = 3;
  sub_217752E08();
  v10 = sub_217751DC8();
  v11 = sub_217751DC8();
  v12 = sub_217751DC8();
  sub_21733BE70(v71);
  sub_21733C5F0(v73, v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  if (swift_dynamicCast())
  {
    v56 = v12;
    sub_2171F3F0C(v65, v67);
    v13 = v68;
    v14 = v69;
    __swift_project_boxed_opaque_existential_1(v67, v68);
    v15 = (*(v14 + 16))(v72, v13, v14);
    v16 = v58;
    v55 = v15;
    LOBYTE(v66[0]) = 4;
    v18 = v59;
    if (sub_217752EC8())
    {

      LOBYTE(v65[0]) = 4;
      sub_217752E08();
      v19 = v68;
      v20 = v69;
      __swift_project_boxed_opaque_existential_1(v67, v68);
      v10 = (*(v20 + 24))(v66, v19, v20);
      __swift_destroy_boxed_opaque_existential_1(v66);
      v18 = v59;
    }

    LOBYTE(v66[0]) = 5;
    if (sub_217752EC8())
    {

      LOBYTE(v65[0]) = 5;
      sub_217752E08();
      v28 = v68;
      v29 = v69;
      __swift_project_boxed_opaque_existential_1(v67, v68);
      v11 = (*(v29 + 32))(v66, v28, v29);
      __swift_destroy_boxed_opaque_existential_1(v66);
      v18 = v59;
    }

    LOBYTE(v65[0]) = 6;
    if (sub_217752EC8())
    {

      LOBYTE(v65[0]) = 6;
      sub_217752E08();
      sub_2171FF30C(v64, v62);
      CloudResourceCustomMetadata.init(from:)(v62, v65);
      memcpy(v63, v65, sizeof(v63));
      v50 = v69;
      __swift_project_boxed_opaque_existential_1(v67, v68);
      v51 = sub_217383B34(&unk_28295F078);
      v52 = *(v50 + 40);
      *(&v54 + 1) = v51;
      v56 = v52(v64);
      __swift_destroy_boxed_opaque_existential_1(v64);

      memcpy(v61, v63, sizeof(v61));
      nullsub_1();
      memcpy(v66, v61, sizeof(v66));
      v18 = v59;
    }

    else
    {
      memcpy(v66, v71, sizeof(v66));
    }

    __swift_destroy_boxed_opaque_existential_1(v67);
    v43 = v66;
    goto LABEL_24;
  }

  memset(v65, 0, 40);
  sub_2171F0738(v65, &qword_27CB25588, &unk_21775D380);
  sub_2171FF30C(v72, v65);
  memcpy(__dst, v74, 0x88uLL);
  sub_21733C64C(__dst, v66);
  sub_217385C20();
  v16 = v58;
  v55 = v17;
  v56 = v12;
  LOBYTE(v66[0]) = 4;
  v18 = v59;
  if (sub_217752EC8())
  {

    LOBYTE(v65[0]) = 4;
    sub_217752E08();
    sub_2171FF30C(v66, v65);
    swift_beginAccess();
    v21 = sub_217751DE8();
    v22 = sub_2173838E4(v21);

    v10 = Dictionary<>.init(from:skippingValuesFor:)(v65, v22, v23, v24, v25, v26, v27);
    __swift_destroy_boxed_opaque_existential_1(v66);
  }

  LOBYTE(v66[0]) = 5;
  if (sub_217752EC8())
  {

    LOBYTE(v65[0]) = 5;
    sub_217752E08();
    sub_2171FF30C(v66, v65);
    if (qword_27CB23E60 != -1)
    {
      swift_once();
    }

    sub_217383748(qword_27CB2CDC8, v30, v31, v32, v33, v34, v35, v36, v54, v55, v56, v57, v58, v59, v60, v61[0], v61[1], v61[2], v61[3], v61[4], v61[5], v61[6], v61[7], v61[8], v61[9]);
    v11 = Dictionary<>.init(from:skippingValuesFor:)(v65, v37, v38, v39, v40, v41, v42);
    __swift_destroy_boxed_opaque_existential_1(v66);
  }

  LOBYTE(v66[0]) = 6;
  if ((sub_217752EC8() & 1) == 0)
  {
    v43 = v71;
LABEL_24:
    memcpy(v70, v43, sizeof(v70));
    goto LABEL_25;
  }

  LOBYTE(v66[0]) = 6;
  sub_217752E08();
  sub_2171FF30C(v61, v67);
  CloudResourceCustomMetadata.init(from:)(v67, v66);
  memcpy(v65, v66, sizeof(v65));
  sub_2171FF30C(v61, v64);
  sub_21733C6A8(v75, v76, v77);
  sub_217383B34(&unk_28295F078);
  sub_217387F34();
  v56 = v53;
  __swift_destroy_boxed_opaque_existential_1(v61);
  memcpy(v63, v65, sizeof(v63));
  nullsub_1();
  memcpy(v70, v63, sizeof(v70));
  v18 = v59;
LABEL_25:
  LOBYTE(v66[0]) = 2;
  if (sub_217752EC8())
  {
    LOBYTE(v66[0]) = 2;
    v59 = sub_217752E68();
    v45 = v44;
  }

  else
  {
    v59 = 0;
    v45 = 0;
  }

  v46 = sub_21733C5F0(v73, v78);
  LOBYTE(v65[0]) = 1;
  sub_21733BE84(v46, v47, v48);
  v49 = v60;
  sub_217752EA8();
  __swift_destroy_boxed_opaque_existential_1(v72);
  (*(v16 + 8))(v49, v18);
  sub_217269D5C(v73);
  v78[39] = v66[0];
  v78[40] = v66[1];
  v79 = v66[2];
  v80 = v59;
  v81 = v45;
  memcpy(v82, v70, sizeof(v82));
  v83 = v55;
  v84 = v10;
  v85 = v11;
  v86 = v56;
  sub_21726A630(v78, v57, &qword_27CB244A8, &unk_217758980);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2171F0738(v78, &qword_27CB244A8, &unk_217758980);
}

uint64_t sub_21731E7A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB258B0, &qword_21775D948);
  v69 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v58 - v5;
  v7 = type metadata accessor for CloudPersonalRecommendation.Item(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24948, &unk_21775A210);
  MEMORY[0x28223BE20](v10);
  v12 = &v58 - v11;
  sub_2171FF30C(a1, v80);
  CloudPersonalRecommendation.Item.init(from:)();
  v70 = v2;
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v63 = v12;
  v64 = v7;
  v62 = v10;
  v65 = v4;
  v66 = a1;
  v67 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB258A0, &qword_21775D940);
  sub_21733CCD4(&qword_27CB258A8, &qword_27CB258A0, &qword_21775D940);
  v13 = v70;
  sub_2177532C8();
  v70 = v13;
  if (v13)
  {
    v14 = v67;
LABEL_6:
    sub_21733CA78(v14, type metadata accessor for CloudPersonalRecommendation.Item);
    a1 = v66;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v6;
  sub_217751DC8();

  v82 = 3;
  v16 = v65;
  v17 = v70;
  sub_217752E08();
  v18 = v67;
  v70 = v17;
  if (v17)
  {
    (*(v69 + 8))(v6, v16);
    v14 = v18;
    goto LABEL_6;
  }

  v20 = sub_217751DC8();
  v21 = sub_217751DC8();
  v22 = sub_217751DC8();
  sub_21733BE70(v80);
  v78 = v64;
  v79 = &protocol witness table for CloudPersonalRecommendation.Item;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v77);
  sub_21733CAD0();
  __swift_project_boxed_opaque_existential_1(v77, v78);
  v24 = v70;
  CloudPersonalRecommendation.Item.decodeRawAttributes(from:)();
  v26 = v18;
  a1 = v66;
  v70 = v24;
  if (v24)
  {

    __swift_destroy_boxed_opaque_existential_1(v81);
    (*(v69 + 8))(v15, v65);
    v27 = v26;
LABEL_38:
    sub_21733CA78(v27, type metadata accessor for CloudPersonalRecommendation.Item);
    __swift_destroy_boxed_opaque_existential_1(v77);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v60 = boxed_opaque_existential_0;
  v61 = v25;
  v64 = v21;
  LOBYTE(v76[0]) = 4;
  v28 = v65;
  v29 = v15;
  v30 = sub_217752EC8();
  v31 = v69;
  if (v30)
  {

    LOBYTE(v74[0]) = 4;
    v32 = v70;
    sub_217752E08();
    v70 = v32;
    if (v32)
    {

      __swift_destroy_boxed_opaque_existential_1(v81);
      (*(v31 + 8))(v29, v28);
LABEL_37:
      v27 = v67;
      goto LABEL_38;
    }

    v33 = v29;
    CloudPersonalRecommendation.Item.decodeRawRelationships(from:)();
    v70 = 0;
    v59 = v35;
    __swift_destroy_boxed_opaque_existential_1(v76);
  }

  else
  {
    v59 = v20;
    v33 = v29;
  }

  LOBYTE(v76[0]) = 5;
  if (sub_217752EC8())
  {

    LOBYTE(v74[0]) = 5;
    v34 = v70;
    sub_217752E08();
    v70 = v34;
    if (v34)
    {
      goto LABEL_21;
    }

    CloudPersonalRecommendation.Item.decodeRawAssociations(from:)();
    v70 = 0;
    v64 = v36;
    __swift_destroy_boxed_opaque_existential_1(v76);
  }

  LOBYTE(v74[0]) = 6;
  if (sub_217752EC8())
  {

    LOBYTE(v74[0]) = 6;
    v37 = v70;
    sub_217752E08();
    v70 = v37;
    if (v37)
    {
LABEL_21:

LABEL_36:
      __swift_destroy_boxed_opaque_existential_1(v81);
      (*(v31 + 8))(v33, v28);
      goto LABEL_37;
    }

    sub_2171FF30C(v75, v73);
    v44 = v70;
    CloudResourceCustomMetadata.init(from:)(v73, v74);
    v70 = v44;
    if (v44)
    {

LABEL_35:
      __swift_destroy_boxed_opaque_existential_1(v75);
      goto LABEL_36;
    }

    memcpy(v72, v74, sizeof(v72));
    sub_217383B34(&unk_28295F078);
    v56 = v70;
    CloudPersonalRecommendation.Item.decodeRawMetadata(from:skippingValuesFor:)();
    v70 = v56;
    if (v56)
    {

      sub_21733BED8(v72);
      goto LABEL_35;
    }

    v22 = v57;
    __swift_destroy_boxed_opaque_existential_1(v75);

    memcpy(v71, v72, sizeof(v71));
    nullsub_1();
    v38 = v71;
  }

  else
  {
    v38 = v80;
  }

  memcpy(v76, v38, sizeof(v76));
  __swift_destroy_boxed_opaque_existential_1(v77);
  LOBYTE(v74[0]) = 2;
  v39 = v33;
  if (sub_217752EC8())
  {
    LOBYTE(v74[0]) = 2;
    v40 = v70;
    v41 = sub_217752E68();
    v70 = v40;
    if (v40)
    {

      sub_2171F0738(v76, &qword_27CB25620, &qword_21776A5F0);

      __swift_destroy_boxed_opaque_existential_1(v81);
      (*(v31 + 8))(v33, v28);
      sub_21733CA78(v67, type metadata accessor for CloudPersonalRecommendation.Item);
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v43 = v42;
    v60 = v41;
  }

  else
  {
    v60 = 0;
    v43 = 0;
  }

  v45 = v67;
  v46 = v63;
  v47 = sub_21733CAD0();
  v72[0] = 1;
  sub_21733BE84(v47, v48, v49);
  v50 = v70;
  sub_217752EA8();
  v70 = v50;
  if (v50)
  {

    sub_2171F0738(v76, &qword_27CB25620, &qword_21776A5F0);

    __swift_destroy_boxed_opaque_existential_1(v81);
    (*(v31 + 8))(v39, v28);
    sub_21733CA78(v45, type metadata accessor for CloudPersonalRecommendation.Item);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_21733CA78(v46, type metadata accessor for CloudPersonalRecommendation.Item);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v81);
    (*(v31 + 8))(v39, v28);
    sub_21733CA78(v45, type metadata accessor for CloudPersonalRecommendation.Item);
    v51 = v74[1];
    v52 = v74[2];
    v53 = v62;
    v54 = v46 + v62[9];
    *v54 = v74[0];
    *(v54 + 8) = v51;
    *(v54 + 16) = v52;
    v55 = (v46 + v53[10]);
    *v55 = v60;
    v55[1] = v43;
    memcpy((v46 + v53[11]), v76, 0x180uLL);
    *(v46 + v53[12]) = v61;
    *(v46 + v53[13]) = v59;
    *(v46 + v53[14]) = v64;
    *(v46 + v53[15]) = v22;
    sub_21726A630(v46, v68, &qword_27CB24948, &unk_21775A210);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_2171F0738(v46, &qword_27CB24948, &unk_21775A210);
  }
}

uint64_t sub_21731F164@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25968, &qword_21775D9E8);
  v90 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v79 - v5;
  v7 = type metadata accessor for CatalogSearchRawResponse.TopResult(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
  MEMORY[0x28223BE20](v10);
  v12 = &v79 - v11;
  sub_2171FF30C(a1, v101);
  CatalogSearchRawResponse.TopResult.init(from:)();
  v91 = v2;
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v84 = v12;
  v85 = v7;
  v83 = v10;
  v86 = v4;
  v87 = a1;
  v88 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25958, &qword_21775D9E0);
  sub_21733CCD4(&qword_27CB25960, &qword_27CB25958, &qword_21775D9E0);
  v13 = v91;
  sub_2177532C8();
  v91 = v13;
  if (v13)
  {
    v14 = v88;
LABEL_6:
    sub_21733CA78(v14, type metadata accessor for CatalogSearchRawResponse.TopResult);
    a1 = v87;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v6;
  sub_217751DC8();

  v103 = 3;
  v16 = v86;
  v17 = v91;
  sub_217752E08();
  v18 = v88;
  v91 = v17;
  if (v17)
  {
    (*(v90 + 8))(v6, v16);
    v14 = v18;
    goto LABEL_6;
  }

  v20 = sub_217751DC8();
  v21 = sub_217751DC8();
  v22 = sub_217751DC8();
  sub_21733BE70(v101);
  v99 = v85;
  v100 = &protocol witness table for CatalogSearchRawResponse.TopResult;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v98);
  sub_21733CAD0();
  __swift_project_boxed_opaque_existential_1(v98, v99);
  v24 = v91;
  CatalogSearchRawResponse.TopResult.decodeRawAttributes(from:)(v102, v25, v26, v27, v28, v29, v30, v31, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90);
  v33 = v18;
  a1 = v87;
  v91 = v24;
  if (v24)
  {

    __swift_destroy_boxed_opaque_existential_1(v102);
    (*(v90 + 8))(v15, v86);
    v34 = v33;
LABEL_38:
    sub_21733CA78(v34, type metadata accessor for CatalogSearchRawResponse.TopResult);
    __swift_destroy_boxed_opaque_existential_1(v98);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v81 = boxed_opaque_existential_0;
  v82 = v32;
  v85 = v21;
  LOBYTE(v97[0]) = 4;
  v35 = v86;
  v36 = v15;
  v37 = sub_217752EC8();
  v38 = v90;
  if (v37)
  {

    LOBYTE(v95[0]) = 4;
    v39 = v91;
    sub_217752E08();
    v91 = v39;
    if (v39)
    {

      __swift_destroy_boxed_opaque_existential_1(v102);
      (*(v38 + 8))(v36, v35);
LABEL_37:
      v34 = v88;
      goto LABEL_38;
    }

    v47 = v36;
    CatalogSearchRawResponse.TopResult.decodeRawRelationships(from:)(v97, v40, v41, v42, v43, v44, v45, v46, v79, v80);
    v91 = 0;
    v80 = v56;
    __swift_destroy_boxed_opaque_existential_1(v97);
  }

  else
  {
    v80 = v20;
    v47 = v36;
  }

  LOBYTE(v97[0]) = 5;
  if (sub_217752EC8())
  {

    LOBYTE(v95[0]) = 5;
    v48 = v91;
    sub_217752E08();
    v91 = v48;
    if (v48)
    {
      goto LABEL_21;
    }

    CatalogSearchRawResponse.TopResult.decodeRawAssociations(from:)(v97, v49, v50, v51, v52, v53, v54, v55, v79, v80);
    v91 = 0;
    v85 = v57;
    __swift_destroy_boxed_opaque_existential_1(v97);
  }

  LOBYTE(v95[0]) = 6;
  if (sub_217752EC8())
  {

    LOBYTE(v95[0]) = 6;
    v58 = v91;
    sub_217752E08();
    v91 = v58;
    if (v58)
    {
LABEL_21:

LABEL_36:
      __swift_destroy_boxed_opaque_existential_1(v102);
      (*(v38 + 8))(v47, v35);
      goto LABEL_37;
    }

    sub_2171FF30C(v96, v94);
    v65 = v91;
    CloudResourceCustomMetadata.init(from:)(v94, v95);
    v91 = v65;
    if (v65)
    {

LABEL_35:
      __swift_destroy_boxed_opaque_existential_1(v96);
      goto LABEL_36;
    }

    memcpy(v93, v95, sizeof(v93));
    sub_217383B34(&unk_28295F078);
    v77 = v91;
    CatalogSearchRawResponse.TopResult.decodeRawMetadata(from:skippingValuesFor:)();
    v91 = v77;
    if (v77)
    {

      sub_21733BED8(v93);
      goto LABEL_35;
    }

    v22 = v78;
    __swift_destroy_boxed_opaque_existential_1(v96);

    memcpy(v92, v93, sizeof(v92));
    nullsub_1();
    v59 = v92;
  }

  else
  {
    v59 = v101;
  }

  memcpy(v97, v59, sizeof(v97));
  __swift_destroy_boxed_opaque_existential_1(v98);
  LOBYTE(v95[0]) = 2;
  v60 = v47;
  if (sub_217752EC8())
  {
    LOBYTE(v95[0]) = 2;
    v61 = v91;
    v62 = sub_217752E68();
    v91 = v61;
    if (v61)
    {

      sub_2171F0738(v97, &qword_27CB25620, &qword_21776A5F0);

      __swift_destroy_boxed_opaque_existential_1(v102);
      (*(v38 + 8))(v47, v35);
      sub_21733CA78(v88, type metadata accessor for CatalogSearchRawResponse.TopResult);
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v64 = v63;
    v81 = v62;
  }

  else
  {
    v81 = 0;
    v64 = 0;
  }

  v66 = v88;
  v67 = v84;
  v68 = sub_21733CAD0();
  v93[0] = 1;
  sub_21733BE84(v68, v69, v70);
  v71 = v91;
  sub_217752EA8();
  v91 = v71;
  if (v71)
  {

    sub_2171F0738(v97, &qword_27CB25620, &qword_21776A5F0);

    __swift_destroy_boxed_opaque_existential_1(v102);
    (*(v38 + 8))(v60, v35);
    sub_21733CA78(v66, type metadata accessor for CatalogSearchRawResponse.TopResult);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_21733CA78(v67, type metadata accessor for CatalogSearchRawResponse.TopResult);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v102);
    (*(v38 + 8))(v60, v35);
    sub_21733CA78(v66, type metadata accessor for CatalogSearchRawResponse.TopResult);
    v72 = v95[1];
    v73 = v95[2];
    v74 = v83;
    v75 = v67 + v83[9];
    *v75 = v95[0];
    *(v75 + 8) = v72;
    *(v75 + 16) = v73;
    v76 = (v67 + v74[10]);
    *v76 = v81;
    v76[1] = v64;
    memcpy((v67 + v74[11]), v97, 0x180uLL);
    *(v67 + v74[12]) = v82;
    *(v67 + v74[13]) = v80;
    *(v67 + v74[14]) = v85;
    *(v67 + v74[15]) = v22;
    sub_21726A630(v67, v89, &qword_27CB24708, &unk_217758C90);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_2171F0738(v67, &qword_27CB24708, &unk_217758C90);
  }
}

uint64_t sub_21731FB28@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB257E0, &qword_21775D8C0);
  v69 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v58 - v5;
  v7 = type metadata accessor for CloudRecentlyPlayedMusicItem(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB257C0, &qword_21775D8A8);
  MEMORY[0x28223BE20](v10);
  v12 = &v58 - v11;
  sub_2171FF30C(a1, v80);
  CloudRecentlyPlayedMusicItem.init(from:)();
  v70 = v2;
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v63 = v12;
  v64 = v7;
  v62 = v10;
  v65 = v4;
  v66 = a1;
  v67 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB257D0, &qword_21775D8B8);
  sub_21733CCD4(&qword_27CB257D8, &qword_27CB257D0, &qword_21775D8B8);
  v13 = v70;
  sub_2177532C8();
  v70 = v13;
  if (v13)
  {
    v14 = v67;
LABEL_6:
    sub_21733CA78(v14, type metadata accessor for CloudRecentlyPlayedMusicItem);
    a1 = v66;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v6;
  sub_217751DC8();

  v82 = 3;
  v16 = v65;
  v17 = v70;
  sub_217752E08();
  v18 = v67;
  v70 = v17;
  if (v17)
  {
    (*(v69 + 8))(v6, v16);
    v14 = v18;
    goto LABEL_6;
  }

  v20 = sub_217751DC8();
  v21 = sub_217751DC8();
  v22 = sub_217751DC8();
  sub_21733BE70(v80);
  v78 = v64;
  v79 = &protocol witness table for CloudRecentlyPlayedMusicItem;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v77);
  sub_21733CAD0();
  __swift_project_boxed_opaque_existential_1(v77, v78);
  v24 = v70;
  CloudRecentlyPlayedMusicItem.decodeRawAttributes(from:)();
  v26 = v18;
  a1 = v66;
  v70 = v24;
  if (v24)
  {

    __swift_destroy_boxed_opaque_existential_1(v81);
    (*(v69 + 8))(v15, v65);
    v27 = v26;
LABEL_38:
    sub_21733CA78(v27, type metadata accessor for CloudRecentlyPlayedMusicItem);
    __swift_destroy_boxed_opaque_existential_1(v77);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v60 = boxed_opaque_existential_0;
  v61 = v25;
  v64 = v21;
  LOBYTE(v76[0]) = 4;
  v28 = v65;
  v29 = v15;
  v30 = sub_217752EC8();
  v31 = v69;
  if (v30)
  {

    LOBYTE(v74[0]) = 4;
    v32 = v70;
    sub_217752E08();
    v70 = v32;
    if (v32)
    {

      __swift_destroy_boxed_opaque_existential_1(v81);
      (*(v31 + 8))(v29, v28);
LABEL_37:
      v27 = v67;
      goto LABEL_38;
    }

    v33 = v29;
    CloudRecentlyPlayedMusicItem.decodeRawRelationships(from:)();
    v70 = 0;
    v59 = v35;
    __swift_destroy_boxed_opaque_existential_1(v76);
  }

  else
  {
    v59 = v20;
    v33 = v29;
  }

  LOBYTE(v76[0]) = 5;
  if (sub_217752EC8())
  {

    LOBYTE(v74[0]) = 5;
    v34 = v70;
    sub_217752E08();
    v70 = v34;
    if (v34)
    {
      goto LABEL_21;
    }

    CloudRecentlyPlayedMusicItem.decodeRawAssociations(from:)();
    v70 = 0;
    v64 = v36;
    __swift_destroy_boxed_opaque_existential_1(v76);
  }

  LOBYTE(v74[0]) = 6;
  if (sub_217752EC8())
  {

    LOBYTE(v74[0]) = 6;
    v37 = v70;
    sub_217752E08();
    v70 = v37;
    if (v37)
    {
LABEL_21:

LABEL_36:
      __swift_destroy_boxed_opaque_existential_1(v81);
      (*(v31 + 8))(v33, v28);
      goto LABEL_37;
    }

    sub_2171FF30C(v75, v73);
    v44 = v70;
    CloudResourceCustomMetadata.init(from:)(v73, v74);
    v70 = v44;
    if (v44)
    {

LABEL_35:
      __swift_destroy_boxed_opaque_existential_1(v75);
      goto LABEL_36;
    }

    memcpy(v72, v74, sizeof(v72));
    sub_217383B34(&unk_28295F078);
    v56 = v70;
    CloudRecentlyPlayedMusicItem.decodeRawMetadata(from:skippingValuesFor:)();
    v70 = v56;
    if (v56)
    {

      sub_21733BED8(v72);
      goto LABEL_35;
    }

    v22 = v57;
    __swift_destroy_boxed_opaque_existential_1(v75);

    memcpy(v71, v72, sizeof(v71));
    nullsub_1();
    v38 = v71;
  }

  else
  {
    v38 = v80;
  }

  memcpy(v76, v38, sizeof(v76));
  __swift_destroy_boxed_opaque_existential_1(v77);
  LOBYTE(v74[0]) = 2;
  v39 = v33;
  if (sub_217752EC8())
  {
    LOBYTE(v74[0]) = 2;
    v40 = v70;
    v41 = sub_217752E68();
    v70 = v40;
    if (v40)
    {

      sub_2171F0738(v76, &qword_27CB25620, &qword_21776A5F0);

      __swift_destroy_boxed_opaque_existential_1(v81);
      (*(v31 + 8))(v33, v28);
      sub_21733CA78(v67, type metadata accessor for CloudRecentlyPlayedMusicItem);
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v43 = v42;
    v60 = v41;
  }

  else
  {
    v60 = 0;
    v43 = 0;
  }

  v45 = v67;
  v46 = v63;
  v47 = sub_21733CAD0();
  v72[0] = 1;
  sub_21733BE84(v47, v48, v49);
  v50 = v70;
  sub_217752EA8();
  v70 = v50;
  if (v50)
  {

    sub_2171F0738(v76, &qword_27CB25620, &qword_21776A5F0);

    __swift_destroy_boxed_opaque_existential_1(v81);
    (*(v31 + 8))(v39, v28);
    sub_21733CA78(v45, type metadata accessor for CloudRecentlyPlayedMusicItem);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_21733CA78(v46, type metadata accessor for CloudRecentlyPlayedMusicItem);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v81);
    (*(v31 + 8))(v39, v28);
    sub_21733CA78(v45, type metadata accessor for CloudRecentlyPlayedMusicItem);
    v51 = v74[1];
    v52 = v74[2];
    v53 = v62;
    v54 = v46 + v62[9];
    *v54 = v74[0];
    *(v54 + 8) = v51;
    *(v54 + 16) = v52;
    v55 = (v46 + v53[10]);
    *v55 = v60;
    v55[1] = v43;
    memcpy((v46 + v53[11]), v76, 0x180uLL);
    *(v46 + v53[12]) = v61;
    *(v46 + v53[13]) = v59;
    *(v46 + v53[14]) = v64;
    *(v46 + v53[15]) = v22;
    sub_21726A630(v46, v68, &qword_27CB257C0, &qword_21775D8A8);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_2171F0738(v46, &qword_27CB257C0, &qword_21775D8A8);
  }
}

uint64_t sub_2173204EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v3 = type metadata accessor for CloudCurator.Attributes(0);
  MEMORY[0x28223BE20](v3 - 8);
  v108 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25A48, &qword_21775DA50);
  v109 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v100 - v6;
  v8 = type metadata accessor for CloudCurator(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = &v100 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24490, &qword_21775A250);
  MEMORY[0x28223BE20](v14);
  v16 = &v100 - v15;
  sub_2171FF30C(a1, v121);
  v17 = v110;
  CloudCurator.init(from:)();
  v110 = v17;
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v102 = v10;
  v103 = v8;
  v101 = v16;
  v104 = v5;
  v105 = a1;
  v106 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25A20, &qword_21775DA48);
  sub_21733CCD4(&qword_27CB25A28, &qword_27CB25A20, &qword_21775DA48);
  v18 = v110;
  sub_2177532C8();
  v110 = v18;
  if (v18)
  {
    goto LABEL_3;
  }

  sub_217751DC8();

  v123 = 3;
  v20 = v104;
  v21 = v110;
  sub_217752E08();
  v22 = v106;
  v110 = v21;
  if (v21)
  {
    (*(v109 + 8))(v7, v20);
LABEL_47:
    v19 = v22;
    goto LABEL_48;
  }

  *(&v100 + 1) = v7;
  *&v100 = sub_217751DC8();
  v23 = sub_217751DC8();
  v24 = sub_217751DC8();
  sub_21733BE70(v121);
  sub_21733CAD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  if (swift_dynamicCast())
  {
    v108 = v24;
    sub_2171F3F0C(v116, v117);
    v25 = v118;
    v26 = v119;
    __swift_project_boxed_opaque_existential_1(v117, v118);
    v27 = v110;
    v28 = (*(v26 + 16))(v122, v25, v26);
    v29 = v109;
    v110 = v27;
    if (v27)
    {

LABEL_9:
      __swift_destroy_boxed_opaque_existential_1(v122);
      (*(v29 + 8))(*(&v100 + 1), v20);
LABEL_38:
      sub_21733CA78(v22, type metadata accessor for CloudCurator);
      __swift_destroy_boxed_opaque_existential_1(v117);
LABEL_49:
      a1 = v105;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v32 = v28;
    LOBYTE(v116[0]) = 4;
    v33 = *(&v100 + 1);
    if (sub_217752EC8())
    {

      LOBYTE(v115[0]) = 4;
      v34 = v110;
      sub_217752E08();
      v110 = v34;
      if (v34)
      {
        goto LABEL_37;
      }

      v102 = v32;
      v36 = v118;
      v37 = v119;
      __swift_project_boxed_opaque_existential_1(v117, v118);
      v38 = v110;
      v39 = (*(v37 + 24))(v116, v36, v37);
      v110 = v38;
      if (v38)
      {
LABEL_26:

        __swift_destroy_boxed_opaque_existential_1(v116);
        goto LABEL_9;
      }

      *&v100 = v39;
      __swift_destroy_boxed_opaque_existential_1(v116);
      v33 = *(&v100 + 1);
      v32 = v102;
    }

    LOBYTE(v116[0]) = 5;
    if (sub_217752EC8())
    {

      LOBYTE(v115[0]) = 5;
      v48 = v110;
      sub_217752E08();
      v110 = v48;
      if (v48)
      {
        goto LABEL_37;
      }

      v102 = v32;
      v49 = v118;
      v50 = v119;
      __swift_project_boxed_opaque_existential_1(v117, v118);
      v51 = v110;
      v52 = (*(v50 + 32))(v116, v49, v50);
      v110 = v51;
      if (v51)
      {
        goto LABEL_26;
      }

      v23 = v52;
      __swift_destroy_boxed_opaque_existential_1(v116);
      v33 = *(&v100 + 1);
      v32 = v102;
    }

    LOBYTE(v115[0]) = 6;
    if (sub_217752EC8())
    {

      LOBYTE(v115[0]) = 6;
      v70 = v110;
      sub_217752E08();
      v110 = v70;
      if (v70)
      {
LABEL_37:

        __swift_destroy_boxed_opaque_existential_1(v122);
        (*(v29 + 8))(v33, v20);
        goto LABEL_38;
      }

      sub_2171FF30C(v114, v112);
      v72 = v110;
      CloudResourceCustomMetadata.init(from:)(v112, v115);
      a1 = v105;
      v110 = v72;
      if (v72)
      {

        __swift_destroy_boxed_opaque_existential_1(v114);
        __swift_destroy_boxed_opaque_existential_1(v122);
        (*(v29 + 8))(v33, v20);
        sub_21733CA78(v22, type metadata accessor for CloudCurator);
        __swift_destroy_boxed_opaque_existential_1(v117);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      v102 = v32;
      memcpy(v113, v115, sizeof(v113));
      v93 = v118;
      v94 = v119;
      __swift_project_boxed_opaque_existential_1(v117, v118);
      v95 = sub_217383B34(&unk_28295F078);
      v96 = v110;
      v97 = (*(v94 + 40))(v114, v95, v93, v94);
      v110 = v96;
      if (v96)
      {

        sub_21733BED8(v113);
        __swift_destroy_boxed_opaque_existential_1(v114);
        __swift_destroy_boxed_opaque_existential_1(v122);
        (*(v29 + 8))(*(&v100 + 1), v104);
        goto LABEL_38;
      }

      v108 = v97;
      __swift_destroy_boxed_opaque_existential_1(v114);

      memcpy(v111, v113, sizeof(v111));
      nullsub_1();
      memcpy(v116, v111, sizeof(v116));
      v20 = v104;
      v33 = *(&v100 + 1);
      v32 = v102;
    }

    else
    {
      memcpy(v116, v121, sizeof(v116));
    }

    __swift_destroy_boxed_opaque_existential_1(v117);
    v71 = v116;
    goto LABEL_52;
  }

  memset(v116, 0, 40);
  sub_2171F0738(v116, &qword_27CB25588, &unk_21775D380);
  sub_2171FF30C(v122, v116);
  sub_21733CAD0();
  v30 = v110;
  sub_2173859E0(v116);
  v29 = v109;
  v110 = v30;
  if (v30)
  {

    __swift_destroy_boxed_opaque_existential_1(v122);
    (*(v29 + 8))(*(&v100 + 1), v20);
    goto LABEL_47;
  }

  v32 = v31;
  v108 = v24;
  LOBYTE(v116[0]) = 4;
  v33 = *(&v100 + 1);
  if (sub_217752EC8())
  {

    LOBYTE(v115[0]) = 4;
    v35 = v110;
    sub_217752E08();
    v110 = v35;
    if (v35)
    {
      goto LABEL_46;
    }

    sub_2171FF30C(v116, v115);
    v40 = sub_217383864();
    v41 = v110;
    v47 = Dictionary<>.init(from:skippingValuesFor:)(v115, v40, v42, v43, v44, v45, v46);
    a1 = v105;
    v110 = v41;
    if (v41)
    {
      goto LABEL_33;
    }

    *&v100 = v47;
    __swift_destroy_boxed_opaque_existential_1(v116);
  }

  LOBYTE(v116[0]) = 5;
  if (sub_217752EC8())
  {

    LOBYTE(v115[0]) = 5;
    v53 = v110;
    sub_217752E08();
    v110 = v53;
    if (v53)
    {
      goto LABEL_46;
    }

    sub_2171FF30C(v116, v115);
    if (qword_27CB23D28 != -1)
    {
      swift_once();
    }

    sub_217383748(qword_27CB2A830, v54, v55, v56, v57, v58, v59, v60, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111[0], v111[1], v111[2], v111[3], v111[4], v111[5]);
    v61 = v110;
    v68 = Dictionary<>.init(from:skippingValuesFor:)(v115, v62, v63, v64, v65, v66, v67);
    a1 = v105;
    v110 = v61;
    if (v61)
    {
LABEL_33:

      v69 = v116;
LABEL_68:
      __swift_destroy_boxed_opaque_existential_1(v69);
      __swift_destroy_boxed_opaque_existential_1(v122);
      (*(v29 + 8))(v33, v20);
      sub_21733CA78(v22, type metadata accessor for CloudCurator);
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v23 = v68;
    __swift_destroy_boxed_opaque_existential_1(v116);
  }

  LOBYTE(v116[0]) = 6;
  if ((sub_217752EC8() & 1) == 0)
  {
    v71 = v121;
LABEL_52:
    memcpy(v120, v71, sizeof(v120));
    goto LABEL_53;
  }

  LOBYTE(v116[0]) = 6;
  v73 = v110;
  sub_217752E08();
  v110 = v73;
  if (v73)
  {
LABEL_46:

    __swift_destroy_boxed_opaque_existential_1(v122);
    (*(v29 + 8))(v33, v20);
    goto LABEL_47;
  }

  sub_2171FF30C(v111, v117);
  v92 = v110;
  CloudResourceCustomMetadata.init(from:)(v117, v116);
  a1 = v105;
  v110 = v92;
  if (v92)
  {

LABEL_67:
    v69 = v111;
    goto LABEL_68;
  }

  v102 = v32;
  memcpy(v115, v116, sizeof(v115));
  sub_2171FF30C(v111, v114);
  sub_217221020(*(v22 + *(v103 + 32)));
  sub_217383B34(&unk_28295F078);
  v98 = v110;
  sub_217387B08(v114);
  v108 = v99;
  v110 = v98;
  if (v98)
  {

    sub_21733BED8(v115);
    goto LABEL_67;
  }

  __swift_destroy_boxed_opaque_existential_1(v111);
  memcpy(v113, v115, sizeof(v113));
  nullsub_1();
  memcpy(v120, v113, sizeof(v120));
  v32 = v102;
LABEL_53:
  LOBYTE(v116[0]) = 2;
  if (sub_217752EC8())
  {
    LOBYTE(v116[0]) = 2;
    v75 = v110;
    v76 = sub_217752E68();
    v110 = v75;
    if (v75)
    {

      sub_2171F0738(v120, &qword_27CB25620, &qword_21776A5F0);

      __swift_destroy_boxed_opaque_existential_1(v122);
      (*(v29 + 8))(v33, v20);
LABEL_3:
      v19 = v106;
LABEL_48:
      sub_21733CA78(v19, type metadata accessor for CloudCurator);
      goto LABEL_49;
    }

    v78 = v77;
    v109 = v76;
    v102 = v32;
  }

  else
  {
    v102 = v32;
    v109 = 0;
    v78 = 0;
  }

  v79 = v106;
  v80 = v101;
  v81 = sub_21733CAD0();
  LOBYTE(v115[0]) = 1;
  sub_21733BE84(v81, v82, v83);
  v84 = v104;
  v85 = *(&v100 + 1);
  v86 = v110;
  sub_217752EA8();
  v110 = v86;
  if (v86)
  {

    sub_2171F0738(v120, &qword_27CB25620, &qword_21776A5F0);

    __swift_destroy_boxed_opaque_existential_1(v122);
    (*(v29 + 8))(v85, v84);
    sub_21733CA78(v79, type metadata accessor for CloudCurator);
    __swift_destroy_boxed_opaque_existential_1(v105);
    return sub_21733CA78(v80, type metadata accessor for CloudCurator);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v122);
    (*(v29 + 8))(v85, v84);
    sub_21733CA78(v79, type metadata accessor for CloudCurator);
    v87 = *(&v116[0] + 1);
    v88 = v116[1];
    v89 = v80 + v14[9];
    *v89 = *&v116[0];
    *(v89 + 8) = v87;
    *(v89 + 16) = v88;
    v90 = (v80 + v14[10]);
    *v90 = v109;
    v90[1] = v78;
    memcpy((v80 + v14[11]), v120, 0x180uLL);
    *(v80 + v14[12]) = v102;
    *(v80 + v14[13]) = v100;
    *(v80 + v14[14]) = v23;
    v91 = v107;
    *(v80 + v14[15]) = v108;
    sub_21726A630(v80, v91, &qword_27CB24490, &qword_21775A250);
    __swift_destroy_boxed_opaque_existential_1(v105);
    return sub_2171F0738(v80, &qword_27CB24490, &qword_21775A250);
  }
}

double sub_217321420(void *a1)
{
  v85 = type metadata accessor for CloudCurator(0);
  MEMORY[0x28223BE20](v85);
  v86 = (&v82 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25A18, &qword_21775DA40);
  v88 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v82 - v4;
  v6 = a1[3];
  v84 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25A20, &qword_21775DA48);
  sub_21733CCD4(&qword_27CB25A28, &qword_27CB25A20, &qword_21775DA48);
  v7 = v97;
  v8 = sub_2177532F8();
  v9 = v7[1];
  v92[0] = *v7;
  v92[1] = v9;
  LOBYTE(v89[0]) = 0;
  sub_2172E1B18(v8, v10, v11);
  v12 = v87;
  sub_217752F88();
  if (v12)
  {
    (*(v88 + 8))(v5, v3);
    return result;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24490, &qword_21775A250);
  v16 = v14;
  v17 = *(v7 + *(v14 + 40) + 8);
  if (v17)
  {
    LOBYTE(v92[0]) = 2;
    v14 = sub_217752F48();
  }

  v18 = v7 + v16[9];
  v19 = *v18;
  v20 = *(v18 + 1);
  LOBYTE(v18) = v18[16];
  v94 = v19;
  v95 = v20;
  v96 = v18;
  v93 = 1;
  sub_21733ABF0(v14, v17, v15);
  sub_217751DE8();
  sub_217752F88();

  v21 = sub_217751DC8();
  memcpy(v92, v7 + v16[11], sizeof(v92));
  if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v92) != 1)
  {

    sub_217751378();
    swift_allocObject();
    v27 = sub_217751368();
    v28 = memcpy(v89, v92, sizeof(v89));
    sub_21733AC98(v28, v29, v30);
    v31 = sub_217751358();
    v83 = v27;
    v86 = v16;
    v87 = v31;
    v37 = v36;
    sub_217751348();
    swift_allocObject();
    sub_217751338();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2388, sub_21733AD70, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    v82 = v37;
    sub_217751308();

    sub_217275694(v87, v82);

    v21 = v89[0];
    v16 = v86;
  }

  sub_21733CAD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  v22 = v85;
  if (swift_dynamicCast())
  {
    v87 = v21;
    v85 = v5;
    sub_2171F3F0C(v91, v89);
    v23 = v16;
    v24 = v89[3];
    v25 = v89[4];
    __swift_project_boxed_opaque_existential_1(v89, v89[3]);
    v26 = (*(v25 + 48))(*(v7 + v23[12]), v84, v24, v25);
    v86 = v23;
    *&v91[0] = v26;
    v90 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    v38 = sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_217752F88();
    v83 = v38;

    v40 = v89[3];
    v41 = v89[4];
    __swift_project_boxed_opaque_existential_1(v89, v89[3]);
    v42 = (*(v41 + 56))(*(v97 + v86[13]), v84, v40, v41);
    if (v42)
    {
      *&v91[0] = v42;
      v90 = 4;
      sub_217752F88();
    }

    v43 = v89[3];
    v44 = v89[4];
    __swift_project_boxed_opaque_existential_1(v89, v89[3]);
    v45 = (*(v44 + 64))(*(v97 + v86[14]), v84, v43, v44);
    if (v45)
    {
      *&v91[0] = v45;
      v90 = 5;
      sub_217752F88();
      v82 = v3;
    }

    else
    {
      v82 = v3;
    }

    v61 = *(v97 + v86[15]);
    sub_217751DE8();
    v62 = sub_2174EB024(v87, v61);
    v63 = v89[3];
    v64 = v89[4];
    __swift_project_boxed_opaque_existential_1(v89, v89[3]);
    v78 = (*(v64 + 72))(v62, v84, v63, v64);

    if (v78)
    {
      *&v91[0] = v78;
      v90 = 6;
      v80 = v82;
      v81 = v85;
      sub_217752F88();
      (*(v88 + 8))(v81, v80);
    }

    else
    {
      (*(v88 + 8))(v85, v82, v79);
    }

    __swift_destroy_boxed_opaque_existential_1(v89);
    return result;
  }

  memset(v91, 0, 40);
  sub_2171F0738(v91, &qword_27CB25588, &unk_21775D380);
  v86 = v16;
  v32 = *(*(v7 + v16[12]) + 16);
  v33 = *(v22 + 20);
  if (v32)
  {
    v34 = v84;
    v35 = sub_2173886F4(v7 + v33);
    v39 = v21;
    v89[0] = v35;
    LOBYTE(v91[0]) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_217752F88();

    v7 = v97;
  }

  else
  {
    v87 = v21;
    LOBYTE(v89[0]) = 3;
    type metadata accessor for CloudCurator.Attributes(0);
    sub_21733CDD0(&qword_27CB25A40, type metadata accessor for CloudCurator.Attributes, &protocol conformance descriptor for CloudCurator.Attributes);
    sub_217752F88();
    v34 = v84;
    v39 = v87;
  }

  v46 = v85;
  sub_21726A630(v7 + *(v85 + 24), v91, &qword_27CB24498, &unk_217758960);
  if (*&v91[1] == 1)
  {
    v87 = v39;
    v47 = sub_2171F0738(v91, &qword_27CB24498, &unk_217758960);
    v50 = v86;
    v51 = *(v7 + v86[13]);
    if (!*(v51 + 16))
    {
      v7 = v97;
      goto LABEL_26;
    }

    v89[0] = v51;
    LOBYTE(v91[0]) = 4;
    sub_217751DE8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_217752F88();

    v7 = v97;
  }

  else
  {
    v52 = memcpy(v89, v91, 0x80uLL);
    v54 = *(v7 + v86[13]);
    if (*(v54 + 16))
    {
      v55 = sub_2173889F8();
      v87 = v39;
      *&v91[0] = v55;
      v90 = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_217752F88();
      sub_2172831A8(v89);

      v7 = v97;
    }

    else
    {
      v87 = v39;
      LOBYTE(v91[0]) = 4;
      sub_21733CD7C(v52, v53, v54);
      sub_217752F88();
      v47 = sub_2172831A8(v89);
    }

    v50 = v86;
  }

  v46 = v85;
LABEL_26:
  v56 = *(v7 + *(v46 + 28));
  v57 = *(v7 + v50[14]);
  v58 = *(v57 + 16);
  if ((v56 & 1) == 0)
  {
    if (v58)
    {
      sub_2171FF30C(v34, v89);
      v59 = sub_2174D5830(v89);
      v60 = sub_217751DE8();
      v89[0] = sub_2174D37FC(v60, v59);
      LOBYTE(v91[0]) = 5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_217752F88();

      v50 = v86;
    }

    else
    {
      LOBYTE(v89[0]) = 5;
      sub_21733CD28(v47, v48, v49);
      sub_217752F88();
    }

    goto LABEL_34;
  }

  if (v58)
  {
    v89[0] = v57;
    LOBYTE(v91[0]) = 5;
    sub_217751DE8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_217752F88();

LABEL_34:
    v46 = v85;
  }

  v65 = *(v97 + *(v46 + 32));
  v66 = *(v97 + v50[15]);
  v67 = *(v66 + 16);
  if (v65 == 1)
  {
    v68 = v88;
    if (v67)
    {
      sub_217751DE8();
      v89[0] = sub_2174EB024(v87, v66);
      LOBYTE(v91[0]) = 6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_217752F88();
    }

    else if (*(v87 + 16))
    {
      v89[0] = v87;
      LOBYTE(v91[0]) = 6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_217752F88();

      (*(v68 + 8))(v5, v3, v75);
      return result;
    }

    (*(v68 + 8))(v5, v3);
  }

  else
  {
    v69 = v88;
    if (v67)
    {
      sub_2171FF30C(v84, v89);
      sub_217221020(v65);
      v70 = sub_217751DE8();
      v71 = sub_2174D6198(v70, v89);
      v72 = sub_217751DE8();
      v73 = sub_2175472EC(v72, v71);
      v74 = sub_2175472EC(v87, v73);
    }

    else
    {
      sub_2171FF30C(v84, v89);
      sub_217221020(v65);
      v76 = sub_217751DE8();
      v77 = sub_2174D6198(v76, v89);
      v74 = sub_2174D37FC(v87, v77);
    }

    v89[0] = v74;
    LOBYTE(v91[0]) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_217752F88();
    (*(v69 + 8))(v5, v3);
    sub_217221010(v65);
  }
}

void sub_21732263C(void *a1)
{
  v73 = type metadata accessor for CloudStation(0);
  MEMORY[0x28223BE20](v73);
  v74 = (&v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB259E0, &qword_21775DA28);
  v76 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v70 - v4;
  v6 = a1[3];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB259E8, &qword_21775DA30);
  sub_21733CCD4(&qword_27CB259F0, &qword_27CB259E8, &qword_21775DA30);
  v7 = v85;
  v8 = sub_2177532F8();
  v9 = v7[1];
  v80[0] = *v7;
  v80[1] = v9;
  LOBYTE(v77[0]) = 0;
  sub_2172E1B18(v8, v10, v11);
  v12 = v75;
  sub_217752F88();
  if (v12)
  {
    (*(v76 + 8))(v5, v3);
    return;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24738, &qword_217758CC0);
  v15 = v13;
  v16 = *(v7 + *(v13 + 40) + 8);
  if (v16)
  {
    LOBYTE(v80[0]) = 2;
    v13 = sub_217752F48();
  }

  v17 = v7 + v15[9];
  v18 = *v17;
  v19 = *(v17 + 1);
  LOBYTE(v17) = v17[16];
  v82 = v18;
  v83 = v19;
  v84 = v17;
  v81 = 1;
  sub_21733ABF0(v13, v16, v14);
  sub_217751DE8();
  sub_217752F88();

  v20 = sub_217751DC8();
  memcpy(v80, v7 + v15[11], sizeof(v80));
  if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v80) != 1)
  {

    sub_217751378();
    swift_allocObject();
    v26 = sub_217751368();
    v27 = memcpy(v77, v80, sizeof(v77));
    sub_21733AC98(v27, v28, v29);
    v30 = sub_217751358();
    v71 = v26;
    v74 = v15;
    v75 = v30;
    v35 = v34;
    sub_217751348();
    swift_allocObject();
    sub_217751338();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2388, sub_21733AD70, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    v70 = v35;
    sub_217751308();

    sub_217275694(v75, v70);

    v20 = v77[0];
    v15 = v74;
  }

  sub_21733CAD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  v21 = v73;
  if (swift_dynamicCast())
  {
    v75 = v20;
    v73 = v5;
    sub_2171F3F0C(v79, v77);
    v22 = v15;
    v23 = v77[3];
    v24 = v77[4];
    __swift_project_boxed_opaque_existential_1(v77, v77[3]);
    v25 = (*(v24 + 48))(*(v7 + v22[12]), v72, v23, v24);
    v74 = v22;
    *&v79[0] = v25;
    v78 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    v36 = sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_217752F88();
    v71 = v36;

    v37 = v77[3];
    v38 = v77[4];
    __swift_project_boxed_opaque_existential_1(v77, v77[3]);
    v39 = (*(v38 + 56))(*(v85 + v74[13]), v72, v37, v38);
    if (v39)
    {
      *&v79[0] = v39;
      v78 = 4;
      sub_217752F88();
    }

    v40 = v77[3];
    v41 = v77[4];
    __swift_project_boxed_opaque_existential_1(v77, v77[3]);
    v42 = (*(v41 + 64))(*(v85 + v74[14]), v72, v40, v41);
    if (v42)
    {
      *&v79[0] = v42;
      v78 = 5;
      sub_217752F88();
      v70 = v3;
    }

    else
    {
      v70 = v3;
    }

    v56 = *(v85 + v74[15]);
    sub_217751DE8();
    v57 = sub_2174EB024(v75, v56);
    v58 = v77[3];
    v59 = v77[4];
    __swift_project_boxed_opaque_existential_1(v77, v77[3]);
    v66 = (*(v59 + 72))(v57, v72, v58, v59);

    if (v66)
    {
      *&v79[0] = v66;
      v78 = 6;
      v68 = v70;
      v69 = v73;
      sub_217752F88();
      (*(v76 + 8))(v69, v68);
    }

    else
    {
      (*(v76 + 8))(v73, v70, v67);
    }

    __swift_destroy_boxed_opaque_existential_1(v77);
    return;
  }

  memset(v79, 0, 40);
  sub_2171F0738(v79, &qword_27CB25588, &unk_21775D380);
  v74 = v15;
  v31 = *(v7 + v15[12]);
  if (*(v31 + 16))
  {
    v32 = v72;
    v33 = sub_2173885F8(v7 + *(v21 + 20), v72, v31);
    v75 = v20;
    v77[0] = v33;
    LOBYTE(v79[0]) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_217752F88();

    v7 = v85;
  }

  else
  {
    v75 = v20;
    LOBYTE(v77[0]) = 3;
    type metadata accessor for CloudStation.Attributes(0);
    sub_21733CDD0(&qword_27CB25A08, type metadata accessor for CloudStation.Attributes, &protocol conformance descriptor for CloudStation.Attributes);
    v43 = sub_217752F88();
    v32 = v72;
  }

  v46 = v73;
  v47 = *(v7 + *(v73 + 24));
  v48 = *(v7 + v74[13]);
  v49 = *(v48 + 16);
  if (v47)
  {
    if (!v49)
    {
      goto LABEL_25;
    }

    v77[0] = v48;
    LOBYTE(v79[0]) = 4;
    sub_217751DE8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_217752F88();
  }

  else
  {
    if (!v49)
    {
      LOBYTE(v77[0]) = 4;
      sub_21733CC24(v43, v44, v45);
      v43 = sub_217752F88();
      goto LABEL_24;
    }

    sub_2171FF30C(v32, v77);
    v50 = sub_2174D4AA8(v77);
    v51 = sub_217751DE8();
    v77[0] = sub_2174D37FC(v51, v50);
    LOBYTE(v79[0]) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_217752F88();
  }

LABEL_24:
  v46 = v73;
LABEL_25:
  v52 = *(*(v85 + v74[14]) + 16);
  if ((*(v85 + *(v46 + 28)) & 1) == 0)
  {
    if (!v52)
    {
      LOBYTE(v77[0]) = 5;
      sub_21733CBD0(v43, v44, v45);
      sub_217752F88();
LABEL_35:
      v55 = v76;
      v46 = v73;
      goto LABEL_36;
    }

    sub_2171FF30C(v32, v77);
    v53 = sub_2174D53F4(v77);
    v54 = sub_217751DE8();
    v77[0] = sub_2174D37FC(v54, v53);
    LOBYTE(v79[0]) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_217752F88();
LABEL_34:

    goto LABEL_35;
  }

  if (v52)
  {
    v77[0] = *(v85 + v74[14]);
    LOBYTE(v79[0]) = 5;
    sub_217751DE8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_217752F88();
    goto LABEL_34;
  }

  v55 = v76;
LABEL_36:
  v60 = v85;
  sub_21726A630(v85 + *(v46 + 32), v79, &qword_27CB24340, &unk_2177650B0);
  if (*&v79[3] == 1)
  {
    sub_2171F0738(v79, &qword_27CB24340, &unk_2177650B0);
    v61 = *(v60 + v74[15]);
    if (*(v61 + 16))
    {
      sub_217751DE8();
      v77[0] = sub_2174EB024(v75, v61);
      LOBYTE(v79[0]) = 6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_217752F88();
    }

    else if (*(v75 + 16))
    {
      v77[0] = v75;
      LOBYTE(v79[0]) = 6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_217752F88();

      (*(v55 + 8))(v5, v3, v64);
      return;
    }
  }

  else
  {
    memcpy(v77, v79, 0x140uLL);
    v62 = *(v60 + v74[15]);
    if (*(v62 + 16))
    {
      v63 = sub_217331390(v77, v75, v72, v62, sub_21733CC78, sub_2174D5A4C);
    }

    else
    {
      v63 = sub_217388F30();
    }

    v65 = v63;

    *&v79[0] = v65;
    v78 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_217752F88();
    sub_21726A258(v77);
  }

  (*(v55 + 8))(v5, v3);
}

void sub_21732378C(void *a1)
{
  v80 = type metadata accessor for CloudRecordLabel(0);
  MEMORY[0x28223BE20](v80);
  v81 = (&v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB259A8, &qword_21775DA10);
  v83 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v77 - v4;
  v6 = a1[3];
  v79 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB259B0, &qword_21775DA18);
  sub_21733CCD4(&qword_27CB259B8, &qword_27CB259B0, &qword_21775DA18);
  v7 = v92;
  v8 = sub_2177532F8();
  v9 = v7[1];
  v87[0] = *v7;
  v87[1] = v9;
  LOBYTE(v84[0]) = 0;
  sub_2172E1B18(v8, v10, v11);
  v12 = v82;
  sub_217752F88();
  if (v12)
  {
    (*(v83 + 8))(v5, v3);
    return;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24778, &unk_217758D00);
  v15 = v13;
  v16 = *(v7 + *(v13 + 40) + 8);
  if (v16)
  {
    LOBYTE(v87[0]) = 2;
    v13 = sub_217752F48();
  }

  v17 = v7 + v15[9];
  v18 = *v17;
  v19 = *(v17 + 1);
  LOBYTE(v17) = v17[16];
  v89 = v18;
  v90 = v19;
  v91 = v17;
  v88 = 1;
  sub_21733ABF0(v13, v16, v14);
  sub_217751DE8();
  sub_217752F88();

  v20 = sub_217751DC8();
  memcpy(v87, v7 + v15[11], sizeof(v87));
  if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v87) != 1)
  {

    sub_217751378();
    swift_allocObject();
    v26 = sub_217751368();
    v27 = memcpy(v84, v87, sizeof(v84));
    sub_21733AC98(v27, v28, v29);
    v30 = sub_217751358();
    v78 = v26;
    v81 = v15;
    v82 = v30;
    v35 = v34;
    sub_217751348();
    swift_allocObject();
    sub_217751338();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2388, sub_21733AD70, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    v77 = v35;
    sub_217751308();

    sub_217275694(v82, v77);

    v20 = v84[0];
    v15 = v81;
  }

  sub_21733CAD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  v21 = v80;
  if (!swift_dynamicCast())
  {
    memset(v86, 0, 40);
    sub_2171F0738(v86, &qword_27CB25588, &unk_21775D380);
    v81 = v15;
    v31 = *(v7 + v15[12]);
    if (*(v31 + 16))
    {
      v32 = v79;
      v33 = sub_217388814(v7 + *(v21 + 20), v79, v31);
      v82 = v20;
      v84[0] = v33;
      LOBYTE(v86[0]) = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_217752F88();

      v7 = v92;
    }

    else
    {
      v82 = v20;
      LOBYTE(v84[0]) = 3;
      type metadata accessor for CloudRecordLabel.Attributes(0);
      sub_21733CDD0(&qword_27CB259D0, type metadata accessor for CloudRecordLabel.Attributes, &protocol conformance descriptor for CloudRecordLabel.Attributes);
      v43 = sub_217752F88();
      v32 = v79;
    }

    v46 = v80;
    v47 = *(v7 + *(v80 + 24));
    v48 = *(v7 + v81[13]);
    v49 = *(v48 + 16);
    if (v47)
    {
      if (!v49)
      {
        goto LABEL_26;
      }

      v84[0] = v48;
      LOBYTE(v86[0]) = 4;
      sub_217751DE8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_217752F88();
    }

    else
    {
      if (!v49)
      {
        LOBYTE(v84[0]) = 4;
        sub_21733CB7C(v43, v44, v45);
        sub_217752F88();
        goto LABEL_25;
      }

      sub_2171FF30C(v32, v84);
      v50 = sub_2174D5248(v84);
      v51 = sub_217751DE8();
      v84[0] = sub_2174D37FC(v51, v50);
      LOBYTE(v86[0]) = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_217752F88();
    }

LABEL_25:
    v46 = v80;
LABEL_26:
    v52 = v92;
    sub_21726A630(v92 + *(v46 + 28), v86, &qword_27CB24A98, &unk_217759060);
    if (*&v86[1] == 1)
    {
      sub_2171F0738(v86, &qword_27CB24A98, &unk_217759060);
      if (!*(*(v52 + v81[14]) + 16))
      {
        v56 = v83;
        goto LABEL_37;
      }

      v84[0] = *(v52 + v81[14]);
      LOBYTE(v86[0]) = 5;
      sub_217751DE8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_217752F88();
    }

    else
    {
      v53 = memcpy(v84, v86, 0x100uLL);
      v55 = *(v52 + v81[14]);
      if (!*(v55 + 16))
      {
        LOBYTE(v86[0]) = 5;
        sub_21733CB28(v53, v54, v55);
        sub_217752F88();
        sub_217284540(v84);
LABEL_36:
        v56 = v83;
        v46 = v80;
LABEL_37:
        v61 = v52;
        v62 = *(v52 + *(v46 + 32));
        v63 = *(v61 + v81[15]);
        v64 = *(v63 + 16);
        if (v62 == 1)
        {
          if (v64)
          {
            sub_217751DE8();
            v84[0] = sub_2174EB024(v82, v63);
            LOBYTE(v86[0]) = 6;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
            sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
            sub_217752F88();
          }

          else if (*(v82 + 16))
          {
            v84[0] = v82;
            LOBYTE(v86[0]) = 6;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
            sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
            sub_217752F88();

            (*(v56 + 8))(v5, v3, v70);
            return;
          }

          (*(v56 + 8))(v5, v3);
        }

        else
        {
          if (v64)
          {
            sub_2171FF30C(v79, v84);
            sub_217221020(v62);
            v65 = sub_217751DE8();
            v66 = sub_2174D638C(v65, v84);
            v67 = sub_217751DE8();
            v68 = sub_2175472EC(v67, v66);
            v69 = sub_2175472EC(v82, v68);
          }

          else
          {
            sub_2171FF30C(v79, v84);
            sub_217221020(v62);
            v71 = sub_217751DE8();
            v72 = sub_2174D638C(v71, v84);
            v69 = sub_2174D37FC(v82, v72);
          }

          v84[0] = v69;
          LOBYTE(v86[0]) = 6;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
          sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
          sub_217752F88();
          (*(v56 + 8))(v5, v3);
          sub_217221010(v62);
        }

        return;
      }

      *&v86[0] = sub_217388E08();
      v85 = 5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_217752F88();
      sub_217284540(v84);
    }

    goto LABEL_36;
  }

  v82 = v20;
  v80 = v5;
  sub_2171F3F0C(v86, v84);
  v22 = v15;
  v23 = v84[3];
  v24 = v84[4];
  __swift_project_boxed_opaque_existential_1(v84, v84[3]);
  v25 = (*(v24 + 48))(*(v7 + v22[12]), v79, v23, v24);
  v81 = v22;
  *&v86[0] = v25;
  v85 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
  v36 = sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  sub_217752F88();
  v78 = v36;

  v37 = v84[3];
  v38 = v84[4];
  __swift_project_boxed_opaque_existential_1(v84, v84[3]);
  v39 = (*(v38 + 56))(*(v92 + v81[13]), v79, v37, v38);
  if (v39)
  {
    *&v86[0] = v39;
    v85 = 4;
    sub_217752F88();
  }

  v40 = v84[3];
  v41 = v84[4];
  __swift_project_boxed_opaque_existential_1(v84, v84[3]);
  v42 = (*(v41 + 64))(*(v92 + v81[14]), v79, v40, v41);
  if (v42)
  {
    *&v86[0] = v42;
    v85 = 5;
    sub_217752F88();
    v77 = v3;
  }

  else
  {
    v77 = v3;
  }

  v57 = *(v92 + v81[15]);
  sub_217751DE8();
  v58 = sub_2174EB024(v82, v57);
  v59 = v84[3];
  v60 = v84[4];
  __swift_project_boxed_opaque_existential_1(v84, v84[3]);
  v73 = (*(v60 + 72))(v58, v79, v59, v60);

  if (v73)
  {
    *&v86[0] = v73;
    v85 = 6;
    v75 = v77;
    v76 = v80;
    sub_217752F88();
    (*(v83 + 8))(v76, v75);
  }

  else
  {
    (*(v83 + 8))(v80, v77, v74);
  }

  __swift_destroy_boxed_opaque_existential_1(v84);
}

uint64_t sub_217324958(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB257C8, &qword_21775D8B0);
  v59 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v54 - v3;
  v5 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB257D0, &qword_21775D8B8);
  v6 = v60;
  sub_21733CCD4(&qword_27CB257D8, &qword_27CB257D0, &qword_21775D8B8);
  sub_2177532F8();
  v63[0] = sub_2172E8FE8();
  v63[1] = v7;
  LOBYTE(v61[0]) = 0;
  sub_2172E1B18(v63[0], v7, v8);
  v9 = v58;
  sub_217752F88();
  if (v9)
  {

    return (*(v59 + 8))(v4, v2, v10);
  }

  else
  {
    v12 = v57;

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB257C0, &qword_21775D8A8);
    v15 = v13;
    v16 = *(v6 + *(v13 + 40) + 8);
    if (v16)
    {
      LOBYTE(v63[0]) = 2;
      v13 = sub_217752F48();
    }

    v17 = v12;
    v18 = v60;
    v19 = v60 + v15[9];
    v20 = *v19;
    v21 = *(v19 + 8);
    LOBYTE(v19) = *(v19 + 16);
    v63[48] = v20;
    v63[49] = v21;
    v64 = v19;
    v66 = 1;
    sub_21733ABF0(v13, v16, v14);
    sub_217751DE8();
    sub_217752F88();

    v22 = sub_217751DC8();
    memcpy(v63, (v18 + v15[11]), 0x180uLL);
    if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v63) == 1)
    {
      v58 = v22;
    }

    else
    {

      sub_217751378();
      swift_allocObject();
      sub_217751368();
      v23 = memcpy(v61, v63, sizeof(v61));
      sub_21733AC98(v23, v24, v25);
      v26 = sub_217751358();
      v31 = v30;
      v56 = v4;
      v58 = v26;
      sub_217751348();
      swift_allocObject();
      sub_217751338();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2388, sub_21733AD70, MEMORY[0x277D83808], MEMORY[0x277D83528]);
      sub_217751308();

      sub_217275694(v58, v31);

      v58 = v61[0];
      v4 = v56;
      v17 = v12;
    }

    v61[3] = type metadata accessor for CloudRecentlyPlayedMusicItem(0);
    v61[4] = &protocol witness table for CloudRecentlyPlayedMusicItem;
    __swift_allocate_boxed_opaque_existential_0(v61);
    sub_21733CAD0();
    __swift_project_boxed_opaque_existential_1(v61, v61[3]);
    CloudRecentlyPlayedMusicItem.mergeAttributes(with:for:)();
    v56 = v27;
    v62 = v27;
    v65 = 3;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    v29 = sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    v55 = v28;
    sub_217752F88();
    v54 = v29;

    __swift_project_boxed_opaque_existential_1(v61, v61[3]);
    CloudRecentlyPlayedMusicItem.mergeRelationships(with:for:)(*(v60 + v15[13]), v17, v32, v33, v34, v35, v36, v37, v54, v55);
    if (v38)
    {
      v56 = v38;
      v62 = v38;
      v65 = 4;
      sub_217752F88();
    }

    __swift_project_boxed_opaque_existential_1(v61, v61[3]);
    CloudRecentlyPlayedMusicItem.mergeAssociations(with:for:)(*(v60 + v15[14]), v17, v39, v40, v41, v42, v43, v44, v54, v55);
    if (v45)
    {
      v62 = v45;
      v65 = 5;
      sub_217752F88();
      v55 = v2;
      v56 = v4;
    }

    else
    {
      v55 = v2;
      v56 = v4;
    }

    v46 = v58;
    v47 = *(v60 + v15[15]);
    sub_217751DE8();
    sub_2174EB024(v46, v47);
    __swift_project_boxed_opaque_existential_1(v61, v61[3]);
    CloudRecentlyPlayedMusicItem.mergeMetadata(with:for:)();
    v49 = v48;

    v51 = v59;
    if (v49)
    {
      v62 = v49;
      v65 = 6;
      v52 = v55;
      v53 = v56;
      sub_217752F88();
      (*(v51 + 8))(v53, v52);
    }

    else
    {
      (*(v59 + 8))(v56, v55, v50);
    }

    return __swift_destroy_boxed_opaque_existential_1(v61);
  }
}

uint64_t sub_217325158(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25950, &qword_21775D9D8);
  v74 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v69 - v3;
  v5 = a1[3];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25958, &qword_21775D9E0);
  v6 = v75;
  sub_21733CCD4(&qword_27CB25960, &qword_27CB25958, &qword_21775D9E0);
  sub_2177532F8();
  CatalogSearchRawResponse.TopResult.id.getter();
  v78[0] = v7;
  v78[1] = v8;
  LOBYTE(v76[0]) = 0;
  sub_2172E1B18(v7, v8, v9);
  v10 = v73;
  sub_217752F88();
  if (v10)
  {

    return (*(v74 + 8))(v4, v2, v11);
  }

  else
  {
    v13 = v72;

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
    v16 = v14;
    v17 = *(v6 + *(v14 + 40) + 8);
    if (v17)
    {
      LOBYTE(v78[0]) = 2;
      v14 = sub_217752F48();
    }

    v18 = v13;
    v19 = v75;
    v20 = (v75 + v16[9]);
    v21 = *v20;
    v22 = v20[1];
    LOBYTE(v20) = *(v20 + 16);
    v78[48] = v21;
    v78[49] = v22;
    v79 = v20;
    v81 = 1;
    sub_21733ABF0(v14, v17, v15);
    sub_217751DE8();
    sub_217752F88();

    v23 = sub_217751DC8();
    memcpy(v78, (v19 + v16[11]), 0x180uLL);
    if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v78) == 1)
    {
      v73 = v23;
    }

    else
    {

      sub_217751378();
      swift_allocObject();
      sub_217751368();
      v31 = memcpy(v76, v78, sizeof(v76));
      sub_21733AC98(v31, v32, v33);
      v34 = sub_217751358();
      v39 = v38;
      v71 = v4;
      v73 = v34;
      sub_217751348();
      swift_allocObject();
      sub_217751338();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2388, sub_21733AD70, MEMORY[0x277D83808], MEMORY[0x277D83528]);
      sub_217751308();

      sub_217275694(v73, v39);

      v73 = v76[0];
      v4 = v71;
      v18 = v13;
    }

    v76[3] = type metadata accessor for CatalogSearchRawResponse.TopResult(0);
    v76[4] = &protocol witness table for CatalogSearchRawResponse.TopResult;
    __swift_allocate_boxed_opaque_existential_0(v76);
    v24 = v75;
    sub_21733CAD0();
    __swift_project_boxed_opaque_existential_1(v76, v76[3]);
    CatalogSearchRawResponse.TopResult.mergeAttributes(with:for:)(*(v24 + v16[12]), v18, v25, v26, v27, v28, v29, v30, v69, v70, v71, v72, v73, v74, v75, v76[0], v76[1], v76[2], v76[3], v76[4]);
    v71 = v35;
    v77 = v35;
    v80 = 3;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    v37 = sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    v70 = v36;
    sub_217752F88();
    v69 = v37;

    __swift_project_boxed_opaque_existential_1(v76, v76[3]);
    CatalogSearchRawResponse.TopResult.mergeRelationships(with:for:)(*(v75 + v16[13]), v18, v40, v41, v42, v43, v44, v45, v69, v70);
    if (v46)
    {
      v71 = v46;
      v77 = v46;
      v80 = 4;
      sub_217752F88();
    }

    __swift_project_boxed_opaque_existential_1(v76, v76[3]);
    CatalogSearchRawResponse.TopResult.mergeAssociations(with:for:)(*(v75 + v16[14]), v18, v47, v48, v49, v50, v51, v52, v69, v70);
    if (v53)
    {
      v77 = v53;
      v80 = 5;
      sub_217752F88();
      v70 = v2;
      v71 = v4;
    }

    else
    {
      v70 = v2;
      v71 = v4;
    }

    v54 = v73;
    v55 = *(v75 + v16[15]);
    sub_217751DE8();
    v56 = sub_2174EB024(v54, v55);
    __swift_project_boxed_opaque_existential_1(v76, v76[3]);
    CatalogSearchRawResponse.TopResult.mergeMetadata(with:for:)(v56, v13, v57, v58, v59, v60, v61, v62, v69, v70);
    v64 = v63;

    v66 = v74;
    if (v64)
    {
      v77 = v64;
      v80 = 6;
      v67 = v70;
      v68 = v71;
      sub_217752F88();
      (*(v66 + 8))(v68, v67);
    }

    else
    {
      (*(v74 + 8))(v71, v70, v65);
    }

    return __swift_destroy_boxed_opaque_existential_1(v76);
  }
}

uint64_t sub_217325958(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25898, &qword_21775D938);
  v59 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v54 - v3;
  v5 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB258A0, &qword_21775D940);
  v6 = v60;
  sub_21733CCD4(&qword_27CB258A8, &qword_27CB258A0, &qword_21775D940);
  sub_2177532F8();
  v63[0] = CloudPersonalRecommendation.Item.id.getter();
  v63[1] = v7;
  LOBYTE(v61[0]) = 0;
  sub_2172E1B18(v63[0], v7, v8);
  v9 = v58;
  sub_217752F88();
  if (v9)
  {

    return (*(v59 + 8))(v4, v2, v10);
  }

  else
  {
    v12 = v57;

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24948, &unk_21775A210);
    v15 = v13;
    v16 = *(v6 + *(v13 + 40) + 8);
    if (v16)
    {
      LOBYTE(v63[0]) = 2;
      v13 = sub_217752F48();
    }

    v17 = v12;
    v18 = v60;
    v19 = v60 + v15[9];
    v20 = *v19;
    v21 = *(v19 + 8);
    LOBYTE(v19) = *(v19 + 16);
    v63[48] = v20;
    v63[49] = v21;
    v64 = v19;
    v66 = 1;
    sub_21733ABF0(v13, v16, v14);
    sub_217751DE8();
    sub_217752F88();

    v22 = sub_217751DC8();
    memcpy(v63, (v18 + v15[11]), 0x180uLL);
    if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v63) == 1)
    {
      v58 = v22;
    }

    else
    {

      sub_217751378();
      swift_allocObject();
      sub_217751368();
      v23 = memcpy(v61, v63, sizeof(v61));
      sub_21733AC98(v23, v24, v25);
      v26 = sub_217751358();
      v31 = v30;
      v56 = v4;
      v58 = v26;
      sub_217751348();
      swift_allocObject();
      sub_217751338();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2388, sub_21733AD70, MEMORY[0x277D83808], MEMORY[0x277D83528]);
      sub_217751308();

      sub_217275694(v58, v31);

      v58 = v61[0];
      v4 = v56;
      v17 = v12;
    }

    v61[3] = type metadata accessor for CloudPersonalRecommendation.Item(0);
    v61[4] = &protocol witness table for CloudPersonalRecommendation.Item;
    __swift_allocate_boxed_opaque_existential_0(v61);
    sub_21733CAD0();
    __swift_project_boxed_opaque_existential_1(v61, v61[3]);
    CloudPersonalRecommendation.Item.mergeAttributes(with:for:)();
    v56 = v27;
    v62 = v27;
    v65 = 3;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    v29 = sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    v55 = v28;
    sub_217752F88();
    v54 = v29;

    __swift_project_boxed_opaque_existential_1(v61, v61[3]);
    CloudPersonalRecommendation.Item.mergeRelationships(with:for:)(*(v60 + v15[13]), v17, v32, v33, v34, v35, v36, v37, v54, v55);
    if (v38)
    {
      v56 = v38;
      v62 = v38;
      v65 = 4;
      sub_217752F88();
    }

    __swift_project_boxed_opaque_existential_1(v61, v61[3]);
    CloudPersonalRecommendation.Item.mergeAssociations(with:for:)(*(v60 + v15[14]), v17, v39, v40, v41, v42, v43, v44, v54, v55);
    if (v45)
    {
      v62 = v45;
      v65 = 5;
      sub_217752F88();
      v55 = v2;
      v56 = v4;
    }

    else
    {
      v55 = v2;
      v56 = v4;
    }

    v46 = v58;
    v47 = *(v60 + v15[15]);
    sub_217751DE8();
    sub_2174EB024(v46, v47);
    __swift_project_boxed_opaque_existential_1(v61, v61[3]);
    CloudPersonalRecommendation.Item.mergeMetadata(with:for:)();
    v49 = v48;

    v51 = v59;
    if (v49)
    {
      v62 = v49;
      v65 = 6;
      v52 = v55;
      v53 = v56;
      sub_217752F88();
      (*(v51 + 8))(v53, v52);
    }

    else
    {
      (*(v59 + 8))(v56, v55, v50);
    }

    return __swift_destroy_boxed_opaque_existential_1(v61);
  }
}

void sub_217326158(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB258F8, &qword_21775D988);
  v76 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v73 - v3;
  v5 = a1[3];
  v75 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25900, &unk_21775D990);
  sub_21733CCD4(&qword_27CB25908, &qword_27CB25900, &unk_21775D990);
  v6 = v78;
  v7 = sub_2177532F8();
  v8 = v6[1];
  v82[0] = *v6;
  v82[1] = v8;
  LOBYTE(v79[0]) = 0;
  sub_2172E1B18(v7, v9, v10);
  v11 = v77;
  v12 = sub_217752F88();
  if (v11)
  {
    (*(v76 + 8))(v4, v2);
    return;
  }

  v77 = a1;
  v14 = v76;
  v15 = v6[43];
  v16 = v6;
  if (v15)
  {
    LOBYTE(v82[0]) = 2;
    v12 = sub_217752F48();
  }

  v17 = v6[40];
  v18 = *(v6 + 328);
  v82[48] = v6[39];
  v82[49] = v17;
  v83 = v18;
  __dst[159] = 1;
  sub_21733ABF0(v12, v15, v13);
  sub_217751DE8();
  sub_217752F88();

  v20 = sub_217751DC8();
  memcpy(v82, (v16 + 352), 0x180uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v82) != 1)
  {

    sub_217751378();
    swift_allocObject();
    sub_217751368();
    v24 = memcpy(v79, v82, sizeof(v79));
    sub_21733AC98(v24, v25, v26);
    v28 = sub_217751358();
    v30 = v29;
    v75 = v4;
    sub_217751348();
    swift_allocObject();
    sub_217751338();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2388, sub_21733AD70, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_217751308();

    sub_217275694(v28, v30);

    v16 = v78;
    v20 = v79[0];
    v4 = v75;
  }

  sub_21733C5F0(v16, v79);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  if (!swift_dynamicCast())
  {
    memset(v80, 0, 40);
    sub_2171F0738(v80, &qword_27CB25588, &unk_21775D380);
    if (*(*(v16 + 736) + 16))
    {
      memcpy(__dst, (v16 + 16), 0x88uLL);
      v27 = v77;
      sub_2171FF30C(v77, v81);
      sub_21733C64C(__dst, v79);
      v35 = sub_2174D4658();
      v36 = sub_217751DE8();
      v79[0] = sub_2174D37FC(v36, v35);
      LOBYTE(v81[0]) = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_217752F88();

      v16 = v78;
    }

    else
    {
      memcpy(v79, (v16 + 16), 0x88uLL);
      memcpy(v81, (v16 + 16), sizeof(v81));
      __dst[158] = 3;
      v32 = sub_21733C64C(v79, v80);
      sub_21733C798(v32, v33, v34);
      sub_217752F88();
      v27 = v77;
      memcpy(v80, v81, 0x88uLL);
      sub_21733C7EC(v80);
    }

    sub_21726A630(v16 + 152, v81, &qword_27CB244B0, &unk_21776DB80);
    if (v81[2] == 1)
    {
      v47 = sub_2171F0738(v81, &qword_27CB244B0, &unk_21776DB80);
      v50 = *(v16 + 744);
      if (!*(v50 + 16))
      {
LABEL_27:
        v16 = v78;
LABEL_28:
        v54 = *(v16 + 280);
        v55 = *(v16 + 752);
        v56 = *(v55 + 16);
        if (v54)
        {
          if (v56)
          {
            v79[0] = v55;
            LOBYTE(v81[0]) = 5;
            sub_217751DE8();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
            sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
            sub_217752F88();
          }
        }

        else if (v56)
        {
          sub_2171FF30C(v27, v79);
          v57 = sub_2174D5898(v79);
          v58 = sub_217751DE8();
          v79[0] = sub_2174D37FC(v58, v57);
          LOBYTE(v81[0]) = 5;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
          sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
          sub_217752F88();
        }

        else
        {
          LOBYTE(v79[0]) = 5;
          sub_21733C6F0(v47, v48, v49);
          sub_217752F88();
        }

        v59 = v78[95];
        v60 = *(v59 + 16);
        if (v78[38] == 1)
        {
          if (v60)
          {
            sub_217751DE8();
            v79[0] = sub_2174EB024(v20, v59);
            LOBYTE(v81[0]) = 6;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
            sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
            sub_217752F88();
            (*(v14 + 8))(v4, v2);
          }

          else
          {
            if (*(v20 + 16))
            {
              v79[0] = v20;
              LOBYTE(v81[0]) = 6;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
              sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
              sub_217752F88();

              (*(v14 + 8))(v4, v2, v19);
              return;
            }

            (*(v14 + 8))(v4, v2);
          }
        }

        else
        {
          v73 = v78[38];
          v61 = v78[36];
          v62 = v78[37];
          if (v60)
          {
            v74 = v20;
            v75 = v4;
            sub_2171FF30C(v77, v79);
            v63 = v73;
            sub_21733C6A8(v61, v62, v73);
            sub_2172E1074(v61, v62, v63);
            v66 = sub_2174D6200(v61, v62, v63, v79);
            v67 = sub_217751DE8();
            v68 = sub_2175472EC(v67, v66);
            v79[0] = sub_2175472EC(v74, v68);
            LOBYTE(v81[0]) = 6;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
            sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
            v69 = v75;
            sub_217752F88();
            (*(v14 + 8))(v69, v2);
          }

          else
          {
            sub_2171FF30C(v77, v79);
            v64 = v73;
            sub_21733C6A8(v61, v62, v73);
            sub_2172E1074(v61, v62, v64);
            v65 = sub_2174D6200(v61, v62, v64, v79);
            v79[0] = sub_2174D37FC(v20, v65);
            LOBYTE(v81[0]) = 6;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
            sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
            sub_217752F88();
            (*(v14 + 8))(v4, v2);
          }

          sub_21733C6CC(v61, v62, v73);
        }

        return;
      }

      v79[0] = v50;
      LOBYTE(v81[0]) = 4;
      sub_217751DE8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_217752F88();
    }

    else
    {
      v51 = memcpy(v79, v81, 0x80uLL);
      v53 = *(v16 + 744);
      if (!*(v53 + 16))
      {
        LOBYTE(v81[0]) = 4;
        sub_21733C744(v51, v52, v53);
        sub_217752F88();
        v47 = sub_21728373C(v79);
        goto LABEL_28;
      }

      v81[0] = sub_217388B28();
      LOBYTE(v80[0]) = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_217752F88();
      sub_21728373C(v79);
    }

    goto LABEL_27;
  }

  v74 = v20;
  v75 = v4;
  v21 = v2;
  sub_2171F3F0C(v80, v81);
  v22 = v81[3];
  v23 = v81[4];
  __swift_project_boxed_opaque_existential_1(v81, v81[3]);
  v79[0] = (*(v23 + 48))(*(v16 + 736), v77, v22, v23);
  LOBYTE(v80[0]) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
  v31 = sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  sub_217752F88();
  v73 = v31;

  v37 = v81[3];
  v38 = v81[4];
  __swift_project_boxed_opaque_existential_1(v81, v81[3]);
  v39 = (*(v38 + 56))(v78[93], v77, v37, v38);
  if (v39)
  {
    v79[0] = v39;
    LOBYTE(v80[0]) = 4;
    sub_217752F88();
  }

  v40 = v81[3];
  v41 = v81[4];
  __swift_project_boxed_opaque_existential_1(v81, v81[3]);
  v42 = (*(v41 + 64))(v78[94], v77, v40, v41);
  if (v42)
  {
    v79[0] = v42;
    LOBYTE(v80[0]) = 5;
    sub_217752F88();
  }

  v43 = v78[95];
  sub_217751DE8();
  v44 = sub_2174EB024(v74, v43);
  v45 = v81[3];
  v46 = v81[4];
  __swift_project_boxed_opaque_existential_1(v81, v81[3]);
  v70 = (*(v46 + 72))(v44, v77, v45, v46);

  if (v70)
  {
    v79[0] = v70;
    LOBYTE(v80[0]) = 6;
    v72 = v75;
    sub_217752F88();
    (*(v14 + 8))(v72, v21);
  }

  else
  {
    (*(v14 + 8))(v75, v21, v71);
  }

  __swift_destroy_boxed_opaque_existential_1(v81);
}

void sub_217327354(void *a1)
{
  v91 = type metadata accessor for CloudMusicVideo(0);
  MEMORY[0x28223BE20](v91);
  v90 = &v85 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25850, &qword_21775D900);
  v101 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = (&v85 - v4);
  v6 = a1[3];
  v89 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25858, &qword_21775D908);
  sub_21733CCD4(&qword_27CB25860, &qword_27CB25858, &qword_21775D908);
  v7 = v93;
  v8 = sub_2177532F8();
  v9 = v7[1];
  v96[0] = *v7;
  v96[1] = v9;
  LOBYTE(v95[0]) = 0;
  sub_2172E1B18(v8, v10, v11);
  v12 = v92;
  sub_217752F88();
  if (v12)
  {
    (*(v101 + 8))(v5, v3);
    return;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  v15 = v13;
  v16 = *(v7 + *(v13 + 40) + 8);
  if (v16)
  {
    LOBYTE(v96[0]) = 2;
    v13 = sub_217752F48();
  }

  v17 = v7 + v15[9];
  v18 = *v17;
  v19 = *(v17 + 1);
  LOBYTE(v17) = v17[16];
  v98 = v18;
  v99 = v19;
  v100 = v17;
  v97[391] = 1;
  sub_21733ABF0(v13, v16, v14);
  sub_217751DE8();
  sub_217752F88();

  v21 = sub_217751DC8();
  memcpy(v97, v7 + v15[11], 0x180uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v97) != 1)
  {

    sub_217751378();
    swift_allocObject();
    v28 = sub_217751368();
    v29 = memcpy(v96, v97, 0x180uLL);
    sub_21733AC98(v29, v30, v31);
    v32 = sub_217751358();
    v87 = v28;
    v88 = v32;
    v92 = v38;
    sub_217751348();
    swift_allocObject();
    sub_217751338();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2388, sub_21733AD70, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_217751308();

    sub_217275694(v88, v92);

    v21 = v96[0];
    v7 = v93;
  }

  sub_21733CAD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  v22 = v91;
  if (!swift_dynamicCast())
  {
    memset(v95, 0, 40);
    sub_2171F0738(v95, &qword_27CB25588, &unk_21775D380);
    v90 = v15;
    v33 = *(v7 + v15[12]);
    v34 = v7;
    v35 = v22[5];
    if (*(v33 + 16))
    {
      v36 = v89;
      v37 = sub_2173886A0(v34 + v35, v89, v33);
      v92 = v21;
      v96[0] = v37;
      LOBYTE(v95[0]) = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_217752F88();

      v45 = v92;
      v46 = v36;
      v47 = v101;
    }

    else
    {
      v92 = v21;
      LOBYTE(v96[0]) = 3;
      type metadata accessor for CloudMusicVideo.Attributes(0);
      sub_21733CDD0(&qword_27CB25878, type metadata accessor for CloudMusicVideo.Attributes, &protocol conformance descriptor for CloudMusicVideo.Attributes);
      sub_217752F88();
      v47 = v101;
      v46 = v89;
      v45 = v92;
    }

    sub_21726A630(v34 + v91[6], v95, &qword_27CB243A8, &unk_217777720);
    if (*&v95[1] == 1)
    {
      v92 = v45;
      sub_2171F0738(v95, &qword_27CB243A8, &unk_217777720);
      v48 = *(v34 + *(v90 + 52));
      if (!*(v48 + 16))
      {
        goto LABEL_25;
      }

      v96[0] = v48;
      LOBYTE(v95[0]) = 4;
      sub_217751DE8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_217752F88();
    }

    else
    {
      v49 = memcpy(v96, v95, sizeof(v96));
      v51 = *(v34 + *(v90 + 52));
      if (!*(v51 + 16))
      {
        v92 = v45;
        LOBYTE(v95[0]) = 4;
        sub_21733C4A8(v49, v50, v51);
        sub_217752F88();
        sub_21726A3FC(v96);
        goto LABEL_25;
      }

      v52 = sub_217388950(v96, v46, v51);
      v92 = v45;
      *&v95[0] = v52;
      v94 = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_217752F88();
      sub_21726A3FC(v96);
    }

LABEL_25:
    v56 = v90;
    v57 = v93;
    sub_21726A630(v93 + v91[7], v95, &qword_27CB24A90, &unk_21775D5B0);
    if (*&v95[1] == 1)
    {
      sub_2171F0738(v95, &qword_27CB24A90, &unk_21775D5B0);
      v58 = *(v57 + *(v56 + 56));
      if (!*(v58 + 16))
      {
LABEL_34:
        v56 = v90;
LABEL_35:
        v66 = (v93 + v91[8]);
        if (v66[3] == 1)
        {
          v67 = *(v93 + *(v56 + 60));
          v68 = v92;
          if (*(v67 + 16))
          {
            sub_217751DE8();
            v96[0] = sub_2174EB024(v68, v67);
            LOBYTE(v95[0]) = 6;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
            sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
            sub_217752F88();
            (*(v47 + 8))(v5, v3);
          }

          else
          {
            if (*(v92 + 16))
            {
              v96[0] = v92;
              LOBYTE(v95[0]) = 6;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
              sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
              sub_217752F88();

              (*(v47 + 8))(v5, v3, v20);
              return;
            }

            (*(v47 + 8))(v5, v3);
          }
        }

        else
        {
          v90 = v66[3];
          v69 = v56;
          v70 = *v66;
          v91 = v66[1];
          v71 = v66[2];
          if (*(*(v93 + *(v69 + 60)) + 16))
          {
            v86 = v3;
            sub_2171FF30C(v89, v96);
            v73 = v90;
            v72 = v91;
            sub_21733C3CC(v70, v91, v71, v90);
            sub_217221020(v70);
            sub_217751DE8();
            v93 = v71;
            v77 = sub_2174D5C54(v70, v72, v71 & 1, v73, v96);
            v71 = v93;
            v78 = sub_217751DE8();
            v79 = sub_2175472EC(v78, v77);
            v96[0] = sub_2175472EC(v92, v79);
            LOBYTE(v95[0]) = 6;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
            sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
            v80 = v86;
          }

          else
          {
            sub_2171FF30C(v89, v96);
            v75 = v90;
            v74 = v91;
            sub_21733C3CC(v70, v91, v71, v90);
            sub_217221020(v70);
            sub_217751DE8();
            v76 = sub_2174D5C54(v70, v74, v71 & 1, v75, v96);
            v80 = v3;
            v96[0] = sub_2174D37FC(v92, v76);
            LOBYTE(v95[0]) = 6;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
            sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
          }

          sub_217752F88();
          (*(v47 + 8))(v5, v80);
          sub_21733C410(v70, v91, v71, v90);
        }

        return;
      }

      v96[0] = v58;
      LOBYTE(v95[0]) = 5;
      sub_217751DE8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_217752F88();
    }

    else
    {
      v59 = memcpy(v96, v95, 0x100uLL);
      v61 = *(v57 + *(v56 + 56));
      if (!*(v61 + 16))
      {
        LOBYTE(v95[0]) = 5;
        sub_21733C454(v59, v60, v61);
        sub_217752F88();
        sub_2172844EC(v96);
        goto LABEL_35;
      }

      *&v95[0] = sub_217388CF8(v96, v89, v61);
      v94 = 5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_217752F88();
      sub_2172844EC(v96);
    }

    goto LABEL_34;
  }

  v91 = v5;
  v92 = v21;
  sub_2171F3F0C(v95, v96);
  v23 = v15;
  v24 = v7;
  v25 = v96[3];
  v26 = v96[4];
  __swift_project_boxed_opaque_existential_1(v96, v96[3]);
  v27 = (*(v26 + 48))(*(v24 + *(v23 + 48)), v89, v25, v26);
  v90 = v23;
  *&v95[0] = v27;
  v94 = 3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
  v40 = sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  sub_217752F88();
  v87 = v40;
  v88 = v39;

  v41 = v96[3];
  v42 = v96[4];
  __swift_project_boxed_opaque_existential_1(v96, v96[3]);
  v43 = v90;
  v44 = (*(v42 + 56))(*(v93 + *(v90 + 52)), v89, v41, v42);
  if (v44)
  {
    *&v95[0] = v44;
    v94 = 4;
    sub_217752F88();
  }

  v53 = v96[3];
  v54 = v96[4];
  __swift_project_boxed_opaque_existential_1(v96, v96[3]);
  v55 = (*(v54 + 64))(*(v93 + *(v43 + 56)), v89, v53, v54);
  if (v55)
  {
    *&v95[0] = v55;
    v94 = 5;
    sub_217752F88();
    v86 = v3;
  }

  else
  {
    v86 = v3;
  }

  v62 = *(v93 + *(v43 + 60));
  sub_217751DE8();
  v63 = sub_2174EB024(v92, v62);
  v64 = v96[3];
  v65 = v96[4];
  __swift_project_boxed_opaque_existential_1(v96, v96[3]);
  v81 = (*(v65 + 72))(v63, v89, v64, v65);

  if (v81)
  {
    *&v95[0] = v81;
    v94 = 6;
    v83 = v86;
    v84 = v91;
    sub_217752F88();
    (*(v101 + 8))(v84, v83);
  }

  else
  {
    (*(v101 + 8))(v91, v86, v82);
  }

  __swift_destroy_boxed_opaque_existential_1(v96);
}