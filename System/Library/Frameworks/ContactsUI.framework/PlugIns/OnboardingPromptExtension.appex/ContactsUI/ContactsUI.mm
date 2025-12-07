void sub_100001B5C()
{
  v1 = *(v0 + *(type metadata accessor for OnboardingContactContentView(0) + 60));
  v2 = [objc_allocWithZone(ISImageDescriptor) initWithSize:v1 scale:{v1, 1.0}];
  v3 = objc_allocWithZone(ISIcon);
  v4 = sub_100004DD0();
  v5 = [v3 initWithBundleIdentifier:v4];

  v6 = [v5 prepareImageForDescriptor:v2];
  if (v6)
  {
    v7 = [v6 CGImage];

    if (v7)
    {

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

__n128 sub_100001C68@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100004BA0();
  v19 = 0;
  sub_100001EC8(v2, __src);
  memcpy(__dst, __src, 0x1C1uLL);
  memcpy(v21, __src, 0x1C1uLL);
  sub_100003808(__dst, v16, &qword_10000C9F0, &qword_1000057D8);
  sub_100003870(v21, &qword_10000C9F0, &qword_1000057D8);
  memcpy(&v18[7], __dst, 0x1C1uLL);
  v5 = v19;
  sub_1000035F4(&qword_10000C9F8, &qword_1000057E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100005680;
  *(v6 + 32) = *v2;

  *(v6 + 40) = sub_100004D10();
  sub_100004D90();
  sub_100004DA0();
  sub_100004D70();
  sub_100004B20();
  v7 = __src[0];
  LOBYTE(v6) = sub_100004BF0();
  v8 = *(v2 + *(type metadata accessor for OnboardingContactContentView(0) + 40));
  v9 = (a1 + *(sub_1000035F4(&qword_10000C9D0, &qword_100005730) + 36));
  v10 = *(sub_100004B30() + 20);
  v11 = enum case for RoundedCornerStyle.continuous(_:);
  v12 = sub_100004BB0();
  v14 = *&__src[3];
  v15 = *&__src[1];
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  *v9 = v8;
  *(v9 + 1) = v8;
  *&v9[*(sub_1000035F4(&qword_10000CA00, &qword_1000057E8) + 36)] = 256;
  *a1 = v4;
  *(a1 + 8) = 0x4014000000000000;
  *(a1 + 16) = v5;
  memcpy((a1 + 17), v18, 0x1C8uLL);
  *(a1 + 473) = v16[0];
  *(a1 + 476) = *(v16 + 3);
  *(a1 + 480) = v7;
  result = v15;
  *(a1 + 488) = v15;
  *(a1 + 504) = v14;
  *(a1 + 520) = v6;
  return result;
}

void sub_100001EC8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_100004D40();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004AE0();
  __chkstk_darwin(v8 - 8);
  v9 = sub_100004DC0();
  __chkstk_darwin(v9 - 8);
  v92 = type metadata accessor for OnboardingContactContentView(0);
  v10 = *(a1 + *(v92 + 64) + 8) >> 60;
  v75 = a2;
  if (v10 != 15)
  {
    v11 = a1;
    isa = sub_100004AB0().super.isa;
    v13 = CGImageSourceCreateWithData(isa, 0);

    if (v13)
    {
      if (CGImageSourceCreateImageAtIndex(v13, 0, 0))
      {

        a1 = v11;
        goto LABEL_6;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  sub_100001B5C();
LABEL_6:
  sub_100004DB0();
  sub_100004AD0();
  *&v131 = sub_100004DF0();
  *(&v131 + 1) = v14;
  sub_100003688();
  sub_100004CD0();
  sub_100004D60();
  (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
  v15 = sub_100004D50();

  (*(v5 + 8))(v7, v4);
  sub_100004D80();
  sub_100004B10();
  v76 = v187;
  v78 = v189;
  v89 = v192;
  v90 = v191;
  v77 = v188;
  v179 = v188;
  v79 = v190;
  v177 = v190;
  v91 = sub_100004C10();
  sub_100004B00();
  v86 = v17;
  v87 = v16;
  v84 = v19;
  v85 = v18;
  v180 = 0;
  v88 = sub_100004C20();
  sub_100004B00();
  v82 = v21;
  v83 = v20;
  v80 = v23;
  v81 = v22;
  v184 = 0;
  v73 = sub_100004BD0();
  v74 = a1;
  v158 = 1;
  sub_100002988(&v131);
  v172 = *&v132[48];
  v173[0] = *&v132[64];
  *(v173 + 9) = *&v132[73];
  v168 = v131;
  v169 = *v132;
  v171 = *&v132[32];
  v170 = *&v132[16];
  v174[1] = *v132;
  v174[0] = v131;
  v174[2] = *&v132[16];
  v174[3] = *&v132[32];
  v174[4] = *&v132[48];
  *v175 = *&v132[64];
  *&v175[9] = *&v132[73];
  sub_100003808(&v168, v130, &qword_10000CA08, &qword_1000057F0);
  sub_100003870(v174, &qword_10000CA08, &qword_1000057F0);
  *(&v157[3] + 7) = v171;
  *(&v157[4] + 7) = v172;
  *(&v157[5] + 7) = v173[0];
  v157[6] = *(v173 + 9);
  *(v157 + 7) = v168;
  *(&v157[1] + 7) = v169;
  *(&v157[2] + 7) = v170;
  v72 = v158;
  v24 = sub_100004C20();
  v25 = sub_100004C30();
  sub_100004C30();
  if (sub_100004C30() != v24)
  {
    v25 = sub_100004C30();
  }

  v71 = v25;
  sub_100004B00();
  v69 = v27;
  v70 = v26;
  v67 = v29;
  v68 = v28;
  v159 = 0;
  v30 = sub_100004C40();
  v31 = sub_100004C30();
  sub_100004C30();
  if (sub_100004C30() != v30)
  {
    v31 = sub_100004C30();
  }

  v66 = v31;
  sub_100004B00();
  v64 = v33;
  v65 = v32;
  v62 = v35;
  v63 = v34;
  v160 = 0;
  sub_1000035F4(&qword_10000CA10, &qword_1000057F8);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_100005680;
  v37 = sub_100004C00();
  *(v36 + 32) = v37;
  v38 = sub_100004C10();
  *(v36 + 33) = v38;
  v39 = sub_100004C30();
  sub_100004C30();
  if (sub_100004C30() != v37)
  {
    v39 = sub_100004C30();
  }

  sub_100004C30();
  if (sub_100004C30() != v38)
  {
    v39 = sub_100004C30();
  }

  sub_100004B00();
  v74 = v40;
  v60 = v42;
  v61 = v41;
  v59 = v43;
  v161 = 0;
  *&v121 = v15;
  *(&v121 + 1) = v76;
  LOBYTE(v122) = v77;
  v92 = v15;
  *(&v122 + 1) = *v178;
  DWORD1(v122) = *&v178[3];
  *(&v122 + 1) = v78;
  LOBYTE(v123) = v79;
  *(&v123 + 1) = *v176;
  DWORD1(v123) = *&v176[3];
  *(&v123 + 1) = v90;
  *&v124 = v89;
  WORD4(v124) = 256;
  HIWORD(v124) = v183;
  *(&v124 + 10) = v182;
  LOBYTE(v125) = v91;
  DWORD1(v125) = *&v181[3];
  *(&v125 + 1) = *v181;
  *(&v125 + 1) = v87;
  *&v126 = v86;
  *(&v126 + 1) = v85;
  *&v127 = v84;
  BYTE8(v127) = 0;
  HIDWORD(v127) = *&v186[3];
  *(&v127 + 9) = *v186;
  LOBYTE(v128) = v88;
  DWORD1(v128) = *&v185[3];
  *(&v128 + 1) = *v185;
  *(&v128 + 1) = v83;
  *&v129[0] = v82;
  *(&v129[0] + 1) = v81;
  *&v129[1] = v80;
  BYTE8(v129[1]) = 0;
  v120[0] = v121;
  v120[1] = v122;
  v120[4] = v125;
  v120[5] = v126;
  v120[2] = v123;
  v120[3] = v124;
  *(&v120[8] + 9) = *(v129 + 9);
  v120[7] = v128;
  v120[8] = v129[0];
  v120[6] = v127;
  v44 = v73;
  v130[0] = v73;
  v130[1] = 0;
  v45 = v72;
  LOBYTE(v130[2]) = v72;
  *(&v130[8] + 1) = v157[3];
  *(&v130[10] + 1) = v157[4];
  *(&v130[12] + 1) = v157[5];
  *(&v130[14] + 1) = v157[6];
  *(&v130[2] + 1) = v157[0];
  *(&v130[4] + 1) = v157[1];
  *(&v130[6] + 1) = v157[2];
  HIDWORD(v130[16]) = *(v167 + 3);
  *(&v130[16] + 1) = v167[0];
  v46 = v71;
  LOBYTE(v130[17]) = v71;
  HIDWORD(v130[17]) = *&v166[3];
  *(&v130[17] + 1) = *v166;
  v48 = v69;
  v47 = v70;
  v130[18] = v70;
  v130[19] = v69;
  v50 = v67;
  v49 = v68;
  v130[20] = v68;
  v130[21] = v67;
  LOBYTE(v130[22]) = 0;
  *(&v130[22] + 1) = *v165;
  HIDWORD(v130[22]) = *&v165[3];
  v51 = v66;
  LOBYTE(v130[23]) = v66;
  HIDWORD(v130[23]) = *&v164[3];
  *(&v130[23] + 1) = *v164;
  v53 = v64;
  v52 = v65;
  v130[24] = v65;
  v130[25] = v64;
  v55 = v62;
  v54 = v63;
  v130[26] = v63;
  v130[27] = v62;
  LOBYTE(v130[28]) = 0;
  *(&v130[28] + 1) = *v163;
  HIDWORD(v130[28]) = *&v163[3];
  LOBYTE(v130[29]) = v39;
  HIDWORD(v130[29]) = *&v162[3];
  *(&v130[29] + 1) = *v162;
  v130[30] = v40;
  v130[31] = v41;
  v130[32] = v42;
  v130[33] = v43;
  LOBYTE(v130[34]) = 0;
  memcpy(&v120[10], v130, 0x111uLL);
  v119 = 1;
  v56 = v75;
  memcpy(v75, v120, 0x1B8uLL);
  v57 = v157[2];
  *&v132[49] = v157[3];
  *&v132[65] = v157[4];
  *&v132[81] = v157[5];
  *&v132[97] = v157[6];
  *&v132[1] = v157[0];
  *&v132[17] = v157[1];
  v56[55] = 0;
  *(v56 + 448) = 1;
  v131 = v44;
  v132[0] = v45;
  *&v132[33] = v57;
  *&v133[3] = *(v167 + 3);
  *v133 = v167[0];
  v134 = v46;
  *&v135[3] = *&v166[3];
  *v135 = *v166;
  v136 = v47;
  v137 = v48;
  v138 = v49;
  v139 = v50;
  v140 = 0;
  *v141 = *v165;
  *&v141[3] = *&v165[3];
  v142 = v51;
  *&v143[3] = *&v164[3];
  *v143 = *v164;
  v144 = v52;
  v145 = v53;
  v146 = v54;
  v147 = v55;
  v148 = 0;
  *v149 = *v163;
  *&v149[3] = *&v163[3];
  v150 = v39;
  *&v151[3] = *&v162[3];
  *v151 = *v162;
  v152 = v74;
  v153 = v61;
  v154 = v60;
  v155 = v59;
  v156 = 0;
  sub_100003808(&v121, v93, &qword_10000CA18, &qword_100005800);
  sub_100003808(v130, v93, &qword_10000CA20, &qword_100005808);
  sub_100003870(&v131, &qword_10000CA20, &qword_100005808);
  v93[0] = v92;
  v93[1] = v76;
  v94 = v77;
  *v95 = *v178;
  *&v95[3] = *&v178[3];
  v96 = v78;
  v97 = v79;
  *v98 = *v176;
  *&v98[3] = *&v176[3];
  v99 = v90;
  v100 = v89;
  v101 = 256;
  v103 = v183;
  v102 = v182;
  v104 = v91;
  *&v105[3] = *&v181[3];
  *v105 = *v181;
  v106 = v87;
  v107 = v86;
  v108 = v85;
  v109 = v84;
  v110 = 0;
  *v111 = *v186;
  *&v111[3] = *&v186[3];
  v112 = v88;
  *&v113[3] = *&v185[3];
  *v113 = *v185;
  v114 = v83;
  v115 = v82;
  v116 = v81;
  v117 = v80;
  v118 = 0;
  sub_100003870(v93, &qword_10000CA18, &qword_100005800);
}

uint64_t sub_100002988@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for OnboardingContactContentView(0);
  sub_100003688();

  v3 = sub_100004CD0();
  v5 = v4;
  v7 = v6;
  sub_100004C50();
  sub_100004C60();

  v8 = sub_100004CC0();
  v10 = v9;
  v12 = v11;

  sub_1000036DC(v3, v5, v7 & 1);

  sub_100004D20();
  v13 = sub_100004CB0();
  v36 = v14;
  v37 = v13;
  v35 = v15;
  v38 = v16;
  sub_1000036DC(v8, v10, v12 & 1);

  KeyPath = swift_getKeyPath();

  v17 = sub_100004CD0();
  v19 = v18;
  v21 = v20;
  sub_100004C90();
  v22 = sub_100004CC0();
  v24 = v23;
  v26 = v25;

  sub_1000036DC(v17, v19, v21 & 1);

  v27 = sub_100004CB0();
  v29 = v28;
  LOBYTE(v17) = v30;
  v39 = v31;
  sub_1000036DC(v22, v24, v26 & 1);

  v32 = swift_getKeyPath();
  *a2 = v37;
  *(a2 + 8) = v36;
  *(a2 + 16) = v35 & 1;
  *(a2 + 24) = v38;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = v27;
  *(a2 + 64) = v29;
  *(a2 + 72) = v17 & 1;
  *(a2 + 80) = v39;
  *(a2 + 88) = v32;
  *(a2 + 96) = 1;
  *(a2 + 104) = 0;
  sub_1000037F8(v37, v36, v35 & 1);

  sub_1000037F8(v27, v29, v17 & 1);

  sub_1000036DC(v27, v29, v17 & 1);

  sub_1000036DC(v37, v36, v35 & 1);
}

uint64_t sub_100002CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v59 = a2;
  v3 = sub_1000035F4(&qword_10000C9D0, &qword_100005730);
  v4 = __chkstk_darwin(v3 - 8);
  v62 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v61 = &v51 - v6;
  sub_100001C68(&v51 - v6);
  v7 = type metadata accessor for OnboardingContactContentView(0);
  v8 = (a1 + *(v7 + 52));
  v9 = v8[1];
  v71 = *v8;
  v72 = v9;
  v55 = sub_100003688();

  v10 = sub_100004CD0();
  v12 = v11;
  v14 = v13;
  sub_100004C80();
  v15 = sub_100004CC0();
  v17 = v16;
  v19 = v18;

  sub_1000036DC(v10, v12, v14 & 1);

  sub_100004C70();
  v20 = sub_100004CA0();
  v60 = v21;
  v57 = v22;
  v58 = v23;
  sub_1000036DC(v15, v17, v19 & 1);

  v24 = (v56 + *(v7 + 56));
  v25 = v24[1];
  v71 = *v24;
  v72 = v25;

  v26 = sub_100004CD0();
  v28 = v27;
  LOBYTE(v15) = v29;
  sub_100004C80();
  v56 = sub_100004CC0();
  v55 = v30;
  v32 = v31;
  v34 = v33;
  v54 = v33;

  sub_1000036DC(v26, v28, v15 & 1);

  KeyPath = swift_getKeyPath();
  v53 = swift_getKeyPath();
  v35 = v32 & 1;
  LOBYTE(v71) = v32 & 1;
  v36 = swift_getKeyPath();
  v37 = v62;
  sub_100003808(v61, v62, &qword_10000C9D0, &qword_100005730);
  v38 = v59;
  sub_100003808(v37, v59, &qword_10000C9D0, &qword_100005730);
  v39 = sub_1000035F4(&qword_10000C9E0, &qword_1000057C8);
  v40 = v38 + *(v39 + 48);
  v41 = v60;
  *v40 = v20;
  *(v40 + 8) = v41;
  LOBYTE(v26) = v57 & 1;
  *(v40 + 16) = v57 & 1;
  *(v40 + 24) = v58;
  v42 = v38 + *(v39 + 64);
  v43 = v56;
  *&v65 = v56;
  v44 = v55;
  *(&v65 + 1) = v55;
  LOBYTE(v66) = v35;
  *(&v66 + 1) = v64[0];
  DWORD1(v66) = *(v64 + 3);
  v45 = KeyPath;
  *(&v66 + 1) = v34;
  *&v67 = KeyPath;
  BYTE8(v67) = 1;
  HIDWORD(v67) = *&v63[3];
  *(&v67 + 9) = *v63;
  v46 = v53;
  *&v68 = v53;
  *(&v68 + 1) = 0x3FF0000000000000;
  v69 = v36;
  v70 = 1;
  v47 = v67;
  v48 = v68;
  *(v42 + 80) = 1;
  *(v42 + 48) = v48;
  *(v42 + 64) = v36;
  v49 = v65;
  *(v42 + 16) = v66;
  *(v42 + 32) = v47;
  *v42 = v49;
  sub_1000037F8(v20, v41, v26);

  sub_100003808(&v65, &v71, &qword_10000C9E8, &qword_1000057D0);
  sub_100003870(v61, &qword_10000C9D0, &qword_100005730);
  v71 = v43;
  v72 = v44;
  v73 = v35;
  *v74 = v64[0];
  *&v74[3] = *(v64 + 3);
  v75 = v54;
  v76 = v45;
  v77 = 1;
  *v78 = *v63;
  *&v78[3] = *&v63[3];
  v79 = v46;
  v80 = 0x3FF0000000000000;
  v81 = v36;
  v82 = 0;
  v83 = 1;
  sub_100003870(&v71, &qword_10000C9E8, &qword_1000057D0);
  sub_1000036DC(v20, v60, v26);

  return sub_100003870(v62, &qword_10000C9D0, &qword_100005730);
}

void sub_1000031CC()
{
  sub_10000363C();
  v0 = sub_100004E10();
  sub_100004E00();
  sub_100004AF0();
}

uint64_t sub_10000326C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_100004BC0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_1000035F4(&qword_10000C9B8, &qword_100005720);
  sub_100002CE4(v1, a1 + *(v3 + 44));
  result = sub_1000035F4(&qword_10000C9C0, &qword_100005728);
  v5 = (a1 + *(result + 36));
  *v5 = sub_1000031CC;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = 0;
  return result;
}

uint64_t sub_100003314(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100004B30();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1000033D4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100004B30();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for OnboardingContactContentView(uint64_t a1)
{
  result = qword_10000C948;
  if (!qword_10000C948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000034C4(uint64_t a1)
{
  sub_100004B30();
  if (v1 <= 0x3F)
  {
    sub_100003588();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100003588()
{
  if (!qword_10000C958)
  {
    v0 = sub_100004E20();
    if (!v1)
    {
      atomic_store(v0, &qword_10000C958);
    }
  }
}

uint64_t sub_1000035F4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000363C()
{
  result = qword_10000C9C8;
  if (!qword_10000C9C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C9C8);
  }

  return result;
}

unint64_t sub_100003688()
{
  result = qword_10000C9D8;
  if (!qword_10000C9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C9D8);
  }

  return result;
}

uint64_t sub_1000036DC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000036EC@<X0>(uint64_t a1@<X8>)
{
  result = sub_100004B80();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100003750@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100004B60();
  *a1 = result;
  return result;
}

uint64_t sub_1000037F8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100003808(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000035F4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100003870(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000035F4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1000038D4()
{
  result = qword_10000CA28;
  if (!qword_10000CA28)
  {
    sub_100003960(&qword_10000C9C0, &qword_100005728);
    sub_1000039A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000CA28);
  }

  return result;
}

uint64_t sub_100003960(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000039A8()
{
  result = qword_10000CA30;
  if (!qword_10000CA30)
  {
    sub_100003960(&qword_10000CA38, &unk_100005810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000CA30);
  }

  return result;
}

id OnboardingContactHostViewController.__allocating_init(name:bottomField:contactCountText:bottomText:imageData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v17 = objc_allocWithZone(v10);
  v18 = &v17[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_imageData];
  *v18 = xmmword_100005820;
  v19 = &v17[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_name];
  *v19 = a1;
  *(v19 + 1) = a2;
  v20 = &v17[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_bottomField];
  *v20 = a3;
  *(v20 + 1) = a4;
  v21 = &v17[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_contactCountText];
  *v21 = a5;
  *(v21 + 1) = a6;
  v22 = &v17[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_bottomText];
  *v22 = a7;
  *(v22 + 1) = a8;
  v23 = *v18;
  v24 = *(v18 + 1);
  *v18 = a9;
  *(v18 + 1) = a10;
  sub_100004834(a9, a10);
  sub_10000489C(v23, v24);
  v29.receiver = v17;
  v29.super_class = v10;
  v25 = objc_msgSendSuper2(&v29, "initWithNibName:bundle:", 0, 0);
  sub_10000489C(a9, a10);
  return v25;
}

id OnboardingContactHostViewController.init(name:bottomField:contactCountText:bottomText:imageData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v10 = sub_100004904(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  sub_10000489C(a9, a10);
  return v10;
}

Swift::Void __swiftcall OnboardingContactHostViewController.viewDidLoad()()
{
  v1 = type metadata accessor for OnboardingContactContentView(0);
  v2 = (v1 - 8);
  v3 = __chkstk_darwin(v1);
  v67 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = (&v63 - v5);
  v7 = *&v0[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_name];
  v8 = *&v0[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_name + 8];
  v9 = *&v0[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_bottomField + 8];
  v69 = *&v0[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_bottomField];
  v70 = v7;
  v10 = *&v0[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_contactCountText + 8];
  v68 = *&v0[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_contactCountText];
  v11 = *&v0[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_bottomText];
  v64 = *&v0[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_bottomText + 8];
  v13 = *&v0[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_imageData + 8];
  v65 = *&v0[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_imageData];
  v12 = v65;
  v66 = v11;
  v14 = objc_allocWithZone(UIColor);

  sub_100004834(v12, v13);
  [v14 initWithRed:0.7 green:0.7 blue:0.7 alpha:1.0];
  *v6 = sub_100004D30();
  [objc_allocWithZone(UIColor) initWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
  v6[1] = sub_100004D30();
  v15 = v6 + v2[8];
  v16 = *(sub_100004B30() + 20);
  v17 = enum case for RoundedCornerStyle.continuous(_:);
  v18 = sub_100004BB0();
  (*(*(v18 - 8) + 104))(&v15[v16], v17, v18);
  __asm { FMOV            V0.2D, #5.0 }

  *v15 = _Q0;
  *(v6 + v2[9]) = 0x4004000000000000;
  *(v6 + v2[10]) = 0x4020000000000000;
  *(v6 + v2[11]) = 0x402C000000000000;
  *(v6 + v2[12]) = 0x402A000000000000;
  *(v6 + v2[17]) = 0x4049000000000000;
  v24 = v6 + v2[18];
  *v24 = xmmword_100005820;
  v25 = (v6 + v2[13]);
  v26 = v69;
  *v25 = v70;
  v25[1] = v8;
  v27 = (v6 + v2[14]);
  *v27 = v26;
  v27[1] = v9;
  v28 = (v6 + v2[15]);
  *v28 = v68;
  v28[1] = v10;
  v29 = v0;
  v30 = (v6 + v2[16]);
  v31 = v64;
  *v30 = v66;
  v30[1] = v31;
  sub_10000489C(*v24, *(v24 + 1));
  *v24 = v65;
  *(v24 + 1) = v13;
  sub_1000049CC(v6, v67);
  v32 = objc_allocWithZone(sub_1000035F4(&qword_10000CA68, &unk_100005830));
  v33 = sub_100004BE0();
  [v29 addChildViewController:v33];
  v34 = [v29 view];
  if (!v34)
  {
    __break(1u);
    goto LABEL_14;
  }

  v35 = v34;
  v36 = [v33 view];
  if (!v36)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v37 = v36;
  [v35 addSubview:v36];

  v38 = [v33 view];
  if (!v38)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v38 setTranslatesAutoresizingMaskIntoConstraints:0];

  v39 = [v33 view];
  if (!v39)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v40 = [v39 topAnchor];

  v41 = [v29 view];
  if (!v41)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v42 = v41;
  v43 = [v41 topAnchor];

  v44 = [v40 constraintEqualToAnchor:v43];
  [v44 setActive:1];

  v45 = [v33 view];
  if (!v45)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v46 = [v45 bottomAnchor];

  v47 = [v29 view];
  if (!v47)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v48 = v47;
  v49 = [v47 bottomAnchor];

  v50 = [v46 constraintEqualToAnchor:v49];
  [v50 setActive:1];

  v51 = [v33 view];
  if (!v51)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v52 = [v51 rightAnchor];

  v53 = [v29 view];
  if (!v53)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v54 = v53;
  v55 = [v53 rightAnchor];

  v56 = [v52 constraintEqualToAnchor:v55];
  [v56 setActive:1];

  v57 = [v33 view];
  if (!v57)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v58 = [v57 leftAnchor];

  v59 = [v29 view];
  if (v59)
  {
    v60 = v59;
    v61 = [v59 leftAnchor];

    v62 = [v58 constraintEqualToAnchor:v61];
    [v62 setActive:1];

    [v33 didMoveToParentViewController:v29];
    sub_100004A30(v6);
    return;
  }

LABEL_23:
  __break(1u);
}

id OnboardingContactHostViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_100004DD0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id OnboardingContactHostViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnboardingContactHostViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100004708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v16 = type metadata accessor for OnboardingContactHostViewController();
  v17 = objc_allocWithZone(v16);
  v18 = &v17[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_imageData];
  *v18 = xmmword_100005820;
  v19 = &v17[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_name];
  *v19 = a1;
  *(v19 + 1) = a2;
  v20 = &v17[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_bottomField];
  *v20 = a3;
  *(v20 + 1) = a4;
  v21 = &v17[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_contactCountText];
  *v21 = a5;
  *(v21 + 1) = a6;
  v22 = &v17[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_bottomText];
  *v22 = a7;
  *(v22 + 1) = a8;
  v23 = *v18;
  v24 = *(v18 + 1);
  *v18 = a9;
  *(v18 + 1) = a10;

  sub_100004834(a9, a10);
  sub_10000489C(v23, v24);
  v28.receiver = v17;
  v28.super_class = v16;
  return objc_msgSendSuper2(&v28, "initWithNibName:bundle:", 0, 0);
}

uint64_t sub_100004834(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100004848(a1, a2);
  }

  return a1;
}

uint64_t sub_100004848(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10000489C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000048B0(a1, a2);
  }

  return a1;
}

uint64_t sub_1000048B0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

id sub_100004904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v11 = &v10[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_imageData];
  *v11 = xmmword_100005820;
  v12 = &v10[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_name];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = &v10[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_bottomField];
  *v13 = a3;
  *(v13 + 1) = a4;
  v14 = &v10[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_contactCountText];
  *v14 = a5;
  *(v14 + 1) = a6;
  v15 = &v10[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_bottomText];
  *v15 = a7;
  *(v15 + 1) = a8;
  v16 = *v11;
  v17 = *(v11 + 1);
  *v11 = a9;
  *(v11 + 1) = a10;
  sub_100004834(a9, a10);
  sub_10000489C(v16, v17);
  v19.receiver = v10;
  v19.super_class = type metadata accessor for OnboardingContactHostViewController();
  return objc_msgSendSuper2(&v19, "initWithNibName:bundle:", 0, 0);
}

uint64_t sub_1000049CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingContactContentView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004A30(uint64_t a1)
{
  v2 = type metadata accessor for OnboardingContactContentView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}