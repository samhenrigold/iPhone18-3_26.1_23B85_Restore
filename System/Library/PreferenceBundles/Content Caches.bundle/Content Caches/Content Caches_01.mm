uint64_t sub_18634()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1866C(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (!*a1)
  {
    goto LABEL_4;
  }

  v3 = *(*a1 + 16);
  if (v3 >> 31)
  {
    __break(1u);
LABEL_4:
    v3 = 0;
  }

  return v2(v3);
}

uint64_t sub_186EC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v13[1] = a4;
  v13[0] = sub_279C(&qword_45E88, &qword_34C90);
  v7 = *(v13[0] - 8);
  __chkstk_darwin(v13[0]);
  v9 = v13 - v8;
  v13[4] = a1;
  v14 = a2;
  v15 = a3;
  sub_279C(&qword_45E90, &unk_34C98);
  sub_8F50(&qword_45E98, &qword_45E90, &unk_34C98, &protocol conformance descriptor for TupleView<A>);
  sub_32F84();
  v16 = a2;
  v17 = a3;
  sub_279C(&qword_457C8, &qword_34300);
  sub_330F4();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  sub_8F50(&qword_45EA0, &qword_45E88, &qword_34C90, &protocol conformance descriptor for List<A, B>);
  sub_1267C();

  v11 = v13[0];
  sub_33024();

  return (*(v7 + 8))(v9, v11);
}

uint64_t sub_18960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = a2;
  v43 = a4;
  v41 = sub_279C(&qword_45ED0, &qword_34DE0);
  __chkstk_darwin(v41);
  v8 = &v36 - v7;
  v42 = sub_279C(&qword_45ED8, &qword_34DE8);
  v39 = *(v42 - 8);
  v9 = __chkstk_darwin(v42);
  v40 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v45 = &v36 - v11;
  v38 = sub_279C(&qword_45EE0, &qword_34DF0);
  v37 = *(v38 - 8);
  v12 = v37;
  v13 = __chkstk_darwin(v38);
  v44 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v36 - v15;
  v17 = *(a1 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_infoSectionHeader + 8);
  v52 = *(a1 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_infoSectionHeader);
  v53 = v17;
  sub_1288C();

  v52 = sub_32FE4();
  v53 = v18;
  v54 = v19 & 1;
  v55 = v20;
  v49 = a1;
  v50 = v5;
  v51 = a3;
  sub_279C(&qword_45EE8, &qword_34DF8);
  sub_8F50(&qword_45EF0, &qword_45EE8, &qword_34DF8, &protocol conformance descriptor for TupleView<A>);
  v36 = v16;
  sub_33154();
  *v8 = sub_32EA4();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v21 = sub_279C(&qword_45EF8, &qword_34E00);
  sub_19134(a1, v5, a3, &v8[*(v21 + 44)]);
  v46 = a1;
  v47 = v5;
  v48 = a3;
  sub_279C(&qword_45F00, &qword_34E08);
  sub_8F50(&qword_45F08, &qword_45F00, &qword_34E08, &protocol conformance descriptor for TupleView<A>);
  sub_8F50(&qword_45F10, &qword_45ED0, &qword_34DE0, &protocol conformance descriptor for VStack<A>);
  v22 = v45;
  sub_33174();
  v23 = *(v12 + 16);
  v24 = v44;
  v25 = v16;
  v26 = v38;
  v23(v44, v25, v38);
  v27 = v39;
  v28 = *(v39 + 16);
  v29 = v40;
  v30 = v42;
  v28(v40, v22, v42);
  v31 = v43;
  v23(v43, v24, v26);
  v32 = sub_279C(&qword_45F18, &unk_34E10);
  v28(&v31[*(v32 + 48)], v29, v30);
  v33 = *(v27 + 8);
  v33(v45, v30);
  v34 = *(v37 + 8);
  v34(v36, v26);
  v33(v29, v30);
  return (v34)(v44, v26);
}

uint64_t sub_18E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_32E54();
  __chkstk_darwin(v4 - 8);
  sub_1288C();

  v24 = sub_32FE4();
  v25 = v5;
  v7 = v6;
  v23 = v8;
  v9 = (*(*a1 + 424))();
  sub_32E44();
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  sub_32E34(v26);
  type metadata accessor for CachingServer(0);
  sub_32E24();
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  sub_32E34(v27);
  sub_32E74();
  v10 = sub_32FD4();
  v12 = v11;
  v14 = v13;
  sub_32ED4();
  v15 = sub_32F94();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_128E0(v10, v12, v14 & 1);

  *a2 = v24;
  *(a2 + 8) = v7;
  *(a2 + 16) = v23 & 1;
  *(a2 + 24) = v25;
  *(a2 + 32) = v9;
  *(a2 + 40) = 0;
  *(a2 + 48) = v15;
  *(a2 + 56) = v17;
  *(a2 + 64) = v19 & 1;
  *(a2 + 72) = v21;
  sub_12948(v24, v7, v23 & 1);

  sub_12948(v15, v17, v19 & 1);

  sub_128E0(v15, v17, v19 & 1);

  sub_128E0(v24, v7, v23 & 1);
}

uint64_t sub_19134@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_279C(&qword_45810, &qword_34450);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v29 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v26 - v12;
  v14 = *(a1 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_testSectionFooter + 8);
  v33 = *(a1 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_testSectionFooter);
  v34 = v14;
  sub_1288C();

  v15 = sub_32FE4();
  v17 = v16;
  v27 = v18;
  v28 = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v30 = a1;
  v31 = a2;
  v32 = a3;

  v26 = v13;
  sub_33104();
  v21 = *(v9 + 16);
  v22 = v29;
  v21(v29, v13, v8);
  *a4 = v15;
  *(a4 + 8) = v17;
  LOBYTE(a1) = v27 & 1;
  *(a4 + 16) = v27 & 1;
  *(a4 + 24) = v28;
  v23 = sub_279C(&qword_45FE8, &qword_34F20);
  v21((a4 + *(v23 + 48)), v22, v8);
  sub_12948(v15, v17, a1);
  v24 = *(v9 + 8);

  v24(v26, v8);
  v24(v22, v8);
  sub_128E0(v15, v17, a1);
}

uint64_t sub_193D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v130 = a4;
  v7 = sub_279C(&qword_451B8, &qword_35710);
  __chkstk_darwin(v7 - 8);
  v9 = &v115 - v8;
  v10 = sub_279C(&qword_45F20, &qword_34E20);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v115 - v14;
  *v15 = sub_32E14();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = *(sub_279C(&qword_45F28, &qword_34E28) + 44);
  v131 = v15;
  v17 = sub_1A5D8(a1, v5, a3, &v15[v16]);
  (*(*a1 + 520))(v17);
  v18 = type metadata accessor for PerformanceResult(0);
  if ((*(*(v18 - 8) + 48))(v9, 1, v18) == 1)
  {
    sub_93EC(v9, &qword_451B8, &qword_35710);
    sub_1D910(&v211);
  }

  else
  {
    v129 = v13;
    sub_93EC(v9, &qword_451B8, &qword_35710);
    v128 = sub_32E14();
    LOBYTE(v142) = 1;
    v19 = *(a1 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_lastCheckedLabel + 8);
    *&v211 = *(a1 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_lastCheckedLabel);
    *(&v211 + 1) = v19;
    v20 = sub_1288C();

    v21 = sub_32FE4();
    v122 = v22;
    v123 = v21;
    v127 = v23;
    v124 = v24;
    v25 = (*(*a1 + 424))();
    *&v211 = (*(*a1 + 616))();
    *(&v211 + 1) = v26;
    v126 = v20;
    v27 = sub_32FE4();
    v29 = v28;
    v31 = v30;
    LODWORD(v211) = sub_32ED4();
    v32 = sub_32F94();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    sub_128E0(v27, v29, v31 & 1);

    LOBYTE(v29) = v127 & 1;
    LOBYTE(v211) = v29;
    LOBYTE(v197) = v127 & 1;
    LOBYTE(v189) = 0;
    v39 = v36 & 1;
    LOBYTE(v175) = v36 & 1;
    LODWORD(v125) = 0;
    v127 = v36 & 1;
    v41 = v122;
    v40 = v123;
    sub_12948(v123, v122, v29);
    v42 = v124;

    sub_12948(v32, v34, v39);

    sub_128E0(v32, v34, v39);

    sub_128E0(v40, v41, v211);

    *(&v159 + 1) = v197;
    DWORD1(v159) = *(&v197 + 3);
    *(&v160 + 9) = v189;
    HIDWORD(v160) = *(&v189 + 3);
    DWORD1(v162) = *(&v175 + 3);
    *(&v162 + 1) = v175;
    *&v158 = v40;
    *(&v158 + 1) = v41;
    v163[0] = v40;
    v163[1] = v41;
    LOBYTE(v159) = v29;
    *(&v159 + 1) = v42;
    *&v160 = v25;
    BYTE8(v160) = v125;
    *&v161 = v32;
    *(&v161 + 1) = v34;
    LOBYTE(v162) = v127;
    *(&v162 + 1) = v38;
    v164 = v29;
    *&v165[3] = *(&v197 + 3);
    *v165 = v197;
    v166 = v42;
    v167 = v25;
    v168 = v125;
    *v169 = v189;
    *&v169[3] = *(&v189 + 3);
    v170 = v32;
    v171 = v34;
    v172 = v127;
    *&v173[3] = *(&v175 + 3);
    *v173 = v175;
    v174 = v38;
    sub_33C4(&v158, &v211, &qword_45F40, &qword_34E40);
    v43 = sub_93EC(v163, &qword_45F40, &qword_34E40);
    *&v157[23] = v159;
    *&v157[39] = v160;
    *&v157[55] = v161;
    *&v157[71] = v162;
    *&v157[7] = v158;
    v127 = v142;
    v44 = (*(*a1 + 568))(v43);
    if (v45)
    {
      v46 = v44;
      v47 = v45;
      v125 = sub_32E14();
      LOBYTE(v140[0]) = 1;
      *&v211 = v46;
      *(&v211 + 1) = v47;

      v48 = sub_32FE4();
      v123 = v49;
      LODWORD(v124) = v50;
      v52 = v51;
      v53 = (*(*a1 + 424))();
      v120 = sub_33094();
      *&v211 = sub_33074();
      sub_12A04();
      v118 = sub_33084();
      sub_32E64();
      v54 = sub_32FD4();
      v56 = v55;
      v58 = v57;
      LODWORD(v211) = sub_32ED4();
      v59 = sub_32F94();
      v126 = v47;
      v116 = v60;
      v117 = v61;
      v63 = v62;
      sub_128E0(v54, v56, v58 & 1);

      LOBYTE(v211) = v124 & 1;
      LOBYTE(v197) = v124 & 1;
      v64 = v124 & 1;
      v121 = v124 & 1;
      LOBYTE(v189) = 0;
      v63 &= 1u;
      LOBYTE(v175) = v63;
      LODWORD(v122) = 0;
      LODWORD(v124) = v63;
      v65 = v48;
      v66 = v48;
      v67 = v123;
      sub_12948(v66, v123, v64);
      v68 = v52;

      v69 = v120;

      v70 = v118;

      v71 = v59;
      v119 = v59;
      v72 = v116;
      sub_12948(v59, v116, v63);
      v73 = v117;

      sub_128E0(v71, v72, v63);

      sub_128E0(v65, v67, v211);

      *(&v143 + 1) = v197;
      DWORD1(v143) = *(&v197 + 3);
      *(&v144 + 9) = v189;
      HIDWORD(v144) = *(&v189 + 3);
      DWORD1(v147) = *(v149 + 3);
      *(&v147 + 1) = v149[0];
      *&v142 = v65;
      *(&v142 + 1) = v67;
      *&v175 = v65;
      *(&v175 + 1) = v67;
      LOBYTE(v143) = v121;
      *(&v143 + 1) = v68;
      *&v144 = v53;
      BYTE8(v144) = v122;
      *&v145 = v69;
      *(&v145 + 1) = v70;
      *&v146 = v119;
      *(&v146 + 1) = v72;
      LOBYTE(v147) = v124;
      *(&v147 + 1) = v73;
      LOBYTE(v176) = v121;
      DWORD1(v176) = *(&v197 + 3);
      *(&v176 + 1) = v197;
      *(&v176 + 1) = v68;
      *&v177 = v53;
      BYTE8(v177) = v122;
      *(&v177 + 9) = v189;
      HIDWORD(v177) = *(&v189 + 3);
      *&v178 = v69;
      *(&v178 + 1) = v70;
      *&v179 = v119;
      *(&v179 + 1) = v72;
      LOBYTE(v180) = v124;
      DWORD1(v180) = *(v149 + 3);
      *(&v180 + 1) = v149[0];
      *(&v180 + 1) = v73;
      sub_33C4(&v142, &v211, &qword_45F70, &qword_34E60);
      sub_93EC(&v175, &qword_45F70, &qword_34E60);

      *&v132[39] = v144;
      *&v132[55] = v145;
      *&v132[71] = v146;
      *&v132[87] = v147;
      *&v132[7] = v142;
      *&v132[23] = v143;
      v211 = v125;
      LOBYTE(v212[0]) = v140[0];
      *(&v212[2] + 1) = *&v132[32];
      *(&v212[1] + 1) = *&v132[16];
      *(v212 + 1) = *v132;
      *&v212[6] = *(&v147 + 1);
      *(&v212[5] + 1) = *&v132[80];
      *(&v212[4] + 1) = *&v132[64];
      *(&v212[3] + 1) = *&v132[48];
      sub_1D944(&v211);
    }

    else
    {
      v125 = sub_32E14();
      LOBYTE(v140[0]) = 1;
      v74 = *(a1 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_downloadSpeedLabel + 8);
      *&v211 = *(a1 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_downloadSpeedLabel);
      *(&v211 + 1) = v74;

      v122 = sub_32FE4();
      v123 = v75;
      v77 = v76;
      LODWORD(v124) = v78;
      v79 = (*(*a1 + 424))();
      *&v211 = (*(*a1 + 624))();
      *(&v211 + 1) = v80;
      v81 = sub_32FE4();
      v83 = v82;
      v85 = v84;
      LODWORD(v211) = sub_32ED4();
      v86 = sub_32F94();
      v88 = v87;
      v90 = v89;
      v92 = v91;
      sub_128E0(v81, v83, v85 & 1);

      v93 = v124 & 1;
      LOBYTE(v211) = v93;
      LOBYTE(v197) = v124 & 1;
      LOBYTE(v189) = 0;
      LOBYTE(v175) = v90 & 1;
      LODWORD(v124) = 0;
      LODWORD(v126) = v90 & 1;
      v94 = v122;
      sub_12948(v122, v77, v93);
      v95 = v123;

      sub_12948(v86, v88, v90 & 1);

      sub_128E0(v86, v88, v90 & 1);

      sub_128E0(v94, v77, v211);

      *(&v143 + 1) = v197;
      DWORD1(v143) = *(&v197 + 3);
      *(&v144 + 9) = v189;
      HIDWORD(v144) = *(&v189 + 3);
      DWORD1(v146) = *(v149 + 3);
      *(&v146 + 1) = v149[0];
      *&v142 = v94;
      *(&v142 + 1) = v77;
      *&v175 = v94;
      *(&v175 + 1) = v77;
      LOBYTE(v143) = v93;
      *(&v143 + 1) = v95;
      *&v144 = v79;
      BYTE8(v144) = v124;
      *&v145 = v86;
      *(&v145 + 1) = v88;
      LOBYTE(v146) = v126;
      *(&v146 + 1) = v92;
      LOBYTE(v176) = v93;
      DWORD1(v176) = *(&v197 + 3);
      *(&v176 + 1) = v197;
      *(&v176 + 1) = v95;
      *&v177 = v79;
      BYTE8(v177) = v124;
      *(&v177 + 9) = v189;
      HIDWORD(v177) = *(&v189 + 3);
      *&v178 = v86;
      *(&v178 + 1) = v88;
      LOBYTE(v179) = v126;
      DWORD1(v179) = *(v149 + 3);
      *(&v179 + 1) = v149[0];
      *(&v179 + 1) = v92;
      sub_33C4(&v142, &v211, &qword_45F40, &qword_34E40);
      sub_93EC(&v175, &qword_45F40, &qword_34E40);
      *&v156[23] = v143;
      *&v156[39] = v144;
      *&v156[55] = v145;
      *&v156[71] = v146;
      *&v156[7] = v142;
      v211 = v125;
      LOBYTE(v212[0]) = v140[0];
      *(&v212[1] + 1) = *&v156[16];
      *(v212 + 1) = *v156;
      *&v212[5] = *(&v146 + 1);
      *(&v212[4] + 1) = *&v156[64];
      *(&v212[3] + 1) = *&v156[48];
      *(&v212[2] + 1) = *&v156[32];
      sub_1D938(&v211);
    }

    v201 = v212[3];
    v202 = v212[4];
    v203[0] = v212[5];
    *(v203 + 9) = *(&v212[5] + 9);
    v197 = v211;
    v198 = v212[0];
    v199 = v212[1];
    v200 = v212[2];
    sub_279C(&qword_45F48, &qword_34E48);
    sub_279C(&qword_45F50, &qword_34E50);
    sub_8F50(&qword_45F58, &qword_45F48, &qword_34E48, &protocol conformance descriptor for HStack<A>);
    sub_8F50(&qword_45F60, &qword_45F50, &qword_34E50, &protocol conformance descriptor for HStack<A>);
    sub_32EC4();
    v179 = v193;
    v180 = v194;
    v181[0] = v195[0];
    *(v181 + 9) = *(v195 + 9);
    v175 = v189;
    v176 = v190;
    v177 = v191;
    v178 = v192;
    v96 = v128;
    v140[0] = v128;
    v140[1] = 0;
    v97 = v127;
    v141[0] = v127;
    *&v141[1] = *v157;
    *&v141[17] = *&v157[16];
    *&v141[80] = *&v157[79];
    *&v141[65] = *&v157[64];
    *&v141[49] = *&v157[48];
    *&v141[33] = *&v157[32];
    v133 = v128;
    v134 = *v141;
    v137 = *&v141[48];
    v138 = *&v141[64];
    v135 = *&v141[16];
    v136 = *&v141[32];
    v145 = v192;
    v144 = v191;
    v143 = v190;
    v142 = v189;
    *(v148 + 9) = *(v195 + 9);
    v148[0] = v195[0];
    v147 = v194;
    v146 = v193;
    *&v139[56] = v192;
    *&v139[40] = v191;
    *v139 = *&v141[80];
    *&v139[24] = v190;
    *&v139[8] = v189;
    *&v139[113] = *(v195 + 9);
    *&v139[104] = v195[0];
    *&v139[88] = v194;
    *&v139[72] = v193;
    sub_33C4(v140, &v211, &qword_45F50, &qword_34E50);
    sub_33C4(&v142, &v211, &qword_45F68, &qword_34E58);
    sub_93EC(&v175, &qword_45F68, &qword_34E58);
    v153 = *&v157[32];
    v154 = *&v157[48];
    *v155 = *&v157[64];
    v151 = *v157;
    v149[0] = v96;
    v149[1] = 0;
    v150 = v97;
    *&v155[15] = *&v157[79];
    v152 = *&v157[16];
    sub_93EC(v149, &qword_45F50, &qword_34E50);
    v208 = *&v139[96];
    v209 = *&v139[112];
    v210 = v139[128];
    v204 = *&v139[32];
    v205 = *&v139[48];
    v206 = *&v139[64];
    v207 = *&v139[80];
    v201 = v137;
    v202 = v138;
    v203[0] = *v139;
    v203[1] = *&v139[16];
    v197 = v133;
    v198 = v134;
    v199 = v135;
    v200 = v136;
    nullsub_1();
    v217 = v208;
    v218 = v209;
    v219 = v210;
    v213 = v204;
    v214 = v205;
    v215 = v206;
    v216 = v207;
    v212[3] = v201;
    v212[4] = v202;
    v212[5] = v203[0];
    v212[6] = v203[1];
    v211 = v197;
    v212[0] = v198;
    v212[1] = v199;
    v212[2] = v200;
    v13 = v129;
  }

  v98 = v131;
  sub_33C4(v131, v13, &qword_45F20, &qword_34E20);
  v186 = v217;
  v187 = v218;
  v188 = v219;
  v182 = v213;
  v183 = v214;
  v184 = v215;
  v185 = v216;
  v179 = v212[3];
  v180 = v212[4];
  v181[0] = v212[5];
  v181[1] = v212[6];
  v175 = v211;
  v176 = v212[0];
  v177 = v212[1];
  v178 = v212[2];
  v99 = v130;
  sub_33C4(v13, v130, &qword_45F20, &qword_34E20);
  v100 = v99 + *(sub_279C(&qword_45F30, &qword_34E30) + 48);
  v101 = v185;
  v195[6] = v186;
  v195[7] = v187;
  v102 = v181[1];
  v103 = v182;
  v195[2] = v182;
  v195[3] = v183;
  v104 = v183;
  v105 = v184;
  v195[4] = v184;
  v195[5] = v185;
  v106 = v178;
  v107 = v179;
  v193 = v179;
  v194 = v180;
  v108 = v180;
  v109 = v181[0];
  v195[0] = v181[0];
  v195[1] = v181[1];
  v189 = v175;
  v190 = v176;
  v111 = v175;
  v110 = v176;
  v112 = v177;
  v191 = v177;
  v192 = v178;
  v113 = v187;
  *(v100 + 192) = v186;
  *(v100 + 208) = v113;
  *(v100 + 128) = v103;
  *(v100 + 144) = v104;
  *(v100 + 160) = v105;
  *(v100 + 176) = v101;
  *(v100 + 64) = v107;
  *(v100 + 80) = v108;
  *(v100 + 96) = v109;
  *(v100 + 112) = v102;
  *v100 = v111;
  *(v100 + 16) = v110;
  v196 = v188;
  *(v100 + 224) = v188;
  *(v100 + 32) = v112;
  *(v100 + 48) = v106;
  sub_33C4(&v189, &v197, &qword_45F38, &qword_34E38);
  sub_93EC(v98, &qword_45F20, &qword_34E20);
  v208 = v186;
  v209 = v187;
  v210 = v188;
  v204 = v182;
  v205 = v183;
  v206 = v184;
  v207 = v185;
  v201 = v179;
  v202 = v180;
  v203[0] = v181[0];
  v203[1] = v181[1];
  v197 = v175;
  v198 = v176;
  v199 = v177;
  v200 = v178;
  sub_93EC(&v197, &qword_45F38, &qword_34E38);
  return sub_93EC(v13, &qword_45F20, &qword_34E20);
}

uint64_t sub_1A5D8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v24 = a4;
  v25 = sub_279C(&qword_45F78, &qword_34E68);
  v7 = *(v25 - 8);
  __chkstk_darwin(v25);
  v9 = &v22 - v8;
  v23 = sub_279C(&qword_45F80, &qword_34E70);
  __chkstk_darwin(v23);
  v11 = &v22 - v10;
  v12 = sub_279C(&qword_45F88, &qword_34E78);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v22 - v15;
  v17 = a2 & 1;
  if ((*(*a1 + 472))(v14))
  {
    v18 = swift_allocObject();
    v22 = &v22;
    *(v18 + 16) = a1;
    *(v18 + 24) = v17;
    *(v18 + 32) = a3;
    __chkstk_darwin(v18);
    *(&v22 - 4) = a1;
    *(&v22 - 24) = v17;
    *(&v22 - 2) = a3;

    sub_279C(&qword_45FB0, &qword_34E88);
    sub_8F50(&qword_45FB8, &qword_45FB0, &qword_34E88, &protocol conformance descriptor for HStack<A>);
    sub_33104();
    (*(v13 + 16))(v11, v16, v12);
    swift_storeEnumTagMultiPayload();
    sub_8F50(&qword_45FA0, &qword_45F88, &qword_34E78, &protocol conformance descriptor for Button<A>);
    sub_8F50(&qword_45FA8, &qword_45F78, &qword_34E68, &protocol conformance descriptor for Button<A>);
    sub_32EC4();
    return (*(v13 + 8))(v16, v12);
  }

  else
  {
    v20 = swift_allocObject();
    v22 = &v22;
    *(v20 + 16) = a1;
    *(v20 + 24) = v17;
    *(v20 + 32) = a3;
    __chkstk_darwin(v20);
    *(&v22 - 4) = a1;
    *(&v22 - 24) = v17;
    *(&v22 - 2) = a3;

    sub_279C(&qword_45F90, &qword_34E80);
    sub_8F50(&qword_45F98, &qword_45F90, &qword_34E80, &protocol conformance descriptor for HStack<A>);
    sub_33104();
    v21 = v25;
    (*(v7 + 16))(v11, v9, v25);
    swift_storeEnumTagMultiPayload();
    sub_8F50(&qword_45FA0, &qword_45F88, &qword_34E78, &protocol conformance descriptor for Button<A>);
    sub_8F50(&qword_45FA8, &qword_45F78, &qword_34E68, &protocol conformance descriptor for Button<A>);
    sub_32EC4();
    return (*(v7 + 8))(v9, v21);
  }
}

uint64_t sub_1AB24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_279C(&qword_45FC8, &qword_352F0);
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v34 = &v30[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v33 = &v30[-v8];
  v9 = *(a1 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_cancelDownloadLabel + 8);
  v35 = *(a1 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_cancelDownloadLabel);
  v36 = v9;
  sub_1288C();

  v10 = sub_32FE4();
  v12 = v11;
  v14 = v13;
  v35 = sub_33034();
  sub_12A04();
  v35 = sub_33084();
  v15 = sub_32F94();
  v17 = v16;
  v31 = v18;
  v32 = v19;
  sub_128E0(v10, v12, v14 & 1);

  v21 = (*(*a1 + 424))(v20);
  v22 = v33;
  sub_32CE4();
  v23 = (v22 + *(v5 + 44));
  v24 = *(sub_279C(&qword_45FD0, &qword_34EA0) + 28);
  v25 = enum case for ControlSize.small(_:);
  v26 = sub_32CD4();
  (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
  *v23 = swift_getKeyPath();
  v27 = v34;
  sub_33C4(v22, v34, &qword_45FC8, &qword_352F0);
  *a2 = v15;
  *(a2 + 8) = v17;
  LOBYTE(v25) = v31 & 1;
  *(a2 + 16) = v31 & 1;
  *(a2 + 24) = v32;
  *(a2 + 32) = v21;
  *(a2 + 40) = 0;
  v28 = sub_279C(&qword_45FD8, &qword_34ED8);
  sub_33C4(v27, a2 + *(v28 + 64), &qword_45FC8, &qword_352F0);
  sub_12948(v15, v17, v25);

  sub_93EC(v22, &qword_45FC8, &qword_352F0);
  sub_93EC(v27, &qword_45FC8, &qword_352F0);
  sub_128E0(v15, v17, v25);
}

void sub_1AE50(uint64_t a1@<X8>)
{
  type metadata accessor for InfoViewModel(0);
  sub_30E5C();
  sub_279C(&qword_457C8, &qword_34300);
  sub_330F4();
  sub_121D8();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5 & 1;
}

uint64_t sub_1AF48()
{
  v0 = sub_1B158();

  return NavigationStack.init<>(root:)(sub_1AFA4, 0, &type metadata for ServerView, v0);
}

uint64_t sub_1AFA4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_32AC4();
  __chkstk_darwin(v2 - 8);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for CachingServer(0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v17[-v9];
  v11 = type metadata accessor for MockContentCacheService(0);
  v12 = sub_268CC();
  sub_32AB4();
  sub_1759C(v4, 0xD000000000000013, 0x800000000003B2F0, 0, 1, 0, 0, 1, v10);
  type metadata accessor for ServerViewModel(0);
  v18[3] = v11;
  v18[4] = &off_41AF0;
  v18[0] = v12;
  sub_15954(v10, v8);

  v13 = sub_503C(v18, v8);
  v17[7] = 0;
  sub_330C4();

  result = sub_1B4D4(v10);
  v15 = v18[0];
  v16 = v18[1];
  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16;
  return result;
}

unint64_t sub_1B158()
{
  result = qword_45EA8;
  if (!qword_45EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_45EA8);
  }

  return result;
}

unint64_t sub_1B1CC()
{
  result = qword_45EB0;
  if (!qword_45EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_45EB0);
  }

  return result;
}

uint64_t sub_1B23C(uint64_t a1)
{
  v2 = sub_1B480();

  return static PreviewProvider._previews.getter(a1, v2);
}

uint64_t sub_1B288(uint64_t a1)
{
  v2 = sub_1B480();

  return static PreviewProvider._platform.getter(a1, v2);
}

__n128 sub_1B2D4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B2E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1B330(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1B390()
{
  sub_8BD0(&qword_45E88, &qword_34C90);
  sub_8F50(&qword_45EA0, &qword_45E88, &qword_34C90, &protocol conformance descriptor for List<A, B>);
  sub_1267C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1B480()
{
  result = qword_45EC8;
  if (!qword_45EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_45EC8);
  }

  return result;
}

uint64_t sub_1B4D4(uint64_t a1)
{
  v2 = type metadata accessor for CachingServer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B530(uint64_t a1)
{
  __chkstk_darwin(a1);
  __dst = v2;
  v3 = *(v1 + 16);
  v197 = sub_32E14();
  LOBYTE(v324) = 1;
  v4 = *(v3 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_addressLabel + 8);
  *&__src[0] = *(v3 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_addressLabel);
  *(&__src[0] + 1) = v4;
  sub_1288C();

  v195 = sub_32FE4();
  v6 = v5;
  v201 = v7;
  v198 = v8;
  v9 = (*(*v3 + 424))();
  v10 = OBJC_IVAR____TtC14Content_Caches15ServerViewModel_server;
  v206 = type metadata accessor for CachingServer(0);
  v11 = (v3 + v206[6] + v10);
  v12 = v11[1];
  *&__src[0] = *v11;
  *(&__src[0] + 1) = v12;

  v13 = sub_32FE4();
  v15 = v14;
  v17 = v16;
  LODWORD(__src[0]) = sub_32ED4();
  v18 = sub_32F94();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_128E0(v13, v15, v17 & 1);

  LOBYTE(__src[0]) = v201 & 1;
  LOBYTE(v335) = v201 & 1;
  LOBYTE(v328) = 0;
  LOBYTE(v326) = v22 & 1;
  sub_12948(v195, v6, v201 & 1);

  sub_12948(v18, v20, v22 & 1);

  sub_128E0(v18, v20, v22 & 1);

  sub_128E0(v195, v6, v201 & 1);

  *(&v218 + 1) = v335;
  DWORD1(v218) = *(&v335 + 3);
  *(&v219 + 9) = v328;
  HIDWORD(v219) = *(&v328 + 3);
  DWORD1(v221) = *(&v326 + 3);
  *(&v221 + 1) = v326;
  *&v217 = v195;
  *(&v217 + 1) = v6;
  v222[0] = v195;
  v222[1] = v6;
  LOBYTE(v218) = v201 & 1;
  *(&v218 + 1) = v198;
  *&v219 = v9;
  BYTE8(v219) = 0;
  *&v220 = v18;
  *(&v220 + 1) = v20;
  LOBYTE(v221) = v22 & 1;
  *(&v221 + 1) = v24;
  v223 = v201 & 1;
  *&v224[3] = *(&v335 + 3);
  *v224 = v335;
  v225 = v198;
  v226 = v9;
  v227 = 0;
  *v228 = v328;
  *&v228[3] = *(&v328 + 3);
  v229 = v18;
  v230 = v20;
  v231 = v22 & 1;
  *&v232[3] = *(&v326 + 3);
  *v232 = v326;
  v233 = v24;
  sub_33C4(&v217, __src, &qword_45F40, &qword_34E40);
  sub_93EC(v222, &qword_45F40, &qword_34E40);
  *&v216[23] = v218;
  *&v216[39] = v219;
  *&v216[55] = v220;
  *&v216[71] = v221;
  *&v216[7] = v217;
  v196 = v324;
  v194 = sub_32E14();
  LOBYTE(v364[0]) = 1;
  v25 = *(v3 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_guidLabel + 8);
  *&__src[0] = *(v3 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_guidLabel);
  *(&__src[0] + 1) = v25;

  v26 = sub_32FE4();
  v28 = v27;
  LOBYTE(v10) = v29;
  v31 = v30;
  v205 = v3;
  v32 = (*(*v3 + 424))();
  *&__src[0] = sub_32AA4();
  *(&__src[0] + 1) = v33;
  v34 = sub_32FE4();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  KeyPath = swift_getKeyPath();
  v42 = swift_getKeyPath();
  v38 &= 1u;
  LOBYTE(__src[0]) = v38;
  v43 = sub_32ED4();
  LOBYTE(v10) = v10 & 1;
  LOBYTE(v326) = v10;
  LOBYTE(v324) = 0;
  *&v335 = v34;
  *(&v335 + 1) = v36;
  v336[0] = v38;
  *&v336[8] = v40;
  *&v336[16] = KeyPath;
  v336[24] = 2;
  *&v336[32] = v42;
  v336[40] = 1;
  *&v336[44] = v43;
  *&v380[55] = *&v336[32];
  *&v380[39] = *&v336[16];
  *&v380[23] = *v336;
  *&v380[7] = v335;
  *&__src[0] = v34;
  *(&__src[0] + 1) = v36;
  LOBYTE(__src[1]) = v38;
  *(&__src[1] + 1) = v40;
  *&__src[2] = KeyPath;
  BYTE8(__src[2]) = 2;
  *&__src[3] = v42;
  BYTE8(__src[3]) = 1;
  HIDWORD(__src[3]) = v43;
  sub_12948(v26, v28, v10);

  sub_33C4(&v335, &v328, &qword_46058, &qword_34FE8);
  sub_93EC(__src, &qword_46058, &qword_34FE8);
  sub_128E0(v26, v28, v10);

  *&v236[25] = *&v380[16];
  *&v236[41] = *&v380[32];
  *&v236[57] = *&v380[48];
  *&v236[9] = *v380;
  *v236 = v32;
  v241 = v32;
  *&v246[15] = *&v380[63];
  *v246 = *&v380[48];
  v245 = *&v380[32];
  *(&v235 + 1) = v335;
  *&v234 = v26;
  *(&v234 + 1) = v28;
  LOBYTE(v235) = v10;
  DWORD1(v235) = *(&v335 + 3);
  *(&v235 + 1) = v31;
  v236[8] = 0;
  *&v236[72] = *&v380[63];
  v237[0] = v26;
  v237[1] = v28;
  v238 = v10;
  *&v239[3] = *(&v335 + 3);
  *v239 = v335;
  v240 = v31;
  v242 = 0;
  v244 = *&v380[16];
  v243 = *v380;
  sub_33C4(&v234, __src, &qword_45FF0, &qword_34F28);
  sub_93EC(v237, &qword_45FF0, &qword_34F28);
  *&v215[55] = *&v236[16];
  *&v215[71] = *&v236[32];
  *&v215[87] = *&v236[48];
  *&v215[103] = *&v236[64];
  *&v215[7] = v234;
  *&v215[23] = v235;
  *&v215[39] = *v236;
  v193 = v364[0];
  v192 = sub_32E14();
  LOBYTE(v324) = 1;
  v44 = *(v205 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_typeLabel + 8);
  *&__src[0] = *(v205 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_typeLabel);
  *(&__src[0] + 1) = v44;

  v45 = sub_32FE4();
  v47 = v46;
  LOBYTE(v198) = v48;
  v202 = v49;
  v50 = (*(*v205 + 424))();
  *&__src[0] = sub_23CDC(*(v205 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_server + v206[9]));
  *(&__src[0] + 1) = v51;
  v52 = sub_32FE4();
  v54 = v53;
  v56 = v55;
  LODWORD(__src[0]) = sub_32ED4();
  v57 = sub_32F94();
  v59 = v58;
  LOBYTE(v26) = v60;
  v62 = v61;
  sub_128E0(v52, v54, v56 & 1);

  LOBYTE(__src[0]) = v198 & 1;
  LOBYTE(v335) = v198 & 1;
  LOBYTE(v328) = 0;
  LOBYTE(v326) = v26 & 1;
  sub_12948(v45, v47, v198 & 1);

  sub_12948(v57, v59, v26 & 1);

  sub_128E0(v57, v59, v26 & 1);

  sub_128E0(v45, v47, __src[0]);

  *(&v248 + 1) = v335;
  DWORD1(v248) = *(&v335 + 3);
  *(&v249 + 9) = v328;
  HIDWORD(v249) = *(&v328 + 3);
  DWORD1(v251) = *(&v326 + 3);
  *(&v251 + 1) = v326;
  *&v247 = v45;
  *(&v247 + 1) = v47;
  v252[0] = v45;
  v252[1] = v47;
  LOBYTE(v248) = v198 & 1;
  *(&v248 + 1) = v202;
  *&v249 = v50;
  BYTE8(v249) = 0;
  *&v250 = v57;
  *(&v250 + 1) = v59;
  LOBYTE(v251) = v26 & 1;
  *(&v251 + 1) = v62;
  v253 = v198 & 1;
  *&v254[3] = *(&v335 + 3);
  *v254 = v335;
  v255 = v202;
  v256 = v50;
  v257 = 0;
  *v258 = v328;
  *&v258[3] = *(&v328 + 3);
  v259 = v57;
  v260 = v59;
  v261 = v26 & 1;
  *&v262[3] = *(&v326 + 3);
  *v262 = v326;
  v263 = v62;
  sub_33C4(&v247, __src, &qword_45F40, &qword_34E40);
  sub_93EC(v252, &qword_45F40, &qword_34E40);
  *&v214[23] = v248;
  *&v214[39] = v249;
  *&v214[55] = v250;
  *&v214[71] = v251;
  *&v214[7] = v247;
  v191 = v324;
  v190 = sub_32E14();
  LOBYTE(v328) = 1;
  sub_18E5C(v205, __src);
  v266 = __src[2];
  v267 = __src[3];
  v268 = __src[4];
  v265 = __src[1];
  v264 = __src[0];
  v269[2] = __src[2];
  v269[3] = __src[3];
  v269[4] = __src[4];
  v269[1] = __src[1];
  v269[0] = __src[0];
  sub_33C4(&v264, &v335, &qword_45F40, &qword_34E40);
  sub_93EC(v269, &qword_45F40, &qword_34E40);
  *&v213[23] = v265;
  *&v213[39] = v266;
  *&v213[55] = v267;
  *&v213[71] = v268;
  *&v213[7] = v264;
  v189 = v328;
  v188 = sub_32E14();
  LOBYTE(v326) = 1;
  v63 = *(v205 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_healthLabel + 8);
  *&__src[0] = *(v205 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_healthLabel);
  *(&__src[0] + 1) = v63;

  v64 = sub_32FE4();
  v178 = v65;
  v181 = v64;
  v67 = v66;
  v185 = v68;
  v69 = (*(*v205 + 424))();
  if (*(v205 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_server + v206[8]) < 1)
  {
    v83 = *(v205 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_badLabel + 8);
    *&__src[0] = *(v205 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_badLabel);
    *(&__src[0] + 1) = v83;

    v84 = sub_32FE4();
    v86 = v85;
    v88 = v87;
    LODWORD(__src[0]) = sub_32ED4();
    v89 = sub_32F94();
    v91 = v90;
    v93 = v92;
    v95 = v94;
    sub_128E0(v84, v86, v88 & 1);

    *&v335 = v89;
    *(&v335 + 1) = v91;
    *v336 = v93 & 1;
    *&v336[8] = v95;
    v336[16] = 1;
  }

  else
  {
    v70 = *(v205 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_goodLabel + 8);
    *&__src[0] = *(v205 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_goodLabel);
    *(&__src[0] + 1) = v70;

    v71 = sub_32FE4();
    v73 = v72;
    v75 = v74;
    LODWORD(__src[0]) = sub_32ED4();
    v76 = sub_32F94();
    v78 = v77;
    v80 = v79;
    v82 = v81;
    sub_128E0(v71, v73, v75 & 1);

    *&v335 = v76;
    *(&v335 + 1) = v78;
    *v336 = v80 & 1;
    *&v336[8] = v82;
    v336[16] = 0;
  }

  sub_32EC4();
  v199 = __src[0];
  v203 = __src[1];
  v96 = __src[2];
  LOBYTE(__src[0]) = v67 & 1;
  LOBYTE(v335) = 0;
  LOBYTE(v328) = __src[2];
  sub_12948(v181, v178, v67 & 1);

  sub_1DF5C(v199, *(&v199 + 1), v203, *(&v203 + 1));
  sub_1DF98(v199, *(&v199 + 1), v203, *(&v203 + 1));
  sub_128E0(v181, v178, v67 & 1);

  *(&v271 + 1) = v335;
  DWORD1(v271) = *(&v335 + 3);
  *(&v272 + 9) = v328;
  HIDWORD(v272) = *(&v328 + 3);
  *&v270 = v181;
  *(&v270 + 1) = v178;
  LOBYTE(v271) = v67 & 1;
  *(&v271 + 1) = v185;
  *&v272 = v69;
  BYTE8(v272) = 0;
  v274 = v203;
  v273 = v199;
  v275 = v96;
  v276[0] = v181;
  v276[1] = v178;
  v277 = v67 & 1;
  *&v278[3] = *(&v335 + 3);
  *v278 = v335;
  v279 = v185;
  v280 = v69;
  v281 = 0;
  *v282 = v328;
  *&v282[3] = *(&v328 + 3);
  v283 = v199;
  v284 = v203;
  v285 = v96;
  sub_33C4(&v270, __src, &qword_45FF8, &qword_34F30);
  sub_93EC(v276, &qword_45FF8, &qword_34F30);
  *&v212[39] = v272;
  *&v212[55] = v273;
  *&v212[71] = v274;
  v212[87] = v275;
  *&v212[7] = v270;
  *&v212[23] = v271;
  v204 = v326;
  v200 = sub_32E14();
  LOBYTE(v316[0]) = 1;
  v97 = *(v205 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_inFavoredLabel + 8);
  *&__src[0] = *(v205 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_inFavoredLabel);
  *(&__src[0] + 1) = v97;

  v98 = sub_32FE4();
  v179 = v99;
  v182 = v98;
  v176 = v100;
  v186 = v101;
  v102 = (*(*v205 + 424))();
  if (*(v205 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_server + v206[10]) == 1)
  {
    v172 = sub_33094();
    v103 = sub_32F64();
    v104 = swift_getKeyPath();
    v174 = sub_32ED4();
    sub_32E64();
    v105 = sub_32FD4();
    v107 = v106;
    v109 = v108;
    LODWORD(__src[0]) = sub_32ED4();
    v110 = sub_32F94();
    v112 = v111;
    v114 = v113;
    v116 = v115;
    sub_128E0(v105, v107, v109 & 1);

    LOBYTE(v326) = v114 & 1;

    sub_12948(v110, v112, v114 & 1);

    sub_12948(v110, v112, v114 & 1);

    sub_128E0(v110, v112, v114 & 1);

    LOBYTE(v328) = 0;
    *&__src[0] = v172;
    *(&__src[0] + 1) = v104;
    *&__src[1] = v103;
    DWORD2(__src[1]) = v174;
    *&__src[2] = v110;
    *(&__src[2] + 1) = v112;
    LOBYTE(__src[3]) = v114 & 1;
    *(&__src[3] + 1) = v116;
    LOBYTE(__src[4]) = 0;
    sub_279C(&qword_46040, &qword_34F78);
    sub_8F50(&qword_46048, &qword_46040, &qword_34F78, &protocol conformance descriptor for TupleView<A>);
    sub_32EC4();
    sub_128E0(v110, v112, v114 & 1);

    __src[2] = *&v336[16];
    __src[3] = *&v336[32];
    LOBYTE(__src[4]) = v336[48];
    __src[0] = v335;
    __src[1] = *v336;
  }

  else
  {
    sub_32E64();
    v117 = sub_32FD4();
    v119 = v118;
    v121 = v120;
    LODWORD(__src[0]) = sub_32ED4();
    v122 = sub_32F94();
    v124 = v123;
    v126 = v125;
    v128 = v127;
    sub_128E0(v117, v119, v121 & 1);

    LOBYTE(v324) = v126 & 1;
    LOBYTE(v364[0]) = 1;
    *&v335 = v122;
    *(&v335 + 1) = v124;
    v336[0] = v126 & 1;
    *&v336[1] = v326;
    *&v336[4] = *(&v326 + 3);
    *&v336[8] = v128;
    *&v336[16] = v328;
    *&v336[32] = *v329;
    v336[48] = 1;
    sub_279C(&qword_46040, &qword_34F78);
    sub_8F50(&qword_46048, &qword_46040, &qword_34F78, &protocol conformance descriptor for TupleView<A>);
    sub_32EC4();
  }

  *&v336[16] = __src[2];
  *&v336[32] = __src[3];
  *&v329[32] = __src[3];
  *&v329[16] = __src[2];
  *v336 = __src[1];
  v335 = __src[0];
  *v329 = __src[1];
  v328 = __src[0];
  v336[48] = __src[4];
  LOBYTE(v324) = v176 & 1;
  LOBYTE(v364[0]) = 0;
  v329[48] = __src[4];
  *&v381[7] = __src[0];
  v381[71] = __src[4];
  *&v381[55] = __src[3];
  *&v381[39] = __src[2];
  *&v381[23] = __src[1];
  sub_12948(v182, v179, v176 & 1);

  sub_33C4(&v328, &v326, &qword_46050, &qword_34F80);
  sub_93EC(&v335, &qword_46050, &qword_34F80);
  sub_128E0(v182, v179, v176 & 1);

  *(&v287 + 1) = v335;
  DWORD1(v287) = *(&v335 + 3);
  *&v288[9] = *v381;
  *&v288[73] = *&v381[64];
  *&v286 = v182;
  *(&v286 + 1) = v179;
  LOBYTE(v287) = v176 & 1;
  *(&v287 + 1) = v186;
  *v288 = v102;
  v288[8] = 0;
  *&v288[57] = *&v381[48];
  *&v288[41] = *&v381[32];
  *&v288[25] = *&v381[16];
  v289[0] = v182;
  v289[1] = v179;
  v290 = v176 & 1;
  *&v291[3] = *(&v335 + 3);
  *v291 = v335;
  v292 = v186;
  v293 = v102;
  v294 = 0;
  v295 = *v381;
  v299 = *&v381[64];
  v298 = *&v381[48];
  v297 = *&v381[32];
  v296 = *&v381[16];
  sub_33C4(&v286, __src, &qword_46000, &qword_34F38);
  sub_93EC(v289, &qword_46000, &qword_34F38);
  *&v211[71] = *&v288[32];
  *&v211[87] = *&v288[48];
  *&v211[103] = *&v288[64];
  *&v211[7] = v286;
  *&v211[23] = v287;
  *&v211[39] = *v288;
  v211[119] = v288[80];
  *&v211[55] = *&v288[16];
  v187 = v316[0];
  v183 = sub_32E14();
  LOBYTE(v316[0]) = 1;
  v129 = *(v205 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_reachableLabel + 8);
  *&__src[0] = *(v205 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_reachableLabel);
  *(&__src[0] + 1) = v129;

  v130 = sub_32FE4();
  v175 = v131;
  v177 = v130;
  v173 = v132;
  v180 = v133;
  v134 = (*(*v205 + 424))(v130, v131);
  if (*(v205 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_server + v206[11]) == 1)
  {
    v135 = sub_33094();
    v207 = sub_32F64();
    v136 = swift_getKeyPath();
    *&__src[0] = sub_33054();
    sub_12A04();
    v170 = sub_33084();
    v137 = *(v205 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_yesLabel + 8);
    *&__src[0] = *(v205 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_yesLabel);
    *(&__src[0] + 1) = v137;

    v138 = sub_32FE4();
    v140 = v139;
    v142 = v141;
    LODWORD(__src[0]) = sub_32ED4();
    v143 = sub_32F94();
    v145 = v144;
    v147 = v146;
    v149 = v148;
    sub_128E0(v138, v140, v142 & 1);

    v150 = v147 & 1;
    LOBYTE(v326) = v147 & 1;

    sub_12948(v143, v145, v147 & 1);

    sub_12948(v143, v145, v147 & 1);

    sub_128E0(v143, v145, v147 & 1);

    LOBYTE(v328) = 0;
    *&__src[0] = v135;
    *(&__src[0] + 1) = v136;
    *&__src[1] = v207;
    *(&__src[1] + 1) = v170;
    *&__src[2] = v143;
    *(&__src[2] + 1) = v145;
    LOBYTE(__src[3]) = v147 & 1;
    *(&__src[3] + 1) = v149;
    LOBYTE(__src[4]) = 0;
    sub_279C(&qword_45860, &qword_344C8);
    sub_8F50(&qword_46030, &qword_45860, &qword_344C8, &protocol conformance descriptor for TupleView<A>);
    sub_32EC4();
    v151 = v143;
    v152 = v145;
  }

  else
  {
    v153 = sub_33094();
    v208 = sub_32F64();
    v154 = swift_getKeyPath();
    *&__src[0] = sub_33034();
    sub_12A04();
    v171 = sub_33084();
    v155 = *(v205 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_noLabel + 8);
    *&__src[0] = *(v205 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_noLabel);
    *(&__src[0] + 1) = v155;

    v156 = sub_32FE4();
    v158 = v157;
    v160 = v159;
    LODWORD(__src[0]) = sub_32ED4();
    v161 = sub_32F94();
    v163 = v162;
    v165 = v164;
    v167 = v166;
    sub_128E0(v156, v158, v160 & 1);

    v150 = v165 & 1;
    LOBYTE(v326) = v165 & 1;

    sub_12948(v161, v163, v165 & 1);

    sub_12948(v161, v163, v165 & 1);

    sub_128E0(v161, v163, v165 & 1);

    LOBYTE(v328) = 1;
    *&__src[0] = v153;
    *(&__src[0] + 1) = v154;
    *&__src[1] = v208;
    *(&__src[1] + 1) = v171;
    *&__src[2] = v161;
    *(&__src[2] + 1) = v163;
    LOBYTE(__src[3]) = v165 & 1;
    *(&__src[3] + 1) = v167;
    LOBYTE(__src[4]) = 1;
    sub_279C(&qword_45860, &qword_344C8);
    sub_8F50(&qword_46030, &qword_45860, &qword_344C8, &protocol conformance descriptor for TupleView<A>);
    sub_32EC4();
    v151 = v161;
    v152 = v163;
  }

  sub_128E0(v151, v152, v150);

  __src[2] = *&v336[16];
  __src[3] = *&v336[32];
  LOBYTE(__src[4]) = v336[48];
  __src[0] = v335;
  __src[1] = *v336;
  *v329 = *v336;
  v328 = v335;
  *&v382[7] = v335;
  *&v329[16] = *&v336[16];
  *&v329[32] = *&v336[32];
  *&v382[55] = *&v336[32];
  *&v382[39] = *&v336[16];
  *&v382[23] = *v336;
  LOBYTE(v324) = v173 & 1;
  LOBYTE(v364[0]) = 0;
  v329[48] = v336[48];
  v382[71] = v336[48];
  sub_12948(v177, v175, v173 & 1);

  sub_33C4(&v328, &v326, &qword_46038, &qword_34F70);
  sub_93EC(&v335, &qword_46038, &qword_34F70);
  sub_128E0(v177, v175, v173 & 1);

  *&v302[9] = *v382;
  *&v302[57] = *&v382[48];
  *&v302[41] = *&v382[32];
  *&v302[25] = *&v382[16];
  *v302 = v134;
  v307 = v134;
  *(&v301 + 1) = v335;
  DWORD1(v301) = *(&v335 + 3);
  *&v302[73] = *&v382[64];
  *&v300 = v177;
  *(&v300 + 1) = v175;
  LOBYTE(v301) = v173 & 1;
  *(&v301 + 1) = v180;
  v302[8] = 0;
  v303[0] = v177;
  v303[1] = v175;
  v304 = v173 & 1;
  *&v305[3] = *(&v335 + 3);
  *v305 = v335;
  v306 = v180;
  v308 = 0;
  v309 = *v382;
  v313 = *&v382[64];
  v312 = *&v382[48];
  v311 = *&v382[32];
  v310 = *&v382[16];
  sub_33C4(&v300, __src, &qword_46008, &qword_34F40);
  sub_93EC(v303, &qword_46008, &qword_34F40);
  *&v210[71] = *&v302[32];
  *&v210[87] = *&v302[48];
  *&v210[103] = *&v302[64];
  v210[119] = v302[80];
  *&v210[7] = v300;
  *&v210[23] = v301;
  *&v210[39] = *v302;
  *&v210[55] = *&v302[16];
  v168 = v316[0];
  v314 = v197;
  v315[0] = v196;
  *&v315[1] = *v216;
  *&v315[17] = *&v216[16];
  *&v315[80] = *&v216[79];
  *&v315[65] = *&v216[64];
  *&v315[49] = *&v216[48];
  *&v315[33] = *&v216[32];
  __src[0] = v197;
  __src[1] = *v315;
  *&__src[6] = *&v315[80];
  __src[4] = *&v315[48];
  __src[5] = *&v315[64];
  __src[2] = *&v315[16];
  __src[3] = *&v315[32];
  v316[0] = v194;
  v316[1] = 0;
  v317[0] = v193;
  *&v317[49] = *&v215[48];
  *&v317[33] = *&v215[32];
  *&v317[17] = *&v215[16];
  *&v317[1] = *v215;
  *&v317[112] = *&v215[111];
  *&v317[97] = *&v215[96];
  *&v317[81] = *&v215[80];
  *&v317[65] = *&v215[64];
  *(&__src[6] + 8) = v194;
  *(&__src[10] + 8) = *&v317[48];
  *(&__src[9] + 8) = *&v317[32];
  *(&__src[8] + 8) = *&v317[16];
  *(&__src[7] + 8) = *v317;
  *(&__src[14] + 1) = *&v317[112];
  *(&__src[13] + 8) = *&v317[96];
  *(&__src[12] + 8) = *&v317[80];
  *(&__src[11] + 8) = *&v317[64];
  v318 = v192;
  v319[0] = v191;
  *&v319[1] = *v214;
  *&v319[17] = *&v214[16];
  *&v319[65] = *&v214[64];
  *&v319[49] = *&v214[48];
  *&v319[33] = *&v214[32];
  *&v319[80] = *&v214[79];
  __src[15] = v192;
  __src[16] = *v319;
  __src[19] = *&v319[48];
  __src[20] = *&v319[64];
  __src[17] = *&v319[16];
  __src[18] = *&v319[32];
  v320[0] = v190;
  v320[1] = 0;
  v321[0] = v189;
  *&v321[1] = *v213;
  *&v321[17] = *&v213[16];
  *&v321[80] = *&v213[79];
  *&v321[65] = *&v213[64];
  *&v321[49] = *&v213[48];
  *&v321[33] = *&v213[32];
  *(&__src[21] + 8) = v190;
  *(&__src[22] + 8) = *v321;
  *(&__src[25] + 8) = *&v321[48];
  *(&__src[26] + 8) = *&v321[64];
  *(&__src[23] + 8) = *&v321[16];
  *(&__src[24] + 8) = *&v321[32];
  *&__src[21] = *&v214[79];
  *(&__src[27] + 1) = *&v321[80];
  v322 = v188;
  v323[0] = v204;
  *&v323[17] = *&v212[16];
  *&v323[1] = *v212;
  *&v323[81] = *&v212[80];
  *&v323[65] = *&v212[64];
  *&v323[49] = *&v212[48];
  *&v323[33] = *&v212[32];
  *(&__src[33] + 9) = *&v323[73];
  __src[28] = v188;
  __src[29] = *v323;
  __src[32] = *&v323[48];
  __src[33] = *&v323[64];
  __src[30] = *&v323[16];
  __src[31] = *&v323[32];
  v324 = v200;
  v325[0] = v187;
  *&v325[49] = *&v211[48];
  *&v325[33] = *&v211[32];
  *&v325[17] = *&v211[16];
  *&v325[1] = *v211;
  *&v325[113] = *&v211[112];
  *&v325[97] = *&v211[96];
  *&v325[81] = *&v211[80];
  *&v325[65] = *&v211[64];
  *(&__src[42] + 9) = *&v325[105];
  __src[37] = *&v325[16];
  __src[38] = *&v325[32];
  __src[35] = v200;
  __src[36] = *v325;
  __src[41] = *&v325[80];
  __src[42] = *&v325[96];
  __src[39] = *&v325[48];
  __src[40] = *&v325[64];
  v326 = v183;
  v327[0] = v168;
  *&v327[17] = *&v210[16];
  *&v327[1] = *v210;
  *&v327[81] = *&v210[80];
  *&v327[65] = *&v210[64];
  *&v327[97] = *&v210[96];
  *&v327[113] = *&v210[112];
  *&v327[33] = *&v210[32];
  *&v327[49] = *&v210[48];
  *(&__src[51] + 9) = *&v327[105];
  __src[46] = *&v327[16];
  __src[47] = *&v327[32];
  __src[44] = v183;
  __src[45] = *v327;
  __src[51] = *&v327[96];
  __src[49] = *&v327[64];
  __src[50] = *&v327[80];
  __src[48] = *&v327[48];
  memcpy(__dst, __src, 0x349uLL);
  v331 = *&v210[64];
  v332 = *&v210[80];
  v333 = *&v210[96];
  *&v329[1] = *v210;
  *&v329[17] = *&v210[16];
  *&v329[33] = *&v210[32];
  v328 = v183;
  v329[0] = v168;
  v334 = *&v210[112];
  v330 = *&v210[48];
  sub_33C4(&v314, &v335, &qword_45F50, &qword_34E50);
  sub_33C4(v316, &v335, &qword_46010, &qword_34F48);
  sub_33C4(&v318, &v335, &qword_45F50, &qword_34E50);
  sub_33C4(v320, &v335, &qword_45F50, &qword_34E50);
  sub_33C4(&v322, &v335, &qword_46018, &qword_34F50);
  sub_33C4(&v324, &v335, &qword_46020, &qword_34F58);
  sub_33C4(&v326, &v335, &qword_46028, &unk_34F60);
  sub_93EC(&v328, &qword_46028, &unk_34F60);
  v338 = *&v211[64];
  v339 = *&v211[80];
  v340 = *&v211[96];
  *&v336[1] = *v211;
  *&v336[17] = *&v211[16];
  *&v336[33] = *&v211[32];
  v335 = v200;
  v336[0] = v187;
  v341 = *&v211[112];
  v337 = *&v211[48];
  sub_93EC(&v335, &qword_46020, &qword_34F58);
  v346 = *&v212[32];
  v347 = *&v212[48];
  v348 = *&v212[64];
  v344 = *v212;
  v342[0] = v188;
  v342[1] = 0;
  v343 = v204;
  v349 = *&v212[80];
  v345 = *&v212[16];
  sub_93EC(v342, &qword_46018, &qword_34F50);
  v354 = *&v213[32];
  v355 = *&v213[48];
  *v356 = *&v213[64];
  v352 = *v213;
  v350[0] = v190;
  v350[1] = 0;
  v351 = v189;
  *&v356[15] = *&v213[79];
  v353 = *&v213[16];
  sub_93EC(v350, &qword_45F50, &qword_34E50);
  v361 = *&v214[32];
  v362 = *&v214[48];
  *v363 = *&v214[64];
  v359 = *v214;
  v357[0] = v192;
  v357[1] = 0;
  v358 = v191;
  *&v363[15] = *&v214[79];
  v360 = *&v214[16];
  sub_93EC(v357, &qword_45F50, &qword_34E50);
  v370 = *&v215[64];
  v371 = *&v215[80];
  *v372 = *&v215[96];
  v366 = *v215;
  v367 = *&v215[16];
  v368 = *&v215[32];
  v364[0] = v194;
  v364[1] = 0;
  v365 = v193;
  *&v372[15] = *&v215[111];
  v369 = *&v215[48];
  sub_93EC(v364, &qword_46010, &qword_34F48);
  v373[0] = v197;
  v373[1] = 0;
  v374 = v196;
  v377 = *&v216[32];
  v378 = *&v216[48];
  *v379 = *&v216[64];
  *&v379[15] = *&v216[79];
  v375 = *v216;
  v376 = *&v216[16];
  return sub_93EC(v373, &qword_45F50, &qword_34E50);
}

double sub_1D910(uint64_t a1)
{
  *(a1 + 224) = 0;
  result = 0.0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double sub_1D998@<D0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v21 = sub_32E14();
  v25 = 1;
  v5 = *(v4 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_downloadTestLabel + 8);
  *v24 = *(v4 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_downloadTestLabel);
  *&v24[8] = v5;
  sub_1288C();

  v6 = sub_32FE4();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = (*(*v4 + 424))();
  v14 = sub_33094();
  v15 = sub_32F34();
  KeyPath = swift_getKeyPath();
  v24[0] = v10 & 1;
  sub_12948(v6, v8, v10 & 1);

  sub_128E0(v6, v8, v10 & 1);

  *(&v27 + 1) = *v23;
  DWORD1(v27) = *&v23[3];
  *(&v28 + 9) = *v22;
  HIDWORD(v28) = *&v22[3];
  v30 = v15;
  v31[0] = v6;
  *&v26 = v6;
  *(&v26 + 1) = v8;
  LOBYTE(v27) = v10 & 1;
  *(&v27 + 1) = v12;
  *&v28 = v13;
  BYTE8(v28) = 0;
  *&v29 = v14;
  *(&v29 + 1) = KeyPath;
  v31[1] = v8;
  v32 = v10 & 1;
  *&v33[3] = *&v23[3];
  *v33 = *v23;
  v34 = v12;
  v35 = v13;
  v36 = 0;
  *v37 = *v22;
  *&v37[3] = *&v22[3];
  v38 = v14;
  v39 = KeyPath;
  v40 = v15;
  sub_33C4(&v26, v24, &qword_45FE0, &qword_34EE0);
  sub_93EC(v31, &qword_45FE0, &qword_34EE0);
  *&v24[7] = v26;
  *&v24[55] = v29;
  *&v24[39] = v28;
  *&v24[23] = v27;
  v17 = *v24;
  *(a2 + 33) = *&v24[16];
  v18 = *&v24[48];
  *(a2 + 49) = *&v24[32];
  *&v24[71] = v30;
  *(a2 + 65) = v18;
  result = *&v24[63];
  *(a2 + 80) = *&v24[63];
  v20 = v25;
  *a2 = v21;
  *(a2 + 8) = 0;
  *(a2 + 16) = v20;
  *(a2 + 17) = v17;
  return result;
}

uint64_t sub_1DC4C@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  *a2 = sub_32E14();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v5 = sub_279C(&qword_45FC0, &unk_34E90);
  return sub_1AB24(v4, a2 + *(v5 + 44));
}

uint64_t sub_1DCC8(uint64_t a1)
{
  v2 = sub_32CD4();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_32D84();
}

uint64_t sub_1DD90()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1DDD0()
{

  sub_279C(&qword_457C8, &qword_34300);
  sub_330D4();
  sub_330E4();
}

uint64_t sub_1DE68@<X0>(uint64_t a1@<X8>)
{
  sub_1288C();

  v2 = sub_32FE4();
  v4 = v3;
  v6 = v5;
  sub_32F64();
  v7 = sub_32FC4();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_128E0(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_1DF5C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_12948(a1, a2, a3 & 1);
}

uint64_t sub_1DF98(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_128E0(a1, a2, a3 & 1);
}

uint64_t sub_1DFE4(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1E038(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_1E08C(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1E0D8(uint64_t a1)
{
  v2 = sub_1EA5C(a1);

  if (v1)
  {
    swift_willThrow();
  }

  return v2;
}

unint64_t sub_1E13C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_279C(&qword_460A0, &unk_35150);
    v2 = sub_335F4();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = v11 | (v10 << 6);
        v13 = (*(a1 + 48) + 16 * v12);
        v14 = *v13;
        v15 = v13[1];
        sub_2740(*(a1 + 56) + 32 * v12, v32);
        *&v31 = v14;
        *(&v31 + 1) = v15;
        v29 = v31;
        v30[0] = v32[0];
        v30[1] = v32[1];
        v16 = v31;
        sub_3284(v30, &v23);

        sub_279C(&qword_45710, &qword_34278);
        swift_dynamicCast();
        v27 = v25;
        v28 = v26;
        v24 = v25;
        v25 = v26;
        result = sub_26C8(v16, *(&v16 + 1));
        if (v17)
        {
          *(v2[6] + 16 * result) = v16;
          v9 = result;

          result = sub_21538(&v24, v2[7] + 32 * v9);
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v16;
          v18 = (v2[7] + 32 * result);
          v19 = v25;
          *v18 = v24;
          v18[1] = v19;
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_21;
          }

          v2[2] = v22;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void *sub_1E3B0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_279C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_1E58C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_279C(&qword_460C8, &qword_35178);
    v3 = sub_335F4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_26C8(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1E6A0(uint64_t a1)
{
  sub_33C4(a1, v7, &qword_45710, &qword_34278);
  if (v8)
  {
    sub_279C(&qword_460C0, &qword_35170);
    if (swift_dynamicCast())
    {
      return v9;
    }
  }

  else
  {
    sub_93EC(v7, &qword_45710, &qword_34278);
  }

  sub_33C4(a1, v7, &qword_45710, &qword_34278);
  if (v8)
  {
    sub_27E4();
    if (swift_dynamicCast())
    {
      return swift_willThrow();
    }
  }

  else
  {
    sub_93EC(v7, &qword_45710, &qword_34278);
  }

  sub_279C(&qword_460A8, &qword_35160);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_33E20;
  *(inited + 32) = sub_33244();
  *(inited + 40) = v4;
  *(inited + 48) = 0xD000000000000037;
  *(inited + 56) = 0x800000000003B3D0;
  v5 = sub_1E58C(inited);
  swift_setDeallocating();
  sub_93EC(inited + 32, &qword_460B0, &qword_35168);
  sub_215A8();
  swift_allocError();
  *v6 = v5;
  *(v6 + 8) = 1;
  return swift_willThrow();
}

uint64_t sub_1E87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *(a3 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = a2;
  v6 = a3 + 32;
  v7 = &qword_45170;
  v8 = &type metadata for Any;
  while (1)
  {
    sub_2740(v6, v23);
    sub_279C(v7, &unk_33E70);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_5;
    }

    v10 = sub_16264();
    if (*(v21 + 16))
    {
      v11 = v8;
      v12 = v7;
      v13 = *v10;
      v14 = v10[1];

      v15 = sub_26C8(v13, v14);
      v17 = v16;

      if (v17)
      {
        sub_2740(*(v21 + 56) + 32 * v15, v23);

        v8 = v11;
        if (swift_dynamicCast())
        {
          v18 = v22;
          v7 = v12;
          v4 = a2;
          if (v21 != a1)
          {
            goto LABEL_4;
          }

          goto LABEL_17;
        }

        v7 = v12;
      }

      else
      {

        v7 = v12;
        v8 = v11;
      }

      v4 = a2;
    }

    else
    {
    }

    v18 = 0xE000000000000000;
    if (a1)
    {
      goto LABEL_4;
    }

LABEL_17:
    if (v18 == v4)
    {

      return 1;
    }

LABEL_4:
    v9 = sub_33644();

    if (v9)
    {
      return 1;
    }

LABEL_5:
    v6 += 32;
    if (!--v3)
    {
      return 0;
    }
  }
}

uint64_t sub_1EA5C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_279C(&qword_46060, "^4");
  __chkstk_darwin(v4 - 8);
  inited = &v235 - v5;
  v269 = type metadata accessor for AddressRange(0);
  v264 = *(v269 - 8);
  __chkstk_darwin(v269);
  v268 = &v235 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_279C(&qword_46068, "^4");
  __chkstk_darwin(v8 - 8);
  v10 = &v235 - v9;
  v272 = type metadata accessor for FavoredServer(0);
  v265 = *(v272 - 8);
  __chkstk_darwin(v272);
  v271 = &v235 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CachingServer(0);
  v253 = *(v12 - 8);
  v13 = __chkstk_darwin(v12 - 8);
  v255 = &v235 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v254 = &v235 - v15;
  v260 = sub_32AC4();
  v256 = *(v260 - 8);
  v16 = __chkstk_darwin(v260);
  v252 = &v235 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v235 - v18;
  v20 = sub_279C(&qword_46070, "^4");
  v21 = __chkstk_darwin(v20 - 8);
  v262 = &v235 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v274 = &v235 - v23;
  v287 = sub_32BD4();
  v280 = *(v287 - 8);
  v24 = __chkstk_darwin(v287);
  v257 = &v235 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v258 = &v235 - v27;
  v28 = __chkstk_darwin(v26);
  v259 = &v235 - v29;
  v30 = __chkstk_darwin(v28);
  v267 = &v235 - v31;
  v32 = __chkstk_darwin(v30);
  v266 = &v235 - v33;
  v34 = __chkstk_darwin(v32);
  v276 = &v235 - v35;
  v36 = __chkstk_darwin(v34);
  v38 = &v235 - v37;
  __chkstk_darwin(v36);
  v40 = &v235 - v39;
  v41 = sub_160C4();
  v43 = *v41;
  v42 = v41[1];
  *&v285 = v43;
  *(&v285 + 1) = v42;

  sub_33544();
  v44 = *(a1 + 16);
  v277 = a1;
  if (v44 && (v45 = sub_2830(&v282), (v46 & 1) != 0))
  {
    sub_2740(*(a1 + 56) + 32 * v45, v281);
    sub_3310(&v282);
  }

  else
  {
    sub_3310(&v282);
    memset(v281, 0, sizeof(v281));
  }

  sub_33C4(v281, &v285, &qword_45710, &qword_34278);
  v270 = inited;
  v273 = v10;
  if (*(&v286 + 1))
  {
    if (swift_dynamicCast())
    {
      v10 = v284[0];
      inited = v284[1];
      goto LABEL_15;
    }
  }

  else
  {
    sub_93EC(&v285, &qword_45710, &qword_34278);
  }

  sub_33C4(v281, &v285, &qword_45710, &qword_34278);
  if (!*(&v286 + 1))
  {
    sub_93EC(&v285, &qword_45710, &qword_34278);
    goto LABEL_13;
  }

  sub_27E4();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    sub_279C(&qword_460A8, &qword_35160);
    inited = swift_initStackObject();
    *(inited + 1) = xmmword_33E20;
    *(inited + 4) = sub_33244();
    *(inited + 5) = v47;
    *(inited + 6) = 0xD000000000000038;
    *(inited + 7) = 0x800000000003B410;
    v10 = sub_1E58C(inited);
    swift_setDeallocating();
    sub_93EC((inited + 32), &qword_460B0, &qword_35168);
    sub_215A8();
    v2 = swift_allocError();
    *v48 = v10;
    *(v48 + 8) = 0;
    goto LABEL_14;
  }

  v2 = v284[0];
LABEL_14:
  swift_willThrow();
LABEL_15:
  v261 = v19;
  if (!v2)
  {
    v275 = 0;
    sub_93EC(v281, &qword_45710, &qword_34278);
    v64 = sub_2167C();
    v50 = v280;
    v278 = *(v280 + 16);
    v278(v40, v64, v287);

    v65 = sub_32BB4();
    v66 = sub_33414();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *&v285 = v68;
      *v67 = 136446210;
      v69 = sub_D148(v10, inited, &v285);

      *(v67 + 4) = v69;
      _os_log_impl(&dword_0, v65, v66, "This device public IP address is: %{public}s", v67, 0xCu);
      sub_3364(v68);
      v59 = v277;

      v61 = *(v50 + 8);
      v62 = v40;
      v63 = v287;
      goto LABEL_20;
    }

    v71 = *(v50 + 8);
    v72 = v40;
LABEL_23:
    v279 = v71;
    (v71)(v72, v287);
    v70 = v276;
    v59 = v277;
    goto LABEL_24;
  }

  v275 = 0;
  sub_93EC(v281, &qword_45710, &qword_34278);
  v49 = sub_2167C();
  v50 = v280;
  v278 = *(v280 + 16);
  v278(v38, v49, v287);
  swift_errorRetain();
  v51 = sub_32BB4();
  v52 = sub_33424();

  if (!os_log_type_enabled(v51, v52))
  {

    v71 = *(v50 + 8);
    v72 = v38;
    goto LABEL_23;
  }

  v53 = swift_slowAlloc();
  v279 = v38;
  v54 = v53;
  v55 = swift_slowAlloc();
  *&v285 = v55;
  *v54 = 136446210;
  *&v282 = v2;
  swift_errorRetain();
  sub_279C(&qword_45540, &unk_35120);
  v56 = sub_33294();
  v58 = sub_D148(v56, v57, &v285);
  v59 = v277;

  *(v54 + 4) = v58;
  v60 = v287;
  _os_log_impl(&dword_0, v51, v52, "Converting device public IP address servers error: %{public}s", v54, 0xCu);
  sub_3364(v55);
  v50 = v280;

  v61 = *(v50 + 8);
  v62 = v279;
  v63 = v60;
LABEL_20:
  v279 = v61;
  (v61)(v62, v63);
  v70 = v276;
LABEL_24:
  v73 = sub_1609C();
  v75 = *v73;
  v74 = v73[1];
  *&v281[0] = v75;
  *(&v281[0] + 1) = v74;

  sub_33544();
  if (*(v59 + 16) && (v76 = sub_2830(&v285), (v77 & 1) != 0))
  {
    sub_2740(*(v59 + 56) + 32 * v76, &v282);
    sub_3310(&v285);
    sub_279C(&qword_45148, &qword_33E50);
    if (swift_dynamicCast())
    {
      v78 = *&v281[0];
      goto LABEL_30;
    }
  }

  else
  {
    sub_3310(&v285);
  }

  v78 = sub_2E50(_swiftEmptyArrayStorage);
LABEL_30:
  v79 = sub_2167C();
  v276 = (v50 + 16);
  v278(v70, v79, v287);

  v80 = sub_32BB4();
  v81 = sub_33414();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    *&v285 = v83;
    *v82 = 136446210;
    v84 = sub_331F4();
    v263 = v79;
    v86 = sub_D148(v84, v85, &v285);
    v87 = v280;

    *(v82 + 4) = v86;
    v50 = v87;
    v88 = v279;
    _os_log_impl(&dword_0, v80, v81, "Refreshed servers: %{public}s", v82, 0xCu);
    sub_3364(v83);
    v59 = v277;

    (v88)(v70, v287);
    v79 = v263;
  }

  else
  {

    (v279)(v70, v287);
  }

  v89 = sub_16140();
  v91 = *v89;
  v90 = *(v89 + 1);
  *&v282 = v91;
  *(&v282 + 1) = v90;

  sub_33544();
  if (*(v78 + 16) && (v92 = sub_2830(&v285), (v93 & 1) != 0))
  {
    sub_2740(*(v78 + 56) + 32 * v92, &v282);
    sub_3310(&v285);
  }

  else
  {
    sub_3310(&v285);
    v282 = 0u;
    v283 = 0u;
  }

  v94 = v275;
  v95 = sub_1E6A0(&v282);
  if (v94)
  {
    sub_93EC(&v282, &qword_45710, &qword_34278);

    *&v285 = v94;
    swift_errorRetain();
    sub_279C(&qword_45540, &unk_35120);
    sub_27E4();
    if (swift_dynamicCast())
    {

      v96 = v282;
      v97 = v267;
      v278(v267, v79, v287);
      v98 = v96;
      v99 = sub_32BB4();
      v100 = sub_33424();

      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        *&v281[0] = v102;
        *v101 = 136446210;
        v103 = v98;
        v104 = v97;
        v105 = [v103 description];
        v106 = sub_33244();
        v108 = v107;

        v109 = sub_D148(v106, v108, v281);

        *(v101 + 4) = v109;
        _os_log_impl(&dword_0, v99, v100, "Converting server error: %{public}s", v101, 0xCu);
        sub_3364(v102);

        v128 = v104;
      }

      else
      {

        v128 = v97;
      }

      (v279)(v128, v287);
      swift_willThrow();
    }
  }

  v110 = v95;
  sub_93EC(&v282, &qword_45710, &qword_34278);
  v111 = sub_1616C();
  v113 = *v111;
  v112 = *(v111 + 1);
  *&v282 = v113;
  *(&v282 + 1) = v112;

  sub_33544();
  if (*(v78 + 16) && (v114 = sub_2830(&v285), (v115 & 1) != 0))
  {
    sub_2740(*(v78 + 56) + 32 * v114, &v282);
    sub_3310(&v285);
  }

  else
  {
    sub_3310(&v285);
    v282 = 0u;
    v283 = 0u;
  }

  v267 = sub_1E6A0(&v282);
  sub_93EC(&v282, &qword_45710, &qword_34278);
  v116 = sub_1619C();
  v118 = *v116;
  v117 = v116[1];
  *&v282 = v118;
  *(&v282 + 1) = v117;

  sub_33544();
  if (*(v78 + 16) && (v119 = sub_2830(&v285), (v120 & 1) != 0))
  {
    sub_2740(*(v78 + 56) + 32 * v119, &v282);
    sub_3310(&v285);
  }

  else
  {
    sub_3310(&v285);
    v282 = 0u;
    v283 = 0u;
  }

  v251 = sub_1E6A0(&v282);
  sub_93EC(&v282, &qword_45710, &qword_34278);
  v121 = sub_161C4();
  v123 = *v121;
  v122 = v121[1];
  *&v282 = v123;
  *(&v282 + 1) = v122;

  sub_33544();
  if (*(v78 + 16) && (v124 = sub_2830(&v285), (v125 & 1) != 0))
  {
    sub_2740(*(v78 + 56) + 32 * v124, &v282);
    sub_3310(&v285);
  }

  else
  {

    sub_3310(&v285);
    v282 = 0u;
    v283 = 0u;
  }

  v126 = sub_1E6A0(&v282);
  v127 = v260;
  v250 = v126;
  sub_93EC(&v282, &qword_45710, &qword_34278);
  v131 = *(v110 + 2);
  if (v131)
  {
    v132 = 0;
    result = (v110 + 32);
    v247 = v50 + 8;
    v245 = (v256 + 48);
    v237 = (v256 + 32);
    v235 = (v256 + 16);
    v238 = (v256 + 8);
    v236 = _swiftEmptyArrayStorage;
    *&v130 = 136446210;
    v239 = v130;
    v257 = v110;
    v263 = v79;
    v248 = v131;
    while (1)
    {
      if (v132 >= *(v110 + 2))
      {
        goto LABEL_196;
      }

      v280 = result;
      sub_2740(result, &v285);
      sub_279C(&qword_45170, &unk_33E70);
      if (swift_dynamicCast())
      {
        break;
      }

LABEL_62:
      ++v132;
      result = v280 + 32;
      if (v131 == v132)
      {
        goto LABEL_157;
      }
    }

    v134 = v282;
    v135 = sub_162AC();
    v136 = *(v134 + 16);
    v258 = v132;
    if (v136)
    {
      v138 = *v135;
      v137 = v135[1];

      v139 = sub_26C8(v138, v137);
      if (v140)
      {
        sub_2740(*(v134 + 56) + 32 * v139, &v285);
      }

      else
      {
        v285 = 0u;
        v286 = 0u;
      }

      if (*(&v286 + 1))
      {
        swift_dynamicCast();
        goto LABEL_73;
      }
    }

    else
    {
      v285 = 0u;
      v286 = 0u;
    }

    sub_93EC(&v285, &qword_45710, &qword_34278);
LABEL_73:
    sub_32A94();

    v141 = sub_16264();
    if (*(v134 + 16))
    {
      v143 = *v141;
      v142 = v141[1];

      v144 = sub_26C8(v143, v142);
      if (v145)
      {
        sub_2740(*(v134 + 56) + 32 * v144, &v285);
      }

      else
      {
        v285 = 0u;
        v286 = 0u;
      }

      if (*(&v286 + 1))
      {
        v146 = swift_dynamicCast();
        v147 = v282;
        if (!v146)
        {
          v147 = 0;
        }

        v259 = v147;
        if (v146)
        {
          v148 = *(&v282 + 1);
        }

        else
        {
          v148 = 0;
        }

LABEL_85:
        v149 = sub_16308();
        if (*(v134 + 16))
        {
          v151 = *v149;
          v150 = v149[1];

          v152 = sub_26C8(v151, v150);
          if (v153)
          {
            sub_2740(*(v134 + 56) + 32 * v152, &v285);
          }

          else
          {
            v285 = 0u;
            v286 = 0u;
          }

          if (*(&v286 + 1))
          {
            v154 = swift_dynamicCast();
            v155 = v282;
            if (!v154)
            {
              v155 = 0;
            }

            v244 = v155;
            v156 = v154 ^ 1;
LABEL_95:
            LODWORD(v256) = v156;
            v157 = sub_16324();
            if (*(v134 + 16))
            {
              v159 = *v157;
              v158 = v157[1];

              v160 = sub_26C8(v159, v158);
              if (v161)
              {
                sub_2740(*(v134 + 56) + 32 * v160, &v285);
              }

              else
              {
                v285 = 0u;
                v286 = 0u;
              }

              if (*(&v286 + 1))
              {
                v162 = swift_dynamicCast();
                v163 = v282;
                if (!v162)
                {
                  v163 = 0;
                }

                v243 = v163;
                v164 = v162 ^ 1;
LABEL_105:
                v249 = v164;
                v165 = sub_162E4();
                if (*(v134 + 16))
                {
                  v167 = *v165;
                  v166 = v165[1];

                  v168 = sub_26C8(v167, v166);
                  if (v169)
                  {
                    sub_2740(*(v134 + 56) + 32 * v168, &v285);
                  }

                  else
                  {
                    v285 = 0u;
                    v286 = 0u;
                  }
                }

                else
                {
                  v285 = 0u;
                  v286 = 0u;
                }

                if (*(&v286 + 1))
                {
                  v170 = swift_dynamicCast();
                  v246 = v170 ^ 1;
                  if (v282 == 1)
                  {
                    v171 = v170;
                  }

                  else
                  {
                    v171 = 0;
                  }

                  v172 = &v274 + 4;
                }

                else
                {
                  sub_93EC(&v285, &qword_45710, &qword_34278);
                  v242 = 0;
                  v171 = 1;
                  v172 = &v278 + 4;
                }

                *(v172 - 64) = v171;
                v173 = v259;
                v174 = sub_1E87C(v259, v148, v267);
                v175 = sub_1E87C(v173, v148, v251);
                v176 = sub_1E87C(v173, v148, v250);
                v177 = 8;
                if ((v174 & 1) == 0)
                {
                  v177 = 0;
                }

                if (v175)
                {
                  v177 |= 0x10uLL;
                }

                if (v176)
                {
                  v177 |= 0x20uLL;
                }

                v241 = v177;
                v178 = sub_16114();
                v180 = *v178;
                v179 = *(v178 + 1);
                *&v281[0] = v180;
                *(&v281[0] + 1) = v179;

                sub_33544();
                if (*(v59 + 16))
                {
                  v181 = sub_2830(&v285);
                  v182 = v266;
                  if (v183)
                  {
                    sub_2740(*(v59 + 56) + 32 * v181, &v282);
                  }

                  else
                  {
                    v282 = 0u;
                    v283 = 0u;
                  }
                }

                else
                {
                  v282 = 0u;
                  v283 = 0u;
                  v182 = v266;
                }

                sub_3310(&v285);
                v278(v182, v79, v287);
                sub_33C4(&v282, &v285, &qword_45710, &qword_34278);
                v184 = sub_32BB4();
                v185 = sub_33414();
                v186 = os_log_type_enabled(v184, v185);
                v275 = v148;
                if (v186)
                {
                  v187 = swift_slowAlloc();
                  v188 = swift_slowAlloc();
                  v284[0] = v188;
                  *v187 = v239;
                  sub_33C4(&v285, v281, &qword_45710, &qword_34278);
                  sub_279C(&qword_45710, &qword_34278);
                  v189 = sub_33294();
                  v190 = v59;
                  v192 = v191;
                  sub_93EC(&v285, &qword_45710, &qword_34278);
                  v193 = sub_D148(v189, v192, v284);
                  v59 = v190;
                  v127 = v260;

                  *(v187 + 4) = v193;
                  _os_log_impl(&dword_0, v184, v185, "Converting reachability: %{public}s", v187, 0xCu);
                  sub_3364(v188);
                  v148 = v275;

                  (v279)(v266, v287);
                }

                else
                {

                  sub_93EC(&v285, &qword_45710, &qword_34278);
                  (v279)(v182, v287);
                }

                sub_33C4(&v282, &v285, &qword_45710, &qword_34278);
                if (*(&v286 + 1))
                {
                  sub_279C(&qword_46080, &qword_35590);
                  if (swift_dynamicCast())
                  {
                    v194 = *&v281[0];
                    if (v148)
                    {

                      v240 = sub_6D1C(v259, v148, v194);

                      goto LABEL_142;
                    }
                  }
                }

                else
                {
                  sub_93EC(&v285, &qword_45710, &qword_34278);
                }

                sub_33C4(&v282, &v285, &qword_45710, &qword_34278);
                if (*(&v286 + 1))
                {
                  sub_27E4();
                  if (swift_dynamicCast())
                  {

                    swift_willThrow();
                    sub_93EC(&v282, &qword_45710, &qword_34278);
                    return sub_93EC(v274, &qword_46070, "^4");
                  }
                }

                else
                {
                  sub_93EC(&v285, &qword_45710, &qword_34278);
                }

                v240 = 0;
LABEL_142:
                v195 = v274;
                v196 = v262;
                sub_33C4(v274, v262, &qword_46070, "^4");
                if ((*v245)(v196, 1, v127) == 1)
                {

                  sub_93EC(&v282, &qword_45710, &qword_34278);
                  sub_93EC(v195, &qword_46070, "^4");
                  v133 = v196;
                }

                else
                {
                  v197 = v261;
                  (*v237)(v261, v196, v127);
                  if (v275)
                  {
                    v110 = v257;
                    v79 = v263;
                    if (v256)
                    {

                      (*v238)(v261, v127);
                      sub_93EC(&v282, &qword_45710, &qword_34278);
                      sub_93EC(v274, &qword_46070, "^4");
                    }

                    else
                    {
                      v131 = v248;
                      if (v249 || v246)
                      {

                        (*v238)(v261, v127);
                        sub_93EC(&v282, &qword_45710, &qword_34278);
                        sub_93EC(v274, &qword_46070, "^4");
                        goto LABEL_61;
                      }

                      v198 = 0x403040302010005uLL >> v241;
                      v199 = v252;
                      (*v235)(v252, v261, v127);
                      v200 = v254;
                      sub_1759C(v199, v259, v275, v244, v243, v198, v242, v240 & 1, v254);
                      sub_15954(v200, v255);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v236 = sub_1E3B0(0, v236[2] + 1, 1, v236, &qword_46088, &qword_35138, type metadata accessor for CachingServer);
                      }

                      v202 = v236[2];
                      v201 = v236[3];
                      v110 = v257;
                      if (v202 >= v201 >> 1)
                      {
                        v236 = sub_1E3B0((v201 > 1), v202 + 1, 1, v236, &qword_46088, &qword_35138, type metadata accessor for CachingServer);
                      }

                      sub_1B4D4(v254);
                      (*v238)(v261, v127);
                      sub_93EC(&v282, &qword_45710, &qword_34278);
                      sub_93EC(v274, &qword_46070, "^4");
                      v203 = v236;
                      v236[2] = v202 + 1;
                      sub_214D0(v255, v203 + ((*(v253 + 80) + 32) & ~*(v253 + 80)) + *(v253 + 72) * v202, type metadata accessor for CachingServer);
                    }

                    v131 = v248;
LABEL_61:
                    v132 = v258;
                    goto LABEL_62;
                  }

                  (*v238)(v197, v127);
                  sub_93EC(&v282, &qword_45710, &qword_34278);
                  v133 = v274;
                }

                sub_93EC(v133, &qword_46070, "^4");
                v110 = v257;
                v131 = v248;
                v79 = v263;
                goto LABEL_61;
              }
            }

            else
            {
              v285 = 0u;
              v286 = 0u;
            }

            sub_93EC(&v285, &qword_45710, &qword_34278);
            v243 = 0;
            v164 = 1;
            goto LABEL_105;
          }
        }

        else
        {
          v285 = 0u;
          v286 = 0u;
        }

        sub_93EC(&v285, &qword_45710, &qword_34278);
        v244 = 0;
        v156 = 1;
        goto LABEL_95;
      }
    }

    else
    {
      v285 = 0u;
      v286 = 0u;
    }

    sub_93EC(&v285, &qword_45710, &qword_34278);
    v259 = 0;
    v148 = 0;
    goto LABEL_85;
  }

  v236 = _swiftEmptyArrayStorage;
LABEL_157:

  v204 = sub_161EC();
  v206 = *v204;
  v205 = v204[1];
  *&v282 = v206;
  *(&v282 + 1) = v205;

  sub_33544();
  if (!*(v59 + 16) || (v207 = sub_2830(&v285), (v208 & 1) == 0))
  {
    result = sub_3310(&v285);
LABEL_165:
    v209 = _swiftEmptyArrayStorage;
    v210 = _swiftEmptyArrayStorage[2];
    if (!v210)
    {
      goto LABEL_161;
    }

    goto LABEL_166;
  }

  sub_2740(*(v59 + 56) + 32 * v207, &v282);
  sub_3310(&v285);
  sub_279C(&qword_46078, &qword_35130);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_165;
  }

  v209 = *&v281[0];
  v210 = *(*&v281[0] + 16);
  if (!v210)
  {
LABEL_161:

    v211 = sub_16214();
    v213 = *v211;
    v212 = v211[1];
    *&v282 = v213;
    *(&v282 + 1) = v212;

    sub_33544();
    v214 = v277;
    if (*(v277 + 16) && (v215 = sub_2830(&v285), (v216 & 1) != 0))
    {
      sub_2740(*(v214 + 56) + 32 * v215, &v282);
    }

    else
    {
      v282 = 0u;
      v283 = 0u;
    }

    sub_3310(&v285);
    if (*(&v283 + 1))
    {
      sub_279C(&qword_46078, &qword_35130);
      result = swift_dynamicCast();
      if (result)
      {
        v225 = *&v281[0];
LABEL_182:
        v226 = v225[2];
        if (!v226)
        {
LABEL_193:

          return v236;
        }

        v227 = 0;
        v287 = (v225 + 4);
        v228 = (v264 + 48);
        v229 = _swiftEmptyArrayStorage;
        while (v227 < v225[2])
        {

          v231 = sub_1E13C(v230);
          v232 = v270;
          sub_F354(v231, v270);

          if ((*v228)(v232, 1, v269) == 1)
          {
            result = sub_93EC(v232, &qword_46060, "^4");
          }

          else
          {
            sub_214D0(v232, v268, type metadata accessor for AddressRange);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v229 = sub_1E3B0(0, v229[2] + 1, 1, v229, &qword_46090, &qword_35140, type metadata accessor for AddressRange);
            }

            v234 = v229[2];
            v233 = v229[3];
            if (v234 >= v233 >> 1)
            {
              v229 = sub_1E3B0((v233 > 1), v234 + 1, 1, v229, &qword_46090, &qword_35140, type metadata accessor for AddressRange);
            }

            v229[2] = v234 + 1;
            result = sub_214D0(v268, v229 + ((*(v264 + 80) + 32) & ~*(v264 + 80)) + *(v264 + 72) * v234, type metadata accessor for AddressRange);
          }

          if (v226 == ++v227)
          {
            goto LABEL_193;
          }
        }

        goto LABEL_195;
      }
    }

    else
    {
      result = sub_93EC(&v282, &qword_45710, &qword_34278);
    }

    v225 = _swiftEmptyArrayStorage;
    goto LABEL_182;
  }

LABEL_166:
  v217 = 0;
  v287 = (v209 + 4);
  v218 = (v265 + 48);
  v219 = _swiftEmptyArrayStorage;
  while (v217 < v209[2])
  {

    v221 = sub_1E13C(v220);
    v222 = v273;
    sub_30940(v221, v273);

    if ((*v218)(v222, 1, v272) == 1)
    {
      result = sub_93EC(v222, &qword_46068, "^4");
    }

    else
    {
      sub_214D0(v222, v271, type metadata accessor for FavoredServer);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v219 = sub_1E3B0(0, v219[2] + 1, 1, v219, &qword_46098, &qword_35148, type metadata accessor for FavoredServer);
      }

      v224 = v219[2];
      v223 = v219[3];
      if (v224 >= v223 >> 1)
      {
        v219 = sub_1E3B0((v223 > 1), v224 + 1, 1, v219, &qword_46098, &qword_35148, type metadata accessor for FavoredServer);
      }

      v219[2] = v224 + 1;
      result = sub_214D0(v271, v219 + ((*(v265 + 80) + 32) & ~*(v265 + 80)) + *(v265 + 72) * v224, type metadata accessor for FavoredServer);
    }

    if (v210 == ++v217)
    {
      goto LABEL_161;
    }
  }

  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
  return result;
}

uint64_t sub_21428(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21470(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_214D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21538(uint64_t a1, uint64_t a2)
{
  v4 = sub_279C(&qword_45710, &qword_34278);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_215A8()
{
  result = qword_460B8;
  if (!qword_460B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_460B8);
  }

  return result;
}

uint64_t sub_215FC()
{
  v0 = sub_32BD4();
  sub_217C0(v0, qword_47CF8);
  sub_216E0(v0, qword_47CF8);
  return sub_32BC4();
}

uint64_t sub_2167C()
{
  if (qword_475D0 != -1)
  {
    swift_once();
  }

  v0 = sub_32BD4();

  return sub_216E0(v0, qword_47CF8);
}

uint64_t sub_216E0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_21718@<X0>(uint64_t a1@<X8>)
{
  if (qword_475D0 != -1)
  {
    swift_once();
  }

  v2 = sub_32BD4();
  v3 = sub_216E0(v2, qword_47CF8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *sub_217C0(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t CacheLocatorView.body.getter@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v13[1] = a4;
  v13[0] = sub_279C(&qword_460D0, &qword_35180);
  v7 = *(v13[0] - 8);
  __chkstk_darwin(v13[0]);
  v9 = v13 - v8;
  v13[4] = a1;
  v14 = a2;
  v15 = a3;
  sub_279C(&qword_460D8, &unk_35188);
  sub_8F50(&qword_460E0, &qword_460D8, &unk_35188, &protocol conformance descriptor for TupleView<A>);
  sub_32F84();
  v16 = a2;
  v17 = a3;
  sub_279C(&qword_457C8, &qword_34300);
  sub_330F4();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  sub_8F50(&qword_460E8, &qword_460D0, &qword_35180, &protocol conformance descriptor for List<A, B>);
  sub_1267C();

  v11 = v13[0];
  sub_33024();

  return (*(v7 + 8))(v9, v11);
}

uint64_t sub_21A98@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = a2;
  v88 = a4;
  v7 = sub_279C(&qword_460F0, &qword_35248);
  v85 = *(v7 - 8);
  v86 = v7;
  __chkstk_darwin(v7);
  v75 = &v73 - v8;
  v9 = sub_279C(&qword_460F8, &qword_35250);
  v10 = __chkstk_darwin(v9 - 8);
  v87 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v90 = &v73 - v12;
  v78 = sub_279C(&qword_46100, &qword_35258);
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v74 = &v73 - v13;
  v14 = sub_279C(&qword_46108, &unk_35260);
  v15 = __chkstk_darwin(v14 - 8);
  v84 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v89 = &v73 - v17;
  v18 = sub_279C(&qword_45ED0, &qword_34DE0);
  __chkstk_darwin(v18);
  v20 = &v73 - v19;
  v21 = sub_279C(&qword_46110, &qword_35270);
  __chkstk_darwin(v21);
  v23 = &v73 - v22;
  v24 = sub_279C(&qword_46118, &qword_35278);
  v82 = *(v24 - 8);
  v83 = v24;
  v25 = __chkstk_darwin(v24);
  v81 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v73 - v27;
  *v23 = sub_32E14();
  *(v23 + 1) = 0;
  v29 = 1;
  v23[16] = 1;
  v30 = sub_279C(&qword_46120, &unk_35280);
  sub_22410(a1, &v23[*(v30 + 44)]);
  *v20 = sub_32EA4();
  *(v20 + 1) = 0;
  v20[16] = 1;
  v31 = sub_279C(&qword_45EF8, &qword_34E00);
  sub_22BA0(a1, v5, a3, &v20[*(v31 + 44)]);
  v91 = a1;
  v76 = v5 & 1;
  v92 = v5;
  v79 = a3;
  v93 = a3;
  sub_279C(&qword_46128, &qword_35290);
  sub_8F50(&qword_46130, &qword_46110, &qword_35270, &protocol conformance descriptor for HStack<A>);
  v71 = sub_23210();
  v72 = sub_8F50(&qword_45F10, &qword_45ED0, &qword_34DE0, &protocol conformance descriptor for VStack<A>);
  v80 = v28;
  v32 = sub_33164();
  v33 = *((*(*a1 + 360))(v32) + 16);

  if (v33)
  {
    v34 = a1[22];
    v94 = a1[21];
    v95 = v34;
    sub_1288C();

    v94 = sub_32FE4();
    v95 = v35;
    v96 = v36 & 1;
    v97 = v37;
    __chkstk_darwin(v94);
    *(&v73 - 4) = a1;
    v38 = v76;
    *(&v73 - 24) = v76;
    v39 = v79;
    v71 = v79;
    sub_279C(&qword_46150, &qword_352A0);
    sub_23438();
    v40 = v74;
    sub_33154();
    v41 = v77;
    v42 = v89;
    v43 = v78;
    (*(v77 + 32))(v89, v40, v78);
    v29 = 0;
    v44 = v42;
    v45 = v43;
    v46 = v41;
    v47 = v38;
  }

  else
  {
    v44 = v89;
    v39 = v79;
    v45 = v78;
    v46 = v77;
    v47 = v76;
  }

  v48 = 1;
  v49 = (*(v46 + 56))(v44, v29, 1, v45);
  v50 = *((*(*a1 + 408))(v49) + 16);

  v51 = v90;
  if (v50)
  {
    v52 = a1[24];
    v94 = a1[23];
    v95 = v52;
    sub_1288C();

    v94 = sub_32FE4();
    v95 = v53;
    v96 = v54 & 1;
    v97 = v55;
    __chkstk_darwin(v94);
    *(&v73 - 4) = a1;
    *(&v73 - 24) = v47;
    v71 = v39;
    sub_279C(&qword_46160, &qword_352A8);
    sub_23664();
    v56 = v75;
    sub_33154();
    v58 = v85;
    v57 = v86;
    (*(v85 + 32))(v51, v56, v86);
    v48 = 0;
  }

  else
  {
    v58 = v85;
    v57 = v86;
  }

  (*(v58 + 56))(v51, v48, 1, v57);
  v60 = v81;
  v59 = v82;
  v61 = *(v82 + 16);
  v62 = v80;
  v63 = v83;
  v61(v81, v80, v83);
  v64 = v84;
  sub_33C4(v44, v84, &qword_46108, &unk_35260);
  v65 = v51;
  v66 = v87;
  sub_33C4(v65, v87, &qword_460F8, &qword_35250);
  v67 = v88;
  v61(v88, v60, v63);
  v68 = sub_279C(&qword_46178, &qword_352B0);
  sub_33C4(v64, &v67[*(v68 + 48)], &qword_46108, &unk_35260);
  sub_33C4(v66, &v67[*(v68 + 64)], &qword_460F8, &qword_35250);
  sub_93EC(v90, &qword_460F8, &qword_35250);
  sub_93EC(v89, &qword_46108, &unk_35260);
  v69 = *(v59 + 8);
  v69(v62, v63);
  sub_93EC(v66, &qword_460F8, &qword_35250);
  sub_93EC(v64, &qword_46108, &unk_35260);
  return (v69)(v60, v63);
}

uint64_t sub_22410@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v53 = a2;
  v52 = sub_279C(&qword_461C8, &qword_352D0);
  __chkstk_darwin(v52);
  v44 = (&v43 - v3);
  v4 = sub_279C(&qword_461D0, &qword_352D8);
  __chkstk_darwin(v4 - 8);
  v43 = sub_279C(&qword_461D8, &qword_352E0);
  v5 = *(v43 - 8);
  v6 = __chkstk_darwin(v43);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v43 - v9;
  v46 = sub_279C(&qword_461E0, &qword_352E8);
  __chkstk_darwin(v46);
  v12 = &v43 - v11;
  v48 = sub_279C(&qword_45FC8, &qword_352F0);
  __chkstk_darwin(v48);
  v14 = &v43 - v13;
  v15 = sub_279C(&qword_461E8, &qword_352F8);
  v16 = __chkstk_darwin(v15 - 8);
  v47 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v43 - v18;
  v20 = a1[18];
  v57[0] = a1[17];
  v57[1] = v20;
  sub_1288C();

  v21 = sub_32FE4();
  v49 = v22;
  v50 = v21;
  v45 = v23;
  v51 = v24;
  if ((*(*a1 + 456))())
  {
    sub_32CE4();
    v25 = &v14[*(v48 + 36)];
    v26 = *(sub_279C(&qword_45FD0, &qword_34EA0) + 28);
    v27 = enum case for ControlSize.small(_:);
    v28 = sub_32CD4();
    (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
    *v25 = swift_getKeyPath();
    sub_33C4(v14, v12, &qword_45FC8, &qword_352F0);
    swift_storeEnumTagMultiPayload();
    sub_23AA4();
    sub_8F50(&qword_46228, &qword_461C8, &qword_352D0, &protocol conformance descriptor for TupleView<A>);
    sub_32EC4();
    sub_93EC(v14, &qword_45FC8, &qword_352F0);
  }

  else
  {
    (*(*a1 + 496))(v57);
    v29 = a1[28];
    v55 = a1[27];
    v56 = v29;

    v54 = sub_33094();
    sub_239FC();
    sub_32CF4();
    sub_23A50();
    sub_33194();
    v30 = *(v5 + 16);
    v31 = v8;
    v32 = v43;
    v30(v8, v10, v43);
    v33 = v44;
    *v44 = 0;
    *(v33 + 8) = 1;
    v34 = sub_279C(&qword_46200, &qword_35300);
    v30((v33 + *(v34 + 48)), v31, v32);
    v35 = *(v5 + 8);
    v35(v31, v32);
    sub_33C4(v33, v12, &qword_461C8, &qword_352D0);
    swift_storeEnumTagMultiPayload();
    sub_23AA4();
    sub_8F50(&qword_46228, &qword_461C8, &qword_352D0, &protocol conformance descriptor for TupleView<A>);
    sub_32EC4();
    sub_93EC(v33, &qword_461C8, &qword_352D0);
    v35(v10, v32);
  }

  v36 = v47;
  sub_33C4(v19, v47, &qword_461E8, &qword_352F8);
  v37 = v53;
  v39 = v49;
  v38 = v50;
  *v53 = v50;
  v37[1] = v39;
  v40 = v45 & 1;
  *(v37 + 16) = v45 & 1;
  v37[3] = v51;
  v41 = sub_279C(&qword_46230, &qword_35318);
  sub_33C4(v36, v37 + *(v41 + 48), &qword_461E8, &qword_352F8);
  sub_12948(v38, v39, v40);

  sub_93EC(v19, &qword_461E8, &qword_352F8);
  sub_93EC(v36, &qword_461E8, &qword_352F8);
  sub_128E0(v38, v39, v40);
}

uint64_t sub_22B60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_33094();
  *a1 = result;
  return result;
}

uint64_t sub_22BA0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = sub_279C(&qword_45810, &qword_34450);
  v8 = *(v29 - 8);
  v9 = __chkstk_darwin(v29);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v26 - v12;
  v14 = *(a1 + 160);
  v33 = *(a1 + 152);
  v34 = v14;
  sub_1288C();

  v15 = sub_32FE4();
  v17 = v16;
  v27 = v18;
  v28 = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v30 = a1;
  v31 = a2;
  v32 = a3;

  v26 = v13;
  sub_33104();
  v21 = *(v8 + 16);
  v22 = v29;
  v21(v11, v13, v29);
  *a4 = v15;
  *(a4 + 8) = v17;
  LOBYTE(a1) = v27 & 1;
  *(a4 + 16) = v27 & 1;
  *(a4 + 24) = v28;
  v23 = sub_279C(&qword_45FE8, &qword_34F20);
  v21((a4 + *(v23 + 48)), v11, v22);
  sub_12948(v15, v17, a1);
  v24 = *(v8 + 8);

  v24(v26, v22);
  v24(v11, v22);
  sub_128E0(v15, v17, a1);
}

uint64_t sub_22E70(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(char *))
{
  v7 = a2(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - v8;
  sub_238B0(a1, &v11 - v8, a3);
  return a4(v9);
}

uint64_t sub_22F94()
{
  sub_8BD0(&qword_460D0, &qword_35180);
  sub_8F50(&qword_460E8, &qword_460D0, &qword_35180, &protocol conformance descriptor for List<A, B>);
  sub_1267C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23040()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  (*(*v1 + 312))();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;

  sub_279C(&qword_461B0, &qword_352C8);
  sub_32AC4();
  sub_279C(&qword_46148, &qword_35298);
  sub_8F50(&qword_461B8, &qword_461B0, &qword_352C8, &protocol conformance descriptor for [A]);
  sub_8F50(&qword_46140, &qword_46148, &qword_35298, &protocol conformance descriptor for NavigationLink<A, B>);
  sub_23868(&qword_461C0, type metadata accessor for CachingServer, &unk_34C30);
  return sub_33144();
}

unint64_t sub_23210()
{
  result = qword_46138;
  if (!qword_46138)
  {
    sub_8BD0(&qword_46128, &qword_35290);
    sub_8F50(&qword_46140, &qword_46148, &qword_35298, &protocol conformance descriptor for NavigationLink<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_46138);
  }

  return result;
}

uint64_t sub_232C0()
{
  (*(**(v0 + 16) + 360))();
  sub_279C(&qword_46198, &qword_352C0);
  sub_32AC4();
  type metadata accessor for AddressRangeItemView(0);
  sub_8F50(&qword_461A0, &qword_46198, &qword_352C0, &protocol conformance descriptor for [A]);
  sub_23868(&qword_45990, type metadata accessor for AddressRangeItemView, &unk_345D0);
  sub_23868(&qword_461A8, type metadata accessor for AddressRange, &unk_34280);
  return sub_33144();
}

unint64_t sub_23438()
{
  result = qword_46158;
  if (!qword_46158)
  {
    sub_8BD0(&qword_46150, &qword_352A0);
    sub_23868(&qword_45990, type metadata accessor for AddressRangeItemView, &unk_345D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_46158);
  }

  return result;
}

uint64_t sub_234EC()
{
  (*(**(v0 + 16) + 408))();
  sub_279C(&qword_46180, &qword_352B8);
  sub_32AC4();
  type metadata accessor for FavoredServerItemView(0);
  sub_8F50(&qword_46188, &qword_46180, &qword_352B8, &protocol conformance descriptor for [A]);
  sub_23868(&qword_46170, type metadata accessor for FavoredServerItemView, &unk_35400);
  sub_23868(&qword_46190, type metadata accessor for FavoredServer, &unk_35AE0);
  return sub_33144();
}

unint64_t sub_23664()
{
  result = qword_46168;
  if (!qword_46168)
  {
    sub_8BD0(&qword_46160, &qword_352A8);
    sub_23868(&qword_46170, type metadata accessor for FavoredServerItemView, &unk_35400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_46168);
  }

  return result;
}

uint64_t sub_23718(uint64_t a1)
{
  v2 = (*(**(v1 + 16) + 488))();
  sub_1AEEC(v2);
  type metadata accessor for CacheItemView(0);
  sub_23868(&qword_45C88, type metadata accessor for CacheItemView, &unk_34AB0);
  sub_1B158();
  return sub_32D14();
}

uint64_t sub_23868(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_238B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23918@<X0>(uint64_t a1@<X8>)
{
  sub_1288C();

  v2 = sub_32FE4();
  v4 = v3;
  v6 = v5;
  sub_32F64();
  v7 = sub_32FC4();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_128E0(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

unint64_t sub_239FC()
{
  result = qword_461F0;
  if (!qword_461F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_461F0);
  }

  return result;
}

unint64_t sub_23A50()
{
  result = qword_461F8;
  if (!qword_461F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_461F8);
  }

  return result;
}

unint64_t sub_23AA4()
{
  result = qword_46208;
  if (!qword_46208)
  {
    sub_8BD0(&qword_45FC8, &qword_352F0);
    sub_8F50(&qword_46210, &qword_46218, &unk_35308, &protocol conformance descriptor for ProgressView<A, B>);
    sub_8F50(&qword_46220, &qword_45FD0, &qword_34EA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_46208);
  }

  return result;
}

Swift::Int sub_23BC8(unsigned __int8 a1)
{
  sub_336C4();
  sub_336D4(a1);
  return sub_336E4();
}

Swift::Int sub_23C24()
{
  v1 = *v0;
  sub_336C4();
  sub_336D4(v1);
  return sub_336E4();
}

Swift::Int sub_23C98(uint64_t a1)
{
  v2 = *v1;
  sub_336C4();
  sub_336D4(v2);
  return sub_336E4();
}

uint64_t sub_23CDC(unsigned __int8 a1)
{
  v1 = sub_32AE4();
  __chkstk_darwin(v1 - 8);
  v2 = sub_33224();
  __chkstk_darwin(v2 - 8);
  sub_33214();
  v3 = sub_2A72C();
  swift_beginAccess();
  v4 = *v3;
  sub_32AD4();
  return sub_33284();
}

unint64_t sub_2404C()
{
  result = qword_46238;
  if (!qword_46238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_46238);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CacheType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CacheType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24220(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FavoredServer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24284@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_279C(&qword_458D8, &qword_345B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  *v6 = sub_32E14();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = sub_279C(&qword_458E0, &qword_345B8);
  sub_24444(v2, &v6[*(v7 + 44)]);
  sub_279C(&qword_458E8, &qword_345C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_345A0;
  v9 = sub_32EF4();
  *(inited + 32) = v9;
  v10 = sub_32F04();
  *(inited + 33) = v10;
  v11 = sub_32F14();
  sub_32F14();
  if (sub_32F14() != v9)
  {
    v11 = sub_32F14();
  }

  sub_32F14();
  if (sub_32F14() != v10)
  {
    v11 = sub_32F14();
  }

  sub_32CC4();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_130EC(v6, a1);
  result = sub_279C(&qword_458F0, &qword_345C8);
  v21 = a1 + *(result + 36);
  *v21 = v11;
  *(v21 + 8) = v13;
  *(v21 + 16) = v15;
  *(v21 + 24) = v17;
  *(v21 + 32) = v19;
  *(v21 + 40) = 0;
  return result;
}

uint64_t sub_24444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = sub_279C(&qword_459A0, &qword_346F0) - 8;
  v4 = __chkstk_darwin(v61);
  v72 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v54 - v6;
  v8 = type metadata accessor for FavoredServer(0);
  v9 = (a1 + v8[5]);
  v10 = v9[1];
  v74 = *v9;
  v75 = v10;
  sub_1288C();

  v11 = sub_32FE4();
  v63 = v12;
  v64 = v11;
  v60 = v13;
  v65 = v14;
  KeyPath = swift_getKeyPath();
  sub_32E64();
  v15 = sub_32FD4();
  v58 = v16;
  v59 = v15;
  v57 = v17;
  v70 = v18;
  v71 = swift_getKeyPath();
  v19 = (a1 + v8[6]);
  v20 = v19[1];
  v74 = *v19;
  v75 = v20;

  v21 = sub_32FE4();
  v66 = v22;
  v67 = v21;
  v56 = v23;
  v69 = v24;
  v68 = swift_getKeyPath();
  v25 = (a1 + v8[7]);
  v26 = v25[1];
  v74 = *v25;
  v75 = v26;

  v27 = sub_32FE4();
  v29 = v28;
  LOBYTE(a1) = v30;
  v54 = v31;
  v32 = &v7[*(sub_279C(&qword_459A8, &qword_34728) + 36)];
  v33 = *(sub_279C(&qword_459B0, &qword_34730) + 28);
  v34 = enum case for Text.Case.uppercase(_:);
  v35 = sub_32FA4();
  v36 = *(v35 - 8);
  (*(v36 + 104))(v32 + v33, v34, v35);
  (*(v36 + 56))(v32 + v33, 0, 1, v35);
  *v32 = swift_getKeyPath();
  *v7 = v27;
  *(v7 + 1) = v29;
  v7[16] = a1 & 1;
  *(v7 + 3) = v54;
  LODWORD(v36) = sub_32ED4();
  *&v7[*(sub_279C(&qword_459B8, &qword_34768) + 36)] = v36;
  v37 = swift_getKeyPath();
  v38 = *(v61 + 44);
  v55 = v7;
  v39 = &v7[v38];
  *v39 = v37;
  v39[8] = 1;
  LOBYTE(v33) = v60 & 1;
  LOBYTE(v74) = v60 & 1;
  LOBYTE(v27) = v57 & 1;
  v73 = v57 & 1;
  v40 = v72;
  sub_33C4(v7, v72, &qword_459A0, &qword_346F0);
  v42 = v63;
  v41 = v64;
  *a2 = v64;
  *(a2 + 8) = v42;
  *(a2 + 16) = v33;
  v43 = KeyPath;
  *(a2 + 24) = v65;
  *(a2 + 32) = v43;
  *(a2 + 40) = 1;
  v45 = v58;
  v44 = v59;
  *(a2 + 48) = v59;
  *(a2 + 56) = v45;
  *(a2 + 64) = v27;
  v46 = v71;
  *(a2 + 72) = v70;
  *(a2 + 80) = v46;
  *(a2 + 88) = 1;
  v47 = v66;
  *(a2 + 96) = v67;
  *(a2 + 104) = v47;
  LODWORD(v61) = v56 & 1;
  *(a2 + 112) = v56 & 1;
  v48 = v68;
  *(a2 + 120) = v69;
  *(a2 + 128) = v48;
  *(a2 + 136) = 1;
  *(a2 + 144) = 0;
  *(a2 + 152) = 1;
  v49 = sub_279C(&qword_459C0, &qword_34770);
  sub_33C4(v40, a2 + *(v49 + 96), &qword_459A0, &qword_346F0);
  sub_12948(v41, v42, v33);

  v50 = v44;
  sub_12948(v44, v45, v27);

  v52 = v66;
  v51 = v67;
  LOBYTE(v44) = v61;
  sub_12948(v67, v66, v61);

  sub_13774(v55);
  sub_13774(v72);
  sub_128E0(v51, v52, v44);

  sub_128E0(v50, v45, v73);

  sub_128E0(v64, v63, v74);
}

uint64_t sub_24914(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FavoredServer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_249DC()
{
  result = qword_46240;
  if (!qword_46240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_46240);
  }

  return result;
}

uint64_t sub_24A4C(uint64_t a1)
{
  v2 = sub_24D10();

  return static PreviewProvider._previews.getter(a1, v2);
}

uint64_t sub_24A98(uint64_t a1)
{
  v2 = sub_24D10();

  return static PreviewProvider._platform.getter(a1, v2);
}

uint64_t sub_24AF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FavoredServer(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24B78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FavoredServer(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for FavoredServerItemView(uint64_t a1)
{
  result = qword_47970;
  if (!qword_47970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24C34(uint64_t a1)
{
  result = type metadata accessor for FavoredServer(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24CB8()
{
  result = qword_46170;
  if (!qword_46170)
  {
    type metadata accessor for FavoredServerItemView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_46170);
  }

  return result;
}

unint64_t sub_24D10()
{
  result = qword_462C8;
  if (!qword_462C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_462C8);
  }

  return result;
}

uint64_t sub_24D8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  return result;
}

uint64_t sub_24DD8(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 120);

  return v2(v3);
}

uint64_t (*sub_24E40(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_32C44();
  return sub_28840;
}

uint64_t sub_24F0C(uint64_t a1)
{
  v2 = sub_279C(&qword_462D8, &qword_359C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_279C(&qword_462D0, &unk_355E0);
  sub_32C34();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_25044(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_279C(&qword_462D8, &qword_359C0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC14Content_Caches23MockContentCacheService__performanceResultsInProgress[0];
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_279C(&qword_462D0, &unk_355E0);
  sub_32C24();
  swift_endAccess();
  return sub_28844;
}

uint64_t sub_251B4()
{
  v1 = sub_279C(&qword_462D8, &qword_359C0);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v8 - v4;
  (*(*v0 + 136))(v3);
  sub_28454(&qword_462E0, &qword_462D8, &qword_359C0);
  v6 = sub_32C84();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t sub_2532C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_32C54();

  return v1;
}

uint64_t sub_253A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

uint64_t sub_253F4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(**a2 + 176);
  sub_287F4(*a1, v3, v4);
  return v5(v2, v3, v4);
}

uint64_t sub_2546C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_32C64();
}

uint64_t (*sub_254F0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_32C44();
  return sub_28840;
}

uint64_t sub_255C0(uint64_t a1)
{
  v2 = sub_279C(&qword_462F8, &qword_35648);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_279C(&qword_462F0, &qword_35640);
  sub_32C34();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_256F8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_279C(&qword_462F8, &qword_35648);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC14Content_Caches23MockContentCacheService__contentCache[0];
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_279C(&qword_462F0, &qword_35640);
  sub_32C24();
  swift_endAccess();
  return sub_28844;
}

uint64_t sub_25868()
{
  v1 = sub_279C(&qword_462F8, &qword_35648);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v8 - v4;
  (*(*v0 + 192))(v3);
  sub_28454(&qword_46300, &qword_462F8, &qword_35648);
  v6 = sub_32C84();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t sub_259BC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_32C54();

  return v1;
}

uint64_t sub_25A30@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_25AC8(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_32C64();
}

uint64_t (*sub_25B38(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_32C44();
  return sub_25BDC;
}

uint64_t sub_25BFC(uint64_t a1)
{
  v2 = sub_279C(&qword_46310, &qword_356A0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_279C(&qword_46308, &qword_35698);
  sub_32C34();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_25D34(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_279C(&qword_46310, &qword_356A0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC14Content_Caches23MockContentCacheService__isFetchingContentCaches[0];
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_279C(&qword_46308, &qword_35698);
  sub_32C24();
  swift_endAccess();
  return sub_25EA4;
}

uint64_t sub_25EA8()
{
  v1 = sub_279C(&qword_46310, &qword_356A0);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v8 - v4;
  (*(*v0 + 248))(v3);
  sub_28454(&qword_46318, &qword_46310, &qword_356A0);
  v6 = sub_32C84();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t sub_2603C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_32C54();

  return v3;
}

uint64_t sub_260A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 280))();
  *a2 = result;
  return result;
}

uint64_t sub_260FC(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 288);

  return v2(v3);
}

uint64_t sub_2616C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_32C64();
}

uint64_t (*sub_261D8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_32C44();
  return sub_28840;
}

void sub_2627C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_2630C(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  sub_279C(a2, a3);
  sub_32C24();
  return swift_endAccess();
}

uint64_t sub_26384(uint64_t a1)
{
  v2 = sub_279C(&qword_46330, &unk_35700);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_279C(&qword_46328, &qword_356F8);
  sub_32C34();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_264BC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_279C(&qword_46330, &unk_35700);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC14Content_Caches23MockContentCacheService__performanceResultsByHostPort;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_279C(&qword_46328, &qword_356F8);
  sub_32C24();
  swift_endAccess();
  return sub_28844;
}

void sub_2662C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_32C34();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_32C34();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_26794()
{
  v1 = sub_279C(&qword_46330, &unk_35700);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v8 - v4;
  (*(*v0 + 304))(v3);
  sub_28454(&qword_46338, &qword_46330, &unk_35700);
  v6 = sub_32C84();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t sub_268CC()
{
  v0 = swift_allocObject();
  sub_26904();
  return v0;
}

uint64_t sub_26904()
{
  v1 = sub_32AC4();
  __chkstk_darwin(v1 - 8);
  v41 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for CachingServer(0);
  v42 = *(v3 - 8);
  v43 = v3 - 8;
  v44 = v42;
  __chkstk_darwin(v3 - 8);
  v40 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_279C(&qword_46328, &qword_356F8);
  v38 = *(v5 - 8);
  v39 = v5;
  __chkstk_darwin(v5);
  v37 = &v36 - v6;
  v36 = sub_279C(&qword_46308, &qword_35698);
  v7 = *(v36 - 8);
  __chkstk_darwin(v36);
  v9 = &v36 - v8;
  v10 = sub_279C(&qword_462F0, &qword_35640);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - v12;
  v14 = sub_279C(&qword_462D0, &unk_355E0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v36 - v16;
  v18 = OBJC_IVAR____TtC14Content_Caches23MockContentCacheService__performanceResultsInProgress;
  v45 = &_swiftEmptySetSingleton;
  sub_279C(&qword_46080, &qword_35590);
  sub_32C14();
  (*(v15 + 32))(v0 + v18, v17, v14);
  v19 = OBJC_IVAR____TtC14Content_Caches23MockContentCacheService__contentCache;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  sub_279C(&qword_462E8, &qword_355F0);
  sub_32C14();
  (*(v11 + 32))(v0 + v19, v13, v10);
  v20 = OBJC_IVAR____TtC14Content_Caches23MockContentCacheService__isFetchingContentCaches;
  LOBYTE(v45) = 0;
  sub_32C14();
  (*(v7 + 32))(v0 + v20, v9, v36);
  v21 = OBJC_IVAR____TtC14Content_Caches23MockContentCacheService__performanceResultsByHostPort;
  v45 = sub_28280(_swiftEmptyArrayStorage);
  sub_279C(&qword_46320, &qword_356A8);
  v22 = v37;
  sub_32C14();
  (*(v38 + 32))(v0 + v21, v22, v39);
  v23 = v41;
  sub_32AB4();
  v24 = v40;
  sub_1759C(v23, 0xD000000000000013, 0x800000000003B2F0, 0, 1, 0, 0, 1, v40);
  sub_279C(&qword_46088, &qword_35138);
  v25 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_33E20;
  v27 = v26 + v25;
  v28 = v24;
  sub_8F98(v24, v27, type metadata accessor for CachingServer);
  nullsub_1();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  swift_getKeyPath();
  swift_getKeyPath();
  v45 = v30;
  v46 = v32;
  v47 = v34;

  sub_32C64();
  sub_1B4D4(v28);
  return v0;
}

uint64_t sub_26E74(uint64_t a1, uint64_t a2)
{
  v5 = sub_32A84();
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v17[-v9];
  v11 = sub_279C(&qword_451B8, &qword_35710);
  __chkstk_darwin(v11 - 8);
  v13 = &v17[-v12];

  sub_32A44();
  sub_32A64();
  sub_A040(v10, v8, 1024000, 0, v13, 60.02);
  v14 = type metadata accessor for PerformanceResult(0);
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  v15 = (*(*v2 + 296))(v17);
  sub_27054(v13, a1, a2);
  return v15(v17, 0);
}

uint64_t sub_27054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_279C(&qword_451B8, &qword_35710);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for PerformanceResult(0);
  __chkstk_darwin(v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_28728(a1);
    sub_277AC(a2, a3, v9);

    return sub_28728(v9);
  }

  else
  {
    sub_EB0C(a1, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_27E40(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

unint64_t sub_271EC()
{
  v0 = sub_2F8C(_swiftEmptyArrayStorage);
  v1 = sub_28280(_swiftEmptyArrayStorage);

  return sub_28E68(v0, v1);
}

uint64_t sub_2723C()
{
  v1 = OBJC_IVAR____TtC14Content_Caches23MockContentCacheService__performanceResultsInProgress[0];
  v2 = sub_279C(&qword_462D0, &unk_355E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14Content_Caches23MockContentCacheService__contentCache[0];
  v4 = sub_279C(&qword_462F0, &qword_35640);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC14Content_Caches23MockContentCacheService__isFetchingContentCaches[0];
  v6 = sub_279C(&qword_46308, &qword_35698);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC14Content_Caches23MockContentCacheService__performanceResultsByHostPort;
  v8 = sub_279C(&qword_46328, &qword_356F8);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t sub_2738C()
{
  v1 = OBJC_IVAR____TtC14Content_Caches23MockContentCacheService__performanceResultsInProgress[0];
  v2 = sub_279C(&qword_462D0, &unk_355E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14Content_Caches23MockContentCacheService__contentCache[0];
  v4 = sub_279C(&qword_462F0, &qword_35640);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC14Content_Caches23MockContentCacheService__isFetchingContentCaches[0];
  v6 = sub_279C(&qword_46308, &qword_35698);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC14Content_Caches23MockContentCacheService__performanceResultsByHostPort;
  v8 = sub_279C(&qword_46328, &qword_356F8);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v9, v10);
}

uint64_t sub_277AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_26C8(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2803C();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for PerformanceResult(0);
    v19 = *(v12 - 8);
    sub_EB0C(v11 + *(v19 + 72) * v8, a3);
    sub_27C54(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for PerformanceResult(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_27904(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for PerformanceResult(0);
  v39 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_279C(&qword_46510, &qword_35768);
  v40 = v4;
  result = sub_335E4();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
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
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_EB0C(v28, v41);
      }

      else
      {
        sub_8F98(v28, v41, type metadata accessor for PerformanceResult);
      }

      sub_336C4();
      sub_332E4();
      result = sub_336E4();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_EB0C(v41, *(v9 + 56) + v27 * v17);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

unint64_t sub_27C54(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_33504() + 1) & ~v5;
    while (1)
    {
      sub_336C4();

      sub_332E4();
      v9 = sub_336E4();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for PerformanceResult(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_27E40(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_26C8(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_2803C();
      goto LABEL_7;
    }

    sub_27904(v15, a4 & 1);
    v22 = sub_26C8(a2, a3);
    if ((v16 & 1) == (v23 & 1))
    {
      v12 = v22;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_33664();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for PerformanceResult(0) - 8) + 72) * v12;

    return sub_28790(a1, v20);
  }

LABEL_13:
  sub_27FA4(v12, a2, a3, a1, v18);
}

uint64_t sub_27FA4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for PerformanceResult(0);
  result = sub_EB0C(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_2803C()
{
  v1 = v0;
  v2 = type metadata accessor for PerformanceResult(0);
  v31 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_279C(&qword_46510, &qword_35768);
  v4 = *v0;
  v5 = sub_335D4();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_8F98(*(v4 + 56) + v26, v30, type metadata accessor for PerformanceResult);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_EB0C(v25, *(v27 + 56) + v26);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
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

unint64_t sub_28280(uint64_t a1)
{
  v2 = sub_279C(&qword_46518, &qword_35770);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_279C(&qword_46510, &qword_35768);
    v7 = sub_335F4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_33C4(v9, v5, &qword_46518, &qword_35770);
      v11 = *v5;
      v12 = v5[1];
      result = sub_26C8(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for PerformanceResult(0);
      result = sub_EB0C(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_28454(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_8BD0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for MockContentCacheService(uint64_t a1)
{
  result = qword_479F0;
  if (!qword_479F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_284FC(uint64_t a1)
{
  sub_286D4(319, &qword_46368, &qword_46080, &qword_35590);
  if (v1 <= 0x3F)
  {
    sub_286D4(319, &qword_46370, &qword_462E8, &qword_355F0);
    if (v2 <= 0x3F)
    {
      sub_28684();
      if (v3 <= 0x3F)
      {
        sub_286D4(319, &unk_46380, &qword_46320, &qword_356A8);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_28684()
{
  if (!qword_46378)
  {
    v0 = sub_32C74();
    if (!v1)
    {
      atomic_store(v0, &qword_46378);
    }
  }
}

void sub_286D4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_8BD0(a3, a4);
    v5 = sub_32C74();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_28728(uint64_t a1)
{
  v2 = sub_279C(&qword_451B8, &qword_35710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_28790(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PerformanceResult(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_287F4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_28854()
{
  v0 = sub_32BA4();
  __chkstk_darwin(v0 - 8);
  sub_32B94();
  sub_23A50();
  return sub_32B74();
}

uint64_t sub_288FC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_32974();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_289C8, 0, 0);
}

uint64_t sub_289C8()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  v6 = v5[3];
  v7 = v5[4];
  sub_3294(v5, v6);
  v8 = (*(v7 + 72))(v6, v7);
  sub_28AEC(v8, v9, v10);

  (*(v4 + 16))(v1, v2, v3);
  sub_32B84();
  (*(v4 + 8))(v2, v3);

  v11 = v0[1];

  return v11();
}

uint64_t sub_28AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_self();
  isa = sub_331D4().super.isa;
  v22[0] = 0;
  v7 = [v5 dataWithJSONObject:isa options:0 error:v22];

  v8 = v22[0];
  if (v7)
  {
    v9 = sub_32994();
    v11 = v10;

    v12 = sub_29DE0(v9, v11);
    if (!v13)
    {
      v20 = v9;
      v21 = v11;
      sub_29F8C(v9, v11);
      sub_279C(&qword_46520, &qword_35798);
      if (swift_dynamicCast())
      {
        sub_3484(v18, v22);
        sub_3294(v22, v23);
        if (sub_33614())
        {
          sub_EC48(v9, v11);
          sub_3294(v22, v23);
          sub_33604();
          v14 = *(&v18[0] + 1);
          v15 = *&v18[0];
          sub_3364(v22);
LABEL_10:
          sub_325EC(a2, a3, v15, v14);
        }

        sub_3364(v22);
      }

      else
      {
        v19 = 0;
        memset(v18, 0, sizeof(v18));
        sub_93EC(v18, &qword_46528, &qword_357A0);
      }

      v12 = sub_29A1C(v9, v11);
    }

    v15 = v12;
    v14 = v13;
    sub_EC48(v9, v11);
    goto LABEL_10;
  }

  v17 = v8;
  sub_32924();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_28D84(uint64_t a1, uint64_t a2)
{
  v2 = sub_32BA4();
  __chkstk_darwin(v2 - 8);
  sub_32B94();
  return sub_32B74();
}

unint64_t sub_28E68(uint64_t a1, uint64_t a2)
{
  v108 = a1;
  v3 = sub_32A84();
  v105 = *(v3 - 8);
  __chkstk_darwin(v3);
  v104 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_279C(&qword_46530, &qword_357A8);
  v5 = __chkstk_darwin(v121);
  v124 = (&v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v120 = &v99 - v7;
  v8 = sub_32BD4();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v99 - v14;
  __chkstk_darwin(v13);
  v17 = &v99 - v16;
  v18 = sub_2167C();
  v19 = *(v9 + 16);
  v110 = v18;
  v111 = v9 + 16;
  v109 = v19;
  (v19)(v17);

  v20 = sub_32BB4();
  v21 = sub_33434();
  v22 = os_log_type_enabled(v20, v21);
  v107 = v12;
  v106 = v3;
  if (v22)
  {
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = *(a2 + 16);

    _os_log_impl(&dword_0, v20, v21, "Creating shareable result with %ld performance results", v23, 0xCu);
  }

  else
  {
  }

  v24 = *(v9 + 8);
  v113 = v9 + 8;
  v112 = v24;
  v24(v17, v8);
  v25 = sub_2F8C(_swiftEmptyArrayStorage);
  v26 = sub_1623C();
  v28 = *v26;
  v27 = v26[1];
  v103 = v28;
  v29 = *(a2 + 16);
  if (v29)
  {
    v99 = v25;
    v101 = v15;
    v102 = v8;
    *&v130 = _swiftEmptyArrayStorage;
    v100 = v27;

    sub_29B10(0, v29, 0);
    v30 = v130;
    v31 = a2 + 64;
    v32 = sub_334F4();
    v116 = *(a2 + 36);
    result = sub_279C(&qword_451A0, qword_33ED0);
    v119 = result;
    v34 = 0;
    v35 = *(a2 + 32);
    v114 = a2 + 72;
    v118 = a2;
    v115 = v29;
    v117 = a2 + 64;
    v36 = v124;
    while ((v32 & 0x8000000000000000) == 0 && v32 < 1 << v35)
    {
      v40 = v32 >> 6;
      if ((*(v31 + 8 * (v32 >> 6)) & (1 << v32)) == 0)
      {
        goto LABEL_31;
      }

      v122 = v34;
      v123 = 1 << v32;
      v41 = v121;
      v42 = *(v121 + 48);
      v43 = *(a2 + 56);
      v44 = (*(a2 + 48) + 16 * v32);
      v46 = *v44;
      v45 = v44[1];
      v47 = type metadata accessor for PerformanceResult(0);
      v48 = v120;
      sub_2A140(v43 + *(*(v47 - 8) + 72) * v32, &v120[v42]);
      *v36 = v46;
      v36[1] = v45;
      sub_EB0C(&v48[v42], v36 + *(v41 + 48));
      v127 = v46;
      v128 = v45;
      swift_bridgeObjectRetain_n();
      v129 = sub_9964();
      v49 = sub_335F4();

      v50 = v127;
      v51 = v128;
      v52 = v129;

      result = sub_26C8(v50, v51);
      if (v53)
      {
        goto LABEL_32;
      }

      v49[(result >> 6) + 8] |= 1 << result;
      v54 = (v49[6] + 16 * result);
      *v54 = v50;
      v54[1] = v51;
      *(v49[7] + 8 * result) = v52;
      v55 = v49[2];
      v56 = __OFADD__(v55, 1);
      v57 = v55 + 1;
      if (v56)
      {
        goto LABEL_33;
      }

      v49[2] = v57;

      sub_93EC(&v127, &qword_45180, &qword_33E80);
      result = sub_93EC(v124, &qword_46530, &qword_357A8);
      *&v130 = v30;
      v59 = v30[2];
      v58 = v30[3];
      if (v59 >= v58 >> 1)
      {
        result = sub_29B10((v58 > 1), v59 + 1, 1);
        v30 = v130;
      }

      v30[2] = v59 + 1;
      v30[v59 + 4] = v49;
      a2 = v118;
      v35 = *(v118 + 32);
      v37 = 1 << v35;
      if (v32 >= 1 << v35)
      {
        goto LABEL_34;
      }

      v31 = v117;
      v60 = *(v117 + 8 * v40);
      if ((v60 & v123) == 0)
      {
        goto LABEL_35;
      }

      if (v116 != *(v118 + 36))
      {
        goto LABEL_36;
      }

      v61 = v60 & (-2 << (v32 & 0x3F));
      if (v61)
      {
        v37 = __clz(__rbit64(v61)) | v32 & 0x7FFFFFFFFFFFFFC0;
        v38 = v115;
        v39 = v122;
      }

      else
      {
        v62 = v40 << 6;
        v63 = v40 + 1;
        v64 = (v114 + 8 * v40);
        v38 = v115;
        v39 = v122;
        while (v63 < (v37 + 63) >> 6)
        {
          v66 = *v64++;
          v65 = v66;
          v62 += 64;
          ++v63;
          if (v66)
          {
            v37 = __clz(__rbit64(v65)) + v62;
            break;
          }
        }
      }

      v34 = v39 + 1;
      v32 = v37;
      if (v34 == v38)
      {
        v8 = v102;
        v15 = v101;
        v67 = v100;
        v25 = v99;
        goto LABEL_25;
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
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
    v67 = v27;

    v30 = _swiftEmptyArrayStorage;
LABEL_25:
    v131 = sub_279C(&qword_46538, &unk_357B0);
    *&v130 = v30;
    sub_3284(&v130, v126);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v125 = v25;
    sub_A4AC(v126, v103, v67, isUniquelyReferenced_nonNull_native);

    v69 = v125;
    v70 = v108;

    v71 = swift_isUniquelyReferenced_nonNull_native();
    *&v130 = v69;
    sub_2A1A4(v70, sub_29AC4, 0, v71, &v130);

    nullsub_1();
    isa = sub_331D4().super.isa;

    v73 = sub_1B14(isa);

    *&v130 = v73;
    sub_279C(&qword_45170, &unk_33E70);
    swift_dynamicCast();
    v74 = *&v126[0];
    v109(v15, v110, v8);

    v75 = sub_32BB4();
    v76 = sub_33434();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *&v130 = v78;
      *v77 = 136315138;
      v79 = sub_331F4();
      v81 = sub_D148(v79, v80, &v130);

      *(v77 + 4) = v81;
      _os_log_impl(&dword_0, v75, v76, "Created shareable result %s", v77, 0xCu);
      sub_3364(v78);
    }

    v112(v15, v8);
    nullsub_1();
    v82 = sub_1790();
    v84 = v83;
    nullsub_1();
    v85 = sub_1A58(v108);
    v87 = v86;

    nullsub_1();
    v88 = sub_1810();
    v90 = v89;
    *&v130 = 0;
    *(&v130 + 1) = 0xE000000000000000;
    sub_33584(35);

    *&v130 = 0xD000000000000012;
    *(&v130 + 1) = 0x800000000003B620;
    v132._countAndFlagsBits = v82;
    v132._object = v84;
    sub_33304(v132);

    v133._countAndFlagsBits = 544108320;
    v133._object = 0xE400000000000000;
    sub_33304(v133);
    v134._countAndFlagsBits = v88;
    v134._object = v90;
    sub_33304(v134);

    v135._countAndFlagsBits = 58;
    v135._object = 0xE100000000000000;
    sub_33304(v135);
    v136._countAndFlagsBits = v85;
    v136._object = v87;
    sub_33304(v136);

    v137._countAndFlagsBits = 544497952;
    v137._object = 0xE400000000000000;
    sub_33304(v137);
    v91 = v104;
    sub_32A74();
    sub_2A4B4();
    v92 = v106;
    v138._countAndFlagsBits = sub_33624();
    sub_33304(v138);

    (*(v105 + 8))(v91, v92);
    v93 = v130;
    v94 = v107;
    v109(v107, v110, v8);

    v95 = sub_32BB4();
    v96 = sub_33434();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *&v130 = v98;
      *v97 = 136315138;
      *(v97 + 4) = sub_D148(v93, *(&v93 + 1), &v130);
      _os_log_impl(&dword_0, v95, v96, "With filename %s", v97, 0xCu);
      sub_3364(v98);
    }

    v112(v94, v8);
    return v74;
  }

  return result;
}

uint64_t sub_29A1C(uint64_t a1, unint64_t a2)
{
  sub_29F8C(a1, a2);
  sub_29C64(a1, a2);
  v4 = sub_332C4();

  return v4;
}

uint64_t sub_29A88@<X0>(uint64_t *a3@<X8>)
{
  result = sub_332C4();
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_29AC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_2740((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

void *sub_29B10(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29B30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_29B30(void *result, int64_t a2, char a3, void *a4)
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
    sub_279C(&qword_46560, &qword_35890);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_279C(&qword_46568, &unk_35898);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_29C64(uint64_t a1, unint64_t a2)
{
  v4 = sub_329A4();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_EC48(a1, a2);
      return _swiftEmptyArrayStorage;
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
      v13 = sub_D588(v10, 0);
      v14 = sub_32984();
      sub_EC48(a1, a2);
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

uint64_t sub_29DE0(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_332C4();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return sub_332C4();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_328F4();
  if (a1)
  {
    a1 = sub_32914();
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
      if (!sub_328F4() || !__OFSUB__(v5, sub_32914()))
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
  sub_32904();
  return sub_332C4();
}

uint64_t sub_29F8C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_29FE0@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2740(*(v3 + 56) + 32 * v13, v21);
    *&v22 = v16;
    *(&v22 + 1) = v15;
    sub_3284(v21, &v23);

    v18 = *(&v22 + 1);
    v19 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v23;
      v21[2] = v24;
      v20(v21);
      return sub_93EC(v21, &qword_46558, &qword_35888);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2A140(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PerformanceResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2A1A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_29FE0(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  sub_3284(v44, v42);
  v14 = *a5;
  result = sub_26C8(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_A1F4(v20, a4 & 1);
    result = sub_26C8(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_33664();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_A668();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    sub_3364(v25);
    sub_3284(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = sub_3284(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_29FE0(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        sub_3284(v44, v42);
        v32 = *a5;
        result = sub_26C8(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_A1F4(v36, 1);
          result = sub_26C8(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 32 * v30);
          sub_3364(v31);
          sub_3284(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = sub_3284(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        sub_29FE0(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    sub_2A654(v45);
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_2A4B4()
{
  result = qword_46540;
  if (!qword_46540)
  {
    sub_32A84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_46540);
  }

  return result;
}

__n128 sub_2A528(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2A53C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2A584(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2A5F0()
{
  result = qword_46548;
  if (!qword_46548)
  {
    sub_8BD0(&qword_46550, &qword_35880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_46548);
  }

  return result;
}

id sub_2A6A0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_2A6D8()
{
  type metadata accessor for FindClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_47D10 = result;
  return result;
}

uint64_t *sub_2A72C()
{
  if (qword_47A80 != -1)
  {
    swift_once();
  }

  return &qword_47D10;
}

id sub_2A77C()
{
  if (qword_47A80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_47D10;

  return v0;
}

void sub_2A800(uint64_t a1)
{
  if (qword_47A80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_47D10;
  qword_47D10 = a1;
}

uint64_t (*sub_2A880(uint64_t a1))(uint64_t a1)
{
  if (qword_47A80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2A92C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_32C54();

  return v1;
}

uint64_t sub_2A9A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

uint64_t sub_2A9F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_287F4(v2, v3, v4);

  return sub_32C64();
}

uint64_t sub_2AA88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_32C64();
}

uint64_t sub_2AB28(uint64_t a1)
{
  v2 = sub_279C(&qword_462F8, &qword_35648);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_279C(&qword_462F0, &qword_35640);
  sub_32C34();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_2AC60()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_32C54();

  return v1;
}

uint64_t sub_2ACD4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2AD24(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_32C64();
}

uint64_t sub_2AD98(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_32C64();
}

uint64_t sub_2AE24(uint64_t a1)
{
  v2 = sub_279C(&qword_46310, &qword_356A0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_279C(&qword_46308, &qword_35698);
  sub_32C34();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_2AF70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result;
  return result;
}

uint64_t sub_2AFD0(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_32C64();
}

uint64_t sub_2B05C(uint64_t a1)
{
  v2 = sub_279C(&qword_46330, &unk_35700);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_279C(&qword_46328, &qword_356F8);
  sub_32C34();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t variable initialization expression of AssetCacheLocatorService.workQueue()
{
  v7 = sub_33464();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_33444();
  __chkstk_darwin(v3);
  v4 = sub_331C4();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_1507C();
  sub_331B4();
  v8 = _swiftEmptyArrayStorage;
  sub_3070C(&qword_46598, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_279C(&qword_465A0, &unk_359B0);
  sub_8F50(&qword_465A8, &qword_465A0, &unk_359B0, &protocol conformance descriptor for [A]);
  sub_334E4();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  return sub_33494();
}

id variable initialization expression of AssetCacheLocatorService.defaults()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_33234();
  v2 = [v0 initWithSuiteName:v1];

  return v2;
}

uint64_t sub_2B49C()
{
  v0 = swift_allocObject();
  sub_2B4D4();
  return v0;
}

uint64_t sub_2B4D4()
{
  v1 = v0;
  v2 = sub_33464();
  v45 = *(v2 - 8);
  v46 = v2;
  __chkstk_darwin(v2);
  v44 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_33444();
  __chkstk_darwin(v43);
  v42 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_331C4();
  __chkstk_darwin(v5 - 8);
  v41 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_279C(&qword_462D0, &unk_355E0);
  v39 = *(v7 - 8);
  v40 = v7;
  __chkstk_darwin(v7);
  v38 = &v36 - v8;
  v37 = sub_279C(&qword_46328, &qword_356F8);
  v9 = *(v37 - 8);
  __chkstk_darwin(v37);
  v11 = &v36 - v10;
  v12 = sub_279C(&qword_46308, &qword_35698);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v36 - v14;
  v16 = sub_279C(&qword_462F0, &qword_35640);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v36 - v18;
  v20 = OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService__contentCache[0];
  v47 = 0;
  v48 = 0;
  v49 = 0;
  sub_279C(&qword_462E8, &qword_355F0);
  sub_32C14();
  (*(v17 + 32))(v1 + v20, v19, v16);
  v21 = OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService__isFetchingContentCaches[0];
  LOBYTE(v47) = 0;
  sub_32C14();
  (*(v13 + 32))(v1 + v21, v15, v12);
  v22 = OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService__performanceResultsByHostPort;
  v47 = sub_28280(_swiftEmptyArrayStorage);
  sub_279C(&qword_46320, &qword_356A8);
  sub_32C14();
  (*(v9 + 32))(v1 + v22, v11, v37);
  v23 = OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService__hostPortsInProgress;
  v47 = &_swiftEmptySetSingleton;
  sub_279C(&qword_46080, &qword_35590);
  v24 = v38;
  sub_32C14();
  (*(v39 + 32))(v1 + v23, v24, v40);
  *(v1 + OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService_reporter) = 0;
  v25 = OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService_workQueue;
  sub_1507C();
  sub_331B4();
  v47 = _swiftEmptyArrayStorage;
  sub_3070C(&qword_46598, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_279C(&qword_465A0, &unk_359B0);
  sub_8F50(&qword_465A8, &qword_465A0, &unk_359B0, &protocol conformance descriptor for [A]);
  sub_334E4();
  (*(v45 + 104))(v44, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v46);
  *(v1 + v25) = sub_33494();
  v26 = OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService_downloader;
  type metadata accessor for DownloadTester();
  *(v1 + v26) = sub_CBD8();
  v27 = OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService_defaults;
  v28 = objc_allocWithZone(NSUserDefaults);
  v29 = sub_33234();
  v30 = [v28 initWithSuiteName:v29];

  *(v1 + v27) = v30;
  *(v1 + OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService_rawResults) = 0;
  v31 = [objc_allocWithZone(AssetCacheServicesReporter) initWithDelegate:v1 delegateQueue:*(v1 + OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService_workQueue)];
  v32 = OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService_reporter;
  v33 = *(v1 + OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService_reporter);
  *(v1 + OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService_reporter) = v31;

  v34 = *(v1 + v32);
  if (v34)
  {
    [v34 start];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v47) = 1;

  sub_32C64();
  return v1;
}

uint64_t sub_2BBB4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_279C(&qword_46800, &qword_35A28);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_32BD4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2167C();
  (*(v10 + 16))(v12, v13, v9);

  v14 = sub_32BB4();
  v15 = sub_33434();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v23 = v3;
    v17 = a1;
    v18 = v16;
    v19 = swift_slowAlloc();
    v24 = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_D148(v17, a2, &v24);
    _os_log_impl(&dword_0, v14, v15, "Download Test Requested for %{public}s", v18, 0xCu);
    sub_3364(v19);

    a1 = v17;
    v3 = v23;
  }

  (*(v10 + 8))(v12, v9);
  v20 = sub_333F4();
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = a1;
  v21[5] = a2;
  v21[6] = v3;

  sub_2CFC8(0, 0, v8, &unk_35A38, v21);
}

uint64_t sub_2BE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[17] = a4;
  v7 = sub_32A84();
  v6[20] = v7;
  v6[21] = *(v7 - 8);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = sub_279C(&qword_451B8, &qword_35710);
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v8 = sub_32BD4();
  v6[30] = v8;
  v6[31] = *(v8 - 8);
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();

  return _swift_task_switch(sub_2C034, 0, 0);
}

uint64_t sub_2C034()
{
  v29 = v0;
  v1 = v0[35];
  v2 = v0[30];
  v3 = v0[31];
  v4 = sub_2167C();
  v0[36] = v4;
  v5 = *(v3 + 16);
  v0[37] = v5;
  v0[38] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);

  v6 = sub_32BB4();
  v7 = sub_33434();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[35];
  v10 = v0[30];
  v11 = v0[31];
  if (v8)
  {
    v13 = v0[17];
    v12 = v0[18];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v28 = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_D148(v13, v12, &v28);
    _os_log_impl(&dword_0, v6, v7, "Download Test started for %{public}s", v14, 0xCu);
    sub_3364(v15);
  }

  v16 = *(v11 + 8);
  v16(v9, v10);
  v0[39] = v16;
  v17 = v0[29];
  v18 = v0[19];
  v19 = type metadata accessor for PerformanceResult(0);
  v0[40] = v19;
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v0[41] = v21;
  v0[42] = (v20 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v21(v17, 1, 1, v19);
  sub_32A64();
  v27 = (*(**(v18 + OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService_downloader) + 120) + **(**(v18 + OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService_downloader) + 120));
  v22 = swift_task_alloc();
  v0[43] = v22;
  *v22 = v0;
  v22[1] = sub_2C308;
  v23 = v0[28];
  v24 = v0[17];
  v25 = v0[18];

  return v27(v23, v24, v25);
}

uint64_t sub_2C308()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_2C9A4;
  }

  else
  {
    v2 = sub_2C41C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_2C41C()
{
  v54 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 288);
  v3 = *(v0 + 272);
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v6 = *(v0 + 224);
  (*(v0 + 328))(v6, 0, 1, *(v0 + 320));
  sub_8A84(v6, v5);
  v1(v3, v2, v4);
  v7 = sub_32BB4();
  v8 = sub_33434();
  if (os_log_type_enabled(v7, v8))
  {
    v46 = *(v0 + 272);
    v49 = *(v0 + 312);
    v9 = *(v0 + 240);
    v10 = *(v0 + 232);
    v11 = *(v0 + 216);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v53 = v13;
    *v12 = 136446210;
    swift_beginAccess();
    sub_33C4(v10, v11, &qword_451B8, &qword_35710);
    v14 = sub_33294();
    v16 = sub_D148(v14, v15, &v53);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_0, v7, v8, "PerformanceResult : %{public}s", v12, 0xCu);
    sub_3364(v13);

    v49(v46, v9);
  }

  else
  {
    v17 = *(v0 + 312);
    v18 = *(v0 + 272);
    v19 = *(v0 + 240);

    v17(v18, v19);
  }

  v47 = *(v0 + 296);
  v20 = *(v0 + 232);
  v43 = *(v0 + 240);
  v44 = *(v0 + 288);
  v41 = *(v0 + 216);
  v42 = *(v0 + 264);
  v21 = *(v0 + 144);
  v22 = *(v0 + 136);
  swift_getKeyPath();
  swift_getKeyPath();
  v23 = sub_32C44();
  sub_2EE20(v22, v21);

  v23(v0 + 16, 0);

  swift_beginAccess();
  sub_33C4(v20, v41, &qword_451B8, &qword_35710);
  swift_getKeyPath();
  swift_getKeyPath();

  v24 = sub_32C44();
  sub_27054(v41, v22, v21);
  v24(v0 + 48, 0);

  v47(v42, v44, v43);

  v25 = sub_32BB4();
  v26 = sub_33434();

  v27 = os_log_type_enabled(v25, v26);
  v28 = *(v0 + 312);
  v52 = *(v0 + 264);
  v29 = *(v0 + 240);
  v30 = *(v0 + 232);
  v31 = *(v0 + 200);
  v33 = *(v0 + 160);
  v32 = *(v0 + 168);
  if (v27)
  {
    v48 = *(v0 + 312);
    v51 = *(v0 + 160);
    v35 = *(v0 + 136);
    v34 = *(v0 + 144);
    v50 = *(v0 + 232);
    v36 = swift_slowAlloc();
    v45 = v31;
    v37 = swift_slowAlloc();
    v53 = v37;
    *v36 = 136446210;
    *(v36 + 4) = sub_D148(v35, v34, &v53);
    _os_log_impl(&dword_0, v25, v26, "Download Test completed for %{public}s", v36, 0xCu);
    sub_3364(v37);

    v48(v52, v29);
    (*(v32 + 8))(v45, v51);
    v38 = v50;
  }

  else
  {

    v28(v52, v29);
    (*(v32 + 8))(v31, v33);
    v38 = v30;
  }

  sub_93EC(v38, &qword_451B8, &qword_35710);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_2C9A4()
{
  v60 = v0;
  (*(v0 + 296))(*(v0 + 256), *(v0 + 288), *(v0 + 240));
  swift_errorRetain();
  v1 = sub_32BB4();
  v2 = sub_33424();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 352);
    v54 = *(v0 + 312);
    v4 = *(v0 + 256);
    v5 = *(v0 + 240);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v59 = v7;
    *v6 = 136446210;
    *(v0 + 128) = v3;
    swift_errorRetain();
    sub_279C(&qword_45540, &unk_35120);
    v8 = sub_33294();
    v10 = sub_D148(v8, v9, &v59);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v1, v2, "Performance Error: %{public}s", v6, 0xCu);
    sub_3364(v7);

    v54(v4, v5);
  }

  else
  {
    v11 = *(v0 + 312);
    v12 = *(v0 + 256);
    v13 = *(v0 + 240);

    v11(v12, v13);
  }

  v49 = *(v0 + 328);
  v45 = *(v0 + 352);
  v47 = *(v0 + 320);
  v55 = *(v0 + 232);
  v14 = *(v0 + 216);
  v16 = *(v0 + 192);
  v15 = *(v0 + 200);
  v18 = *(v0 + 176);
  v17 = *(v0 + 184);
  v20 = *(v0 + 160);
  v19 = *(v0 + 168);
  sub_32A64();
  v21 = *(v19 + 16);
  v21(v17, v15, v20);
  v21(v18, v16, v20);
  sub_329C4();
  sub_A040(v17, v18, 0, v45, v14, v22);
  (*(v19 + 8))(v16, v20);
  v49(v14, 0, 1, v47);
  sub_8A84(v14, v55);
  v52 = *(v0 + 296);
  v23 = *(v0 + 232);
  v48 = *(v0 + 240);
  v50 = *(v0 + 288);
  v44 = *(v0 + 216);
  v46 = *(v0 + 264);
  v24 = *(v0 + 144);
  v25 = *(v0 + 136);
  swift_getKeyPath();
  swift_getKeyPath();
  v26 = sub_32C44();
  sub_2EE20(v25, v24);

  v26(v0 + 16, 0);

  swift_beginAccess();
  sub_33C4(v23, v44, &qword_451B8, &qword_35710);
  swift_getKeyPath();
  swift_getKeyPath();

  v27 = sub_32C44();
  sub_27054(v44, v25, v24);
  v27(v0 + 48, 0);

  v52(v46, v50, v48);

  v28 = sub_32BB4();
  v29 = sub_33434();

  v30 = os_log_type_enabled(v28, v29);
  v31 = *(v0 + 312);
  v58 = *(v0 + 264);
  v32 = *(v0 + 240);
  v33 = *(v0 + 232);
  v34 = *(v0 + 200);
  v36 = *(v0 + 160);
  v35 = *(v0 + 168);
  if (v30)
  {
    v53 = *(v0 + 312);
    v57 = *(v0 + 160);
    v38 = *(v0 + 136);
    v37 = *(v0 + 144);
    v56 = *(v0 + 232);
    v39 = swift_slowAlloc();
    v51 = v34;
    v40 = swift_slowAlloc();
    v59 = v40;
    *v39 = 136446210;
    *(v39 + 4) = sub_D148(v38, v37, &v59);
    _os_log_impl(&dword_0, v28, v29, "Download Test completed for %{public}s", v39, 0xCu);
    sub_3364(v40);

    v53(v58, v32);
    (*(v35 + 8))(v51, v57);
    v41 = v56;
  }

  else
  {

    v31(v58, v32);
    (*(v35 + 8))(v34, v36);
    v41 = v33;
  }

  sub_93EC(v41, &qword_451B8, &qword_35710);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_2CFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_279C(&qword_46800, &qword_35A28);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_33C4(a3, v25 - v10, &qword_46800, &qword_35A28);
  v12 = sub_333F4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_93EC(v11, &qword_46800, &qword_35A28);
  }

  else
  {
    sub_333E4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_333D4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_332A4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_93EC(a3, &qword_46800, &qword_35A28);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_93EC(a3, &qword_46800, &qword_35A28);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2D2F0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_2D35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a5;
  v9 = sub_331A4();
  v23 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_331C4();
  v12 = *(v22 - 8);
  __chkstk_darwin(v22);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v5 + OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService_workQueue);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a1;
  v16[4] = a2;
  aBlock[4] = a4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2D2F0;
  aBlock[3] = v20;
  v17 = _Block_copy(aBlock);

  sub_331B4();
  v24 = _swiftEmptyArrayStorage;
  sub_3070C(&qword_46818, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_279C(&qword_46820, &qword_35AD0);
  sub_8F50(&qword_46828, &qword_46820, &qword_35AD0, &protocol conformance descriptor for [A]);
  sub_334E4();
  sub_33484();
  _Block_release(v17);
  (*(v23 + 8))(v11, v9);
  (*(v12 + 8))(v14, v22);
}

uint64_t sub_2D66C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_32BD4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = *(**(result + OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService_downloader) + 136);

    v10(a2, a3);

    swift_getKeyPath();
    swift_getKeyPath();
    v11 = sub_32C44();
    v17 = a2;
    sub_2EE20(a2, a3);

    v11(v18, 0);

    v12 = sub_2167C();
    (*(v6 + 16))(v8, v12, v5);

    v13 = sub_32BB4();
    v14 = sub_33434();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18[0] = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_D148(v17, a3, v18);
      _os_log_impl(&dword_0, v13, v14, "Download Test canceled for %{public}s", v15, 0xCu);
      sub_3364(v16);
    }

    else
    {
    }

    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t AssetCacheLocatorService.deinit()
{
  v1 = OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService__contentCache[0];
  v2 = sub_279C(&qword_462F0, &qword_35640);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService__isFetchingContentCaches[0];
  v4 = sub_279C(&qword_46308, &qword_35698);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService__performanceResultsByHostPort;
  v6 = sub_279C(&qword_46328, &qword_356F8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService__hostPortsInProgress;
  v8 = sub_279C(&qword_462D0, &unk_355E0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  return v0;
}

uint64_t AssetCacheLocatorService.__deallocating_deinit()
{
  AssetCacheLocatorService.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_2DBD4()
{
  v0 = sub_279C(&qword_462D8, &qword_359C0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - v2;
  swift_beginAccess();
  sub_279C(&qword_462D0, &unk_355E0);
  sub_32C24();
  swift_endAccess();
  sub_8F50(&qword_462E0, &qword_462D8, &qword_359C0, &protocol conformance descriptor for Published<A>.Publisher);
  v4 = sub_32C84();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_2DD34()
{
  v1 = sub_279C(&qword_462F8, &qword_35648);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v8 - v4;
  (*(*v0 + 176))(v3);
  sub_8F50(&qword_46300, &qword_462F8, &qword_35648, &protocol conformance descriptor for Published<A>.Publisher);
  v6 = sub_32C84();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t sub_2DE6C()
{
  v1 = sub_279C(&qword_46310, &qword_356A0);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v8 - v4;
  (*(*v0 + 224))(v3);
  sub_8F50(&qword_46318, &qword_46310, &qword_356A0, &protocol conformance descriptor for Published<A>.Publisher);
  v6 = sub_32C84();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t sub_2DFA4()
{
  v1 = sub_279C(&qword_46330, &unk_35700);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v8 - v4;
  (*(*v0 + 272))(v3);
  sub_8F50(&qword_46338, &qword_46330, &unk_35700, &protocol conformance descriptor for Published<A>.Publisher);
  v6 = sub_32C84();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t sub_2E13C()
{
  v1 = sub_279C(&qword_462F8, &qword_35648);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v8 - v4;
  (*(**v0 + 176))(v3);
  sub_8F50(&qword_46300, &qword_462F8, &qword_35648, &protocol conformance descriptor for Published<A>.Publisher);
  v6 = sub_32C84();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t sub_2E278()
{
  v1 = sub_279C(&qword_46310, &qword_356A0);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v8 - v4;
  (*(**v0 + 224))(v3);
  sub_8F50(&qword_46318, &qword_46310, &qword_356A0, &protocol conformance descriptor for Published<A>.Publisher);
  v6 = sub_32C84();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t sub_2E3F8()
{
  v1 = sub_279C(&qword_46330, &unk_35700);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v8 - v4;
  (*(**v0 + 272))(v3);
  sub_8F50(&qword_46338, &qword_46330, &unk_35700, &protocol conformance descriptor for Published<A>.Publisher);
  v6 = sub_32C84();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t sub_2E548()
{
  v0 = sub_279C(&qword_462D8, &qword_359C0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - v2;
  swift_beginAccess();
  sub_279C(&qword_462D0, &unk_355E0);
  sub_32C24();
  swift_endAccess();
  sub_8F50(&qword_462E0, &qword_462D8, &qword_359C0, &protocol conformance descriptor for Published<A>.Publisher);
  v4 = sub_32C84();
  (*(v1 + 8))(v3, v0);
  return v4;
}

unint64_t sub_2E6F4()
{
  v1 = *v0;
  if (*(v1 + OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService_rawResults) && (v2 = , v3 = sub_2E848(v2), v4 = , v3))
  {
    v5 = (*(*v1 + 248))(v4);
    v6 = v3;
  }

  else
  {
    v7 = sub_2F8C(_swiftEmptyArrayStorage);
    v5 = sub_28280(_swiftEmptyArrayStorage);
    v6 = v7;
  }

  return sub_28E68(v6, v5);
}

unint64_t sub_2E7A0()
{
  if (*(v0 + OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService_rawResults) && (v1 = , v2 = sub_2E848(v1), v3 = , v2))
  {
    v4 = (*(*v0 + 248))(v3);
    v5 = v2;
  }

  else
  {
    v6 = sub_2F8C(_swiftEmptyArrayStorage);
    v4 = sub_28280(_swiftEmptyArrayStorage);
    v5 = v6;
  }

  return sub_28E68(v5, v4);
}

unint64_t sub_2E848(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_279C(&qword_451A8, &qword_34190);
    v2 = sub_335F4();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_3228(*(a1 + 48) + 40 * v12, v27);
        sub_2740(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_3228(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_2740(v25 + 8, v20);
        sub_93EC(v24, &qword_46810, &unk_35AC0);
        v21 = v18;
        sub_3284(v20, v22);
        v13 = v21;
        sub_3284(v22, v23);
        sub_3284(v23, &v21);
        result = sub_26C8(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          sub_3364(v10);
          result = sub_3284(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_3284(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_93EC(v24, &qword_46810, &unk_35AC0);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_2EB24@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_32C54();

  *a2 = v4;
  return result;
}

uint64_t sub_2EBB8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_32C64();
}

uint64_t sub_2EC30(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2ED28;

  return v6(a1);
}

uint64_t sub_2ED28()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2EE20(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_336C4();
  sub_332E4();
  v6 = sub_336E4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_33644() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2EF5C();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_2F550(v8);
  *v2 = v16;
  return v12;
}

void *sub_2EF5C()
{
  v1 = v0;
  sub_279C(&qword_46808, &unk_35AB0);
  v2 = *v0;
  v3 = sub_33554();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_2F0B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_279C(&qword_46808, &unk_35AB0);
  result = sub_33564();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_336C4();

      sub_332E4();
      result = sub_336E4();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2F2F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_279C(&qword_46808, &unk_35AB0);
  result = sub_33564();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_336C4();
      sub_332E4();
      result = sub_336E4();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_2F550(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_33504();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_336C4();

        sub_332E4();
        v10 = sub_336E4();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_2F714(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_336C4();
  sub_332E4();
  v8 = sub_336E4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_33644() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_2F864(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2F864(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2F2F0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2EF5C();
      goto LABEL_16;
    }

    sub_2F0B8(v8 + 1);
  }

  v10 = *v4;
  sub_336C4();
  sub_332E4();
  result = sub_336E4();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_33644();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_33654();
  __break(1u);
  return result;
}

uint64_t sub_2F9E4(uint64_t a1)
{
  v3 = sub_32BD4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_160EC();
  v9 = *v7;
  v8 = *(v7 + 1);
  v19 = v9;
  v20 = v8;

  sub_33544();
  if (*(a1 + 16) && (v10 = sub_2830(v21), (v11 & 1) != 0))
  {
    sub_2740(*(a1 + 56) + 32 * v10, v22);
    sub_3310(v21);
    if (swift_dynamicCast() && v19 >= 1)
    {

      result = sub_1E0D8(v12);
      if (v1)
      {
        return swift_willThrow();
      }

      return result;
    }
  }

  else
  {
    sub_3310(v21);
  }

  v14 = sub_2167C();
  (*(v4 + 16))(v6, v14, v3);
  v15 = sub_32BB4();
  v16 = sub_33414();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "There are no content caches", v17, 2u);
  }

  (*(v4 + 8))(v6, v3);
  return 0;
}

uint64_t sub_2FC18(uint64_t a1)
{
  v2 = v1;
  v4 = sub_32BD4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  v9 = sub_2167C();
  v10 = *(v5 + 16);
  v27 = v9;
  v28 = v5 + 16;
  v26 = v10;
  v10(v8);

  v11 = sub_32BB4();
  v12 = sub_33414();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v25 = v2;
    v14 = v13;
    v24 = swift_slowAlloc();
    v29 = a1;
    v30[0] = v24;
    *v14 = 136446210;

    sub_279C(&qword_46830, &qword_35AD8);
    v15 = sub_33294();
    v17 = sub_D148(v15, v16, v30);

    *(v14 + 4) = v17;
    _os_log_impl(&dword_0, v11, v12, "reporter results : %{public}s", v14, 0xCu);
    sub_3364(v24);

    v2 = v25;
  }

  result = (*(v5 + 8))(v8, v4);
  if (a1)
  {
    v19 = sub_2F9E4(a1);
    v21 = v20;
    v23 = v22;
    swift_getKeyPath();
    swift_getKeyPath();
    v30[0] = v19;
    v30[1] = v21;
    v30[2] = v23;

    sub_32C64();
    *(v2 + OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService_rawResults) = a1;

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v30[0]) = 0;

    return sub_32C64();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for AssetCacheLocatorService(uint64_t a1)
{
  result = qword_47B00;
  if (!qword_47B00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_30078(uint64_t a1)
{
  sub_286D4(319, &qword_46370, &qword_462E8, &qword_355F0);
  if (v1 <= 0x3F)
  {
    sub_28684();
    if (v2 <= 0x3F)
    {
      sub_286D4(319, &unk_46380, &qword_46320, &qword_356A8);
      if (v3 <= 0x3F)
      {
        sub_286D4(319, &qword_46368, &qword_46080, &qword_35590);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_30228()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_30270()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_30318;

  return sub_2BE78(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_30318()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_3040C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_30444(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_307AC;

  return sub_2EC30(a1, v4);
}

uint64_t sub_304FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_30318;

  return sub_2EC30(a1, v4);
}

uint64_t sub_305B4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_305F0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    v4 = sub_32C44();
    sub_2F714(&v6, v1, v2);

    v4(v5, 0);

    sub_2BBB4(v1, v2);
  }

  return result;
}

uint64_t sub_306F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_3070C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_30754()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_307B4()
{
  v1 = *(v0 + *(type metadata accessor for FavoredServer(0) + 20));

  return v1;
}

uint64_t type metadata accessor for FavoredServer(uint64_t a1)
{
  result = qword_47BA0;
  if (!qword_47BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_30840()
{
  v1 = *(v0 + *(type metadata accessor for FavoredServer(0) + 24));

  return v1;
}

uint64_t sub_30880()
{
  v1 = *(v0 + *(type metadata accessor for FavoredServer(0) + 28));

  return v1;
}

int *sub_308C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_32AB4();
  result = type metadata accessor for FavoredServer(0);
  v15 = (a7 + result[5]);
  *v15 = a1;
  v15[1] = a2;
  v16 = (a7 + result[6]);
  *v16 = a3;
  v16[1] = a4;
  v17 = (a7 + result[7]);
  *v17 = a5;
  v17[1] = a6;
  return result;
}

uint64_t sub_30940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FavoredServer(0);
  v5 = *(v4 - 1);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_32AB4();
  if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

  v8 = sub_26C8(0x7472617473, 0xE500000000000000);
  if ((v9 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_F670(*(a1 + 56) + 32 * v8, &v27);
  v29 = v27;
  v30 = v28;
  if (*(&v28 + 1))
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_18:

      goto LABEL_19;
    }

    v10 = v26;
    if (*(a1 + 16))
    {
      v11 = v25;
      v12 = sub_26C8(6581861, 0xE300000000000000);
      if (v13)
      {
        sub_F670(*(a1 + 56) + 32 * v12, &v27);
        v29 = v27;
        v30 = v28;
        if (!*(&v28 + 1))
        {
LABEL_16:

          goto LABEL_14;
        }

        if (swift_dynamicCast())
        {
          v14 = v26;
          if (!*(a1 + 16) || (v15 = v25, v16 = sub_26C8(0x656372756F73, 0xE600000000000000), (v17 & 1) == 0))
          {

            goto LABEL_18;
          }

          sub_F670(*(a1 + 56) + 32 * v16, &v27);

          v29 = v27;
          v30 = v28;
          if (*(&v28 + 1))
          {
            if (swift_dynamicCast())
            {
              v18 = v25;
              v19 = v26;
              v20 = &v7[v4[5]];
              *v20 = v11;
              *(v20 + 1) = v10;
              v21 = &v7[v4[6]];
              *v21 = v15;
              *(v21 + 1) = v14;
              v22 = &v7[v4[7]];
              *v22 = v18;
              *(v22 + 1) = v19;
              sub_24220(v7, a2);
              (*(v5 + 56))(a2, 0, 1, v4);
              return sub_30C5C(v7);
            }

            goto LABEL_15;
          }

          goto LABEL_16;
        }
      }
    }

LABEL_15:

    goto LABEL_18;
  }

LABEL_14:

  sub_F6E0(&v29);
LABEL_19:
  v24 = sub_32AC4();
  (*(*(v24 - 8) + 8))(v7, v24);
  return (*(v5 + 56))(a2, 1, 1, v4);
}

uint64_t sub_30C5C(uint64_t a1)
{
  v2 = type metadata accessor for FavoredServer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_30CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_32AC4();
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

uint64_t sub_30DA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_32AC4();
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

uint64_t sub_30E5C()
{
  v0 = swift_allocObject();
  sub_30E94();
  return v0;
}

uint64_t sub_30E94()
{
  v1 = sub_279C(&qword_45600, &qword_341D8);
  __chkstk_darwin(v1 - 8);
  v3 = &v39 - v2;
  v4 = sub_32AE4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_33224();
  __chkstk_darwin(v5 - 8);
  *(v0 + 16) = xmmword_35B40;
  *(v0 + 32) = xmmword_35B50;
  *(v0 + 48) = xmmword_35B60;
  *(v0 + 64) = xmmword_35B70;
  *(v0 + 80) = xmmword_35B80;
  sub_33214();
  v6 = sub_2A72C();
  swift_beginAccess();
  v7 = *v6;
  sub_32AD4();
  *(v0 + 96) = sub_33284();
  *(v0 + 104) = v8;
  sub_33214();
  swift_beginAccess();
  v9 = *v6;
  sub_32AD4();
  *(v0 + 112) = sub_33284();
  *(v0 + 120) = v10;
  sub_33214();
  swift_beginAccess();
  v11 = *v6;
  sub_32AD4();
  *(v0 + 128) = sub_33284();
  *(v0 + 136) = v12;
  sub_33214();
  swift_beginAccess();
  v13 = *v6;
  sub_32AD4();
  *(v0 + 144) = sub_33284();
  *(v0 + 152) = v14;
  sub_32964();
  v15 = sub_32974();
  v16 = *(v15 - 8);
  result = (*(v16 + 48))(v3, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v16 + 32))(v0 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_moreInfoURL, v3, v15);
    v18 = (v0 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_statusIndicatorsTitle);
    sub_33214();
    swift_beginAccess();
    v19 = *v6;
    sub_32AD4();
    *v18 = sub_33284();
    v18[1] = v20;
    v21 = (v0 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_reachableLabelTitle);
    sub_33214();
    swift_beginAccess();
    v22 = *v6;
    sub_32AD4();
    *v21 = sub_33284();
    v21[1] = v23;
    v24 = (v0 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_reachableLabelDescription);
    sub_33214();
    swift_beginAccess();
    v25 = *v6;
    sub_32AD4();
    *v24 = sub_33284();
    v24[1] = v26;
    v27 = (v0 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_unreachableLabelTitle);
    sub_33214();
    swift_beginAccess();
    v28 = *v6;
    sub_32AD4();
    *v27 = sub_33284();
    v27[1] = v29;
    v30 = (v0 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_unreachableLabelDescription);
    sub_33214();
    swift_beginAccess();
    v31 = *v6;
    sub_32AD4();
    *v30 = sub_33284();
    v30[1] = v32;
    v33 = (v0 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_favoredLabelTitle);
    sub_33214();
    swift_beginAccess();
    v34 = *v6;
    sub_32AD4();
    *v33 = sub_33284();
    v33[1] = v35;
    v36 = (v0 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_favoredLabelDescription);
    sub_33214();
    swift_beginAccess();
    v37 = *v6;
    sub_32AD4();
    *v36 = sub_33284();
    v36[1] = v38;
    sub_32B54();
    return v0;
  }

  return result;
}

uint64_t sub_31634()
{
  v0 = sub_32AE4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_33224();
  __chkstk_darwin(v1 - 8);
  sub_33214();
  v2 = sub_2A72C();
  swift_beginAccess();
  v3 = *v2;
  sub_32AD4();
  return sub_33284();
}

uint64_t sub_31784@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_279C(&qword_45600, &qword_341D8);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  sub_32964();
  v5 = sub_32974();
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_31898()
{
  v0 = sub_32AE4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_33224();
  __chkstk_darwin(v1 - 8);
  sub_33214();
  v2 = sub_2A72C();
  swift_beginAccess();
  v3 = *v2;
  sub_32AD4();
  return sub_33284();
}

uint64_t sub_319E4()
{
  v0 = sub_32AE4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_33224();
  __chkstk_darwin(v1 - 8);
  sub_33214();
  v2 = sub_2A72C();
  swift_beginAccess();
  v3 = *v2;
  sub_32AD4();
  return sub_33284();
}

uint64_t sub_31B34()
{
  v0 = sub_32AE4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_33224();
  __chkstk_darwin(v1 - 8);
  sub_33214();
  v2 = sub_2A72C();
  swift_beginAccess();
  v3 = *v2;
  sub_32AD4();
  return sub_33284();
}

uint64_t sub_31C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_32AE4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_33224();
  __chkstk_darwin(v5 - 8);
  sub_33214();
  v6 = sub_2A72C();
  swift_beginAccess();
  v7 = *v6;
  sub_32AD4();
  return sub_33284();
}

uint64_t sub_31DA4()
{
  v0 = sub_32AE4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_33224();
  __chkstk_darwin(v1 - 8);
  sub_33214();
  v2 = sub_2A72C();
  swift_beginAccess();
  v3 = *v2;
  sub_32AD4();
  return sub_33284();
}

uint64_t sub_31EC8()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t sub_31EF8()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t sub_31F28()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t sub_31F58()
{
  v1 = *(v0 + 144);

  return v1;
}

uint64_t sub_31F88@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14Content_Caches13InfoViewModel_moreInfoURL;
  v4 = sub_32974();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_32000()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_statusIndicatorsTitle);

  return v1;
}

uint64_t sub_3203C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_reachableLabelTitle);

  return v1;
}

uint64_t sub_32078()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_reachableLabelDescription);

  return v1;
}

uint64_t sub_320B4()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_unreachableLabelTitle);

  return v1;
}

uint64_t sub_320F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_unreachableLabelDescription);

  return v1;
}

uint64_t sub_3212C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_favoredLabelTitle);

  return v1;
}

uint64_t sub_32168()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_favoredLabelDescription);

  return v1;
}

unint64_t sub_321F8()
{
  result = qword_468C0;
  if (!qword_468C0)
  {
    type metadata accessor for InfoViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_468C0);
  }

  return result;
}

uint64_t type metadata accessor for InfoViewModel(uint64_t a1)
{
  result = qword_47C40;
  if (!qword_47C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_32328()
{

  v1 = OBJC_IVAR____TtC14Content_Caches13InfoViewModel_moreInfoURL;
  v2 = sub_32974();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC14Content_Caches13InfoViewModel___observationRegistrar;
  v4 = sub_32B64();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_32474()
{
  sub_32328();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_324D4(uint64_t a1)
{
  result = sub_32974();
  if (v2 <= 0x3F)
  {
    result = sub_32B64();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_325EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  v21 = a4;
  v19[1] = a2;
  v22 = sub_33274();
  v5 = *(v22 - 8);
  __chkstk_darwin(v22);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_32974();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v19 - v13;
  v15 = [objc_opt_self() defaultManager];
  v16 = [v15 temporaryDirectory];

  sub_32954();
  sub_32934();
  v17 = *(v9 + 8);
  v17(v12, v8);
  sub_32944();
  v17(v14, v8);
  v23 = v20;
  v24 = v21;
  sub_33264();
  sub_1288C();
  sub_334D4();
  return (*(v5 + 8))(v7, v22);
}