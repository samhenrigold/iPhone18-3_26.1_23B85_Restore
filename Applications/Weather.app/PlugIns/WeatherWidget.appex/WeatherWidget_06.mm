uint64_t sub_1000A2FF8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v62 = a1;
  v73 = a2;
  v2 = sub_100002A10(&qword_100134420, &qword_1000F6F90);
  v3 = __chkstk_darwin(v2 - 8);
  v72 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v71 = (&v61 - v5);
  v6 = sub_1000EAFC4();
  v67 = *(v6 - 8);
  v68 = v6;
  __chkstk_darwin(v6);
  v65 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_100002A10(&qword_100134428, &qword_1000F6F98) - 8;
  v8 = __chkstk_darwin(v69);
  v70 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v74 = &v61 - v10;
  v64 = *(type metadata accessor for DailyTemperatureForecastRowView(0) + 20);
  v86 = sub_1000EB104();
  v87 = v11;
  sub_100005898();
  v12 = sub_1000EA814();
  v14 = v13;
  v16 = v15;
  sub_1000EA9C4();
  v17 = sub_1000EA784();
  v19 = v18;
  v21 = v20;

  sub_1000058EC(v12, v14, v16 & 1);

  v61 = type metadata accessor for DailyViewAttributes(0);
  v22 = v62;
  v23 = sub_1000EA7D4();
  v25 = v24;
  v27 = v26;
  sub_1000058EC(v17, v19, v21 & 1);

  v28 = sub_1000EA794();
  v30 = v29;
  v32 = v31;
  sub_1000058EC(v23, v25, v27 & 1);

  v33 = v61;
  v66 = sub_1000EA714();
  v75 = v35;
  v76 = v34;
  LOBYTE(v23) = v36;
  sub_1000058EC(v28, v30, v32 & 1);

  sub_1000EABD4();
  sub_1000E9FC4();
  v37 = v23 & 1;
  LOBYTE(v86) = v23 & 1;
  v63 = v23 & 1;
  *&v77[6] = v79;
  *&v77[22] = v80;
  *&v77[38] = v81;
  v38 = v65;
  sub_1000EB1E4();
  sub_1000EAF84();
  (*(v67 + 8))(v38, v68);
  v39 = v74;
  sub_1000EB394();
  KeyPath = swift_getKeyPath();
  v41 = (v39 + *(sub_100002A10(&qword_100134430, &unk_1000F6FD0) + 36));
  v42 = *(sub_100002A10(&qword_100131B10, &unk_1000F2960) + 28);
  v43 = enum case for ColorSchemeContrast.standard(_:);
  v44 = sub_1000EA3A4();
  (*(*(v44 - 8) + 104))(v41 + v42, v43, v44);
  *v41 = KeyPath;
  v45 = *(v22 + *(v33 + 72));
  v46 = swift_getKeyPath();
  v47 = (v39 + *(sub_100002A10(&qword_100134438, &qword_1000F7010) + 36));
  *v47 = v46;
  v47[1] = v45;

  sub_1000EABC4();
  sub_1000E9FC4();
  v48 = (v39 + *(v69 + 44));
  v49 = v83;
  *v48 = v82;
  v48[1] = v49;
  v48[2] = v84;
  v50 = sub_1000EA2E4();
  v51 = v71;
  *v71 = v50;
  *(v51 + 8) = 0;
  *(v51 + 16) = 1;
  v52 = sub_100002A10(&qword_100134440, &qword_1000F7018);
  sub_1000A37F8(v22, v51 + *(v52 + 44));
  v53 = v70;
  sub_1000068F4(v39, v70, &qword_100134428, &qword_1000F6F98);
  v54 = v72;
  sub_1000068F4(v51, v72, &qword_100134420, &qword_1000F6F90);
  *(&v85[4] + 2) = *v77;
  v55 = v66;
  v85[0] = v66;
  v85[1] = v76;
  LOBYTE(v85[2]) = v37;
  *(&v85[2] + 1) = *v78;
  HIDWORD(v85[2]) = *&v78[3];
  v85[3] = v75;
  LOWORD(v85[4]) = 257;
  *(&v85[6] + 2) = *&v77[16];
  *(&v85[8] + 2) = *&v77[32];
  v85[10] = *&v77[46];
  v56 = v73;
  memcpy(v73, v85, 0x58uLL);
  v56[11] = 0;
  *(v56 + 96) = 1;
  v57 = v56;
  v58 = sub_100002A10(&qword_100134448, &qword_1000F7020);
  sub_1000068F4(v53, v57 + v58[16], &qword_100134428, &qword_1000F6F98);
  v59 = v57 + v58[20];
  *v59 = 0;
  v59[8] = 1;
  sub_1000068F4(v54, v57 + v58[24], &qword_100134420, &qword_1000F6F90);
  sub_1000068F4(v85, &v86, &qword_100134450, &qword_1000F7028);
  sub_100006850(v51, &qword_100134420, &qword_1000F6F90);
  sub_100006850(v74, &qword_100134428, &qword_1000F6F98);
  sub_100006850(v54, &qword_100134420, &qword_1000F6F90);
  sub_100006850(v53, &qword_100134428, &qword_1000F6F98);
  v92 = *v77;
  v86 = v55;
  v87 = v76;
  v88 = v63;
  *v89 = *v78;
  *&v89[3] = *&v78[3];
  v90 = v75;
  v91 = 257;
  v93 = *&v77[16];
  *v94 = *&v77[32];
  *&v94[14] = *&v77[46];
  return sub_100006850(&v86, &qword_100134450, &qword_1000F7028);
}

uint64_t sub_1000A3724@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_100002A10(&qword_1001344A0, &qword_1000F7088);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  sub_1000EAA44();
  v6 = sub_1000EAA54();
  sub_1000028A0(v5, 0, 1, v6);
  v7 = sub_1000EAA34();
  result = sub_100006850(v5, &qword_1001344A0, &qword_1000F7088);
  *a2 = v7;
  return result;
}

uint64_t sub_1000A37F8@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v192 = a2;
  v3 = sub_1000E9874();
  __chkstk_darwin(v3 - 8);
  v183 = &v145[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1000E9894();
  v181 = *(v5 - 8);
  v182 = v5;
  __chkstk_darwin(v5);
  v180 = &v145[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100002A10(&qword_10012EF30, &unk_1000F14F0);
  v8 = __chkstk_darwin(v7 - 8);
  v187 = &v145[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v185 = &v145[-v10];
  v11 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  v188 = *(v11 - 8);
  v189 = v11;
  v12 = __chkstk_darwin(v11);
  v171 = &v145[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v12);
  v170 = &v145[-v15];
  v16 = __chkstk_darwin(v14);
  v186 = &v145[-v17];
  v18 = __chkstk_darwin(v16);
  v169 = &v145[-v19];
  v20 = __chkstk_darwin(v18);
  v22 = &v145[-v21];
  __chkstk_darwin(v20);
  v184 = &v145[-v23];
  v24 = sub_1000EAD54();
  v178 = *(v24 - 8);
  v179 = v24;
  __chkstk_darwin(v24);
  v177 = &v145[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v173 = sub_100002A10(&qword_10012EF38, &qword_1000EEE20);
  __chkstk_darwin(v173);
  v174 = &v145[-v26];
  v176 = sub_100002A10(&qword_100134458, &qword_1000F7030);
  __chkstk_darwin(v176);
  v175 = &v145[-v27];
  v190 = sub_100002A10(&qword_100134460, &qword_1000F7038);
  __chkstk_darwin(v190);
  v172 = &v145[-v28];
  v29 = sub_100002A10(&qword_100134468, &qword_1000F7040);
  v30 = __chkstk_darwin(v29 - 8);
  v191 = &v145[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v30);
  v197 = &v145[-v32];
  v33 = sub_100002A10(&qword_100134470, &qword_1000F7048);
  __chkstk_darwin(v33);
  v164 = &v145[-v34];
  v35 = sub_1000EBC34();
  v36 = *(v35 - 8);
  v37 = __chkstk_darwin(v35);
  v39 = &v145[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v37);
  v41 = &v145[-v40];
  v42 = sub_1000EABF4();
  v161 = *(v42 - 8);
  __chkstk_darwin(v42);
  v158 = &v145[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v154 = sub_100002A10(&qword_10012EF50, &unk_1000F7050);
  __chkstk_darwin(v154);
  v157 = &v145[-v44];
  v155 = sub_100002A10(&qword_10012EF58, &unk_1000EEE40);
  __chkstk_darwin(v155);
  v160 = &v145[-v45];
  v159 = sub_100002A10(&qword_10012EF60, &qword_1000F7060);
  v46 = __chkstk_darwin(v159);
  v163 = &v145[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v48 = __chkstk_darwin(v46);
  v156 = &v145[-v49];
  __chkstk_darwin(v48);
  v162 = &v145[-v50];
  v51 = sub_100002A10(&qword_100134478, &qword_1000F7068);
  v52 = __chkstk_darwin(v51 - 8);
  v195 = &v145[-((v53 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v52);
  v55 = &v145[-v54];
  v193 = type metadata accessor for DailyViewAttributes(0);
  v56 = *(a1 + v193[9]);
  v196 = v55;
  v167 = v36;
  v168 = v35;
  v165 = v41;
  v166 = v39;
  if (v56 == 1)
  {
    v151 = type metadata accessor for DailyTemperatureForecastRowView(0);
    v57 = sub_1000A1C40(a1 + *(v151 + 20), a1, &DailyForecastViewModel.low.getter);
    v152 = v33;
    v153 = v22;
    v59 = v58;
    v150 = v42;
    v61 = v60;
    sub_1000EA9C4();
    v194 = a1;
    v62 = sub_1000EA784();
    v147 = v63;
    v148 = v62;
    v146 = v64;
    v149 = v65;

    sub_1000058EC(v57, v59, v61 & 1);

    sub_1000A2608(v41);
    sub_1000EBC14();
    LOBYTE(v57) = sub_1000EBBF4();
    v66 = *(v36 + 8);
    v66(v39, v35);
    v66(v41, v35);
    v67 = v161;
    v68 = &enum case for BlendMode.normal(_:);
    if ((v57 & 1) == 0)
    {
      v68 = &enum case for BlendMode.plusLighter(_:);
    }

    v69 = v158;
    v70 = v150;
    (*(v161 + 104))(v158, *v68, v150);
    v71 = v157;
    (*(v67 + 32))(&v157[*(v154 + 36)], v69, v70);
    v72 = v147;
    *v71 = v148;
    *(v71 + 8) = v72;
    *(v71 + 16) = v146 & 1;
    *(v71 + 24) = v149;
    v73 = sub_1000A27F4();
    v74 = v160;
    sub_1000068A4(v71, v160, &qword_10012EF50, &unk_1000F7050);
    *&v74[*(v155 + 36)] = v73;
    sub_1000EABE4();
    sub_1000E9FC4();
    v75 = v156;
    sub_1000068A4(v74, v156, &qword_10012EF58, &unk_1000EEE40);
    v76 = &v75[*(v159 + 36)];
    v77 = v214;
    *v76 = v213;
    v76[1] = v77;
    v76[2] = v215;
    v78 = v162;
    sub_1000068A4(v75, v162, &qword_10012EF60, &qword_1000F7060);
    sub_1000EABC4();
    sub_1000E9FC4();
    v160 = v218;
    v161 = v216;
    v159 = v220;
    v79 = v221;
    LOBYTE(v206[0]) = 1;
    LOBYTE(v205[0]) = v217;
    LOBYTE(v225) = v219;
    v80 = v163;
    sub_1000068F4(v78, v163, &qword_10012EF60, &qword_1000F7060);
    LOBYTE(v71) = v206[0];
    v81 = v205[0];
    v82 = v225;
    v83 = v164;
    sub_1000068F4(v80, v164, &qword_10012EF60, &qword_1000F7060);
    v84 = &v83[*(sub_100002A10(&qword_100134498, &qword_1000F7080) + 48)];
    *v84 = 0;
    v84[8] = v71;
    v22 = v153;
    v85 = v160;
    *(v84 + 2) = v161;
    v84[24] = v81;
    *(v84 + 4) = v85;
    v84[40] = v82;
    *(v84 + 6) = v159;
    *(v84 + 7) = v79;
    a1 = v194;
    sub_100006850(v78, &qword_10012EF60, &qword_1000F7060);
    v86 = v80;
    v87 = v196;
    sub_100006850(v86, &qword_10012EF60, &qword_1000F7060);
    sub_1000068A4(v83, v87, &qword_100134470, &qword_1000F7048);
    v88 = v87;
    v89 = 0;
    v90 = v152;
  }

  else
  {
    v88 = v55;
    v89 = 1;
    v90 = v33;
  }

  sub_1000028A0(v88, v89, 1, v90);
  v91 = 1;
  v93 = v188;
  v92 = v189;
  v94 = v185;
  v95 = v186;
  v96 = v184;
  if (*(a1 + v193[10]) == 1)
  {
    sub_1000068F4(a1 + v193[22], v185, &qword_10012EF30, &unk_1000F14F0);
    if (sub_100005B30(v94, 1, v92) == 1)
    {
      sub_100006850(v94, &qword_10012EF30, &unk_1000F14F0);
      type metadata accessor for DailyTemperatureForecastRowView(0);
      v97 = v169;
      sub_1000EB1B4();
      v94 = v97;
      sub_1000E8324();
      v98 = v22;
      v96 = v22;
    }

    else
    {
      v98 = v22;
      sub_1000E8324();
    }

    v99 = *(v93 + 8);
    v99(v94, v92);
    sub_1000E82E4();
    v99(v96, v92);
    v100 = v187;
    sub_1000068F4(a1 + v193[23], v187, &qword_10012EF30, &unk_1000F14F0);
    if (sub_100005B30(v100, 1, v92) == 1)
    {
      sub_100006850(v100, &qword_10012EF30, &unk_1000F14F0);
      type metadata accessor for DailyTemperatureForecastRowView(0);
      v101 = v169;
      sub_1000EB194();
      sub_1000E8324();
      v102 = v101;
      v95 = v98;
    }

    else
    {
      sub_1000E8324();
      v102 = v187;
    }

    v99(v102, v92);
    sub_1000E82E4();
    v99(v95, v92);
    type metadata accessor for DailyTemperatureForecastRowView(0);
    sub_1000EB1B4();
    v103 = v170;
    sub_1000E8324();
    v99(v98, v92);
    sub_1000E82E4();
    v99(v103, v92);
    sub_1000EB194();
    v104 = v171;
    sub_1000E8324();
    v99(v98, v92);
    sub_1000E82E4();
    v99(v104, v92);
    v105 = v165;
    sub_1000A2608(v165);
    v106 = v166;
    sub_1000EBC04();
    sub_1000EBBF4();
    v107 = *(v167 + 8);
    v108 = v106;
    v109 = v168;
    v107(v108, v168);
    v107(v105, v109);
    v110 = v180;
    sub_1000EB134();
    sub_1000E9884();
    (*(v181 + 8))(v110, v182);
    sub_1000EAB64();
    v111 = v177;
    sub_1000EAD44();
    sub_100002A10(&qword_10012EDA0, &unk_1000EECE0);
    sub_1000EAEA4();
    sub_1000EABC4();
    sub_1000E9FC4();
    v112 = v174;
    (*(v178 + 32))(v174, v111, v179);
    v113 = (v112 + *(v173 + 36));
    v114 = v223;
    *v113 = v222;
    v113[1] = v114;
    v113[2] = v224;
    v115 = v175;
    sub_1000068A4(v112, v175, &qword_10012EF38, &qword_1000EEE20);
    v115[*(v176 + 36)] = 1;
    sub_1000A501C();
    v116 = v172;
    sub_1000EA8F4();
    sub_100006850(v115, &qword_100134458, &qword_1000F7030);
    sub_1000068A4(v116, v197, &qword_100134460, &qword_1000F7038);
    v91 = 0;
  }

  v117 = v197;
  sub_1000028A0(v197, v91, 1, v190);
  sub_1000EABC4();
  sub_1000E9FC4();
  v193 = v227;
  v194 = v225;
  v189 = v230;
  v190 = v229;
  v204 = 1;
  v203 = v226;
  v202 = v228;
  v118 = type metadata accessor for DailyTemperatureForecastRowView(0);
  v119 = sub_1000A1C40(a1 + *(v118 + 20), a1, &DailyForecastViewModel.high.getter);
  v121 = v120;
  v123 = v122;
  sub_1000EA9C4();
  v124 = sub_1000EA784();
  v186 = v125;
  v187 = v124;
  v127 = v126;
  v188 = v128;

  sub_1000058EC(v119, v121, v123 & 1);

  sub_1000EABE4();
  sub_1000E9FC4();
  LODWORD(v185) = v127 & 1;
  v129 = v195;
  sub_1000068F4(v196, v195, &qword_100134478, &qword_1000F7068);
  v130 = v191;
  sub_1000068F4(v117, v191, &qword_100134468, &qword_1000F7040);
  v131 = v204;
  v132 = v203;
  LOBYTE(v119) = v202;
  v133 = v129;
  v134 = v192;
  sub_1000068F4(v133, v192, &qword_100134478, &qword_1000F7068);
  v135 = sub_100002A10(&qword_100134480, &unk_1000F7070);
  sub_1000068F4(v130, v134 + v135[12], &qword_100134468, &qword_1000F7040);
  v136 = v134 + v135[16];
  *v136 = 0;
  *(v136 + 8) = v131;
  v137 = v193;
  *(v136 + 16) = v194;
  *(v136 + 24) = v132;
  *(v136 + 32) = v137;
  *(v136 + 40) = v119;
  v138 = v189;
  *(v136 + 48) = v190;
  *(v136 + 56) = v138;
  v139 = v135[20];
  v141 = v186;
  v140 = v187;
  *&v205[0] = v187;
  *(&v205[0] + 1) = v186;
  v142 = v185;
  LOBYTE(v205[1]) = v185;
  *(&v205[1] + 1) = v201[0];
  DWORD1(v205[1]) = *(v201 + 3);
  v143 = v188;
  *(&v205[1] + 1) = v188;
  v205[4] = v200;
  v205[3] = v199;
  v205[2] = v198;
  memcpy((v134 + v139), v205, 0x50uLL);
  sub_1000068F4(v205, v206, &qword_10012EF70, &qword_1000EEE58);
  sub_100006850(v197, &qword_100134468, &qword_1000F7040);
  sub_100006850(v196, &qword_100134478, &qword_1000F7068);
  v206[0] = v140;
  v206[1] = v141;
  v207 = v142;
  *v208 = v201[0];
  *&v208[3] = *(v201 + 3);
  v209 = v143;
  v210 = v198;
  v211 = v199;
  v212 = v200;
  sub_100006850(v206, &qword_10012EF70, &qword_1000EEE58);
  sub_100006850(v130, &qword_100134468, &qword_1000F7040);
  return sub_100006850(v195, &qword_100134478, &qword_1000F7068);
}

uint64_t sub_1000A4B58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DailyTemperatureForecastRowView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A4BBC()
{
  v1 = type metadata accessor for DailyTemperatureForecastRowView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_1000EBC44();
  sub_1000069D0();
  (*(v3 + 8))(v2);
  v4 = type metadata accessor for DailyViewAttributes(0);

  v5 = *(v4 + 88);
  v6 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  if (!sub_100005B30(v2 + v5, 1, v6))
  {
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  v7 = *(v4 + 92);
  if (!sub_100005B30(v2 + v7, 1, v6))
  {
    (*(*(v6 - 8) + 8))(v2 + v7, v6);
  }

  v8 = v1[5];
  sub_1000EB214();
  sub_1000069D0();
  (*(v9 + 8))(v2 + v8);
  v10 = v1[8];
  sub_100002A10(&qword_10012EEB0, &qword_1000EFC90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000EBC34();
    sub_1000069D0();
    (*(v11 + 8))(v2 + v10);
  }

  else
  {
  }

  sub_100006530(*(v2 + v1[9]), *(v2 + v1[9] + 8));
  v12 = v1[10];
  sub_100002A10(&qword_10012EEA8, &unk_1000EED70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000EA3A4();
    sub_1000069D0();
    (*(v13 + 8))(v2 + v12);
  }

  else
  {
  }

  v14 = v1[11];
  sub_100002A10(&qword_10012EDA0, &unk_1000EECE0);
  sub_1000069D0();
  (*(v15 + 8))(v2 + v14);

  return _swift_deallocObject(v0);
}

uint64_t sub_1000A4ECC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DailyTemperatureForecastRowView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A4F30@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DailyTemperatureForecastRowView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000A2CB4(v4, a1);
}

uint64_t sub_1000A4FB0(uint64_t a1)
{
  sub_100002A10(&qword_100134408, &qword_1000F6F80);
  sub_1000069D0();
  (*(v2 + 8))(a1);
  return a1;
}

unint64_t sub_1000A501C()
{
  result = qword_100134488;
  if (!qword_100134488)
  {
    sub_100002ABC(&qword_100134458, &qword_1000F7030);
    sub_10000674C();
    sub_1000A50A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134488);
  }

  return result;
}

unint64_t sub_1000A50A8()
{
  result = qword_100134490;
  if (!qword_100134490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134490);
  }

  return result;
}

uint64_t sub_1000A5154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002A10(&qword_10012F140, &unk_1000EEF50);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for ForecastEntry(0);
    v8 = a1 + *(a3 + 20);
  }

  return sub_100005B30(v8, a2, v7);
}

uint64_t sub_1000A5210(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100002A10(&qword_10012F140, &unk_1000EEF50);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for ForecastEntry(0);
    v10 = a1 + *(a4 + 20);
  }

  return sub_1000028A0(v10, a2, a2, v9);
}

uint64_t type metadata accessor for LocationContentView(uint64_t a1)
{
  result = qword_100134510;
  if (!qword_100134510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000A5328@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000EA2C4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002A10(&qword_10012F230, &qword_1000EEFF0);
  sub_1000069E4();
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_10000EBC4(v2, &v14 - v9, &qword_10012F230, &qword_1000EEFF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000EBC44();
    sub_1000069E4();
    return (*(v11 + 32))(a1, v10);
  }

  else
  {
    sub_1000EC1A4();
    v13 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1000A5520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v29 = sub_100002A10(&qword_100134548, &qword_1000F7108);
  __chkstk_darwin(v29);
  v30 = &v25 - v3;
  v27 = sub_100002A10(&qword_100134550, &qword_1000F7110);
  __chkstk_darwin(v27);
  v5 = &v25 - v4;
  v28 = sub_100002A10(&qword_100134558, &qword_1000F7118);
  __chkstk_darwin(v28);
  v7 = &v25 - v6;
  v8 = sub_1000EB884();
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000EB3E4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000EBC44();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v25 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v25 - v19;
  v32 = a1;
  sub_1000A5328(&v25 - v19);
  v26 = v16;
  v21 = (*(v16 + 88))(v20, v15);
  if (v21 == enum case for WidgetFamily.accessoryCircular(_:) || v21 == enum case for WidgetFamily.accessoryRectangular(_:))
  {
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_1000EC3E4(61);
    v35._countAndFlagsBits = 0xD000000000000021;
    v35._object = 0x80000001000FB1A0;
    sub_1000EBF44(v35);
    v23 = v25;
    sub_1000A5328(v25);
    sub_1000A5C64(&qword_10012F208, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    v36._countAndFlagsBits = sub_1000EC5B4();
    sub_1000EBF44(v36);

    (*(v26 + 8))(v23, v15);
    v37._object = 0x80000001000FE5D0;
    v37._countAndFlagsBits = 0xD00000000000001ALL;
    sub_1000EBF44(v37);
  }

  else
  {
    if (v21 == enum case for WidgetFamily.accessoryInline(_:))
    {
      type metadata accessor for LocationContentView(0);
      sub_10003280C(v10);
      sub_1000EB3D4();
      (*(v12 + 16))(v5, v14, v11);
      swift_storeEnumTagMultiPayload();
      sub_1000A5C64(&qword_100134560, &type metadata accessor for LocationInlineContentView, &protocol conformance descriptor for LocationInlineContentView);
      sub_1000EA4A4();
      sub_10000EBC4(v7, v30, &qword_100134558, &qword_1000F7118);
      swift_storeEnumTagMultiPayload();
      sub_100002A10(&qword_100134568, &unk_1000F7120);
      sub_1000A5CAC();
      sub_1000A5D28();
      sub_1000EA4A4();
      sub_1000A5DE4(v7);
      return (*(v12 + 8))(v14, v11);
    }

    v33 = 0;
    v34 = 0xE000000000000000;
    sub_1000EC3E4(64);
    v38._countAndFlagsBits = 0xD000000000000022;
    v38._object = 0x80000001000FB150;
    sub_1000EBF44(v38);
    v24 = v25;
    sub_1000A5328(v25);
    sub_1000A5C64(&qword_10012F208, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    v39._countAndFlagsBits = sub_1000EC5B4();
    sub_1000EBF44(v39);

    (*(v26 + 8))(v24, v15);
    v40._countAndFlagsBits = 0xD00000000000001CLL;
    v40._object = 0x80000001000FB260;
    sub_1000EBF44(v40);
  }

  result = sub_1000EC464();
  __break(1u);
  return result;
}

uint64_t sub_1000A5C64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000A5CAC()
{
  result = qword_100134570;
  if (!qword_100134570)
  {
    sub_100002ABC(&qword_100134568, &unk_1000F7120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134570);
  }

  return result;
}

unint64_t sub_1000A5D28()
{
  result = qword_100134578;
  if (!qword_100134578)
  {
    sub_100002ABC(&qword_100134558, &qword_1000F7118);
    sub_1000A5C64(&qword_100134560, &type metadata accessor for LocationInlineContentView, &protocol conformance descriptor for LocationInlineContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134578);
  }

  return result;
}

uint64_t sub_1000A5DE4(uint64_t a1)
{
  v2 = sub_100002A10(&qword_100134558, &qword_1000F7118);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000A5E50()
{
  result = qword_100134580;
  if (!qword_100134580)
  {
    sub_100002ABC(&qword_100134588, &qword_1000F7130);
    sub_1000A5ED4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134580);
  }

  return result;
}

unint64_t sub_1000A5ED4()
{
  result = qword_100134590;
  if (!qword_100134590)
  {
    sub_100002ABC(&qword_100134598, &qword_1000F7138);
    sub_1000A5CAC();
    sub_1000A5D28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134590);
  }

  return result;
}

uint64_t sub_1000A5F74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AggregateWeatherViewModel(0);
  v5 = sub_100005B30(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A5FD0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for AggregateWeatherViewModel(0);

  return sub_1000028A0(a1, v5, a3, v6);
}

uint64_t type metadata accessor for AdaptiveConditionsComplicationDataStatus(uint64_t a1)
{
  result = qword_100134610;
  if (!qword_100134610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000A6090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002A10(&qword_10012F140, &unk_1000EEF50);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for ForecastEntry(0);
    v8 = a1 + *(a3 + 20);
  }

  return sub_100005B30(v8, a2, v7);
}

uint64_t sub_1000A614C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100002A10(&qword_10012F140, &unk_1000EEF50);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for ForecastEntry(0);
    v10 = a1 + *(a4 + 20);
  }

  return sub_1000028A0(v10, a2, a2, v9);
}

uint64_t type metadata accessor for AQIContentView(uint64_t a1)
{
  result = qword_100134698;
  if (!qword_100134698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000A6264@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000EA2C4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002A10(&qword_10012F230, &qword_1000EEFF0);
  sub_1000069E4();
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_10000EBC4(v2, &v14 - v9, &qword_10012F230, &qword_1000EEFF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000EBC44();
    sub_1000069E4();
    return (*(v11 + 32))(a1, v10);
  }

  else
  {
    sub_1000EC1A4();
    v13 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1000A645C@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v40 = sub_100002A10(&qword_1001346D0, &qword_1000F71D0);
  __chkstk_darwin(v40);
  v41 = &v34 - v1;
  v48 = sub_100002A10(&qword_1001346D8, &qword_1000F71D8);
  __chkstk_darwin(v48);
  v44 = &v34 - v2;
  v45 = sub_1000EB534();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v42 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_100002A10(&qword_1001346E0, &qword_1000F71E0);
  __chkstk_darwin(v47);
  v5 = &v34 - v4;
  v38 = sub_100002A10(&qword_1001346E8, &qword_1000F71E8);
  __chkstk_darwin(v38);
  v7 = &v34 - v6;
  v46 = sub_100002A10(&qword_1001346F0, &qword_1000F71F0);
  __chkstk_darwin(v46);
  v9 = &v34 - v8;
  v10 = sub_1000EB914();
  __chkstk_darwin(v10 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000EB714();
  v39 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000EBC44();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v35 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v34 - v20;
  sub_1000A6264(&v34 - v20);
  v36 = v17;
  v37 = v16;
  v22 = (*(v17 + 88))(v21, v16);
  if (v22 == enum case for WidgetFamily.accessoryCircular(_:))
  {
    type metadata accessor for AQIContentView(0);
    sub_100075790(v12);
    sub_1000EB704();
    v23 = v39;
    (*(v39 + 16))(v7, v15, v13);
    swift_storeEnumTagMultiPayload();
    sub_1000A6DE4(&qword_100134708, &type metadata accessor for AirQualityCircularContentView, &protocol conformance descriptor for AirQualityCircularContentView);
    sub_1000EA4A4();
    sub_10000EBC4(v9, v5, &qword_1001346F0, &qword_1000F71F0);
    swift_storeEnumTagMultiPayload();
    sub_1000A6D28();
    sub_1000A6E2C();
    sub_1000EA4A4();
    sub_100008E48(v9, &qword_1001346F0, &qword_1000F71F0);
    return (*(v23 + 8))(v15, v13);
  }

  if (v22 == enum case for WidgetFamily.accessoryRectangular(_:))
  {
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_1000EC3E4(56);
    v52._countAndFlagsBits = 0xD000000000000021;
    v52._object = 0x80000001000FB1A0;
    sub_1000EBF44(v52);
    v30 = v35;
    sub_1000A6264(v35);
    sub_1000A6DE4(&qword_10012F208, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    v31 = v37;
    v53._countAndFlagsBits = sub_1000EC5B4();
    sub_1000EBF44(v53);

    (*(v36 + 8))(v30, v31);
    v54._object = 0x80000001000FE620;
    v54._countAndFlagsBits = 0xD000000000000015;
    sub_1000EBF44(v54);
LABEL_9:
    result = sub_1000EC464();
    __break(1u);
    return result;
  }

  if (v22 != enum case for WidgetFamily.accessoryInline(_:))
  {
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_1000EC3E4(57);
    v55._countAndFlagsBits = 0xD000000000000022;
    v55._object = 0x80000001000FB150;
    sub_1000EBF44(v55);
    v32 = v35;
    sub_1000A6264(v35);
    sub_1000A6DE4(&qword_10012F208, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    v33 = v37;
    v56._countAndFlagsBits = sub_1000EC5B4();
    sub_1000EBF44(v56);

    (*(v36 + 8))(v32, v33);
    v57._object = 0x80000001000FE620;
    v57._countAndFlagsBits = 0xD000000000000015;
    sub_1000EBF44(v57);
    goto LABEL_9;
  }

  v25 = v5;
  type metadata accessor for AQIContentView(0);
  sub_100075790(v12);
  v26 = v42;
  sub_1000EB524();
  v27 = v43;
  v28 = v45;
  (*(v43 + 16))(v41, v26, v45);
  swift_storeEnumTagMultiPayload();
  sub_1000A6DE4(&qword_1001346F8, &type metadata accessor for AirQualityInlineContentView, &protocol conformance descriptor for AirQualityInlineContentView);
  v29 = v44;
  sub_1000EA4A4();
  sub_10000EBC4(v29, v25, &qword_1001346D8, &qword_1000F71D8);
  swift_storeEnumTagMultiPayload();
  sub_1000A6D28();
  sub_1000A6E2C();
  sub_1000EA4A4();
  sub_100008E48(v29, &qword_1001346D8, &qword_1000F71D8);
  return (*(v27 + 8))(v26, v28);
}

unint64_t sub_1000A6D28()
{
  result = qword_100134700;
  if (!qword_100134700)
  {
    sub_100002ABC(&qword_1001346F0, &qword_1000F71F0);
    sub_1000A6DE4(&qword_100134708, &type metadata accessor for AirQualityCircularContentView, &protocol conformance descriptor for AirQualityCircularContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134700);
  }

  return result;
}

uint64_t sub_1000A6DE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000A6E2C()
{
  result = qword_100134710;
  if (!qword_100134710)
  {
    sub_100002ABC(&qword_1001346D8, &qword_1000F71D8);
    sub_1000A6DE4(&qword_1001346F8, &type metadata accessor for AirQualityInlineContentView, &protocol conformance descriptor for AirQualityInlineContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134710);
  }

  return result;
}

unint64_t sub_1000A6EEC()
{
  result = qword_100134718;
  if (!qword_100134718)
  {
    sub_100002ABC(&qword_100134720, &qword_1000F71F8);
    sub_1000A6F70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134718);
  }

  return result;
}

unint64_t sub_1000A6F70()
{
  result = qword_100134728;
  if (!qword_100134728)
  {
    sub_100002ABC(&qword_100134730, &unk_1000F7200);
    sub_1000A6D28();
    sub_1000A6E2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134728);
  }

  return result;
}

uint64_t sub_1000A6FFC()
{
  v0 = sub_1000E9CE4();
  sub_1000090D4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100006A10();
  v6 = v5 - v4;
  sub_100002A10(&qword_1001347A8, &qword_1000F72C0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000F7210;
  v8 = sub_1000E9BD4();
  v9 = [objc_allocWithZone(v8) init];
  *(v7 + 56) = v8;
  *(v7 + 64) = &protocol witness table for FrameworkAssembly;
  *(v7 + 32) = v9;
  v10 = sub_1000E9944();
  sub_1000A8350(v10);
  v11 = sub_1000E9934();
  *(v7 + 96) = v10;
  *(v7 + 104) = sub_1000A82D0(&qword_1001347B0, &type metadata accessor for Assembly, &protocol conformance descriptor for Assembly);
  *(v7 + 72) = v11;
  v12 = sub_1000E9DC4();
  sub_1000A8350(v12);
  v13 = sub_1000E9DB4();
  *(v7 + 136) = v12;
  *(v7 + 144) = sub_1000A82D0(&qword_1001347B8, &type metadata accessor for Assembly, &protocol conformance descriptor for Assembly);
  *(v7 + 112) = v13;
  sub_100002A10(&qword_1001347C0, &qword_1000F72C8);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000EFAD0;
  v15 = type metadata accessor for WeatherWidgetAssembly();
  v16 = swift_allocObject();
  *(v14 + 56) = v15;
  *(v14 + 64) = sub_1000A82D0(&qword_1001347C8, type metadata accessor for WeatherWidgetAssembly, &unk_1000F4B18);
  *(v14 + 32) = v16;
  v17 = sub_1000E9B74();
  sub_1000A8350(v17);
  sub_1000E9B64();
  (*(v2 + 104))(v6, enum case for Container.Environment.normal(_:), v0);
  v18 = sub_1000E9D14();
  sub_1000A8350(v18);
  result = sub_1000E9CF4();
  qword_100145C38 = result;
  return result;
}

id sub_1000A72A4()
{
  v0 = objc_opt_self();

  return [v0 setSuppressEngagement:1];
}

double sub_1000A72E0@<D0>(uint64_t a1@<X8>)
{
  v84 = a1;
  v95 = sub_100002A10(&qword_100134740, &qword_1000F7278);
  sub_1000090D4();
  v98 = v1;
  __chkstk_darwin(v2);
  sub_10000D45C();
  v94 = v3;
  sub_10004B6F4();
  __chkstk_darwin(v4);
  v83 = &v76 - v5;
  v93 = sub_100002A10(&qword_100134748, &qword_1000F7280);
  sub_1000090D4();
  v97 = v6;
  __chkstk_darwin(v7);
  sub_10000D45C();
  v92 = v8;
  sub_10004B6F4();
  __chkstk_darwin(v9);
  v81 = &v76 - v10;
  v82 = sub_100002A10(&qword_100134750, &qword_1000F7288);
  sub_1000090D4();
  v96 = v11;
  __chkstk_darwin(v12);
  sub_10000D45C();
  v88 = v13;
  sub_10004B6F4();
  __chkstk_darwin(v14);
  v86 = &v76 - v15;
  v80 = sub_100002A10(&qword_100134758, &qword_1000F7290);
  sub_1000090D4();
  v91 = v16;
  __chkstk_darwin(v17);
  sub_10000D45C();
  v87 = v18;
  sub_10004B6F4();
  __chkstk_darwin(v19);
  v21 = &v76 - v20;
  sub_100002A10(&qword_100134760, &qword_1000F7298);
  sub_1000090D4();
  v89 = v23;
  v90 = v22;
  __chkstk_darwin(v22);
  sub_10000D45C();
  v85 = v24;
  sub_10004B6F4();
  __chkstk_darwin(v25);
  v27 = &v76 - v26;
  sub_1000E93C4();
  sub_1000090D4();
  v29 = v28;
  __chkstk_darwin(v30);
  sub_100006A10();
  v31 = *(v29 + 104);
  v32 = sub_1000A832C();
  v31(v32);
  v79 = sub_1000E93B4();
  v78 = v33;
  v34 = *(v29 + 8);
  v35 = sub_1000A8344();
  v34(v35);
  v36 = sub_1000A832C();
  v31(v36);
  v37 = sub_1000E93B4();
  v39 = v38;
  v40 = sub_1000A8344();
  v34(v40);
  v100 = v37;
  v101 = v39;
  sub_1000A816C();
  v77 = v27;
  sub_1000EA424();

  v41 = sub_1000A832C();
  v31(v41);
  v42 = sub_1000E93B4();
  v44 = v43;
  v45 = sub_1000A8344();
  v34(v45);
  v100 = v42;
  v101 = v44;
  sub_1000A81C0();
  v76 = v21;
  sub_1000EA424();

  v46 = sub_1000A832C();
  v31(v46);
  v47 = sub_1000E93B4();
  v49 = v48;
  v50 = sub_1000A8344();
  v34(v50);
  v100 = v47;
  v101 = v49;
  sub_1000A8214();
  v51 = v86;
  sub_1000EA424();

  v52 = v81;
  sub_1000A7A3C();
  v53 = v83;
  sub_1000A7D0C();
  v99[0] = v79;
  v99[1] = v78;
  v100 = v99;
  v54 = v85;
  (*(v89 + 16))(v85, v27, v90);
  v101 = v54;
  v55 = v87;
  v56 = v80;
  (*(v91 + 16))(v87, v21, v80);
  v102 = v55;
  v57 = v96;
  v58 = v88;
  v59 = v82;
  (*(v96 + 16))(v88, v51, v82);
  v103 = v58;
  v60 = v97;
  v61 = v92;
  v62 = v93;
  (*(v97 + 16))(v92, v52, v93);
  v104 = v61;
  v63 = v98;
  v64 = v94;
  v65 = v53;
  v66 = v53;
  v67 = v95;
  (*(v98 + 16))(v94, v65, v95);
  v105 = v64;
  sub_1000A7E68(&v100);
  v68 = *(v63 + 8);
  v98 = v63 + 8;
  v68(v66, v67);
  v69 = *(v60 + 8);
  v97 = v60 + 8;
  v69(v52, v62);
  v70 = *(v57 + 8);
  v96 = v57 + 8;
  v71 = v59;
  v70(v86, v59);
  v72 = *(v91 + 8);
  v72(v76, v56);
  v73 = v90;
  v74 = *(v89 + 8);
  v74(v77, v90);
  v68(v94, v95);
  v69(v92, v93);
  v70(v88, v71);
  v72(v87, v56);
  v74(v85, v73);

  return result;
}

double sub_1000A7A3C()
{
  v0 = sub_1000E93C4();
  sub_1000090D4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100006A10();
  v6 = v5 - v4;
  v7 = *(v2 + 104);
  v8 = sub_1000A8338();
  v7(v8);
  v9 = sub_1000E93B4();
  v11 = v10;
  v12 = *(v2 + 8);
  v12(v6, v0);
  v28[0] = v9;
  v28[1] = v11;
  v29[0] = v28;
  v13 = sub_1000A8338();
  v7(v13);
  sub_1000E93B4();
  v14 = sub_1000A8318();
  (v12)(v14);
  v27[0] = v9;
  v27[1] = v11;
  v29[1] = v27;
  v15 = sub_1000A8338();
  v7(v15);
  sub_1000E93B4();
  v16 = sub_1000A8318();
  (v12)(v16);
  v26[0] = v9;
  v26[1] = v11;
  v25[0] = 0xD000000000000026;
  v25[1] = 0x80000001000FE640;
  v29[2] = v26;
  v29[3] = v25;
  v24[0] = 0xD000000000000028;
  v24[1] = 0x80000001000FE670;
  v23[0] = 0xD000000000000029;
  v23[1] = 0x80000001000FE170;
  v29[4] = v24;
  v29[5] = v23;
  v17 = sub_1000A8338();
  v7(v17);
  sub_1000E93B4();
  v18 = sub_1000A8318();
  (v12)(v18);
  v22[0] = v9;
  v22[1] = v11;
  v21[0] = 0xD000000000000023;
  v21[1] = 0x80000001000FC710;
  v29[6] = v22;
  v29[7] = v21;
  v20[0] = 0xD000000000000022;
  v20[1] = 0x80000001000FE6A0;
  v29[8] = v20;
  sub_1000A7D58(v29);

  return result;
}

uint64_t sub_1000A7D0C()
{
  sub_100002A10(&qword_100134788, &qword_1000F72A8);

  return sub_1000E9FA4();
}

uint64_t sub_1000A7D58(void *a1)
{

  sub_100002A10(&qword_100134790, &qword_1000F72B0);
  return sub_1000E9FA4();
}

uint64_t sub_1000A7E68(void *a1)
{
  v2 = sub_100002A10(&qword_100134780, &qword_1000F72A0);
  v3 = __chkstk_darwin(v2);
  v5 = &v23 - v4;
  v6 = a1[1];
  v7 = *(*a1 + 8);
  *v5 = **a1;
  *(v5 + 1) = v7;
  v8 = *(v3 + 48);
  v9 = sub_100002A10(&qword_100134760, &qword_1000F7298);
  (*(*(v9 - 8) + 16))(&v5[v8], v6, v9);
  v10 = v2[16];
  v11 = a1[2];
  v12 = sub_100002A10(&qword_100134758, &qword_1000F7290);
  (*(*(v12 - 8) + 16))(&v5[v10], v11, v12);
  v13 = v2[20];
  v14 = a1[3];
  v15 = sub_100002A10(&qword_100134750, &qword_1000F7288);
  (*(*(v15 - 8) + 16))(&v5[v13], v14, v15);
  v16 = v2[24];
  v17 = a1[4];
  v18 = sub_100002A10(&qword_100134748, &qword_1000F7280);
  (*(*(v18 - 8) + 16))(&v5[v16], v17, v18);
  v19 = v2[28];
  v20 = a1[5];
  v21 = sub_100002A10(&qword_100134740, &qword_1000F7278);
  (*(*(v21 - 8) + 16))(&v5[v19], v20, v21);

  return sub_1000E9FA4();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000A80EC();
  sub_1000E9FB4();
  return 0;
}

unint64_t sub_1000A80EC()
{
  result = qword_100134738;
  if (!qword_100134738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134738);
  }

  return result;
}

unint64_t sub_1000A816C()
{
  result = qword_100134768;
  if (!qword_100134768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134768);
  }

  return result;
}

unint64_t sub_1000A81C0()
{
  result = qword_100134770;
  if (!qword_100134770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134770);
  }

  return result;
}

unint64_t sub_1000A8214()
{
  result = qword_100134778;
  if (!qword_100134778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134778);
  }

  return result;
}

unint64_t sub_1000A826C()
{
  result = qword_100134798;
  if (!qword_100134798)
  {
    sub_100002ABC(&qword_1001347A0, &qword_1000F72B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134798);
  }

  return result;
}

uint64_t sub_1000A82D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000A8350(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t getEnumTagSinglePayload for WeatherDataNeeds(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WeatherDataNeeds(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000A84BCLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000A84F8()
{
  result = qword_1001347D0;
  if (!qword_1001347D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001347D0);
  }

  return result;
}

void *sub_1000A854C(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v5 = sub_100002A10(&qword_10012F040, &unk_1000EEED0);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - v6;
  v25 = type metadata accessor for ForecastEntry(0);
  v8 = *(v25 - 8);
  v9 = __chkstk_darwin(v25);
  v23 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v22 = &v20 - v11;
  v12 = 0;
  v13 = *(a3 + 16);
  v24 = &_swiftEmptyArrayStorage;
  while (1)
  {
    if (v13 == v12)
    {
      return v24;
    }

    v26(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v12);
    if (v3)
    {
      break;
    }

    if (sub_100005B30(v7, 1, v25) == 1)
    {
      sub_100008E48(v7, &qword_10012F040, &unk_1000EEED0);
      ++v12;
    }

    else
    {
      v21 = type metadata accessor for ForecastEntry;
      sub_1000ACAE0();
      sub_1000ACAE0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000312F4();
        v24 = v16;
      }

      v14 = v24[2];
      v15 = (v14 + 1);
      if (v14 >= v24[3] >> 1)
      {
        v20 = v24[2];
        v21 = (v14 + 1);
        sub_1000312F4();
        v15 = v21;
        v24 = v17;
      }

      ++v12;
      v24[2] = v15;
      sub_1000ACAE0();
    }
  }

  v18 = v24;

  return v18;
}

void sub_1000A87FC()
{
  v0 = sub_1000E8524();
  sub_10004B338(v0, qword_100145C40);
  v1 = sub_100008CB8(v0, qword_100145C40);
  v2 = [objc_opt_self() defaultManager];
  v3 = [v2 URLsForDirectory:9 inDomains:1];

  v4 = sub_1000EBFF4();
  if (*(v4 + 16))
  {
    (*(*(v0 - 8) + 16))(v1, v4 + ((*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80)), v0);
  }

  else
  {
    __break(1u);
  }
}

void sub_1000A8908(char *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a1;
  v65[3] = a2;
  v67 = 0;
  v2 = sub_1000EBD14();
  v3 = sub_100009210(v2);
  __chkstk_darwin(v3);
  sub_100006A10();
  v65[2] = v5 - v4;
  v65[1] = type metadata accessor for ForecastEntry(0);
  sub_1000090D4();
  __chkstk_darwin(v6);
  sub_10000D45C();
  v76 = v7;
  sub_10004B6F4();
  __chkstk_darwin(v8);
  v10 = v65 - v9;
  v11 = sub_100002A10(&qword_100134878, &qword_1000F7378);
  sub_1000069E4();
  __chkstk_darwin(v12);
  v69 = (v65 - v13);
  v14 = sub_100002A10(&qword_100134880, &qword_1000F7380);
  v15 = sub_100009210(v14);
  __chkstk_darwin(v15);
  sub_10000D45C();
  v70 = v16;
  sub_10004B6F4();
  __chkstk_darwin(v17);
  v19 = v65 - v18;
  v20 = sub_100002A10(&qword_100130440, &qword_1000F0BE0);
  v21 = sub_100009210(v20);
  __chkstk_darwin(v21);
  v23 = v65 - v22;
  v24 = sub_1000E9A84();
  sub_1000090D4();
  i = v25;
  __chkstk_darwin(v26);
  sub_100006A10();
  v29 = v28 - v27;
  v74 = sub_1000E8604();
  sub_1000090D4();
  v68 = v30;
  __chkstk_darwin(v31);
  sub_10000D45C();
  v73 = v32;
  sub_10004B6F4();
  __chkstk_darwin(v33);
  v35 = v65 - v34;
  sub_1000E85F4();
  v66 = sub_1000A90D8();
  v36 = v35;
  v37 = sub_1000A9174();
  sub_10008F2B0();
  v38 = sub_100005B30(v23, 1, v24);
  v75 = v35;
  if (v38 == 1)
  {
    v71 = v37;
    sub_100008E48(v23, &qword_100130440, &qword_1000F0BE0);
    v39 = v66;
  }

  else
  {
    v40 = (*(i + 32))(v29, v23, v24);
    __chkstk_darwin(v40);
    v65[0] = v29;
    v65[-2] = v29;
    v65[-1] = v35;
    v41 = v67;
    v42 = sub_1000A854C(sub_1000AC86C, &v65[-4], v37);
    v43 = v42[2];
    v67 = v41;
    if (v43)
    {

      v71 = v42;
    }

    else
    {
      v71 = v37;
    }

    v39 = v66;
    (*(i + 8))(v65[0], v24);
    v36 = v75;
  }

  v44 = 0;
  v45 = v70;
  v46 = v71[2];
  v47 = (v68 + 40);
  v48 = &_swiftEmptyArrayStorage;
  for (i = v46; ; v46 = i)
  {
    if (v44 == v46)
    {
      v49 = 1;
      v44 = v46;
    }

    else
    {
      if ((v44 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (v44 >= v71[2])
      {
        goto LABEL_25;
      }

      sub_10003279C();
      *v69 = v44;
      sub_1000ACDEC();
      sub_1000ACA30();
      v45 = v70;
      sub_10008DA20();
      v49 = 0;
      ++v44;
    }

    sub_1000028A0(v45, v49, 1, v11);
    sub_10008DA20();
    if (sub_100005B30(v19, 1, v11) == 1)
    {
      break;
    }

    sub_1000ACE18();
    sub_1000ACAE0();
    v50 = v73;
    sub_1000E8554();
    (*v47)(v10, v50, v74);
    sub_1000ACDEC();
    sub_1000ACA30();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000312F4();
      v48 = v51;
    }

    v39 = v48[2];
    if (v39 >= v48[3] >> 1)
    {
      sub_1000312F4();
      v48 = v52;
    }

    v48[2] = v39 + 1;
    sub_10003279C();
    sub_1000ACAE0();
    sub_1000ACA88(v10, type metadata accessor for ForecastEntry);
    v36 = v75;
  }

  v39 = v36;

  if (qword_10012EB10 == -1)
  {
    goto LABEL_20;
  }

LABEL_26:
  sub_1000ACE04();
  swift_once();
LABEL_20:
  v53 = sub_1000E9F64();
  sub_100008CB8(v53, qword_100145B98);
  v54 = sub_1000E9F44();
  v55 = sub_1000EC1B4();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v77 = v57;
    *v56 = 136315138;

    v58 = sub_1000EC004();
    v60 = v59;

    v61 = sub_1000E2E18(v58, v60, &v77);

    *(v56 + 4) = v61;
    _os_log_impl(&_mh_execute_header, v54, v55, "Returning entries:%s", v56, 0xCu);
    sub_100009068(v57);
    v62 = v75;
    sub_100009194(v57);
    sub_100009194(v56);
  }

  else
  {

    v62 = v39;
  }

  sub_1000EBCF4();
  sub_1000ACE48();
  sub_1000ACDA4(v63, v64, &unk_1000EF040);
  sub_1000EBDA4();
  (*(v68 + 8))(v62, v74);
}

id sub_1000A90D8()
{
  objc_allocWithZone(NSUserDefaults);

  v0 = sub_100019AC0();
  result = sub_1000AC808(v0, v1, v2);
  if (result)
  {
    v4 = result;
    v5 = sub_1000EBE64();
    v6 = [v4 integerForKey:v5];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1000A9174()
{
  v0 = sub_100002A10(&qword_10012F040, &unk_1000EEED0);
  __chkstk_darwin(v0 - 8);
  v87 = &v79 - v1;
  v2 = type metadata accessor for ForecastEntry(0);
  v82 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v83 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v86 = &v79 - v5;
  v94 = sub_1000EBED4();
  v96 = *(v94 - 8);
  __chkstk_darwin(v94);
  v93 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000E8524();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v97 = &v79 - v13;
  v14 = __chkstk_darwin(v12);
  v102 = &v79 - v15;
  __chkstk_darwin(v14);
  v17 = &v79 - v16;
  if (qword_10012EB48 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    sub_100008CB8(v7, qword_100145C40);
    sub_1000E84F4();
    v18 = [objc_opt_self() defaultManager];
    sub_1000E84E4(v19);
    v21 = v20;
    v103 = 0;
    v22 = [v18 contentsOfDirectoryAtURL:v20 includingPropertiesForKeys:0 options:0 error:&v103];

    v23 = v103;
    if (!v22)
    {
      break;
    }

    v24 = sub_1000EBFF4();
    v25 = v23;

    if (qword_10012EB10 != -1)
    {
      swift_once();
    }

    v26 = sub_1000E9F64();
    v27 = sub_100008CB8(v26, qword_100145B98);

    v99 = v27;
    v28 = sub_1000E9F44();
    v29 = sub_1000EC1B4();

    v30 = os_log_type_enabled(v28, v29);
    v100 = v7;
    v95 = v8;
    v80 = v17;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v103 = v32;
      *v31 = 136315138;
      v33 = sub_1000EC004();
      v35 = sub_1000E2E18(v33, v34, &v103);
      v8 = v95;

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v28, v29, "Found Content:%s", v31, 0xCu);
      sub_100009068(v32);
      v7 = v100;
    }

    v37 = v97;
    v91 = *(v24 + 16);
    if (!v91)
    {

      v71 = *(v8 + 8);
      v88 = &_swiftEmptyArrayStorage;
      v71(v80, v7);
      return v88;
    }

    v81 = v11;
    v84 = v2;
    v2 = 0;
    v11 = 0;
    v38 = *(v8 + 80);
    v92 = v24;
    v90 = v24 + ((v38 + 32) & ~v38);
    v98 = v8 + 16;
    v101 = (v8 + 8);
    v89 = (v96 + 1);
    v88 = &_swiftEmptyArrayStorage;
    *&v36 = 136315138;
    v85 = v36;
    v39 = v87;
    while (1)
    {
      v17 = v92;
      if (v2 >= *(v92 + 2))
      {
        break;
      }

      v40 = *(v8 + 16);
      v41 = v102;
      v40(v102, v90 + *(v8 + 72) * v2, v7);
      v96 = v40;
      v40(v37, v41, v7);
      v42 = sub_1000E9F44();
      v43 = sub_1000EC1B4();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = v37;
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v103 = v46;
        *v45 = v85;
        sub_1000ACDA4(&qword_1001348A0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v47 = sub_1000EC5B4();
        v49 = v48;
        v50 = v44;
        v51 = *v101;
        (*v101)(v50, v100);
        v52 = sub_1000E2E18(v47, v49, &v103);
        v7 = v100;

        *(v45 + 4) = v52;
        _os_log_impl(&_mh_execute_header, v42, v43, "Found URL:%s", v45, 0xCu);
        sub_100009068(v46);
        v8 = v95;
        v39 = v87;
      }

      else
      {

        v51 = *v101;
        (*v101)(v37, v7);
      }

      sub_1000E8504();
      sub_1000EBE34();

      v53 = v93;
      sub_1000EBEC4();
      v54 = sub_1000EBE94();
      v56 = v55;

      (*v89)(v53, v94);
      if (v56 >> 60 == 15)
      {
        v51(v102, v7);
      }

      else
      {
        sub_1000E8284();
        swift_allocObject();
        sub_1000E8274();
        sub_1000ACDA4(&qword_100134898, type metadata accessor for ForecastEntry, &unk_1000EF1D0);
        v57 = v84;
        sub_1000E8264();

        sub_1000028A0(v39, 0, 1, v57);
        sub_1000ACAE0();
        v58 = v81;
        (v96)(v81, v102, v7);
        v59 = sub_1000E9F44();
        v60 = sub_1000EC1B4();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v79 = v61;
          v96 = swift_slowAlloc();
          v103 = v96;
          *v61 = v85;
          sub_1000ACDA4(&qword_1001348A0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v62 = sub_1000EC5B4();
          v64 = v63;
          v51(v58, v100);
          v65 = sub_1000E2E18(v62, v64, &v103);
          v7 = v100;

          v66 = v79;
          *(v79 + 1) = v65;
          _os_log_impl(&_mh_execute_header, v59, v60, "Succeeded decoding:%s", v66, 0xCu);
          sub_100009068(v96);
        }

        else
        {

          v51(v58, v7);
        }

        v8 = v95;
        sub_1000ACA30();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000312F4();
          v88 = v68;
        }

        v67 = v88[2];
        if (v67 >= v88[3] >> 1)
        {
          sub_1000312F4();
          v88 = v69;
        }

        sub_1000ACD38(v54, v56);
        sub_1000ACA88(v86, type metadata accessor for ForecastEntry);
        v51(v102, v7);
        v88[2] = v67 + 1;
        sub_1000ACAE0();
        v39 = v87;
      }

      ++v2;
      v37 = v97;
      if (v91 == v2)
      {

        v51(v80, v7);
        return v88;
      }
    }

    __break(1u);
LABEL_35:
    swift_once();
  }

  v70 = v103;
  sub_1000E8494();

  swift_willThrow();
  (*(v8 + 8))(v17, v7);
  if (qword_10012EB10 != -1)
  {
    swift_once();
  }

  v72 = sub_1000E9F64();
  sub_100008CB8(v72, qword_100145B98);
  swift_errorRetain();
  v73 = sub_1000E9F44();
  v74 = sub_1000EC194();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *v75 = 138543362;
    swift_errorRetain();
    v77 = _swift_stdlib_bridgeErrorToNSError();
    *(v75 + 4) = v77;
    *v76 = v77;
    _os_log_impl(&_mh_execute_header, v73, v74, "WidgetDemo failed to decode entries. error=%{public}@", v75, 0xCu);
    sub_100008E48(v76, &qword_1001325D0, &unk_1000F3D80);
  }

  else
  {
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_1000A9EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a3;
  v38 = a2;
  v40 = a4;
  v5 = type metadata accessor for WeatherDataViewModel(0);
  __chkstk_darwin(v5);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000E95E4();
  v36 = *(v7 - 8);
  v37 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for ForecastEntry.Model(0);
  __chkstk_darwin(v13);
  v14 = sub_100002A10(&qword_10012F038, &qword_1000F0F90);
  __chkstk_darwin(v14 - 8);
  v16 = &v33 - v15;
  v17 = type metadata accessor for AggregateWeatherViewModel(0);
  __chkstk_darwin(v17);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for ForecastEntry(0);
  v35 = a1;
  sub_1000ACA30();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000ACAE0();
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  sub_1000028A0(v16, v20, 1, v5);
  if (sub_100005B30(v16, 1, v5) == 1)
  {
    sub_100008E48(v16, &qword_10012F038, &qword_1000F0F90);
LABEL_12:
    v31 = 1;
    v30 = v39;
    v29 = v40;
    return sub_1000028A0(v29, v31, 1, v30);
  }

  if (swift_getEnumCaseMultiPayload())
  {
    v21 = type metadata accessor for WeatherDataViewModel;
    v22 = v16;
LABEL_11:
    sub_1000ACA88(v22, v21);
    goto LABEL_12;
  }

  sub_1000ACAE0();
  sub_1000E99B4();
  sub_1000E95F4();
  sub_1000E99B4();
  sub_1000E95F4();
  v23 = sub_1000E95C4();
  v24 = v37;
  v25 = *(v36 + 8);
  v25(v10, v37);
  v25(v12, v24);
  if ((v23 & 1) == 0)
  {
    v21 = type metadata accessor for AggregateWeatherViewModel;
    v22 = v19;
    goto LABEL_11;
  }

  v26 = v35;
  sub_1000E8544();
  sub_1000AA3CC(v34, v27);
  sub_1000ACA88(v19, type metadata accessor for AggregateWeatherViewModel);
  swift_storeEnumTagMultiPayload();
  v28 = sub_1000E8604();
  v29 = v40;
  (*(*(v28 - 8) + 16))(v40, v26, v28);
  v30 = v39;
  sub_10008F2B0();
  sub_1000ACA30();
  sub_1000ACAE0();
  swift_storeEnumTagMultiPayload();
  v31 = 0;
  return sub_1000028A0(v29, v31, 1, v30);
}

uint64_t sub_1000AA3CC@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  v97 = a1;
  v5 = type metadata accessor for EventViewModel(0);
  v85 = *(v5 - 8);
  v6 = __chkstk_darwin(v5 - 8);
  v108 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v96 = &v84 - v8;
  v9 = sub_1000EB214();
  v10 = *(v9 - 8);
  v109 = v9;
  v110 = v10;
  v11 = __chkstk_darwin(v9);
  v107 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v86 = &v84 - v13;
  v14 = sub_100002A10(&qword_1001309D8, &qword_1000F10F0);
  __chkstk_darwin(v14 - 8);
  v101 = &v84 - v15;
  v16 = sub_100002A10(&qword_100130EE0, &qword_1000F1690);
  __chkstk_darwin(v16 - 8);
  v100 = &v84 - v17;
  v18 = sub_1000EB814();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v106 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v84 = &v84 - v22;
  v23 = sub_1000EB674();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000E9A84();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1000E8634();
  __chkstk_darwin(v31);
  v88 = v33;
  v34 = *(v33 + 16);
  v87 = &v84 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v35;
  v34();
  v36 = type metadata accessor for AggregateWeatherViewModel(0);
  v37 = v36[5];
  v91 = v28;
  v38 = *(v28 + 16);
  v90 = v30;
  v92 = v27;
  v38(v30, v3 + v37, v27);
  v39 = v36[6];
  v94 = v24;
  v40 = *(v24 + 16);
  v93 = v26;
  v95 = v23;
  v40(v26, v3 + v39, v23);
  v41 = *(v3 + v36[7]);
  v42 = *(v41 + 16);
  v98 = v36;
  v99 = v3;
  if (v42)
  {
    v111 = &_swiftEmptyArrayStorage;
    sub_1000AC8D0(0, v42, 0);
    v43 = v19;
    v44 = v111;
    v45 = *(v43 + 16);
    v43 += 16;
    v104 = ((*(v43 + 64) + 32) & ~*(v43 + 64));
    v105 = v45;
    v46 = &v104[v41];
    v47 = *(v43 + 56);
    v102 = (v43 - 8);
    v103 = v47;
    v48 = (v43 + 16);
    v49 = v43;
    v50 = v84;
    do
    {
      v51 = v106;
      v52 = v49;
      v105(v106, v46, v18);
      sub_1000AB894(v50);
      (*v102)(v51, v18);
      v111 = v44;
      v54 = v44[2];
      v53 = v44[3];
      if (v54 >= v53 >> 1)
      {
        sub_1000AC8D0((v53 > 1), v54 + 1, 1);
        v44 = v111;
      }

      v44[2] = v54 + 1;
      v55 = v103;
      (*v48)(&v104[v44 + v54 * v103], v50, v18);
      v46 += v55;
      --v42;
      v49 = v52;
    }

    while (v42);
    v104 = v44;
    v36 = v98;
    v3 = v99;
  }

  else
  {
    v104 = &_swiftEmptyArrayStorage;
  }

  v56 = *(v3 + v36[8]);
  v57 = *(v56 + 16);
  v58 = &_swiftEmptyArrayStorage;
  v59 = v86;
  if (v57)
  {
    v111 = &_swiftEmptyArrayStorage;
    sub_1000AC928(0, v57, 0);
    v58 = v111;
    v60 = *(v110 + 16);
    v105 = ((*(v110 + 80) + 32) & ~*(v110 + 80));
    v106 = v60;
    v61 = v105 + v56;
    v62 = *(v110 + 72);
    v63 = (v110 + 8);
    v110 += 16;
    v64 = (v110 + 16);
    v65 = v109;
    do
    {
      v66 = v107;
      (v106)(v107, v61, v65);
      sub_1000ABBB0(v59);
      v65 = v109;
      (*v63)(v66, v109);
      v111 = v58;
      v68 = v58[2];
      v67 = v58[3];
      if (v68 >= v67 >> 1)
      {
        sub_1000AC928((v67 > 1), v68 + 1, 1);
        v65 = v109;
        v58 = v111;
      }

      v58[2] = v68 + 1;
      (*v64)(v105 + v58 + v68 * v62, v59, v65);
      v61 += v62;
      --v57;
    }

    while (v57);
    v36 = v98;
    v3 = v99;
  }

  sub_10008F2B0();
  sub_10008F2B0();
  v69 = *(v3 + v36[11]);
  v70 = *(v69 + 16);
  v71 = &_swiftEmptyArrayStorage;
  v72 = v96;
  if (v70)
  {
    v111 = &_swiftEmptyArrayStorage;
    sub_1000AC9D8(0, v70, 0);
    v71 = v111;
    v73 = v69 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
    v74 = *(v85 + 72);
    do
    {
      v75 = v108;
      sub_1000ACA30();
      sub_1000AC028(v72, a2);
      sub_1000ACA88(v75, type metadata accessor for EventViewModel);
      v111 = v71;
      v77 = v71[2];
      v76 = v71[3];
      if (v77 >= v76 >> 1)
      {
        sub_1000AC9D8((v76 > 1), v77 + 1, 1);
        v71 = v111;
      }

      v71[2] = v77 + 1;
      sub_1000ACAE0();
      v73 += v74;
      --v70;
    }

    while (v70);
    v36 = v98;
    v3 = v99;
  }

  v78 = v3 + v36[12];
  v111 = *v78;
  v112 = *(v78 + 8);
  v79 = v97;
  sub_10008F2B0();
  v80 = v36[14];
  v81 = type metadata accessor for AggregateWeatherViewModel.SunEvent(0);
  sub_1000028A0(v79 + v80, 1, 1, v81);
  (*(v88 + 32))(v79, v87, v89);
  (*(v91 + 32))(v79 + v36[5], v90, v92);
  (*(v94 + 32))(v79 + v36[6], v93, v95);
  *(v79 + v36[7]) = v104;
  *(v79 + v36[8]) = v58;
  sub_10008DA20();
  result = sub_10008DA20();
  *(v79 + v36[11]) = v71;
  v83 = v79 + v36[12];
  *v83 = v111;
  *(v83 + 8) = v112;
  return result;
}

uint64_t sub_1000AADB4(uint64_t a1, void *a2, uint64_t a3)
{
  v103 = a3;
  v104 = a2;
  v96 = a1;
  v91 = sub_1000EBED4();
  sub_1000090D4();
  v4 = v3;
  v6 = __chkstk_darwin(v5);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v92 = &v81 - v9;
  v10 = sub_1000E8524();
  sub_1000090D4();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_10000D45C();
  v84 = v14;
  sub_10004B6F4();
  __chkstk_darwin(v15);
  v88 = &v81 - v16;
  sub_10004B6F4();
  __chkstk_darwin(v17);
  v19 = &v81 - v18;
  v102 = type metadata accessor for ForecastEntry(0);
  sub_1000090D4();
  v95 = v20;
  __chkstk_darwin(v21);
  sub_100006A10();
  v24 = v23 - v22;
  v25 = sub_100002A10(&qword_100134878, &qword_1000F7378);
  sub_1000069E4();
  __chkstk_darwin(v26);
  v94 = &v81 - v27;
  v28 = sub_100002A10(&qword_100134880, &qword_1000F7380);
  v29 = sub_100009210(v28);
  __chkstk_darwin(v29);
  sub_10000D45C();
  v105 = v30;
  sub_10004B6F4();
  __chkstk_darwin(v31);
  v33 = &v81 - v32;
  result = sub_1000AB700();
  if ((result & 1) == 0)
  {
    return result;
  }

  v36 = v33;
  v101 = v8;
  v37 = 0;
  v108 = 0;
  v38 = *(v96 + 16);
  v90 = v4 + 8;
  v97 = (v12 + 8);
  v87 = (v12 + 16);
  *&v35 = 136446210;
  v83 = v35;
  *&v35 = 138543362;
  v93 = v35;
  v39 = v105;
  v106 = v33;
  v99 = v25;
  v100 = v24;
  v98 = v38;
  v82 = v19;
  while (1)
  {
    if (v37 == v38)
    {
      v40 = 1;
      v107 = v38;
      goto LABEL_8;
    }

    if (v37 >= v38)
    {
      break;
    }

    v41 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      goto LABEL_28;
    }

    v42 = v94;
    sub_10003279C();
    *v42 = v43;
    sub_1000ACDEC();
    sub_1000ACA30();
    v36 = v106;
    sub_10008DA20();
    v40 = 0;
    v107 = v41;
LABEL_8:
    sub_1000028A0(v39, v40, 1, v25);
    sub_10008DA20();
    result = sub_100005B30(v36, 1, v25);
    if (result == 1)
    {
      return result;
    }

    v44 = *v36;
    sub_1000ACE18();
    sub_1000ACAE0();
    if (qword_10012EB48 != -1)
    {
      swift_once();
    }

    v45 = v10;
    sub_100008CB8(v10, qword_100145C40);
    v110 = v104;
    v111 = v103;

    v112._countAndFlagsBits = 95;
    v112._object = 0xE100000000000000;
    sub_1000EBF44(v112);
    v109 = v44;
    v113._countAndFlagsBits = sub_1000EC5B4();
    sub_1000EBF44(v113);

    v114._countAndFlagsBits = 0x6E6F736A2ELL;
    v114._object = 0xE500000000000000;
    sub_1000EBF44(v114);
    sub_1000E84F4();

    sub_1000E82B4();
    swift_allocObject();
    sub_1000E82A4();
    sub_1000ACE48();
    sub_1000ACDA4(&qword_1001348B8, v46, &unk_1000EF1A8);
    v47 = v108;
    v48 = sub_1000E8294();
    if (v47)
    {

      v108 = 0;
      if (qword_10012EB10 != -1)
      {
        sub_1000ACE04();
        swift_once();
      }

      v53 = sub_1000E9F64();
      sub_100008CB8(v53, qword_100145B98);
      swift_errorRetain();
      v54 = sub_1000E9F44();
      v55 = sub_1000EC194();

      v56 = os_log_type_enabled(v54, v55);
      v25 = v99;
      v57 = v100;
      if (v56)
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v58 = v93;
        swift_errorRetain();
        v60 = _swift_stdlib_bridgeErrorToNSError();
        *(v58 + 4) = v60;
        *v59 = v60;
        _os_log_impl(&_mh_execute_header, v54, v55, "Failed writing entry to disk. error=%{public}@", v58, 0xCu);
        sub_100008E48(v59, &qword_1001325D0, &unk_1000F3D80);
        sub_100009194(v59);
        sub_100009194(v58);
      }

      (*v97)(v19, v10);
      sub_1000ACE30();
      result = sub_1000ACA88(v57, v61);
    }

    else
    {
      v50 = v48;
      v51 = v49;
      sub_1000EBEC4();
      result = sub_1000EBEA4();
      if (!v52)
      {
        goto LABEL_29;
      }

      v110 = result;
      v111 = v52;
      sub_1000EBEC4();
      sub_100005898();
      sub_1000EC3A4();
      v89 = v51;
      v108 = 0;
      v62 = sub_1000ACE78();
      v63(v62);

      if (qword_10012EB10 != -1)
      {
        sub_1000ACE04();
        swift_once();
      }

      v64 = sub_1000E9F64();
      sub_100008CB8(v64, qword_100145B98);
      v65 = *v87;
      v66 = v88;
      v67 = v10;
      (*v87)(v88, v19, v10);
      v68 = sub_1000E9F44();
      v69 = sub_1000EC1B4();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = v66;
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v110 = v72;
        *v71 = v83;
        v86 = v68;
        v85 = v69;
        v65(v84, v70, v67);
        v73 = sub_1000EBEF4();
        v75 = v74;
        v76 = *v97;
        (*v97)(v70, v67);
        v77 = sub_1000E2E18(v73, v75, &v110);

        *(v71 + 4) = v77;
        v78 = v86;
        _os_log_impl(&_mh_execute_header, v86, v85, "Demo entries to disk: %{public}s.", v71, 0xCu);
        sub_100009068(v72);
        sub_100009194(v72);
        sub_100009194(v71);
        sub_1000ACD4C(v50, v89);

        v19 = v82;
        v76(v82, v67);
      }

      else
      {
        sub_1000ACD4C(v50, v89);

        v79 = *v97;
        (*v97)(v66, v45);
        v79(v19, v45);
      }

      sub_1000ACE30();
      result = sub_1000ACA88(v100, v80);
      v10 = v67;
      v25 = v99;
    }

    v39 = v105;
    v36 = v106;
    v38 = v98;
    v37 = v107;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

id sub_1000AB700()
{
  objc_allocWithZone(NSUserDefaults);

  v0 = sub_100019AC0();
  result = sub_1000AC808(v0, v1, v2);
  if (result)
  {
    v4 = result;
    v5 = sub_1000EBE64();
    v6 = [v4 BOOLForKey:v5];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000AB79C()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

id sub_1000AB7F8()
{
  objc_allocWithZone(NSUserDefaults);

  v0 = sub_100019AC0();
  result = sub_1000AC808(v0, v1, v2);
  if (result)
  {
    v4 = result;
    v5 = sub_1000EBE64();
    v6 = [v4 BOOLForKey:v5];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000AB894@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = sub_1000E9134();
  __chkstk_darwin(v2 - 8);
  v39 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000E8E24();
  __chkstk_darwin(v4 - 8);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000EAFC4();
  __chkstk_darwin(v6 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  __chkstk_darwin(v9 - 8);
  v37 = &v33 - v10;
  v11 = sub_1000E8604();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v33 - v16;
  v18 = sub_1000E8634();
  __chkstk_darwin(v18 - 8);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EB7C4();
  sub_1000EB7E4();
  sub_1000E8554();
  (*(v12 + 8))(v15, v11);
  sub_1000EB764();
  v21 = sub_1000EB754();
  v35 = v22;
  v36 = v21;
  v34 = sub_1000EB7A4();
  v24 = v23;
  v25 = v8;
  sub_1000EB804();
  sub_1000EB784();
  v27 = v26;
  v28 = sub_1000EB794();
  v30 = v29;
  v31 = v38;
  sub_1000EB774();
  sub_1000EB7F4();
  return sub_1000EB7D4(v20, v17, v37, v36, v35, v34, v24, v25, v27, v28, v30, v31);
}

uint64_t sub_1000ABBB0@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v2 = sub_1000E9184();
  __chkstk_darwin(v2 - 8);
  v55 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002A10(&qword_10012F138, &qword_1000EEF48);
  __chkstk_darwin(v4 - 8);
  v54 = &v41 - v5;
  v6 = sub_100002A10(&qword_100134890, &qword_1000F7388);
  __chkstk_darwin(v6 - 8);
  v53 = &v41 - v7;
  v8 = sub_1000E9894();
  __chkstk_darwin(v8 - 8);
  v52 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000E8E24();
  __chkstk_darwin(v10 - 8);
  v46 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000EAFC4();
  __chkstk_darwin(v12 - 8);
  v47 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  v15 = __chkstk_darwin(v14 - 8);
  v48 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v49 = &v41 - v17;
  v18 = sub_1000E8604();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v51 = &v41 - v23;
  v24 = sub_1000E8634();
  __chkstk_darwin(v24 - 8);
  v50 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EB174();
  sub_1000EB1A4();
  sub_1000E8554();
  (*(v19 + 8))(v22, v18);
  sub_1000EB1B4();
  sub_1000EB194();
  sub_1000EB1E4();
  sub_1000EB0F4();
  sub_1000EB114();
  v27 = v26;
  v28 = sub_1000EB154();
  v44 = v29;
  v45 = v28;
  v30 = sub_1000EB124();
  v42 = v31;
  v43 = v30;
  v32 = sub_1000EB1F4();
  v34 = v33;
  v35 = sub_1000EB104();
  v37 = v36;
  v38 = v52;
  sub_1000EB134();
  sub_1000EB204();
  sub_1000EB0E4();
  sub_1000EB1C4();
  sub_1000EB1D4();
  return sub_1000EB184(v50, v51, v49, v48, v47, v46, v45, v44, v27, v39, v43, v42, v32, v34, v35, v37, v38);
}

uint64_t sub_1000AC028@<X0>(_BYTE *a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  v6 = sub_100002A10(&qword_10012F6F8, &qword_1000EFCB0);
  v7 = __chkstk_darwin(v6 - 8);
  v59 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v62 = &v52 - v9;
  v10 = sub_1000E8604();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v64 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v63 = &v52 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v52 - v20;
  __chkstk_darwin(v19);
  v23 = &v52 - v22;
  v24 = *v3;
  v57 = v3[1];
  v58 = v24;
  v25 = type metadata accessor for EventViewModel(0);
  sub_10008F2B0();
  if (sub_100005B30(v21, 1, v10) == 1)
  {
    sub_100008E48(v21, &qword_10012F048, &qword_1000EEF30);
    v26 = 1;
  }

  else
  {
    sub_1000E8554();
    (*(v11 + 8))(v21, v10);
    v26 = 0;
  }

  v60 = v23;
  sub_1000028A0(v23, v26, 1, v10);
  sub_10008F2B0();
  v27 = sub_100005B30(v16, 1, v10);
  v28 = v63;
  v29 = v59;
  v61 = v11;
  if (v27 == 1)
  {
    sub_100008E48(v16, &qword_10012F048, &qword_1000EEF30);
    v30 = 1;
  }

  else
  {
    sub_1000E8554();
    (*(v11 + 8))(v16, v10);
    v30 = 0;
  }

  sub_1000028A0(v28, v30, 1, v10);
  sub_1000E8554();
  v31 = &v3[v25[9]];
  v32 = *v31;
  v33 = *(v31 + 1);
  v34 = &v3[v25[10]];
  v35 = *v34;
  v36 = *(v34 + 1);
  v54 = v32;
  v55 = v35;
  v37 = v25[12];
  v38 = &v3[v25[11]];
  v39 = *(v38 + 1);
  v53 = *v38;
  v40 = *&v3[v37];
  sub_10008F2B0();
  v41 = sub_1000E8F24();
  v42 = sub_100005B30(v29, 1, v41);

  v56 = v36;

  if (v42 == 1)
  {
    sub_100008E48(v29, &qword_10012F6F8, &qword_1000EFCB0);
    v43 = 1;
    v44 = v62;
  }

  else
  {
    v44 = v62;
    sub_1000AC568(a2);
    (*(*(v41 - 8) + 8))(v29, v41);
    v43 = 0;
  }

  sub_1000028A0(v44, v43, 1, v41);
  v45 = v57;
  *a1 = v58;
  a1[1] = v45;
  sub_10008DA20();
  sub_10008DA20();
  (*(v61 + 32))(&a1[v25[8]], v64, v10);
  v46 = &a1[v25[9]];
  v47 = v55;
  *v46 = v54;
  v46[1] = v33;
  v48 = &a1[v25[10]];
  v49 = v56;
  *v48 = v47;
  v48[1] = v49;
  v50 = &a1[v25[11]];
  *v50 = v53;
  v50[1] = v39;
  *&a1[v25[12]] = v40;
  return sub_10008DA20();
}

uint64_t sub_1000AC568(double a1)
{
  v1 = sub_1000E8ED4();
  __chkstk_darwin(v1 - 8);
  v2 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v18 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v18 - v10;
  __chkstk_darwin(v9);
  v13 = &v18 - v12;
  sub_1000E8EE4();
  v14 = sub_1000E8604();
  if (sub_100005B30(v11, 1, v14) == 1)
  {
    sub_100008E48(v11, &qword_10012F048, &qword_1000EEF30);
    v15 = 1;
  }

  else
  {
    sub_1000E8554();
    (*(*(v14 - 8) + 8))(v11, v14);
    v15 = 0;
  }

  sub_1000028A0(v13, v15, 1, v14);
  sub_1000E8F14();
  if (sub_100005B30(v5, 1, v14) == 1)
  {
    sub_100008E48(v5, &qword_10012F048, &qword_1000EEF30);
    v16 = 1;
  }

  else
  {
    sub_1000E8554();
    (*(*(v14 - 8) + 8))(v5, v14);
    v16 = 0;
  }

  sub_1000028A0(v8, v16, 1, v14);
  sub_1000E8F04();
  return sub_1000E8EF4();
}

id sub_1000AC808(uint64_t a1, uint64_t a2, double a3)
{
  if (a2)
  {
    v4 = sub_1000EBE64();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v3 initWithSuiteName:v4];

  return v5;
}

void *sub_1000AC888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000ACE60();
  result = sub_1000ACB74(v4, v5, v6, v7, v8, v9, v10, sub_1000316B4);
  *v3 = result;
  return result;
}

void *sub_1000AC8D0(void *a1, int64_t a2, char a3)
{
  result = sub_1000ACB74(a1, a2, a3, *v3, &qword_1001304F8, &qword_1000F0C58, &type metadata accessor for HourlyForecastBannerViewModel, sub_100031788);
  *v3 = result;
  return result;
}

void *sub_1000AC928(void *a1, int64_t a2, char a3)
{
  result = sub_1000ACB74(a1, a2, a3, *v3, &qword_100130508, &qword_1000F0C68, &type metadata accessor for DailyForecastViewModel, sub_1000317A0);
  *v3 = result;
  return result;
}

void *sub_1000AC980(void *a1, int64_t a2, char a3)
{
  result = sub_1000ACB74(a1, a2, a3, *v3, &qword_1001348B0, &qword_1000F7398, &type metadata accessor for HourWeather, sub_1000317B8);
  *v3 = result;
  return result;
}

void *sub_1000AC9D8(void *a1, int64_t a2, char a3)
{
  result = sub_1000ACB74(a1, a2, a3, *v3, &qword_1001304F0, &qword_1000F0C50, type metadata accessor for EventViewModel, sub_1000316CC);
  *v3 = result;
  return result;
}

uint64_t sub_1000ACA30()
{
  sub_100026C9C();
  v1(0);
  sub_1000069E4();
  v2 = sub_100019AC0();
  v3(v2);
  return v0;
}

uint64_t sub_1000ACA88(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000069E4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000ACAE0()
{
  sub_100026C9C();
  v1(0);
  sub_1000069E4();
  v2 = sub_100019AC0();
  v3(v2);
  return v0;
}

void *sub_1000ACB74(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(uint64_t, uint64_t, char *))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  if (v13 <= v14)
  {
    v15 = *(a4 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100002A10(a5, a6);
  v16 = *(a7(0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  a7(0);
  sub_10003279C();
  if (v11)
  {
    a8(a4 + v21, v14, v19 + v21);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_1000ACD38(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000ACD4C(result, a2);
  }

  return result;
}

uint64_t sub_1000ACD4C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_1000ACDA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000ACEB8(uint64_t a1, uint64_t a2, int *a3)
{
  sub_100002A10(&qword_10012F140, &unk_1000EEF50);
  sub_100006A04();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_12:

    return sub_100005B30(v9, a2, v8);
  }

  sub_100002A10(&qword_100130570, &qword_1000F0D48);
  sub_100006A04();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_11:
    v9 = a1 + v12;
    goto LABEL_12;
  }

  sub_100002A10(&qword_10012FE50, &qword_1000F0720);
  sub_100006A04();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[7];
    goto LABEL_11;
  }

  sub_100002A10(&qword_10012ED98, &unk_1000F2440);
  sub_100006A04();
  if (*(v16 + 84) == a2)
  {
    v8 = v15;
    v12 = a3[8];
    goto LABEL_11;
  }

  type metadata accessor for ForecastEntry(0);
  sub_100006A04();
  if (*(v18 + 84) == a2)
  {
    v8 = v17;
    v12 = a3[9];
    goto LABEL_11;
  }

  v20 = *(a1 + a3[10]);
  if (v20 >= 0xFFFFFFFF)
  {
    LODWORD(v20) = -1;
  }

  return (v20 + 1);
}

void sub_1000AD0A8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_100002A10(&qword_10012F140, &unk_1000EEF50);
  sub_100006A04();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_100002A10(&qword_100130570, &qword_1000F0D48);
    sub_100006A04();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      sub_100002A10(&qword_10012FE50, &qword_1000F0720);
      sub_100006A04();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[7];
      }

      else
      {
        sub_100002A10(&qword_10012ED98, &unk_1000F2440);
        sub_100006A04();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[8];
        }

        else
        {
          type metadata accessor for ForecastEntry(0);
          sub_100006A04();
          if (*(v20 + 84) != a3)
          {
            *(a1 + a4[10]) = (a2 - 1);
            return;
          }

          v10 = v19;
          v14 = a4[9];
        }
      }
    }

    v11 = a1 + v14;
  }

  sub_1000028A0(v11, a2, a2, v10);
}

uint64_t type metadata accessor for DailyForecastContentView(uint64_t a1)
{
  result = qword_100134918;
  if (!qword_100134918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000AD2CC(uint64_t a1)
{
  sub_1000609B0(319, &qword_10012F1B0, &type metadata accessor for WidgetFamily);
  if (v1 <= 0x3F)
  {
    sub_1000609B0(319, &qword_1001305E0, &type metadata accessor for ContentSizeCategory);
    if (v2 <= 0x3F)
    {
      sub_100005F48();
      if (v3 <= 0x3F)
      {
        sub_1000609B0(319, &unk_10012FEC0, &type metadata accessor for Font.Context);
        if (v4 <= 0x3F)
        {
          sub_1000609B0(319, &qword_10012EE28, &type metadata accessor for WidgetRenderingMode);
          if (v5 <= 0x3F)
          {
            type metadata accessor for ForecastEntry(319);
            if (v6 <= 0x3F)
            {
              sub_1000335DC(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1000AD45C()
{
  sub_100006A58();
  v1 = sub_1000405C8();
  sub_1000090D4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100040480();
  sub_1000637E4();
  sub_1000069E4();
  sub_100009204();
  __chkstk_darwin(v5);
  sub_100019AE8();
  sub_10008F2B0();
  if (sub_1000637FC() == 1)
  {
    sub_1000EBC44();
    sub_1000069E4();
    v6 = sub_1000637D8();
    v7(v6);
  }

  else
  {
    sub_1000EC1A4();
    v8 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();

    (*(v3 + 8))(v0, v1);
  }

  sub_100006A20();
}

void sub_1000AD5F8()
{
  sub_100006A58();
  sub_1000405C8();
  sub_1000090D4();
  __chkstk_darwin(v0);
  sub_100040480();
  sub_1000637E4();
  sub_1000069E4();
  sub_100009204();
  __chkstk_darwin(v1);
  sub_100019AE8();
  type metadata accessor for DailyForecastContentView(0);
  sub_1000B25E8();
  if (sub_1000637FC() == 1)
  {
    sub_1000EA3B4();
    sub_1000069E4();
    v2 = sub_1000637D8();
  }

  else
  {
    sub_1000EC1A4();
    v4 = sub_1000EA524();
    sub_100040528(v4, &_mh_execute_header, v5, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v6, v7, &_swiftEmptyArrayStorage);

    sub_1000EA2B4();
    sub_100040588();

    v2 = sub_100040568();
  }

  v3(v2);
  sub_100006A20();
}

uint64_t sub_1000AD768()
{
  v1 = sub_1000EA2C4();
  sub_1000090D4();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v0 + *(type metadata accessor for DailyForecastContentView(0) + 24);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_1000EC1A4();
    v9 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();
    sub_100006530(v8, 0);
    (*(v3 + 8))(v6, v1);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

void sub_1000AD8B4()
{
  sub_100006A58();
  sub_1000405C8();
  sub_1000090D4();
  __chkstk_darwin(v0);
  sub_100040480();
  sub_1000637E4();
  sub_1000069E4();
  sub_100009204();
  __chkstk_darwin(v1);
  sub_100019AE8();
  type metadata accessor for DailyForecastContentView(0);
  sub_1000B25E8();
  if (sub_1000637FC() == 1)
  {
    sub_1000EA694();
    sub_1000069E4();
    v2 = sub_1000637D8();
  }

  else
  {
    sub_1000EC1A4();
    v4 = sub_1000EA524();
    sub_100040528(v4, &_mh_execute_header, v5, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v6, v7, &_swiftEmptyArrayStorage);

    sub_1000EA2B4();
    sub_100040588();

    v2 = sub_100040568();
  }

  v3(v2);
  sub_100006A20();
}

void sub_1000ADA24()
{
  sub_100006A58();
  sub_1000405C8();
  sub_1000090D4();
  __chkstk_darwin(v0);
  sub_100040480();
  sub_1000637E4();
  sub_1000069E4();
  sub_100009204();
  __chkstk_darwin(v1);
  sub_100019AE8();
  type metadata accessor for DailyForecastContentView(0);
  sub_1000B25E8();
  if (sub_1000637FC() == 1)
  {
    sub_1000EBC34();
    sub_1000069E4();
    v2 = sub_1000637D8();
  }

  else
  {
    sub_1000EC1A4();
    v4 = sub_1000EA524();
    sub_100040528(v4, &_mh_execute_header, v5, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v6, v7, &_swiftEmptyArrayStorage);

    sub_1000EA2B4();
    sub_100040588();

    v2 = sub_100040568();
  }

  v3(v2);
  sub_100006A20();
}

uint64_t sub_1000ADB94@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000EA3B4();
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000EBC44();
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ForecastEntry.Model(0);
  __chkstk_darwin(v9);
  v10 = sub_100002A10(&qword_10012F038, &qword_1000F0F90);
  __chkstk_darwin(v10 - 8);
  v12 = &v25 - v11;
  v13 = type metadata accessor for AggregateWeatherViewModel(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DailyForecastContentView(0);
  type metadata accessor for ForecastEntry(0);
  sub_1000B22C0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000B2318();
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = type metadata accessor for WeatherDataViewModel(0);
  sub_1000028A0(v12, v17, 1, v18);
  if (sub_100005B30(v12, 1, v18) == 1)
  {
    sub_100006850(v12, &qword_10012F038, &qword_1000F0F90);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1000B2318();
      sub_1000AD45C();
      sub_1000AD5F8();
      v22 = *(v1 + *(v16 + 44));
      v23 = sub_1000AD768();
      type metadata accessor for HourlyBannerViewAttributesFactory(0);
      swift_allocObject();
      sub_1000C60CC(v8, v5, v22, v23 & 1);
      sub_1000C5AFC(v15, v24);

      sub_1000B2370(v15, type metadata accessor for AggregateWeatherViewModel);
      v19 = 0;
      goto LABEL_9;
    }

    sub_1000B2370(v12, type metadata accessor for WeatherDataViewModel);
  }

  v19 = 1;
LABEL_9:
  v20 = sub_1000EB464();
  return sub_1000028A0(a1, v19, 1, v20);
}

uint64_t sub_1000ADF08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v22 = a2;
  v3 = sub_1000EA3B4();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1000EBC44();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for ForecastEntry.Model(0);
  __chkstk_darwin(v5);
  v6 = sub_100002A10(&qword_10012F038, &qword_1000F0F90);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for AggregateWeatherViewModel(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v2 + *(type metadata accessor for DailyForecastContentView(0) + 36);
  v13 = type metadata accessor for ForecastEntry(0);
  sub_1000B22C0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000B2318();
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = type metadata accessor for WeatherDataViewModel(0);
  sub_1000028A0(v8, v14, 1, v15);
  if (sub_100005B30(v8, 1, v15) == 1)
  {
    sub_100006850(v8, &qword_10012F038, &qword_1000F0F90);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1000B2318();
      sub_1000AD45C();
      sub_1000AD5F8();
      sub_1000AD768();
      type metadata accessor for DailyViewAttributesFactory(0);
      swift_allocObject();
      sub_1000CFCC4();
      v20 = v12 + *(v13 + 24);
      v17 = v22;
      sub_1000CDE74(v11, v21, v20, 1uLL, v22);

      sub_1000B2370(v11, type metadata accessor for AggregateWeatherViewModel);
      v16 = 0;
      goto LABEL_9;
    }

    sub_1000B2370(v8, type metadata accessor for WeatherDataViewModel);
  }

  v16 = 1;
  v17 = v22;
LABEL_9:
  v18 = type metadata accessor for DailyViewAttributes(0);
  return sub_1000028A0(v17, v16, 1, v18);
}

uint64_t sub_1000AE298@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = sub_1000EA3B4();
  __chkstk_darwin(v2 - 8);
  v27 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000EBC44();
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ForecastEntry.Model(0);
  __chkstk_darwin(v7);
  v8 = sub_100002A10(&qword_10012F038, &qword_1000F0F90);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for AggregateWeatherViewModel(0);
  __chkstk_darwin(v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DailyForecastContentView(0);
  v15 = v1 + *(v14 + 36);
  v16 = type metadata accessor for ForecastEntry(0);
  sub_1000B22C0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000B2318();
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = type metadata accessor for WeatherDataViewModel(0);
  sub_1000028A0(v10, v17, 1, v18);
  if (sub_100005B30(v10, 1, v18) == 1)
  {
    sub_100006850(v10, &qword_10012F038, &qword_1000F0F90);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1000B2318();
      sub_1000AD45C();
      v23 = v27;
      sub_1000AD5F8();
      v24 = *(v1 + *(v14 + 44));
      v25 = sub_1000AD768();
      type metadata accessor for CurrentObservationViewAttributesFactory(0);
      swift_allocObject();
      sub_10007469C(v6, v23, v24, v25 & 1);
      v26 = v15 + *(v16 + 24);
      v20 = v28;
      sub_100073028(v13, v26, &v13[*(v11 + 20)], *v26, *(v26 + 8), *(v26 + 50), *(v26 + 51), *(v26 + 52), v28, 1u, 1, 1u);

      sub_1000B2370(v13, type metadata accessor for AggregateWeatherViewModel);
      v19 = 0;
      goto LABEL_9;
    }

    sub_1000B2370(v10, type metadata accessor for WeatherDataViewModel);
  }

  v19 = 1;
  v20 = v28;
LABEL_9:
  v21 = sub_1000EBA54();
  return sub_1000028A0(v20, v19, 1, v21);
}

void *sub_1000AE664@<X0>(void *a1@<X8>)
{
  v3 = sub_1000EA694();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &__src[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1000EA3B4();
  __chkstk_darwin(v7 - 8);
  v9 = &__src[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1000EBC44();
  __chkstk_darwin(v10 - 8);
  v12 = &__src[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1000AE868(v1);
  sub_1000AD45C();
  sub_1000AD5F8();
  v14 = *(v1 + *(type metadata accessor for DailyForecastContentView(0) + 44));
  v15 = sub_1000AD768();
  type metadata accessor for ErrorViewAttributesFactory(0);
  swift_allocObject();
  sub_10007653C(v12, v9, v14, v15 & 1);
  sub_1000AD8B4();
  sub_10007628C(v13, __src);

  (*(v4 + 8))(v6, v3);
  return memcpy(a1, __src, 0x50uLL);
}

uint64_t sub_1000AE868(uint64_t a1)
{
  v1 = type metadata accessor for ForecastEntry.Model(0);
  __chkstk_darwin(v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DailyForecastContentView(0);
  type metadata accessor for ForecastEntry(0);
  sub_1000B22C0();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v3;
  }

  sub_1000B2370(v3, type metadata accessor for ForecastEntry.Model);
  return 3;
}

double sub_1000AE958@<D0>(char *a1@<X8>)
{
  memcpy(a1, v1, 0x50uLL);
  v3 = *(type metadata accessor for ErrorView(0) + 20);
  *&a1[v3] = swift_getKeyPath();
  sub_100002A10(&qword_10012EEA8, &unk_1000EED70);
  swift_storeEnumTagMultiPayload();
  sub_1000B2548(v1, &v7);
  v4 = sub_1000EA564();
  v5 = &a1[*(sub_100002A10(&qword_100130AA8, &qword_1000F12E0) + 36)];
  *v5 = v4;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  v5[40] = 1;
  return result;
}

uint64_t sub_1000AEA64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a3;
  v40 = sub_100002A10(&qword_100134A38, &unk_1000F7660);
  __chkstk_darwin(v40);
  v6 = &v35 - v5;
  v41 = sub_100002A10(&qword_1001308C8, &unk_1000F0FD0);
  __chkstk_darwin(v41);
  v38 = (&v35 - v7);
  v8 = sub_100002A10(&qword_1001308D0, &qword_1000F7540);
  __chkstk_darwin(v8 - 8);
  v10 = &v35 - v9;
  v11 = type metadata accessor for DailyViewAttributes(0);
  __chkstk_darwin(v11);
  v36 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100002A10(&qword_100130838, &qword_1000F0F58);
  __chkstk_darwin(v13 - 8);
  v15 = &v35 - v14;
  v16 = sub_1000EBA54();
  v39 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100002A10(&qword_100130890, &qword_1000F7610);
  __chkstk_darwin(v19 - 8);
  v21 = &v35 - v20;
  v37 = a1;
  sub_1000E9FD4();
  sub_1000ADB94(v21);
  v22 = sub_1000EB464();
  if (sub_100005B30(v21, 1, v22) == 1)
  {
    v23 = &qword_100130890;
    v24 = &qword_1000F7610;
    v25 = v21;
LABEL_5:
    sub_100006850(v25, v23, v24);
    goto LABEL_6;
  }

  v26 = sub_1000EB454();
  (*(*(v22 - 8) + 8))(v21, v22);
  v27 = *(v26 + 16);

  sub_1000AE298(v15);
  if (sub_100005B30(v15, 1, v16) == 1)
  {
    v23 = &qword_100130838;
    v24 = &qword_1000F0F58;
    v25 = v15;
    goto LABEL_5;
  }

  v29 = v39;
  (*(v39 + 32))(v18, v15, v16);
  sub_1000ADF08(v27, v10);
  if (sub_100005B30(v10, 1, v11) != 1)
  {
    v30 = v36;
    sub_1000B2318();
    v31 = sub_1000EA2E4();
    v32 = v29;
    v33 = v38;
    *v38 = v31;
    *(v33 + 8) = 0;
    *(v33 + 16) = 0;
    v34 = sub_100002A10(&qword_1001308E0, &qword_1000F0FE0);
    sub_1000AF010(v18, v30, a2, v33 + *(v34 + 44));
    sub_10008F2B0();
    swift_storeEnumTagMultiPayload();
    sub_100006988(&qword_1001308D8, &qword_1001308C8, &unk_1000F0FD0, &protocol conformance descriptor for HStack<A>);
    sub_1000B226C();
    sub_1000EA4A4();
    sub_100006850(v33, &qword_1001308C8, &unk_1000F0FD0);
    sub_1000B2370(v30, type metadata accessor for DailyViewAttributes);
    return (*(v32 + 8))(v18, v16);
  }

  sub_100006850(v10, &qword_1001308D0, &qword_1000F7540);
  (*(v29 + 8))(v18, v16);
LABEL_6:
  sub_1000AE664(__src);
  memcpy(v6, __src, 0x50uLL);
  swift_storeEnumTagMultiPayload();
  sub_100006988(&qword_1001308D8, &qword_1001308C8, &unk_1000F0FD0, &protocol conformance descriptor for HStack<A>);
  sub_1000B226C();
  return sub_1000EA4A4();
}

uint64_t sub_1000AF010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v46 = a3;
  v45 = a2;
  v48 = a4;
  v5 = sub_100002A10(&qword_1001308E8, &qword_1000F0FE8);
  v6 = v5 - 8;
  v7 = __chkstk_darwin(v5);
  v47 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v39 - v9;
  v11 = sub_1000EBA54();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100002A10(&qword_1001308F0, &qword_1000F0FF0);
  v16 = v15 - 8;
  v17 = __chkstk_darwin(v15);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v39 - v20;
  (*(v12 + 16))(v14, a1, v11);
  sub_1000EB0C4();
  sub_1000E9FD4();
  sub_1000E9FD4();
  sub_1000EABD4();
  sub_1000E9FC4();
  v22 = &v21[*(v16 + 44)];
  v40 = v21;
  v23 = v52;
  *v22 = v51;
  *(v22 + 1) = v23;
  *(v22 + 2) = v53;
  sub_1000EABC4();
  sub_1000E9FC4();
  v44 = v54;
  v43 = v56;
  v42 = v58;
  v41 = v59;
  v64 = 1;
  v63 = v55;
  v62 = v57;
  sub_1000B22C0();
  v24 = (v46 + *(type metadata accessor for DailyForecastContentView(0) + 40));
  v26 = *v24;
  v25 = v24[1];
  v49 = v26;
  v50 = v25;
  sub_100002A10(&qword_100130688, &qword_1000F0DF8);
  sub_1000EAAB4();
  v27 = *v60;
  v28 = type metadata accessor for DailyView(0);
  v29 = *&v60[8];
  v30 = &v10[*(v28 + 20)];
  *v30 = v27;
  *(v30 + 8) = v29;
  sub_1000E9FD4();
  sub_1000E9FD4();
  sub_1000EABD4();
  sub_1000E9FC4();
  v31 = &v10[*(v6 + 44)];
  v32 = *&v60[16];
  *v31 = *v60;
  *(v31 + 1) = v32;
  *(v31 + 2) = v61;
  v39 = v19;
  sub_10008F2B0();
  LOBYTE(v11) = v64;
  v33 = v63;
  LOBYTE(v14) = v62;
  v34 = v47;
  sub_10008F2B0();
  v35 = v48;
  sub_10008F2B0();
  v36 = v35 + *(sub_100002A10(&qword_1001308F8, &qword_1000F0FF8) + 48);
  *v36 = 0;
  *(v36 + 8) = v11;
  *(v36 + 16) = v44;
  *(v36 + 24) = v33;
  *(v36 + 32) = v43;
  *(v36 + 40) = v14;
  v37 = v41;
  *(v36 + 48) = v42;
  *(v36 + 56) = v37;
  sub_10008F2B0();
  sub_100006850(v10, &qword_1001308E8, &qword_1000F0FE8);
  sub_100006850(v40, &qword_1001308F0, &qword_1000F0FF0);
  sub_100006850(v34, &qword_1001308E8, &qword_1000F0FE8);
  return sub_100006850(v39, &qword_1001308F0, &qword_1000F0FF0);
}

uint64_t sub_1000AF514@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v38 = a2;
  v36 = sub_100002A10(&qword_1001349D0, &qword_1000F75F8);
  __chkstk_darwin(v36);
  v4 = &v33 - v3;
  v37 = sub_100002A10(&qword_1001349D8, &unk_1000F7600);
  __chkstk_darwin(v37);
  v34 = (&v33 - v5);
  v6 = sub_100002A10(&qword_1001308D0, &qword_1000F7540);
  __chkstk_darwin(v6 - 8);
  v8 = &v33 - v7;
  v9 = type metadata accessor for DailyViewAttributes(0);
  __chkstk_darwin(v9);
  v33 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002A10(&qword_100130838, &qword_1000F0F58);
  __chkstk_darwin(v11 - 8);
  v13 = &v33 - v12;
  v14 = sub_1000EBA54();
  v35 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100002A10(&qword_100130890, &qword_1000F7610);
  __chkstk_darwin(v17 - 8);
  v19 = &v33 - v18;
  sub_1000E9FD4();
  sub_1000ADB94(v19);
  v20 = sub_1000EB464();
  if (sub_100005B30(v19, 1, v20) == 1)
  {
    v21 = &qword_100130890;
    v22 = &qword_1000F7610;
    v23 = v19;
LABEL_5:
    sub_100006850(v23, v21, v22);
    goto LABEL_6;
  }

  v24 = sub_1000EB454();
  (*(*(v20 - 8) + 8))(v19, v20);
  v25 = *(v24 + 16);

  sub_1000AE298(v13);
  if (sub_100005B30(v13, 1, v14) == 1)
  {
    v21 = &qword_100130838;
    v22 = &qword_1000F0F58;
    v23 = v13;
    goto LABEL_5;
  }

  v27 = v35;
  (*(v35 + 32))(v16, v13, v14);
  sub_1000ADF08(v25, v8);
  if (sub_100005B30(v8, 1, v9) != 1)
  {
    v28 = v27;
    v29 = v33;
    sub_1000B2318();
    v30 = sub_1000EA3C4();
    v31 = v34;
    *v34 = v30;
    *(v31 + 8) = 0;
    *(v31 + 16) = 1;
    v32 = sub_100002A10(&qword_1001349F0, &qword_1000F7618);
    sub_1000AFABC(v16, a1, v29, v31 + *(v32 + 44));
    sub_10008F2B0();
    swift_storeEnumTagMultiPayload();
    sub_100006988(&qword_1001349E0, &qword_1001349D8, &unk_1000F7600, &protocol conformance descriptor for VStack<A>);
    sub_1000B226C();
    sub_1000EA4A4();
    sub_100006850(v31, &qword_1001349D8, &unk_1000F7600);
    sub_1000B2370(v29, type metadata accessor for DailyViewAttributes);
    return (*(v28 + 8))(v16, v14);
  }

  sub_100006850(v8, &qword_1001308D0, &qword_1000F7540);
  (*(v27 + 8))(v16, v14);
LABEL_6:
  sub_1000AE664(__src);
  memcpy(v4, __src, 0x50uLL);
  swift_storeEnumTagMultiPayload();
  sub_100006988(&qword_1001349E0, &qword_1001349D8, &unk_1000F7600, &protocol conformance descriptor for VStack<A>);
  sub_1000B226C();
  return sub_1000EA4A4();
}

uint64_t sub_1000AFABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a3;
  v50 = a2;
  v57 = a4;
  v55 = type metadata accessor for DailyView(0) - 8;
  v6 = __chkstk_darwin(v55);
  v56 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v53 = &v44 - v8;
  v52 = sub_1000E9A84();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1000EA4E4();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100002A10(&qword_1001349F8, &qword_1000F7620);
  __chkstk_darwin(v12);
  v14 = &v44 - v13;
  v15 = sub_100002A10(&qword_100134A00, &qword_1000F7628);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v44 - v17;
  v48 = sub_100002A10(&qword_100134A08, &qword_1000F7630);
  v19 = __chkstk_darwin(v48);
  v45 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v58 = &v44 - v21;
  *v14 = sub_1000EA3C4();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v22 = sub_100002A10(&qword_100134A10, &qword_1000F7638);
  sub_1000B0240(a1, a2, &v14[*(v22 + 44)]);
  sub_1000EA4C4();
  v23 = sub_100006988(&qword_100134A18, &qword_1001349F8, &qword_1000F7620, &protocol conformance descriptor for VStack<A>);
  sub_1000EA914();
  (*(v46 + 8))(v11, v47);
  sub_100006850(v14, &qword_1001349F8, &qword_1000F7620);
  v66 = v12;
  v67 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v45;
  sub_1000EA934();
  (*(v16 + 8))(v18, v15);
  sub_100002A10(&qword_100130558, &qword_1000F0D00);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1000EFAD0;
  v26 = v49;
  sub_1000EBA34();
  v27 = sub_1000E9A44();
  v29 = v28;
  (*(v51 + 8))(v26, v52);
  *(v25 + 32) = v27;
  *(v25 + 40) = v29;
  sub_100005898();
  sub_1000EA074();

  sub_100006850(v24, &qword_100134A08, &qword_1000F7630);
  v30 = [objc_opt_self() mainScreen];
  [v30 bounds];

  sub_1000EABC4();
  sub_1000E9FC4();
  v52 = v66;
  v51 = v68;
  v49 = v70;
  v48 = v71;
  v65 = 1;
  v64 = v67;
  v63 = v69;
  v31 = v53;
  sub_1000B22C0();
  v32 = (v50 + *(type metadata accessor for DailyForecastContentView(0) + 40));
  v34 = *v32;
  v33 = v32[1];
  v61 = v34;
  v62 = v33;
  sub_100002A10(&qword_100130688, &qword_1000F0DF8);
  sub_1000EAAB4();
  v35 = v60;
  v36 = &v31[*(v55 + 28)];
  *v36 = v59;
  *(v36 + 8) = v35;
  sub_10008F2B0();
  LOBYTE(v27) = v65;
  v37 = v64;
  LOBYTE(a1) = v63;
  v38 = v31;
  v39 = v56;
  sub_1000B22C0();
  v40 = v57;
  sub_10008F2B0();
  v41 = v40 + *(sub_100002A10(&qword_100134A20, &qword_1000F7640) + 48);
  *v41 = 0;
  *(v41 + 8) = v27;
  *(v41 + 16) = v52;
  *(v41 + 24) = v37;
  *(v41 + 32) = v51;
  *(v41 + 40) = a1;
  v42 = v48;
  *(v41 + 48) = v49;
  *(v41 + 56) = v42;
  sub_1000B22C0();
  sub_1000B2370(v38, type metadata accessor for DailyView);
  sub_100006850(v58, &qword_100134A08, &qword_1000F7630);
  sub_1000B2370(v39, type metadata accessor for DailyView);
  return sub_100006850(v24, &qword_100134A08, &qword_1000F7630);
}

uint64_t sub_1000B0240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v45 = a2;
  v48 = a3;
  v46 = sub_1000EA694();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_100002A10(&qword_100134A28, &qword_1000F7648) - 8;
  v6 = __chkstk_darwin(v43);
  v47 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v40 = &v33 - v8;
  v9 = sub_1000EBA54();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1000EAF14();
  v35 = *(v42 - 8);
  v13 = v35;
  v14 = __chkstk_darwin(v42);
  v41 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v33 - v16;
  v18 = *(v10 + 16);
  v18(v12, a1, v9);
  v34 = v17;
  sub_1000EAF04();
  v19 = [objc_opt_self() mainScreen];
  [v19 bounds];

  sub_1000EABC4();
  sub_1000E9FC4();
  v39 = v52;
  v38 = v54;
  v37 = v56;
  v36 = v57;
  v51 = 1;
  v50 = v53;
  v49 = v55;
  v18(v12, a1, v9);
  v20 = v40;
  sub_1000EB004();
  sub_1000EB9E4();
  sub_1000AD8B4();
  sub_1000EA594();

  (*(v44 + 8))(v5, v46);
  sub_1000EABC4();
  sub_1000E9FC4();
  v21 = (v20 + *(v43 + 44));
  v22 = v59;
  *v21 = v58;
  v21[1] = v22;
  v21[2] = v60;
  v23 = *(v13 + 16);
  v24 = v41;
  v25 = v42;
  v23(v41, v17, v42);
  v26 = v51;
  LOBYTE(v17) = v50;
  LODWORD(v46) = v49;
  v27 = v47;
  sub_10008F2B0();
  v28 = v48;
  v23(v48, v24, v25);
  v29 = &v28[*(sub_100002A10(&qword_100134A30, &unk_1000F7650) + 48)];
  *v29 = 0;
  v29[8] = v26;
  *(v29 + 2) = v39;
  v29[24] = v17;
  *(v29 + 4) = v38;
  v29[40] = v46;
  v30 = v36;
  *(v29 + 6) = v37;
  *(v29 + 7) = v30;
  sub_10008F2B0();
  sub_100006850(v20, &qword_100134A28, &qword_1000F7648);
  v31 = *(v35 + 8);
  v31(v34, v25);
  sub_100006850(v27, &qword_100134A28, &qword_1000F7648);
  return (v31)(v24, v25);
}

void sub_1000B07CC()
{
  sub_100006A58();
  v1 = v0;
  v39 = v2;
  v40 = sub_1000EA504();
  sub_1000090D4();
  v38 = v3;
  __chkstk_darwin(v4);
  v34 = &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = sub_100002A10(&qword_100134968, &qword_1000F7538);
  sub_1000090D4();
  v37 = v6;
  sub_100009204();
  __chkstk_darwin(v7);
  v9 = &v31[-v8];
  sub_100002A10(&qword_1001308D0, &qword_1000F7540);
  sub_100009204();
  __chkstk_darwin(v10);
  v35 = &v31[-v11];
  sub_1000ADF08(4, &v31[-v11]);
  v12 = sub_1000EABD4();
  v14 = v13;
  sub_1000B0BD0(v1, &v44);
  v15 = *(&v44 + 1);
  v33 = v44;
  v32 = v45;
  *&v44 = v12;
  *(&v44 + 1) = v14;
  v45 = v33;
  v46 = v15;
  LOBYTE(v47) = v32;
  sub_1000EABA4();
  v43 = v1;
  v42 = v1;
  v16 = sub_100019AC0();
  v18 = sub_100002A10(v16, v17);
  v19 = sub_100002A10(&qword_100134978, &qword_1000F7550);
  v20 = sub_100002A10(&qword_100134980, &qword_1000F7558);
  sub_1000404D0();
  v23 = sub_100006988(v21, &qword_100134970, &qword_1000F7548, v22);
  v24 = sub_1000B1924();
  v25 = sub_1000B19DC();
  sub_1000EA954();
  sub_10003F98C(v33, v15);
  v26 = v34;
  sub_1000EA4F4();
  v41 = v1;
  sub_1000EABC4();
  v33 = v27;
  type metadata accessor for BackgroundView(0);
  *&v44 = v18;
  *(&v44 + 1) = &type metadata for Solarium;
  v45 = v19;
  v46 = v20;
  v47 = v23;
  v48 = &protocol witness table for Solarium;
  v49 = v24;
  v50 = v25;
  sub_1000637A0();
  swift_getOpaqueTypeConformance2();
  sub_1000B25D0();
  sub_1000B2584(v28, v29, &unk_1000F1290);
  v30 = v36;
  sub_1000EA904();
  (*(v38 + 8))(v26, v40);
  (*(v37 + 8))(v9, v30);
  sub_100006850(v35, &qword_1001308D0, &qword_1000F7540);
  sub_100006A20();
}

double sub_1000B0BD0@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  v36 = a1;
  v39 = a2;
  v2 = type metadata accessor for DailyForecastContentView(0);
  v35 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v37 = v3;
  v38 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000EBC44();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v33 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002A10(&qword_1001349A0, &qword_1000F75D0);
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  v10 = sub_100002A10(&qword_1001308D0, &qword_1000F7540);
  __chkstk_darwin(v10 - 8);
  v12 = &v33 - v11;
  v13 = sub_100002A10(&qword_1001349A8, &unk_1000F75D8);
  v14 = __chkstk_darwin(v13 - 8);
  v34 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v33 - v17;
  __chkstk_darwin(v16);
  v20 = &v33 - v19;
  sub_10008F2B0();
  v21 = type metadata accessor for DailyViewAttributes(0);
  if (sub_100005B30(v12, 1, v21) == 1)
  {
    sub_100006850(v12, &qword_1001308D0, &qword_1000F7540);
    v22 = 1;
  }

  else
  {
    (*(v5 + 16))(v20, v12, v4);
    sub_1000B2370(v12, type metadata accessor for DailyViewAttributes);
    v22 = 0;
  }

  sub_1000028A0(v20, v22, 1, v4);
  (*(v5 + 104))(v18, enum case for WidgetFamily.systemSmall(_:), v4);
  sub_1000028A0(v18, 0, 1, v4);
  v23 = *(v7 + 48);
  sub_10008F2B0();
  sub_10008F2B0();
  if (sub_100005B30(v9, 1, v4) == 1)
  {
    sub_100006850(v18, &qword_1001349A8, &unk_1000F75D8);
    sub_100006850(v20, &qword_1001349A8, &unk_1000F75D8);
    if (sub_100005B30(&v9[v23], 1, v4) == 1)
    {
      sub_100006850(v9, &qword_1001349A8, &unk_1000F75D8);
LABEL_12:
      sub_1000B22C0();
      v29 = swift_allocObject();
      sub_1000B2318();
      v40 = sub_1000B21C0;
      v41 = v29;
      v42 = 0;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v24 = v34;
  sub_10008F2B0();
  if (sub_100005B30(&v9[v23], 1, v4) == 1)
  {
    sub_100006850(v18, &qword_1001349A8, &unk_1000F75D8);
    sub_100006850(v20, &qword_1001349A8, &unk_1000F75D8);
    (*(v5 + 8))(v24, v4);
LABEL_9:
    sub_100006850(v9, &qword_1001349A0, &qword_1000F75D0);
    goto LABEL_10;
  }

  v26 = v33;
  (*(v5 + 32))(v33, &v9[v23], v4);
  sub_1000B2584(&qword_100132A08, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  v27 = sub_1000EBE24();
  v28 = *(v5 + 8);
  v28(v26, v4);
  sub_100006850(v18, &qword_1001349A8, &unk_1000F75D8);
  sub_100006850(v20, &qword_1001349A8, &unk_1000F75D8);
  v28(v24, v4);
  sub_100006850(v9, &qword_1001349A8, &unk_1000F75D8);
  if (v27)
  {
    goto LABEL_12;
  }

LABEL_10:
  sub_1000B22C0();
  v25 = swift_allocObject();
  sub_1000B2318();
  v40 = sub_1000B1AA8;
  v41 = v25;
  v42 = 1;
LABEL_13:
  sub_100002A10(&qword_1001349B0, &qword_1000F75E8);
  sub_100002A10(&qword_1001349B8, &qword_1000F75F0);
  sub_100006988(&qword_1001349C0, &qword_1001349B0, &qword_1000F75E8, &protocol conformance descriptor for GeometryReader<A>);
  sub_100006988(&qword_1001349C8, &qword_1001349B8, &qword_1000F75F0, &protocol conformance descriptor for GeometryReader<A>);
  sub_1000EA4A4();
  result = *&v43;
  v31 = v44;
  v32 = v39;
  *v39 = v43;
  *(v32 + 16) = v31;
  return result;
}

void *sub_1000B130C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v25 = a3;
  v5 = sub_1000EBC34();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v23 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v24 = &v22 - v9;
  v11 = *a1;
  v10 = a1[1];
  v13 = a1[2];
  v12 = a1[3];
  v14 = *(a1 + 32);
  if ((sub_1000AD768() & 1) != 0 && (v22 = a2 + *(type metadata accessor for DailyForecastContentView(0) + 36), v15 = *(type metadata accessor for ForecastEntry(0) + 24), *(v22 + v15 + *(type metadata accessor for WidgetContext(0) + 48) + 8) == 1) && (sub_1000ADA24(), v16 = v23, sub_1000EBC14(), sub_1000B2584(&qword_100130698, &type metadata accessor for WidgetRenderingMode, &protocol conformance descriptor for WidgetRenderingMode), v17 = sub_1000EBE24(), v18 = *(v6 + 8), v18(v16, v5), v18(v24, v5), (v17 & 1) == 0))
  {
    sub_1000EA9A4();
    v20 = v11;
    v21 = sub_1000EA9D4();

    v36 = 0;
    v26 = v20;
    v27 = v10;
    v28 = v13;
    v29 = v12;
    v30 = v14;
    v31 = v21;
    v32 = xmmword_1000F0D30;
    v33 = 0x4000000000000000;
    v34 = 0;
  }

  else
  {
    v36 = v14;
    v35 = 1;
    v26 = v11;
    v27 = v10;
    v28 = v13;
    v29 = v12;
    v30 = v14;
    v34 = 1;
  }

  sub_10003F984(v13, v12);
  sub_100002A10(&qword_100134980, &qword_1000F7558);
  sub_100002A10(&qword_100134970, &qword_1000F7548);
  sub_1000B19DC();
  sub_100006988(&qword_100134988, &qword_100134970, &qword_1000F7548, &protocol conformance descriptor for ZStack<A>);
  sub_1000EA4A4();
  return memcpy(v25, __src, 0x49uLL);
}

uint64_t sub_1000B1658@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = *a1;
  v11 = a1[1];
  v5 = *(a1 + 32);
  if ((sub_1000AD768() & 1) != 0 && (v6 = a2 + *(type metadata accessor for DailyForecastContentView(0) + 36), v7 = *(type metadata accessor for ForecastEntry(0) + 24), *(v6 + v7 + *(type metadata accessor for WidgetContext(0) + 48) + 8) == 1))
  {
    sub_1000EA9A4();
    v8 = sub_1000EA9D4();
  }

  else
  {
    v8 = sub_1000EA9B4();
  }

  *a3 = v10;
  *(a3 + 16) = v11;
  *(a3 + 32) = v5;
  *(a3 + 40) = v8;
  *(a3 + 48) = xmmword_1000F0D30;
  *(a3 + 64) = 0x4000000000000000;

  return sub_10003F984(v11, *(&v11 + 1));
}

uint64_t sub_1000B174C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ForecastEntry.Model(0);
  __chkstk_darwin(v4);
  v5 = a1 + *(type metadata accessor for DailyForecastContentView(0) + 36);
  v6 = *(type metadata accessor for ForecastEntry(0) + 24);
  v7 = (v5 + v6 + *(type metadata accessor for WidgetContext(0) + 48));
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = type metadata accessor for BackgroundView(0);
  v11 = v10[5];
  sub_1000B22C0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000B2318();
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = type metadata accessor for WeatherDataViewModel(0);
  sub_1000028A0(a2 + v11, v12, 1, v13);
  *a2 = v8;
  *(a2 + 8) = v9;
  v14 = v10[6];
  *(a2 + v14) = swift_getKeyPath();
  sub_100002A10(&qword_10012EEA8, &unk_1000EED70);
  swift_storeEnumTagMultiPayload();
  v15 = a2 + v10[7];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
}

unint64_t sub_1000B1924()
{
  result = qword_100134990;
  if (!qword_100134990)
  {
    sub_100002ABC(&qword_100134978, &qword_1000F7550);
    sub_1000B19DC();
    sub_100006988(&qword_100134988, &qword_100134970, &qword_1000F7548, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134990);
  }

  return result;
}

unint64_t sub_1000B19DC()
{
  result = qword_100134998;
  if (!qword_100134998)
  {
    sub_100002ABC(&qword_100134980, &qword_1000F7558);
    sub_100006988(&qword_100134988, &qword_100134970, &qword_1000F7548, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134998);
  }

  return result;
}

uint64_t sub_1000B1AC0()
{
  v1 = type metadata accessor for DailyForecastContentView(0);
  v55 = *(*(v1 - 1) + 80);
  v2 = v0 + ((v55 + 16) & ~v55);
  sub_100002A10(&qword_10012F230, &qword_1000EEFF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000EBC44();
    sub_1000069D0();
    (*(v3 + 8))(v2);
  }

  else
  {
  }

  v4 = v1[5];
  sub_100002A10(&qword_10012F6E0, &unk_1000FA260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000EA3B4();
    sub_1000069D0();
    (*(v5 + 8))(v2 + v4);
  }

  else
  {
  }

  sub_100006530(*(v2 + v1[6]), *(v2 + v1[6] + 8));
  v6 = v1[7];
  sub_100002A10(&qword_10012F6E8, &unk_1000F06A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000EA694();
    sub_1000069D0();
    (*(v7 + 8))(v2 + v6);
  }

  else
  {
  }

  v8 = v1[8];
  sub_100002A10(&qword_10012EEB0, &qword_1000EFC90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000EBC34();
    sub_1000069D0();
    (*(v9 + 8))(v2 + v8);
  }

  else
  {
  }

  v10 = v2 + v1[9];
  v11 = sub_1000E8604();
  sub_1000069E4();
  v54 = *(v12 + 8);
  v54(v10, v11);
  v13 = type metadata accessor for ForecastEntry(0);
  v14 = v13[5];
  v15 = sub_1000EBD64();
  if (!sub_100005B30(v10 + v14, 1, v15))
  {
    sub_1000326A0();
    (*(v16 + 8))(v10 + v14, v15);
  }

  v17 = v10 + v13[6];

  v18 = *(type metadata accessor for WidgetContext(0) + 44);
  v19 = sub_1000E8524();
  if (!sub_100005B30(v17 + v18, 1, v19))
  {
    sub_1000326A0();
    (*(v20 + 8))(v17 + v18, v19);
  }

  v21 = v10 + v13[7];
  type metadata accessor for ForecastEntry.Model(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for WeatherDataViewModel(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 2:
        sub_1000EB2B4();
        sub_1000069D0();
        (*(v50 + 8))(v21, v51);
        break;
      case 1:
        sub_1000E8634();
        sub_1000069D0();
        (*(v43 + 8))(v21);
        v44 = type metadata accessor for InstantWeatherViewModel(0);
        v45 = *(v44 + 20);
        sub_1000E9A84();
        sub_1000069D0();
        (*(v46 + 8))(v21 + v45);
        v47 = *(v44 + 24);
        sub_1000EB674();
        sub_1000069D0();
        (*(v48 + 8))(v21 + v47, v49);
        break;
      case 0:
        v23 = sub_1000E8634();
        sub_1000069E4();
        v53 = *(v24 + 8);
        v53(v21, v23);
        v25 = type metadata accessor for AggregateWeatherViewModel(0);
        v26 = v25[5];
        sub_1000E9A84();
        sub_1000069D0();
        (*(v27 + 8))(v21 + v26);
        v28 = v25[6];
        sub_1000EB674();
        sub_1000069D0();
        (*(v29 + 8))(v21 + v28);

        v30 = v21 + v25[9];
        v31 = type metadata accessor for AirQualityViewModel(0);
        if (!sub_100005B30(v30, 1, v31))
        {
          v53(v30, v23);
          v54(v30 + v31[5], v11);
          v32 = v31[7];
          sub_1000E8E84();
          sub_1000069D0();
          (*(v33 + 8))(v30 + v32);
          v34 = v31[8];
          sub_1000E8F64();
          sub_1000069D0();
          (*(v35 + 8))(v30 + v34);
        }

        v36 = v25[10];
        v37 = sub_1000EBAF4();
        if (!sub_100005B30(v21 + v36, 1, v37))
        {
          sub_1000326A0();
          (*(v38 + 8))(v21 + v36, v37);
        }

        v39 = v25[13];
        if (!sub_100005B30(v21 + v39, 1, v19))
        {
          sub_1000326A0();
          (*(v40 + 8))(v21 + v39, v19);
        }

        v41 = v25[14];
        v42 = type metadata accessor for AggregateWeatherViewModel.SunEvent(0);
        if (!sub_100005B30(v21 + v41, 1, v42))
        {
          v54(v21 + v41, v11);
        }

        break;
    }
  }

  return _swift_deallocObject(v0);
}

uint64_t sub_1000B21D8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for DailyForecastContentView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_1000B226C()
{
  result = qword_1001349E8;
  if (!qword_1001349E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001349E8);
  }

  return result;
}

uint64_t sub_1000B22C0()
{
  sub_100026C9C();
  v1(0);
  sub_1000069E4();
  v2 = sub_100019AC0();
  v3(v2);
  return v0;
}

uint64_t sub_1000B2318()
{
  sub_100026C9C();
  v1(0);
  sub_1000069E4();
  v2 = sub_100019AC0();
  v3(v2);
  return v0;
}

uint64_t sub_1000B2370(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000069D0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000B23D4()
{
  sub_100002ABC(&qword_100134968, &qword_1000F7538);
  type metadata accessor for BackgroundView(255);
  sub_100002ABC(&qword_100134970, &qword_1000F7548);
  sub_100002ABC(&qword_100134978, &qword_1000F7550);
  sub_100002ABC(&qword_100134980, &qword_1000F7558);
  sub_1000404D0();
  sub_100006988(v0, &qword_100134970, &qword_1000F7548, v1);
  sub_1000B1924();
  sub_1000B19DC();
  sub_1000637A0();
  swift_getOpaqueTypeConformance2();
  sub_1000B25D0();
  sub_1000B2584(v2, v3, &unk_1000F1290);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000B2584(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000B25E8()
{

  return sub_10008F2B0();
}

uint64_t sub_1000B261C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AdaptiveConditionsComplicationDataStatus(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100005B30(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1000B26DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AdaptiveConditionsComplicationDataStatus(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1000028A0(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for AdaptiveConditionsInlineContentView(uint64_t a1)
{
  result = qword_100134A98;
  if (!qword_100134A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B27EC@<X0>(uint64_t a1@<X8>)
{
  v325 = a1;
  v323[1] = sub_100002A10(&qword_100134AD0, &qword_1000F7858);
  sub_1000069E4();
  sub_100009204();
  __chkstk_darwin(v1);
  sub_10000D58C();
  v324 = v2;
  v3 = sub_100002A10(&qword_100134AD8, &qword_1000F7860);
  sub_1000B50D0(v3, &v339);
  sub_100009204();
  __chkstk_darwin(v4);
  sub_10000D58C();
  sub_10000D4C4(v5);
  v323[0] = sub_100002A10(&qword_100134AE0, &qword_1000F7868);
  sub_1000069E4();
  sub_100009204();
  __chkstk_darwin(v6);
  sub_10000D58C();
  v8 = sub_10000D4A0(v7);
  v9 = type metadata accessor for RainInlineTruncateFallbackText(v8);
  v10 = sub_1000B50D0(v9, &v313);
  __chkstk_darwin(v10);
  sub_10004B3F0();
  sub_10000D4C4(v11);
  v12 = sub_100002A10(&qword_100132900, &qword_1000F7870);
  sub_1000B50D0(v12, &v333);
  sub_100009204();
  __chkstk_darwin(v13);
  sub_10000D58C();
  sub_10000D4A0(v14);
  v15 = sub_1000EB504();
  v16 = sub_10006BB10(v15, &v334);
  v305 = v17;
  __chkstk_darwin(v16);
  sub_10004B3F0();
  sub_10000D4C4(v18);
  v19 = sub_100002A10(&qword_100134AE8, &qword_1000F7878);
  v20 = sub_1000B50D0(v19, v323);
  v21 = __chkstk_darwin(v20);
  v278 = v271 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  sub_10000D4C4(v271 - v23);
  v24 = sub_100002A10(&qword_100134AF0, &qword_1000F7880);
  sub_1000B50D0(v24, &v331);
  sub_100009204();
  __chkstk_darwin(v25);
  sub_10000D58C();
  sub_10000D4C4(v26);
  v27 = sub_100002A10(&qword_100134AF8, &qword_1000F7888);
  sub_1000B50D0(v27, v322);
  sub_100009204();
  __chkstk_darwin(v28);
  sub_10000D58C();
  sub_10000D4C4(v29);
  v30 = sub_100002A10(&qword_100134B00, &qword_1000F7890);
  sub_1000B50D0(v30, &v332);
  sub_100009204();
  __chkstk_darwin(v31);
  sub_10000D58C();
  sub_10000D4C4(v32);
  sub_100002A10(&qword_10012FD68, &unk_1000F5370);
  sub_100009204();
  __chkstk_darwin(v33);
  sub_10000D58C();
  sub_10000D4A0(v34);
  v35 = sub_1000E8C34();
  v36 = sub_10006BB10(v35, v317);
  v291 = v37;
  __chkstk_darwin(v36);
  sub_10004B3F0();
  sub_10000D4A0(v38);
  v39 = sub_1000EA4E4();
  v40 = sub_10006BB10(v39, &v340);
  v318 = v41;
  __chkstk_darwin(v40);
  sub_10004B3F0();
  sub_10000D4C4(v42);
  v43 = sub_100002A10(&qword_1001328A0, &qword_1000F4090);
  sub_10006BB10(v43, &v341);
  v320 = v44;
  sub_100009204();
  __chkstk_darwin(v45);
  sub_10000D58C();
  sub_10000D4C4(v46);
  v322[1] = sub_100002A10(&qword_10012FB88, &qword_1000F0538);
  sub_1000069E4();
  sub_100009204();
  __chkstk_darwin(v47);
  sub_10000D58C();
  sub_10000D4A0(v48);
  v49 = sub_1000EAD74();
  v50 = sub_10006BB10(v49, v330);
  v296 = v51;
  __chkstk_darwin(v50);
  sub_10004B3F0();
  sub_10000D4A0(v52);
  v53 = sub_1000EC1F4();
  v54 = sub_10006BB10(v53, &v312);
  v283 = v55;
  __chkstk_darwin(v54);
  sub_10004B3F0();
  sub_10000D4A0(v56);
  v57 = sub_1000EC224();
  v58 = sub_10006BB10(v57, v328);
  v294 = v59;
  __chkstk_darwin(v58);
  sub_10004B3F0();
  sub_10000D4C4(v60);
  v61 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  sub_10006BB10(v61, v329);
  v295 = v62;
  sub_100009204();
  __chkstk_darwin(v63);
  sub_10000D58C();
  sub_10000D4A0(v64);
  v65 = sub_1000E8444();
  v66 = sub_10006BB10(v65, v310);
  v280 = v67;
  __chkstk_darwin(v66);
  sub_10004B3F0();
  sub_10000D4A0(v68);
  v69 = sub_1000EAFC4();
  v70 = sub_10006BB10(v69, &v325);
  v314 = v71;
  __chkstk_darwin(v70);
  sub_10004B3F0();
  sub_10000D4A0(v72);
  v73 = sub_1000EA344();
  __chkstk_darwin(v73 - 8);
  sub_10004B3F0();
  sub_10000D4A0(v74);
  v75 = sub_1000E8684();
  sub_1000090D4();
  v289 = v76;
  __chkstk_darwin(v77);
  sub_100006A10();
  v80 = v79 - v78;
  v81 = sub_1000E86A4();
  sub_1000090D4();
  v288 = v82;
  __chkstk_darwin(v83);
  sub_100006A10();
  v86 = v85 - v84;
  v87 = sub_100002A10(&qword_100134B08, &qword_1000F7898);
  sub_1000B50D0(v87, &v338);
  sub_100009204();
  __chkstk_darwin(v88);
  v90 = v271 - v89;
  v91 = type metadata accessor for ConditionState(0);
  v92 = sub_1000B50D0(v91, &v327);
  v93 = __chkstk_darwin(v92);
  v95 = (v271 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v93);
  v97 = (v271 - v96);
  v98 = type metadata accessor for AggregateWeatherViewModel(0);
  sub_1000069E4();
  __chkstk_darwin(v99);
  sub_100006A10();
  v102 = v101 - v100;
  v103 = type metadata accessor for AdaptiveConditionsComplicationDataStatus(0);
  __chkstk_darwin(v103 - 8);
  sub_100006A10();
  v106 = v105 - v104;
  sub_100072C58(v326, v105 - v104, type metadata accessor for AdaptiveConditionsComplicationDataStatus);
  v107 = sub_100005B30(v106, 2, v98);
  if (v107)
  {
    if (v107 == 1)
    {
      sub_1000B5274();
      sub_1000EA334();
      v342._countAndFlagsBits = sub_10000FEFC();
      sub_1000EA324(v342);
      sub_1000EAA24();
      sub_1000EA304();

      v343._countAndFlagsBits = 0xB0C22D2D20;
      v343._object = 0xA500000000000000;
      sub_1000EA324(v343);
      v108 = sub_1000EA364();
      v112 = sub_1000B50E4(v108, v109, v110, v111);
      sub_1000B517C(v112, v113, v114, v115);
      v117 = *(v116 - 256);
      sub_1000EA4B4();
      sub_1000B524C();
      sub_1000EA914();
      sub_10006BB44();
      v118(v117, v319);
      sub_1000058EC(v98, v95, v102);

      sub_1000B520C();
      v119 = sub_1000EA354();
      sub_1000B50E4(v119, v120, v121, v122);
      sub_1000B51FC();
      v124 = v123;
      v334 = &type metadata for Text;
      v335 = &protocol witness table for Text;
      sub_1000B510C();
      v125 = v321;
      sub_1000B51A4();
      v127 = *(v126 - 256);
      v128 = sub_1000EA8C4();
      sub_1000B521C(v128, v129, v124 & 1);
      sub_10006BB44();
      v130(v81, v127);
      sub_100072EB0(v125, v316, &qword_10012FB88, &qword_1000F0538);
      swift_storeEnumTagMultiPayload();
      sub_1000B4D88();
      sub_10001CE30();
      v131 = v315;
      sub_1000EA4A4();
      sub_100072EB0(v131, v324, &qword_100134AE0, &qword_1000F7868);
      swift_storeEnumTagMultiPayload();
      sub_1000B4D58();
      sub_1000EA4A4();
      sub_100008E48(v131, &qword_100134AE0, &qword_1000F7868);
      v132 = v125;
    }

    else
    {
      sub_1000B5274();
      sub_1000EA334();
      v344._countAndFlagsBits = sub_10000FEFC();
      sub_1000EA324(v344);
      sub_1000EAA24();
      sub_1000EA304();

      v345._countAndFlagsBits = sub_10000FEFC();
      sub_1000EA324(v345);
      v155 = sub_1000EA364();
      v159 = sub_1000B50E4(v155, v156, v157, v158);
      sub_1000B517C(v159, v160, v161, v162);
      sub_10009572C();
      sub_1000EA4B4();
      sub_1000B524C();
      sub_1000EA914();
      sub_10006BB44();
      v163(v97, v319);
      sub_1000058EC(v98, v95, v102);

      sub_1000B520C();
      v164 = sub_1000EA354();
      sub_1000B50E4(v164, v165, v166, v167);
      sub_1000B51FC();
      v169 = v168;
      v334 = &type metadata for Text;
      v335 = &protocol witness table for Text;
      sub_1000B510C();
      v170 = v321;
      sub_1000B51A4();
      v172 = *(v171 - 256);
      v173 = sub_1000EA8C4();
      sub_1000B521C(v173, v174, v169 & 1);
      sub_10006BB44();
      v175(v81, v172);
      sub_100072EB0(v170, v324, &qword_10012FB88, &qword_1000F0538);
      swift_storeEnumTagMultiPayload();
      sub_1000B4D58();
      sub_10001CE30();
      sub_1000EA4A4();
      v132 = v170;
    }

    return sub_100008E48(v132, &qword_10012FB88, &qword_1000F0538);
  }

  else
  {
    v271[1] = v86;
    v271[2] = v80;
    v272 = v75;
    v275 = v98;
    v276 = v81;
    v273 = v90;
    sub_10001D31C(v106, v102);
    type metadata accessor for AdaptiveConditionsInlineContentView(0);
    v277 = v102;
    sub_10009D49C(v102, v97);
    sub_100072C58(v97, v95, type metadata accessor for ConditionState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v134 = v97;
    v135 = v313;
    v136 = v314;
    v137 = v311;
    v138 = v306;
    v139 = v305;
    v140 = v276;
    v141 = v304;
    v274 = v134;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v326 = *(sub_100002A10(&qword_100132870, &qword_1000F4050) + 48);
        v257 = v95;
        v258 = v286;
        (*(v139 + 32))(v286, v257, v137);
        (*(v139 + 16))(v141, v258, v137);
        sub_1000B520C();
        v259 = sub_1000EA354();
        v263 = sub_1000B50E4(v259, v260, v261, v262);
        v154 = v264;
        v265 = v139;
        v267 = v266;
        v149 = v268;
        sub_1000B4FC0(&qword_100132908, type metadata accessor for RainInlineTruncateFallbackText, &unk_1000F41A0);
        sub_1000EA8C4();
        sub_1000058EC(v263, v154, v267 & 1);

        sub_1000B4F04(v141, type metadata accessor for RainInlineTruncateFallbackText);
        sub_100072E40(v138, v302);
        swift_storeEnumTagMultiPayload();
        sub_1000B4E14();
        sub_10009D368();
        sub_1000B51CC();
        sub_1000B51B8();
        sub_1000EA4A4();
        sub_100008E48(v138, &qword_100132900, &qword_1000F7870);
        (*(v265 + 8))(v258, v311);
        sub_1000EBAF4();
        sub_1000069E4();
        (*(v269 + 8))(v257 + v326);
        sub_1000B5260();
        break;
      case 2:
        sub_1000B514C();
        sub_1000B4F04(v95, v177);
        goto LABEL_13;
      case 3:
LABEL_13:
        sub_1000B5274();
        sub_1000E8644();
        sub_10009572C();
        sub_1000E8694();
        sub_10006BB44();
        v178(v138, v140);
        v179 = sub_1000E8654();
        sub_10006BB44();
        v180(v139, v272);
        sub_1000EA334();
        v346._countAndFlagsBits = sub_10000FEFC();
        sub_1000EA324(v346);
        v181 = v300;
        sub_1000EB664();
        sub_1000EAF84();
        v306 = *(v136 + 8);
        v306(v181, v301);
        sub_1000EAA24();
        sub_1000EA304();

        v347._countAndFlagsBits = 32;
        v347._object = 0xE100000000000000;
        sub_1000EA324(v347);
        sub_1000EB5B4();
        v182 = v297;
        sub_1000EAD24();
        v314 = v136 + 8;
        if (v179)
        {
          v183 = v282;
          sub_1000EC204();
          sub_1000B5138();
          v304 = v184;
          v311 = v185;
          v185(v182, v307);
          v285 = *(v296 + 13);
          v305 = (v296 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
          LODWORD(v326) = enum case for WeatherFormatPlaceholder.none(_:);
          v186 = v135;
          v187 = v309;
          v285(v135);
          v303 = sub_1000E93A4();
          sub_1000E9394();
          sub_1000B4FC0(&qword_1001328A8, &type metadata accessor for NSUnitTemperature.AttributedWeatherFormatStyle, &protocol conformance descriptor for NSUnitTemperature.AttributedWeatherFormatStyle);
          v188 = v279;
          v189 = v308;
          v190 = v284;
          sub_1000E82F4();

          v191 = sub_1000B51E0();
          v296 = v192;
          v192(v191, v187);
          sub_10006BB44();
          v193(v183, v190);
          sub_1000B5138();
          v288 = v194;
          v195 = v312;
          v295 = v196;
          v196(v312, v189);
          sub_1000EA2F4();
          sub_10006BB44();
          v197(v188, v281);
          v348._countAndFlagsBits = sub_10000FEFC();
          sub_1000EA324(v348);
          v198 = sub_1000EA364();
          v202 = sub_1000B50E4(v198, v199, v200, v201);
          v206 = v297;
        }

        else
        {
          v207 = *(v296 + 13);
          v305 = (v296 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
          LODWORD(v326) = enum case for WeatherFormatPlaceholder.none(_:);
          v186 = v135;
          v208 = v309;
          v285 = v207;
          v207(v135);
          v303 = sub_1000E93A4();
          sub_1000E9394();
          sub_1000B5164();
          sub_1000B4FC0(v209, v210, &protocol conformance descriptor for NSUnitTemperature.BaseWeatherFormatStyle);
          v211 = v308;
          v212 = v307;
          v213 = v312;
          v287 = sub_1000E8304();
          v215 = v214;

          v216 = sub_1000B51E0();
          v296 = v217;
          v217(v216, v208);
          sub_1000B5138();
          v304 = v218;
          v206 = v182;
          v311 = v219;
          v219(v182, v212);
          sub_1000B5138();
          v288 = v220;
          v195 = v213;
          v295 = v221;
          v221(v213, v211);
          v349._countAndFlagsBits = v287;
          v349._object = v215;
          sub_1000EA314(v349);

          v350._countAndFlagsBits = sub_10000FEFC();
          sub_1000EA324(v350);
          v222 = sub_1000EA364();
          v202 = sub_1000B50E4(v222, v223, v224, v225);
        }

        v286 = v202;
        v287 = v203;
        v312 = v205;
        v334 = v202;
        v335 = v203;
        LODWORD(v294) = v204 & 1;
        v336 = v204 & 1;
        v337 = v205;
        sub_10009572C();
        sub_1000EA4B4();
        sub_1000EA914();
        sub_10006BB44();
        v226(v186, v319);
        sub_1000EA334();
        v351._countAndFlagsBits = sub_10000FEFC();
        sub_1000EA324(v351);
        sub_10009572C();
        sub_1000EB664();
        v227 = v290;
        sub_1000EAF64();
        v306(v186, v301);
        v228 = sub_1000E8C24();
        v230 = v229;
        sub_10006BB44();
        v231(v227, v292);
        v352._countAndFlagsBits = v228;
        v352._object = v230;
        sub_1000EA314(v352);

        v353._countAndFlagsBits = 8236;
        v353._object = 0xE200000000000000;
        sub_1000EA324(v353);
        v232 = v195;
        sub_1000EB5B4();
        sub_1000EC0F4();
        v233 = v293;
        sub_1000028A0(v293, 1, 1, v276);
        sub_1000EAD34();

        sub_100008E48(v233, &qword_10012FD68, &unk_1000F5370);
        v234 = v313;
        v235 = v309;
        (v285)(v313, v326, v309);
        sub_1000E93A4();
        sub_1000E9394();
        sub_1000B5164();
        sub_1000B4FC0(v236, v237, &protocol conformance descriptor for NSUnitTemperature.BaseWeatherFormatStyle);
        v154 = v308;
        v238 = v307;
        v239 = sub_1000E8304();
        v241 = v240;

        v296(v234, v235);
        v311(v206, v238);
        v295(v232, v154);
        v354._countAndFlagsBits = v239;
        v354._object = v241;
        sub_1000EA314(v354);

        v355._countAndFlagsBits = 0x7365657267656420;
        v355._object = 0xE800000000000000;
        sub_1000EA324(v355);
        v242 = sub_1000EA364();
        sub_1000B50E4(v242, v243, v244, v245);
        sub_1000B51FC();
        LOBYTE(v241) = v246;
        v334 = &type metadata for Text;
        v335 = &protocol witness table for Text;
        sub_1000B510C();
        v247 = v321;
        sub_1000B51A4();
        v249 = *(v248 - 256);
        v250 = v322[0];
        v251 = sub_1000EA8C4();
        sub_1000B521C(v251, v252, v241 & 1);
        sub_10006BB44();
        v253(v250, v249);
        sub_100072EB0(v247, v298, &qword_10012FB88, &qword_1000F0538);
        sub_1000B5280();
        sub_10001CE30();
        sub_1000B4EA0();
        v254 = v299;
        sub_1000EA4A4();
        v149 = &qword_1000F7890;
        v141 = v302;
        sub_100072EB0(v254, v302, &qword_100134B00, &qword_1000F7890);
        sub_1000B5280();
        sub_1000B4E14();
        sub_10009D368();
        sub_1000B51CC();
        sub_1000B51B8();
        sub_1000EA4A4();
        sub_1000058EC(v286, v287, v294);

        sub_100008E48(v254, &qword_100134B00, &qword_1000F7890);
        v255 = sub_100019AC0();
        sub_100008E48(v255, v256, &qword_1000F0538);
        sub_1000B5260();
        break;
      default:
        v143 = *v95;
        v142 = v95[1];
        sub_100002A10(&qword_10012FCE0, &qword_1000F05F8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1000F03E0;
        v145 = sub_1000EA534();
        *(inited + 32) = v145;
        v146 = sub_1000EA554();
        *(inited + 33) = v146;
        v147 = sub_1000EA544();
        sub_1000EA544();
        if (sub_1000EA544() != v145)
        {
          v147 = sub_1000EA544();
        }

        sub_1000EA544();
        v148 = sub_1000EA544();
        v149 = v324;
        if (v148 != v146)
        {
          v147 = sub_1000EA544();
        }

        v141 = v315;
        v150 = v302;
        v151 = v278;
        *v278 = v147;
        v152 = sub_100002A10(&qword_100134B30, &qword_1000F78A0);
        sub_1000B458C(v143, v142, v151 + *(v152 + 44));

        v153 = v287;
        sub_1000B4F5C(v151, v287);
        sub_100072EB0(v153, v298, &qword_100134AE8, &qword_1000F7878);
        swift_storeEnumTagMultiPayload();
        v154 = sub_10001CE30();
        sub_1000B4EA0();
        sub_1000B5274();
        sub_1000EA4A4();
        sub_100072EB0(v143, v150, &qword_100134B00, &qword_1000F7890);
        sub_1000B5280();
        sub_1000B4E14();
        sub_10009D368();
        sub_1000B51CC();
        sub_1000B51B8();
        sub_1000EA4A4();
        sub_100008E48(v143, &qword_100134B00, &qword_1000F7890);
        sub_100008E48(v153, &qword_100134AE8, &qword_1000F7878);
        break;
    }

    sub_100072EB0(v154, v316, &qword_100134B08, &qword_1000F7898);
    sub_1000B5280();
    sub_1000B4D88();
    sub_10001CE30();
    sub_1000EA4A4();
    sub_100072EB0(v141, v149, &qword_100134AE0, &qword_1000F7868);
    swift_storeEnumTagMultiPayload();
    sub_1000B4D58();
    sub_1000EA4A4();
    sub_100008E48(v141, &qword_100134AE0, &qword_1000F7868);
    sub_100008E48(v154, &qword_100134B08, &qword_1000F7898);
    sub_1000B514C();
    sub_1000B4F04(v274, v270);
    return sub_1000B4F04(v277, type metadata accessor for AggregateWeatherViewModel);
  }
}

uint64_t sub_1000B458C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v50 = a1;
  v62 = a3;
  v63 = sub_1000EA4E4();
  v5 = *(v63 - 8);
  __chkstk_darwin(v63);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000EA344();
  __chkstk_darwin(v8 - 8);
  v59 = sub_100002A10(&qword_1001328A0, &qword_1000F4090);
  v66 = *(v59 - 8);
  __chkstk_darwin(v59);
  v49 = &v49 - v9;
  v65 = sub_100002A10(&qword_10012FB88, &qword_1000F0538);
  v10 = __chkstk_darwin(v65);
  v61 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v60 = &v49 - v13;
  v14 = __chkstk_darwin(v12);
  v52 = &v49 - v15;
  __chkstk_darwin(v14);
  v64 = &v49 - v16;
  sub_1000EA334();
  v71._countAndFlagsBits = 0;
  v71._object = 0xE000000000000000;
  sub_1000EA324(v71);
  v58 = "ng the 'severe' icon";
  sub_1000EAA24();
  sub_1000EA304();

  v72._countAndFlagsBits = 32;
  v72._object = 0xE100000000000000;
  sub_1000EA324(v72);
  v73._countAndFlagsBits = a1;
  v73._object = a2;
  sub_1000EA314(v73);
  v74._countAndFlagsBits = 0;
  v74._object = 0xE000000000000000;
  sub_1000EA324(v74);
  sub_1000EA364();
  v17 = sub_1000EA7F4();
  v19 = v18;
  v67 = v17;
  v68 = v18;
  v21 = v20 & 1;
  v69 = v20 & 1;
  v70 = v22;
  v54 = v7;
  sub_1000EA4B4();
  sub_1000EA914();
  v23 = *(v5 + 8);
  v56 = v5 + 8;
  v57 = v23;
  v23(v7, v63);
  sub_1000058EC(v17, v19, v21);

  sub_1000EA354();
  v24 = sub_1000EA7F4();
  v26 = v25;
  LOBYTE(v5) = v27;
  v67 = &type metadata for Text;
  v68 = &protocol witness table for Text;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v52;
  v29 = v59;
  v30 = v49;
  sub_1000EA8C4();
  sub_1000058EC(v24, v26, v5 & 1);

  v31 = *(v66 + 8);
  v66 += 8;
  v53 = v31;
  v31(v30, v29);
  v67 = v50;
  v68 = v51;
  sub_100005898();
  sub_1000EA064();
  sub_100008E48(v28, &qword_10012FB88, &qword_1000F0538);
  sub_1000EA334();
  v75._countAndFlagsBits = 0;
  v75._object = 0xE000000000000000;
  sub_1000EA324(v75);
  sub_1000EAA24();
  sub_1000EA304();

  v76._countAndFlagsBits = 0x2065726576655320;
  v76._object = 0xEF72656874616557;
  sub_1000EA324(v76);
  sub_1000EA364();
  v32 = sub_1000EA7F4();
  v34 = v33;
  v67 = v32;
  v68 = v33;
  LOBYTE(v17) = v35 & 1;
  v69 = v35 & 1;
  v70 = v36;
  v37 = v54;
  sub_1000EA4B4();
  sub_1000EA914();
  v57(v37, v63);
  sub_1000058EC(v32, v34, v17);

  sub_1000EA354();
  v38 = sub_1000EA7F4();
  v40 = v39;
  v42 = v41;
  v43 = v60;
  sub_1000EA8C4();
  sub_1000058EC(v38, v40, v42 & 1);

  v53(v30, v29);
  sub_1000EA354();
  sub_1000EA054();

  sub_100008E48(v43, &qword_10012FB88, &qword_1000F0538);
  v44 = v64;
  sub_100072EB0(v64, v43, &qword_10012FB88, &qword_1000F0538);
  v45 = v61;
  sub_100072EB0(v28, v61, &qword_10012FB88, &qword_1000F0538);
  v46 = v62;
  sub_100072EB0(v43, v62, &qword_10012FB88, &qword_1000F0538);
  v47 = sub_100002A10(&qword_100134B38, &qword_1000F78A8);
  sub_100072EB0(v45, v46 + *(v47 + 48), &qword_10012FB88, &qword_1000F0538);
  sub_100008E48(v28, &qword_10012FB88, &qword_1000F0538);
  sub_100008E48(v44, &qword_10012FB88, &qword_1000F0538);
  sub_100008E48(v45, &qword_10012FB88, &qword_1000F0538);
  return sub_100008E48(v43, &qword_10012FB88, &qword_1000F0538);
}

unint64_t sub_1000B4D88()
{
  result = qword_100134B18;
  if (!qword_100134B18)
  {
    sub_100002ABC(&qword_100134B08, &qword_1000F7898);
    sub_1000B4E14();
    sub_10009D368();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134B18);
  }

  return result;
}

unint64_t sub_1000B4E14()
{
  result = qword_100134B20;
  if (!qword_100134B20)
  {
    sub_100002ABC(&qword_100134B00, &qword_1000F7890);
    sub_10001CE30();
    sub_1000B4EA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134B20);
  }

  return result;
}

unint64_t sub_1000B4EA0()
{
  result = qword_100134B28;
  if (!qword_100134B28)
  {
    sub_100002ABC(&qword_100134AE8, &qword_1000F7878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134B28);
  }

  return result;
}

uint64_t sub_1000B4F04(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000069E4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000B4F5C(uint64_t a1, uint64_t a2)
{
  sub_100002A10(&qword_100134AE8, &qword_1000F7878);
  sub_1000069E4();
  v3 = sub_100019AC0();
  v4(v3);
  return a2;
}

uint64_t sub_1000B4FC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000B504C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100002ABC(a2, a3);
    a4();
    sub_10001CE30();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000B50E4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{

  return sub_1000EA7F4();
}

uint64_t sub_1000B510C()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000B517C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 - 128) = result;
  *(v4 - 120) = a2;
  *(v4 - 112) = a3 & 1;
  *(v4 - 104) = a4;
  return result;
}

double sub_1000B521C(uint64_t a1, uint64_t a2, char a3)
{
  sub_1000058EC(v3, v4, a3);

  return result;
}

uint64_t sub_1000B5280()
{

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1000B529C()
{
  result = qword_100134B70;
  if (!qword_100134B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134B70);
  }

  return result;
}

uint64_t sub_1000B5334()
{
  v0 = sub_1000B79BC();

  return _EntityURLRepresentation.init(_:)(0xD000000000000055, 0x80000001000FD0F0, &unk_100128328, v0);
}

uint64_t sub_1000B5390()
{
  v0 = sub_100002A10(&qword_100134C88, &qword_1000F9FF0);
  __chkstk_darwin(v0 - 8);
  v2 = &v13[-v1];
  v3 = sub_1000E86A4();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1000E84B4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000EBE54();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1000E84C4();
  __chkstk_darwin(v9);
  v10 = sub_1000E8204();
  sub_10004B338(v10, qword_100145C58);
  sub_100008CB8(v10, qword_100145C58);
  sub_1000EBE44();
  if (qword_10012EC00 != -1)
  {
    swift_once();
  }

  v11 = sub_100008CB8(v4, qword_100145E08);
  (*(v5 + 16))(v7, v11, v4);
  sub_1000E8644();
  sub_1000E84D4();
  sub_1000028A0(v2, 1, 1, v9);
  return sub_1000E81F4();
}

uint64_t sub_1000B5670@<X0>(uint64_t a1@<X8>)
{
  v36[2] = a1;
  v2 = sub_100002A10(&qword_100134CB0, &unk_1000F9870);
  sub_100009210(v2);
  sub_100009204();
  __chkstk_darwin(v3);
  v36[1] = v36 - v4;
  v5 = sub_100002A10(&qword_100134C88, &qword_1000F9FF0);
  sub_100009210(v5);
  sub_100009204();
  __chkstk_darwin(v6);
  sub_1000B9748(v7, v36[0]);
  v8 = sub_1000E86A4();
  v9 = sub_100009210(v8);
  __chkstk_darwin(v9);
  sub_100006A10();
  sub_1000B96F8();
  v10 = sub_1000E84B4();
  sub_1000090D4();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100006A10();
  v16 = v15 - v14;
  v17 = sub_1000EBE54();
  v18 = sub_100009210(v17);
  __chkstk_darwin(v18);
  sub_100006A10();
  v19 = sub_1000E84C4();
  sub_1000326A0();
  __chkstk_darwin(v20);
  sub_1000091AC();
  __chkstk_darwin(v21);
  sub_1000EBE44();
  if (qword_10012EC00 != -1)
  {
    sub_1000B9634(&qword_10012EC00);
  }

  v22 = sub_100008CB8(v10, qword_100145E08);
  v23 = *(v12 + 16);
  v23(v16, v22, v10);
  sub_1000E8644();
  sub_1000326AC();
  sub_1000B96DC(v24, v25, v26, v1, v16);
  sub_1000EBE44();
  v23(v16, v22, v10);
  sub_1000E8644();
  v27 = v36[0];
  sub_1000326AC();
  sub_1000B96DC(v28, v29, v30, v1, v16);
  sub_1000028A0(v27, 0, 1, v19);
  sub_1000E80C4();
  sub_10000D52C();
  sub_1000028A0(v31, v32, v33, v34);
  sub_1000B96B8();
  sub_1000E84A4();
  return sub_1000E80D4();
}

uint64_t sub_1000B59BC()
{
  v0 = sub_1000E84C4();
  sub_10004B338(v0, qword_100145C70);
  sub_100008CB8(v0, qword_100145C70);
  return sub_1000E84A4();
}

uint64_t sub_1000B5A20()
{
  v0 = sub_100002A10(&qword_100134C88, &qword_1000F9FF0);
  __chkstk_darwin(v0 - 8);
  v2 = &v15[-v1];
  v3 = sub_1000E86A4();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1000E84B4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000EBE54();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1000E84C4();
  __chkstk_darwin(v9);
  v10 = sub_100002A10(&qword_100134D08, &qword_1000F9920);
  sub_10004B338(v10, qword_100145C88);
  v11 = sub_100008CB8(v10, qword_100145C88);
  sub_1000EBE44();
  if (qword_10012EC00 != -1)
  {
    swift_once();
  }

  v12 = sub_100008CB8(v4, qword_100145E08);
  (*(v5 + 16))(v7, v12, v4);
  sub_1000E8644();
  sub_1000E84D4();
  sub_1000028A0(v2, 1, 1, v9);
  sub_1000E8044();
  v13 = sub_1000E8034();
  return sub_1000028A0(v11, 0, 1, v13);
}

uint64_t sub_1000B5D28()
{
  result = swift_getKeyPath();
  qword_100145CA0 = result;
  return result;
}

uint64_t sub_1000B5D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 16);
  result = sub_1000B5D50(a1, a2, v4);
  *a3 = v4;
  return result;
}

double sub_1000B5DC0(uint64_t a1, uint64_t a2)
{
  sub_1000B9708(a1, a2);

  sub_1000E7F14();

  return result;
}

uint64_t sub_1000B5E78()
{
  sub_100032530();
  v0[21] = v1;
  v0[22] = v2;
  v0[20] = v3;
  v4 = sub_100002A10(&qword_100134CD8, &unk_1000F98D0);
  sub_100009210(v4);
  v0[23] = sub_1000B9730();
  v5 = sub_100002A10(&qword_100134CE0, &qword_1000F8250);
  sub_100009210(v5);
  v0[24] = sub_1000B9730();
  v6 = sub_100002A10(&qword_100134CE8, &qword_1000F8258);
  sub_100009210(v6);
  v0[25] = sub_1000B9730();
  v7 = sub_1000E7ED4();
  v0[26] = v7;
  sub_100032590(v7);
  v0[27] = v8;
  v0[28] = sub_1000B9730();
  v9 = sub_100002A10(&qword_100134CF0, &qword_1000F8260);
  v0[29] = v9;
  sub_100032590(v9);
  v0[30] = v10;
  v0[31] = swift_task_alloc();
  v0[32] = swift_task_alloc();
  sub_1000326AC();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1000B6014()
{
  sub_100032530();
  sub_1000E7F04();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1000B79BC();
  *v2 = v0;
  v2[1] = sub_1000B60F4;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1000B95FC, 0, &unk_100128328, v3);
}

uint64_t sub_1000B60F4()
{
  sub_100032530();
  sub_1000325B0();
  v1 = *v0;
  sub_10003246C();
  *v2 = v1;

  sub_1000326AC();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000B61DC()
{
  sub_1000E7F04();
  *(v0 + 88) = *(v0 + 64);
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  *(v0 + 272) = v1;
  *(v0 + 280) = v2;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  sub_1000E7F04();
  *(v0 + 313) = *(v0 + 312);
  if (qword_10012EB68 != -1)
  {
    sub_1000B9654(&qword_10012EB68);
  }

  v3 = qword_100145CA0;
  *(v0 + 288) = qword_100145CA0;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_1000B9674(&qword_100134CB8, &qword_100134CC0, &qword_1000F8228);
  *v4 = v0;
  v4[1] = sub_1000B631C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1000B631C()
{
  sub_1000325B0();
  v2 = *v1;
  sub_10003246C();
  *v3 = v2;
  *(v4 + 304) = v0;

  sub_1000326AC();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000B647C()
{
  v1 = v0[32];
  v3 = v0[29];
  v2 = v0[30];
  v15 = v0[31];
  v16 = v0[28];
  v18 = v0[27];
  v19 = v0[26];
  sub_1000E7F04();
  v4 = v0[15];
  v17 = v0[16];
  v0[17] = v0[14];
  v0[18] = v4;
  v0[19] = v17;
  sub_1000E81E4();
  sub_10000D52C();
  sub_1000028A0(v5, v6, v7, v8);
  sub_1000E8214();
  sub_10000D52C();
  sub_1000028A0(v9, v10, v11, v12);
  sub_1000B529C();
  sub_1000B7D80();
  sub_1000E7EA4();
  (*(v2 + 16))(v15, v1, v3);
  sub_1000E7EC4();
  sub_1000E7EE4();
  (*(v18 + 8))(v16, v19);

  (*(v2 + 8))(v1, v3);

  sub_1000324E4();

  return v13();
}

uint64_t sub_1000B66A0()
{
  (*(v0[30] + 8))(v0[32], v0[29]);

  sub_1000324E4();

  return v1();
}

uint64_t sub_1000B6764()
{
  v0 = sub_100002A10(&qword_100134CF8, &qword_1000F8268);
  sub_1000090D4();
  v2 = v1;
  sub_100009204();
  __chkstk_darwin(v3);
  v5 = &v7 - v4;
  if (qword_10012EB68 != -1)
  {
    sub_1000B9654(&qword_10012EB68);
  }

  sub_1000E80A4();

  sub_1000B7D80();
  sub_100006988(&qword_100134D00, &qword_100134CF8, &qword_1000F8268, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1000E8094();
  return (*(v2 + 8))(v5, v0);
}

uint64_t sub_1000B68B8()
{
  v0 = sub_100002A10(&qword_100134CC8, &qword_1000F8230);
  sub_100009210(v0);
  sub_100009204();
  __chkstk_darwin(v1);
  sub_1000B9748(v2, v38);
  v3 = sub_1000E8174();
  sub_1000090D4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100006A10();
  v9 = v8 - v7;
  v10 = sub_100002A10(&qword_100134C80, &unk_1000F81F0);
  v11 = sub_100009210(v10);
  __chkstk_darwin(v11);
  sub_1000091AC();
  __chkstk_darwin(v12);
  v13 = sub_100002A10(&qword_100134C88, &qword_1000F9FF0);
  sub_100009210(v13);
  sub_100009204();
  __chkstk_darwin(v14);
  sub_1000B96F8();
  v41 = sub_1000E84C4();
  sub_1000326A0();
  __chkstk_darwin(v15);
  sub_100006A10();
  sub_100002A10(&qword_100134C90, &unk_1000F8200);
  sub_1000E84A4();
  sub_10000D52C();
  sub_1000028A0(v16, v17, v18, v41);
  v19 = sub_1000E7ED4();
  sub_10000D52C();
  sub_1000028A0(v20, v21, v22, v19);
  sub_10000D52C();
  sub_1000028A0(v23, v24, v25, v19);
  v26 = enum case for InputConnectionBehavior.default(_:);
  v40 = *(v5 + 104);
  v40(v9, enum case for InputConnectionBehavior.default(_:), v3);
  sub_1000B79BC();
  v39 = sub_1000E7F34();
  sub_100002A10(&qword_100134CD0, &qword_1000F8238);
  sub_1000E84A4();
  sub_10000D52C();
  sub_1000028A0(v27, v28, v29, v41);
  sub_1000EC044();
  sub_10000D52C();
  sub_1000028A0(v30, v31, v32, v33);
  sub_10000D52C();
  sub_1000028A0(v34, v35, v36, v19);
  v40(v9, v26, v3);
  sub_1000E7F44();
  return v39;
}

uint64_t sub_1000B6C14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000B5D88();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t (*sub_1000B6C58(uint64_t *a1))()
{
  v2 = sub_1000B9500(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1000E7EF4();
  return sub_1000B9604;
}

uint64_t sub_1000B6CB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000B5E10();
  *a1 = result & 1;
  return result;
}

uint64_t (*sub_1000B6CF4(uint64_t *a1))()
{
  v2 = sub_1000B9500(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1000E7EF4();
  return sub_1000B9604;
}

uint64_t sub_1000B6D54()
{
  if (qword_10012EB68 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1000B6DD0()
{
  result = qword_100134B88;
  if (!qword_100134B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134B88);
  }

  return result;
}

unint64_t sub_1000B6E28()
{
  result = qword_100134B90;
  if (!qword_100134B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134B90);
  }

  return result;
}

uint64_t sub_1000B6F08@<X0>(uint64_t a1@<X8>)
{
  if (qword_10012EB60 != -1)
  {
    swift_once();
  }

  v2 = sub_100002A10(&qword_100134D08, &qword_1000F9920);
  v3 = sub_100008CB8(v2, qword_100145C88);

  return sub_1000B957C(v3, a1);
}

uint64_t sub_1000B6F8C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100032444;

  return sub_1000B5E78();
}

uint64_t sub_1000B7038@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000B68B8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000B7080()
{
  result = qword_100134B98;
  if (!qword_100134B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134B98);
  }

  return result;
}

unint64_t sub_1000B70D8()
{
  result = qword_100134BA0;
  if (!qword_100134BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134BA0);
  }

  return result;
}

uint64_t sub_1000B714C()
{
  sub_100032530();
  if (qword_10012EB00 != -1)
  {
    sub_1000B9698(&qword_10012EB00);
  }

  v1 = *(v0 + 16);
  *v1 = sub_100043F4C() & 1;
  sub_1000324E4();

  return v2();
}

uint64_t sub_1000B71FC()
{
  sub_100032530();
  if (qword_10012EB00 != -1)
  {
    sub_1000B9698(&qword_10012EB00);
  }

  sub_100043FF8(*(v0 + 16));
  sub_1000B9534();
  sub_1000EC1D4();
  sub_1000324E4();

  return v1();
}

uint64_t sub_1000B7290()
{
  sub_100032530();
  v1 = sub_1000E86A4();
  sub_100009210(v1);
  v0[2] = sub_1000B9730();
  v2 = sub_1000E84B4();
  v0[3] = v2;
  sub_100032590(v2);
  v0[4] = v3;
  v0[5] = sub_1000B9730();
  v4 = sub_1000EBE54();
  sub_100009210(v4);
  v0[6] = sub_1000B9730();
  v5 = sub_1000E84C4();
  sub_100009210(v5);
  v0[7] = sub_1000B9730();
  sub_1000326AC();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000B7394()
{
  sub_100002A10(&qword_100134B80, qword_1000F78C0);
  sub_1000B96B8();
  sub_1000EBE44();
  if (qword_10012EC00 != -1)
  {
    sub_1000B9634(&qword_10012EC00);
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = sub_100008CB8(v4, qword_100145E08);
  (*(v2 + 16))(v1, v5, v4);
  sub_1000E8644();
  sub_1000326AC();
  sub_1000B96DC(v6, v7, v8, v3, v1);
  sub_1000B9674(&qword_100134CB8, &qword_100134CC0, &qword_1000F8228);
  v9 = sub_1000E8254();

  v10 = v0[1];

  return v10(0xD00000000000001FLL, 0x80000001000F8160, v9);
}

uint64_t sub_1000B7550(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000B75E0;

  return sub_1000B7290();
}

uint64_t sub_1000B75E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000325B0();
  v9 = v8;
  v10 = *v4;
  sub_10003246C();
  *v11 = v10;

  if (!v3)
  {
    v12 = *(v9 + 16);
    *v12 = a1;
    v12[1] = a2;
    v12[2] = a3;
  }

  v13 = *(v10 + 8);

  return v13();
}

unint64_t sub_1000B76FC()
{
  result = qword_100134BA8;
  if (!qword_100134BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134BA8);
  }

  return result;
}

uint64_t sub_1000B7750(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000B7FD0();
  *v4 = v2;
  v4[1] = sub_1000B7800;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

uint64_t sub_1000B7800(uint64_t a1)
{
  sub_1000325B0();
  v5 = v4;
  v6 = *v2;
  sub_10003246C();
  *v7 = v6;

  if (!v1)
  {
    **(v5 + 16) = a1;
  }

  v8 = *(v6 + 8);

  return v8();
}

unint64_t sub_1000B790C()
{
  result = qword_100134BB0;
  if (!qword_100134BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134BB0);
  }

  return result;
}

unint64_t sub_1000B7964()
{
  result = qword_100134BB8;
  if (!qword_100134BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134BB8);
  }

  return result;
}

unint64_t sub_1000B79BC()
{
  result = qword_100134BC0;
  if (!qword_100134BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134BC0);
  }

  return result;
}

uint64_t sub_1000B7A10(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000B7FD0();
  *v5 = v2;
  v5[1] = sub_1000B9630;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1000B7AC4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000B7FD0();
  *v4 = v2;
  v4[1] = sub_1000B9600;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

uint64_t sub_1000B7B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000B7C34;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_1000B7C34()
{
  sub_100032530();
  v3 = v2;
  sub_1000325B0();
  v4 = *v1;
  sub_10003246C();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

unint64_t sub_1000B7D28()
{
  result = qword_100134BC8;
  if (!qword_100134BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134BC8);
  }

  return result;
}

unint64_t sub_1000B7D80()
{
  result = qword_100134BD0;
  if (!qword_100134BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134BD0);
  }

  return result;
}

unint64_t sub_1000B7DD8()
{
  result = qword_100134BD8;
  if (!qword_100134BD8)
  {
    sub_100002ABC(&qword_100134BE0, qword_1000F7B60);
    sub_1000B7D80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134BD8);
  }

  return result;
}

uint64_t sub_1000B7E5C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000B76FC();
  *v5 = v2;
  v5[1] = sub_100031BC4;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_1000B7F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100031BC4;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_1000B7FD0()
{
  result = qword_100134BE8;
  if (!qword_100134BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134BE8);
  }

  return result;
}

uint64_t sub_1000B8024()
{
  v0 = qword_100134B50;

  return v0;
}

unint64_t sub_1000B8060()
{
  result = qword_100134BF0;
  if (!qword_100134BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134BF0);
  }

  return result;
}

unint64_t sub_1000B80B8()
{
  result = qword_100134BF8;
  if (!qword_100134BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134BF8);
  }

  return result;
}

unint64_t sub_1000B8110()
{
  result = qword_100134C00;
  if (!qword_100134C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134C00);
  }

  return result;
}

unint64_t sub_1000B8168()
{
  result = qword_100134C08;
  if (!qword_100134C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134C08);
  }

  return result;
}

uint64_t sub_1000B81C8(uint64_t a1)
{
  sub_1000B94AC();
  v2 = sub_1000E8184();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_1000B8238()
{
  result = qword_100134C10;
  if (!qword_100134C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134C10);
  }

  return result;
}

unint64_t sub_1000B8290()
{
  result = qword_100134C18;
  if (!qword_100134C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134C18);
  }

  return result;
}

unint64_t sub_1000B82E8()
{
  result = qword_100134C20;
  if (!qword_100134C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134C20);
  }

  return result;
}

uint64_t sub_1000B8348@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1000B83D0(uint64_t a1)
{
  v2 = sub_1000B79BC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000B8420()
{
  result = qword_100134C38;
  if (!qword_100134C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134C38);
  }

  return result;
}

uint64_t sub_1000B8478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100032444;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_1000B853C(uint64_t a1)
{
  v2 = sub_1000B82E8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000B858C()
{
  result = qword_100134C40;
  if (!qword_100134C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134C40);
  }

  return result;
}

uint64_t sub_1000B85E4()
{
  v0 = sub_1000E86A4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000E84B4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000EBE54();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000E84C4();
  sub_10004B338(v6, qword_100145CA8);
  sub_100008CB8(v6, qword_100145CA8);
  sub_1000EBE44();
  if (qword_10012EC00 != -1)
  {
    swift_once();
  }

  v7 = sub_100008CB8(v1, qword_100145E08);
  (*(v2 + 16))(v4, v7, v1);
  sub_1000E8644();
  return sub_1000E84D4();
}

uint64_t sub_1000B87F8()
{
  v47 = sub_1000E8174();
  sub_1000090D4();
  v45 = v1;
  __chkstk_darwin(v2);
  sub_100006A10();
  v46 = v4 - v3;
  v5 = sub_100002A10(&qword_100134C80, &unk_1000F81F0);
  v6 = sub_100009210(v5);
  __chkstk_darwin(v6);
  sub_1000091AC();
  v44[2] = v7 - v8;
  __chkstk_darwin(v9);
  v44[1] = v44 - v10;
  v11 = sub_100002A10(&qword_100134C88, &qword_1000F9FF0);
  sub_100009210(v11);
  sub_100009204();
  __chkstk_darwin(v12);
  v14 = v44 - v13;
  v15 = sub_1000E86A4();
  v16 = sub_100009210(v15);
  __chkstk_darwin(v16);
  sub_100006A10();
  sub_1000B96F8();
  v17 = sub_1000E84B4();
  sub_1000090D4();
  v19 = v18;
  __chkstk_darwin(v20);
  sub_100006A10();
  v23 = v22 - v21;
  v24 = sub_1000EBE54();
  v25 = sub_100009210(v24);
  __chkstk_darwin(v25);
  sub_100006A10();
  v26 = sub_1000E84C4();
  sub_1000326A0();
  __chkstk_darwin(v27);
  sub_100006A10();
  v44[0] = sub_100002A10(&qword_100134C90, &unk_1000F8200);
  sub_1000EBE44();
  if (qword_10012EC00 != -1)
  {
    sub_1000B9634(&qword_10012EC00);
  }

  v28 = sub_100008CB8(v17, qword_100145E08);
  v29 = *(v19 + 16);
  v29(v23, v28, v17);
  sub_1000E8644();
  sub_1000326AC();
  sub_1000B96DC(v30, v31, v32, v0, v23);
  sub_1000EBE44();
  v29(v23, v28, v17);
  sub_1000E8644();
  sub_1000326AC();
  sub_1000B96DC(v33, v34, v35, v0, v23);
  sub_1000028A0(v14, 0, 1, v26);
  v36 = sub_1000E7ED4();
  v49 = 0;
  v50 = 0;
  v48 = 0;
  sub_10000D52C();
  sub_1000028A0(v37, v38, v39, v36);
  sub_10000D52C();
  sub_1000028A0(v40, v41, v42, v36);
  (*(v45 + 104))(v46, enum case for InputConnectionBehavior.default(_:), v47);
  sub_1000B79BC();
  return sub_1000E7F34();
}

uint64_t (*sub_1000B8C04(uint64_t *a1))()
{
  v2 = sub_1000B9500(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1000E7EF4();
  return sub_1000B8C64;
}

void sub_1000B8C68(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_1000B8CB8()
{
  result = qword_100134C48;
  if (!qword_100134C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134C48);
  }

  return result;
}

unint64_t sub_1000B8D10()
{
  result = qword_100134C50;
  if (!qword_100134C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134C50);
  }

  return result;
}

uint64_t sub_1000B8D64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B9404();
  v5 = sub_1000B94AC();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_1000B8DD0()
{
  v0 = qword_100134B60;

  return v0;
}

unint64_t sub_1000B8E10()
{
  result = qword_100134C58;
  if (!qword_100134C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134C58);
  }

  return result;
}

unint64_t sub_1000B8E68()
{
  result = qword_100134C60;
  if (!qword_100134C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134C60);
  }

  return result;
}

uint64_t sub_1000B8F60@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v8 = a2(0);
  sub_100008CB8(v8, a3);
  sub_1000326A0();
  v10 = *(v9 + 16);

  return v10(a5);
}

uint64_t sub_1000B9010(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000B9404();
  v7 = sub_1000B9458();
  v8 = sub_1000B94AC();
  *v5 = v2;
  v5[1] = sub_1000B90E4;

  return _URLRepresentableIntent<>.perform()(a1, a2, v6, v7, v8);
}

uint64_t sub_1000B90E4()
{
  sub_100032530();
  sub_1000325B0();
  v2 = *v1;
  sub_10003246C();
  *v3 = v2;

  if (v0)
  {
    sub_1000324E4();

    return v5();
  }

  return result;
}

uint64_t sub_1000B91D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000B87F8();
  *a1 = result;
  return result;
}

uint64_t sub_1000B9200(uint64_t a1)
{
  v2 = sub_1000B8CB8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

__n128 sub_1000B9254(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000B9268(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1000B92A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000B92F4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1000B9334(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1000B9404()
{
  result = qword_100134C98;
  if (!qword_100134C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134C98);
  }

  return result;
}

unint64_t sub_1000B9458()
{
  result = qword_100134CA0;
  if (!qword_100134CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134CA0);
  }

  return result;
}

unint64_t sub_1000B94AC()
{
  result = qword_100134CA8;
  if (!qword_100134CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134CA8);
  }

  return result;
}

void *sub_1000B9500(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

unint64_t sub_1000B9534()
{
  result = qword_100130448;
  if (!qword_100130448)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100130448);
  }

  return result;
}

uint64_t sub_1000B957C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_100134D08, &qword_1000F9920);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B9634(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000B9654(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000B9674(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_100006988(a1, a2, a3, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
}

uint64_t sub_1000B9698(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000B96DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1000E84D4();
}

uint64_t sub_1000B9708(uint64_t a1, uint64_t a2)
{
}

uint64_t sub_1000B9730()
{

  return swift_task_alloc();
}

unint64_t sub_1000B9764()
{
  result = qword_100134D30;
  if (!qword_100134D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134D30);
  }

  return result;
}

uint64_t sub_1000B97FC()
{
  v0 = sub_1000BB820();

  return _EntityURLRepresentation.init(_:)(0xD00000000000004DLL, 0x80000001000FD150, &unk_100128470, v0);
}

uint64_t sub_1000B9858()
{
  v0 = sub_100002A10(&qword_100134C88, &qword_1000F9FF0);
  __chkstk_darwin(v0 - 8);
  v2 = &v13[-v1];
  v3 = sub_1000E86A4();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1000E84B4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000EBE54();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1000E84C4();
  __chkstk_darwin(v9);
  v10 = sub_1000E8204();
  sub_10004B338(v10, qword_100145CC0);
  sub_100008CB8(v10, qword_100145CC0);
  sub_1000EBE44();
  if (qword_10012EC00 != -1)
  {
    swift_once();
  }

  v11 = sub_100008CB8(v4, qword_100145E08);
  (*(v5 + 16))(v7, v11, v4);
  sub_1000E8644();
  sub_1000E84D4();
  sub_1000028A0(v2, 1, 1, v9);
  return sub_1000E81F4();
}

uint64_t sub_1000B9B30@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v1 = sub_100002A10(&qword_100134CB0, &unk_1000F9870);
  sub_100009210(v1);
  sub_100009204();
  __chkstk_darwin(v2);
  v40 = &v37 - v3;
  v4 = sub_100002A10(&qword_100134C88, &qword_1000F9FF0);
  sub_100009210(v4);
  sub_100009204();
  __chkstk_darwin(v5);
  sub_1000B9748(v6, v37);
  v7 = sub_1000E86A4();
  v8 = sub_100009210(v7);
  __chkstk_darwin(v8);
  sub_100006A10();
  v11 = v10 - v9;
  v12 = sub_1000E84B4();
  sub_1000090D4();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_100006A10();
  v18 = v17 - v16;
  v19 = sub_1000EBE54();
  v20 = sub_100009210(v19);
  __chkstk_darwin(v20);
  sub_100006A10();
  v38 = sub_1000E84C4();
  sub_1000326A0();
  __chkstk_darwin(v21);
  sub_1000091AC();
  __chkstk_darwin(v22);
  sub_1000EBE44();
  if (qword_10012EC00 != -1)
  {
    sub_1000B9634(&qword_10012EC00);
  }

  v23 = sub_100008CB8(v12, qword_100145E08);
  v24 = *(v14 + 16);
  v24(v18, v23, v12);
  sub_1000E8644();
  sub_1000326AC();
  sub_1000B96DC(v25, v26, v27, v11, v18);
  sub_1000EBE44();
  v24(v18, v23, v12);
  sub_1000E8644();
  v28 = v39;
  sub_1000326AC();
  sub_1000B96DC(v29, v30, v31, v11, v18);
  sub_1000028A0(v28, 0, 1, v38);
  sub_1000E80C4();
  sub_10000D52C();
  sub_1000028A0(v32, v33, v34, v35);
  sub_1000E84A4();
  return sub_1000E80D4();
}

uint64_t sub_1000B9E7C()
{
  v0 = sub_1000E84C4();
  sub_10004B338(v0, qword_100145CD8);
  sub_100008CB8(v0, qword_100145CD8);
  return sub_1000E84A4();
}

uint64_t sub_1000B9EE0()
{
  v0 = sub_100002A10(&qword_100134C88, &qword_1000F9FF0);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  v3 = sub_1000E84C4();
  __chkstk_darwin(v3);
  v4 = sub_100002A10(&qword_100134D08, &qword_1000F9920);
  sub_10004B338(v4, qword_100145CF0);
  v5 = sub_100008CB8(v4, qword_100145CF0);
  sub_1000E84A4();
  sub_1000028A0(v2, 1, 1, v3);
  sub_1000E8044();
  v6 = sub_1000E8034();
  return sub_1000028A0(v5, 0, 1, v6);
}

uint64_t sub_1000BA048()
{
  result = swift_getKeyPath();
  qword_100145D08 = result;
  return result;
}

uint64_t sub_1000BA070()
{
  sub_100032530();
  v0[21] = v1;
  v0[22] = v2;
  v0[20] = v3;
  v4 = sub_100002A10(&qword_100134CD8, &unk_1000F98D0);
  sub_100009210(v4);
  v0[23] = sub_1000B9730();
  v5 = sub_100002A10(&qword_100134CE0, &qword_1000F8250);
  sub_100009210(v5);
  v0[24] = sub_1000B9730();
  v6 = sub_100002A10(&qword_100134E68, &qword_1000F8C18);
  sub_100009210(v6);
  v0[25] = sub_1000B9730();
  v7 = sub_1000E7ED4();
  v0[26] = v7;
  v0[27] = *(v7 - 8);
  v0[28] = sub_1000B9730();
  v8 = sub_100002A10(&qword_100134E70, &qword_1000F8C20);
  v0[29] = v8;
  v0[30] = *(v8 - 8);
  v0[31] = swift_task_alloc();
  v0[32] = swift_task_alloc();
  sub_1000326AC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000BA21C()
{
  sub_100032530();
  sub_1000E7F04();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1000BB820();
  *v2 = v0;
  v2[1] = sub_1000BA2FC;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1000BCCB8, 0, &unk_100128470, v3);
}

uint64_t sub_1000BA2FC()
{
  sub_100032530();
  sub_1000325B0();
  v1 = *v0;
  sub_10003246C();
  *v2 = v1;

  sub_1000326AC();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000BA3E4()
{
  sub_100032604();
  sub_1000E7F04();
  *(v0 + 88) = *(v0 + 64);
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  *(v0 + 272) = v1;
  *(v0 + 280) = v2;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  sub_1000E7F04();
  *(v0 + 313) = *(v0 + 312);
  if (qword_10012EB90 != -1)
  {
    sub_1000BCCE4(&qword_10012EB90);
  }

  v3 = qword_100145D08;
  *(v0 + 288) = qword_100145D08;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_1000B9674(&qword_100134E58, &qword_100134E60, &qword_1000F8C08);
  *v4 = v0;
  v4[1] = sub_1000BA520;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1000BA520()
{
  sub_100032604();
  sub_1000325B0();
  v2 = *v1;
  sub_10003246C();
  *v3 = v2;
  *(v4 + 304) = v0;

  sub_1000326AC();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000BA67C()
{
  v1 = v0[32];
  v3 = v0[29];
  v2 = v0[30];
  v15 = v0[31];
  v16 = v0[28];
  v18 = v0[27];
  v19 = v0[26];
  sub_1000E7F04();
  v4 = v0[15];
  v17 = v0[16];
  v0[17] = v0[14];
  v0[18] = v4;
  v0[19] = v17;
  sub_1000E81E4();
  sub_10000D52C();
  sub_1000028A0(v5, v6, v7, v8);
  sub_1000E8214();
  sub_10000D52C();
  sub_1000028A0(v9, v10, v11, v12);
  sub_1000B9764();
  sub_1000BBA34();
  sub_1000E7EA4();
  (*(v2 + 16))(v15, v1, v3);
  sub_1000E7EC4();
  sub_1000E7EE4();
  (*(v18 + 8))(v16, v19);

  (*(v2 + 8))(v1, v3);

  sub_1000324E4();

  return v13();
}

uint64_t sub_1000BA8A4()
{
  v0 = sub_100002A10(&qword_100134E78, &qword_1000F8C28);
  sub_1000090D4();
  v2 = v1;
  sub_100009204();
  __chkstk_darwin(v3);
  v5 = &v7 - v4;
  if (qword_10012EB90 != -1)
  {
    sub_1000BCCE4(&qword_10012EB90);
  }

  sub_1000E80A4();

  sub_1000BBA34();
  sub_100006988(&qword_100134E80, &qword_100134E78, &qword_1000F8C28, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1000E8094();
  return (*(v2 + 8))(v5, v0);
}

uint64_t sub_1000BA9F8()
{
  v0 = sub_100002A10(&qword_100134CC8, &qword_1000F8230);
  sub_100009210(v0);
  sub_100009204();
  __chkstk_darwin(v1);
  sub_1000B9748(v2, v38);
  v3 = sub_1000E8174();
  sub_1000090D4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100006A10();
  v9 = v8 - v7;
  v10 = sub_100002A10(&qword_100134C80, &unk_1000F81F0);
  v11 = sub_100009210(v10);
  __chkstk_darwin(v11);
  sub_1000091AC();
  __chkstk_darwin(v12);
  v13 = sub_100002A10(&qword_100134C88, &qword_1000F9FF0);
  sub_100009210(v13);
  sub_100009204();
  __chkstk_darwin(v14);
  v41 = sub_1000E84C4();
  sub_1000326A0();
  __chkstk_darwin(v15);
  sub_100006A10();
  sub_100002A10(&qword_100134E38, &unk_1000F8BE0);
  sub_1000E84A4();
  sub_10000D52C();
  sub_1000028A0(v16, v17, v18, v41);
  v19 = sub_1000E7ED4();
  sub_10000D52C();
  sub_1000028A0(v20, v21, v22, v19);
  sub_10000D52C();
  sub_1000028A0(v23, v24, v25, v19);
  v26 = enum case for InputConnectionBehavior.default(_:);
  v40 = *(v5 + 104);
  v40(v9, enum case for InputConnectionBehavior.default(_:), v3);
  sub_1000BB820();
  v39 = sub_1000E7F34();
  sub_100002A10(&qword_100134CD0, &qword_1000F8238);
  sub_1000E84A4();
  sub_10000D52C();
  sub_1000028A0(v27, v28, v29, v41);
  sub_1000EC044();
  sub_10000D52C();
  sub_1000028A0(v30, v31, v32, v33);
  sub_10000D52C();
  sub_1000028A0(v34, v35, v36, v19);
  v40(v9, v26, v3);
  sub_1000E7F44();
  return v39;
}

uint64_t (*sub_1000BAD5C(void *a1))()
{
  v2 = sub_1000B9500(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1000E7EF4();
  return sub_1000BCCC0;
}

uint64_t (*sub_1000BADBC(void *a1))()
{
  v2 = sub_1000B9500(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1000E7EF4();
  return sub_1000BCCC0;
}

uint64_t sub_1000BAE1C()
{
  if (qword_10012EB90 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1000BAE7C()
{
  result = qword_100134D48;
  if (!qword_100134D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134D48);
  }

  return result;
}

unint64_t sub_1000BAED4()
{
  result = qword_100134D50;
  if (!qword_100134D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134D50);
  }

  return result;
}

uint64_t sub_1000BAFAC@<X0>(uint64_t a1@<X8>)
{
  if (qword_10012EB88 != -1)
  {
    swift_once();
  }

  v2 = sub_100002A10(&qword_100134D08, &qword_1000F9920);
  v3 = sub_100008CB8(v2, qword_100145CF0);

  return sub_1000B957C(v3, a1);
}

uint64_t sub_1000BB030()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100032444;

  return sub_1000BA070();
}

uint64_t sub_1000BB0DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000BA9F8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000BB124()
{
  result = qword_100134D58;
  if (!qword_100134D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134D58);
  }

  return result;
}

unint64_t sub_1000BB17C()
{
  result = qword_100134D60;
  if (!qword_100134D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134D60);
  }

  return result;
}

uint64_t sub_1000BB1F0()
{
  sub_100032530();
  if (qword_10012EB00 != -1)
  {
    sub_1000B9698(&qword_10012EB00);
  }

  v1 = *(v0 + 16);
  *v1 = sub_100043DE0() & 1;
  sub_1000324E4();

  return v2();
}

uint64_t sub_1000BB2A0()
{
  sub_100032530();
  if (qword_10012EB00 != -1)
  {
    sub_1000B9698(&qword_10012EB00);
  }

  sub_100043E8C(*(v0 + 16));
  sub_1000B9534();
  sub_1000EC1D4();
  sub_1000324E4();

  return v1();
}

uint64_t sub_1000BB334()
{
  sub_100032530();
  v1 = sub_1000E84C4();
  sub_100009210(v1);
  *(v0 + 16) = sub_1000B9730();
  sub_1000326AC();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_1000BB3AC()
{
  sub_100032604();
  sub_100002A10(&qword_100134D40, qword_1000F82A0);
  sub_1000E84A4();
  sub_1000B9674(&qword_100134E58, &qword_100134E60, &qword_1000F8C08);
  v1 = sub_1000E8254();

  v2 = *(v0 + 8);

  return v2(0xD000000000000023, 0x80000001000F8B50, v1);
}

uint64_t sub_1000BB4D4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000B75E0;

  return sub_1000BB334();
}

unint64_t sub_1000BB568()
{
  result = qword_100134D68;
  if (!qword_100134D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134D68);
  }

  return result;
}

uint64_t sub_1000BB5BC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000BBBC8();
  *v4 = v2;
  v4[1] = sub_1000BB66C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

uint64_t sub_1000BB66C()
{
  sub_100032604();
  v3 = v2;
  sub_1000325B0();
  v5 = v4;
  v6 = *v1;
  sub_10003246C();
  *v7 = v6;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v8 = *(v6 + 8);

  return v8();
}

unint64_t sub_1000BB770()
{
  result = qword_100134D70;
  if (!qword_100134D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134D70);
  }

  return result;
}

unint64_t sub_1000BB7C8()
{
  result = qword_100134D78;
  if (!qword_100134D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134D78);
  }

  return result;
}

unint64_t sub_1000BB820()
{
  result = qword_100134D80;
  if (!qword_100134D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134D80);
  }

  return result;
}

uint64_t sub_1000BB874(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000BBBC8();
  *v5 = v2;
  v5[1] = sub_1000B9630;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1000BB928(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000BBBC8();
  *v4 = v2;
  v4[1] = sub_1000BCCBC;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1000BB9DC()
{
  result = qword_100134D88;
  if (!qword_100134D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134D88);
  }

  return result;
}

unint64_t sub_1000BBA34()
{
  result = qword_100134D90;
  if (!qword_100134D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134D90);
  }

  return result;
}

unint64_t sub_1000BBA8C()
{
  result = qword_100134D98;
  if (!qword_100134D98)
  {
    sub_100002ABC(&qword_100134DA0, qword_1000F8540);
    sub_1000BBA34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134D98);
  }

  return result;
}

uint64_t sub_1000BBB10(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000BB568();
  *v5 = v2;
  v5[1] = sub_100031BC4;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1000BBBC8()
{
  result = qword_100134DA8;
  if (!qword_100134DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134DA8);
  }

  return result;
}

uint64_t sub_1000BBC1C()
{
  v0 = qword_100134D10;

  return v0;
}

unint64_t sub_1000BBC58()
{
  result = qword_100134DB0;
  if (!qword_100134DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134DB0);
  }

  return result;
}

unint64_t sub_1000BBCB0()
{
  result = qword_100134DB8;
  if (!qword_100134DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134DB8);
  }

  return result;
}

unint64_t sub_1000BBD08()
{
  result = qword_100134DC0;
  if (!qword_100134DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134DC0);
  }

  return result;
}

unint64_t sub_1000BBD60()
{
  result = qword_100134DC8;
  if (!qword_100134DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134DC8);
  }

  return result;
}

uint64_t sub_1000BBDB4(uint64_t a1)
{
  sub_1000BCC60();
  v2 = sub_1000E8184();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_1000BBE24()
{
  result = qword_100134DD0;
  if (!qword_100134DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134DD0);
  }

  return result;
}

unint64_t sub_1000BBE7C()
{
  result = qword_100134DD8;
  if (!qword_100134DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134DD8);
  }

  return result;
}

unint64_t sub_1000BBED4()
{
  result = qword_100134DE0;
  if (!qword_100134DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134DE0);
  }

  return result;
}

uint64_t sub_1000BBFA4(uint64_t a1)
{
  v2 = sub_1000BB820();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000BBFF4()
{
  result = qword_100134DF8;
  if (!qword_100134DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134DF8);
  }

  return result;
}

uint64_t sub_1000BC04C(uint64_t a1)
{
  v2 = sub_1000BBED4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000BC09C()
{
  result = qword_100134E00;
  if (!qword_100134E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134E00);
  }

  return result;
}

uint64_t sub_1000BC0F4()
{
  v0 = sub_1000E86A4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000E84B4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000EBE54();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000E84C4();
  sub_10004B338(v6, qword_100145D10);
  sub_100008CB8(v6, qword_100145D10);
  sub_1000EBE44();
  if (qword_10012EC00 != -1)
  {
    swift_once();
  }

  v7 = sub_100008CB8(v1, qword_100145E08);
  (*(v2 + 16))(v4, v7, v1);
  sub_1000E8644();
  return sub_1000E84D4();
}

uint64_t sub_1000BC308()
{
  v49 = sub_1000E8174();
  sub_1000090D4();
  v47 = v0;
  __chkstk_darwin(v1);
  sub_100006A10();
  v48 = v3 - v2;
  v4 = sub_100002A10(&qword_100134C80, &unk_1000F81F0);
  v5 = sub_100009210(v4);
  __chkstk_darwin(v5);
  sub_1000091AC();
  v46[2] = v6 - v7;
  __chkstk_darwin(v8);
  v46[1] = v46 - v9;
  v10 = sub_100002A10(&qword_100134C88, &qword_1000F9FF0);
  sub_100009210(v10);
  sub_100009204();
  __chkstk_darwin(v11);
  v13 = v46 - v12;
  v14 = sub_1000E86A4();
  v15 = sub_100009210(v14);
  __chkstk_darwin(v15);
  sub_100006A10();
  v18 = v17 - v16;
  v19 = sub_1000E84B4();
  sub_1000090D4();
  v21 = v20;
  __chkstk_darwin(v22);
  sub_100006A10();
  v25 = v24 - v23;
  v26 = sub_1000EBE54();
  v27 = sub_100009210(v26);
  __chkstk_darwin(v27);
  sub_100006A10();
  v28 = sub_1000E84C4();
  sub_1000326A0();
  __chkstk_darwin(v29);
  sub_100006A10();
  v46[0] = sub_100002A10(&qword_100134E38, &unk_1000F8BE0);
  sub_1000EBE44();
  if (qword_10012EC00 != -1)
  {
    sub_1000B9634(&qword_10012EC00);
  }

  v30 = sub_100008CB8(v19, qword_100145E08);
  v31 = *(v21 + 16);
  v31(v25, v30, v19);
  sub_1000E8644();
  sub_1000326AC();
  sub_1000B96DC(v32, v33, v34, v18, v25);
  sub_1000EBE44();
  v31(v25, v30, v19);
  sub_1000E8644();
  sub_1000326AC();
  sub_1000B96DC(v35, v36, v37, v18, v25);
  sub_1000028A0(v13, 0, 1, v28);
  v38 = sub_1000E7ED4();
  v51 = 0;
  v52 = 0;
  v50 = 0;
  sub_10000D52C();
  sub_1000028A0(v39, v40, v41, v38);
  sub_10000D52C();
  sub_1000028A0(v42, v43, v44, v38);
  (*(v47 + 104))(v48, enum case for InputConnectionBehavior.default(_:), v49);
  sub_1000BB820();
  return sub_1000E7F34();
}

uint64_t (*sub_1000BC71C(void *a1))()
{
  v2 = sub_1000B9500(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1000E7EF4();
  return sub_1000B8C64;
}

unint64_t sub_1000BC780()
{
  result = qword_100134E08;
  if (!qword_100134E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134E08);
  }

  return result;
}

uint64_t sub_1000BC7D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BCBB8();
  v5 = sub_1000BCC60();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_1000BC83C()
{
  v0 = qword_100134D20;

  return v0;
}

unint64_t sub_1000BC878()
{
  result = qword_100134E10;
  if (!qword_100134E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134E10);
  }

  return result;
}

unint64_t sub_1000BC8D0()
{
  result = qword_100134E18;
  if (!qword_100134E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134E18);
  }

  return result;
}

uint64_t sub_1000BC9C8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000BCBB8();
  v7 = sub_1000BCC0C();
  v8 = sub_1000BCC60();
  *v5 = v2;
  v5[1] = sub_1000B90E4;

  return _URLRepresentableIntent<>.perform()(a1, a2, v6, v7, v8);
}

uint64_t sub_1000BCA9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000BC308();
  *a1 = result;
  return result;
}

uint64_t sub_1000BCAC4(uint64_t a1)
{
  v2 = sub_1000BC780();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1000BCBB8()
{
  result = qword_100134E40;
  if (!qword_100134E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134E40);
  }

  return result;
}

unint64_t sub_1000BCC0C()
{
  result = qword_100134E48;
  if (!qword_100134E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134E48);
  }

  return result;
}

unint64_t sub_1000BCC60()
{
  result = qword_100134E50;
  if (!qword_100134E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134E50);
  }

  return result;
}

uint64_t sub_1000BCCE4(uint64_t a1)
{

  return swift_once();
}

unint64_t sub_1000BCD08()
{
  result = qword_100134EA8;
  if (!qword_100134EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134EA8);
  }

  return result;
}

uint64_t sub_1000BCDA0(char a1)
{
  sub_1000EA354();
  if (qword_10012EBF8 != -1)
  {
    swift_once();
  }

  v1 = qword_100145E00;
  return sub_1000EA7F4();
}

uint64_t sub_1000BCEBC()
{
  v0 = sub_1000BF0AC();

  return _EntityURLRepresentation.init(_:)(0xD000000000000050, 0x80000001000FD1A0, &type metadata for WeatherTemperatureUnitEntity, v0);
}

void sub_1000BCF24()
{
  sub_100006A58();
  v38 = v1;
  v2 = sub_100002A10(&qword_100134CB0, &unk_1000F9870);
  sub_100009210(v2);
  sub_100009204();
  __chkstk_darwin(v3);
  v37 = &v34 - v4;
  v5 = sub_100002A10(&qword_100134C88, &qword_1000F9FF0);
  sub_100009210(v5);
  sub_100009204();
  __chkstk_darwin(v6);
  v36 = &v34 - v7;
  v8 = sub_1000E86A4();
  v9 = sub_100009210(v8);
  __chkstk_darwin(v9);
  sub_100006A10();
  v12 = v11 - v10;
  v13 = sub_1000E84B4();
  sub_1000090D4();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_100006A10();
  sub_1000C1604();
  v17 = sub_1000EBE54();
  v18 = sub_100009210(v17);
  __chkstk_darwin(v18);
  sub_100006A10();
  v35 = sub_1000E84C4();
  sub_1000069E4();
  __chkstk_darwin(v19);
  sub_1000091AC();
  __chkstk_darwin(v20);
  sub_1000C15F8();
  sub_1000EBE44();
  if (qword_10012EC00 != -1)
  {
    sub_1000B9634(&qword_10012EC00);
  }

  v21 = sub_100008CB8(v13, qword_100145E08);
  v22 = *(v15 + 16);
  v22(v0, v21, v13);
  sub_1000E8644();
  sub_1000326AC();
  sub_1000B96DC(v23, v24, v25, v12, v0);
  sub_1000C15EC();
  sub_1000EBE44();
  v22(v0, v21, v13);
  sub_1000E8644();
  v26 = v36;
  sub_1000326AC();
  sub_1000B96DC(v27, v28, v29, v12, v0);
  sub_1000028A0(v26, 0, 1, v35);
  sub_1000E80C4();
  sub_10000D52C();
  sub_1000028A0(v30, v31, v32, v33);
  sub_1000C15F8();
  sub_1000E84A4();
  sub_1000E80D4();
  sub_100006A20();
}

uint64_t sub_1000BD25C()
{
  v0 = sub_1000E84C4();
  sub_10004B338(v0, qword_100145D40);
  sub_100008CB8(v0, qword_100145D40);
  return sub_1000E84A4();
}

uint64_t sub_1000BD2C0()
{
  v0 = sub_100002A10(&qword_100134C88, &qword_1000F9FF0);
  __chkstk_darwin(v0 - 8);
  v2 = &v15[-v1];
  v3 = sub_1000E86A4();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1000E84B4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000EBE54();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1000E84C4();
  __chkstk_darwin(v9);
  v10 = sub_100002A10(&qword_100134D08, &qword_1000F9920);
  sub_10004B338(v10, qword_100145D58);
  v11 = sub_100008CB8(v10, qword_100145D58);
  sub_1000EBE44();
  if (qword_10012EC00 != -1)
  {
    swift_once();
  }

  v12 = sub_100008CB8(v4, qword_100145E08);
  (*(v5 + 16))(v7, v12, v4);
  sub_1000E8644();
  sub_1000E84D4();
  sub_1000028A0(v2, 1, 1, v9);
  sub_1000E8044();
  v13 = sub_1000E8034();
  return sub_1000028A0(v11, 0, 1, v13);
}

uint64_t sub_1000BD5C8()
{
  result = swift_getKeyPath();
  qword_100145D70 = result;
  return result;
}

uint64_t sub_1000BD5F0()
{
  sub_100032530();
  v0[21] = v1;
  v0[22] = v2;
  v0[20] = v3;
  v4 = sub_100002A10(&qword_100134CD8, &unk_1000F98D0);
  sub_100009210(v4);
  v0[23] = sub_1000B9730();
  v5 = sub_100002A10(&qword_100134CE0, &qword_1000F8250);
  sub_100009210(v5);
  v0[24] = sub_1000B9730();
  v6 = sub_100002A10(&qword_100135058, &qword_1000F98E0);
  sub_100009210(v6);
  v0[25] = sub_1000B9730();
  v7 = sub_1000E7ED4();
  v0[26] = v7;
  sub_100032590(v7);
  v0[27] = v8;
  v0[28] = sub_1000B9730();
  v9 = sub_100002A10(&qword_100135060, &qword_1000F98E8);
  v0[29] = v9;
  sub_100032590(v9);
  v0[30] = v10;
  v0[31] = swift_task_alloc();
  v0[32] = swift_task_alloc();
  sub_1000326AC();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1000BD78C()
{
  sub_100032530();
  sub_1000E7F04();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1000BF0AC();
  *v2 = v0;
  v2[1] = sub_1000BD86C;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1000C15A0, 0, &type metadata for WeatherTemperatureUnitEntity, v3);
}

uint64_t sub_1000BD86C()
{
  sub_100032530();
  sub_1000325B0();
  v1 = *v0;
  sub_10003246C();
  *v2 = v1;

  sub_1000326AC();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000BD954()
{
  sub_1000E7F04();
  v0[11] = v0[8];
  v1 = v0[9];
  v2 = v0[10];
  v0[34] = v1;
  v0[35] = v2;
  v0[12] = v1;
  v0[13] = v2;
  sub_1000E7F04();
  if (qword_10012EBB8 != -1)
  {
    sub_1000C15CC(&qword_10012EBB8);
  }

  v3 = qword_100145D70;
  v0[36] = qword_100145D70;

  v4 = swift_task_alloc();
  v0[37] = v4;
  v5 = sub_1000B9674(&qword_100135040, &qword_100135048, &qword_1000F98B8);
  *v4 = v0;
  v4[1] = sub_1000BDA8C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 39, v3, &type metadata for TemperatureUnit, v5);
}

uint64_t sub_1000BDA8C()
{
  sub_1000325B0();
  v2 = *v1;
  sub_10003246C();
  *v3 = v2;
  *(v4 + 304) = v0;

  sub_1000326AC();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000BDBEC()
{
  v1 = v0[32];
  v3 = v0[29];
  v2 = v0[30];
  v15 = v0[31];
  v16 = v0[28];
  v18 = v0[27];
  v19 = v0[26];
  sub_1000E7F04();
  v4 = v0[15];
  v17 = v0[16];
  v0[17] = v0[14];
  v0[18] = v4;
  v0[19] = v17;
  sub_1000E81E4();
  sub_10000D52C();
  sub_1000028A0(v5, v6, v7, v8);
  sub_1000E8214();
  sub_10000D52C();
  sub_1000028A0(v9, v10, v11, v12);
  sub_1000BCD08();
  sub_1000BF2C0();
  sub_1000E7EA4();
  (*(v2 + 16))(v15, v1, v3);
  sub_1000E7EC4();
  sub_1000E7EE4();
  (*(v18 + 8))(v16, v19);

  (*(v2 + 8))(v1, v3);

  sub_1000324E4();

  return v13();
}

uint64_t sub_1000BDE14()
{
  v0 = sub_100002A10(&qword_100135068, &qword_1000F98F0);
  sub_1000090D4();
  v2 = v1;
  sub_100009204();
  __chkstk_darwin(v3);
  v5 = &v7 - v4;
  if (qword_10012EBB8 != -1)
  {
    sub_1000C15CC(&qword_10012EBB8);
  }

  sub_1000E80A4();

  sub_1000BF2C0();
  sub_100006988(&qword_100135070, &qword_100135068, &qword_1000F98F0, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1000E8094();
  return (*(v2 + 8))(v5, v0);
}

void sub_1000BDF68()
{
  sub_100006A58();
  v0 = sub_1000E8174();
  sub_1000090D4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100006A10();
  v6 = v5 - v4;
  v7 = sub_100002A10(&qword_100134C80, &unk_1000F81F0);
  v8 = sub_100009210(v7);
  __chkstk_darwin(v8);
  sub_1000091AC();
  __chkstk_darwin(v9);
  v10 = sub_100002A10(&qword_100134C88, &qword_1000F9FF0);
  sub_100009210(v10);
  sub_100009204();
  __chkstk_darwin(v11);
  v12 = sub_1000E84C4();
  sub_1000069E4();
  __chkstk_darwin(v13);
  sub_100006A10();
  sub_1000C1604();
  sub_100002A10(&qword_100135020, &qword_1000F9898);
  sub_1000C15EC();
  sub_1000E84A4();
  sub_10000D52C();
  sub_1000028A0(v14, v15, v16, v12);
  v17 = sub_1000E7ED4();
  sub_10000D52C();
  sub_1000028A0(v18, v19, v20, v17);
  sub_10000D52C();
  sub_1000028A0(v21, v22, v23, v17);
  v34 = enum case for InputConnectionBehavior.default(_:);
  v33 = *(v2 + 104);
  v33(v6);
  sub_1000BF0AC();
  sub_1000C1610();
  sub_1000E7F34();
  sub_100002A10(&qword_100135050, &qword_1000F98C0);
  sub_1000E84A4();
  sub_10000D52C();
  sub_1000028A0(v24, v25, v26, v12);
  sub_10000D52C();
  sub_1000028A0(v27, v28, v29, v17);
  sub_10000D52C();
  sub_1000028A0(v30, v31, v32, v17);
  (v33)(v6, v34, v0);
  sub_100084DEC();
  sub_1000C1610();
  sub_1000E7F24();
  sub_100006A20();
}

uint64_t (*sub_1000BE260(void *a1))()
{
  v2 = sub_1000B9500(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1000E7EF4();
  return sub_1000BCCC0;
}

uint64_t sub_1000BE2C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000B5E10();
  *a1 = result;
  return result;
}

uint64_t (*sub_1000BE2F8(void *a1))()
{
  v2 = sub_1000B9500(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1000E7EF4();
  return sub_1000BCCC0;
}

uint64_t sub_1000BE358()
{
  if (qword_10012EBB8 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1000BE3B8()
{
  result = qword_100134EC0;
  if (!qword_100134EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134EC0);
  }

  return result;
}

unint64_t sub_1000BE410()
{
  result = qword_100134EC8;
  if (!qword_100134EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134EC8);
  }

  return result;
}

uint64_t sub_1000BE4FC@<X0>(uint64_t a1@<X8>)
{
  if (qword_10012EBB0 != -1)
  {
    swift_once();
  }

  v2 = sub_100002A10(&qword_100134D08, &qword_1000F9920);
  v3 = sub_100008CB8(v2, qword_100145D58);

  return sub_1000B957C(v3, a1);
}

uint64_t sub_1000BE580()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100032444;

  return sub_1000BD5F0();
}

void sub_1000BE62C(void *a1@<X8>)
{
  sub_1000BDF68();
  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1000BE674()
{
  result = qword_100134ED0;
  if (!qword_100134ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134ED0);
  }

  return result;
}

uint64_t sub_1000BE6EC()
{
  sub_100032530();
  if (qword_10012EB00 != -1)
  {
    sub_1000B9698(&qword_10012EB00);
  }

  v1 = qword_100145B90;
  v2 = OBJC_IVAR____TtC13WeatherWidget20WeatherSettingsState_units;
  v0[3] = qword_100145B90;
  v0[4] = v2;
  v3 = *(v1 + v2);
  v0[5] = v3;
  v3;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1000BE7C4;

  return sub_1000D01CC();
}

uint64_t sub_1000BE7C4()
{
  sub_100032530();
  sub_1000325B0();
  v2 = *(v1 + 40);
  v3 = *v0;
  sub_10003246C();
  *v4 = v3;

  sub_1000326AC();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000BE8C4()
{
  v1 = *(*(v0 + 24) + *(v0 + 32));
  v2 = sub_1000D0888();

  if (v2)
  {
    sub_100031CF8(0, &qword_100131240, NSUnitTemperature_ptr);
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 celsius];
    v6 = sub_1000EC354();

    if (v6)
    {

      v7 = 0;
    }

    else
    {
      v8 = [v3 fahrenheit];
      v9 = sub_1000EC354();

      if (v9)
      {
        v7 = 1;
      }

      else
      {
        v7 = 2;
      }
    }
  }

  else
  {
    v7 = 2;
  }

  **(v0 + 16) = v7;
  sub_1000324E4();

  return v10();
}

uint64_t sub_1000BEA3C()
{
  sub_100032530();
  v1 = sub_1000BEB20(*(v0 + 16));
  if (qword_10012EB00 != -1)
  {
    sub_1000B9698(&qword_10012EB00);
  }

  v2 = *(qword_100145B90 + OBJC_IVAR____TtC13WeatherWidget20WeatherSettingsState_units);
  sub_1000D06DC(v1);

  sub_100031CF8(0, &qword_100130448, NSUserDefaults_ptr);
  sub_1000EC1D4();
  sub_1000C15EC();
  sub_1000C15F8();
  sub_1000E9444();

  sub_1000324E4();

  return v3();
}

id sub_1000BEB20(char a1)
{
  if (!a1)
  {
    v1 = &selRef_celsius;
    return [objc_opt_self() *v1];
  }

  if (a1 == 1)
  {
    v1 = &selRef_fahrenheit;
    return [objc_opt_self() *v1];
  }

  return 0;
}

uint64_t sub_1000BEB84()
{
  sub_100032530();
  v1 = sub_1000E86A4();
  sub_100009210(v1);
  v0[2] = sub_1000B9730();
  v2 = sub_1000E84B4();
  v0[3] = v2;
  sub_100032590(v2);
  v0[4] = v3;
  v0[5] = sub_1000B9730();
  v4 = sub_1000EBE54();
  sub_100009210(v4);
  v0[6] = sub_1000B9730();
  v5 = sub_1000E84C4();
  sub_100009210(v5);
  v0[7] = sub_1000B9730();
  sub_1000326AC();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000BEC88()
{
  sub_100002A10(&qword_100134EB8, qword_1000F8C60);
  sub_1000C15EC();
  sub_1000C15F8();
  sub_1000EBE44();
  if (qword_10012EC00 != -1)
  {
    sub_1000B9634(&qword_10012EC00);
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = sub_100008CB8(v4, qword_100145E08);
  (*(v2 + 16))(v1, v5, v4);
  sub_1000E8644();
  sub_1000326AC();
  sub_1000B96DC(v6, v7, v8, v3, v1);
  sub_1000B9674(&qword_100135040, &qword_100135048, &qword_1000F98B8);
  sub_100084DEC();
  v9 = sub_1000E8244();

  v10 = v0[1];

  return v10(0xD00000000000001CLL, 0x80000001000F97E0, v9);
}

uint64_t sub_1000BEE60(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000B75E0;

  return sub_1000BEB84();
}

unint64_t sub_1000BEEF4()
{
  result = qword_100134ED8;
  if (!qword_100134ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134ED8);
  }

  return result;
}

uint64_t sub_1000BEF48(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000BF454();
  *v4 = v2;
  v4[1] = sub_1000B7800;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1000BEFFC()
{
  result = qword_100134EE0;
  if (!qword_100134EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134EE0);
  }

  return result;
}

unint64_t sub_1000BF054()
{
  result = qword_100134EE8;
  if (!qword_100134EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134EE8);
  }

  return result;
}

unint64_t sub_1000BF0AC()
{
  result = qword_100134EF0;
  if (!qword_100134EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134EF0);
  }

  return result;
}

uint64_t sub_1000BF100(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000BF454();
  *v5 = v2;
  v5[1] = sub_1000B9630;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1000BF1B4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000BF454();
  *v4 = v2;
  v4[1] = sub_1000B9600;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1000BF268()
{
  result = qword_100134EF8;
  if (!qword_100134EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134EF8);
  }

  return result;
}

unint64_t sub_1000BF2C0()
{
  result = qword_100134F00;
  if (!qword_100134F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F00);
  }

  return result;
}

unint64_t sub_1000BF318()
{
  result = qword_100134F08;
  if (!qword_100134F08)
  {
    sub_100002ABC(&qword_100134F10, qword_1000F8F00);
    sub_1000BF2C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F08);
  }

  return result;
}

uint64_t sub_1000BF39C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000BEEF4();
  *v5 = v2;
  v5[1] = sub_100031BC4;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1000BF454()
{
  result = qword_100134F18;
  if (!qword_100134F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F18);
  }

  return result;
}

uint64_t sub_1000BF4A8()
{
  v0 = qword_100134E88;

  return v0;
}

unint64_t sub_1000BF4E4()
{
  result = qword_100134F20;
  if (!qword_100134F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F20);
  }

  return result;
}

unint64_t sub_1000BF53C()
{
  result = qword_100134F28;
  if (!qword_100134F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F28);
  }

  return result;
}

unint64_t sub_1000BF594()
{
  result = qword_100134F30;
  if (!qword_100134F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F30);
  }

  return result;
}

unint64_t sub_1000BF5EC()
{
  result = qword_100134F38;
  if (!qword_100134F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F38);
  }

  return result;
}

uint64_t sub_1000BF640(uint64_t a1)
{
  sub_1000C1548();
  v2 = sub_1000E8184();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_1000BF6B0()
{
  result = qword_100134F40;
  if (!qword_100134F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F40);
  }

  return result;
}

unint64_t sub_1000BF708()
{
  result = qword_100134F48;
  if (!qword_100134F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F48);
  }

  return result;
}

unint64_t sub_1000BF760()
{
  result = qword_100134F50;
  if (!qword_100134F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F50);
  }

  return result;
}

uint64_t sub_1000BF830(uint64_t a1)
{
  v2 = sub_1000BF0AC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000BF880()
{
  result = qword_100134F68;
  if (!qword_100134F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F68);
  }

  return result;
}

uint64_t sub_1000BF8D8(uint64_t a1)
{
  v2 = sub_1000BF760();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000BF928()
{
  result = qword_100134F70;
  if (!qword_100134F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F70);
  }

  return result;
}

uint64_t sub_1000BF980()
{
  v0 = sub_1000E86A4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000E84B4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000EBE54();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000E84C4();
  sub_10004B338(v6, qword_100145D78);
  sub_100008CB8(v6, qword_100145D78);
  sub_1000EBE44();
  if (qword_10012EC00 != -1)
  {
    swift_once();
  }

  v7 = sub_100008CB8(v1, qword_100145E08);
  (*(v2 + 16))(v4, v7, v1);
  sub_1000E8644();
  return sub_1000E84D4();
}

void sub_1000BFB94()
{
  sub_100006A58();
  v48 = sub_1000E8174();
  sub_1000090D4();
  v46 = v0;
  __chkstk_darwin(v1);
  sub_100006A10();
  v47 = v3 - v2;
  v4 = sub_100002A10(&qword_100134C80, &unk_1000F81F0);
  v5 = sub_100009210(v4);
  __chkstk_darwin(v5);
  sub_1000091AC();
  v45[2] = v6 - v7;
  __chkstk_darwin(v8);
  v45[1] = v45 - v9;
  v10 = sub_100002A10(&qword_100134C88, &qword_1000F9FF0);
  sub_100009210(v10);
  sub_100009204();
  __chkstk_darwin(v11);
  v13 = v45 - v12;
  v14 = sub_1000E86A4();
  v15 = sub_100009210(v14);
  __chkstk_darwin(v15);
  sub_100006A10();
  v18 = v17 - v16;
  v19 = sub_1000E84B4();
  sub_1000090D4();
  v21 = v20;
  __chkstk_darwin(v22);
  sub_100006A10();
  v25 = v24 - v23;
  v26 = sub_1000EBE54();
  v27 = sub_100009210(v26);
  __chkstk_darwin(v27);
  sub_100006A10();
  v28 = sub_1000E84C4();
  sub_1000069E4();
  __chkstk_darwin(v29);
  sub_100006A10();
  sub_1000C1604();
  v45[0] = sub_100002A10(&qword_100135020, &qword_1000F9898);
  sub_1000C15EC();
  sub_1000EBE44();
  if (qword_10012EC00 != -1)
  {
    sub_1000B9634(&qword_10012EC00);
  }

  v30 = sub_100008CB8(v19, qword_100145E08);
  v31 = *(v21 + 16);
  v31(v25, v30, v19);
  sub_1000E8644();
  sub_1000326AC();
  sub_1000B96DC(v32, v33, v34, v18, v25);
  sub_1000EBE44();
  v31(v25, v30, v19);
  sub_1000E8644();
  sub_1000326AC();
  sub_1000B96DC(v35, v36, v37, v18, v25);
  sub_1000028A0(v13, 0, 1, v28);
  v38 = sub_1000E7ED4();
  v50 = 0;
  v51 = 0;
  v49 = 0;
  sub_10000D52C();
  sub_1000028A0(v39, v40, v41, v38);
  sub_10000D52C();
  sub_1000028A0(v42, v43, v44, v38);
  (*(v46 + 104))(v47, enum case for InputConnectionBehavior.default(_:), v48);
  sub_1000BF0AC();
  sub_1000E7F34();
  sub_100006A20();
}

uint64_t (*sub_1000BFF8C(void *a1))()
{
  v2 = sub_1000B9500(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1000E7EF4();
  return sub_1000B8C64;
}

unint64_t sub_1000BFFF0()
{
  result = qword_100134F78;
  if (!qword_100134F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F78);
  }

  return result;
}

uint64_t sub_1000C0044(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C14A0();
  v5 = sub_1000C1548();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_1000C00AC()
{
  v0 = qword_100134E98;

  return v0;
}

unint64_t sub_1000C00E8()
{
  result = qword_100134F80;
  if (!qword_100134F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F80);
  }

  return result;
}

unint64_t sub_1000C0140()
{
  result = qword_100134F88;
  if (!qword_100134F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F88);
  }

  return result;
}

uint64_t sub_1000C01F8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000C14A0();
  v7 = sub_1000C14F4();
  v8 = sub_1000C1548();
  *v5 = v2;
  v5[1] = sub_1000B90E4;

  return _URLRepresentableIntent<>.perform()(a1, a2, v6, v7, v8);
}

uint64_t sub_1000C02F4(uint64_t a1)
{
  v2 = sub_1000BFFF0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

void sub_1000C033C()
{
  sub_100006A58();
  v1 = v0;
  v2 = sub_100002A10(&qword_100134C88, &qword_1000F9FF0);
  sub_100009210(v2);
  sub_100009204();
  __chkstk_darwin(v3);
  v4 = sub_1000E86A4();
  v5 = sub_100009210(v4);
  __chkstk_darwin(v5);
  sub_100006A10();
  v8 = v7 - v6;
  v9 = sub_1000E84B4();
  sub_1000090D4();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100006A10();
  v15 = v14 - v13;
  v16 = sub_1000EBE54();
  v17 = sub_100009210(v16);
  __chkstk_darwin(v17);
  sub_100006A10();
  sub_1000C1604();
  v18 = sub_1000E84C4();
  sub_1000069E4();
  __chkstk_darwin(v19);
  sub_100006A10();
  v20 = sub_1000E8204();
  sub_10004B338(v20, v1);
  sub_100008CB8(v20, v1);
  sub_1000C15EC();
  sub_1000C15F8();
  sub_1000EBE44();
  if (qword_10012EC00 != -1)
  {
    sub_1000B9634(&qword_10012EC00);
  }

  v21 = sub_100008CB8(v9, qword_100145E08);
  (*(v11 + 16))(v15, v21, v9);
  sub_1000E8644();
  sub_1000326AC();
  sub_1000B96DC(v22, v23, v24, v8, v15);
  sub_10000D52C();
  sub_1000028A0(v25, v26, v27, v18);
  sub_1000E81F4();
  sub_100006A20();
}

uint64_t sub_1000C058C()
{
  v0 = sub_100002A10(&qword_100134CB0, &unk_1000F9870);
  __chkstk_darwin(v0 - 8);
  v29 = v21 - v1;
  v2 = sub_100002A10(&qword_100134C88, &qword_1000F9FF0);
  __chkstk_darwin(v2 - 8);
  v4 = v21 - v3;
  v5 = sub_1000E86A4();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000E84B4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000EBE54();
  __chkstk_darwin(v10 - 8);
  v30 = sub_1000E84C4();
  __chkstk_darwin(v30);
  sub_100002A10(&qword_100135010, &qword_1000F9880);
  v11 = sub_100002A10(&qword_100135018, &unk_1000F9888);
  v12 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  v23 = *(*(v11 - 8) + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1000F7210;
  v24 = v13;
  v14 = (v13 + v12);
  v28 = v11;
  *v14 = 0;
  sub_1000EBE44();
  if (qword_10012EC00 != -1)
  {
    swift_once();
  }

  v15 = sub_100008CB8(v6, qword_100145E08);
  v26 = *(v7 + 16);
  v27 = v15;
  v26(v9, v15, v6);
  sub_1000E8644();
  sub_1000E84D4();
  sub_1000028A0(v4, 1, 1, v30);
  v25 = sub_1000E80C4();
  sub_1000028A0(v29, 1, 1, v25);
  sub_1000E80E4();
  v16 = v6;
  v22 = v6;
  v17 = v23;
  v21[1] = *(v28 + 48);
  v14[v23] = 1;
  sub_1000EBE44();
  v26(v9, v27, v16);
  sub_1000E8644();
  sub_1000E84D4();
  v18 = v4;
  sub_1000028A0(v4, 1, 1, v30);
  v19 = v29;
  sub_1000028A0(v29, 1, 1, v25);
  sub_1000E80E4();
  v14[2 * v17] = 2;
  sub_1000EBE44();
  v26(v9, v27, v22);
  sub_1000E8644();
  sub_1000E84D4();
  sub_1000028A0(v18, 1, 1, v30);
  sub_1000028A0(v19, 1, 1, v25);
  sub_1000E80E4();
  sub_1000E80F4();
  sub_1000C0DC8();
  result = sub_1000EBDE4();
  qword_100145DA8 = result;
  return result;
}

unint64_t sub_1000C0B2C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1001250D0;
  v6._object = a2;
  v4 = sub_1000EC494(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000C0B78(char a1)
{
  if (!a1)
  {
    return 0x737569736C6563;
  }

  if (a1 == 1)
  {
    return 0x65686E6572686166;
  }

  return 0x7953726F7272696DLL;
}

unint64_t sub_1000C0BEC()
{
  result = qword_100134F90;
  if (!qword_100134F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F90);
  }

  return result;
}

unint64_t sub_1000C0C58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C0B2C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1000C0C88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000C0B78(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000C0CB8()
{
  result = qword_100134F98;
  if (!qword_100134F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F98);
  }

  return result;
}

unint64_t sub_1000C0D10()
{
  result = qword_100134FA0;
  if (!qword_100134FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134FA0);
  }

  return result;
}

unint64_t sub_1000C0D68()
{
  result = qword_100134FA8;
  if (!qword_100134FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134FA8);
  }

  return result;
}

unint64_t sub_1000C0DC8()
{
  result = qword_100134FB0;
  if (!qword_100134FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134FB0);
  }

  return result;
}

unint64_t sub_1000C0E2C()
{
  result = qword_100134FB8;
  if (!qword_100134FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134FB8);
  }

  return result;
}

unint64_t sub_1000C0E84()
{
  result = qword_100134FC0;
  if (!qword_100134FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134FC0);
  }

  return result;
}

unint64_t sub_1000C0EDC()
{
  result = qword_100134FC8;
  if (!qword_100134FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134FC8);
  }

  return result;
}