double sub_200E2C@<D0>(_OWORD *a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v7 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v7 - 8);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v10 - 8);
  v12 = (v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  *a3 = sub_263550();
  a3[1] = v13;
  v14 = sub_2EF0(&qword_325F40, &qword_288EA0);
  sub_206CDC(a2, a3 + *(v14 + 44), a4);
  LOBYTE(a2) = sub_262510();
  sub_1F8488(v12);
  sub_20DCBC(v12, v9, type metadata accessor for SizeConstants.Environment);
  sub_20D990(v9, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = a3 + *(sub_2EF0(&qword_325F48, &qword_288EA8) + 36);
  *v23 = a2;
  *(v23 + 1) = v16;
  *(v23 + 2) = v18;
  *(v23 + 3) = v20;
  *(v23 + 4) = v22;
  v23[40] = 0;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v24 = (a3 + *(sub_2EF0(&qword_325D88, &qword_288DA0) + 36));
  v25 = v27[1];
  *v24 = v27[0];
  v24[1] = v25;
  result = *&v28;
  v24[2] = v28;
  return result;
}

double sub_201030@<D0>(uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v9 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v9 - 8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v12 - 8);
  v14 = (v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *a4 = sub_263550();
  a4[1] = v15;
  v16 = sub_2EF0(&qword_325F18, &qword_288E78);
  sub_20713C(a2, a3 & 1, a4 + *(v16 + 44), a5);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v17 = (a4 + *(sub_2EF0(&qword_325F20, &qword_288E80) + 36));
  v18 = v30[1];
  *v17 = v30[0];
  v17[1] = v18;
  v17[2] = v30[2];
  LOBYTE(a2) = sub_262530();
  sub_1F8488(v14);
  sub_20DCBC(v14, v11, type metadata accessor for SizeConstants.Environment);
  sub_20D990(v11, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = a4 + *(sub_2EF0(&qword_325F28, &qword_288E88) + 36);
  *v27 = a2;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  v28 = sub_2EF0(&qword_325D78, &qword_288D90);
  result = 0.0;
  *(a4 + *(v28 + 36)) = xmmword_288B10;
  return result;
}

double sub_201258@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v9 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v9 - 8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v12 - 8);
  v14 = (v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *a4 = sub_263550();
  a4[1] = v15;
  v16 = sub_2EF0(&qword_325E30, &qword_288E40);
  sub_207BD4(a2, a3, a4 + *(v16 + 44), a5);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v17 = (a4 + *(sub_2EF0(&qword_325E38, &qword_288E48) + 36));
  v18 = v30[1];
  *v17 = v30[0];
  v17[1] = v18;
  v17[2] = v30[2];
  LOBYTE(a3) = sub_262530();
  sub_1F8488(v14);
  sub_20DCBC(v14, v11, type metadata accessor for SizeConstants.Environment);
  sub_20D990(v11, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = a4 + *(sub_2EF0(&qword_325E40, &qword_288E50) + 36);
  *v27 = a3;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  v28 = sub_2EF0(&qword_325D58, &qword_288D70);
  result = 0.0;
  *(a4 + *(v28 + 36)) = xmmword_288B10;
  return result;
}

uint64_t sub_201480@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(void)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, uint64_t *a15, uint64_t *a16, uint64_t *a17, uint64_t *a18, uint64_t *a19, uint64_t *a20)
{
  v172 = a8;
  v173 = a7;
  v155 = a5;
  v156 = a6;
  v164 = a4;
  v158 = a2;
  v183 = a1;
  v180 = a9;
  v176 = a11;
  v177 = a12;
  v171 = sub_2EF0(a11, a12);
  __chkstk_darwin(v171);
  v175 = &v153 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v174 = &v153 - v23;
  v24 = sub_2EF0(&qword_316208, &qword_268BD0);
  __chkstk_darwin(v24 - 8);
  v163 = &v153 - v25;
  v181 = a13;
  v182 = a14;
  v26 = sub_2EF0(a13, a14);
  __chkstk_darwin(v26 - 8);
  v179 = &v153 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v178 = &v153 - v29;
  v30 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v30 - 8);
  v162 = &v153 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v32 - 8);
  v161 = (&v153 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = sub_25FF40();
  v168 = *(v34 - 1);
  v169 = v34;
  __chkstk_darwin(v34);
  v167 = (&v153 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v36 - 8);
  v38 = &v153 - v37;
  v39 = sub_262730();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = &v153 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for FontConstants.Brick(0);
  __chkstk_darwin(v43 - 8);
  v45 = (&v153 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = sub_260BD0();
  v47 = *(v46 - 8);
  __chkstk_darwin(v46);
  v157 = &v153 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v51 = (&v153 - v50);
  v166 = sub_2EF0(&qword_325FE8, &qword_288F50);
  __chkstk_darwin(v166);
  v184 = &v153 - v52;
  v160 = sub_2EF0(&qword_325FF0, &qword_288F58);
  __chkstk_darwin(v160);
  v170 = &v153 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v159 = &v153 - v55;
  v57 = __chkstk_darwin(v56);
  v185 = v47;
  v186 = &v153 - v58;
  v59 = v47[2];
  v165 = v51;
  v59(v51, v158, v46, v57);
  v158 = v45;
  v60 = v45;
  v61 = a3;
  sub_1F8860(v60);
  v62 = v39;
  (*(v40 + 104))(v42, enum case for Font.TextStyle.body(_:), v39);
  if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
  {
    v63 = sub_2625C0();
    (*(*(v63 - 8) + 56))(v38, 1, 1, v63);
  }

  else
  {
    v64 = enum case for Font.Design.serif (_:);
    v65 = sub_2625C0();
    v66 = v61;
    v67 = v46;
    v68 = *(v65 - 8);
    (*(v68 + 104))(v38, v64, v65);
    (*(v68 + 56))(v38, 0, 1, v65);
    v46 = v67;
    v61 = v66;
  }

  sub_262680();
  sub_8E80(v38, &qword_318458, &unk_26B270);
  (*(v40 + 8))(v42, v62);
  v69 = sub_2625A0();

  sub_20D990(v158, type metadata accessor for FontConstants.Brick);
  sub_30CC(v183, &v219);
  v70 = v165;
  v71 = sub_260BB0();
  v73 = v72;
  v74 = objc_allocWithZone(type metadata accessor for BooksHTMLConverter(0));

  v75 = sub_19C6C8(v71, v73, v69);
  [*&v75[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_parser] parse];
  v76 = OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_currentString;
  swift_beginAccess();
  (v168[2])(v167, &v75[v76], v169);

  v77 = sub_2628D0();
  v79 = v78;
  LOBYTE(v75) = v80;
  v82 = v81;

  sub_3080(&v219);
  v158 = v185[1];
  v158(v70, v46);
  *&v219 = v77;
  *(&v219 + 1) = v79;
  LOBYTE(v220) = v75 & 1;
  *(&v220 + 1) = v82;
  v83 = v184;
  sub_262EA0();
  sub_39DBC(v77, v79, v75 & 1);

  v84 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  KeyPath = swift_getKeyPath();
  v86 = (v83 + *(sub_2EF0(&qword_325FF8, &qword_288F90) + 36));
  *v86 = KeyPath;
  v86[1] = v84;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v87 = (v83 + *(v166 + 9));
  v88 = v248;
  *v87 = v247;
  v87[1] = v88;
  v87[2] = v249;
  sub_2EF0(qword_31B050, &qword_27CCE0);
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_269100;
  LOBYTE(v82) = sub_2624F0();
  *(v89 + 32) = v82;
  v90 = sub_262510();
  *(v89 + 33) = v90;
  v91 = sub_262540();
  sub_262540();
  if (sub_262540() != v82)
  {
    v91 = sub_262540();
  }

  v169 = a20;
  v168 = a19;
  v167 = a18;
  v166 = a17;
  v92 = a16;
  v165 = a15;

  sub_262540();
  v93 = sub_262540();
  v94 = v178;
  if (v93 != v90)
  {
    v91 = sub_262540();
  }

  v95 = v161;
  sub_1F8488(v161);
  v96 = v162;
  sub_20DCBC(v95, v162, type metadata accessor for SizeConstants.Environment);
  sub_20D990(v96, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v98 = v97;
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v105 = v159;
  sub_22148(v184, v159, &qword_325FE8, &qword_288F50);
  v106 = v105 + *(v160 + 36);
  *v106 = v91;
  *(v106 + 8) = v98;
  *(v106 + 16) = v100;
  *(v106 + 24) = v102;
  *(v106 + 32) = v104;
  *(v106 + 40) = 0;
  sub_22148(v105, v186, &qword_325FF0, &qword_288F58);
  *v94 = sub_261D10();
  *(v94 + 8) = 0;
  *(v94 + 16) = 0;
  v107 = v163;
  sub_8198(v164, v163, &qword_316208, &qword_268BD0);
  v108 = v185;
  if ((v185[6])(v107, 1, v46) == 1)
  {
    sub_8E80(v107, &qword_316208, &qword_268BD0);
    v109 = v156;
    if (!v156)
    {
      sub_20D9F8(&v233);
      goto LABEL_13;
    }

    sub_1F7FC4(&v219);
    v110 = *(&v220 + 1);
    v111 = v221;
    sub_2E18(&v219, *(&v220 + 1));
    *&v216 = v155;
    *(&v216 + 1) = v109;
    LOBYTE(v217[0]) = 1;
    v112 = sub_1F8134();
    BYTE2(v202) = -2;
    LOWORD(v202) = -772;
    v113 = (*(v111 + 16))(&v216, &v202, v110, v111, 36.0, 36.0, v112);
    sub_3080(&v219);
    type metadata accessor for ImageResourceLoader(0);
    v114 = swift_allocObject();
    *(v114 + 16) = 0;
    sub_2EF0(&qword_318728, &qword_26DBF0);
    v115 = swift_allocObject();
    *(v115 + 28) = 0;
    *(v115 + 16) = 0;
    *(v115 + 24) = 0;
    *(v114 + 24) = v115;
    sub_2603B0();
    *&v216 = v114;
    sub_2631D0();
    v116 = v219;
    _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    sub_2613A0();
    *&v216 = sub_208AA0;
    *(&v216 + 1) = 0;
    *&v217[0] = v113;
    *(v217 + 8) = v116;
    sub_20DA24(&v216);
    v229 = v217[9];
    v230 = v217[10];
    v231 = v217[11];
    v232 = v218;
    v225 = v217[5];
    v226 = v217[6];
    v227 = v217[7];
    v228 = v217[8];
    v221 = v217[1];
    v222 = v217[2];
    v223 = v217[3];
    v224 = v217[4];
    v219 = v216;
    v220 = v217[0];
    sub_2EF0(&qword_326018, &qword_288FB0);
    sub_2EF0(&qword_326020, &qword_288FB8);
    sub_8E38(&qword_326028, &qword_326018, &qword_288FB0, &protocol conformance descriptor for VStack<A>);
    sub_20DA30();
    v92 = a16;
    sub_261F80();
    v229 = v212;
    v230 = v213;
    v231 = v214;
    v232 = v215;
    v225 = v208;
    v226 = v209;
    v227 = v210;
    v228 = v211;
    v221 = v204;
    v222 = v205;
    v223 = v206;
    v224 = v207;
    v219 = v202;
    v220 = v203;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  else
  {
    v154 = v46;
    v117 = v108[4];
    v185 = a16;
    v118 = v61;
    v119 = v157;
    v117(v157, v107, v46);
    v120 = sub_261E50();
    LOBYTE(v202) = 1;
    sub_203DEC(v119, v118, v183, &v219);
    v196 = v227;
    v197 = v228;
    v198 = v229;
    v192 = v223;
    v193 = v224;
    v194 = v225;
    v195 = v226;
    v188 = v219;
    v189 = v220;
    v190 = v221;
    v191 = v222;
    v200[8] = v227;
    v200[9] = v228;
    v200[10] = v229;
    v200[4] = v223;
    v200[5] = v224;
    v200[6] = v225;
    v200[7] = v226;
    v200[0] = v219;
    v200[1] = v220;
    v199 = v230;
    v201 = v230;
    v200[2] = v221;
    v200[3] = v222;
    sub_8198(&v188, &v216, &qword_326038, &qword_288FC0);
    sub_8E80(v200, &qword_326038, &qword_288FC0);
    *(&v187[8] + 7) = v196;
    *(&v187[9] + 7) = v197;
    *(&v187[10] + 7) = v198;
    *(&v187[11] + 7) = v199;
    *(&v187[4] + 7) = v192;
    *(&v187[5] + 7) = v193;
    *(&v187[6] + 7) = v194;
    *(&v187[7] + 7) = v195;
    *(v187 + 7) = v188;
    *(&v187[1] + 7) = v189;
    *(&v187[2] + 7) = v190;
    *(&v187[3] + 7) = v191;
    *(&v217[8] + 1) = v187[8];
    *(&v217[9] + 1) = v187[9];
    *(&v217[10] + 1) = v187[10];
    v217[11] = *(&v187[10] + 15);
    *(&v217[4] + 1) = v187[4];
    *(&v217[5] + 1) = v187[5];
    *(&v217[6] + 1) = v187[6];
    *(&v217[7] + 1) = v187[7];
    *(v217 + 1) = v187[0];
    *(&v217[1] + 1) = v187[1];
    *(&v217[2] + 1) = v187[2];
    v216 = v120;
    LOBYTE(v217[0]) = v202;
    *(&v217[3] + 1) = v187[3];
    sub_20DAE8(&v216);
    v229 = v217[9];
    v230 = v217[10];
    v231 = v217[11];
    v232 = v218;
    v225 = v217[5];
    v226 = v217[6];
    v227 = v217[7];
    v228 = v217[8];
    v221 = v217[1];
    v222 = v217[2];
    v223 = v217[3];
    v224 = v217[4];
    v219 = v216;
    v220 = v217[0];
    sub_2EF0(&qword_326018, &qword_288FB0);
    sub_2EF0(&qword_326020, &qword_288FB8);
    sub_8E38(&qword_326028, &qword_326018, &qword_288FB0, &protocol conformance descriptor for VStack<A>);
    sub_20DA30();
    v92 = v185;
    sub_261F80();
    v229 = v212;
    v230 = v213;
    v231 = v214;
    v232 = v215;
    v225 = v208;
    v226 = v209;
    v227 = v210;
    v228 = v211;
    v221 = v204;
    v222 = v205;
    v223 = v206;
    v224 = v207;
    v219 = v202;
    v220 = v203;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v158(v119, v154);
  }

  v243 = v229;
  v244 = v230;
  v245 = v231;
  v246 = v232;
  v239 = v225;
  v240 = v226;
  v241 = v227;
  v242 = v228;
  v235 = v221;
  v236 = v222;
  v237 = v223;
  v238 = v224;
  v233 = v219;
  v234 = v220;
LABEL_13:
  v121 = v94 + *(sub_2EF0(v165, v92) + 44);
  v122 = v174;
  v173();
  v123 = sub_262510();
  sub_2610C0();
  v124 = v122 + *(v171 + 36);
  *v124 = v123;
  *(v124 + 8) = v125;
  *(v124 + 16) = v126;
  *(v124 + 24) = v127;
  *(v124 + 32) = v128;
  *(v124 + 40) = 0;
  v130 = v175;
  v129 = v176;
  v131 = v177;
  sub_8198(v122, v175, v176, v177);
  v132 = v244;
  v217[9] = v243;
  v217[10] = v244;
  v133 = v245;
  v217[11] = v245;
  v134 = v239;
  v135 = v240;
  v217[5] = v239;
  v217[6] = v240;
  v136 = v241;
  v137 = v242;
  v217[7] = v241;
  v217[8] = v242;
  v138 = v235;
  v139 = v236;
  v217[1] = v235;
  v217[2] = v236;
  v140 = v237;
  v141 = v238;
  v217[3] = v237;
  v217[4] = v238;
  v142 = v233;
  v143 = v234;
  v216 = v233;
  v217[0] = v234;
  *(v121 + 160) = v243;
  *(v121 + 176) = v132;
  *(v121 + 192) = v133;
  *(v121 + 96) = v134;
  *(v121 + 112) = v135;
  *(v121 + 128) = v136;
  *(v121 + 144) = v137;
  *(v121 + 32) = v138;
  *(v121 + 48) = v139;
  *(v121 + 64) = v140;
  *(v121 + 80) = v141;
  v218 = v246;
  *(v121 + 208) = v246;
  *v121 = v142;
  *(v121 + 16) = v143;
  v144 = sub_2EF0(v166, v167);
  sub_8198(v130, v121 + *(v144 + 48), v129, v131);
  sub_8198(&v216, &v219, &qword_326000, &qword_288F98);
  sub_8E80(v122, v129, v131);
  sub_8E80(v130, v129, v131);
  v229 = v243;
  v230 = v244;
  v231 = v245;
  v232 = v246;
  v225 = v239;
  v226 = v240;
  v227 = v241;
  v228 = v242;
  v221 = v235;
  v222 = v236;
  v223 = v237;
  v224 = v238;
  v219 = v233;
  v220 = v234;
  sub_8E80(&v219, &qword_326000, &qword_288F98);
  v145 = v186;
  v146 = v170;
  sub_8198(v186, v170, &qword_325FF0, &qword_288F58);
  v147 = v179;
  v149 = v181;
  v148 = v182;
  sub_8198(v94, v179, v181, v182);
  v150 = v180;
  sub_8198(v146, v180, &qword_325FF0, &qword_288F58);
  v151 = sub_2EF0(v168, v169);
  sub_8198(v147, v150 + *(v151 + 48), v149, v148);
  sub_8E80(v94, v149, v148);
  sub_8E80(v145, &qword_325FF0, &qword_288F58);
  sub_8E80(v147, v149, v148);
  return sub_8E80(v146, &qword_325FF0, &qword_288F58);
}

uint64_t sub_202904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v126 = a8;
  v127 = a7;
  v112 = a5;
  v113 = a6;
  v123 = a4;
  v125 = a2;
  v129 = a9;
  v130 = a1;
  v11 = sub_2EF0(&qword_316208, &qword_268BD0);
  __chkstk_darwin(v11 - 8);
  v124 = &v111 - v12;
  v13 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v13 - 8);
  v122 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v15 - 8);
  v121 = (&v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_25FF40();
  v117 = *(v17 - 8);
  v118 = v17;
  __chkstk_darwin(v17);
  v116 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v19 - 8);
  v21 = &v111 - v20;
  v22 = sub_262730();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v111 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for FontConstants.Brick(0);
  __chkstk_darwin(v26 - 8);
  v28 = (&v111 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_260BD0();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v114 = &v111 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v111 - v33;
  v115 = sub_2EF0(&qword_325FE8, &qword_288F50);
  __chkstk_darwin(v115);
  v131 = &v111 - v35;
  v120 = sub_2EF0(&qword_325FF0, &qword_288F58);
  __chkstk_darwin(v120);
  v128 = &v111 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v119 = &v111 - v38;
  v40 = __chkstk_darwin(v39);
  v132 = v30;
  v133 = &v111 - v41;
  v42 = *(v30 + 16);
  v134 = v29;
  v42(v34, v125, v29, v40);
  v125 = a3;
  sub_1F8860(v28);
  (*(v23 + 104))(v25, enum case for Font.TextStyle.body(_:), v22);
  if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
  {
    v43 = sub_2625C0();
    (*(*(v43 - 8) + 56))(v21, 1, 1, v43);
  }

  else
  {
    v44 = enum case for Font.Design.serif (_:);
    v45 = sub_2625C0();
    v46 = *(v45 - 8);
    (*(v46 + 104))(v21, v44, v45);
    (*(v46 + 56))(v21, 0, 1, v45);
  }

  sub_262680();
  sub_8E80(v21, &qword_318458, &unk_26B270);
  (*(v23 + 8))(v25, v22);
  v47 = sub_2625A0();

  sub_20D990(v28, type metadata accessor for FontConstants.Brick);
  sub_30CC(v130, v168);
  v48 = sub_260BB0();
  v50 = v49;
  v51 = objc_allocWithZone(type metadata accessor for BooksHTMLConverter(0));

  v52 = sub_19C6C8(v48, v50, v47);
  [*&v52[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_parser] parse];
  v53 = OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_currentString;
  swift_beginAccess();
  (*(v117 + 16))(v116, &v52[v53], v118);

  v54 = sub_2628D0();
  v56 = v55;
  LOBYTE(v52) = v57;
  v59 = v58;

  sub_3080(v168);
  v118 = *(v132 + 8);
  v118(v34, v134);
  *&v168[0] = v54;
  *(&v168[0] + 1) = v56;
  LOBYTE(v168[1]) = v52 & 1;
  *(&v168[1] + 1) = v59;
  v60 = v131;
  sub_262EA0();
  sub_39DBC(v54, v56, v52 & 1);

  v61 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  KeyPath = swift_getKeyPath();
  v63 = (v60 + *(sub_2EF0(&qword_325FF8, &qword_288F90) + 36));
  *v63 = KeyPath;
  v63[1] = v61;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v64 = (v60 + *(v115 + 36));
  v65 = v187;
  *v64 = v186;
  v64[1] = v65;
  v64[2] = v188;
  sub_2EF0(qword_31B050, &qword_27CCE0);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_269100;
  LOBYTE(v47) = sub_2624F0();
  *(v66 + 32) = v47;
  v67 = sub_262510();
  *(v66 + 33) = v67;
  v68 = sub_262540();
  sub_262540();
  if (sub_262540() != v47)
  {
    v68 = sub_262540();
  }

  sub_262540();
  if (sub_262540() != v67)
  {
    v68 = sub_262540();
  }

  v70 = v124;
  v69 = v125;
  v71 = v121;
  sub_1F8488(v121);
  v72 = v71;
  v73 = v122;
  sub_20DCBC(v72, v122, type metadata accessor for SizeConstants.Environment);
  sub_20D990(v73, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v82 = v119;
  sub_22148(v131, v119, &qword_325FE8, &qword_288F50);
  v83 = v82 + *(v120 + 36);
  *v83 = v68;
  *(v83 + 8) = v75;
  *(v83 + 16) = v77;
  *(v83 + 24) = v79;
  *(v83 + 32) = v81;
  *(v83 + 40) = 0;
  sub_22148(v82, v133, &qword_325FF0, &qword_288F58);
  v84 = sub_261D10();
  v171 = 0;
  sub_8198(v123, v70, &qword_316208, &qword_268BD0);
  v85 = v132;
  v86 = v134;
  if ((*(v132 + 48))(v70, 1, v134) == 1)
  {
    sub_8E80(v70, &qword_316208, &qword_268BD0);
    v87 = v113;
    if (!v113)
    {
      sub_20D9F8(&v172);
      goto LABEL_13;
    }

    sub_1F7FC4(v168);
    v88 = *(&v168[1] + 1);
    v89 = *&v168[2];
    sub_2E18(v168, *(&v168[1] + 1));
    *&v167[0] = v112;
    *(&v167[0] + 1) = v87;
    LOBYTE(v167[1]) = 1;
    v90 = sub_1F8134();
    BYTE2(v157) = -2;
    LOWORD(v157) = -772;
    v91 = (*(v89 + 16))(v167, &v157, v88, v89, 36.0, 36.0, v90);
    sub_3080(v168);
    type metadata accessor for ImageResourceLoader(0);
    v92 = swift_allocObject();
    *(v92 + 16) = 0;
    sub_2EF0(&qword_318728, &qword_26DBF0);
    v93 = swift_allocObject();
    *(v93 + 28) = 0;
    *(v93 + 16) = 0;
    *(v93 + 24) = 0;
    *(v92 + 24) = v93;
    sub_2603B0();
    *&v167[0] = v92;
    sub_2631D0();
    v94 = v168[0];
    _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    sub_2613A0();
    *&v167[0] = sub_208AA0;
    *(&v167[0] + 1) = 0;
    *&v167[1] = v91;
    *(&v167[1] + 8) = v94;
    sub_20DA24(v167);
    v168[10] = v167[10];
    v168[11] = v167[11];
    v168[12] = v167[12];
    LOBYTE(v168[13]) = v167[13];
    v168[6] = v167[6];
    v168[7] = v167[7];
    v168[8] = v167[8];
    v168[9] = v167[9];
    v168[2] = v167[2];
    v168[3] = v167[3];
    v168[4] = v167[4];
    v168[5] = v167[5];
    v168[0] = v167[0];
    v168[1] = v167[1];
    sub_2EF0(&qword_326018, &qword_288FB0);
    sub_2EF0(&qword_326020, &qword_288FB8);
    sub_8E38(&qword_326028, &qword_326018, &qword_288FB0, &protocol conformance descriptor for VStack<A>);
    sub_20DA30();
    sub_261F80();
    v168[10] = *&v158[144];
    v168[11] = *&v158[160];
    v168[12] = *&v158[176];
    LOBYTE(v168[13]) = v158[192];
    v168[6] = *&v158[80];
    v168[7] = *&v158[96];
    v168[8] = *&v158[112];
    v168[9] = *&v158[128];
    v168[2] = *&v158[16];
    v168[3] = *&v158[32];
    v168[4] = *&v158[48];
    v168[5] = *&v158[64];
    v168[0] = v157;
    v168[1] = *v158;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  else
  {
    v131 = v84;
    v96 = v114;
    (*(v85 + 32))(v114, v70, v86);
    v132 = sub_261E50();
    LOBYTE(v157) = 1;
    sub_203DEC(v96, v69, v130, v168);
    v136[8] = v168[8];
    v136[9] = v168[9];
    v136[10] = v168[10];
    v136[4] = v168[4];
    v136[5] = v168[5];
    v136[6] = v168[6];
    v136[7] = v168[7];
    v136[0] = v168[0];
    v136[1] = v168[1];
    v136[2] = v168[2];
    v136[3] = v168[3];
    v156[8] = v168[8];
    v156[9] = v168[9];
    v156[10] = v168[10];
    v156[4] = v168[4];
    v156[5] = v168[5];
    v156[6] = v168[6];
    v156[7] = v168[7];
    v156[0] = v168[0];
    v156[1] = v168[1];
    *&v136[11] = *&v168[11];
    *&v156[11] = *&v168[11];
    v156[2] = v168[2];
    v156[3] = v168[3];
    sub_8198(v136, v167, &qword_326038, &qword_288FC0);
    sub_8E80(v156, &qword_326038, &qword_288FC0);
    *(&v135[8] + 7) = v136[8];
    *(&v135[9] + 7) = v136[9];
    *(&v135[10] + 7) = v136[10];
    *(&v135[11] + 7) = *&v136[11];
    *(&v135[4] + 7) = v136[4];
    *(&v135[5] + 7) = v136[5];
    *(&v135[6] + 7) = v136[6];
    *(&v135[7] + 7) = v136[7];
    *(v135 + 7) = v136[0];
    *(&v135[1] + 7) = v136[1];
    *(&v135[2] + 7) = v136[2];
    *(&v135[3] + 7) = v136[3];
    *(&v167[9] + 1) = v135[8];
    *(&v167[10] + 1) = v135[9];
    *(&v167[11] + 1) = v135[10];
    v84 = v131;
    v167[12] = *(&v135[10] + 15);
    *(&v167[5] + 1) = v135[4];
    *(&v167[6] + 1) = v135[5];
    *(&v167[7] + 1) = v135[6];
    *(&v167[8] + 1) = v135[7];
    *(&v167[1] + 1) = v135[0];
    *(&v167[2] + 1) = v135[1];
    *(&v167[3] + 1) = v135[2];
    v167[0] = v132;
    LOBYTE(v167[1]) = v157;
    *(&v167[4] + 1) = v135[3];
    sub_20DAE8(v167);
    v168[10] = v167[10];
    v168[11] = v167[11];
    v168[12] = v167[12];
    LOBYTE(v168[13]) = v167[13];
    v168[6] = v167[6];
    v168[7] = v167[7];
    v168[8] = v167[8];
    v168[9] = v167[9];
    v168[2] = v167[2];
    v168[3] = v167[3];
    v168[4] = v167[4];
    v168[5] = v167[5];
    v168[0] = v167[0];
    v168[1] = v167[1];
    sub_2EF0(&qword_326018, &qword_288FB0);
    sub_2EF0(&qword_326020, &qword_288FB8);
    sub_8E38(&qword_326028, &qword_326018, &qword_288FB0, &protocol conformance descriptor for VStack<A>);
    sub_20DA30();
    sub_261F80();
    v168[10] = *&v158[144];
    v168[11] = *&v158[160];
    v168[12] = *&v158[176];
    LOBYTE(v168[13]) = v158[192];
    v168[6] = *&v158[80];
    v168[7] = *&v158[96];
    v168[8] = *&v158[112];
    v168[9] = *&v158[128];
    v168[2] = *&v158[16];
    v168[3] = *&v158[32];
    v168[4] = *&v158[48];
    v168[5] = *&v158[64];
    v168[0] = v157;
    v168[1] = *v158;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v95 = (v118)(v96, v134);
  }

  v182 = v168[10];
  v183 = v168[11];
  v184 = v168[12];
  v185 = v168[13];
  v178 = v168[6];
  v179 = v168[7];
  v180 = v168[8];
  v181 = v168[9];
  v174 = v168[2];
  v175 = v168[3];
  v176 = v168[4];
  v177 = v168[5];
  v172 = v168[0];
  v173 = v168[1];
LABEL_13:
  v127(v95);
  v97 = sub_262510();
  sub_2610C0();
  v99 = v98;
  v101 = v100;
  v103 = v102;
  v105 = v104;
  v138[10] = v182;
  v138[11] = v183;
  v138[12] = v184;
  v138[6] = v178;
  v138[7] = v179;
  v138[8] = v180;
  v138[9] = v181;
  v138[2] = v174;
  v138[3] = v175;
  v138[4] = v176;
  v138[5] = v177;
  v138[0] = v172;
  v138[1] = v173;
  v150 = v182;
  v151 = v183;
  v152 = v184;
  v146 = v178;
  v147 = v179;
  v148 = v180;
  v149 = v181;
  v142 = v174;
  v143 = v175;
  v144 = v176;
  v145 = v177;
  v140 = v172;
  v141 = v173;
  v154[10] = v182;
  v154[11] = v183;
  v154[12] = v184;
  v154[6] = v178;
  v154[7] = v179;
  v154[8] = v180;
  v154[9] = v181;
  v154[2] = v174;
  v154[3] = v175;
  v154[4] = v176;
  v154[5] = v177;
  v139 = v185;
  LOBYTE(v153) = v185;
  v137 = 0;
  v155 = v185;
  v154[0] = v172;
  v154[1] = v173;
  sub_8198(v138, v168, &qword_326000, &qword_288F98);
  sub_8E80(v154, &qword_326000, &qword_288F98);
  *&v170[167] = v150;
  *&v170[183] = v151;
  *&v170[199] = v152;
  *&v170[215] = v153;
  *&v170[103] = v146;
  *&v170[119] = v147;
  *&v170[135] = v148;
  *&v170[151] = v149;
  *&v170[39] = v142;
  *&v170[55] = v143;
  *&v170[71] = v144;
  *&v170[87] = v145;
  *&v170[7] = v140;
  *&v170[23] = v141;
  v156[0] = v84;
  LOBYTE(v156[1]) = v171;
  *(&v156[11] + 1) = *&v170[160];
  *(&v156[12] + 1) = *&v170[176];
  *(&v156[13] + 1) = *&v170[192];
  v156[14] = *&v170[207];
  *(&v156[7] + 1) = *&v170[96];
  *(&v156[8] + 1) = *&v170[112];
  *(&v156[9] + 1) = *&v170[128];
  *(&v156[10] + 1) = *&v170[144];
  *(&v156[3] + 1) = *&v170[32];
  *(&v156[4] + 1) = *&v170[48];
  *(&v156[5] + 1) = *&v170[64];
  *(&v156[6] + 1) = *&v170[80];
  *(&v156[1] + 1) = *v170;
  *(&v156[2] + 1) = *&v170[16];
  LOBYTE(v156[15]) = v97;
  *(&v156[15] + 1) = *v169;
  DWORD1(v156[15]) = *&v169[3];
  *(&v156[15] + 1) = v99;
  *&v156[16] = v101;
  *(&v156[16] + 1) = v103;
  *&v156[17] = v105;
  BYTE8(v156[17]) = 0;
  v157 = v84;
  v158[0] = v171;
  *&v158[97] = *&v170[96];
  *&v158[113] = *&v170[112];
  *&v158[129] = *&v170[128];
  *&v158[145] = *&v170[144];
  *&v158[33] = *&v170[32];
  *&v158[49] = *&v170[48];
  *&v158[65] = *&v170[64];
  *&v158[81] = *&v170[80];
  *&v158[1] = *v170;
  *&v158[17] = *&v170[16];
  *&v159[15] = *&v170[207];
  *v159 = *&v170[192];
  *&v158[177] = *&v170[176];
  *&v158[161] = *&v170[160];
  v160 = v97;
  *v161 = *v169;
  *&v161[3] = *&v169[3];
  v162 = v99;
  v163 = v101;
  v164 = v103;
  v165 = v105;
  v166 = 0;
  sub_8198(v156, v168, &qword_326008, &qword_288FA0);
  sub_8E80(&v157, &qword_326008, &qword_288FA0);
  v106 = v133;
  v107 = v128;
  sub_8198(v133, v128, &qword_325FF0, &qword_288F58);
  memcpy(v136, v156, 0x119uLL);
  v108 = v129;
  sub_8198(v107, v129, &qword_325FF0, &qword_288F58);
  v109 = *(sub_2EF0(&qword_326010, &qword_288FA8) + 48);
  memcpy(v167, v136, 0x119uLL);
  memcpy((v108 + v109), v136, 0x119uLL);
  sub_8198(v167, v168, &qword_326008, &qword_288FA0);
  sub_8E80(v106, &qword_325FF0, &qword_288F58);
  memcpy(v168, v136, 0x119uLL);
  sub_8E80(v168, &qword_326008, &qword_288FA0);
  return sub_8E80(v107, &qword_325FF0, &qword_288F58);
}

uint64_t sub_203DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v71 = a3;
  v76 = a4;
  v7 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v7 - 8);
  v74 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v9 - 8);
  v73 = (&v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = sub_25FF40();
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v12 - 8);
  v14 = &v66 - v13;
  v15 = sub_262730();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FontConstants.Brick(0);
  __chkstk_darwin(v19 - 8);
  v21 = (&v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  KeyPath = sub_260BD0();
  v22 = *(KeyPath - 8);
  v23 = __chkstk_darwin(KeyPath);
  v25 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v25, a1, v23);
  v75 = a2;
  sub_1F8860(v21);
  (*(v16 + 104))(v18, enum case for Font.TextStyle.caption2(_:), v15);
  v26 = sub_2625C0();
  (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
  v27 = sub_262680();
  sub_8E80(v14, &qword_318458, &unk_26B270);
  (*(v16 + 8))(v18, v15);
  sub_20D990(v21, type metadata accessor for FontConstants.Brick);
  sub_30CC(v71, v88);
  v28 = sub_260BB0();
  v30 = v29;
  objc_allocWithZone(type metadata accessor for BooksHTMLConverter(0));

  v31 = sub_19C6C8(v28, v30, v27);
  [*&v31[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_parser] parse];
  v32 = OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_currentString;
  swift_beginAccess();
  (*(v70 + 16))(v69, &v31[v32], v72);

  v33 = sub_2628D0();
  v70 = v34;
  v71 = v33;
  LOBYTE(v31) = v35;
  v72 = v36;

  sub_3080(v88);
  (*(v22 + 8))(v25, KeyPath);
  KeyPath = swift_getKeyPath();
  v69 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  v67 = swift_getKeyPath();
  v37 = v31 & 1;
  v111 = v31 & 1;
  v109 = 0;
  sub_2EF0(qword_31B050, &qword_27CCE0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_269100;
  LOBYTE(v15) = sub_262530();
  *(v38 + 32) = v15;
  v39 = sub_262520();
  *(v38 + 33) = v39;
  v40 = sub_262540();
  sub_262540();
  if (sub_262540() != v15)
  {
    v40 = sub_262540();
  }

  sub_262540();
  if (sub_262540() != v39)
  {
    v40 = sub_262540();
  }

  v41 = v73;
  sub_1F8488(v73);
  v42 = v74;
  sub_20DCBC(v41, v74, type metadata accessor for SizeConstants.Environment);
  sub_20D990(v42, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v112 = 0;
  sub_263520();
  sub_2613A0();
  *(v114 + 7) = *&v114[7];
  *(&v114[2] + 7) = *&v114[9];
  *(&v114[4] + 7) = v115;
  v52 = v70;
  v51 = v71;
  *&v80 = v71;
  *(&v80 + 1) = v70;
  LOBYTE(v81) = v37;
  *(&v81 + 1) = *v110;
  DWORD1(v81) = *&v110[3];
  v53 = v72;
  v55 = v67;
  v54 = KeyPath;
  *(&v81 + 1) = v72;
  *&v82 = KeyPath;
  *(&v82 + 1) = 3;
  LOBYTE(v83) = 0;
  DWORD1(v83) = *&v108[3];
  *(&v83 + 1) = *v108;
  v56 = v69;
  *(&v83 + 1) = v67;
  *&v84 = v69;
  BYTE8(v84) = v40;
  HIDWORD(v84) = *&v113[3];
  *(&v84 + 9) = *v113;
  *&v85 = v44;
  *(&v85 + 1) = v46;
  *&v86 = v48;
  *(&v86 + 1) = v50;
  v87[0] = 0;
  v57 = *&v114[2];
  *&v87[48] = *(&v115 + 1);
  *&v87[33] = *&v114[4];
  v58 = *v114;
  *&v87[17] = *&v114[2];
  *&v87[1] = *v114;
  *(&v78[2] + 7) = v82;
  *(&v78[1] + 7) = v81;
  *(v78 + 7) = v80;
  *(&v78[6] + 7) = v86;
  *(&v78[5] + 7) = v85;
  *(&v78[4] + 7) = v84;
  *(&v78[3] + 7) = v83;
  *(&v78[10] + 7) = *&v87[48];
  *(&v78[9] + 7) = *&v87[32];
  *(&v78[8] + 7) = *&v87[16];
  *(&v78[7] + 7) = *v87;
  v59 = v78[6];
  v60 = v76;
  *(v76 + 121) = v78[7];
  v61 = v78[9];
  *(v60 + 137) = v78[8];
  *(v60 + 153) = v61;
  *(v60 + 168) = *(&v78[9] + 15);
  v62 = v78[2];
  *(v60 + 57) = v78[3];
  v63 = v78[5];
  *(v60 + 73) = v78[4];
  *(v60 + 89) = v63;
  *(v60 + 105) = v59;
  v64 = v78[1];
  *(v60 + 9) = v78[0];
  v79 = 0;
  *v60 = 0x4018000000000000;
  *(v60 + 8) = 0;
  *(v60 + 25) = v64;
  *(v60 + 41) = v62;
  v88[0] = v51;
  v88[1] = v52;
  v89 = v37;
  *v90 = *v110;
  *&v90[3] = *&v110[3];
  v91 = v53;
  v92 = v54;
  v93 = 3;
  v94 = 0;
  *v95 = *v108;
  *&v95[3] = *&v108[3];
  v96 = v55;
  v97 = v56;
  v98 = v40;
  *&v99[3] = *&v113[3];
  *v99 = *v113;
  v100 = v44;
  v101 = v46;
  v102 = v48;
  v103 = v50;
  v104 = 0;
  v105 = v58;
  v106 = v57;
  v107[0] = *&v114[4];
  *(v107 + 15) = *(&v114[5] + 7);
  sub_8198(&v80, &v77, &qword_326040, &qword_288FF8);
  return sub_8E80(v88, &qword_326040, &qword_288FF8);
}

uint64_t sub_204698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)()@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v116 = a6;
  v102 = a5;
  v119 = a4;
  v129 = a7;
  v10 = sub_2EF0(&qword_316208, &qword_268BD0);
  __chkstk_darwin(v10 - 8);
  v120 = &v101 - v11;
  v12 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v12 - 8);
  v132 = (&v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v131 = sub_25FF40();
  v136 = *(v131 - 8);
  __chkstk_darwin(v131);
  v121 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v15 - 8);
  v115 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v101 - v18;
  v20 = sub_262730();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v113 = &v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v101 - v24;
  v26 = type metadata accessor for FontConstants.Brick(0);
  __chkstk_darwin(v26 - 8);
  v112 = (&v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v28);
  v30 = (&v101 - v29);
  v31 = sub_260BD0();
  __chkstk_darwin(v31);
  v114 = &v101 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v122 = &v101 - v34;
  v36 = __chkstk_darwin(v35);
  v38 = &v101 - v37;
  v117 = v39;
  v40 = *(v39 + 16);
  v134 = v41;
  v109 = v40;
  v110 = v39 + 16;
  (v40)(&v101 - v37, a2, v36);
  v133 = a3;
  sub_1F8860(v30);
  v135 = v21;
  v42 = *(v21 + 104);
  v130 = v20;
  v107 = v42;
  v108 = v21 + 104;
  v42(v25, enum case for Font.TextStyle.body(_:), v20);
  if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
  {
    v43 = sub_2625C0();
    (*(*(v43 - 8) + 56))(v19, 1, 1, v43);
  }

  else
  {
    v44 = enum case for Font.Design.serif (_:);
    v45 = a1;
    v46 = sub_2625C0();
    v47 = *(v46 - 8);
    (*(v47 + 104))(v19, v44, v46);
    v48 = v46;
    a1 = v45;
    (*(v47 + 56))(v19, 0, 1, v48);
  }

  v103 = a1;
  sub_262680();
  sub_8E80(v19, &qword_318458, &unk_26B270);
  v106 = *(v135 + 8);
  v106(v25, v130);
  v49 = sub_2625A0();

  sub_20D990(v30, type metadata accessor for FontConstants.Brick);
  sub_30CC(a1, &v159);
  v50 = sub_260BB0();
  v52 = v51;
  v105 = type metadata accessor for BooksHTMLConverter(0);
  v53 = objc_allocWithZone(v105);

  v54 = sub_19C6C8(v50, v52, v49);
  [*&v54[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_parser] parse];
  v55 = OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_currentString;
  swift_beginAccess();
  v56 = *(v136 + 16);
  v57 = v121;
  v136 += 16;
  v104 = v56;
  v56(v121, &v54[v55], v131);

  v58 = sub_2628D0();
  v126 = v59;
  v127 = v58;
  v61 = v60;
  v128 = v62;

  sub_3080(&v159);
  v63 = v117;
  v64 = v134;
  v118 = *(v117 + 8);
  v111 = v117 + 8;
  v118(v38, v134);
  KeyPath = swift_getKeyPath();
  v65 = v132;
  sub_1F8674(v132);
  v124 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  sub_20D990(v65, type metadata accessor for ColorConstants);
  v123 = swift_getKeyPath();
  LODWORD(v135) = v61 & 1;
  v173 = v61 & 1;
  v171 = 0;
  sub_263580();
  sub_2613A0();
  v66 = v120;
  sub_8198(v119, v120, &qword_316208, &qword_268BD0);
  if ((*(v63 + 48))(v66, 1, v64) == 1)
  {
    sub_8E80(v66, &qword_316208, &qword_268BD0);
    v67 = v116;
    if (v116)
    {
      v68 = sub_261D30();
      LOBYTE(v149) = 1;
      sub_206A68(v102, v67, &v159);
      v148[0] = v163;
      v148[1] = v164;
      v148[2] = v165;
      LOBYTE(v148[3]) = v166[0];
      v144 = v159;
      v145 = v160;
      v146 = v161;
      v147 = v162;
      v138 = v159;
      v139 = v160;
      v140 = v161;
      v141 = v162;
      v142[0] = v163;
      v142[1] = v164;
      v142[2] = v165;
      LOBYTE(v142[3]) = v166[0];
      sub_8198(&v144, &v151, &qword_3260D0, &qword_289088);
      sub_8E80(&v138, &qword_3260D0, &qword_289088);
      *&v137[71] = v148[0];
      *&v137[87] = v148[1];
      *&v137[103] = v148[2];
      *&v137[7] = v144;
      *&v137[23] = v145;
      *&v137[39] = v146;
      *&v137[55] = v147;
      *(v150 + 1) = *v137;
      *(&v150[1] + 1) = *&v137[16];
      *(&v150[2] + 1) = *&v137[32];
      *(&v150[6] + 1) = *&v137[96];
      *(&v150[5] + 1) = *&v137[80];
      *(&v150[4] + 1) = *&v137[64];
      v137[119] = v148[3];
      v69 = v149;
      v149 = v68;
      LOBYTE(v150[0]) = v69;
      *(&v150[7] + 1) = *&v137[112];
      *(&v150[3] + 1) = *&v137[48];
      sub_20DB1C(&v149);
      v157 = v150[5];
      v158[0] = v150[6];
      *(v158 + 10) = *(&v150[6] + 10);
      v153 = v150[1];
      v154 = v150[2];
      v156 = v150[4];
      v155 = v150[3];
      v152 = v150[0];
      v151 = v149;
      sub_2EF0(&qword_326118, &qword_2890E8);
      sub_2EF0(&qword_3260D8, &qword_289090);
      sub_20DB28(&qword_326128, &qword_326118, &qword_2890E8, sub_20DC04);
      sub_8E38(&qword_3260E8, &qword_3260D8, &qword_289090, &protocol conformance descriptor for HStack<A>);
      sub_261F80();
      v157 = v165;
      v158[0] = v166[0];
      *(v158 + 10) = *(v166 + 10);
      v153 = v161;
      v154 = v162;
      v156 = v164;
      v155 = v163;
      v152 = v160;
      v151 = v159;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v165 = v157;
      v166[0] = v158[0];
      *(v166 + 10) = *(v158 + 10);
      v161 = v153;
      v162 = v154;
      v164 = v156;
      v163 = v155;
      v160 = v152;
      v159 = v151;
    }

    else
    {
      sub_20DAF8(&v159);
    }
  }

  else
  {
    v70 = *(v63 + 32);
    v71 = v122;
    v70(v122, v66, v64);
    v72 = v114;
    v109(v114, v71, v64);
    v73 = v112;
    sub_1F8860(v112);
    v74 = v113;
    v75 = v130;
    v107(v113, enum case for Font.TextStyle.caption2(_:), v130);
    v76 = sub_2625C0();
    v77 = v115;
    (*(*(v76 - 8) + 56))(v115, 1, 1, v76);
    v78 = sub_262680();
    sub_8E80(v77, &qword_318458, &unk_26B270);
    v106(v74, v75);
    sub_20D990(v73, type metadata accessor for FontConstants.Brick);
    sub_30CC(v103, &v159);
    v79 = sub_260BB0();
    v81 = v80;
    v82 = objc_allocWithZone(v105);

    v83 = sub_19C6C8(v79, v81, v78);
    [*&v83[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_parser] parse];
    v84 = OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_currentString;
    swift_beginAccess();
    v104(v57, &v83[v84], v131);

    v85 = sub_2628D0();
    v87 = v86;
    LOBYTE(v73) = v88;
    v136 = v89;

    sub_3080(&v159);
    v118(v72, v134);
    v90 = swift_getKeyPath();
    v91 = v132;
    sub_1F8674(v132);
    v92 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
    sub_20D990(v91, type metadata accessor for ColorConstants);
    v93 = swift_getKeyPath();
    LOBYTE(v159) = v73 & 1;
    LOBYTE(v151) = 0;
    sub_263580();
    sub_2613A0();
    *&v149 = v85;
    *(&v149 + 1) = v87;
    LOBYTE(v150[0]) = v73 & 1;
    *(&v150[0] + 1) = v136;
    *&v150[1] = v90;
    *(&v150[1] + 1) = 3;
    LOBYTE(v150[2]) = 0;
    *(&v150[2] + 1) = v93;
    *&v150[3] = v92;
    sub_20DBAC(&v149);
    v157 = v150[5];
    v158[0] = v150[6];
    *(v158 + 10) = *(&v150[6] + 10);
    v153 = v150[1];
    v154 = v150[2];
    v156 = v150[4];
    v155 = v150[3];
    v152 = v150[0];
    v151 = v149;
    sub_2EF0(&qword_326118, &qword_2890E8);
    sub_2EF0(&qword_3260D8, &qword_289090);
    sub_20DB28(&qword_326128, &qword_326118, &qword_2890E8, sub_20DC04);
    sub_8E38(&qword_3260E8, &qword_3260D8, &qword_289090, &protocol conformance descriptor for HStack<A>);
    sub_261F80();
    v118(v122, v134);
    v157 = v165;
    v158[0] = v166[0];
    *(v158 + 10) = *(v166 + 10);
    v153 = v161;
    v154 = v162;
    v156 = v164;
    v155 = v163;
    v152 = v160;
    v151 = v159;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v165 = v157;
    v166[0] = v158[0];
    *(v166 + 10) = *(v158 + 10);
    v161 = v153;
    v162 = v154;
    v164 = v156;
    v163 = v155;
    v160 = v152;
    v159 = v151;
  }

  v157 = v165;
  v158[0] = v166[0];
  *(v158 + 10) = *(v166 + 10);
  v153 = v161;
  v154 = v162;
  v156 = v164;
  v155 = v163;
  v152 = v160;
  v151 = v159;
  v95 = v126;
  v94 = v127;
  *&v144 = v127;
  *(&v144 + 1) = v126;
  LOBYTE(v145) = v135;
  *(&v145 + 1) = *v172;
  DWORD1(v145) = *&v172[3];
  v96 = v128;
  *(&v145 + 1) = v128;
  v98 = v124;
  v97 = KeyPath;
  *&v146 = KeyPath;
  *(&v146 + 1) = 3;
  LOBYTE(v147) = 0;
  *(&v147 + 1) = *v170;
  DWORD1(v147) = *&v170[3];
  v99 = v123;
  *(&v147 + 1) = v123;
  *&v148[0] = v124;
  *(&v148[2] + 8) = v169;
  *(&v148[1] + 8) = v168;
  *(v148 + 8) = v167;
  v143[2] = v146;
  v143[3] = v147;
  v143[0] = v144;
  v143[1] = v145;
  v143[4] = v148[0];
  v143[5] = v148[1];
  v143[6] = v148[2];
  v150[1] = v161;
  v150[2] = v162;
  v149 = v159;
  v150[0] = v160;
  *(&v150[6] + 10) = *(v166 + 10);
  v150[6] = v166[0];
  v150[5] = v165;
  v150[3] = v163;
  v150[4] = v164;
  *(&v143[12] + 8) = v164;
  *(&v143[13] + 8) = v165;
  *(&v143[14] + 8) = v166[0];
  *(&v143[15] + 2) = *(v166 + 10);
  *(&v143[8] + 8) = v160;
  *&v143[7] = *(&v169 + 1);
  *(&v143[9] + 8) = v161;
  *(&v143[10] + 8) = v162;
  *(&v143[11] + 8) = v163;
  *(&v143[7] + 8) = v159;
  memcpy(v129, v143, 0x102uLL);
  sub_8198(&v144, &v138, &qword_326118, &qword_2890E8);
  sub_8198(&v149, &v138, &qword_326120, &qword_2890F0);
  sub_8E80(&v151, &qword_326120, &qword_2890F0);
  *&v138 = v94;
  *(&v138 + 1) = v95;
  LOBYTE(v139) = v135;
  *(&v139 + 1) = *v172;
  DWORD1(v139) = *&v172[3];
  *(&v139 + 1) = v96;
  *&v140 = v97;
  *(&v140 + 1) = 3;
  LOBYTE(v141) = 0;
  *(&v141 + 1) = *v170;
  DWORD1(v141) = *&v170[3];
  *(&v141 + 1) = v99;
  *&v142[0] = v98;
  *(&v142[2] + 8) = v169;
  *(&v142[1] + 8) = v168;
  *(v142 + 8) = v167;
  return sub_8E80(&v138, &qword_326118, &qword_2890E8);
}

uint64_t sub_2057F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t (*a4)()@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>, double a7@<D0>)
{
  v141 = a5;
  v126 = a4;
  v144 = a3;
  v155 = a2;
  v151 = a6;
  v152 = a1;
  v8 = sub_2EF0(&qword_316208, &qword_268BD0);
  __chkstk_darwin(v8 - 8);
  v145 = &v125 - v9;
  v10 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v10 - 8);
  v12 = (&v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_25FF40();
  v158 = *(v13 - 8);
  __chkstk_darwin(v13);
  v153 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v15 - 8);
  v139 = &v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v125 - v18;
  v20 = sub_262730();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v138 = &v125 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v125 - v24;
  v26 = type metadata accessor for FontConstants.Brick(0);
  __chkstk_darwin(v26 - 8);
  v137 = (&v125 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v28);
  v30 = (&v125 - v29);
  v31 = sub_260BD0();
  __chkstk_darwin(v31);
  v140 = &v125 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v146 = &v125 - v34;
  v36 = __chkstk_darwin(v35);
  v156 = v38;
  v157 = &v125 - v37;
  v39 = *(*&v38 + 16);
  v40 = v21;
  v159 = v41;
  v135 = v39;
  v136 = *&v38 + 16;
  v39(v36);
  v150 = v30;
  sub_1F8860(v30);
  v133 = *(v21 + 104);
  v134 = v21 + 104;
  v133(v25, enum case for Font.TextStyle.body(_:), v20);
  v42 = _s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0();
  v154 = v12;
  if (v42)
  {
    v43 = sub_2625C0();
    (*(*(v43 - 8) + 56))(v19, 1, 1, v43);
  }

  else
  {
    v44 = enum case for Font.Design.serif (_:);
    v45 = sub_2625C0();
    v46 = v20;
    v47 = *(v45 - 8);
    (*(v47 + 104))(v19, v44, v45);
    (*(v47 + 56))(v19, 0, 1, v45);
    v20 = v46;
  }

  v128 = v20;
  v129 = v13;
  sub_262680();
  sub_8E80(v19, &qword_318458, &unk_26B270);
  v48 = *(v40 + 8);
  v127 = v40 + 8;
  v132 = v48;
  v48(v25, v20);
  v49 = sub_2625A0();

  sub_20D990(v150, type metadata accessor for FontConstants.Brick);
  sub_30CC(v152, &v189);
  v50 = v157;
  v51 = sub_260BB0();
  v53 = v52;
  v131 = type metadata accessor for BooksHTMLConverter(0);
  objc_allocWithZone(v131);

  v54 = sub_19C6C8(v51, v53, v49);
  [*&v54[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_parser] parse];
  v55 = OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_currentString;
  swift_beginAccess();
  v56 = *(v158 + 16);
  v158 += 16;
  v130 = v56;
  v56(v153, &v54[v55], v13);

  v57 = sub_2628D0();
  v59 = v58;
  v61 = v60;

  sub_3080(&v189);
  v142 = *(*&v156 + 8);
  v143 = *&v156 + 8;
  v142(v50, v159);
  v62 = v154;
  sub_1F8674(v154);
  v63 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  sub_20D990(v62, type metadata accessor for ColorConstants);
  *&v189 = v63;
  v64 = sub_2627F0();
  v66 = v65;
  v68 = v67;
  sub_39DBC(v57, v59, v61 & 1);

  sub_262F80();
  sub_263000();

  v69 = sub_262850();
  v148 = v70;
  v149 = v69;
  LOBYTE(v63) = v71;
  v150 = v72;

  v73 = v64;
  v74 = v156;
  sub_39DBC(v73, v66, v68 & 1);
  v75 = v159;

  KeyPath = swift_getKeyPath();
  sub_263580();
  sub_2613A0();
  LODWORD(v157) = v63 & 1;
  v200 = v63 & 1;
  v198 = 0;
  *&v197[7] = v201[0];
  *&v197[23] = v201[1];
  *&v197[39] = v201[2];
  v76 = v145;
  sub_8198(v144, v145, &qword_316208, &qword_268BD0);
  if ((*(*&v74 + 48))(v76, 1, v75) == 1)
  {
    sub_8E80(v76, &qword_316208, &qword_268BD0);
    v77 = v141;
    if (v141)
    {
      v78 = sub_261D30();
      LOBYTE(v179) = 1;
      sub_206A68(v126, v77, &v189);
      v165[1] = v193;
      v165[2] = v194;
      v165[3] = v195;
      v166 = v196[0];
      v162 = v189;
      v163 = v190;
      v164 = v191;
      v165[0] = v192;
      v167 = v189;
      v168 = v190;
      v169 = v191;
      v170[0] = v192;
      v170[1] = v193;
      v170[2] = v194;
      v170[3] = v195;
      v171 = v196[0];
      sub_8198(&v162, &v181, &qword_3260D0, &qword_289088);
      sub_8E80(&v167, &qword_3260D0, &qword_289088);
      *&v161[71] = v165[1];
      *&v161[87] = v165[2];
      *&v161[103] = v165[3];
      *&v161[7] = v162;
      *&v161[23] = v163;
      *&v161[39] = v164;
      *&v161[55] = v165[0];
      *(v180 + 1) = *v161;
      *(&v180[1] + 1) = *&v161[16];
      *(&v180[2] + 1) = *&v161[32];
      *(&v180[6] + 1) = *&v161[96];
      *(&v180[5] + 1) = *&v161[80];
      *(&v180[4] + 1) = *&v161[64];
      v161[119] = v166;
      v79 = v179;
      v179 = v78;
      LOBYTE(v180[0]) = v79;
      *(&v180[7] + 1) = *&v161[112];
      *(&v180[3] + 1) = *&v161[48];
      sub_20DB1C(&v179);
      v186 = v180[4];
      v187 = v180[5];
      v188[0] = v180[6];
      *(v188 + 10) = *(&v180[6] + 10);
      v183 = v180[1];
      v184 = v180[2];
      v185 = v180[3];
      v181 = v179;
      v182 = v180[0];
      sub_2EF0(&qword_3260C0, &qword_289078);
      sub_2EF0(&qword_3260D8, &qword_289090);
      sub_20DB28(&qword_3260E0, &qword_3260C0, &qword_289078, sub_58070);
      sub_8E38(&qword_3260E8, &qword_3260D8, &qword_289090, &protocol conformance descriptor for HStack<A>);
      sub_261F80();
      v187 = v195;
      v188[0] = v196[0];
      *(v188 + 10) = *(v196 + 10);
      v183 = v191;
      v184 = v192;
      v185 = v193;
      v186 = v194;
      v181 = v189;
      v182 = v190;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v195 = v187;
      v196[0] = v188[0];
      *(v196 + 10) = *(v188 + 10);
      v191 = v183;
      v192 = v184;
      v193 = v185;
      v194 = v186;
      v189 = v181;
      v190 = v182;
    }

    else
    {
      sub_20DAF8(&v189);
    }
  }

  else
  {
    v80 = *(*&v74 + 32);
    v156 = a7 * 0.65;
    v81 = v146;
    v80(v146, v76, v75);
    v82 = v140;
    (v135)(v140, v81, v75);
    v83 = v137;
    sub_1F8860(v137);
    v84 = v138;
    v85 = v128;
    v133(v138, enum case for Font.TextStyle.caption2(_:), v128);
    v86 = sub_2625C0();
    v87 = v139;
    (*(*(v86 - 8) + 56))(v139, 1, 1, v86);
    v88 = sub_262680();
    sub_8E80(v87, &qword_318458, &unk_26B270);
    v132(v84, v85);
    sub_20D990(v83, type metadata accessor for FontConstants.Brick);
    sub_30CC(v152, &v189);
    v89 = sub_260BB0();
    v91 = v90;
    objc_allocWithZone(v131);

    v92 = sub_19C6C8(v89, v91, v88);
    [*&v92[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_parser] parse];
    v93 = OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_currentString;
    swift_beginAccess();
    v130(v153, &v92[v93], v129);

    v94 = sub_2628D0();
    v96 = v95;
    LOBYTE(v93) = v97;

    sub_3080(&v189);
    v142(v82, v75);
    v98 = v154;
    sub_1F8674(v154);
    v99 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
    sub_20D990(v98, type metadata accessor for ColorConstants);
    *&v189 = v99;
    v100 = sub_2627F0();
    v102 = v101;
    v104 = v103;
    sub_39DBC(v94, v96, v93 & 1);

    sub_262F80();
    sub_263000();

    v105 = sub_262850();
    v107 = v106;
    LOBYTE(v96) = v108;
    v110 = v109;

    sub_39DBC(v100, v102, v104 & 1);

    v111 = swift_getKeyPath();
    sub_263580();
    sub_2613A0();
    LOBYTE(v189) = v96 & 1;
    LOBYTE(v181) = 0;
    *&v160[7] = v201[3];
    *&v160[23] = v201[4];
    *&v160[39] = v202;
    *&v179 = v105;
    *(&v179 + 1) = v107;
    LOBYTE(v180[0]) = v96 & 1;
    *(&v180[0] + 1) = v110;
    *&v180[1] = v111;
    *(&v180[1] + 1) = 3;
    LOBYTE(v180[2]) = 0;
    *&v180[5] = *(&v202 + 1);
    *(&v180[4] + 1) = *&v160[32];
    *(&v180[3] + 1) = *&v160[16];
    *(&v180[2] + 1) = *v160;
    sub_20DBAC(&v179);
    v187 = v180[5];
    v188[0] = v180[6];
    *(v188 + 10) = *(&v180[6] + 10);
    v183 = v180[1];
    v184 = v180[2];
    v185 = v180[3];
    v186 = v180[4];
    v181 = v179;
    v182 = v180[0];
    sub_2EF0(&qword_3260C0, &qword_289078);
    sub_2EF0(&qword_3260D8, &qword_289090);
    sub_20DB28(&qword_3260E0, &qword_3260C0, &qword_289078, sub_58070);
    sub_8E38(&qword_3260E8, &qword_3260D8, &qword_289090, &protocol conformance descriptor for HStack<A>);
    sub_261F80();
    v142(v146, v159);
    v187 = v195;
    v188[0] = v196[0];
    *(v188 + 10) = *(v196 + 10);
    v183 = v191;
    v184 = v192;
    v185 = v193;
    v186 = v194;
    v181 = v189;
    v182 = v190;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v195 = v187;
    v196[0] = v188[0];
    *(v196 + 10) = *(v188 + 10);
    v191 = v183;
    v192 = v184;
    v193 = v185;
    v194 = v186;
    v189 = v181;
    v190 = v182;
  }

  v187 = v195;
  v188[0] = v196[0];
  *(v188 + 10) = *(v196 + 10);
  v183 = v191;
  v184 = v192;
  v185 = v193;
  v186 = v194;
  v181 = v189;
  v182 = v190;
  v112 = v148;
  v113 = v149;
  *&v162 = v149;
  *(&v162 + 1) = v148;
  LOBYTE(v163) = v157;
  *(&v163 + 1) = *v199;
  DWORD1(v163) = *&v199[3];
  v114 = v150;
  *(&v163 + 1) = v150;
  v115 = KeyPath;
  *&v164 = KeyPath;
  *(&v164 + 1) = 3;
  LOBYTE(v165[0]) = 0;
  *(&v165[1] + 1) = *&v197[16];
  *(v165 + 1) = *v197;
  *(&v165[2] + 1) = *&v197[32];
  v172 = v162;
  v173 = v163;
  v176 = v165[1];
  v177 = v165[2];
  v174 = v164;
  v175 = v165[0];
  v180[1] = v191;
  v180[2] = v192;
  v179 = v189;
  v180[0] = v190;
  *(&v180[6] + 10) = *(v196 + 10);
  v180[5] = v195;
  v180[6] = v196[0];
  v180[3] = v193;
  v180[4] = v194;
  *(&v178[6] + 8) = v195;
  *(&v178[5] + 8) = v194;
  *(v178 + 8) = v189;
  *&v165[3] = *&v197[47];
  *&v178[0] = *&v197[47];
  *(&v178[4] + 8) = v193;
  *(&v178[3] + 8) = v192;
  *(&v178[2] + 8) = v191;
  *(&v178[1] + 8) = v190;
  *(&v178[8] + 2) = *(v196 + 10);
  *(&v178[7] + 8) = v196[0];
  v116 = v178[7];
  v117 = v151;
  *(v151 + 192) = v178[6];
  *(v117 + 208) = v116;
  *(v117 + 224) = v178[8];
  *(v117 + 240) = v178[9];
  v118 = v178[3];
  *(v117 + 128) = v178[2];
  *(v117 + 144) = v118;
  v119 = v178[5];
  *(v117 + 160) = v178[4];
  *(v117 + 176) = v119;
  v120 = v177;
  *(v117 + 64) = v176;
  *(v117 + 80) = v120;
  v121 = v178[1];
  *(v117 + 96) = v178[0];
  *(v117 + 112) = v121;
  v122 = v173;
  *v117 = v172;
  *(v117 + 16) = v122;
  v123 = v175;
  *(v117 + 32) = v174;
  *(v117 + 48) = v123;
  sub_8198(&v162, &v167, &qword_3260C0, &qword_289078);
  sub_8198(&v179, &v167, &qword_3260C8, &qword_289080);
  sub_8E80(&v181, &qword_3260C8, &qword_289080);
  *(v170 + 1) = *v197;
  *&v167 = v113;
  *(&v167 + 1) = v112;
  LOBYTE(v168) = v157;
  *(&v168 + 1) = *v199;
  DWORD1(v168) = *&v199[3];
  *(&v168 + 1) = v114;
  *&v169 = v115;
  *(&v169 + 1) = 3;
  LOBYTE(v170[0]) = 0;
  *(&v170[1] + 1) = *&v197[16];
  *(&v170[2] + 1) = *&v197[32];
  *&v170[3] = *&v197[47];
  return sub_8E80(&v167, &qword_3260C0, &qword_289078);
}

uint64_t sub_206A68@<X0>(uint64_t (*a1)()@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_1F7FC4(&v31);
  v6 = v34;
  v7 = v35;
  sub_2E18(&v31, v34);
  v27 = a1;
  v28 = a2;
  LOBYTE(v29) = 1;
  v8 = sub_1F8134();
  v20 = -2;
  v19 = -772;
  v9 = (*(v7 + 16))(&v27, &v19, v6, v7, 36.0, 36.0, v8);
  sub_3080(&v31);
  type metadata accessor for ImageResourceLoader(0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  sub_2EF0(&qword_318728, &qword_26DBF0);
  v11 = swift_allocObject();
  *(v11 + 28) = 0;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v10 + 24) = v11;
  sub_2603B0();
  v27 = v10;
  sub_2631D0();
  v12 = v31;
  v13 = v32;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v23 = 1;
  v27 = sub_208AA0;
  v28 = 0;
  *&v29 = v9;
  *(&v29 + 1) = v12;
  *v30 = v13;
  *&v30[8] = v24;
  *&v30[24] = v25;
  *&v30[40] = v26;
  *&v22[7] = sub_208AA0;
  *&v22[23] = v29;
  *&v22[87] = *(&v26 + 1);
  *&v22[71] = *&v30[32];
  *&v22[55] = *&v30[16];
  *&v22[39] = *v30;
  v21 = 1;
  *a3 = 0;
  *(a3 + 8) = 1;
  v14 = *v22;
  *(a3 + 25) = *&v22[16];
  *(a3 + 9) = v14;
  v15 = *&v22[32];
  v16 = *&v22[48];
  v17 = *&v22[64];
  *(a3 + 88) = *&v22[79];
  *(a3 + 73) = v17;
  *(a3 + 57) = v16;
  *(a3 + 41) = v15;
  *(a3 + 104) = 0;
  *(a3 + 112) = 1;
  v31 = sub_208AA0;
  v32 = 0;
  v33 = v9;
  v34 = v12;
  v35 = v13;
  v38 = v26;
  v37 = v25;
  v36 = v24;
  sub_8198(&v27, &v19, &qword_326020, &qword_288FB8);
  return sub_8E80(&v31, &qword_326020, &qword_288FB8);
}

uint64_t sub_206CDC@<X0>(_OWORD *a1@<X1>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v42[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = a1[5];
  v44[4] = a1[4];
  v44[5] = v12;
  v13 = a1[7];
  v44[6] = a1[6];
  v44[7] = v13;
  v14 = a1[1];
  v44[0] = *a1;
  v44[1] = v14;
  v15 = a1[3];
  v44[2] = a1[2];
  v44[3] = v15;
  sub_2F8B8(v44);
  sub_2F950(v44);
  v16 = sub_2609D0();
  v18 = v17;
  if (v16 == sub_2609D0() && v18 == v19)
  {

    v20 = 0.51;
  }

  else
  {
    v21 = sub_264F10();

    v20 = 0.33;
    if (v21)
    {
      v20 = 0.51;
    }
  }

  v22 = a3 * 0.5;
  v23 = v20 * a3;
  sub_1F8488(v11);
  sub_20DCBC(v11, v8, type metadata accessor for SizeConstants.Environment);
  sub_20D990(v8, type metadata accessor for SizeConstants.Spacing);
  sub_1F8488(v11);
  sub_20DCBC(v11, v8, type metadata accessor for SizeConstants.Environment);
  sub_20D990(v8, type metadata accessor for SizeConstants.Spacing);
  if (v22 + -16.0 <= v23)
  {
    v24 = 16.0;
  }

  else
  {
    v24 = 0.0;
  }

  *a2 = swift_getKeyPath();
  *(a2 + 40) = 0;
  *(a2 + 48) = swift_getKeyPath();
  *(a2 + 56) = 0;
  v25 = type metadata accessor for CoverView(0);
  v26 = v25[6];
  *(a2 + v26) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v27 = v25[7];
  *(a2 + v27) = swift_getKeyPath();
  sub_2EF0(&qword_317E08, &qword_26A550);
  swift_storeEnumTagMultiPayload();
  v28 = (a2 + v25[8]);
  sub_5757C(a1, v43);
  type metadata accessor for ProfileRestrictions(0);
  sub_20DBBC(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
  *v28 = sub_261900();
  v28[1] = v29;
  v30 = a2 + v25[9];
  v42[15] = 1;
  sub_2631D0();
  v31 = *(&v43[0] + 1);
  *v30 = v43[0];
  *(v30 + 8) = v31;
  v32 = (a2 + v25[10]);
  v33 = a1[5];
  v32[4] = a1[4];
  v32[5] = v33;
  v34 = a1[7];
  v32[6] = a1[6];
  v32[7] = v34;
  v35 = a1[1];
  *v32 = *a1;
  v32[1] = v35;
  v36 = a1[3];
  v32[2] = a1[2];
  v32[3] = v36;
  *(a2 + v25[11]) = 0;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v37 = (a2 + *(sub_2EF0(&qword_3188E0, &qword_274300) + 36));
  v38 = v43[1];
  *v37 = v43[0];
  v37[1] = v38;
  v37[2] = v43[2];
  v39 = a2 + *(sub_2EF0(&qword_3260F0, &qword_2890C0) + 36);
  *v39 = v24;
  *(v39 + 8) = 0;
  result = sub_2EF0(&qword_3260F8, &qword_2890C8);
  v41 = a2 + *(result + 36);
  *v41 = 0;
  *(v41 + 8) = 257;
  return result;
}

void sub_20713C(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>, double a4@<D0>)
{
  v131 = a2;
  v7 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v7 - 8);
  v127 = v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v9 - 8);
  v126 = (v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v128 = sub_2EF0(&qword_3260F8, &qword_2890C8);
  __chkstk_darwin(v128);
  v12 = v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v119 - v14;
  v129 = sub_2EF0(&qword_326100, &qword_2890D0);
  __chkstk_darwin(v129);
  v17 = v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  __chkstk_darwin(v19);
  __chkstk_darwin(v20);
  __chkstk_darwin(v21);
  v23 = v119 - v22;
  __chkstk_darwin(v24);
  v130 = v119 - v28;
  if (!*(a1 + 16))
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  v125 = *(a1 + 16);
  v120 = v27;
  v121 = v26;
  v122 = v25;
  v29 = *(a1 + 112);
  v147 = *(a1 + 96);
  v148 = v29;
  v30 = *(a1 + 144);
  v149 = *(a1 + 128);
  v150 = v30;
  v31 = *(a1 + 48);
  v143 = *(a1 + 32);
  v144 = v31;
  v32 = *(a1 + 80);
  v145 = *(a1 + 64);
  v146 = v32;
  v151[0] = v143;
  v151[1] = v31;
  v151[2] = v145;
  v151[3] = v32;
  v151[4] = v147;
  v151[5] = v29;
  v151[6] = v149;
  v151[7] = v30;
  v33 = sub_2F8B8(v151);
  sub_2F950(v151);
  v123 = v17;
  v124 = a3;
  if (!v33)
  {
    sub_5757C(&v143, v142);
  }

  v34 = sub_2609D0();
  v36 = v35;
  if (v34 == sub_2609D0() && v36 == v37)
  {

    v38 = 0.51;
  }

  else
  {
    v39 = sub_264F10();

    v38 = 0.33;
    if (v39)
    {
      v38 = 0.51;
    }
  }

  v40 = a4 * 0.5;
  v41 = a4 * 0.5 * 0.5;
  v42 = v41 - v38 * a4 * 0.5;
  v43 = v126;
  sub_1F8488(v126);
  v44 = v43;
  v45 = v127;
  sub_20DCBC(v44, v127, type metadata accessor for SizeConstants.Environment);
  sub_20D990(v45, type metadata accessor for SizeConstants.Spacing);
  *v15 = swift_getKeyPath();
  v15[40] = 0;
  *(v15 + 6) = swift_getKeyPath();
  v15[56] = 0;
  v46 = type metadata accessor for CoverView(0);
  v47 = v46[6];
  *&v15[v47] = swift_getKeyPath();
  v119[4] = sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v48 = v46[7];
  *&v15[v48] = swift_getKeyPath();
  v119[3] = sub_2EF0(&qword_317E08, &qword_26A550);
  swift_storeEnumTagMultiPayload();
  v49 = &v15[v46[8]];
  v50 = type metadata accessor for ProfileRestrictions(0);
  v119[1] = sub_20DBBC(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
  v119[2] = v50;
  *v49 = sub_261900();
  v49[1] = v51;
  v52 = &v15[v46[9]];
  LOBYTE(v134) = 1;
  sub_2631D0();
  v53 = *(&v142[0] + 1);
  *v52 = v142[0];
  *(v52 + 1) = v53;
  v54 = &v15[v46[10]];
  v55 = v148;
  *(v54 + 4) = v147;
  *(v54 + 5) = v55;
  v56 = v150;
  *(v54 + 6) = v149;
  *(v54 + 7) = v56;
  v57 = v144;
  *v54 = v143;
  *(v54 + 1) = v57;
  v58 = v146;
  *(v54 + 2) = v145;
  *(v54 + 3) = v58;
  v15[v46[11]] = 0;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v119[0] = sub_2EF0(&qword_3188E0, &qword_274300);
  v59 = &v15[*(v119[0] + 36)];
  v60 = v142[9];
  *v59 = v142[8];
  *(v59 + 1) = v60;
  *(v59 + 2) = v142[10];
  v61 = sub_2EF0(&qword_3260F0, &qword_2890C0);
  v62 = &v15[*(v61 + 36)];
  *v62 = -v42;
  *(v62 + 1) = 0;
  v63 = &v15[*(v128 + 36)];
  *v63 = 0;
  *(v63 + 4) = 257;
  LOBYTE(v50) = sub_262510();
  sub_2610C0();
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  sub_22148(v15, v23, &qword_3260F8, &qword_2890C8);
  v72 = v130;
  v73 = &v23[*(v129 + 36)];
  *v73 = v50;
  *(v73 + 1) = v65;
  *(v73 + 2) = v67;
  *(v73 + 3) = v69;
  *(v73 + 4) = v71;
  v73[40] = 0;
  sub_22148(v23, v72, &qword_326100, &qword_2890D0);
  if (v125 == 1)
  {
    goto LABEL_19;
  }

  v74 = *(a1 + 240);
  v138 = *(a1 + 224);
  v139 = v74;
  v75 = *(a1 + 272);
  v140 = *(a1 + 256);
  v141 = v75;
  v76 = *(a1 + 176);
  v134 = *(a1 + 160);
  v135 = v76;
  v77 = *(a1 + 208);
  v136 = *(a1 + 192);
  v137 = v77;
  v142[0] = v134;
  v142[1] = v76;
  v142[2] = v136;
  v142[3] = v77;
  v142[4] = v138;
  v142[5] = v74;
  v142[6] = v140;
  v142[7] = v75;
  v78 = sub_2F8B8(v142);
  sub_2F950(v142);
  if (!v78)
  {
    sub_5757C(&v134, v132);
  }

  v79 = v123;
  v80 = sub_2609D0();
  v82 = v81;
  if (v80 == sub_2609D0() && v82 == v83)
  {

    v84 = 0.51;
  }

  else
  {
    v85 = sub_264F10();

    v84 = 0.33;
    if (v85)
    {
      v84 = 0.51;
    }
  }

  v86 = v84 * a4;
  v87 = v126;
  sub_1F8488(v126);
  v88 = v127;
  sub_20DCBC(v87, v127, type metadata accessor for SizeConstants.Environment);
  sub_20D990(v88, type metadata accessor for SizeConstants.Spacing);
  *v12 = swift_getKeyPath();
  v12[40] = 0;
  *(v12 + 6) = swift_getKeyPath();
  v12[56] = 0;
  v89 = v46[6];
  *&v12[v89] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v90 = v46[7];
  *&v12[v90] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v91 = &v12[v46[8]];
  *v91 = sub_261900();
  v91[1] = v92;
  v93 = &v12[v46[9]];
  v133 = 1;
  sub_2631D0();
  v94 = *(&v132[0] + 1);
  *v93 = v132[0];
  *(v93 + 1) = v94;
  v95 = &v12[v46[10]];
  v96 = v139;
  *(v95 + 4) = v138;
  *(v95 + 5) = v96;
  v97 = v141;
  *(v95 + 6) = v140;
  *(v95 + 7) = v97;
  v98 = v135;
  *v95 = v134;
  *(v95 + 1) = v98;
  v99 = v137;
  *(v95 + 2) = v136;
  *(v95 + 3) = v99;
  v12[v46[11]] = 0;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v100 = &v12[*(v119[0] + 36)];
  v101 = v132[1];
  *v100 = v132[0];
  *(v100 + 1) = v101;
  *(v100 + 2) = v132[2];
  v102 = &v12[*(v61 + 36)];
  *v102 = (v40 + -16.0) * 0.5 - (v41 - v86 * 0.5);
  *(v102 + 1) = 0;
  v103 = &v12[*(v128 + 36)];
  *v103 = 0;
  *(v103 + 4) = 257;
  LOBYTE(v93) = sub_262510();
  sub_2610C0();
  v105 = v104;
  v107 = v106;
  v109 = v108;
  v111 = v110;
  v112 = v120;
  sub_22148(v12, v120, &qword_3260F8, &qword_2890C8);
  v113 = v112 + *(v129 + 36);
  *v113 = v93;
  *(v113 + 8) = v105;
  *(v113 + 16) = v107;
  *(v113 + 24) = v109;
  *(v113 + 32) = v111;
  *(v113 + 40) = 0;
  v114 = v121;
  sub_22148(v112, v121, &qword_326100, &qword_2890D0);
  v115 = v130;
  v116 = v122;
  sub_8198(v130, v122, &qword_326100, &qword_2890D0);
  sub_8198(v114, v79, &qword_326100, &qword_2890D0);
  v117 = v124;
  sub_8198(v116, v124, &qword_326100, &qword_2890D0);
  v118 = sub_2EF0(&qword_326108, &qword_2890D8);
  sub_8198(v79, v117 + *(v118 + 48), &qword_326100, &qword_2890D0);
  sub_8E80(v114, &qword_326100, &qword_2890D0);
  sub_8E80(v115, &qword_326100, &qword_2890D0);
  sub_8E80(v79, &qword_326100, &qword_2890D0);
  sub_8E80(v116, &qword_326100, &qword_2890D0);
}

void sub_207BD4(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v8 - 8);
  v192 = &v172 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v10 - 8);
  v191 = (&v172 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v194 = sub_2EF0(&qword_3260F8, &qword_2890C8);
  __chkstk_darwin(v194);
  v13 = (&v172 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v16 = &v172 - v15;
  __chkstk_darwin(v17);
  v19 = &v172 - v18;
  v193 = sub_2EF0(&qword_326100, &qword_2890D0);
  __chkstk_darwin(v193);
  v21 = &v172 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  __chkstk_darwin(v23);
  __chkstk_darwin(v24);
  __chkstk_darwin(v25);
  __chkstk_darwin(v26);
  __chkstk_darwin(v27);
  __chkstk_darwin(&v172 - v28);
  v30 = &v172 - v29;
  __chkstk_darwin(v31);
  v189 = &v172 - v38;
  v190 = *(a1 + 16);
  if (!v190)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v180 = v34;
  v181 = a2;
  v173 = v33;
  v174 = v13;
  v188 = v32;
  v175 = v37;
  v176 = v36;
  v177 = v35;
  v39 = *(a1 + 112);
  v219 = *(a1 + 96);
  v220 = v39;
  v40 = *(a1 + 144);
  v221 = *(a1 + 128);
  v222 = v40;
  v41 = *(a1 + 48);
  v215 = *(a1 + 32);
  v216 = v41;
  v42 = *(a1 + 80);
  v217 = *(a1 + 64);
  v218 = v42;
  v223[0] = v215;
  v223[1] = v41;
  v223[2] = v217;
  v223[3] = v42;
  v223[4] = v219;
  v223[5] = v39;
  v223[6] = v221;
  v223[7] = v40;
  v43 = sub_2F8B8(v223);
  sub_2F950(v223);
  v178 = v21;
  v179 = a3;
  if (!v43)
  {
    sub_5757C(&v215, v214);
  }

  v44 = sub_2609D0();
  v46 = v45;
  if (v44 == sub_2609D0() && v46 == v47)
  {

    v48 = 0.51;
  }

  else
  {
    v49 = sub_264F10();

    v48 = 0.33;
    if (v49)
    {
      v48 = 0.51;
    }
  }

  v50 = a4 * 0.5 * 0.5;
  v51 = v50 - v48 * a4 * 0.5;
  v52 = v191;
  sub_1F8488(v191);
  v53 = v52;
  v54 = v192;
  sub_20DCBC(v53, v192, type metadata accessor for SizeConstants.Environment);
  sub_20D990(v54, type metadata accessor for SizeConstants.Spacing);
  *v19 = swift_getKeyPath();
  v19[40] = 0;
  *(v19 + 6) = swift_getKeyPath();
  v19[56] = 0;
  v55 = type metadata accessor for CoverView(0);
  v56 = v55[6];
  *&v19[v56] = swift_getKeyPath();
  v187 = sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v57 = v55[7];
  *&v19[v57] = swift_getKeyPath();
  v186 = sub_2EF0(&qword_317E08, &qword_26A550);
  swift_storeEnumTagMultiPayload();
  v58 = &v19[v55[8]];
  v59 = type metadata accessor for ProfileRestrictions(0);
  v184 = sub_20DBBC(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
  v185 = v59;
  *v58 = sub_261900();
  v58[1] = v60;
  v61 = &v19[v55[9]];
  LOBYTE(v206) = 1;
  sub_2631D0();
  v62 = *(&v214[0] + 1);
  *v61 = v214[0];
  *(v61 + 1) = v62;
  v63 = &v19[v55[10]];
  v64 = v220;
  *(v63 + 4) = v219;
  *(v63 + 5) = v64;
  v65 = v222;
  *(v63 + 6) = v221;
  *(v63 + 7) = v65;
  v66 = v216;
  *v63 = v215;
  *(v63 + 1) = v66;
  v67 = v218;
  *(v63 + 2) = v217;
  *(v63 + 3) = v67;
  v19[v55[11]] = 0;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v183 = sub_2EF0(&qword_3188E0, &qword_274300);
  v68 = &v19[*(v183 + 36)];
  v69 = v214[9];
  *v68 = v214[8];
  *(v68 + 1) = v69;
  *(v68 + 2) = v214[10];
  v182 = sub_2EF0(&qword_3260F0, &qword_2890C0);
  v70 = &v19[*(v182 + 36)];
  *v70 = -v51;
  *(v70 + 1) = 0;
  v71 = &v19[*(v194 + 36)];
  *v71 = 0;
  *(v71 + 4) = 257;
  LOBYTE(v61) = sub_262510();
  sub_2610C0();
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v79 = v78;
  sub_22148(v19, v30, &qword_3260F8, &qword_2890C8);
  v80 = &v30[*(v193 + 36)];
  *v80 = v61;
  *(v80 + 1) = v73;
  *(v80 + 2) = v75;
  *(v80 + 3) = v77;
  *(v80 + 4) = v79;
  v80[40] = 0;
  sub_22148(v30, v189, &qword_326100, &qword_2890D0);
  if (v190 == 1)
  {
    goto LABEL_28;
  }

  v81 = *(a1 + 240);
  v210 = *(a1 + 224);
  v211 = v81;
  v82 = *(a1 + 272);
  v212 = *(a1 + 256);
  v213 = v82;
  v83 = *(a1 + 176);
  v206 = *(a1 + 160);
  v207 = v83;
  v84 = *(a1 + 208);
  v208 = *(a1 + 192);
  v209 = v84;
  v214[0] = v206;
  v214[1] = v83;
  v214[2] = v208;
  v214[3] = v84;
  v214[4] = v210;
  v214[5] = v81;
  v214[6] = v212;
  v214[7] = v82;
  v85 = sub_2F8B8(v214);
  sub_2F950(v214);
  if (!v85)
  {
    sub_5757C(&v206, v205);
  }

  v86 = sub_2609D0();
  v88 = v87;
  if (v86 == sub_2609D0() && v88 == v89)
  {

    v90 = 0.51;
    v91 = v188;
    v92 = &unk_288000;
  }

  else
  {
    v93 = sub_264F10();

    v92 = &unk_288000;
    v90 = 0.33;
    if (v93)
    {
      v90 = 0.51;
    }

    v91 = v188;
  }

  v94 = v50 + v90 * a4 * -0.5;
  v95 = v191;
  sub_1F8488(v191);
  v96 = v95;
  v97 = v192;
  sub_20DCBC(v96, v192, type metadata accessor for SizeConstants.Environment);
  sub_20D990(v97, type metadata accessor for SizeConstants.Spacing);
  v98 = a4 * 0.5 + -16.0;
  v99 = v92[352];
  *v16 = swift_getKeyPath();
  v16[40] = 0;
  *(v16 + 6) = swift_getKeyPath();
  v16[56] = 0;
  v100 = v55[6];
  *&v16[v100] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v101 = v55[7];
  *&v16[v101] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v102 = &v16[v55[8]];
  *v102 = sub_261900();
  v102[1] = v103;
  v104 = &v16[v55[9]];
  LOBYTE(v197) = 1;
  sub_2631D0();
  v105 = *(&v205[0] + 1);
  *v104 = v205[0];
  *(v104 + 1) = v105;
  v106 = &v16[v55[10]];
  v107 = v211;
  *(v106 + 4) = v210;
  *(v106 + 5) = v107;
  v108 = v213;
  *(v106 + 6) = v212;
  *(v106 + 7) = v108;
  v109 = v207;
  *v106 = v206;
  *(v106 + 1) = v109;
  v110 = v209;
  *(v106 + 2) = v208;
  *(v106 + 3) = v110;
  v16[v55[11]] = 0;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v111 = &v16[*(v183 + 36)];
  v112 = v214[12];
  *v111 = v214[11];
  *(v111 + 1) = v112;
  *(v111 + 2) = v214[13];
  v113 = &v16[*(v182 + 36)];
  *v113 = v98 * v99 - v94;
  *(v113 + 1) = 0;
  v114 = &v16[*(v194 + 36)];
  *v114 = 0;
  *(v114 + 4) = 257;
  LOBYTE(v104) = sub_262510();
  sub_2610C0();
  v116 = v115;
  v118 = v117;
  v120 = v119;
  v122 = v121;
  v123 = v16;
  v124 = v180;
  sub_22148(v123, v180, &qword_3260F8, &qword_2890C8);
  v125 = v124 + *(v193 + 36);
  *v125 = v104;
  *(v125 + 8) = v116;
  *(v125 + 16) = v118;
  *(v125 + 24) = v120;
  *(v125 + 32) = v122;
  *(v125 + 40) = 0;
  sub_22148(v124, v91, &qword_326100, &qword_2890D0);
  if (v190 >= 3)
  {
    v126 = *(a1 + 368);
    v201 = *(a1 + 352);
    v202 = v126;
    v127 = *(a1 + 400);
    v203 = *(a1 + 384);
    v204 = v127;
    v128 = *(a1 + 304);
    v197 = *(a1 + 288);
    v198 = v128;
    v129 = *(a1 + 336);
    v199 = *(a1 + 320);
    v200 = v129;
    v205[0] = v197;
    v205[1] = v128;
    v205[2] = v199;
    v205[3] = v129;
    v205[4] = v201;
    v205[5] = v126;
    v205[6] = v203;
    v205[7] = v127;
    v130 = sub_2F8B8(v205);
    sub_2F950(v205);
    if (!v130)
    {
      sub_5757C(&v197, v195);
    }

    v131 = sub_2609D0();
    v133 = v132;
    if (v131 == sub_2609D0() && v133 == v134)
    {
    }

    else
    {
      v135 = sub_264F10();

      if ((v135 & 1) == 0)
      {
LABEL_26:
        v136 = v191;
        sub_1F8488(v191);
        v137 = v192;
        sub_20DCBC(v136, v192, type metadata accessor for SizeConstants.Environment);
        sub_20D990(v137, type metadata accessor for SizeConstants.Spacing);
        KeyPath = swift_getKeyPath();
        v139 = v174;
        *v174 = KeyPath;
        *(v139 + 40) = 0;
        *(v139 + 48) = swift_getKeyPath();
        *(v139 + 56) = 0;
        v140 = v55[6];
        *(v139 + v140) = swift_getKeyPath();
        swift_storeEnumTagMultiPayload();
        v141 = v55[7];
        *(v139 + v141) = swift_getKeyPath();
        swift_storeEnumTagMultiPayload();
        v142 = (v139 + v55[8]);
        *v142 = sub_261900();
        v142[1] = v143;
        v144 = v139 + v55[9];
        v196 = 1;
        sub_2631D0();
        v145 = *(&v195[0] + 1);
        *v144 = v195[0];
        *(v144 + 8) = v145;
        v146 = (v139 + v55[10]);
        v147 = v202;
        v146[4] = v201;
        v146[5] = v147;
        v148 = v204;
        v146[6] = v203;
        v146[7] = v148;
        v149 = v198;
        *v146 = v197;
        v146[1] = v149;
        v150 = v200;
        v146[2] = v199;
        v146[3] = v150;
        *(v139 + v55[11]) = 0;
        _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
        sub_2613A0();
        v151 = (v139 + *(v183 + 36));
        v152 = v195[1];
        *v151 = v195[0];
        v151[1] = v152;
        v151[2] = v195[2];
        v153 = v139 + *(v182 + 36);
        *v153 = v98 * 0.66 - (v50 + v99 * a4 * -0.5);
        *(v153 + 8) = 0;
        v154 = v139 + *(v194 + 36);
        *v154 = 0;
        *(v154 + 8) = 257;
        LOBYTE(v144) = sub_262510();
        sub_2610C0();
        v156 = v155;
        v158 = v157;
        v160 = v159;
        v162 = v161;
        v163 = v173;
        sub_22148(v139, v173, &qword_3260F8, &qword_2890C8);
        v164 = v163 + *(v193 + 36);
        *v164 = v144;
        *(v164 + 8) = v156;
        *(v164 + 16) = v158;
        *(v164 + 24) = v160;
        *(v164 + 32) = v162;
        *(v164 + 40) = 0;
        v165 = v175;
        sub_22148(v163, v175, &qword_326100, &qword_2890D0);
        v166 = v189;
        v167 = v176;
        sub_8198(v189, v176, &qword_326100, &qword_2890D0);
        v168 = v177;
        sub_8198(v91, v177, &qword_326100, &qword_2890D0);
        v169 = v178;
        sub_8198(v165, v178, &qword_326100, &qword_2890D0);
        v170 = v179;
        sub_8198(v167, v179, &qword_326100, &qword_2890D0);
        v171 = sub_2EF0(&qword_326110, &qword_2890E0);
        sub_8198(v168, v170 + *(v171 + 48), &qword_326100, &qword_2890D0);
        sub_8198(v169, v170 + *(v171 + 64), &qword_326100, &qword_2890D0);
        sub_8E80(v165, &qword_326100, &qword_2890D0);
        sub_8E80(v188, &qword_326100, &qword_2890D0);
        sub_8E80(v166, &qword_326100, &qword_2890D0);
        sub_8E80(v169, &qword_326100, &qword_2890D0);
        sub_8E80(v168, &qword_326100, &qword_2890D0);
        sub_8E80(v167, &qword_326100, &qword_2890D0);
        return;
      }
    }

    v99 = 0.51;
    goto LABEL_26;
  }

LABEL_29:
  __break(1u);
}

double sub_208AA0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_2630C0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    v8 = a1;
    sub_2630A0();
    (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
    v9 = sub_263100();

    (*(v5 + 8))(v7, v4);
    _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    sub_2613A0();
    v17 = v22;
    v15 = v24;
    v13[8] = 0;
    *&v26 = v9;
    *(&v26 + 1) = v21;
    LOBYTE(v27) = v22;
    *(&v27 + 1) = *v16;
    DWORD1(v27) = *&v16[3];
    *(&v27 + 1) = v23;
    v28[0] = v24;
    *&v28[1] = *v14;
    *&v28[4] = *&v14[3];
    *&v28[8] = v25;
    v28[24] = 0;

    sub_2EF0(&qword_3188C0, &qword_26BDD8);
    sub_2EF0(&qword_3188C8, &qword_26BDE0);
    sub_5749C();
    sub_8E38(&qword_3188D8, &qword_3188C8, &qword_26BDE0, &protocol conformance descriptor for _ShapeView<A, B>);
    sub_261F80();

    v26 = v18;
    v27 = v19;
    *v28 = *v20;
    *&v28[9] = *&v20[9];
  }

  else
  {
    v10 = _s7BooksUI14ColorConstantsV9booksGray05SwiftB00C0Vvg_0();
    LOBYTE(v21) = 1;
    *&v18 = v10;
    WORD4(v18) = 256;
    v20[24] = 1;
    sub_2EF0(&qword_3188C0, &qword_26BDD8);
    sub_2EF0(&qword_3188C8, &qword_26BDE0);
    sub_5749C();
    sub_8E38(&qword_3188D8, &qword_3188C8, &qword_26BDE0, &protocol conformance descriptor for _ShapeView<A, B>);
    sub_261F80();
  }

  v11 = v27;
  *a2 = v26;
  a2[1] = v11;
  a2[2] = *v28;
  result = *&v28[9];
  *(a2 + 41) = *&v28[9];
  return result;
}

uint64_t sub_208E3C()
{
  v1 = type metadata accessor for BrickLockupView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  if (*(v0 + v2 + 40))
  {
    sub_3080((v0 + v2));
  }

  else
  {
  }

  sub_3074(*(v3 + 48), *(v3 + 56));
  v4 = v1[6];
  sub_2EF0(&qword_318148, &unk_26AEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_261690();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v3 + v1[7];
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v8 = sub_261690();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  v9 = v1[8];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_261180();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  else
  {
  }

  v11 = v3 + v1[9];
  sub_2EF0(&qword_325B90, &qword_288C30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v13 = sub_261690();
    (*(*(v13 - 8) + 8))(v11 + v12, v13);
  }

  else
  {
  }

  v14 = v3 + v1[10];
  type metadata accessor for BrickLockupModel.BrickType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v16 = sub_260BD0();
        v17 = *(v16 - 8);
        v18 = *(v17 + 8);
        v18(v14, v16);
        v19 = &qword_325BB8;
        v20 = &qword_2891B0;
      }

      else
      {
        if (EnumCaseMultiPayload != 2)
        {
          goto LABEL_38;
        }

        v16 = sub_260BD0();
        v17 = *(v16 - 8);
        v18 = *(v17 + 8);
        v18(v14, v16);
        v19 = &qword_325BC0;
        v20 = &qword_288C58;
      }

      v32 = *(sub_2EF0(v19, v20) + 48);
      if (!(*(v17 + 48))(v14 + v32, 1, v16))
      {
        v18(v14 + v32, v16);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v21 = sub_260BD0();
      v22 = *(v21 - 8);
      v23 = *(v22 + 8);
      v23(v14, v21);
      v24 = &qword_325BD0;
      v25 = &qword_288C60;
    }

    else
    {
      if (EnumCaseMultiPayload != 5)
      {
        goto LABEL_38;
      }

      v21 = sub_260BD0();
      v22 = *(v21 - 8);
      v23 = *(v22 + 8);
      v23(v14, v21);
      v24 = &qword_325BD8;
      v25 = &unk_289180;
    }

    v33 = *(sub_2EF0(v24, v25) + 48);
    if (!(*(v22 + 48))(v14 + v33, 1, v21))
    {
      v23(v14 + v33, v21);
    }

    goto LABEL_37;
  }

  v26 = sub_260BD0();
  v27 = *(v26 - 8);
  v28 = *(v27 + 8);
  v28(v14, v26);
  v29 = sub_2EF0(&qword_325BC8, &unk_2891A0);
  v30 = *(v29 + 48);
  if (!(*(v27 + 48))(v14 + v30, 1, v26))
  {
    v28(v14 + v30, v26);
  }

  v31 = v14 + *(v29 + 80);
  sub_57200(*v31, *(v31 + 8), *(v31 + 16), *(v31 + 24), *(v31 + 32), *(v31 + 40), *(v31 + 48), *(v31 + 56), *(v31 + 64), *(v31 + 72), *(v31 + 80), *(v31 + 88), *(v31 + 96), *(v31 + 104), *(v31 + 112));
LABEL_38:
  type metadata accessor for BrickLockupModel(0);

  return swift_deallocObject();
}

uint64_t sub_209524@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BrickLockupView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1F98F8(v4, a1);
}

unint64_t sub_2095A4()
{
  result = qword_325BE0;
  if (!qword_325BE0)
  {
    sub_2F9C(&qword_325BA0, &qword_288C40);
    sub_209630();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325BE0);
  }

  return result;
}

unint64_t sub_209630()
{
  result = qword_325BE8;
  if (!qword_325BE8)
  {
    sub_2F9C(&qword_325B98, &qword_288C38);
    sub_2096E8();
    sub_8E38(&qword_317DA0, &qword_317DA8, &qword_26C1B0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325BE8);
  }

  return result;
}

unint64_t sub_2096E8()
{
  result = qword_325BF0;
  if (!qword_325BF0)
  {
    sub_2F9C(&qword_325BF8, &qword_288C68);
    sub_8E38(&qword_325C00, &qword_325C08, &qword_288C70, &protocol conformance descriptor for GeometryReader<A>);
    sub_8E38(&qword_318EB8, &qword_318EC0, &unk_26C3B0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325BF0);
  }

  return result;
}

unint64_t sub_2097CC()
{
  result = qword_325C10;
  if (!qword_325C10)
  {
    sub_2F9C(&qword_325BB0, &qword_288C50);
    sub_2F9C(&qword_325BA0, &qword_288C40);
    sub_261FA0();
    sub_2095A4();
    sub_20DBBC(&qword_318438, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_3224A8, &qword_318978, &qword_26BEA8, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325C10);
  }

  return result;
}

uint64_t sub_209940(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 40);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v8 = sub_2EF0(&qword_319858, &unk_2725D0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = sub_2EF0(&qword_317BF8, &unk_26F930);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_13;
  }

  v13 = sub_2EF0(&qword_316F68, &unk_269C50);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_13;
  }

  v14 = sub_2EF0(&qword_325C18, &qword_288CD0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[9];
    goto LABEL_13;
  }

  v16 = type metadata accessor for BrickLockupModel(0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[10];

  return v17(v18, a2, v16);
}

uint64_t sub_209B78(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 40) = -a2;
    return result;
  }

  v8 = sub_2EF0(&qword_319858, &unk_2725D0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = sub_2EF0(&qword_317BF8, &unk_26F930);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_11;
  }

  v13 = sub_2EF0(&qword_316F68, &unk_269C50);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_11;
  }

  v14 = sub_2EF0(&qword_325C18, &qword_288CD0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[9];
    goto LABEL_11;
  }

  v16 = type metadata accessor for BrickLockupModel(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[10];

  return v17(v18, a2, a2, v16);
}

void sub_209DA0(uint64_t a1)
{
  sub_5027C(319);
  if (v1 <= 0x3F)
  {
    sub_14C14();
    if (v2 <= 0x3F)
    {
      sub_209F0C(319, &qword_3198C8, &type metadata accessor for DynamicTypeSize);
      if (v3 <= 0x3F)
      {
        sub_209F0C(319, &qword_317C68, type metadata accessor for SizeConstants);
        if (v4 <= 0x3F)
        {
          sub_209F0C(319, &qword_316FE8, type metadata accessor for ColorConstants);
          if (v5 <= 0x3F)
          {
            sub_209F0C(319, &unk_325C88, type metadata accessor for FontConstants.Brick);
            if (v6 <= 0x3F)
            {
              type metadata accessor for BrickLockupModel(319);
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

void sub_209F0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2611E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_209F60()
{
  sub_2F9C(&qword_325BB0, &qword_288C50);
  sub_2F9C(&qword_3174E8, &qword_269970);
  sub_2097CC();
  sub_8E38(&qword_3175C8, &qword_3174E8, &qword_269970, &protocol conformance descriptor for ClosedRange<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20A02C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(a2, a3);
    sub_20A0B0();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20A0B0()
{
  result = qword_325E68;
  if (!qword_325E68)
  {
    sub_2F9C(&qword_325DE0, &qword_288DF8);
    sub_20A13C();
    sub_20A224();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325E68);
  }

  return result;
}

unint64_t sub_20A13C()
{
  result = qword_325E70;
  if (!qword_325E70)
  {
    sub_2F9C(&qword_325DF0, &qword_288E08);
    sub_8E38(&qword_3188B0, &qword_3188A8, &qword_26BDD0, &protocol conformance descriptor for AsyncResourceImage<A>);
    sub_20DBBC(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325E70);
  }

  return result;
}

unint64_t sub_20A224()
{
  result = qword_325E78;
  if (!qword_325E78)
  {
    sub_2F9C(&qword_325DC0, &qword_288DD8);
    sub_8E38(&qword_325E80, &qword_325E88, &qword_288E60, &protocol conformance descriptor for ZStack<A>);
    sub_8E38(&qword_317398, &qword_3173A0, &qword_26D0C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325E78);
  }

  return result;
}

unint64_t sub_20A308()
{
  result = qword_325E90;
  if (!qword_325E90)
  {
    sub_2F9C(&qword_325DA0, &qword_288DB8);
    sub_20DB28(&qword_325E98, &qword_325DB0, &qword_288DC8, sub_20A3EC);
    sub_8E38(&qword_325EB8, &qword_325D90, &qword_288DA8, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325E90);
  }

  return result;
}

unint64_t sub_20A3EC()
{
  result = qword_325EA0;
  if (!qword_325EA0)
  {
    sub_2F9C(&qword_325E28, &qword_288E38);
    sub_8E38(&qword_325EA8, &qword_325EB0, &qword_288E68, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325EA0);
  }

  return result;
}

unint64_t sub_20A4A4()
{
  result = qword_325EC0;
  if (!qword_325EC0)
  {
    sub_2F9C(&qword_325D70, &qword_288D88);
    sub_8E38(&qword_325E50, &qword_325D80, &qword_288D98, &protocol conformance descriptor for HStack<A>);
    sub_8E38(&qword_325E58, &qword_325D60, &qword_288D78, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325EC0);
  }

  return result;
}

unint64_t sub_20A584()
{
  result = qword_325EC8;
  if (!qword_325EC8)
  {
    sub_2F9C(&qword_325DF8, &qword_288E10);
    sub_20A02C(&qword_325E60, &qword_325DE8, &qword_288E00, sub_20A308);
    sub_20A4A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325EC8);
  }

  return result;
}

unint64_t sub_20A63C()
{
  result = qword_325ED0;
  if (!qword_325ED0)
  {
    sub_2F9C(&qword_325D48, &qword_288D60);
    sub_20A02C(&qword_325ED8, &qword_325D40, &qword_288D58, sub_20A6F4);
    sub_20A8B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325ED0);
  }

  return result;
}

unint64_t sub_20A6F4()
{
  result = qword_325EE0;
  if (!qword_325EE0)
  {
    sub_2F9C(&qword_325D18, &qword_288D30);
    sub_2F9C(&qword_325D20, &qword_288D38);
    sub_2F9C(&qword_3174E8, &qword_269970);
    sub_8E38(&qword_325EE8, &qword_325D20, &qword_288D38, &protocol conformance descriptor for VStack<A>);
    sub_8E38(&qword_3175C8, &qword_3174E8, &qword_269970, &protocol conformance descriptor for ClosedRange<A>);
    swift_getOpaqueTypeConformance2();
    sub_2F9C(&qword_325D00, &qword_288D18);
    sub_8E38(&qword_325EF0, &qword_325D00, &qword_288D18, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325EE0);
  }

  return result;
}

unint64_t sub_20A8B0()
{
  result = qword_325EF8;
  if (!qword_325EF8)
  {
    sub_2F9C(&qword_325CE8, &qword_288D00);
    sub_2F9C(&qword_325CF0, &qword_288D08);
    sub_2F9C(&qword_3174E8, &qword_269970);
    sub_8E38(&qword_325F00, &qword_325CF0, &qword_288D08, &protocol conformance descriptor for VStack<A>);
    sub_8E38(&qword_3175C8, &qword_3174E8, &qword_269970, &protocol conformance descriptor for ClosedRange<A>);
    swift_getOpaqueTypeConformance2();
    sub_2F9C(&qword_325CD0, &qword_288CE8);
    sub_8E38(&qword_325F08, &qword_325CD0, &qword_288CE8, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325EF8);
  }

  return result;
}

uint64_t sub_20AA6C()
{
  v1 = sub_260BD0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for BrickLockupView(0);
  v38 = *(*(v5 - 1) + 80);
  v6 = (v3 + v4 + v38) & ~v38;
  v36 = *(*(v5 - 1) + 64);
  v7 = *(*(sub_2EF0(&qword_316208, &qword_268BD0) - 8) + 80);
  v37 = *(v2 + 8);
  v37(v0 + v3, v1);
  v39 = v0;
  v8 = v0 + v6;
  if (*(v0 + v6 + 40))
  {
    sub_3080((v0 + v6));
  }

  else
  {
  }

  sub_3074(*(v8 + 48), *(v8 + 56));
  v9 = v5[6];
  sub_2EF0(&qword_318148, &unk_26AEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_261690();
    (*(*(v10 - 8) + 8))(v8 + v9, v10);
  }

  else
  {
  }

  v11 = v8 + v5[7];
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v13 = sub_261690();
    (*(*(v13 - 8) + 8))(v11 + v12, v13);
  }

  else
  {
  }

  v14 = v7;
  v15 = v36 + v7;
  v16 = v5[8];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_261180();
    (*(*(v17 - 8) + 8))(v8 + v16, v17);
  }

  else
  {
  }

  v18 = v6 + v15;
  v19 = v8 + v5[9];
  sub_2EF0(&qword_325B90, &qword_288C30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v21 = sub_261690();
    (*(*(v21 - 8) + 8))(v19 + v20, v21);
  }

  else
  {
  }

  v22 = v18 & ~v14;
  v23 = v8 + v5[10];
  type metadata accessor for BrickLockupModel.BrickType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v25 = v37;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v37(v23, v1);
        v26 = &qword_325BB8;
        v27 = &qword_2891B0;
      }

      else
      {
        if (EnumCaseMultiPayload != 2)
        {
          goto LABEL_38;
        }

        v37(v23, v1);
        v26 = &qword_325BC0;
        v27 = &qword_288C58;
      }

      v33 = *(sub_2EF0(v26, v27) + 48);
      if (!(*(v2 + 48))(v23 + v33, 1, v1))
      {
        v37(v23 + v33, v1);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  v25 = v37;
  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v37(v23, v1);
      v28 = &qword_325BD0;
      v29 = &qword_288C60;
    }

    else
    {
      if (EnumCaseMultiPayload != 5)
      {
        goto LABEL_38;
      }

      v37(v23, v1);
      v28 = &qword_325BD8;
      v29 = &unk_289180;
    }

    v34 = *(sub_2EF0(v28, v29) + 48);
    if (!(*(v2 + 48))(v23 + v34, 1, v1))
    {
      v37(v23 + v34, v1);
    }

    goto LABEL_37;
  }

  v37(v23, v1);
  v30 = sub_2EF0(&qword_325BC8, &unk_2891A0);
  v31 = *(v30 + 48);
  if (!(*(v2 + 48))(v23 + v31, 1, v1))
  {
    v37(v23 + v31, v1);
  }

  v32 = v23 + *(v30 + 80);
  sub_57200(*v32, *(v32 + 8), *(v32 + 16), *(v32 + 24), *(v32 + 32), *(v32 + 40), *(v32 + 48), *(v32 + 56), *(v32 + 64), *(v32 + 72), *(v32 + 80), *(v32 + 88), *(v32 + 96), *(v32 + 104), *(v32 + 112));
LABEL_38:
  type metadata accessor for BrickLockupModel(0);

  if (!(*(v2 + 48))(v39 + v22, 1, v1))
  {
    v25(v39 + v22, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_20B130@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(sub_260BD0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for BrickLockupView(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_2EF0(&qword_316208, &qword_268BD0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v2 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  v15 = *(v13 + 8);

  return sub_204698(a1, v2 + v6, v2 + v9, v2 + v12, v14, v15, a2);
}

double sub_20B2C0@<D0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for BrickLockupView(0) - 8);
  v4 = (*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + v4);
  v6 = v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_201258(v7, v8, a1, v5);
}

uint64_t sub_20B374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_260BD0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for BrickLockupView(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_2EF0(&qword_316208, &qword_268BD0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = (((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_201480(a1, (v2 + v6), v2 + v9, v2 + v12, *(v2 + v13), *(v2 + v13 + 8), *(v2 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), a2, &qword_326098, &qword_289050, &qword_3260A0, &qword_289058, &qword_3260A8, &qword_289060, &qword_3260B0, &qword_289068, &qword_3260B8, &qword_289070);
}

uint64_t sub_20B56C()
{
  v1 = type metadata accessor for BrickLockupView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  if (*(v0 + v2 + 40))
  {
    sub_3080((v0 + v2));
  }

  else
  {
  }

  sub_3074(*(v3 + 48), *(v3 + 56));
  v4 = v1[6];
  sub_2EF0(&qword_318148, &unk_26AEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_261690();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v3 + v1[7];
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v8 = sub_261690();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  v9 = v1[8];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_261180();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  else
  {
  }

  v11 = v3 + v1[9];
  sub_2EF0(&qword_325B90, &qword_288C30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v13 = sub_261690();
    (*(*(v13 - 8) + 8))(v11 + v12, v13);
  }

  else
  {
  }

  v14 = v3 + v1[10];
  type metadata accessor for BrickLockupModel.BrickType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v16 = sub_260BD0();
        v17 = *(v16 - 8);
        v18 = *(v17 + 8);
        v18(v14, v16);
        v19 = &qword_325BB8;
        v20 = &qword_2891B0;
      }

      else
      {
        if (EnumCaseMultiPayload != 2)
        {
          goto LABEL_38;
        }

        v16 = sub_260BD0();
        v17 = *(v16 - 8);
        v18 = *(v17 + 8);
        v18(v14, v16);
        v19 = &qword_325BC0;
        v20 = &qword_288C58;
      }

      v32 = *(sub_2EF0(v19, v20) + 48);
      if (!(*(v17 + 48))(v14 + v32, 1, v16))
      {
        v18(v14 + v32, v16);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v21 = sub_260BD0();
      v22 = *(v21 - 8);
      v23 = *(v22 + 8);
      v23(v14, v21);
      v24 = &qword_325BD0;
      v25 = &qword_288C60;
    }

    else
    {
      if (EnumCaseMultiPayload != 5)
      {
        goto LABEL_38;
      }

      v21 = sub_260BD0();
      v22 = *(v21 - 8);
      v23 = *(v22 + 8);
      v23(v14, v21);
      v24 = &qword_325BD8;
      v25 = &unk_289180;
    }

    v33 = *(sub_2EF0(v24, v25) + 48);
    if (!(*(v22 + 48))(v14 + v33, 1, v21))
    {
      v23(v14 + v33, v21);
    }

    goto LABEL_37;
  }

  v26 = sub_260BD0();
  v27 = *(v26 - 8);
  v28 = *(v27 + 8);
  v28(v14, v26);
  v29 = sub_2EF0(&qword_325BC8, &unk_2891A0);
  v30 = *(v29 + 48);
  if (!(*(v27 + 48))(v14 + v30, 1, v26))
  {
    v28(v14 + v30, v26);
  }

  v31 = v14 + *(v29 + 80);
  sub_57200(*v31, *(v31 + 8), *(v31 + 16), *(v31 + 24), *(v31 + 32), *(v31 + 40), *(v31 + 48), *(v31 + 56), *(v31 + 64), *(v31 + 72), *(v31 + 80), *(v31 + 88), *(v31 + 96), *(v31 + 104), *(v31 + 112));
LABEL_38:
  type metadata accessor for BrickLockupModel(0);

  return swift_deallocObject();
}

double sub_20BC70@<D0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for BrickLockupView(0) - 8);
  v4 = (*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + v4);
  v6 = v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_201030(v7, v8, a1, v5);
}

uint64_t sub_20BD20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_260BD0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for BrickLockupView(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_2EF0(&qword_316208, &qword_268BD0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = (((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_201480(a1, (v2 + v6), v2 + v9, v2 + v12, *(v2 + v13), *(v2 + v13 + 8), *(v2 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), a2, &qword_326070, &qword_289028, &qword_326078, &qword_289030, &qword_326080, &qword_289038, &qword_326088, &qword_289040, &qword_326090, &qword_289048);
}

uint64_t sub_20BF18()
{
  v1 = type metadata accessor for BrickLockupView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  if (*(v0 + v2 + 40))
  {
    sub_3080((v0 + v2));
  }

  else
  {
  }

  sub_3074(*(v4 + 48), *(v4 + 56));
  v5 = v1[6];
  sub_2EF0(&qword_318148, &unk_26AEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_261690();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  v7 = v4 + v1[7];
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v9 = sub_261690();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  v10 = v1[8];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_261180();
    (*(*(v11 - 8) + 8))(v4 + v10, v11);
  }

  else
  {
  }

  v12 = v4 + v1[9];
  sub_2EF0(&qword_325B90, &qword_288C30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v14 = sub_261690();
    (*(*(v14 - 8) + 8))(v12 + v13, v14);
  }

  else
  {
  }

  v15 = v4 + v1[10];
  type metadata accessor for BrickLockupModel.BrickType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v37 = v3;
        v27 = sub_260BD0();
        v28 = *(v27 - 8);
        v29 = *(v28 + 8);
        v29(v15, v27);
        v30 = sub_2EF0(&qword_325BC8, &unk_2891A0);
        v31 = *(v30 + 48);
        if (!(*(v28 + 48))(v15 + v31, 1, v27))
        {
          v29(v15 + v31, v27);
        }

        v32 = v15 + *(v30 + 80);
        sub_57200(*v32, *(v32 + 8), *(v32 + 16), *(v32 + 24), *(v32 + 32), *(v32 + 40), *(v32 + 48), *(v32 + 56), *(v32 + 64), *(v32 + 72), *(v32 + 80), *(v32 + 88), *(v32 + 96), *(v32 + 104), *(v32 + 112));
        goto LABEL_38;
      case 4:
        v37 = v3;
        v22 = sub_260BD0();
        v23 = *(v22 - 8);
        v24 = *(v23 + 8);
        v24(v15, v22);
        v25 = &qword_325BD0;
        v26 = &qword_288C60;
        break;
      case 5:
        v37 = v3;
        v22 = sub_260BD0();
        v23 = *(v22 - 8);
        v24 = *(v23 + 8);
        v24(v15, v22);
        v25 = &qword_325BD8;
        v26 = &unk_289180;
        break;
      default:
        goto LABEL_39;
    }

    v34 = *(sub_2EF0(v25, v26) + 48);
    if (!(*(v23 + 48))(v15 + v34, 1, v22))
    {
      v24(v15 + v34, v22);
    }
  }

  else
  {
    switch(EnumCaseMultiPayload)
    {
      case 0:

        goto LABEL_39;
      case 1:
        v37 = v3;
        v17 = sub_260BD0();
        v18 = *(v17 - 8);
        v19 = *(v18 + 8);
        v19(v15, v17);
        v20 = &qword_325BB8;
        v21 = &qword_2891B0;
        break;
      case 2:
        v37 = v3;
        v17 = sub_260BD0();
        v18 = *(v17 - 8);
        v19 = *(v18 + 8);
        v19(v15, v17);
        v20 = &qword_325BC0;
        v21 = &qword_288C58;
        break;
      default:
        goto LABEL_39;
    }

    v33 = *(sub_2EF0(v20, v21) + 48);
    if (!(*(v18 + 48))(v15 + v33, 1, v17))
    {
      v19(v15 + v33, v17);
    }
  }

LABEL_38:
  v3 = v37;
LABEL_39:
  v35 = (((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for BrickLockupModel(0);

  sub_57200(*(v0 + v35), *(v0 + v35 + 8), *(v0 + v35 + 16), *(v0 + v35 + 24), *(v0 + v35 + 32), *(v0 + v35 + 40), *(v0 + v35 + 48), *(v0 + v35 + 56), *(v0 + v35 + 64), *(v0 + v35 + 72), *(v0 + v35 + 80), *(v0 + v35 + 88), *(v0 + v35 + 96), *(v0 + v35 + 104), *(v0 + v35 + 112));

  return swift_deallocObject();
}

double sub_20C644@<D0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for BrickLockupView(0) - 8);
  v4 = (*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + v4);

  return sub_200E2C((v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), a1, v5);
}

uint64_t sub_20C6EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_260BD0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for BrickLockupView(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_2EF0(&qword_316208, &qword_268BD0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = (((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_201480(a1, (v2 + v6), v2 + v9, v2 + v12, *(v2 + v13), *(v2 + v13 + 8), *(v2 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), a2, &qword_326048, &qword_289000, &qword_326050, &qword_289008, &qword_326058, &qword_289010, &qword_326060, &qword_289018, &qword_326068, &qword_289020);
}

uint64_t sub_20C8E4()
{
  v1 = sub_260BD0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for BrickLockupView(0);
  v36 = *(*(v5 - 1) + 80);
  v6 = (v3 + v4 + v36) & ~v36;
  v35 = *(*(v5 - 1) + 64);
  v7 = *(*(sub_2EF0(&qword_316208, &qword_268BD0) - 8) + 80);
  v37 = *(v2 + 8);
  v37(v0 + v3, v1);
  v8 = v0 + v6;
  if (*(v0 + v6 + 40))
  {
    sub_3080((v0 + v6));
  }

  else
  {
  }

  sub_3074(*(v8 + 48), *(v8 + 56));
  v9 = v5[6];
  sub_2EF0(&qword_318148, &unk_26AEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_261690();
    (*(*(v10 - 8) + 8))(v8 + v9, v10);
  }

  else
  {
  }

  v11 = v8 + v5[7];
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v13 = sub_261690();
    (*(*(v13 - 8) + 8))(v11 + v12, v13);
  }

  else
  {
  }

  v14 = v7;
  v15 = v35 + v7;
  v16 = v5[8];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_261180();
    (*(*(v17 - 8) + 8))(v8 + v16, v17);
  }

  else
  {
  }

  v18 = v6 + v15;
  v19 = v8 + v5[9];
  sub_2EF0(&qword_325B90, &qword_288C30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v21 = sub_261690();
    (*(*(v21 - 8) + 8))(v19 + v20, v21);
  }

  else
  {
  }

  v22 = v18 & ~v14;
  v23 = v8 + v5[10];
  type metadata accessor for BrickLockupModel.BrickType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v37(v23, v1);
        v25 = &qword_325BB8;
        v26 = &qword_2891B0;
      }

      else
      {
        if (EnumCaseMultiPayload != 2)
        {
          goto LABEL_38;
        }

        v37(v23, v1);
        v25 = &qword_325BC0;
        v26 = &qword_288C58;
      }

      v32 = *(sub_2EF0(v25, v26) + 48);
      if (!(*(v2 + 48))(v23 + v32, 1, v1))
      {
        v37(v23 + v32, v1);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v37(v23, v1);
      v27 = &qword_325BD0;
      v28 = &qword_288C60;
    }

    else
    {
      if (EnumCaseMultiPayload != 5)
      {
        goto LABEL_38;
      }

      v37(v23, v1);
      v27 = &qword_325BD8;
      v28 = &unk_289180;
    }

    v33 = *(sub_2EF0(v27, v28) + 48);
    if (!(*(v2 + 48))(v23 + v33, 1, v1))
    {
      v37(v23 + v33, v1);
    }

    goto LABEL_37;
  }

  v37(v23, v1);
  v29 = sub_2EF0(&qword_325BC8, &unk_2891A0);
  v30 = *(v29 + 48);
  if (!(*(v2 + 48))(v23 + v30, 1, v1))
  {
    v37(v23 + v30, v1);
  }

  v31 = v23 + *(v29 + 80);
  sub_57200(*v31, *(v31 + 8), *(v31 + 16), *(v31 + 24), *(v31 + 32), *(v31 + 40), *(v31 + 48), *(v31 + 56), *(v31 + 64), *(v31 + 72), *(v31 + 80), *(v31 + 88), *(v31 + 96), *(v31 + 104), *(v31 + 112));
LABEL_38:
  type metadata accessor for BrickLockupModel(0);

  if (!(*(v2 + 48))(v0 + v22, 1, v1))
  {
    v37(v0 + v22, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_20CFD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_260BD0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for BrickLockupView(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_2EF0(&qword_316208, &qword_268BD0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = (((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v2 + v13);
  v15 = *(v2 + v13 + 8);
  v16 = v2 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  v17 = *v16;
  v18 = *(v16 + 8);

  return sub_202904(a1, v2 + v6, v2 + v9, v2 + v12, v14, v15, v17, v18, a2);
}

uint64_t sub_20D170()
{
  v1 = sub_260BD0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for BrickLockupView(0);
  v37 = *(*(v5 - 1) + 80);
  v6 = (v3 + v4 + v37) & ~v37;
  v7 = *(*(v5 - 1) + 64) + v6;
  v38 = *(*(sub_2EF0(&qword_316208, &qword_268BD0) - 8) + 80);
  v8 = *(v2 + 8);
  v8(v0 + v3, v1);
  v9 = v0 + v6;
  if (*(v0 + v6 + 40))
  {
    sub_3080((v0 + v6));
  }

  else
  {
  }

  v10 = v7 + 7;
  sub_3074(*(v9 + 48), *(v9 + 56));
  v11 = v5[6];
  sub_2EF0(&qword_318148, &unk_26AEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_261690();
    (*(*(v12 - 8) + 8))(v9 + v11, v12);
  }

  else
  {
  }

  v13 = v10 & 0xFFFFFFFFFFFFFFF8;
  v14 = v9 + v5[7];
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v16 = sub_261690();
    (*(*(v16 - 8) + 8))(v14 + v15, v16);
  }

  else
  {
  }

  v17 = v13 + v38;
  v18 = v5[8];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_261180();
    (*(*(v19 - 8) + 8))(v9 + v18, v19);
  }

  else
  {
  }

  v20 = v17 + 8;
  v21 = v9 + v5[9];
  sub_2EF0(&qword_325B90, &qword_288C30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v23 = sub_261690();
    (*(*(v23 - 8) + 8))(v21 + v22, v23);
  }

  else
  {
  }

  v24 = v20 & ~v38;
  v25 = v9 + v5[10];
  type metadata accessor for BrickLockupModel.BrickType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v8(v25, v1);
        v27 = &qword_325BB8;
        v28 = &qword_2891B0;
      }

      else
      {
        if (EnumCaseMultiPayload != 2)
        {
          goto LABEL_38;
        }

        v8(v25, v1);
        v27 = &qword_325BC0;
        v28 = &qword_288C58;
      }

      v34 = *(sub_2EF0(v27, v28) + 48);
      if (!(*(v2 + 48))(v25 + v34, 1, v1))
      {
        v8(v25 + v34, v1);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v8(v25, v1);
      v29 = &qword_325BD0;
      v30 = &qword_288C60;
    }

    else
    {
      if (EnumCaseMultiPayload != 5)
      {
        goto LABEL_38;
      }

      v8(v25, v1);
      v29 = &qword_325BD8;
      v30 = &unk_289180;
    }

    v35 = *(sub_2EF0(v29, v30) + 48);
    if (!(*(v2 + 48))(v25 + v35, 1, v1))
    {
      v8(v25 + v35, v1);
    }

    goto LABEL_37;
  }

  v8(v25, v1);
  v31 = sub_2EF0(&qword_325BC8, &unk_2891A0);
  v32 = *(v31 + 48);
  if (!(*(v2 + 48))(v25 + v32, 1, v1))
  {
    v8(v25 + v32, v1);
  }

  v33 = v25 + *(v31 + 80);
  sub_57200(*v33, *(v33 + 8), *(v33 + 16), *(v33 + 24), *(v33 + 32), *(v33 + 40), *(v33 + 48), *(v33 + 56), *(v33 + 64), *(v33 + 72), *(v33 + 80), *(v33 + 88), *(v33 + 96), *(v33 + 104), *(v33 + 112));
LABEL_38:
  type metadata accessor for BrickLockupModel(0);

  if (!(*(v2 + 48))(v0 + v24, 1, v1))
  {
    v8(v0 + v24, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_20D804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_260BD0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for BrickLockupView(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_2EF0(&qword_316208, &qword_268BD0) - 8);
  v12 = (v10 + *(v11 + 80) + 8) & ~*(v11 + 80);
  v13 = *(v2 + v10);
  v14 = v2 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
  v15 = *v14;
  v16 = *(v14 + 8);

  return sub_2057F8(a1, v2 + v9, v2 + v12, v15, v16, a2, v13);
}

uint64_t sub_20D990(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_20D9F8(uint64_t a1)
{
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 208) = -1;
  return result;
}

unint64_t sub_20DA30()
{
  result = qword_326030;
  if (!qword_326030)
  {
    sub_2F9C(&qword_326020, &qword_288FB8);
    sub_8E38(&qword_3188B0, &qword_3188A8, &qword_26BDD0, &protocol conformance descriptor for AsyncResourceImage<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326030);
  }

  return result;
}

double sub_20DAF8(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 136) = -256;
  return result;
}

uint64_t sub_20DB28(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20DBBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_20DC04()
{
  result = qword_326130;
  if (!qword_326130)
  {
    sub_2F9C(&qword_318A08, &qword_26BF58);
    sub_58070();
    sub_8E38(&qword_3183C8, &qword_3183D0, &qword_26B240, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326130);
  }

  return result;
}

uint64_t sub_20DCBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20DD24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t BrickLockupModel.init(brickType:aspectRatio:axBrickTitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = type metadata accessor for BrickLockupModel(0);
  v11 = (a4 + *(v10 + 24));
  *v11 = 0;
  v11[1] = 0;
  result = sub_20DE4C(a1, a4, v12);
  *(a4 + *(v10 + 20)) = a5;
  *v11 = a2;
  v11[1] = a3;
  return result;
}

uint64_t sub_20DE4C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for BrickLockupModel.BrickType(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20DED4()
{
  v1 = 0x6169726F74696465;
  v2 = *v0;
  v3 = 0x6F43656C676E6973;
  v4 = 0x7265766F436F7774;
  if (v2 != 4)
  {
    v4 = 0x766F436565726874;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  v5 = 0x737265766F436F6ELL;
  if (v2 == 1)
  {
    v5 = 0x6169726F74696465;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_20DFA8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214540(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20DFD0(uint64_t a1)
{
  v2 = sub_212F04();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_20E00C(uint64_t a1)
{
  v2 = sub_212F04();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_20E048()
{
  v1 = 0x656C746974627573;
  if (*v0 != 1)
  {
    v1 = 7107189;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_20E098@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214750(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20E0C0(uint64_t a1)
{
  v2 = sub_2131D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_20E0FC(uint64_t a1)
{
  v2 = sub_2131D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_20E138(uint64_t a1)
{
  v2 = sub_213228();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_20E174(uint64_t a1)
{
  v2 = sub_213228();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_20E1B0()
{
  v1 = 0x656C746974627573;
  if (*v0 != 1)
  {
    v1 = 0x6C72556E6F6369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_20E208@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214864(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20E230(uint64_t a1)
{
  v2 = sub_213180();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_20E26C(uint64_t a1)
{
  v2 = sub_213180();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_20E2A8()
{
  v1 = 0x656C746974;
  v2 = 0x6C72556E6F6369;
  if (*v0 != 2)
  {
    v2 = 0x6569567265766F63;
  }

  if (*v0)
  {
    v1 = 0x656C746974627573;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20E32C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214978(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20E354(uint64_t a1)
{
  v2 = sub_21312C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_20E390(uint64_t a1)
{
  v2 = sub_21312C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_20E3CC(uint64_t a1)
{
  v2 = sub_212F58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_20E408(uint64_t a1)
{
  v2 = sub_212F58();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_20E444()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x6C72556E6F6369;
  v4 = 0x6569567265766F63;
  if (v1 != 3)
  {
    v4 = 0x746E6169726176;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C746974627573;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_20E4E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214AE0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20E510(uint64_t a1)
{
  v2 = sub_213084();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_20E54C(uint64_t a1)
{
  v2 = sub_213084();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BrickLockupModel.BrickType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v131 = sub_2EF0(&qword_326138, &qword_289140);
  v133 = *(v131 - 8);
  __chkstk_darwin(v131);
  v144 = &v116 - v3;
  v135 = sub_2EF0(&qword_326140, &qword_289148);
  v130 = *(v135 - 8);
  __chkstk_darwin(v135);
  v143 = &v116 - v4;
  v129 = sub_2EF0(&qword_326148, &qword_289150);
  v132 = *(v129 - 8);
  __chkstk_darwin(v129);
  v142 = &v116 - v5;
  v128 = sub_2EF0(&qword_326150, &qword_289158);
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v138 = &v116 - v6;
  v126 = sub_2EF0(&qword_326158, &qword_289160);
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v137 = &v116 - v7;
  v124 = sub_2EF0(&qword_326160, &qword_289168);
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v141 = &v116 - v8;
  v146 = sub_2EF0(&qword_326168, &unk_289170);
  v140 = *(v146 - 8);
  __chkstk_darwin(v146);
  v10 = &v116 - v9;
  v139 = type metadata accessor for BrickLockupModel.BrickType(0);
  __chkstk_darwin(v139);
  v134 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v136 = &v116 - v13;
  __chkstk_darwin(v14);
  v16 = &v116 - v15;
  __chkstk_darwin(v17);
  v19 = &v116 - v18;
  __chkstk_darwin(v20);
  v22 = &v116 - v21;
  __chkstk_darwin(v23);
  v25 = (&v116 - v24);
  __chkstk_darwin(v26);
  v28 = &v116 - v27;
  v29 = a1[3];
  v148 = a1;
  sub_2E18(a1, v29);
  sub_212F04();
  v145 = v10;
  v30 = v147;
  sub_265120();
  if (v30)
  {
    goto LABEL_12;
  }

  v117 = v25;
  v31 = v141;
  v120 = v19;
  v119 = v22;
  v121 = v16;
  v32 = v142;
  v33 = v143;
  v34 = v144;
  v147 = 0;
  v118 = v28;
  v35 = v140;
  v37 = v145;
  v36 = v146;
  v38 = sub_264E00();
  v39 = (2 * *(v38 + 16)) | 1;
  v149 = v38;
  v150 = v38 + 32;
  v151 = 0;
  v152 = v39;
  v40 = sub_6E64();
  if (v40 == 6 || v151 != v152 >> 1)
  {
    v45 = sub_264C10();
    swift_allocError();
    v47 = v46;
    sub_2EF0(&qword_315CD0, &qword_266E00);
    *v47 = v139;
    sub_264D60();
    sub_264BF0();
    (*(*(v45 - 8) + 104))(v47, enum case for DecodingError.typeMismatch(_:), v45);
    swift_willThrow();
  }

  else
  {
    if (v40 <= 2u)
    {
      if (!v40)
      {
        v153 = 0;
        sub_213228();
        v53 = v147;
        sub_264D50();
        if (!v53)
        {
          v54 = v124;
          v68 = sub_264DC0();
          v70 = v69;
          (*(v123 + 8))(v31, v54);
          (*(v35 + 8))(v37, v36);
          swift_unknownObjectRelease();
          v105 = v117;
          *v117 = v68;
          *(v105 + 8) = v70;
          goto LABEL_28;
        }

        goto LABEL_10;
      }

      v41 = v147;
      if (v40 == 1)
      {
        v153 = 1;
        sub_2131D4();
        v42 = v137;
        sub_264D50();
        if (!v41)
        {
          sub_260BD0();
          v153 = 0;
          v43 = sub_2132D0(&qword_315D90, &type metadata accessor for LocalizerRequest, &protocol conformance descriptor for LocalizerRequest);
          v44 = v126;
          v147 = v43;
          sub_264DF0();
          v77 = v42;
          v144 = sub_2EF0(&qword_325BB8, &qword_2891B0);
          v78 = *(v144 + 12);
          v153 = 1;
          sub_264DB0();
          v89 = v144;
          v147 = v78;
          v153 = 2;
          v90 = sub_264DC0();
          v143 = v91;
          v101 = v90;
          v102 = v119;
          v103 = &v119[*(v89 + 16)];
          (*(v125 + 8))(v77, v44);
          v104 = v37;
          v105 = v102;
          (*(v35 + 8))(v104, v36);
          swift_unknownObjectRelease();
          v106 = v143;
          *v103 = v101;
          v103[1] = v106;
LABEL_28:
          swift_storeEnumTagMultiPayload();
          goto LABEL_29;
        }

        goto LABEL_10;
      }

      v153 = 2;
      sub_213180();
      v61 = v138;
      sub_264D50();
      v57 = v36;
      v58 = v35;
      if (v41)
      {
LABEL_23:
        (*(v58 + 8))(v37, v57);
        goto LABEL_11;
      }

      sub_260BD0();
      v153 = 0;
      sub_2132D0(&qword_315D90, &type metadata accessor for LocalizerRequest, &protocol conformance descriptor for LocalizerRequest);
      v63 = v128;
      sub_264DF0();
      v81 = v61;
      v82 = sub_2EF0(&qword_325BC0, &qword_288C58);
      v153 = 1;
      sub_264DB0();
      v153 = 2;
      v147 = sub_264D70();
      v96 = v95;
      v97 = v63;
      v110 = v120;
      v111 = &v120[*(v82 + 64)];
      (*(v127 + 8))(v81, v97);
      (*(v58 + 8))(v37, v146);
      swift_unknownObjectRelease();
      *v111 = v147;
      v111[1] = v96;
      swift_storeEnumTagMultiPayload();
      v105 = v110;
LABEL_29:
      v71 = v148;
      v72 = v122;
      v73 = v118;
      sub_20DE4C(v105, v118, v115);
      sub_20DE4C(v73, v72, v74);
      v48 = v71;
      return sub_3080(v48);
    }

    if (v40 == 3)
    {
      v153 = 3;
      sub_21312C();
      v55 = v32;
      v56 = v147;
      sub_264D50();
      v57 = v36;
      v58 = v35;
      if (!v56)
      {
        v59 = sub_260BD0();
        v153 = 0;
        sub_2132D0(&qword_315D90, &type metadata accessor for LocalizerRequest, &protocol conformance descriptor for LocalizerRequest);
        v60 = v129;
        sub_264DF0();
        v75 = v55;
        v76 = sub_2EF0(&qword_325BC8, &unk_2891A0);
        v153 = 1;
        sub_264DB0();
        v147 = v59;
        v153 = 2;
        v88 = sub_264D70();
        v99 = &v121[*(v76 + 64)];
        *v99 = v88;
        v99[1] = v100;
        v153 = 3;
        sub_EAB10();
        sub_264DF0();
        (*(v132 + 8))(v75, v60);
        (*(v35 + 8))(v37, v146);
        swift_unknownObjectRelease();
        v105 = v121;
        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if (v40 == 4)
    {
      v153 = 4;
      sub_213084();
      v50 = v147;
      sub_264D50();
      if (!v50)
      {
        v51 = sub_260BD0();
        v153 = 0;
        sub_2132D0(&qword_315D90, &type metadata accessor for LocalizerRequest, &protocol conformance descriptor for LocalizerRequest);
        v52 = v33;
        sub_264DF0();
        v79 = sub_2EF0(&qword_325BD0, &qword_288C60);
        v80 = v79[12];
        v153 = 1;
        sub_264DB0();
        v144 = v80;
        v147 = v51;
        v153 = 2;
        v92 = v135;
        v93 = sub_264D70();
        v94 = v130;
        v107 = &v136[v79[16]];
        v108 = v79[20];
        *v107 = v93;
        v107[1] = v109;
        v142 = v109;
        sub_2EF0(&qword_31BEF0, &unk_289190);
        v153 = 3;
        sub_212FAC();
        v141 = v108;
        sub_264DF0();
        v153 = 4;
        sub_2130D8();
        v114 = v136;
        sub_264DF0();
        (*(v94 + 8))(v52, v92);
        (*(v35 + 8))(v145, v146);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v105 = v114;
        goto LABEL_29;
      }
    }

    else
    {
      v153 = 5;
      sub_212F58();
      v62 = v147;
      sub_264D50();
      if (!v62)
      {
        v64 = sub_260BD0();
        v153 = 0;
        v65 = sub_2132D0(&qword_315D90, &type metadata accessor for LocalizerRequest, &protocol conformance descriptor for LocalizerRequest);
        v66 = v34;
        v67 = v131;
        v147 = v65;
        sub_264DF0();
        v83 = sub_2EF0(&qword_325BD8, &unk_289180);
        v84 = v67;
        v85 = v83;
        v86 = *(v83 + 48);
        v153 = 1;
        v87 = v84;
        sub_264DB0();
        v143 = v86;
        v147 = v64;
        v153 = 2;
        v98 = sub_264D70();
        v105 = v134;
        v112 = &v134[*(v85 + 64)];
        *v112 = v98;
        v112[1] = v113;
        v142 = v113;
        sub_2EF0(&qword_31BEF0, &unk_289190);
        v153 = 3;
        sub_212FAC();
        sub_264DF0();
        v153 = 4;
        sub_213030();
        sub_264DF0();
        (*(v133 + 8))(v66, v87);
        (*(v35 + 8))(v145, v146);
        swift_unknownObjectRelease();
        goto LABEL_28;
      }
    }
  }

LABEL_10:
  (*(v35 + 8))(v37, v36);
LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  v48 = v148;
  return sub_3080(v48);
}

BooksUI::BrickLockupModel::TwoArtCoverVariant_optional __swiftcall BrickLockupModel.TwoArtCoverVariant.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_3018E8;
  v8._object = object;
  v5 = sub_264D40(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v3 = v7;
  return result;
}

uint64_t BrickLockupModel.TwoArtCoverVariant.rawValue.getter()
{
  if (*v0)
  {
    return 0x42726F76616C66;
  }

  else
  {
    return 0x41726F76616C66;
  }
}

Swift::Int sub_20FF30()
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

double sub_20FFA8(uint64_t a1)
{
  sub_264500();

  return result;
}

Swift::Int sub_210004(uint64_t a1)
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

void sub_210078(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_3018E8;
  v7._object = v3;
  v5 = sub_264D40(v4, v7);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_2100D8(uint64_t *a1@<X8>)
{
  v2 = 0x41726F76616C66;
  if (*v1)
  {
    v2 = 0x42726F76616C66;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

uint64_t sub_2101C0(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x42726F76616C66;
  }

  else
  {
    v2 = 0x41726F76616C66;
  }

  if (*a2)
  {
    v3 = 0x42726F76616C66;
  }

  else
  {
    v3 = 0x41726F76616C66;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_264F10();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

BooksUI::BrickLockupModel::ThreeArtCoverVariant_optional __swiftcall BrickLockupModel.ThreeArtCoverVariant.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_301938;
  v8._object = object;
  v5 = sub_264D40(v4, v8);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

Swift::Int sub_2102C4()
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

double sub_210328(uint64_t a1)
{
  sub_264500();

  return result;
}

Swift::Int sub_210370(uint64_t a1)
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t sub_2104B0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 << 48 == *a2 << 48)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_264F10();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_210528()
{
  v1 = 0x6152746365707361;
  if (*v0 != 1)
  {
    v1 = 0x546B636972427861;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7079546B63697262;
  }
}

uint64_t sub_210598@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214C94(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2105C0(uint64_t a1)
{
  v2 = sub_21327C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_2105FC(uint64_t a1)
{
  v2 = sub_21327C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BrickLockupModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for BrickLockupModel.BrickType(0);
  __chkstk_darwin(v4);
  v21 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2EF0(&qword_3261C0, &qword_2891B8);
  v19 = *(v6 - 8);
  v20 = v6;
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for BrickLockupModel(0);
  __chkstk_darwin(v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2E18(a1, a1[3]);
  sub_21327C();
  sub_265120();
  if (v2)
  {
    return sub_3080(a1);
  }

  v12 = v19;
  v13 = v11;
  LOBYTE(v22) = 0;
  sub_2132D0(&qword_3261D0, type metadata accessor for BrickLockupModel.BrickType, &protocol conformance descriptor for BrickLockupModel.BrickType);
  v14 = v20;
  sub_264DF0();
  sub_20DE4C(v21, v13, v15);
  v23 = 1;
  sub_6E08();
  sub_264DF0();
  *(v13 + *(v9 + 20)) = v22;
  sub_2EF0(&qword_321868, &unk_2891C0);
  v23 = 2;
  sub_1895E0();
  sub_264DF0();
  v17 = *(v9 + 24);
  (*(v12 + 8))(v8, v14);
  *(v13 + v17) = v22;
  sub_214E64(v13, v18, type metadata accessor for BrickLockupModel);
  sub_3080(a1);
  return sub_213318(v13, type metadata accessor for BrickLockupModel);
}

uint64_t _s7BooksUI16BrickLockupModelV0C4TypeO2eeoiySbAE_AEtFZ_0(char *a1, char *a2)
{
  v299 = a1;
  v300 = a2;
  v296 = sub_2EF0(&qword_326438, &qword_289DF8);
  __chkstk_darwin(v296);
  v276 = &v268 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v279 = &v268 - v4;
  __chkstk_darwin(v5);
  v277 = &v268 - v6;
  __chkstk_darwin(v7);
  v275 = &v268 - v8;
  __chkstk_darwin(v9);
  v274 = &v268 - v10;
  v11 = sub_2EF0(&qword_316208, &qword_268BD0);
  __chkstk_darwin(v11 - 8);
  v273 = &v268 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v280 = &v268 - v14;
  __chkstk_darwin(v15);
  v294 = &v268 - v16;
  __chkstk_darwin(v17);
  v271 = &v268 - v18;
  __chkstk_darwin(v19);
  v286 = &v268 - v20;
  __chkstk_darwin(v21);
  v293 = &v268 - v22;
  __chkstk_darwin(v23);
  v272 = &v268 - v24;
  __chkstk_darwin(v25);
  v287 = (&v268 - v26);
  __chkstk_darwin(v27);
  v283 = &v268 - v28;
  __chkstk_darwin(v29);
  v270 = &v268 - v30;
  __chkstk_darwin(v31);
  v281 = &v268 - v32;
  __chkstk_darwin(v33);
  v291 = &v268 - v34;
  __chkstk_darwin(v35);
  v269 = &v268 - v36;
  __chkstk_darwin(v37);
  v284 = &v268 - v38;
  __chkstk_darwin(v39);
  v289 = &v268 - v40;
  v301 = sub_260BD0();
  v298 = *(v301 - 8);
  __chkstk_darwin(v301);
  v292 = &v268 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v285 = &v268 - v43;
  __chkstk_darwin(v44);
  v282 = &v268 - v45;
  __chkstk_darwin(v46);
  v290 = (&v268 - v47);
  __chkstk_darwin(v48);
  v278 = &v268 - v49;
  __chkstk_darwin(v50);
  v288 = &v268 - v51;
  v52 = type metadata accessor for BrickLockupModel.BrickType(0);
  __chkstk_darwin(v52);
  v54 = &v268 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v57 = &v268 - v56;
  __chkstk_darwin(v58);
  v295 = &v268 - v59;
  __chkstk_darwin(v60);
  v62 = &v268 - v61;
  __chkstk_darwin(v63);
  v65 = &v268 - v64;
  __chkstk_darwin(v66);
  v68 = (&v268 - v67);
  v69 = sub_2EF0(&qword_326440, &unk_289E00);
  __chkstk_darwin(v69 - 8);
  v71 = &v268 - v70;
  v73 = &v268 + *(v72 + 56) - v70;
  sub_214E64(v299, &v268 - v70, type metadata accessor for BrickLockupModel.BrickType);
  v74 = v300;
  v300 = v73;
  sub_214E64(v74, v73, type metadata accessor for BrickLockupModel.BrickType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v297 = v71;
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_214E64(v71, v57, type metadata accessor for BrickLockupModel.BrickType);
        v105 = sub_2EF0(&qword_325BD0, &qword_288C60);
        v106 = v105[12];
        v107 = v105[16];
        v108 = *&v57[v107 + 8];
        v295 = *&v57[v107];
        v109 = v105[20];
        v110 = *&v57[v109];
        v111 = v105[24];
        LODWORD(v294) = v57[v111];
        v112 = v300;
        if (swift_getEnumCaseMultiPayload() != 4)
        {

          sub_8E80(&v57[v106], &qword_316208, &qword_268BD0);
          (*(v298 + 8))(v57, v301);
          goto LABEL_39;
        }

        v299 = v108;
        v113 = *&v112[v109];
        v114 = *&v112[v107];
        v291 = *&v112[v107 + 8];
        v292 = v110;
        LODWORD(v288) = v112[v111];
        v115 = v298;
        v116 = *(v298 + 32);
        v117 = v285;
        v118 = v106;
        v119 = v301;
        v289 = v114;
        v290 = v116;
        v116(v285, v112, v301);
        v120 = v293;
        sub_A96C8(&v57[v118], v293);
        v121 = &v112[v118];
        v122 = v286;
        sub_A96C8(v121, v286);
        v123 = sub_260B60();
        v124 = v57;
        v125 = *(v115 + 8);
        (v125)(v124, v119);
        if ((v123 & 1) == 0)
        {

          sub_8E80(v122, &qword_316208, &qword_268BD0);
          sub_8E80(v120, &qword_316208, &qword_268BD0);
          (v125)(v117, v301);
          goto LABEL_50;
        }

        v126 = v113;
        v127 = v125;
        v128 = *(v296 + 48);
        v129 = v120;
        v130 = v279;
        sub_104B0(v129, v279);
        sub_104B0(v122, v130 + v128);
        v131 = *(v115 + 48);
        if (v131(v130, 1, v301) == 1)
        {
          v132 = v130 + v128;
          v133 = v301;
          if (v131(v132, 1, v301) == 1)
          {
            sub_8E80(v130, &qword_316208, &qword_268BD0);
            v134 = v127;
            v136 = v291;
            v135 = v292;
            v137 = v133;
LABEL_97:
            if (v299)
            {
              v228 = v285;
              if (v136)
              {
                if (v295 == v289 && v299 == v136)
                {

                  goto LABEL_136;
                }

                v256 = sub_264F10();

                if (v256)
                {
LABEL_136:
                  v257 = sub_C851C(v135, v126);

                  v168 = v297;
                  if (v257)
                  {
                    if (v294)
                    {
                      v258 = 0x42726F76616C66;
                    }

                    else
                    {
                      v258 = 0x41726F76616C66;
                    }

                    if (v288)
                    {
                      v259 = 0x42726F76616C66;
                    }

                    else
                    {
                      v259 = 0x41726F76616C66;
                    }

                    if (v258 == v259)
                    {
                      swift_bridgeObjectRelease_n();
                      sub_8E80(v286, &qword_316208, &qword_268BD0);
                      sub_8E80(v293, &qword_316208, &qword_268BD0);
                      (v134)(v228, v137);
LABEL_160:
                      v220 = v168;
                      goto LABEL_53;
                    }

                    v266 = sub_264F10();
                    swift_bridgeObjectRelease_n();
                    sub_8E80(v286, &qword_316208, &qword_268BD0);
                    sub_8E80(v293, &qword_316208, &qword_268BD0);
                    (v134)(v228, v137);
                    if (v266)
                    {
                      goto LABEL_160;
                    }
                  }

                  else
                  {
                    sub_8E80(v286, &qword_316208, &qword_268BD0);
                    sub_8E80(v293, &qword_316208, &qword_268BD0);
                    (v134)(v228, v137);
                  }

LABEL_67:
                  v218 = v168;
                  goto LABEL_89;
                }
              }

              else
              {
              }
            }

            else
            {
              v228 = v285;
              if (!v136)
              {
                goto LABEL_136;
              }
            }

            v101 = v297;
            sub_8E80(v286, &qword_316208, &qword_268BD0);
            v238 = v293;
LABEL_87:
            sub_8E80(v238, &qword_316208, &qword_268BD0);
            (v134)(v228, v137);
            goto LABEL_88;
          }

          v228 = v285;
          v134 = v127;
          v137 = v133;
        }

        else
        {
          v226 = v271;
          sub_104B0(v130, v271);
          if (v131(v130 + v128, 1, v301) != 1)
          {
            v244 = v278;
            v245 = v301;
            v290(v278, v130 + v128, v301);
            sub_2132D0(&qword_321BA8, &type metadata accessor for LocalizerRequest, &protocol conformance descriptor for LocalizerRequest);
            v246 = sub_264390();
            v247 = v244;
            v134 = v127;
            (v127)(v247, v245);
            (v127)(v226, v245);
            sub_8E80(v130, &qword_316208, &qword_268BD0);
            v137 = v245;
            v136 = v291;
            v135 = v292;
            if (v246)
            {
              goto LABEL_97;
            }

            v101 = v297;
            v235 = v293;
            v228 = v285;
            goto LABEL_79;
          }

          v227 = v301;
          v134 = v127;
          (v127)(v226, v301);
          v137 = v227;
          v228 = v285;
        }

        sub_8E80(v279, &qword_326438, &qword_289DF8);
        v101 = v297;
        v235 = v293;
LABEL_79:
        v236 = v286;
LABEL_86:
        sub_8E80(v236, &qword_316208, &qword_268BD0);
        v238 = v235;
        goto LABEL_87;
      }

      sub_214E64(v71, v54, type metadata accessor for BrickLockupModel.BrickType);
      v196 = sub_2EF0(&qword_325BD8, &unk_289180);
      v197 = v196[12];
      v198 = v196[16];
      v199 = *&v54[v198 + 8];
      v293 = *&v54[v198];
      v200 = v196[20];
      v201 = *&v54[v200];
      v202 = v196[24];
      v291 = v54[v202];
      v203 = v300;
      if (swift_getEnumCaseMultiPayload() != 5)
      {

        sub_8E80(&v54[v197], &qword_316208, &qword_268BD0);
        (*(v298 + 8))(v54, v301);
        goto LABEL_39;
      }

      v299 = v199;
      v295 = *&v203[v200];
      v204 = *&v203[v198];
      v289 = *&v203[v198 + 8];
      v290 = v201;
      v285 = v203[v202];
      v286 = v204;
      v205 = v298;
      v206 = v292;
      v137 = v301;
      v287 = *(v298 + 32);
      v288 = (v298 + 32);
      v287(v292, v203, v301);
      v207 = v294;
      sub_A96C8(&v54[v197], v294);
      v208 = v280;
      sub_A96C8(&v203[v197], v280);
      v209 = sub_260B60();
      v93 = *(v205 + 8);
      (v93)(v54, v137);
      if ((v209 & 1) == 0)
      {

        sub_8E80(v208, &qword_316208, &qword_268BD0);
        sub_8E80(v207, &qword_316208, &qword_268BD0);
        v216 = v206;
        v217 = v137;
LABEL_49:
        (v93)(v216, v217);
        goto LABEL_50;
      }

      v300 = v93;
      v210 = *(v296 + 48);
      v211 = v276;
      sub_104B0(v207, v276);
      sub_104B0(v208, v211 + v210);
      v212 = *(v205 + 48);
      if (v212(v211, 1, v137) == 1)
      {
        if (v212(v211 + v210, 1, v137) == 1)
        {
          sub_8E80(v211, &qword_316208, &qword_268BD0);
          v134 = v300;
          v213 = v295;
          goto LABEL_109;
        }

        v101 = v297;
        v134 = v300;
      }

      else
      {
        v231 = v273;
        sub_104B0(v211, v273);
        if (v212(v211 + v210, 1, v137) != 1)
        {
          v251 = v278;
          v287(v278, (v211 + v210), v137);
          sub_2132D0(&qword_321BA8, &type metadata accessor for LocalizerRequest, &protocol conformance descriptor for LocalizerRequest);
          v252 = sub_264390();
          v134 = v300;
          (v300)(v251, v137);
          (v134)(v231, v137);
          sub_8E80(v211, &qword_316208, &qword_268BD0);
          v213 = v295;
          if (v252)
          {
LABEL_109:
            v253 = v290;
            if (v299)
            {
              v71 = v297;
              if (v289)
              {
                if (v293 == v286 && v299 == v289)
                {

                  v213 = v295;
LABEL_151:
                  v262 = sub_C851C(v253, v213);

                  v263 = v294;
                  if (v262)
                  {
                    if (v291 << 48 == v285 << 48)
                    {
                      swift_bridgeObjectRelease_n();
                      sub_8E80(v208, &qword_316208, &qword_268BD0);
                      sub_8E80(v263, &qword_316208, &qword_268BD0);
                      (v134)(v292, v137);
                      goto LABEL_52;
                    }

                    v267 = sub_264F10();
                    swift_bridgeObjectRelease_n();
                    sub_8E80(v208, &qword_316208, &qword_268BD0);
                    sub_8E80(v263, &qword_316208, &qword_268BD0);
                    (v134)(v292, v137);
                    if (v267)
                    {
                      goto LABEL_52;
                    }

                    goto LABEL_158;
                  }

                  sub_8E80(v208, &qword_316208, &qword_268BD0);
                  v265 = v263;
LABEL_157:
                  sub_8E80(v265, &qword_316208, &qword_268BD0);
                  (v134)(v292, v137);
                  goto LABEL_158;
                }

                v261 = sub_264F10();

                v213 = v295;
                if (v261)
                {
                  goto LABEL_151;
                }
              }

              else
              {
              }
            }

            else
            {
              v71 = v297;
              if (!v289)
              {
                goto LABEL_151;
              }
            }

            v264 = v294;
            sub_8E80(v208, &qword_316208, &qword_268BD0);
            v265 = v264;
            goto LABEL_157;
          }

          v101 = v297;
LABEL_85:
          v235 = v294;
          v228 = v292;
          v236 = v208;
          goto LABEL_86;
        }

        v134 = v300;
        (v300)(v231, v137);
        v101 = v297;
      }

      sub_8E80(v211, &qword_326438, &qword_289DF8);
      goto LABEL_85;
    }

    v141 = v295;
    sub_214E64(v71, v295, type metadata accessor for BrickLockupModel.BrickType);
    v142 = sub_2EF0(&qword_325BC8, &unk_2891A0);
    v143 = v142[12];
    v144 = v142[16];
    v146 = *&v141[v144];
    v145 = *&v141[v144 + 8];
    v147 = v142[20];
    v148 = *&v141[v147 + 112];
    v334 = *&v141[v147 + 96];
    v335 = v148;
    v149 = *&v141[v147 + 80];
    v332 = *&v141[v147 + 64];
    v333 = v149;
    v150 = *&v141[v147 + 16];
    v328 = *&v141[v147];
    v329 = v150;
    v151 = *&v141[v147 + 48];
    v330 = *&v141[v147 + 32];
    v331 = v151;
    v152 = v300;
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      sub_2F8C4(&v328);

      sub_8E80(&v141[v143], &qword_316208, &qword_268BD0);
      (*(v298 + 8))(v141, v301);
      goto LABEL_39;
    }

    v299 = v145;
    v153 = *&v152[v144 + 8];
    v291 = *&v152[v144];
    v292 = v146;
    v294 = v153;
    v154 = *&v152[v147 + 80];
    v324 = *&v152[v147 + 64];
    v325 = v154;
    v155 = *&v152[v147 + 112];
    v326 = *&v152[v147 + 96];
    v327 = v155;
    v156 = *&v152[v147 + 16];
    v320 = *&v152[v147];
    v321 = v156;
    v157 = *&v152[v147 + 48];
    v322 = *&v152[v147 + 32];
    v323 = v157;
    v158 = v298;
    v159 = v282;
    v160 = v301;
    v293 = *(v298 + 32);
    (v293)(v282, v152, v301);
    v161 = v283;
    sub_A96C8(&v141[v143], v283);
    v162 = v287;
    sub_A96C8(&v152[v143], v287);
    v163 = sub_260B60();
    v164 = *(v158 + 8);
    (v164)(v141, v160);
    if ((v163 & 1) == 0)
    {
      sub_2F8C4(&v320);
      sub_2F8C4(&v328);

      sub_8E80(v162, &qword_316208, &qword_268BD0);
      sub_8E80(v161, &qword_316208, &qword_268BD0);
      (v164)(v159, v160);
      goto LABEL_50;
    }

    v295 = v164;
    v300 = (v158 + 8);
    v165 = *(v296 + 48);
    v166 = v277;
    sub_104B0(v161, v277);
    sub_104B0(v162, v166 + v165);
    v167 = *(v158 + 48);
    if (v167(v166, 1, v160) == 1)
    {
      if (v167(v166 + v165, 1, v160) == 1)
      {
        sub_8E80(v166, &qword_316208, &qword_268BD0);
        v168 = v297;
        v169 = v282;
        v170 = v283;
        v171 = v295;
LABEL_69:
        if (v299)
        {
          if (v294)
          {
            if (v292 == v291 && v299 == v294)
            {

LABEL_134:
              v314 = v332;
              v315 = v333;
              v316 = v334;
              v317 = v335;
              v310 = v328;
              v311 = v329;
              v312 = v330;
              v313 = v331;
              v306 = v324;
              v307 = v325;
              v308 = v326;
              v309 = v327;
              v302 = v320;
              v303 = v321;
              v304 = v322;
              v305 = v323;
              v221 = _s7BooksUI14CoverViewModelV0C5StyleO2eeoiySbAE_AEtFZ_0(&v310, &v302);
              sub_8E80(v287, &qword_316208, &qword_268BD0);
              sub_8E80(v170, &qword_316208, &qword_268BD0);
              (v171)(v169, v301);
              v318[4] = v306;
              v318[5] = v307;
              v318[6] = v308;
              v318[7] = v309;
              v318[0] = v302;
              v318[1] = v303;
              v318[2] = v304;
              v318[3] = v305;
              sub_EA998(v318);
              v319[4] = v314;
              v319[5] = v315;
              v319[6] = v316;
              v319[7] = v317;
              v319[0] = v310;
              v319[1] = v311;
              v319[2] = v312;
              v319[3] = v313;
              sub_EA998(v319);
              sub_213318(v168, type metadata accessor for BrickLockupModel.BrickType);
              return v221 & 1;
            }

            v255 = sub_264F10();

            if (v255)
            {
              goto LABEL_134;
            }

            sub_2F8C4(&v320);
            sub_2F8C4(&v328);
          }

          else
          {

            sub_2F8C4(&v320);
            sub_2F8C4(&v328);
            swift_bridgeObjectRelease_n();
          }
        }

        else
        {
          if (!v294)
          {
            goto LABEL_134;
          }

          sub_2F8C4(&v320);
          sub_2F8C4(&v328);
        }

LABEL_66:
        sub_8E80(v287, &qword_316208, &qword_268BD0);
        sub_8E80(v170, &qword_316208, &qword_268BD0);
        (v171)(v169, v301);
        goto LABEL_67;
      }

      sub_2F8C4(&v320);
      sub_2F8C4(&v328);

      v168 = v297;
      v169 = v282;
      v170 = v283;
      v171 = v295;
    }

    else
    {
      v222 = v272;
      sub_104B0(v166, v272);
      if (v167(v166 + v165, 1, v160) != 1)
      {
        v232 = v278;
        (v293)(v278, v166 + v165, v160);
        sub_2132D0(&qword_321BA8, &type metadata accessor for LocalizerRequest, &protocol conformance descriptor for LocalizerRequest);
        v233 = sub_264390();
        v171 = v295;
        (v295)(v232, v160);
        (v171)(v222, v160);
        sub_8E80(v166, &qword_316208, &qword_268BD0);
        v168 = v297;
        v169 = v282;
        v170 = v283;
        if ((v233 & 1) == 0)
        {
          sub_2F8C4(&v320);
          sub_2F8C4(&v328);

          goto LABEL_66;
        }

        goto LABEL_69;
      }

      sub_2F8C4(&v320);
      sub_2F8C4(&v328);

      v171 = v295;
      (v295)(v222, v160);
      v168 = v297;
      v169 = v282;
      v170 = v283;
    }

    sub_8E80(v166, &qword_326438, &qword_289DF8);
    goto LABEL_66;
  }

  if (EnumCaseMultiPayload)
  {
    v76 = v300;
    v297 = v71;
    if (EnumCaseMultiPayload == 1)
    {
      sub_214E64(v71, v65, type metadata accessor for BrickLockupModel.BrickType);
      v77 = sub_2EF0(&qword_325BB8, &qword_2891B0);
      v78 = *(v77 + 48);
      v79 = *(v77 + 64);
      v81 = *&v65[v79];
      v80 = *&v65[v79 + 8];
      v82 = swift_getEnumCaseMultiPayload();
      v83 = v298;
      if (v82 == 1)
      {
        v299 = v80;
        v84 = *&v76[v79 + 8];
        v293 = *&v76[v79];
        v294 = v81;
        v295 = v84;
        v85 = v298;
        v86 = v288;
        v87 = v301;
        v292 = *(v298 + 32);
        (v292)(v288, v76, v301);
        v88 = v289;
        sub_A96C8(&v65[v78], v289);
        v89 = &v76[v78];
        v90 = v284;
        sub_A96C8(v89, v284);
        v91 = sub_260B60();
        v92 = v65;
        v93 = *(v83 + 8);
        (v93)(v92, v87);
        if (v91)
        {
          v300 = v93;
          v94 = *(v296 + 48);
          v95 = v88;
          v96 = v274;
          sub_104B0(v95, v274);
          sub_104B0(v90, v96 + v94);
          v97 = *(v85 + 48);
          v98 = v301;
          if (v97(v96, 1, v301) == 1)
          {
            v99 = v97(v96 + v94, 1, v98);
            v100 = v288;
            if (v99 == 1)
            {
              sub_8E80(v96, &qword_316208, &qword_268BD0);
              v101 = v297;
              v102 = v299;
              v103 = v300;
              v104 = v295;
              goto LABEL_93;
            }

            v101 = v297;
            v225 = v284;
            v103 = v300;
          }

          else
          {
            v223 = v269;
            sub_104B0(v96, v269);
            v224 = v97(v96 + v94, 1, v98);
            v100 = v288;
            if (v224 != 1)
            {
              v240 = v278;
              (v292)(v278, v96 + v94, v98);
              sub_2132D0(&qword_321BA8, &type metadata accessor for LocalizerRequest, &protocol conformance descriptor for LocalizerRequest);
              v241 = sub_264390();
              v242 = v240;
              v103 = v300;
              (v300)(v242, v98);
              (v103)(v223, v98);
              sub_8E80(v96, &qword_316208, &qword_268BD0);
              v101 = v297;
              v102 = v299;
              v104 = v295;
              if (v241)
              {
LABEL_93:
                v243 = v289;
                if (v294 == v293 && v102 == v104)
                {

                  sub_8E80(v284, &qword_316208, &qword_268BD0);
                  sub_8E80(v243, &qword_316208, &qword_268BD0);
                  (v103)(v100, v301);
LABEL_115:
                  v220 = v101;
                  goto LABEL_53;
                }

                v254 = sub_264F10();

                sub_8E80(v284, &qword_316208, &qword_268BD0);
                sub_8E80(v243, &qword_316208, &qword_268BD0);
                (v103)(v100, v301);
                if (v254)
                {
                  goto LABEL_115;
                }

                goto LABEL_88;
              }

              v234 = v289;
              v225 = v284;
              goto LABEL_76;
            }

            v103 = v300;
            (v300)(v223, v98);
            v101 = v297;
            v225 = v284;
          }

          sub_8E80(v96, &qword_326438, &qword_289DF8);
          v234 = v289;
LABEL_76:
          sub_8E80(v225, &qword_316208, &qword_268BD0);
          sub_8E80(v234, &qword_316208, &qword_268BD0);
          (v103)(v100, v301);
LABEL_88:
          v218 = v101;
          goto LABEL_89;
        }

        sub_8E80(v90, &qword_316208, &qword_268BD0);
        sub_8E80(v88, &qword_316208, &qword_268BD0);
        v216 = v86;
        v217 = v301;
        goto LABEL_49;
      }

      sub_8E80(&v65[v78], &qword_316208, &qword_268BD0);
      (*(v83 + 8))(v65, v301);
      goto LABEL_39;
    }

    sub_214E64(v71, v62, type metadata accessor for BrickLockupModel.BrickType);
    v172 = sub_2EF0(&qword_325BC0, &qword_288C58);
    v173 = *(v172 + 48);
    v174 = *(v172 + 64);
    v176 = *&v62[v174];
    v175 = *&v62[v174 + 8];
    v177 = swift_getEnumCaseMultiPayload();
    v178 = v298;
    if (v177 == 2)
    {
      v299 = v175;
      v179 = *&v76[v174 + 8];
      v289 = *&v76[v174];
      v180 = *(v298 + 32);
      v181 = v290;
      v182 = v301;
      v294 = (v298 + 32);
      v295 = v179;
      v292 = v176;
      v293 = v180;
      (v180)(v290, v76, v301);
      v183 = v291;
      sub_A96C8(&v62[v173], v291);
      v184 = v281;
      sub_A96C8(&v76[v173], v281);
      v185 = sub_260B60();
      v186 = *(v178 + 8);
      (v186)(v62, v182);
      if (v185)
      {
        v300 = v186;
        v187 = *(v296 + 48);
        v188 = v275;
        sub_104B0(v183, v275);
        sub_104B0(v184, v188 + v187);
        v189 = *(v178 + 48);
        v190 = v301;
        if (v189(v188, 1, v301) == 1)
        {
          v191 = v189(v188 + v187, 1, v190);
          v192 = v190;
          v193 = v290;
          if (v191 == 1)
          {
            sub_8E80(v188, &qword_316208, &qword_268BD0);
            v194 = v300;
            v195 = v295;
            goto LABEL_103;
          }

          v101 = v297;
          v194 = v300;
        }

        else
        {
          v229 = v270;
          sub_104B0(v188, v270);
          v230 = v189(v188 + v187, 1, v190);
          v193 = v290;
          if (v230 != 1)
          {
            v248 = v278;
            v249 = v301;
            (v293)(v278, v188 + v187, v301);
            sub_2132D0(&qword_321BA8, &type metadata accessor for LocalizerRequest, &protocol conformance descriptor for LocalizerRequest);
            v250 = sub_264390();
            v194 = v300;
            (v300)(v248, v249);
            (v194)(v229, v249);
            sub_8E80(v188, &qword_316208, &qword_268BD0);
            v192 = v249;
            v195 = v295;
            if (v250)
            {
LABEL_103:
              if (v299)
              {
                if (!v195)
                {

                  sub_8E80(v184, &qword_316208, &qword_268BD0);
                  sub_8E80(v291, &qword_316208, &qword_268BD0);
                  (v194)(v193, v192);
                  goto LABEL_50;
                }

                if (v292 == v289 && v299 == v195)
                {

                  sub_8E80(v184, &qword_316208, &qword_268BD0);
                  sub_8E80(v291, &qword_316208, &qword_268BD0);
                  (v194)(v193, v192);
                }

                else
                {
                  v260 = sub_264F10();

                  sub_8E80(v184, &qword_316208, &qword_268BD0);
                  sub_8E80(v291, &qword_316208, &qword_268BD0);
                  (v194)(v193, v192);
                  if ((v260 & 1) == 0)
                  {
                    goto LABEL_50;
                  }
                }
              }

              else
              {
                sub_8E80(v184, &qword_316208, &qword_268BD0);
                sub_8E80(v291, &qword_316208, &qword_268BD0);
                (v194)(v193, v192);
                if (v195)
                {

                  goto LABEL_50;
                }
              }

              v220 = v297;
              goto LABEL_53;
            }

            v101 = v297;
LABEL_82:
            v237 = v291;
            sub_8E80(v281, &qword_316208, &qword_268BD0);
            sub_8E80(v237, &qword_316208, &qword_268BD0);
            (v194)(v193, v192);
            goto LABEL_88;
          }

          v194 = v300;
          v192 = v301;
          (v300)(v229, v301);
          v101 = v297;
        }

        sub_8E80(v188, &qword_326438, &qword_289DF8);
        goto LABEL_82;
      }

      sub_8E80(v184, &qword_316208, &qword_268BD0);
      sub_8E80(v183, &qword_316208, &qword_268BD0);
      (v186)(v181, v301);
LABEL_50:
      v218 = v297;
LABEL_89:
      sub_213318(v218, type metadata accessor for BrickLockupModel.BrickType);
      goto LABEL_90;
    }

    sub_8E80(&v62[v173], &qword_316208, &qword_268BD0);
    (*(v178 + 8))(v62, v301);
LABEL_39:
    v71 = v297;
    goto LABEL_40;
  }

  sub_214E64(v71, v68, type metadata accessor for BrickLockupModel.BrickType);
  v139 = *v68;
  v138 = v68[1];
  v140 = v300;
  if (swift_getEnumCaseMultiPayload())
  {

LABEL_40:
    sub_8E80(v71, &qword_326440, &unk_289E00);
LABEL_90:
    v221 = 0;
    return v221 & 1;
  }

  v214 = *v140;
  v215 = *(v140 + 1);
  if (v139 != v214 || v138 != v215)
  {
    v219 = sub_264F10();

    if (v219)
    {
      goto LABEL_52;
    }

LABEL_158:
    v218 = v71;
    goto LABEL_89;
  }

LABEL_52:
  v220 = v71;
LABEL_53:
  sub_213318(v220, type metadata accessor for BrickLockupModel.BrickType);
  v221 = 1;
  return v221 & 1;
}

unint64_t sub_212F04()
{
  result = qword_326170;
  if (!qword_326170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326170);
  }

  return result;
}

unint64_t sub_212F58()
{
  result = qword_326178;
  if (!qword_326178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326178);
  }

  return result;
}

unint64_t sub_212FAC()
{
  result = qword_326180;
  if (!qword_326180)
  {
    sub_2F9C(&qword_31BEF0, &unk_289190);
    sub_EAB10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326180);
  }

  return result;
}

unint64_t sub_213030()
{
  result = qword_326188;
  if (!qword_326188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326188);
  }

  return result;
}

unint64_t sub_213084()
{
  result = qword_326190;
  if (!qword_326190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326190);
  }

  return result;
}

unint64_t sub_2130D8()
{
  result = qword_326198;
  if (!qword_326198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326198);
  }

  return result;
}

unint64_t sub_21312C()
{
  result = qword_3261A0;
  if (!qword_3261A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3261A0);
  }

  return result;
}

unint64_t sub_213180()
{
  result = qword_3261A8;
  if (!qword_3261A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3261A8);
  }

  return result;
}

unint64_t sub_2131D4()
{
  result = qword_3261B0;
  if (!qword_3261B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3261B0);
  }

  return result;
}

unint64_t sub_213228()
{
  result = qword_3261B8;
  if (!qword_3261B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3261B8);
  }

  return result;
}

unint64_t sub_21327C()
{
  result = qword_3261C8;
  if (!qword_3261C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3261C8);
  }

  return result;
}

uint64_t sub_2132D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_213318(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_213378(uint64_t a1)
{
  result = sub_2132D0(&qword_3261D0, type metadata accessor for BrickLockupModel.BrickType, &protocol conformance descriptor for BrickLockupModel.BrickType);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2133D4()
{
  result = qword_3261D8;
  if (!qword_3261D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3261D8);
  }

  return result;
}

unint64_t sub_21342C()
{
  result = qword_3261E0;
  if (!qword_3261E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3261E0);
  }

  return result;
}

uint64_t sub_213480(uint64_t a1)
{
  result = sub_2132D0(&qword_3261E8, type metadata accessor for BrickLockupModel, &protocol conformance descriptor for BrickLockupModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2134EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BrickLockupModel.BrickType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_2135CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BrickLockupModel.BrickType(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

void sub_213688(uint64_t a1)
{
  type metadata accessor for BrickLockupModel.BrickType(319);
  if (v1 <= 0x3F)
  {
    sub_213714(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_213714(uint64_t a1)
{
  if (!qword_326258)
  {
    sub_2F9C(&qword_316DD0, &qword_2692C0);
    v1 = sub_263BF0();
    if (!v2)
    {
      atomic_store(v1, &qword_326258);
    }
  }
}

void sub_213778(uint64_t a1)
{
  sub_21385C();
  if (v1 <= 0x3F)
  {
    sub_21388C(319);
    if (v2 <= 0x3F)
    {
      sub_213914(319);
      if (v3 <= 0x3F)
      {
        sub_2139B8(319);
        if (v4 <= 0x3F)
        {
          sub_213AF8(319, &qword_326330, &type metadata for BrickLockupModel.TwoArtCoverVariant);
          if (v5 <= 0x3F)
          {
            sub_213AF8(319, &unk_326338, &type metadata for BrickLockupModel.ThreeArtCoverVariant);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void *sub_21385C()
{
  result = qword_326310;
  if (!qword_326310)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_326310);
  }

  return result;
}

void sub_21388C(uint64_t a1)
{
  if (!qword_326318)
  {
    sub_260BD0();
    sub_2F9C(&qword_316208, &qword_268BD0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_326318);
    }
  }
}

void sub_213914(uint64_t a1)
{
  if (!qword_326320)
  {
    sub_260BD0();
    sub_2F9C(&qword_316208, &qword_268BD0);
    sub_2F9C(&qword_316DD0, &qword_2692C0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_326320);
    }
  }
}

void sub_2139B8(uint64_t a1)
{
  if (!qword_326328)
  {
    __chkstk_darwin(a1);
    sub_260BD0();
    sub_2F9C(&qword_316208, &qword_268BD0);
    sub_2F9C(&qword_316DD0, &qword_2692C0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_326328);
    }
  }
}

void sub_213AF8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    __chkstk_darwin(a1);
    sub_260BD0();
    sub_2F9C(&qword_316208, &qword_268BD0);
    sub_2F9C(&qword_316DD0, &qword_2692C0);
    sub_2F9C(&qword_31BEF0, &unk_289190);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata, a2);
    }
  }
}

unint64_t sub_213D04()
{
  result = qword_326368;
  if (!qword_326368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326368);
  }

  return result;
}

unint64_t sub_213D5C()
{
  result = qword_326370;
  if (!qword_326370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326370);
  }

  return result;
}

unint64_t sub_213DB4()
{
  result = qword_326378;
  if (!qword_326378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326378);
  }

  return result;
}

unint64_t sub_213E0C()
{
  result = qword_326380;
  if (!qword_326380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326380);
  }

  return result;
}

unint64_t sub_213E64()
{
  result = qword_326388;
  if (!qword_326388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326388);
  }

  return result;
}

unint64_t sub_213EBC()
{
  result = qword_326390;
  if (!qword_326390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326390);
  }

  return result;
}

unint64_t sub_213F14()
{
  result = qword_326398;
  if (!qword_326398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326398);
  }

  return result;
}

unint64_t sub_213F6C()
{
  result = qword_3263A0;
  if (!qword_3263A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3263A0);
  }

  return result;
}

unint64_t sub_213FC4()
{
  result = qword_3263A8;
  if (!qword_3263A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3263A8);
  }

  return result;
}

unint64_t sub_21401C()
{
  result = qword_3263B0;
  if (!qword_3263B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3263B0);
  }

  return result;
}

unint64_t sub_214074()
{
  result = qword_3263B8;
  if (!qword_3263B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3263B8);
  }

  return result;
}

unint64_t sub_2140CC()
{
  result = qword_3263C0;
  if (!qword_3263C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3263C0);
  }

  return result;
}

unint64_t sub_214124()
{
  result = qword_3263C8;
  if (!qword_3263C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3263C8);
  }

  return result;
}

unint64_t sub_21417C()
{
  result = qword_3263D0;
  if (!qword_3263D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3263D0);
  }

  return result;
}

unint64_t sub_2141D4()
{
  result = qword_3263D8;
  if (!qword_3263D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3263D8);
  }

  return result;
}

unint64_t sub_21422C()
{
  result = qword_3263E0;
  if (!qword_3263E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3263E0);
  }

  return result;
}

unint64_t sub_214284()
{
  result = qword_3263E8;
  if (!qword_3263E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3263E8);
  }

  return result;
}

unint64_t sub_2142DC()
{
  result = qword_3263F0;
  if (!qword_3263F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3263F0);
  }

  return result;
}

unint64_t sub_214334()
{
  result = qword_3263F8;
  if (!qword_3263F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3263F8);
  }

  return result;
}

unint64_t sub_21438C()
{
  result = qword_326400;
  if (!qword_326400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326400);
  }

  return result;
}

unint64_t sub_2143E4()
{
  result = qword_326408;
  if (!qword_326408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326408);
  }

  return result;
}

unint64_t sub_21443C()
{
  result = qword_326410;
  if (!qword_326410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326410);
  }

  return result;
}

unint64_t sub_214494()
{
  result = qword_326418;
  if (!qword_326418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326418);
  }

  return result;
}

unint64_t sub_2144EC()
{
  result = qword_326420;
  if (!qword_326420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326420);
  }

  return result;
}

uint64_t sub_214540(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6169726F74696465 && a2 == 0xED0000796C6E4F6CLL;
  if (v3 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6169726F74696465 && a2 == 0xE90000000000006CLL || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x737265766F436F6ELL && a2 == 0xE800000000000000 || (sub_264F10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F43656C676E6973 && a2 == 0xEB00000000726576 || (sub_264F10() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7265766F436F7774 && a2 == 0xE900000000000073 || (sub_264F10() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x766F436565726874 && a2 == 0xEB00000000737265)
  {

    return 5;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_214750(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_214864(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C72556E6F6369 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_214978(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C72556E6F6369 && a2 == 0xE700000000000000 || (sub_264F10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6569567265766F63 && a2 == 0xEE006C65646F4D77)
  {

    return 3;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_214AE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C72556E6F6369 && a2 == 0xE700000000000000 || (sub_264F10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6569567265766F63 && a2 == 0xEF736C65646F4D77 || (sub_264F10() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E6169726176 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_214C94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7079546B63697262 && a2 == 0xE900000000000065;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6152746365707361 && a2 == 0xEB000000006F6974 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x546B636972427861 && a2 == 0xEC000000656C7469)
  {

    return 2;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_214DBC()
{
  result = qword_326428;
  if (!qword_326428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326428);
  }

  return result;
}

unint64_t sub_214E10()
{
  result = qword_326430;
  if (!qword_326430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326430);
  }

  return result;
}

uint64_t sub_214E64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double ListItemMetadataRecommendationCreatorDescriptorBase.init<>(assetInfo:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2E18(a1, a1[3]);
  v4 = sub_260960();
  v6 = v5;
  KeyPath = swift_getKeyPath();
  *a2 = KeyPath;
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  *(a2 + 24) = v6;
  sub_39D6C(KeyPath, 0);

  sub_3080(a1);
  sub_4054(KeyPath, 0);

  return result;
}

uint64_t ListItemMetadataRecommendationCreatorDescriptionExternals.isCompact.getter()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_264900();
    v6 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t ListItemMetadataRecommendationCreatorDescriptionExternals.init()@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t ListItemMetadataRecommendationCreatorDescriptionExternals.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_3080(a1);
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t ListItemMetadataRecommendationCreatorDescriptorBase.description.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));

  return v2;
}

void ListItemMetadataRecommendationCreatorDescriptorBase.description.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 36));

  *v6 = a1;
  v6[1] = a2;
}

uint64_t ListItemMetadataRecommendationCreatorDescriptorBase.text(localizer:font:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25FF40();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a3 + 16);
  KeyPath = swift_getKeyPath();
  swift_getWitnessTable();
  ViewModelWithExternals.subscript.getter(KeyPath);

  if (v18[0])
  {
    return 0;
  }

  v11 = (v3 + *(a3 + 36));
  v12 = v11[1];
  if (!v12)
  {
    return 0;
  }

  v13 = *v11;
  objc_allocWithZone(type metadata accessor for BooksHTMLConverter(0));

  v14 = sub_19C6C8(v13, v12, a2);
  [*&v14[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_parser] parse];
  v15 = OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_currentString;
  swift_beginAccess();
  (*(v7 + 16))(v9, &v14[v15], v6);

  return sub_2628D0();
}

uint64_t sub_2153A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616E7265747865 && a2 == 0xE900000000000073;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    return 1;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_215478(char a1)
{
  if (a1)
  {
    return 0x7470697263736564;
  }

  else
  {
    return 0x6C616E7265747865;
  }
}

Swift::Int sub_2154F0(uint64_t a1)
{
  sub_265050();
  HostingViewBarType.hash(into:)(v3, *v1);
  return sub_265080();
}

uint64_t sub_215548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2153A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_215578(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_2155CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t ListItemMetadataRecommendationCreatorDescriptorBase.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  v33 = *(a2 - 8);
  __chkstk_darwin(a1);
  v35 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ListItemMetadataRecommendationCreatorDescriptorBase.CodingKeys(255, v8, v9, v10);
  swift_getWitnessTable();
  v36 = sub_264E20();
  v32 = *(v36 - 8);
  __chkstk_darwin(v36);
  v12 = &v28 - v11;
  v34 = a3;
  v14 = type metadata accessor for ListItemMetadataRecommendationCreatorDescriptorBase(0, a2, a3, v13);
  v30 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v28 - v15;
  sub_2E18(a1, a1[3]);
  v17 = v37;
  sub_265120();
  if (v17)
  {
    return sub_3080(a1);
  }

  v37 = a1;
  v29 = v14;
  v18 = v32;
  v19 = v33;
  v39 = 0;
  sub_264DF0();
  v20 = v16;
  (*(v19 + 32))(v16, v35, a2);
  v38 = 1;
  v21 = sub_264D70();
  v23 = v22;
  v24 = v29;
  v25 = &v20[*(v29 + 36)];
  (*(v18 + 8))(v12, v36);
  *v25 = v21;
  v25[1] = v23;
  v26 = v30;
  (*(v30 + 16))(v31, v20, v24);
  sub_3080(v37);
  return (*(v26 + 8))(v20, v24);
}

uint64_t sub_2159D8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 24))(*(a1 + a2 - 16));
  *a3 = result & 1;
  return result;
}

__n128 sub_215A30(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_215A6C(uint64_t a1)
{
  *(a1 + 8) = sub_215A9C();
  result = sub_215AF0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_215A9C()
{
  result = qword_326448;
  if (!qword_326448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326448);
  }

  return result;
}

unint64_t sub_215AF0()
{
  result = qword_326450;
  if (!qword_326450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326450);
  }

  return result;
}

uint64_t sub_215B44(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_215B80(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_215BBC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_215BF8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_215C58(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_22944();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_215CE0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_215E24(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFE)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v18 = 0;
      v18[1] = 0;
      *v18 = a2 - 0x7FFFFFFF;
    }

    else
    {
      v18[1] = a2;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t ColorConstants.booksKey.getter()
{
  v1 = v0;
  v2 = sub_261180();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ColorConstants.Environment(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4BD3C(v1, v8);
  (*(v3 + 104))(v5, enum case for ColorScheme.dark(_:), v2);
  sub_60AB0();
  LOBYTE(v1) = sub_264390();
  v9 = *(v3 + 8);
  v9(v5, v2);
  v9(v8, v2);
  if (v1)
  {
    return _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  }

  else
  {
    return sub_262F80();
  }
}

uint64_t sub_21623C(uint64_t (*a1)(void), double a2)
{
  a1();
  v2 = sub_263000();

  return v2;
}

uint64_t ColorConstants.booksButtonBackground.getter()
{
  v1 = v0;
  v2 = sub_261180();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ColorConstants.Environment(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v1;
  sub_4BD3C(v1, v8);
  v9 = enum case for ColorScheme.dark(_:);
  v10 = *(v3 + 104);
  v10(v5, enum case for ColorScheme.dark(_:), v2);
  sub_60AB0();
  v11 = sub_264390();
  v12 = *(v3 + 8);
  v12(v5, v2);
  v12(v8, v2);
  if (v11)
  {
    v13 = [objc_opt_self() tertiarySystemBackgroundColor];
    return sub_263070();
  }

  else
  {
    sub_4BD3C(v17, v8);
    v10(v5, v9, v2);
    v15 = sub_264390();
    v12(v5, v2);
    v12(v8, v2);
    if (v15)
    {
      return _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
    }

    else
    {
      return sub_262F80();
    }
  }
}

uint64_t sub_2164E8(SEL *a1, SEL *a2)
{
  v5 = v2;
  v6 = sub_261180();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ColorConstants.Environment(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4BD3C(v5, v12);
  (*(v7 + 104))(v9, enum case for ColorScheme.dark(_:), v6);
  sub_60AB0();
  LOBYTE(v5) = sub_264390();
  v13 = *(v7 + 8);
  v13(v9, v6);
  v13(v12, v6);
  v14 = objc_opt_self();
  if (v5)
  {
    v15 = a1;
  }

  else
  {
    v15 = a2;
  }

  v16 = [v14 *v15];
  return sub_263070();
}

uint64_t ColorConstants.booksRed.getter()
{
  v1 = v0;
  v2 = sub_262F00();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261180();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ColorConstants.Environment(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4BD3C(v1, v12);
  (*(v7 + 104))(v9, enum case for ColorScheme.dark(_:), v6);
  sub_60AB0();
  sub_264390();
  v13 = *(v7 + 8);
  v13(v9, v6);
  v13(v12, v6);
  (*(v3 + 104))(v5, enum case for Color.RGBColorSpace.sRGB(_:), v2);
  return sub_263060();
}

uint64_t ColorConstants.booksOrange.getter()
{
  v1 = v0;
  v2 = sub_262F00();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261180();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ColorConstants.Environment(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4BD3C(v1, v12);
  (*(v7 + 104))(v9, enum case for ColorScheme.dark(_:), v6);
  sub_60AB0();
  sub_264390();
  v13 = *(v7 + 8);
  v13(v9, v6);
  v13(v12, v6);
  (*(v3 + 104))(v5, enum case for Color.RGBColorSpace.sRGB(_:), v2);
  return sub_263060();
}

uint64_t ColorConstants.booksGreen.getter()
{
  v1 = v0;
  v2 = sub_262F00();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261180();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ColorConstants.Environment(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4BD3C(v1, v12);
  (*(v7 + 104))(v9, enum case for ColorScheme.dark(_:), v6);
  sub_60AB0();
  sub_264390();
  v13 = *(v7 + 8);
  v13(v9, v6);
  v13(v12, v6);
  (*(v3 + 104))(v5, enum case for Color.RGBColorSpace.sRGB(_:), v2);
  return sub_263060();
}

uint64_t ColorConstants.booksTeal.getter()
{
  v1 = v0;
  v2 = sub_262F00();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261180();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ColorConstants.Environment(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4BD3C(v1, v12);
  (*(v7 + 104))(v9, enum case for ColorScheme.dark(_:), v6);
  sub_60AB0();
  sub_264390();
  v13 = *(v7 + 8);
  v13(v9, v6);
  v13(v12, v6);
  (*(v3 + 104))(v5, enum case for Color.RGBColorSpace.sRGB(_:), v2);
  return sub_263060();
}

uint64_t ColorConstants.booksBlue.getter()
{
  v1 = v0;
  v2 = sub_262F00();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261180();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ColorConstants.Environment(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4BD3C(v1, v12);
  (*(v7 + 104))(v9, enum case for ColorScheme.dark(_:), v6);
  sub_60AB0();
  sub_264390();
  v13 = *(v7 + 8);
  v13(v9, v6);
  v13(v12, v6);
  (*(v3 + 104))(v5, enum case for Color.RGBColorSpace.sRGB(_:), v2);
  return sub_263060();
}

uint64_t ColorConstants.booksPurple.getter()
{
  v1 = v0;
  v2 = sub_262F00();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261180();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ColorConstants.Environment(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4BD3C(v1, v12);
  (*(v7 + 104))(v9, enum case for ColorScheme.dark(_:), v6);
  sub_60AB0();
  sub_264390();
  v13 = *(v7 + 8);
  v13(v9, v6);
  v13(v12, v6);
  (*(v3 + 104))(v5, enum case for Color.RGBColorSpace.sRGB(_:), v2);
  return sub_263060();
}

uint64_t ColorConstants.booksMagenta.getter()
{
  v1 = v0;
  v2 = sub_262F00();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261180();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ColorConstants.Environment(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4BD3C(v1, v12);
  (*(v7 + 104))(v9, enum case for ColorScheme.dark(_:), v6);
  sub_60AB0();
  sub_264390();
  v13 = *(v7 + 8);
  v13(v9, v6);
  v13(v12, v6);
  (*(v3 + 104))(v5, enum case for Color.RGBColorSpace.sRGB(_:), v2);
  return sub_263060();
}

uint64_t ColorConstants.booksIconBackground.getter()
{
  v1 = v0;
  v2 = sub_262F00();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261180();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ColorConstants.Environment(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4BD3C(v1, v12);
  (*(v7 + 104))(v9, enum case for ColorScheme.dark(_:), v6);
  sub_60AB0();
  LOBYTE(v1) = sub_264390();
  v13 = *(v7 + 8);
  v13(v9, v6);
  v13(v12, v6);
  if ((v1 & 1) == 0)
  {
    return sub_262F80();
  }

  (*(v3 + 104))(v5, enum case for Color.RGBColorSpace.sRGB(_:), v2);
  sub_263060();
  v14 = sub_263000();

  return v14;
}

uint64_t ColorConstants.booksAXSeparator.getter()
{
  v1 = v0;
  v2 = sub_262F00();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261180();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ColorConstants.Environment(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4BD3C(v1, v12);
  (*(v7 + 104))(v9, enum case for ColorScheme.dark(_:), v6);
  sub_60AB0();
  sub_264390();
  v13 = *(v7 + 8);
  v13(v9, v6);
  v13(v12, v6);
  (*(v3 + 104))(v5, enum case for Color.RGBColorSpace.sRGB(_:), v2);
  sub_263060();
  v14 = sub_263000();

  return v14;
}

uint64_t sub_217C64(SEL *a1)
{
  v1 = [objc_opt_self() *a1];

  return sub_263070();
}

uint64_t ColorConstants.booksTableSelection.getter()
{
  v1 = v0;
  v2 = sub_262F00();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261180();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ColorConstants.Environment(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4BD3C(v1, v12);
  (*(v7 + 104))(v9, enum case for ColorScheme.dark(_:), v6);
  sub_60AB0();
  sub_264390();
  v13 = *(v7 + 8);
  v13(v9, v6);
  v13(v12, v6);
  (*(v3 + 104))(v5, enum case for Color.RGBColorSpace.sRGB(_:), v2);
  sub_263060();
  v14 = sub_263000();

  return v14;
}

uint64_t sub_217F54(SEL *a1, double a2)
{
  v2 = [objc_opt_self() *a1];
  sub_263070();
  v3 = sub_263000();

  return v3;
}

unint64_t SynchronousNativeIntentDispatcher.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 40) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  v2 = (a1 + 8);
  sub_19E5C4(a1 + 8);
  *v2 = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  result = sub_F484(_swiftEmptyArrayStorage);
  *a1 = result;
  return result;
}

void SynchronousNativeIntentDispatcher.register(contentsOf:)(uint64_t *a1)
{
  v2 = *a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  sub_14FA98(v2, sub_14F8D4, 0, isUniquelyReferenced_nonNull_native, &v4);

  *v1 = v4;
}

uint64_t SynchronousNativeIntentDispatcher.withNext(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = &type metadata for SynchronousNativeIntentDispatcher;
  a2[4] = &protocol witness table for SynchronousNativeIntentDispatcher;
  v5 = swift_allocObject();
  *a2 = v5;
  sub_14FE2C(v2, v5 + 16);

  return sub_219540(a1, v5 + 24);
}

uint64_t SynchronousNativeIntentDispatcher.register<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a3 + 24))(a2, a3);
  v8 = v7;
  v11[3] = a2;
  v11[4] = a3;
  v9 = sub_10934(v11);
  (*(*(a2 - 8) + 16))(v9, a1, a2);
  return sub_D23C(v11, v6, v8);
}

void SynchronousNativeIntentDispatcher.registering(contentsOf:)(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_14FE2C(v2, a2);
  v5 = *a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *a2;
  sub_14FA98(v5, sub_14F8D4, 0, isUniquelyReferenced_nonNull_native, &v7);

  *a2 = v7;
}

uint64_t SynchronousNativeIntentDispatcher.perform<A>(_:objectGraph:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a2;
  v32 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = sub_263B40();
  v34 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v14);
  v28 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v31 = a1;
  sub_2185C8(v12);
  v19 = *(v13 + 48);
  if (v19(v12, 1, AssociatedTypeWitness) == 1)
  {
    v20 = *(v34 + 8);
    v34 += 8;
    v20(v12, v30);
    v21 = v29;
    v22 = v35;
    result = sub_218898(v33);
    if (!v22)
    {
      v35 = 0;
      if (v19(v33, 1, AssociatedTypeWitness) == 1)
      {
        v20(v33, v30);
        return sub_218A64(v31, v21, a3, a4);
      }

      else
      {
        v25 = *(v13 + 32);
        v26 = v28;
        v25(v28, v33, AssociatedTypeWitness);
        return (v25)(v32, v26, AssociatedTypeWitness);
      }
    }
  }

  else
  {
    v24 = *(v13 + 32);
    v24(v18, v12, AssociatedTypeWitness);
    return (v24)(v32, v18, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_2185C8@<X0>(uint64_t a3@<X8>)
{
  v23 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for SynchronousStaticIntent(255, AssociatedTypeWitness, v4, v5);
  v7 = sub_264A60();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - v9;
  v11 = *(v6 - 8);
  __chkstk_darwin(v12);
  v14 = &v22 - v13;
  sub_2638A0();
  v24 = AssociatedTypeWitness;
  swift_getExtendedExistentialTypeMetadata();
  v15 = swift_dynamicCast();
  v16 = *(v11 + 56);
  if (v15)
  {
    v16(v10, 0, 1, v6);
    (*(v11 + 32))(v14, v10, v6);
    v17 = *(AssociatedTypeWitness - 8);
    v18 = v23;
    (*(v17 + 32))(v23, v14, AssociatedTypeWitness);
    v19 = 0;
    v20 = v18;
  }

  else
  {
    v19 = 1;
    v16(v10, 1, 1, v6);
    (*(v8 + 8))(v10, v7);
    v17 = *(AssociatedTypeWitness - 8);
    v20 = v23;
  }

  return (*(v17 + 56))(v20, v19, 1, AssociatedTypeWitness);
}

uint64_t sub_218898@<X0>(uint64_t a5@<X8>)
{
  v7 = *v5;
  v8 = sub_2638C0();
  if (*(v7 + 16))
  {
    v10 = sub_D410(v8, v9);
    v12 = v11;

    if (v12)
    {
      sub_30CC(*(v7 + 56) + 40 * v10, v16);
      v13 = sub_F7CC(v16, v17);
      __chkstk_darwin(v13);
      swift_getAssociatedTypeWitness();
      sub_263B40();
      sub_263C50();
      return sub_3080(v17);
    }
  }

  else
  {
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a5, 1, 1, AssociatedTypeWitness);
}

uint64_t sub_218A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2196A8(v4 + 8, &v14);
  if (v15)
  {
    sub_F7CC(&v14, v16);
    v9 = v17;
    v10 = v18;
    sub_2E18(v16, v17);
    (*(v10 + 8))(a1, a2, a3, a4, v9, v10);
    return sub_3080(v16);
  }

  else
  {
    sub_19E5C4(&v14);
    v12 = sub_263F80();
    sub_219718();
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, enum case for IntentDispatcherError.unsupported(_:), v12);
    return swift_willThrow();
  }
}

uint64_t sub_218BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v68 = a6;
  v61 = a2;
  v67 = a7;
  v65 = *(a4 - 8);
  __chkstk_darwin(a1);
  v64 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v59 = sub_263B40();
  v54 = sub_264A60();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v58 = &v53 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v63 = a5;
  v62 = a3;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v15 = sub_263B40();
  v56 = *(v15 - 8);
  v57 = v15;
  __chkstk_darwin(v15);
  v55 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v60 = &v53 - v18;
  v19 = sub_264A60();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v53 - v21;
  v23 = *(v14 - 8);
  __chkstk_darwin(v24);
  v26 = &v53 - v25;
  v66 = a4;
  sub_2638A0();
  v68 = AssociatedTypeWitness;
  v70[7] = AssociatedTypeWitness;
  swift_getExtendedExistentialTypeMetadata();
  v27 = swift_dynamicCast();
  v28 = *(v23 + 56);
  if (v27)
  {
    v28(v22, 0, 1, v14);
    (*(v23 + 32))(v26, v22, v14);
    v29 = v60;
    v30 = v69;
    (*(v63 + 32))(v26, v61, v62);
    if (v30)
    {
      return (*(v23 + 8))(v26, v14);
    }

    else
    {
      v48 = v56;
      v49 = v57;
      (*(v56 + 16))(v55, v29, v57);
      v50 = v58;
      v51 = v59;
      if (swift_dynamicCast())
      {
        (*(v48 + 8))(v29, v49);
        (*(v23 + 8))(v26, v14);
        v52 = *(v51 - 8);
        (*(v52 + 56))(v50, 0, 1, v51);
        return (*(v52 + 32))(v67, v50, v51);
      }

      else
      {
        (*(*(v51 - 8) + 56))(v50, 1, 1, v51);
        (*(v53 + 8))(v50, v54);
        v70[0] = 0;
        v70[1] = 0xE000000000000000;
        sub_264BC0(73);
        v71._object = 0x8000000000294C00;
        v71._countAndFlagsBits = 0xD00000000000001BLL;
        sub_264530(v71);
        v72._countAndFlagsBits = sub_265260();
        sub_264530(v72);

        v73._countAndFlagsBits = 0xD000000000000029;
        v73._object = 0x8000000000294C20;
        sub_264530(v73);
        v74._countAndFlagsBits = sub_265260();
        sub_264530(v74);

        v75._countAndFlagsBits = 96;
        v75._object = 0xE100000000000000;
        sub_264530(v75);
        result = sub_264CD0();
        __break(1u);
      }
    }
  }

  else
  {
    v28(v22, 1, 1, v14);
    (*(v20 + 8))(v22, v19);
    if (qword_315858 != -1)
    {
      swift_once();
    }

    v32 = sub_260D50();
    sub_B080(v32, qword_315FB8);
    v34 = v64;
    v33 = v65;
    v35 = v66;
    (*(v65 + 16))(v64, a1, v66);
    v36 = sub_260D30();
    v37 = sub_2648F0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v70[0] = swift_slowAlloc();
      *v38 = 136315394;
      swift_getDynamicType();
      v39 = sub_265260();
      v40 = v34;
      v41 = v39;
      v43 = v42;
      (*(v33 + 8))(v40, v35);
      v44 = sub_191368(v41, v43, v70);

      *(v38 + 4) = v44;
      *(v38 + 12) = 2080;
      v45 = sub_265260();
      v47 = sub_191368(v45, v46, v70);

      *(v38 + 14) = v47;
      swift_arrayDestroy();
    }

    else
    {

      (*(v33 + 8))(v34, v35);
    }

    return (*(*(v68 - 8) + 56))(v67, 1, 1);
  }

  return result;
}

uint64_t sub_219488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v7 = swift_allocObject();
  *a4 = v7;
  sub_14FE2C(v4, v7 + 16);

  return sub_219540(a1, v7 + 24);
}

uint64_t sub_2194F8()
{

  if (*(v0 + 48))
  {
    sub_3080((v0 + 24));
  }

  return swift_deallocObject();
}

uint64_t sub_219540(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_320378, &qword_28A310);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2195EC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_219604(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_21964C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2196A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_320378, &qword_28A310);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_219718()
{
  result = qword_326580;
  if (!qword_326580)
  {
    sub_263F80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326580);
  }

  return result;
}

uint64_t sub_219770@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v5[3];
  v9 = v5[4];
  sub_2E18(v5, v8);
  return sub_218BB0(v6, v7, v8, v3, v9, *(v4 + 8), a1);
}

double static ListItemViewModel.topChartsSwoosh(assetInfo:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2E18(a1, a1[3]);
  v4 = sub_2606E0();
  v6 = v5;
  sub_30CC(a1, v13);
  v14 = 0;
  v15 = 1;
  v16 = 0;
  v17 = 255;
  sub_3E840(v13, a2 + 8);
  static ListItemMetadata.topChartsSwooshPage(assetInfo:)(a1, a2 + 80);
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_30CC(a1, a2 + 408);
  sub_30CC(a1, v10);
  v7 = type metadata accessor for ListItemViewModel(0);
  CardInfo.init(with:alwaysPresentNewCardSet:)(v10, 1, a2 + *(v7 + 40));
  sub_82640(v13);
  *a2 = 0;
  *(a2 + 360) = 0u;
  *(a2 + 376) = 0u;
  *(a2 + 392) = 0;
  sub_82704(v11, a2 + 360);
  *(a2 + 400) = 1;
  v8 = a2 + *(v7 + 44);
  *v8 = 0xD000000000000011;
  *(v8 + 8) = 0x8000000000294C50;
  result = 0.0;
  *(v8 + 96) = 0u;
  *(v8 + 112) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 128) = v4;
  *(v8 + 136) = v6;
  *(v8 + 144) = 2;
  return result;
}

double static ListItemViewModel.topChartsGroupingSwoosh(assetInfo:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2E18(a1, a1[3]);
  v4 = sub_2606E0();
  v6 = v5;
  sub_30CC(a1, v13);
  v14 = 0;
  v15 = 1;
  v16 = 0;
  v17 = 255;
  sub_3E840(v13, a2 + 8);
  static ListItemMetadata.topChartsGroupingSwoosh(assetInfo:)(a1, a2 + 80);
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_30CC(a1, a2 + 408);
  sub_30CC(a1, v10);
  v7 = type metadata accessor for ListItemViewModel(0);
  CardInfo.init(with:alwaysPresentNewCardSet:)(v10, 1, a2 + *(v7 + 40));
  sub_82640(v13);
  *a2 = 0;
  *(a2 + 360) = 0u;
  *(a2 + 376) = 0u;
  *(a2 + 392) = 0;
  sub_82704(v11, a2 + 360);
  *(a2 + 400) = 1;
  v8 = a2 + *(v7 + 44);
  *v8 = 0xD00000000000001ALL;
  *(v8 + 8) = 0x8000000000294C70;
  result = 0.0;
  *(v8 + 96) = 0u;
  *(v8 + 112) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 128) = v4;
  *(v8 + 136) = v6;
  *(v8 + 144) = 2;
  return result;
}

__n128 ShelfItemKind.init(componentType:gridType:itemsPerColumn:isCollage:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  v7 = *(a3 + 16);
  *(a7 + 16) = *a3;
  *(a7 + 32) = v7;
  result = *(a3 + 32);
  *(a7 + 48) = result;
  *(a7 + 64) = a4;
  *(a7 + 72) = a5 & 1;
  *(a7 + 73) = a6;
  return result;
}

uint64_t ShelfItemKind.shelfGridLayout(context:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v6 = swift_conformsToProtocol2();
  if (v6)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    return (*(v6 + 8))(a1, v5, v6);
  }

  *a2 = 1;
  v8 = enum case for ShelfGridLayout.vertical(_:);
  v9 = sub_260B40();
  v10 = *(*(v9 - 8) + 104);

  return v10(a2, v8, v9);
}

void ShelfItemKind.shelfGridType.getter(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  if (v2)
  {
    *a1 = v3;
    a1[1] = v2;
    a1[2] = v4;
    a1[3] = v5;
    a1[4] = v6;
    a1[5] = v7;
  }

  else
  {
    v9 = *v1;
    v10 = swift_conformsToProtocol2();
    if (v10)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = a1;
      if (qword_3159B8 != -1)
      {
        swift_once();
        v12 = a1;
      }

      v13 = *algn_31E7F8;
      v14 = qword_31E800;
      v15 = unk_31E808;
      v16 = qword_31E810;
      v17 = unk_31E818;
      *v12 = qword_31E7F0;
      v12[1] = v13;
      v12[2] = v14;
      v12[3] = v15;
      v12[4] = v16;
      v12[5] = v17;
    }

    else
    {
      (*(v10 + 16))(v9, v10);
    }
  }

  sub_219CF8(v3, v2, v4, v5, v6, v7);
}

void sub_219CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t ShelfItemKind.itemsPerColumn.getter()
{
  if (*(v0 + 72))
  {
    return 1;
  }

  else
  {
    return *(v0 + 64);
  }
}

void sub_219DB0(uint64_t a1, uint64_t a2)
{
  sub_2EF0(&qword_317250, &unk_2697A0);
  if (sub_264D30())
  {
  }

  else
  {
    sub_21AE1C();
    swift_allocError();
    swift_willThrow();
  }
}

Swift::Int sub_219E48()
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

double sub_219F28(uint64_t a1)
{
  sub_264500();

  return result;
}

Swift::Int sub_219FF4(uint64_t a1)
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

unint64_t sub_21A0D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21ADD0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21A100(uint64_t *a1@<X8>)
{
  v2 = 0xED00006570795474;
  v3 = 0x6E656E6F706D6F63;
  v4 = 0xEE006E6D756C6F43;
  v5 = 0x726550736D657469;
  if (*v1 != 2)
  {
    v5 = 0x67616C6C6F437369;
    v4 = 0xE900000000000065;
  }

  if (*v1)
  {
    v3 = 0x697247666C656873;
    v2 = 0xED00006570795464;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 <= 1u)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  *a1 = v6;
  a1[1] = v7;
}

uint64_t sub_21A19C()
{
  v1 = 0x6E656E6F706D6F63;
  v2 = 0x726550736D657469;
  if (*v0 != 2)
  {
    v2 = 0x67616C6C6F437369;
  }

  if (*v0)
  {
    v1 = 0x697247666C656873;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_21A234@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21ADD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21A25C(uint64_t a1)
{
  v2 = sub_21A96C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_21A298(uint64_t a1)
{
  v2 = sub_21A96C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ShelfItemKind.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_2EF0(&qword_326588, &qword_28A3C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v45 - v7;
  sub_30CC(a1, &v55);
  v9 = sub_2644F0();
  if (v2)
  {

    sub_2E18(a1, a1[3]);
    sub_21A96C();
    sub_265120();
    LOBYTE(v55) = 0;
    v11 = sub_264DC0();
    v13 = v12;
    v49 = a2;
    sub_2E18(a1, a1[3]);
    Decoder.componentKindTable.getter();
    v14 = sub_263E90();
    if (*(v14 + 16))
    {
      v15 = sub_D410(v11, v13);
      if (v16)
      {
        v17 = v15;

        v50 = *(*(v14 + 56) + 16 * v17);

        LOBYTE(v51) = 1;
        sub_21AAAC();
        sub_264DB0();
        v47 = v55;
        v18 = v57;
        v46 = v56;
        v20 = v58;
        v19 = v59;
        LOBYTE(v55) = 2;
        v48 = sub_264D90();
        v65 = v21 & 1;
        LOBYTE(v55) = 3;
        v40 = sub_264D80();
        (*(v6 + 8))(v8, v5);
        v41 = *(&v47 + 1);
        v42 = v47;
        v43 = v46;
        v44 = v48;
LABEL_8:
        DWORD2(v47) = v40;
        v48 = v44;
        v51 = v50;
        *&v52 = v42;
        *(&v52 + 1) = v41;
        *&v53 = v43;
        *(&v53 + 1) = v18;
        *v54 = v20;
        *&v54[8] = v19;
        *&v54[16] = v44;
        v28 = v65;
        v54[24] = v65;
        v54[25] = v40;
        v29 = *v54;
        v30 = v49;
        v49[2] = v53;
        v30[3] = v29;
        *(v30 + 58) = *&v54[10];
        v31 = v52;
        *v30 = v51;
        v30[1] = v31;
        v32 = v19;
        v33 = v20;
        v34 = v18;
        v35 = v43;
        sub_21AB00(&v51, &v55);
        sub_3080(a1);
        v55 = v50;
        v56 = v42;
        v57 = v41;
        v58 = v35;
        v59 = v34;
        v60 = v33;
        v61 = v32;
        v62 = v48;
        v63 = v28;
        v64 = BYTE8(v47);
        return sub_21AB38(&v55);
      }
    }

    LOBYTE(v51) = 0;
    *&v55 = 0;
    *(&v55 + 1) = 0xE000000000000000;
    sub_264BC0(34);

    *&v55 = 0x6E656E6F706D6F43;
    *(&v55 + 1) = 0xEF20657079742074;
    v68._countAndFlagsBits = v11;
    v68._object = v13;
    sub_264530(v68);

    v69._object = 0x8000000000294C90;
    v69._countAndFlagsBits = 0xD000000000000011;
    sub_264530(v69);
    sub_264C10();
    swift_allocError();
    sub_21AA48();
    sub_264BE0();

    swift_willThrow();
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v22 = v9;
    v23 = v10;
    sub_2E18(a1, a1[3]);
    Decoder.componentKindTable.getter();
    v24 = sub_263E90();
    if (*(v24 + 16))
    {
      v25 = sub_D410(v22, v23);
      if (v26)
      {
        v27 = v25;
        v49 = a2;

        v50 = *(*(v24 + 56) + 16 * v27);

        v41 = 0;
        v42 = 0;
        v43 = 0;
        v18 = 0;
        v20 = 0;
        v19 = 0;
        v44 = 0;
        v65 = 1;
        v40 = 2;
        goto LABEL_8;
      }
    }

    v37 = sub_264C10();
    swift_allocError();
    v39 = v38;
    sub_2E18(a1, a1[3]);
    sub_2650E0();
    *&v55 = 0;
    *(&v55 + 1) = 0xE000000000000000;
    sub_264BC0(34);

    *&v55 = 0x6E656E6F706D6F43;
    *(&v55 + 1) = 0xEF20657079742074;
    v66._countAndFlagsBits = v22;
    v66._object = v23;
    sub_264530(v66);

    v67._object = 0x8000000000294C90;
    v67._countAndFlagsBits = 0xD000000000000011;
    sub_264530(v67);
    sub_264BF0();
    (*(*(v37 - 8) + 104))(v39, enum case for DecodingError.dataCorrupted(_:), v37);
    swift_willThrow();
  }

  return sub_3080(a1);
}

unint64_t sub_21A96C()
{
  result = qword_326590;
  if (!qword_326590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326590);
  }

  return result;
}

double sub_21A9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_21AA48()
{
  result = qword_326598;
  if (!qword_326598)
  {
    sub_2F9C(&qword_326588, &qword_28A3C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326598);
  }

  return result;
}

unint64_t sub_21AAAC()
{
  result = qword_3265A0;
  if (!qword_3265A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3265A0);
  }

  return result;
}

unint64_t sub_21AB6C()
{
  result = qword_3265A8;
  if (!qword_3265A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3265A8);
  }

  return result;
}

uint64_t sub_21ABC0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_21ABD8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21ABFC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 74))
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

uint64_t sub_21AC44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 74) = 1;
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

    *(result + 74) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21ACCC()
{
  result = qword_3265B0;
  if (!qword_3265B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3265B0);
  }

  return result;
}

unint64_t sub_21AD24()
{
  result = qword_3265B8;
  if (!qword_3265B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3265B8);
  }

  return result;
}

unint64_t sub_21AD7C()
{
  result = qword_3265C0;
  if (!qword_3265C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3265C0);
  }

  return result;
}

unint64_t sub_21ADD0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_3019A0;
  v6._object = a2;
  v4 = sub_264D40(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}