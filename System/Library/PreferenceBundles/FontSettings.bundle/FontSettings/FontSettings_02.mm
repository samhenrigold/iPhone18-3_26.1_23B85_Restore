uint64_t sub_42F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a1;
  v12 = a2;
  v14 = 0;
  v25 = 0;
  v24 = 0;
  v15 = sub_1A88(&qword_91D10, &qword_80610);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(0);
  v18 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v7 - v18;
  __chkstk_darwin(v2);
  v19 = v7 - v18;
  v25 = v7 - v18;
  v24 = v3;
  v20 = sub_7D184();
  v21 = sub_7D174();
  v22 = sub_7D154();
  v23 = v4;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = v7;
  __chkstk_darwin(v7);
  v7[1] = &v7[-4];
  v7[-2] = v5;
  v8 = sub_1A88(&qword_91DE0, &qword_806A8);
  v9 = sub_4D180();
  sub_44450(v8);
  sub_7CB94();
  v11 = sub_4B7E4();
  sub_1991C(v17, v15, v19);
  sub_4D208(v17);
  sub_4D410(v19, v17);
  sub_1991C(v17, v15, v12);
  sub_4D208(v17);
  sub_4D208(v19);
}

uint64_t sub_431DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = &v189;
  v105 = &v181;
  v106 = v170;
  v114 = a1;
  v107 = a2;
  v115 = 0;
  v198 = 0;
  v197 = 0;
  v196 = 0;
  v195 = 0;
  v194 = 0;
  v190 = 0;
  v186 = 0;
  v185 = 0;
  v158 = 0;
  v157 = 0;
  v156 = 0;
  v155 = 0;
  v138 = 0;
  v137 = 0;
  v136 = 0;
  v135 = 0;
  v108 = type metadata accessor for RenderedGlyphView(0);
  v110 = *(*(v108 - 8) + 64);
  __chkstk_darwin(v108 - 8);
  v112 = (v110 + 15) & 0xFFFFFFFFFFFFFFF0;
  v109 = v66 - v112;
  __chkstk_darwin(v66 - v112);
  v111 = v66 - v112;
  __chkstk_darwin(v3);
  v113 = v66 - v112;
  v198 = v66 - v112;
  v116 = sub_1A88(&qword_91E08, &qword_806C8);
  v117 = *(*(v116 - 8) + 64);
  __chkstk_darwin(v115);
  v119 = (v117 + 15) & 0xFFFFFFFFFFFFFFF0;
  v118 = (v66 - v119);
  __chkstk_darwin(v4);
  v120 = (v66 - v119);
  v197 = v66 - v119;
  v196 = v5;
  v121 = sub_7D184();
  v122 = sub_7D174();
  v123 = sub_7D154();
  v124 = v6;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v192 = sub_7CB84();
  v193 = v7 & 1;
  sub_1991C(&v192, &type metadata for Spacer, &v194);
  if (*(v114 + 104) == 1)
  {
    v8 = v114;
    v9 = v104;
    *(v104 + 17) = *v114;
    v10 = v8[1];
    v11 = v8[2];
    v12 = v8[3];
    *(v9 + 21) = v8[4];
    *(v9 + 20) = v12;
    *(v9 + 19) = v11;
    *(v9 + 18) = v10;
    v80 = v199;
    sub_403E8(v199, &v149);
    v147 = sub_43C4C(v80);
    v148 = v13;
    v146 = sub_421A8();
    v83 = sub_499D4();
    v81 = &unk_8F210;
    v82 = &type metadata for Color;
    v84 = &protocol witness table for Color;
    v145 = sub_43CD4();
    v144 = v145;
    v85 = &v146;
    v86 = &v147;
    sub_43CF8(&v146, v145, v81, v82, v83, v84, &v150);
    sub_B068(v85);
    sub_49664(v86);
    v139 = v150;
    v140 = v151;
    v141 = v152;
    v142 = v153;
    v143 = v154;
    v99 = sub_1A88(&qword_91E10, &qword_806D0);
    v100 = sub_4D880();
    v103 = &v155;
    v87 = &v139;
    sub_1991C(&v139, v99, &v155);
    sub_4E398(v87);
    v88 = v155;
    v89 = v156;
    v90 = v157;
    v91 = v158;
    v92 = HIBYTE(v158);
    v14 = v156;

    v130 = v88;
    v131 = v89;
    v132 = v90;
    v133 = v91;
    v134 = v92;
    v102 = &v135;
    v93 = &v130;
    sub_1991C(&v130, v99, &v135);
    sub_4E398(v93);
    v94 = v135;
    v95 = v136;
    v96 = v137;
    v97 = v138;
    v98 = HIBYTE(v138);
    v15 = v136;

    v125 = v94;
    v126 = v95;
    v127 = v96;
    v128 = v97;
    v129 = v98;
    v16 = sub_46198();
    v101 = &v125;
    sub_19980(&v125, v99, v108, v100, v16, v118);
    sub_4E398(v101);
    sub_4D908(v118, v120);
    sub_4E398(v102);
    sub_4E398(v103);
  }

  else
  {
    v17 = v104;
    v18 = v114;
    *(v104 + 22) = *v114;
    v19 = v18[1];
    v20 = v18[2];
    v21 = v18[3];
    *(v17 + 26) = v18[4];
    *(v17 + 25) = v21;
    *(v17 + 24) = v20;
    *(v17 + 23) = v19;
    v78 = v200;
    sub_403E8(v200, &v191);
    sub_40F20(v78, v111);
    v79 = sub_46198();
    sub_1991C(v111, v108, v113);
    sub_46218(v111);
    v190 = v111;
    sub_4850C(v113, v109);
    sub_1991C(v109, v108, v111);
    sub_46218(v109);
    sub_4850C(v111, v109);
    v77 = sub_1A88(&qword_91E10, &qword_806D0);
    v22 = sub_4D880();
    sub_19A78(v109, v77, v108, v22, v79, v118);
    sub_46218(v109);
    sub_4D908(v118, v120);
    sub_46218(v111);
    sub_46218(v113);
  }

  v66[0] = 0;
  v183 = sub_7CB84();
  v184 = v23 & 1;
  v71 = &type metadata for Spacer;
  v73 = &protocol witness table for Spacer;
  sub_1991C(&v183, &type metadata for Spacer, &v185);
  v66[3] = sub_7C274();
  v66[4] = v66;
  __chkstk_darwin(v66);
  v66[1] = &v66[-4];
  v66[-2] = v24;
  v66[2] = sub_1A88(&qword_91E20, &qword_806D8);
  sub_4DAAC();
  sub_7CB74();
  v25 = v105;
  v26 = v106;
  v27 = v106[23];
  v28 = v106[24];
  *(v105 + 20) = v106[25];
  *(v25 + 19) = v28;
  *(v25 + 18) = v27;
  v29 = v26[26];
  v30 = v26[27];
  v31 = v26[28];
  v187 = v172[26];
  *(v25 + 23) = v31;
  *(v25 + 22) = v30;
  *(v25 + 21) = v29;
  v32 = *(v25 + 18);
  v33 = *(v25 + 19);
  v26[18] = *(v25 + 20);
  v26[17] = v33;
  v26[16] = v32;
  v34 = *(v25 + 21);
  v35 = *(v25 + 22);
  v36 = *(v25 + 23);
  v172[12] = v187;
  v26[21] = v36;
  v26[20] = v35;
  v26[19] = v34;
  v66[6] = sub_7C634();
  v66[5] = sub_1A88(&qword_91E30, &qword_806E0);
  sub_4DB34();
  v67 = v172;
  sub_7C8C4();

  sub_4DBBC(v67);
  v37 = v105;
  v38 = v106;
  v39 = v173;
  v40 = v174;
  v41 = v175;
  *(v105 + 28) = v176;
  *(v37 + 27) = v41;
  *(v37 + 26) = v40;
  *(v37 + 25) = v39;
  v42 = v177;
  v43 = v178;
  v188 = v180;
  *(v37 + 31) = v179;
  *(v37 + 30) = v43;
  *(v37 + 29) = v42;
  v44 = *(v37 + 25);
  v45 = *(v37 + 26);
  v46 = *(v37 + 27);
  v38[11] = *(v37 + 28);
  v38[10] = v46;
  v38[9] = v45;
  v38[8] = v44;
  v47 = *(v37 + 29);
  v48 = *(v37 + 30);
  v49 = *(v37 + 31);
  v171[14] = v188;
  v38[14] = v49;
  v38[13] = v48;
  v38[12] = v47;
  v170[31] = sub_44438();
  v68 = sub_1A88(&qword_91E40, &qword_806E8);
  sub_4DC28();
  v69 = v171;
  sub_7C804();
  sub_4DCD0(v69);
  v50 = v105;
  v51 = v104;
  v52 = v106;
  v53 = v106[37];
  v54 = v106[38];
  v55 = v106[39];
  *(v105 + 36) = v106[40];
  *(v50 + 35) = v55;
  *(v50 + 34) = v54;
  *(v50 + 33) = v53;
  v56 = v52[41];
  v57 = v52[42];
  v58 = v52[43];
  *(v51 + 108) = *(v50 + 108);
  v51[6] = v58;
  v51[5] = v57;
  v51[4] = v56;
  v59 = *v51;
  v60 = v51[1];
  v61 = v51[2];
  v52[3] = v51[3];
  v52[2] = v61;
  v52[1] = v60;
  *v52 = v59;
  v62 = v51[4];
  v63 = v51[5];
  v64 = v51[6];
  *(v52 + 108) = *(v51 + 108);
  v52[6] = v64;
  v52[5] = v63;
  v52[4] = v62;
  v72 = sub_1A88(&qword_91E50, &qword_806F8);
  v74 = sub_4DD54();
  v76 = v182;
  v70 = v170;
  sub_1991C(v170, v72, v182);
  sub_4DCD0(v70);
  v168 = v195;
  v167 = v194;
  v169[0] = &v167;
  sub_4DE84(v120, v118);
  v169[1] = v118;
  v166 = v186;
  v165 = v185;
  v169[2] = &v165;
  v75 = v164;
  sub_4E078(v76, v164);
  v169[3] = v75;
  v163[0] = v71;
  v163[1] = v116;
  v163[2] = v71;
  v163[3] = v72;
  v159 = v73;
  v160 = sub_4E1D4();
  v161 = v73;
  v162 = v74;
  sub_4E6CC(v169, 4uLL, v163, v107);
  sub_4DCD0(v75);
  sub_4E27C(v118);
  sub_4DCD0(v76);
  sub_4E27C(v120);
}

uint64_t sub_43C4C(uint64_t a1)
{
  v7 = 0;
  v8 = 0;
  v6 = a1;
  LOWORD(v7) = *(a1 + 8);
  v4 = v7;
  sub_403E8(a1, v5);
  v3 = *a1;
  *a1;
  v8 = v3;
  sub_BB0C(a1);
  sub_49664(&v7);
  return v4;
}

uint64_t sub_43CF8@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v18 = a7;
  v15 = a1;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v29 = a2;
  v16 = a2;
  v17 = HIBYTE(a2);
  v28 = a3;
  v27 = a4;
  v13 = *(a4 - 8);
  v14 = a4 - 8;
  v10 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v19 = &v10 - v10;
  v12 = *(v7 - 8);
  v11 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(&v10 - v10);
  v24 = &v10 - v11;
  (*(v12 + 16))(v8);
  (*(v13 + 16))(v19, v15, v21);
  v25 = v16;
  v26 = v17;
  return sub_7BEE4();
}

uint64_t sub_43E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = v77;
  v40 = a2;
  v41 = a1;
  v91 = 0;
  memset(v90, 0, 32);
  v80 = 0;
  v81 = 0;
  memset(v77, 0, sizeof(v77));
  v42 = 0;
  v43 = sub_7C2D4();
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v49 = *(v44 + 64);
  v46 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v47 = &v16 - v46;
  v48 = v46;
  __chkstk_darwin(v2);
  v50 = &v16 - v48;
  v51 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v52 = &v16 - v51;
  v91 = v4;
  v53 = sub_7D184();
  v54 = sub_7D174();
  v55 = sub_7D154();
  v56 = v5;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = *(v41 + 80);
  v17 = *(v41 + 88);

  v18 = v89;
  v89[0] = v16;
  v89[1] = v17;
  sub_198A4();
  v85 = sub_7C6E4();
  v86 = v6;
  v87 = v7;
  v88 = v8;
  v19 = v82;
  v82[0] = v85;
  v82[1] = v6;
  *&v28[1] = 1;
  v83 = v7 & 1;
  v84 = v8;
  v38 = v90;
  v31 = &type metadata for Text;
  v33 = &protocol witness table for Text;
  sub_1991C(v82, &type metadata for Text, v90);
  sub_23BF4(v19);
  v27 = 0;
  v78 = sub_7CB84();
  v79 = v9 & 1 & v28[1];
  v30 = &type metadata for Spacer;
  v32 = &protocol witness table for Spacer;
  sub_1991C(&v78, &type metadata for Spacer, &v80);
  sub_7C2C4();
  v25 = "";
  v92._countAndFlagsBits = sub_7CF84("", v27, v28[1] & 1);
  object = v92._object;
  sub_7C2B4(v92);

  v10 = *(v41 + 8);
  v22 = &v76;
  v76 = v10;
  v21 = &type metadata for UInt16;
  v23 = sub_4E3D8(&type metadata for UInt16);
  v24 = v11;
  sub_7C2A4();

  v93._countAndFlagsBits = sub_7CF84(v25, v27, v28[1] & 1);
  v26 = v93._object;
  sub_7C2B4(v93);

  (*(v44 + 16))(v50, v52, v43);
  (*(v44 + 32))(v47, v50, v43);
  (*(v44 + 8))(v52, v43);
  sub_7C2F4();
  v73 = 0;
  v74 = 0;
  v75 = *v28 & 0x100;
  v69 = sub_7C6D4();
  v70 = v12;
  v71 = v13;
  v72 = v14;
  v29 = v66;
  v66[0] = v69;
  v66[1] = v12;
  v67 = v13 & 1 & v28[1];
  v68 = v14;
  v37 = v77;
  sub_1991C(v66, v31, v77);
  sub_23BF4(v29);
  v36 = v64;
  sub_23E4C(v38, v64);
  v34 = v65;
  v65[0] = v36;
  v62 = v80;
  v63 = v81;
  v65[1] = &v62;
  v35 = v61;
  sub_23E4C(v37, v61);
  v65[2] = v35;
  v60[0] = v31;
  v60[1] = v30;
  v60[2] = v31;
  v57 = v33;
  v58 = v32;
  v59 = v33;
  sub_4E6CC(v34, 3uLL, v60, v40);
  sub_23BF4(v35);
  sub_23BF4(v36);
  sub_23BF4(v37);
  sub_23BF4(v38);
}

uint64_t sub_44474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a1;
  v12 = a2;
  v14 = 0;
  v25 = 0;
  v24 = 0;
  v15 = sub_1A88(&qword_91D48, &qword_80620);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(0);
  v18 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v7 - v18;
  __chkstk_darwin(v2);
  v19 = v7 - v18;
  v25 = v7 - v18;
  v24 = v3;
  v20 = sub_7D184();
  v21 = sub_7D174();
  v22 = sub_7D154();
  v23 = v4;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = v7;
  __chkstk_darwin(v7);
  v7[1] = &v7[-4];
  v7[-2] = v5;
  v8 = sub_1A88(&qword_91D58, &qword_80628);
  v9 = sub_4BE50();
  sub_44450(v8);
  sub_7CB94();
  v11 = sub_4BDC0();
  sub_1991C(v17, v15, v19);
  sub_4C014(v17);
  sub_4C0A0(v19, v17);
  sub_1991C(v17, v15, v12);
  sub_4C014(v17);
  sub_4C014(v19);
}

uint64_t sub_446BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v29 = a1;
  v18 = sub_4C5F4;
  v43 = 0;
  v42 = 0;
  v30 = 0;
  v2 = type metadata accessor for GlyphPopoverView(0);
  v19 = *(v2 - 8);
  v20 = v19;
  v21 = *(v19 + 64);
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v23 = v7 - v22;
  v24 = sub_1A88(&qword_91D70, &qword_80630);
  v25 = *(v24 - 8);
  v26 = v24 - 8;
  v27 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v24);
  v28 = v7 - v27;
  v31 = sub_1A88(&qword_91D58, &qword_80628);
  v33 = *(*(v31 - 8) + 64);
  v32 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v34 = v7 - v32;
  v35 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v36 = v7 - v35;
  v43 = v7 - v35;
  v42 = v4;
  v37 = sub_7D184();
  v38 = sub_7D174();
  v39 = sub_7D154();
  v40 = v5;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7[0] = *(v29 + 96);

  v14 = &v41;
  v41 = v7[0];
  KeyPath = swift_getKeyPath();
  sub_48728(v29, v23);
  v8 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v10 = swift_allocObject();
  sub_4C3CC(v23, (v10 + v8));
  v11 = sub_1A88(&qword_91D28, &qword_80618);
  v12 = sub_1A88(&qword_91D80, &qword_80638);
  v13 = sub_4C674();
  sub_4BF8C();
  sub_7CBC4();
  v15 = sub_4BEF4();
  sub_3FCB0(v24);
  sub_7C8F4();
  (*(v25 + 8))(v28, v24);
  v16 = sub_4BE50();
  sub_1991C(v34, v31, v36);
  sub_4C6FC(v34);
  sub_4C764(v36, v34);
  sub_1991C(v34, v31, v17);
  sub_4C6FC(v34);
  sub_4C6FC(v36);
}

uint64_t sub_44B74@<X0>(_DWORD *a2@<X8>)
{
  result = sub_7D824();
  *a2 = result;
  return result;
}

uint64_t sub_44BA4@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = &v41;
  v27 = a2;
  v28 = a1;
  v29 = a3;
  v92 = 0;
  v91 = 0;
  v58 = 0;
  v30 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v31 = *a1;
  v92 = v31;
  v91 = a2;
  v32 = sub_7D184();
  v33 = sub_7D174();
  v34 = sub_7D154();
  v35 = v3;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20[3] = sub_7C274();
  v20[4] = v20;
  __chkstk_darwin(v20);
  v20[1] = v18;
  v18[4] = v31;
  v19 = v4;
  v20[2] = sub_1A88(&qword_91D98, &qword_80678);
  sub_4C81C();
  sub_7CB74();
  v5 = *v26;
  v6 = v26[1];
  v7 = v26[2];
  v62 = v26[3];
  v61 = v7;
  v60 = v6;
  v59 = v5;
  v8 = v26[4];
  v9 = v26[5];
  v10 = v26[6];
  v66 = v26[7];
  v65 = v10;
  v64 = v9;
  v63 = v8;
  v11 = v26[8];
  v12 = v26[9];
  v13 = v26[10];
  v70 = v26[11];
  v69 = v13;
  v68 = v12;
  v67 = v11;
  v14 = v26[12];
  v15 = v26[13];
  v16 = v26[14];
  v74 = v42;
  v73 = v16;
  v72 = v15;
  v71 = v14;
  v39[3] = v62;
  v39[2] = v61;
  v39[1] = v60;
  v39[0] = v59;
  v39[7] = v66;
  v39[6] = v65;
  v39[5] = v64;
  v39[4] = v63;
  v39[11] = v70;
  v39[10] = v69;
  v39[9] = v68;
  v39[8] = v67;
  v40 = v42;
  v39[14] = v16;
  v39[13] = v15;
  v39[12] = v14;
  v22 = sub_1A88(&qword_91D80, &qword_80638);
  v23 = sub_4BF8C();
  v25 = &v43;
  v21 = v39;
  sub_1991C(v39, v22, &v43);
  sub_4C8A4(v21);
  v78 = v46;
  v77 = v45;
  v76 = v44;
  v75 = v43;
  v82 = v50;
  v81 = v49;
  v80 = v48;
  v79 = v47;
  v86 = v54;
  v85 = v53;
  v84 = v52;
  v83 = v51;
  v90 = v58;
  v89 = v57;
  v88 = v56;
  v87 = v55;
  sub_4C93C(&v75, &v38);
  v36[3] = v78;
  v36[2] = v77;
  v36[1] = v76;
  v36[0] = v75;
  v36[7] = v82;
  v36[6] = v81;
  v36[5] = v80;
  v36[4] = v79;
  v36[11] = v86;
  v36[10] = v85;
  v36[9] = v84;
  v36[8] = v83;
  v37 = v90;
  v36[14] = v89;
  v36[13] = v88;
  v36[12] = v87;
  v24 = v36;
  sub_1991C(v36, v22, v29);
  sub_4C8A4(v24);
  sub_4C8A4(v25);
}

uint64_t sub_44FF4@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v150 = a3;
  v166 = a1;
  v167 = a2;
  v151 = sub_4CD10;
  v276 = 0;
  v275 = 0;
  v229 = 0;
  v230 = 0;
  v218 = 0;
  v219 = 0;
  v216 = 0u;
  v217 = 0u;
  v188 = 0u;
  v189 = 0u;
  v168 = 0;
  v152 = sub_7D7F4();
  v153 = *(v152 - 8);
  v154 = v152 - 8;
  v155 = (*(v153 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v156 = &v47 - v155;
  v157 = type metadata accessor for GlyphPopoverView(v3);
  v158 = *(v157 - 8);
  v159 = v158;
  v160 = *(v158 + 64);
  v161 = (v160 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v157);
  v162 = &v47 - v161;
  v163 = sub_1A88(&qword_91AD0, &qword_80088);
  v164 = (*(*(v163 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v168);
  v165 = (&v47 - v164);
  v169 = sub_7C614();
  v170 = *(v169 - 8);
  v171 = v169 - 8;
  v172 = (*(v170 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v168);
  v173 = &v47 - v172;
  v276 = v4;
  v275 = v5;
  v174 = sub_7D184();
  v175 = sub_7D174();
  v176 = sub_7D154();
  v177 = v6;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = v165;
  v138 = 1;
  v106 = sub_7CF84("U+%04X", 6uLL, 1);
  v107 = v8;
  v104 = sub_1A88(&qword_91DA8, &qword_80680);
  v105 = sub_7D714();
  v103 = v9;
  v10 = sub_7D824();
  v11 = v103;
  v12 = v104;
  v13 = v10;
  v14 = v105;
  *(v103 + 24) = &type metadata for UInt32;
  *(v11 + 32) = &protocol witness table for UInt32;
  *v11 = v13;
  sub_71DDC(v14, v12);
  v108 = sub_7CF34();
  v109 = v15;

  v110 = v269;
  v269[0] = v108;
  v269[1] = v109;
  v111 = sub_198A4();
  v265 = sub_7C6E4();
  v266 = v16;
  v267 = v17;
  v268 = v18;
  v115 = v265;
  v116 = v16;
  v117 = v17;
  v118 = v18;
  v112 = sub_7C634();
  v113 = sub_7C5E4();

  sub_48B50((v167 + *(v157 + 36)), v7);
  sub_7BF04();
  sub_48C24(v165);
  v114 = sub_45E40();
  (*(v170 + 8))(v173, v169);

  v261 = v115;
  v262 = v116;
  v135 = 1;
  v263 = v117 & 1;
  v264 = v118;
  v257 = sub_7C6C4();
  v258 = v19;
  v259 = v20;
  v260 = v21;
  v120 = v257;
  v121 = v19;
  v119 = v20;
  v122 = v21;

  sub_209FC(v115, v116, v117 & 1);

  v256 = sub_45EB8();
  v252 = v120;
  v253 = v121;
  v254 = v119 & 1 & v138;
  v255 = v122;
  v248 = sub_7C6B4();
  v249 = v22;
  v250 = v23;
  v251 = v24;
  v123 = v248;
  v124 = v22;
  v125 = v23;
  v126 = v24;
  sub_209FC(v120, v121, v119 & 1);

  v129 = v245;
  v245[0] = v123;
  v245[1] = v124;
  v246 = v125 & 1 & v138;
  v247 = v126;
  sub_48728(v167, v162);
  v127 = (*(v159 + 80) + 16) & ~*(v159 + 80);
  v128 = swift_allocObject();
  sub_4C3CC(v162, (v128 + v127));
  v130 = &v270;
  sub_62174(v151, v128, &type metadata for Text, &protocol witness table for Text);

  sub_23BF4(v129);
  v131 = v273;
  v132 = 64;
  memcpy(v273, v130, sizeof(v273));
  v141 = v244;
  memcpy(v244, v273, sizeof(v244));
  v133 = *(v167 + 112);
  v134 = *(v167 + 120);

  v242 = v133;
  v243 = v134;
  sub_1A88(&qword_91448, &qword_7F710);
  sub_7CAE4();
  v137 = v241;

  v136 = sub_1A88(&qword_91DB0, &unk_80688);
  v139 = sub_4CD8C();
  v25 = sub_3FCB0(v136);
  v140 = &v39;
  v39 = 0;
  LOBYTE(v40) = v135;
  v41 = 0;
  LOBYTE(v42) = v135;
  v43 = v25;
  v44 = v26;
  v45 = v136;
  v46 = v139;
  v142 = &v271;
  sub_7C8F4();
  sub_4CE30(v141);
  v143 = __dst;
  v144 = 176;
  memcpy(__dst, v142, sizeof(__dst));
  v147 = v240;
  memcpy(v240, __dst, sizeof(v240));
  v145 = sub_1A88(&qword_91DC0, &qword_80698);
  v146 = sub_4CE90();
  sub_1991C(v147, v145, v272);
  sub_4CE30(v147);
  sub_7D804();
  v148 = sub_7D7E4();
  v149 = v27;
  if (v27)
  {
    v101 = v148;
    v102 = v149;
    v88 = v149;
    v60 = v148;
    v218 = v148;
    v219 = v149;
    (*(v153 + 8))(v156, v152);

    v214 = v60;
    v215 = v88;
    v210 = sub_7C6E4();
    v211 = v28;
    v212 = v29;
    v213 = v30;
    v62 = v210;
    v63 = v28;
    v64 = v29;
    v65 = v30;
    v61 = sub_7C634();
    v206 = v62;
    v207 = v63;
    v77 = 1;
    v208 = v64 & 1;
    v209 = v65;
    v202 = sub_7C6C4();
    v203 = v31;
    v204 = v32;
    v205 = v33;
    v67 = v202;
    v68 = v31;
    v66 = v32;
    v69 = v33;

    sub_209FC(v62, v63, v64 & 1);

    v201 = sub_45EB8();
    v197 = v67;
    v198 = v68;
    v199 = v66 & 1 & v77;
    v200 = v69;
    v193 = sub_7C6B4();
    v194 = v34;
    v195 = v35;
    v196 = v36;
    v70 = v193;
    v71 = v34;
    v72 = v35;
    v73 = v36;
    sub_209FC(v67, v68, v66 & 1);

    v74 = v190;
    v190[0] = v70;
    v190[1] = v71;
    v191 = v72 & 1 & v77;
    v192 = v73;
    v87 = &v216;
    v83 = &type metadata for Text;
    v84 = &protocol witness table for Text;
    sub_1991C(v190, &type metadata for Text, &v216);
    sub_23BF4(v74);
    v75 = v216;
    v76 = v217;
    v78 = *(&v217 + 1);
    sub_20C1C(v216, *(&v216 + 1), v217 & 1);

    v79 = &v185;
    v185 = v75;
    v186 = v76 & 1 & v77;
    v187 = v78;
    v86 = &v188;
    sub_1991C(&v185, v83, &v188);
    sub_23BF4(v79);
    v81 = v188;
    v80 = v189;
    v82 = *(&v189 + 1);
    sub_20C1C(v188, *(&v188 + 1), v189 & 1);

    v85 = &v178;
    v178 = v81;
    v179 = v80 & 1;
    v180 = v82;
    sub_4E680(&v178, v83, &v181);
    sub_4D120(v85);
    v89 = v181;
    v90 = v182;
    v91 = v183;
    v92 = v184;
    sub_4CF34(v181, v182, v183, v184);
    v236 = v89;
    v237 = v90;
    v238 = v91;
    v239 = v92;
    sub_23BF4(v86);
    sub_23BF4(v87);

    v97 = v89;
    v98 = v90;
    v99 = v91;
    v100 = v92;
  }

  else
  {
    (*(v153 + 8))(v156, v152);
    memset(v231, 0, sizeof(v231));
    sub_4E680(v231, &type metadata for Text, &v232);
    v93 = v232;
    v94 = v233;
    v95 = v234;
    v96 = v235;
    sub_4CF34(v232, v233, v234, v235);
    v236 = v93;
    v237 = v94;
    v238 = v95;
    v239 = v96;
    v97 = v93;
    v98 = v94;
    v99 = v95;
    v100 = v96;
  }

  v51 = v100;
  v50 = v99;
  v49 = v98;
  v48 = v97;
  v227 = sub_7CB84();
  v228 = v37 & 1;
  v52 = &type metadata for Spacer;
  v53 = &protocol witness table for Spacer;
  sub_1991C(&v227, &type metadata for Spacer, &v229);
  v59 = v272;
  v58 = v225;
  sub_4CF90(v272, v225);
  v56 = v226;
  v226[0] = v58;
  v57 = v224;
  v224[0] = v48;
  v224[1] = v49;
  v224[2] = v50;
  v224[3] = v51;
  v226[1] = v224;
  v222 = v229;
  v223 = v230;
  v226[2] = &v222;
  v54 = v221;
  v221[0] = v145;
  v221[1] = sub_1A88(&qword_91DD0, &qword_806A0);
  v221[2] = v52;
  v55 = v220;
  v220[0] = v146;
  v220[1] = sub_4D08C();
  v220[2] = v53;
  sub_4E6CC(v56, 3uLL, v54, v150);
  sub_4D120(v57);
  sub_4CE30(v58);
  sub_4D120(&v236);
  sub_4CE30(v59);
}

uint64_t sub_45E40()
{
  v1 = sub_7C5D4();
  sub_62800();

  return sub_7C644();
}

uint64_t sub_45ED0(uint64_t a1, double a2, double a3)
{
  *&v10[9] = a2;
  *&v10[10] = a3;
  v10[8] = a1;
  v4 = *(a1 + 112);
  v5 = *(a1 + 120);

  v10[5] = v4;
  v10[6] = v5;
  sub_1A88(&qword_91448, &qword_7F710);
  sub_7CAE4();

  v10[3] = v10[4];
  *&v10[2] = a2;
  sub_275DC();
  sub_7D744();
  v8 = *(a1 + 112);
  v9 = *(a1 + 120);

  v10[0] = v8;
  v10[1] = v9;
  sub_7CAF4();
  sub_26D50(v10);
}

uint64_t type metadata accessor for RenderedGlyphView(uint64_t a1)
{
  v2 = qword_91CA0;
  if (!qword_91CA0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_46198()
{
  v2 = qword_91A70;
  if (!qword_91A70)
  {
    type metadata accessor for RenderedGlyphView(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91A70);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_46218(uint64_t a1)
{
  v3 = *(type metadata accessor for RenderedGlyphView(0) + 36);
  sub_1A88(&qword_91A78, &qword_7FFE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_7BEF4();
    (*(*(v1 - 8) + 8))(a1 + v3);
  }

  else
  {
  }

  return a1;
}

unint64_t sub_462E8()
{
  v2 = qword_91A80;
  if (!qword_91A80)
  {
    sub_B24C(&qword_91A48, &qword_7FFB8);
    sub_46198();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91A80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4638C()
{
  v2 = qword_91A88;
  if (!qword_91A88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91A88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_46404()
{
  v2 = qword_91A90;
  if (!qword_91A90)
  {
    sub_B24C(&qword_91A50, &qword_7FFC0);
    sub_462E8();
    sub_464AC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91A90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_464AC()
{
  v2 = qword_91A98;
  if (!qword_91A98)
  {
    sub_B24C(&qword_91AA0, &qword_7FFE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91A98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_46534(double a1)
{
  v3 = qword_91AA8;
  if (!qword_91AA8)
  {
    sub_7C3B4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91AA8);
    return WitnessTable;
  }

  return v3;
}

uint64_t type metadata accessor for GlyphPopoverView(uint64_t a1)
{
  v2 = qword_91BE0;
  if (!qword_91BE0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_466D8()
{
  v2 = qword_91AB8;
  if (!qword_91AB8)
  {
    type metadata accessor for GlyphPopoverView(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91AB8);
    return WitnessTable;
  }

  return v2;
}

void *sub_46760()
{
  v2 = *(v0 + 8);
  v2;
  return v2;
}

void *sub_4679C@<X0>(uint64_t a1@<X8>)
{
  v7 = a1;
  v8 = sub_1A88(&qword_91AD8, &qword_80090);
  v5 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v1 = (&v4 - v5);
  v9 = (&v4 - v5);
  v2 = type metadata accessor for RenderedGlyphView(0);
  sub_48DAC((v6 + *(v2 + 36)), v1);
  sub_7BF04();
  return sub_48E80(v9);
}

void *sub_46894(void *a1)
{
  v8 = a1;
  v6 = (*(*(sub_1A88(&qword_91AD8, &qword_80090) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v7 = (&v5 - v6);
  sub_48DAC(v2, (&v5 - v6));
  v3 = type metadata accessor for RenderedGlyphView(0);
  sub_48F1C(v7, (v1 + *(v3 + 36)));
  return sub_48E80(v8);
}

uint64_t sub_46944@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v7 = sub_49698;
  v19 = 0;
  v18 = 0;
  v12 = sub_1A88(&qword_91B48, &qword_800E0);
  v5 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v14 = &v4 - v5;
  v6 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v4 - v5);
  v15 = &v4 - v6;
  v19 = &v4 - v6;
  v18 = v1;
  v8 = &v16;
  v17 = v1;
  v9 = sub_1A88(&qword_91B50, &qword_800E8);
  v10 = sub_496A0();
  sub_44450(v9);
  sub_7CB94();
  v13 = sub_497CC();
  sub_1991C(v14, v12, v15);
  sub_49854(v14);
  sub_498E0(v15, v14);
  sub_1991C(v14, v12, v11);
  sub_49854(v14);
  return sub_49854(v15);
}

uint64_t sub_46AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v30 = a1;
  v17 = sub_4B610;
  v43 = 0;
  v42 = 0;
  v31 = 0;
  v18 = (*(*(sub_7C294() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v19 = &v8 - v18;
  v3 = type metadata accessor for RenderedGlyphView(v2);
  v20 = *(v3 - 8);
  v21 = v20;
  v22 = *(v20 + 64);
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v24 = &v8 - v23;
  v25 = sub_1A88(&qword_91B68, &qword_800F0);
  v26 = *(v25 - 8);
  v27 = v25 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v25);
  v29 = &v8 - v28;
  v32 = sub_1A88(&qword_91B50, &qword_800E8);
  v34 = *(*(v32 - 8) + 64);
  v33 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v31);
  v35 = &v8 - v33;
  v36 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v37 = &v8 - v36;
  v43 = &v8 - v36;
  v42 = v5;
  v38 = sub_7D184();
  v39 = sub_7D174();
  v40 = sub_7D154();
  v41 = v6;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_4850C(v30, v24);
  v9 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v10 = swift_allocObject();
  sub_4B4D0(v24, v10 + v9);
  v11 = sub_4754();
  sub_47740(v19);
  sub_4754();
  sub_7CB64();
  v12 = *(v30 + 32);
  v13 = *(v30 + 40);
  v14 = sub_49744();
  sub_3FCB0(v25);
  sub_7C8E4();
  (*(v26 + 8))(v29, v25);
  v15 = sub_496A0();
  sub_1991C(v35, v32, v37);
  sub_4B698(v35);
  sub_4B700(v37, v35);
  sub_1991C(v35, v32, v16);
  sub_4B698(v35);
  sub_4B698(v37);
}

uint64_t sub_46F30(uint64_t *a1, uint64_t a2, double a3, double a4)
{
  v9 = a2;
  v10 = a4;
  v11 = a3;
  v12 = a1;
  v13 = 0;
  v21 = a1;
  v19 = a3;
  v20 = a4;
  v18 = a2;
  v14 = sub_7D184();
  v15 = sub_7D174();
  v16 = sub_7D154();
  v17 = v4;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = *v12;
  v6[1] = v7;

  v8 = v6;
  __chkstk_darwin(v6);
  sub_7C104();
}

uint64_t sub_470C0(CGContext *a1, uint64_t a2, double a3, double a4)
{
  v44 = a1;
  v47 = a2;
  v45 = a3;
  v46 = a4;
  v64 = 0;
  v63 = 0;
  v61 = 0.0;
  v62 = 0;
  memset(__b, 0, sizeof(__b));
  v41 = sub_1A88(&qword_91AD8, &qword_80090);
  v42 = (*(*(v41 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v41);
  v43 = (&v24 - v42);
  v48 = 0;
  v49 = sub_7BEF4();
  v50 = *(v49 - 8);
  v51 = v49 - 8;
  v52 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v48);
  v53 = &v24 - v52;
  v64 = v5;
  v63 = v6;
  v61 = v4;
  v62 = v7;
  v54 = sub_7D184();
  v55 = sub_7D174();
  v56 = sub_7D154();
  v57 = v8;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = v43;
  v10 = type metadata accessor for RenderedGlyphView(0);
  sub_48DAC((v47 + *(v10 + 36)), v9);
  sub_7BF04();
  sub_48E80(v43);
  if ((*(v50 + 88))(v53, v49) == enum case for ColorScheme.dark(_:))
  {
    v39 = [objc_opt_self() whiteColor];
    v40 = [v39 CGColor];

    CGContextSetFillColorWithColor(v44, v40);
  }

  else
  {
    v37 = [objc_opt_self() blackColor];
    v38 = [v37 CGColor];

    CGContextSetFillColorWithColor(v44, v38);
    (*(v50 + 8))(v53, v49);
  }

  v24 = 1.0;
  v60.a = 1.0;
  v60.b = 0.0;
  v60.c = 0.0;
  v60.d = 1.0;
  v60.tx = 0.0;
  v60.ty = 0.0;
  CGContextSetTextMatrix(v44, &v60);
  sub_47630(v65, v24, -1.0);
  v25 = __b;
  v27 = 48;
  memcpy(__b, v65, sizeof(__b));
  v11 = (v45 - *(v47 + 32)) / 2.0;
  v26 = &v66;
  sub_4768C(&v66.a, v11, -v46);
  v28 = v66;
  memcpy(v25, v26, v27);
  v58 = v28;
  CGContextConcatCTM(v44, &v58);
  v36 = *(v47 + 8);
  v36;
  v33 = 1;
  v29 = &type metadata for UInt16;
  v12 = sub_7D714();
  v14 = v13;
  v15 = v29;
  *v14 = *v47;
  sub_71DDC(v12, v15);
  v35 = v16;
  v30 = type metadata accessor for CGPoint(0);
  v17 = sub_7D714();
  v19 = v18;
  v20 = v30;
  v21 = *(v47 + 24);
  *v19 = *(v47 + 16);
  v19[1] = v21;
  sub_71DDC(v17, v20);
  v34 = v22;
  v31 = (v35 + 32);

  v32 = v34 + 2;

  CTFontDrawGlyphs(v36, v31, v32, v33, v44);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

CGFloat sub_47630@<D0>(CGFloat *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>)
{
  CGAffineTransformMakeScale(&v9, a2, a3);
  b = v9.b;
  c = v9.c;
  d = v9.d;
  tx = v9.tx;
  result = v9.ty;
  *a1 = v9.a;
  a1[1] = b;
  a1[2] = c;
  a1[3] = d;
  a1[4] = tx;
  a1[5] = result;
  return result;
}

CGFloat sub_4768C@<D0>(CGFloat *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>)
{
  memcpy(&__dst, v3, sizeof(__dst));
  v13 = __dst;
  CGAffineTransformTranslate(&v12, &v13, a2, a3);
  b = v12.b;
  c = v12.c;
  d = v12.d;
  v7 = v12.tx;
  result = v12.ty;
  *a1 = v12.a;
  a1[1] = b;
  a1[2] = c;
  a1[3] = d;
  a1[4] = v7;
  a1[5] = result;
  return result;
}

uint64_t sub_47740@<X0>(uint64_t a1@<X8>)
{
  v3 = enum case for ColorRenderingMode.nonLinear(_:);
  v1 = sub_7C294();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

void sub_477F8(CGGlyph a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v53 = 0;
  v51 = 0.0;
  v52 = 0.0;
  v49 = 0u;
  v50 = 0u;
  width = 0.0;
  height = 0.0;
  v43 = 0.0;
  memset(&__b, 0, sizeof(__b));
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v37 = 0.0;
  v38 = 0.0;
  memset(&__dst, 0, sizeof(__dst));
  v54 = a4;
  v55 = a5;
  v56 = a6;
  v57 = a7;
  *&v59[6] = a1;
  *&v59[7] = a2;
  a2;
  PathForGlyph = CTFontCreatePathForGlyph(a2, a1, 0);

  if (PathForGlyph)
  {
    v53 = PathForGlyph;
    v51 = a6;
    v52 = a7;
    PathBoundingBox = CGPathGetPathBoundingBox(PathForGlyph);
    *&v49 = PathBoundingBox.origin.x;
    *(&v49 + 1) = *&PathBoundingBox.origin.y;
    *&v50 = PathBoundingBox.size.width;
    *(&v50 + 1) = *&PathBoundingBox.size.height;
    width = PathBoundingBox.size.width;
    height = PathBoundingBox.size.height;
    v45 = a7 / PathBoundingBox.size.height;
    v44 = a6 / PathBoundingBox.size.width;
    sub_275DC();
    sub_7D754();
    v43 = 0.8 * v46;
    sub_47630(v58, 0.8 * v46, -(0.8 * v46));
    memcpy(&__b, v58, sizeof(__b));
    v27 = CGPathCreateCopyByTransformingPath(PathForGlyph, &__b);
    if (v27)
    {
      v41 = v27;
      v77 = CGPathGetPathBoundingBox(v27);
      *&v39 = v77.origin.x;
      *(&v39 + 1) = *&v77.origin.y;
      *&v40 = v77.size.width;
      *(&v40 + 1) = *&v77.size.height;
      v37 = v77.size.width;
      v38 = v77.size.height;
      sub_47D24(v59, (a6 - v77.size.width) / 2.0 - v77.origin.x, (a7 - v77.size.height) / 2.0 - v77.origin.y);
      memcpy(&__dst, v59, sizeof(__dst));
      if (CGPathCreateCopyByTransformingPath(v27, &__dst))
      {
        sub_7C694();
        v18 = v59[8];
        v19 = v59[9];
        v20 = v59[10];
        v21 = v59[11];
        v17 = v60;

        v22 = v18;
        v23 = v19;
        v24 = v20;
        v25 = v21;
        v26 = v17;
      }

      else
      {
        sub_7C684();
        v13 = v61;
        v14 = v62;
        v15 = v63;
        v16 = v64;
        v12 = v65;

        v22 = v13;
        v23 = v14;
        v24 = v15;
        v25 = v16;
        v26 = v12;
      }
    }

    else
    {
      sub_7C684();
      v8 = v66;
      v9 = v67;
      v10 = v68;
      v11 = v69;
      v7 = v70;

      v22 = v8;
      v23 = v9;
      v24 = v10;
      v25 = v11;
      v26 = v7;
    }
  }

  else
  {
    sub_7C684();
    v22 = v71;
    v23 = v72;
    v24 = v73;
    v25 = v74;
    v26 = v75;
  }

  *a3 = v22;
  *(a3 + 8) = v23;
  *(a3 + 16) = v24;
  *(a3 + 24) = v25;
  *(a3 + 32) = v26;
}

CGFloat sub_47D24@<D0>(CGFloat *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>)
{
  CGAffineTransformMakeTranslation(&v9, a2, a3);
  b = v9.b;
  c = v9.c;
  d = v9.d;
  tx = v9.tx;
  result = v9.ty;
  *a1 = v9.a;
  a1[1] = b;
  a1[2] = c;
  a1[3] = d;
  a1[4] = tx;
  a1[5] = result;
  return result;
}

uint64_t sub_47D80@<X0>(uint64_t a1@<X8>)
{
  v3 = enum case for LayoutDirectionBehavior.fixed(_:);
  v1 = sub_7C4E4();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

void (*sub_47F28(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = sub_17EB8(0x28uLL, 3860);
  *a1 = v2;
  v2[4] = sub_7BE44();
  return sub_47FA8;
}

void sub_47FA8(void (***a1)(void *, uint64_t), char a2)
{
  v2 = *a1;
  if (a2)
  {
    v2[4](v2, 1);
  }

  else
  {
    v2[4](v2, 0);
  }

  free(v2);
}

uint64_t sub_48104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a2;
  v7 = a1;
  v5[1] = 0;
  v13 = sub_7C614();
  v9 = *(v13 - 8);
  v10 = v13 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v12 = v5 - v6;
  v16 = sub_7C244();
  v14 = *(v16 - 8);
  v15 = v16 - 8;
  v8 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v16);
  v17 = v5 - v8;
  (*(v14 + 16))(v5 - v8, v3);
  sub_7C1F4();
  (*(v9 + 32))(v11, v12, v13);
  return (*(v14 + 8))(v17, v16);
}

uint64_t sub_48294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a2;
  v7 = a1;
  v5[1] = 0;
  v13 = sub_7BEF4();
  v9 = *(v13 - 8);
  v10 = v13 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v12 = v5 - v6;
  v16 = sub_7C244();
  v14 = *(v16 - 8);
  v15 = v16 - 8;
  v8 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v16);
  v17 = v5 - v8;
  (*(v14 + 16))(v5 - v8, v3);
  sub_7C1C4();
  (*(v9 + 32))(v11, v12, v13);
  return (*(v14 + 8))(v17, v16);
}

uint64_t sub_4843C(uint64_t a1, double a2)
{
  v5 = a1;
  v2 = sub_7BEF4();
  v7 = *(v2 - 8);
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v2);
  v8 = &v5 - v6;
  (*(v7 + 16))(v3);
  return sub_7C1D4();
}

uint64_t sub_4850C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v5 = *(a1 + 8);
  v5;
  *(a2 + 8) = v5;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  v7 = *(type metadata accessor for RenderedGlyphView(0) + 36);
  sub_1A88(&qword_91A78, &qword_7FFE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_7BEF4();
    (*(*(v2 - 8) + 16))();
  }

  else
  {
    v4 = *(a1 + v7);

    *(a2 + v7) = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

unint64_t sub_486B0()
{
  v2 = qword_91AC0;
  if (!qword_91AC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91AC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_48728(uint64_t a1, uint64_t a2)
{
  v9 = *a1;
  *a1;
  *a2 = v9;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  v10 = *(a1 + 88);

  *(a2 + 88) = v10;
  v11 = *(a1 + 96);

  *(a2 + 96) = v11;
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 112) = *(a1 + 112);
  v13 = *(a1 + 120);

  *(a2 + 120) = v13;
  v14 = type metadata accessor for GlyphPopoverView(0);
  v15 = *(v14 + 36);
  sub_1A88(&qword_91AC8, &unk_80078);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_7C614();
    (*(*(v2 - 8) + 16))();
  }

  else
  {
    v8 = *(a1 + v15);

    *(a2 + v15) = v8;
  }

  swift_storeEnumTagMultiPayload();
  v6 = (a2 + *(v14 + 40));
  v7 = (a1 + *(v14 + 40));
  sub_1A88(&qword_91A78, &qword_7FFE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_7BEF4();
    (*(*(v3 - 8) + 16))(v6, v7);
  }

  else
  {
    v5 = *v7;

    *v6 = v5;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

id *sub_489CC(id *a1)
{

  v5 = type metadata accessor for GlyphPopoverView(0);
  v6 = *(v5 + 36);
  sub_1A88(&qword_91AC8, &unk_80078);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_7C614();
    (*(*(v1 - 8) + 8))(a1 + v6);
  }

  else
  {
  }

  v4 = a1 + *(v5 + 40);
  sub_1A88(&qword_91A78, &qword_7FFE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_7BEF4();
    (*(*(v2 - 8) + 8))(v4);
  }

  else
  {
  }

  return a1;
}

void *sub_48B50(uint64_t *a1, void *a2)
{
  sub_1A88(&qword_91AC8, &unk_80078);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_7C614();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;

    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

void *sub_48C24(void *a1)
{
  sub_1A88(&qword_91AC8, &unk_80078);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_7C614();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

void *sub_48CC0(void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_48C24(a2);
    v4 = sub_1A88(&qword_91AC8, &unk_80078);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_7C614();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

void *sub_48DAC(uint64_t *a1, void *a2)
{
  sub_1A88(&qword_91A78, &qword_7FFE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_7BEF4();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;

    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

void *sub_48E80(void *a1)
{
  sub_1A88(&qword_91A78, &qword_7FFE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_7BEF4();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

void *sub_48F1C(void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_48E80(a2);
    v4 = sub_1A88(&qword_91A78, &qword_7FFE0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_7BEF4();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

unint64_t sub_49010()
{
  v2 = qword_91B00;
  if (!qword_91B00)
  {
    sub_B24C(&qword_91AF8, &qword_800B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91B00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_49098()
{
  v2 = qword_91B08;
  if (!qword_91B08)
  {
    sub_B24C(&qword_91AE0, &qword_80098);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91B08);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_49120(uint64_t a1)
{
  v3 = *(sub_1A88(&qword_91B10, &qword_800B8) + 44);
  v1 = sub_1A88(&qword_91B18, &qword_800C0);
  (*(*(v1 - 8) + 8))();
  v5 = *(sub_1A88(&qword_91B20, &qword_800C8) + 48);
  v6 = sub_1A88(&qword_91B28, &qword_800D0);
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(a1 + v3 + v5, 1))
  {
    (*(v7 + 8))(a1 + v3 + v5, v6);
  }

  return a1;
}

unint64_t sub_49274()
{
  v2 = qword_91B30;
  if (!qword_91B30)
  {
    sub_B24C(&qword_91AE8, &qword_800A0);
    sub_49098();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91B30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_49318()
{
  v2 = qword_91B38;
  if (!qword_91B38)
  {
    sub_B24C(&qword_91AF0, &qword_800A8);
    sub_49274();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91B38);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_493BC(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v8 = *(sub_1A88(&qword_91B10, &qword_800B8) + 44);
  v2 = sub_1A88(&qword_91B18, &qword_800C0);
  (*(*(v2 - 8) + 16))(a2 + v8);
  v10 = *(sub_1A88(&qword_91B20, &qword_800C8) + 48);
  v11 = sub_1A88(&qword_91B28, &qword_800D0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a1 + v8 + v10, 1))
  {
    v3 = sub_1A88(&qword_91B40, &qword_800D8);
    memcpy((a2 + v8 + v10), (a1 + v8 + v10), *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v12 + 16))();
    (*(v12 + 56))(a2 + v8 + v10, 0, 1, v11);
  }

  v4 = sub_1A88(&qword_91AE8, &qword_800A0);
  memcpy((a2 + *(v4 + 36)), (a1 + *(v4 + 36)), 0x70uLL);
  v5 = sub_1A88(&qword_91AF0, &qword_800A8);
  memcpy((a2 + *(v5 + 36)), (a1 + *(v5 + 36)), 0x29uLL);
  return a2;
}

unint64_t sub_496A0()
{
  v2 = qword_91B58;
  if (!qword_91B58)
  {
    sub_B24C(&qword_91B50, &qword_800E8);
    sub_49744();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91B58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_49744()
{
  v2 = qword_91B60;
  if (!qword_91B60)
  {
    sub_B24C(&qword_91B68, &qword_800F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91B60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_497CC()
{
  v2 = qword_91B70;
  if (!qword_91B70)
  {
    sub_B24C(&qword_91B48, &qword_800E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91B70);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_49854(uint64_t a1)
{
  v3 = *(sub_1A88(&qword_91B78, &qword_800F8) + 44);
  v1 = sub_1A88(&qword_91B68, &qword_800F0);
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

uint64_t sub_498E0(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v5 = *(sub_1A88(&qword_91B78, &qword_800F8) + 44);
  v2 = sub_1A88(&qword_91B68, &qword_800F0);
  (*(*(v2 - 8) + 16))();
  v3 = sub_1A88(&qword_91B50, &qword_800E8);
  memcpy((a2 + v5 + *(v3 + 36)), (a1 + v5 + *(v3 + 36)), 0x30uLL);
  return a2;
}

unint64_t sub_499D4()
{
  v2 = qword_91B80;
  if (!qword_91B80)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91B80);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_49A80(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_49B98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_49DC4(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v7 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v7 = *a1;
    }

    return (v7 + 1);
  }

  else
  {
    v5 = sub_1A88(&qword_91AD0, &qword_80088);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(&a1[*(a3 + 36)], a2, v5);
    }

    else
    {
      v4 = sub_1A88(&qword_91AD8, &qword_80090);
      if (a2 == *(*(v4 - 8) + 84))
      {
        return (*(*(v4 - 8) + 48))(&a1[*(a3 + 40)], a2, v4);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return v6;
}

char *sub_49FB4(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = a2 - 1;
  }

  else
  {
    v4 = sub_1A88(&qword_91AD0, &qword_80088);
    if (a3 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 56))(&v5[*(a4 + 36)], a2, a2, v4);
    }

    else
    {
      result = sub_1A88(&qword_91AD8, &qword_80090);
      if (a3 == *(*(result - 1) + 84))
      {
        return (*(*(result - 1) + 56))(&v5[*(a4 + 40)], a2, a2, result);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

unint64_t sub_4A154(uint64_t a1)
{
  v8 = sub_4A2C0(319);
  if (v1 <= 0x3F)
  {
    v8 = sub_36DBC(319);
    if (v3 <= 0x3F)
    {
      v8 = sub_4A354(319, v2);
      if (v5 <= 0x3F)
      {
        v8 = sub_4A3F0(319, v4);
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v8;
}

unint64_t sub_4A2C0(uint64_t a1)
{
  v5 = qword_91BF0;
  if (!qword_91BF0)
  {
    v4 = sub_7D114();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_91BF0);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_4A354(uint64_t a1, double a2)
{
  v6 = qword_91BF8;
  if (!qword_91BF8)
  {
    sub_7C614();
    v5 = sub_7BF14();
    v6 = v5;
    if (!v2)
    {
      v3 = v5;
      atomic_store(v5, &qword_91BF8);
      return v3;
    }
  }

  return v6;
}

unint64_t sub_4A3F0(uint64_t a1, double a2)
{
  v6 = qword_91C00;
  if (!qword_91C00)
  {
    sub_7BEF4();
    v5 = sub_7BF14();
    v6 = v5;
    if (!v2)
    {
      v3 = v5;
      atomic_store(v5, &qword_91C00);
      return v3;
    }
  }

  return v6;
}

uint64_t sub_4A4BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_4A5D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_4A7F8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*(a1 + 8) < 0x100000000uLL)
    {
      v6 = *(a1 + 8);
    }

    return (v6 + 1);
  }

  else
  {
    v4 = sub_1A88(&qword_91AD8, &qword_80090);
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(a1 + *(a3 + 36), a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

uint64_t sub_4A944(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = a2 - 1;
  }

  else
  {
    result = sub_1A88(&qword_91AD8, &qword_80090);
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(v4 + *(a4 + 36), a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_4AA40(uint64_t a1)
{
  v6 = type metadata accessor for CTFont(319);
  if (v1 <= 0x3F)
  {
    v6 = type metadata accessor for CGPoint(319);
    if (v3 <= 0x3F)
    {
      v6 = sub_4A3F0(319, v2);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v6;
}

uint64_t sub_4AB70(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 8) < 0x100000000uLL)
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_4ACB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_4AE98()
{
  sub_B24C(&qword_91A60, &qword_7FFD0);
  sub_B24C(&qword_91AB0, &qword_7FFF0);
  sub_B24C(&qword_91A58, &qword_7FFC8);
  sub_B24C(&qword_91A50, &qword_7FFC0);
  sub_7C3B4();
  sub_46404();
  sub_46534(v0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for GlyphPopoverView(255);
  sub_466D8();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_4B08C()
{
  v2 = qword_91CE8;
  if (!qword_91CE8)
  {
    sub_B24C(&qword_91CF0, "^?");
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91CE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4B12C()
{
  v2 = qword_91CF8;
  if (!qword_91CF8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91CF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4B1F0()
{
  v2 = qword_91D00;
  if (!qword_91D00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91D00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4B284()
{
  v2 = qword_91D08;
  if (!qword_91D08)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91D08);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4B368()
{
  v6 = type metadata accessor for RenderedGlyphView(0);
  v1 = *(*(v6 - 8) + 80);
  v5 = (v1 + 16) & ~v1;

  v7 = *(v6 + 36);
  sub_1A88(&qword_91A78, &qword_7FFE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_7BEF4();
    (*(*(v2 - 8) + 8))(v4 + v5 + v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_4B4D0(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  v5 = *(type metadata accessor for RenderedGlyphView(0) + 36);
  v7 = sub_1A88(&qword_91A78, &qword_7FFE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_7BEF4();
    (*(*(v2 - 8) + 32))();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a2 + v5), (a1 + v5), *(*(v7 - 8) + 64));
  }

  return a2;
}

uint64_t sub_4B610(uint64_t *a1, double a2, double a3)
{
  v4 = type metadata accessor for RenderedGlyphView(0);
  v5 = v3 + ((*(*(v4 - 8) + 80) + 16) & ~*(*(v4 - 8) + 80));

  return sub_46F30(a1, v5, a2, a3);
}

uint64_t sub_4B698(uint64_t a1)
{
  v1 = sub_1A88(&qword_91B68, &qword_800F0);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_4B700(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A88(&qword_91B68, &qword_800F0);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = sub_1A88(&qword_91B50, &qword_800E8);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x30uLL);
  return a2;
}

unint64_t sub_4B7E4()
{
  v2 = qword_91D18;
  if (!qword_91D18)
  {
    sub_B24C(&qword_91D10, &qword_80610);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91D18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4B86C()
{
  v2 = qword_91D20;
  if (!qword_91D20)
  {
    sub_B24C(&qword_91B18, &qword_800C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91D20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4B8F4()
{
  v2 = qword_91D30;
  if (!qword_91D30)
  {
    sub_B24C(&qword_91D28, &qword_80618);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91D30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4B97C()
{
  v2 = qword_91D38;
  if (!qword_91D38)
  {
    sub_B24C(&qword_91B28, &qword_800D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91D38);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4BA04(uint64_t a1)
{
  v3 = sub_1A88(&qword_91B28, &qword_800D0);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_4BAB8(const void *a1, void *a2)
{
  v6 = sub_1A88(&qword_91B28, &qword_800D0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_1A88(&qword_91B40, &qword_800D8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_4BBEC(const void *a1, void *a2)
{
  v6 = sub_1A88(&qword_91B28, &qword_800D0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_1A88(&qword_91B40, &qword_800D8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_4BD20()
{
  v2 = qword_91D40;
  if (!qword_91D40)
  {
    sub_B24C(&qword_91B40, &qword_800D8);
    sub_4B97C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91D40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4BDC0()
{
  v2 = qword_91D50;
  if (!qword_91D50)
  {
    sub_B24C(&qword_91D48, &qword_80620);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91D50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4BE50()
{
  v2 = qword_91D60;
  if (!qword_91D60)
  {
    sub_B24C(&qword_91D58, &qword_80628);
    sub_4BEF4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91D60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4BEF4()
{
  v2 = qword_91D68;
  if (!qword_91D68)
  {
    sub_B24C(&qword_91D70, &qword_80630);
    sub_4BF8C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91D68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4BF8C()
{
  v2 = qword_91D78;
  if (!qword_91D78)
  {
    sub_B24C(&qword_91D80, &qword_80638);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91D78);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4C014(uint64_t a1)
{
  v3 = *(sub_1A88(&qword_91D88, &qword_80640) + 44);
  v1 = sub_1A88(&qword_91D70, &qword_80630);
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

uint64_t sub_4C0A0(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v5 = *(sub_1A88(&qword_91D88, &qword_80640) + 44);
  v2 = sub_1A88(&qword_91D70, &qword_80630);
  (*(*(v2 - 8) + 16))();
  v3 = sub_1A88(&qword_91D58, &qword_80628);
  memcpy((a2 + v5 + *(v3 + 36)), (a1 + v5 + *(v3 + 36)), 0x70uLL);
  return a2;
}

uint64_t sub_4C1AC()
{
  v8 = type metadata accessor for GlyphPopoverView(0);
  v1 = *(*(v8 - 8) + 80);
  v7 = (v1 + 16) & ~v1;

  v9 = *(v8 + 36);
  sub_1A88(&qword_91AC8, &unk_80078);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_7C614();
    (*(*(v2 - 8) + 8))(v6 + v7 + v9);
  }

  else
  {
  }

  v5 = v6 + v7 + *(v8 + 40);
  sub_1A88(&qword_91A78, &qword_7FFE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_7BEF4();
    (*(*(v3 - 8) + 8))(v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

char *sub_4C3CC(uint64_t a1, char *__dst)
{
  memcpy(__dst, a1, 0x50uLL);
  *(__dst + 5) = *(a1 + 80);
  *(__dst + 12) = *(a1 + 96);
  __dst[104] = *(a1 + 104);
  *(__dst + 7) = *(a1 + 112);
  v9 = type metadata accessor for GlyphPopoverView(0);
  v10 = *(v9 + 36);
  v12 = sub_1A88(&qword_91AC8, &unk_80078);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_7C614();
    (*(*(v2 - 8) + 32))();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(&__dst[v10], (a1 + v10), *(*(v12 - 8) + 64));
  }

  __dsta = &__dst[*(v9 + 40)];
  __src = (a1 + *(v9 + 40));
  v7 = sub_1A88(&qword_91A78, &qword_7FFE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_7BEF4();
    (*(*(v3 - 8) + 32))(__dsta, __src);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(__dsta, __src, *(*(v7 - 8) + 64));
  }

  return __dst;
}

uint64_t sub_4C5F4@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for GlyphPopoverView(0);
  v4 = v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));

  return sub_44BA4(a1, v4, a2);
}

unint64_t sub_4C674()
{
  v2 = qword_91D90;
  if (!qword_91D90)
  {
    sub_B24C(&qword_91D28, &qword_80618);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91D90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4C6FC(uint64_t a1)
{
  v1 = sub_1A88(&qword_91D70, &qword_80630);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_4C764(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A88(&qword_91D70, &qword_80630);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = sub_1A88(&qword_91D58, &qword_80628);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x70uLL);
  return a2;
}

unint64_t sub_4C81C()
{
  v2 = qword_91DA0;
  if (!qword_91DA0)
  {
    sub_B24C(&qword_91D98, &qword_80678);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91DA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4C8A4(uint64_t a1)
{
  sub_209FC(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

  if (*(a1 + 224))
  {
    sub_209FC(*(a1 + 200), *(a1 + 208), *(a1 + 216) & 1);
  }

  return a1;
}

uint64_t sub_4C93C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  sub_20C1C(v7, v8, v9 & 1);
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9 & 1;
  v10 = *(a1 + 48);

  *(a2 + 48) = v10;
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);

  *(a2 + 56) = v11;
  *(a2 + 64) = v12;
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);

  *(a2 + 72) = v13;
  *(a2 + 80) = v14;
  memcpy((a2 + 88), (a1 + 88), 0x70uLL);
  if (*(a1 + 224))
  {
    v3 = *(a1 + 200);
    v4 = *(a1 + 208);
    v5 = *(a1 + 216);
    sub_20C1C(v3, v4, v5 & 1);
    *(a2 + 200) = v3;
    *(a2 + 208) = v4;
    *(a2 + 216) = v5 & 1;
    v6 = *(a1 + 224);

    *(a2 + 224) = v6;
  }

  else
  {
    *(a2 + 200) = *(a1 + 200);
    *(a2 + 216) = *(a1 + 216);
  }

  result = a2;
  *(a2 + 232) = *(a1 + 232);
  *(a2 + 240) = *(a1 + 240);
  return result;
}

uint64_t sub_4CAF0()
{
  v8 = type metadata accessor for GlyphPopoverView(0);
  v1 = *(*(v8 - 8) + 80);
  v7 = (v1 + 16) & ~v1;

  v9 = *(v8 + 36);
  sub_1A88(&qword_91AC8, &unk_80078);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_7C614();
    (*(*(v2 - 8) + 8))(v6 + v7 + v9);
  }

  else
  {
  }

  v5 = v6 + v7 + *(v8 + 40);
  sub_1A88(&qword_91A78, &qword_7FFE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_7BEF4();
    (*(*(v3 - 8) + 8))(v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_4CD10(double a1, double a2)
{
  v3 = type metadata accessor for GlyphPopoverView(0);
  v4 = v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));

  return sub_45ED0(v4, a1, a2);
}

unint64_t sub_4CD8C()
{
  v2 = qword_91DB8;
  if (!qword_91DB8)
  {
    sub_B24C(&qword_91DB0, &unk_80688);
    sub_2C078();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91DB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4CE30(uint64_t a1)
{
  sub_209FC(*a1, *(a1 + 8), *(a1 + 16) & 1);

  return a1;
}

unint64_t sub_4CE90()
{
  v2 = qword_91DC8;
  if (!qword_91DC8)
  {
    sub_B24C(&qword_91DC0, &qword_80698);
    sub_4CD8C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91DC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4CF34(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_20C1C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_4CF90(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_20C1C(*a1, v4, v5 & 1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  v6 = *(a1 + 24);

  *(a2 + 24) = v6;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);

  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);

  *(a2 + 48) = v10;
  *(a2 + 56) = v11;
  memcpy((a2 + 64), (a1 + 64), 0x70uLL);
  return a2;
}

unint64_t sub_4D08C()
{
  v2 = qword_91DD8;
  if (!qword_91DD8)
  {
    sub_B24C(&qword_91DD0, &qword_806A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91DD8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4D120(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_209FC(*a1, *(a1 + 8), *(a1 + 16) & 1);
  }

  return a1;
}

unint64_t sub_4D180()
{
  v2 = qword_91DE8;
  if (!qword_91DE8)
  {
    sub_B24C(&qword_91DE0, &qword_806A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91DE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4D208(uint64_t a1)
{
  v7 = *(sub_1A88(&qword_91DF0, &qword_806B0) + 44);
  v6 = sub_1A88(&qword_91DF8, &qword_806B8);
  v8 = *(v6 + 48);
  sub_1A88(&qword_91E00, &qword_806C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = a1 + v7 + v8;

    v5 = v4 + *(type metadata accessor for RenderedGlyphView(0) + 36);
    sub_1A88(&qword_91A78, &qword_7FFE0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v1 = sub_7BEF4();
      (*(*(v1 - 8) + 8))(v5);
    }

    else
    {
    }
  }

  else
  {
  }

  v3 = a1 + v7 + *(v6 + 80);
  sub_209FC(*(v3 + 24), *(v3 + 32), *(v3 + 40) & 1);

  sub_209FC(*(v3 + 72), *(v3 + 80), *(v3 + 88) & 1);

  return a1;
}

uint64_t sub_4D410(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v33 = *(sub_1A88(&qword_91DF0, &qword_806B0) + 44);
  v2 = a2 + v33;
  *v2 = *(a1 + v33);
  *(v2 + 8) = *(a1 + v33 + 8);
  v34 = sub_1A88(&qword_91DF8, &qword_806B8);
  v35 = v34[12];
  sub_1A88(&qword_91E00, &qword_806C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = a1 + v33 + v35;
    v23 = a2 + v33 + v35;
    *v23 = *v24;
    v22 = *(v24 + 8);
    v22;
    *(v23 + 8) = v22;
    *(v23 + 16) = *(v24 + 16);
    *(v23 + 32) = *(v24 + 32);
    *(v23 + 40) = *(v24 + 40);
    v3 = type metadata accessor for RenderedGlyphView(0);
    v25 = (v23 + *(v3 + 36));
    v26 = (v24 + *(v3 + 36));
    sub_1A88(&qword_91A78, &qword_7FFE0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = sub_7BEF4();
      (*(*(v4 - 8) + 16))(v25, v26);
    }

    else
    {
      v21 = *v26;

      *v25 = v21;
    }

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v30 = a1 + v33 + v35;
    v28 = a2 + v33 + v35;
    *v28 = *v30;
    v27 = *(v30 + 8);
    v27;
    *(v28 + 8) = v27;
    v29 = *(v30 + 16);

    *(v28 + 16) = v29;
    *(v28 + 24) = *(v30 + 24);
    swift_storeEnumTagMultiPayload();
  }

  v5 = a2 + v33 + v34[16];
  v6 = a1 + v33 + v34[16];
  *v5 = *v6;
  *(v5 + 8) = *(v6 + 8);
  v7 = v34[20];
  v20 = a2 + v33 + v7;
  v19 = a1 + v33 + v7;
  *v20 = *v19;
  *(v20 + 16) = *(v19 + 16);
  v9 = *(v19 + 24);
  v10 = *(v19 + 32);
  v11 = *(v19 + 40);
  sub_20C1C(v9, v10, v11 & 1);
  *(v20 + 24) = v9;
  *(v20 + 32) = v10;
  *(v20 + 40) = v11 & 1;
  v12 = *(v19 + 48);

  *(v20 + 48) = v12;
  *(v20 + 56) = *(v19 + 56);
  *(v20 + 64) = *(v19 + 64);
  v13 = *(v19 + 72);
  v14 = *(v19 + 80);
  v15 = *(v19 + 88);
  sub_20C1C(v13, v14, v15 & 1);
  *(v20 + 72) = v13;
  *(v20 + 80) = v14;
  *(v20 + 88) = v15 & 1;
  v16 = *(v19 + 96);

  *(v20 + 96) = v16;
  v17 = *(v19 + 104);

  *(v20 + 104) = v17;
  v18 = *(v19 + 112);

  result = a2;
  *(v20 + 112) = v18;
  *(v20 + 120) = *(v19 + 120);
  return result;
}

unint64_t sub_4D880()
{
  v2 = qword_91E18;
  if (!qword_91E18)
  {
    sub_B24C(&qword_91E10, &qword_806D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91E18);
    return WitnessTable;
  }

  return v2;
}

void *sub_4D908(void *a1, void *a2)
{
  v10 = sub_1A88(&qword_91E00, &qword_806C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a2 = *a1;
    a2[1] = a1[1];
    *(a2 + 1) = *(a1 + 1);
    a2[4] = a1[4];
    a2[5] = a1[5];
    v2 = type metadata accessor for RenderedGlyphView(0);
    __dst = a2 + *(v2 + 36);
    __src = a1 + *(v2 + 36);
    v7 = sub_1A88(&qword_91A78, &qword_7FFE0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v3 = sub_7BEF4();
      (*(*(v3 - 8) + 32))(__dst, __src);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(__dst, __src, *(*(v7 - 8) + 64));
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v10 - 8) + 64));
  }

  return a2;
}

unint64_t sub_4DAAC()
{
  v2 = qword_91E28;
  if (!qword_91E28)
  {
    sub_B24C(&qword_91E20, &qword_806D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91E28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4DB34()
{
  v2 = qword_91E38;
  if (!qword_91E38)
  {
    sub_B24C(&qword_91E30, &qword_806E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91E38);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4DBBC(uint64_t a1)
{
  sub_209FC(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

  sub_209FC(*(a1 + 72), *(a1 + 80), *(a1 + 88) & 1);

  return a1;
}

unint64_t sub_4DC28()
{
  v2 = qword_91E48;
  if (!qword_91E48)
  {
    sub_B24C(&qword_91E40, &qword_806E8);
    sub_4DB34();
    sub_38950();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91E48);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4DCD0(uint64_t a1)
{
  sub_209FC(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

  sub_209FC(*(a1 + 72), *(a1 + 80), *(a1 + 88) & 1);

  return a1;
}

unint64_t sub_4DD54()
{
  v2 = qword_91E58;
  if (!qword_91E58)
  {
    sub_B24C(&qword_91E50, &qword_806F8);
    sub_4DC28();
    sub_4DDFC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91E58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4DDFC()
{
  v2 = qword_91E60;
  if (!qword_91E60)
  {
    sub_B24C(&qword_91E68, &unk_80700);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91E60);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4DE84(uint64_t a1, uint64_t a2)
{
  sub_1A88(&qword_91E00, &qword_806C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a2 = *a1;
    v6 = *(a1 + 8);
    v6;
    *(a2 + 8) = v6;
    *(a2 + 16) = *(a1 + 16);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 40) = *(a1 + 40);
    v2 = type metadata accessor for RenderedGlyphView(0);
    v7 = (a2 + *(v2 + 36));
    v8 = (a1 + *(v2 + 36));
    sub_1A88(&qword_91A78, &qword_7FFE0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v3 = sub_7BEF4();
      (*(*(v3 - 8) + 16))(v7, v8);
    }

    else
    {
      v5 = *v8;

      *v7 = v5;
    }

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    *a2 = *a1;
    v9 = *(a1 + 8);
    v9;
    *(a2 + 8) = v9;
    v10 = *(a1 + 16);

    *(a2 + 16) = v10;
    *(a2 + 24) = *(a1 + 24);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_4E078(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_20C1C(v3, v4, v5 & 1);
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5 & 1;
  v6 = *(a1 + 48);

  *(a2 + 48) = v6;
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 64) = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  sub_20C1C(v7, v8, v9 & 1);
  *(a2 + 72) = v7;
  *(a2 + 80) = v8;
  *(a2 + 88) = v9 & 1;
  v10 = *(a1 + 96);

  *(a2 + 96) = v10;
  v11 = *(a1 + 104);

  *(a2 + 104) = v11;
  v13 = *(a1 + 112);

  result = a2;
  *(a2 + 112) = v13;
  *(a2 + 120) = *(a1 + 120);
  return result;
}

unint64_t sub_4E1D4()
{
  v2 = qword_91E70;
  if (!qword_91E70)
  {
    sub_B24C(&qword_91E08, &qword_806C8);
    sub_4D880();
    sub_46198();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91E70);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4E27C(uint64_t a1)
{
  sub_1A88(&qword_91E00, &qword_806C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v3 = a1 + *(type metadata accessor for RenderedGlyphView(0) + 36);
    sub_1A88(&qword_91A78, &qword_7FFE0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v1 = sub_7BEF4();
      (*(*(v1 - 8) + 8))(v3);
    }

    else
    {
    }
  }

  else
  {
  }

  return a1;
}

uint64_t sub_4E3D8(uint64_t a1)
{
  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    return sub_7CF84("%lld", 4uLL, 1);
  }

  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    return sub_7CF84("%d", 2uLL, 1);
  }

  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    return sub_7CF84("%llu", 4uLL, 1);
  }

  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    return sub_7CF84("%u", 2uLL, 1);
  }

  if (swift_dynamicCastMetatype())
  {
    return sub_7CF84("%f", 2uLL, 1);
  }

  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    return sub_7CF84("%lf", 3uLL, 1);
  }

  return sub_7CF84("%@", 2uLL, 1);
}

uint64_t *sub_4E6CC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a3;
  v26 = a2;
  v27 = a1;
  v28 = a4;
  v29 = a3 & 0xFFFFFFFFFFFFFFFELL;
  if (a2 == 1)
  {
    TupleTypeMetadata = *(v25 & 0xFFFFFFFFFFFFFFFELL);
    v24 = 0;
  }

  else
  {
    v20 = &v10;
    __chkstk_darwin(&v10);
    v21 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; ; i = v5 + 1)
    {
      v19 = i;
      if (i >= v26)
      {
        break;
      }

      v5 = v19;
      *&v21[8 * v19] = *((v25 & 0xFFFFFFFFFFFFFFFELL) + 8 * v19);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v24 = v6;
  }

  v15 = TupleTypeMetadata;
  v17 = *(*(TupleTypeMetadata - 8) + 64);
  v16 = &v10;
  v7.n128_f64[0] = __chkstk_darwin(&v10);
  v18 = &v10 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v8)
  {
    for (j = 0; ; j = v10)
    {
      v12 = j;
      v13 = *((v25 & 0xFFFFFFFFFFFFFFFELL) + 8 * j);
      v11 = v26 == 1 ? 0 : *(v15 + 16 * v12 + 32);
      (*(*(v13 - 8) + 16))(&v18[v11], *(v27 + 8 * v12), v7);
      v10 = v12 + 1;
      if (v12 + 1 == v26)
      {
        break;
      }
    }
  }

  sub_7CCF4();
  return v16;
}

uint64_t sub_4E948()
{
  type metadata accessor for FontSettingsModel(0);
  sub_1AC10();
  return sub_7C1A4();
}

int *sub_4E980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v28 = type metadata accessor for ListView(0);
  swift_getKeyPath();
  sub_7BF24();
  v22 = v28[6];
  sub_7BD04();
  sub_7D714();
  sub_B094();
  v5 = sub_7D214();
  v6 = sub_4F358(v5);
  v7 = (a4 + v22);
  *v7 = v6;
  v7[1] = v8;
  v23 = v28[7];
  v9 = sub_7CF84("", 0, 1);
  v11 = sub_4F700(v9, v10);
  v12 = (a4 + v23);
  *v12 = v11;
  v12[1] = v13;
  v12[2] = v14;
  v24 = v28[8];
  v15 = sub_2EFE0(0);
  v16 = a4 + v24;
  *v16 = v15 & 1;
  *(v16 + 1) = v17;
  v25 = v28[9];
  v18 = sub_26C54(0.0);
  result = v28;
  v20 = (a4 + v25);
  *v20 = v21;
  v20[1] = v18;
  *(a4 + v28[10]) = a3;
  return result;
}

uint64_t sub_4EB00()
{

  type metadata accessor for FontSettingsModel(0);
  sub_1AC10();
  v1 = sub_7C184();

  return v1;
}

uint64_t sub_4EB74()
{

  type metadata accessor for FontSettingsModel(0);
  sub_1AC10();
  v1 = sub_7C194();

  return v1;
}

uint64_t sub_4EBE8()
{
  v2 = *v0;

  return v2;
}

void *sub_4EC20@<X0>(uint64_t a1@<X8>)
{
  v7 = a1;
  v8 = sub_1A88(&qword_91E78, &qword_80710);
  v5 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v1 = (&v4 - v5);
  v9 = (&v4 - v5);
  v2 = type metadata accessor for ListView(0);
  sub_4ED54((v6 + *(v2 + 20)), v1);
  sub_7BF04();
  return sub_4EF58(v9);
}

uint64_t type metadata accessor for ListView(uint64_t a1)
{
  v2 = qword_92040;
  if (!qword_92040)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

void *sub_4ED54(uint64_t *a1, void *a2)
{
  sub_1A88(&qword_919F8, &qword_7FDE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1A88(&qword_91A00, &qword_7FDF0);
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(a1, 1))
    {
      v3 = sub_1A88(&qword_91E80, &qword_80718);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      v5 = *a1;

      *a2 = v5;
      v6 = a1[1];

      a2[1] = v6;
      v8 = a2 + *(v9 + 32);
      v7 = a1 + *(v9 + 32);
      v2 = sub_7CC54();
      (*(*(v2 - 8) + 16))(v8, v7);
      (*(v10 + 56))(a2, 0, 1, v9);
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v11 = *a1;

    *a2 = v11;
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

void *sub_4EF58(void *a1)
{
  sub_1A88(&qword_919F8, &qword_7FDE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A88(&qword_91A00, &qword_7FDF0);
    if (!(*(*(v4 - 8) + 48))(a1, 1))
    {

      v3 = a1 + *(v4 + 32);
      v1 = sub_7CC54();
      (*(*(v1 - 8) + 8))(v3);
    }
  }

  else
  {
  }

  return a1;
}

void *sub_4F0B0(void *a1)
{
  v8 = a1;
  v6 = (*(*(sub_1A88(&qword_91E78, &qword_80710) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v7 = (&v5 - v6);
  sub_4ED54(v2, (&v5 - v6));
  v3 = type metadata accessor for ListView(0);
  sub_4F160(v7, (v1 + *(v3 + 20)));
  return sub_4EF58(v8);
}

void *sub_4F160(void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_4EF58(a2);
    v9 = sub_1A88(&qword_919F8, &qword_7FDE8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = sub_1A88(&qword_91A00, &qword_7FDF0);
      v8 = *(v7 - 8);
      if ((*(v8 + 48))(a1, 1))
      {
        v3 = sub_1A88(&qword_91E80, &qword_80718);
        memcpy(a2, a1, *(*(v3 - 8) + 64));
      }

      else
      {
        *a2 = *a1;
        a2[1] = a1[1];
        v6 = a2 + *(v7 + 32);
        v5 = a1 + *(v7 + 32);
        v2 = sub_7CC54();
        (*(*(v2 - 8) + 32))(v6, v5);
        (*(v8 + 56))(a2, 0, 1, v7);
      }

      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v9 - 8) + 64));
    }
  }

  return a2;
}

uint64_t sub_4F358(uint64_t a1)
{

  sub_1A88(&qword_91E88, &qword_80720);
  sub_7CAD4();

  return v2;
}

uint64_t sub_4F3DC()
{
  type metadata accessor for ListView(0);

  sub_1A88(&qword_91E90, &qword_80728);
  sub_7CAE4();

  return v1;
}

uint64_t sub_4F478(uint64_t a1)
{
  v2 = (v1 + *(type metadata accessor for ListView(0) + 24));
  v4 = *v2;
  v5 = v2[1];

  v6[0] = v4;
  v6[1] = v5;

  sub_1A88(&qword_91E90, &qword_80728);
  sub_7CAF4();
  sub_4F54C(v6);
}

uint64_t sub_4F584()
{
  type metadata accessor for ListView(0);

  sub_1A88(&qword_91E90, &qword_80728);
  sub_7CB04();

  return v1;
}

uint64_t sub_4F638()
{
  v2 = *(v0 + *(type metadata accessor for ListView(0) + 24));

  return v2;
}

uint64_t sub_4F688(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for ListView(0) + 24));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_4F700(uint64_t a1, uint64_t a2)
{

  sub_7CAD4();

  return v3;
}

uint64_t sub_4F794()
{
  type metadata accessor for ListView(0);

  sub_1A88(&qword_91E98, &unk_80730);
  sub_7CAE4();

  return v1;
}

uint64_t sub_4F84C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(type metadata accessor for ListView(0) + 28));
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];

  v8[0] = v5;
  v8[1] = v6;
  v8[2] = v7;

  sub_1A88(&qword_91E98, &unk_80730);
  sub_7CAF4();
  sub_4F93C(v8);
}

uint64_t sub_4F974()
{
  type metadata accessor for ListView(0);

  sub_1A88(&qword_91E98, &unk_80730);
  sub_7CB04();

  return v1;
}

uint64_t sub_4FA44()
{
  v2 = *(v0 + *(type metadata accessor for ListView(0) + 28));

  return v2;
}

uint64_t sub_4FAA0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = (v3 + *(type metadata accessor for ListView(0) + 28));
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
}

uint64_t sub_4FB28()
{
  type metadata accessor for ListView(0);

  sub_1A88(&qword_91640, &qword_7FFB0);
  sub_7CAE4();

  return v1 & 1;
}

uint64_t sub_4FBB8(char a1)
{
  v2 = (v1 + *(type metadata accessor for ListView(0) + 32));
  v4 = *v2;
  v5 = *(v2 + 1);

  v6[0] = v4;
  v7 = v5;
  sub_1A88(&qword_91640, &qword_7FFB0);
  sub_7CAF4();
  sub_26D50(v6);
}

uint64_t sub_4FC64()
{
  type metadata accessor for ListView(0);

  sub_1A88(&qword_91640, &qword_7FFB0);
  sub_7CB04();

  return v1;
}

uint64_t sub_4FD0C()
{
  v2 = *(v0 + *(type metadata accessor for ListView(0) + 32));

  return v2 & 1;
}

uint64_t sub_4FD58(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for ListView(0) + 32);
  *v3 = a1;
  *(v3 + 8) = a2;
}

double sub_4FDB4()
{
  type metadata accessor for ListView(0);

  sub_1A88(&qword_91448, &qword_7F710);
  sub_7CAE4();

  return v1;
}

uint64_t sub_4FE40(double a1)
{
  v2 = (v1 + *(type metadata accessor for ListView(0) + 36));
  v4 = *v2;
  v5 = v2[1];

  v6[0] = v4;
  v6[1] = v5;
  sub_1A88(&qword_91448, &qword_7F710);
  sub_7CAF4();
  sub_26D50(v6);
}

double sub_4FEEC()
{
  type metadata accessor for ListView(0);

  sub_1A88(&qword_91448, &qword_7F710);
  sub_7CB04();

  return v1;
}

double sub_4FF90()
{
  v2 = *(v0 + *(type metadata accessor for ListView(0) + 36));

  return v2;
}

uint64_t sub_4FFD8(uint64_t a1, double a2)
{

  v3 = v2 + *(type metadata accessor for ListView(0) + 36);
  *v3 = a2;
  *(v3 + 8) = a1;
}

uint64_t sub_50054()
{
  v1 = type metadata accessor for ListView(0);
  if (*(v0 + *(v1 + 40)))
  {
    if (*(v0 + *(v1 + 40)) == 1)
    {
      sub_4EB00();
      sub_13FDC();

      type metadata accessor for FontProviderFamily(0);
      type metadata accessor for Family(0);
      sub_129FC();
      sub_128FC();
      sub_7D504();
      sub_4EB00();
      sub_13F40();

      type metadata accessor for FontAssetFamily(0);
      sub_1297C();
      sub_7D504();
      sub_1A88(&qword_90D38, &qword_7EC30);
      sub_50284();
      v3 = sub_7D244();

      return v3;
    }

    else
    {
      sub_4EB00();
      sub_14E70();

      type metadata accessor for FontAssetFamily(0);
      type metadata accessor for Family(0);
      sub_1297C();
      sub_128FC();
      v4 = sub_7D504();
    }
  }

  else
  {
    sub_4EB00();
    v4 = sub_148EC();
  }

  return v4;
}

unint64_t sub_50284()
{
  v2 = qword_91EA0;
  if (!qword_91EA0)
  {
    sub_B24C(&qword_90D38, &qword_7EC30);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91EA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_5030C()
{
  v1 = type metadata accessor for ListView(0);
  if (*(v0 + *(v1 + 40)))
  {
    if (*(v0 + *(v1 + 40)) == 1)
    {
      sub_4EB00();
      sub_13FDC();

      type metadata accessor for FontProviderFamily(0);
      type metadata accessor for Family(0);
      sub_129FC();
      sub_128FC();
      sub_7D504();
      sub_4EB00();
      sub_13F40();

      type metadata accessor for FontAssetFamily(0);
      sub_1297C();
      sub_7D504();
      sub_1A88(&qword_90D38, &qword_7EC30);
      sub_50284();
      v3 = sub_7D244();

      return v3;
    }

    else
    {
      sub_4EB00();
      sub_13F40();

      type metadata accessor for FontAssetFamily(0);
      type metadata accessor for Family(0);
      sub_1297C();
      sub_128FC();
      v4 = sub_7D504();
    }
  }

  else
  {
    type metadata accessor for Family(0);
    sub_7D714();
    sub_128FC();
    return sub_7D214();
  }

  return v4;
}

uint64_t sub_50550()
{
  v40 = 0;
  v53 = 0;
  v52 = 0;
  v34 = 0;
  v35 = sub_7CC54();
  v36 = *(v35 - 8);
  v37 = v36;
  __chkstk_darwin(v35 - 8);
  v38 = &v10 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1A88(&qword_91E78, &qword_80710);
  v39 = (*(*(v45 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v45 - 8);
  v1 = (&v10 - v39);
  v46 = (&v10 - v39);
  v41 = (*(*(sub_1A88(&qword_91E80, &qword_80718) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v40);
  v47 = &v10 - v41;
  v42 = &v10 - v41;
  v53 = v2;
  v44 = type metadata accessor for ListView(v3);
  sub_4ED54((v43 + *(v44 + 20)), v1);
  sub_7BF04();
  sub_4EF58(v46);
  v48 = sub_1A88(&qword_91A00, &qword_7FDF0);
  if ((*(*(v48 - 8) + 48))(v47, 1) == 1)
  {
    sub_50B80(v42);
    v33 = 2;
  }

  else
  {
    sub_7CBA4();
    sub_5131C(v42);
    v32 = sub_7CC44();
    (*(v37 + 8))(v38, v35);
    v33 = v32 & 1;
  }

  v51 = v33;
  if (v33 == 2)
  {
    v31 = 0;
  }

  else
  {
    v31 = v51;
  }

  if (v31)
  {
    v30 = sub_5030C();
  }

  else
  {
    v30 = sub_50054();
  }

  v50[6] = v30;
  v22 = type metadata accessor for Family(0);
  v23 = sub_1A88(&qword_90D38, &qword_7EC30);
  sub_50284();
  v52 = sub_7D134();
  v4 = (v43 + *(v44 + 28));
  v24 = *v4;
  v25 = v4[1];
  v26 = v4[2];

  v50[3] = v24;
  v50[4] = v25;
  v50[5] = v26;
  sub_1A88(&qword_91E98, &unk_80730);
  sub_7CAE4();
  v27 = v50[1];
  v28 = v50[2];

  v29 = sub_7CFB4();

  if (v29)
  {
    v15 = v34;
  }

  else
  {
    v5 = v34;
    v16 = v52;

    v49 = v16;
    v17 = &v10;
    __chkstk_darwin(&v10);
    v18 = &v10 - 4;
    *(&v10 - 2) = v6;
    v19 = sub_1A88(&qword_91EA8, &qword_80740);
    sub_51294();
    v7 = sub_7D554();
    v20 = v5;
    v21 = v7;
    if (v5)
    {
      __break(1u);
      goto LABEL_17;
    }

    v52 = v21;

    v15 = v20;
  }

  v8 = v15;
  v12 = v52;

  v50[0] = v12;
  v13 = sub_1A88(&qword_91EA8, &qword_80740);
  sub_511E0();
  v14 = sub_7D054();
  if (!v8)
  {
    v11 = v14;
    sub_B2C0(v50);
    sub_B2C0(&v52);
    return v11;
  }

LABEL_17:
  result = 0;
  __break(1u);
  return result;
}

void *sub_50B80(void *a1)
{
  v5 = sub_1A88(&qword_91A00, &qword_7FDF0);
  if (!(*(*(v5 - 8) + 48))(a1, 1))
  {

    v3 = a1 + *(v5 + 32);
    v1 = sub_7CC54();
    (*(*(v1 - 8) + 8))(v3);
  }

  return a1;
}

uint64_t sub_50C60(void *a1, uint64_t a2)
{
  v26 = 0;
  v25 = 0;
  v20 = *a1;
  v26 = *a1;
  v25 = a2;
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  v12 = v20[4];
  v13 = v20[5];

  swift_endAccess();
  v24[0] = v12;
  v24[1] = v13;
  v14 = type metadata accessor for ListView(0);
  v2 = (a2 + *(v14 + 28));
  v15 = *v2;
  v16 = v2[1];
  v17 = v2[2];

  v23[4] = v15;
  v23[5] = v16;
  v23[6] = v17;
  sub_1A88(&qword_91E98, &unk_80730);
  sub_7CAE4();

  v23[0] = v23[2];
  v23[1] = v23[3];
  sub_198A4();
  v18 = sub_7D464();
  sub_1F58(v23);
  sub_1F58(v24);

  if (v18)
  {
    v11 = 1;
  }

  else
  {
    swift_beginAccess();
    v5 = v20[9];
    v6 = v20[10];

    swift_endAccess();
    v22[0] = v5;
    v22[1] = v6;
    v3 = (a2 + *(v14 + 28));
    v7 = *v3;
    v8 = v3[1];
    v9 = v3[2];

    v21[4] = v7;
    v21[5] = v8;
    v21[6] = v9;
    sub_7CAE4();

    v21[0] = v21[2];
    v21[1] = v21[3];
    v10 = sub_7D464();
    sub_1F58(v21);
    sub_1F58(v22);
    v11 = v10;
  }

  return v11 & 1;
}

uint64_t sub_50FD0(uint64_t *a1, uint64_t *a2)
{
  v13 = 0;
  v12 = 0;
  v8 = *a1;
  v13 = *a1;
  v9 = *a2;
  v12 = *a2;
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  v3 = *(v8 + 32);
  v4 = *(v8 + 40);

  swift_endAccess();
  v11[0] = v3;
  v11[1] = v4;
  swift_beginAccess();
  v5 = *(v9 + 32);
  v6 = *(v9 + 40);

  swift_endAccess();
  v10[0] = v5;
  v10[1] = v6;
  sub_198A4();
  sub_7D454();
  sub_1F58(v10);
  sub_1F58(v11);
  type metadata accessor for ComparisonResult(0);
  sub_60EC4();
  v7 = sub_7D724();

  return v7 & 1;
}

unint64_t sub_511E0()
{
  v2 = qword_91EB0;
  if (!qword_91EB0)
  {
    sub_B24C(&qword_91EA8, &qword_80740);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91EB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_51294()
{
  v2 = qword_91EB8;
  if (!qword_91EB8)
  {
    sub_B24C(&qword_91EA8, &qword_80740);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91EB8);
    return WitnessTable;
  }

  return v2;
}

char *sub_5131C(char *a1)
{

  v3 = *(sub_1A88(&qword_91A00, &qword_7FDF0) + 32);
  v1 = sub_7CC54();
  (*(*(v1 - 8) + 8))(&a1[v3]);
  return a1;
}

uint64_t sub_513B0()
{
  v13 = 0;
  v5[1] = 0;
  v10 = sub_7CEF4();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v9 = v5 - v6;
  v13 = v0;
  v2 = type metadata accessor for ListView(v1);
  sub_79024(*(v0 + *(v2 + 40)), v9);
  v11 = sub_61F88(v9);
  v12 = v3;
  (*(v7 + 8))(v9, v10);
  return v11;
}

uint64_t sub_514D0@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v24 = sub_52D1C;
  v30 = &unk_807B8;
  v35 = &opaque type descriptor for <<opaque return type of View.refreshable(action:)>>;
  v55 = 0;
  v54 = 0;
  v50 = 0;
  v17 = 0;
  v14 = type metadata accessor for ListView(0);
  v8 = *(v14 - 8);
  v26 = v8;
  v27 = *(v8 + 64);
  v9 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v14);
  v29 = &v7 - v9;
  v33 = sub_1A88(&qword_91EC0, &qword_80748);
  v10 = (*(*(v33 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v33);
  v32 = &v7 - v10;
  v42 = sub_1A88(&qword_91EC8, &qword_80750);
  v36 = *(v42 - 8);
  v37 = v42 - 8;
  v11 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v42);
  v40 = &v7 - v11;
  v12 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v7 - v11);
  v41 = &v7 - v12;
  v55 = &v7 - v12;
  v54 = v1;
  v3 = sub_50550();
  v4 = v25;
  v13 = v3;
  type metadata accessor for Family(v17);
  v21 = sub_7D0E4();

  v5 = &v4[*(v14 + 24)];
  v15 = *v5;
  v16 = *(v5 + 1);

  v52 = v15;
  v53 = v16;
  sub_1A88(&qword_91E90, &qword_80728);
  sub_7CAE4();
  v19 = v51;

  v18 = sub_7BD04();
  sub_B094();
  v20 = sub_7D234();

  v50 = v21 == v20;
  v22 = &v45;
  v46 = v25;
  v47 = v21 == v20;
  v23 = sub_1A88(&qword_91ED0, &qword_80758);
  sub_52D2C();
  sub_7CA14();
  sub_598D0(v25, v29);
  v28 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v31 = swift_allocObject();
  sub_59F44(v29, (v31 + v28));
  v34 = sub_5A300();
  sub_7C7A4();

  sub_5A398(v32);
  v48 = v33;
  v49 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1991C(v40, v42, v41);
  v44 = *(v36 + 8);
  v43 = v36 + 8;
  v44(v40, v42);
  (*(v36 + 16))(v40, v41, v42);
  sub_1991C(v40, v42, v38);
  v44(v40, v42);
  return (v44)(v41, v42);
}

uint64_t sub_51A50@<X0>(char *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v153 = a2;
  v152 = a1;
  v92 = a3;
  v93 = a2;
  v154 = 0;
  v197 = 0;
  v196 = 0;
  v195 = 0;
  v194 = 0;
  v193 = 0;
  v177 = 0;
  v170 = 0;
  v94 = sub_7C404();
  v95 = *(v94 - 8);
  v96 = v95;
  __chkstk_darwin(0);
  v97 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_7C264();
  v99 = *(v98 - 8);
  v100 = v99;
  __chkstk_darwin(v154);
  v101 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for ListView(v5);
  v103 = *(v102 - 8);
  v104 = v103;
  v105 = *(v103 + 64);
  __chkstk_darwin(v102 - 8);
  v106 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1A88(&qword_91F28, &qword_80788);
  v108 = *(v107 - 8);
  v109 = v108;
  v110 = (*(v108 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v107 - 8);
  v111 = &v33 - v110;
  v112 = sub_1A88(&qword_920D8, &qword_809F0);
  v113 = *(v112 - 8);
  v114 = v113;
  v115 = (*(v113 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v112 - 8);
  v116 = &v33 - v115;
  v117 = sub_1A88(&qword_91F10, &qword_80778);
  v118 = (*(*(v117 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v117 - 8);
  v119 = &v33 - v118;
  v120 = sub_1A88(&qword_920E0, &qword_809F8);
  v121 = *(v120 - 8);
  v122 = v121;
  v123 = (*(v121 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v120 - 8);
  v124 = &v33 - v123;
  v125 = sub_1A88(&qword_91F00, &qword_80770);
  v126 = (*(*(v125 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v125 - 8);
  v127 = &v33 - v126;
  v128 = sub_1A88(&qword_91EF8, &qword_80768);
  v129 = *(v128 - 8);
  v130 = v129;
  v131 = (*(v129 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v128 - 8);
  v132 = &v33 - v131;
  v133 = sub_1A88(&qword_91F90, &qword_807D0);
  v134 = *(v133 - 8);
  v135 = v134;
  v137 = *(v134 + 64);
  __chkstk_darwin(v133 - 8);
  v139 = (v137 + 15) & 0xFFFFFFFFFFFFFFF0;
  v136 = &v33 - v139;
  __chkstk_darwin(&v33 - v139);
  v138 = &v33 - v139;
  __chkstk_darwin(v7);
  v140 = &v33 - v139;
  v197 = &v33 - v139;
  v141 = sub_1A88(&qword_91F88, &qword_807C8);
  v142 = *(v141 - 8);
  v143 = v142;
  v144 = (*(v142 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v141 - 8);
  v145 = &v33 - v144;
  v146 = sub_1A88(&qword_91EE8, &qword_80760);
  v148 = *(*(v146 - 8) + 64);
  __chkstk_darwin(v146 - 8);
  v150 = (v148 + 15) & 0xFFFFFFFFFFFFFFF0;
  v147 = &v33 - v150;
  __chkstk_darwin(&v33 - v150);
  v149 = &v33 - v150;
  __chkstk_darwin(v8);
  v151 = &v33 - v150;
  v196 = &v33 - v150;
  v155 = sub_1A88(&qword_91ED0, &qword_80758);
  v156 = *(*(v155 - 8) + 64);
  __chkstk_darwin(v154);
  v158 = (v156 + 15) & 0xFFFFFFFFFFFFFFF0;
  v157 = &v33 - v158;
  __chkstk_darwin(v9);
  v159 = &v33 - v158;
  v195 = &v33 - v158;
  v194 = v10;
  v193 = v11;
  v160 = sub_7D184();
  v161 = sub_7D174();
  v162 = sub_7D154();
  v163 = v12;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v90 = sub_50054();
  v89 = type metadata accessor for Family(0);
  sub_128FC();
  v91 = sub_7D284();

  if (v91)
  {
    sub_53538();
    v176 = v13;
    v175[0] = sub_513B0();
    v175[1] = v14;
    v83 = sub_52F94();
    v85 = sub_198A4();
    v79 = v85;
    v81 = &unk_8F330;
    v82 = &type metadata for String;
    v80 = v175;
    sub_7C824();
    sub_1F58(v80);
    v84 = 1;
    v86 = sub_7CF84("CONTENT_UNAVAILABLE_VIEW", 0x18uLL, 1);
    v87 = v15;
    v171 = v81;
    v172 = v82;
    v173 = v83;
    v174 = v85;
    swift_getOpaqueTypeConformance2();
    sub_7C884();

    (*(v143 + 8))(v145, v141);
    v88 = sub_52E90();
    sub_1991C(v149, v146, v151);
    sub_5E92C(v149);
    v170 = v149;
    sub_5E9F0(v151, v147);
    sub_1991C(v147, v146, v149);
    sub_5E92C(v147);
    sub_5E9F0(v149, v147);
    v16 = sub_53010();
    v166 = v125;
    v167 = &type metadata for String;
    v168 = v16;
    v169 = v79;
    v78 = 1;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v164 = v128;
    v165 = OpaqueTypeConformance2;
    v18 = swift_getOpaqueTypeConformance2();
    sub_19980(v147, v146, v133, v88, v18, v157);
    sub_5E92C(v147);
    sub_5E62C(v157, v159);
    sub_5E92C(v149);
    sub_5E92C(v151);
  }

  else
  {
    v192 = sub_50550();
    v19 = &v152[*(v102 + 24)];
    v35 = *v19;
    v36 = *(v19 + 1);

    v191[13] = v35;
    v191[14] = v36;
    sub_1A88(&qword_91E90, &qword_80728);
    sub_7CB04();
    v41 = v191[10];
    v42 = v191[11];
    v43 = v191[12];

    sub_598D0(v152, v106);
    v37 = (*(v104 + 80) + 16) & ~*(v104 + 80);
    v44 = swift_allocObject();
    sub_59F44(v106, (v44 + v37));
    v69 = 0;
    v45 = sub_7BD04();
    v46 = sub_1A88(&qword_91EA8, &qword_80740);
    v47 = sub_1A88(&qword_920E8, &qword_80A00);
    v40 = sub_B094();
    v39 = sub_5E09C();
    v38 = sub_5E124();
    v20 = sub_5E240();
    sub_53E74(&v192, v41, v42, v43, sub_5E01C, v44, v45, v46, v47, v40, v39, v38, v20);
    v48 = sub_53280();
    sub_7C6F4();
    (*(v109 + 8))(v111, v107);
    sub_54084();
    v191[8] = v107;
    v191[9] = v48;
    v74 = 1;
    v49 = swift_getOpaqueTypeConformance2();
    v22 = sub_5E2C0(v21);
    sub_5409C(v101, v112, v98, v49, v22, v119);
    (*(v100 + 8))(v101, v98);
    (*(v114 + 8))(v116, v112);
    v52 = &v33;
    __chkstk_darwin(&v33);
    v51 = v30;
    v32 = v23 & 1;
    v53 = sub_1A88(&qword_91F18, &qword_80780);
    v54 = sub_53188();
    v50 = sub_B24C(&qword_91F48, &qword_80798);
    v24 = sub_53390();
    v191[6] = v50;
    v191[7] = v24;
    v55 = swift_getOpaqueTypeConformance2();
    sub_7C974();
    sub_5E350(v119);
    v60 = &v33;
    __chkstk_darwin(&v33);
    v56 = v30;
    v31 = v25;
    v57 = sub_1A88(&qword_92118, &qword_80A08);
    v191[2] = v117;
    v191[3] = v53;
    v191[4] = v54;
    v191[5] = v55;
    v58 = swift_getOpaqueTypeConformance2();
    v59 = sub_5E3E8();
    sub_3274C(v120);
    sub_7C924();
    (*(v122 + 8))(v124, v120);
    v191[0] = sub_513B0();
    v191[1] = v26;
    v66 = sub_53010();
    v67 = sub_198A4();
    v65 = &type metadata for String;
    v61 = v191;
    sub_7C824();
    sub_1F58(v61);
    sub_5E508(v127);
    v27 = &v152[*(v102 + 28)];
    v62 = *v27;
    v63 = *(v27 + 1);
    v64 = *(v27 + 2);

    v188 = v62;
    v189 = v63;
    v190 = v64;
    sub_1A88(&qword_91E98, &unk_80730);
    sub_7CB04();
    v70 = v184;
    v71 = v185;
    v68 = v186;
    v72 = v187;

    sub_7C3F4();
    v180 = v125;
    v181 = v65;
    v182 = v66;
    v183 = v67;
    v73 = swift_getOpaqueTypeConformance2();
    v31 = v73;
    v30[1] = v128;
    v30[0] = v69;
    sub_7C754();
    (*(v96 + 8))(v97, v94);

    (*(v130 + 8))(v132, v128);
    v178 = v128;
    v179 = v73;
    v75 = swift_getOpaqueTypeConformance2();
    sub_1991C(v138, v133, v140);
    v76 = *(v135 + 8);
    v77 = (v135 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v76(v138, v133);
    v177 = v138;
    v34 = *(v135 + 16);
    v33 = v135 + 16;
    v34(v136, v140, v133);
    sub_1991C(v136, v133, v138);
    v76(v136, v133);
    v34(v136, v138, v133);
    v28 = sub_52E90();
    sub_19A78(v136, v146, v133, v28, v75, v157);
    v76(v136, v133);
    sub_5E62C(v157, v159);
    v76(v138, v133);
    v76(v140, v133);
  }

  sub_5E7AC(v159, v157);
  sub_52D2C();
  sub_1991C(v157, v155, v92);
  sub_5A398(v157);
  sub_5A398(v159);
}

unint64_t sub_52D2C()
{
  v2 = qword_91ED8;
  if (!qword_91ED8)
  {
    sub_B24C(&qword_91ED0, &qword_80758);
    sub_52E90();
    sub_B24C(&qword_91EF8, &qword_80768);
    sub_B24C(&qword_91F00, &qword_80770);
    sub_53010();
    sub_198A4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91ED8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_52E90()
{
  v2 = qword_91EE0;
  if (!qword_91EE0)
  {
    sub_B24C(&qword_91EE8, &qword_80760);
    sub_52F94();
    sub_198A4();
    swift_getOpaqueTypeConformance2();
    sub_1EBD0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91EE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_52F94()
{
  v2 = qword_91EF0;
  if (!qword_91EF0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91EF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_53010()
{
  v2 = qword_91F08;
  if (!qword_91F08)
  {
    sub_B24C(&qword_91F00, &qword_80770);
    sub_B24C(&qword_91F10, &qword_80778);
    sub_B24C(&qword_91F18, &qword_80780);
    sub_53188();
    sub_B24C(&qword_91F48, &qword_80798);
    sub_53390();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_534B0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91F08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_53188()
{
  v2 = qword_91F20;
  if (!qword_91F20)
  {
    sub_B24C(&qword_91F10, &qword_80778);
    sub_B24C(&qword_91F28, &qword_80788);
    sub_53280();
    swift_getOpaqueTypeConformance2();
    sub_53308();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91F20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_53280()
{
  v2 = qword_91F30;
  if (!qword_91F30)
  {
    sub_B24C(&qword_91F28, &qword_80788);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91F30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_53308()
{
  v2 = qword_91F38;
  if (!qword_91F38)
  {
    sub_B24C(&qword_91F40, &qword_80790);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91F38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_53390()
{
  v2 = qword_91F50;
  if (!qword_91F50)
  {
    sub_B24C(&qword_91F48, &qword_80798);
    sub_53428();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91F50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_53428()
{
  v2 = qword_91F58;
  if (!qword_91F58)
  {
    sub_B24C(&qword_91F60, &qword_807A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91F58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_534B0()
{
  v2 = qword_91F68;
  if (!qword_91F68)
  {
    sub_B24C(&qword_91F70, &qword_807A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91F68);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_53554@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v121 = &v144;
  v112 = a3;
  v125 = a1;
  v122 = a2;
  v163 = 0;
  v162 = 0;
  memset(__b, 0, 0x21uLL);
  memset(v159, 0, 32);
  memset(v157, 0, sizeof(v157));
  v150 = 0u;
  v151 = 0u;
  v144 = 0u;
  v145 = 0u;
  v123 = 0;
  v113 = sub_7CC54();
  v114 = *(v113 - 8);
  v115 = v113 - 8;
  v116 = (*(v114 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v113);
  v117 = &v55 - v116;
  v118 = sub_1A88(&qword_91E78, &qword_80710);
  v119 = (*(*(v118 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v118);
  v120 = (&v55 - v119);
  v124 = (*(*(sub_1A88(&qword_91E80, &qword_80718) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v123);
  v126 = &v55 - v124;
  v127 = *v125;
  *(v3 + 472) = v127;
  *(v3 + 464) = v4;
  v128 = sub_7D184();
  v129 = sub_7D174();
  v130 = sub_7D154();
  v131 = v5;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = v120;
  v7 = type metadata accessor for ListView(0);
  sub_4ED54((v122 + *(v7 + 20)), v6);
  sub_7BF04();
  sub_4EF58(v120);
  v111 = sub_1A88(&qword_91A00, &qword_7FDF0);
  if ((*(*(v111 - 8) + 48))(v126, 1) == 1)
  {
    sub_50B80(v126);
    v110 = 2;
  }

  else
  {
    sub_7CBA4();
    sub_5131C(v126);
    v109 = sub_7CC44();
    (*(v114 + 8))(v117, v113);
    v110 = v109 & 1;
  }

  v108 = v110;
  v159[38] = v110;
  v160 = 1;
  if (v110 != 2)
  {
    v132 = v108;
    if (v160 != 2)
    {
      v107 = (v132 & 1) == (v160 & 1);
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  if (v160 != 2)
  {
LABEL_14:
    v107 = 0;
    goto LABEL_12;
  }

  v107 = 1;
LABEL_12:
  if (v107)
  {
    v78 = &v149;
    swift_beginAccess();
    v79 = *(v127 + 32);
    v80 = *(v127 + 40);

    swift_endAccess();
    v8 = v80;
    v9 = v121;
    v81 = &v148;
    *(v121 + 13) = v79;
    *(v9 + 14) = v8;
    sub_198A4();
    v10 = sub_7C6E4();
    v11 = v121;
    *(v121 + 9) = v10;
    *(v11 + 10) = v12;
    v147 = v13;
    *(v11 + 12) = v14;
    v15 = *(v11 + 9);
    v16 = *(v11 + 10);
    v17 = v147;
    v18 = *(v11 + 12);
    v82 = v146;
    *(v11 + 5) = v15;
    *(v11 + 6) = v16;
    v94 = 1;
    v146[16] = v17 & 1;
    *(v11 + 8) = v18;
    v96 = &v150;
    v91 = &type metadata for Text;
    v92 = &protocol witness table for Text;
    sub_1991C(v146, &type metadata for Text, &v150);
    sub_23BF4(v82);
    v83 = *(v121 + 18);
    v84 = *(v121 + 19);
    v85 = v151;
    v86 = *(v121 + 21);
    sub_20C1C(v83, v84, v151 & 1);

    v87 = v141;
    v141[0] = v83;
    v141[1] = v84;
    v142 = v85 & 1 & v94;
    v143 = v86;
    v95 = &v144;
    sub_1991C(v141, v91, &v144);
    sub_23BF4(v87);
    v88 = v144;
    v89 = v145;
    v90 = *(v121 + 3);
    sub_20C1C(v144, *(&v144 + 1), v145 & 1);

    v93 = &v133;
    v133 = v88;
    v134 = v89 & 1 & v94;
    v135 = v90;
    v19 = sub_5E1C8();
    sub_19980(v93, v91, &unk_8EB40, v92, v19, &v136);
    sub_23BF4(v93);
    v98 = v136;
    v99 = v137;
    v100 = v138;
    v101 = v139;
    v97 = v140;
    sub_60DB0(v136, v137, v138, v139, v140 & 1);
    v20 = v121;
    v21 = v94;
    v22 = v95;
    v23 = v97;
    v24 = v99;
    v25 = v100;
    v26 = v101;
    *(v121 + 53) = v98;
    *(v20 + 54) = v24;
    *(v20 + 55) = v25;
    *(v20 + 56) = v26;
    __b[32] = v23 & 1 & v21;
    sub_23BF4(v22);
    sub_23BF4(v96);
    v102 = v98;
    v103 = v99;
    v104 = v100;
    v105 = v101;
    v106 = v97;
  }

  else
  {

    v27 = sub_1B008(v127);
    v28 = v121;
    v58 = &v158;
    *(v121 + 44) = v27;
    *(v28 + 45) = v29;
    *(v28 + 46) = v30;
    *(v28 + 47) = v31;
    v69 = sub_5E1C8();
    v72 = v159;
    v68 = &unk_8EB40;
    sub_1991C(v58, &unk_8EB40, v159);
    sub_1B0CC(v58);
    v59 = *(v121 + 48);
    v60 = *(v121 + 49);
    v61 = *(v121 + 50);
    v62 = *(v121 + 51);

    v32 = v60;
    v33 = v61;
    v34 = v62;
    v35 = v68;
    v36 = v121;
    v63 = v156;
    *(v121 + 36) = v59;
    *(v36 + 37) = v32;
    *(v36 + 38) = v33;
    *(v36 + 39) = v34;
    v71 = v157;
    sub_1991C(v156, v35, v157);
    sub_1B0CC(v63);
    v64 = *(v121 + 40);
    v65 = *(v121 + 41);
    v66 = *(v121 + 42);
    v67 = *(v121 + 43);

    v37 = v65;
    v38 = v66;
    v39 = v67;
    v40 = v68;
    v41 = v69;
    v42 = v121;
    v70 = v153;
    *(v121 + 27) = v64;
    *(v42 + 28) = v37;
    *(v42 + 29) = v38;
    *(v42 + 30) = v39;
    sub_19A78(v153, &type metadata for Text, v40, &protocol witness table for Text, v41, &v154);
    sub_1B0CC(v70);
    v74 = *(v121 + 31);
    v75 = *(v121 + 32);
    v76 = *(v121 + 33);
    v77 = *(v121 + 34);
    v73 = v155;
    sub_60DB0(v74, v75, v76, v77, v155 & 1);
    v43 = v121;
    v44 = v71;
    v45 = v73;
    v46 = v75;
    v47 = v76;
    v48 = v77;
    *(v121 + 53) = v74;
    *(v43 + 54) = v46;
    *(v43 + 55) = v47;
    *(v43 + 56) = v48;
    __b[32] = v45 & 1;
    sub_1B0CC(v44);
    sub_1B0CC(v72);
    v102 = v74;
    v103 = v75;
    v104 = v76;
    v105 = v77;
    v106 = v73;
  }

  v49 = v121;
  v50 = v103;
  v51 = v104;
  v52 = v105;
  v53 = v106;
  v57 = v152;
  *(v121 + 22) = v102;
  *(v49 + 23) = v50;
  *(v49 + 24) = v51;
  *(v49 + 25) = v52;
  v152[32] = v53 & 1;
  v56 = sub_1A88(&qword_920E8, &qword_80A00);
  sub_5E124();
  sub_1991C(v57, v56, v112);
  sub_60E18(v57);
  sub_60E18(__b);
}

uint64_t sub_53E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_7CBE4();
  swift_getWitnessTable();
  sub_7C664();

  return (*(*(a8 - 8) + 8))(a1);
}

uint64_t sub_5409C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v14 = a6;
  v8 = a1;
  v15 = a2;
  v11 = a3;
  v16 = a4;
  v12 = a5;
  v19 = a2;
  v18 = a3;
  v10 = *(a3 - 8);
  v9 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(a1);
  v13 = &v8 - v9;
  (*(v10 + 16))(v6);
  v17 = sub_7BFB4();
  sub_7C764();
}

uint64_t sub_54184@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v68 = v139;
  v109 = a2;
  v108 = a1;
  v50 = a3;
  v51 = a2;
  v110 = 0;
  v140 = 0;
  v139[1] = 0;
  v139[0] = 0;
  v138 = 0;
  v137 = 0;
  v136 = 0;
  v135 = 0;
  v134 = 0;
  v133 = 0;
  v132 = 0;
  v52 = sub_1A88(&qword_91F60, &qword_807A0);
  v53 = *(v52 - 8);
  v54 = v53;
  v55 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v52 - 8);
  v56 = v20 - v55;
  v140 = v20 - v55;
  v57 = sub_1A88(&qword_92140, &qword_80A18);
  v58 = *(v57 - 8);
  v59 = v58;
  v60 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v57 - 8);
  v61 = v20 - v60;
  v68[1] = v20 - v60;
  v62 = sub_1A88(&qword_92148, &qword_80A20);
  v63 = *(v62 - 8);
  v64 = v63;
  v65 = *(v63 + 64);
  __chkstk_darwin(v110);
  v67 = (v65 + 15) & 0xFFFFFFFFFFFFFFF0;
  v66 = v20 - v67;
  __chkstk_darwin(v3);
  v69 = v20 - v67;
  *v68 = v20 - v67;
  sub_7BFA4();
  __chkstk_darwin(v110);
  v70 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_7C014();
  v72 = *(v71 - 8);
  v73 = v72;
  v74 = *(v72 + 64);
  __chkstk_darwin(v71 - 8);
  v76 = (v74 + 15) & 0xFFFFFFFFFFFFFFF0;
  v75 = v20 - v76;
  __chkstk_darwin(v20 - v76);
  v77 = v20 - v76;
  v138 = v20 - v76;
  v78 = sub_1A88(&qword_92150, &qword_80A28);
  v79 = *(v78 - 8);
  v80 = v79;
  v81 = *(v79 + 64);
  __chkstk_darwin(v110);
  v83 = (v81 + 15) & 0xFFFFFFFFFFFFFFF0;
  v82 = v20 - v83;
  __chkstk_darwin(v5);
  v84 = v20 - v83;
  v137 = v20 - v83;
  v85 = sub_7CC54();
  v86 = *(v85 - 8);
  v87 = v86;
  __chkstk_darwin(v85 - 8);
  v88 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1A88(&qword_91E78, &qword_80710);
  v90 = (*(*(v89 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v89 - 8);
  v91 = (v20 - v90);
  v7 = sub_1A88(&qword_91E80, &qword_80718);
  v92 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7 - 8);
  v93 = v20 - v92;
  v94 = sub_1A88(&qword_92158, &qword_80A30);
  v96 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v110);
  v98 = (v96 + 15) & 0xFFFFFFFFFFFFFFF0;
  v95 = v20 - v98;
  __chkstk_darwin(v8);
  v97 = v20 - v98;
  __chkstk_darwin(v9);
  v99 = v20 - v98;
  v136 = v20 - v98;
  v10 = sub_7C434();
  __chkstk_darwin(v10 - 8);
  v100 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1A88(&qword_92160, &qword_80A38);
  v102 = *(v101 - 8);
  v103 = v102;
  v104 = *(v102 + 64);
  __chkstk_darwin(v101 - 8);
  v106 = (v104 + 15) & 0xFFFFFFFFFFFFFFF0;
  v105 = v20 - v106;
  __chkstk_darwin(v20 - v106);
  v107 = v20 - v106;
  v135 = v20 - v106;
  v111 = sub_1A88(&qword_91F48, &qword_80798);
  v113 = *(*(v111 - 8) + 64);
  __chkstk_darwin(v110);
  v115 = (v113 + 15) & 0xFFFFFFFFFFFFFFF0;
  v112 = v20 - v115;
  __chkstk_darwin(v12);
  v114 = v20 - v115;
  __chkstk_darwin(v13);
  v116 = v20 - v115;
  v134 = v20 - v115;
  v133 = v14;
  v132 = v15;
  v117 = sub_7D184();
  v118 = sub_7D174();
  v119 = sub_7D154();
  v120 = v16;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v49 = type metadata accessor for ListView(0);
  if (sub_79A04(*(v108 + *(v49 + 40)), 0))
  {
    (*(v54 + 56))(v112, 1, 1, v52);
    sub_53428();
    sub_7C464();
    sub_5EF84(v112);
    sub_5F038(v114, v116);
    goto LABEL_20;
  }

  v17 = v91;
  sub_7C414();
  v44 = v20;
  __chkstk_darwin(v20);
  v42 = &v20[-4];
  v43 = sub_1A88(&qword_92168, &qword_80A40);
  sub_5F2A8();
  sub_7BF74();
  v45 = sub_5F500();
  sub_1991C(v105, v101, v107);
  v46 = *(v103 + 8);
  v47 = (v103 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v46(v105, v101);
  sub_4ED54((v108 + *(v49 + 20)), v17);
  sub_7BF04();
  sub_4EF58(v91);
  v48 = sub_1A88(&qword_91A00, &qword_7FDF0);
  if ((*(*(v48 - 8) + 48))(v93, 1) == 1)
  {
    sub_50B80(v93);
    v41 = 2;
  }

  else
  {
    sub_7CBA4();
    sub_5131C(v93);
    v40 = sub_7CC44();
    (*(v87 + 8))(v88, v85);
    v41 = v40 & 1;
  }

  v38 = v41;
  v39 = &v131;
  v130 = v41;
  v131 = 1;
  if (v41 == 2)
  {
    if (*v39 == 2)
    {
      v37 = 1;
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  v121 = v38;
  if (*v39 == 2)
  {
LABEL_15:
    v37 = 0;
    goto LABEL_13;
  }

  v37 = v121 ^ *v39 ^ 1;
LABEL_13:
  if (v37)
  {
    sub_514A8();
    v20[3] = v20;
    __chkstk_darwin(v20);
    v20[1] = &v20[-4];
    v20[2] = sub_1A88(&qword_921B8, &qword_80A58);
    sub_5F9D4();
    sub_7BF74();
    v29 = sub_5FA7C();
    sub_1991C(v82, v78, v84);
    v36 = *(v80 + 8);
    v35 = v80 + 8;
    v36(v82, v78);
    sub_514A8();
    sub_56928();
    sub_7C024();
    sub_1991C(v75, v71, v77);
    v34 = *(v73 + 8);
    v33 = v73 + 8;
    v34(v75, v71);
    sub_514A8();
    v27 = v20;
    __chkstk_darwin(v20);
    v25 = &v20[-4];
    v26 = sub_1A88(&qword_921D0, &qword_80A60);
    v21 = sub_B24C(&qword_921D8, &qword_80A68);
    v22 = sub_B24C(&qword_91780, &qword_7FC80);
    v23 = sub_5FB0C();
    v24 = sub_198A4();
    v18 = sub_375B8();
    v122 = v21;
    v123 = &type metadata for String;
    v124 = v22;
    v125 = &type metadata for Text;
    v126 = v23;
    v127 = v24;
    v128 = v18;
    v129 = &protocol witness table for Text;
    v30 = 1;
    swift_getOpaqueTypeConformance2();
    sub_7BF74();
    v28 = sub_5FBB4();
    sub_1991C(v66, v62, v69);
    v32 = *(v64 + 8);
    v31 = v64 + 8;
    v32(v66, v62);
    (*(v80 + 16))(v82, v84, v78);
    (*(v73 + 16))(v75, v77, v71);
    (*(v64 + 16))(v66, v69, v62);
    sub_58CE8(v82, v75, v66, v78, v71, v62, v61);
    v32(v66, v62);
    v34(v75, v71);
    v36(v82, v78);
    (*(v59 + 16))(v95, v61, v57);
    (*(v59 + 56))(v95, 0, v30, v57);
    sub_5F588();
    sub_7C464();
    sub_5F610(v95);
    sub_5F6C4(v97, v99);
    (*(v59 + 8))(v61, v57);
    v32(v69, v62);
    v34(v77, v71);
    v36(v84, v78);
  }

  else
  {
    (*(v59 + 56))(v95, 1, 1, v57);
    sub_5F588();
    sub_7C464();
    sub_5F610(v95);
    sub_5F6C4(v97, v99);
  }

  (*(v103 + 16))(v105, v107, v101);
  sub_5F7F8(v99, v97);
  sub_5F92C();
  sub_58E70(v105, v97, v101, v94, v56);
  sub_5F610(v97);
  v46(v105, v101);
  (*(v54 + 16))(v112, v56, v52);
  (*(v54 + 56))(v112, 0, 1, v52);
  sub_53428();
  sub_7C464();
  sub_5EF84(v112);
  sub_5F038(v114, v116);
  (*(v54 + 8))(v56, v52);
  sub_5F610(v99);
  v46(v107, v101);
LABEL_20:
  sub_5F16C(v116, v114);
  sub_53390();
  sub_7C454();
  sub_5EF84(v114);
  sub_5EF84(v116);
}

uint64_t sub_5581C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v40 = a1;
  v56 = 0;
  v55 = 0;
  v41 = 0;
  v27 = sub_7CEF4();
  v28 = *(v27 - 8);
  v29 = v27 - 8;
  v30 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v31 = v16 - v30;
  v32 = sub_7BEC4();
  v33 = *(v32 - 8);
  v34 = v32 - 8;
  v35 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v32);
  v36 = v16 - v35;
  v37 = sub_1A88(&qword_92180, &qword_80A48);
  v38 = (*(*(v37 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v37);
  v39 = v16 - v38;
  v42 = sub_1A88(&qword_92168, &qword_80A40);
  v46 = *(*(v42 - 8) + 64);
  v43 = (v46 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v41);
  v44 = v16 - v43;
  v45 = (v46 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v47 = v16 - v45;
  v48 = (v46 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v49 = v16 - v48;
  v56 = v16 - v48;
  v55 = v4;
  v50 = sub_7D184();
  v51 = sub_7D174();
  v52 = sub_7D154();
  v53 = v5;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_7BEB4();
  v16[2] = sub_5030C();
  v16[1] = type metadata accessor for Family(0);
  sub_128FC();
  v17 = sub_7D284();

  sub_5F3F8(v6);
  v21 = 1;
  sub_7C984();
  (*(v33 + 8))(v36, v32);
  v20 = 20;
  v18 = sub_7CF84("EDIT_INSTALLED_FONTS", 0x14uLL, v21 & 1);
  v19 = v7;
  sub_5F350();
  sub_7C884();

  sub_609AC(v39, v8);
  sub_7CF84("Edit installed fonts", v20, v21 & 1);
  sub_7CE94();
  v22 = sub_61F88(v31);
  v23 = v9;
  (*(v28 + 8))(v31, v27);
  v24 = v54;
  v54[0] = v22;
  v54[1] = v23;
  sub_198A4();
  sub_7C114();
  sub_1F58(v24);
  sub_60A44(v44, v10);
  v25 = sub_5F2A8();
  sub_1991C(v47, v42, v49);
  sub_60A44(v47, v11);
  sub_60B40(v49, v47, v12);
  sub_1991C(v47, v42, v26);
  sub_60A44(v47, v13);
  sub_60A44(v49, v14);
}

uint64_t sub_55D54@<X0>(char *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v50 = a1;
  v30 = a3;
  v31 = a2;
  v52 = 0;
  v65 = 0;
  v64 = 0;
  v63 = 0;
  v32 = sub_7CEF4();
  v33 = *(v32 - 8);
  v34 = v33;
  __chkstk_darwin(0);
  v35 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ListView(v4);
  v36 = *(v5 - 8);
  v37 = v36;
  v38 = *(v36 + 64);
  __chkstk_darwin(v5 - 8);
  v39 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1A88(&qword_91128, &qword_7F0C0);
  v41 = *(v40 - 8);
  v42 = v41;
  v43 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v40 - 8);
  v44 = &v15 - v43;
  v45 = sub_1A88(&qword_91200, &qword_7F140);
  v46 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45 - 8);
  v48 = (v46 + 15) & 0xFFFFFFFFFFFFFFF0;
  v47 = &v15 - v48;
  __chkstk_darwin(&v15 - v48);
  v49 = &v15 - v48;
  v53 = sub_1A88(&qword_921B8, &qword_80A58);
  v54 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v52);
  v56 = (v54 + 15) & 0xFFFFFFFFFFFFFFF0;
  v55 = &v15 - v56;
  __chkstk_darwin(v7);
  v57 = &v15 - v56;
  v65 = &v15 - v56;
  v64 = v8;
  v63 = v9;
  v58 = sub_7D184();
  v59 = sub_7D174();
  v60 = sub_7D154();
  v61 = v10;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_598D0(v50, v39);
  v15 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v16 = v15 + v38;
  v17 = swift_allocObject();
  sub_59F44(v39, (v17 + v15));
  *(v17 + v16) = v31 & 1;
  v18 = &v15;
  v21 = 17;
  __chkstk_darwin(&v15);
  *(&v15 - 16) = v11;
  sub_7CB44();
  v22 = 1;
  v19 = sub_7CF84("TOGGLE_SELECT_ALL", v21, 1);
  v20 = v12;
  sub_1EAC0();
  sub_7C884();

  (*(v42 + 8))(v44, v40);
  sub_7CF84("Toggle select all", v21, v22);
  sub_7CE94();
  v23 = sub_61F88(v35);
  v24 = v13;
  (*(v34 + 8))(v35, v32);
  v62[0] = v23;
  v62[1] = v24;
  sub_198A4();
  v25 = v62;
  sub_7C114();
  sub_1F58(v25);
  sub_241D4(v47);
  v27 = sub_5030C();
  v26 = type metadata accessor for Family(0);
  sub_128FC();
  v28 = sub_7D284();

  sub_24298();
  sub_7C984();
  sub_241D4(v49);
  v29 = sub_5F9D4();
  sub_1991C(v55, v53, v57);
  sub_5FF24(v55);
  sub_60790(v57, v55);
  sub_1991C(v55, v53, v30);
  sub_5FF24(v55);
  sub_5FF24(v57);
}

uint64_t sub_56440(uint64_t a1, char a2)
{
  v17 = a1;
  v16 = a2 & 1;
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a2)
  {
    sub_7BD04();
    sub_7D714();
    sub_B094();
    sub_7D214();
  }

  else
  {
    v15 = sub_50550();
    KeyPath = swift_getKeyPath();

    v8 = sub_1A88(&qword_91EA8, &qword_80740);
    v9 = sub_7BD04();
    v2 = sub_5EAD0();
    v11 = sub_7FFC(sub_608F0, KeyPath, v8, v9, &type metadata for Never, v2, &protocol witness table for Never, v10);

    sub_B2C0(&v15);
    v14[2] = v11;
    sub_1A88(&qword_921F0, &qword_80A90);
    sub_B094();
    sub_60924();
    sub_7D2C4();
  }

  v3 = *(type metadata accessor for ListView(0) + 24);
  v5 = *(a1 + v3);
  v6 = *(a1 + v3 + 8);

  v14[0] = v5;
  v14[1] = v6;

  sub_1A88(&qword_91E90, &qword_80728);
  sub_7CAF4();
  sub_4F54C(v14);
}

uint64_t sub_56730(uint64_t *a1, uint64_t a2)
{

  swift_getAtKeyPath();
}

uint64_t sub_56798@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v8 = 0;
  v9 = a1 & 1;
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    sub_7CF84("checklist.unchecked", 0x13uLL, 1);
  }

  else
  {
    sub_7CF84("checklist.checked", 0x11uLL, 1);
  }

  v7 = sub_7CA34();
  sub_1991C(&v7, &type metadata for Image, &v8);
  sub_B068(&v7);
  v3 = v8;

  v6 = v3;
  sub_1991C(&v6, &type metadata for Image, a2);
  sub_B068(&v6);
  sub_B068(&v8);
}

uint64_t sub_56940@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a1;
  v58 = a2;
  v87 = 0;
  v115 = 0;
  v114 = 0;
  v59 = sub_7CEF4();
  v60 = *(v59 - 8);
  v61 = v60;
  __chkstk_darwin(0);
  v62 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for ListView(v3);
  v64 = *(v63 - 8);
  v65 = v64;
  v66 = *(v64 + 64);
  __chkstk_darwin(v63 - 8);
  v67 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A88(&qword_917C8, &qword_7FCA8);
  v68 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5 - 8);
  v69 = &v17 - v68;
  v70 = sub_1A88(&qword_91128, &qword_7F0C0);
  v71 = *(v70 - 8);
  v72 = v71;
  v73 = (*(v71 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v70 - 8);
  v74 = &v17 - v73;
  v75 = sub_1A88(&qword_91200, &qword_7F140);
  v76 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75 - 8);
  v78 = (v76 + 15) & 0xFFFFFFFFFFFFFFF0;
  v77 = &v17 - v78;
  __chkstk_darwin(&v17 - v78);
  v79 = &v17 - v78;
  v80 = sub_1A88(&qword_921B8, &qword_80A58);
  v81 = (*(*(v80 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v80 - 8);
  v82 = &v17 - v81;
  v83 = sub_1A88(&qword_921D8, &qword_80A68);
  v84 = (*(*(v83 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v83 - 8);
  v85 = &v17 - v84;
  v88 = sub_1A88(&qword_921D0, &qword_80A60);
  v89 = *(v88 - 8);
  v90 = v89;
  v91 = *(v89 + 64);
  __chkstk_darwin(v87);
  v93 = (v91 + 15) & 0xFFFFFFFFFFFFFFF0;
  v92 = &v17 - v93;
  __chkstk_darwin(v6);
  v94 = &v17 - v93;
  v115 = &v17 - v93;
  v114 = v7;
  v95 = sub_7D184();
  v96 = sub_7D174();
  v97 = sub_7D154();
  v98 = v8;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_7BE84();
  v27 = 0;
  v9 = *(*(sub_7BE94() - 8) + 56);
  v53 = 1;
  v9(v69, 0);
  sub_598D0(v86, v67);
  v18 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v19 = swift_allocObject();
  sub_59F44(v67, (v19 + v18));
  sub_7CB34();
  v20 = sub_7CF84("REMOVE_SELECTED", 0xFuLL, v53);
  v21 = v10;
  sub_1EAC0();
  sub_7C884();

  (*(v72 + 8))(v74, v70);
  sub_7CF84("Remove selected fonts", 0x15uLL, v53);
  sub_7CE94();
  v22 = sub_61F88(v62);
  v23 = v11;
  v33 = *(v61 + 8);
  v32 = v61 + 8;
  v33(v62, v59);
  v113[0] = v22;
  v113[1] = v23;
  v51 = sub_198A4();
  v47 = &type metadata for String;
  v24 = v113;
  sub_7C114();
  sub_1F58(v24);
  sub_241D4(v77);
  v12 = &v86[*(v63 + 24)];
  v25 = *v12;
  v26 = *(v12 + 1);

  v112[3] = v25;
  v112[4] = v26;
  sub_1A88(&qword_91E90, &qword_80728);
  sub_7CAE4();
  v29 = v112[2];

  v28 = sub_7BD04();
  sub_B094();
  v30 = sub_7D284();

  sub_24298();
  sub_7C984();
  sub_241D4(v79);
  v31 = sub_7C9C4();
  sub_5F9D4();
  sub_7C8D4();

  sub_5FF24(v82);
  sub_7CF84("Are you sure?", 0xDuLL, v53);
  sub_7CE94();
  v34 = sub_61F88(v62);
  v35 = v13;
  v33(v62, v59);
  v112[0] = v34;
  v112[1] = v35;
  v14 = &v86[*(v63 + 32)];
  v36 = *v14;
  v37 = *(v14 + 1);

  v110 = v36;
  v111 = v37;
  sub_1A88(&qword_91640, &qword_7FFB0);
  sub_7CB04();
  v44 = v107;
  v45 = v108;
  v40 = v109;

  v43 = &v17;
  v38 = 24;
  __chkstk_darwin(&v17);
  v41 = v16;
  v42 = &v17;
  __chkstk_darwin(&v17);
  v39 = v16;
  v48 = sub_1A88(&qword_91780, &qword_7FC80);
  v50 = sub_5FB0C();
  v54 = sub_375B8();
  v49 = &type metadata for Text;
  v52 = &protocol witness table for Text;
  sub_4E928();
  v16[2] = v52;
  v16[1] = v54;
  v16[0] = v51;
  v46 = v112;
  sub_7C844();

  sub_1F58(v46);
  sub_60034(v85);
  v99 = v83;
  v100 = v47;
  v101 = v48;
  v102 = v49;
  v103 = v50;
  v104 = v51;
  v105 = v54;
  v106 = v52;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1991C(v92, v88, v94);
  v57 = *(v90 + 8);
  v56 = v90 + 8;
  v57(v92, v88);
  (*(v90 + 16))(v92, v94, v88);
  sub_1991C(v92, v88, v58);
  v57(v92, v88);
  v57(v94, v88);
}

uint64_t sub_577B4(uint64_t a1)
{
  v8 = a1;
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v1 = (a1 + *(type metadata accessor for ListView(0) + 32));
  v3 = *v1;
  v4 = *(v1 + 1);

  v6[0] = v3;
  v7 = v4;
  sub_1A88(&qword_91640, &qword_7FFB0);
  sub_7CAF4();
  sub_26D50(v6);
}

uint64_t sub_578E8@<X0>(uint64_t a1@<X8>)
{
  v6 = 0;
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_7CF84("trash", 5uLL, 1);
  v5 = sub_7CA34();
  sub_1991C(&v5, &type metadata for Image, &v6);
  sub_B068(&v5);
  v2 = v6;

  v4 = v2;
  sub_1991C(&v4, &type metadata for Image, a1);
  sub_B068(&v4);
  sub_B068(&v6);
}

uint64_t sub_57A28@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v48 = a1;
  v30 = sub_603F4;
  v65 = 0;
  v64 = 0;
  v49 = 0;
  v2 = type metadata accessor for ListView(0);
  v31 = *(v2 - 8);
  v32 = v31;
  v33 = *(v31 + 64);
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v35 = &v12 - v34;
  v36 = (*(*(sub_1A88(&qword_917C8, &qword_7FCA8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v49);
  v37 = &v12 - v36;
  v38 = sub_7CEF4();
  v39 = *(v38 - 8);
  v40 = v38 - 8;
  v41 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v38);
  v42 = &v12 - v41;
  v43 = sub_1A88(&qword_917C0, &qword_7FCA0);
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v43);
  v47 = &v12 - v46;
  v50 = sub_1A88(&qword_91780, &qword_7FC80);
  v54 = *(*(v50 - 8) + 64);
  v51 = (v54 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v49);
  v52 = &v12 - v51;
  v53 = (v54 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v55 = &v12 - v53;
  v56 = (v54 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v57 = &v12 - v56;
  v65 = &v12 - v56;
  v64 = v5;
  v58 = sub_7D184();
  v59 = sub_7D174();
  v60 = sub_7D154();
  v61 = v6;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = 1;
  sub_7CF84("Remove", 6uLL, 1);
  sub_7CE94();
  v13 = sub_61F88(v42);
  v14 = v7;
  v22 = *(v39 + 8);
  v21 = v39 + 8;
  v22(v42, v38);
  v17 = v63;
  v63[0] = v13;
  v63[1] = v14;
  sub_7BE84();
  v8 = sub_7BE94();
  (*(*(v8 - 8) + 56))(v37, 0, v20);
  sub_598D0(v48, v35);
  v15 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v16 = swift_allocObject();
  sub_59F44(v35, (v16 + v15));
  v26 = sub_198A4();
  v25 = &type metadata for String;
  sub_7CB54();
  v18 = sub_7CF84("CONFIRM_REMOVE_SELECTED", 0x17uLL, v20 & 1);
  v19 = v9;
  sub_37660();
  sub_7C884();

  (*(v44 + 8))(v47, v43);
  sub_7CF84("Confirm removal", 0xFuLL, v20 & 1);
  sub_7CE94();
  v23 = sub_61F88(v42);
  v24 = v10;
  v22(v42, v38);
  v27 = v62;
  v62[0] = v23;
  v62[1] = v24;
  sub_7C114();
  sub_1F58(v27);
  sub_37E20(v52);
  v28 = sub_375B8();
  sub_1991C(v55, v50, v57);
  sub_37E20(v55);
  sub_37EE4(v57, v55);
  sub_1991C(v55, v50, v29);
  sub_37E20(v55);
  sub_37E20(v57);
}

uint64_t sub_5813C(uint64_t a1)
{
  v30 = a1;
  v40 = 0;
  v31 = 0;
  v22 = sub_7CC54();
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  v25 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v26 = &v7 - v25;
  v27 = sub_1A88(&qword_91E78, &qword_80710);
  v28 = (*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27);
  v29 = (&v7 - v28);
  v32 = (*(*(sub_1A88(&qword_91E80, &qword_80718) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v31);
  v33 = &v7 - v32;
  v40 = v1;
  v34 = sub_7D184();
  v35 = sub_7D174();
  v36 = sub_7D154();
  v37 = v2;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = v29;
  v20 = type metadata accessor for ListView(0);
  sub_4ED54((v30 + *(v20 + 20)), v3);
  sub_7BF04();
  sub_4EF58(v29);
  v21 = sub_1A88(&qword_91A00, &qword_7FDF0);
  if ((*(*(v21 - 8) + 48))(v33, 1) == 1)
  {
    sub_50B80(v33);
  }

  else
  {
    (*(v23 + 104))(v26, enum case for EditMode.inactive(_:), v22);
    sub_7CBB4();
    sub_5131C(v33);
  }

  v11 = sub_4EB00();
  v4 = (v30 + *(v20 + 24));
  v8 = *v4;
  v9 = v4[1];

  v39[3] = v8;
  v39[4] = v9;
  v15 = sub_1A88(&qword_91E90, &qword_80728);
  sub_7CAE4();
  v10 = v39[2];

  sub_5F18(v10);

  v12 = 0;
  v13 = sub_7BD04();
  v14 = sub_7D714();
  sub_B094();
  v19 = sub_7D214();
  v5 = (v30 + *(v20 + 24));
  v17 = *v5;
  v18 = v5[1];

  v16 = v39;
  v39[0] = v17;
  v39[1] = v18;

  v38 = v19;
  sub_7CAF4();
  sub_4F54C(v16);
}

uint64_t sub_585C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v45 = a1;
  v75 = 0;
  v73 = 0u;
  v74 = 0u;
  v46 = 0;
  v40 = sub_7CEF4();
  v41 = *(v40 - 8);
  v42 = v40 - 8;
  v43 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v44 = v14 - v43;
  v47 = sub_7CED4();
  v48 = *(v47 - 8);
  v49 = v47 - 8;
  v53 = *(v48 + 64);
  v50 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v46);
  v51 = v14 - v50;
  v52 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v54 = v14 - v52;
  v55 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v56 = v14 - v55;
  v75 = v4;
  v57 = sub_7D184();
  v58 = sub_7D174();
  v59 = sub_7D154();
  v60 = v5;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v25 = 35;
  sub_7CEC4();
  v17 = 0;
  v33 = 1;
  v76._countAndFlagsBits = sub_7CF84("", 0, 1);
  v14[1] = v76._object;
  sub_7CEB4(v76);

  v6 = type metadata accessor for ListView(v17);
  v7 = (v45 + *(v6 + 24));
  v15 = *v7;
  v16 = v7[1];

  v72[2] = v15;
  v72[3] = v16;
  sub_1A88(&qword_91E90, &qword_80728);
  sub_7CAE4();
  v19 = v72[1];

  v18 = sub_7BD04();
  sub_B094();
  v20 = sub_7D234();

  v22 = v72;
  v72[0] = v20;
  v21 = &type metadata for Int;
  v23 = sub_4E3D8(&type metadata for Int);
  v24 = v8;
  sub_7CEA4();

  v77._countAndFlagsBits = sub_7CF84(" fonts will no longer be available.", v25, v33 & 1);
  object = v77._object;
  sub_7CEB4(v77);

  (*(v48 + 16))(v54, v56, v47);
  (*(v48 + 32))(v51, v54, v47);
  (*(v48 + 8))(v56, v47);
  sub_7CEE4();
  v27 = sub_61F88(v44);
  v28 = v9;
  (*(v41 + 8))(v44, v40);
  v29 = v71;
  v71[0] = v27;
  v71[1] = v28;
  sub_198A4();
  v67 = sub_7C6E4();
  v68 = v10;
  v69 = v11;
  v70 = v12;
  v30 = v64;
  v64[0] = v67;
  v64[1] = v10;
  v65 = v11 & 1;
  v66 = v12;
  v38 = &v73;
  v35 = &type metadata for Text;
  v36 = &protocol witness table for Text;
  sub_1991C(v64, &type metadata for Text, &v73);
  sub_23BF4(v30);
  v31 = v73;
  v32 = v74;
  v34 = *(&v74 + 1);
  sub_20C1C(v73, *(&v73 + 1), v74 & 1);

  v37 = &v61;
  v61 = v31;
  v62 = v32 & 1 & v33;
  v63 = v34;
  sub_1991C(&v61, v35, v39);
  sub_23BF4(v37);
  sub_23BF4(v38);
}

uint64_t sub_58CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19 = a7;
  v11[2] = a1;
  v14 = a2;
  v17 = a3;
  v11[1] = a4;
  v15 = a5;
  v18 = a6;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v12 = (*(*(TupleTypeMetadata3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(TupleTypeMetadata3);
  v21 = v11 - v12;
  v13 = *(v8 + 48);
  v16 = *(v8 + 64);
  (*(*(v9 - 8) + 16))(v7);
  (*(*(v15 - 8) + 16))(&v21[v13], v14);
  (*(*(v18 - 8) + 16))(&v21[v16], v17);
  return sub_7C364();
}

uint64_t sub_58E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v14 = a5;
  v9[2] = a1;
  v12 = a2;
  v9[1] = a3;
  v13 = a4;
  v18 = a3;
  v17 = a4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = (*(*(TupleTypeMetadata2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(TupleTypeMetadata2);
  v16 = v9 - v10;
  v11 = *(v6 + 48);
  (*(*(v7 - 8) + 16))(v5);
  (*(*(v13 - 8) + 16))(&v16[v11], v12);
  return sub_7C364();
}

uint64_t sub_58FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v35 = a1;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v47 = 0;
  v26 = sub_1A88(&qword_92130, &qword_80A10);
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  v29 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v26);
  v30 = v12 - v29;
  v31 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12 - v29);
  v32 = v12 - v31;
  v33 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12 - v31);
  v34 = v12 - v33;
  v56 = v12 - v33;
  v36 = sub_1A88(&qword_92118, &qword_80A08);
  v37 = (*(*(v36 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v35);
  v38 = v12 - v37;
  v39 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v40 = v12 - v39;
  v41 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v42 = v12 - v41;
  v55 = v12 - v41;
  v54 = v8;
  v43 = sub_7D184();
  v44 = sub_7D174();
  v45 = sub_7D154();
  v46 = v9;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23 = sub_50550();
  v53 = v23;
  v22 = sub_1A88(&qword_91EA8, &qword_80740);
  sub_5EAD0();
  v24 = sub_7D344();

  if (v24)
  {
    v10 = (v35 + *(type metadata accessor for ListView(0) + 28));
    v14 = *v10;
    v15 = v10[1];
    v16 = v10[2];

    v50 = v14;
    v51 = v15;
    v52 = v16;
    sub_1A88(&qword_91E98, &unk_80730);
    sub_7CAE4();
    v17 = v48;
    v18 = v49;

    sub_7C484();

    v19 = sub_5E480();
    sub_1991C(v32, v26, v34);
    v20 = *(v27 + 8);
    v21 = v27 + 8;
    v20(v32, v26);
    v47 = v32;
    v13 = *(v27 + 16);
    v12[1] = v27 + 16;
    v13(v30, v34, v26);
    sub_1991C(v30, v26, v32);
    v20(v30, v26);
    v13(v38, v32, v26);
    (*(v27 + 56))(v38, 0, 1, v26);
    sub_4E680(v38, v26, v40);
    sub_5EB58(v38);
    sub_5EC0C(v40, v42);
    v20(v32, v26);
    v20(v34, v26);
  }

  else
  {
    (*(v27 + 56))(v38, 1, 1, v26);
    sub_5E480();
    sub_4E680(v38, v26, v40);
    sub_5EB58(v38);
    sub_5EC0C(v40, v42);
  }

  sub_5ED40(v42, v40);
  sub_5E3E8();
  sub_1991C(v40, v36, v25);
  sub_5EB58(v40);
  sub_5EB58(v42);
}

uint64_t sub_595F8(uint64_t a1)
{
  v1[4] = a1;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = a1;
  sub_7D184();
  v1[5] = sub_7D174();
  v4 = sub_7D154();
  v1[6] = v4;
  v1[7] = v2;

  return _swift_task_switch(sub_596B4, v4);
}

uint64_t sub_596B4()
{
  *(v0 + 16) = v0;
  *(v0 + 64) = sub_4EB00();
  v1 = swift_task_alloc();
  *(v3 + 72) = v1;
  *v1 = *(v3 + 16);
  v1[1] = sub_59770;

  return sub_11118();
}

uint64_t sub_59770()
{
  v3 = *v0;
  *(*v0 + 16) = *v0;

  v1 = *(v3 + 48);

  return _swift_task_switch(sub_1689C, v1);
}

char *sub_598D0(char *a1, char *a2)
{
  v27 = *a1;

  *a2 = v27;
  *(a2 + 1) = *(a1 + 1);
  v29 = type metadata accessor for ListView(0);
  v30 = v29[5];
  sub_1A88(&qword_919F8, &qword_7FDE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = sub_1A88(&qword_91A00, &qword_7FDF0);
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(&a1[v30], 1))
    {
      v3 = sub_1A88(&qword_91E80, &qword_80718);
      memcpy(&a2[v30], &a1[v30], *(*(v3 - 8) + 64));
    }

    else
    {
      v20 = *&a1[v30];

      *&a2[v30] = v20;
      v21 = *&a1[v30 + 8];

      *&a2[v30 + 8] = v21;
      v23 = &a2[v30 + *(v24 + 32)];
      v22 = &a1[v30 + *(v24 + 32)];
      v2 = sub_7CC54();
      (*(*(v2 - 8) + 16))(v23, v22);
      (*(v25 + 56))(&a2[v30], 0, 1, v24);
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v26 = *&a1[v30];

    *&a2[v30] = v26;
    swift_storeEnumTagMultiPayload();
  }

  v10 = &a2[v29[6]];
  v9 = &a1[v29[6]];
  v8 = *v9;

  *v10 = v8;
  v11 = *(v9 + 1);

  *(v10 + 1) = v11;
  v4 = v29[7];
  v14 = &a2[v4];
  v13 = &a1[v4];
  *&a2[v4] = *&a1[v4];
  v12 = *&a1[v4 + 8];

  *(v14 + 1) = v12;
  v15 = *(v13 + 2);

  *(v14 + 2) = v15;
  v5 = v29[8];
  v16 = &a2[v5];
  a2[v5] = a1[v5];
  v17 = *&a1[v5 + 8];

  *(v16 + 1) = v17;
  v6 = v29[9];
  v18 = &a2[v6];
  *&a2[v6] = *&a1[v6];
  v19 = *&a1[v6 + 8];

  result = a2;
  *(v18 + 1) = v19;
  a2[v29[10]] = a1[v29[10]];
  return result;
}

uint64_t sub_59CC0()
{
  v7 = type metadata accessor for ListView(0);
  v0 = *(*(v7 - 8) + 80);
  v6 = (v0 + 16) & ~v0;

  v8 = *(v7 + 20);
  sub_1A88(&qword_919F8, &qword_7FDE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A88(&qword_91A00, &qword_7FDF0);
    if (!(*(*(v4 - 8) + 48))(v5 + v6 + v8, 1))
    {

      v3 = v5 + v6 + v8 + *(v4 + 32);
      v1 = sub_7CC54();
      (*(*(v1 - 8) + 8))(v3);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

__n128 sub_59F44(char *a1, char *a2)
{
  *a2 = *a1;
  v13 = type metadata accessor for ListView(0);
  v14 = v13[5];
  v16 = sub_1A88(&qword_919F8, &qword_7FDE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1A88(&qword_91A00, &qword_7FDF0);
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(&a1[v14], 1))
    {
      v3 = sub_1A88(&qword_91E80, &qword_80718);
      memcpy(&a2[v14], &a1[v14], *(*(v3 - 8) + 64));
    }

    else
    {
      v9 = &a2[v14];
      *v9 = *&a1[v14];
      *(v9 + 1) = *&a1[v14 + 8];
      v8 = &a2[v14 + *(v10 + 32)];
      v7 = &a1[v14 + *(v10 + 32)];
      v2 = sub_7CC54();
      (*(*(v2 - 8) + 32))(v8, v7);
      (*(v11 + 56))(&a2[v14], 0, 1, v10);
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(&a2[v14], &a1[v14], *(*(v16 - 8) + 64));
  }

  *&a2[v13[6]] = *&a1[v13[6]];
  v4 = &a2[v13[7]];
  v5 = v13[7];
  *v4 = *&a1[v5];
  *(v4 + 2) = *&a1[v5 + 16];
  *&a2[v13[8]] = *&a1[v13[8]];
  result = *&a1[v13[9]];
  *&a2[v13[9]] = result;
  a2[v13[10]] = a1[v13[10]];
  return result;
}

uint64_t sub_5A20C()
{
  v5 = v1;
  *(v1 + 16) = v1;
  v2 = *(type metadata accessor for ListView(0) - 8);
  v6 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_25A4;

  return sub_595F8(v0 + v6);
}

unint64_t sub_5A300()
{
  v2 = qword_91F78;
  if (!qword_91F78)
  {
    sub_B24C(&qword_91EC0, &qword_80748);
    sub_52D2C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91F78);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_5A398(uint64_t a1)
{
  sub_1A88(&qword_91F80, &qword_807C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1A88(&qword_91F90, &qword_807D0);
    (*(*(v3 - 8) + 8))(a1);
  }

  else
  {
    v1 = sub_1A88(&qword_91F88, &qword_807C8);
    (*(*(v1 - 8) + 8))(a1);
    v5 = a1 + *(sub_1A88(&qword_91EE8, &qword_80760) + 36);
    v2 = sub_7C574();
    (*(*(v2 - 8) + 8))(v5);
  }

  return a1;
}

uint64_t sub_5A4D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = a2;
  v7 = a1;
  v2 = sub_1A88(&qword_91E80, &qword_80718);
  v6 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v9 = (&v5 - v6);
  v13 = sub_7C244();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v8 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v13);
  v14 = &v5 - v8;
  (*(v11 + 16))(&v5 - v8, v3);
  sub_7C224();
  sub_61108(v9, v10);
  return (*(v11 + 8))(v14, v13);
}

uint64_t sub_5A634(uint64_t a1)
{
  v4 = a1;
  v5 = (*(*(sub_1A88(&qword_91E80, &qword_80718) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v6 = &v3 - v5;
  sub_60F74(v1, (&v3 - v5));
  return sub_7C234();
}

uint64_t sub_5A6EC@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v8 = a1;
  v11 = sub_5B354;
  v18 = sub_5BF08;
  v20 = sub_5C1E0;
  v38 = 0;
  v37 = 0;
  v30 = sub_1A88(&qword_91F98, &qword_807D8);
  v24 = *(v30 - 8);
  v25 = v30 - 8;
  v9 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v28 = &v7[-v9];
  v10 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v29 = &v7[-v10];
  v38 = &v7[-v10];
  v37 = v4;
  v17 = v36;
  v36[16] = v4;
  v19 = v35;
  v35[16] = v4;
  v21 = sub_1A88(&qword_91FA0, &qword_807E0);
  v22 = sub_1A88(&qword_91FA8, &unk_807E8);
  v14 = sub_5BF48();
  v15 = sub_5BFE8();
  v13 = &type metadata for EmptyView;
  v16 = &protocol witness table for EmptyView;
  v12 = sub_5BF10();
  v23 = v5;

  v33 = v12;
  v34 = v23;
  sub_7C474();

  v27 = sub_5C1EC();
  sub_1991C(v28, v30, v29);
  v32 = *(v24 + 8);
  v31 = v24 + 8;
  v32(v28, v30);
  (*(v24 + 16))(v28, v29, v30);
  sub_1991C(v28, v30, v26);
  v32(v28, v30);
  return (v32)(v29, v30);
}

uint64_t sub_5AA34@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v49 = a1;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v63 = 0;
  v61 = 0;
  v50 = 0;
  v35 = sub_7CEF4();
  v36 = *(v35 - 8);
  v37 = v35 - 8;
  v38 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v35);
  v39 = v12 - v38;
  v40 = sub_1A88(&qword_917D0, &qword_7FCB0);
  v41 = *(v40 - 8);
  v42 = v40 - 8;
  v43 = (v41[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v40);
  v44 = v12 - v43;
  v45 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12 - v43);
  v46 = v12 - v45;
  v47 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12 - v45);
  v48 = v12 - v47;
  v68 = v12 - v47;
  v51 = sub_1A88(&qword_91FA0, &qword_807E0);
  v53 = *(*(v51 - 8) + 64);
  v52 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v50);
  v54 = v12 - v52;
  v55 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v56 = v12 - v55;
  v67 = v12 - v55;
  v66 = v5;
  v57 = sub_7D184();
  v58 = sub_7D174();
  v59 = sub_7D154();
  v60 = v6;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (!v49 || v49 == 1)
  {
    v27 = 1;
    sub_7CF84("No Fonts Installed", 0x12uLL, 1);
    sub_7CE94();
    v25 = sub_61F88(v39);
    v26 = v7;
    (*(v36 + 8))(v39, v35);
    v30 = v62;
    v62[0] = v25;
    v62[1] = v26;
    v28 = sub_7CF84("textformat", 0xAuLL, v27 & 1);
    v29 = v8;
    sub_198A4();
    sub_7CA74();
    v31 = sub_38180();
    sub_1991C(v46, v40, v48);
    v32 = v41[1];
    v33 = v41 + 1;
    v32(v46, v40);
    v61 = v46;
    v24 = v41[2];
    v23 = v41 + 2;
    v24(v44, v48, v40);
    sub_1991C(v44, v40, v46);
    v32(v44, v40);
    v24(v44, v46, v40);
    sub_19980(v44, v40, v40, v31, v31, v54);
    v32(v44, v40);
    sub_5DA98(v54, v56);
    v32(v46, v40);
    v32(v48, v40);
  }

  else
  {
    v65 = v48;
    v16 = 1;
    sub_7CF84("No Fonts Available", 0x12uLL, 1);
    sub_7CE94();
    v14 = sub_61F88(v39);
    v15 = v9;
    (*(v36 + 8))(v39, v35);
    v19 = v64;
    v64[0] = v14;
    v64[1] = v15;
    v17 = sub_7CF84("textformat", 0xAuLL, v16 & 1);
    v18 = v10;
    sub_198A4();
    sub_7CA74();
    v20 = sub_38180();
    sub_1991C(v46, v40, v48);
    v21 = v41[1];
    v22 = v41 + 1;
    v21(v46, v40);
    v63 = v46;
    v13 = v41[2];
    v12[1] = v41 + 2;
    v13(v44, v48, v40);
    sub_1991C(v44, v40, v46);
    v21(v44, v40);
    v13(v44, v46, v40);
    sub_19A78(v44, v40, v40, v20, v20, v54);
    v21(v44, v40);
    sub_5DA98(v54, v56);
    v21(v46, v40);
    v21(v48, v40);
  }

  sub_5DBA8(v56, v54);
  sub_5BF48();
  sub_1991C(v54, v51, v34);
  sub_5DCB8(v54);
  sub_5DCB8(v56);
}

uint64_t sub_5B35C@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v93 = a1;
  v66 = "Fatal error";
  v67 = "Unexpectedly found nil while unwrapping an Optional value";
  v68 = "FontSettings/ListView.swift";
  v140 = 0;
  v139 = 0;
  v138 = 0;
  v137 = 0;
  v135 = 0u;
  v136 = 0u;
  v125 = 0u;
  v126 = 0u;
  memset(v118, 0, sizeof(v118));
  v69 = sub_1A88(&qword_91FD8, &unk_80800);
  v70 = (*(*(v69 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v69);
  v71 = &v26 - v70;
  v72 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v26 - v70);
  v73 = &v26 - v72;
  v140 = &v26 - v72;
  v3 = sub_1A88(&qword_90B50, &qword_7E2D0);
  v74 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v75 = &v26 - v74;
  v76 = sub_1A88(&qword_920A8, &qword_809C8);
  v77 = *(v76 - 8);
  v78 = v76 - 8;
  v79 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v76);
  v80 = &v26 - v79;
  v81 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v26 - v79);
  v82 = &v26 - v81;
  v83 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v26 - v81);
  v84 = &v26 - v83;
  v139 = &v26 - v83;
  v94 = 0;
  v85 = sub_7CEF4();
  v86 = *(v85 - 8);
  v87 = v85 - 8;
  v88 = (*(v86 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v85);
  v89 = &v26 - v88;
  v90 = sub_1A88(&qword_91FC8, &qword_807F8);
  v91 = (*(*(v90 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v90);
  v92 = &v26 - v91;
  v95 = sub_1A88(&qword_91FA8, &unk_807E8);
  v97 = *(*(v95 - 8) + 64);
  v96 = (v97 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v94);
  v98 = (&v26 - v96);
  v99 = (v97 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v100 = (&v26 - v99);
  v138 = &v26 - v99;
  v137 = v7;
  v101 = sub_7D184();
  v102 = sub_7D174();
  v103 = sub_7D154();
  v104 = v8;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v93)
  {
    if (v93 == 1)
    {
      v61 = 1;
      sub_7CF84("You can download apps that install fonts from the App Store.", 0x3CuLL, 1);
      sub_7CE94();
      v51 = sub_61F88(v89);
      v52 = v11;
      v57 = *(v86 + 8);
      v56 = v86 + 8;
      v57(v89, v85);
      v53 = v117;
      v117[0] = v51;
      v117[1] = v52;
      v54 = sub_198A4();
      v113 = sub_7C6E4();
      v114 = v12;
      v115 = v13;
      v116 = v14;
      v55 = v110;
      v110[0] = v113;
      v110[1] = v12;
      v111 = v13 & 1 & v61;
      v112 = v14;
      sub_1991C(v110, &type metadata for Text, v118);
      sub_23BF4(v55);
      sub_7CF84("Open App Store", 0xEuLL, v61 & 1);
      sub_7CE94();
      v58 = sub_61F88(v89);
      v59 = v15;
      v57(v89, v85);
      v109[2] = v58;
      v109[3] = v59;
      sub_7CF84("itms-apps://itunes.apple.com/", 0x1DuLL, v61 & 1);
      v60 = v16;
      sub_7BCB4();

      v17 = sub_7BCD4();
      if ((*(*(v17 - 8) + 48))(v75, v61) == 1)
      {
        sub_7D5E4();
        __break(1u);
      }

      sub_7C654();
      v43 = sub_5D778();
      sub_1991C(v82, v76, v84);
      v49 = *(v77 + 8);
      v48 = v77 + 8;
      v49(v82, v76);
      v50 = v118;
      v45 = v108;
      sub_23E4C(v118, v108);
      v44 = v109;
      v109[0] = v45;
      (*(v77 + 16))(v80, v84, v76);
      v109[1] = v80;
      v46 = &type metadata for Text;
      v107[0] = &type metadata for Text;
      v107[1] = v76;
      v47 = &protocol witness table for Text;
      v105 = &protocol witness table for Text;
      v106 = v43;
      sub_4E6CC(v44, 2uLL, v107, v73);
      v49(v80, v76);
      sub_23BF4(v45);
      sub_5D800(v73, v71);
      v18 = sub_5C130();
      sub_19A78(v71, &type metadata for EmptyView, v69, &protocol witness table for EmptyView, v18, v92);
      sub_5D908(v71);
      v19 = sub_5C08C();
      sub_19980(v92, v90, v46, v19, v47, v98);
      sub_5D9B8(v92);
      sub_5D260(v98, v100);
      sub_5D908(v73);
      v49(v84, v76);
      sub_23BF4(v50);
    }

    else
    {
      v36 = 1;
      sub_7CF84("Connect to a network to view fonts available to install.", 0x38uLL, 1);
      sub_7CE94();
      v26 = sub_61F88(v89);
      v27 = v20;
      (*(v86 + 8))(v89, v85);
      v28 = v134;
      v134[0] = v26;
      v134[1] = v27;
      sub_198A4();
      v130 = sub_7C6E4();
      v131 = v21;
      v132 = v22;
      v133 = v23;
      v29 = v127;
      v127[0] = v130;
      v127[1] = v21;
      v128 = v22 & 1;
      v129 = v23;
      v42 = &v135;
      v38 = &type metadata for Text;
      v39 = &protocol witness table for Text;
      sub_1991C(v127, &type metadata for Text, &v135);
      sub_23BF4(v29);
      v30 = v135;
      v31 = v136;
      v32 = *(&v136 + 1);
      sub_20C1C(v135, *(&v135 + 1), v136 & 1);

      v33 = &v122;
      v122 = v30;
      v123 = v31 & 1 & v36;
      v124 = v32;
      v41 = &v125;
      sub_1991C(&v122, v38, &v125);
      sub_23BF4(v33);
      v34 = v125;
      v35 = v126;
      v37 = *(&v126 + 1);
      sub_20C1C(v125, *(&v125 + 1), v126 & 1);

      v40 = &v119;
      v119 = v34;
      v120 = v35 & 1 & v36;
      v121 = v37;
      v24 = sub_5C08C();
      sub_19A78(v40, v90, v38, v24, v39, v98);
      sub_23BF4(v40);
      sub_5D260(v98, v100);
      sub_23BF4(v41);
      sub_23BF4(v42);
    }
  }

  else
  {
    sub_7CCC4();
    v62 = &type metadata for EmptyView;
    v63 = &protocol witness table for EmptyView;
    sub_1991C(v64, &type metadata for EmptyView, v64);
    sub_1991C(v64, v62, v64);
    v9 = sub_5C130();
    sub_19980(v64, v62, v69, v63, v9, v92);
    v10 = sub_5C08C();
    sub_19980(v92, v90, &type metadata for Text, v10, &protocol witness table for Text, v98);
    sub_5D9B8(v92);
    sub_5D260(v98, v100);
  }

  sub_5D3F8(v100, v98);
  sub_5BFE8();
  sub_1991C(v98, v95, v65);
  sub_5D640(v98);
  sub_5D640(v100);
}

unint64_t sub_5BF48()
{
  v2 = qword_91FB0;
  if (!qword_91FB0)
  {
    sub_B24C(&qword_91FA0, &qword_807E0);
    sub_38180();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91FB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5BFE8()
{
  v2 = qword_91FB8;
  if (!qword_91FB8)
  {
    sub_B24C(&qword_91FA8, &unk_807E8);
    sub_5C08C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91FB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5C08C()
{
  v2 = qword_91FC0;
  if (!qword_91FC0)
  {
    sub_B24C(&qword_91FC8, &qword_807F8);
    sub_5C130();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91FC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5C130()
{
  v2 = qword_91FD0;
  if (!qword_91FD0)
  {
    sub_B24C(&qword_91FD8, &unk_80800);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91FD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5C1EC()
{
  v2 = qword_91FE0;
  if (!qword_91FE0)
  {
    sub_B24C(&qword_91F98, &qword_807D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91FE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_5C2B8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = sub_1A88(&qword_91E78, &qword_80710);
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1 + *(a3 + 20), a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 24)) < 0x100000000uLL)
    {
      v4 = *(a1 + *(a3 + 24));
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_5C410(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = sub_1A88(&qword_91E78, &qword_80710);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1 + *(a4 + 20), a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_5C518(uint64_t a1)
{
  v8 = sub_236D8(319);
  if (v1 <= 0x3F)
  {
    v8 = sub_5C6C8(319);
    if (v2 <= 0x3F)
    {
      v8 = sub_5C76C(319);
      if (v3 <= 0x3F)
      {
        v8 = sub_5C810(319);
        if (v4 <= 0x3F)
        {
          v8 = sub_36E50(319);
          if (v5 <= 0x3F)
          {
            v8 = sub_36DBC(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v8;
}

unint64_t sub_5C6C8(uint64_t a1)
{
  v5 = qword_92050;
  if (!qword_92050)
  {
    sub_B24C(&qword_91E80, &qword_80718);
    v4 = sub_7BF14();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_92050);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_5C76C(uint64_t a1)
{
  v5 = qword_92058;
  if (!qword_92058)
  {
    sub_B24C(&qword_91E88, &qword_80720);
    v4 = sub_7CB14();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_92058);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_5C810(uint64_t a1)
{
  v5 = qword_92060;
  if (!qword_92060)
  {
    v4 = sub_7CB14();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_92060);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_5C8B0(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_5CA18(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_5CC28()
{
  sub_B24C(&qword_91EC0, &qword_80748);
  sub_5A300();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_5CD18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v51 = a9;
  v30 = a1;
  v37 = a2;
  v38 = a3;
  v35 = a4;
  v41 = a5;
  v43 = a6;
  v36 = a7;
  v44 = a8;
  v46 = a10;
  v39 = a11;
  v40 = sub_60D54;
  v47 = &protocol conformance descriptor for <> ForEach<A, B, C>;
  v65 = a4;
  v64 = a5;
  v63 = a6;
  v34 = *(a5 - 8);
  v29 = a5 - 8;
  v25 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v45 = &v24 - v25;
  v26 = 255;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = &protocol requirements base descriptor for Identifiable;
  v42 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v58 = v41;
  v59 = v42;
  v60 = v43;
  v61 = v44;
  v62 = AssociatedConformanceWitness;
  v54 = sub_7CBE4();
  v48 = *(v54 - 8);
  v49 = v54 - 8;
  v32 = *(v48 + 64);
  v31 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v45);
  v50 = &v24 - v31;
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = __chkstk_darwin(v12);
  v53 = &v24 - v33;
  (*(v34 + 16))(v13);

  v14 = swift_allocObject();
  v15 = v36;
  v16 = v37;
  v17 = v38;
  v18 = v39;
  v19 = v41;
  v20 = v43;
  v21 = v44;
  v22 = v46;
  v14[2] = v35;
  v14[3] = v19;
  v14[4] = v20;
  v14[5] = v15;
  v14[6] = v21;
  v14[7] = v22;
  v14[8] = v18;
  v14[9] = v16;
  v14[10] = v17;
  sub_7CBD4();
  v57 = v46;
  WitnessTable = swift_getWitnessTable();
  sub_1991C(v50, v54, v53);
  v56 = *(v48 + 8);
  v55 = v48 + 8;
  v56(v50, v54);
  sub_1991C(v53, v54, v51);
  return (v56)(v53, v54);
}

uint64_t sub_5D104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>, uint64_t a6)
{
  v17 = a5;
  v20 = a4;
  v18 = a6;
  v25 = a2;
  v24 = a3;
  v23 = a4;
  v14 = *(a4 - 8);
  v15 = a4 - 8;
  v12 = *(v14 + 64);
  v11 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v16 = &v10 - v11;
  v13 = v11;
  v7 = __chkstk_darwin(v6);
  v19 = &v10 - v13;
  v8(v7);
  sub_1991C(v16, v20, v19);
  v22 = *(v14 + 8);
  v21 = v14 + 8;
  v22(v16, v20);
  sub_1991C(v19, v20, v17);
  return (v22)(v19, v20);
}

_OWORD *sub_5D260(_OWORD *a1, _OWORD *a2)
{
  v10 = sub_1A88(&qword_920B0, &qword_809D0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v10 - 8) + 64));
  }

  else
  {
    v7 = sub_1A88(&qword_920B8, &qword_809D8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a2 = *a1;
      a2[1] = a1[1];
      v2 = sub_1A88(&qword_920C0, &qword_809E0);
      v6 = a2 + *(v2 + 48);
      v5 = a1 + *(v2 + 48);
      v3 = sub_1A88(&qword_920A8, &qword_809C8);
      (*(*(v3 - 8) + 32))(v6, v5);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v7 - 8) + 64));
    }

    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t *sub_5D3F8(uint64_t a1, uint64_t *a2)
{
  sub_1A88(&qword_920B0, &qword_809D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *a1;
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    sub_20C1C(*a1, v6, v7 & 1);
    *a2 = v5;
    a2[1] = v6;
    *(a2 + 16) = v7 & 1;
    v8 = *(a1 + 24);

    a2[3] = v8;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v15 = sub_1A88(&qword_920B8, &qword_809D8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v9 = *a1;
      v10 = *(a1 + 8);
      v11 = *(a1 + 16);
      sub_20C1C(*a1, v10, v11 & 1);
      *a2 = v9;
      a2[1] = v10;
      *(a2 + 16) = v11 & 1;
      v12 = *(a1 + 24);

      a2[3] = v12;
      v2 = sub_1A88(&qword_920C0, &qword_809E0);
      v14 = a2 + *(v2 + 48);
      v13 = a1 + *(v2 + 48);
      v3 = sub_1A88(&qword_920A8, &qword_809C8);
      (*(*(v3 - 8) + 16))(v14, v13);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v15 - 8) + 64));
    }

    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_5D640(uint64_t a1)
{
  sub_1A88(&qword_920B0, &qword_809D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_209FC(*a1, *(a1 + 8), *(a1 + 16) & 1);
  }

  else
  {
    sub_1A88(&qword_920B8, &qword_809D8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_209FC(*a1, *(a1 + 8), *(a1 + 16) & 1);

      v3 = a1 + *(sub_1A88(&qword_920C0, &qword_809E0) + 48);
      v1 = sub_1A88(&qword_920A8, &qword_809C8);
      (*(*(v1 - 8) + 8))(v3);
    }
  }

  return a1;
}

unint64_t sub_5D778()
{
  v2 = qword_920C8;
  if (!qword_920C8)
  {
    sub_B24C(&qword_920A8, &qword_809C8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_920C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_5D800(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  sub_20C1C(*a1, v5, v6 & 1);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  v7 = *(a1 + 24);

  *(a2 + 24) = v7;
  v8 = *(sub_1A88(&qword_920C0, &qword_809E0) + 48);
  v2 = sub_1A88(&qword_920A8, &qword_809C8);
  (*(*(v2 - 8) + 16))(a2 + v8, a1 + v8);
  return a2;
}

uint64_t sub_5D908(uint64_t a1)
{
  sub_209FC(*a1, *(a1 + 8), *(a1 + 16) & 1);

  v3 = *(sub_1A88(&qword_920C0, &qword_809E0) + 48);
  v1 = sub_1A88(&qword_920A8, &qword_809C8);
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

uint64_t sub_5D9B8(uint64_t a1)
{
  sub_1A88(&qword_920B8, &qword_809D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_209FC(*a1, *(a1 + 8), *(a1 + 16) & 1);

    v3 = a1 + *(sub_1A88(&qword_920C0, &qword_809E0) + 48);
    v1 = sub_1A88(&qword_920A8, &qword_809C8);
    (*(*(v1 - 8) + 8))(v3);
  }

  return a1;
}

uint64_t sub_5DA98(uint64_t a1, uint64_t a2)
{
  sub_1A88(&qword_920D0, &qword_809E8);
  swift_getEnumCaseMultiPayload();
  v2 = sub_1A88(&qword_917D0, &qword_7FCB0);
  (*(*(v2 - 8) + 32))(a2, a1);
  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_5DBA8(uint64_t a1, uint64_t a2)
{
  sub_1A88(&qword_920D0, &qword_809E8);
  swift_getEnumCaseMultiPayload();
  v2 = sub_1A88(&qword_917D0, &qword_7FCB0);
  (*(*(v2 - 8) + 16))(a2, a1);
  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_5DCB8(uint64_t a1)
{
  sub_1A88(&qword_920D0, &qword_809E8);
  swift_getEnumCaseMultiPayload();
  v1 = sub_1A88(&qword_917D0, &qword_7FCB0);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_5DD98()
{
  v7 = type metadata accessor for ListView(0);
  v0 = *(*(v7 - 8) + 80);
  v6 = (v0 + 16) & ~v0;

  v8 = *(v7 + 20);
  sub_1A88(&qword_919F8, &qword_7FDE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A88(&qword_91A00, &qword_7FDF0);
    if (!(*(*(v4 - 8) + 48))(v5 + v6 + v8, 1))
    {

      v3 = v5 + v6 + v8 + *(v4 + 32);
      v1 = sub_7CC54();
      (*(*(v1 - 8) + 8))(v3);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_5E01C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for ListView(0);
  v4 = v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));

  return sub_53554(a1, v4, a2);
}

unint64_t sub_5E09C()
{
  v2 = qword_920F0;
  if (!qword_920F0)
  {
    sub_B24C(&qword_91EA8, &qword_80740);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_920F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5E124()
{
  v2 = qword_920F8;
  if (!qword_920F8)
  {
    sub_B24C(&qword_920E8, &qword_80A00);
    sub_5E1C8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_920F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5E1C8()
{
  v2 = qword_92100;
  if (!qword_92100)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92100);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5E240()
{
  v2 = qword_92108;
  if (!qword_92108)
  {
    type metadata accessor for Family(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92108);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5E2C0(double a1)
{
  v3 = qword_92110;
  if (!qword_92110)
  {
    sub_7C264();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92110);
    return WitnessTable;
  }

  return v3;
}

uint64_t sub_5E350(uint64_t a1)
{
  v1 = sub_1A88(&qword_920D8, &qword_809F0);
  (*(*(v1 - 8) + 8))(a1);
  sub_1A88(&qword_91F10, &qword_80778);

  return a1;
}

unint64_t sub_5E3E8()
{
  v2 = qword_92120;
  if (!qword_92120)
  {
    sub_B24C(&qword_92118, &qword_80A08);
    sub_5E480();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92120);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5E480()
{
  v2 = qword_92128;
  if (!qword_92128)
  {
    sub_B24C(&qword_92130, &qword_80A10);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92128);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_5E508(uint64_t a1)
{
  v1 = sub_1A88(&qword_920E0, &qword_809F8);
  (*(*(v1 - 8) + 8))(a1);
  v3 = *(sub_1A88(&qword_91F00, &qword_80770) + 36);
  v5 = sub_1A88(&qword_92130, &qword_80A10);
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1 + v3, 1))
  {
    (*(v6 + 8))(a1 + v3, v5);
  }

  return a1;
}

uint64_t sub_5E62C(uint64_t a1, uint64_t a2)
{
  sub_1A88(&qword_91F80, &qword_807C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1A88(&qword_91F90, &qword_807D0);
    (*(*(v5 - 8) + 32))(a2, a1);
  }

  else
  {
    v2 = sub_1A88(&qword_91F88, &qword_807C8);
    (*(*(v2 - 8) + 32))(a2, a1);
    v3 = sub_1A88(&qword_91EE8, &qword_80760);
    v8 = a2 + *(v3 + 36);
    v7 = a1 + *(v3 + 36);
    v4 = sub_7C574();
    (*(*(v4 - 8) + 32))(v8, v7);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_5E7AC(uint64_t a1, uint64_t a2)
{
  sub_1A88(&qword_91F80, &qword_807C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1A88(&qword_91F90, &qword_807D0);
    (*(*(v5 - 8) + 16))(a2, a1);
  }

  else
  {
    v2 = sub_1A88(&qword_91F88, &qword_807C8);
    (*(*(v2 - 8) + 16))(a2, a1);
    v3 = sub_1A88(&qword_91EE8, &qword_80760);
    v8 = a2 + *(v3 + 36);
    v7 = a1 + *(v3 + 36);
    v4 = sub_7C574();
    (*(*(v4 - 8) + 16))(v8, v7);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_5E92C(uint64_t a1)
{
  v1 = sub_1A88(&qword_91F88, &qword_807C8);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(sub_1A88(&qword_91EE8, &qword_80760) + 36);
  v2 = sub_7C574();
  (*(*(v2 - 8) + 8))(a1 + v4);
  return a1;
}

uint64_t sub_5E9F0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A88(&qword_91F88, &qword_807C8);
  (*(*(v2 - 8) + 16))(a2, a1);
  v5 = *(sub_1A88(&qword_91EE8, &qword_80760) + 36);
  v3 = sub_7C574();
  (*(*(v3 - 8) + 16))(a2 + v5, a1 + v5);
  return a2;
}

unint64_t sub_5EAD0()
{
  v2 = qword_92138;
  if (!qword_92138)
  {
    sub_B24C(&qword_91EA8, &qword_80740);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92138);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_5EB58(uint64_t a1)
{
  v3 = sub_1A88(&qword_92130, &qword_80A10);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_5EC0C(const void *a1, void *a2)
{
  v6 = sub_1A88(&qword_92130, &qword_80A10);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_1A88(&qword_92118, &qword_80A08);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_5ED40(const void *a1, void *a2)
{
  v6 = sub_1A88(&qword_92130, &qword_80A10);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_1A88(&qword_92118, &qword_80A08);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_5EE74(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

uint64_t sub_5EF84(uint64_t a1)
{
  v3 = sub_1A88(&qword_91F60, &qword_807A0);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_5F038(const void *a1, void *a2)
{
  v6 = sub_1A88(&qword_91F60, &qword_807A0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_1A88(&qword_91F48, &qword_80798);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_5F16C(const void *a1, void *a2)
{
  v6 = sub_1A88(&qword_91F60, &qword_807A0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_1A88(&qword_91F48, &qword_80798);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_5F2A8()
{
  v2 = qword_92170;
  if (!qword_92170)
  {
    sub_B24C(&qword_92168, &qword_80A40);
    sub_5F350();
    sub_1EBD0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92170);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5F350()
{
  v3 = qword_92178;
  if (!qword_92178)
  {
    sub_B24C(&qword_92180, &qword_80A48);
    sub_5F3F8(v0);
    sub_5F478();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92178);
    return WitnessTable;
  }

  return v3;
}

unint64_t sub_5F3F8(double a1)
{
  v3 = qword_92188;
  if (!qword_92188)
  {
    sub_7BEC4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92188);
    return WitnessTable;
  }

  return v3;
}

unint64_t sub_5F478()
{
  v2 = qword_92190;
  if (!qword_92190)
  {
    sub_B24C(&qword_92198, &qword_80A50);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92190);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5F500()
{
  v2 = qword_921A0;
  if (!qword_921A0)
  {
    sub_B24C(&qword_92160, &qword_80A38);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_921A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5F588()
{
  v2 = qword_921A8;
  if (!qword_921A8)
  {
    sub_B24C(&qword_92140, &qword_80A18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_921A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_5F610(uint64_t a1)
{
  v3 = sub_1A88(&qword_92140, &qword_80A18);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_5F6C4(const void *a1, void *a2)
{
  v6 = sub_1A88(&qword_92140, &qword_80A18);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_1A88(&qword_92158, &qword_80A30);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_5F7F8(const void *a1, void *a2)
{
  v6 = sub_1A88(&qword_92140, &qword_80A18);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_1A88(&qword_92158, &qword_80A30);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_5F92C()
{
  v2 = qword_921B0;
  if (!qword_921B0)
  {
    sub_B24C(&qword_92158, &qword_80A30);
    sub_5F588();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_921B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5F9D4()
{
  v2 = qword_921C0;
  if (!qword_921C0)
  {
    sub_B24C(&qword_921B8, &qword_80A58);
    sub_24298();
    sub_5F478();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_921C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5FA7C()
{
  v2 = qword_921C8;
  if (!qword_921C8)
  {
    sub_B24C(&qword_92150, &qword_80A28);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_921C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5FB0C()
{
  v2 = qword_921E0;
  if (!qword_921E0)
  {
    sub_B24C(&qword_921D8, &qword_80A68);
    sub_5F9D4();
    sub_1EB48();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_921E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5FBB4()
{
  v2 = qword_921E8;
  if (!qword_921E8)
  {
    sub_B24C(&qword_92148, &qword_80A20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_921E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_5FC3C()
{
  v7 = type metadata accessor for ListView(0);
  v0 = *(*(v7 - 8) + 80);
  v6 = (v0 + 16) & ~v0;

  v8 = *(v7 + 20);
  sub_1A88(&qword_919F8, &qword_7FDE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A88(&qword_91A00, &qword_7FDF0);
    if (!(*(*(v4 - 8) + 48))(v5 + v6 + v8, 1))
    {

      v3 = v5 + v6 + v8 + *(v4 + 32);
      v1 = sub_7CC54();
      (*(*(v1 - 8) + 8))(v3);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_5FEC0()
{
  v1 = *(type metadata accessor for ListView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_577B4(v2);
}

uint64_t sub_5FF24(uint64_t a1)
{
  v1 = sub_1A88(&qword_91128, &qword_7F0C0);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(sub_1A88(&qword_91200, &qword_7F140) + 36);
  v2 = sub_7C574();
  (*(*(v2 - 8) + 8))(a1 + v4);
  sub_1A88(&qword_921B8, &qword_80A58);

  return a1;
}

uint64_t sub_60034(uint64_t a1)
{
  v1 = sub_1A88(&qword_91128, &qword_7F0C0);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(sub_1A88(&qword_91200, &qword_7F140) + 36);
  v2 = sub_7C574();
  (*(*(v2 - 8) + 8))(a1 + v4);
  sub_1A88(&qword_921B8, &qword_80A58);

  sub_1A88(&qword_921D8, &qword_80A68);

  return a1;
}

uint64_t sub_60170()
{
  v7 = type metadata accessor for ListView(0);
  v0 = *(*(v7 - 8) + 80);
  v6 = (v0 + 16) & ~v0;

  v8 = *(v7 + 20);
  sub_1A88(&qword_919F8, &qword_7FDE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A88(&qword_91A00, &qword_7FDF0);
    if (!(*(*(v4 - 8) + 48))(v5 + v6 + v8, 1))
    {

      v3 = v5 + v6 + v8 + *(v4 + 32);
      v1 = sub_7CC54();
      (*(*(v1 - 8) + 8))(v3);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_603F4()
{
  v1 = *(type metadata accessor for ListView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_5813C(v2);
}

uint64_t sub_60458()
{
  v7 = type metadata accessor for ListView(0);
  v0 = *(*(v7 - 8) + 80);
  v6 = (v0 + 16) & ~v0;

  v8 = *(v7 + 20);
  sub_1A88(&qword_919F8, &qword_7FDE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A88(&qword_91A00, &qword_7FDF0);
    if (!(*(*(v4 - 8) + 48))(v5 + v6 + v8, 1))
    {

      v3 = v5 + v6 + v8 + *(v4 + 32);
      v1 = sub_7CC54();
      (*(*(v1 - 8) + 8))(v3);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_606E4()
{
  v4 = *(type metadata accessor for ListView(0) - 8);
  v1 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v2 = *(v0 + v1 + *(v4 + 64)) & 1;

  return sub_56440(v0 + v1, v2);
}

uint64_t sub_60790(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A88(&qword_91128, &qword_7F0C0);
  (*(*(v2 - 8) + 16))(a2, a1);
  v5 = *(sub_1A88(&qword_91200, &qword_7F140) + 36);
  v3 = sub_7C574();
  (*(*(v3 - 8) + 16))(a2 + v5, a1 + v5);
  v7 = *(sub_1A88(&qword_921B8, &qword_80A58) + 36);
  v8 = *(a1 + v7);

  v11 = a2 + v7;
  *(a2 + v7) = v8;
  v10 = *(a1 + v7 + 8);
  v12 = *(a1 + v7 + 16);

  result = a2;
  *(v11 + 8) = v10;
  *(v11 + 16) = v12;
  return result;
}

unint64_t sub_60924()
{
  v2 = qword_921F8;
  if (!qword_921F8)
  {
    sub_B24C(&qword_921F0, &qword_80A90);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_921F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_609AC(uint64_t a1, double a2)
{
  v2 = sub_7BEC4();
  (*(*(v2 - 8) + 8))(a1);
  sub_1A88(&qword_92180, &qword_80A48);

  return a1;
}

uint64_t sub_60A44(uint64_t a1, double a2)
{
  v2 = sub_7BEC4();
  (*(*(v2 - 8) + 8))(a1);
  sub_1A88(&qword_92180, &qword_80A48);

  v5 = *(sub_1A88(&qword_92168, &qword_80A40) + 36);
  v3 = sub_7C574();
  (*(*(v3 - 8) + 8))(a1 + v5);
  return a1;
}

uint64_t sub_60B40(uint64_t a1, uint64_t a2, double a3)
{
  v3 = sub_7BEC4();
  (*(*(v3 - 8) + 16))(a2, a1);
  v6 = *(sub_1A88(&qword_92180, &qword_80A48) + 36);
  v7 = *(a1 + v6);

  v9 = a2 + v6;
  *(a2 + v6) = v7;
  v8 = *(a1 + v6 + 8);
  v10 = *(a1 + v6 + 16);

  *(v9 + 8) = v8;
  *(v9 + 16) = v10;
  v11 = *(sub_1A88(&qword_92168, &qword_80A40) + 36);
  v4 = sub_7C574();
  (*(*(v4 - 8) + 16))(a2 + v11, a1 + v11);
  return a2;
}

uint64_t sub_60DB0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
    sub_20C1C(a1, a2, a3 & 1);
  }
}

uint64_t sub_60E5C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
    sub_209FC(a1, a2, a3 & 1);
  }
}

unint64_t sub_60EC4()
{
  v2 = qword_92200;
  if (!qword_92200)
  {
    type metadata accessor for ComparisonResult(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92200);
    return WitnessTable;
  }

  return v2;
}

void *sub_60F74(uint64_t *a1, void *a2)
{
  v11 = sub_1A88(&qword_91A00, &qword_7FDF0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a1, 1))
  {
    v3 = sub_1A88(&qword_91E80, &qword_80718);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v5 = *a1;

    *a2 = v5;
    v6 = a1[1];

    a2[1] = v6;
    v8 = a2 + *(v11 + 32);
    v7 = a1 + *(v11 + 32);
    v2 = sub_7CC54();
    (*(*(v2 - 8) + 16))(v8, v7);
    (*(v12 + 56))(a2, 0, 1, v11);
  }

  return a2;
}

void *sub_61108(void *a1, void *a2)
{
  v9 = sub_1A88(&qword_91A00, &qword_7FDF0);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a1, 1))
  {
    v3 = sub_1A88(&qword_91E80, &qword_80718);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    a2[1] = a1[1];
    v6 = a2 + *(v9 + 32);
    v5 = a1 + *(v9 + 32);
    v2 = sub_7CC54();
    (*(*(v2 - 8) + 32))(v6, v5);
    (*(v10 + 56))(a2, 0, 1, v9);
  }

  return a2;
}

uint64_t *sub_61278()
{
  if (qword_90A60 != -1)
  {
    swift_once();
  }

  return &qword_94EA8;
}

uint64_t *sub_612D8()
{
  if (qword_90A48 != -1)
  {
    swift_once();
  }

  return &qword_94E78;
}

uint64_t sub_61338()
{
  v22 = sub_648CC;
  v36 = 0;
  v33 = 0;
  v23 = 0;
  v29 = sub_7BCD4();
  v26 = *(v29 - 8);
  v27 = v29 - 8;
  v24 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = __chkstk_darwin(v29);
  v28 = v7 - v24;
  v36 = v1;
  (*(v26 + 16))(v7 - v24, v0);
  sub_7BC84(v2);
  v25 = v3;
  FontDescriptorsFromURL = CTFontManagerCreateFontDescriptorsFromURL(v3);

  (*(v26 + 8))(v28, v29);
  if (FontDescriptorsFromURL)
  {
    v21 = FontDescriptorsFromURL;
    v19 = FontDescriptorsFromURL;
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20)
    {
      v18 = v20;
      v17 = sub_1A88(&qword_90CE8, &unk_80F50);
      v18;
      sub_13B80();
      sub_7D774();

      if (v31)
      {
        v16 = v31;
LABEL_7:
        v15 = v16;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v16 = 0;
    goto LABEL_7;
  }

  v15 = 0;
LABEL_8:
  v34 = v15;
  if (v15)
  {
    v35 = v34;
  }

  else
  {
    v14 = 0;
    type metadata accessor for CTFontDescriptor(0);
    v35 = sub_7D714();
    if (v34)
    {
      sub_B2C0(&v34);
    }
  }

  v4 = v23;
  v9 = v35;
  v33 = v35;
  v32[1] = v35;
  KeyPath = swift_getKeyPath();

  v11 = sub_1A88(&qword_90CE8, &unk_80F50);
  v5 = sub_12A7C();
  v13 = sub_7FFC(v22, KeyPath, v11, &type metadata for String, &type metadata for Never, v5, &protocol witness table for Never, v12);
  if (v4)
  {

    __break(1u);
  }

  else
  {
    v7[0] = v13;

    v7[2] = v32;
    v32[0] = v7[0];
    v7[1] = sub_1A88(&qword_90CB8, &qword_80B00);
    sub_64900();
    v8 = sub_7D2C4();

    return v8;
  }

  return result;
}

uint64_t *sub_6175C()
{
  if (qword_90A58 != -1)
  {
    swift_once();
  }

  return &qword_94E98;
}

uint64_t sub_6180C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t *sub_61828()
{
  if (qword_90A70 != -1)
  {
    swift_once();
  }

  return &qword_94EC0;
}

uint64_t *sub_61888()
{
  if (qword_90A50 != -1)
  {
    swift_once();
  }

  return &qword_94E88;
}

uint64_t *sub_618E8()
{
  if (qword_90A68 != -1)
  {
    swift_once();
  }

  return &qword_94EB0;
}

uint64_t sub_61948()
{
  v14 = 0;
  kCTFontFamilyNameAttribute;
  v7 = CTFontDescriptorCopyAttribute(descriptor, kCTFontFamilyNameAttribute);

  if (v7)
  {
    if (swift_dynamicCast())
    {
      v4 = v8;
      v5 = v9;
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    v2 = v4;
    v3 = v5;
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  v10 = v2;
  v11 = v3;
  if (v3)
  {
    v12 = v10;
    v13 = v11;
  }

  else
  {
    v12 = sub_7CF84("", 0, 1);
    v13 = v0;
  }

  return v12;
}

uint64_t sub_61AC4()
{
  v5 = sub_638F8();
  v4;
  v3 = (v5 & 1) != 0 && sub_63A38();

  v4;
  if (v3)
  {
    v2 = sub_61C04() ^ 1;
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  v4;
  if (v2)
  {
    v1 = sub_61E48() ^ 1;
  }

  else
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 1;
}

uint64_t sub_61C04()
{
  kCTFontDownloadedAttribute;
  v5 = CTFontDescriptorCopyAttribute(descriptor, kCTFontDownloadedAttribute);

  if (v5)
  {
    if (swift_dynamicCast())
    {
      v3 = v6 & 1;
    }

    else
    {
      v3 = 2;
    }

    v2 = v3;
  }

  else
  {
    v2 = 2;
  }

  if (v2 == 2)
  {
    v1 = 0;
  }

  else
  {
    v1 = v2;
  }

  return v1 & 1;
}

uint64_t sub_61D44()
{
  attribute = kCTFontDesignLanguagesAttribute;
  kCTFontDesignLanguagesAttribute;
  v5 = CTFontDescriptorCopyAttribute(descriptor, attribute);

  if (!v5)
  {
    return 0;
  }

  sub_1A88(&qword_90CB8, &qword_80B00);
  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_61E48()
{
  kCTFontDownloadableAttribute;
  v5 = CTFontDescriptorCopyAttribute(descriptor, kCTFontDownloadableAttribute);

  if (v5)
  {
    if (swift_dynamicCast())
    {
      v3 = v6 & 1;
    }

    else
    {
      v3 = 2;
    }

    v2 = v3;
  }

  else
  {
    v2 = 2;
  }

  if (v2 == 2)
  {
    v1 = 0;
  }

  else
  {
    v1 = v2;
  }

  return v1 & 1;
}

uint64_t sub_61F88(uint64_t a1)
{
  v5[1] = a1;
  v15 = 0;
  v9 = 0;
  v5[0] = (*(*(sub_7BD34() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v11 = v5 - v5[0];
  v1 = sub_7CEF4();
  v7 = *(v1 - 8);
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v1);
  v8 = v5 - v6;
  v15 = v3;
  (*(v7 + 16))(v2);
  v10 = *sub_622EC();
  v10;
  sub_3E1D0();
  v12 = 0;
  v13 = 0;
  v14 = 256;
  return sub_7CF44();
}

uint64_t sub_62174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for CGSize(0);

  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v4 = sub_64BE4();
  sub_64B1C(v9, sub_64988, 0, sub_64B10, v11, a3, v9, a4, v4);
}

uint64_t *sub_622EC()
{
  if (qword_90A30 != -1)
  {
    swift_once();
  }

  return &qword_94E50;
}

void sub_6234C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v8 = a1;
  v28 = 0;
  v21 = 0;
  v5 = (*(*(sub_7BD34() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v22 = &v5 - v5;
  v14 = sub_7BCD4();
  v11 = *(v14 - 8);
  v12 = v14 - 8;
  v6 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v21);
  v13 = &v5 - v6;
  v18 = sub_7BC14();
  v16 = *(v18 - 8);
  v17 = v18 - 8;
  v7 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v21);
  v23 = &v5 - v7;
  v2 = sub_7CEF4();
  v10 = *(v2 - 8);
  v9 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v2);
  v20 = &v5 - v9;
  v28 = v4;
  (*(v10 + 16))(v3);
  v15 = *sub_622EC();
  v15;
  v24 = [v15 bundleURL];
  sub_7BC94();
  (*(v11 + 32))(v23, v13, v14);

  (*(v16 + 104))(v23, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v18);
  sub_3E1D0();
  v25 = 0;
  v26 = 0;
  v27 = 256;
  sub_7BC34();
}

CTFontRef sub_6263C(CGFloat a1)
{
  v5 = sub_1A88(&qword_92218, &qword_80B08);
  v4 = sub_7D714();
  v3 = v1;
  kCTFontOpticalSizeAttribute;
  *v3 = kCTFontOpticalSizeAttribute;
  *(v3 + 8) = sub_6213C();
  sub_71DDC(v4, v5);
  type metadata accessor for CFString(0);
  sub_B438();
  sub_7CDB4();
  isa = sub_7CD84().super.isa;
  v9 = CTFontDescriptorCreateWithAttributes(isa);

  CopyWithAttributes = CTFontCreateCopyWithAttributes(v7, a1, 0, v9);

  return CopyWithAttributes;
}

uint64_t sub_62784()
{
  CTFontGetSymbolicTraits(v0);
  type metadata accessor for CTFontSymbolicTraits(0);
  sub_E0A4();
  return sub_7D894() & 1;
}

CTFontRef sub_62800()
{
  v12 = sub_1A88(&qword_92220, &qword_80B10);
  v13 = sub_7D714();
  v11 = v0;
  kCTFontFeatureSettingsAttribute;
  *v11 = kCTFontFeatureSettingsAttribute;
  v9 = sub_1A88(&qword_92228, &qword_80B18);
  v10 = sub_7D714();
  v8 = v1;
  v6 = sub_1A88(&qword_92230, &qword_80B20);
  v7 = sub_7D714();
  v5 = v2;
  kCTFontFeatureTypeIdentifierKey;
  *v5 = kCTFontFeatureTypeIdentifierKey;
  v5[1] = (&stru_20 + 3);
  kCTFontFeatureSelectorIdentifierKey;
  v5[2] = kCTFontFeatureSelectorIdentifierKey;
  v5[3] = &dword_C;
  sub_71DDC(v7, v6);
  type metadata accessor for CFString(0);
  sub_B438();
  *v8 = sub_7CDB4();
  sub_71DDC(v10, v9);
  v11[1] = v3;
  sub_71DDC(v13, v12);
  sub_1A88(&qword_92238, &unk_80B28);
  sub_7CDB4();
  isa = sub_7CD84().super.isa;
  v16 = CTFontDescriptorCreateWithAttributes(isa);

  v16;
  CopyWithAttributes = CTFontCreateCopyWithAttributes(v15, 0.0, 0, v16);

  return CopyWithAttributes;
}

id sub_62A70()
{
  sub_656A8();
  type metadata accessor for FontSettingsModel(0);
  result = sub_62AB8();
  qword_94E50 = result;
  return result;
}

id sub_62AB8()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0 = [swift_getObjCClassFromMetadata() bundleForClass:ObjCClassFromMetadata];

  return v0;
}

uint64_t sub_62B10(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_62B70()
{
  v2 = *(v0 + 24);

  return v2;
}

uint64_t sub_62BA8(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_62BF4()
{
  v2 = *(v0 + 40);

  return v2;
}

uint64_t sub_62C20(uint64_t a1)
{

  *(v1 + 40) = a1;
}

BOOL sub_62C5C(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else if (a1 == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else if (a2 == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

void sub_62F0C()
{
  v4 = *sub_622EC();
  v4;
  v5 = [v4 bundleIdentifier];
  if (v5)
  {
    *&v2 = sub_7CF14();
    *(&v2 + 1) = v0;

    v3 = v2;
  }

  else
  {
    v3 = 0uLL;
  }

  if (*(&v3 + 1))
  {
    xmmword_94E58 = v3;
  }

  else
  {
    *&xmmword_94E58 = sub_7CF84("com.apple.FontServices.FontSettings", 0x23uLL, 1);
    *(&xmmword_94E58 + 1) = v1;
  }
}

__int128 *sub_6305C()
{
  if (qword_90A38 != -1)
  {
    swift_once();
  }

  return &xmmword_94E58;
}

uint64_t sub_630BC()
{
  v1 = *sub_6305C();

  return v1;
}

uint64_t sub_630F8()
{
  result = sub_7CF84("FontFiles", 9uLL, 1);
  qword_94E68 = result;
  qword_94E70 = v1;
  return result;
}

uint64_t *sub_6313C()
{
  if (qword_90A40 != -1)
  {
    swift_once();
  }

  return &qword_94E68;
}

uint64_t sub_6319C()
{
  v1 = *sub_6313C();

  return v1;
}

void sub_631D8()
{
  v1 = [objc_opt_self() fontProviderFileDirectoryPath];
  qword_94E78 = sub_7CF14();
  qword_94E80 = v0;
}

uint64_t sub_63244()
{
  v1 = *sub_612D8();

  return v1;
}

uint64_t sub_63280()
{
  result = sub_7CF84("InvalidLanguage", 0xFuLL, 1);
  qword_94E88 = result;
  qword_94E90 = v1;
  return result;
}

uint64_t sub_632C4()
{
  v1 = *sub_61888();

  return v1;
}

uint64_t sub_63300()
{
  result = sub_7CF84(".", 1uLL, 1);
  qword_94E98 = result;
  qword_94EA0 = v1;
  return result;
}

uint64_t sub_63344()
{
  v1 = *sub_6175C();

  return v1;
}

void *sub_63380()
{
  kCTFontManagerRegisteredFontsChangedNotification;
  sub_7CF14();

  v1 = sub_7CF04();
  v1;

  result = v1;
  qword_94EA8 = v1;
  return result;
}

void *sub_63428()
{
  v1 = *sub_61278();
  v1;
  return v1;
}

uint64_t sub_63460()
{
  result = sub_7CF84("LocalizedFamilyNames", 0x14uLL, 1);
  qword_94EB0 = result;
  qword_94EB8 = v1;
  return result;
}

uint64_t sub_634A4()
{
  v1 = *sub_618E8();

  return v1;
}

uint64_t sub_634E0()
{
  result = sub_7CF84("FontDesignLanguages", 0x13uLL, 1);
  qword_94EC0 = result;
  qword_94EC8 = v1;
  return result;
}

uint64_t sub_63524()
{
  v1 = *sub_61828();

  return v1;
}

void sub_635AC(uint64_t *a1@<X8>)
{
  String.id.getter(*v1, v1[1]);
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_635E4()
{
  v15 = 0;
  attribute = kCTFontPostScriptNameAttribute;
  kCTFontPostScriptNameAttribute;
  v8 = CTFontDescriptorCopyAttribute(descriptor, attribute);

  if (v8)
  {
    if (swift_dynamicCast())
    {
      v4 = v9;
      v5 = v10;
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    v2 = v4;
    v3 = v5;
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  v11 = v2;
  v12 = v3;
  if (v3)
  {
    v13 = v11;
    v14 = v12;
  }

  else
  {
    v13 = sub_7CF84("", 0, 1);
    v14 = v0;
  }

  return v13;
}

uint64_t sub_63760()
{
  v14 = 0;
  kCTFontFamilyNameAttribute;
  v7 = CTFontDescriptorCopyLocalizedAttribute(descriptor, kCTFontFamilyNameAttribute, 0);

  if (v7)
  {
    if (swift_dynamicCast())
    {
      v4 = v8;
      v5 = v9;
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    v2 = v4;
    v3 = v5;
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  v10 = v2;
  v11 = v3;
  descriptor;
  if (v3)
  {
    v12 = v10;
    v13 = v11;
  }

  else
  {
    v12 = sub_61948();
    v13 = v0;
  }

  return v12;
}

uint64_t sub_638F8()
{
  attribute = kCTFontUserInstalledAttribute;
  kCTFontUserInstalledAttribute;
  v6 = CTFontDescriptorCopyAttribute(descriptor, attribute);

  if (v6)
  {
    if (swift_dynamicCast())
    {
      v3 = v7 & 1;
    }

    else
    {
      v3 = 2;
    }

    v2 = v3;
  }

  else
  {
    v2 = 2;
  }

  if (v2 == 2)
  {
    v1 = 0;
  }

  else
  {
    v1 = v2;
  }

  return v1 & 1;
}

BOOL sub_63A38()
{
  v25 = 0;
  v24 = 0;
  v1 = sub_1A88(&qword_90B50, &qword_7E2D0);
  v13 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v14 = &v5 - v13;
  v15 = sub_7BCD4();
  v16 = *(v15 - 8);
  v17 = v15 - 8;
  v18 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v15);
  v19 = &v5 - v18;
  v25 = &v5 - v18;
  v24 = v0;
  v21 = kCTFontURLAttribute;
  kCTFontURLAttribute;
  v22 = CTFontDescriptorCopyAttribute(v20, v21);

  if (v22 && (v12 = v22, v23 = v22, (swift_dynamicCast() & 1) != 0))
  {
    (*(v16 + 56))(v14, 0, 1, v15);
  }

  else
  {
    (*(v16 + 56))(v14, 1, 1, v15);
  }

  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_64CE0(v14);
    return 0;
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
    v7 = sub_7BCA4();
    v9 = v2;
    v3 = sub_612D8();
    v6 = *v3;
    v8 = v3[1];

    v26._countAndFlagsBits = v6;
    v26._object = v8;
    v10 = sub_7D014(v26);

    (*(v16 + 8))(v19, v15);
    return v10;
  }
}