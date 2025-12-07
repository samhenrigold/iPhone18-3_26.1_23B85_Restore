uint64_t storeEnumTagSinglePayload for NetworkStatus(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10003B674()
{
  result = qword_1000CAFC8;
  if (!qword_1000CAFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CAFC8);
  }

  return result;
}

unint64_t sub_10003B6C8()
{
  result = qword_1000CAFD0;
  if (!qword_1000CAFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CAFD0);
  }

  return result;
}

unint64_t sub_10003B77C()
{
  result = qword_1000CAFE0;
  if (!qword_1000CAFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CAFE0);
  }

  return result;
}

unint64_t sub_10003B7D0()
{
  result = qword_1000CAFE8;
  if (!qword_1000CAFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CAFE8);
  }

  return result;
}

unint64_t sub_10003B884()
{
  result = qword_1000CAFF8;
  if (!qword_1000CAFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CAFF8);
  }

  return result;
}

unint64_t sub_10003B8D8()
{
  result = qword_1000CB000;
  if (!qword_1000CB000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB000);
  }

  return result;
}

uint64_t sub_10003B98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10003B9C8()
{
  result = qword_1000CB010;
  if (!qword_1000CB010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB010);
  }

  return result;
}

unint64_t sub_10003BA1C()
{
  result = qword_1000CB018;
  if (!qword_1000CB018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB018);
  }

  return result;
}

uint64_t sub_10003BAA4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000594C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10003BB34()
{
  v1 = type metadata accessor for SPIAnalyticsEvent(0);
  __chkstk_darwin(v1);
  v3 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003BF8C(v0, v3);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v35 = sub_100003714(&qword_1000CB078, &qword_1000A18E0);
      *&v3[v35[20]], v36, v37, v38, v39, v40, v41, v42;
      *&v3[v35[24] + 8], v43, v44, v45, v46, v47, v48, v49;
      v50 = &v3[v35[28]];
      sub_10003C04C(*v50, *(v50 + 1), *(v50 + 2), *(v50 + 3), *(v50 + 4), v50[40], v51, v52);
      v53 = sub_10009D860();
      (*(*(v53 - 8) + 8))(v3, v53);
      result = 0xD000000000000029;
      break;
    case 2u:
    case 3u:
    case 8u:
    case 0xDu:
      sub_10003BFF0(v3);
      result = 0xD00000000000002BLL;
      break;
    case 4u:
    case 6u:
      sub_10003BFF0(v3);
      result = 0xD000000000000030;
      break;
    case 5u:
    case 0xAu:
      sub_10003BFF0(v3);
      result = 0xD000000000000026;
      break;
    case 7u:
    case 9u:
      sub_10003BFF0(v3);
      result = 0xD000000000000022;
      break;
    case 0xBu:
      sub_10003BFF0(v3);
      result = 0xD000000000000036;
      break;
    case 0xCu:
      v17 = sub_100003714(&qword_1000CB070, &unk_1000A18D0);

      *&v3[v17[24]], v18, v19, v20, v21, v22, v23, v24;
      *&v3[v17[28] + 8], v25, v26, v27, v28, v29, v30, v31;
      v32 = &v3[v17[32]];
      sub_10003C04C(*v32, *(v32 + 1), *(v32 + 2), *(v32 + 3), *(v32 + 4), v32[40], v33, v34);
      sub_100008728(v3, &qword_1000CA250, &qword_10009FDF8);
      result = 0xD000000000000038;
      break;
    case 0xEu:
      sub_10003BFF0(v3);
      goto LABEL_4;
    default:
      v4 = sub_100003714(&qword_1000CB080, &qword_1000A18E8);
      *&v3[*(v4 + 64) + 8], v5, v6, v7, v8, v9, v10, v11;
      v12 = &v3[*(v4 + 80)];
      sub_10003C04C(*v12, *(v12 + 1), *(v12 + 2), *(v12 + 3), *(v12 + 4), v12[40], v13, v14);
      v15 = sub_10009D860();
      (*(*(v15 - 8) + 8))(v3, v15);
LABEL_4:
      result = 0xD000000000000028;
      break;
  }

  return result;
}

uint64_t type metadata accessor for SPIAnalyticsEvent(uint64_t a1)
{
  result = qword_1000CB100;
  if (!qword_1000CB100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003BF8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SPIAnalyticsEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003BFF0(uint64_t a1)
{
  v2 = type metadata accessor for SPIAnalyticsEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10003C04C(uint64_t a1, _TtC13SPIHelper_iOS9SPIHelper *a2, void *a3, void *a4, _TtC13SPIHelper_iOS9SPIHelper *a5, int64_t a6, int64_t a7, uint64_t a8)
{
  if (a6 != 0xFF)
  {
    sub_1000323E0(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

void *sub_10003C060()
{
  v1 = v0;
  v2 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  __chkstk_darwin(v2 - 8);
  v4 = &v210 - v3;
  v5 = sub_10009D860();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v210 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SPIAnalyticsEvent(0);
  __chkstk_darwin(v9);
  v11 = &v210 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003BF8C(v1, v11);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v177 = sub_100003714(&qword_1000CB078, &qword_1000A18E0);
      v178 = v177[12];
      v179 = v177[16];
      v180 = *&v11[v177[20]];
      v181 = &v11[v177[24]];
      v182 = v181[1];
      v210 = *v181;
      v183 = &v11[v177[28]];
      v184 = *(v183 + 1);
      v212 = *v183;
      v213[0] = v184;
      *(v213 + 9) = *(v183 + 25);
      v185 = v183[40];
      v186 = v11[v178];
      v187 = v11[v179];
      (*(v6 + 32))(v8, v11, v5);
      (*(v6 + 16))(v4, v8, v5);
      (*(v6 + 56))(v4, 0, 1, v5);
      sub_10009339C(v186, v185 != 255);
      sub_100093528(v187, v185 != 255);
      sub_100093698(v186, v180, v188, v189, v190, v191, v192, v193);
      v194 = sub_100092CB8(v4, 0, v210, v182, &v212, 0, 0xE000000000000000);
      v182, v195, v196, v197, v198, v199, v200, v201;
      isa = sub_10009DF90().super.super.isa;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v211 = v194;
      sub_10003D290(isa, 0x737365636361, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
      v204 = v211;
      v205 = sub_10009DF90().super.super.isa;
      v206 = swift_isUniquelyReferenced_nonNull_native();
      v211 = v204;
      sub_10003D290(v205, 0x697373696D726570, 0xEB00000000736E6FLL, v206);
      v207 = v211;
      v208 = sub_10009DF90().super.super.isa;
      v209 = swift_isUniquelyReferenced_nonNull_native();
      v211 = v207;
      sub_10003D290(v208, 0x766E49776F6C6C61, 0xED0000676E697469, v209);
      sub_100008728(&v212, &qword_1000CB088, &unk_1000A18F0);
      v17 = v211;
      sub_100008728(v4, &qword_1000CA250, &qword_10009FDF8);
      goto LABEL_15;
    case 2u:
      v95 = *(v11 + 1);
      v210 = *v11;
      v97 = *(v11 + 3);
      v96 = *(v11 + 4);
      v98 = *(v11 + 5);
      v99 = *(v11 + 4);
      v212 = *(v11 + 3);
      v213[0] = v99;
      *(v213 + 9) = *(v11 + 73);
      v100 = v11[88];
      v101 = v11[16];
      v102 = v11[17];
      (*(v6 + 56))(v4, 1, 1, v5);
      sub_10009339C(v101, v100 != 255);
      sub_100093528(v102, v100 != 255);
      sub_100093698(v101, v97, v103, v104, v105, v106, v107, v108);
      v109 = sub_100092CB8(v4, 0, v96, v98, &v212, v210, v95);
      v95, v110, v111, v112, v113, v114, v115, v116;
      v98, v117, v118, v119, v120, v121, v122, v123;
      v124 = sub_10009DF90().super.super.isa;
      v125 = swift_isUniquelyReferenced_nonNull_native();
      v211 = v109;
      sub_10003D290(v124, 0x737365636361, 0xE600000000000000, v125);
      v126 = v211;
      v127 = sub_10009DF90().super.super.isa;
      v128 = swift_isUniquelyReferenced_nonNull_native();
      v211 = v126;
      sub_10003D290(v127, 0x697373696D726570, 0xEB00000000736E6FLL, v128);
      v129 = v211;
      goto LABEL_9;
    case 3u:
      v130 = *(v11 + 1);
      v131 = *(v11 + 2);
      v132 = *(v11 + 3);
      v133 = *(v11 + 3);
      v212 = *(v11 + 2);
      v213[0] = v133;
      *(v213 + 9) = *(v11 + 57);
      v134 = v11[72];
      v135 = *v11;
      v136 = v11[1];
      (*(v6 + 56))(v4, 1, 1, v5);
      sub_10009339C(v135, v134 != 255);
      sub_100093528(v136, v134 != 255);
      sub_100093698(v135, v130, v137, v138, v139, v140, v141, v142);
      v143 = sub_100092CB8(v4, 0, v131, v132, &v212, 0, 0xE000000000000000);
      v132, v144, v145, v146, v147, v148, v149, v150;
      v151 = sub_10009DF90().super.super.isa;
      v152 = swift_isUniquelyReferenced_nonNull_native();
      v211 = v143;
      sub_10003D290(v151, 0x737365636361, 0xE600000000000000, v152);
      v153 = v211;
      v154 = sub_10009DF90().super.super.isa;
      v155 = swift_isUniquelyReferenced_nonNull_native();
      v211 = v153;
      sub_10003D290(v154, 0x697373696D726570, 0xEB00000000736E6FLL, v155);
      v129 = v211;
LABEL_9:
      v156 = sub_10009DF90().super.super.isa;
      v157 = swift_isUniquelyReferenced_nonNull_native();
      v211 = v129;
      sub_10003D290(v156, 0x766E49776F6C6C61, 0xED0000676E697469, v157);
      sub_100008728(&v212, &qword_1000CB088, &unk_1000A18F0);
      goto LABEL_10;
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
      v12 = *v11;
      v13 = *(v11 + 1);
      v14 = *(v11 + 2);
      v15 = *(v11 + 3);
      v16 = *(v11 + 3);
      v212 = *(v11 + 2);
      v213[0] = v16;
      *(v213 + 9) = *(v11 + 57);
      (*(v6 + 56))(v4, 1, 1, v5);
      v17 = sub_100092CB8(v4, 0, v14, v15, &v212, v12, v13);
      sub_100008728(&v212, &qword_1000CB088, &unk_1000A18F0);
      v13, v18, v19, v20, v21, v22, v23, v24;
      v15, v25, v26, v27, v28, v29, v30, v31;
      goto LABEL_11;
    case 9u:
    case 0xBu:
      v34 = *v11;
      v35 = *(v11 + 1);
      v36 = *(v11 + 2);
      v37 = *(v11 + 40);
      v212 = *(v11 + 24);
      v213[0] = v37;
      *(v213 + 9) = *(v11 + 49);
      (*(v6 + 56))(v4, 1, 1, v5);
      v17 = sub_100092CB8(v4, v34, v35, v36, &v212, 0, 0xE000000000000000);
      sub_100008728(&v212, &qword_1000CB088, &unk_1000A18F0);

      v36, v38, v39, v40, v41, v42, v43, v44;
      goto LABEL_11;
    case 0xAu:
      v46 = *v11;
      v45 = *(v11 + 1);
      v47 = *(v11 + 2);
      v48 = *(v11 + 3);
      v49 = *(v11 + 3);
      v212 = *(v11 + 2);
      v213[0] = v49;
      *(v213 + 9) = *(v11 + 57);
      sub_100093750(v45, v11[72] != 255);
      (*(v6 + 56))(v4, 1, 1, v5);
      v50 = sub_100092CB8(v4, v46, v47, v48, &v212, 0, 0xE000000000000000);
      v48, v51, v52, v53, v54, v55, v56, v57;
      sub_100008728(v4, &qword_1000CA250, &qword_10009FDF8);
      v58 = sub_10009DF90().super.super.isa;
      v59 = swift_isUniquelyReferenced_nonNull_native();
      v211 = v50;
      sub_10003D290(v58, 0x737574617473, 0xE600000000000000, v59);
      sub_100008728(&v212, &qword_1000CB088, &unk_1000A18F0);

      return v211;
    case 0xCu:
      v60 = sub_100003714(&qword_1000CB070, &unk_1000A18D0);
      v61 = *&v11[v60[12]];
      v62 = v60[16];
      v63 = *&v11[v60[24]];
      v64 = v60[20];
      v65 = &v11[v60[28]];
      v66 = *v65;
      v67 = v65[1];
      v68 = &v11[v60[32]];
      v69 = *(v68 + 1);
      v212 = *v68;
      v213[0] = v69;
      *(v213 + 9) = *(v68 + 25);
      v70 = v11[v62];
      v71 = v11[v64];
      v72 = v68[40];
      sub_100017C10(v11, v4);
      sub_10009339C(v70, v72 != 255);
      sub_100093528(v71, v72 != 255);
      sub_100093698(v70, v63, v73, v74, v75, v76, v77, v78);
      v79 = sub_100092CB8(v4, v61, v66, v67, &v212, 0, 0xE000000000000000);
      v67, v80, v81, v82, v83, v84, v85, v86;
      v87 = sub_10009DF90().super.super.isa;
      v88 = swift_isUniquelyReferenced_nonNull_native();
      v211 = v79;
      sub_10003D290(v87, 0x737365636361, 0xE600000000000000, v88);
      v89 = v211;
      v90 = sub_10009DF90().super.super.isa;
      v91 = swift_isUniquelyReferenced_nonNull_native();
      v211 = v89;
      sub_10003D290(v90, 0x697373696D726570, 0xEB00000000736E6FLL, v91);
      v92 = v211;
      v93 = sub_10009DF90().super.super.isa;
      v94 = swift_isUniquelyReferenced_nonNull_native();
      v211 = v92;
      sub_10003D290(v93, 0x766E49776F6C6C61, 0xED0000676E697469, v94);
      sub_100008728(&v212, &qword_1000CB088, &unk_1000A18F0);

LABEL_10:
      v17 = v211;
      goto LABEL_11;
    case 0xDu:
    case 0xEu:
      v32 = *v11;
      v33 = *(v11 + 24);
      v212 = *(v11 + 8);
      v213[0] = v33;
      *(v213 + 9) = *(v11 + 33);
      (*(v6 + 56))(v4, 1, 1, v5);
      v17 = sub_100092CB8(v4, v32, 0, 0, &v212, 0, 0xE000000000000000);
      sub_100008728(&v212, &qword_1000CB088, &unk_1000A18F0);

LABEL_11:
      sub_100008728(v4, &qword_1000CA250, &qword_10009FDF8);
      break;
    default:
      v159 = sub_100003714(&qword_1000CB080, &qword_1000A18E8);
      v160 = *&v11[v159[12]];
      v161 = &v11[v159[16]];
      v163 = *v161;
      v162 = v161[1];
      v164 = &v11[v159[20]];
      v165 = *(v164 + 1);
      v212 = *v164;
      v213[0] = v165;
      *(v213 + 9) = *(v164 + 25);
      v166 = v164[40];
      (*(v6 + 32))(v8, v11, v5);
      sub_100091D0C(v160, v166 != 255);
      (*(v6 + 16))(v4, v8, v5);
      (*(v6 + 56))(v4, 0, 1, v5);
      v167 = sub_100092CB8(v4, 0, v163, v162, &v212, 0, 0xE000000000000000);
      v162, v168, v169, v170, v171, v172, v173, v174;
      sub_100008728(v4, &qword_1000CA250, &qword_10009FDF8);
      v175 = sub_10009DF90().super.super.isa;
      v176 = swift_isUniquelyReferenced_nonNull_native();
      v211 = v167;
      sub_10003D290(v175, 0x737574617473, 0xE600000000000000, v176);
      sub_100008728(&v212, &qword_1000CB088, &unk_1000A18F0);
      v17 = v211;
LABEL_15:
      (*(v6 + 8))(v8, v5);
      break;
  }

  return v17;
}

BOOL sub_10003CCE4()
{
  v1 = type metadata accessor for SPIAnalyticsEvent(0);
  __chkstk_darwin(v1);
  v3 = &v87 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003BF8C(v0, v3);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v69 = sub_100003714(&qword_1000CB078, &qword_1000A18E0);
      *&v3[v69[20]], v70, v71, v72, v73, v74, v75, v76;
      *&v3[v69[24] + 8], v77, v78, v79, v80, v81, v82, v83;
      v68 = v69[28];
      goto LABEL_14;
    case 2u:
      v49 = *(v3 + 1);
      v50 = *(v3 + 3);
      v51 = *(v3 + 5);
      v52 = *(v3 + 4);
      v87 = *(v3 + 3);
      v88 = v52;
      v14 = *(v3 + 10);
      v15 = v3[88];
      v49, v4, v5, v6, v7, v8, v9, v10;
      v50, v53, v54, v55, v56, v57, v58, v59;
      v30 = v51;
      goto LABEL_8;
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
      v11 = *(v3 + 1);
      v12 = *(v3 + 3);
      v13 = *(v3 + 3);
      v87 = *(v3 + 2);
      v88 = v13;
      v14 = *(v3 + 8);
      v15 = v3[72];
      v11, v4, v5, v6, v7, v8, v9, v10;
      goto LABEL_7;
    case 9u:
    case 0xBu:
      v27 = *v3;
      v12 = *(v3 + 2);
      v28 = *(v3 + 40);
      v87 = *(v3 + 24);
      v88 = v28;
      v14 = *(v3 + 7);
      v15 = v3[64];
      goto LABEL_6;
    case 0xAu:
      v27 = *v3;
      v12 = *(v3 + 3);
      v29 = *(v3 + 3);
      v87 = *(v3 + 2);
      v88 = v29;
      v14 = *(v3 + 8);
      v15 = v3[72];
LABEL_6:

LABEL_7:
      v30 = v12;
LABEL_8:
      v30, v16, v17, v18, v19, v20, v21, v22;
      break;
    case 0xCu:
      v32 = sub_100003714(&qword_1000CB070, &unk_1000A18D0);

      *&v3[v32[24]], v33, v34, v35, v36, v37, v38, v39;
      *&v3[v32[28] + 8], v40, v41, v42, v43, v44, v45, v46;
      v47 = &v3[v32[32]];
      v48 = *(v47 + 1);
      v87 = *v47;
      v88 = v48;
      v14 = *(v47 + 4);
      v15 = v47[40];
      sub_100008728(v3, &qword_1000CA250, &qword_10009FDF8);
      break;
    case 0xDu:
    case 0xEu:
      v23 = *v3;
      v24 = *(v3 + 24);
      v87 = *(v3 + 8);
      v88 = v24;
      v14 = *(v3 + 5);
      v15 = v3[48];

      break;
    default:
      v60 = sub_100003714(&qword_1000CB080, &qword_1000A18E8);
      *&v3[*(v60 + 64) + 8], v61, v62, v63, v64, v65, v66, v67;
      v68 = *(v60 + 80);
LABEL_14:
      v84 = &v3[v68];
      v85 = *(v84 + 1);
      v87 = *v84;
      v88 = v85;
      v14 = *(v84 + 4);
      v15 = v84[40];
      v86 = sub_10009D860();
      (*(*(v86 - 8) + 8))(v3, v86);
      break;
  }

  sub_10003C04C(v87, *(&v87 + 1), v88, *(&v88 + 1), v14, v15, v25, v26);
  return v15 != 255;
}

uint64_t sub_10003CFEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003714(&qword_1000CAD90, &qword_1000A1280);
  v35 = v4;
  result = sub_10009E280();
  v7 = result;
  if (*(v5 + 16))
  {
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
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_10009E380();
      sub_10009DDE0();
      result = sub_10009E3A0();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10003D290(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100030DD4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10003CFEC(v16, a4 & 1);
      v11 = sub_100030DD4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_10009E300();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_10009100C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_10003D458(uint64_t a1)
{
  sub_10003D920(319, &qword_1000CB110, &type metadata accessor for URL, type metadata accessor for CSUIShareItemStatus);
  if (v1 <= 0x3F)
  {
    sub_10003D5C4(319);
    if (v2 <= 0x3F)
    {
      sub_10003D680(319);
      if (v3 <= 0x3F)
      {
        sub_10003D73C(319);
        if (v4 <= 0x3F)
        {
          sub_10003D7F0(319);
          if (v5 <= 0x3F)
          {
            sub_10003D880(319);
            if (v6 <= 0x3F)
            {
              sub_10003D920(319, &qword_1000CB140, sub_10000856C, type metadata accessor for CSUICurrentUserCKShareStatus);
              if (v7 <= 0x3F)
              {
                sub_10003D9D8(319);
                if (v8 <= 0x3F)
                {
                  sub_10003DAB8(319);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_10003D5C4(uint64_t a1)
{
  if (!qword_1000CB118)
  {
    sub_10009D860();
    sub_10000594C(&qword_1000CA6A0, &qword_10009FD50);
    sub_10000594C(&qword_1000CB088, &unk_1000A18F0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1000CB118);
    }
  }
}

void sub_10003D680(uint64_t a1)
{
  if (!qword_1000CB120)
  {
    sub_10000594C(&qword_1000CA6A0, &qword_10009FD50);
    sub_10000594C(&qword_1000CB088, &unk_1000A18F0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1000CB120);
    }
  }
}

void sub_10003D73C(uint64_t a1)
{
  if (!qword_1000CB128)
  {
    sub_10000594C(&qword_1000CA6A0, &qword_10009FD50);
    sub_10000594C(&qword_1000CB088, &unk_1000A18F0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1000CB128);
    }
  }
}

void sub_10003D7F0(uint64_t a1)
{
  if (!qword_1000CB130)
  {
    sub_10000594C(&qword_1000CA6A0, &qword_10009FD50);
    sub_10000594C(&qword_1000CB088, &unk_1000A18F0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1000CB130);
    }
  }
}

void sub_10003D880(uint64_t a1)
{
  if (!qword_1000CB138)
  {
    sub_10000856C();
    sub_10000594C(&qword_1000CA6A0, &qword_10009FD50);
    sub_10000594C(&qword_1000CB088, &unk_1000A18F0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1000CB138);
    }
  }
}

void sub_10003D920(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    sub_10000594C(&qword_1000CA6A0, &qword_10009FD50);
    sub_10000594C(&qword_1000CB088, &unk_1000A18F0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata, a2);
    }
  }
}

void sub_10003D9D8(uint64_t a1)
{
  if (!qword_1000CB148)
  {
    sub_10000594C(&qword_1000CA250, &qword_10009FDF8);
    sub_10000594C(&qword_1000CB150, &qword_1000A1920);
    sub_10000594C(&qword_1000CA6A0, &qword_10009FD50);
    sub_10000594C(&qword_1000CB088, &unk_1000A18F0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1000CB148);
    }
  }
}

void sub_10003DAB8(uint64_t a1)
{
  if (!qword_1000CB158)
  {
    sub_10000594C(&qword_1000CB150, &qword_1000A1920);
    sub_10000594C(&qword_1000CB088, &unk_1000A18F0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000CB158);
    }
  }
}

_TtC13SPIHelper_iOS9SPIHelper *sub_10003DB40(void *a1)
{
  v2 = sub_10009D9F0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000067C8(a1, a1[3]);
  v6 = sub_10003C060();
  sub_10009D9D0();

  v7 = sub_10009D9E0();
  v8 = sub_10009DFF0();
  v6, v9, v10, v11, v12, v13, v14, v15;
  if (os_log_type_enabled(v7, v8))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v31 = v17;
    *v16 = 136315138;
    sub_10003DD30();
    v18 = sub_10009DD10();
    v20 = v19;
    v21 = sub_1000307A4(v18, v19, &v31);
    v20, v22, v23, v24, v25, v26, v27, v28;
    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v7, v8, "Analytics payload: %s", v16, 0xCu);
    sub_10000670C(v17);
  }

  (*(v3 + 8))(v5, v2);
  return v6;
}

unint64_t sub_10003DD30()
{
  result = qword_1000CAD58;
  if (!qword_1000CAD58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000CAD58);
  }

  return result;
}

uint64_t sub_10003DD80(uint64_t a1)
{
  result = sub_10009DB10();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10003DE1C@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  *a2 = v4;
  return result;
}

uint64_t sub_10003DE9C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10009DB00();
}

uint64_t sub_10003DF10()
{
  v0 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v1 = __chkstk_darwin(v0);
  v30 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v4 = &v29 - v3;
  v5 = sub_10009D860();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__rootFolderURL;
  v33 = v0;
  v9 = sub_1000390F0();
  v34 = v9;
  swift_getKeyPath();
  v31 = v0;
  v32 = v9;
  swift_getKeyPath();

  sub_10009DAF0();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100008728(v4, &qword_1000CA250, &qword_10009FDF8);

    sub_10003EDBC(0, 0);

    __chkstk_darwin(v10);
    v11 = sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
    *(&v29 - 2) = v11;
    v12 = sub_1000391EC();
    *(&v29 - 1) = v12;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v29 - 2) = v11;
    *(&v29 - 1) = v12;
    swift_getKeyPath();

    sub_10009DAF0();

    v21 = v36;
    if (v36)
    {
      v36, v14, v15, v16, v17, v18, v19, v20;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v35[0] = v21 == 0;

    sub_10009DB00();
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v22 = sub_10009D7F0();
    v24 = v23;

    sub_10003EDBC(v22, v24);

    swift_getKeyPath();
    swift_getKeyPath();
    v35[0] = 0;

    sub_10009DB00();
    (*(v6 + 8))(v8, v5);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v26 = swift_unknownObjectRelease();
    __chkstk_darwin(v26);
    *(&v29 - 2) = v0;
    *(&v29 - 1) = v9;
    v27 = swift_getKeyPath();
    __chkstk_darwin(v27);
    *(&v29 - 2) = v0;
    *(&v29 - 1) = v9;
    swift_getKeyPath();

    v28 = v30;
    sub_10009DAF0();

    return sub_100008728(v28, &qword_1000CA250, &qword_10009FDF8);
  }

  return result;
}

uint64_t sub_10003E3FC()
{
  v0 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  __chkstk_darwin(v0 - 8);
  v2 = v25 - v1;
  v3 = sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
  v25[2] = v3;
  v4 = sub_1000391EC();
  v25[3] = v4;
  swift_getKeyPath();
  v25[0] = v3;
  v25[1] = v4;
  swift_getKeyPath();

  sub_10009DAF0();

  if (v27)
  {
    v27, v5, v6, v7, v8, v9, v10, v11;
    __chkstk_darwin(v12);
    v25[-2] = v3;
    v25[-1] = v4;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v25[-2] = v3;
    v25[-1] = v4;
    swift_getKeyPath();

    sub_10009DAF0();

    if (v27)
    {
      v27, v14, v15, v16, v17, v18, v19, v20;
      v21 = 1;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      v22 = sub_10009D860();
      v21 = (*(*(v22 - 8) + 48))(v2, 1, v22) != 1;
      sub_100008728(v2, &qword_1000CA250, &qword_10009FDF8);
    }
  }

  else
  {
    v21 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v26[0] = v21;

  sub_10009DB00();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v23 = v26[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v26[0] = !v23;

  return sub_10009DB00();
}

uint64_t sub_10003E760()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();
}

uint64_t sub_10003E81C(uint64_t a1)
{
  v2 = v1;
  v44 = a1;
  v3 = sub_10009D860();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v39 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003714(&qword_1000CB208, &qword_1000A1AD8);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v39 - v8;
  v10 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v11 = __chkstk_darwin(v10);
  v42 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v43 = &v39 - v14;
  v15 = __chkstk_darwin(v13);
  v40 = &v39 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v39 - v18;
  v47 = v17;
  v20 = sub_1000390F0();
  v48 = v20;
  swift_getKeyPath();
  v45 = v10;
  v46 = v20;
  swift_getKeyPath();
  v41 = v2;
  sub_10009DAF0();

  v21 = *(v7 + 56);
  sub_10003F3DC(v19, v9);
  sub_10003F3DC(v44, &v9[v21]);
  v22 = v4;
  v23 = *(v4 + 48);
  if (v23(v9, 1, v3) != 1)
  {
    v25 = v40;
    sub_10003F3DC(v9, v40);
    if (v23(&v9[v21], 1, v3) != 1)
    {
      v26 = v39;
      (*(v22 + 32))(v39, &v9[v21], v3);
      sub_10003F384();
      v24 = sub_10009DD40();
      v27 = *(v22 + 8);
      v27(v26, v3);
      sub_100008728(v19, &qword_1000CA250, &qword_10009FDF8);
      v27(v25, v3);
      sub_100008728(v9, &qword_1000CA250, &qword_10009FDF8);
      goto LABEL_8;
    }

    sub_100008728(v19, &qword_1000CA250, &qword_10009FDF8);
    (*(v22 + 8))(v25, v3);
    goto LABEL_6;
  }

  sub_100008728(v19, &qword_1000CA250, &qword_10009FDF8);
  if (v23(&v9[v21], 1, v3) != 1)
  {
LABEL_6:
    sub_100008728(v9, &qword_1000CB208, &qword_1000A1AD8);
    v24 = 0;
    goto LABEL_8;
  }

  sub_100008728(v9, &qword_1000CA250, &qword_10009FDF8);
  v24 = 1;
LABEL_8:
  v28 = v41;
  v30 = v43;
  v29 = v44;
  v31 = sub_10003F3DC(v44, v43);
  __chkstk_darwin(v31);
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  swift_getKeyPath();
  sub_10003F3DC(v30, v42);

  sub_10009DB00();
  sub_100008728(v30, &qword_1000CA250, &qword_10009FDF8);
  v33 = *v28;
  if ((v24 & 1) == 0)
  {
    v34 = v28 + *(v33 + 104);
    v35 = *v34;
    if (*v34)
    {
      v36 = *(v34 + 1);

      v35(v37);
      sub_1000186F4(v35, v36);
      return sub_100008728(v29, &qword_1000CA250, &qword_10009FDF8);
    }
  }

  if (*(v28 + *(v33 + 104)))
  {
    return sub_100008728(v29, &qword_1000CA250, &qword_10009FDF8);
  }

  result = sub_10009E250();
  __break(1u);
  return result;
}

uint64_t sub_10003EDBC(uint64_t a1, _TtC13SPIHelper_iOS9SPIHelper *a2)
{
  sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
  sub_1000391EC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v13 = a2 == 0;
  if (v22)
  {
    if (a2)
    {
      if (v21 == a1 && v22 == a2)
      {
        v13 = 1;
      }

      else
      {
        v13 = sub_10009E2E0();
      }
    }

    else
    {
      v13 = 0;
    }

    v22, v6, v7, v8, v9, v10, v11, v12;
  }

  __chkstk_darwin(v5);
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  swift_getKeyPath();

  result = sub_10009DB00();
  v16 = *v2;
  if ((v13 & 1) != 0 || (v17 = v2 + *(v16 + 104), (v18 = *v17) == 0))
  {
    if (!*(v2 + *(v16 + 104)))
    {
      result = sub_10009E250();
      __break(1u);
    }
  }

  else
  {
    v19 = *(v17 + 1);

    v18(v20);
    return sub_1000186F4(v18, v19);
  }

  return result;
}

uint64_t sub_10003F024()
{
  v1 = *(*v0 + 96);
  v2 = sub_10009DB10();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1000186F4(*(v0 + *(*v0 + 104)), *(v0 + *(*v0 + 104) + 8));
  return v0;
}

uint64_t sub_10003F0C8()
{
  sub_10003F024();

  return swift_deallocClassInstance();
}

uint64_t sub_10003F138(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();
}

uint64_t sub_10003F1D4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *(v4 - 8);
  v7 = __chkstk_darwin(a1);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = *(v6 + 16);
  v12(v14 - v10);
  v14[2] = v4;
  v14[3] = v5;
  swift_getKeyPath();
  v14[0] = v4;
  v14[1] = v5;
  swift_getKeyPath();
  (v12)(v9, v11, v4);

  sub_10009DB00();
  return (*(v6 + 8))(v11, v4);
}

__n128 sub_10003F360(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_10003F384()
{
  result = qword_1000CAB30;
  if (!qword_1000CAB30)
  {
    sub_10009D860();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CAB30);
  }

  return result;
}

uint64_t sub_10003F3DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003F4A4()
{
  *(v0 + 16) = 2;
  v1 = OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_fileOrFolderURL;
  v2 = sub_10009D860();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_itemUTI);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_share) = 0;
  *(v0 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel) = 0;
  v4 = (v0 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPI);
  *v4 = nullsub_1;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPISharingURL);
  *v5 = nullsub_1;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPIFileOrSetup);
  *v6 = nullsub_1;
  v6[1] = 0;
  v7 = (v0 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPIRemove);
  *v7 = nullsub_1;
  v7[1] = 0;
  v8 = (v0 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPIMail);
  *v8 = nullsub_1;
  v8[1] = 0;
  v9 = (v0 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPIMetadata);
  *v9 = nullsub_1;
  v9[1] = 0;
  v10 = (v0 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPIUserStatus);
  *v10 = nullsub_1;
  v10[1] = 0;
  *(v0 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_appIcon) = 0;
  v11 = (v0 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_appName);
  *v11 = 0;
  v11[1] = 0;
  return v0;
}

uint64_t sub_10003F638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = sub_10009D9F0();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  v6 = sub_10009D6F0();
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v4[23] = swift_task_alloc();
  v7 = sub_10009D860();
  v4[24] = v7;
  v4[25] = *(v7 - 8);
  v4[26] = swift_task_alloc();

  return _swift_task_switch(sub_10003F7EC, 0, 0);
}

uint64_t sub_10003F7EC()
{
  v1 = v0[15];
  v2 = (v0[16] + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPI);
  *v2 = v0[14];
  v2[1] = v1;

  v0[27] = sub_10009DF10();

  v0[28] = sub_10009DF00();
  v4 = sub_10009DED0();

  return _swift_task_switch(sub_10003F8AC, v4, v3);
}

uint64_t sub_10003F8AC()
{

  type metadata accessor for CKShareModel(0);
  swift_allocObject();
  *(v0 + 232) = sub_1000998E0();

  return _swift_task_switch(sub_10003F934, 0, 0);
}

uint64_t sub_10003F934(uint64_t a1)
{
  *(v1 + 240) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_10003F9C0, v3, v2);
}

uint64_t sub_10003F9C0()
{
  v1 = *(v0 + 232);

  type metadata accessor for OptionsModel(0);
  swift_allocObject();
  *(v0 + 248) = sub_10004BA80(v1);

  return _swift_task_switch(sub_10003FA54, 0, 0);
}

uint64_t sub_10003FA54(uint64_t a1)
{
  *(v1 + 256) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_10003FAE0, v3, v2);
}

uint64_t sub_10003FAE0()
{
  v1 = *(v0 + 248);

  type metadata accessor for SharingModel(0);
  swift_allocObject();
  *(v0 + 264) = sub_100032A60(v1);

  return _swift_task_switch(sub_10003FB74, 0, 0);
}

uint64_t sub_10003FB74()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  v4 = v0[16];
  v5 = v0[13];
  v6 = OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel;
  *(v4 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel) = v0[33];

  v7 = OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_fileOrFolderURL;
  swift_beginAccess();
  sub_100045818(v5, v4 + v7);
  swift_endAccess();
  sub_10003F3DC(v5, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100008728(v0[23], &qword_1000CA250, &qword_10009FDF8);
  }

  else
  {
    (*(v0[25] + 32))(v0[26], v0[23], v0[24]);
    sub_100003714(&qword_1000CA498, &qword_1000A04B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000A0490;
    *(inited + 32) = NSURLIsPackageKey;
    *(inited + 40) = NSURLIsDirectoryKey;
    v9 = NSURLIsPackageKey;
    v10 = NSURLIsDirectoryKey;
    sub_1000315FC(inited);
    v12 = v11;
    swift_setDeallocating();
    type metadata accessor for URLResourceKey(0);
    swift_arrayDestroy();
    sub_10009D7C0();
    v13 = v0[25];
    v14 = v0[24];
    v15 = v0[21];
    v16 = v0[22];
    v17 = v0[20];
    v30 = v0[16];
    log = v0[26];
    v12, v18, v19, v20, v21, v22, v23, v24;
    LOBYTE(v12) = sub_10009D6E0();
    v25 = sub_10009D690();
    (*(v15 + 8))(v16, v17);
    (*(v13 + 8))(log, v14);
    *(v30 + 16) = v25 & ~v12 & 1;
  }

  v26 = *(v4 + v6);
  v0[34] = v26;
  if (!v26)
  {
    return sub_10009E250();
  }

  v0[35] = sub_10009DF00();
  v28 = sub_10009DED0();

  return _swift_task_switch(sub_100040200, v28, v27);
}

uint64_t sub_100040200()
{
  v1 = v0[34];
  v2 = v0[16];
  v3 = v0[13];

  sub_100043F7C(v2, 0, v3, 0, v1);

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_1000402BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v7 = sub_10009D860();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000403C8, 0, 0);
}

uint64_t sub_1000403C8()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  sub_10003F3DC(v0[2], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[3];
    sub_100008728(v0[9], &qword_1000CA250, &qword_10009FDF8);
    if (v4)
    {
      v5 = v0[6];
      v6 = v0[3];
      v7 = (v0[7] + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPI);
      *v7 = v0[5];
      v7[1] = v5;
      v8 = v6;

      v0[14] = sub_10009DF10();

      v0[15] = sub_10009DF00();
      v10 = sub_10009DED0();

      return _swift_task_switch(sub_100040838, v10, v9);
    }

    else
    {
      sub_1000459A4(0xD00000000000001ELL, 0x80000001000A6F60, v0[5], v0[6]);

      v23 = v0[1];

      return v23();
    }
  }

  else
  {
    v12 = v0[11];
    v11 = v0[12];
    v13 = v0[10];
    v15 = v0[7];
    v14 = v0[8];
    v16 = v0[3];
    (*(v12 + 32))(v11, v0[9], v13);
    v17 = *(v15 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_share);
    *(v15 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_share) = v16;
    v18 = v16;

    (*(v12 + 16))(v14, v11, v13);
    (*(v12 + 56))(v14, 0, 1, v13);
    v19 = swift_task_alloc();
    v0[13] = v19;
    *v19 = v0;
    v19[1] = sub_10004067C;
    v20 = v0[8];
    v21 = v0[5];
    v22 = v0[6];

    return sub_10003F638(v20, v21, v22);
  }
}

uint64_t sub_10004067C(void *a1)
{
  v3 = *(*v1 + 64);

  sub_100008728(v3, &qword_1000CA250, &qword_10009FDF8);

  return _swift_task_switch(sub_1000407AC, 0, 0);
}

uint64_t sub_1000407AC()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100040838()
{

  type metadata accessor for CKShareModel(0);
  swift_allocObject();
  *(v0 + 128) = sub_1000998E0();

  return _swift_task_switch(sub_1000408C0, 0, 0);
}

uint64_t sub_1000408C0(uint64_t a1)
{
  *(v1 + 136) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_10004094C, v3, v2);
}

uint64_t sub_10004094C()
{
  v1 = *(v0 + 128);

  type metadata accessor for OptionsModel(0);
  swift_allocObject();
  *(v0 + 144) = sub_10004BA80(v1);

  return _swift_task_switch(sub_1000409E0, 0, 0);
}

uint64_t sub_1000409E0(uint64_t a1)
{
  *(v1 + 152) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100040A6C, v3, v2);
}

uint64_t sub_100040A6C()
{
  v1 = *(v0 + 144);

  type metadata accessor for SharingModel(0);
  swift_allocObject();
  *(v0 + 160) = sub_100032A60(v1);

  return _swift_task_switch(sub_100040B00, 0, 0);
}

uint64_t sub_100040B00()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel;
  *(v1 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel) = v0[20];

  v4 = *(v1 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_share);
  *(v1 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_share) = v2;

  v5 = *(v1 + v3);
  v0[21] = v5;
  if (!v5)
  {
    return sub_10009E250();
  }

  v6 = v0[3];
  (*(v0[11] + 56))(v0[8], 1, 1, v0[10]);
  v7 = v6;

  v0[22] = sub_10009DF00();
  v9 = sub_10009DED0();

  return _swift_task_switch(sub_100040C64, v9, v8);
}

uint64_t sub_100040C64()
{
  v1 = v0[21];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[4];

  sub_100043F7C(v3, v4, v2, 0, v1);

  sub_100008728(v2, &qword_1000CA250, &qword_10009FDF8);

  return _swift_task_switch(sub_100040D14, 0, 0);
}

uint64_t sub_100040D14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100040D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_100040E34, 0, 0);
}

uint64_t sub_100040E34()
{
  v1 = v0[5];
  v2 = (v0[6] + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPISharingURL);
  *v2 = v0[4];
  v2[1] = v1;

  v0[8] = sub_10009DF10();

  v0[9] = sub_10009DF00();
  v4 = sub_10009DED0();

  return _swift_task_switch(sub_100040EF4, v4, v3);
}

uint64_t sub_100040EF4()
{

  type metadata accessor for CKShareModel(0);
  swift_allocObject();
  *(v0 + 80) = sub_1000998E0();

  return _swift_task_switch(sub_100040F7C, 0, 0);
}

uint64_t sub_100040F7C(uint64_t a1)
{
  *(v1 + 88) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100041008, v3, v2);
}

uint64_t sub_100041008()
{
  v1 = *(v0 + 80);

  type metadata accessor for OptionsModel(0);
  swift_allocObject();
  *(v0 + 96) = sub_10004BA80(v1);

  return _swift_task_switch(sub_10004109C, 0, 0);
}

uint64_t sub_10004109C(uint64_t a1)
{
  *(v1 + 104) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100041128, v3, v2);
}

uint64_t sub_100041128()
{
  v1 = *(v0 + 96);

  type metadata accessor for SharingModel(0);
  swift_allocObject();
  *(v0 + 112) = sub_100032A60(v1);

  return _swift_task_switch(sub_1000411BC, 0, 0);
}

uint64_t sub_1000411BC()
{
  v1 = v0[7];
  *(v0[6] + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel) = v0[14];

  v2 = sub_10009D860();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v0[15] = sub_10009DF00();
  v4 = sub_10009DED0();

  return _swift_task_switch(sub_1000412B4, v4, v3);
}

uint64_t sub_1000412B4()
{
  v1 = v0[14];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[2];
  v4 = v0[3];

  sub_100044AB4(v3, v4, v5, 0, v2, v1);

  sub_100008728(v2, &qword_1000CA250, &qword_10009FDF8);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100041370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_100041398, 0, 0);
}

uint64_t sub_100041398()
{
  v1 = v0[5];
  v2 = (v0[6] + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPIFileOrSetup);
  *v2 = v0[4];
  v2[1] = v1;

  v0[7] = sub_10009DF10();

  v0[8] = sub_10009DF00();
  v4 = sub_10009DED0();

  return _swift_task_switch(sub_100041458, v4, v3);
}

uint64_t sub_100041458()
{

  type metadata accessor for CKShareModel(0);
  swift_allocObject();
  *(v0 + 72) = sub_1000998E0();

  return _swift_task_switch(sub_1000414E0, 0, 0);
}

uint64_t sub_1000414E0(uint64_t a1)
{
  *(v1 + 80) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_10004156C, v3, v2);
}

uint64_t sub_10004156C()
{
  v1 = *(v0 + 72);

  type metadata accessor for OptionsModel(0);
  swift_allocObject();
  *(v0 + 88) = sub_10004BA80(v1);

  return _swift_task_switch(sub_100041600, 0, 0);
}

uint64_t sub_100041600(uint64_t a1)
{
  *(v1 + 96) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_10004168C, v3, v2);
}

uint64_t sub_10004168C()
{
  v1 = *(v0 + 88);

  type metadata accessor for SharingModel(0);
  swift_allocObject();
  *(v0 + 104) = sub_100032A60(v1);

  return _swift_task_switch(sub_100041720, 0, 0);
}

uint64_t sub_100041720()
{
  *(v0[6] + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel) = v0[13];

  v0[14] = sub_10009DF00();
  v2 = sub_10009DED0();

  return _swift_task_switch(sub_1000417CC, v2, v1);
}

uint64_t sub_1000417CC()
{
  v1 = v0[13];
  v2 = v0[6];
  v4 = v0[2];
  v3 = v0[3];

  sub_100043F7C(v2, v3, v4, 0, v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10004185C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_100041900, 0, 0);
}

uint64_t sub_100041900()
{
  v1 = v0[5];
  v2 = (v0[6] + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPIRemove);
  *v2 = v0[4];
  v2[1] = v1;

  v0[8] = sub_10009DF10();

  v0[9] = sub_10009DF00();
  v4 = sub_10009DED0();

  return _swift_task_switch(sub_1000419C0, v4, v3);
}

uint64_t sub_1000419C0()
{

  type metadata accessor for CKShareModel(0);
  swift_allocObject();
  *(v0 + 80) = sub_1000998E0();

  return _swift_task_switch(sub_100041A48, 0, 0);
}

uint64_t sub_100041A48(uint64_t a1)
{
  *(v1 + 88) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100041AD4, v3, v2);
}

uint64_t sub_100041AD4()
{
  v1 = *(v0 + 80);

  type metadata accessor for OptionsModel(0);
  swift_allocObject();
  *(v0 + 96) = sub_10004BA80(v1);

  return _swift_task_switch(sub_100041B68, 0, 0);
}

uint64_t sub_100041B68(uint64_t a1)
{
  *(v1 + 104) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100041BF4, v3, v2);
}

uint64_t sub_100041BF4()
{
  v1 = *(v0 + 96);

  type metadata accessor for SharingModel(0);
  swift_allocObject();
  *(v0 + 112) = sub_100032A60(v1);

  return _swift_task_switch(sub_100041C88, 0, 0);
}

uint64_t sub_100041C88()
{
  v1 = v0[7];
  *(v0[6] + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel) = v0[14];

  v2 = sub_10009D860();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v0[15] = sub_10009DF00();
  v4 = sub_10009DED0();

  return _swift_task_switch(sub_10004635C, v4, v3);
}

uint64_t sub_100041D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_100041E20, 0, 0);
}

uint64_t sub_100041E20()
{
  v1 = v0[4];
  v2 = (v0[5] + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPIRemove);
  *v2 = v0[3];
  v2[1] = v1;

  v0[7] = sub_10009DF10();

  v0[8] = sub_10009DF00();
  v4 = sub_10009DED0();

  return _swift_task_switch(sub_100041EE0, v4, v3);
}

uint64_t sub_100041EE0()
{

  type metadata accessor for CKShareModel(0);
  swift_allocObject();
  *(v0 + 72) = sub_1000998E0();

  return _swift_task_switch(sub_100041F68, 0, 0);
}

uint64_t sub_100041F68(uint64_t a1)
{
  *(v1 + 80) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100041FF4, v3, v2);
}

uint64_t sub_100041FF4()
{
  v1 = *(v0 + 72);

  type metadata accessor for OptionsModel(0);
  swift_allocObject();
  *(v0 + 88) = sub_10004BA80(v1);

  return _swift_task_switch(sub_100042088, 0, 0);
}

uint64_t sub_100042088(uint64_t a1)
{
  *(v1 + 96) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100042114, v3, v2);
}

uint64_t sub_100042114()
{
  v1 = *(v0 + 88);

  type metadata accessor for SharingModel(0);
  swift_allocObject();
  *(v0 + 104) = sub_100032A60(v1);

  return _swift_task_switch(sub_1000421A8, 0, 0);
}

uint64_t sub_1000421A8()
{
  v1 = v0[6];
  v2 = v0[2];
  *(v0[5] + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel) = v0[13];

  v3 = sub_10009D860();
  v4 = *(v3 - 8);
  (*(v4 + 16))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  v0[14] = sub_10009DF00();
  v6 = sub_10009DED0();

  return _swift_task_switch(sub_1000422E0, v6, v5);
}

uint64_t sub_1000422E0()
{
  v1 = v0[13];
  v3 = v0[5];
  v2 = v0[6];

  sub_100043F7C(v3, 0, v2, 0, v1);

  sub_100008728(v2, &qword_1000CA250, &qword_10009FDF8);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10004238C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_100042430, 0, 0);
}

uint64_t sub_100042430()
{
  v1 = v0[5];
  v2 = (v0[6] + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPIRemove);
  *v2 = v0[4];
  v2[1] = v1;

  v0[8] = sub_10009DF10();

  v0[9] = sub_10009DF00();
  v4 = sub_10009DED0();

  return _swift_task_switch(sub_1000424F0, v4, v3);
}

uint64_t sub_1000424F0()
{

  type metadata accessor for CKShareModel(0);
  swift_allocObject();
  *(v0 + 80) = sub_1000998E0();

  return _swift_task_switch(sub_100042578, 0, 0);
}

uint64_t sub_100042578(uint64_t a1)
{
  *(v1 + 88) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100042604, v3, v2);
}

uint64_t sub_100042604()
{
  v1 = *(v0 + 80);

  type metadata accessor for OptionsModel(0);
  swift_allocObject();
  *(v0 + 96) = sub_10004BA80(v1);

  return _swift_task_switch(sub_100042698, 0, 0);
}

uint64_t sub_100042698(uint64_t a1)
{
  *(v1 + 104) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100042724, v3, v2);
}

uint64_t sub_100042724()
{
  v1 = *(v0 + 96);

  type metadata accessor for SharingModel(0);
  swift_allocObject();
  *(v0 + 112) = sub_100032A60(v1);

  return _swift_task_switch(sub_1000427B8, 0, 0);
}

uint64_t sub_1000427B8()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel;
  *(v1 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel) = v0[14];

  v4 = *(v1 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_share);
  *(v1 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_share) = v2;

  v5 = *(v1 + v3);
  v0[15] = v5;
  if (!v5)
  {
    return sub_10009E250();
  }

  v6 = v0[7];
  v7 = v0[2];
  v8 = sub_10009D860();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = v7;

  v0[16] = sub_10009DF00();
  v11 = sub_10009DED0();

  return _swift_task_switch(sub_100042948, v11, v10);
}

uint64_t sub_100042948()
{
  v1 = v0[15];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[3];

  sub_100043F7C(v3, v4, v2, 0, v1);

  sub_100008728(v2, &qword_1000CA250, &qword_10009FDF8);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000429F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = sub_10009D6F0();
  v6[18] = v7;
  v6[19] = *(v7 - 8);
  v6[20] = swift_task_alloc();
  sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v6[21] = swift_task_alloc();
  v8 = sub_10009D860();
  v6[22] = v8;
  v6[23] = *(v8 - 8);
  v6[24] = swift_task_alloc();

  return _swift_task_switch(sub_100042B54, 0, 0);
}

uint64_t sub_100042B54()
{
  v1 = v0[16];
  v2 = (v0[17] + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPIMail);
  *v2 = v0[15];
  v2[1] = v1;

  v0[25] = sub_10009DF10();

  v0[26] = sub_10009DF00();
  v4 = sub_10009DED0();

  return _swift_task_switch(sub_100042C14, v4, v3);
}

uint64_t sub_100042C14()
{

  type metadata accessor for CKShareModel(0);
  swift_allocObject();
  *(v0 + 216) = sub_1000998E0();

  return _swift_task_switch(sub_100042C9C, 0, 0);
}

uint64_t sub_100042C9C(uint64_t a1)
{
  *(v1 + 224) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100042D28, v3, v2);
}

uint64_t sub_100042D28()
{
  v1 = *(v0 + 216);

  type metadata accessor for OptionsModel(0);
  swift_allocObject();
  *(v0 + 232) = sub_10004BA80(v1);

  return _swift_task_switch(sub_100042DBC, 0, 0);
}

uint64_t sub_100042DBC(uint64_t a1)
{
  *(v1 + 240) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100042E48, v3, v2);
}

uint64_t sub_100042E48()
{
  v1 = *(v0 + 232);

  type metadata accessor for SharingModel(0);
  swift_allocObject();
  *(v0 + 248) = sub_100032A60(v1);

  return _swift_task_switch(sub_100042EDC, 0, 0);
}

uint64_t sub_100042EDC()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  v4 = v0[17];
  v5 = v0[14];
  v6 = OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel;
  *(v4 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel) = v0[31];

  v7 = OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_fileOrFolderURL;
  swift_beginAccess();
  sub_100045818(v5, v4 + v7);
  swift_endAccess();
  sub_10003F3DC(v5, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v8 = v0[17];
    v9 = v0[13];
    sub_100008728(v0[21], &qword_1000CA250, &qword_10009FDF8);
    v10 = v8 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_appName;
    v11 = *(v8 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_appName);
    v12 = *(v10 + 8);

    v13 = sub_100045D24(v9, v11, v12);
    v15 = v14;
    v12, v14, v16, v17, v18, v19, v20, v21;
  }

  else
  {
    (*(v0[23] + 32))(v0[24], v0[21], v0[22]);
    sub_100003714(&qword_1000CA498, &qword_1000A04B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10009FCE0;
    *(inited + 32) = NSURLTypeIdentifierKey;
    v30 = NSURLTypeIdentifierKey;
    sub_1000315FC(inited);
    v32 = v31;
    swift_setDeallocating();
    sub_1000462B8(inited + 32);
    sub_10009D7C0();
    v34 = v0[19];
    v33 = v0[20];
    v35 = v0[18];
    v32, v36, v37, v38, v39, v40, v41, v42;
    v13 = sub_10009D6A0();
    v15 = v43;
    (*(v34 + 8))(v33, v35);
    if (!v15)
    {
      v44 = v0[13];
      v45 = (v0[17] + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_appName);
      v46 = *v45;
      v47 = v45[1];

      v13 = sub_100045D24(v44, v46, v47);
      v15 = v48;
      v47, v48, v49, v50, v51, v52, v53, v54;
    }

    (*(v0[23] + 8))(v0[24], v0[22]);
  }

  v55 = (v0[17] + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_itemUTI);
  v56 = v55[1];
  *v55 = v13;
  v55[1] = v15;
  v56, v22, v23, v24, v25, v26, v27, v28;
  v57 = *(v4 + v6);
  v0[32] = v57;
  if (!v57)
  {
    return sub_10009E250();
  }

  v0[33] = sub_10009DF00();
  v59 = sub_10009DED0();

  return _swift_task_switch(sub_10004337C, v59, v58);
}

uint64_t sub_10004337C()
{
  v1 = v0[32];
  v2 = v0[17];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];

  sub_100044AB4(v2, 0, v5, v4, v3, v1);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100043444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000434E8, 0, 0);
}

uint64_t sub_1000434E8()
{
  v1 = v0[5];
  v2 = (v0[6] + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPIMetadata);
  *v2 = v0[4];
  v2[1] = v1;

  v0[8] = sub_10009DF10();

  v0[9] = sub_10009DF00();
  v4 = sub_10009DED0();

  return _swift_task_switch(sub_1000419C0, v4, v3);
}

uint64_t sub_1000435A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_100043648, 0, 0);
}

uint64_t sub_100043648()
{
  v1 = v0[4];
  v2 = (v0[5] + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPIUserStatus);
  *v2 = v0[3];
  v2[1] = v1;

  v0[7] = sub_10009DF10();
  v0[8] = sub_10009DF00();
  v4 = sub_10009DED0();

  return _swift_task_switch(sub_100043708, v4, v3);
}

uint64_t sub_100043708()
{

  type metadata accessor for CKShareModel(0);
  swift_allocObject();
  *(v0 + 72) = sub_1000998E0();

  return _swift_task_switch(sub_100043790, 0, 0);
}

uint64_t sub_100043790(uint64_t a1)
{
  *(v1 + 80) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_10004381C, v3, v2);
}

uint64_t sub_10004381C()
{
  v1 = *(v0 + 72);

  type metadata accessor for OptionsModel(0);
  swift_allocObject();
  *(v0 + 88) = sub_10004BA80(v1);

  return _swift_task_switch(sub_1000438B0, 0, 0);
}

uint64_t sub_1000438B0(uint64_t a1)
{
  *(v1 + 96) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_10004393C, v3, v2);
}

uint64_t sub_10004393C()
{
  v1 = *(v0 + 88);

  type metadata accessor for SharingModel(0);
  swift_allocObject();
  *(v0 + 104) = sub_100032A60(v1);

  return _swift_task_switch(sub_1000439D0, 0, 0);
}

uint64_t sub_1000439D0()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel;
  *(v1 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel) = v0[13];

  v4 = *(v1 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_share);
  *(v1 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_share) = v2;

  v5 = *(v1 + v3);
  v0[14] = v5;
  if (!v5)
  {
    return sub_10009E250();
  }

  v6 = v0[6];
  v7 = v0[2];
  v8 = sub_10009D860();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = v7;

  v0[15] = sub_10009DF00();
  v11 = sub_10009DED0();

  return _swift_task_switch(sub_100043B60, v11, v10);
}

uint64_t sub_100043B60()
{
  v1 = v0[14];
  v3 = v0[5];
  v2 = v0[6];

  sub_100043F7C(v3, 0, v2, 0, v1);

  sub_100008728(v2, &qword_1000CA250, &qword_10009FDF8);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100043C0C()
{
  sub_100008728(v0 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_fileOrFolderURL, &qword_1000CA250, &qword_10009FDF8);
  *(v0 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_itemUTI + 8), v1, v2, v3, v4, v5, v6, v7;

  *(v0 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_appName + 8), v8, v9, v10, v11, v12, v13, v14;
  return v0;
}

uint64_t sub_100043D28()
{
  sub_100043C0C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ModelDelegateSPI(uint64_t a1)
{
  result = qword_1000CB238;
  if (!qword_1000CB238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100043DD4(uint64_t a1)
{
  sub_100043EA4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100043EA4(uint64_t a1)
{
  if (!qword_1000CB248)
  {
    sub_10009D860();
    v1 = sub_10009E150();
    if (!v2)
    {
      atomic_store(v1, &qword_1000CB248);
    }
  }
}

uint64_t sub_100043EFC(uint64_t a1)
{
  result = sub_100046314(&qword_1000CB330, type metadata accessor for ModelDelegateSPI, &unk_1000A1B60);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100043F7C(uint64_t a1, void *a2, uint64_t a3, char a4, void *a5)
{
  v122 = a2;
  v123 = a3;
  v7 = sub_10009D9F0();
  v126 = *(v7 - 8);
  __chkstk_darwin(v7);
  v125 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v10 = __chkstk_darwin(v9 - 8);
  v119 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v121 = &v118 - v13;
  v14 = __chkstk_darwin(v12);
  v120 = &v118 - v15;
  __chkstk_darwin(v14);
  v17 = &v118 - v16;
  v18 = sub_10009D860();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v124 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100046314(&qword_1000CB340, type metadata accessor for ModelDelegateSPI, &unk_1000A1B98);
  sub_10002D3C8();
  a5[6] = v21;
  swift_unknownObjectWeakAssign();
  v22 = *(sub_1000194F8() + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_share);
  v23 = v22;
  swift_unknownObjectRelease();
  if (v22)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *&v128 = v22;

    sub_10009DB00();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v24 = v128;
  if (v128)
  {

    v25 = [v24 containerID];
    sub_1000983D8(v25, 0);

    sub_100021DEC(0, a4 & 1);
  }

  else
  {

    sub_1000484EC(2u);

    sub_10004886C(1u);
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v26 = v128;
  if (v128)
  {
    v118 = v19;
    v27 = v18;
    v28 = v7;
    v29 = [v128 containerIdentifier];
    v30 = sub_10009DD90();
    v32 = v31;

    sub_10009DD90();
    v34 = v33;
    v35 = sub_10009DDB0();
    v37 = v36;
    v34, v36, v38, v39, v40, v41, v42, v43;
    if (v30 == v35 && v32 == v37)
    {
      v32, v44, v45, v46, v47, v48, v49, v50;
      v37, v51, v52, v53, v54, v55, v56, v57;
LABEL_11:
      swift_getKeyPath();
      swift_getKeyPath();
      v128 = xmmword_1000A1AE0;

      sub_10009DB00();

      v7 = v28;
      v18 = v27;
      v19 = v118;
      goto LABEL_14;
    }

    v58 = sub_10009E2E0();
    v32, v59, v60, v61, v62, v63, v64, v65;
    v37, v66, v67, v68, v69, v70, v71, v72;
    if (v58)
    {
      goto LABEL_11;
    }

    v7 = v28;
    v18 = v27;
    v19 = v118;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *&v128 = 0xD000000000000013;
  *(&v128 + 1) = 0x80000001000A6F40;

  sub_10009DB00();
LABEL_14:
  sub_10003F3DC(v123, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_100008728(v17, &qword_1000CA250, &qword_10009FDF8);
    v73 = sub_10001A8A0();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v128) = v73;

    sub_10009DB00();
    v74 = v125;
    v75 = v122;
    if (v122)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      *&v128 = v75;
      v76 = v75;

      sub_10009DB00();
    }
  }

  else
  {
    v77 = v124;
    (*(v19 + 32))(v124, v17, v18);
    v78 = v120;
    (*(v19 + 16))(v120, v77, v18);
    (*(v19 + 56))(v78, 0, 1, v18);
    swift_getKeyPath();
    swift_getKeyPath();
    v79 = v121;
    sub_10009DAF0();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10003F3DC(v78, v119);

    sub_10009DB00();
    sub_1000218C4(v79);
    sub_100008728(v79, &qword_1000CA250, &qword_10009FDF8);
    sub_100008728(v78, &qword_1000CA250, &qword_10009FDF8);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v128) = 9;

    sub_10009DB00();
    v80 = *(sub_1000194F8() + 16);
    swift_unknownObjectRelease();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v128) = v80 & 1;

    sub_10009DB00();
    swift_getKeyPath();
    swift_getKeyPath();
    v128 = xmmword_1000A1AE0;

    sub_10009DB00();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10009DAF0();

    v81 = v128;
    if (!v128)
    {
      sub_10009DD90();
      v83 = v82;
      sub_10009DDB0();
      v85 = v84;

      v83, v86, v87, v88, v89, v90, v91, v92;
      v93 = objc_allocWithZone(CKContainerID);
      v94 = sub_10009DD50();
      v85, v95, v96, v97, v98, v99, v100, v101;
      v81 = [v93 initWithContainerIdentifier:v94 environment:1];

      sub_1000983D8(v81, 0);
    }

    v74 = v125;

    (*(v19 + 8))(v124, v18);
  }

  sub_10009D9D0();

  v102 = sub_10009D9E0();
  v103 = sub_10009DFF0();

  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v127 = v105;
    *v104 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
    v106 = sub_10009DDA0();
    v108 = v107;
    v109 = sub_1000307A4(v106, v107, &v127);
    v108, v110, v111, v112, v113, v114, v115, v116;
    *(v104 + 4) = v109;
    _os_log_impl(&_mh_execute_header, v102, v103, "setUpForExplicitSPI final sourceAppBundleID: %s.", v104, 0xCu);
    sub_10000670C(v105);
  }

  (*(v126 + 8))(v74, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v128) = 1;

  return sub_10009DB00();
}

uint64_t sub_100044AB4(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v98 = a5;
  v99 = a2;
  v100 = a3;
  v8 = sub_10009D9F0();
  v102 = *(v8 - 8);
  __chkstk_darwin(v8);
  v101 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v11 = __chkstk_darwin(v10 - 8);
  v96 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v103 = &v94 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v94 - v16;
  __chkstk_darwin(v15);
  v19 = &v94 - v18;
  v104 = sub_10009D860();
  v20 = *(v104 - 8);
  __chkstk_darwin(v104);
  v97 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  a6[6] = sub_100046314(&qword_1000CB340, type metadata accessor for ModelDelegateSPI, &unk_1000A1B98);
  swift_unknownObjectWeakAssign();
  sub_10002D3C8();

  sub_1000484EC(2u);

  sub_10004886C(1u);

  swift_getKeyPath();
  swift_getKeyPath();
  *&v106 = 0xD000000000000013;
  *(&v106 + 1) = 0x80000001000A6F40;

  sub_10009DB00();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if (v106 != 3)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v106) = 2;

    sub_10009DB00();
  }

  v22 = v104;
  if (a4)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *&v106 = a4;
    v23 = a4;

    sub_10009DB00();

    v24 = [v23 containerID];
    sub_1000983D8(v24, 0);

    swift_getKeyPath();
    swift_getKeyPath();

    sub_10009DAF0();

    v25 = v106;
    if (!v106)
    {

      goto LABEL_13;
    }

    v94 = v23;
    v95 = v8;
    v26 = [v106 containerIdentifier];
    v27 = sub_10009DD90();
    v29 = v28;

    sub_10009DD90();
    v31 = v30;
    v32 = sub_10009DDB0();
    v34 = v33;
    v31, v33, v35, v36, v37, v38, v39, v40;
    if (v27 == v32 && v29 == v34)
    {
      v29, v41, v42, v43, v44, v45, v46, v47;
      v34, v48, v49, v50, v51, v52, v53, v54;
      v22 = v104;
      v55 = v94;
    }

    else
    {
      v56 = sub_10009E2E0();
      v29, v57, v58, v59, v60, v61, v62, v63;
      v34, v64, v65, v66, v67, v68, v69, v70;
      v22 = v104;
      v55 = v94;
      if ((v56 & 1) == 0)
      {

        goto LABEL_12;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v106 = xmmword_1000A1AE0;

    sub_10009DB00();

LABEL_12:
    v8 = v95;
  }

LABEL_13:
  sub_10003F3DC(v98, v19);
  if ((*(v20 + 48))(v19, 1, v22) == 1)
  {
    sub_100008728(v19, &qword_1000CA250, &qword_10009FDF8);
  }

  else
  {
    v71 = v97;
    (*(v20 + 32))(v97, v19, v22);
    (*(v20 + 16))(v17, v71, v22);
    (*(v20 + 56))(v17, 0, 1, v22);
    swift_getKeyPath();
    swift_getKeyPath();
    v72 = v103;
    sub_10009DAF0();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10003F3DC(v17, v96);

    sub_10009DB00();
    sub_1000218C4(v72);
    v73 = v72;
    v22 = v104;
    sub_100008728(v73, &qword_1000CA250, &qword_10009FDF8);
    sub_100008728(v17, &qword_1000CA250, &qword_10009FDF8);
    swift_getKeyPath();
    swift_getKeyPath();
    v106 = xmmword_1000A1AE0;

    sub_10009DB00();
    (*(v20 + 8))(v71, v22);
  }

  v74 = v101;
  v75 = v99;
  v76 = sub_10001A8A0();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v106) = v76;

  sub_10009DB00();
  if (v75)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *&v106 = v75;
    v77 = v75;

    sub_10009DB00();
  }

  (*(v20 + 16))(v17, v100, v22);
  (*(v20 + 56))(v17, 0, 1, v22);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10003F3DC(v17, v103);

  sub_10009DB00();
  sub_100008728(v17, &qword_1000CA250, &qword_10009FDF8);
  sub_10009D9D0();

  v78 = sub_10009D9E0();
  v79 = sub_10009DFF0();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v105 = v81;
    *v80 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
    v82 = sub_10009DDA0();
    v84 = v83;
    v85 = sub_1000307A4(v82, v83, &v105);
    v84, v86, v87, v88, v89, v90, v91, v92;
    *(v80 + 4) = v85;
    _os_log_impl(&_mh_execute_header, v78, v79, "setUpForExplicitSharingURLSPI final sourceAppBundleID: %s.", v80, 0xCu);
    sub_10000670C(v81);
  }

  (*(v102 + 8))(v74, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v106) = 1;

  return sub_10009DB00();
}

uint64_t sub_10004551C(void *a1)
{
  v2 = v1;
  v4 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  v7 = sub_10009D9F0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009D9D0();
  v11 = a1;
  v12 = sub_10009D9E0();
  v13 = sub_10009DFD0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v38 = v8;
    v15 = v14;
    v37 = swift_slowAlloc();
    v40 = v37;
    *v15 = 136315138;
    v16 = v11;
    v17 = [v16 description];
    v39 = v6;
    v18 = v17;
    v19 = sub_10009DD90();
    v36 = v7;
    v20 = v11;
    v22 = v21;

    v23 = sub_1000307A4(v19, v22, &v40);
    v24 = v22;
    v11 = v20;
    v24, v25, v26, v27, v28, v29, v30, v31;
    *(v15 + 4) = v23;
    v6 = v39;
    _os_log_impl(&_mh_execute_header, v12, v13, "cancelAppExtension error: %s", v15, 0xCu);
    sub_10000670C(v37);

    (*(v38 + 8))(v10, v36);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  v32 = *(v2 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPI);
  v33 = sub_10009D860();
  (*(*(v33 - 8) + 56))(v6, 1, 1, v33);

  v32(v6, 0, v11);

  return sub_100008728(v6, &qword_1000CA250, &qword_10009FDF8);
}

uint64_t sub_100045818(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_100045888()
{
  result = qword_1000CB338;
  if (!qword_1000CB338)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000CB338);
  }

  return result;
}

uint64_t sub_1000459A4(uint64_t a1, _TtC13SPIHelper_iOS9SPIHelper *a2, void (*a3)(void, void, void), uint64_t a4)
{
  v44 = a1;
  v7 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  __chkstk_darwin(v7 - 8);
  v9 = v43 - v8;
  v10 = sub_10009D9F0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009D9D0();

  v14 = sub_10009D9E0();
  v15 = sub_10009DFD0();
  a2, v16, v17, v18, v19, v20, v21, v22;
  if (os_log_type_enabled(v14, v15))
  {
    v23 = swift_slowAlloc();
    v43[1] = a4;
    v24 = a3;
    v25 = v23;
    v26 = swift_slowAlloc();
    v45 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_1000307A4(v44, a2, &v45);
    _os_log_impl(&_mh_execute_header, v14, v15, "createAndInitModel error: %s", v25, 0xCu);
    sub_10000670C(v26);

    a3 = v24;
  }

  (*(v11 + 8))(v13, v10);
  v27 = sub_10009D860();
  (*(*(v27 - 8) + 56))(v9, 1, 1, v27);
  sub_100003714(&qword_1000CB348, &qword_1000A1E28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10009FCE0;
  *(inited + 32) = sub_10009DD90();
  *(inited + 72) = &type metadata for String;
  v29 = v44;
  *(inited + 40) = v30;
  *(inited + 48) = v29;
  *(inited + 56) = a2;

  v31 = sub_10003269C(inited);
  swift_setDeallocating();
  sub_100008728(inited + 32, &unk_1000CA918, &qword_1000A1E30);
  v32 = CKErrorDomain;
  isa = sub_10009DCF0().super.isa;
  v31, v34, v35, v36, v37, v38, v39, v40;
  v41 = [objc_allocWithZone(NSError) initWithDomain:v32 code:1 userInfo:isa];

  a3(v9, 0, v41);
  return sub_100008728(v9, &qword_1000CA250, &qword_10009FDF8);
}

uint64_t sub_100045D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10009D9A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10009D9F0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v135 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009E0F0();
  v13 = v12;
  v14 = sub_10009E100();
  v13, v15, v16, v17, v18, v19, v20, v21;
  if (!v14)
  {
LABEL_6:
    if (a3)
    {
      if (sub_10009DDB0() == 0x7365746F6ELL && v54 == 0xE500000000000000)
      {
        0xE500000000000000, 0xE500000000000000, v55, v56, v57, v58, v59, v60;
        return 0xD000000000000014;
      }

      v68 = v54;
      v69 = sub_10009E2E0();
      v68, v70, v71, v72, v73, v74, v75, v76;
      if (v69)
      {
        return 0xD000000000000014;
      }

      if (sub_10009DDB0() == 0x7265646E696D6572 && v77 == 0xE900000000000073)
      {
        0xE900000000000073, 0xE900000000000073, v78, v79, v80, v81, v82, v83;
        return 0xD000000000000018;
      }

      v84 = v77;
      v85 = sub_10009E2E0();
      v84, v86, v87, v88, v89, v90, v91, v92;
      if (v85)
      {
        return 0xD000000000000018;
      }

      if (sub_10009DDB0() == 0x697261666173 && v93 == 0xE600000000000000)
      {
        0xE600000000000000, 0xE600000000000000, v94, v95, v96, v97, v98, v99;
        return 0xD000000000000019;
      }

      v100 = v93;
      v101 = sub_10009E2E0();
      v100, v102, v103, v104, v105, v106, v107, v108;
      if (v101)
      {
        return 0xD000000000000019;
      }

      if (sub_10009DDB0() == 0x6C656D726163 && v109 == 0xE600000000000000)
      {
        goto LABEL_25;
      }

      v116 = v109;
      v117 = sub_10009E2E0();
      v116, v118, v119, v120, v121, v122, v123, v124;
      if (v117)
      {
        return 0xD000000000000018;
      }

      if (sub_10009DDB0() == 0x6D726F6665657266 && v109 == 0xE800000000000000)
      {
LABEL_25:
        v109, v109, v110, v111, v112, v113, v114, v115;
        return 0xD000000000000018;
      }

      v125 = v109;
      v126 = sub_10009E2E0();
      v125, v127, v128, v129, v130, v131, v132, v133;
      if (v126)
      {
        return 0xD000000000000018;
      }
    }

    sub_10009D970();
    v25 = sub_10009D8D0();
    (*(v5 + 8))(v7, v4);
    return v25;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  v22 = sub_10009DD90();
  v24 = v23;
  swift_unknownObjectRelease();
  v25 = sub_1000951B4(v22, v24);
  v27 = v26;

  sub_10009D9D0();

  v28 = sub_10009D9E0();
  v29 = sub_10009DFF0();
  v27, v30, v31, v32, v33, v34, v35, v36;
  v24, v37, v38, v39, v40, v41, v42, v43;
  if (os_log_type_enabled(v28, v29))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v135 = v9;
    v136 = v45;
    *v44 = 136315394;
    v46 = sub_1000307A4(v22, v24, &v136);
    v24, v47, v48, v49, v50, v51, v52, v53;
    *(v44 + 4) = v46;
    *(v44 + 12) = 2080;
    *(v44 + 14) = sub_1000307A4(v25, v27, &v136);
    _os_log_impl(&_mh_execute_header, v28, v29, "utiFromCKShare raw ckShareType: %s, utiOfItemFromCKShare: %s", v44, 0x16u);
    swift_arrayDestroy();

    (*(v135 + 8))(v11, v8);
  }

  else
  {

    v24, v61, v62, v63, v64, v65, v66, v67;
    (*(v9 + 8))(v11, v8);
  }

  return v25;
}

uint64_t sub_1000462B8(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100046314(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100046374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10009D8A0();
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

uint64_t sub_100046448(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10009D8A0();
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

void sub_100046524(uint64_t a1)
{
  sub_10009D8A0();
  if (v1 <= 0x3F)
  {
    sub_1000465F8();
    if (v2 <= 0x3F)
    {
      sub_100046A04(319, &unk_1000CB3C0, type metadata accessor for AlertViewModelButton, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000465F8()
{
  if (!qword_1000CB3B8)
  {
    v0 = sub_10009E150();
    if (!v1)
    {
      atomic_store(v0, &qword_1000CB3B8);
    }
  }
}

uint64_t sub_100046668(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000466B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10009D8A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_100003714(&qword_1000CB3F8, &unk_1000A1F20);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000467FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10009D8A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  else
  {
    v11 = sub_100003714(&qword_1000CB3F8, &unk_1000A1F20);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_100046930(uint64_t a1)
{
  sub_10009D8A0();
  if (v1 <= 0x3F)
  {
    sub_100046A04(319, &qword_1000CB468, &type metadata accessor for ButtonRole, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100046A68(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100046A04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_100046A68(uint64_t a1)
{
  if (!qword_1000CB470)
  {
    sub_10000594C(&unk_1000CB478, qword_1000A1F48);
    v1 = sub_10009E150();
    if (!v2)
    {
      atomic_store(v1, &qword_1000CB470);
    }
  }
}

unint64_t sub_100046ACC()
{
  result = qword_1000CB4B0;
  if (!qword_1000CB4B0)
  {
    sub_10009D8A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB4B0);
  }

  return result;
}

uint64_t sub_100046B2C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10009D8A0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100046B9C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  return v1;
}

uint64_t sub_100046C10(int a1)
{
  v2 = v1;
  v20 = a1;
  v3 = sub_100003714(&qword_1000CAD10, &qword_1000A0EB8);
  v18 = *(v3 - 8);
  v19 = v3;
  __chkstk_darwin(v3);
  v17 = v15 - v4;
  v16 = sub_10009E020();
  v5 = *(v16 - 8);
  __chkstk_darwin(v16);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10009E000();
  __chkstk_darwin(v8);
  v9 = sub_10009DCB0();
  __chkstk_darwin(v9 - 8);
  sub_10009DBC0();
  swift_allocObject();
  *(v1 + 16) = sub_10009DBB0();
  v10 = sub_1000477D0();
  v15[0] = "tor";
  v15[1] = v10;
  sub_10009DCA0();
  v22 = _swiftEmptyArrayStorage;
  sub_1000479AC(&qword_1000CB588, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100003714(&qword_1000CB590, &qword_1000A2098);
  sub_1000479F4(&qword_1000CB598, &qword_1000CB590, &qword_1000A2098);
  sub_10009E1A0();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v16);
  *(v1 + 24) = sub_10009E050();
  v11 = OBJC_IVAR____TtC13SPIHelper_iOS14NetworkMonitor__status;
  v21 = 0;
  v12 = v17;
  sub_10009DAC0();
  (*(v18 + 32))(v2 + v11, v12, v19);
  v13 = swift_allocObject();
  swift_weakInit();

  sub_10004785C(sub_100047854, v13);
  sub_10009DB90();

  if (v20)
  {
    sub_10009DBA0();
  }

  return v2;
}

uint64_t sub_100046FD4(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v2 = sub_10009DC90();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v25 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10009DCB0();
  v24 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10009DC00();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000477D0();
    v22 = sub_10009E030();
    v13 = swift_allocObject();
    swift_weakInit();
    (*(v9 + 16))(&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v8);
    v14 = *(v9 + 80);
    v23 = v5;
    v15 = v3;
    v16 = (v14 + 24) & ~v14;
    v17 = swift_allocObject();
    *(v17 + 16) = v13;
    (*(v9 + 32))(v17 + v16, v11, v8);
    aBlock[4] = sub_100047930;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100047570;
    aBlock[3] = &unk_1000C2F80;
    v18 = _Block_copy(aBlock);

    sub_10009DCA0();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000479AC(&qword_1000CB5A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100003714(&qword_1000CB5A8, &qword_1000A20A0);
    sub_1000479F4(&qword_1000CB5B0, &qword_1000CB5A8, &qword_1000A20A0);
    v19 = v25;
    sub_10009E1A0();
    v20 = v22;
    sub_10009E040();
    _Block_release(v18);

    (*(v15 + 8))(v19, v2);
    return (*(v24 + 8))(v7, v23);
  }

  return result;
}

uint64_t sub_1000473C0(uint64_t a1)
{
  v1 = sub_10009DBE0();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10009DBF0();
    (*(v2 + 104))(v5, enum case for NWPath.Status.satisfied(_:), v1);
    v9 = sub_10009DBD0();
    v10 = *(v2 + 8);
    v10(v5, v1);
    v10(v7, v1);
    swift_getKeyPath();
    swift_getKeyPath();
    v11[7] = (v9 & 1) == 0;
    return sub_10009DB00();
  }

  return result;
}

uint64_t sub_100047570(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1000475B4()
{

  v1 = OBJC_IVAR____TtC13SPIHelper_iOS14NetworkMonitor__status;
  v2 = sub_100003714(&qword_1000CAD10, &qword_1000A0EB8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NetworkMonitor(uint64_t a1)
{
  result = qword_1000CB4E8;
  if (!qword_1000CB4E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000476C0(uint64_t a1)
{
  sub_10004776C();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10004776C()
{
  if (!qword_1000CB4F8)
  {
    v0 = sub_10009DB10();
    if (!v1)
    {
      atomic_store(v0, &qword_1000CB4F8);
    }
  }
}

unint64_t sub_1000477D0()
{
  result = qword_1000CA468;
  if (!qword_1000CA468)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000CA468);
  }

  return result;
}

uint64_t sub_10004781C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004785C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10004786C()
{
  v1 = sub_10009DC00();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100047930()
{
  sub_10009DC00();
  v1 = *(v0 + 16);

  return sub_1000473C0(v1);
}

uint64_t sub_100047994(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000479AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000479F4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000594C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100047A48@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  *a2 = v4;
  return result;
}

uint64_t sub_100047ACC(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10009DB00();
}

void sub_100047B6C(_TtC13SPIHelper_iOS9SPIHelper *a1)
{
  v2 = sub_10009D9F0();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v115 - v7;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  if (v118 != 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    v32 = v118;
    v33 = sub_10004CA5C(v118, a1);
    v32, v34, v35, v36, v37, v38, v39, v40;
    if (v33)
    {
      return;
    }

    sub_10009D9D0();

    v41 = sub_10009D9E0();
    v42 = sub_10009DFF0();

    a1, v43, v44, v45, v46, v47, v48, v49;
    if (!os_log_type_enabled(v41, v42))
    {

      (*(v3 + 8))(v6, v2);
      goto LABEL_66;
    }

    v50 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    *v50 = 136315394;
    v51 = *&a1->requestingProcessBundleIdentifier[8];
    if (!v51)
    {
      goto LABEL_69;
    }

    v52 = a1[1].requestingProcessBundleIdentifier[0];
    v116 = v3;
    if (v52 == 1)
    {
      if (v51 == 1)
      {
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      if (a1[1].requestingProcessBundleIdentifier[1])
      {
        v53 = 7237422;
        v54 = 0xE300000000000000;
        goto LABEL_43;
      }

      v56 = 0;
    }

    else
    {
      if (v51 == 1)
      {
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      v56 = a1[1].requestingProcessBundleIdentifier[1];
    }

    v78 = v52 ^ v56;
    if (v78)
    {
      v53 = 0x646578696D2ELL;
    }

    else
    {
      v53 = 1717989166;
    }

    if (v78)
    {
      v54 = 0xE600000000000000;
    }

    else
    {
      v54 = 0xE400000000000000;
    }

LABEL_43:
    v79 = sub_1000307A4(v53, v54, &v118);
    v54, v80, v81, v82, v83, v84, v85, v86;
    *(v50 + 4) = v79;
    *(v50 + 12) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    v94 = *&v117->requestingProcessBundleIdentifier[8];
    if (!v94)
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v95 = v117[1].requestingProcessBundleIdentifier[0];
    if (v95 == 1)
    {
      if (v94 == 1)
      {
LABEL_79:
        __break(1u);
        return;
      }

      if (v117[1].requestingProcessBundleIdentifier[1])
      {
        v117, v87, v88, v89, v90, v91, v92, v93;
        v96 = 7237422;
        v97 = 0xE300000000000000;
LABEL_65:
        v107 = sub_1000307A4(v96, v97, &v118);
        v97, v108, v109, v110, v111, v112, v113, v114;
        *(v50 + 14) = v107;
        _os_log_impl(&_mh_execute_header, v41, v42, "For Co-owners changeNewParticipantsCanBeCoOwners, newState: %s, oldState: %s", v50, 0x16u);
        swift_arrayDestroy();

        (*(v116 + 8))(v6, v2);
        goto LABEL_66;
      }

      v98 = 0;
    }

    else
    {
      if (v94 == 1)
      {
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v98 = v117[1].requestingProcessBundleIdentifier[1];
    }

    v117, v87, v88, v89, v90, v91, v92, v93;
    if (v95 != v98)
    {
      v96 = 0x646578696D2ELL;
    }

    else
    {
      v96 = 1717989166;
    }

    if (v95 != v98)
    {
      v97 = 0xE600000000000000;
    }

    else
    {
      v97 = 0xE400000000000000;
    }

    goto LABEL_65;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v9 = v118;
  v10 = sub_10004CA5C(v118, a1);
  v9, v11, v12, v13, v14, v15, v16, v17;
  if (v10)
  {
    return;
  }

  sub_10009D9D0();

  v18 = sub_10009D9E0();
  v19 = sub_10009DFF0();

  a1, v20, v21, v22, v23, v24, v25, v26;
  if (os_log_type_enabled(v18, v19))
  {
    v27 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    *v27 = 136315394;
    v28 = *&a1->requestingProcessBundleIdentifier[8];
    if (v28)
    {
      v29 = a1[1].requestingProcessBundleIdentifier[0];
      v116 = v3;
      if (v29 == 1)
      {
        if (v28 == 1)
        {
LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

        if (a1[1].requestingProcessBundleIdentifier[1])
        {
          v30 = 7237422;
          v31 = 0xE300000000000000;
          goto LABEL_29;
        }

        v55 = 0;
      }

      else
      {
        if (v28 == 1)
        {
LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

        v55 = a1[1].requestingProcessBundleIdentifier[1];
      }

      v57 = v29 ^ v55;
      if (v57)
      {
        v30 = 0x646578696D2ELL;
      }

      else
      {
        v30 = 1717989166;
      }

      if (v57)
      {
        v31 = 0xE600000000000000;
      }

      else
      {
        v31 = 0xE400000000000000;
      }

LABEL_29:
      v58 = sub_1000307A4(v30, v31, &v118);
      v31, v59, v60, v61, v62, v63, v64, v65;
      *(v27 + 4) = v58;
      *(v27 + 12) = 2080;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      v73 = *&v117->requestingProcessBundleIdentifier[8];
      if (v73)
      {
        v74 = v117[1].requestingProcessBundleIdentifier[0];
        if (v74 == 1)
        {
          if (v73 != 1)
          {
            if (v117[1].requestingProcessBundleIdentifier[1])
            {
              v117, v66, v67, v68, v69, v70, v71, v72;
              v75 = 7237422;
              v76 = 0xE300000000000000;
LABEL_57:
              v99 = sub_1000307A4(v75, v76, &v118);
              v76, v100, v101, v102, v103, v104, v105, v106;
              *(v27 + 14) = v99;
              _os_log_impl(&_mh_execute_header, v18, v19, "changeNewParticipantsCanBeCoOwners 4 newState: %s, oldState: %s", v27, 0x16u);
              swift_arrayDestroy();

              (*(v116 + 8))(v8, v2);
              goto LABEL_66;
            }

            v77 = 0;
LABEL_51:
            v117, v66, v67, v68, v69, v70, v71, v72;
            if (v74 != v77)
            {
              v75 = 0x646578696D2ELL;
            }

            else
            {
              v75 = 1717989166;
            }

            if (v74 != v77)
            {
              v76 = 0xE600000000000000;
            }

            else
            {
              v76 = 0xE400000000000000;
            }

            goto LABEL_57;
          }

          goto LABEL_78;
        }

        if (v73 != 1)
        {
          v77 = v117[1].requestingProcessBundleIdentifier[1];
          goto LABEL_51;
        }

        goto LABEL_74;
      }

      goto LABEL_70;
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  (*(v3 + 8))(v8, v2);
LABEL_66:
  swift_getKeyPath();
  swift_getKeyPath();
  v118 = a1;

  sub_10009DB00();
}

_TtC13SPIHelper_iOS9SPIHelper *sub_10004834C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  if (v10 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    result = v10;
    v8 = *&v10->requestingProcessBundleIdentifier[8];
    if (!v8)
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v10[1].requestingProcessBundleIdentifier[0] != 1)
    {
      if (v8 != 1)
      {
        goto LABEL_14;
      }

      __break(1u);
      goto LABEL_13;
    }

    if (v8 != 1)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  result = v10;
  v8 = *&v10->requestingProcessBundleIdentifier[8];
  if (!v8)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v10[1].requestingProcessBundleIdentifier[0] != 1)
  {
LABEL_13:
    if (v8 != 1)
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  if (v8 != 1)
  {
LABEL_9:
    if (result[1].requestingProcessBundleIdentifier[1])
    {
      v9 = 1;
LABEL_15:
      result, v0, v1, v2, v3, v4, v5, v6;
      return v9;
    }

LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1000484EC(unsigned __int8 a1)
{
  v1 = a1;
  v2 = sub_10009D9F0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if (v38 != v1)
  {
    sub_10009D9D0();

    v7 = sub_10009D9E0();
    v8 = sub_10009DFF0();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v36 = v34;
      *v9 = 136315394;
      v10 = 0x4D63696C6275702ELL;
      v11 = 0xEB0000000065646FLL;
      if (v1 != 1)
      {
        v10 = 0x657461766972702ELL;
        v11 = 0xEC00000065646F4DLL;
      }

      if (v1)
      {
        v12 = v10;
      }

      else
      {
        v12 = 0x656E6F6E2ELL;
      }

      if (v1)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0xE500000000000000;
      }

      v14 = sub_1000307A4(v12, v13, &v36);
      v13, v15, v16, v17, v18, v19, v20, v21;
      *(v9 + 4) = v14;
      *(v9 + 12) = 2080;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      v22 = 0x4D63696C6275702ELL;
      v23 = 0xEB0000000065646FLL;
      if (v35 != 1)
      {
        v22 = 0x657461766972702ELL;
        v23 = 0xEC00000065646F4DLL;
      }

      if (v35)
      {
        v24 = v22;
      }

      else
      {
        v24 = 0x656E6F6E2ELL;
      }

      if (v35)
      {
        v25 = v23;
      }

      else
      {
        v25 = 0xE500000000000000;
      }

      v26 = sub_1000307A4(v24, v25, &v36);
      v25, v27, v28, v29, v30, v31, v32, v33;
      *(v9 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v7, v8, "updateAccessModeOnly for newAccess: %s, oldAccess: %s", v9, 0x16u);
      swift_arrayDestroy();
    }

    (*(v3 + 8))(v5, v2);
    swift_getKeyPath();
    swift_getKeyPath();
    v37 = v1;

    return sub_10009DB00();
  }

  return result;
}

uint64_t sub_10004886C(unsigned __int8 a1)
{
  v1 = a1;
  v2 = sub_10009D9F0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if (v42 != v1)
  {
    sub_10009D9D0();

    v7 = sub_10009D9E0();
    v8 = sub_10009DFF0();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v40 = v38;
      *v9 = 136315394;
      v10 = 0xE500000000000000;
      v11 = 0x6C6E4F646165722ELL;
      v12 = 0xE900000000000079;
      if (v1 != 2)
      {
        v11 = 0x646578696D2ELL;
        v12 = 0xE600000000000000;
      }

      v13 = 0x697257646165722ELL;
      if (v1)
      {
        v10 = 0xEA00000000006574;
      }

      else
      {
        v13 = 0x656E6F6E2ELL;
      }

      if (v1 <= 1)
      {
        v14 = v13;
      }

      else
      {
        v14 = v11;
      }

      if (v1 <= 1)
      {
        v15 = v10;
      }

      else
      {
        v15 = v12;
      }

      v16 = sub_1000307A4(v14, v15, &v40);
      v15, v17, v18, v19, v20, v21, v22, v23;
      *(v9 + 4) = v16;
      *(v9 + 12) = 2080;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      v24 = 0xE500000000000000;
      v25 = 0x6C6E4F646165722ELL;
      v26 = 0xE900000000000079;
      if (v39 != 2)
      {
        v25 = 0x646578696D2ELL;
        v26 = 0xE600000000000000;
      }

      v27 = 0x697257646165722ELL;
      if (v39)
      {
        v24 = 0xEA00000000006574;
      }

      else
      {
        v27 = 0x656E6F6E2ELL;
      }

      if (v39 <= 1u)
      {
        v28 = v27;
      }

      else
      {
        v28 = v25;
      }

      if (v39 <= 1u)
      {
        v29 = v24;
      }

      else
      {
        v29 = v26;
      }

      v30 = sub_1000307A4(v28, v29, &v40);
      v29, v31, v32, v33, v34, v35, v36, v37;
      *(v9 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v7, v8, "updatePermissionsOnly newAccess: %s, oldAccess: %s", v9, 0x16u);
      swift_arrayDestroy();
    }

    (*(v3 + 8))(v5, v2);
    swift_getKeyPath();
    swift_getKeyPath();
    v41 = v1;

    return sub_10009DB00();
  }

  return result;
}

uint64_t sub_100048C50(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  return v3;
}

uint64_t sub_100048CBC(char a1, uint64_t a2, char a3)
{
  *(v4 + 119) = a3;
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 118) = a1;
  v5 = sub_10009D9F0();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();
  sub_10009DF10();
  *(v4 + 64) = sub_10009DF00();
  v7 = sub_10009DED0();
  *(v4 + 72) = v7;
  *(v4 + 80) = v6;

  return _swift_task_switch(sub_100048DB8, v7, v6);
}

uint64_t sub_100048DB8()
{
  v67 = v0;
  v1 = *(v0 + 118);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if (*(v0 + 112) == v1)
  {
    goto LABEL_6;
  }

  v2 = *(v0 + 118);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v3 = *(v0 + 113);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 114) = v2;

  sub_10009DB00();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v4 = *(v0 + 16);
  *(v0 + 88) = v4;
  if (!v4)
  {
    goto LABEL_6;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  if ((*(v0 + 115) & 1) == 0)
  {

    goto LABEL_7;
  }

  v5 = *(v0 + 118);
  v6 = [v4 publicPermission];
  if (v5 == 2)
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if (*(v0 + 116) == 3)
  {
    goto LABEL_12;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if (*(v0 + 117) <= 1u)
  {
    if (!*(v0 + 117))
    {
LABEL_5:
      v7 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v7 = 3;
    goto LABEL_13;
  }

  if (*(v0 + 117) != 2)
  {
    return sub_10009E250();
  }

  v7 = 2;
LABEL_13:
  sub_10009D9D0();
  v10 = sub_10009D9E0();
  v11 = sub_10009DFF0();
  if (!os_log_type_enabled(v10, v11))
  {
    v18 = *(v0 + 48);
    v17 = *(v0 + 56);
    v19 = *(v0 + 40);

    (*(v18 + 8))(v17, v19);
    if (v7 != v6)
    {
      goto LABEL_44;
    }

    goto LABEL_48;
  }

  v12 = *(v0 + 118);
  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  *v13 = 136316162;
  v65 = v6;
  v66 = v14;
  v64 = v7;
  if (v12)
  {
    if (v12 == 1)
    {
      v15 = 0x4D63696C6275702ELL;
      v16 = 0xEB0000000065646FLL;
    }

    else
    {
      v15 = 0x657461766972702ELL;
      v16 = 0xEC00000065646F4DLL;
    }
  }

  else
  {
    v16 = 0xE500000000000000;
    v15 = 0x656E6F6E2ELL;
  }

  v20 = sub_1000307A4(v15, v16, &v66);
  v16, v21, v22, v23, v24, v25, v26, v27;
  *(v13 + 4) = v20;
  *(v13 + 12) = 2080;
  if (v3)
  {
    if (v3 == 1)
    {
      v28 = 0x4D63696C6275702ELL;
      v29 = 0xEB0000000065646FLL;
    }

    else
    {
      v28 = 0x657461766972702ELL;
      v29 = 0xEC00000065646F4DLL;
    }
  }

  else
  {
    v29 = 0xE500000000000000;
    v28 = 0x656E6F6E2ELL;
  }

  v30 = sub_1000307A4(v28, v29, &v66);
  v29, v31, v32, v33, v34, v35, v36, v37;
  *(v13 + 14) = v30;
  *(v13 + 22) = 2080;
  if (v65 == 1)
  {
    v39 = 0xE500000000000000;
    v38 = 0x656E6F6E2ELL;
  }

  else
  {
    if (v65 != 2)
    {
      if (v65 == 3)
      {
        v38 = 0x697257646165722ELL;
        v39 = 0xEA00000000006574;
        goto LABEL_37;
      }

      return sub_10009E250();
    }

    v38 = 0x6C6E4F646165722ELL;
    v39 = 0xE900000000000079;
  }

LABEL_37:
  v40 = sub_1000307A4(v38, v39, &v66);
  v39, v41, v42, v43, v44, v45, v46, v47;
  *(v13 + 24) = v40;
  *(v13 + 32) = 2080;
  if (v64 == 1)
  {
    v49 = 0xE500000000000000;
    v48 = 0x656E6F6E2ELL;
  }

  else if (v64 == 2)
  {
    v48 = 0x6C6E4F646165722ELL;
    v49 = 0xE900000000000079;
  }

  else
  {
    v48 = 0x697257646165722ELL;
    v49 = 0xEA00000000006574;
  }

  v50 = *(v0 + 48);
  v63 = *(v0 + 56);
  v51 = *(v0 + 40);
  v52 = *(v0 + 119);
  v53 = sub_1000307A4(v48, v49, &v66);
  v49, v54, v55, v56, v57, v58, v59, v60;
  *(v13 + 34) = v53;
  *(v13 + 42) = 1024;
  *(v13 + 44) = v52;
  _os_log_impl(&_mh_execute_header, v10, v11, "changeAccessSetting for newAccess: %s, oldAccess: %s oldSharePermission: %s,\nnewSharePermission: %s, saveShare: %{BOOL}d", v13, 0x30u);
  swift_arrayDestroy();

  (*(v50 + 8))(v63, v51);
  v7 = v64;
  if (v64 != v65)
  {
LABEL_44:
    v61 = *(v0 + 119);
    [v4 setPublicPermission:v7];
    if (v61 == 1)
    {
      v62 = swift_task_alloc();
      *(v0 + 96) = v62;
      *v62 = v0;
      v62[1] = sub_100049564;

      return sub_10002AAAC(1);
    }
  }

LABEL_48:

LABEL_6:

LABEL_7:

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100049564()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_1000496A0;
  }

  else
  {
    v5 = sub_10002502C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000496A0()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100049714(char a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 118) = a4;
  *(v5 + 117) = a3;
  *(v5 + 24) = a2;
  *(v5 + 32) = v4;
  *(v5 + 116) = a1;
  v6 = sub_10009D9F0();
  *(v5 + 40) = v6;
  *(v5 + 48) = *(v6 - 8);
  *(v5 + 56) = swift_task_alloc();
  sub_10009DF10();
  *(v5 + 64) = sub_10009DF00();
  v8 = sub_10009DED0();
  *(v5 + 72) = v8;
  *(v5 + 80) = v7;

  return _swift_task_switch(sub_100049814, v8, v7);
}

void sub_100049814()
{
  v63 = v0;
  v1 = *(v0 + 116);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if (*(v0 + 112) == v1)
  {
    goto LABEL_19;
  }

  v2 = *(v0 + 116);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 113) = v2;

  sub_10009DB00();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v3 = *(v0 + 16);
  *(v0 + 88) = v3;
  if (!v3)
  {
    goto LABEL_19;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  if ((*(v0 + 114) & 1) == 0)
  {

    goto LABEL_20;
  }

  v4 = v3;
  v5 = sub_100098F14(v3);

  sub_10009D9D0();
  v6 = sub_10009D9E0();
  v7 = sub_10009DFF0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = 0x656E6F6E2ELL;
    v9 = *(v0 + 116);
    v10 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *v10 = 136315906;
    v11 = 0xE500000000000000;
    v12 = 0x6C6E4F646165722ELL;
    v13 = 0xE900000000000079;
    if (v9 != 2)
    {
      v12 = 0x646578696D2ELL;
      v13 = 0xE600000000000000;
    }

    v14 = 0x697257646165722ELL;
    if (v9)
    {
      v11 = 0xEA00000000006574;
    }

    else
    {
      v14 = 0x656E6F6E2ELL;
    }

    if (v9 <= 1)
    {
      v15 = v14;
    }

    else
    {
      v15 = v12;
    }

    if (v9 <= 1)
    {
      v16 = v11;
    }

    else
    {
      v16 = v13;
    }

    v17 = sub_1000307A4(v15, v16, &v62);
    v16, v18, v19, v20, v21, v22, v23, v24;
    *(v10 + 4) = v17;
    *(v10 + 12) = 2080;
    v60 = v5;
    if (v5 > 1u)
    {
      if (v5 == 2)
      {
        v8 = 0x6C6E4F646165722ELL;
        v25 = 0xE900000000000079;
      }

      else
      {
        v25 = 0xE600000000000000;
        v8 = 0x646578696D2ELL;
      }
    }

    else if (v5)
    {
      v8 = 0x697257646165722ELL;
      v25 = 0xEA00000000006574;
    }

    else
    {
      v25 = 0xE500000000000000;
    }

    v30 = *(v0 + 48);
    v58 = *(v0 + 40);
    v59 = *(v0 + 56);
    v31 = *(v0 + 118);
    v32 = *(v0 + 117);
    v33 = sub_1000307A4(v8, v25, &v62);
    v25, v34, v35, v36, v37, v38, v39, v40;
    *(v10 + 14) = v33;
    *(v10 + 22) = 1024;
    *(v10 + 24) = v31;
    *(v10 + 28) = 1024;
    *(v10 + 30) = v32;
    _os_log_impl(&_mh_execute_header, v6, v7, "changeReadWritePermission newPermission: %s, oldSharePermission: %s,\nupdateExistingParticipants: %{BOOL}d, saveShare: %{BOOL}d", v10, 0x22u);
    swift_arrayDestroy();

    (*(v30 + 8))(v59, v58);
    v5 = v60;
  }

  else
  {
    v28 = *(v0 + 48);
    v27 = *(v0 + 56);
    v29 = *(v0 + 40);

    (*(v28 + 8))(v27, v29);
  }

  v41 = *(v0 + 116);
  if (v41 != v5)
  {
    if (*(v0 + 116) > 1u)
    {
      if (v41 != 2)
      {
        sub_10009E250();
        return;
      }

      v42 = 1;
      v43 = 2;
    }

    else
    {
      v42 = 0;
      if (*(v0 + 116))
      {
        v43 = 3;
      }

      else
      {
        v43 = 1;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    if (*(v0 + 115) == 1)
    {
      [v4 setPublicPermission:v43];
    }

    if (*(v0 + 118) != 1 || [v4 publicPermission] != 1)
    {
LABEL_55:
      if (*(v0 + 117) == 1)
      {
        v57 = swift_task_alloc();
        *(v0 + 96) = v57;
        *v57 = v0;
        v57[1] = sub_100049F7C;

        sub_10002AAAC(1);
        return;
      }

      goto LABEL_59;
    }

    v44 = [v4 participants];
    sub_1000037C4(0, &qword_1000CAD70, CKShareParticipant_ptr);
    v45 = sub_10009DEA0();

    v61 = v4;
    if (v45 >> 62)
    {
      v53 = sub_10009E260();
      if (v53)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v53 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v53)
      {
LABEL_43:
        if (v53 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v53; ++i)
        {
          if ((v45 & 0xC000000000000001) != 0)
          {
            v55 = sub_10009E1F0();
          }

          else
          {
            v55 = *(v45 + 8 * i + 32);
          }

          v56 = v55;
          if ([v55 role] != 1)
          {
            [v56 setPermission:v43];
            if (v42)
            {
              [v56 setRole:3];
            }
          }
        }
      }
    }

    v45, v46, v47, v48, v49, v50, v51, v52;
    v4 = v61;
    goto LABEL_55;
  }

LABEL_59:

LABEL_19:

LABEL_20:

  v26 = *(v0 + 8);

  v26();
}

uint64_t sub_100049F7C()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_10004CA38;
  }

  else
  {
    v5 = sub_10004CA34;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10004A0B8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  return v1;
}

uint64_t sub_10004A154@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  *a2 = v4;
  return result;
}

uint64_t sub_10004A1D4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10009DB00();
}

uint64_t sub_10004A250()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v1 = *(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel_allowAccessRequestsSPIOverride);
  if (v1 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    LOBYTE(v1) = v3;
  }

  if (v1)
  {
    goto LABEL_6;
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100022014();

LABEL_6:
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_10009DB00();
  }

  __break(1u);
  return result;
}

uint64_t sub_10004A3E0(int a1)
{
  v3 = sub_10009D9F0();
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel_allowAccessRequestsSPIOverride);
  if (v8 == 2 || ((v8 ^ a1) & 1) != 0)
  {
    v9 = a1 & 1;
    *(v1 + OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel_allowAccessRequestsSPIOverride) = a1 & 1;
    swift_getKeyPath();
    swift_getKeyPath();
    v13[15] = a1 & 1;

    sub_10009DB00();
    sub_10009D9D0();
    v10 = sub_10009D9E0();
    v11 = sub_10009DFF0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v10, v11, "changeRequestAccessAllowedForSPI newAccessAllowed: %{BOOL}d--this should be the final value set in the share", v12, 8u);
    }

    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

void sub_10004A598(void **a1, uint64_t a2)
{
  v3 = sub_10009D9F0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (v7)
    {
      v8 = v7;
      if ([v8 publicPermission] == 1)
      {
        v9 = 2;
      }

      else
      {
        v9 = 1;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      HIBYTE(v22) = v9;

      sub_10009DB00();
      v10 = v8;
      v11 = sub_100098F14(v7);

      swift_getKeyPath();
      swift_getKeyPath();
      HIBYTE(v22) = v11;

      sub_10009DB00();
      sub_10009D9D0();
      v12 = v10;
      v13 = sub_10009D9E0();
      v14 = sub_10009DFF0();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 67109120;
        *(v15 + 4) = [v12 allowsAccessRequests];

        _os_log_impl(&_mh_execute_header, v13, v14, "optionsModel ckShareModel.$ckShare about to set anyoneCanRequestAccessPublisher to ckShare's allowsAccessRequests: %{BOOL}d", v15, 8u);
      }

      else
      {

        v13 = v12;
      }

      (*(v4 + 8))(v6, v3);
      v16 = [v12 allowsAccessRequests];
      swift_getKeyPath();
      swift_getKeyPath();
      HIBYTE(v22) = v16;

      sub_10009DB00();
      v17 = [v12 currentUserParticipant];
      if (v17)
      {
        v18 = v17;
        v19 = [v17 role];
        sub_1000037C4(0, &qword_1000CAD58, NSObject_ptr);
        v20 = [v12 owner];
        v21 = sub_10009E110();

        swift_getKeyPath();
        swift_getKeyPath();
        HIBYTE(v22) = v21 & 1 | (v19 == 2);

        sub_10009DB00();
      }

      sub_10004A250();
    }

    else
    {
    }
  }
}

uint64_t sub_10004A948(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    v4 = sub_10004AAC4(v5, v2);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10009DB00();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    sub_10004AB4C(v4, v2);
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_10009DB00();
  }

  return result;
}

uint64_t sub_10004AAC4(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  v3 = a2 & 0xC;
  result = (a2 >> 1) & 2;
  do
  {
    while (v2 > 1)
    {
      if (v2 == 2)
      {
        v2 = 1;
        if (v3 != 8)
        {
          return result;
        }
      }

      else
      {
        if (v3 == 12)
        {
          return 3;
        }

LABEL_11:
        if ((a2 & 8) != 0)
        {
          v5 = v2 == 1;
          v2 = 1;
          if (v5)
          {
            return 0;
          }
        }

        else
        {
          v5 = v2 == 2;
          v2 = 2;
          if (v5)
          {
            return 0;
          }
        }
      }
    }

    if (!v2)
    {
      if (!a2)
      {
        return 0;
      }

      goto LABEL_11;
    }

    v2 = 2;
  }

  while ((a2 & 8) == 0);
  return 1;
}

uint64_t sub_10004AB4C(char a1, uint64_t a2)
{
  if ((a2 & 2) != 0)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if ((a2 & 1u) <= (a2 == 0))
  {
    result = a2 == 0;
  }

  else
  {
    result = a2 & 1;
  }

  do
  {
    while (a1)
    {
      if (a1 == 1)
      {
        a1 = 2;
        if ((a2 & 3) != 2)
        {
          return result;
        }
      }

      else
      {
        a1 = 1;
        if (a2 == 0 || (a2 & 2) != 0)
        {
          return 2;
        }
      }
    }

    a1 = v3;
  }

  while (a2);
  return 0;
}

uint64_t sub_10004ABC0()
{
  v1 = OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel__readWritePermission;
  v2 = sub_100003714(&qword_1000CABE0, &qword_1000A0E68);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel__sharingMode;
  v4 = sub_100003714(&qword_1000CABF8, &qword_1000A0E70);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel__sharingOptionsAllowed;
  v6 = sub_100003714(&qword_1000CAAB0, &qword_1000A0DC0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel__allowCoOwnersEditing;
  v8 = sub_100003714(&qword_1000CAB08, &qword_1000A0E10);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v10 = OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel__newParticipantsCanBeCoOwners;
  v11 = sub_100003714(&qword_1000CABC0, &qword_1000A0E60);
  v12 = *(*(v11 - 8) + 8);
  v12(v0 + v10, v11);
  v9(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel__participantsAreAlwaysCoOwners, v8);
  v13 = OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel__currentUserCanInvitePublisher;
  v14 = sub_100003714(&qword_1000CB758, &qword_1000A2440);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v9(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel__currentUserCanManageAccessRequestsPublisher, v8);
  v9(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel__anyoneCanRequestAccessPublisher, v8);
  v12(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel__coOwnerNewParticipantsCanBeCoOwners, v11);

  *(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel_store), v15, v16, v17, v18, v19, v20, v21;
  return v0;
}

uint64_t sub_10004AE58()
{
  sub_10004ABC0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OptionsModel(uint64_t a1)
{
  result = qword_1000CB640;
  if (!qword_1000CB640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004AF04(uint64_t a1)
{
  sub_100031F60(319, &qword_1000CB650, &type metadata for SharePermission);
  if (v1 <= 0x3F)
  {
    sub_100031F60(319, &qword_1000CB658, &type metadata for SharingMode);
    if (v2 <= 0x3F)
    {
      sub_100031F60(319, &qword_1000CA680, &type metadata for SharingOptions);
      if (v3 <= 0x3F)
      {
        sub_100031F60(319, &qword_1000CA610, &type metadata for Bool);
        if (v4 <= 0x3F)
        {
          sub_100031F60(319, &qword_1000CB660, &type metadata for TriStateBool);
          if (v5 <= 0x3F)
          {
            sub_10004B140(319);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_10004B140(uint64_t a1)
{
  if (!qword_1000CB668)
  {
    sub_10000594C(&unk_1000CB670, &qword_1000A2138);
    v1 = sub_10009DB10();
    if (!v2)
    {
      atomic_store(v1, &qword_1000CB668);
    }
  }
}

uint64_t sub_10004B1CC()
{
  v1[2] = v0;
  v2 = sub_10009D9F0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_10009DF10();
  v1[6] = sub_10009DF00();
  v4 = sub_10009DED0();
  v1[7] = v4;
  v1[8] = v3;

  return _swift_task_switch(sub_10004B2C0, v4, v3);
}

uint64_t sub_10004B2C0(uint64_t a1)
{
  *(v1 + 72) = 10;
  sub_10009D9D0();

  v2 = sub_10009D9E0();
  v3 = sub_10009DFF0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109376;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    *(v4 + 4) = *(v1 + 89) != 2;

    *(v4 + 8) = 2048;
    *(v4 + 10) = 10;
    _os_log_impl(&_mh_execute_header, v2, v3, "waitForCurrentUserInvitingFromShare completed: %{BOOL}d, retriesLeft: %ld", v4, 0x12u);
  }

  else
  {
  }

  (*(*(v1 + 32) + 8))(*(v1 + 40), *(v1 + 24));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if (*(v1 + 88) == 2)
  {
    v5 = swift_task_alloc();
    *(v1 + 80) = v5;
    *v5 = v1;
    v5[1] = sub_10004B52C;

    return static Task<>.sleep(nanoseconds:)(10000000);
  }

  else
  {

    v6 = *(v1 + 8);

    return v6();
  }
}

uint64_t sub_10004B52C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_10004CA3C;
  }

  else
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_10004B650;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10004B650(uint64_t a1)
{
  v2 = *(v1 + 72);
  v3 = v2 - 1;
  if (v2 == 1)
  {

    sub_100005B1C();
    swift_allocError();
    *v10 = 0xD000000000000026;
    *(v10 + 8) = 0x80000001000A72C0;
    *(v10 + 16) = xmmword_1000A2110;
    *(v10 + 32) = 0x80000001000A72F0;
    *(v10 + 40) = 11;
    swift_willThrow();

    v8 = *(v1 + 8);
  }

  else
  {
    if (v2 < 2)
    {
      __break(1u);
      return static Task<>.sleep(nanoseconds:)(a1);
    }

    *(v1 + 72) = v3;
    sub_10009D9D0();

    v4 = sub_10009D9E0();
    v5 = sub_10009DFF0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 67109376;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      *(v6 + 4) = *(v1 + 89) != 2;

      *(v6 + 8) = 2048;
      *(v6 + 10) = v3;
      _os_log_impl(&_mh_execute_header, v4, v5, "waitForCurrentUserInvitingFromShare completed: %{BOOL}d, retriesLeft: %ld", v6, 0x12u);
    }

    else
    {
    }

    (*(*(v1 + 32) + 8))(*(v1 + 40), *(v1 + 24));
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    if (*(v1 + 88) == 2)
    {
      v7 = swift_task_alloc();
      *(v1 + 80) = v7;
      *v7 = v1;
      v7[1] = sub_10004B52C;
      a1 = 10000000;

      return static Task<>.sleep(nanoseconds:)(a1);
    }

    v8 = *(v1 + 8);
  }

  return v8();
}

uint64_t sub_10004B974@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  *a2 = v4;
  return result;
}

uint64_t sub_10004B9F4(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10009DB00();
}

char *sub_10004BA80(uint64_t a1)
{
  v2 = v1;
  v76 = a1;
  v87 = *v1;
  v3 = sub_100003714(&qword_1000CA950, &qword_1000A0C70);
  v79 = *(v3 - 8);
  v80 = v3;
  __chkstk_darwin(v3);
  v78 = &v62 - v4;
  v5 = sub_100003714(&qword_1000CA958, &qword_1000A0C78);
  v82 = *(v5 - 8);
  v83 = v5;
  __chkstk_darwin(v5);
  v81 = &v62 - v6;
  v7 = sub_100003714(&qword_1000CB750, &qword_1000A2438);
  v85 = *(v7 - 8);
  v86 = v7;
  __chkstk_darwin(v7);
  v84 = &v62 - v8;
  v9 = sub_100003714(&qword_1000CAA08, &qword_1000A0D28);
  __chkstk_darwin(v9 - 8);
  v77 = &v62 - v10;
  v72 = sub_100003714(&qword_1000CA9F0, &qword_1000A0D10);
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v62 - v11;
  v12 = sub_100003714(&qword_1000CA9C0, &qword_1000A0CE0);
  v74 = *(v12 - 8);
  v75 = v12;
  __chkstk_darwin(v12);
  v73 = &v62 - v13;
  v69 = sub_100003714(&qword_1000CB758, &qword_1000A2440);
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v62 - v14;
  v88 = sub_100003714(&qword_1000CABC0, &qword_1000A0E60);
  v66 = *(v88 - 1);
  __chkstk_darwin(v88);
  v65 = &v62 - v15;
  v64 = sub_100003714(&qword_1000CAB08, &qword_1000A0E10);
  v16 = *(v64 - 8);
  __chkstk_darwin(v64);
  v18 = &v62 - v17;
  v19 = sub_100003714(&qword_1000CABF8, &qword_1000A0E70);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v62 - v21;
  v23 = sub_100003714(&qword_1000CABE0, &qword_1000A0E68);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v62 - v25;
  v27 = OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel__readWritePermission;
  LOBYTE(v90) = 1;
  sub_10009DAC0();
  (*(v24 + 32))(&v2[v27], v26, v23);
  v28 = OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel__sharingMode;
  LOBYTE(v90) = 0;
  sub_10009DAC0();
  (*(v20 + 32))(&v2[v28], v22, v19);
  v29 = OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel__allowCoOwnersEditing;
  LOBYTE(v90) = 0;
  sub_10009DAC0();
  v30 = *(v16 + 32);
  v31 = v64;
  v30(&v2[v29], v18, v64);
  v32 = OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel__newParticipantsCanBeCoOwners;
  v90 = &off_1000C1988;
  v33 = v65;
  sub_10009DAC0();
  v66 = *(v66 + 32);
  (v66)(&v2[v32], v33, v88);
  v34 = OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel__participantsAreAlwaysCoOwners;
  LOBYTE(v90) = 0;
  sub_10009DAC0();
  v30(&v2[v34], v18, v31);
  v35 = OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel__currentUserCanInvitePublisher;
  LOBYTE(v90) = 2;
  sub_100003714(&unk_1000CB670, &qword_1000A2138);
  v36 = v67;
  sub_10009DAC0();
  (*(v68 + 32))(&v2[v35], v36, v69);
  v37 = OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel__currentUserCanManageAccessRequestsPublisher;
  LOBYTE(v90) = 0;
  sub_10009DAC0();
  v30(&v2[v37], v18, v31);
  v38 = OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel__anyoneCanRequestAccessPublisher;
  LOBYTE(v90) = 0;
  sub_10009DAC0();
  v30(&v2[v38], v18, v31);
  v39 = OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel__coOwnerNewParticipantsCanBeCoOwners;
  v90 = &off_1000C19B0;
  sub_10009DAC0();
  (v66)(&v2[v39], v33, v88);
  v2[OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel_allowAccessRequestsSPIOverride] = 2;
  if (_swiftEmptyArrayStorage >> 62 && sub_10009E260())
  {
    v40 = sub_1000327CC(_swiftEmptyArrayStorage);
  }

  else
  {
    v40 = &_swiftEmptySetSingleton;
  }

  v69 = OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel_store;
  *&v2[OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel_store] = v40;
  v41 = v76;
  *&v2[OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel_ckShareModel] = v76;
  swift_beginAccess();
  v89 = 15;

  sub_10009DAC0();
  swift_endAccess();
  swift_beginAccess();
  sub_100003714(&qword_1000CABA8, &qword_1000A0E58);
  v42 = v70;
  sub_10009DAD0();
  swift_endAccess();
  v88 = objc_opt_self();
  v43 = [v88 mainRunLoop];
  v90 = v43;
  v67 = sub_10009E130();
  v44 = *(v67 - 1);
  v66 = *(v44 + 56);
  v68 = v44 + 56;
  v45 = v77;
  (v66)(v77, 1, 1, v67);
  v65 = sub_1000037C4(0, &qword_1000CAB88, NSRunLoop_ptr);
  v63 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_100039B10(&qword_1000CABB0, &qword_1000CA9F0, &qword_1000A0D10, &protocol conformance descriptor for Published<A>.Publisher);
  v64 = sub_10004C89C();
  v47 = v72;
  v46 = v73;
  sub_10009DB50();
  sub_10004C904(v45);

  (*(v71 + 8))(v42, v47);
  v48 = swift_allocObject();
  swift_weakInit();
  v49 = swift_allocObject();
  *(v49 + 16) = v48;
  *(v49 + 24) = v41;
  sub_100039B10(&qword_1000CAC30, &qword_1000CA9C0, &qword_1000A0CE0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v50 = v75;
  sub_10009DB70();

  (*(v74 + 8))(v46, v50);
  swift_beginAccess();
  sub_10009DA80();
  swift_endAccess();

  swift_beginAccess();
  sub_100003714(&qword_1000CAAB0, &qword_1000A0DC0);
  v51 = v78;
  sub_10009DAD0();
  swift_endAccess();
  sub_100039B10(&qword_1000CACB0, &qword_1000CA950, &qword_1000A0C70, v63);
  sub_1000399B0();
  v52 = v80;
  v53 = v81;
  sub_10009DB60();
  (*(v79 + 8))(v51, v52);
  v54 = [v88 mainRunLoop];
  v90 = v54;
  (v66)(v45, 1, 1, v67);
  sub_100039B10(&qword_1000CACF0, &qword_1000CA958, &qword_1000A0C78, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v55 = v83;
  v56 = v84;
  sub_10009DB50();
  sub_10004C904(v45);

  (*(v82 + 8))(v53, v55);
  v57 = swift_allocObject();
  swift_weakInit();

  v58 = swift_allocObject();
  v59 = v87;
  *(v58 + 16) = v57;
  *(v58 + 24) = v59;
  sub_100039B10(&qword_1000CB760, &qword_1000CB750, &qword_1000A2438, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v60 = v86;
  sub_10009DB70();

  (*(v85 + 8))(v56, v60);
  swift_beginAccess();
  sub_10009DA80();
  swift_endAccess();

  return v2;
}

unint64_t sub_10004C89C()
{
  result = qword_1000CAB98;
  if (!qword_1000CAB98)
  {
    sub_1000037C4(255, &qword_1000CAB88, NSRunLoop_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CAB98);
  }

  return result;
}

uint64_t sub_10004C904(uint64_t a1)
{
  v2 = sub_100003714(&qword_1000CAA08, &qword_1000A0D28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004C96C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004C9A4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004C9EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

BOOL sub_10004CA5C(_BOOL8 result, uint64_t a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    __break(1u);
    goto LABEL_23;
  }

  v3 = *(result + 32);
  if (v3 == 1)
  {
    if (v2 == 1)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (*(result + 33) == 1)
    {
      v4 = 0;
      goto LABEL_11;
    }

    v5 = 0;
  }

  else
  {
    if (v2 == 1)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v5 = *(result + 33);
  }

  v6 = v3 == v5;
  v4 = 1;
  if (!v6)
  {
    v4 = 2;
  }

LABEL_11:
  v7 = *(a2 + 16);
  if (!v7)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v8 = *(a2 + 32);
  if ((v8 & 1) == 0)
  {
    if (v7 != 1)
    {
      v10 = *(a2 + 33);
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  if (v7 != 1)
  {
    if (*(a2 + 33) == 1)
    {
      v9 = 0;
      return v4 == v9;
    }

    v10 = 0;
LABEL_19:
    v6 = v8 == v10;
    v9 = 1;
    if (!v6)
    {
      v9 = 2;
    }

    return v4 == v9;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10004CB38(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v13 - v8;
  __chkstk_darwin(v7);
  v11 = &v13 - v10;
  sub_100008658(a1, &v13 - v10, &qword_1000CA250, &qword_10009FDF8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008658(v11, v6, &qword_1000CA250, &qword_10009FDF8);

  sub_10009DB00();
  sub_1000218C4(v9);
  sub_100008728(v9, &qword_1000CA250, &qword_10009FDF8);
  return sub_100008728(v11, &qword_1000CA250, &qword_10009FDF8);
}

double sub_10004CCF0@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10004CD70(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10009DB00();
}

uint64_t sub_10004CDF4(uint64_t a1, _TtC13SPIHelper_iOS9SPIHelper *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  __chkstk_darwin(v8 - 8);
  v10 = v29 - v9;
  sub_100008658(a3, v29 - v9, &qword_1000CA8F0, &qword_1000A09C8);
  v11 = sub_10009DF40();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100008728(v10, &qword_1000CA8F0, &qword_1000A09C8);
  }

  else
  {
    sub_10009DF30();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_10009DED0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_10009DDC0() + 32;

      if (v17 | v15)
      {
        v30[0] = 0;
        v30[1] = 0;
        v19 = v30;
        v30[2] = v15;
        v30[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v29[1] = 7;
      v29[2] = v19;
      v29[3] = v18;
      v20 = swift_task_create();

      sub_100008728(a3, &qword_1000CA8F0, &qword_1000A09C8);
      a2, v21, v22, v23, v24, v25, v26, v27;

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100008728(a3, &qword_1000CA8F0, &qword_1000A09C8);
  if (v17 | v15)
  {
    v30[4] = 0;
    v30[5] = 0;
    v30[6] = v15;
    v30[7] = v17;
  }

  return swift_task_create();
}

Class sub_10004D0A0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_1000037C4(0, &qword_1000CAD58, NSObject_ptr);
    v4.super.isa = sub_10009DCF0().super.isa;
    v3, v5, v6, v7, v8, v9, v10, v11;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

id sub_10004D13C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_10009D9F0();
  __chkstk_darwin(v4);
  sub_1000037C4(0, &qword_1000CB7B0, RBSProcessHandle_ptr);
  isa = sub_10009E370().super.super.isa;
  v6 = sub_100079A94(isa);

  v7 = [v6 bundle];
  if (v7 && (v8 = v7, v9 = [v7 identifier], v8, v9))
  {
    v10 = sub_10009DD90();
    v12 = v11;
  }

  else
  {

    v10 = 0;
    v12 = 0;
  }

  v13 = &v2[OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier];
  *v13 = v10;
  v13[1] = v12;
  v15.receiver = v2;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, "init");
}

uint64_t sub_10004D440(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10009D9F0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10009D860();
  v10 = *(v19 - 8);
  __chkstk_darwin(v19);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 url];
  sub_10009D820();

  sub_10009D9D0();
  v14 = sub_10009D9E0();
  v15 = sub_10009DFF0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v18 = v6;
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Extracting url from FPSandboxingURLWrapper then calling:", v16, 2u);
    v6 = v18;
  }

  (*(v7 + 8))(v9, v6);
  sub_10004D684(v12, a2, a3);
  return (*(v10 + 8))(v12, v19);
}

uint64_t sub_10004D684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10009D860();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  __chkstk_darwin(v12 - 8);
  v14 = &v31 - v13;
  sub_10008F3BC(&qword_1000CA4A0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v15 = sub_10009E2C0();
  v17 = v16;
  sub_100079B58(v15, v16, 0xD00000000000001ELL, 0x80000001000A8060);
  v17, v18, v19, v20, v21, v22, v23, v24;
  sub_10009DF20();
  v25 = sub_10009DF40();
  (*(*(v25 - 8) + 56))(v14, 0, 1, v25);
  (*(v9 + 16))(v11, a1, v8);
  sub_10009DF10();
  v26 = v4;

  v27 = sub_10009DF00();
  v28 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v29 = swift_allocObject();
  *(v29 + 2) = v27;
  *(v29 + 3) = &protocol witness table for MainActor;
  *(v29 + 4) = v26;
  *(v29 + 5) = a2;
  *(v29 + 6) = a3;
  (*(v9 + 32))(&v29[v28], v11, v8);
  sub_100019B10(0, 0, v14, &unk_1000A29D8, v29);
}

uint64_t sub_10004D940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[83] = a7;
  v7[82] = a6;
  v7[81] = a5;
  v7[80] = a4;
  sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v7[84] = swift_task_alloc();
  v7[85] = swift_task_alloc();
  v8 = sub_10009D6F0();
  v7[86] = v8;
  v7[87] = *(v8 - 8);
  v7[88] = swift_task_alloc();
  v9 = sub_10009D860();
  v7[89] = v9;
  v10 = *(v9 - 8);
  v7[90] = v10;
  v7[91] = *(v10 + 64);
  v7[92] = swift_task_alloc();
  v7[93] = swift_task_alloc();
  sub_10009DF10();
  v7[94] = sub_10009DF00();
  v12 = sub_10009DED0();
  v7[95] = v12;
  v7[96] = v11;

  return _swift_task_switch(sub_10004DAF8, v12, v11);
}

uint64_t sub_10004DAF8(uint64_t a1)
{
  v2 = sub_10009D830();
  sub_10009D800(v3);
  v5 = v4;
  v6 = [v4 br_isInSyncedLocation];

  if (v2)
  {
    sub_10009D810();
  }

  if (!v6)
  {
    v13 = *(v1 + 744);
    v14 = *(v1 + 728);
    v15 = *(v1 + 720);
    v16 = *(v1 + 712);
    v17 = *(v1 + 664);
    v108 = *(v1 + 648);
    v18 = *(v1 + 640);

    *(v1 + 128) = 0;
    *(v1 + 96) = 0u;
    *(v1 + 112) = 0u;
    *(v1 + 136) = -1;
    (*(v15 + 16))(v13, v17, v16);
    v19 = (*(v15 + 80) + 16) & ~*(v15 + 80);
    v20 = (v14 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    (*(v15 + 32))(v21 + v19, v13, v16);
    *(v21 + v20) = 1;
    *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
    v22 = v18;
    sub_10004F5E0(0xD00000000000001ELL, 0x80000001000A8060, 0x6542746F6E6E6163, 0xEE00646572616853, (v1 + 96), 0, sub_10008F230, v21);

    v108(1, 0);
    goto LABEL_21;
  }

  v7 = shareStatus(url:)();
  if ((v7 & 0x10000) != 0)
  {
    v23 = *(v1 + 744);
    v24 = *(v1 + 728);
    v25 = *(v1 + 720);
    v26 = *(v1 + 712);
    v27 = *(v1 + 664);
    v109 = *(v1 + 648);
    v104 = *(v1 + 640);

    *(v1 + 560) = 0;
    *(v1 + 528) = 0u;
    *(v1 + 544) = 0u;
    *(v1 + 568) = -1;
    v28 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
    (*(v25 + 16))(v23, v27, v26);
    v29 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v30 = (v24 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    (*(v25 + 32))(v31 + v29, v23, v26);
    *(v31 + v30) = 0;
    *(v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8)) = v104;
    v32 = v104;
    sub_10004F5E0(0xD00000000000001ELL, 0x80000001000A8060, 0x20676E6974746567, 0xEE00737574617473, (v1 + 528), v28, sub_10008F514, v31);

    v109(0, v28);

    goto LABEL_21;
  }

  if (v7)
  {
    v8 = v7;

    sub_100003714(&qword_1000CA498, &qword_1000A04B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10009FCE0;
    *(inited + 32) = NSURLParentDirectoryURLKey;
    v10 = NSURLParentDirectoryURLKey;
    sub_1000315FC(inited);
    v12 = v11;
    swift_setDeallocating();
    sub_1000462B8(inited + 32);
    sub_10009D7C0();
    v36 = *(v1 + 720);
    v37 = *(v1 + 712);
    v38 = *(v1 + 680);
    v39 = *(v1 + 672);
    v12, v40, v41, v42, v43, v44, v45, v46;
    sub_10009D6B0();
    sub_100008658(v38, v39, &qword_1000CA250, &qword_10009FDF8);
    if ((*(v36 + 48))(v39, 1, v37) == 1)
    {
      sub_100008728(*(v1 + 672), &qword_1000CA250, &qword_10009FDF8);
LABEL_14:
      v47 = *(v1 + 744);
      v90 = *(v1 + 728);
      v48 = *(v1 + 720);
      v49 = *(v1 + 712);
      v110 = *(v1 + 688);
      v113 = *(v1 + 704);
      v101 = *(v1 + 680);
      v105 = *(v1 + 696);
      v50 = *(v1 + 664);
      v96 = *(v1 + 648);
      v95 = *(v1 + 640);
      if ((v8 & 0x100) != 0)
      {
        v51 = 4;
      }

      else
      {
        v51 = 2;
      }

      *(v1 + 384) = 0u;
      *(v1 + 400) = 0u;
      *(v1 + 416) = 0;
      *(v1 + 424) = -1;
      *(v1 + 632) = v51;
      type metadata accessor for CSUIShareItemStatus(0);
      v92 = sub_10009DDA0();
      v53 = v52;
      (*(v48 + 16))(v47, v50, v49);
      v54 = (*(v48 + 80) + 16) & ~*(v48 + 80);
      v55 = (v90 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
      v56 = swift_allocObject();
      (*(v48 + 32))(v56 + v54, v47, v49);
      *(v56 + v55) = v51;
      *(v56 + ((v55 + 15) & 0xFFFFFFFFFFFFFFF8)) = v95;
      v57 = v95;
      sub_10004F5E0(0xD00000000000001ELL, 0x80000001000A8060, v92, v53, (v1 + 384), 0, sub_10008F514, v56);
      v53, v58, v59, v60, v61, v62, v63, v64;

      v96(v51, 0);
      sub_100008728(v101, &qword_1000CA250, &qword_10009FDF8);
      (*(v105 + 8))(v113, v110);
      goto LABEL_21;
    }

    v65 = *(*(v1 + 720) + 32);
    v65(*(v1 + 736), *(v1 + 672), *(v1 + 712));
    v66 = shareStatus(url:)();
    if ((v66 & 0x10000) != 0)
    {
      v79 = *(v1 + 744);
      v80 = *(v1 + 728);
      v81 = *(v1 + 720);
      v82 = *(v1 + 712);
      v100 = *(v1 + 736);
      v103 = *(v1 + 696);
      v107 = *(v1 + 688);
      v112 = *(v1 + 704);
      v115 = v65;
      v83 = *(v1 + 664);
      v98 = *(v1 + 680);
      v91 = *(v1 + 640);
      v94 = *(v1 + 648);
      *(v1 + 480) = 0u;
      *(v1 + 496) = 0u;
      *(v1 + 512) = 0;
      *(v1 + 520) = -1;
      v89 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
      v84 = v79;
      (*(v81 + 16))(v79, v83, v82);
      v85 = (*(v81 + 80) + 16) & ~*(v81 + 80);
      v86 = (v80 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
      v87 = swift_allocObject();
      v115(v87 + v85, v84, v82);
      *(v87 + v86) = 0;
      *(v87 + ((v86 + 15) & 0xFFFFFFFFFFFFFFF8)) = v91;
      v88 = v91;
      sub_10004F5E0(0xD00000000000001ELL, 0x80000001000A8060, 0x7320746E65726170, 0xED00007375746174, (v1 + 480), v89, sub_10008F514, v87);

      v94(0, v89);
      (*(v81 + 8))(v100, v82);
      sub_100008728(v98, &qword_1000CA250, &qword_10009FDF8);
      (*(v103 + 8))(v112, v107);
    }

    else
    {
      if ((v66 & 1) == 0)
      {
        (*(*(v1 + 720) + 8))(*(v1 + 736), *(v1 + 712));
        goto LABEL_14;
      }

      v67 = *(v1 + 744);
      v68 = *(v1 + 728);
      v114 = v65;
      v69 = *(v1 + 720);
      v70 = *(v1 + 712);
      v99 = *(v1 + 736);
      v102 = *(v1 + 696);
      v106 = *(v1 + 688);
      v111 = *(v1 + 704);
      v71 = *(v1 + 664);
      v97 = *(v1 + 680);
      v72 = *(v1 + 648);
      v73 = *(v1 + 640);
      *(v1 + 432) = 0u;
      *(v1 + 448) = 0u;
      *(v1 + 464) = 0;
      *(v1 + 472) = -1;
      v93 = v72;
      (*(v69 + 16))(v67, v71, v70);
      v74 = (*(v69 + 80) + 16) & ~*(v69 + 80);
      v75 = (v68 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
      v76 = swift_allocObject();
      v114(v76 + v74, v67, v70);
      *(v76 + v75) = 5;
      *(v76 + ((v75 + 15) & 0xFFFFFFFFFFFFFFF8)) = v73;
      v77 = v73;
      sub_10004F5E0(0xD00000000000001ELL, 0x80000001000A8060, 0x7320746E65726170, 0xED00007375746174, (v1 + 432), 0, sub_10008F514, v76);

      v93(5, 0);
      (*(v69 + 8))(v99, v70);
      sub_100008728(v97, &qword_1000CA250, &qword_10009FDF8);
      (*(v102 + 8))(v111, v106);
    }

LABEL_21:

    v78 = *(v1 + 8);

    return v78();
  }

  v33 = swift_task_alloc();
  *(v1 + 776) = v33;
  *v33 = v1;
  v33[1] = sub_10004EA04;
  v34 = *(v1 + 664);

  return sub_10007A254(v34);
}

uint64_t sub_10004EA04(char a1)
{
  v4 = *v2;
  *(*v2 + 784) = v1;

  if (v1)
  {
    v5 = *(v4 + 768);
    v6 = *(v4 + 760);
    v7 = sub_10004EDD4;
  }

  else
  {
    *(v4 + 137) = a1 & 1;
    v5 = *(v4 + 768);
    v6 = *(v4 + 760);
    v7 = sub_10004EB38;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10004EB38()
{
  if (*(v0 + 137))
  {
    v1 = swift_task_alloc();
    *(v0 + 792) = v1;
    *v1 = v0;
    v1[1] = sub_10004F0A0;
    v2 = *(v0 + 664);

    return sub_10007AC74(v2);
  }

  else
  {
    v4 = *(v0 + 744);
    v5 = *(v0 + 728);
    v6 = *(v0 + 720);
    v7 = *(v0 + 712);
    v8 = *(v0 + 664);
    v15 = *(v0 + 648);
    v9 = *(v0 + 640);

    *(v0 + 224) = 0;
    *(v0 + 192) = 0u;
    *(v0 + 208) = 0u;
    *(v0 + 232) = -1;
    (*(v6 + 16))(v4, v8, v7);
    v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v11 = (v5 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = swift_allocObject();
    (*(v6 + 32))(v12 + v10, v4, v7);
    *(v12 + v11) = 1;
    *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v9;
    v13 = v9;
    sub_10004F5E0(0xD00000000000001ELL, 0x80000001000A8060, 0xD000000000000030, 0x80000001000A80C0, (v0 + 192), 0, sub_10008F514, v12);

    v15(1, 0);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_10004EDD4()
{
  v1 = *(v0 + 784);
  v2 = *(v0 + 744);
  v3 = *(v0 + 728);
  v4 = *(v0 + 720);
  v5 = *(v0 + 712);
  v6 = *(v0 + 664);
  v30 = *(v0 + 648);
  v29 = *(v0 + 640);

  *(v0 + 176) = 0;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 184) = -1;
  sub_10009E1E0(64);
  v32._countAndFlagsBits = 0xD00000000000003ELL;
  v32._object = 0x80000001000A8080;
  sub_10009DE10(v32);
  *(v0 + 616) = v1;
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  v33._countAndFlagsBits = sub_10009DDA0();
  object = v33._object;
  sub_10009DE10(v33);
  object, v8, v9, v10, v11, v12, v13, v14;
  v15 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
  (*(v4 + 16))(v2, v6, v5);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = (v3 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v4 + 32))(v18 + v16, v2, v5);
  *(v18 + v17) = 1;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v29;
  v19 = v29;
  sub_10004F5E0(0xD00000000000001ELL, 0x80000001000A8060, 0, 0xE000000000000000, (v0 + 144), v15, sub_10008F514, v18);
  0xE000000000000000, v20, v21, v22, v23, v24, v25, v26;

  v30(1, v15);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_10004F0A0(char a1)
{
  v2 = *v1;
  *(*v1 + 138) = a1;

  v3 = *(v2 + 768);
  v4 = *(v2 + 760);

  return _swift_task_switch(sub_10004F1C8, v4, v3);
}

uint64_t sub_10004F1C8()
{
  v1 = *(v0 + 138);

  v2 = *(v0 + 744);
  v3 = *(v0 + 728);
  v4 = *(v0 + 720);
  v5 = *(v0 + 712);
  v6 = *(v0 + 664);
  v21 = *(v0 + 648);
  v7 = *(v0 + 640);
  if (v1 == 1)
  {
    *(v0 + 320) = 0;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 328) = -1;
    (*(v4 + 16))(v2, v6, v5);
    v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v9 = (v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    v10 = swift_allocObject();
    (*(v4 + 32))(v10 + v8, v2, v5);
    v11 = 6;
    *(v10 + v9) = 6;
    *(v10 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)) = v7;
    v12 = v7;
    v13 = 0xD000000000000024;
    v14 = 0x80000001000A8100;
    v15 = (v0 + 288);
  }

  else
  {
    *(v0 + 272) = 0;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 280) = -1;
    (*(v4 + 16))(v2, v6, v5);
    v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v17 = (v3 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v10 = swift_allocObject();
    (*(v4 + 32))(v10 + v16, v2, v5);
    v11 = 3;
    *(v10 + v17) = 3;
    *(v10 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v7;
    v18 = v7;
    v13 = 0x61685365426E6163;
    v14 = 0xEB00000000646572;
    v15 = (v0 + 240);
  }

  sub_10004F5E0(0xD00000000000001ELL, 0x80000001000A8060, v13, v14, v15, 0, sub_10008F514, v10);

  v21(v11, 0);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_10004F4A4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  a5[3] = type metadata accessor for SPIAnalyticsEvent(0);
  a5[4] = &off_1000C2CF0;
  v10 = sub_10008D654(a5);
  v11 = sub_100003714(&qword_1000CB080, &qword_1000A18E8);
  v12 = v11[12];
  v13 = (v10 + v11[16]);
  v14 = (v10 + v11[20]);
  v15 = sub_10009D860();
  (*(*(v15 - 8) + 16))(v10, a2, v15);
  *(v10 + v12) = a3;
  v16 = *(a4 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier);
  v17 = *(a4 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier + 8);
  *v13 = v16;
  v13[1] = v17;
  v18 = *(a1 + 25);
  v19 = a1[1];
  *v14 = *a1;
  v14[1] = v19;
  *(v14 + 25) = v18;
  swift_storeEnumTagMultiPayload();

  return sub_100008658(a1, &v21, &qword_1000CB088, &unk_1000A18F0);
}

uint64_t sub_10004F5E0(uint64_t a1, unint64_t a2, void (*a3)(char *, uint64_t), _TtC13SPIHelper_iOS9SPIHelper *a4, __int128 *a5, void *a6, void (*a7)(uint64_t *__return_ptr, __int128 *), uint64_t a8)
{
  v320 = a8;
  v321 = a7;
  v324 = a3;
  v13 = *(a5 + 1);
  v331 = *a5;
  v330 = v13;
  v14 = *(a5 + 3);
  v329 = *(a5 + 2);
  v332 = v14;
  v333 = *(a5 + 4);
  v326 = *(a5 + 40);
  v335 = sub_10009D9F0();
  v334 = *(v335 - 8);
  v15 = __chkstk_darwin(v335);
  v328 = &v314 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v319 = &v314 - v18;
  v19 = __chkstk_darwin(v17);
  v322 = &v314 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v314 - v22;
  __chkstk_darwin(v21);
  v25 = &v314 - v24;
  v26 = sub_10009DE60();
  v28 = v27;
  sub_1000300B8(v26, v27, a1, a2);
  v30 = v29;
  v28, v29, v31, v32, v33, v34, v35, v36;
  v325 = a2;
  v318 = a1;
  if (v30)
  {
    v323 = 0;
    v327 = 0xE000000000000000;
  }

  else
  {
    sub_10009DE70();
    v38 = v37;
    v323 = sub_10009DDD0();
    v327 = v39;
    v38, v39, v40, v41, v42, v43, v44, v45;
  }

  v46 = v328;
  if (a6)
  {
    if (a4)
    {
      v47 = a6;
      v48 = a4;
    }

    else
    {
      v101 = a6;
      v102 = [v101 description];
      v324 = sub_10009DD90();
      v48 = v103;
    }

    v104 = v327;
    v105 = v325;

    v106 = [a6 code];
    v107 = 0xED0000726F727265;
    v108 = 0x206C6172656E6567;
    if (v106 == 12)
    {
      v109 = 12;
    }

    else
    {
      v109 = 11;
    }

    if (v106 == 12)
    {
      v108 = 0xD000000000000018;
      v107 = 0x80000001000A77D0;
    }

    if (v106 == 10)
    {
      v110 = 13;
    }

    else
    {
      v110 = v109;
    }

    if (v106 == 10)
    {
      v108 = 0xD000000000000019;
    }

    v332 = v108;
    if (v106 == 10)
    {
      v111 = 0x80000001000A77B0;
    }

    else
    {
      v111 = v107;
    }

    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_10009D9D0();
    v112 = a6;

    v113 = sub_10009D9E0();
    v114 = sub_10009DFD0();

    v111, v115, v116, v117, v118, v119, v120, v121;
    v48, v122, v123, v124, v125, v126, v127, v128;
    v104, v129, v130, v131, v132, v133, v134, v135;
    if (!os_log_type_enabled(v113, v114))
    {

      v111, v168, v169, v170, v171, v172, v173, v174;
      v48, v175, v176, v177, v178, v179, v180, v181;

      (*(v334 + 8))(v25, v335);
      v96 = 0;
      v97 = v318;
      v99 = v105;
      v100 = v324;
      v46 = v328;
      v98 = v322;
      v95 = v110;
      goto LABEL_37;
    }

    v136 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    v333 = v48;
    *&v346 = v137;
    *v136 = 136315906;
    *(v136 + 4) = sub_1000307A4(v323, v104, &v346);
    *(v136 + 12) = 2080;
    v138 = sub_1000307A4(v324, v333, &v346);
    v333, v139, v140, v141, v142, v143, v144, v145;
    *(v136 + 14) = v138;
    *(v136 + 22) = 2080;
    v146 = sub_1000307A4(v332, v111, &v346);
    v111, v147, v148, v149, v150, v151, v152, v153;
    *(v136 + 24) = v146;
    *(v136 + 32) = 2080;
    v154 = v112;
    v155 = [v154 description];
    v156 = sub_10009DD90();
    v158 = v157;

    v159 = v156;
    v95 = v110;
    v160 = sub_1000307A4(v159, v158, &v346);
    v158, v161, v162, v163, v164, v165, v166, v167;
    *(v136 + 34) = v160;
    _os_log_impl(&_mh_execute_header, v113, v114, "Error in %s %s, reporting as %s, NSError: %s", v136, 0x2Au);
    swift_arrayDestroy();
    v48 = v333;

    (*(v334 + 8))(v25, v335);
    v96 = 0;
    v97 = v318;
    v99 = v325;
    v100 = v324;
    v46 = v328;
    goto LABEL_34;
  }

  v49 = *(a5 + 40);
  if (v49 == 255)
  {
    v48 = v333;
    v95 = v326;
    v96 = v329;
    v97 = v331;
    v99 = v330;
    v100 = v332;
LABEL_34:
    v98 = v322;
    goto LABEL_37;
  }

  v50 = v23;
  v51 = a5[1];
  v343 = *a5;
  v344 = v51;
  v345 = *(a5 + 4);
  v48 = v333;
  sub_100032380(v331, v330, v329, v332, v333, v326);
  sub_10009D9D0();

  v52 = v327;

  sub_100008658(a5, &v346, &qword_1000CB088, &unk_1000A18F0);
  v316 = v50;
  v53 = sub_10009D9E0();
  v54 = sub_10009DFD0();
  a4, v55, v56, v57, v58, v59, v60, v61;
  v52, v62, v63, v64, v65, v66, v67, v68;
  sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);
  v315 = v54;
  if (os_log_type_enabled(v53, v54))
  {
    v69 = swift_slowAlloc();
    v314 = swift_slowAlloc();
    v342 = v314;
    *v69 = 136315650;
    *(v69 + 4) = sub_1000307A4(v323, v52, &v342);
    *(v69 + 12) = 2080;
    if (a4)
    {
      v70 = v324;
    }

    else
    {
      v70 = 0;
    }

    if (a4)
    {
      v71 = a4;
    }

    else
    {
      v71 = 0xE000000000000000;
    }

    v72 = sub_1000307A4(v70, v71, &v342);
    v73 = v71;
    v46 = v328;
    v73, v74, v75, v76, v77, v78, v79, v80;
    *(v69 + 14) = v72;
    *(v69 + 22) = 2080;
    v346 = v343;
    v347 = v344;
    v348 = v345;
    v349 = v49;
    v81 = v329;
    v82 = v332;
    v83 = v326;
    sub_100032380(v331, v330, v329, v332, v48, v326);
    v84 = sub_10009DDA0();
    v86 = v85;
    v87 = sub_1000307A4(v84, v85, &v342);
    v86, v88, v89, v90, v91, v92, v93, v94;
    *(v69 + 24) = v87;
    _os_log_impl(&_mh_execute_header, v53, v315, "SharingError in %s %s, error: %s", v69, 0x20u);
    swift_arrayDestroy();

    sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);
    (*(v334 + 8))(v316, v335);
    v95 = v83;
    v96 = v81;
    v97 = v331;
    v98 = v322;
    v99 = v330;
    v100 = v82;
  }

  else
  {
    sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);

    (*(v334 + 8))(v316, v335);
    v95 = v326;
    v96 = v329;
    v97 = v331;
    v98 = v322;
    v99 = v330;
    v100 = v332;
  }

  sub_100032380(v97, v99, v96, v100, v48, v95);
  sub_100032380(v97, v99, v96, v100, v48, v95);
LABEL_37:
  v182 = 0x73736563637553;
  *&v346 = v97;
  *(&v346 + 1) = v99;
  *&v347 = v96;
  *(&v347 + 1) = v100;
  v348 = v48;
  v349 = v95;
  v321(&v342, &v346);
  v331 = v97;
  v329 = v96;
  sub_10003C04C(v97, v99, v96, v100, v48, v95, v183, v184);
  sub_100008658(&v342, v338, &qword_1000CB798, &qword_1000A27F0);
  v330 = v99;
  v332 = v100;
  if (v339)
  {
    sub_10008D5D8(v338, v340);
    sub_10009D9D0();
    sub_10008D5F0(v340, v338);
    v185 = v327;

    v186 = sub_10009D9E0();
    v187 = sub_10009DFF0();
    v185, v188, v189, v190, v191, v192, v193, v194;
    v195 = os_log_type_enabled(v186, v187);
    v333 = v48;
    v326 = v95;
    if (v195)
    {
      v196 = swift_slowAlloc();
      v336[0] = swift_slowAlloc();
      *v196 = 136315394;
      *(v196 + 4) = sub_1000307A4(v323, v185, v336);
      *(v196 + 12) = 2080;
      sub_1000067C8(v338, v339);
      v197 = sub_10003BB34();
      v199 = v198;
      sub_10000670C(v338);
      v200 = sub_1000307A4(v197, v199, v336);
      v201 = v199;
      v202 = v335;
      v201, v203, v204, v205, v206, v207, v208, v209;
      *(v196 + 14) = v200;
      _os_log_impl(&_mh_execute_header, v186, v187, "Finishing %s, sending event %s", v196, 0x16u);
      swift_arrayDestroy();

      v210 = *(v334 + 8);
      v210(v98, v202);
    }

    else
    {

      v210 = *(v334 + 8);
      v210(v98, v335);
      sub_10000670C(v338);
    }

    v213 = sub_1000067C8(v340, v341);
    sub_100079DD8(v213);
    v214 = v319;
    sub_10009D9D0();
    sub_10008D5F0(v340, v338);
    v215 = v325;

    v216 = v317;
    v217 = sub_10009D9E0();
    v218 = sub_10009DFF0();
    v215, v219, v220, v221, v222, v223, v224, v225;

    if (os_log_type_enabled(v217, v218))
    {
      v226 = swift_slowAlloc();
      v227 = swift_slowAlloc();
      v324 = v210;
      v337 = v227;
      *v226 = 136315650;
      v228 = *&v216[OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier + 8];
      v336[0] = *&v216[OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier];
      v336[1] = v228;

      sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
      v229 = sub_10009DDA0();
      v231 = v230;
      v232 = sub_1000307A4(v229, v230, &v337);
      v231, v233, v234, v235, v236, v237, v238, v239;
      *(v226 + 4) = v232;
      *(v226 + 12) = 2080;
      sub_1000067C8(v338, v339);
      v240 = sub_10003C060();
      sub_1000037C4(0, &qword_1000CAD58, NSObject_ptr);
      v241 = sub_10009DD10();
      v243 = v242;
      v240, v242, v244, v245, v246, v247, v248, v249;
      sub_10000670C(v338);
      v250 = v241;
      v251 = v335;
      v252 = sub_1000307A4(v250, v243, &v337);
      v253 = v243;
      v46 = v328;
      v253, v254, v255, v256, v257, v258, v259, v260;
      *(v226 + 14) = v252;
      *(v226 + 22) = 2080;
      *(v226 + 24) = sub_1000307A4(v318, v215, &v337);
      _os_log_impl(&_mh_execute_header, v217, v218, "Requester: %s, event detail is: %s\n%s", v226, 0x20u);
      swift_arrayDestroy();

      v324(v319, v251);
      v48 = v333;
      v212 = v327;
      v100 = v332;
      v182 = 0x73736563637553;
    }

    else
    {

      v210(v214, v335);
      sub_10000670C(v338);
      v48 = v333;
      v212 = v327;
      v100 = v332;
    }

    sub_1000067C8(v340, v341);
    if (sub_10003CCE4())
    {
      v182 = 0x7272652068746957;
      v211 = 0xEA0000000000726FLL;
    }

    else
    {
      v211 = 0xE700000000000000;
    }

    sub_10000670C(v340);
    v95 = v326;
  }

  else
  {
    sub_100008728(v338, &qword_1000CB798, &qword_1000A27F0);
    v211 = 0xE700000000000000;
    v212 = v327;
  }

  sub_10009D9D0();

  v261 = sub_10009D9E0();
  v262 = sub_10009DFF0();
  v211, v263, v264, v265, v266, v267, v268, v269;
  v212, v270, v271, v272, v273, v274, v275, v276;
  if (os_log_type_enabled(v261, v262))
  {
    v279 = swift_slowAlloc();
    v340[0] = swift_slowAlloc();
    *v279 = 136315394;
    v280 = v95;
    v281 = sub_1000307A4(v323, v212, v340);
    v212, v282, v283, v284, v285, v286, v287, v288;
    *(v279 + 4) = v281;
    *(v279 + 12) = 2080;
    v289 = sub_1000307A4(v182, v211, v340);
    v211, v290, v291, v292, v293, v294, v295, v296;
    *(v279 + 14) = v289;
    _os_log_impl(&_mh_execute_header, v261, v262, "Finished %s: %s.", v279, 0x16u);
    swift_arrayDestroy();

    sub_10003C04C(v331, v330, v329, v332, v48, v280, v297, v298);

    (*(v334 + 8))(v328, v335);
  }

  else
  {
    sub_10003C04C(v331, v330, v329, v100, v48, v95, v277, v278);
    v212, v299, v300, v301, v302, v303, v304, v305;
    v211, v306, v307, v308, v309, v310, v311, v312;

    (*(v334 + 8))(v46, v335);
  }

  return sub_100008728(&v342, &qword_1000CB798, &qword_1000A27F0);
}

uint64_t sub_1000507A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v4[3] = swift_task_alloc();
  v5 = sub_10009D860();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  sub_10009DF10();
  v4[7] = sub_10009DF00();
  v7 = sub_10009DED0();
  v4[8] = v7;
  v4[9] = v6;

  return _swift_task_switch(sub_1000508CC, v7, v6);
}

uint64_t sub_1000508CC()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100008728(v0[3], &qword_1000CA250, &qword_10009FDF8);
    v4 = 0;
  }

  else
  {
    v6 = v0[5];
    v5 = v0[6];
    v7 = v0[4];
    (*(v6 + 32))(v5, v0[3], v7);
    v8 = shareStatus(url:)();
    (*(v6 + 8))(v5, v7);
    v4 = ((v8 & 0x10000) == 0) & v8;
  }

  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = sub_100050A58;
  v10 = v0[2];

  return sub_10002EBD4(60, v10, v4);
}

uint64_t sub_100050A58()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_100050C0C;
  }

  else
  {
    v5 = sub_100050B94;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100050B94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100050C0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100050D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[108] = v17;
  v8[107] = v16;
  v8[106] = a8;
  v8[105] = a7;
  v8[104] = a6;
  v8[103] = a5;
  v8[102] = a4;
  sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  v8[109] = swift_task_alloc();
  v9 = sub_10009D9F0();
  v8[110] = v9;
  v8[111] = *(v9 - 8);
  v8[112] = swift_task_alloc();
  v8[113] = swift_task_alloc();
  v10 = sub_10009D860();
  v8[114] = v10;
  v11 = *(v10 - 8);
  v8[115] = v11;
  v8[116] = *(v11 + 64);
  v8[117] = swift_task_alloc();
  v8[118] = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v8[119] = swift_task_alloc();
  v8[120] = swift_task_alloc();
  v8[121] = sub_10009DF10();
  v8[122] = sub_10009DF00();
  v13 = sub_10009DED0();
  v8[123] = v13;
  v8[124] = v12;

  return _swift_task_switch(sub_100050F8C, v13, v12);
}

uint64_t sub_100050F8C()
{
  v1 = v0[120];
  v2 = v0[115];
  v3 = v0[114];
  v4 = v0[105];
  v5 = v0[104];
  v6 = v0[103];
  type metadata accessor for ModelDelegateSPI(0);
  swift_allocObject();
  v0[125] = sub_10003F4A4();
  v7 = *(v2 + 16);
  v0[126] = v7;
  v0[127] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v4, v3);
  v8 = *(v2 + 56);
  v0[128] = v8;
  v0[129] = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(v1, 0, 1, v3);
  v9 = swift_allocObject();
  v0[130] = v9;
  *(v9 + 16) = v6;
  *(v9 + 24) = v5;

  v10 = swift_task_alloc();
  v0[131] = v10;
  *v10 = v0;
  v10[1] = sub_100051118;
  v11 = v0[120];

  return sub_10003F638(v11, sub_10008EC40, v9);
}

uint64_t sub_100051118(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 960);
  *(*v1 + 1056) = a1;

  sub_100008728(v3, &qword_1000CA250, &qword_10009FDF8);
  v4 = *(v2 + 992);
  v5 = *(v2 + 984);

  return _swift_task_switch(sub_100051290, v5, v4);
}

uint64_t sub_100051290()
{
  v1 = *(v0 + 1056);
  if (v1)
  {
    v59 = *(v0 + 1024);
    v2 = *(v0 + 1008);
    v61 = *(v0 + 960);
    v3 = *(v0 + 936);
    v4 = *(v0 + 928);
    v5 = *(v0 + 920);
    v6 = *(v0 + 912);
    v7 = *(v0 + 840);
    v57 = *(v0 + 824);
    v8 = *(v0 + 816);
    v55 = v1;

    *(v0 + 432) = 0;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 440) = -1;
    v2(v3, v7, v6);
    v9 = (*(v5 + 80) + 34) & ~*(v5 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0;
    (*(v5 + 32))(v10 + v9, v3, v6);
    *(v10 + ((v4 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;
    v11 = v61;
    v12 = v55;
    v13 = v8;
    sub_10004F5E0(0xD000000000000056, 0x80000001000A7E60, 0xD00000000000001FLL, 0x80000001000A7FE0, (v0 + 400), v1, sub_10008F510, v10);

    v59(v61, 1, 1, v6);
    v14 = v12;
    v57(v61, 0, v1);

LABEL_3:

    sub_100008728(v11, &qword_1000CA250, &qword_10009FDF8);

    v15 = *(v0 + 8);

    return v15();
  }

  v17 = *(*(v0 + 1000) + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel);
  *(v0 + 1064) = v17;
  if (!v17)
  {
    return sub_10009E250();
  }

  v18 = *(v0 + 816);
  sub_1000037C4(0, &qword_1000C9F28, _SWCollaborationOptionsGroup_ptr);

  isa = sub_10009DE90().super.isa;
  *(v0 + 1072) = CKSharingAccessTypeFromOptionsGroups();

  v20 = sub_10009DE90().super.isa;
  *(v0 + 1080) = CKSharingPermissionTypeFromOptionsGroups();

  v21 = sub_10009DE90().super.isa;
  *(v0 + 59) = CKSharingAllowOthersToInviteFromOptionsGroups();

  v22 = sub_10009DE90().super.isa;
  *(v0 + 60) = CKSharingAllowAccessRequestsFromOptionsGroups();

  v23 = *(v18 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier + 8);
  if (v23)
  {
    v24 = *(v18 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 760) = v24;
    *(v0 + 768) = v23;

    sub_10009DB00();
  }

  v25 = *(v0 + 1024);
  v26 = *(v0 + 1000);
  v27 = *(v0 + 960);
  v28 = *(v0 + 912);
  v29 = *(v0 + 856);
  (*(v0 + 1008))(v27, *(v0 + 840), v28);
  v25(v27, 0, 1, v28);
  v30 = OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_fileOrFolderURL;
  swift_beginAccess();
  sub_10008EC48(v27, v26 + v30);
  swift_endAccess();

  sub_1000799A0(v31);
  sub_100097154(v29);
  v29, v32, v33, v34, v35, v36, v37, v38;
  LOBYTE(v30) = sub_10009D830();
  sub_10009D800(v39);
  v41 = v40;
  v42 = [v40 br_isInSyncedLocation];

  if (v30)
  {
    sub_10009D810();
  }

  if ((v42 & 1) == 0)
  {
    v60 = *(v0 + 1024);
    v44 = *(v0 + 1008);
    v62 = *(v0 + 960);
    v45 = *(v0 + 936);
    v56 = *(v0 + 928);
    v46 = *(v0 + 920);
    v47 = *(v0 + 912);
    v48 = *(v0 + 840);
    v58 = *(v0 + 824);
    v49 = *(v0 + 816);

    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 56) = -1;
    v50 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
    v44(v45, v48, v47);
    v51 = (*(v46 + 80) + 34) & ~*(v46 + 80);
    v52 = swift_allocObject();
    *(v52 + 16) = 0;
    *(v52 + 24) = 0;
    *(v52 + 32) = 0;
    (*(v46 + 32))(v52 + v51, v45, v47);
    *(v52 + ((v56 + v51 + 7) & 0xFFFFFFFFFFFFFFF8)) = v49;
    v11 = v62;
    v53 = v49;
    sub_10004F5E0(0xD000000000000056, 0x80000001000A7E60, 0xD00000000000002ALL, 0x80000001000A7F00, (v0 + 16), v50, sub_10008ECBC, v52);

    v60(v62, 1, 1, v47);
    v54 = v50;
    v58(v62, 0, v50);

    goto LABEL_3;
  }

  v43 = swift_task_alloc();
  *(v0 + 1088) = v43;
  *v43 = v0;
  v43[1] = sub_1000519F0;

  return sub_1000850B8(v17);
}

uint64_t sub_1000519F0(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 61) = a1;
  *(v4 + 1096) = v1;

  v5 = *(v3 + 992);
  v6 = *(v3 + 984);
  if (v1)
  {
    v7 = sub_100051F58;
  }

  else
  {
    v7 = sub_100051B38;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100051B38(uint64_t a1)
{
  sub_10009D9D0();
  v2 = sub_10009D9E0();
  v3 = sub_10009DFF0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 61);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "url is a shared location: %{BOOL}d", v5, 8u);
  }

  v6 = *(v1 + 904);
  v7 = *(v1 + 888);
  v8 = *(v1 + 880);

  v9 = *(v7 + 8);
  *(v1 + 1104) = v9;
  *(v1 + 1112) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v6, v8);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  if (*(v1 + 57))
  {

    return _swift_task_switch(sub_100052328, 0, 0);
  }

  else
  {
    v26 = *(v1 + 1024);
    v10 = *(v1 + 1008);
    v11 = *(v1 + 936);
    v23 = *(v1 + 928);
    v12 = *(v1 + 920);
    v13 = *(v1 + 912);
    v14 = *(v1 + 840);
    v24 = *(v1 + 960);
    v25 = *(v1 + 824);
    v15 = *(v1 + 816);

    *(v1 + 96) = 0;
    *(v1 + 80) = 0u;
    *(v1 + 64) = 0u;
    *(v1 + 104) = -1;
    v16 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:10 userInfo:0];
    v10(v11, v14, v13);
    v17 = (*(v12 + 80) + 34) & ~*(v12 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0;
    (*(v12 + 32))(v18 + v17, v11, v13);
    *(v18 + ((v23 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
    v19 = v15;
    sub_10004F5E0(0xD000000000000056, 0x80000001000A7E60, 0xD00000000000003DLL, 0x80000001000A76F0, (v1 + 64), v16, sub_10008F510, v18);

    v26(v24, 1, 1, v13);
    v20 = v16;
    v25(v24, 0, v16);

    sub_100008728(v24, &qword_1000CA250, &qword_10009FDF8);

    v21 = *(v1 + 8);

    return v21();
  }
}

uint64_t sub_100051F58()
{
  v1 = *(v0 + 1096);

  *(v0 + 776) = v1;
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v24 = *(v0 + 1024);
    v2 = *(v0 + 1008);
    v3 = *(v0 + 936);
    v21 = *(v0 + 928);
    v4 = *(v0 + 920);
    v5 = *(v0 + 912);
    v6 = *(v0 + 840);
    v22 = *(v0 + 960);
    v23 = *(v0 + 824);
    v7 = *(v0 + 816);

    v8 = *(v0 + 464);
    *(v0 + 160) = *(v0 + 448);
    *(v0 + 176) = v8;
    *(v0 + 185) = *(v0 + 473);
    v9 = *(v0 + 488);
    v10 = *(v0 + 448);
    v11 = *(v0 + 464);
    *(v0 + 144) = *(v0 + 480);
    *(v0 + 152) = v9;
    *(v0 + 112) = v10;
    *(v0 + 128) = v11;
    v2(v3, v6, v5);
    v12 = (*(v4 + 80) + 34) & ~*(v4 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    (*(v4 + 32))(v13 + v12, v3, v5);
    *(v13 + ((v21 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
    v14 = v7;
    sub_10008C148(v0 + 160, v0 + 496);
    sub_10004F5E0(0xD000000000000056, 0x80000001000A7E60, 0xD000000000000015, 0x80000001000A76D0, (v0 + 112), 0, sub_10008F510, v13);

    sub_10008C148(v0 + 160, v0 + 544);
    sub_10008F51C(0xD000000000000056, 0x80000001000A7E60);
    v16 = v15;
    v24(v22, 1, 1, v5);
    v23(v22, 0, v16);
    sub_10008C1A4(v0 + 160);
    sub_10008C1A4(v0 + 160);

    sub_10008C1A4(v0 + 160);
    sub_100008728(v22, &qword_1000CA250, &qword_10009FDF8);
  }

  else
  {
    v18 = *(v0 + 832);
    v19 = *(v0 + 824);

    sub_100083E60(0, 0xD000000000000056, 0x80000001000A7E60, v19, v18);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100052328(uint64_t a1)
{
  *(v1 + 1120) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_1000523B4, v3, v2);
}

uint64_t sub_1000523B4()
{
  v1 = v0[134];
  v2 = v0[133];

  v0[141] = *(v2 + 16);

  v3 = swift_task_alloc();
  v0[142] = v3;
  *v3 = v0;
  v3[1] = sub_100052488;
  if (v1 == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return sub_100048CBC(v4, v2, 0);
}

uint64_t sub_100052488()
{
  *(*v1 + 1144) = v0;

  if (v0)
  {
    v2 = sub_100052824;
  }

  else
  {

    v2 = sub_1000525A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000525A4(uint64_t a1)
{
  *(v1 + 1152) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100052630, v3, v2);
}

uint64_t sub_100052630()
{
  v1 = v0[135];
  v2 = v0[133];

  v0[145] = *(v2 + 16);

  v3 = swift_task_alloc();
  v0[146] = v3;
  *v3 = v0;
  v3[1] = sub_100052708;
  if (v1 == 3)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  return sub_100049714(v4, v2, 0, 1);
}

uint64_t sub_100052708()
{
  *(*v1 + 1176) = v0;

  if (v0)
  {
    v2 = sub_100052E0C;
  }

  else
  {

    v2 = sub_100052894;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100052824()
{
  v0[152] = v0[143];

  v1 = v0[124];
  v2 = v0[123];

  return _swift_task_switch(sub_100052E7C, v2, v1);
}

uint64_t sub_100052894(uint64_t a1)
{
  *(v1 + 1184) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100052920, v3, v2);
}

uint64_t sub_100052920()
{
  v1 = *(v0 + 59);

  if (v1)
  {
    v2 = &off_1000C1A28;
  }

  else
  {
    v2 = &off_1000C1A50;
  }

  sub_100047B6C(v2);
  v2, v3, v4, v5, v6, v7, v8, v9;

  return _swift_task_switch(sub_1000529CC, 0, 0);
}

uint64_t sub_1000529CC(uint64_t a1)
{
  *(v1 + 1192) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100052A58, v3, v2);
}

uint64_t sub_100052A58()
{
  v1 = *(v0 + 1064);

  *(v0 + 1200) = *(v1 + 16);

  return _swift_task_switch(sub_100052AD4, 0, 0);
}

uint64_t sub_100052AD4(uint64_t a1)
{
  *(v1 + 1208) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100052B60, v3, v2);
}

uint64_t sub_100052B60()
{
  v1 = *(v0 + 60);

  sub_10004A3E0(v1);

  v2 = *(v0 + 992);
  v3 = *(v0 + 984);

  return _swift_task_switch(sub_100052BE0, v3, v2);
}

uint64_t sub_100052BE0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  if (*(v0 + 58) == 1)
  {
    sub_10009D9D0();
    v1 = sub_10009D9E0();
    v2 = sub_10009DFD0();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "addParticipantsToShare (internal) will return an error for this public share", v3, 2u);
    }

    v4 = *(v0 + 1104);
    v5 = *(v0 + 896);
    v6 = *(v0 + 880);

    v4(v5, v6);
  }

  if (*(v0 + 61))
  {
    *(v0 + 1240) = sub_10009DF00();
    v8 = sub_10009DED0();
    *(v0 + 1248) = v8;
    *(v0 + 1256) = v7;

    return _swift_task_switch(sub_100053720, v8, v7);
  }

  else
  {
    v9 = *(v0 + 1064);
    v10 = swift_task_alloc();
    *(v0 + 1224) = v10;
    *v10 = v0;
    v10[1] = sub_10005324C;

    return sub_100086420(300, v9);
  }
}

uint64_t sub_100052E0C()
{
  v0[152] = v0[147];

  v1 = v0[124];
  v2 = v0[123];

  return _swift_task_switch(sub_100052E7C, v2, v1);
}

uint64_t sub_100052E7C()
{
  v1 = *(v0 + 1216);

  *(v0 + 776) = v1;
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v24 = *(v0 + 1024);
    v2 = *(v0 + 1008);
    v3 = *(v0 + 936);
    v21 = *(v0 + 928);
    v4 = *(v0 + 920);
    v5 = *(v0 + 912);
    v6 = *(v0 + 840);
    v22 = *(v0 + 960);
    v23 = *(v0 + 824);
    v7 = *(v0 + 816);

    v8 = *(v0 + 464);
    *(v0 + 160) = *(v0 + 448);
    *(v0 + 176) = v8;
    *(v0 + 185) = *(v0 + 473);
    v9 = *(v0 + 488);
    v10 = *(v0 + 448);
    v11 = *(v0 + 464);
    *(v0 + 144) = *(v0 + 480);
    *(v0 + 152) = v9;
    *(v0 + 112) = v10;
    *(v0 + 128) = v11;
    v2(v3, v6, v5);
    v12 = (*(v4 + 80) + 34) & ~*(v4 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    (*(v4 + 32))(v13 + v12, v3, v5);
    *(v13 + ((v21 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
    v14 = v7;
    sub_10008C148(v0 + 160, v0 + 496);
    sub_10004F5E0(0xD000000000000056, 0x80000001000A7E60, 0xD000000000000015, 0x80000001000A76D0, (v0 + 112), 0, sub_10008F510, v13);

    sub_10008C148(v0 + 160, v0 + 544);
    sub_10008F51C(0xD000000000000056, 0x80000001000A7E60);
    v16 = v15;
    v24(v22, 1, 1, v5);
    v23(v22, 0, v16);
    sub_10008C1A4(v0 + 160);
    sub_10008C1A4(v0 + 160);

    sub_10008C1A4(v0 + 160);
    sub_100008728(v22, &qword_1000CA250, &qword_10009FDF8);
  }

  else
  {
    v18 = *(v0 + 832);
    v19 = *(v0 + 824);

    sub_100083E60(0, 0xD000000000000056, 0x80000001000A7E60, v19, v18);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_10005324C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 1232) = a1;

  v3 = *(v2 + 992);
  v4 = *(v2 + 984);

  return _swift_task_switch(sub_100053374, v4, v3);
}

uint64_t sub_100053374(uint64_t a1)
{
  v2 = *(v1 + 1232);
  if (v2)
  {
    v27 = *(v1 + 1024);
    v22 = *(v1 + 1008);
    v3 = *(v1 + 936);
    v23 = *(v1 + 928);
    v4 = *(v1 + 920);
    v5 = *(v1 + 912);
    v6 = *(v1 + 840);
    v25 = *(v1 + 960);
    v26 = *(v1 + 824);
    v24 = *(v1 + 816);

    *(v1 + 808) = v2;
    swift_errorRetain();
    sub_100003714(&qword_1000CB840, &qword_10009FDA0);
    swift_dynamicCast();
    v7 = *(v1 + 656);
    v8 = *(v1 + 640);
    *(v1 + 256) = v8;
    *(v1 + 272) = v7;
    *(v1 + 281) = *(v1 + 665);
    v9 = *(v1 + 672);
    v10 = *(v1 + 680);
    *(v1 + 208) = v8;
    v11 = *(v1 + 656);
    *(v1 + 240) = v9;
    *(v1 + 248) = v10;
    *(v1 + 224) = v11;
    v12 = v3;
    v22(v3, v6, v5);
    v13 = (*(v4 + 80) + 34) & ~*(v4 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    (*(v4 + 32))(v14 + v13, v12, v5);
    *(v14 + ((v23 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v24;
    v15 = v24;
    sub_10004F5E0(0xD000000000000056, 0x80000001000A7E60, 0xD00000000000002ALL, 0x80000001000A7F00, (v1 + 208), 0, sub_10008F510, v14);

    sub_10008C148(v1 + 256, v1 + 688);
    sub_10008F51C(0xD000000000000056, 0x80000001000A7E60);
    v17 = v16;
    v27(v25, 1, 1, v5);
    v26(v25, 0, v17);
    sub_10008C1A4(v1 + 256);
    sub_10008C1A4(v1 + 256);

    sub_100008728(v25, &qword_1000CA250, &qword_10009FDF8);

    v18 = *(v1 + 8);

    return v18();
  }

  else
  {
    *(v1 + 1240) = sub_10009DF00();
    v21 = sub_10009DED0();
    *(v1 + 1248) = v21;
    *(v1 + 1256) = v20;

    return _swift_task_switch(sub_100053720, v21, v20);
  }
}

uint64_t sub_100053720(uint64_t a1)
{
  v2 = *(v1 + 60);
  v3 = *(v1 + 59);
  v4 = *(v1 + 1000);
  v5 = *(v1 + 872);
  sub_10009DF20();
  v6 = sub_10009DF40();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);

  v7 = sub_10009DF00();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for MainActor;
  *(v8 + 32) = v4;
  *(v8 + 40) = v3;
  *(v8 + 41) = v2;
  v9 = sub_10004CDF4(0, 0, v5, &unk_1000A29C0, v8);
  *(v1 + 1264) = v9;
  v10 = swift_task_alloc();
  *(v1 + 1272) = v10;
  v11 = sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  *(v1 + 1280) = v11;
  *v10 = v1;
  v10[1] = sub_1000538C0;

  return Task.value.getter(v11, v9, &type metadata for () + 8, v11, &protocol self-conformance witness table for Error);
}

uint64_t sub_1000538C0()
{
  v2 = *v1;
  *(*v1 + 1288) = v0;

  v3 = *(v2 + 1256);
  v4 = *(v2 + 1248);
  if (v0)
  {
    v5 = sub_100053A94;
  }

  else
  {
    v5 = sub_1000539FC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000539FC()
{

  *(v0 + 62) = -1;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0;
  *(v0 + 1296) = 0u;
  *(v0 + 1312) = 0u;
  *(v0 + 1328) = 0;
  *(v0 + 344) = -1;
  v1 = *(v0 + 992);
  v2 = *(v0 + 984);

  return _swift_task_switch(sub_100053C5C, v2, v1);
}

uint64_t sub_100053A94()
{
  v1 = *(v0 + 1288);

  *(v0 + 784) = v1;
  swift_errorRetain();
  if (swift_dynamicCast())
  {

    v2 = *(v0 + 592);
    v3 = *(v0 + 600);
    v4 = *(v0 + 608);
    v5 = *(v0 + 616);
    v6 = *(v0 + 624);
    v7 = *(v0 + 632);
  }

  else
  {
    v8 = *(v0 + 1288);

    v3 = 0x80000001000A7F30;
    sub_10009E1E0(68);
    v21._object = 0x80000001000A7F90;
    v21._countAndFlagsBits = 0xD000000000000042;
    sub_10009DE10(v21);
    *(v0 + 792) = v8;
    swift_errorRetain();
    v22._countAndFlagsBits = sub_10009DDA0();
    object = v22._object;
    sub_10009DE10(v22);
    object, v10, v11, v12, v13, v14, v15, v16;

    v4 = 0;
    v5 = 0;
    v6 = 0xE000000000000000;
    v2 = 0xD000000000000054;
    v7 = 11;
  }

  *(v0 + 62) = v7;
  *(v0 + 1328) = v6;
  *(v0 + 1320) = v5;
  *(v0 + 1312) = v4;
  *(v0 + 1304) = v3;
  *(v0 + 1296) = v2;
  *(v0 + 304) = v2;
  *(v0 + 312) = v3;
  *(v0 + 320) = v4;
  *(v0 + 328) = v5;
  *(v0 + 336) = v6;
  *(v0 + 344) = v7;
  v17 = *(v0 + 992);
  v18 = *(v0 + 984);

  return _swift_task_switch(sub_100053C5C, v18, v17);
}

uint64_t sub_100053C5C()
{
  v50 = *(v0 + 62);
  v45 = *(v0 + 1008);
  v1 = *(v0 + 960);
  v2 = *(v0 + 952);
  v44 = *(v0 + 928);
  v3 = *(v0 + 920);
  v4 = *(v0 + 912);
  v37 = *(v0 + 840);
  v38 = *(v0 + 936);
  v48 = *(v0 + 816);

  v5 = sub_100094060();
  v41 = v6;
  v43 = v5;
  v39 = v7;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v49 = *(v0 + 800);
  sub_100008658(v2, v1, &qword_1000CA250, &qword_10009FDF8);
  v8 = sub_10009DDA0();
  v10 = v9;
  v45(v38, v37, v4);
  v11 = (*(v3 + 80) + 34) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v43;
  *(v12 + 24) = v41;
  *(v12 + 32) = v39;
  (*(v3 + 32))(v12 + v11, v38, v4);
  *(v12 + ((v44 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v48;
  v13 = v48;
  sub_10004F5E0(0xD000000000000056, 0x80000001000A7E60, v8, v10, (v0 + 304), 0, sub_10008F510, v12);
  v10, v14, v15, v16, v17, v18, v19, v20;

  if (v50 == 255)
  {
    if (v49)
    {
      v34 = [v49 _copyWithoutPersonalInfo];
    }

    else
    {
      v34 = 0;
    }

    v31 = *(v0 + 952);
    (*(v0 + 824))(v31, v34, 0);
  }

  else
  {
    v21 = *(v0 + 1320);
    v22 = *(v0 + 1312);
    v23 = *(v0 + 1304);
    v24 = *(v0 + 1296);
    v46 = *(v0 + 1328);
    v25 = *(v0 + 960);
    v47 = *(v0 + 952);
    v26 = *(v0 + 912);
    v40 = *(v0 + 1024);
    v42 = *(v0 + 824);
    *(v0 + 352) = v24;
    *(v0 + 360) = v23;
    *(v0 + 368) = v22;
    *(v0 + 376) = v21;
    *(v0 + 384) = v46;
    v27 = *(v0 + 62);
    *(v0 + 392) = v27;
    sub_10008F51C(0xD000000000000056, 0x80000001000A7E60);
    v29 = v28;
    v40(v25, 1, 1, v26);
    v42(v25, 0, v29);
    v30 = v22;
    v31 = v47;
    sub_10003C04C(v24, v23, v30, v21, v46, v27, v32, v33);

    sub_100008728(v25, &qword_1000CA250, &qword_10009FDF8);
  }

  sub_100008728(v31, &qword_1000CA250, &qword_10009FDF8);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_1000540BC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void), uint64_t a5)
{
  v8 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  __chkstk_darwin(v8 - 8);
  v10 = v92 - v9;
  v11 = sub_10009D9F0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v15 = sub_10009D7A0();
  }

  else
  {
    v15 = 0;
  }

  sub_10009D9D0();
  v16 = v15;
  v17 = sub_10009D9E0();
  v18 = sub_10009DFD0();

  if (os_log_type_enabled(v17, v18))
  {
    v95 = v18;
    v96 = v17;
    v97 = v12;
    v98 = v11;
    v99 = v16;
    v92[0] = v15;
    v92[1] = a5;
    v93 = a4;
    v19 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v100 = v94;
    *v19 = 136315394;
    v20 = sub_10009DE60();
    v28 = v21;
    if (("orationOptionsGroups" & 0x2000000000000000) != 0)
    {
      v29 = ("orationOptionsGroups" >> 40) & 0xF0000;
    }

    else
    {
      v29 = 5636096;
    }

    if (v29)
    {
      v30 = v20;
      while (1)
      {
        v31 = sub_10009DE60();
        v39 = v32;
        if (v31 == v30 && v32 == v28)
        {
          break;
        }

        v40 = sub_10009E2E0();
        v39, v41, v42, v43, v44, v45, v46, v47;
        if (v40)
        {
          v39 = v28;
          goto LABEL_18;
        }

        if ((v29 ^ sub_10009DE00()) < 0x4000)
        {
          goto LABEL_14;
        }
      }

      v28, v32, v33, v34, v35, v36, v37, v38;
LABEL_18:
      v39, v48, v49, v50, v51, v52, v53, v54;
      sub_10009DE70();
      v58 = v57;
      v59 = sub_10009DDD0();
      v56 = v60;
      v58, v60, v61, v62, v63, v64, v65, v66;
      v55 = v59;
    }

    else
    {
LABEL_14:
      v28, v21, v22, v23, v24, v25, v26, v27;
      v55 = 0;
      v56 = 0xE000000000000000;
    }

    a4 = v93;
    v15 = v92[0];
    v16 = v99;
    v67 = sub_1000307A4(v55, v56, &v100);
    v56, v68, v69, v70, v71, v72, v73, v74;
    *(v19 + 4) = v67;
    *(v19 + 12) = 2080;
    if (v15)
    {
      v75 = v16;
      v76 = [v75 description];
      v77 = sub_10009DD90();
      v79 = v78;

      v16 = v99;
    }

    else
    {
      v79 = 0xEE00646569666963;
      v77 = 0x65707320656E6F6ELL;
    }

    v80 = sub_1000307A4(v77, v79, &v100);
    v79, v81, v82, v83, v84, v85, v86, v87;
    *(v19 + 14) = v80;
    v88 = v96;
    _os_log_impl(&_mh_execute_header, v96, v95, "%s: model concluded SPI unexpectedly, deferCheckReplyCount() will reply then fatalError(). Error: %s", v19, 0x16u);
    swift_arrayDestroy();

    (*(v97 + 8))(v14, v98);
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  v89 = sub_10009D860();
  (*(*(v89 - 8) + 56))(v10, 1, 1, v89);
  v90 = v16;
  a4(v10, 0, v15);

  sub_100008728(v10, &qword_1000CA250, &qword_10009FDF8);
  result = sub_10009E250();
  __break(1u);
  return result;
}

uint64_t sub_100054564@<X0>(_OWORD *a1@<X0>, unint64_t a2@<X1>, _UNKNOWN **a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  if (a3)
  {
    v8 = a3;
    v22 = a2 >> 24;
    v9 = HIDWORD(a2);
  }

  else
  {
    LOBYTE(v9) = 0;
    LOBYTE(v22) = 0;
    v8 = &off_1000C1A78;
  }

  a6[3] = type metadata accessor for SPIAnalyticsEvent(0);
  a6[4] = &off_1000C2CF0;
  v10 = sub_10008D654(a6);
  v11 = sub_100003714(&qword_1000CB078, &qword_1000A18E0);
  v12 = v11[12];
  v13 = v11[16];
  v14 = v11[20];
  v15 = (v10 + v11[24]);
  v16 = (v10 + v11[28]);
  v17 = sub_10009D860();
  (*(*(v17 - 8) + 16))(v10, a4, v17);
  *(v10 + v12) = v22;
  *(v10 + v13) = v9;
  *(v10 + v14) = v8;
  v18 = *(a5 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier + 8);
  *v15 = *(a5 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier);
  v15[1] = v18;
  v19 = *(a1 + 25);
  v20 = a1[1];
  *v16 = *a1;
  v16[1] = v20;
  *(v16 + 25) = v19;
  swift_storeEnumTagMultiPayload();

  return sub_100008658(a1, v25, &qword_1000CB088, &unk_1000A18F0);
}

uint64_t sub_1000547F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v6 + 113) = a6;
  *(v6 + 112) = a5;
  *(v6 + 16) = a4;
  sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  *(v6 + 24) = swift_task_alloc();
  sub_10009DF10();
  *(v6 + 32) = sub_10009DF00();
  v8 = sub_10009DED0();
  *(v6 + 40) = v8;
  *(v6 + 48) = v7;

  return _swift_task_switch(sub_1000548CC, v8, v7);
}

uint64_t sub_1000548CC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel);
  *(v0 + 56) = v1;
  if (!v1)
  {
    return sub_10009E250();
  }

  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1000549F4;
  v3 = *(v0 + 113);
  v4 = *(v0 + 112);

  return sub_100023A48(v4, v3);
}

uint64_t sub_1000549F4()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {
    v3 = v2[5];
    v4 = v2[6];

    return _swift_task_switch(sub_100054F60, v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[10] = v5;
    *v5 = v2;
    v5[1] = sub_100054B5C;

    return sub_100026F78();
  }
}

uint64_t sub_100054B5C()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_100054FD8;
  }

  else
  {
    v5 = sub_100054C98;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100054C98()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_100054D80;
  v2 = *(v0 + 24);

  return sub_100028ADC(v2);
}

uint64_t sub_100054D80()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  *(*v1 + 104) = v0;

  sub_100008728(v3, &qword_1000CA250, &qword_10009FDF8);
  v4 = *(v2 + 48);
  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_100055050;
  }

  else
  {
    v6 = sub_100054EE8;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100054EE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100054F60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100054FD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100055050()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1000551E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  sub_100008658(a1, &v17 - v9, &qword_1000CA250, &qword_10009FDF8);
  v11 = sub_10009D860();
  v12 = *(v11 - 8);
  v14 = 0;
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    sub_10009D800(v13);
    v14 = v15;
    (*(v12 + 8))(v10, v11);
  }

  if (a3)
  {
    v16 = sub_10009D7A0();
  }

  else
  {
    v16 = 0;
  }

  (*(a4 + 16))(a4, v14, a2, v16);
}

uint64_t sub_10005534C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 704) = v15;
  *(v8 + 688) = v14;
  *(v8 + 680) = a8;
  *(v8 + 672) = a7;
  *(v8 + 664) = a6;
  *(v8 + 656) = a5;
  *(v8 + 648) = a4;
  v9 = sub_10009D9F0();
  *(v8 + 712) = v9;
  *(v8 + 720) = *(v9 - 8);
  *(v8 + 728) = swift_task_alloc();
  *(v8 + 736) = swift_task_alloc();
  *(v8 + 744) = swift_task_alloc();
  *(v8 + 752) = swift_task_alloc();
  *(v8 + 760) = swift_task_alloc();
  *(v8 + 768) = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  *(v8 + 776) = swift_task_alloc();
  *(v8 + 784) = swift_task_alloc();
  *(v8 + 792) = swift_task_alloc();
  *(v8 + 800) = sub_10009DF10();
  *(v8 + 808) = sub_10009DF00();
  v11 = sub_10009DED0();
  *(v8 + 816) = v11;
  *(v8 + 824) = v10;

  return _swift_task_switch(sub_1000554F0, v11, v10);
}

uint64_t sub_1000554F0()
{
  v1 = v0[83];
  v2 = v0[82];
  type metadata accessor for ModelDelegateSPI(0);
  swift_allocObject();
  v0[104] = sub_10003F4A4();
  v3 = swift_allocObject();
  v0[105] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  return _swift_task_switch(sub_1000555A8, 0, 0);
}

uint64_t sub_1000555A8()
{
  v1 = v0[105];
  v2 = (v0[104] + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPI);
  *v2 = sub_10008EA5C;
  v2[1] = v1;

  v0[106] = sub_10009DF00();
  v4 = sub_10009DED0();

  return _swift_task_switch(sub_100055670, v4, v3);
}

uint64_t sub_100055670()
{

  type metadata accessor for CKShareModel(0);
  swift_allocObject();
  *(v0 + 856) = sub_1000998E0();

  return _swift_task_switch(sub_1000556F8, 0, 0);
}

uint64_t sub_1000556F8(uint64_t a1)
{
  *(v1 + 864) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100055784, v3, v2);
}

uint64_t sub_100055784()
{
  v1 = *(v0 + 856);

  type metadata accessor for OptionsModel(0);
  swift_allocObject();
  *(v0 + 872) = sub_10004BA80(v1);

  return _swift_task_switch(sub_10005581C, 0, 0);
}

uint64_t sub_10005581C(uint64_t a1)
{
  *(v1 + 880) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_1000558A8, v3, v2);
}

uint64_t sub_1000558A8()
{
  v1 = *(v0 + 872);

  type metadata accessor for SharingModel(0);
  swift_allocObject();
  *(v0 + 888) = sub_100032A60(v1);

  return _swift_task_switch(sub_100055940, 0, 0);
}

uint64_t sub_100055940()
{
  v1 = v0[111];
  v2 = v0[104];
  v3 = v0[84];
  v4 = OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel;
  v0[112] = OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel;
  *(v2 + v4) = v1;

  v5 = *(v2 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_share);
  *(v2 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_share) = v3;

  v6 = *(v2 + v4);
  v0[113] = v6;
  if (!v6)
  {
    return sub_10009E250();
  }

  v7 = v0[99];
  v8 = v0[84];
  v9 = sub_10009D860();
  v0[114] = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v0[115] = v11;
  v0[116] = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v11(v7, 1, 1, v9);
  v12 = v8;

  v0[117] = sub_10009DF00();
  v14 = sub_10009DED0();

  return _swift_task_switch(sub_100055AF4, v14, v13);
}

uint64_t sub_100055AF4()
{
  v1 = v0[113];
  v2 = v0[104];
  v3 = v0[99];
  v4 = v0[85];

  sub_100043F7C(v2, v4, v3, 0, v1);

  sub_100008728(v3, &qword_1000CA250, &qword_10009FDF8);
  v5 = v0[103];
  v6 = v0[102];

  return _swift_task_switch(sub_100055BC0, v6, v5);
}

uint64_t sub_100055BC0()
{
  v100 = v0;
  v1 = *(*(v0 + 832) + *(v0 + 896));
  *(v0 + 944) = v1;
  if (!v1)
  {
    return sub_10009E250();
  }

  v2 = *(v0 + 672);
  sub_1000037C4(0, &qword_1000C9F28, _SWCollaborationOptionsGroup_ptr);

  isa = sub_10009DE90().super.isa;
  *(v0 + 952) = CKSharingAccessTypeFromOptionsGroups();

  v4 = sub_10009DE90().super.isa;
  *(v0 + 960) = CKSharingPermissionTypeFromOptionsGroups();

  v5 = sub_10009DE90().super.isa;
  *(v0 + 59) = CKSharingAllowOthersToInviteFromOptionsGroups();

  v6 = sub_10009DE90().super.isa;
  *(v0 + 60) = CKSharingAllowAccessRequestsFromOptionsGroups();

  v7 = [v2 participants];
  sub_1000037C4(0, &qword_1000CAD70, CKShareParticipant_ptr);
  v8 = sub_10009DEA0();

  if (v8 >> 62)
  {
    v16 = sub_10009E260();
  }

  else
  {
    v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8, v9, v10, v11, v12, v13, v14, v15;
  if (v16 >= 2)
  {
    sub_10009D9D0();
    v17 = sub_10009D9E0();
    v18 = sub_10009DFD0();
    if (os_log_type_enabled(v17, v18))
    {
      v97 = v18;
      v19 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v98 = v19;
      v99 = v96;
      *v19 = 136315138;
      v20 = sub_10009DE60();
      v28 = v21;
      if (("Invite:withReply:)" & 0x2000000000000000) != 0)
      {
        v29 = ("Invite:withReply:)" >> 40) & 0xF0000;
      }

      else
      {
        v29 = 6225920;
      }

      if (v29)
      {
        v30 = v20;
        while (1)
        {
          v31 = sub_10009DE60();
          v39 = v32;
          if (v31 == v30 && v32 == v28)
          {
            v28, v32, v33, v34, v35, v36, v37, v38;
            goto LABEL_20;
          }

          v40 = sub_10009E2E0();
          v39, v41, v42, v43, v44, v45, v46, v47;
          if (v40)
          {
            break;
          }

          if ((sub_10009DE00() ^ v29) < 0x4000)
          {
            goto LABEL_15;
          }
        }

        v39 = v28;
LABEL_20:
        v39, v48, v49, v50, v51, v52, v53, v54;
        sub_10009DE70();
        v62 = v61;
        v63 = sub_10009DDD0();
        v56 = v64;
        v62, v64, v65, v66, v67, v68, v69, v70;
        v55 = v63;
      }

      else
      {
LABEL_15:
        v28, v21, v22, v23, v24, v25, v26, v27;
        v55 = 0;
        v56 = 0xE000000000000000;
      }

      v71 = *(v0 + 760);
      v72 = *(v0 + 720);
      v73 = *(v0 + 712);
      v74 = sub_1000307A4(v55, v56, &v99);
      v56, v75, v76, v77, v78, v79, v80, v81;
      *(v98 + 1) = v74;
      _os_log_impl(&_mh_execute_header, v17, v97, "%s: passed-in CKShare should not have participants already added. Will return an error in the future.", v98, 0xCu);
      sub_10000670C(v96);

      (*(v72 + 8))(v71, v73);
    }

    else
    {
      v58 = *(v0 + 760);
      v59 = *(v0 + 720);
      v60 = *(v0 + 712);

      (*(v59 + 8))(v58, v60);
    }
  }

  v82 = *(v0 + 648);
  v99 = *(v0 + 696);

  sub_1000799A0(v83);
  v84 = v99;
  v85 = v82 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier;
  v86 = *(v82 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier);
  *(v0 + 968) = v86;
  v87 = *(v85 + 8);
  *(v0 + 976) = v87;
  if (v87)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 616) = v86;
    *(v0 + 624) = v87;

    sub_10009DB00();
  }

  sub_100097154(v84);
  v84, v88, v89, v90, v91, v92, v93, v94;
  *(v0 + 984) = *(v1 + 16);

  v95 = swift_task_alloc();
  *(v0 + 992) = v95;
  *v95 = v0;
  v95[1] = sub_1000560FC;

  return sub_10004B1CC();
}

uint64_t sub_1000560FC()
{
  v2 = *v1;
  *(*v1 + 1000) = v0;

  v3 = *(v2 + 824);
  v4 = *(v2 + 816);
  if (v0)
  {
    v5 = sub_10005832C;
  }

  else
  {
    v5 = sub_100056254;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100056254()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  if (*(v0 + 57))
  {

    return _swift_task_switch(sub_100056534, 0, 0);
  }

  else
  {
    v1 = *(v0 + 920);
    v2 = *(v0 + 912);
    v3 = *(v0 + 832);
    v4 = *(v0 + 792);
    v12 = *(v0 + 656);
    v5 = *(v0 + 648);

    *(v0 + 48) = 0;
    *(v0 + 32) = 0u;
    *(v0 + 16) = 0u;
    *(v0 + 56) = -1;
    v6 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:10 userInfo:0];
    v7 = v5;

    LOWORD(v11) = 0;
    sub_10007B224(0xD00000000000005FLL, 0x80000001000A7D60, 0xD00000000000003DLL, 0x80000001000A76F0, (v0 + 16), v6, v7, 0, 0, v11, v7, 0, v3);

    v1(v4, 1, 1, v2);
    v8 = v6;
    v12(v4, 0, v6);

    sub_100008728(v4, &qword_1000CA250, &qword_10009FDF8);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_100056534(uint64_t a1)
{
  *(v1 + 1008) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_1000565C0, v3, v2);
}

uint64_t sub_1000565C0()
{
  v1 = v0[119];
  v2 = v0[118];

  v0[127] = *(v2 + 16);

  v3 = swift_task_alloc();
  v0[128] = v3;
  *v3 = v0;
  v3[1] = sub_100056694;
  if (v1 == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return sub_100048CBC(v4, v2, 0);
}

uint64_t sub_100056694()
{
  *(*v1 + 1032) = v0;

  if (v0)
  {
    v2 = sub_100056A30;
  }

  else
  {

    v2 = sub_1000567B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000567B0(uint64_t a1)
{
  *(v1 + 1040) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_10005683C, v3, v2);
}

uint64_t sub_10005683C()
{
  v1 = v0[120];
  v2 = v0[118];

  v0[131] = *(v2 + 16);

  v3 = swift_task_alloc();
  v0[132] = v3;
  *v3 = v0;
  v3[1] = sub_100056914;
  if (v1 == 3)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  return sub_100049714(v4, v2, 0, 1);
}

uint64_t sub_100056914()
{
  *(*v1 + 1064) = v0;

  if (v0)
  {
    v2 = sub_100056F90;
  }

  else
  {

    v2 = sub_100056AA0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100056A30()
{
  v0[138] = v0[129];

  v1 = v0[103];
  v2 = v0[102];

  return _swift_task_switch(sub_100057000, v2, v1);
}

uint64_t sub_100056AA0(uint64_t a1)
{
  *(v1 + 1072) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100056B2C, v3, v2);
}

uint64_t sub_100056B2C()
{
  v1 = *(v0 + 59);

  if (v1)
  {
    v2 = &off_1000C1AA0;
  }

  else
  {
    v2 = &off_1000C1AC8;
  }

  sub_100047B6C(v2);
  v2, v3, v4, v5, v6, v7, v8, v9;

  return _swift_task_switch(sub_100056BD8, 0, 0);
}

uint64_t sub_100056BD8(uint64_t a1)
{
  *(v1 + 1080) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100056C64, v3, v2);
}

uint64_t sub_100056C64()
{
  v1 = *(v0 + 944);

  *(v0 + 1088) = *(v1 + 16);

  return _swift_task_switch(sub_100056CE0, 0, 0);
}

uint64_t sub_100056CE0(uint64_t a1)
{
  *(v1 + 1096) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100056D6C, v3, v2);
}

uint64_t sub_100056D6C()
{
  v1 = *(v0 + 60);

  sub_10004A3E0(v1);

  v2 = *(v0 + 824);
  v3 = *(v0 + 816);

  return _swift_task_switch(sub_100056DEC, v3, v2);
}

uint64_t sub_100056DEC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  if (*(v0 + 58) == 1)
  {
    sub_10009D9D0();
    v1 = sub_10009D9E0();
    v2 = sub_10009DFD0();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "addParticipantsToShare (internal) will return an error for this public share", v3, 2u);
    }

    v4 = *(v0 + 752);
    v5 = *(v0 + 720);
    v6 = *(v0 + 712);

    (*(v5 + 8))(v4, v6);
  }

  v7 = swift_task_alloc();
  *(v0 + 1112) = v7;
  *v7 = v0;
  v7[1] = sub_100057388;
  v8 = *(v0 + 60);
  v9 = *(v0 + 59);

  return sub_100023A48(v9, v8);
}

uint64_t sub_100056F90()
{
  v0[138] = v0[133];

  v1 = v0[103];
  v2 = v0[102];

  return _swift_task_switch(sub_100057000, v2, v1);
}

uint64_t sub_100057000()
{
  v1 = *(v0 + 1104);

  *(v0 + 632) = v1;
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 920);
    v3 = *(v0 + 912);
    v4 = *(v0 + 832);
    v5 = *(v0 + 792);
    v20 = *(v0 + 656);
    v6 = *(v0 + 648);

    v7 = *(v0 + 176);
    *(v0 + 112) = *(v0 + 160);
    *(v0 + 128) = v7;
    *(v0 + 137) = *(v0 + 185);
    v8 = *(v0 + 200);
    v10 = *(v0 + 160);
    v9 = *(v0 + 176);
    *(v0 + 96) = *(v0 + 192);
    *(v0 + 104) = v8;
    *(v0 + 64) = v10;
    *(v0 + 80) = v9;
    v11 = v6;
    swift_retain_n();
    v12 = v11;
    sub_10008C148(v0 + 112, v0 + 208);
    LOWORD(v19) = 0;
    sub_10007B224(0xD00000000000005FLL, 0x80000001000A7D60, 0xD000000000000015, 0x80000001000A76D0, (v0 + 64), 0, v12, 0, 0, v19, v12, 0, v4);

    sub_10008C148(v0 + 112, v0 + 256);
    sub_10008F51C(0xD00000000000005FLL, 0x80000001000A7D60);
    v14 = v13;
    v2(v5, 1, 1, v3);
    v20(v5, 0, v14);
    sub_10008C1A4(v0 + 112);
    sub_10008C1A4(v0 + 112);

    sub_10008C1A4(v0 + 112);
    sub_100008728(v5, &qword_1000CA250, &qword_10009FDF8);
  }

  else
  {
    v16 = *(v0 + 664);
    v17 = *(v0 + 656);

    sub_100083E60(0, 0xD00000000000005FLL, 0x80000001000A7D60, v17, v16);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100057388()
{
  v2 = *v1;
  v2[140] = v0;

  if (v0)
  {
    v3 = v2[103];
    v4 = v2[102];

    return _swift_task_switch(sub_1000586B4, v4, v3);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[141] = v5;
    *v5 = v2;
    v5[1] = sub_1000574F4;

    return sub_100026F78();
  }
}

uint64_t sub_1000574F4()
{
  v2 = *v1;
  *(*v1 + 1136) = v0;

  v3 = *(v2 + 824);
  v4 = *(v2 + 816);
  if (v0)
  {
    v5 = sub_100058A3C;
  }

  else
  {
    v5 = sub_100057630;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100057630()
{
  (*(v0 + 920))(*(v0 + 784), 1, 1, *(v0 + 912));
  v1 = swift_task_alloc();
  *(v0 + 1144) = v1;
  *v1 = v0;
  v1[1] = sub_1000576E4;
  v2 = *(v0 + 784);

  return sub_100028ADC(v2);
}

uint64_t sub_1000576E4()
{
  v2 = *v1;
  (*v1)[144] = v0;

  sub_100008728(v2[98], &qword_1000CA250, &qword_10009FDF8);
  v3 = v2[103];
  v4 = v2[102];
  if (v0)
  {
    v5 = sub_100058DC4;
  }

  else
  {
    v5 = sub_100057830;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100057830()
{
  v218 = v0;
  v1 = *(v0 + 792);
  v2 = *(v0 + 776);
  v3 = *(v0 + 648);

  *(v0 + 504) = sub_100094060();
  *(v0 + 512) = v4;
  *(v0 + 520) = v5;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v6 = *(v0 + 640);
  sub_100008658(v2, v1, &qword_1000CA250, &qword_10009FDF8);
  sub_10009DDA0();
  v212 = v7;
  v8 = v3;

  sub_10008E8A8(v0 + 504, v0 + 528);
  v9 = v6;
  v10 = sub_10009DE60();
  v18 = v11;
  if (("Invite:withReply:)" & 0x2000000000000000) != 0)
  {
    v19 = ("Invite:withReply:)" >> 40) & 0xF0000;
  }

  else
  {
    v19 = 6225920;
  }

  v216 = v9;
  if (v19)
  {
    v20 = v10;
    while (1)
    {
      v21 = sub_10009DE60();
      v29 = v22;
      if (v21 == v20 && v22 == v18)
      {
        v18, v22, v23, v24, v25, v26, v27, v28;
        goto LABEL_13;
      }

      v30 = sub_10009E2E0();
      v29, v31, v32, v33, v34, v35, v36, v37;
      if (v30)
      {
        break;
      }

      if ((sub_10009DE00() ^ v19) < 0x4000)
      {
        goto LABEL_10;
      }
    }

    v29 = v18;
LABEL_13:
    v29, v38, v39, v40, v41, v42, v43, v44;
    sub_10009DE70();
    v46 = v45;
    v211 = sub_10009DDD0();
    v214 = v47;
    v46, v47, v48, v49, v50, v51, v52, v53;
  }

  else
  {
LABEL_10:
    v18, v11, v12, v13, v14, v15, v16, v17;
    v211 = 0;
    v214 = 0xE000000000000000;
  }

  v54 = *(v0 + 507);
  v55 = *(v0 + 508);
  v56 = *(v0 + 512);
  *(v0 + 328) = type metadata accessor for SPIAnalyticsEvent(0);
  *(v0 + 336) = &off_1000C2CF0;
  v57 = sub_10008D654((v0 + 304));
  v213 = v6;
  if (v6)
  {
    v58 = (*(v0 + 832) + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_appName);
    v209 = v55;
    v59 = v54;
    v60 = v56;
    v61 = *v58;
    v62 = v58[1];
    sub_10008E8A8(v0 + 504, v0 + 576);

    v63 = v216;
    v64 = sub_100045D24(v63, v61, v62);
    v66 = v65;

    v67 = v62;
    v56 = v60;
    v54 = v59;
    v55 = v209;
    v67, v68, v69, v70, v71, v72, v73, v74;
  }

  else
  {
    sub_10008E8A8(v0 + 504, v0 + 552);
    v64 = 0;
    v66 = 0xE000000000000000;
  }

  v75 = *(v0 + 968);
  v76 = 0x73736563637553;
  *v57 = v64;
  v57[1] = v66;
  *(v57 + 16) = v54;
  *(v57 + 17) = v55;
  v57[3] = v56;
  *(v57 + 2) = v75;
  *(v57 + 3) = 0u;
  *(v57 + 4) = 0u;
  v57[10] = 0;
  *(v57 + 88) = -1;
  swift_storeEnumTagMultiPayload();
  sub_100008658(v0 + 304, v0 + 384, &qword_1000CB798, &qword_1000A27F0);
  if (*(v0 + 408))
  {
    sub_10008D5D8((v0 + 384), v0 + 344);

    sub_10009D9D0();
    sub_10008D5F0(v0 + 344, v0 + 424);

    v77 = sub_10009D9E0();
    v78 = sub_10009DFF0();
    v214, v79, v80, v81, v82, v83, v84, v85;
    v86 = os_log_type_enabled(v77, v78);
    v87 = *(v0 + 744);
    v88 = *(v0 + 720);
    v89 = *(v0 + 712);
    if (v86)
    {
      v90 = swift_slowAlloc();
      v217 = swift_slowAlloc();
      *v90 = 136315394;
      *(v90 + 4) = sub_1000307A4(v211, v214, &v217);
      *(v90 + 12) = 2080;
      sub_1000067C8((v0 + 424), *(v0 + 448));
      v207 = v87;
      v91 = sub_10003BB34();
      v93 = v92;
      sub_10000670C((v0 + 424));
      v94 = sub_1000307A4(v91, v93, &v217);
      v93, v95, v96, v97, v98, v99, v100, v101;
      *(v90 + 14) = v94;
      _os_log_impl(&_mh_execute_header, v77, v78, "Finishing %s, sending event %s", v90, 0x16u);
      swift_arrayDestroy();

      v102 = *(v88 + 8);
      v102(v207, v89);
    }

    else
    {

      v102 = *(v88 + 8);
      v102(v87, v89);
      sub_10000670C((v0 + 424));
    }

    v105 = *(v0 + 648);
    v106 = sub_1000067C8((v0 + 344), *(v0 + 368));
    sub_100079DD8(v106);
    sub_10009D9D0();
    sub_10008D5F0(v0 + 344, v0 + 464);
    v107 = v105;
    v108 = sub_10009D9E0();
    v109 = sub_10009DFF0();

    if (os_log_type_enabled(v108, v109))
    {
      v110 = *(v0 + 976);
      v111 = *(v0 + 968);
      v208 = *(v0 + 712);
      v210 = *(v0 + 736);
      v206 = v102;
      v112 = swift_slowAlloc();
      v217 = swift_slowAlloc();
      *v112 = 136315650;
      *(v0 + 600) = v111;
      *(v0 + 608) = v110;

      sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
      v113 = sub_10009DDA0();
      v115 = v114;
      v116 = sub_1000307A4(v113, v114, &v217);
      v115, v117, v118, v119, v120, v121, v122, v123;
      *(v112 + 4) = v116;
      *(v112 + 12) = 2080;
      sub_1000067C8((v0 + 464), *(v0 + 488));
      v124 = sub_10003C060();
      sub_1000037C4(0, &qword_1000CAD58, NSObject_ptr);
      v125 = sub_10009DD10();
      v127 = v126;
      v124, v126, v128, v129, v130, v131, v132, v133;
      sub_10000670C((v0 + 464));
      v134 = sub_1000307A4(v125, v127, &v217);
      v127, v135, v136, v137, v138, v139, v140, v141;
      *(v112 + 14) = v134;
      *(v112 + 22) = 2080;
      *(v112 + 24) = sub_1000307A4(0xD00000000000005FLL, 0x80000001000A7D60, &v217);
      _os_log_impl(&_mh_execute_header, v108, v109, "Requester: %s, event detail is: %s\n%s", v112, 0x20u);
      swift_arrayDestroy();

      v206(v210, v208);
    }

    else
    {
      v142 = *(v0 + 736);
      v143 = *(v0 + 712);

      v102(v142, v143);
      sub_10000670C((v0 + 464));
    }

    v104 = v214;
    v76 = 0x73736563637553;
    sub_1000067C8((v0 + 344), *(v0 + 368));
    if (sub_10003CCE4())
    {
      v76 = 0x7272652068746957;
      v103 = 0xEA0000000000726FLL;
    }

    else
    {
      v103 = 0xE700000000000000;
    }

    sub_10000670C((v0 + 344));
  }

  else
  {

    sub_100008728(v0 + 384, &qword_1000CB798, &qword_1000A27F0);
    v103 = 0xE700000000000000;
    v104 = v214;
  }

  sub_10009D9D0();

  v144 = sub_10009D9E0();
  v145 = sub_10009DFF0();
  v104, v146, v147, v148, v149, v150, v151, v152;
  v103, v153, v154, v155, v156, v157, v158, v159;
  v160 = os_log_type_enabled(v144, v145);
  v161 = *(v0 + 728);
  v162 = *(v0 + 720);
  v163 = *(v0 + 712);
  if (v160)
  {
    v215 = *(v0 + 712);
    v164 = swift_slowAlloc();
    v217 = swift_slowAlloc();
    *v164 = 136315394;
    v165 = sub_1000307A4(v211, v104, &v217);
    v104, v166, v167, v168, v169, v170, v171, v172;
    *(v164 + 4) = v165;
    *(v164 + 12) = 2080;
    v173 = sub_1000307A4(v76, v103, &v217);
    v103, v174, v175, v176, v177, v178, v179, v180;
    *(v164 + 14) = v173;
    _os_log_impl(&_mh_execute_header, v144, v145, "Finished %s: %s.", v164, 0x16u);
    swift_arrayDestroy();

    (*(v162 + 8))(v161, v215);
  }

  else
  {

    v103, v181, v182, v183, v184, v185, v186, v187;
    v104, v188, v189, v190, v191, v192, v193, v194;
    (*(v162 + 8))(v161, v163);
  }

  sub_100008728(v0 + 304, &qword_1000CB798, &qword_1000A27F0);
  sub_10008E904(v0 + 504);
  v212, v195, v196, v197, v198, v199, v200, v201;
  sub_10008E904(v0 + 504);

  if (v213)
  {
    v202 = [v216 _copyWithoutPersonalInfo];
  }

  else
  {
    v202 = 0;
  }

  v203 = *(v0 + 776);
  (*(v0 + 656))(v203, v202, 0);

  sub_100008728(v203, &qword_1000CA250, &qword_10009FDF8);

  v204 = *(v0 + 8);

  return v204();
}